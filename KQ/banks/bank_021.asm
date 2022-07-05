; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $021", ROMX[$4000], BANK[$21]

Call_021_4000:
    rst $38
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
    db $FD
    ld bc, $03FB
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    rst $08
    ccf
    ld a, $FE
    ld hl, sp-$07
    ldh [$E7], a
    add e
    sbc e
    cp $06
    db $F4
    dec c
    db $FD
    rrca
    rst $28
    rra
    rst $38
    ld e, $FF
    inc e
    cp $1C
    cp $19
    rlca
    ld h, [hl]
    rlca
    add $A7
    and $13
    ld [hl], e
    ld [$07F8], sp
    rst $38
    nop
    rst $38
    jr nz, @+$01

    cp $18
    cp $18
    cp $18
    cp $18
    rst $38
    add hl, bc

jr_021_404A:
    ei
    ld [$04FF], sp
    db $FD
    inc b
    ld h, b
    ld b, b
    ld h, b
    nop
    ld a, [c]
    sub d
    ld a, [c]
    nop
    or $04
    or $00
    cp $08
    cp $00
    cp $02
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
    ld bc, $007F
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
    nop
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
    ld bc, $061B
    inc bc
    nop
    ld c, $03
    scf
    dec c
    ld h, e
    ld a, $6F
    jr nc, @-$0B

    ld c, $39
    add $E7
    cp b
    add b
    nop
    ld [hl], b
    add b
    ret z

    ld [hl], b
    db $E4
    ld hl, sp-$0C
    jr jr_021_404A

    add sp, -$24
    rst $20
    rst $28
    ld a, [de]
    nop
    nop
    nop
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
    sub b
    ldh [$31], a
    rra
    scf
    jr jr_021_40DE

    rlca
    db $10
    rrca
    add hl, de
    ld c, $1F
    ld c, $0F
    inc b
    dec b
    nop
    ld a, [c]
    ld a, h
    ld a, [$CE0C]
    ld [hl], h
    push hl
    ld a, d
    rst $00
    ld a, [hl-]
    ld [hl], a
    jr jr_021_4159

    rlca

jr_021_40DE:
    ld l, a
    ld a, [de]
    rst $00
    ld a, l
    rst $18
    ld h, b
    rst $20
    dec e
    ld b, e
    dec a

jr_021_40E8:
    ld h, a
    jr c, jr_021_40E8

    jr c, @-$01

    db $10
    sub l
    ldh [$C8], a
    ldh a, [$E8]
    jr nc, @+$3A

    ret nc

    sub b
    ldh [rNR10], a
    ldh [$D0], a
    ld h, b
    ldh [rLCDC], a
    ret nz

    nop
    nop
    rlca
    inc bc
    rra
    rrca
    rra
    rlca
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    nop
    rst $00
    ld a, l
    rst $18
    ld h, b
    rst $20
    sbc l
    jp $E7BD


    cp b
    ld a, l
    cp b
    dec a
    ret nc

    dec d
    ld l, b
    jp z, $EEF4

    inc [hl]
    ccf
    sub $9F
    rst $28
    inc de
    rst $28
    ret nc

    ld l, a
    ldh [$5E], a
    ret nz

    inc a
    add b
    ld [hl], b
    ldh [$7C], a
    ld hl, sp-$04
    ldh a, [$FC]
    ret nz

    ld hl, sp+$00
    ldh [rP1], a
    nop
    nop
    nop
    ld [bc], a
    inc a
    ld c, $7C
    ccf
    ld a, [hl]
    rra
    ld a, a
    inc bc
    ccf
    nop
    rlca
    nop
    nop
    nop
    nop
    add b
    ld a, b
    ldh [$7C], a
    ld hl, sp-$04
    ldh a, [$FC]
    ret nz

jr_021_4159:
    ld hl, sp+$00
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
    inc bc
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

jr_021_417D:
    ld bc, $04FB
    nop
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
    jr nz, jr_021_417D

    rra
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
    rst $38
    nop
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
    add a
    ld c, b
    ld l, b
    sub a
    inc e
    rst $28
    nop
    nop
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

    jr nz, jr_021_41DF

    ret nc

    inc c
    inc de
    db $10
    cpl
    jr nc, jr_021_41E5

    dec sp
    rra
    ccf
    rrca
    rra
    cpl
    rra
    rlca
    rrca
    inc de
    rlca
    ld sp, hl
    ld bc, $38FE
    rst $38
    cp h
    rst $38
    sbc h

jr_021_41D9:
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    di

jr_021_41DF:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_021_41E5:
    ld a, a
    rst $38
    ld a, a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    rst $38
    ccf
    ldh [rIE], a
    ld hl, sp-$01
    cp $FF
    rst $38
    rst $38
    rst $08
    rst $38
    sbc a
    pop hl
    ld a, a
    add b
    ld a, a
    add b
    ld c, $F7
    rlca
    ei
    inc bc
    db $FD
    ld bc, $81FE
    cp $C0
    rst $38
    ldh [$7F], a
    ldh a, [$7F]
    db $10
    ldh [rNR10], a
    ldh [$A0], a
    ret nc

    ret nz

    jr nz, jr_021_41D9

    nop
    ret nz

    nop
    add b
    nop
    ld b, b
    add b
    rlca
    ld [$0403], sp
    inc bc
    ld c, $0F
    ld a, [hl]
    ld a, a
    db $FC
    ccf
    ld a, h
    rrca
    ld a, $03
    rrca
    rst $38
    db $FC
    rst $38
    nop
    rst $38
    pop af
    adc a
    ldh a, [$8F]
    ldh a, [rIE]
    ld bc, $05FF
    rst $38
    cp $FF
    ld a, a
    rst $38
    rst $38
    rst $38
    rrca
    adc a
    ld [hl], e
    add e
    db $FC
    db $DD
    cp $EE
    rst $38
    ld hl, sp+$7F
    ld a, a
    add b
    cp a
    ret


    cp a
    jp $CEBF


    sbc a
    ldh [$C0], a
    ld a, a
    rst $38
    nop
    rst $38
    rrca
    ld hl, sp+$7F

jr_021_4262:
    rst $38
    ld a, h
    db $FC
    ld a, e
    ld a, b
    rst $30
    db $FC
    rst $28
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rst $20
    ld h, b
    or b
    ldh a, [rNR23]
    jr jr_021_4262

    call z, Call_021_6FF6
    rst $30
    ld c, $F7
    ld hl, sp-$1A
    ldh a, [$8C]
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
    rrca
    rst $38
    rra
    ld a, [hl]
    rrca
    ld e, $07
    rrca
    ld bc, $0007
    ld bc, $0000
    nop
    nop
    rst $38
    ld e, $FF
    ld b, b
    rst $38
    ld [hl], b
    rst $38
    ld bc, $FFFF
    nop
    rst $38
    nop
    nop
    nop
    nop
    db $FC
    ld a, a
    ldh [rIE], a
    ldh a, [$FC]
    ret nz

    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ldh a, [$1F]
    db $FC
    rlca
    ld a, $0F
    rra
    rra
    ld a, $07
    rra
    ld bc, $0007
    inc bc
    ld hl, sp+$2C
    add sp, -$0C
    call z, $CE76
    ld [hl], a
    rst $18
    ld h, e
    cp $07
    db $FC
    cp $00
    db $FC
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld a, h
    add d
    add d
    ld bc, $007D
    db $FD
    nop
    ld sp, hl
    ld [bc], a
    jp hl


    ld [bc], a
    rlca
    ld [$1508], sp
    rla
    jr z, jr_021_4336

    db $10
    cpl
    ld d, b
    halt
    jr c, jr_021_4386

    or h
    or $28
    nop
    add b
    add b
    ld b, c
    ld b, c
    ld [hl+], a
    and d
    dec d
    sub [hl]
    dec hl
    rra
    ld h, e
    sbc a
    rst $20
    rst $08
    ld [hl], a
    ld h, b
    sub b
    sub b
    ld c, b
    ld l, b
    sub h
    db $F4
    ld [bc], a
    ld a, [$7200]
    add l
    add c
    adc $C9
    cp $00
    nop
    nop
    nop
    nop
    nop

jr_021_4336:
    nop
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
    ld bc, $0503
    rlca
    inc bc
    rlca
    inc bc
    rrca
    rlca
    rrca
    rla
    rrca
    scf
    ld e, $6F
    ld h, b
    rla
    add b
    sbc a
    ldh [rIE], a
    ld l, b
    rst $38
    ld l, h
    rst $38
    inc [hl]
    rst $38
    jr nc, @+$01

    inc sp
    db $FC
    rst $28
    db $10
    rst $28
    ld d, b
    rst $20
    db $10
    ld [hl], e
    sbc b
    ld a, b
    sbc h
    ld a, h
    sbc a
    or $3F
    ei
    ccf
    ld e, [hl]
    cpl
    cp a
    rrca
    cp a
    rrca
    cp a
    rrca
    rra
    ld h, a
    rra
    rst $20
    rra
    db $E3
    rra
    ldh [$ED], a
    db $EC
    ld [hl], h
    ld [hl], h
    ld [hl-], a
    ld [hl-], a

jr_021_4386:
    cp b
    cp b
    cp d
    cp d
    ld hl, sp-$08
    ld hl, sp-$08
    ld sp, hl
    ld hl, sp+$00
    add b
    add b
    nop
    add b
    nop
    add b
    ld b, b
    ld b, b
    add b
    ld b, b
    or b
    ld h, b
    cp h
    ld hl, sp+$3C
    ld a, $6F
    ld a, $67
    ld a, $73
    ld e, $79
    rrca
    inc a
    rlca
    ld e, $03
    rrca
    nop
    rlca
    ld [hl], $F9
    or l
    ld a, [$F2BD]
    cp $C2
    cp $07
    rst $38
    rlca
    rst $38
    adc a
    rst $38
    rst $08
    ld a, c
    rra
    cp l
    rra
    cp h
    rrca
    sbc [hl]
    cpl
    rra
    ld l, a
    rra
    rst $20
    adc a
    rst $30
    rst $08
    ldh a, [rNR24]
    db $E4
    sub [hl]
    add sp, -$6A
    add sp, -$66
    db $EC
    call c, $FCED
    rst $08
    cp $1F
    rst $38
    rra
    di
    ld a, h
    rst $28
    jr nc, @+$01

    ld bc, $877F
    cp h
    rst $08
    cp b
    sbc $78
    call z, $EE38
    ldh [$7C], a
    ret nz

    ldh a, [$80]
    ldh [rP1], a
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
    nop
    nop
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
    rst $20
    ccf
    rst $30
    rra
    ld [hl], b
    rra
    jr c, jr_021_4428

    ld a, $03
    rra
    nop
    rlca
    nop
    nop
    rst $00
    ld hl, sp-$11
    pop af
    rst $38
    db $E3
    cp $07

jr_021_4428:
    db $FC
    rra
    ldh a, [rIE]
    nop
    ld hl, sp+$00
    nop
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rst $08
    ld a, a
    ldh [$3F], a
    rst $38
    nop
    ld a, a
    nop
    nop
    inc e
    rst $20
    sbc [hl]
    db $E3
    cp [hl]
    db $E3
    cp $C7
    db $FC
    rrca
    ld hl, sp-$02
    nop
    db $FC
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
    ccf
    ret nz

    ld hl, sp+$00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    ld h, e
    inc e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    add e
    jp nz, $8101

    nop
    add b
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
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ldh [rP1], a
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rst $38
    ld c, $F1
    ld de, $7880
    ld b, b
    db $EC
    ret nz

    ld a, a
    ld h, b
    ccf
    ccf
    rra
    rra
    nop
    ret nz

    ld bc, $03FE
    ld a, h
    rst $00
    ld b, b
    rst $28
    ld h, b
    rst $08
    ret nz

    sbc a
    add b
    rra
    nop
    rra
    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    cp $00
    inc de
    inc c
    rrca
    inc b
    rlca
    ld [bc], a
    inc bc
    nop
    inc bc
    ld bc, $0001
    ld bc, $0100
    nop
    ret nz

    nop
    pop af
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    inc bc
    cp $FE
    ld hl, sp-$08
    nop
    ld bc, $3F80
    ret nz

    ld c, a
    ldh [$61], a
    ret nz

    rst $00
    add b
    adc a
    nop
    ccf
    nop

Jump_021_44FD:
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
    cp $01
    cp $01
    ld hl, sp+$00
    cp $0F
    ldh a, [$3C]
    ret nz

    ld a, b
    add b
    ld hl, sp+$00
    db $FC
    nop
    cp $00
    rst $38
    nop
    ccf

jr_021_4521:
    jr nz, jr_021_4521

    ld h, b
    ld a, h
    db $10
    inc e
    ld [$040E], sp
    rrca
    ld b, $07
    inc bc
    dec b
    ld bc, $00FF
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    rst $38
    jp $FF00


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07FF
    rst $38
    ld a, $F3
    ld a, [c]
    nop
    ld a, a
    nop
    ccf
    ret nz

    rst $08
    ldh [$E3], a
    db $FC
    add b
    ld [c], a
    nop
    pop hl
    nop
    pop af
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
    ld a, a
    nop
    ccf
    add b
    adc a
    inc bc
    ld a, [c]
    rlca
    add [hl]
    inc bc
    jp $F101


    nop
    ld hl, sp+$00
    db $FC
    nop
    rst $38
    nop
    rst $38
    rst $08
    nop
    add a
    nop
    rst $08
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rra
    rra
    nop
    nop
    nop
    ldh [$C7], a
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    cp $1E
    ld hl, sp-$08
    ldh [$E1], a
    nop
    inc bc
    nop
    rrca
    ld a, a
    ld a, a
    add b
    add b
    nop
    rlca
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
    rst $00
    add $03
    inc bc
    ld bc, $00C1
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp c
    nop
    rst $38
    ld bc, $FFFF
    ld a, h
    ld a, h
    nop
    nop
    nop
    jp $FF00


    nop
    rst $38
    ret nz

    jp $8780


    nop
    rra
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
    db $FC
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$1C
    ldh [$3F], a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, $00
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    rlca
    jp nz, $E200

    nop
    pop af
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
    ccf
    nop
    rra
    ld b, $F8
    rrca
    ldh a, [rIF]
    ldh a, [$1F]
    ldh [$1F], a
    ldh [$1F], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$1F
    nop
    rrca
    nop
    rst $08
    nop
    rst $20
    nop
    rst $30
    nop
    rst $38
    nop
    db $FC
    inc bc
    ldh a, [rIF]
    ld a, c
    nop
    add hl, de
    nop
    sbc l
    nop
    db $ED
    nop
    rst $38
    nop
    db $FD
    nop
    rst $38
    nop
    rra
    ldh [$80], a
    rra
    ret nz

    rrca
    ldh [rIF], a
    ldh a, [rIF]
    ret nz

    inc bc
    ldh a, [rSB]
    db $FC
    ld bc, $03FC
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    rra
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
    rst $38
    ldh [$1F], a
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    ld hl, sp+$00
    ldh [rP1], a
    rra
    ldh [$F3], a
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    inc c
    ld bc, $0003
    ldh [$1F], a
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    ldh [$1F], a
    jr nc, jr_021_46E3

    ld c, $81
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_021_46E3:
    rst $38
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
    db $FD
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    or $FB
    or $F1
    rst $20
    ldh a, [$E3]
    ldh a, [$65]
    ldh a, [$A0]
    rst $38
    ld hl, sp-$07
    rst $20
    db $E3
    rst $08
    ret nz

    adc a
    ret nz

    rla
    ldh [rSTAT], a
    ld a, b
    and d
    ld a, a
    sbc b
    rst $38
    rra
    rst $38
    rst $20
    rst $38
    ei
    rst $38
    db $FD
    ccf
    db $FD
    rrca
    di
    ccf
    rlca
    rst $18
    add hl, sp
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
    db $ED
    rst $30
    xor $F3
    and $FC
    ld hl, sp-$04
    ld sp, hl
    rst $38
    ld hl, sp-$01
    db $FC
    rst $38
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    ret nz

    ccf
    ld d, b
    cp $18
    ld a, [hl]
    dec a
    ld a, [hl]
    cp l
    rst $38
    ld a, $FF
    rst $38
    rst $38
    rst $38
    adc a
    ld a, $82
    inc c
    pop hl
    nop
    rst $38
    ld b, b
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    call z, $B7FF
    ccf
    ld a, [hl]
    rrca
    ld a, $83
    ld c, l
    rst $00
    inc bc
    ld a, a
    rlca
    rst $38
    cp e
    ld a, a
    or l
    ei
    ld d, $E1
    jp $CBE1


    ldh [$C5], a
    pop af
    ret nz

    rst $38
    ldh [$FB], a
    pop af
    rst $38
    di
    rst $38
    rst $38
    add b
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
    rst $18
    cp e
    adc a
    dec e
    add a
    dec c
    add e
    ld d, $81
    ld a, [bc]
    pop bc
    add b
    rst $38
    pop bc
    rst $30
    db $E3
    di
    and $F1
    ld [$E0F1], a
    rst $38
    pop af
    ei
    pop af
    ei
    push af
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $30
    db $EB
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $FD
    rst $38
    ld a, [$FDFF]
    db $FD
    cp b
    cp e
    db $10
    cp e
    ld d, h
    rst $30
    xor h
    rst $18
    xor h
    rst $10
    inc l
    jp nc, $FF8D

    rst $38
    rst $38
    ld a, e
    ld a, e
    ld sp, $2377
    ld [hl], a
    xor e
    xor a
    dec bc
    ld e, e
    adc l
    db $D3
    and l
    rst $38
    rst $38
    rst $38
    db $FD
    db $FD
    ld a, [$F5FF]
    ei
    push af
    ei
    pop af
    rst $38
    or e
    cp a
    rra
    nop
    nop
    nop
    ccf
    ld a, [bc]
    ccf
    rla
    ccf
    dec bc
    ccf
    rla
    ccf
    dec bc
    ccf
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
    nop
    nop
    dec bc
    ccf
    nop
    nop
    ccf
    nop
    jr nz, jr_021_4828

jr_021_4828:
    jr z, jr_021_482D

    dec hl
    inc bc
    dec hl

jr_021_482D:
    inc bc
    dec hl
    inc bc
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld h, [hl]
    nop
    ld h, b
    ld b, $60
    ld b, $60
    ld b, $00
    jr nz, jr_021_4862

    ccf
    nop
    ccf
    nop
    jr nz, jr_021_4854

    jr nz, jr_021_4856

    jr nz, jr_021_4858

    jr nz, jr_021_485A

    jr nz, jr_021_4851

jr_021_4851:
    nop
    rst $38
    rst $38

jr_021_4854:
    nop
    rst $38

jr_021_4856:
    nop
    nop

jr_021_4858:
    nop
    ld h, c

jr_021_485A:
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    nop
    nop

jr_021_4862:
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    jr nc, jr_021_4870

    ld b, $36
    ld b, $36
    ld b, $36

jr_021_4870:
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    jr nz, jr_021_48A2

    ccf
    nop
    ccf
    jr nz, jr_021_4888

jr_021_4888:
    dec hl
    nop
    jr z, @+$05

    jr z, jr_021_4891

    jr z, jr_021_4893

    nop

jr_021_4891:
    nop
    rst $38

jr_021_4893:
    rst $38
    nop
    rst $38
    nop
    nop
    ld l, h
    nop
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld l, h
    nop
    nop

jr_021_48A2:
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    dec de
    ret c

    db $DB
    ret c

    db $DB
    ret c

    db $DB
    ret c

    jr nz, jr_021_48B2

jr_021_48B2:
    jr nz, jr_021_48D3

    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, $01
    jr nz, jr_021_48CE

    nop
    nop
    nop
    nop
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

jr_021_48CE:
    nop
    nop
    rst $38
    rst $38
    nop

jr_021_48D3:
    nop
    rst $38
    nop
    nop
    nop
    nop
    jr jr_021_490B

    jr nc, jr_021_493D

    ld h, b
    ret nz

    rst $18
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    inc bc
    jr jr_021_4903

    dec de
    jr jr_021_4909

    jr @-$63

    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld b, $03
    inc bc
    ld bc, $7E01
    ld a, [hl]
    nop
    nop
    rst $38

jr_021_4903:
    rst $38
    nop
    rst $38
    nop
    nop
    nop

jr_021_4909:
    inc c
    inc c

jr_021_490B:
    inc c
    adc h
    adc h
    call z, $00CC
    nop
    ccf
    ld a, a
    jr nz, jr_021_4935

    nop
    nop
    nop
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
    cp $01
    cp $00
    nop
    jr nc, jr_021_4930

    ld b, $36
    ld b, $36
    ld b, $36

jr_021_4930:
    nop
    nop
    nop
    cp $FC

jr_021_4935:
    cp $FC
    cp $FC
    cp $FC
    cp $FC

jr_021_493D:
    cp $FC
    cp $3F
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, $7E
    ld a, $7E
    ld a, $7E
    ld a, $7E
    db $FC
    cp $FC
    cp $FC
    cp $1C
    ld e, $0C
    xor $60
    ld [c], a
    ld [$E00A], sp
    ld b, $3C
    ld a, [hl]
    inc a
    ld a, a
    jr c, jr_021_49DE

    daa
    ld h, b
    rra
    ld b, b
    rra
    ld b, b
    rrca
    ld b, b
    rlca
    ld b, b
    ldh [$0E], a
    inc b
    ld e, $0C
    cp $7C
    ld a, [hl]
    cp h
    ld a, $DC
    ld e, $EC
    ld c, $9C
    ld e, $02
    ld h, b
    nop
    ld [hl], b
    jr nz, jr_021_49FE

    jr nc, jr_021_4A04

    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ld b, h
    ld c, [hl]
    adc h
    sbc [hl]
    inc e
    ld a, [hl]
    inc a
    cp $00
    cp $00
    nop
    nop
    cp $00
    nop
    ccf
    nop
    nop
    ccf
    nop
    ccf
    nop
    nop
    inc e
    nop
    nop
    jr jr_021_49AD

jr_021_49AD:
    stop
    nop
    db $FC
    nop
    nop
    db $FC
    nop
    db $FC
    nop
    nop
    jr c, jr_021_49BA

jr_021_49BA:
    nop
    jr jr_021_49BD

jr_021_49BD:
    ld [$0000], sp
    nop
    nop
    nop
    ccf
    rla
    ccf
    dec bc
    ccf
    rla
    ccf
    dec bc
    ccf
    rla
    ccf
    dec bc
    ccf
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

jr_021_49DE:
    rst $38
    rst $38
    rla
    ccf
    dec bc
    ccf
    dec d
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
    rst $38
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
    nop
    nop
    nop

jr_021_49FE:
    nop
    nop
    nop
    nop
    nop
    nop

jr_021_4A04:
    nop
    rra
    dec b
    rra
    ld [bc], a
    rra
    dec b
    rra
    inc bc
    rra
    rlca
    rra
    nop
    nop
    nop
    nop
    nop
    cp $54
    cp $A8
    cp $54
    cp $FC
    cp $FC
    cp $07
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    db $FC
    cp $FC

Call_021_4A33:
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $00
    nop
    nop
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    nop
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    nop
    nop
    ld a, a
    nop
    ld a, a
    ld [$2070], sp
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
    ld a, a
    nop
    ld e, b
    jr nz, jr_021_4AB0

    dec sp
    ld c, b
    jr c, jr_021_4AC8

    scf
    ld c, a
    cpl
    ld e, a
    rra
    ld a, a
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0101
    ld b, c
    dec e
    ld c, l
    dec e
    ld c, [hl]
    ld e, [hl]
    ld b, b
    ld e, a
    ld e, a
    ld b, b
    ld b, b
    ld b, b
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    rst $00
    nop
    xor e
    rst $00
    rst $00
    rst $28
    rst $00
    rst $28
    cpl
    cpl
    ld b, d
    ld b, l
    ld h, h
    ld h, b
    ld b, b
    ld h, b
    ld b, e
    ld h, b
    ld b, h
    ld h, e
    ld b, h
    ld h, e
    ld b, h
    ld h, e
    inc b
    inc hl
    inc bc
    ld b, b
    nop
    ld h, b

jr_021_4AB0:
    nop
    nop
    rst $38
    nop
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld [bc], a
    nop
    nop
    ld h, b
    nop
    ld l, a
    inc bc
    cpl
    rlca
    cpl

jr_021_4AC8:
    rlca
    cpl
    inc bc
    cpl
    nop
    cpl
    nop
    jr nz, jr_021_4AD1

jr_021_4AD1:
    nop
    nop
    db $FC
    ldh a, [$FE]
    ld hl, sp-$02
    ld hl, sp-$02
    ldh a, [$FE]
    nop
    cp $00
    ld [bc], a
    nop
    ccf
    nop
    ccf
    nop
    nop
    nop
    cp h
    db $10
    sbc h
    ld [$088C], sp
    inc c
    jr jr_021_4B08

    nop
    db $FC
    nop
    cp $00
    nop
    nop
    ld e, $04
    inc e
    ld [$0819], sp
    jr jr_021_4B0B

    inc c
    ld a, a
    nop
    nop
    ld a, a
    rla
    ld a, a
    cpl
    ld a, a

jr_021_4B08:
    rra
    ld a, a
    cpl

jr_021_4B0B:
    ld a, a
    rra
    ld a, a
    ccf
    ld a, a
    rst $38
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
    rra
    ld a, a
    cpl
    ld a, a
    dec d
    ld a, a
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    ld a, a
    ld e, a
    ld a, a
    cpl
    ld a, a
    nop
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
    ld a, a
    ld e, a
    ld a, a
    cpl
    ld a, a
    nop
    nop
    ld e, a
    nop
    ld e, a
    nop
    ld e, a
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld c, a
    nop
    jr z, jr_021_4B88

    rlca
    nop
    nop

jr_021_4B88:
    scf
    nop
    ld l, a
    nop
    cpl
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
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
    ld d, b
    cpl
    nop
    nop
    ld a, a
    ld e, a
    ld a, a
    jr nz, jr_021_4BAD

jr_021_4BAD:
    nop
    ccf
    ld a, a
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
    nop
    nop
    nop
    rst $38
    rst $38
    ld d, b
    cpl
    jr nz, jr_021_4C23

    nop
    nop
    cpl
    ld a, a
    ld e, a
    ld a, a
    cpl
    ld a, a
    nop
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    dec d
    ld a, a
    cpl
    ld a, a
    rra
    ld a, a
    ccf
    ld a, a
    rra
    ld a, a
    cpl
    ld a, a
    rra
    ld a, a
    cpl
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
    rla
    ld a, a
    nop
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
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_021_4C23:
    inc c
    add b
    rra
    add b
    ccf
    ret nz

    rra
    jp $C71F


    rra
    rlca
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    inc e
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    inc e
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0180
    db $FC
    inc bc
    ld hl, sp+$03
    ld hl, sp-$3D
    ld hl, sp-$40
    db $FC
    rlca
    ld a, a
    rrca
    ld a, a
    adc a
    ccf
    add a
    ccf
    jp $C31F


    rra
    jp $071F


    ccf
    ldh [$FE], a
    ldh a, [$FE]
    pop af
    db $FC
    pop hl
    db $FC
    jp $C3F8


    ld hl, sp-$3D
    ld hl, sp-$20
    db $FC
    rrca
    ld a, a
    rrca
    ld a, a
    adc a
    ccf
    add a
    ccf
    jp $C01F


    rra
    ret nz

    rra
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
    nop
    rst $38
    nop
    rst $38
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
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    nop
    ldh a, [$FE]
    ldh a, [$FE]
    pop af
    db $FC
    pop af
    db $FC
    db $E3
    ld hl, sp+$63
    ld hl, sp+$03
    ld hl, sp+$00
    nop
    nop
    nop
    rst $38
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    jr nc, @-$7E

    add b
    or b
    add b
    or b
    add b
    or b
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    ld a, [de]
    ret c

    jp c, $DAD8

    ret c

    jp c, $00D8

    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    inc c
    ld bc, $0D01
    ld bc, $010D
    dec c
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $CDCD
    call $CDCD
    call $00CD
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    or [hl]
    add b
    or b
    add [hl]
    or b
    add [hl]
    or b
    add [hl]
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    dec d
    dec b
    ld a, [bc]
    rrca
    db $10
    rrca
    db $10
    cp $FE
    nop
    nop
    nop
    nop
    nop
    xor d
    xor d
    ld d, h
    ld d, h
    xor d
    cp $00
    cp $00
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    ld [$0017], sp
    jr jr_021_4D7F

jr_021_4D7F:
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    ld b, $F8
    ld [bc], a
    inc b
    nop
    nop
    ret nz

    nop
    dec bc
    nop
    sbc [hl]
    ld bc, $07D9
    ld d, a
    adc a
    inc sp
    adc $35
    ret z

    ld [hl-], a
    call z, $61E1
    cp $60
    rst $38
    ld a, $FF
    ld e, a
    rst $38
    cpl
    rst $38
    nop
    and b
    nop
    rrca
    nop
    rst $38

jr_021_4DB1:
    rst $38
    ei
    ei
    ld a, h
    ld a, b
    cp a
    inc l
    sbc [hl]
    nop
    ld b, b
    nop
    ld h, b
    nop
    and b
    nop
    cp $CC
    sbc $8C
    rst $18
    add l
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $FC
    ld a, b
    di
    inc hl
    ld b, e
    inc bc
    rra
    dec bc
    scf
    rlca
    ccf
    ld [$0414], sp
    ld bc, $3300
    rrca
    ld e, [hl]
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    or h
    dec bc
    ld c, a
    nop
    nop
    nop
    ld d, h
    nop
    adc h
    ret nz

    ld b, [hl]
    call nz, $CA01
    ld de, $D0CC
    dec c
    sbc h
    ld bc, $010A
    inc bc
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld b, c
    add b
    ld hl, $10C0
    ldh [$30], a
    ret nz

    ld h, b
    add b
    ld a, [hl]
    ld a, a
    and c
    ld a, a
    ld b, b
    ccf
    add b
    ccf
    sub l
    ld c, d
    rl h
    cpl
    nop
    ld bc, $B100
    nop
    sbc h
    nop
    xor b
    db $10
    sbc c
    jr nz, jr_021_4E94

    nop
    ld d, l
    nop
    ld [bc], a
    nop
    add b
    jr nz, jr_021_4DB1

    nop
    ld l, $00
    ldh a, [rIF]
    add b
    ld a, a
    ret nz

    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    nop
    ld c, $00
    jr jr_021_4E4B

    jr nc, jr_021_4E55

    add hl, sp
    ld b, $1F
    add b
    inc l

jr_021_4E4B:
    nop
    ld b, b
    ld b, $20
    rst $08
    nop
    nop
    nop
    nop
    nop

jr_021_4E55:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_021_4E94:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $17
    rrca
    dec sp
    rra
    add hl, sp
    rra
    dec sp
    dec e
    dec e
    ld a, [bc]
    ld a, [hl+]
    dec d
    ldh a, [rP1]
    sbc b
    ldh a, [$8C]
    ld hl, sp-$32
    db $FC
    sbc $FC
    db $FC
    jr c, @+$3A

    ret nc

    ld d, h
    xor b

Jump_021_5020:
    ld b, $00
    dec bc
    ld b, $1D
    rrca
    ccf
    ld e, $3F
    rra
    ccf
    rra
    rra
    rrca
    cpl
    rla
    ldh a, [rP1]
    sbc b
    ldh a, [rNR32]
    ld hl, sp-$02
    db $FC
    cp $FC
    db $FC
    ld hl, sp-$08
    ldh a, [$F4]
    add sp, $1F
    nop
    ccf
    rra
    ld b, c
    ccf
    ld [hl], b
    ccf
    ld a, h
    ccf
    ccf
    ld e, $1F
    ld [bc], a
    rrca
    nop
    ldh [rP1], a
    ldh a, [$E0]
    add sp, -$30
    ld a, h
    sbc b
    sbc h
    ld l, b
    ld e, h
    xor b
    ld e, b
    and b
    db $10
    ldh [$1F], a
    nop
    ccf
    rra
    ld b, c
    ccf
    ld a, b
    ccf
    ld a, l
    ld a, $3E
    dec b
    dec d
    ld a, [bc]
    add hl, bc
    ld b, $E0
    nop
    ldh a, [$A0]
    add sp, -$30
    db $FC
    ret c

    db $FC
    sbc b
    sbc h
    ld l, b
    jr c, @-$3E

    jr nc, @-$3E

    dec e
    nop
    daa
    dec e
    ld h, a
    ld a, $73
    ccf
    ld [hl], a
    dec a
    dec a
    ld a, [bc]
    ld a, [hl+]
    dec d
    ld [de], a
    dec c
    ldh [rP1], a
    ret nc

    ldh [$98], a
    ldh a, [$9C]
    ld a, b
    call c, $3C38
    ret z

    ld e, b
    and b
    ld d, b
    and b
    dec e
    nop
    daa
    dec e
    ld h, a
    ld a, $73
    ccf
    ld [hl], e
    ccf
    ccf
    dec e
    dec a
    ld [de], a
    ld a, [de]
    dec b
    ldh [rP1], a
    ret nc

    ldh [$98], a
    ldh a, [$9C]
    ld hl, sp-$24
    ld a, b
    db $FC
    jr c, @+$3A

    ret nc

    ld d, b
    and b
    rlca
    nop
    rrca
    rlca
    dec de
    dec c
    ld e, $0F
    rra
    rrca
    rra
    rrca
    rra
    rlca
    rrca
    inc bc
    ld hl, sp+$00

jr_021_50D2:
    and $F8
    add e
    cp $7F
    cp $FF
    xor $FF
    jp z, $B0CA

    sbc b
    ld h, b
    inc a
    inc bc
    ld a, a
    inc c
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    dec sp
    ld a, a
    dec sp
    ld a, a
    dec a
    ccf
    dec c
    db $10
    ldh [$E0], a
    nop

jr_021_50F4:
    ldh a, [$E0]
    ldh a, [$E0]

jr_021_50F8:
    ldh a, [$E0]
    ld hl, sp-$40
    ld hl, sp-$30
    ldh a, [$80]
    jr c, jr_021_5109

    ld a, a
    inc c
    rst $38
    ccf
    rst $38
    ccf
    ld a, a

jr_021_5109:
    dec sp

jr_021_510A:
    ld a, a
    dec sp
    ld a, a
    dec a
    ccf
    dec c
    jr nz, jr_021_50D2

    ldh [rP1], a
    ldh a, [$E0]
    ldh a, [$E0]
    ld hl, sp-$30
    ld hl, sp-$30
    ld hl, sp-$30
    ldh a, [$80]
    ld a, [hl-]
    dec b
    ld a, h
    dec de
    rst $38
    jr c, @+$01

    ld h, $7F
    ld a, $3F
    inc e
    ccf
    dec de
    rra
    rlca
    ld d, b
    and b
    jr nz, jr_021_50F4

    ldh a, [rP1]
    jr nc, jr_021_50F8

    jr c, jr_021_510A

    ld hl, sp+$10
    ld hl, sp-$30
    ldh a, [$80]
    inc a
    inc bc
    ld a, a
    inc c
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    dec sp
    ld a, a
    inc sp
    ld [hl], e
    dec l
    inc sp
    dec c
    db $10
    ldh [$E0], a
    nop
    ldh a, [$E0]
    ldh a, [$E0]
    ldh a, [$C0]
    add sp, -$30
    add sp, -$30
    ldh a, [$80]
    rlca
    nop
    rra
    rlca
    ccf
    ld d, $3F
    dec de
    ccf
    jr @+$41

    rla
    ccf
    rlca
    rra
    inc bc
    ldh a, [rP1]
    ldh a, [rLCDC]
    ld hl, sp-$50
    ld hl, sp+$70
    ld hl, sp-$50
    ld hl, sp-$50
    db $F4
    ret z

    db $E4
    ret c

    ld hl, sp+$00
    ld hl, sp+$30
    db $FC

jr_021_5185:
    ret z

    db $FC
    jr c, jr_021_5185

    ld hl, sp-$04
    add sp, -$04
    add sp, -$08
    ldh a, [rP1]
    nop
    db $FC
    db $10
    cp $CC
    db $FD
    ld a, [hl-]
    db $FD
    ld a, [$E0FE]
    ldh a, [$E0]
    ldh [rP1], a
    ld a, [de]
    dec b
    inc b
    inc bc
    rrca
    inc b
    rra
    rrca
    rra
    ld bc, $0609
    add hl, bc
    ld b, $06
    nop
    nop
    nop
    ld a, [de]
    dec b
    inc c
    inc bc
    ccf
    inc b
    ld c, a
    scf
    ld c, a
    jr nc, jr_021_51ED

    nop
    nop
    nop
    ld a, a
    rlca
    rst $38
    ld l, a

jr_021_51C4:
    rst $38
    ld e, a
    ld a, a
    rra
    rst $38
    inc a
    rst $38
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret nz

    add b
    db $FC
    ret nz

    ld a, [c]
    db $EC
    ld a, [c]
    call z, $00FC
    nop
    nop
    nop
    nop
    ld h, b
    nop
    rst $38
    ld l, a

jr_021_51E4:
    rst $38
    ld c, a
    ld a, a
    db $10
    ld sp, hl
    ld [hl], $F9
    ld b, $0E

jr_021_51ED:
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop

jr_021_51F4:
    ret nz

    nop
    ret nz

    add b
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld e, b
    and b
    jr nc, jr_021_51C4

    ld hl, sp+$30
    db $FC
    ld hl, sp-$04
    adc b
    sbc [hl]
    ld h, b
    sbc [hl]
    ld h, b
    cp $00
    ld a, [de]
    dec b
    inc b
    inc bc
    rrca
    inc b

jr_021_5216:
    rra
    add hl, bc
    add hl, sp
    ld d, $19
    ld b, $07
    ld bc, $0007
    ld e, b
    and b
    jr nc, jr_021_51E4

    ld hl, sp+$30
    db $FC
    ld hl, sp-$04
    ldh a, [$FC]
    ldh a, [$F4]
    add sp, -$08
    nop
    ld e, b
    and b
    jr nc, jr_021_51F4

    ld hl, sp+$30
    db $FC
    ld hl, sp-$04
    add sp, -$04
    ldh [$E4], a
    ret c

    db $E4
    ret c

    ld a, [hl+]
    dec d
    ld a, [de]
    dec b
    inc b
    inc bc
    rrca
    inc b
    rra
    rrca
    rra
    dec bc
    rra
    dec bc
    rla
    dec bc
    ld d, h
    xor b
    ld e, b
    and b
    jr nz, jr_021_5216

    ldh a, [rNR41]
    ld hl, sp-$10
    ld hl, sp-$70
    sbc b
    ld h, b
    sub b
    ld h, b
    ccf
    dec bc
    ld a, a
    scf
    ld a, a
    scf
    cp a
    ld d, a
    sbc a
    ld h, a
    ld a, a
    rlca
    rrca
    rlca
    nop
    nop
    ldh a, [rP1]
    xor $C0
    ld sp, hl
    and $F9
    or $FE
    cp b
    ld hl, sp-$40
    ldh [$C0], a
    nop
    nop
    ld a, a
    rlca
    rst $38
    ld l, a
    rst $38
    ld e, a
    ld a, a
    rra
    ccf
    ld c, $3F
    ld c, $3E
    dec c
    ld e, $05
    ldh [rP1], a
    ret nz

    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
    ld b, b
    add b
    ld b, b
    add b
    ccf
    dec e
    ld a, a
    ccf
    ld a, a
    rra
    sbc a
    ld l, c
    sbc a
    ld h, a
    ld a, a
    rlca
    rrca
    rlca
    nop
    nop
    ldh a, [rP1]
    xor $C0
    ld sp, hl
    add $F9
    sub $FE
    ret c

    ld hl, sp-$20
    ldh [$C0], a
    nop
    nop
    call nz, $F838
    add b
    ldh a, [$E0]
    ldh a, [$E0]
    ldh a, [$E0]
    ldh [$C0], a
    ldh [$C0], a
    ldh [$C0], a
    rrca
    nop
    ld a, a
    rlca
    rst $38
    ld a, a
    rst $38
    ld l, a
    ld a, a
    cpl
    ccf
    rra
    ccf
    dec e
    rra
    ld c, $10
    ldh [$E0], a
    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ldh [$80], a
    sub b
    ld h, b
    sub b
    ld h, b
    rrca
    nop
    ld a, a
    rlca
    rst $38
    ld l, a
    rst $38
    ld e, a
    rst $38
    rra
    ccf
    ld c, $3E
    dec c
    ld e, $05
    db $10
    ldh [$E0], a
    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
    ld b, b
    add b
    ld b, b
    add b
    rrca
    nop
    ld a, a
    rlca
    rst $38
    ld l, a
    rst $38
    ld e, a
    ld a, a
    dec c
    ccf
    inc bc
    inc sp
    dec c
    inc de
    dec c
    db $10
    ldh [$E0], a
    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ldh [$80], a
    ret nc

    and b
    ret nc

    and b
    nop
    nop
    rra
    nop
    rrca
    inc bc
    rra
    dec c
    rra
    ld c, $1F
    dec bc
    rrca
    inc bc
    rlca
    inc bc
    nop
    nop
    ld hl, sp+$00
    ld hl, sp+$20
    db $FC

jr_021_5347:
    ret c

    db $FC
    jr c, jr_021_5347

    add sp, -$04
    ldh [$F4], a
    add sp, $00
    nop
    ld hl, sp+$00
    ld hl, sp+$30
    db $FC

jr_021_5357:
    ret z

    db $FC
    jr c, jr_021_5357

    add sp, -$04
    add sp, -$08
    ldh a, [$F8]

jr_021_5361:
    nop
    ld hl, sp+$30
    db $FC
    ret z

    db $FC
    jr c, jr_021_5361

    ldh a, [$F0]
    ldh [$F0], a
    ldh [$E0], a
    nop
    rra
    nop
    rrca
    inc bc
    rra
    dec c
    rra
    ld c, $1F
    dec bc
    rrca
    inc bc
    rlca
    inc bc
    rlca
    nop
    ld hl, sp+$00
    ld hl, sp+$20
    db $FC

jr_021_5385:
    ret c

    db $FC
    jr c, jr_021_5385

    ldh [$F4], a
    add sp, -$1C
    ret c

    ld hl, sp+$00
    rlca
    nop
    rlca
    nop
    rrca
    rlca
    rra
    rrca
    rra
    rrca
    rra
    ld a, [bc]
    rra
    inc c
    rra
    rrca
    ld d, [hl]
    xor b
    inc b
    ld hl, sp-$08
    nop
    ldh a, [$E0]
    ldh [rP1], a
    jr nz, @-$3E

    jr nz, @-$3E

    ldh [rP1], a
    inc c
    inc bc
    ccf
    inc c
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, e
    ld a, a
    rla
    sbc a
    ld l, a
    sbc a
    ld h, [hl]
    db $10
    ldh [$E0], a
    nop

jr_021_53C4:
    ldh [$C0], a
    ldh a, [$C0]
    ldh a, [$C0]
    add sp, -$30
    add sp, -$30
    ldh a, [rP1]
    ld d, h
    xor b
    ld e, b
    and b
    inc a
    ret nc

    cp $3C
    cp $F8
    ld sp, hl
    or $F9
    or $FE
    ldh a, [rNR30]
    dec b
    inc e
    inc bc
    ccf
    inc e
    ld a, a
    ccf
    ld a, a
    rla
    sbc a
    ld l, a
    sbc a
    ld l, a
    ld l, a
    inc b
    ld e, b
    and b
    jr c, jr_021_53C4

    ld hl, sp+$30
    db $FC
    ld hl, sp-$04
    ld hl, sp-$06
    db $F4
    ld a, [$FCF4]
    ld [hl], b
    nop
    nop
    rra
    nop
    rra
    rlca
    ccf
    ld d, $3F
    dec de
    ccf
    jr @+$41

    rlca
    rra
    inc bc
    nop
    nop
    ld hl, sp+$00

jr_021_5414:
    ldh a, [rLCDC]
    ld hl, sp-$50

jr_021_5418:
    db $FC
    ld a, b
    ld a, [$FAB4]
    db $F4
    db $FC
    ldh [$1F], a
    nop
    rra
    ld b, $3F
    dec de
    ccf
    jr jr_021_5468

    rra
    rra
    rrca
    rrca
    inc bc
    rlca
    nop
    ld hl, sp+$00
    ldh a, [$A0]
    ld hl, sp+$70
    ld hl, sp-$10
    ldh a, [$60]
    add sp, -$70
    ret z

    or b
    ldh a, [rP1]
    rra
    db $10
    inc e
    rrca
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
    jr nz, jr_021_5414

    sub b
    ld h, b
    jr nc, jr_021_5418

    ld hl, sp+$30
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    nop
    and b
    ld b, b
    jr nz, @-$3E

    or b
    ld b, b
    ld a, b
    or b

jr_021_5468:
    ld hl, sp+$70
    ldh a, [$C0]
    ret nz

    nop
    nop
    nop
    ld hl, sp+$00
    db $10
    ldh [$88], a
    ld [hl], b
    cp b

jr_021_5477:
    ld b, b
    ld hl, sp+$30
    db $FC
    ld a, b
    db $FC
    jr c, jr_021_5477

    nop
    ldh a, [rP1]
    sub b
    ld h, b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    sbc b
    ld h, b
    db $FC
    ld [$70FC], sp
    ld hl, sp+$00
    ld a, [hl+]
    dec d
    ld a, [de]
    dec b
    inc b
    inc bc
    rrca
    inc b
    rra
    dec bc
    rra
    inc bc
    inc de
    dec c
    inc de
    dec c
    ld a, a
    nop
    add c
    ld a, [hl]
    add l
    ld a, d
    adc d
    ld [hl], h
    adc [hl]
    ld [hl], b
    ld a, h
    nop
    ld a, h
    jr c, jr_021_552B

    nop
    rst $38
    nop
    ld b, c
    ld a, $91
    ld l, [hl]
    adc l
    ld [hl], d
    adc a
    ld [hl], b
    ld a, a
    ld b, $7F
    ld [hl], $7F
    nop
    ld e, $0C
    ld e, $0C
    ld e, $00
    add hl, de
    ld b, $0F
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld b, d
    inc a
    add c
    ld a, [hl]
    push hl
    ld a, [de]
    ld sp, hl
    ld h, [hl]
    cp $70
    ld a, [hl]
    inc [hl]
    ld a, h
    nop
    rlca
    nop
    ld [$0907], sp
    ld b, $08
    rlca
    ld c, $01
    rrca
    ld b, $0F
    nop
    nop
    nop
    db $FC
    nop
    db $10
    ldh [$08], a
    ldh a, [$88]
    ld [hl], b
    sbc b
    ld h, b
    db $FC
    ld [$70FC], sp
    ld hl, sp+$00
    ld [$0807], sp
    rlca
    ld a, [bc]
    dec b
    add hl, bc
    ld b, $07
    nop
    ld bc, $0100
    nop
    nop
    nop
    db $10
    ldh [rSVBK], a
    add b
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp-$10
    ldh a, [$E0]
    ldh [rP1], a
    nop
    nop
    db $FC
    jr c, jr_021_559F

    jr jr_021_5561

    nop
    nop
    nop
    nop
    nop
    nop

jr_021_552B:
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld [$1807], sp
    rlca
    jr jr_021_553F

    rra
    ld [$0C1E], sp
    inc c
    nop
    nop

jr_021_553F:
    nop
    ldh a, [rP1]
    db $10
    ldh [$08], a
    ldh a, [$88]
    ld [hl], b
    cp b

jr_021_5549:
    ld b, b
    db $FC
    jr c, jr_021_5549

    ld a, b
    ld a, h
    nop
    inc b
    inc bc
    ld [$0907], sp

jr_021_5555:
    ld b, $0B
    dec b
    rlca
    inc bc
    rlca
    inc bc
    rrca
    inc b
    rrca
    nop
    ld [hl], b

jr_021_5561:
    add b
    ret nc

    jr nz, jr_021_5555

    ret nz

    ldh a, [$E0]
    ldh a, [$C0]
    ldh [$80], a
    ret nz

    nop
    ret nz

    nop
    rlca
    nop
    add hl, bc
    ld b, $0B
    dec b
    dec bc
    dec b
    rlca
    ld bc, $0007
    rlca
    inc bc
    inc bc
    nop
    ldh a, [rP1]
    sub b
    ld h, b
    ret z

    or b

jr_021_5586:
    add sp, -$30
    ldh a, [$E0]

jr_021_558A:
    ldh a, [$E0]
    ldh [rP1], a
    add b
    nop
    ld h, a
    nop
    ld hl, sp+$67
    ldh a, [$6F]
    ldh a, [$6F]
    db $FC
    ld [hl], e
    ei
    jr nc, jr_021_5615

    nop
    nop

jr_021_559F:
    nop
    cp $00
    jp $11FC


    xor $61
    sbc a
    db $E3
    dec e
    rra
    inc bc
    rlca
    nop
    nop
    nop
    rrca
    nop
    ld [hl], h
    rra
    ld hl, sp+$6F
    pop hl
    ld e, [hl]
    db $E3
    ld e, h
    rst $38
    ld h, b
    ld h, e
    ld bc, $0001
    ret nz

    nop
    ld b, b
    add b
    jr nz, jr_021_5586

    sub b
    ld h, b
    jr nc, jr_021_558A

    ld hl, sp+$30
    ld hl, sp-$10
    ldh a, [rP1]
    ld h, [hl]
    ld bc, $0709
    inc c
    inc bc
    ld [de], a
    dec c
    ccf
    nop
    ld a, a
    inc a
    ld a, a
    ld a, $3F
    nop
    ld h, b
    add b
    ld d, [hl]
    ldh [$8F], a
    or $1F
    xor $3F
    call c, $38FE
    ld a, h
    db $10
    jr c, jr_021_55F0

jr_021_55F0:
    rrca
    nop
    dec c
    rlca
    ld [de], a
    rrca
    jr nz, jr_021_5617

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
    ld a, b
    add b

jr_021_5606:
    db $FC
    jr jr_021_5685

    cp b
    ld a, b
    or b
    ld hl, sp+$40
    ldh [rP1], a
    rrca
    nop
    dec c
    rlca
    ld [de], a

jr_021_5615:
    rrca
    db $10

jr_021_5617:
    rrca
    cpl
    db $10
    ccf
    rlca
    ccf
    rrca
    rra
    nop
    ret nz

    nop
    jr nz, @-$3E

    jr nz, @-$3E

    ld h, b
    add b
    ldh a, [rNR41]
    ldh a, [$A0]
    ldh a, [$80]
    ret nz

    nop
    rrca
    nop
    dec c
    rlca
    ld [de], a
    rrca
    inc [hl]
    dec bc
    ld a, [hl]
    ld hl, $3C7F
    ld a, a
    ld e, $7F
    nop
    ldh [rP1], a
    ld h, b
    add b
    jr c, jr_021_5606

    inc a
    ret c

    ld a, h
    cp b
    ld a, b
    or b
    ld hl, sp+$40
    ldh [rP1], a
    ld h, a
    nop
    db $FC
    ld h, e
    pop af
    ld l, [hl]
    ldh a, [$6F]
    db $FC
    ld [hl], e
    ei
    jr nc, jr_021_56D5

    nop
    nop
    nop
    cp $00
    dec hl
    db $FC
    add hl, de
    cp $81
    ld a, a
    db $E3
    dec e
    rra
    inc bc
    inc bc
    nop
    nop
    nop
    ret nz

    nop
    ldh [$C0], a
    ldh [$C0], a
    ldh [$80], a
    ret nz

    add b
    ret nz

    nop
    add b
    nop
    nop
    nop
    rra
    nop
    rrca
    rlca
    rra

jr_021_5685:
    add hl, bc
    rra
    ld c, $1F
    rrca
    rra
    dec bc
    rra
    dec bc
    rrca
    rlca
    ld a, [de]
    dec b
    inc b
    inc bc
    rrca
    inc b
    rra
    rrca
    rra
    dec bc
    rra
    inc bc
    inc de
    dec c
    inc de
    dec c
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$70
    db $FC
    ret z

    db $FC

jr_021_56A9:
    jr c, jr_021_56A9

    ld hl, sp-$02
    ldh a, [$FE]
    ldh [$FC], a
    nop

jr_021_56B2:
    ld a, b
    jr nc, jr_021_572D

    nop
    nop
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
    ld a, a

jr_021_56C3:
    ccf
    ccf
    rla
    ccf
    rrca
    rra
    dec c
    rra
    ld c, $1F
    inc c
    ccf
    nop
    ldh [rP1], a
    ret nz

    add b
    ret nz

jr_021_56D5:
    add b
    ldh [$C0], a
    ldh a, [$E0]
    ld hl, sp-$20
    db $E4
    jr jr_021_56C3

    jr jr_021_5701

    rra
    inc hl
    inc e
    rra
    inc bc
    rrca
    rlca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_021_56B2

jr_021_56F2:
    ldh a, [rNR41]
    ldh a, [$A0]
    ldh a, [$80]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc

jr_021_5701:
    ld b, $3C
    inc bc
    ld a, a
    inc c
    rst $38
    ccf
    rst $38
    dec sp
    ld a, a
    inc sp
    ld [hl], e
    dec l
    inc sp
    dec c
    rra
    nop
    rrca
    ld [bc], a
    rra
    dec c
    rra
    ld c, $1F
    inc bc
    rla
    dec bc
    inc de
    dec c
    rrca
    nop
    ld hl, sp+$00
    ld hl, sp+$60
    db $FC

jr_021_5725:
    ret c

    db $FC
    jr c, jr_021_5725

    add sp, -$08
    ldh [$F0], a

jr_021_572D:
    ldh [$F0], a
    nop
    jr nc, jr_021_56F2

    db $10
    ldh [$E0], a
    nop
    ldh a, [$E0]
    ldh a, [$C0]
    add sp, -$30
    add sp, -$30
    ldh a, [$80]
    rra
    nop
    ccf
    rra
    ld b, c
    ccf
    ld a, b
    ccf
    ld a, l
    ld a, $3E
    dec b
    ld c, l
    ld [hl-], a
    ld c, l
    ld [hl-], a
    ldh [rP1], a
    ldh a, [$A0]
    add sp, -$30
    db $FC
    ret c

    db $FC
    sbc b
    sbc h
    ld l, b
    inc a
    ret nz

    ld [hl-], a
    call z, $03FC
    rst $38
    ld [hl], b
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rra
    rrca
    ld [de], a
    db $EC
    db $FC
    nop
    db $FC
    ret c

    ld hl, sp-$10
    ldh a, [$E0]
    ldh [$C0], a
    ret nz

    add b
    ret nz

    add b
    rra
    nop
    ld a, [hl-]
    rlca
    ld a, h
    daa
    ld hl, sp+$67
    db $FC
    ld [hl], e
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ret nc

    jr nz, jr_021_57A3

    ldh [$08], a
    ldh a, [rOBP0]
    or b
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

jr_021_57A3:
    nop
    nop
    nop
    rlca
    nop
    add hl, bc
    rlca
    add hl, de
    rrca
    inc e
    rrca
    inc e
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    ld hl, sp+$70
    db $E4
    cp b
    and $BC
    and $FC
    nop
    nop
    jr nz, jr_021_57C4

jr_021_57C4:
    ld a, h
    inc a
    cp $7E
    cp $7E
    ld a, a
    inc a
    ld a, h
    dec sp
    inc a
    dec de
    nop
    nop
    nop
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
    ld [$18FC], sp
    inc e
    rrca
    rra
    rlca
    rrca
    ld [bc], a
    rlca
    nop
    ld [bc], a
    ld bc, $0003
    nop
    nop
    nop
    nop
    rst $30
    sbc $FF
    ld c, [hl]
    ld e, [hl]
    and h
    ld c, $F0
    call c, $0C20
    ldh a, [rP1]
    nop
    nop
    nop

Jump_021_5800:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    nop
    ld d, c
    nop
    cp e
    nop
    ld d, l
    db $EB
    cp [hl]
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    nop
    dec d
    nop
    xor a
    nop
    ld d, l
    xor a
    ld a, [$0005]
    nop
    nop
    nop
    nop
    nop
    adc d
    nop
    ld d, l
    nop
    db $DB
    nop
    ld d, l
    adc [hl]
    adc e
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    nop
    dec d
    nop
    xor a
    nop
    ld d, l
    xor a
    ld a, [$0005]
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    ld d, b
    nop
    ldh a, [rP1]
    ld d, b
    ldh [$A0], a
    ld b, b
    nop
    nop
    dec b
    ld [bc], a
    ret nz

    ld bc, $C024
    ld [hl+], a
    ldh [rNR42], a
    ldh [$2C], a
    ldh [rNR43], a
    db $EC
    ld [hl+], a
    xor $4D
    cp $2D
    ld e, [hl]
    ld c, l
    ld a, $9D
    ld a, [hl]
    sbc l
    ld a, [hl]
    db $DD
    ld a, [hl]
    ld a, l
    ld l, $3D
    ld d, $C0
    nop
    inc a
    nop
    ld b, d
    inc a
    dec e
    ld a, [hl]
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    daa
    ld e, d
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    rst $28
    nop
    pop af
    rrca
    dec de
    rst $20
    ld l, c
    rst $30
    ld hl, sp-$09
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    pop hl
    cp $FC
    rst $38
    cp $FF
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    inc e
    ldh [rDMA], a
    ld hl, sp+$02
    db $FC
    nop
    nop
    ret nz

    nop
    rst $38
    nop
    cpl
    ret nz

    daa
    ldh [rNR41], a
    ldh [rNR43], a
    db $EC
    ld [hl+], a
    xor $00
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    dec bc
    nop
    rla
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
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
    rst $38
    cp $01
    db $FC
    ld bc, $0100
    ld e, [hl]
    ld bc, $01BE
    nop
    nop
    nop
    nop
    dec b
    nop
    ld a, [bc]
    ld bc, $0007
    ld a, [bc]
    ld bc, $0106
    inc bc
    nop
    nop
    nop
    or $00
    dec d
    cp $AB
    rst $38
    ld e, [hl]
    rst $38
    dec a
    rst $38
    nop

jr_021_591D:
    rst $38
    cp $00
    nop
    nop
    and e
    nop
    ld d, l
    and d

jr_021_5926:
    inc h
    db $D3
    sub c
    rst $20
    ld h, $D1
    ld d, l
    add b
    and d
    nop
    nop
    nop
    ld d, a
    nop
    ld d, l
    rst $38

jr_021_5936:
    cp a
    rst $38
    ld a, a
    rst $38
    ld d, a
    rst $38
    jr nz, jr_021_591D

    cp a
    nop
    nop
    nop
    rst $38
    nop
    xor b
    rst $38
    push af
    rst $38

jr_021_5948:
    ld a, [$D4FF]
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ld d, b
    add b

jr_021_5958:
    ldh [rP1], a

jr_021_595A:
    ld d, b
    add b
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_021_5926

    jr nz, jr_021_5948

    jr nz, @-$1E

    inc l
    ldh [rNR43], a
    db $EC
    ld [hl+], a
    xor $13
    inc c
    adc $00
    jr nz, jr_021_5936

    jr nz, jr_021_5958

    jr nz, jr_021_595A

    inc l
    ldh [rNR43], a
    db $EC
    ld [hl+], a
    xor $5B
    inc a
    ld bc, $7E7E
    ld bc, $7F00
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    nop
    cp $F9
    rst $38
    db $FC
    cp a
    rst $38

jr_021_5996:
    rst $08
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    add a
    ld [$E007], sp
    ldh [rP1], a
    nop
    nop
    nop
    db $FC
    cp $E4
    cp $F8
    cp $F8
    cp $E0
    cp $00
    cp $00
    ld a, $00
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    jr nz, jr_021_5996

    jr nz, @-$1E

    jr nz, @-$1E

    jr nz, @-$1E

    ld [hl+], a
    db $EC
    ld [hl+], a
    xor $F8
    nop
    nop
    nop
    rla
    nop
    dec l
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld bc, $0100
    ldh [rSB], a
    ret nc

    ld bc, $01A0
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    ld b, $01
    dec bc
    nop
    inc b
    inc bc
    ld a, [bc]
    ld bc, $0025
    ld d, $01
    dec l
    ld [bc], a
    nop
    nop
    adc a
    nop
    ld d, l
    adc a
    rst $08
    sbc a
    rst $08
    sbc a
    ld b, a
    sbc a
    ld d, b
    adc a
    adc d
    nop
    nop
    nop
    rst $38
    nop
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $FD
    rst $38
    nop
    rst $38
    ld a, [$0000]
    nop
    adc a
    nop
    ld d, l
    adc a

jr_021_5A36:
    adc a

Call_021_5A37:
    rst $18
    adc a
    rst $18
    rlca
    rst $18
    ld d, b
    adc a
    adc d
    nop
    nop
    nop
    rst $18
    nop
    ld a, [hl+]
    push bc
    inc l
    db $E3
    ld [hl+], a
    pop hl
    dec l
    ldh [rNR43], a
    db $EC
    ld [hl+], a
    xor $00
    nop
    adc a
    nop
    ld d, l
    adc a
    adc a
    rst $18

jr_021_5A58:
    adc a
    rst $18

jr_021_5A5A:
    rlca
    rst $18
    ld d, b
    rrca
    ld a, [bc]
    nop
    ld [hl+], a
    xor $22
    xor $22
    xor $A2
    ld l, [hl]
    jp nz, Jump_021_622E

    adc [hl]
    ld [hl+], a
    adc $AA
    ld b, [hl]
    nop
    nop
    ret nz

    nop
    jr nz, jr_021_5A36

    jr nz, jr_021_5A58

    jr nz, jr_021_5A5A

    inc l
    ldh [rNR43], a
    db $EC
    ld [hl+], a
    xor $00
    nop
    nop
    inc a
    nop
    ld a, [hl]
    dec c
    ld a, [hl]
    rra
    ld a, [hl]
    ccf
    ld a, [hl]
    ld a, a
    ld b, d
    ld e, e
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
    nop
    ld [$0300], sp
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop

jr_021_5AA6:
    nop
    ld [$1300], sp
    nop
    ret nz

    nop
    ccf
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    add b
    nop
    nop
    nop
    add b
    add b
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    xor $22
    xor $22
    xor $22
    xor $22
    xor $22
    xor $22
    xor $22
    xor $00
    nop
    nop
    nop
    jr nz, jr_021_5AA6

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [$0E], a
    ldh [$0C], a
    ld [c], a
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    inc bc
    nop
    rlca
    nop
    ld a, [bc]
    ld bc, $0007
    ld a, [bc]
    ld bc, $0007
    inc bc
    nop
    nop
    nop
    rst $38
    nop
    dec d
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    dec b
    ld a, [$00FD]
    nop
    nop
    db $E3
    nop
    ld d, l
    db $E3
    db $E3
    rst $30
    db $E3
    rst $30
    pop hl
    rst $30
    ld d, h
    and e
    and d
    nop
    nop
    nop
    rst $38
    nop
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    xor a
    nop
    ld [hl+], a
    xor $22
    xor $22
    xor $22
    xor $22
    xor $22
    xor $22
    xor $22
    xor $00
    nop
    rst $18
    nop
    ld a, [hl+]
    push bc
    inc l
    db $E3
    ld [hl+], a
    pop hl
    dec l
    ldh [rNR43], a
    db $EC
    ld [hl+], a
    xor $6E
    ld [bc], a
    ld a, [hl]
    inc b
    ld e, $0C
    ld c, $00
    ld b, $00
    inc bc
    nop
    ld bc, $0000
    nop
    ld [hl+], a
    xor $22
    xor $22
    xor $A2
    ld l, [hl]
    jp nz, $E22E

    ld c, $22
    adc $CA
    ld h, $7F
    ld a, [hl]
    ld a, [hl]
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    cp $00
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rrca
    ld a, a
    rrca
    sbc a
    rlca
    rra
    add e
    adc a
    ld bc, $000F
    rlca
    nop
    inc bc
    ldh [$F8], a
    ld hl, sp-$04
    db $FC
    cp $FC
    cp $F8
    cp $C0
    cp $00
    db $FC
    nop
    ret nz

    ld [hl+], a
    xor $22
    xor $22
    xor $22
    xor $22
    xor $22
    xor $79
    rst $38
    rst $38
    nop
    ld [hl+], a
    xor $22
    xor $22
    xor $22
    xor $22
    xor $22
    xor $FF
    rst $38
    nop
    rst $38
    inc c
    ld [c], a
    inc c
    ld [c], a
    inc c
    ld [c], a
    inc c
    ld [c], a
    inc c
    ld [c], a
    inc c
    ld [c], a
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld bc, $0100
    ldh [rSB], a
    ret nz

    ld hl, $21C0
    ret nz

    ld hl, $FFFE
    nop
    rst $38
    nop
    nop
    ld b, $01
    dec bc
    nop
    inc b
    inc bc
    ld a, [bc]
    ld bc, $0025
    ld d, $01
    cpl
    nop
    nop
    nop
    adc a
    nop
    ld d, l
    adc a
    rst $08
    sbc a

jr_021_5C18:
    push bc
    sbc a
    ld d, d
    adc a
    push de
    ld [bc], a
    adc e
    nop
    nop
    nop
    rst $38
    nop
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, l
    rst $38
    ld b, [hl]
    cp c
    ld a, [$0000]
    nop
    adc a
    nop
    ld d, l
    adc a
    adc a
    rst $18
    adc a
    rst $18
    ld b, a
    sbc a
    pop de
    ld c, $8A
    nop
    nop
    nop
    pop af
    nop
    xor d
    pop af
    di
    ld sp, hl
    db $D3
    ld sp, hl
    xor d
    pop af
    ld e, d
    and c
    pop af
    nop
    nop
    nop
    ld h, b
    add b
    ret nc

    nop
    jr nz, jr_021_5C18

    ld d, b
    add b
    and h
    nop
    ld l, b

jr_021_5C5D:
    add b
    or h
    ld b, b
    nop
    rrca
    ld h, b
    rst $20
    jr nz, jr_021_5C5D

    db $10
    ld [hl], a
    inc d
    inc sp
    ld [hl], d
    ld [hl], c
    ld d, e
    ld [hl], b
    ld d, e
    ld [hl], b
    ld l, [hl]
    ld [bc], a
    ld a, [hl]
    inc b
    ld e, $0C
    ld c, $00
    ld b, $00
    inc bc
    nop
    ld bc, $0000
    nop
    or c
    ld [hl], e
    ld [$8B71], a
    ld [hl], b
    adc d
    ld [hl], c
    adc c
    ld [hl], b
    add b
    ld [hl], b
    or d
    ld b, c
    db $F4
    inc bc
    pop af
    rst $38
    ld hl, sp-$01

Call_021_5C94:
    rst $38
    nop
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld h, e
    db $E3
    ld c, b
    db $DD
    push de
    inc d
    sub l
    call nc, Call_021_5C94
    inc d
    nop
    inc e
    pop bc
    ret nz

    db $E3
    adc l
    adc $57
    adc [hl]
    pop de
    ld c, $11
    adc $D1
    ld c, $09
    ld b, $4D
    add d
    cpl
    ret nz

    jr nz, @+$20

    ld b, b
    ld [$6081], sp
    jp nz, $E171

    ld [hl], e
    db $F4
    ld [hl], d
    ldh a, [rPCM34]
    di

jr_021_5CCF:
    ld [hl], a
    nop
    nop
    nop
    nop
    ld h, b
    rst $38
    or e
    cp e
    inc hl
    rst $38
    daa
    rst $38
    rrca
    ld hl, sp-$78
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    db $DD
    db $DD
    db $DD
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rrca
    inc b
    ld a, b
    ld [bc], a
    db $10
    add c
    ld b, $43
    adc [hl]
    add a
    adc $2F
    ld c, [hl]
    rrca
    xor $CF
    xor $00
    nop
    dec b
    ld [bc], a
    ld a, [bc]
    rlca
    rrca
    nop
    ld a, [bc]
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    and b
    xor d
    push af
    push af
    nop
    xor b
    nop
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop de
    jr nz, jr_021_5CCF

    ld [hl], c
    db $DB
    nop
    xor d
    nop
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    and b
    xor d
    push af
    push af
    nop
    xor b
    nop
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    add d
    xor d
    rst $10
    db $DD
    nop
    adc d
    nop
    ld d, l
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
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    jp nz, $F1E0

    ldh a, [$78]
    ld hl, sp+$3C
    ld a, h
    ld a, [hl+]
    ld a, [hl-]
    ld a, [hl+]
    ld a, [hl+]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp c
    rlca
    rst $10
    rrca
    ld e, a
    adc a
    ld d, e
    adc a
    ld d, [hl]
    adc a
    ld d, b
    adc [hl]
    ret c

    ld b, $8E
    nop
    add e
    rst $38
    rst $38
    rst $38
    ldh [$F0], a
    rlca
    adc a
    jr c, jr_021_5E16

    ld b, b
    ldh [$80], a
    call nc, $9494
    ret nz

    rst $38
    cp $FF
    inc bc
    rlca
    ldh a, [$F9]
    inc c
    ld e, $02
    add a
    add c
    sub e
    add c
    sub c
    xor $F0
    ld [hl], l
    ld hl, sp-$3B
    ld hl, sp-$0B
    ld hl, sp+$25
    ld hl, sp+$05
    ld a, b
    dec c
    ld [hl], b
    jr c, jr_021_5E00

    pop af
    ld [hl], a
    ldh a, [rPCM12]
    ld a, [c]
    ld [hl], a
    di
    daa
    di
    rlca
    ld h, d
    ld b, $00
    rlca
    ld h, l
    inc bc
    adc b
    ldh a, [$C8]
    ldh a, [$A8]
    ldh a, [$8F]
    ldh a, [$CF]
    rst $30
    rst $00
    ld hl, sp-$10
    rst $38
    db $EC
    rst $38
    jr jr_021_5DF1

    db $10
    rrca
    jr jr_021_5DF5

    db $FC
    rrca
    ld e, $EF
    db $ED
    rra
    ld a, b
    rst $38
    nop
    rst $38
    adc a

jr_021_5DF1:
    xor $0F
    ld l, [hl]
    ld c, a

jr_021_5DF5:
    xor $CF
    db $E4
    rst $08
    ldh [rDMA], a
    ld h, b
    nop
    ldh [$A6], a
    ret z

jr_021_5E00:
    ld de, $0E0B
    inc bc
    ld b, $08
    jr jr_021_5E08

jr_021_5E08:
    ld a, $61
    ld b, e
    add sp, $49
    sub c
    inc c
    add hl, sp
    nop
    add b
    nop
    nop
    jr nc, jr_021_5E86

jr_021_5E16:
    ld h, d
    or $84
    xor $F8
    inc c
    ld [$ECD0], sp
    ret c

    ld [bc], a
    ld bc, $0001
    nop
    ld bc, $0201
    ld [hl], l
    ld a, [hl-]
    ld l, b
    di
    sub e
    and $09
    rlca
    jr nz, jr_021_5EA2

    ret nz

    ld h, b
    add $0E
    inc c
    ld e, $D0
    inc a
    ld a, h
    nop
    ld hl, $9C38
    jr c, jr_021_5E41

jr_021_5E41:
    nop
    rst $38
    nop
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $FD
    rst $38
    nop
    rst $38
    ld a, [$0000]
    nop
    rst $38
    nop
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $FD
    rst $38
    nop
    rst $38
    ld a, [$4000]
    ccf
    cp a
    ld a, a
    ld e, a
    rst $38
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
    ld [bc], a
    db $FC
    db $FD
    cp $FE
    rst $38
    cp $FF
    cp $FF
    db $FC
    rst $38
    db $FD
    cp $FD
    cp $62
    nop
    ld hl, sp+$00
    db $FC
    nop

jr_021_5E86:
    db $FC
    nop
    ld sp, hl
    nop
    ld a, [c]
    ld bc, $0708
    ld bc, $9400
    nop
    sub h
    nop
    sub h
    nop
    sub h
    nop
    sub h
    ld l, e
    ld l, e
    rst $38
    rst $38
    rst $38
    adc a
    ld a, a
    sub c
    nop

jr_021_5EA2:
    sub c
    nop
    sub c
    nop
    sub c
    nop
    sub c
    ld l, [hl]
    sbc h
    ld l, a
    ld l, a
    rst $38
    db $FC
    rst $38
    ld h, e
    nop
    ld c, a
    nop
    rra
    nop
    rra
    nop
    sbc a
    nop
    ld [hl], a
    add b
    ld [$04F0], sp
    ld hl, sp-$4F
    ld [hl], e
    add sp, $72
    adc b
    ld [hl], e
    adc c
    ld [hl], e
    adc c
    ld [hl], e
    add b
    ld [hl], d
    or b
    ld b, e
    ldh a, [$03]
    ldh a, [rIE]
    ld hl, sp-$01
    db $FC
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
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    adc l
    adc $17
    ld c, [hl]
    ld de, $91CE
    adc $91
    adc $09
    ld b, [hl]
    dec c
    jp nz, $C00F

    ld l, h
    inc e
    inc h
    ld c, [hl]
    ld [hl+], a
    ld b, $40
    jr nz, jr_021_5F09

jr_021_5F09:
    ld b, b
    nop
    jr nz, jr_021_5F43

    ld [$00C1], sp
    ld l, [hl]
    db $FC
    inc b
    ld l, [hl]
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    nop
    add hl, bc
    inc bc
    db $10
    add hl, bc
    jr nz, jr_021_5F36

    nop
    jr nz, jr_021_5F49

    jr @+$5A

    ld b, $21
    nop
    ld [bc], a
    nop
    adc l
    sbc h
    add b
    call z, $C042

jr_021_5F36:
    nop
    nop
    ld c, b
    nop
    inc d
    nop
    ret z

    nop
    nop
    nop
    nop
    nop
    db $E3

jr_021_5F43:
    nop
    ld d, l
    db $E3
    db $E3
    rst $30
    db $E3

jr_021_5F49:
    rst $30
    pop hl
    rst $30
    ld d, h
    and e
    and d
    nop
    nop
    nop
    db $E3
    nop
    ld d, l
    db $E3
    db $E3
    rst $30
    db $E3
    rst $30
    pop hl
    rst $30
    ld d, h
    and e
    and d
    nop
    ccf
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38
    sub a
    ld a, a
    ld [$5477], sp
    dec hl
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    db $FC
    rst $38
    pop hl
    cp $03
    db $FC
    ld d, [hl]
    xor b
    nop
    nop
    ld bc, $6000
    rra
    nop
    rst $38
    rst $08
    nop
    add b
    nop
    ld d, l
    nop
    xor d
    nop
    ld h, b
    rra
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ld l, c
    nop
    or [hl]
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$10
    nop
    nop
    nop
    ld d, l
    nop
    xor d
    nop
    ld c, b
    or b
    and b
    ld b, b
    ld d, b
    add b
    jr nz, jr_021_5FB8

jr_021_5FB8:
    nop
    nop
    ld [hl], $00
    ld c, c
    nop
    and [hl]
    nop
    ld h, c
    rla
    add c
    rlca
    ld [hl], b
    ld [bc], a
    ret c

    ld h, e
    xor b
    ld [hl], e
    cp b
    ld b, b
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $20
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ld h, d
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    add sp, -$7F
    ldh [rIF], a
    ld b, b
    dec de
    add $15
    adc $1D
    ld [bc], a
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld a, a
    dec a
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    nop
    nop
    nop
    add c
    nop
    ld [hl], b
    adc a
    adc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    nop
    nop
    ld hl, $1E1E
    rst $38
    rst $38
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
    ld hl, $1C1E
    rst $38
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    nop
    nop
    nop
    ld a, b
    ld a, b
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    db $FC
    db $FC
    rst $38
    cp $FF
    cp $FF
    cp $FF
    ld b, b
    ccf
    cp a
    ld a, a
    ld e, a
    rst $38
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
    ld [bc], a
    db $FC
    db $FD
    cp $FE
    rst $38
    cp $FF
    cp $FF

jr_021_607A:
    db $FC
    rst $38
    db $FD
    cp $FD
    cp $0F
    nop
    ld h, b
    nop
    rst $38
    nop
    nop
    cp $FD
    db $FD
    di
    di
    cp $FE
    adc b
    cp $FC
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    ld a, b

Call_021_6098:
    inc a
    nop

Call_021_609A:
    stop
    ret nz

    add b
    add b
    nop
    jr nz, @+$20

    ld b, b
    ld [$6080], sp
    pop bc
    ld [hl], b
    pop hl
    ld [hl], b
    ldh a, [$71]
    ld a, [c]
    ld [hl], c
    ldh a, [$73]
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_021_607A

    ret nc

    ret nz

    ld e, b
    ld [hl], b
    ld d, b
    ldh [$F0], a
    ld [hl], e
    ldh a, [$73]
    ldh a, [$73]
    ldh a, [rNR44]
    ldh a, [$03]
    ld h, b
    inc bc
    nop
    inc bc
    ld h, d
    ld bc, $C0E8
    ld l, b
    ld b, b
    ld l, b
    ret nz

    xor b
    ret nz

    or b
    ret z

    jr nc, jr_021_612C

    ld d, b
    ld hl, sp-$40
    ldh a, [$B0]
    ld [hl], c
    jp hl


    ld [hl], b
    adc c
    ld [hl], b
    adc c
    ld [hl], b
    adc b
    ld [hl], b
    add b
    ld [hl], b
    or b
    ld b, b
    pop af
    nop
    add b
    add sp, $28
    add sp, -$18
    ld [$00E8], sp
    ret z

    nop
    nop
    db $10
    ldh a, [$78]
    ld h, b
    ld hl, sp+$7F
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    scf
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rst $38
    nop
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    jp z, $85FF

    rst $38
    nop
    rst $38
    add b
    ld a, a
    rst $38
    nop
    rst $38
    rst $38
    cp $FF
    cp $FF
    db $FD
    cp $41
    cp $03
    db $FC

jr_021_612C:
    daa
    ret c

    ld e, a
    and b
    cp $FF
    cp $FF
    ld e, [hl]
    rst $38
    dec l
    cp $41
    cp $83
    ld a, h
    ld b, [hl]
    cp b
    cp h
    ld b, b
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    add d
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh a, [rIF]
    cp $FF
    cp $FF
    cp $FF
    db $FC
    rst $38
    cp b
    rst $38
    nop
    rst $38
    ld bc, $FFFE
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
    ccf
    rst $38
    ld e, a
    rst $38
    db $FD
    cp $FD
    cp $FD
    cp $FE
    rst $38

jr_021_6178:
    db $FD
    cp $FE
    rst $38
    cp $FF
    cp $FF
    ccf
    ld a, $CF
    call z, $D0D6
    ret c

    ret nc

    db $EC
    ldh [$FC], a
    db $10
    jr z, jr_021_61AE

    add b
    nop
    rst $38
    rst $38
    jp $01FF


    rst $38
    nop
    pop hl
    nop
    ret nz

    nop
    sbc [hl]
    ld e, $BF
    ccf
    cp a
    ld h, b
    ld de, $0180
    ld [hl], b
    ld bc, $61D8
    xor b
    ld [hl], c
    cp b
    ld b, c
    ldh a, [rP1]

jr_021_61AE:
    nop
    nop
    ldh [$F8], a
    ret z

    ldh a, [rNR10]
    ld h, b
    jr nz, jr_021_6178

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    add sp, -$40
    ld l, b
    ld b, b
    ld l, b
    ret nz

    xor b
    ret nz

    or b
    ret z

    jr nc, jr_021_621C

    ld d, b
    ld hl, sp-$10
    ld hl, sp-$50
    ld [hl], c
    add sp, $71
    adc b
    ld [hl], c
    adc b
    ld [hl], c
    adc b
    ld [hl], c
    add b
    ld [hl], c
    or b
    ld b, c
    ldh a, [rSB]
    ldh a, [$F8]
    ld h, b
    ld [hl], b
    ld [hl], b
    ld hl, sp-$10
    ld hl, sp-$20
    ld hl, sp+$70
    ld [hl], b
    ld [hl], b
    ld hl, sp+$60
    ld hl, sp+$60
    inc de
    add b
    inc bc
    ld [hl], b
    ld bc, $61D8
    xor b
    ld [hl], c
    cp b
    ld b, c
    ldh a, [rP1]
    nop

jr_021_61FF:
    nop

Call_021_6200:
Jump_021_6200:
    nop
    nop
    ld b, l
    nop
    cp a
    nop
    ld b, b
    ccf
    ld d, a
    ccf
    adc a
    ld a, a
    add a
    ld a, a
    add c
    ld a, a
    ret nz

    nop
    ld a, [hl-]
    nop
    rst $00
    jr c, jr_021_6247

    rst $38
    rst $38
    rst $38
    db $FC
    rst $38

jr_021_621C:
    ret nz

    rst $38
    nop
    rst $38
    ret nz

    nop
    dec bc
    nop
    sbc [hl]
    ld bc, $07D9
    ld d, a
    adc a
    ld [hl-], a
    rst $08
    jr nc, @-$2F

Jump_021_622E:
    jr nc, jr_021_61FF

    rlca
    nop
    add sp, $00
    ld e, $E0
    di
    db $FC
    call $81FE
    cp $01
    cp $01
    cp $4F
    nop
    inc [hl]
    nop
    ld a, a
    nop

jr_021_6246:
    ld [hl], b

jr_021_6247:
    rrca

jr_021_6248:
    ld b, a
    ccf
    rra
    ld a, a
    cp h
    ld a, a
    rla
    rst $38
    ld bc, $E800
    nop
    ld e, $E0
    jp $FDFC


    cp $F1
    cp $01
    cp $01
    cp $3F
    rst $38
    ld a, a
    rst $38
    cp a
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
    ld a, a
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    ret z

    add b
    ld h, b
    ret nz

    jr nz, jr_021_6246

    jr nz, jr_021_6248

    ld b, b
    add b
    nop
    nop
    add b
    nop
    jr nz, jr_021_6290

jr_021_6290:
    ld e, $DE
    nop
    pop hl
    nop
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    db $FC
    rst $38
    inc b
    ld a, b
    ld [bc], a
    db $10
    ld bc, $0306
    ld c, $07
    ld c, $0F
    ld c, $0F
    ld c, $0F
    ld c, $0F
    ld c, $0F
    ld c, $0F
    ld c, $0F
    inc b
    rrca
    nop
    ld b, $00
    nop
    nop
    ld b, $08
    dec c
    ld c, $17
    ld c, $11
    ld c, $11
    ld c, $11
    ld c, $09
    ld b, $0D
    ld [bc], a
    rrca
    nop
    ld b, $08
    ld bc, $0F00
    nop
    dec de
    ld b, $15
    ld c, $1D
    ld [bc], a
    rrca
    nop
    nop
    nop
    inc bc
    db $FC
    rlca
    ld hl, sp+$0F
    db $10
    inc b
    dec bc
    nop
    rlca
    ld bc, $01E3
    di
    ldh [rNR30], a
    ldh a, [$FB]
    ld a, [c]
    rst $30
    rst $20
    rst $28
    inc bc
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    cpl
    rst $38
    nop
    and b
    nop
    rrca
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $FF
    nop
    jr c, jr_021_631C

jr_021_631C:
    rlca
    nop
    rst $08
    rlca
    rst $38
    rst $08
    rst $18
    adc a
    rst $18
    add l
    rst $08
    nop
    add a
    nop
    ld h, c
    nop
    jr jr_021_632E

jr_021_632E:
    cp $00
    rst $38
    cp $FF
    db $FC
    rst $38
    ld [hl], b
    cp $04
    db $FC
    jr @-$7E

    nop
    ld a, [hl]
    nop
    cp l
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld c, a
    rst $38
    db $10
    ld a, b
    nop
    rlca
    inc bc
    rst $38
    cp $FF
    cp $FF
    cp $FF
    cp b
    rst $38
    nop
    pop hl
    nop
    jr jr_021_635E

jr_021_635E:
    cp $00
    ccf
    ld a, a
    cp a
    ld a, a

jr_021_6364:
    ld a, a
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38
    sub a
    ld a, a
    ld [$5477], sp
    dec hl
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    db $FC
    rst $38
    pop hl
    cp $03
    db $FC
    ld d, e
    xor h
    ld [hl], b
    nop
    jr jr_021_6364

    ld [$98F0], sp
    ld h, b
    ld hl, sp+$01
    inc [hl]
    nop
    ld [bc], a
    ld h, b
    inc b
    di
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    nop
    ld h, b
    ld a, b
    add b
    nop
    nop
    inc b
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
    nop
    nop
    nop
    rst $38
    nop
    rlca
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
    db $E3
    nop
    nop
    nop
    nop
    nop
    nop
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

    ret nz

    inc bc
    db $FC
    rlca
    ld hl, sp+$0F
    db $10
    inc b
    dec bc
    nop
    rst $20
    pop hl
    di
    pop af
    ei
    ld hl, sp-$06
    rst $38
    nop
    jp $013C


    cp $00
    pop hl
    nop
    sbc $1E
    cp a
    ccf
    cp a
    ccf
    cp a
    ld l, b
    and b
    inc h
    ret nc

    or h
    ret nc

    sub d
    add sp, $1A
    add sp, $1A
    ld l, b
    ld a, [de]
    ld l, b
    ld a, [de]
    ld l, b
    inc sp
    rrca
    ld e, [hl]
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    or h
    dec bc
    ld c, a
    nop
    nop
    nop
    ld d, a
    nop
    sbc a
    rst $08
    ld e, h
    rst $08
    db $10
    rst $08
    db $10
    rst $08
    ret nc

    rrca
    sbc h
    inc bc
    ld c, $01
    ld b, e
    nop
    ld a, [$E6FC]
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$0C
    ldh a, [$38]
    ret nz

    ld [hl], c
    add b
    ld a, [hl]
    rst $38
    ld hl, $00FF
    rst $38
    nop
    rst $38
    sub l
    ld l, d
    db $EB
    inc d
    ld a, [hl]
    nop
    nop
    nop
    cp e
    rlca
    rst $10
    rrca
    ld e, b
    adc a
    ld d, b
    adc a
    ld d, b
    adc a
    ld d, b
    adc a
    ret c

    rlca
    adc a

jr_021_644F:
    nop
    ld a, [$E6FC]
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$0C
    ldh a, [$38]
    ret nz

    ld a, c
    add b
    pop bc
    xor $E3
    db $EC
    rst $20
    add sp, -$40
    rst $18
    nop
    ccf
    inc bc
    db $FC
    db $FC
    nop
    nop
    nop
    ld sp, hl
    rst $38
    ld [c], a
    cp $05
    db $FC
    dec de
    ld hl, sp+$67
    ldh [$9E], a
    add b
    ld a, h
    nop
    ldh a, [rP1]
    ld [hl], b
    nop
    ldh [rP1], a
    ret nz

    nop
    add b

jr_021_6487:
    nop
    nop
    nop
    jr nz, jr_021_648C

jr_021_648C:
    ld [hl], b
    jr nz, jr_021_6487

    ld [hl], b
    nop
    ld hl, sp+$00
    ccf
    rlca
    rra
    inc bc
    rst $08
    pop bc
    rst $28
    ldh [$EF], a
    pop bc
    rst $18
    ld bc, $003F

jr_021_64A1:
    ld hl, sp+$00
    ccf
    rlca
    ret c

    jp $E1EC


    xor $E0
    rst $28
    pop bc
    sbc $01
    ld a, $18
    ld h, b
    add [hl]
    jr jr_021_64D8

    call nz, $F2E9
    db $F4
    ld sp, hl
    ld a, [$FDFC]
    cp $FE
    rst $38
    ldh [$60], a
    ld [hl], b
    jr nc, jr_021_64FD

    jr jr_021_644F

    inc e
    call nz, $E408
    add b
    ld d, b
    ld b, b
    xor b
    jr nz, @-$06

    ei
    ld a, [c]
    push af
    rst $20
    add sp, $03
    inc e

jr_021_64D8:
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rst $18
    ld e, $DE
    nop
    pop hl
    nop
    rst $38
    pop hl
    ld e, $FF
    nop
    ld a, a
    add b
    ld a, [hl]
    add c
    db $FC
    inc bc
    ld a, [de]
    add sp, $1A
    add sp, -$6A
    ldh a, [$96]
    ldh a, [$2C]
    ldh [$2C], a
    ldh [$58], a

jr_021_64FD:
    ret nz

    cp b
    add b
    cp a
    nop
    add b
    ld a, a
    nop
    rst $38
    ld l, d
    sub l
    rst $10
    jr z, @+$01

    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    nop
    inc e
    ldh [$08], a
    ldh a, [$99]
    ld h, b
    db $EB
    nop
    push de
    nop
    ld [bc], a
    nop
    add b
    jr nz, jr_021_64A1

    nop
    cpl
    nop
    ldh a, [rIF]
    add b
    ld a, a
    ret nz

    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    nop
    inc e
    nop
    db $E3
    nop
    ld d, $E1
    inc [hl]
    jp $00EB


    pop hl
    nop
    adc $00
    nop
    nop
    ld h, e
    nop
    ld sp, hl
    nop
    inc c
    ldh a, [rDIV]
    ld hl, sp-$03
    nop
    di
    nop
    rrca
    nop
    nop
    dec c
    ldh a, [rP1]
    ld bc, $5100
    nop
    ld l, c
    nop
    ld a, l

jr_021_6559:
    nop
    inc a
    nop
    sbc [hl]
    nop
    nop
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
    pop bc
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $F4
    ld hl, sp-$1E
    db $FC
    ret z

    ld [hl], b
    ld l, h
    sub b
    sub b
    ld h, b
    ld c, b
    nop
    jr nz, jr_021_658E

jr_021_658E:
    stop
    inc bc
    nop
    ld [bc], a
    inc c
    nop
    db $10
    ld c, $0C
    ld bc, $101E
    rrca
    cpl
    nop
    ld [hl], b
    nop
    nop
    ld bc, $6350
    xor d
    ld e, c
    db $DB
    jr nz, jr_021_661A

    nop
    adc d
    nop
    ld sp, $2037
    ld e, e
    inc bc
    nop
    ld [bc], a
    inc c
    nop
    db $10
    ld c, $0C
    ld bc, $101E
    rrca
    cpl
    nop
    ld [hl], b
    nop
    rl h
    cp [hl]
    nop
    ld b, b
    nop
    ld l, h
    inc c
    nop
    sbc [hl]
    sub b
    ld c, [hl]
    inc c
    nop
    nop
    nop
    ld d, e
    jr z, jr_021_6610

    nop
    ld [bc], a
    nop
    halt
    jr nc, jr_021_6559

    ld a, c
    add hl, bc
    ld a, [c]
    db $F4
    nop
    ld h, b
    nop
    db $D3
    jr z, jr_021_6660

    nop
    ld [bc], a
    nop
    halt
    jr nc, jr_021_65E9

jr_021_65E9:
    ld a, c
    add hl, bc
    ld a, [c]
    ld [hl], a
    nop
    ld [bc], a
    nop
    rl h
    cp [hl]
    nop
    ld b, b
    nop
    ld l, h
    inc c
    nop
    sbc [hl]
    sub b
    ld c, [hl]
    inc c
    nop
    nop
    nop
    ld b, e
    inc a
    cp b
    ld a, a
    ld e, a
    rst $38
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

jr_021_6610:
    add sp, $17
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_021_661A:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    ld hl, sp-$15
    db $FC
    db $FC
    rst $38
    db $FC
    rst $38
    rst $38
    cp $FE
    rst $38
    rst $38
    cp $FE
    rst $38
    nop
    nop
    jr jr_021_6644

jr_021_6644:
    sbc e
    add hl, de
    ld de, $8D8C

jr_021_6649:
    ret nz

    add b
    ret nz

    ld b, d
    add b
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
    add b
    ret nz

    add b
    ret nz

    ld b, b
    add b
    nop
    nop

jr_021_6660:
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    add b
    ret nz

    add b
    add b
    ret nz

    ld b, b
    add b
    nop
    nop
    nop
    nop
    jr jr_021_6674

jr_021_6674:
    reti


    sbc b
    adc b
    ld sp, $03B1
    ld bc, $4203
    ld bc, $0000
    ld hl, sp-$05
    ld a, [c]
    push af
    rst $20
    add sp, $03
    inc e
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rra
    nop
    ld bc, $6350
    xor d
    ld e, c
    db $DB
    jr nz, jr_021_670A

    nop
    adc d
    nop
    ld sp, $2037
    ld e, e
    xor h
    ld bc, $6350
    xor d
    ld e, c
    db $DB
    jr nz, jr_021_671A

    nop
    adc d
    nop
    ld sp, $2077
    db $DB
    xor h
    ld bc, $6350
    xor d
    ld e, c
    db $DB
    jr nz, jr_021_672A

    nop
    adc d
    nop
    ld sp, $2077
    db $DB
    ld d, e
    jr z, jr_021_6700

    nop
    ld [bc], a
    nop
    halt
    jr nc, jr_021_6649

    ld a, c
    add hl, bc
    ld a, [c]
    db $F4
    nop
    ld h, b
    nop
    ld b, h
    ld a, [de]
    ld a, [de]
    inc b
    ccf
    nop
    nop
    nop
    ld a, [bc]
    jr c, jr_021_66EC

    ld l, h
    ld a, $00
    nop
    rlca
    xor h
    ld bc, $6350
    xor d
    ld e, c
    db $DB
    jr nz, @+$73

    nop
    adc d
    nop

jr_021_66EC:
    ld sp, $2077
    db $DB
    dec [hl]
    add b
    ld a, [bc]
    add $55
    sbc d
    db $DB
    inc b
    adc [hl]
    nop
    ld d, c
    nop
    adc h
    xor $04
    db $DB

jr_021_6700:
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38

jr_021_670A:
    dec d
    rst $38
    and b
    ld e, a
    ld d, b
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_021_671A:
    ld a, [$00FF]
    rst $38
    ld [bc], a
    db $FD
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

jr_021_672A:
    add b
    rst $38
    ld b, b
    cp a
    and b
    ld b, b
    cp $FF
    cp $FF
    db $FD
    cp $FA
    db $FD
    push af
    cp $1A
    db $FD
    ld bc, $44FE
    jr c, jr_021_6741

jr_021_6741:
    nop
    jr nc, jr_021_6744

jr_021_6744:
    ld a, c
    jr nc, jr_021_678B

    add hl, sp
    ld sp, $8C04
    nop
    rlca
    nop
    jr nz, jr_021_6750

jr_021_6750:
    nop

jr_021_6751:
    nop
    call nz, $D600
    ld c, h
    ret z

    ld h, $28
    ld bc, $0045
    ld [$2000], sp
    nop
    nop
    nop
    inc hl
    nop
    ld e, e
    inc sp
    ld de, $1666
    nop
    ld h, b
    nop
    ld [$2000], sp
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
    ld bc, $C3CF
    rst $28
    rst $20
    rst $28
    ret nz

    rst $18
    nop
    ccf
    inc bc

jr_021_678B:
    rst $38
    db $FC
    db $FC
    nop
    nop
    ld c, $10
    db $10
    dec h
    inc bc
    inc b
    inc c
    nop
    ld bc, $0A00
    nop
    nop
    nop
    nop
    nop
    inc de
    jr z, jr_021_6800

    nop
    add b
    jr nz, jr_021_6751

jr_021_67A7:
    ld b, b
    dec d
    jp nz, $0568

    inc b
    ld a, [bc]
    ld e, b
    nop
    call nz, $8A1A
    inc b
    jr nz, jr_021_67B6

jr_021_67B6:
    push de
    jr nz, jr_021_67CF

    ld c, c
    add hl, hl
    ld [de], a
    ld d, d
    inc h
    add c
    ld [$FFFF], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_021_67CF:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_021_67EB:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_021_67F5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_021_6800:
jr_021_6800:
    nop

jr_021_6801:
    rst $38
    db $10
    rst $38
    ld [$08EF], sp
    rst $28
    inc d
    rst $20
    nop
    di
    inc c
    rst $20
    ld a, [bc]

Jump_021_680F:
    di
    jr nz, @+$01

    jr nc, @+$01

    jr jr_021_67F5

    jr z, jr_021_67A7

    ld d, h
    and a
    ld l, b
    add e
    inc l
    db $D3
    jr nc, jr_021_67EB

    inc h
    pop de
    inc b
    ld sp, hl
    jr nz, jr_021_6801

    db $10
    rst $28
    nop
    rst $38
    db $10
    rst $28
    nop
    cp $23
    call c, $F30C
    inc h
    ei
    inc [hl]
    ei
    ld d, b
    rst $18
    cp b

jr_021_6839:
    cp a
    jr jr_021_685B

    ret z

    ld c, a
    ld d, h
    rlca
    ld [bc], a
    ld hl, sp+$07
    ld hl, sp+$09
    db $F4
    dec b
    ld a, [$F708]
    inc bc
    db $FC
    nop
    rst $38
    nop
    rst $38
    call z, $AA0F
    dec bc
    ld l, b
    add c
    jp nc, $B803

    ld b, c
    ld l, b

jr_021_685B:
    sub e
    or h
    ld b, e
    ld h, h
    add e
    nop
    rst $38
    ld [$0CFF], sp
    rst $38
    ld d, $F7
    dec bc
    db $EB
    dec c
    push hl
    rla
    db $E3
    inc d
    db $EC
    ld d, b
    and e
    xor b
    ld d, e
    sbc b
    ld h, c
    ld l, b
    sub c
    inc c
    pop af
    inc d

jr_021_687B:
    jp hl


    add d
    db $FD
    sub h
    db $EB
    ld a, [bc]
    ldh a, [$0D]
    pop af
    rlca
    ld a, [$F20D]
    ld [de], a
    db $EC
    dec bc
    db $F4
    ld [de], a
    db $ED
    inc b
    ei
    jp nz, Jump_021_44FD

    ld a, e
    ld [hl+], a
    dec a
    and b
    cp a
    sub b
    rra
    db $10
    sbc a
    ldh [$2F], a
    adc b
    rrca
    ld bc, $10FE
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ei
    dec b
    db $FD
    inc bc
    di
    jr nz, jr_021_6839

    add b
    ld b, a
    ld [hl], h
    add a
    jr z, jr_021_687B

    ld e, b
    and e
    jr nc, @-$33

    inc d
    db $E3
    inc l
    db $D3
    inc b
    ldh a, [$03]
    jp hl


    ld c, $E2
    ld [hl], $C0
    dec e
    ldh [$2A], a
    call nc, $E11B
    rla
    add sp, -$7C
    ld sp, hl
    adc h
    pop af
    jp nz, $8AFD

    or l
    ld b, b
    ld e, a
    ld b, h
    ld e, e
    and b
    cpl
    db $10
    rra
    ld c, $F1
    dec de
    db $E4
    dec b
    ld a, [$F50A]
    nop
    rst $38
    ld [bc], a
    db $FD
    nop
    rst $38
    nop
    rst $38
    ret nc

    rla
    ld l, b
    rrca
    sbc b
    ld c, e
    ld a, b
    add e
    or b
    ld c, c
    ld e, h
    and c
    xor d
    ld d, l
    ld c, h

jr_021_68FF:
    or e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $18
    nop
    sbc a
    and b
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, b
    rst $18
    jr nc, @-$5F

    ld h, b
    adc a
    jr nz, jr_021_68FF

    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    db $FD
    nop
    cp c
    ld b, e
    ld sp, hl
    ld b, h
    ld a, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    db $10
    rst $30
    jr @+$01

    jr @+$01

    ld [$08FF], sp
    rst $38
    inc d
    rst $30
    inc e
    rst $38
    ld [de], a
    di
    ld [$2EE9], sp
    db $E3
    inc d
    pop bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $03
    db $FD
    ld bc, $07FD
    ei
    inc bc
    ei
    ld b, b
    ccf
    ld h, b
    sbc a
    and b
    ld e, a
    ld b, b
    cp a
    inc b
    rst $38
    inc h
    rst $18
    inc b
    rst $38
    inc b
    rst $30
    ld d, b
    adc l
    ld [hl+], a
    sbc $46
    cp [hl]
    ld b, $FE
    rlca
    rst $30
    inc bc
    di
    rlca
    rst $30
    inc bc

jr_021_697F:
    di
    ld b, d
    ld a, h
    ld b, l
    ld a, d
    jp nz, $C4FD

    db $DB
    add b
    sbc a
    ld b, d
    ld e, l
    add b
    sbc a
    ld b, b

jr_021_698F:
    ld e, a
    jr @+$01

    jr jr_021_698F

    inc c
    rst $28
    inc e
    rst $38
    inc e
    db $FD
    ld c, $CF
    ld e, $DF
    ld c, $CF
    ld e, $C0
    ld [hl], $89
    ld e, l
    and d
    jr z, jr_021_697F

    inc b
    ei
    ld [$00F7], sp
    rst $38
    nop
    rst $38
    rrca
    rst $30
    ld b, $F6
    dec c
    db $FD
    ld e, $EE
    ld c, $EE
    ld c, $EE
    inc l
    call z, $DE1E
    adc b
    ld a, a
    adc b
    ld a, a
    adc h
    ld a, e
    adc b
    ld a, e
    inc c
    rst $38
    inc d

jr_021_69CB:
    rst $20
    inc b
    rst $20
    inc b
    ld h, a
    nop
    cp $01
    rst $38
    ld bc, $03FD
    db $FD
    inc bc
    ld sp, hl
    rlca
    ld sp, hl
    dec b
    ld sp, hl
    rlca
    ld sp, hl
    inc b
    push af
    inc b
    push af
    inc b
    push af
    ld c, $ED
    ld d, $F5
    ld e, $DD
    ld d, $D5
    jr c, jr_021_69CB

    inc bc
    di
    ld b, $E6
    dec bc
    db $EB
    rlca
    rst $00
    rrca
    rst $08
    ld d, $D6
    ld e, $9E
    ld c, $8E
    nop
    rra
    add b
    cp a
    nop
    scf
    ld c, b
    dec hl
    call c, $943F
    ld [hl], l
    adc b
    ld c, c
    xor b
    ld c, c
    ld a, [bc]
    jp z, $DF1F

    dec d
    push de
    ld l, $CE
    ld b, $C6
    ld l, l
    adc l
    ld c, c
    adc c
    ld h, h
    add h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, e
    inc b
    ld a, a
    inc b

jr_021_6A2D:
    ld [hl], a
    inc c
    ld a, a
    ld d, h
    sub h
    ld e, $9E
    ld c, $8E
    ld e, l
    sbc l
    ld d, a
    sub a
    ld l, a
    adc a
    ld l, e
    adc e
    ld h, d
    add d
    ld [$066B], sp
    ld h, l
    ld [$0469], sp
    ld h, l
    inc b
    ld h, l
    ld c, $2D
    ld a, [bc]
    add hl, bc
    sbc d
    sbc c
    dec b
    pop af
    rrca
    pop af
    rrca
    pop af
    dec d
    jp hl


    add hl, bc
    pop af
    dec de
    db $E3
    ld a, [de]
    ld [c], a
    add hl, sp
    pop bc
    jr z, jr_021_6A2D

    ld [$3CEB], sp
    rst $08
    sub h
    rst $20
    sub d
    db $E3
    sub [hl]
    rst $20
    sub d
    db $E3
    adc d
    di
    ld d, l
    sub l
    ld c, a
    adc a
    ld c, l
    adc l
    ld h, l
    add l
    ld l, b
    adc b
    add hl, sp
    ret z

    dec [hl]
    call nz, $C435
    and d
    ld b, c
    ld a, [de]
    ld l, c
    inc b
    inc sp
    sub b
    xor a
    add h
    cp e
    ret z

    ld d, a
    ldh [$7F], a
    ret nz

    ld c, a
    ld l, d
    adc d
    ld h, d
    add d
    ld b, b
    add b
    ld d, h
    add h
    ld h, h
    add h
    ld h, c
    add b
    ld l, b
    add b
    inc sp
    ret nz

    inc c
    ld a, l
    ld b, $77
    adc h
    ld l, l
    sub d
    ld [hl], e
    ld c, d
    ld a, [hl+]
    ld d, l
    inc [hl]
    ret nc

    jr nz, jr_021_6AF9

    jr z, jr_021_6AD6

    push bc
    ld de, $0AE1
    ld a, [c]
    add hl, de
    pop hl
    dec c
    pop af
    inc c
    ldh a, [rNR34]
    ldh [rNR24], a
    pop hl
    sub d
    sub c
    or h
    or e
    and $E1
    and h
    and e
    adc $C1
    xor d
    and l
    call z, $4CC3
    ld b, e
    dec [hl]
    pop bc
    ld a, [de]
    ld [c], a
    add hl, hl
    pop de

jr_021_6AD6:
    inc d
    ldh [$36], a
    ret nz

    ld a, d
    add b
    ld e, h
    add b
    ld e, c
    add b
    sbc b

jr_021_6AE1:
    pop hl
    sub d
    db $EB
    adc h
    pop af
    call nz, $C4F9
    ld sp, hl
    ld c, [hl]
    ld [hl], c
    add $F9
    ld l, d
    ld [hl], l
    dec e
    db $EC
    ccf
    call z, $E417

jr_021_6AF6:
    add hl, de
    add sp, $39

jr_021_6AF9:
    ret z

jr_021_6AFA:
    dec b
    db $E4
    dec [hl]
    call nz, $C82B
    ld h, b
    xor a
    ret nc

    rla

jr_021_6B04:
    jr nz, jr_021_6B6D

    ld hl, sp+$1B
    and b
    ld b, e
    cp b
    ld c, e
    jr nz, jr_021_6AE1

    sub [hl]
    ld h, l
    ld l, c
    add b
    ld a, [hl-]
    ret nz

    scf
    ret nz

    ld a, a
    add b
    ld a, l
    add b
    dec sp
    ret nz

    rra
    ldh [$3A], a
    ret nz

    ret


    jr nz, jr_021_6AF6

    jr nz, jr_021_6AFA

    jr nz, jr_021_6B04

    jr nz, jr_021_6B04

    jr nz, jr_021_6B81

    add hl, hl
    ld c, b
    inc sp
    jp z, $2A35

    ret nc

    inc a
    ret nz

    dec e
    pop hl
    ld a, b
    add b
    ld d, a
    and e
    ld [hl], c
    add c
    ld a, [hl-]
    jp nz, $A25A

    sbc h
    add e
    ret c

    add a
    inc a
    inc bc
    jr c, jr_021_6B4F

    or h
    dec bc
    ld [hl], b
    rrca
    ld a, b
    rlca
    ld e, b

jr_021_6B4F:
    daa
    dec h
    ret z

    rrca
    ret nz

    ld c, l
    sub b
    ld h, $F8
    ld c, a
    sub b
    ld l, e
    or h
    ld b, a
    sbc b
    ld b, e
    sbc h
    ld h, [hl]
    ld a, c
    inc [hl]
    dec sp
    jp nc, $905D

    rra
    and d
    dec l
    jp nc, $C81D

jr_021_6B6D:
    rrca
    ret nz

    rlca
    ld a, d
    add c

jr_021_6B72:
    ld d, a
    or b
    dec [hl]
    jp nz, $C12E

    ld c, l
    and d
    ld d, h
    xor e
    ld a, [bc]

jr_021_6B7D:
    push af
    ld b, h
    cp e
    sbc b

jr_021_6B81:
    ld h, c
    inc c
    push af
    ld [de], a
    jp hl


    ld e, $E1
    ld a, [bc]
    push af
    ld d, $E9
    inc b
    ei
    ld [$1EF7], sp
    ldh [$3B], a
    call nz, $D02E
    ld d, $E8
    inc e
    ld [c], a
    ld a, [bc]
    push af
    ld d, $E9
    inc bc
    db $FC
    ld b, h
    dec sp
    ld b, h
    dec sp
    ret z

    scf
    add h
    ld a, e
    add b
    ld e, a
    and h
    ld c, e
    jr nc, jr_021_6B7D

    nop
    rst $38
    jr nc, jr_021_6B72

    dec d
    ldh [$79], a
    add b
    ld l, $D0
    ld d, $E9
    cpl
    ret nc

    dec bc
    db $F4
    dec d
    ld [$17E8], a
    jr nz, jr_021_6C21

    ret nc

    dec l
    jp nz, $A039

    ld e, c
    call nz, Call_021_4A33
    or c
    adc d
    ld [hl], l
    db $10
    rst $28
    add d
    ld a, l
    push hl
    ld a, [de]
    cp a
    ld b, b
    jp nc, $2D04

    nop
    ld b, d
    nop
    stop
    inc b
    ei
    xor c
    ld d, [hl]
    ret nz

    ccf
    or d
    ld c, l
    add sp, $07
    ld e, a
    nop
    dec h
    nop
    ld [bc], a
    nop
    nop
    rst $38
    add hl, de
    and $3E
    pop bc
    ld d, a
    and b
    ld hl, sp+$00
    push hl
    nop
    add b
    nop
    nop
    nop
    inc c
    di
    ld h, c
    sbc [hl]
    or d
    ld c, l
    ret c

    rlca
    ld l, l
    ld [de], a
    rra
    nop
    ld c, l
    nop
    ld [bc], a
    nop
    add h
    ld a, e
    ld bc, $05FE
    ld a, [$A45A]
    rst $20
    db $10
    ld a, b
    add b
    ld b, h
    nop
    ld de, $0000

jr_021_6C21:
    ld [$1C08], sp
    ld [$0CDC], sp
    cp $1E
    rst $38
    ld a, $E7
    ld a, $CB
    ld a, $C7
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    jr c, @+$12

    jr c, @+$1A

    inc a

jr_021_6C3E:
    jr @-$02

    ld l, a
    sub l
    rra
    ld [c], a
    dec bc
    push af
    ld b, l
    cp e
    inc sp
    call z, $FE01
    jr nz, @-$1F

    nop
    rst $38
    jr c, jr_021_6C3E

    ld hl, sp-$64
    ld hl, sp+$4C
    db $FC
    ld d, $7C
    adc [hl]
    db $FC
    ld b, [hl]
    ld a, $CB
    cp $03
    rst $18
    add hl, hl
    cp a
    ld b, c
    ld d, a
    xor d
    inc bc
    db $FC
    adc l
    ld a, [hl]
    rra
    ldh a, [$08]
    rst $30
    ld bc, $00FE
    add b
    nop
    add b

jr_021_6C74:
    nop
    add b
    add b
    pop bc
    ret nz

jr_021_6C79:
    ld [hl], e
    pop af
    ccf
    rst $38
    ld [de], a
    cp a
    ld b, l

jr_021_6C80:
    nop
    nop
    nop
    ld b, b
    ld b, b
    ldh [rLCDC], a
    ldh [$E0], a
    ldh a, [$E0]
    ldh a, [$E0]
    ld [hl], b
    ldh a, [$B8]
    ld e, a
    and b
    xor a
    ld d, b
    ld a, [hl-]
    push bc
    sub h
    ld l, e
    jr nz, jr_021_6C79

    nop
    rst $38
    ld bc, $01FE
    cp $F0
    jr c, jr_021_6D13

    sbc b
    ld a, b
    sbc h
    jr c, jr_021_6C74

    jr c, jr_021_6C80

    ld a, h
    add [hl]
    ld a, h
    add e
    ld a, [hl]
    adc c
    ld a, [hl]
    add c
    ld e, h
    and e
    inc [hl]
    rrc b
    rst $30
    jr nz, @-$1F

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
    jr jr_021_6CDD

    jr c, @+$32

    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld h, b
    ld b, b
    ldh a, [$60]

jr_021_6CDD:
    ldh a, [$60]
    ret nc

    jr c, jr_021_6D5E

    jr c, jr_021_6D62

    inc a
    ld l, a
    inc a
    ld l, a
    ld a, $57
    ld a, $63
    ccf
    ld d, l
    ccf
    pop hl
    nop
    nop
    nop
    ld h, b
    ld b, b
    ldh a, [$E0]
    ldh a, [$60]
    ld hl, sp+$30
    ld hl, sp+$30
    call c, $E418
    nop
    inc c
    ld [$181C], sp
    inc a
    jr jr_021_6D3E

    inc a
    ld a, d
    inc a
    ld l, d
    inc a
    ld a, [c]
    ld a, h
    db $E3
    nop
    nop
    nop

jr_021_6D13:
    ld b, $04
    ld c, $0C
    ld a, [de]
    inc e
    ld a, [hl-]
    inc e
    ld [hl], $3C
    halt
    ld a, h
    db $EB
    nop
    ld bc, $0100
    ld bc, $0303
    ld b, $07
    ld c, $07
    dec c
    rrca
    jr @+$10

    dec a
    ldh [$D0], a
    ldh [$B8], a
    ldh a, [$58]
    ldh a, [$28]
    ldh a, [rOBP0]
    ld [hl], b
    call c, $EC78

jr_021_6D3E:
    ld a, b
    db $EC
    ccf
    push bc
    ccf
    ret nc

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cpl
    ret nc

    rra
    ldh [$0A], a
    push af
    sbc b
    xor $9C
    and $9C
    ld l, e
    sbc $63
    sbc $21
    sbc $21
    db $FC
    inc bc

jr_021_6D5E:
    ld [$7E15], a
    pop de

jr_021_6D62:
    ld a, a
    add c
    ld a, a
    jp nz, $906F

    ccf
    ret nz

    ld [hl], $C9
    ld e, b
    and a
    inc h
    db $DB
    db $FC
    and e
    cp $43
    cp $11
    cp [hl]
    ld h, c
    ld a, [hl]
    pop hl
    ld l, h
    db $D3
    ld a, b
    add a
    cp h
    ld b, e
    ld e, $75
    inc e
    db $EB
    inc a
    db $E3
    ld e, c
    or a
    ld a, c
    rst $00
    ld d, c
    xor [hl]
    ld sp, $23CE
    call c, $C6F8
    db $FC
    and [hl]
    db $FC

jr_021_6D95:
    ld b, e
    cp $01
    db $FC

jr_021_6D99:
    inc bc
    cp [hl]
    ld b, c
    ld [hl], h
    adc e
    adc h
    ld [hl], e
    rla
    add sp, $02

jr_021_6DA3:
    db $FD
    inc b
    ei
    nop
    rst $38
    ld [$00F7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @-$2F

    ret z

    scf

jr_021_6DB4:
    jr nz, jr_021_6D95

    add b
    ld a, a

jr_021_6DB8:
    jr nz, jr_021_6D99

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @-$17

    jr nz, jr_021_6DA3

    db $10
    rst $28

jr_021_6DC6:
    ld [bc], a
    db $FD
    nop
    rst $38
    db $10
    rst $28
    nop

jr_021_6DCD:
    rst $38

jr_021_6DCE:
    nop
    rst $38
    db $EC
    inc de
    ld [hl-], a
    call $B748
    db $10
    rst $28
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $FD
    ld bc, $00FE
    rst $38
    ld bc, $04FE
    ei
    ld [bc], a
    db $FD
    jr nz, jr_021_6DCD

    nop
    rst $38
    ret nc

    cpl
    and h
    ld e, e
    ret z

jr_021_6DF5:
    scf
    nop
    rst $38
    ret nz

    ccf
    ld [bc], a
    db $FD
    nop
    rst $38
    nop
    rst $38
    dec d
    jp c, $9D72

    jr nz, @-$2F

    add hl, hl
    adc $28
    rst $08
    inc h
    rst $00
    inc [hl]
    rst $00
    ld d, h
    and a
    db $E4
    inc bc
    ld l, b
    add a
    ld e, l
    and d
    dec h
    jp c, Jump_021_758A

    inc d
    db $EB
    ld bc, $2AFE
    call nc, $C33A
    jr z, jr_021_6DF5

    ld d, h
    xor c
    ld c, $F1

jr_021_6E28:
    ld [de], a
    db $ED
    ld b, $F9
    inc c
    di
    ld bc, $80FE
    nop
    jr nz, jr_021_6DB4

    ld b, b
    add b
    jr nz, jr_021_6DB8

jr_021_6E38:
    ret nz

    nop
    ld b, b
    add b
    and b
    nop
    nop
    add b
    ld b, b
    add b
    ret nz

    nop
    jr nz, jr_021_6DC6

    ret nz

    nop

jr_021_6E48:
    add b
    nop
    nop
    add b
    jr nz, jr_021_6DCE

    ld b, b
    add b
    ld b, h
    cp b
    inc h
    ret nc

    sbc b
    ld h, b
    jr nz, jr_021_6E28

    ld h, h
    add b
    db $10
    ret nz

    ret nz

    nop
    and b
    nop
    ld b, a
    cp b
    ld a, [hl+]
    call nc, Call_021_609A
    jr nz, jr_021_6E38

    ld h, h
    add b
    db $10
    ret nz

    ret nz

    nop
    and b
    nop
    ld b, a
    cp b
    ld a, [hl+]
    call nc, Call_021_6098
    jr nz, jr_021_6E48

    ld h, h
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    rst $38
    nop
    db $FD
    ld [bc], a
    ld a, h
    add e
    ld l, b
    sub a
    inc [hl]
    sla [hl]
    reti


    inc e
    db $E3
    ld [de], a
    db $ED
    rst $38
    nop
    cp e
    ld b, h
    pop af
    ld c, $D3
    inc l
    ld [hl], $C9
    ld b, h
    cp e
    ld [hl+], a
    db $DD
    ld [bc], a
    db $FD
    ld [$0AF7], sp
    push af
    inc b
    ei
    ld [bc], a
    db $FD
    ld [bc], a
    db $FD
    nop
    rst $38
    ld [bc], a
    db $FD
    nop
    rst $38
    inc h
    db $DB
    inc b
    ei

jr_021_6EB4:
    inc b
    ei
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    call nz, Call_021_6200
    add b
    ld a, e
    add b
    ld l, [hl]
    add b
    ld d, a
    xor b
    dec h
    jp c, $9866

    daa
    ret c

    nop
    nop
    add b
    nop
    ld b, b
    nop
    ld [$5000], sp
    nop
    nop
    nop
    call nz, $A800
    nop
    ld b, e
    cp h
    ld b, [hl]
    cp c
    inc b
    ei
    ld [hl+], a
    db $DD
    inc b
    ei
    inc b
    ei
    nop
    rst $38
    inc b
    ei
    ld l, l
    add b
    jr nc, jr_021_6EB4

    halt
    adc b
    ld c, [hl]
    or b
    dec h
    ret c

    ld b, a
    cp b
    ld b, e
    cp h
    ld bc, $01FE
    cp $03
    db $FC
    rlca
    ld hl, sp+$05
    ld a, [$F40B]
    dec c
    ld a, [c]
    dec c
    ld a, [c]

jr_021_6F0E:
    dec bc
    db $F4
    dec bc
    db $F4
    dec de
    db $E4
    dec d
    ld [$E817], a
    dec c
    ld a, [c]
    add hl, bc
    or $09
    or $01
    cp $01
    cp $01
    cp $03
    db $FC
    ld [bc], a
    db $FC
    ld d, $E8
    dec l
    ret nc

    jr jr_021_6F0E

    or h
    ld b, b
    ret nz

    nop
    and b
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
    rst $18
    nop
    db $ED
    nop
    adc d
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    rst $38
    nop
    rlca
    nop
    ld b, $00
    dec bc
    nop
    rlca
    nop
    rlca
    nop
    ld [bc], a
    nop
    dec bc
    nop
    dec b
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $01FF
    rst $38
    inc bc
    rst $38
    ld [bc], a
    cp $05
    db $FC
    inc b
    ld hl, sp+$00
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    ld a, a
    and b
    cp a
    ld b, b
    ld e, a
    jr nz, jr_021_6F9F

    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    ld a, [bc]
    ei
    ld b, $F7
    inc b
    push af
    nop

jr_021_6F9F:
    pop hl
    nop
    rst $38
    nop
    rst $38
    ld [$08FF], sp
    rst $38
    db $10
    rst $30
    inc c
    rst $28
    inc d
    rst $20
    inc d
    db $E3
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @-$0F

    ld [$10CF], sp
    rst $00
    ld l, b
    add a
    ld e, b
    and a
    jr nc, @-$2F

    ld a, [bc]
    ldh a, [rTIMA]
    ld a, [c]
    ld [de], a
    add sp, $1A
    push hl
    add hl, bc
    or $14
    db $EB
    ld bc, $00FE
    rst $38
    sub b
    rrca
    ld d, b
    rrca
    add sp, $07
    sbc b
    ld h, a
    ld c, b

jr_021_6FD9:
    scf
    or h
    ld c, e
    ld [$40F7], sp
    cp a
    inc d
    push hl
    ld a, [de]
    ldh [rNR31], a
    ldh [$2A], a
    push bc
    dec [hl]
    jp z, $E11E

    ld a, [hl+]
    push de
    inc b
    ei
    inc c
    di
    ld [$04F7], sp
    ei

Call_021_6FF6:
    ld [$00F7], sp
    rst $38
    ld [$00F7], sp
    rst $38
    nop
    rst $38
    rst $38
    nop
    ret nz

jr_021_7003:
    ld a, a
    adc a
    ld [hl], b
    sbc a
    ld l, a

Call_021_7008:
    or b
    ld d, b
    and b
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    or b
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld a, a
    ret nz

    ld a, a
    add b
    nop
    jp c, $807F

jr_021_701D:
    ld a, a
    rst $38
    nop
    jr @+$01

    jr jr_021_7003

    jr nc, jr_021_701D

    jr c, @+$01

    jr z, jr_021_6FD9

    db $10
    sub e
    nop
    rst $10
    nop
    rst $38
    rst $38
    nop
    ret nz

    ld b, b
    xor [hl]

jr_021_7035:
    ld a, a
    cp b
    ld a, a
    sbc a
    ld a, a
    add e
    ld a, a
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    inc bc
    ld [bc], a
    dec b
    cp $E1
    cp $1D
    cp $B1
    cp $01
    cp $FF
    nop
    rst $38
    nop
    xor a
    ld [hl], b
    rst $18
    ld h, b
    cp a
    ld b, b
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
    jr nc, jr_021_7035

    nop
    rst $38
    ld [$47F7], sp
    cp b
    ld bc, $1BFE
    db $E4
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
    ld h, [hl]
    sbc c
    add b
    ld a, a
    ldh a, [rIF]
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
    ld a, $C0
    nop
    ldh a, [$C0]
    ld hl, sp-$10
    db $FC
    ld hl, sp-$02
    db $FC
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

jr_021_70B5:
    ld a, b
    adc d
    db $F4
    di
    ld c, $0F
    db $FC
    cp $F0
    ld hl, sp+$00
    nop
    nop
    jr nz, jr_021_70DC

    ld e, b
    inc h
    jr c, jr_021_711C

    jr nc, jr_021_713E

    ld [hl-], a
    ld [hl], h
    xor h
    ld c, d
    ld d, h
    add d
    nop
    nop
    ld [$1404], sp
    ld a, [bc]
    dec b
    ld d, $2C
    ld e, c
    ld e, [hl]
    and c

jr_021_70DC:
    ld h, b
    rst $18
    ld h, c
    cp $00
    nop
    ld [$1010], sp
    jr z, @+$52

    jr c, jr_021_711D

    ld a, b
    jr z, jr_021_7158

    ld [$2844], sp
    ld b, h
    ld [$1010], sp
    jr z, jr_021_7145

    jr z, jr_021_7127

    ld e, b
    inc [hl]
    ld e, b
    cp b
    ld [hl], h
    ld a, b
    or h
    ld l, b
    db $EC
    ld bc, $0200
    ld bc, $0205
    ld [bc], a
    inc b
    add hl, bc
    dec b
    rlca
    ld a, [bc]
    ld [de], a
    add hl, bc
    ld a, [bc]
    ld de, $8000
    add b
    ld b, b
    and b
    ret nz

    ld b, b
    jr nz, @+$52

    jr nz, jr_021_717B

    ld d, b

jr_021_711C:
    xor b

jr_021_711D:
    jr nc, @-$4A

    jr z, jr_021_719A

    add [hl]
    nop
    rst $38
    add b
    ld a, a
    ld h, [hl]

jr_021_7127:
    add hl, de
    ld e, b
    dec a
    ld hl, $1864
    ld b, h
    add h
    ld a, b
    ld [hl], $A8
    ret nc

    jr jr_021_70B5

    ld [$08F0], sp
    nop
    ld hl, sp+$08
    ldh a, [$F0]
    nop

jr_021_713E:
    nop
    nop
    jr jr_021_71A6

    ld b, c
    inc a
    inc a

jr_021_7145:
    ld bc, $0100
    db $10
    ld hl, $7128
    ld hl, $4848
    jr nc, @+$4C

    call z, $C264
    db $ED
    ld a, [bc]
    sub $01

jr_021_7158:
    or $01
    ld a, h
    add e

jr_021_715C:
    add hl, sp
    add $82
    ld a, h
    dec l
    ld a, [de]
    ld d, l
    ld [hl+], a
    add hl, sp
    ld b, [hl]
    add hl, sp
    ld b, [hl]
    ld de, $406E
    ccf
    jr nz, jr_021_718D

    rra
    nop
    sbc b
    inc d
    ld e, d
    ld b, h
    inc a
    ld [bc], a
    ld a, b
    ld b, $E2
    inc e
    adc h

jr_021_717B:
    ld [hl], b
    jr nc, jr_021_713E

    ret nz

    nop
    ld [bc], a
    ld bc, $0201
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec bc
    inc b
    rlca
    ld a, [bc]
    rlca

jr_021_718D:
    ld a, [bc]
    rlca
    ld c, $00
    nop
    nop
    add b
    nop
    add b
    ld b, b
    add b
    nop
    ret nz

jr_021_719A:
    jr nz, jr_021_715C

    ld bc, $90E0
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop

jr_021_71A6:
    ld bc, $0200
    ld bc, $4384
    ld c, b
    rst $20
    ret nc

    xor a
    nop
    nop
    nop
    nop
    add b
    ld b, b
    ld b, b
    and b
    ld d, b
    and b
    ldh [rNR10], a
    add sp, $50
    ldh [$58], a
    rla
    rrca
    rrca
    dec d
    dec c
    ld d, $05
    dec de
    dec l
    rla
    dec e
    cpl
    inc e
    dec hl
    inc c
    dec sp
    add d
    ld [hl], c
    adc c
    ld [hl], e
    add c
    ld a, [hl]
    ret z

    scf
    ld c, h

jr_021_71D9:
    or e
    call c, $8EAB
    db $FD
    adc $BD
    pop bc
    cp [hl]
    push bc
    ld a, [hl-]
    adc b
    ld [hl], a
    adc h
    ld [hl], e
    jr jr_021_71D9

    dec e
    ld [$56B9], a
    add hl, sp
    sub $E0
    ret c

    db $F4
    adc b
    ldh a, [$4C]
    ldh a, [$6C]
    ld [c], a
    ld e, h
    ldh a, [$AE]
    ldh [$7E], a
    ldh a, [$EE]
    ld d, h
    inc sp
    inc a
    ld e, e

jr_021_7204:
    inc [hl]

jr_021_7205:
    ld d, e
    or h
    ld d, e
    ld l, h
    xor e
    ld h, h
    and e
    ld b, h
    add e
    ld c, d
    adc c
    db $EB
    ld d, d
    rst $20
    ld e, d
    or c
    dec l
    ld d, b
    adc h
    ld e, e
    sub l
    ld c, d
    add h
    ld a, [hl+]
    call nz, $806B
    ld a, [hl+]
    call nz, $E41A
    sub [hl]
    ld l, d
    sbc h
    ld h, h
    reti


    jr nz, jr_021_7205

    jr z, jr_021_7204

    jr nz, @+$7D

    inc b
    db $E4
    jp c, $1A25

    ld c, d
    ld sp, $31CA
    sub d
    ld h, c
    sub d
    ld h, c
    ld h, $C1
    ld b, h
    add e
    ld b, d
    and l
    ld [hl], $C1
    ld c, h
    or e
    ld [hl], $C9
    adc h
    ld [hl], e
    ld h, b
    rra
    ld [$0307], sp
    nop
    dec hl
    call nz, $C23D
    cpl
    ret nc

    ld a, [de]
    push hl
    inc d
    db $EB
    ld [$00F7], sp
    rst $38
    add b
    ld a, a
    adc $21
    db $FD
    nop
    xor [hl]
    ld d, b
    dec d
    ld [$FC03], a
    nop
    rst $38
    ld bc, $2CFE
    ret nc

    adc [hl]
    ld bc, $0B34
    jp hl


    ld d, $B0
    ld c, [hl]
    ld b, d
    cp h
    ld [$40F0], sp
    add b
    nop
    nop
    nop
    ld bc, $0201
    ld bc, $0103
    ld [bc], a
    ld bc, $0103
    inc bc
    ld bc, $0502
    inc bc
    add b
    nop
    nop
    add b
    nop
    add b
    ld [bc], a
    add h
    ld b, h
    adc d
    add h
    ld c, d
    sub h

jr_021_729D:
    ld c, d
    adc h
    ld d, [hl]
    nop
    nop
    nop

jr_021_72A3:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0102
    ld bc, $0002
    nop
    jr nz, jr_021_72F4

    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    and b
    ret nc

    jr nz, jr_021_729D

    ld d, b
    ldh [rNR10], a
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0102
    ld bc, $4002
    add b
    add b
    ld b, b
    and b
    ld b, b
    ret nz

    ld h, b
    ret nc

    jr nz, jr_021_72A3

    ld [hl], b
    ldh [$58], a
    db $E4
    ld e, b
    inc bc
    inc b
    inc bc
    dec b
    inc bc
    dec b
    dec bc
    inc b
    rlca
    add hl, bc
    rlca
    ld [$0C17], sp
    rrca
    ld [de], a
    adc h
    jp nc, $56AC

jr_021_72F4:
    adc h
    halt
    and h
    sbc $94
    ld l, [hl]
    sub h
    ld l, [hl]
    inc d
    xor $30
    sbc $01
    ld [bc], a
    dec b
    ld [bc], a
    inc bc
    inc b
    inc bc
    inc b
    dec bc
    dec b
    rlca
    add hl, bc
    rlca
    add hl, bc
    rla
    add hl, bc
    ldh [$50], a
    ldh [$D0], a
    ldh [$90], a
    add sp, -$70
    ldh a, [rOBP0]
    ldh a, [$C8]
    ldh a, [rOBP0]
    ldh a, [$E8]
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a

jr_021_7328:
    inc b
    inc bc
    add hl, bc
    ld b, $16
    ld [$1109], sp
    jr z, jr_021_7346

    ld e, b
    inc h
    ret c

    inc h
    xor b
    ld b, h
    ld c, d
    add h
    xor h
    ld [hl+], a
    call c, $9DC2
    add d
    ld b, $15
    inc l
    inc de
    ld b, b
    ccf

jr_021_7346:
    inc hl
    ld e, h
    xor b
    ld d, h
    ld d, e
    add e
    ld d, [hl]
    sub [hl]
    inc hl
    ret nz

    jr c, jr_021_7328

    ld l, b
    add [hl]
    adc b
    ld b, d
    inc l
    ld [hl+], a
    call nc, $20CA
    ld a, [de]
    push af
    ld a, [bc]
    xor [hl]
    ld d, l
    dec bc
    ld [de], a
    dec bc
    db $10
    dec bc
    db $10
    add hl, hl
    ld [de], a
    dec d
    ld [hl+], a
    dec d
    ld [hl+], a
    ld d, c
    ld l, $38
    ld b, a
    ld d, h
    ld c, b
    ld a, b
    ld h, h
    ld l, b
    inc h
    jr z, jr_021_739C

    adc d
    inc b
    inc l
    and d
    add h
    ld a, [bc]
    cp h
    ld [bc], a
    ld a, [hl+]
    ld [de], a
    ld de, $1420
    jr nz, jr_021_7392

    inc [hl]
    ld hl, $181E
    rlca
    ld b, $01
    inc bc
    nop
    ld [hl], l
    ld a, [bc]

jr_021_7392:
    add hl, sp
    ld b, $D5
    ld a, [hl+]
    ld a, c
    ld b, $68
    sub [hl]
    sub d
    ld l, h

jr_021_739C:
    inc b
    ld hl, sp-$08
    nop
    halt
    adc c
    ld e, a
    and b
    dec l
    jp nc, $EB14

    add b
    ld a, a
    ld h, b
    rra
    db $10
    rrca
    rrca
    nop
    call z, Call_021_5A37
    xor c
    add d
    ld h, l
    inc d
    bit 6, c
    adc [hl]
    ld [bc], a
    db $FC

jr_021_73BC:
    inc d
    add sp, -$08
    nop
    add hl, hl
    ld d, [hl]
    ld [de], a
    ld l, l
    ld b, c
    ld a, $21
    ld e, $10
    rrca
    ld [$0707], sp
    nop
    nop
    nop
    ld d, h
    ld a, [bc]
    ret z

    ld d, $72
    adc h
    ld [hl+], a
    call c, Call_021_7884
    jr jr_021_73BC

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
    ld bc, $0300
    nop
    inc bc
    ld bc, $0300
    nop
    rra
    ld bc, $057F
    rst $38
    inc de
    rst $38
    ld l, a
    rst $38
    cp a
    rst $38
    ld a, a
    cp $00
    rst $38
    add b
    rst $38
    adc $FF
    or h
    rst $30
    rst $38
    rst $38
    rst $38
    db $DB
    rst $38
    and a
    rst $38
    rlca
    nop
    rst $38
    ld bc, $06FF
    rst $38
    and e
    rst $38
    rst $38
    rst $28
    rst $38
    db $FD
    rst $38
    ld h, e
    rst $38
    rlca
    ld bc, $0007
    rrca
    ld [bc], a
    rra
    ld bc, $073F
    ld a, a
    rra
    rst $38
    dec hl
    rst $38
    ld e, a
    db $FD
    ld e, a
    ld a, [$F0FF]
    rst $38
    add sp, -$01
    ldh a, [rIE]
    and b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    sbc b
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    cp $2F
    db $FD
    rra
    cp $1F
    or $2F
    db $FD
    ccf
    rst $38
    cpl
    ld a, a
    rrca
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld a, [hl]
    rra
    ld a, a
    rrca
    ld a, a
    rra
    ld a, d
    rrca
    ld a, [hl]
    rrca
    cp $2F
    db $FD
    ccf
    rst $38
    ld e, a
    rra
    push hl
    ccf
    db $EC
    ccf
    call z, $DF7F
    ld a, a
    sub h
    rst $38
    adc c
    rst $38
    ld b, $7F
    ldh [$C0], a
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    ldh a, [$1F]
    db $FC
    rlca
    ld hl, sp-$01
    add b
    rst $38
    ldh [$3F], a
    ld bc, $01FF
    rst $38
    ld bc, $03FE
    cp $0F
    ld hl, sp+$3F
    ldh [$1F], a
    rst $38
    nop
    rst $38
    ldh a, [$5F]
    ldh a, [rVBK]
    ldh a, [rVBK]
    ld hl, sp-$31
    db $FC
    and a
    rst $38
    ld b, c
    cp $1F
    ldh a, [$9F]
    ld a, $E3
    ld h, e
    pop bc
    ret


    adc b
    rst $20
    ld h, [hl]
    rst $38
    ld e, h
    rst $38
    ld [hl-], a
    rst $38
    adc b
    ld a, a
    pop bc
    inc c
    di
    ld [de], a
    pop hl
    dec [hl]
    call nc, $8C7F
    rst $08
    ld b, d
    rst $38
    ld e, b
    cp $29
    ld a, h
    add e
    nop
    rst $38
    nop
    rst $38
    ld a, h
    rst $00
    ld b, [hl]
    add e
    ld l, d
    xor c
    ld a, [hl]
    sbc l
    ld a, [hl]
    pop bc
    ld a, $FF
    rrca
    ld hl, sp+$3C
    db $E4
    ld [hl], b
    ret nc

    ldh [$A0], a
    ret nz

    ld b, b
    add b
    nop
    jp nc, $E852

    ld l, b
    ldh [$3F], a
    ld a, b
    ld c, a
    inc e
    rla
    ld c, $0B
    ld b, $05
    inc bc
    ld bc, $0607
    sbc e
    sbc d
    rra
    ldh a, [$38]
    add sp, $31
    pop de
    ld h, h
    call nz, $B373
    ld a, a
    and d
    ld [hl], a
    sub h
    pop hl
    and c
    ret nz

    ld a, a
    ldh a, [$9F]
    ld [hl], b
    ld c, a
    ldh a, [$EF]
    ld hl, sp+$0F
    sbc [hl]
    sub e
    add a
    dec b
    rst $10
    ld d, [hl]
    or $36
    db $FD
    sub l
    ld [hl], a
    add a
    ld a, a
    db $D3
    ccf
    db $E4
    rra
    ldh a, [rIF]
    ld hl, sp+$0F
    ldh a, [$2F]
    ld l, $5F
    ld e, d
    rst $38
    db $F4
    cp a
    ld hl, $93FE
    db $FC
    ld b, a

jr_021_754C:
    ldh a, [$1F]
    ldh [$3F], a
    ret nz

    ld b, b
    jp hl


    add hl, hl
    or $56
    db $FD
    inc l
    rst $38
    adc e
    ld a, a
    sub h
    ld a, a
    ret nz

    rrca
    ld hl, sp-$15
    ld a, [hl+]

jr_021_7562:
    ld a, a
    inc [hl]
    rst $38
    sbc d
    rst $38
    and h
    rst $38
    ld de, $03FE
    ldh a, [$5F]
    ld hl, sp+$0F
    nop
    rst $38
    ld bc, $07FF
    db $FC
    ld e, $F2
    jr c, jr_021_7562

    jr nc, jr_021_754C

    ld [hl], b
    ret nc

    ld l, d
    xor d
    nop
    rst $38
    ldh a, [$1F]
    cp h
    and a
    ld c, $0B
    ld b, $05

Jump_021_758A:
    inc bc
    ld bc, $0A0B
    ld bc, $1F00
    pop af
    ld a, e
    jp z, $A0E0

    add l
    dec b
    db $D3
    ld d, d
    xor a
    inc c
    rst $38
    add hl, bc
    cp $12
    nop
    rst $38
    ret nz

    ld a, a
    ldh [$BF], a
    ld [hl], b
    ld e, a
    ld hl, sp+$0F
    sbc h
    rla
    ld c, [hl]
    ld c, e
    ld b, $05
    ld a, [hl]
    cp [hl]
    ld a, e
    sbc e
    ld a, a
    sbc [hl]
    ld a, a
    sub e
    ld a, a
    ret


    ccf
    jp nz, $F11F

    rrca
    ld hl, sp-$5B
    and h
    ld e, e
    ld e, d
    rst $38
    xor $7F
    ld [hl], h
    rst $38
    ld c, c
    cp $A1
    cp $03
    ld hl, sp+$0F
    db $FC
    and h
    ld a, l
    sub l
    ld a, [hl]
    jp nz, $E13F

    rra
    ld [c], a
    rra
    ldh a, [rIF]
    ld hl, sp+$07
    db $FC
    and e
    and c
    ld c, e
    ld c, d
    or a
    or [hl]
    rst $28
    add sp, -$41
    ld sp, $ABFE
    db $FC
    ld d, e
    db $FC
    rlca
    rlca
    db $FC
    rlca
    db $FD
    rrca
    ld sp, hl
    ccf
    db $E3
    ld a, a
    push bc
    ccf
    pop af
    rrca
    db $FC
    inc bc
    cp $E0
    ccf
    ret nz

    ccf
    ldh [$3F], a
    ldh a, [$5F]
    cp $03
    db $FC
    rrca
    ldh a, [$7F]
    add b
    rst $38
    inc bc

jr_021_7611:
    db $FC
    inc bc
    cp $03
    cp $07
    db $FC
    ccf
    pop hl
    rst $38
    add [hl]
    ld a, a
    ldh [$1F], a
    rst $38
    ld hl, sp+$0F
    ldh a, [$AF]
    ldh a, [$9F]
    ldh [$9F], a
    ldh [$3F], a
    ld hl, sp+$4F
    cp $03
    db $FC
    ccf
    rrca
    ld hl, sp+$3C
    db $E4
    ld [hl], b
    ret nc

    ld h, b
    and b
    ret z

    adc b
    and b
    jr nz, jr_021_7611

    ld d, h
    ei
    ld a, e
    ret nz

    ld a, a
    ld hl, sp-$71
    inc e
    rla
    inc c
    dec bc
    ld b, $03
    ld b, $05
    ld c, e
    ld c, c
    rla
    ld d, $3E
    db $E3
    ld h, e
    pop bc
    ld h, e
    and d
    pop bc
    add b
    rst $10
    ld d, a
    db $EB
    ld l, d
    rst $38
    ld e, d
    rst $38
    inc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    db $FC
    ld b, a
    adc $0B
    and [hl]
    dec h
    db $DB
    reti


    or $76
    db $FD
    dec a
    rst $28
    ld c, a
    rst $38
    rla
    rst $38
    xor [hl]
    ld a, a
    adc e
    ld a, a
    rst $00
    ccf
    ret


    set 1, d
    ld a, a
    ld a, [hl]
    rst $18
    jp c, $F8FF

    ld a, a
    ld [hl], l
    cp $D1
    cp $6B
    db $FC
    sub e
    rst $38
    adc b
    ld a, a
    sub h
    ld a, a
    ret nz

    rra
    ldh a, [$3F]
    ldh [$6F], a
    call z, $9657
    ld e, a
    sbc h
    rst $30
    or $FF
    cp h
    rst $38
    ld e, b
    rst $38
    inc h
    rst $38
    ld de, $07FC
    ld hl, sp+$4F
    ldh a, [$5F]
    ccf
    ld [c], a
    rrca
    ld hl, sp+$07
    db $FC
    inc bc
    cp $03
    cp $07
    db $FC
    rrca
    ld hl, sp+$1F
    ldh a, [$FC]
    rst $00
    ld hl, sp+$0F
    ldh a, [rIF]
    ldh a, [rVBK]
    ldh a, [$9F]
    ldh [$DF], a
    ldh [$9F], a
    ldh [$BF], a
    ld a, a
    sbc d
    ld a, a

jr_021_76D3:
    and h
    ld a, a
    adc b
    ld a, a
    pop bc
    rra
    ldh a, [rTAC]
    db $FC
    inc bc
    cp $01
    cp $F0
    rrca
    ldh a, [$AF]
    ldh a, [$6F]
    ldh a, [$6F]
    ldh a, [$CF]
    ldh a, [$DF]
    ldh [$5F], a
    ldh [$5F], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    ld a, $1C
    halt
    inc a
    ld b, [hl]
    jr c, jr_021_777B

    ld [bc], a
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    add hl, bc
    rlca
    add b
    nop
    ret nz

    add b
    ret nz

    add b
    and b
    ret nz

    ldh [$C0], a
    ret nc

    ldh [$78], a
    ldh a, [$28]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop

jr_021_7727:
    nop
    ld b, $00
    rrca
    ld b, $0F
    rlca
    ld e, $0F
    stop
    jr c, jr_021_7744

    jr c, jr_021_7746

    ld a, b
    jr nc, jr_021_77B5

    jr c, jr_021_7727

    jr c, jr_021_76D3

    ld a, h
    xor d
    ld a, h
    ld a, [bc]
    rlca
    db $10
    rrca

jr_021_7744:
    add hl, sp
    rrca

jr_021_7746:
    inc l
    inc de
    add hl, sp
    ld b, $36
    add hl, bc
    dec e
    ld [hl+], a
    rlca
    ld [$F8B4], sp
    ld h, h
    ld hl, sp+$12
    db $FC
    sub d
    ld l, h
    ld l, $D0
    or $08
    cp h
    ld b, d
    ldh a, [$08]
    ccf
    rra
    ld c, e
    ccf
    and l
    ld a, a
    jp nz, $D43D

    dec hl
    ld l, d
    sub l
    dec a
    ld b, d
    rra
    jr nz, jr_021_77C8

    xor b
    xor l
    jp nc, $C837

    ld a, h
    add d
    sub b
    ld l, b
    ld [hl], b

jr_021_777B:
    add b
    or b
    ld b, b
    ldh [rNR10], a
    nop
    nop
    inc a
    nop
    ld a, [hl]
    inc a
    rst $18
    ld a, [hl]
    db $EB
    ld a, [hl]
    add l
    ld a, [hl]
    di
    inc c
    inc e
    inc hl
    inc e
    nop
    ld a, $1C
    ld a, a
    ld b, $FD
    ld [hl], $EB
    ld [hl], h
    xor [hl]
    ld d, c
    db $FC
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_021_77B5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_021_77C8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    inc e
    ld e, d
    inc a
    ld e, d
    inc a
    halt
    jr jr_021_782D

    jr @+$1E

    nop
    adc b
    ld bc, $A041
    nop
    nop
    ld de, $0510
    ld bc, $0382
    ld d, $23
    dec bc
    ld b, l
    dec l
    ld a, [de]
    ld h, a
    inc l
    nop
    nop
    db $10
    inc b
    ld a, [bc]
    ld sp, $0AD5
    xor $11
    ld d, h
    xor e
    ld l, [hl]

jr_021_782D:
    sub c
    sub l
    ld l, d
    nop
    nop
    ld [hl], b
    ld hl, sp-$54
    db $F4
    ld d, c
    db $FC
    or l
    db $EC
    call z, $84F8
    cp $6B
    push af
    nop
    nop
    adc b
    ld hl, sp+$50
    db $FC
    xor c
    ld hl, sp+$43
    ldh a, [$27]
    ldh [rVBK], a
    ret nz

    and b
    ldh [$31], a
    ld l, a
    ld [$071F], sp
    dec c
    ld a, [bc]
    rrca
    ld bc, $0106
    inc bc
    ld bc, $0000
    nop
    add h
    rst $38
    ld bc, $00C7
    ld bc, $0000
    nop
    nop
    inc e
    nop
    rst $38
    nop
    rrca
    nop
    ld c, b
    rst $38
    dec b
    cp $44
    rst $38
    ld [$0006], sp
    nop
    nop
    nop
    rst $08
    nop
    nop
    nop
    ld hl, $80FF
    db $E3

Call_021_7884:
    nop
    add b
    nop
    nop
    nop
    nop
    jr c, jr_021_788C

jr_021_788C:
    rst $38
    nop

jr_021_788E:
    ldh a, [rP1]
    rla
    rst $38
    ld c, d
    rst $38
    rra
    rst $38
    dec l
    ld d, a
    dec d
    ccf
    dec b
    rra
    inc bc
    rrca
    inc bc
    inc bc
    add b
    rst $38
    adc $FF
    ld sp, $4DFF
    rst $38
    db $ED
    rst $38
    ld c, d
    rst $38
    jr nz, jr_021_788E

    ld c, $00
    ld sp, $220E
    inc e
    ld a, h
    nop
    nop
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
    ccf
    ld bc, $0A3F
    rra
    ld [$9A17], sp

jr_021_78C9:
    rra
    add b
    rra
    call nz, $C90F
    rlca
    ld hl, $545F
    ld a, a
    jr nz, jr_021_7935

    ld b, $3B
    jr z, jr_021_78F9

    jr nz, @+$21

    ld a, [hl+]
    ccf
    sub b
    cpl
    inc a
    inc a
    inc e
    inc e
    jr z, jr_021_78F0

    jr nc, jr_021_78EE

    jr nc, jr_021_78F0

    jr nc, jr_021_78F0

    add hl, de
    nop

jr_021_78EE:
    jr jr_021_78F1

jr_021_78F0:
    ld a, h

jr_021_78F1:
    ld a, h
    cp h
    inc a
    cp h
    inc a
    ret c

    jr jr_021_78C9

jr_021_78F9:
    db $10
    ldh [$08], a
    ld h, b
    adc b
    ld b, b
    sub b
    nop
    nop
    nop
    nop
    nop
    ld [$0205], sp
    inc bc
    nop
    rlca
    nop
    stop
    dec bc
    ld b, $00
    nop
    nop
    nop
    stop
    ld c, b
    nop
    jr nz, jr_021_7922

    ld [$A2A8], sp
    ld [$22CA], sp
    nop
    nop

jr_021_7922:
    ld bc, $0B00
    ld [bc], a
    ld [de], a
    dec b
    ld c, h
    ld [bc], a
    ld sp, $2929
    ld b, b
    ld b, h
    jr nz, jr_021_7931

jr_021_7931:
    nop
    ld a, $00
    db $E4

jr_021_7935:
    jr jr_021_793F

    ret nz

    ld h, h
    nop
    inc d
    nop
    jr nz, jr_021_793E

jr_021_793E:
    nop

jr_021_793F:
    nop
    ld c, d
    db $10
    xor b
    inc b
    or h
    nop
    xor d
    ld [bc], a
    jr jr_021_794C

    ld b, $00

jr_021_794C:
    ld [bc], a
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld b, b
    jr nz, jr_021_79B5

    nop
    ld [hl+], a
    nop
    jr nz, jr_021_795A

jr_021_795A:
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld c, d
    db $10
    xor b
    inc b
    or h
    nop
    xor d
    ld [bc], a
    jr jr_021_796C

    ld b, $00

jr_021_796C:
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
    ld [bc], a
    nop
    inc [hl]
    jr jr_021_79C9

    add c
    ld e, e
    inc b
    ld d, h
    ld hl, $104A
    and h
    ld [$8430], sp
    xor d
    nop
    jr jr_021_798C

    ld b, $00

jr_021_798C:
    ld [bc], a
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
    db $FC
    rst $38
    rst $38
    rst $38
    add sp, -$02
    ld hl, sp-$01
    db $F4
    rst $38
    rst $38
    rst $38
    call z, $80FF
    db $FD
    and b
    cp $00
    ei
    nop
    push hl
    nop
    or a
    nop
    rst $38
    db $F4
    rst $38
    rst $18
    rst $18

jr_021_79B5:
    ld e, b
    ld a, l
    jr z, @+$01

    inc b
    ld d, [hl]
    nop
    ld l, [hl]
    jr nz, jr_021_7A23

    nop
    ld sp, $086F
    rra
    rlca
    dec c
    adc d
    rrca
    pop bc

jr_021_79C9:
    ld b, $C1
    inc bc
    pop bc
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [rNR41]
    ld hl, sp-$80
    ld hl, sp-$80
    db $EC
    add b
    ld a, [c]
    add b
    ldh a, [$80]
    ld hl, sp-$60
    jp nz, Jump_021_680F

    rrca
    jr nz, jr_021_79F5

    ld [hl+], a
    rrca
    nop
    rrca
    dec b
    dec bc
    ld bc, $181F
    rla
    ld a, [bc]
    rrca
    jr nz, jr_021_7A03

    inc h

jr_021_79F5:
    dec bc
    ld [hl+], a
    rlca
    ld [hl], b
    inc bc
    ld e, b
    ld bc, $007C
    ld l, $00
    nop
    nop
    dec b

jr_021_7A03:
    inc bc
    nop
    nop
    dec b
    ld [bc], a
    nop
    nop
    dec d
    nop
    ld a, [bc]
    inc c
    ld d, a
    nop
    jr z, jr_021_7A24

    ld [de], a
    nop
    ld a, [c]
    ld [$040A], sp
    inc b
    ld [bc], a
    sbc b
    ldh [$F7], a
    ld [$8050], sp
    jp nc, $C820

jr_021_7A23:
    nop

jr_021_7A24:
    inc h
    ld b, b
    ld d, b
    jr nz, @+$42

    jr nz, @+$42

    nop
    ld a, [bc]
    inc b
    rlca
    ld b, b
    ld a, [bc]
    db $10
    ld [$9404], sp
    nop
    xor d
    ld [bc], a
    jr jr_021_7A3C

    ld b, $00

jr_021_7A3C:
    add d
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
    inc [hl]
    jr jr_021_7A99

    add c
    ld e, e
    inc b
    ld d, h
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld b, b
    ld b, b
    nop
    xor b
    ld b, b
    ldh [rNR10], a
    ld [hl], l
    ld b, b
    add hl, bc
    ld b, b
    ld [$4249], sp
    ld [$004A], sp
    ld [$1000], sp
    nop
    nop
    nop
    jr nc, jr_021_7ABA

    ld e, d
    nop
    inc c
    ld b, b
    ld d, $08
    ld b, c
    ld [bc], a
    nop
    ld bc, $0034
    nop
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

    ld b, b
    ld b, b
    nop
    xor b
    ld b, b
    ldh [rNR10], a
    cp $E8
    rst $38
    ret nz

    ldh a, [$D0]
    db $F4
    ld h, b
    ret nc

jr_021_7A99:
    ld b, b
    db $FC
    ret nz

    cp $80
    ldh [$80], a
    or e
    nop
    sub c
    nop
    ret nz

    nop
    pop de
    nop
    ld b, b
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    jr nz, jr_021_7AB2

jr_021_7AB2:
    inc h
    nop
    nop
    nop
    jr nz, jr_021_7AB8

jr_021_7AB8:
    nop
    nop

jr_021_7ABA:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    nop
    nop
    nop
    jr nz, jr_021_7AC6

jr_021_7AC6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, $40
    ld hl, sp-$40
    add sp, -$40
    add sp, -$40
    add sp, -$40
    ldh [$80], a
    ldh a, [$80]
    or b
    add b
    add d
    rrca
    adc b
    rrca
    add b
    rrca
    add d
    rrca
    nop
    rrca
    dec b
    dec bc
    ld bc, $181F
    rla
    add b
    ld bc, $0780
    adc e
    rra
    add c
    ld e, $9C
    dec hl
    ld [bc], a
    ccf
    ld [$0007], sp
    inc bc
    ld a, [de]
    inc h
    ld h, h
    ld b, b
    ld c, b
    nop
    add d
    ld bc, $0C18
    nop
    nop
    inc l
    ld sp, $0442
    ld b, e
    ld [bc], a
    add h
    nop
    ld [hl], $08
    ret z

    db $10
    inc [hl]
    ld b, b
    ld d, h
    add b
    sub b
    ld [bc], a
    add d
    stop
    nop
    ld b, b
    nop
    inc a
    inc bc
    inc e
    nop
    ld d, $08
    inc sp
    inc h
    rlca
    jr nz, @+$6F

    ld [bc], a
    pop de
    ld h, b
    inc c
    nop
    jp nz, Jump_021_6800

    jr nc, @+$0E

    nop
    add [hl]
    nop
    ldh [rP1], a
    xor b
    ld d, b
    ld [hl], l
    ld b, b
    add hl, bc
    ld b, b
    ld [$4249], sp
    ld [$004A], sp
    ld [$1000], sp
    nop
    nop
    nop
    jr nc, jr_021_7B9A

    ld e, d
    nop
    inc c
    ld b, b
    ld d, $08
    ld b, c
    ld [bc], a

jr_021_7B5A:
    nop
    ld bc, $0034
    nop
    nop
    add hl, hl
    ld bc, $002A
    ld a, [bc]
    nop
    ld bc, $0301
    nop
    ld [hl+], a
    nop
    stop
    ld [de], a
    nop
    ld l, d
    db $10
    ldh a, [rP1]
    xor b
    ld b, b
    adc b
    jr nz, jr_021_7B99

    nop
    db $10
    jr nz, jr_021_7B8D

    nop
    nop
    nop

jr_021_7B80:
    ld [bc], a
    ld bc, $040A
    ld d, h
    nop
    inc d
    jr c, jr_021_7BC3

    jr nz, jr_021_7BB0

    nop
    ld b, d

jr_021_7B8D:
    ld bc, $100B
    ld d, b
    nop
    nop
    nop
    nop
    nop
    db $10
    jr nz, @+$6A

jr_021_7B99:
    ld b, b

jr_021_7B9A:
    call nc, Call_021_7008
    nop
    sub h
    jr z, jr_021_7B80

    or l
    db $FD
    ld [hl+], a
    xor a
    ld e, h
    rst $38
    ld b, c
    xor $93
    or a
    db $EC
    rst $38
    ld c, d
    db $ED
    ld a, [hl-]

jr_021_7BB0:
    ld a, e
    sub l
    ld l, $D1
    reti


    and [hl]
    rst $38
    ld c, c
    rst $28
    jr nc, jr_021_7B5A

    push hl
    db $FD
    adc d
    rst $28
    ld d, l
    nop
    nop
    ld [bc], a

jr_021_7BC3:
    ld [bc], a
    ld b, $06
    ld c, $0E
    ld e, $1E
    ld a, $3E
    inc a
    inc a
    ld d, b
    stop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    jr jr_021_7BF4

    jr @+$1A

    inc a
    inc a
    nop
    nop
    ld [$0808], sp
    ld [$1818], sp
    jr jr_021_7C02

    jr c, jr_021_7C24

    inc a
    inc a
    ld a, h
    ld a, h
    ld b, b
    sub b
    nop
    and b

jr_021_7BF4:
    add b
    jr nz, jr_021_7C37

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $08

jr_021_7C02:
    ld a, [hl-]
    nop
    ld d, d
    ld a, [hl+]
    jr z, jr_021_7C4A

    ld d, d
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    adc d
    ld [$4009], sp
    ld c, c
    ld b, b
    ld c, b
    nop
    ld b, h
    nop
    inc h
    nop
    inc h
    nop
    jr nz, jr_021_7C20

jr_021_7C20:
    ld c, b
    ld bc, $0848

jr_021_7C24:
    ld bc, $0908
    db $10
    ld de, $3202
    nop
    ld [hl+], a
    inc b
    dec l
    nop
    adc h
    ld [$00E4], sp
    jp nc, Jump_021_5020

jr_021_7C37:
    adc b
    ld c, b
    inc c
    ld b, [hl]
    nop
    ld [c], a
    nop
    or b
    ld b, b
    ld [hl+], a
    nop
    ld b, b
    jr nz, jr_021_7CA5

    nop
    ld [hl+], a
    nop
    jr nz, jr_021_7C4A

jr_021_7C4A:
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld c, d
    db $10
    xor b
    inc b
    or h
    nop
    xor d
    ld [bc], a
    jr jr_021_7C5C

    ld b, $00

jr_021_7C5C:
    ld [bc], a
    nop
    nop
    nop
    stop
    jr nc, jr_021_7C84

    jr jr_021_7C86

    jr nc, jr_021_7C68

jr_021_7C68:
    jr z, jr_021_7C6A

jr_021_7C6A:
    jr nz, jr_021_7C6C

jr_021_7C6C:
    nop
    nop
    nop
    nop
    stop
    inc b
    nop
    ld b, $00
    inc b
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    dec d
    nop
    ld a, [hl+]
    nop

jr_021_7C84:
    jr nz, jr_021_7CB0

jr_021_7C86:
    ld [$3622], sp
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    nop
    inc a
    ld a, [de]
    jr c, jr_021_7CCB

    ld [hl], b
    jr z, jr_021_7CFE

    db $10
    ld c, b
    jr nz, jr_021_7C9E

jr_021_7C9E:
    nop
    nop
    ld a, a
    push bc
    rst $38
    ld a, [de]
    rst $28

jr_021_7CA5:
    ld d, [hl]
    db $DD
    ld a, [hl+]
    ld l, a
    or h
    sub $AF
    rst $28
    ld d, b
    cp d
    ld h, a

jr_021_7CB0:
    rst $10
    dec l
    ld a, e
    or h
    sbc $A5
    rst $38
    ld d, l
    ld e, l
    xor d
    cp e
    ld l, h
    and $B9
    cp a
    ld d, d
    inc b
    add hl, bc
    ld bc, $0109
    dec b
    ld bc, $0004
    nop
    nop

jr_021_7CCB:
    nop
    nop
    nop
    nop
    nop
    sbc b
    ld h, b
    ld a, b
    add b
    ld d, b
    and h
    xor d
    ld d, h
    ld d, h
    xor b
    ld hl, sp+$02
    ld d, h
    xor b
    adc b
    ld [hl], h
    inc de
    nop
    inc d
    inc bc
    dec d
    inc bc
    inc d
    inc bc
    dec b
    ld [bc], a
    rlca
    nop
    inc bc
    nop
    stop
    dec bc
    inc b
    dec d
    ld c, $0A
    rlca
    add hl, bc
    rlca
    ld b, $01
    ld bc, $0100
    nop

jr_021_7CFE:
    nop
    nop
    ld h, h
    sbc h
    ei
    and c
    xor [hl]
    ld d, c
    rst $38
    ld h, h
    call c, $F028
    and b
    ld h, e
    add b
    call $0082
    nop
    add b
    nop
    ret nz

    and b
    ld h, b
    ret nz

    ld bc, $0000
    nop
    add b
    nop
    nop
    nop
    ld a, a
    adc b
    ret c

    ld h, b
    or [hl]
    ld b, h
    cp $23
    sbc e
    db $E4
    rst $30

jr_021_7D2B:
    sbc c
    cp $08
    rlca
    ld [bc], a
    rst $38
    ld c, c
    ei
    ld b, b
    db $FD
    jr nz, jr_021_7D2B

    ld [$083C], sp
    sub [hl]
    ld [$0286], sp
    jp nz, Jump_021_6200

    jr nz, jr_021_7D63

    nop
    nop
    nop
    nop
    add h
    ld b, b
    ret nz

    add b
    add b
    add b
    nop
    nop
    nop
    cp a
    ld c, b
    cp $93

jr_021_7D54:
    push af
    ld a, [bc]
    cp [hl]
    ld h, b
    ld a, c
    nop
    ld d, e
    jr nz, jr_021_7D90

    ld bc, $0027
    ld bc, $0702

jr_021_7D63:
    dec b
    dec b
    nop
    ld [bc], a
    ld bc, $0008
    nop
    nop
    inc b
    nop
    nop
    nop
    rst $30
    ld c, d
    rst $28

jr_021_7D73:
    jr nc, @-$11

    ld e, d
    db $DD
    jr nz, jr_021_7D54

    ld h, b
    ld [hl], d
    and c
    ld [hl], e
    ret nz

    db $E3
    nop
    ld b, c
    ldh [$81], a
    ld b, c
    nop
    jr nz, jr_021_7DC7

    ld b, b
    ld c, b
    nop
    nop
    nop
    inc b
    nop
    nop
    nop

jr_021_7D90:
    ld a, a
    add h
    cp e
    ld d, l
    rst $38
    nop
    cp l
    ld b, b
    di
    ld h, c
    rst $20
    nop
    rlc l
    adc a
    nop
    ld de, $0F0B
    dec b

jr_021_7DA4:
    dec b
    nop
    ld [bc], a
    ld bc, $0008
    nop
    nop
    inc b
    nop
    nop
    nop
    rst $38
    adc b
    dec sp
    sub $EF
    ld [hl-], a
    ld a, [hl]
    add c
    rst $38
    inc c
    cp e
    inc b
    ld c, [hl]
    add c
    rst $20
    ld b, b
    ld [c], a
    jr nz, jr_021_7D73

    ld d, b
    ret nc

    and b
    ld h, b

jr_021_7DC7:
    ret nz

    ld b, b
    ret nz

    and b
    add b
    adc b
    ld [$0000], sp
    ret nz

    nop
    ld [hl], b
    add b
    ld [hl], b
    add b
    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    add b
    nop
    nop
    nop
    inc b
    nop
    add $00
    push af
    ld [bc], a
    ld [hl], $C0
    db $DB
    jr nz, jr_021_7DA4

    ld [bc], a
    adc c
    ld [bc], a
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
    add b
    nop
    add b
    nop
    ldh [rP1], a
    ld b, b
    nop
    ld bc, $0200
    ld bc, $0304
    add hl, bc
    ld b, $0B
    inc b
    rla
    ld [$0018], sp
    ld [hl], $00
    ld [hl], h
    nop
    ld [hl], c
    nop
    ld d, e
    jr nz, jr_021_7E6B

    ld hl, $2152
    ld d, d
    ld hl, $43B4
    push hl
    inc bc
    ld c, e
    add a
    ld d, a
    adc a
    rst $10
    rrca
    sub $0F
    sub h
    rrca
    add hl, de
    ld b, $07
    nop
    ld d, [hl]
    ld hl, $0334
    dec b
    inc bc
    push bc
    inc bc

jr_021_7E38:
    push hl
    inc bc
    ld h, l
    add e
    ld [hl], $C1
    inc sp
    ret nz

    ld sp, $38C0
    ret nz

    ld a, b
    add b
    ld a, b
    add b
    ld [hl], b
    add b
    ldh [rP1], a
    add b
    nop
    nop
    nop
    ld h, [hl]
    add b
    ld [hl], $C0
    ld a, [hl-]
    ret nz

    jr jr_021_7E38

    sbc b
    ldh [$D9], a
    ldh [$D1], a
    ldh [rNR43], a
    pop bc

jr_021_7E60:
    call nz, $0903
    rlca
    dec de
    rlca
    dec c
    inc bc
    ld b, $01
    inc bc

jr_021_7E6B:
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ret c

    jr nz, jr_021_7EB5

    ret nz

    jr jr_021_7E60

    jr @-$1E

    sbc b

jr_021_7E83:
    ldh [$98], a
    ldh [$D8], a
    ldh [$D0], a
    ldh [$50], a
    ldh [$A0], a
    ld b, b
    call z, Call_021_4000
    nop
    ldh [rP1], a
    or b
    ld b, b
    ldh a, [rP1]
    cp b
    ld b, b
    sbc b
    ld h, b
    adc h
    ld [hl], b
    and h
    ld a, b
    ld d, [hl]
    jr c, jr_021_7EFE

    inc a
    ld e, e
    inc a
    ld [hl+], a
    inc e
    ld a, [de]
    inc b
    inc b
    nop
    inc b
    nop
    nop
    nop
    ld [$1007], sp
    rrca
    db $10

jr_021_7EB5:
    rrca

jr_021_7EB6:
    ld de, $310E
    ld c, $12
    inc c
    ld a, [bc]
    inc b
    ld a, [hl+]
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
    ld bc, $0300
    nop
    inc c
    inc bc
    ret nz

    nop
    add b
    nop
    and b
    nop
    or c
    nop
    dec sp
    nop
    ld e, e
    jr nz, @+$55

    jr nz, jr_021_7F32

    jr nz, jr_021_7EE1

jr_021_7EE1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    inc l
    db $10
    ld b, [hl]
    jr c, jr_021_7E83

    ld [hl], b
    xor [hl]
    ld [hl], b
    xor [hl]
    ld [hl], b
    xor [hl]
    ld [hl], b
    xor h
    ld [hl], b

jr_021_7EFE:
    cp h
    ld [hl], b
    stop
    adc [hl]
    nop
    add a
    nop
    ld h, c
    add b
    sub b
    ldh [rOBP0], a
    ldh a, [$86]
    ld hl, sp+$1F
    ldh [$2E], a
    nop
    rra
    nop
    inc de
    inc c
    jr z, jr_021_7F37

    ld c, [hl]
    ccf
    ld hl, $1E1F
    ld bc, $0000
    ld [bc], a
    nop
    ld sp, $0000
    nop
    db $F4
    nop
    ld h, b
    jr nz, @+$40

    inc b
    jr jr_021_7F36

    inc bc
    ld bc, $3020

jr_021_7F32:
    pop bc
    ld [bc], a
    jr nc, jr_021_7EB6

jr_021_7F36:
    push bc

jr_021_7F37:
    ld a, [bc]
    ld a, h
    ld c, b
    and e
    ld c, h
    cp a
    ld h, c
    res 6, h
    ld [bc], a
    nop
    add b
    nop
    jr c, jr_021_7F46

jr_021_7F46:
    ret nz

    nop
    ld e, $08
    ld h, a
    ld h, [hl]
    nop
    nop
    jr c, jr_021_7F80

    add b
    nop
    nop
    nop
    jr nc, jr_021_7F57

    dec b

jr_021_7F57:
    nop
    ld a, l
    ld a, [bc]
    ld l, d
    sub l

jr_021_7F5C:
    cp a
    ld b, d
    cp $99
    ld [$7100], sp
    nop
    pop hl

jr_021_7F65:
    nop
    add [hl]
    ld bc, $0709
    ld [de], a
    rrca
    ld h, c
    rra
    ld hl, sp+$07
    nop
    nop
    nop
    nop
    stop
    adc [hl]
    nop
    scf
    nop
    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    rst $38

jr_021_7F80:
    ld [hl], e
    db $FC
    ld l, e
    db $FC
    ld b, d
    db $FC
    add $F8
    xor [hl]
    ldh a, [$0E]
    ldh a, [rNR32]
    ldh [$60], a
    add b
    ld [hl], $18
    ld h, $18
    ld d, d
    inc a
    ld d, e
    inc a
    or e
    ld a, h
    or e
    ld a, h
    or c
    ld a, [hl]
    or c
    ld a, [hl]
    sub b
    ld [bc], a
    ld d, d
    add b
    jp c, Jump_021_5800

    nop
    inc d
    ld [$0814], sp
    inc h
    jr @+$26

    jr jr_021_7F65

    ld a, b
    ld d, h
    jr c, @+$58

    jr c, @+$68

    jr @+$69

    jr @+$79

    ld [$007E], sp
    jr nc, jr_021_7FC0

jr_021_7FC0:
    nop
    nop
    inc b
    nop
    nop
    nop
    ld c, b
    nop
    ld b, d
    ld b, c
    dec b
    jr nz, jr_021_7F5C

    ld b, l
    ld d, c
    ld [$00E0], a
    ld hl, sp+$00
    add sp, -$80
    db $FC
    add sp, -$01
    or b
    rst $38
    ldh [rIE], a
    di
    rst $38
    rst $38
    ldh [$80], a
    ld hl, sp-$80
    ldh a, [$C0]
    db $EC
    ret nz

    db $F4
    ldh [$FC], a
    ldh [$FA], a
    ret nc

    rst $38
    add sp, -$20
    nop
    ld hl, sp+$00
    add sp, -$80
    db $FC
    add sp, -$01
    or b
    rst $38
    ldh [rIE], a
    di
    rst $38
    rst $38
