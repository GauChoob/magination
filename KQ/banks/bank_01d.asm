; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]

    inc e
    pop af
    inc b
    ld sp, hl
    dec c
    jp hl


    sbc [hl]
    call c, $BEAC
    call $CCFE
    rst $38
    ld c, h
    ld a, a
    add hl, bc
    db $ED
    dec d
    push hl
    dec b
    push af
    ld bc, $03F9
    rst $38
    ld [bc], a
    cp $03
    rst $38
    inc bc
    rst $38
    and h
    db $FD
    adc b
    ei
    nop
    rst $30
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
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
    ld [$FFEA], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    cp e
    ld a, [de]
    ld a, [de]
    and l
    and l
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    db $FC
    db $FC
    rst $38
    rst $38
    xor $EE
    rst $38
    rst $38
    jp hl


    jp hl


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01D_4069:
    rst $38
    rra
    rra
    ei
    ei
    ccf
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    pop hl
    rra
    ret nz

    inc a
    add b
    ld a, b
    nop
    ld h, b
    nop
    ret nz

    inc bc

Call_01D_4080:
    nop
    rst $38
    nop
    rst $38
    ld bc, $8EFE
    jr nz, jr_01D_4069

    db $10
    jr nz, jr_01D_40A3

    nop

jr_01D_408D:
    rst $18
    nop

jr_01D_408F:
    ld e, a
    nop
    rst $38
    nop
    rst $38
    ldh [$1F], a
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    di
    ld [bc], a

jr_01D_40A3:
    di
    rla
    rst $20
    add hl, bc
    rst $28
    ld [$30EF], sp
    rst $18
    jr nc, jr_01D_408D

    jr nc, jr_01D_408F

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01D_40BF:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $18
    nop
    rst $28
    nop
    rst $28
    db $10
    rst $28
    jr jr_01D_40BF

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00FE
    db $FC
    inc b
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    nop
    ei
    nop
    ld [hl], e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FE
    db $F4
    db $F4
    rst $38
    rst $38
    ei
    ei
    inc c
    ld a, a
    adc b
    cp a
    adc b
    sbc a
    pop bc
    sbc $62
    xor $3B
    db $FD
    inc h
    ld sp, hl
    jp nz, $1CF3

    inc e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$F0FA]
    ldh a, [$FA]
    ld a, [$A4A4]
    add $C6
    nop
    nop
    push bc
    push bc
    ld [hl-], a
    ld [hl-], a
    add sp, -$18
    ld h, c
    ld h, c
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
    rst $28
    rst $30
    rst $20
    daa
    ccf
    daa
    rst $38
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
    sbc a
    ld a, a
    cp c
    add hl, sp
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ld c, $81
    ld e, $42
    cp h
    nop
    rst $38
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
    rst $38
    ld a, $EB
    ld b, d
    add e
    ld [hl], c
    pop hl
    cpl
    rst $28
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    ld de, $11DF
    rst $18
    ld sp, $39DF
    rst $38
    add hl, bc
    rst $28
    dec b
    rst $30
    ld bc, $02FB
    ei
    nop

jr_01D_41B1:
    rst $38
    inc b
    rst $38
    ld [$10FF], sp
    rst $38
    db $10
    rst $38
    ld hl, $61FE
    cp $62
    db $FC
    jr jr_01D_41B1

    jr nz, @-$2F

    ld b, b
    adc a
    ld d, b
    sbc a
    sub b
    rra
    jr nz, jr_01D_420B

    ld b, d
    ld a, a
    inc b
    ld a, a
    ld b, $FC
    rlca
    cp $03
    rst $38
    ld bc, $00FF
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rlca
    call z, $F80F
    rst $38
    ldh [rIE], a
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
    cp $FE
    rst $30
    rst $30
    rst $38
    rst $38
    ld h, [hl]
    rst $00
    ld bc, $B08F
    ld a, $40
    ld a, [hl]
    ld b, b
    ld a, [hl]
    ret nz

jr_01D_420B:
    cp $C2
    rst $38
    ld [c], a
    rst $38
    ld a, [$FCFA]
    db $FC
    ld a, [c]
    ld a, [c]
    ld a, [$E7FA]
    rst $20
    ret nz

    ret nz

    sub b
    sub b
    ldh a, [$F0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $FD
    cp $FD
    db $F4
    db $F4
    db $F4
    cp $EE
    ldh a, [$F0]
    jp hl


    xor d
    or a
    or h
    rst $30
    rst $30
    cp l
    cp c
    rst $30
    reti


    rst $30
    sbc c
    sub c
    sub c
    db $FD
    pop bc

jr_01D_4242:
    db $D3
    ld b, b
    db $E3
    db $E4
    ld [hl], l
    ld b, $79
    adc c
    ld a, [de]
    db $DB
    sbc d
    sbc e
    cp $C2
    dec a
    ld c, l
    add a
    xor b
    add e
    inc b
    ret nc

    jp nc, $D8F8

    db $FD
    ld c, $FD
    ld c, $64
    add l
    ld a, a
    rra
    sbc a
    sub e
    rst $10
    ld d, d
    ld [hl], d
    ld [hl], d
    ld a, [$F7FA]
    add hl, sp
    rst $30
    jr jr_01D_4242

    dec d
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
    rst $38
    sbc a
    sbc a
    sbc a
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FE
    db $FC
    db $FD
    db $FC
    db $FD
    db $FC
    db $FD
    ld hl, sp-$06
    rst $30
    rst $30
    db $E3
    db $EB
    db $EB
    db $E3
    rst $00
    rst $10
    ld b, a
    ld d, a
    rla
    daa
    rla
    daa
    adc a
    xor a
    dec b
    ld sp, hl
    dec b
    ld sp, hl
    add hl, bc
    pop af
    inc de
    ld [c], a
    inc b
    and $2A
    call z, $CC2A
    ld a, [bc]
    call z, $FC40
    push bc
    ld sp, hl
    rst $00
    ei
    rst $00
    ei
    ld b, l
    ld sp, hl
    ld b, c
    ld sp, hl
    ld b, e
    db $FD
    ld b, d
    db $FC
    adc b
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $2EFE
    ldh [$30], a
    ldh [rNR23], a
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    nop
    rst $38
    ld b, b
    sbc a
    sub b
    rra
    db $10
    rra
    jr jr_01D_42F1

    ld b, $03
    rlca
    rlca
    ld e, $1F
    rst $38

jr_01D_42F1:
    rst $38
    rst $38
    rst $38
    cp $FE
    ld b, c
    ld b, c
    cp $FE
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    or b
    or b
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FE
    rst $38
    rst $38
    cp $FE
    cp $FE
    rst $38
    rst $38
    db $FD
    db $FD
    ld e, b
    ld e, b
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$E0], a
    ld [hl], b
    ld [hl], b
    add b
    add b
    ldh [$E0], a
    xor $EF
    cp $FF
    cp $EE
    adc $D6
    rst $08
    rst $10
    db $EB
    db $E3
    db $EB
    db $E3
    or $B7
    pop de
    ld d, c
    rst $38
    add hl, sp
    ld [hl], a
    cp b
    ld [hl], a
    jr c, jr_01D_43AC

    inc [hl]
    ld a, [c]
    ldh a, [$78]
    sbc b
    db $FD
    dec c
    cp [hl]
    jp nz, $C3BB

    add e
    and e
    add e
    add e
    rst $00
    add $F1
    ld a, [c]
    ldh a, [$E1]
    ret c

    pop hl
    ld b, $06
    ld b, $07
    adc l
    adc h
    db $E4
    inc b
    db $FC
    inc c
    rst $30
    ld b, $EF
    inc c
    db $EB
    inc c
    ld sp, $F133
    pop af
    ld a, c
    cp c
    ld e, a
    add hl, de
    ld [hl], $38
    or e
    inc [hl]
    ldh a, [$30]
    pop af
    ld de, $EFEF
    cp a
    rst $18
    sbc a
    sbc e
    cp a
    xor l
    xor l
    xor l
    xor a
    xor a
    rst $38
    di
    cp a
    reti


    ld hl, sp-$06
    ld hl, sp-$06
    ld hl, sp-$06
    ld a, [$FAF8]
    ld hl, sp-$16
    add sp, -$33
    call z, $AC8D
    adc a
    xor a
    or a
    add a
    or b
    add b
    or h
    add l
    jp c, $DAC2

    jp nz, Jump_01D_616D

    ld l, l
    ld h, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    cp a
    rra
    rst $18

jr_01D_43AC:
    rra
    ld e, a
    rrca
    ld l, a
    ld h, b
    cp $20
    cp $10
    cp $10
    cp $18
    cp $08
    db $FC
    inc b
    db $FC
    dec b
    ld sp, hl
    ld b, c
    ld a, [hl]
    ld b, b
    ld a, [hl]
    ld b, e
    ld a, l
    ld h, a
    ld a, c
    and h
    ld sp, hl
    or h
    ld sp, hl
    cp h
    pop af
    inc e
    pop af
    ld h, a
    add $7F
    rst $38
    jr nc, @+$01

    nop
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
    rra
    adc b
    rrca
    ret c

    sbc a
    ld [hl], b
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
    db $FD
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
    cp $FE
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FE
    db $FC
    db $FC
    rst $38
    rst $38
    db $FC
    db $FC
    jr nz, jr_01D_4432

    ld h, b
    ld h, b
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    jr nz, @+$22

    ret nz

    ret nz

    ret nz

    ret nz

    cp [hl]
    rst $38
    xor $B6
    xor [hl]
    or d
    rst $28
    db $E3
    ei
    or e
    cp e
    or d
    jp c, $DAFB

    ld a, [$0AEA]

jr_01D_4432:
    ld c, l
    adc l
    rrca
    inc c
    ld e, e
    ld e, h
    xor c
    xor d
    call c, $EC5E
    inc l
    ld a, $BE
    call z, $DCF0
    ret nz

    push hl
    pop hl
    ldh [$61], a
    ld a, [c]
    di
    ld a, [$7C8A]
    add h
    ld a, l
    add l
    ld c, l
    adc [hl]
    dec c
    inc c
    db $EC
    inc l
    and $06

jr_01D_4458:
    ldh a, [rNR10]
    ld e, c
    sbc c
    rla
    db $10
    rla
    jr jr_01D_4458

    ld sp, $7877
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], b
    halt
    ld e, b
    ld l, b
    reti


    pop hl
    ld h, l
    ld e, l
    cp c
    ret


    cp e
    adc e
    sbc a
    adc a
    xor a
    xor a
    db $DB
    db $DD
    cp e
    cp c
    ei
    ei
    cp a
    cp a
    sub $C6
    db $EB
    db $E3
    ei
    di
    push af
    pop af
    ld sp, hl
    ld sp, hl
    pop af
    push af
    di
    ei
    and $F6
    or l
    ld sp, $1056
    ld d, d
    inc d
    and l
    add c
    xor e
    add e
    add e
    xor e
    ld [de], a
    ld c, d
    dec b
    sub h
    adc a
    xor a
    xor a
    adc a
    xor a
    adc a
    xor a
    adc a
    ld l, a
    rrca
    ld e, a
    rra
    cp a
    ccf
    cp a
    ccf
    cp $FF
    db $FD
    cp $FE
    db $FD
    ld sp, hl
    ei
    ei
    ei
    rst $30
    rst $38
    or $FF
    db $FD
    cp $F7
    rrca
    pop bc
    inc bc
    nop
    db $FC
    db $FC
    rst $38
    rst $08
    rst $38
    ld [hl], e
    adc a
    add c
    ld a, c
    ld a, l
    cp $FF
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    ccf
    dec e
    rst $18
    sbc [hl]
    rst $38
    rst $08
    rst $38
    rst $00
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
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    pop af
    pop af
    rra
    rra
    jr z, @+$2A

    rst $20
    rst $20
    ld c, a
    ld c, a
    cp $FE
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FE
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_01D_4532

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ld h, b
    ret nz

    ret nz

    cp [hl]
    cp [hl]
    sbc $EE
    db $DB
    set 5, a
    rst $28
    rst $38
    rst $38
    rst $38
    ei
    ld sp, hl
    ld sp, hl
    db $FD
    db $FD
    rst $38
    rst $38
    cp a
    ccf

jr_01D_4532:
    ld l, [hl]
    ld [hl], d
    db $EB
    db $E3
    ld l, e
    ld l, e
    rst $30
    scf
    ld a, e
    sbc e
    ld d, a
    rla
    cp a
    db $DB
    scf
    ld b, a
    rlca
    rlca
    add a
    add a
    rst $08
    call z, $ACEB
    ld a, e
    sbc h
    add hl, sp
    ld e, d
    jr @+$1A

    ld d, [hl]
    ld e, b
    or b
    or [hl]
    ld d, b
    ld d, b
    cp c
    cp c
    rst $30
    ld [hl], a
    ld a, a
    ld a, c
    ld [hl], a
    ld a, c
    ei
    db $FD
    push bc
    push bc
    rst $00
    add $EC
    db $ED
    call nc, $ED54
    dec l
    ld [hl], a
    sub a
    cpl
    ld c, a
    rra
    rra
    rst $38
    rst $20
    rst $28
    rst $20
    rst $30
    scf
    ld l, a
    ld l, a
    rst $28
    rst $28
    rst $38
    cp a
    rst $38
    ccf
    ld a, a
    ld a, a
    add $D6
    call nc, $D0C5
    jp nz, $C2D0

    add sp, -$1E
    ld a, [c]
    db $F4
    ld a, [c]
    db $F4
    ld a, [c]
    db $F4
    dec h
    sub h
    inc d
    dec h
    sub l
    and h
    xor [hl]
    adc $8F
    rst $28
    adc a
    rst $28
    adc a
    rst $28
    rst $08
    xor a
    ld a, a
    ld a, a
    ld l, a
    ld l, a
    scf
    or a
    ld d, a
    sub a
    dec de
    ld e, e
    ld e, e
    dec de
    add hl, de
    ld e, c
    ld e, c
    add hl, de
    rst $38
    db $FC
    ld a, [$F9FD]
    ei
    ld sp, hl
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    rst $30
    ld hl, sp-$14
    di
    jp nc, $CEEF

    rst $18
    sbc [hl]
    rst $18
    sbc [hl]
    cp a
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $30
    rrca
    ld h, c
    di
    ldh a, [$FD]
    ld [hl], b
    cp $38
    rst $38
    jr c, @+$01

    jr nc, @+$01

    jr nc, @+$01

    sbc a
    sbc a
    adc a
    adc a
    rst $08
    rst $08
    rst $00
    rst $00
    rst $20
    rst $20
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    cp $FE
    db $ED
    db $ED
    rst $38
    rst $38
    ld b, h
    ld b, h
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$F0]
    rst $38
    rst $38
    rst $30
    rst $30
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    db $EC
    db $EC
    ret z

    ret z

    di
    di
    jp hl


    jp hl


    ld a, [$FFFA]
    rst $38
    cp $FE
    cp $FE
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    jp nz, $CAC2

    jp z, Jump_01D_5B7F

    cp e
    cp c
    db $FD
    db $FD
    db $FD
    db $FD
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp h
    call c, $FFDC
    db $FC

Jump_01D_4646:
    rst $18
    db $FC
    rst $38
    call $E7E7
    rst $38
    rst $38
    rst $38
    rst $38
    db $FD
    call $C5BD
    sbc [hl]
    xor [hl]
    adc a
    adc a
    rst $18
    db $DD
    db $ED
    xor l
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    dec sp
    ld [hl], e
    ld a, e
    rst $30
    rst $30
    ld [hl], a
    scf
    ld a, a
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld a, [$FAF8]
    ld hl, sp-$03
    db $FC
    db $FD
    db $FC
    db $FD
    db $FC
    add d
    add d
    ld sp, hl
    ld sp, hl
    db $F4
    db $F4
    sub [hl]
    and [hl]
    and h
    sub h
    ld c, c
    ld d, b
    ld d, c
    ld c, b
    and e
    xor b
    push de
    db $10
    ld h, h
    nop
    ld [de], a
    nop
    reti


    add hl, de
    sbc e
    ld e, e
    inc sp
    or e
    ld [hl], a
    ld [hl], a
    ld l, a
    ld l, a
    rra
    rra
    ccf
    ccf
    nop
    nop
    call c, $B0E3
    adc $4E
    cp a
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, $7F
    ld e, $BF
    sbc h
    rst $38
    sub d
    rst $38
    sbc h
    cp $9C
    cp $10
    rst $38

Jump_01D_46D2:
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld [$087F], sp
    ld a, a
    ld de, $13FF
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    rst $00
    rst $28
    rst $00
    rst $28
    adc a
    rst $18
    adc a
    rst $18
    rra
    cp a
    rst $38
    rst $38
    rst $08
    rst $08
    rst $38
    rst $38
    db $FD
    db $FD
    adc a
    adc a
    ld a, a
    ld a, a
    rst $38
    rst $38
    db $F4
    db $F4
    cp $FE
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $20
    rst $20
    rst $38
    rst $38
    cp l
    cp l
    rst $38
    rst $38
    ccf
    ccf
    rst $08
    rst $08
    rst $30
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
    ld a, h
    ld a, h
    push af
    push af
    or $F6
    db $F4
    db $F4
    db $FC
    db $FC
    cp $FE
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    db $10
    db $10
    ld e, b
    ld e, b
    ld d, b
    ld d, b
    ld b, [hl]
    ld b, [hl]
    ret z

    ret z

    sbc h
    sbc h
    ld sp, hl
    ld sp, hl
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
    ld b, e
    ld b, e
    add d
    add d
    sub a
    sub a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

    ld a, a
    ret nz

    ld a, a
    ld b, b
    ld a, a
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
    cp $FE
    rst $38
    rst $38
    ld hl, sp-$08
    rst $38
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
    ld [bc], a
    adc h
    adc h
    ld e, $1E
    rst $38
    rst $38
    ldh [$E0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, a
    ld b, a
    rra
    rra
    ld c, a
    ld c, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    pop af
    rst $38
    rst $38
    cp $FE
    ld hl, sp-$08
    push af
    push af
    ei
    ei
    cp $FE
    inc e
    rst $38
    sbc b

jr_01D_47C3:
    db $FD
    or b
    db $FD
    jr nz, jr_01D_47C3

    ld sp, $41FF
    rst $38
    ld b, $FF
    rst $28
    rst $38
    jr nz, @+$01

    ld h, b
    db $FC
    ret nz

    ei
    add e
    rst $30
    add h
    rst $28
    inc bc
    rst $38
    adc b
    rst $38
    ld h, c
    rst $38
    inc hl
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    nop
    rra
    rra
    db $10
    rra
    add hl, hl
    daa
    inc h
    inc hl
    ld [bc], a
    ld bc, $1819
    inc [hl]
    inc a
    nop
    nop
    and h
    cp h
    ld e, d
    jp c, $E626

    xor d
    xor $52
    sbc $A6
    cp [hl]
    ld b, d
    ld a, [hl]
    ld b, c
    ccf
    ld [hl+], a
    rra
    sub b
    adc a
    ld c, c
    rst $00
    ld h, h
    jp $81C2


    sbc c
    jr jr_01D_4863

    inc a
    ld [de], a
    ld a, $A5
    cp l
    ld e, d
    db $DB
    inc h
    rst $20
    xor b
    rst $28
    ld d, b
    rst $18
    and b
    cp a
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, a
    ld [hl+], a
    rra
    db $10
    rrca
    add hl, bc
    rlca
    inc h
    inc hl
    ld [bc], a
    ld bc, $1819
    inc [hl]
    inc a
    db $10
    inc a
    and h
    cp h
    ld e, d
    jp c, $E626

    xor d
    xor $52
    sbc $A6
    cp [hl]
    ld b, d
    ld a, [hl]
    nop
    nop
    ccf

jr_01D_4863:
    ccf
    sub h
    adc a
    ld c, c
    rst $00
    ld h, h
    jp $81C2


    sbc c
    jr jr_01D_48A3

    inc a
    nop
    nop
    sub c
    sub c
    jp c, Jump_01D_64DB

    rst $20
    xor b
    rst $28
    ld d, b
    rst $18
    and b
    cp a
    ld b, c
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
    inc b
    inc b
    add hl, de
    add hl, de
    inc h
    inc h
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
    nop
    nop
    jr nc, jr_01D_48CE

    adc h
    adc h
    nop
    ld b, b
    ld c, e

jr_01D_48A3:
    ld [hl], h
    ld [hl], h
    ld a, a
    ld l, b
    ld a, a
    halt
    ld a, a
    ld l, a
    ld a, a
    ld [hl], h
    ld a, e
    ccf
    ccf
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rrca
    ldh a, [$A0]
    rst $18
    cp $01
    ret nz

    ccf
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
    ldh a, [rIF]
    rst $38
    nop
    nop
    rst $38

jr_01D_48CE:
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38

jr_01D_48D9:
    nop
    sbc a
    ld h, b
    nop
    rst $38
    rst $38
    rst $38
    ld c, c
    ccf
    ld l, $3F
    sbc l
    sbc a
    ld b, $86
    ld b, c
    pop bc
    ret nz

    ret nz

    add b
    nop
    nop
    inc c
    ld [de], a
    ld e, $8D
    adc l
    ld b, c
    pop bc
    jr nz, jr_01D_48D9

    ld [hl+], a
    ld h, e
    sub d
    or e
    ld h, e
    ld h, e
    rlca
    rlca
    ld c, d
    ld a, [hl]
    dec h
    dec a
    ld e, d
    ld e, e
    inc h
    ld h, a
    dec d
    ld [hl], a
    ld c, d
    ld a, e
    ld e, c
    ld h, b
    nop
    nop
    adc d
    db $FC
    inc h
    ld hl, sp+$0A
    ld a, [c]
    sub h
    and $22
    add $C2
    add d
    sbc b
    jr jr_01D_491F

jr_01D_491F:
    nop
    ld c, d
    ld a, [hl]
    and l
    cp l
    ld e, d
    db $DB
    inc h
    rst $20
    dec d
    rst $30
    ld a, [bc]
    ei
    dec h
    db $FD
    ld [bc], a
    cp $8A
    db $FC
    dec h
    ld sp, hl
    ld a, [bc]
    di
    sub h
    rst $20
    ld [hl+], a
    rst $00
    jp $9981


    jr jr_01D_4963

    inc a
    ld c, d
    ld a, [hl]
    dec h
    dec a
    ld e, d
    ld e, e
    ld h, h
    ld h, a
    ld d, l
    ld [hl], a
    ld c, d
    ld a, e
    ld h, l
    ld a, l
    ld b, d
    ld a, [hl]
    adc d
    cp $24
    ld hl, sp+$08
    ldh a, [$96]
    and $20
    call nz, $80C0
    sbc b
    jr jr_01D_4983

    inc a
    ld c, d
    ld a, [hl]
    and l

jr_01D_4963:
    cp l
    ld e, d
    db $DB
    inc h
    rst $20
    dec d
    rst $30
    ld a, [bc]
    ei
    ld sp, hl
    jr jr_01D_496F

jr_01D_496F:
    nop
    adc d
    db $FC
    dec h
    ld sp, hl
    ld a, [bc]
    di
    sub h
    rst $20
    ld [hl+], a
    rst $00
    jp $9882


    jr jr_01D_497F

jr_01D_497F:
    nop
    dec bc
    dec bc
    ccf

jr_01D_4983:
    ccf
    rra
    rrca
    ld c, e
    ld b, a
    ld h, h
    ld b, e
    ld b, d
    ld bc, $1819
    inc [hl]
    inc a
    ld h, b
    ld h, b
    sub b
    sub b

jr_01D_4994:
    jp c, Jump_01D_64DA

    and $A8
    xor $50
    sbc $A0
    cp [hl]
    ld b, b
    ld a, [hl]
    nop
    nop
    nop
    nop
    inc h
    jr c, jr_01D_49D9

    inc a
    ld a, [de]
    inc e
    ld [$060E], sp
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld a, h
    or [hl]
    jp z, $CEB6

    jp c, Jump_01D_7CE6

    ld d, h
    jr nc, jr_01D_49F8

    nop
    nop
    nop
    nop
    inc a
    nop
    ld b, d
    inc a
    jr jr_01D_4A48

    dec h
    ld h, [hl]
    ld b, d
    ld b, e
    nop
    ld bc, $0000
    jr nz, jr_01D_4994

    ld e, b
    ld h, b
    inc h
    jr c, @+$12

jr_01D_49D9:
    inc e
    ld a, [bc]
    inc c
    inc b
    ld b, $00
    ld [bc], a
    ld c, l
    inc sp
    ld h, $39
    sub d
    sbc l
    ld b, d
    call $CB4D
    ret


    rst $08
    jp nz, Jump_01D_4646

    ld b, [hl]
    ld [de], a
    ld a, $AD
    or l
    sub b
    sbc c
    sbc b
    sbc c

jr_01D_49F8:
    ld [$0909], sp
    add hl, bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0501
    dec b
    dec bc
    dec bc
    inc b
    inc b
    ld bc, $0001
    nop
    ld d, [hl]
    halt
    cp [hl]
    cp $F6
    or $9C
    sbc h
    ld b, h
    ld b, h
    xor b
    xor b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec c
    rrca
    ld h, [hl]
    ld e, a
    ld a, [hl-]
    daa
    rra
    rla
    ld bc, $0703
    rlca
    jr c, jr_01D_4A5A

    db $EC
    xor h
    call nz, $8444
    add h
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

jr_01D_4A48:
    nop
    nop
    jr nz, jr_01D_4A4C

jr_01D_4A4C:
    stop
    ld [$0010], sp
    nop

jr_01D_4A52:
    inc b
    nop
    ld [$1000], sp
    ld [$0810], sp

jr_01D_4A5A:
    jr nz, jr_01D_4A74

    jr nz, jr_01D_4A76

    ld h, h
    ld a, h
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    jr jr_01D_4A52

    and b
    ret c

jr_01D_4A74:
    inc h
    db $FC

jr_01D_4A76:
    call z, Call_01D_74FC
    ld [hl], h
    xor b
    xor b
    ld c, b
    ld c, b
    nop
    nop
    inc hl
    ccf
    inc sp
    ccf
    inc sp
    ccf
    inc de
    rra
    rra
    rra
    inc de
    rra
    dec e
    rra
    rlca
    rra
    nop
    nop
    nop
    nop
    add b
    add b
    and b
    and b
    and b
    and b
    and b
    or b
    and b
    or b
    jr nc, jr_01D_4AC8

    rrca
    ld [$0619], sp
    inc c
    rrca
    rlca
    rlca
    nop
    nop
    nop
    nop
    dec b
    dec b
    rlca
    rlca
    and b
    db $E4
    ldh [$64], a
    and b
    and [hl]
    ld h, b
    ld h, [hl]
    jp nz, $C2CE

    adc $8A
    sub [hl]
    ld a, [bc]
    ld d, $00
    rlca
    inc bc
    inc c
    ld b, $19
    inc c
    inc de

jr_01D_4AC8:
    jr jr_01D_4AF1

    db $10
    cpl
    inc hl
    ld e, a
    rra
    ld a, a
    sbc b
    ld l, b
    adc b
    ld hl, sp+$70
    ld [hl], b
    nop
    add b
    ld b, b
    ret nz

    ldh [$E0], a
    ret z

    ret z

    call z, $0ACC
    ld a, [bc]
    ld d, $16
    add hl, bc
    add hl, bc
    nop
    nop
    db $10
    db $10
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    and h

jr_01D_4AF1:
    and h
    ld c, d
    ld c, [hl]
    inc d
    inc e
    jr nz, jr_01D_4B18

    xor b
    xor b
    ld d, d
    ld d, d
    jr nz, jr_01D_4B1E

    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    jr nz, jr_01D_4B13

    db $10
    inc bc
    inc c
    add hl, bc
    ld c, $04
    rlca
    dec b
    ld b, $00
    nop
    nop

jr_01D_4B13:
    nop
    nop
    nop
    nop
    nop

jr_01D_4B18:
    nop
    nop
    ret nz

    nop
    ldh [rP1], a

jr_01D_4B1E:
    ld [hl], b
    add b
    ld a, [hl-]
    ld a, $02
    ld a, $3A
    ld b, $76
    ld c, [hl]
    ld d, $6E
    ld d, $6E
    ld d, a
    ld l, a
    ld b, e
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    inc b
    ld [$0402], sp
    inc bc
    inc b
    ld bc, $0102
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    rlca
    rlca
    ld d, h
    ld e, h
    inc a
    inc a
    inc c
    inc c
    inc d
    inc d
    adc d
    ld a, [bc]
    add b
    nop
    ret nz

    ld b, b
    nop
    ret z

    ld h, b
    jr nz, @+$32

    ld d, b
    jr c, jr_01D_4BAE

    ld e, h
    ld h, h
    nop
    inc a
    inc h
    inc a
    jr c, jr_01D_4BA6

    add hl, de
    add hl, de
    jr jr_01D_4B7A

    inc c
    inc b
    inc b
    ld [$1814], sp
    db $10
    inc e

jr_01D_4B7A:
    inc [hl]
    jr z, jr_01D_4BED

    ld c, h
    db $E4
    inc e
    dec e
    dec a
    add hl, bc
    add hl, bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop

jr_01D_4B8A:
    nop
    nop
    ld bc, $0001
    inc bc
    jr nc, @+$2A

    jr c, jr_01D_4BB4

    ld e, b
    ld h, h
    ld d, b
    ld l, h
    or h
    call z, $9C64
    inc c
    db $FC
    ld a, b
    sbc b
    ld b, $16
    nop
    jr nz, jr_01D_4BA5

jr_01D_4BA5:
    ld h, b

jr_01D_4BA6:
    jr nz, jr_01D_4BF9

    ld sp, $3F4E
    ld b, b
    ld e, $61

jr_01D_4BAE:
    nop
    ld a, a
    ld [de], a
    ld l, $32
    ld c, [hl]

jr_01D_4BB4:
    ld h, d
    sbc [hl]
    ld [c], a
    ld e, $CE
    ld [hl], $F2
    ld l, [hl]
    ld [hl], b
    call z, $BC24
    ccf
    ld a, a
    rst $18
    rst $18
    ld a, [hl]
    ld a, [hl]
    ld d, a
    ld d, a
    ld l, $2E
    ld [de], a
    ld [de], a
    inc d
    inc d
    ld [$8808], sp
    adc h
    adc b
    adc h
    jr jr_01D_4BEA

jr_01D_4BD6:
    jr jr_01D_4BEC

    ld d, $1E
    ld [hl], $2E
    ld h, $3E
    ld c, [hl]
    ld a, [hl]
    nop
    ld a, a
    ld [hl], b
    ld c, a
    ld a, b
    ld [hl], a
    ld a, h
    ld c, e
    ld c, l
    ccf

jr_01D_4BEA:
    ccf
    ld a, a

jr_01D_4BEC:
    rlca

jr_01D_4BED:
    rlca
    rrca
    rrca
    jr jr_01D_4B8A

    nop
    ret nz

    jr nz, jr_01D_4BD6

    ld [hl], b
    ldh a, [$E8]

jr_01D_4BF9:
    add sp, -$1E
    ld [c], a
    jp nc, Jump_01D_46D2

    ld b, [hl]
    ld d, $11
    rrca
    nop
    rrca
    inc bc
    dec e
    ld b, $1A
    dec b
    dec sp
    dec hl
    jr c, jr_01D_4C46

    inc [hl]
    inc a
    inc l
    ldh [$E0], a
    ld l, b
    ldh a, [$B0]
    ld [hl], b
    ldh a, [$F0]
    ldh a, [$78]
    ld a, b
    ld hl, sp-$08
    ret c

    ret c

    nop
    nop
    ld bc, $0202
    inc b
    ld [bc], a
    inc c
    ld b, $08
    ld b, $18
    ld b, $19
    dec c
    inc sp
    nop
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld [$0804], sp
    inc b
    db $10
    inc c
    inc d
    jr jr_01D_4C5B

    jr jr_01D_4C59

    rra
    inc c
    rrca
    ld c, $0F

jr_01D_4C46:
    dec bc
    dec bc
    rlca
    rlca
    dec b
    dec b
    ld b, $06
    dec bc
    dec bc
    db $10
    add sp, $00
    ld hl, sp+$08
    ld hl, sp-$70
    ldh a, [$F0]

jr_01D_4C59:
    ldh a, [$E0]

jr_01D_4C5B:
    ldh [$C0], a
    ret nz

    ld b, b
    ld b, b
    ld bc, $0402
    rlca
    rla
    rla
    rlca
    rlca
    dec bc
    dec bc
    dec d
    dec d
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, b
    call nz, $083C
    ld hl, sp+$18
    ld hl, sp-$10
    ldh a, [$E0]
    ldh [$80], a
    add b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr jr_01D_4CA5

    daa
    jr c, jr_01D_4CB1

    scf
    ld d, a
    ld l, b
    ld d, h
    ld l, e

jr_01D_4C8E:
    ld l, e
    ld d, h
    nop
    nop
    ldh [$E0], a
    jr jr_01D_4C8E

    db $E4
    inc e
    inc d
    db $EC
    ld a, [hl+]
    sub $1A
    and $CA
    ld [hl], $60
    ld a, b
    ld h, a
    ld h, a
    ld e, b

jr_01D_4CA5:
    ld e, a
    daa
    jr c, @+$2A

    scf
    ld d, a
    ld l, b
    ld d, h
    ld l, e
    ld l, e
    ld d, h
    nop

jr_01D_4CB1:
    nop
    nop
    nop
    inc bc
    rlca
    rlca
    inc c
    ld c, $1A
    jr jr_01D_4CCC

    stop
    nop
    inc c
    nop
    nop
    nop

Jump_01D_4CC3:
    nop
    nop
    nop
    add b
    add b
    add b
    jr jr_01D_4CCB

jr_01D_4CCB:
    inc a

jr_01D_4CCC:
    ld [hl], b
    ld a, h
    ld a, b
    ld e, [hl]
    ld [$0400], sp

jr_01D_4CD3:
    nop
    ld b, $04
    rrca
    ld c, $0B
    ld c, $07
    rra
    add hl, bc
    rra
    inc bc
    ccf
    nop
    nop
    inc b
    nop
    inc c
    jr jr_01D_4D23

    ld a, h
    jr jr_01D_4D02

    adc d
    ld [$0082], sp
    add [hl]
    ld [bc], a
    nop
    nop
    nop
    ccf
    rra
    ld a, a
    ccf
    ld h, b
    ccf
    ld b, b
    ccf

jr_01D_4CFB:
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    rra
    rra

jr_01D_4D02:
    dec sp
    dec sp
    ld c, $0E
    ld [de], a
    ld [de], a
    add hl, bc
    add hl, bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    or b
    or b
    add sp, -$18
    and b
    and b
    ld d, b
    ld d, b
    jr nz, jr_01D_4D3A

    add b
    add b
    nop
    nop
    nop
    nop
    dec bc
    ld [hl], $07

jr_01D_4D23:
    inc a
    ld b, l
    ld a, [hl]
    ld b, e
    ld a, e
    ld h, h
    ld a, h
    ld [hl+], a
    ld a, $31
    ccf
    db $10
    rra
    adc d
    inc c
    db $EC
    ld l, $C4
    ld b, [hl]
    add [hl]
    add [hl]
    ld a, [bc]
    ld a, [bc]

jr_01D_4D3A:
    ld h, d
    ld h, d
    ldh [$90], a

jr_01D_4D3E:
    ld h, d
    sub d

jr_01D_4D40:
    ld [bc], a
    ld [bc], a
    inc d
    inc d
    ld bc, $0801
    ld [$0020], sp
    ld de, $2B20
    jr nc, jr_01D_4D6E

    jr jr_01D_4CD3

    add b
    ld [$3804], sp
    ld [$3050], sp
    ret nc

    jr nc, jr_01D_4CFB

    ld h, b
    jr nz, jr_01D_4D3E

    jr nz, jr_01D_4D40

    ld a, l
    ld a, [hl]
    ld l, c
    ld a, [hl]
    ld a, e
    ld a, h
    ld [hl], l
    ld a, d
    ld a, e
    ld a, h
    ld l, e
    ld a, h
    ld a, l
    ld a, d

jr_01D_4D6E:
    ld [hl], l
    ld a, d
    ld a, e
    ld a, h
    ld [hl], c
    ld a, [hl]
    ld a, e
    ld a, h
    dec hl
    inc a
    dec [hl]
    ld a, [hl-]
    dec de
    inc e
    dec c
    ld c, $02
    inc bc
    ld l, h
    ld d, e
    ld a, c
    ld b, [hl]
    ld l, c
    ld d, [hl]
    ld d, h
    ld l, e
    ld [hl], e
    ld l, h
    ld l, h
    ld [hl], e
    ld a, e
    ld a, h
    ld l, a
    ld a, a
    ld l, [hl]
    sub d
    and $1A
    adc $32
    sbc d
    ld h, [hl]
    ld c, [hl]
    or [hl]
    or [hl]
    ld c, [hl]
    sbc $3E
    or $FE
    ld b, $1E
    and $E6
    ld a, [de]
    ld a, [$1CE4]
    inc d
    db $EC
    ld a, [hl+]
    sub $1A
    and $CA
    ld [hl], $07
    ld e, $1E
    jr c, jr_01D_4DEE

    ld sp, $6233
    ld h, [hl]
    ld b, h
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop

Call_01D_4DC0:
    ld e, b
    ld c, $5C
    ld c, $4C
    ld b, $2C
    ld h, $06
    ld [bc], a
    ld b, $02
    inc b
    nop
    ld [$1500], sp
    ccf
    ld bc, $037F
    ld a, [hl]
    ld b, [hl]
    ld a, h
    ld l, h
    ld a, b
    dec sp
    ld a, [hl-]
    nop
    nop
    nop
    nop
    add [hl]
    ld [bc], a
    adc h
    ld b, $18
    inc c
    jr nc, jr_01D_4E00

    ldh [$30], a
    add b
    ret nz

    nop
    nop

jr_01D_4DEE:
    nop
    nop
    rra
    ld h, b
    ld b, b
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld h, b
    ld e, a
    ld h, b
    ld h, b
    ld a, a
    ccf
    ccf
    nop
    nop

jr_01D_4E00:
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $05
    dec c
    dec bc
    add hl, bc
    rlca
    ld [de], a
    ld e, $15
    dec c
    ld [hl], b
    ld b, b
    sbc h
    ld a, b
    ld h, [hl]
    db $E4
    add c
    add d
    nop
    dec bc
    add hl, bc
    dec bc
    add [hl]
    add [hl]
    ldh [rP1], a
    jr nz, @+$22

    add hl, de
    ld b, $14
    rla
    ld a, [bc]
    ld c, $01
    ld bc, $0303
    nop
    nop
    inc bc
    inc bc
    add d
    ld a, [hl]
    inc h
    db $FC
    xor h
    cp h
    ld e, b
    ld a, b
    ldh a, [$F0]
    ldh [$E0], a
    nop
    nop
    add b
    add b
    rlca
    ld [$1302], sp
    ld a, [de]
    dec sp
    inc sp
    ld [hl], d
    inc sp
    ld [hl], d
    dec de
    ld a, [hl-]
    dec bc
    ld a, [de]
    inc bc
    ld [bc], a
    nop
    nop
    adc b
    nop
    call nz, Call_01D_4080
    add h
    ret nz

    adc h
    sub h
    call c, $98D8
    add b
    ret nz

    nop
    ld b, a
    ld a, e
    inc bc
    ld b, h
    ld [hl], b
    jr nc, jr_01D_4EA0

    inc bc
    nop
    ld e, $1F
    rlca
    rlca
    db $10
    db $10
    ld [bc], a
    ldh [$CE], a
    ret nc

    ld b, $28
    nop
    inc e
    ret nz

    nop
    sbc b
    ld hl, sp-$20
    ldh [$08], a
    ld [$0A0B], sp
    inc e
    rra
    inc a
    rra
    ld c, $3F
    ld b, d
    inc sp
    ld b, b
    ld [hl], c
    ld d, b
    ld [hl], c
    ld e, [hl]
    ld d, c
    sub b
    ret nz

    cp b
    ret nz

    inc a
    ret nz

    ld a, h
    or b
    ld b, [hl]
    ret z

    ld b, $88
    ld [bc], a
    adc h
    ld a, d
    adc d

jr_01D_4EA0:
    ld c, h
    ld c, h
    add d
    sbc [hl]
    and d
    xor [hl]
    add h
    sbc h
    sbc b
    sbc b

jr_01D_4EAA:
    db $E3
    db $E3
    ld hl, $56DE
    ld a, a
    ld [hl-], a
    ld [hl-], a
    ld e, c
    ld [hl], c
    ld b, l
    ld [hl], c
    dec h
    dec a
    add hl, de
    add hl, de
    rst $00
    rst $00
    ld b, c
    cp [hl]
    ld d, $FE
    inc a
    ld a, $AD
    xor l
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_01D_4EAA

    ld [hl], d
    di
    inc a
    db $FD
    inc bc
    rst $38
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ld [hl-], a
    ld a, $64
    ld a, c
    set 6, c
    pop de
    ldh [$84], a
    adc h
    inc b
    add h
    add h
    call nz, $C080
    add b
    and b
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ldh [$32], a
    cp $02
    ld [bc], a
    ld bc, $0201
    inc bc
    ld b, $07
    ld b, $07
    add hl, bc
    add hl, bc
    inc bc
    ld [bc], a
    ld h, $3E
    ld b, $1F
    inc h
    ccf
    add hl, hl
    ld e, $08
    ccf
    inc d
    scf
    inc h
    daa
    inc h
    daa
    add hl, de
    daa
    ld [hl], b
    add b
    jr @-$1E

    inc l
    ret nc

    inc e
    ldh [rRP], a
    xor b
    ld c, $F0
    inc b
    ld a, [$764A]
    ld l, h

Jump_01D_4F21:
    ld h, l
    and d
    pop hl
    db $EC
    db $E3
    daa
    rst $20
    db $10
    ldh a, [rIE]
    rst $38
    ld hl, $56DE
    ld a, a
    xor $EE
    rlca
    rst $20
    ld [hl], $F7
    db $F4
    rst $30
    rlca
    rlca
    rst $38
    rst $38
    ld b, c
    cp [hl]
    ld d, $FE
    nop
    nop
    jr jr_01D_4F44

jr_01D_4F44:
    inc l
    jr nc, jr_01D_4F5D

    jr z, jr_01D_4F9B

    ld a, h
    ld l, h
    ld a, d
    inc a
    inc a
    nop
    nop
    nop
    nop
    ld [$1206], sp
    ld c, $26
    ld e, $4C
    inc a
    ld e, b
    jr c, @+$22

jr_01D_4F5D:
    ld h, b
    nop
    nop
    ld [hl], b
    nop
    sbc b
    ld h, b
    ld l, b
    ldh a, [$50]
    ld a, b
    jr nc, jr_01D_4F9A

    inc bc
    ld bc, $0302
    nop
    nop
    nop
    nop
    ld [hl+], a
    jr nc, jr_01D_4F78

    ld b, $31
    inc de

jr_01D_4F78:
    ld [hl], c
    add hl, sp
    ld h, b
    ld sp, $6040
    nop
    ld b, b
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    cpl
    jr nc, jr_01D_4FE8

    ld h, b
    sbc a
    ldh [$9E], a
    pop hl
    ld b, l
    ld a, e
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $FC
    inc b
    cp $02

jr_01D_4F9A:
    rst $38

jr_01D_4F9B:
    ld bc, $837D
    cp [hl]
    jp nz, Jump_01D_7F43

    jp $E3BF


    db $FD
    ld d, c
    ld a, [hl]
    rst $08
    cp a
    ldh [$DF], a
    ld a, a
    ld [hl], b
    rra
    rra
    ld a, [$F3C6]
    call $BFC7
    adc d
    ld a, [hl]
    di
    db $FD
    rrca
    di
    cp $0E
    ld hl, sp-$08
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    cpl
    jr nc, jr_01D_5028

    ld h, b
    sbc a
    ldh [$9E], a
    pop hl
    ld b, l
    ld a, d
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $FC
    inc b
    cp $02
    rst $38
    ld bc, $837D
    cp [hl]
    ld b, d
    ld b, e
    ld a, h
    pop bc
    cp [hl]
    ld [c], a
    db $FD
    ld d, c
    ld a, [hl]

jr_01D_4FE8:
    rst $08
    cp a
    ldh [$DF], a
    ld a, a
    ld [hl], b
    rra
    rra
    ld a, [$B306]
    ld c, l
    ld b, a
    cp a
    adc d
    ld a, [hl]
    di
    db $FD
    rrca
    di
    cp $0E
    ld hl, sp-$08
    nop
    nop
    ccf
    ccf
    ld h, a
    ld a, c
    ret c

    rst $20
    and a
    rst $18
    sbc [hl]
    rst $38
    or l
    cp $ED
    cp $00
    nop
    ret nz

    ret nz

    ldh [$E0], a
    ldh a, [$F0]
    ld hl, sp-$08
    sbc b
    ld a, b
    add hl, hl
    ld sp, hl
    ld l, e
    ei
    ld a, a
    ccf
    ld a, a
    ld h, b
    sbc a
    nop
    add a
    nop

jr_01D_5028:
    add b
    nop
    ld b, b
    nop
    ccf
    nop
    nop
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, c
    rst $38
    ld h, e
    ld a, a
    ld a, a
    rst $38
    or b
    rst $08
    ld c, b
    inc bc
    nop
    ld l, l
    ld a, [hl]
    ld a, $3F
    ld e, e
    ld h, a
    adc l
    di
    cp l
    ei
    or l
    ei
    cp d
    rst $00
    ld b, l
    ld a, [hl]
    ld e, a
    rst $38
    ld a, $FF
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    ld a, l
    cp $FE
    rst $38
    db $EB
    rst $38
    ld bc, $F8FF
    rst $38
    xor a
    rst $18
    dec e
    db $E3
    add $F9
    ld [hl], c
    rst $38
    cp e
    ld a, a
    xor a
    ld a, a
    ret nz

    ret nz

    ldh [$E0], a
    ld hl, sp-$08
    ret z

    ld hl, sp-$54
    call c, $FCFC
    add h
    db $FC
    ld [hl], d
    adc [hl]
    ld a, l
    ld a, [hl]
    sbc l
    cp $AE
    rst $18
    xor [hl]
    rst $18
    sbc a
    rst $38
    ld a, a
    ld a, a
    ld h, e
    ld a, a
    sbc $E1
    db $D3
    rst $38
    ld h, a
    rst $38
    cp [hl]
    ld a, a
    pop bc
    ld a, $3E
    pop bc
    pop bc
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    cp l
    ld a, a
    cp l
    ld a, a
    cp l
    ld a, a
    rst $38
    rst $38
    db $DB
    rst $20
    xor l
    di
    or l
    ei
    jp $DAFF


    ld a, $AD
    ld a, a
    db $DD
    ld a, a
    cp l
    ld a, a
    ld e, c
    cp a
    and c
    rst $18
    jp Jump_01D_7EFF


    cp $9B
    db $FC
    dec l
    cp $5D
    cp $BB
    ld a, h
    ld b, [hl]
    cp c
    add c
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $18
    pop hl
    ld a, a
    rst $38
    ld h, a
    rst $38
    ld [hl], d
    rst $38
    cp $FF
    cp $FF
    adc a
    adc a
    ld bc, $FF01
    rst $38
    adc a
    rst $38
    halt
    adc a
    or [hl]
    ld a, a
    rst $30
    ld a, a
    ld b, a
    cp a
    rrca
    rst $38
    ld hl, sp-$08
    cp $FE
    ld l, h
    sbc h
    or h
    call z, $ECD4
    inc c
    db $FC
    ld hl, sp-$08
    add b
    add b
    nop
    nop
    cp $00
    db $FC
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    add b
    nop
    nop
    nop
    pop hl
    pop hl
    ret nz

    ret nz

    adc h
    add b
    ld c, $00
    dec h
    ld [bc], a
    halt
    ld bc, $314A

jr_01D_511E:
    ld b, l
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, c
    ld a, c
    dec [hl]
    ld sp, $21A5
    add l
    ld bc, $00CC
    cp $00
    cp $00
    db $FC
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    cp $F8
    db $EB
    db $E4
    ret


    add $D0
    rst $08
    sub b
    adc a
    ld [de], a
    dec c
    jr nc, @+$11

    ld [hl+], a
    dec e
    ld h, b
    rra
    jr nc, jr_01D_5163

    add hl, bc
    ld b, $87
    nop
    ld h, d
    add b
    jr nc, @-$3E

    jr c, jr_01D_511E

    sbc h
    ld h, b
    adc h
    nop
    add h

jr_01D_5163:
    ld [$009C], sp
    add hl, de
    nop
    add hl, hl
    db $10
    ld a, [hl+]
    ld de, $2152
    jp nc, Jump_01D_4F21

    rrca
    ld h, a
    rlca
    and e
    ld b, e
    inc hl
    jp $8343


    ld d, e
    add e
    inc de
    add e
    or e
    inc bc
    ld h, [hl]
    add hl, de
    ld e, d
    ld hl, $0374
    ld h, h
    inc bc
    ld l, b
    rlca
    jr z, jr_01D_5193

    ld [$0807], sp
    rlca
    cp b
    ld b, b
    ld sp, hl

jr_01D_5193:
    nop
    ld [hl], c
    add b
    ld [hl], d
    add c
    ld [hl], c
    add b
    ld h, b
    add b
    ld [$E404], a
    ld [$41B2], sp
    inc de
    ldh [$39], a
    ret nz

    ld a, l
    add b
    ldh [rP1], a
    call z, $1600
    ld [$16E9], sp
    xor e
    inc de
    ld sp, hl
    ld bc, $00BC
    cp $00
    jp nz, $0800

    db $10
    ld [hl], h
    ld [$013D], sp
    sub c
    adc [hl]
    add hl, de
    ld b, $8F
    add b
    add a
    add b
    ret nz

    ret nz

    and b
    and b
    ret nc

    ret nc

    rst $38
    rst $38
    ret


    nop
    jp nz, $8501

    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    add b
    add b
    db $10
    db $10
    adc c
    adc c
    ld d, b
    adc a
    and b
    rra
    ld b, e
    inc a
    ld b, a
    jr c, @+$81

    nop
    jr c, jr_01D_51EC

jr_01D_51EC:
    ld bc, $FF01
    rst $38
    add b
    nop
    ld [hl], c
    add c
    cp c
    ld b, c
    db $E3
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld c, e
    ld c, e
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    rlca
    rst $38
    db $FC
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    inc bc
    nop
    nop
    ret nz

    ld b, b
    cp $02
    rst $38
    ld b, b
    rst $38
    nop
    rst $28
    ld a, l
    sbc a
    ldh a, [rIE]
    adc a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$00
    ld hl, sp+$00
    db $FC
    add h
    rst $38
    nop
    rst $38
    ld [$03FF], sp
    rst $38
    jr nc, @+$01

    adc [hl]
    ld a, e
    rst $00
    cp h
    rst $20
    rst $18
    ld [hl], e
    ldh [$7F], a
    db $FC
    ccf
    rst $38
    add e
    rst $30
    db $FC
    ei
    rra
    db $FC
    rst $20
    ld e, $FB
    xor $FB
    ld a, h
    ldh [rNR32], a
    ldh a, [$0E]
    ld a, [$FD87]
    di
    ld a, [hl]
    db $FD
    adc [hl]
    ccf
    ld [c], a
    rra
    ldh a, [rIE]
    or b
    cp $93
    ld a, a
    db $D3
    ccf
    ldh [$1F], a
    or $1D
    rst $30
    inc c
    rst $30
    inc c
    ei
    rst $38

jr_01D_5271:
    dec e
    ld a, a
    pop bc
    rrca
    db $FC
    add e
    cp $C1
    ld a, a
    pop hl
    ccf
    ldh [$9F], a
    ld [hl], b
    rst $18
    rrca
    ld sp, hl
    sbc [hl]
    ld a, [$F0FC]
    db $FC
    nop
    db $FC
    call nz, $E47C
    cp h
    db $F4
    sbc h
    ld hl, sp+$0E
    ei
    ld c, $FB
    ld c, $F3
    rra
    pop af
    rra
    pop af
    ccf
    ldh [rIE], a
    jp nz, $04FC

    jr c, jr_01D_5271

    jr c, @-$0F

    jr @-$0F

    inc e
    rst $38
    sbc l
    rst $30
    rst $18
    or $FF
    ld l, c
    ldh a, [$90]
    adc h
    ld hl, sp-$74
    ld hl, sp-$34
    ld hl, sp-$14

jr_01D_52B7:
    ld hl, sp-$04
    jr jr_01D_52B7

    db $E4
    nop
    nop
    nop
    nop
    rst $38
    dec c
    ld a, a
    ret


    rst $38
    set 7, l
    rlca
    ld a, [$BA6F]
    rst $28
    ld [hl-], a
    rst $28
    ld [hl-], a
    rst $18
    ld [hl], b
    rst $18
    ld [hl], d
    rst $18
    ld [hl], b
    rst $08
    ld hl, sp-$71
    ld hl, sp-$71
    db $FC
    rlca
    rst $38
    ld b, e
    ccf
    jr nz, jr_01D_5320

    jr nz, jr_01D_5362

    ld c, [hl]
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    cp c
    rst $38
    ld h, e
    db $FC
    rrca
    ldh a, [$1F]
    cp $E2
    rst $38
    add hl, de
    rst $38
    inc a
    rst $38
    ld c, $FF
    ret nz

    rrca
    ld hl, sp-$1A
    db $FC
    ld [hl], d
    call c, $BFE3
    rst $00
    ld a, l
    adc $7B
    adc $7B
    sbc $73
    db $FD
    or e
    ld a, a
    ld b, c
    rra
    nop
    rst $38
    ld l, [hl]
    rst $38
    or d
    rst $28
    ret c

    or $DC
    ld a, [c]
    sbc h
    ei
    ld c, $FF
    ld b, $FF
    add hl, bc

jr_01D_5320:
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld [hl], b
    or b
    sbc c
    add hl, de
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    nop
    nop
    nop
    jr z, jr_01D_53B2

    ld h, b
    jp nz, $80C0

    add b
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld c, $0B
    ld l, l
    ld a, e
    or l
    sbc e
    dec de
    rrca
    dec c
    dec c
    nop
    nop
    jr nc, @+$7A

    ld a, b
    call z, $84C4
    add b
    nop
    add b
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    nop

jr_01D_5361:
    rra

jr_01D_5362:
    inc bc
    inc e
    inc b
    dec de
    nop
    rra
    inc de
    inc c
    rlca
    ld a, [bc]
    dec bc
    dec b
    dec b
    ld [bc], a
    nop
    ldh a, [$80]
    ld [hl], b
    nop
    ldh a, [$C0]
    jr nc, jr_01D_5361

    ld d, b
    ldh a, [$A8]
    db $F4
    add sp, -$08
    db $F4
    nop
    inc bc
    nop
    inc bc
    dec b
    ld [bc], a
    nop
    rlca
    add hl, bc
    ld b, $03
    dec c
    rlca
    dec bc
    rla
    dec bc
    ld hl, sp+$74
    ld [hl], b
    adc h
    nop
    db $FC
    ld h, b
    sbc h
    db $F4
    ld l, b
    add sp, -$30
    ldh [$D0], a
    ldh [$D0], a
    rrca

jr_01D_53A1:
    rla
    rrca
    inc d
    ld b, $19
    nop
    rra
    inc de
    inc c
    rlca
    ld a, [bc]
    dec bc
    dec b
    dec b
    ld [bc], a
    ldh [rNR10], a

jr_01D_53B2:
    ret nz

    jr nc, jr_01D_53B5

jr_01D_53B5:
    ldh a, [$C0]
    jr nc, jr_01D_53A1

    ld d, b
    ldh a, [$A8]
    db $F4
    add sp, -$08
    db $F4
    nop
    inc bc
    nop
    inc bc
    dec b
    ld [bc], a
    nop
    rlca
    add hl, bc
    ld b, $03
    dec c
    rla
    dec bc
    rlca
    dec de
    ld hl, sp+$74
    ld [hl], b
    adc h
    nop
    db $FC
    ld h, b
    sbc h
    db $F4
    ld l, b
    add sp, -$30
    ldh [$D0], a
    ldh [$D0], a
    sbc d
    inc b
    ld e, h
    add d
    ld e, [hl]
    add b
    adc h
    ld b, b
    ld h, b
    nop
    ldh a, [rP1]
    jp $1F03


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
    nop
    db $E3
    db $E3
    call nz, $C3C4
    jp $C0E0


    db $EC
    ldh [$F1], a
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $00
    rst $00
    inc hl
    inc hl
    jp $03C3


    inc bc
    rra
    inc bc
    rst $38
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$74
    ld [hl], b
    adc h
    nop
    db $FC
    ld h, b
    sbc h
    db $F4
    ld l, b
    add sp, -$30
    add sp, -$30
    add sp, -$30
    rra
    ld l, $0E
    ld sp, $3F00
    add $39
    rst $28
    ld d, $F7
    dec bc
    rst $30
    dec bc
    rst $30
    dec bc
    nop
    ret nz

    nop
    ret nz

    or b
    ld b, b
    rra
    ldh [$9F], a
    ld h, b
    rst $08
    or b
    rst $28
    ret nc

    rst $20
    ret c

    rst $20
    add hl, de
    jp $C03C


    ccf
    add e
    ld a, h
    rlca
    ld sp, hl
    add a
    ld a, e
    rrca
    rst $30
    adc a
    ld [hl], e
    rlca
    add hl, de
    inc bc
    inc a
    ld b, b
    ccf
    add e
    ld a, h
    rlca
    ld sp, hl
    add a
    ld a, e
    rrca
    rst $30
    adc a
    ld [hl], e
    ld b, a
    cp b
    sub b
    ld l, a
    db $EB
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, a
    cp b
    sub b
    ld l, a
    ld l, e
    inc d
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
    rlca
    nop
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rra
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
    nop
    nop
    nop
    ld bc, $0700
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    nop
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    add b
    cp $80
    db $FC

jr_01D_553B:
    add b
    rst $38
    ld a, b
    ret nc

    nop
    cp $80
    db $FC
    add b
    db $FD
    ld b, b
    db $E3
    ld h, b
    ld a, [hl]
    jr nc, jr_01D_553B

    nop
    add b
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld a, a
    rst $38
    db $10
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, c
    rst $38
    ld h, e
    rst $38
    ld a, a
    rst $38
    ldh a, [rIE]
    ret z

    rst $38
    adc b
    rst $38
    add hl, bc
    rst $38
    rra
    rst $38
    ld [hl-], a
    rst $38
    ld [c], a
    rst $38
    pop bc
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ldh a, [rIE]
    db $10
    rst $38
    adc b
    rst $38
    ld a, a
    rst $38
    pop hl
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    ld hl, sp-$10
    ld hl, sp+$10
    ld hl, sp-$78
    ld hl, sp+$78
    ld hl, sp-$20
    db $FC
    ld b, b
    db $FC
    add b
    db $FC
    add b
    rra
    add hl, bc
    rra
    rra
    rra
    ld [de], a
    rra
    ld [bc], a
    rra
    ld bc, $203F
    ccf
    jr nz, @+$41

    db $10
    cp $80
    cp $80
    cp $40
    db $FC
    ld h, b
    db $FC
    ld a, h
    db $FC
    ldh a, [$FC]
    ret z

    db $FC
    adc b
    ld a, a
    ccf
    ld a, a
    ld h, b
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    ccf
    ccf
    db $10
    db $FD
    ldh a, [$F9]
    db $10
    ld sp, hl
    adc b
    ld hl, sp+$78
    db $FC
    ldh [$FC], a
    ld b, b
    cp $80
    rst $38
    add b
    cp a
    add hl, bc
    sbc a
    rra
    sbc a
    ld [de], a
    rra
    ld [bc], a
    ccf
    ld bc, $203F
    ld a, a
    jr nz, @+$01

    db $10
    rst $38
    add hl, bc
    rst $38
    rra
    rst $38
    ld [hl-], a
    rst $38
    ld [c], a
    rst $38
    pop bc
    pop af
    ld h, b
    ret nz

    nop
    add a
    nop
    cp $80
    cp $80
    cp $40
    db $FC
    ld h, b
    db $FC
    ld a, h
    db $FC
    ldh a, [$FC]
    ret z

    db $FC
    adc b
    rst $38
    add hl, bc
    rst $38
    rra
    rst $38
    ld [hl-], a
    rst $38
    ld [c], a
    rst $38
    pop bc
    rst $38
    ld h, b
    ldh [rNR41], a
    nop
    nop
    db $FC
    ldh a, [$F8]
    db $10
    ld hl, sp-$78
    ldh a, [rSVBK]
    ldh [$E0], a
    ret nz

    ld b, b
    nop
    nop
    nop
    nop
    ld a, a
    ccf
    ld a, a
    ld h, b
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    ccf
    ccf
    db $10
    ccf
    add hl, bc
    rra
    rra
    rra
    ld [de], a
    rrca
    ld [bc], a
    rlca
    ld bc, $0003
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rIE]
    db $10
    rst $38
    adc b
    rst $38
    ld a, a
    rst $38
    pop hl
    rst $38
    ld b, b
    rlca
    nop
    nop
    nop
    rst $38
    add hl, bc
    rst $38
    rra
    rst $38
    ld [hl-], a
    rst $38
    ld [c], a
    rst $38
    pop bc
    di
    ld h, b
    add c
    nop
    ld b, $00
    rst $38
    ldh a, [rIE]
    db $10
    rst $38
    adc b
    rst $38
    ld a, a
    rst $38
    pop hl
    rst $08
    ld b, b
    add c
    add b
    ldh [$80], a
    ld a, a
    add hl, bc
    cp a
    rra
    sbc a
    ld [de], a
    rra
    ld [bc], a
    ccf
    ld bc, $203F
    ccf
    jr nz, jr_01D_570E

    db $10
    cp $F0
    db $FD
    db $10
    ld sp, hl
    adc b
    ld hl, sp+$78
    db $FC
    ldh [$FC], a
    ld b, b
    db $FC
    add b
    cp $80
    rst $38
    ldh a, [rIE]
    db $10
    rst $38
    adc b
    rst $38
    ld a, a
    rst $38
    pop hl
    rst $38
    ld b, b
    rlca
    nop
    nop
    nop
    rst $38
    add hl, bc
    rst $38
    rra
    rst $38
    ld [hl-], a
    rst $38
    ld [c], a
    rst $38
    pop bc
    ldh [$60], a
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rIE]
    db $10
    rst $38
    adc b
    rst $38
    ld a, a
    rst $38
    pop hl
    rst $38
    ld b, b
    rrca
    nop
    nop
    nop
    add a
    rlca
    ret nz

    ld b, b
    pop af
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld a, a
    rst $38
    stop
    nop
    rlca
    nop
    rst $38
    ld b, c
    rst $38
    ld h, e
    rst $38
    ld a, a
    rst $38
    ldh a, [rIE]
    ret z

    rst $38
    adc b
    nop
    nop
    nop

Call_01D_56F3:
    nop
    ldh [$80], a
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld a, a
    rst $38
    stop
    nop
    rrca
    nop
    rst $38
    ld b, c
    rst $38
    ld h, e
    rst $38
    ld a, a
    rst $38
    ldh a, [rIE]
    ret z

jr_01D_570E:
    rst $38
    adc b
    rst $38
    add hl, bc
    rst $38
    rra
    rst $38
    ld [hl-], a
    rst $38
    ld [c], a
    rst $38
    pop bc
    rst $38
    ld h, b
    ldh a, [rNR41]
    nop
    nop
    rst $38
    ldh a, [rIE]
    db $10
    rst $38
    adc b
    rst $38
    ld a, a
    rst $38
    pop hl
    rlca
    nop
    nop
    nop
    nop
    nop
    rst $38
    add hl, bc
    rst $38
    rra
    rst $38
    ld [hl-], a
    rst $38
    ld [c], a
    rst $38
    pop bc
    rst $38
    ld h, b
    ldh [rNR41], a
    nop
    nop
    rst $38
    ldh a, [rIE]
    db $10
    rst $38
    adc b
    rst $38
    ld a, a
    rst $38
    pop hl
    adc a
    nop
    inc bc
    nop
    pop hl
    add b
    nop
    nop
    ldh a, [$60]
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld a, a
    rst $38
    stop
    nop
    nop
    nop
    rlca
    ld bc, $63FF
    rst $38
    ld a, a
    rst $38
    ldh a, [rIE]
    ret z

    rst $38
    adc b
    nop
    nop
    ldh [$60], a
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld a, a
    rst $38
    db $10
    pop hl
    add b
    inc bc
    nop
    adc a
    ld bc, $63FF
    rst $38
    ld a, a
    rst $38
    ldh a, [rIE]
    ret z

    rst $38
    adc b
    rst $38
    ccf
    rst $38
    ld h, b
    di
    add b
    ldh a, [$80]
    ld hl, sp-$80
    adc b
    add b
    db $F4
    ld h, b
    di
    db $10
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, c
    di
    ld h, e
    ld a, a
    ld sp, $0023
    daa
    nop
    rst $00
    nop
    ld hl, sp+$08
    ld hl, sp+$10
    pop af
    jr nc, @-$0B

    ld [c], a
    or $C0
    rst $38
    ld h, b
    ei
    jr nz, @+$01

    db $10
    rrca
    nop
    add a
    nop
    jp $F700


    rlca
    ld a, a
    ld a, c
    sbc a
    add b
    rst $38
    add b
    rst $38
    add b
    ccf
    add hl, bc
    ld bc, $B301
    nop

jr_01D_57D6:
    ld b, a
    nop
    ld bc, $6001
    ld b, b

jr_01D_57DC:
    ld h, a
    jr nz, jr_01D_57D6

    db $10
    cp a
    add b
    sbc c
    add b
    pop bc
    ld b, c
    add e
    nop
    ld de, $2000
    jr nz, jr_01D_57DC

    ret z

    rst $28
    adc b
    ccf
    nop
    sbc c
    add b
    add c
    ld bc, $43E7
    add c
    ld bc, $0000
    ld h, a
    ld b, b
    rst $20
    add b
    adc h
    db $FC
    ld [bc], a
    cp $C7
    rst $38
    db $FC
    db $FC
    ldh a, [$F0]
    ld bc, $D801
    ret nz

    ccf
    nop
    ld bc, $1601
    ld d, $68
    ld a, b
    add l
    cp h
    push bc
    db $FC
    db $EB
    ld hl, sp+$07
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $FF
    ld b, $FF
    inc c
    rst $38
    ld sp, hl
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld b, $FF
    inc c
    rst $38
    jr @+$01

jr_01D_584C:
    db $10
    rst $38
    ld h, d
    rst $38
    add e
    rst $38

jr_01D_5852:
    ld [bc], a
    cp $06
    cp $04
    db $FC
    jr jr_01D_5852

    jr nc, jr_01D_584C

    ret nz

    ret nz

    add b
    add b
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
    ld [bc], a
    cp $04
    db $FC
    inc c
    db $FC
    sbc [hl]
    cp $FA
    cp $72
    cp $76
    cp $2C
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

jr_01D_588A:
    ld bc, $00FF
    rst $38
    nop
    rst $38
    jr c, jr_01D_588A

    add hl, sp
    ld sp, hl
    ld a, c
    ld sp, hl
    ld l, c
    ld sp, hl
    call z, $04FC
    db $FC
    ld [bc], a
    cp $02
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
    nop
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

jr_01D_58BC:
    nop
    rst $38
    inc b
    rst $38
    db $10
    rst $38
    inc e
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rra
    rst $38
    jr nc, jr_01D_58BC

    ret nz

    ret nz

    ld c, $0E
    jr @+$01

    ld [hl], b
    rst $38
    ldh a, [rIE]
    ld a, b
    rst $38
    sbc h
    rst $38
    adc $FF
    ld a, c
    ld a, c
    nop
    nop
    ld bc, $0201
    inc bc
    inc e
    inc e
    ld a, [hl]
    ld a, [hl]
    jp $81FF


    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    db $FC
    rlca
    rst $38
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    inc de
    inc de
    ret z

    rst $08
    ld l, b
    rst $28
    db $E4
    rst $20
    inc bc
    rst $38
    ccf
    ccf
    rrca
    rrca
    add b
    add b
    rst $18
    rst $18
    add a
    add a
    inc hl
    inc hl
    jr nc, jr_01D_5940

    xor $EF
    db $DB
    rst $18
    ld sp, $613F
    ld a, a
    jp $FCFF


    db $FC
    ldh a, [$F0]
    inc bc
    inc bc
    sbc e
    ei
    ld h, b
    ld h, b
    inc c
    inc c
    ld a, $3E
    ld a, [$F8FE]
    db $FC
    sub h
    db $FC
    ld l, b
    ld hl, sp-$60
    ldh [$CE], a
    adc $1E
    ld e, $28
    inc a
    ld b, l
    ld a, l
    add l
    db $FD
    ret z

    ld hl, sp+$70
    ld [hl], b

jr_01D_5940:
    db $E3
    db $E3
    rrca
    rrca
    ld a, [$A0FF]
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    ld e, $1E
    nop
    nop
    ld b, $06
    adc h
    adc [hl]
    sbc c
    sbc [hl]
    sbc c
    sbc h
    adc e
    adc b
    ld h, a
    ld h, b
    rst $18
    ret nz

    ccf
    nop
    rlca
    rlca
    ld [hl], e
    ld [hl], e
    ld a, b
    ld a, b
    inc d
    inc a
    ld [hl+], a
    ld a, $21
    ccf
    inc de
    rra
    ld c, $0E
    ret z

    ret z

    ld b, $06
    jr nc, jr_01D_59A6

    ld a, h
    ld a, h
    ld e, a
    ld a, a
    rra
    ccf
    add hl, hl
    ccf
    ld d, $1F
    ld h, b
    ld h, b
    ld sp, $1971
    ld a, c
    sbc c
    add hl, sp
    pop de
    ld de, $06E6
    ei
    inc bc
    db $FC
    nop
    rst $00
    rst $00
    ldh a, [$F0]
    ld e, a
    rst $38
    dec b
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    ld a, b
    ld a, b
    nop
    nop
    jr jr_01D_59E0

    jr nc, jr_01D_5A22

    ld h, b
    ld [hl], b

jr_01D_59A6:
    nop
    ld l, [hl]
    inc c
    rra
    jr jr_01D_59EB

    jr nc, jr_01D_5A2C

    ld b, b
    ld a, h
    or b
    rst $38
    ld c, h
    ld a, a
    ld h, b
    ld a, a
    ld [hl], b
    ld a, a
    ccf
    ccf
    ld a, [de]
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    inc bc
    rlca
    rlca
    rrca
    ld c, $1F
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$E0]
    ld sp, hl
    pop bc
    di
    inc bc
    rst $20
    inc b
    rrca
    nop
    inc c
    ret nz

    nop
    ldh [rP1], a

jr_01D_59E0:
    dec c
    rst $38
    ld [hl-], a
    cp $06
    cp $0E
    cp $FC
    db $FC
    ld e, b

jr_01D_59EB:
    ld e, b
    nop
    nop
    nop
    nop
    jr jr_01D_5A6E

jr_01D_59F2:
    inc c
    ld a, [hl]
    ld b, $0E
    nop
    halt
    jr nc, jr_01D_59F2

jr_01D_59FA:
    add hl, de
    db $FC
    inc c
    ld a, [hl]
    ld [bc], a
    ld a, $00
    rrca
    rlca
    sbc a
    add e
    rst $08
    ret nz

    rst $20
    jr nz, jr_01D_59FA

    nop
    jr nc, jr_01D_5A10

    nop
    rlca
    nop

jr_01D_5A10:
    nop

jr_01D_5A11:
    adc [hl]
    ret nz

    ldh [$E2], a
    ldh a, [$73]
    ld hl, sp+$01
    db $FC
    nop
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop

jr_01D_5A22:
    nop
    jr c, jr_01D_5A5D

    ld a, h
    jr nc, @+$7E

    nop
    inc a
    nop
    nop

jr_01D_5A2C:
    ret nz

    nop
    add b
    ld b, $80
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld d, b
    ld a, a
    inc c
    ld a, $38
    ld a, [hl]
    nop
    inc e
    ret nz

    nop
    add b
    nop
    db $10
    inc a
    jr nz, jr_01D_5ABE

    nop
    ld c, h
    ld h, b
    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ret z

jr_01D_5A5D:
    rst $38
    add b
    rst $38
    nop
    nop
    nop
    jr c, jr_01D_5A9D

    ld a, h
    jr nc, jr_01D_5AE4

    nop
    inc a
    nop
    nop
    ret nz

    nop

jr_01D_5A6E:
    add b
    ld b, $32
    inc c
    ld b, [hl]
    jr c, jr_01D_5A11

    add b
    ldh [$E0], a
    ret nz

    ret nz

    xor h
    sub b
    ld d, b
    jr nz, jr_01D_5ACB

    nop
    ld b, c
    ld a, a
    ld c, l
    ld a, a
    ld h, a
    ld a, a
    jr z, jr_01D_5AB6

    ld de, $3D1F
    ccf
    ccf
    ccf
    ld e, [hl]
    ld e, [hl]
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    ldh a, [rIE]
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld l, b

jr_01D_5A9D:
    ld a, a
    ld [hl], $3F
    ld h, b
    ld h, b
    ld sp, $1971
    ld a, c
    add hl, de
    add hl, sp
    ld de, $4611
    ld b, [hl]
    ld b, e
    ld b, e
    jr nz, jr_01D_5B10

    ret c

    rst $18
    rst $20
    rst $20
    add b
    ld sp, hl

jr_01D_5AB6:
    ret nz

    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    ld a, a
    ld a, a

jr_01D_5ABE:
    nop
    nop
    nop
    ld a, a
    nop
    ret nz

    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a

jr_01D_5ACB:
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    cp $00
    inc bc
    db $FC
    db $FD
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    ccf
    rst $38
    nop
    ld a, a

jr_01D_5AE4:
    nop
    nop
    ccf
    ccf
    ld a, a
    ld a, a
    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    db $FC
    rst $38
    nop
    cp $00
    nop
    db $FC
    db $FC
    cp $FE
    db $FC
    cp $00
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
    nop
    rst $38
    nop
    rst $38

jr_01D_5B10:
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $FF
    ld b, $FF
    inc c
    rst $38
    ld sp, hl
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    ld a, $FF
    ld e, h
    rst $38
    jp $81C3


    add c
    jr jr_01D_5B46

    ld h, $3E
    ld bc, $00FF
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $FC
    db $FC
    nop
    nop
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38

jr_01D_5B46:
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    sbc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld b, $FF
    inc c
    rst $38
    jr @+$01

    db $10
    rst $38
    ld h, d
    rst $38
    add e
    rst $38
    ld [bc], a
    cp $06
    cp $04
    db $FC
    add hl, de
    ld sp, hl
    ld [hl-], a
    di
    call nz, $9FC7

Jump_01D_5B7F:
    sbc a
    jr nc, jr_01D_5BC1

    inc c
    rrca
    ld h, e
    ld h, e
    cp b
    ld hl, sp+$16
    or $31
    rst $30
    db $ED
    rst $28
    add d
    add d
    cp $FE
    inc b
    db $FC
    ld sp, hl
    ld sp, hl
    inc bc
    inc bc
    cp l
    db $FD
    ld b, h
    ld a, h
    add hl, sp
    add hl, sp
    ld bc, $C101
    rst $38
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    jr nz, jr_01D_5BE7

    jr jr_01D_5BC9

    inc c
    rrca
    add e
    add e
    ld b, c
    pop bc
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    jr @+$01

    ld [$46FF], sp
    rst $38
    ld [bc], a

jr_01D_5BC1:
    cp $04
    db $FC
    inc c
    db $FC
    sbc [hl]
    cp $FA

jr_01D_5BC9:
    cp $72
    cp $76
    cp $2C
    db $FC
    nop
    nop
    rra
    rra
    jr nz, @+$41

    ld b, a
    ld a, a
    ld l, h
    ld a, h
    jr c, jr_01D_5C14

    nop
    nop
    nop
    nop
    jr c, jr_01D_5C1A

    inc sp
    di
    rst $20
    rst $20
    inc bc

jr_01D_5BE7:
    inc bc
    jr c, jr_01D_5C22

    ld [hl], b
    ld [hl], b
    inc b
    inc b
    nop
    nop
    ld [hl], c
    ld [hl], c
    inc a
    inc a
    sbc b
    sbc b
    nop
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
    ldh a, [$8A]
    ld a, [$7676]
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
    ld a, a
    jr nz, jr_01D_5C53

jr_01D_5C14:
    jr nc, jr_01D_5C55

    ld a, c
    ld a, a
    ld e, a
    ld a, a

jr_01D_5C1A:
    ld c, [hl]
    ld a, a

jr_01D_5C1C:
    ld l, [hl]
    ld a, a
    inc [hl]
    ccf
    jr c, jr_01D_5C1A

jr_01D_5C22:
    jr c, jr_01D_5C1C

    ld a, b
    ld hl, sp+$68
    ld hl, sp-$34
    db $FC
    inc b
    db $FC
    ld [bc], a
    cp $02
    cp $63
    rst $38
    db $10
    rst $38
    jr @+$01

jr_01D_5C36:
    inc c
    rst $38
    ld b, $FF
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38

jr_01D_5C40:
    add b
    add b
    ret nz

    ret nz

    jr nc, jr_01D_5C36

    jr jr_01D_5C40

    inc b
    db $FC
    ld b, $FE
    ld [bc], a
    cp $83
    rst $38
    nop
    rst $38
    nop

jr_01D_5C53:
    rst $38
    nop

jr_01D_5C55:
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc d
    rst $30
    call z, $1FCF
    rra
    ld sp, hl
    rst $38
    inc c
    rst $38
    ld b, $FF
    ld b, $FF
    ld [bc], a
    rst $38
    ld bc, $06FF
    rst $38
    rst $38
    rst $38
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    ld b, c
    ld a, a
    ld c, l
    ld a, a
    ld h, a
    ld a, a
    jr z, jr_01D_5CB6

    ld de, $3D1F
    ccf
    ccf
    ccf
    ld e, [hl]
    ld e, [hl]
    inc c
    db $FC
    ld b, $FE
    adc e
    rst $38
    pop af
    rst $38
    ld d, c
    ld a, a
    ld d, c
    ld a, a
    ld l, c
    ld a, a
    scf
    ccf
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $0709
    inc de
    rrca
    dec d
    rrca
    rla
    rrca
    nop
    nop
    ccf
    nop
    ret nz

    ccf

jr_01D_5CB6:
    cpl
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, b
    ld h, b
    ld sp, $1971
    ld a, c
    add hl, de
    add hl, sp
    ld de, $4611
    ld b, [hl]
    ld b, e
    ld b, e
    jr nz, jr_01D_5D30

    ret c

    sbc $E6
    and $80
    ld hl, sp-$3E
    cp $E4
    db $FC
    db $FC
    db $FC
    ld a, b
    ld a, b
    nop
    nop
    daa
    rra
    inc hl
    rra
    add hl, hl
    rra
    ld e, a
    ccf
    ld c, a
    ccf
    daa
    rra
    cpl
    rra
    cpl
    rra
    nop
    nop
    ld a, b
    ld a, b
    rst $38
    rst $38
    pop hl
    rst $38
    ret nz

    rst $38
    sbc c
    ld sp, hl
    rst $20
    rst $20
    reti


    rst $18
    nop
    nop
    ld a, $3E
    jp $01FF


    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    cp $FE
    ret nz

    ret nz

    cpl
    rra
    cpl
    rra
    cpl
    rra
    ld l, a
    rra
    ld c, a
    ccf
    ld e, a
    ccf
    adc a
    ld a, a
    or a
    ld a, a
    rrca
    rrca
    rra
    rra
    ld d, $1E
    jr nz, jr_01D_5D64

    jr nz, jr_01D_5D66

    inc d
    inc e
    ld l, b
    ld l, b
    add b
    add b

jr_01D_5D30:
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    add hl, bc
    rlca
    inc sp
    rrca
    ld c, l
    ccf
    sbc a
    ld a, a
    rra
    rst $38
    cp a
    ld a, a
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
    ld b, $01
    add hl, bc
    rlca
    inc de
    rrca
    dec d
    rrca
    rla
    rrca
    daa
    rra
    inc hl
    rra
    add hl, hl
    rra
    cpl
    rst $38
    cp a
    rst $38

jr_01D_5D64:
    rst $38
    rst $38

jr_01D_5D66:
    rst $38
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
    ccf
    ld c, a
    ccf
    daa
    rra
    cpl
    rra
    cpl
    rra
    cpl
    rra
    daa
    rra
    ld b, e
    ccf
    rrca
    rst $38
    ldh a, [rIE]
    ld l, [hl]
    sub c
    ld a, c
    cp $8F
    rst $38
    ld h, b
    rst $38
    inc a
    rst $38
    inc bc
    db $FC
    sbc [hl]
    pop hl
    ld a, c
    rst $38
    ld h, h
    sbc a
    cp [hl]
    ld a, a
    db $EC
    di
    jr @+$01

    pop hl
    rst $38
    sbc c
    ld a, [hl]
    nop
    rst $38
    ld hl, sp-$19
    ccf
    ld hl, sp+$77
    adc a
    inc c
    di
    rrca
    rst $38
    ld [hl], e
    db $FC
    inc c
    rst $38
    ld b, $F9
    pop af
    rst $38
    sbc $3F
    or c
    rst $08
    ld a, [hl]
    rst $38
    inc e
    db $E3
    db $EC
    rra
    inc bc
    rst $38
    nop
    nop
    ld hl, sp+$00
    rlca
    ld hl, sp-$40
    rst $38
    rst $20
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    db $FD
    nop
    ld b, $F9
    ret


    rst $30
    rst $28
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    or $FF
    inc c
    rst $38
    pop bc
    rst $38
    db $E3
    rst $38
    add [hl]
    rst $38
    inc c
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    add sp, -$01
    di
    rst $38
    adc b
    rst $38
    ld a, h
    rst $38
    add b
    rst $38
    nop
    nop
    dec bc
    nop
    ld sp, $660F
    rra
    ld c, e
    ccf
    ld e, a
    ccf
    rra
    ccf
    rra
    ccf
    nop
    nop
    ret c

    nop
    xor h
    ret nc

    sub $F8
    ld a, [c]
    db $FC
    ld a, [$F8FC]
    db $FC
    ld hl, sp-$04
    nop
    nop
    dec bc
    nop
    ld sp, $660F
    rra
    ld c, e
    ccf
    ld e, a
    ccf
    rra
    ccf
    rra
    ccf
    nop
    nop
    ret c

    nop
    xor h
    ret nc

    sub $F8
    ld a, [c]
    db $FC
    ld a, [$F8FC]
    db $FC
    ld hl, sp-$04
    ld e, a
    ccf
    ld c, a
    ccf
    daa
    rra
    cpl
    rra
    cpl
    rra
    cpl
    rra
    daa
    rra
    ld b, a
    ccf
    ld a, [$F2FC]
    db $FC
    db $E4
    ld hl, sp-$0C
    ld hl, sp-$0C
    ld hl, sp-$0C
    ld hl, sp-$1C
    ld hl, sp-$1E
    db $FC
    rra
    rra
    rst $00
    rlca
    db $E3
    inc bc
    ld [hl], c
    add c
    inc a
    ret nz

    ld c, [hl]
    or b
    rlca
    ld hl, sp+$07
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
    ccf
    ccf
    sbc a
    rra
    rst $08
    rrca
    ld b, a
    ccf
    ld e, e
    daa
    ld h, c
    rra
    ld b, d
    ld bc, $030D
    ld d, e
    rrca
    rla
    rrca
    jr z, jr_01D_5EAF

    ld a, [$F9FC]
    cp $FC
    rst $38
    ld sp, hl
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
    nop
    cp a
    nop
    ld h, b
    sbc a
    sub e
    rst $28
    rst $30
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38

jr_01D_5EAF:
    rst $38
    nop
    nop
    inc e
    nop
    and $18
    ld [bc], a
    db $FC
    ld [c], a
    db $FC
    or $F8
    db $F4
    ld hl, sp-$06
    db $FC
    ld e, a
    ccf
    ld c, a
    ccf
    daa
    rra
    cpl
    rra
    cpl
    rra
    cpl
    rra
    daa
    rra
    ld b, a
    ccf
    ld a, [$F2FC]
    db $FC
    db $E4
    ld hl, sp-$0C
    ld hl, sp-$0C
    ld hl, sp-$0C
    ld hl, sp-$1C
    ld hl, sp-$1E
    db $FC
    ld h, [hl]
    rra
    dec l
    ld e, $2D
    ld e, $1D
    ld a, $6D
    ld e, $45
    ld a, $6B
    ld [hl], $75
    ld [hl+], a
    call nc, Call_01D_7678
    ld e, b
    ld l, d
    ld e, h
    inc d
    ld l, [hl]
    ld a, [hl+]
    ld h, h
    inc h
    ld [hl], d
    ld a, [hl+]
    ld [hl], b
    ld e, d
    jr nc, jr_01D_5F50

    ccf
    ld e, a
    ccf
    ld l, a
    rra
    scf
    rrca
    rrca
    rlca
    scf
    rrca
    ld h, a
    rra
    ld c, a
    ccf
    ld a, [c]
    db $FC
    ld a, [$F6FC]
    ld hl, sp-$14
    ldh a, [$C0]
    ldh a, [$EC]
    ldh a, [$E6]
    ld hl, sp-$0E
    db $FC
    ld c, a
    ccf
    ld e, a
    ccf
    dec a
    ld a, a
    rlca
    ld a, a
    ld d, e
    ccf
    ld l, $1B
    ld e, e
    nop
    ld h, h
    nop
    ld a, [c]
    db $FC
    ld a, [$F8FC]
    cp $F4
    cp $5A
    db $FC
    xor h
    ret c

    jp c, $2600

    nop
    ld c, a
    ccf
    ld e, a
    ccf
    ld l, a
    rra
    scf
    rrca
    rrca
    rlca
    scf
    rrca
    ld h, a
    rra
    ld c, a
    ccf

jr_01D_5F50:
    ld a, [c]
    db $FC
    ld a, [$F6FC]
    ld hl, sp-$14
    ldh a, [$C0]
    ldh a, [$EC]
    ldh a, [$E6]
    ld hl, sp-$0E
    db $FC
    rst $38
    rst $38
    db $FC
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rst $20
    rlca
    ld [hl], e
    add e
    add hl, sp
    pop bc
    ld e, c
    and c
    add hl, de
    pop hl
    dec e
    pop hl
    inc a
    ret nz

    ld l, h
    sub b
    jr nc, jr_01D_5F9E

    ld sp, $2218
    add hl, de
    db $10
    dec hl
    ld c, e
    jr nc, jr_01D_5FE4

    ld [hl+], a
    ld l, e
    db $10
    ld a, e
    nop
    ld a, a
    rst $38
    rlca
    rst $38
    add hl, sp
    cp a
    inc c
    ld [hl], e
    dec hl
    ld b, a
    ld d, [hl]
    rrca
    sub b
    ld c, a

jr_01D_5F9E:
    ld d, h
    add hl, bc
    ld hl, sp-$01
    rst $38
    rst $38
    ld hl, sp-$01
    rla

jr_01D_5FA7:
    rst $38
    rst $08
    rst $38
    ld de, $3EFF
    rst $38
    ld bc, $D0FF
    db $FC
    db $F4
    ld hl, sp+$6C
    ld hl, sp+$32
    db $FC
    add d
    db $FC
    call nz, Call_01D_64F8
    ld hl, sp+$32
    db $FC
    dec sp
    rra
    ld a, a

Jump_01D_5FC3:
    ccf
    halt
    rra
    ld e, h
    cpl
    ld bc, $233F
    rra
    ld h, $1F
    ld c, h
    ccf
    ld [de], a
    db $FC
    ld a, [$14FC]
    ld hl, sp-$16
    db $FC
    or $F8
    adc [hl]
    ld hl, sp+$7C
    ld hl, sp-$80
    db $FC
    ld d, l
    ld [hl+], a
    ld h, l
    ld [bc], a

jr_01D_5FE4:
    ld a, [hl+]
    ld b, h
    ld e, c
    inc b
    dec [hl]
    ld [$0815], sp
    add hl, hl
    nop
    nop
    nop
    ld e, b
    ld [hl-], a
    ld e, d
    jr nc, jr_01D_5FA7

    ld e, b
    sub d
    ld c, b
    ld [de], a
    ret z

    ld d, d
    adc b
    or b
    ld [$0028], sp
    adc h
    db $FC
    ld [bc], a
    cp $C7
    rst $38
    db $FC
    db $FC
    ldh a, [$F0]
    ld bc, $D801
    ret nz

    ccf
    nop
    ld bc, $1601
    ld d, $68
    ld a, b
    add l
    cp h
    push bc
    db $FC
    db $EB
    ld hl, sp+$07
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $FF
    ld b, $FF
    inc c
    rst $38
    ld sp, hl
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld b, $FF
    inc c
    rst $38
    jr @+$01

jr_01D_604C:
    db $10
    rst $38
    ld h, d
    rst $38
    add e
    rst $38

jr_01D_6052:
    ld [bc], a
    cp $06
    cp $04
    db $FC
    jr jr_01D_6052

    jr nc, jr_01D_604C

    ret nz

    ret nz

    add b
    add b

Call_01D_6060:
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
    ld [bc], a
    cp $04
    db $FC
    inc c
    db $FC
    sbc [hl]
    cp $FA
    cp $72
    cp $76
    cp $2C
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

jr_01D_608A:
    ld bc, $00FF
    rst $38
    nop
    rst $38
    jr c, jr_01D_608A

    add hl, sp
    ld sp, hl
    ld a, c
    ld sp, hl
    ld l, c
    ld sp, hl
    call z, $04FC
    db $FC
    ld [bc], a
    cp $02
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
    nop
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

jr_01D_60BC:
    nop
    rst $38
    inc b
    rst $38
    db $10
    rst $38
    inc e
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rra
    rst $38
    jr nc, jr_01D_60BC

    ret nz

    ret nz

    ld c, $0E
    jr @+$01

    ld [hl], b
    rst $38
    ldh a, [rIE]
    ld a, b
    rst $38
    sbc h
    rst $38
    adc $FF
    ld a, c
    ld a, c
    nop
    nop
    ld bc, $0201
    inc bc
    inc e
    inc e
    ld a, [hl]
    ld a, [hl]
    jp $81FF


    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    db $FC
    rlca
    rst $38
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    inc de
    inc de
    ret z

    rst $08
    ld l, b
    rst $28
    db $E4
    rst $20
    inc bc
    rst $38
    ccf
    ccf
    rrca
    rrca
    add b
    add b
    rst $18
    rst $18
    add a
    add a
    inc hl
    inc hl
    jr nc, jr_01D_6140

    xor $EF
    db $DB
    rst $18
    ld sp, $613F
    ld a, a
    jp $FCFF


    db $FC
    ldh a, [$F0]
    inc bc
    inc bc
    sbc e
    ei
    ld h, b
    ld h, b
    inc c
    inc c
    ld a, $3E
    ld a, [$F8FE]
    db $FC
    sub h
    db $FC
    ld l, b
    ld hl, sp-$60
    ldh [$CE], a
    adc $1E
    ld e, $28
    inc a
    ld b, l
    ld a, l
    add l
    db $FD
    ret z

    ld hl, sp+$70
    ld [hl], b

jr_01D_6140:
    db $E3
    db $E3
    rrca
    rrca
    ld a, [$A0FF]
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    ld e, $1E
    nop
    nop
    ld b, $06
    adc h
    adc [hl]
    sbc c
    sbc [hl]
    sbc c
    sbc h
    adc e
    adc b
    ld h, a
    ld h, b
    rst $18
    ret nz

    ccf
    nop
    rlca
    rlca
    ld [hl], e
    ld [hl], e
    ld a, b
    ld a, b
    inc d
    inc a
    ld [hl+], a
    ld a, $21
    ccf
    inc de

Jump_01D_616D:
    rra
    ld c, $0E
    ret z

    ret z

    ld b, $06
    jr nc, jr_01D_61A6

    ld a, h
    ld a, h
    ld e, a
    ld a, a
    rra
    ccf
    add hl, hl
    ccf
    ld d, $1F
    ld h, b
    ld h, b
    ld sp, $1971
    ld a, c
    sbc c
    add hl, sp
    pop de
    ld de, $06E6
    ei
    inc bc
    db $FC
    nop
    rst $00
    rst $00
    ldh a, [$F0]
    ld e, a
    rst $38
    dec b
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    ld a, b
    ld a, b
    nop
    nop
    or b
    rst $38
    ld c, h
    ld a, a
    ld h, b
    ld a, a

jr_01D_61A6:
    ld [hl], b
    ld a, a
    ccf
    ccf
    ld a, [de]
    ld a, [de]
    nop
    nop
    nop
    nop
    dec c
    rst $38
    ld [hl-], a
    cp $06
    cp $0E
    cp $FC
    db $FC
    ld e, b
    ld e, b
    nop
    nop
    nop
    nop
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld d, b
    ld a, a
    ld h, b
    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ret z

    rst $38
    add b
    rst $38
    ld b, c
    ld a, a
    ld c, l
    ld a, a
    ld h, a
    ld a, a
    jr z, jr_01D_6216

    ld de, $3D1F
    ccf
    ccf
    ccf
    ld e, [hl]
    ld e, [hl]
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    ldh a, [rIE]
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld l, b
    ld a, a
    ld [hl], $3F
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38

jr_01D_6216:
    ld [bc], a
    rst $38
    ld b, $FF
    ld b, $FF
    inc c
    rst $38
    ld sp, hl
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    ld a, $FF
    ld e, h
    rst $38
    jp $81C3


    add c
    jr jr_01D_6246

    ld h, $3E
    ld bc, $00FF
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $FC
    db $FC
    nop
    nop
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38

jr_01D_6246:
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    sbc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld b, $FF
    inc c
    rst $38
    jr @+$01

    db $10
    rst $38
    ld h, d
    rst $38
    add e
    rst $38
    ld [bc], a
    cp $06
    cp $04
    db $FC
    add hl, de
    ld sp, hl
    ld [hl-], a
    di
    call nz, $9FC7
    sbc a
    jr nc, jr_01D_62C1

    inc c
    rrca
    ld h, e
    ld h, e
    cp b
    ld hl, sp+$16
    or $31
    rst $30
    db $ED
    rst $28
    add d
    add d
    cp $FE
    inc b
    db $FC
    ld sp, hl
    ld sp, hl
    inc bc
    inc bc
    cp l
    db $FD
    ld b, h
    ld a, h
    add hl, sp
    add hl, sp
    ld bc, $6001
    ld h, b
    ld sp, $1971
    ld a, c
    add hl, de
    add hl, sp
    ld de, $4611
    ld b, [hl]
    ld b, e
    ld b, e
    jr nz, jr_01D_6310

    ret c

    rst $18
    rst $20
    rst $20
    add b
    ld sp, hl
    ret nz

    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop

jr_01D_62C1:
    ld a, a
    nop
    ret nz

    ccf
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
    nop
    cp $00
    inc bc
    db $FC
    db $FD
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    ccf
    rst $38
    nop
    ld a, a
    nop
    nop
    ccf
    ccf
    ld a, a
    ld a, a
    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    db $FC
    rst $38
    nop
    cp $00
    nop
    db $FC
    db $FC
    cp $FE
    db $FC
    cp $00
    db $FC
    nop
    nop
    db $10
    ldh a, [$8A]
    ld a, [$7676]
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

jr_01D_6310:
    ld b, b
    ld a, a
    jr nz, jr_01D_6353

    jr nc, jr_01D_6355

    ld a, c
    ld a, a
    ld e, a
    ld a, a

jr_01D_631A:
    ld c, [hl]
    ld a, a

jr_01D_631C:
    ld l, [hl]
    ld a, a
    inc [hl]
    ccf
    jr c, jr_01D_631A

    jr c, jr_01D_631C

    ld a, b
    ld hl, sp+$68
    ld hl, sp-$34
    db $FC
    inc b
    db $FC
    ld [bc], a
    cp $02
    cp $63
    rst $38
    db $10
    rst $38
    jr @+$01

jr_01D_6336:
    inc c
    rst $38
    ld b, $FF
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38

jr_01D_6340:
    add b
    add b
    ret nz

    ret nz

    jr nc, jr_01D_6336

    jr jr_01D_6340

    inc b
    db $FC
    ld b, $FE
    ld [bc], a
    cp $83
    rst $38
    nop
    rst $38
    nop

jr_01D_6353:
    rst $38
    nop

jr_01D_6355:
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc d
    rst $30
    call z, $1FCF
    rra
    ld sp, hl
    rst $38
    inc c
    rst $38
    ld b, $FF
    ld b, $FF
    ld [bc], a
    rst $38
    ld bc, $06FF
    rst $38
    rst $38
    rst $38
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    ld b, c
    ld a, a
    ld c, l
    ld a, a
    ld h, a
    ld a, a
    jr z, jr_01D_63B6

    ld de, $3D1F
    ccf
    ccf
    ccf
    ld e, [hl]
    ld e, [hl]
    inc c
    db $FC
    ld b, $FE
    adc e
    rst $38
    pop af
    rst $38
    ld d, c
    ld a, a
    ld d, c
    ld a, a
    ld l, c
    ld a, a
    scf
    ccf
    pop bc
    rst $38
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    jr nz, jr_01D_63E7

    jr jr_01D_63C9

    inc c
    rrca
    add e
    add e
    ld b, c
    pop bc
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38

jr_01D_63B6:
    ld h, b
    rst $38
    jr nc, @+$01

    jr @+$01

    ld [$46FF], sp
    rst $38
    ld [bc], a
    cp $04
    db $FC
    inc c
    db $FC
    sbc [hl]
    cp $FA

jr_01D_63C9:
    cp $72
    cp $76
    cp $2C
    db $FC
    nop
    nop
    rra
    rra
    jr nz, jr_01D_6415

    ld b, a
    ld a, a
    ld l, h
    ld a, h
    jr c, jr_01D_6414

    nop
    nop
    nop
    nop
    jr c, jr_01D_641A

    inc sp
    di
    rst $20
    rst $20
    inc bc

jr_01D_63E7:
    inc bc
    jr c, jr_01D_6422

    ld [hl], b
    ld [hl], b
    inc b
    inc b
    nop
    nop
    ld [hl], c
    ld [hl], c
    inc a
    inc a
    sbc b
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01D_6414:
    nop

jr_01D_6415:
    nop
    nop
    nop
    nop
    nop

jr_01D_641A:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01D_6422:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor [hl]
    ld bc, $039C
    xor e
    nop
    sbc [hl]
    ld bc, $8096
    ret


    add b
    ldh [$C0], a
    rst $38
    ldh [rIF], a
    rst $38
    ldh a, [rIE]
    ld l, [hl]
    sub c
    ld a, c
    cp $8F
    rst $38
    ld h, b
    rst $38
    inc a
    rst $38
    inc bc
    db $FC
    sbc [hl]
    pop hl
    ld a, c
    rst $38
    ld h, h
    sbc a
    cp [hl]
    ld a, a
    db $EC
    di
    jr @+$01

    pop hl
    rst $38
    sbc c
    ld a, [hl]
    nop
    rst $38
    ld hl, sp-$19
    ccf
    ld hl, sp+$77
    adc a
    inc c
    di
    rrca
    rst $38
    ld [hl], e
    db $FC
    inc c
    rst $38
    ld b, $F9
    pop af
    rst $38
    sbc $3F
    or c
    rst $08
    ld a, [hl]
    rst $38
    inc e
    db $E3
    db $EC
    rra
    inc bc
    rst $38
    nop
    nop
    ld hl, sp+$00
    rlca
    ld hl, sp-$40
    rst $38
    rst $20
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    db $FD
    nop
    ld b, $F9
    ret


    rst $30
    rst $28
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    or $FF
    inc c
    rst $38
    pop bc
    rst $38
    db $E3
    rst $38
    add [hl]
    rst $38
    inc c
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    add sp, -$01
    di
    rst $38
    adc b
    rst $38
    ld a, h
    rst $38
    add b
    rst $38
    ld h, b
    ld h, b
    ld sp, $1971
    ld a, c
    add hl, de
    add hl, sp
    ld de, $4611
    ld b, [hl]
    ld b, e
    ld b, e
    jr nz, @+$62

    ret c

    sbc $E6
    and $80
    ld hl, sp-$3E
    cp $E4
    db $FC

Jump_01D_64DA:
    db $FC

Jump_01D_64DB:
    db $FC
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    ld a, $3E
    jp $01FF


    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    cp $FE
    ret nz

    ret nz

    nop
    nop
    ld a, b
    ld a, b
    rst $38
    rst $38
    pop hl
    rst $38

Call_01D_64F8:
    ret nz

    rst $38
    sbc c
    ld sp, hl
    rst $20
    rst $20
    reti


    rst $18
    nop

Jump_01D_6501:
    rst $38
    ldh [$C7], a
    ld e, e
    add b
    dec hl
    sub e
    nop
    cp e
    inc bc
    cp c
    and l
    jr @+$56

    add hl, hl
    ld b, $F9
    ld sp, hl
    di
    call nc, $A121
    call z, $8A24
    ld e, [hl]
    nop
    jr nz, jr_01D_655E

    ld bc, $0060
    rst $38
    ret c

    rst $00
    cpl
    add b
    add a
    scf
    inc h
    ld d, c
    ld a, d
    nop
    inc b
    ld [bc], a
    add b
    ld b, $06
    ld sp, hl
    push hl
    db $E3
    jp c, $9501

    ret


    ld b, b
    db $DD
    ld b, b
    sbc l
    and l
    jr jr_01D_6569

    sub h
    db $10
    rst $20
    add sp, -$1D
    dec hl
    ldh [$65], a
    adc c
    inc h
    ret


    ld de, $52CC
    call z, $DE00
    ld b, $F9
    pop af
    rst $20
    jp z, $A323

    ret


    ld h, b
    call $DD00
    ret nc

    dec c

jr_01D_655E:
    dec d
    ret


    nop
    rst $38
    add sp, -$19
    rla
    ret nz

    ld b, a
    sub a
    inc b

jr_01D_6569:
    or e
    inc bc
    cp e
    dec bc
    or b
    jr z, @-$6B

    ld c, $E1
    pop de
    rst $00
    sub $07
    and c
    sub a
    ld h, $93
    adc b
    inc sp
    ld c, b
    inc sp
    inc bc
    ld a, e
    ld bc, $FAFE
    db $E4
    dec a
    ld hl, sp+$72
    adc c
    ld [$05F3], sp
    ld a, [c]
    ld [hl], d
    db $E4
    ld a, [bc]
    db $E4
    ld b, $79
    or c
    ccf
    ld a, $9F
    ld d, c
    adc a
    ld e, [hl]
    adc a
    inc l
    jp $678C


    sub a
    ld h, e
    ld h, b
    sbc [hl]
    adc l
    db $FC
    ld a, h
    ld sp, hl
    adc d
    pop af
    ld a, d
    pop af
    inc [hl]
    jp $E631


    jp hl


    add $80

jr_01D_65B1:
    ld a, a
    ld e, a
    daa
    cp h
    rra
    ld c, [hl]
    sub c
    db $10
    rst $08
    and b
    ld c, a
    ld c, [hl]
    daa
    ld d, b
    daa
    nop
    rst $38
    ld hl, sp-$19
    dec a
    ld hl, sp+$72
    adc b
    ld a, [bc]
    ldh a, [rTAC]
    ldh a, [$75]
    ld [c], a
    dec b
    ld [c], a
    ld b, $F9
    pop af
    rst $38
    sbc $3F
    or c
    ld c, a
    ld a, [hl]
    ccf
    dec a
    nop
    jr jr_01D_65E8

    ld a, [bc]
    ld bc, $FF00
    ld hl, sp-$1A
    ld a, $F8
    halt
    adc h

jr_01D_65E8:
    inc c
    ldh a, [$0C]
    ld hl, sp-$10
    ld a, b
    add hl, bc
    ld [hl], b
    ld b, [hl]
    add hl, sp
    or c
    ccf
    cp [hl]
    rra
    ld d, c
    rrca
    sbc $0F
    xor h
    ld b, e
    xor h
    ld c, a
    add e
    ld l, a
    ld a, c
    nop
    nop
    nop
    add b
    nop
    ld h, [hl]
    add b
    jp nz, $019A

    cp d
    jr jr_01D_65B1

    add a
    nop
    ld d, $61
    pop bc
    scf
    add h
    ld [hl], a
    or $07
    inc b
    inc bc
    ld [$F107], sp
    rrca
    sbc c
    ld a, [hl]
    ld l, b
    add [hl]
    db $E3
    db $EC
    ld h, c
    adc [hl]
    ld l, a
    ldh [$80], a
    ldh [rSVBK], a
    ldh [$3F], a
    ldh a, [$03]
    db $FC
    sbc [hl]
    nop
    nop
    nop
    ld bc, $6600
    ld bc, $5942
    add b
    ld e, l
    reti


    push bc
    and c
    ld b, b
    ld b, b
    sbc [hl]
    and h
    sbc d
    and a
    jr jr_01D_66B2

    inc d
    ld l, a
    db $10
    ld a, $00
    sbc h

jr_01D_664D:
    nop

jr_01D_664E:
    ld b, c
    add b
    sbc b
    pop bc
    jp Jump_01D_7C41


    inc bc
    ld a, $7F
    ld l, b
    ld [hl], e
    db $10
    ld h, l
    push hl
    ld l, c
    sub e
    ld h, b
    dec de
    add e
    pop bc
    add d
    ld a, [hl]
    add b
    ld a, b
    cp $9E
    adc $08
    and [hl]
    dec h
    sub [hl]
    ld c, e

jr_01D_666F:
    add h
    ld [bc], a
    ld a, c
    dec h
    ld e, c
    push hl
    jr jr_01D_664D

    jr z, jr_01D_666F

    ld [$007C], sp
    add hl, sp
    nop
    add e
    nop
    dec h
    ret z

    push de
    adc b
    add hl, sp
    add b
    add hl, sp
    add b
    sub c
    add b
    ld b, b
    add b
    jr nz, jr_01D_664E

    rra
    ldh [$8A], a
    ld [hl], c
    dec de
    pop hl
    inc a
    pop bc
    ld a, b
    add c
    ld [c], a
    ld bc, $038C
    ld sp, $D90F
    ld a, $51
    adc [hl]
    ret c

    add a
    inc a
    add e
    ld e, $81
    ld b, a
    add b
    ld sp, $8CC0
    ldh a, [$9B]
    ld a, h
    and h
    inc de

jr_01D_66B2:
    xor e
    ld de, $019C
    sbc h
    ld bc, $0189
    ld [bc], a
    ld bc, $0304
    ld hl, sp+$07
    inc b
    db $E3
    xor $C1
    ld c, l
    add d
    ld c, c
    add $C5
    add d
    ld a, [bc]
    add l
    ld bc, $0886
    add a
    add d
    ld bc, $00A3
    ld de, $3100
    nop
    ld [$A810], sp
    db $10
    sub l
    ld [$0894], sp
    ld b, c
    jr nc, jr_01D_6714

    and b
    add c
    nop
    inc de
    nop
    ld [hl-], a
    nop
    ld a, [hl+]
    ld de, $3140
    ld b, d
    ld sp, $E10E
    ld d, c
    and a
    sub h
    daa
    ld h, $87
    inc d
    and e
    ld [$29B3], sp
    inc de
    ld hl, $2412
    add e
    and h
    inc bc
    ld d, d
    ld hl, $2053
    ld c, c
    jr nc, jr_01D_6754

    jr nc, jr_01D_6771

    jr jr_01D_6731

    inc e
    ld d, h
    adc b
    ld e, b
    add b

jr_01D_6714:
    add hl, hl
    ret nz

    add hl, de
    ldh [$9B], a
    ld h, b
    ld c, e
    or b
    db $EB
    db $10
    sbc $01
    sub l
    ld h, d
    and l
    ld b, d
    add hl, bc
    add $0A
    call nz, $8C52
    ld d, d
    adc h
    ld d, h
    adc b
    sub $28
    ld [hl+], a

jr_01D_6731:
    add hl, de
    dec h
    add hl, de
    inc h
    add hl, de
    dec h
    jr jr_01D_675B

    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    ld b, d
    inc a
    ld [hl], c
    ld c, $2C
    inc bc
    sub a
    nop
    dec c
    add b
    jp nz, Jump_01D_7080

    ldh [$3E], a
    db $FC
    inc bc
    db $FC
    ld [hl], e
    ld [$40BF], sp

jr_01D_6754:
    ld [hl], l
    add b
    xor b
    nop
    ret nz

    nop
    nop

jr_01D_675B:
    nop
    add b
    nop
    or h
    ld b, b
    call nc, $BC08
    nop
    db $F4
    nop
    ld e, b
    nop
    jr z, jr_01D_676A

jr_01D_676A:
    stop
    nop
    nop
    ld bc, $4200

jr_01D_6771:
    jr @+$6E

    db $10
    ld [hl-], a
    nop
    ld l, h
    nop
    ld sp, $0600
    ld bc, $0F11
    reti


    ld a, $66
    sbc a
    dec l
    sbc [hl]
    dec l
    sbc [hl]
    dec e
    cp [hl]
    db $DD
    ld a, $75
    ld a, $6B
    ld [hl], $75
    ld [hl+], a
    pop de
    ld a, [hl]
    ld [hl], h
    ld e, e
    ld l, d
    ld e, l
    dec d
    ld l, [hl]
    jr z, @+$69

    inc h
    ld [hl], e
    ld a, [hl+]
    ld [hl], c
    ld e, d
    ld sp, $0000
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld h, b
    ld h, b
    ldh [$E0], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $07
    rlca
    nop
    nop
    ld d, l
    ld [hl+], a
    dec h
    ld b, d
    ld a, [hl+]
    ld b, h
    reti


    inc b
    or l
    ld [$0895], sp
    add hl, hl
    nop
    add b
    nop
    ld e, c

jr_01D_67D1:
    ld [hl-], a
    ld e, d
    ld sp, $59B2
    sub e
    ld c, b
    inc de
    ret z

    ld d, e
    adc b
    or c
    ld [$0028], sp
    nop
    nop
    nop
    nop

jr_01D_67E4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01D_67FF:
    nop

jr_01D_6800:
    cp $00
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    nop
    nop
    add hl, sp
    add hl, sp
    or [hl]
    jr nc, jr_01D_67E4

    nop
    call z, $EE03
    ld bc, $40A7
    and [hl]
    ld b, b
    and h
    ld b, b
    rrca
    rrca
    db $E4
    inc b
    ld [hl], c
    add b
    or c
    nop
    ld d, c
    add b
    sub d
    ld b, c
    jp nz, Jump_01D_6501

    ld [bc], a
    jp $B9C3


    add c
    inc l
    db $10
    ld l, h
    db $10
    ld c, h
    jr nc, jr_01D_67FF

    jr c, jr_01D_67D1

    ld l, b
    sub l
    ld l, b
    jp nc, $B9C0

    add b
    xor e
    sub b
    ld c, c
    jr nc, @+$4B

    jr nc, jr_01D_68A4

    jr nz, jr_01D_68BE

    nop
    nop
    nop
    and c
    ld b, b
    ld hl, $33C0
    ret nz

    or d
    ld b, c
    call nc, $F723
    nop
    di
    nop
    ret nz

    nop
    dec h
    ld [bc], a
    add a
    nop
    ld c, a
    add b
    ld c, [hl]
    add b
    ret


    nop
    jp $0700


    nop
    jr nc, jr_01D_68A0

    dec h
    ret c

    push bc
    jr c, jr_01D_6800

    ld [hl], b
    ld d, $E1
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    jr c, jr_01D_68B8

    inc c
    nop
    sub d
    adc h
    xor a
    sub b
    inc sp
    nop
    ld h, b
    nop
    ld c, b
    nop
    inc d
    ld [$8896], sp
    ld bc, $0101
    ld bc, $0121
    inc sp
    inc bc

jr_01D_6898:
    ld d, e
    inc hl
    ld d, e
    inc hl
    sbc e
    ld h, e
    sbc e
    ld h, e

jr_01D_68A0:
    xor [hl]
    sub b
    ld l, $10

jr_01D_68A4:
    ld e, h
    jr nz, jr_01D_6920

    nop
    inc sp
    nop
    add d
    add c
    add c
    add b
    nop
    nop
    adc e
    ld [hl], e
    xor e
    ld d, e
    xor c
    ld d, c
    dec a
    pop bc

jr_01D_68B8:
    ld a, l
    add c
    db $DD
    ld bc, $0189

jr_01D_68BE:
    ld bc, $1801
    nop
    ld l, h
    nop
    ld [hl], $08
    ld a, [hl-]
    inc b
    ld a, [de]
    add h
    ld d, [hl]
    adc b
    sub $08
    ld c, h
    nop
    add h
    add b
    call z, Call_01D_4DC0
    ld b, b
    dec d
    ld [$0814], sp
    sub [hl]
    ld [$0C92], sp
    sub d
    inc c
    rra
    rra
    ld c, a
    rrca
    rst $28
    rrca
    and d
    ld b, d
    or b
    ld b, b
    sbc b
    ld h, b
    sbc c
    ld h, b
    add hl, sp
    ret nz

    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0004
    rrca
    ld bc, $051E
    jr c, jr_01D_6898

    ld h, b
    reti


    jr nz, @-$44

    ld b, c
    ld a, [$7101]
    ld [bc], a
    ld h, $00
    rrca
    nop
    jp $F8C0


    ld hl, sp+$73
    add b
    ld h, e
    add b
    and [hl]
    nop
    ld h, l
    nop
    and $01
    jp Boot


    nop
    ld a, b
    ld a, b

jr_01D_6920:
    rst $38
    nop
    rst $38
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
    nop
    add b
    nop
    cp $00
    cp $00
    db $FC
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    nop
    nop
    ld c, e
    inc bc
    sbc l
    ld bc, $09D5
    ld a, [c]
    inc c
    ld a, [c]
    inc c
    ld a, [$FC04]
    nop
    ld [hl], b
    nop
    rst $28
    rst $18
    sub a
    rst $28
    cp h
    rst $28
    xor c
    cp $CB
    rst $38
    ei
    rst $38
    xor h
    rst $18
    and a
    rst $18
    di
    rst $38
    db $ED
    ei
    dec l
    ei
    sub e
    ld a, a
    ld e, a
    cp a
    and e
    db $FD
    ld c, h
    rst $38
    sbc $FD
    rst $38
    rst $38
    pop af
    rst $38
    rst $28
    ldh a, [$CD]
    cp $96
    rst $38
    xor [hl]
    rst $38
    sbc l
    cp $A3
    call c, $FFE1
    call z, Call_01D_56F3
    rst $28
    xor $5F
    or c
    ld l, a
    cp a
    ld a, a
    xor a
    ld [hl], e
    ld a, e
    db $FD
    adc a
    rst $38
    ld a, a
    ld a, a
    db $FC
    rst $38
    sbc c
    cp $AB
    rst $18
    xor e
    rst $18
    sbc h
    rst $38
    rst $38
    rst $38
    jp c, $E5FD

    ei
    ccf
    rst $38
    sbc c
    ld a, a
    ld d, [hl]
    cp l
    or [hl]
    db $DD
    ld a, c
    cp a
    rst $38
    rst $38
    call z, $FEF3
    rst $38
    db $FC
    rst $38
    adc h
    rst $38
    ld [hl], h
    adc a
    ld l, [hl]
    rst $30
    ld [hl], a
    ei
    adc e
    rst $30
    rst $38
    db $FD
    dec b
    rst $38
    di
    rrca
    ld l, e
    rst $30
    di
    rst $38
    ld [hl], a
    adc a
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, l
    ld [hl], e
    ld d, [hl]
    ld a, c
    ld e, d
    ld a, l
    ld hl, $1F3F
    rra
    ld [hl+], a
    ccf
    ld e, l
    ld h, e
    rst $38
    rst $38
    set 6, a
    or l
    ei
    cp a
    ld sp, hl
    sbc l
    ei
    db $E3
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $38
    rst $38
    ld [c], a
    rst $38
    adc $FF
    cp [hl]
    rst $18
    sbc $BF
    xor a
    rst $18
    sbc l
    db $E3
    jp $33FF


    rst $08
    adc l
    ld [hl], e
    halt
    ld sp, hl
    cp d
    db $FD
    ld e, d
    db $FD
    scf
    ld sp, hl
    cp l
    jp $FFC7


    ld e, d
    ld a, l
    ld e, [hl]
    ld a, l
    ld b, [hl]
    ld a, c
    dec l
    inc sp
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    jp hl


    rst $38
    jp hl


    rst $38
    di
    rst $38
    ld a, a
    rst $08
    cp a
    rst $20
    cp a
    rst $30
    rst $08
    rst $38
    ld [hl], e
    ld [hl], e
    db $FC
    rst $38
    ld sp, hl
    rst $38
    add hl, de
    rst $38
    xor l
    sbc $FE
    rst $08
    xor a
    rst $18
    ld d, e
    or e
    ldh [$E0], a
    ld a, a
    cp a
    cp a
    rst $18
    rst $38
    rst $18
    db $D3
    ccf
    dec l
    ei
    db $ED
    ei
    sub e
    sbc a
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    ld b, $01
    dec c
    inc bc
    ld a, [de]
    rlca
    rlca
    nop
    jr @+$09

    ld l, a
    rra
    cp e
    ld a, a
    ld a, h
    rst $38
    add sp, -$01
    ret nc

    rst $38
    add b
    rst $38
    rst $38
    nop
    ld d, a
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    scf
    rrca
    ld a, [hl+]
    rra
    ld l, l
    rra
    ld e, d
    ccf
    call c, $B83F
    ld a, a
    or h
    ld a, a
    xor b
    ld a, a
    ldh a, [$7F]
    xor b
    ld a, a
    db $F4
    ld a, a
    cp b
    ld a, a
    db $F4
    ld a, a
    xor b
    ld a, a
    ldh a, [$7F]
    cp b
    ld a, a
    db $F4
    ld a, a
    cp b
    ld a, a
    db $F4
    ld a, a
    cp h
    ld a, a
    ld a, [$BC7F]
    ld a, a
    ld a, [$BC7F]
    ld a, a
    ld a, d
    ld a, a
    ccf
    ld a, a
    dec a
    ld a, a
    ccf
    ld a, a
    cp [hl]
    ccf
    sbc a
    ccf
    sbc a
    ccf
    ld c, a
    rra
    add b
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld c, b
    rst $38
    ldh a, [rIE]
    xor d
    rst $38
    ld d, l
    rst $38
    cp $FF
    nop
    rst $38
    nop
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
    sub h
    rst $38
    nop
    rst $38
    nop
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
    xor c
    rst $38
    ld h, a
    rrca
    and e
    rlca
    sub c
    inc bc
    ret z

    ld bc, $00E2
    ld sp, hl
    nop
    cp $00
    rst $38
    nop
    db $EB
    rst $38
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    rrca
    rra
    ld hl, $0003
    nop
    ld l, d
    rst $38
    or l
    rst $38
    ld [$B5FF], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    ld d, [hl]
    rst $38
    xor l
    rst $38
    rst $10
    rst $38
    ld l, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $FD
    cp $67
    rrca
    and e
    rlca
    sub c
    inc bc
    ret z

    ld bc, $00E2
    ld sp, hl
    nop
    cp $00
    rst $38
    nop
    db $EB
    rst $38
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    rrca
    rra
    ld hl, $0003
    nop
    call nz, $C200
    ld b, b
    pop hl
    add b
    ldh [$80], a
    ldh a, [$80]
    or [hl]
    add b
    ld sp, hl
    ld a, b
    rlc b
    adc b
    rst $08
    ld b, h
    ld [hl], a
    ld [c], a
    dec sp
    db $10
    inc c
    dec b
    rlca
    nop
    nop
    nop
    nop
    ret nz

    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor h
    rst $38
    rst $00
    ld a, b
    di
    inc e
    inc c
    rlca
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    di
    inc a
    add c
    cp $30
    ldh [rP1], a
    nop
    ld de, $20F3
    db $EC
    ld b, c
    sbc b
    ld [$A030], sp
    ret nz

    nop
    nop
    nop
    nop
    ld bc, $2300
    nop
    ld b, e
    nop
    add a
    ld bc, $0307
    ld [hl], a
    rlca
    adc e
    nop
    adc e
    nop
    di
    nop
    db $E4
    nop
    ld a, [$FF1A]
    ld [hl-], a
    rst $38
    ld [c], a
    rst $38
    pop bc
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    db $10
    jr nz, jr_01D_6BC2

jr_01D_6BC2:
    stop
    cp [hl]
    add b
    pop af
    ld h, b
    ldh a, [$E0]
    db $FC
    ld b, b
    rst $38
    add b
    rst $38
    add b
    nop
    nop
    nop
    nop
    inc a
    nop
    jp $2000


    nop
    stop
    sub a
    nop
    ld hl, sp+$10
    nop
    nop
    nop
    nop
    nop
    nop
    adc a
    nop
    ld [hl], b
    nop
    adc h
    nop
    add e
    nop
    ccf
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc c
    nop
    db $D3
    ld [bc], a
    cpl
    ld bc, $203F
    rst $38
    jr nz, @+$01

    db $10
    daa
    nop
    ld a, a
    jr nc, @+$01

    adc b
    rst $38
    ld a, a
    rst $38
    pop hl
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    sbc [hl]
    rra
    ret nz

    ld b, b
    ret nz

    add b
    ldh [$80], a
    ldh a, [$80]
    sbc $C0
    reti


    ld b, b
    ret z

    nop
    db $10
    ldh a, [$E2]
    sbc a
    jr jr_01D_6C29

    inc bc
    inc bc
    nop

jr_01D_6C29:
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    or b
    ldh a, [$0C]
    rst $38
    nop
    rst $38

jr_01D_6C36:
    ldh [rIE], a
    inc sp
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    adc a
    nop
    rst $38
    ld l, b
    ld hl, sp-$64
    ld b, b
    inc bc
    add b
    ldh [rP1], a
    nop
    nop
    ld [$470F], sp
    db $FC
    jr c, jr_01D_6C36

    ret nz

    add b
    nop
    nop
    add c
    nop
    ld bc, $0300
    nop
    ld a, c
    ldh a, [$03]
    nop
    inc bc
    ld bc, $030F
    rst $28
    rrca
    inc de
    nop
    inc de
    nop
    db $E3
    nop
    db $E4
    nop
    ld hl, sp+$18
    rst $38

jr_01D_6C75:
    ld [hl-], a
    cp $E2
    rst $38
    pop bc
    rst $38

jr_01D_6C7B:
    ld h, b
    rst $38
    jr nz, @+$01

    db $10
    ret nz

    ret nz

    xor b
    sub a
    ld d, b
    cpl
    ld h, b
    rra
    ld d, b
    cpl
    ld h, b
    rra
    ld d, b
    cpl
    ld l, b
    rla
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
    nop
    add hl, bc
    ldh a, [rTMA]
    ldh a, [rSC]
    pop af
    add hl, bc
    ldh a, [rNR12]
    pop hl
    jr z, jr_01D_6C75

    ld d, e
    adc h
    nop
    nop
    jr nz, jr_01D_6C7B

    ld c, b
    inc bc
    sbc b
    inc bc
    ld h, h
    sub e
    ld a, [bc]
    pop af
    dec e
    ldh [rTMA], a
    ldh [rHDMA4], a
    dec hl
    jr z, jr_01D_6CDB

    nop
    nop
    dec d
    nop
    dec bc
    nop
    rla
    nop
    adc e
    add b
    ret nz

    ret nz

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

jr_01D_6CDB:
    nop
    rst $38
    nop
    nop
    nop
    jr c, @-$7E

    add b
    nop
    nop
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    add d
    ld h, b
    ld b, b
    jr nz, jr_01D_6D35

    jr nz, jr_01D_6D66

    nop
    ld l, a
    nop
    ld c, a
    nop
    rra
    nop
    nop
    nop
    ldh a, [$F0]
    ldh a, [$F0]
    ld a, [c]
    ldh a, [$F1]
    ldh a, [$F3]
    ldh a, [$F4]
    ldh a, [$F3]
    db $F4
    db $F4
    di
    nop
    nop
    rrca
    rrca
    adc a
    rrca
    ld c, a
    rrca
    rst $08
    rrca
    cpl
    rrca
    rst $08
    cpl
    cpl
    rst $08
    nop
    nop
    ldh a, [$F0]
    ld a, [c]
    ldh a, [$F1]
    ldh a, [$F3]
    ldh a, [$F4]
    ldh a, [$F3]
    db $F4
    db $F4
    di
    jr nz, jr_01D_6D32

jr_01D_6D32:
    ld a, b
    nop
    add h

jr_01D_6D35:
    nop
    ld b, h
    nop
    ld a, [hl-]
    nop
    add c
    nop
    and $80
    rst $38
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    db $FC
    nop
    inc b
    nop
    ld [bc], a
    nop
    rlca
    nop
    ld b, b
    ccf
    ld h, b
    rra
    ld d, b
    cpl
    ld l, d
    dec d
    ld d, l
    ld a, [hl+]
    ld a, a
    nop
    cp a
    add b
    ret nz

    ret nz

    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld b, $F8

jr_01D_6D66:
    xor d
    ld d, h
    ld d, [hl]
    xor b
    cp $00
    db $FD
    ld bc, $0303
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
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld l, b
    rst $38
    ret nc

    rst $38
    xor b
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
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld hl, $1E00
    nop
    ld hl, $C000
    ret nz

    ld b, $00
    ld [$1E00], sp
    nop
    ld h, c
    nop
    add a
    nop
    adc b
    nop
    rla
    nop
    ld a, a
    db $10
    daa
    nop
    rra
    db $10
    ld a, a
    ld [$7FFF], sp
    rst $38
    pop hl
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    inc de
    inc bc
    inc d
    inc b
    inc hl
    inc bc
    jr nz, jr_01D_6DC8

jr_01D_6DC8:
    call c, $0F00
    nop
    jr jr_01D_6DCE

jr_01D_6DCE:
    jr nz, jr_01D_6DD0

jr_01D_6DD0:
    ret z

    ret nz

    jr z, jr_01D_6DF4

    call nz, $04C0
    nop
    ld a, [de]
    nop
    pop af
    nop
    ld d, $00
    ld l, b
    nop
    db $FC
    ldh a, [$FC]
    db $10
    db $FC
    adc b
    db $FC
    ld a, h
    cp $E0
    cp $40
    cp $80
    cp $80
    ccf
    add hl, bc
    ccf
    rra

jr_01D_6DF4:
    ccf
    ld [hl-], a
    ccf
    ld [hl+], a
    ld a, a
    ld b, c
    ld a, a
    ld h, b
    ld a, a
    jr nz, jr_01D_6E7E

    db $10
    ld a, a
    ccf
    ccf
    jr nz, @+$81

    ld h, b
    ld a, a
    ld b, b
    ld b, [hl]
    nop
    ld hl, $1E00
    nop
    ld [hl+], a
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, c
    rst $38
    ld h, e
    inc e
    inc c
    ld hl, sp-$30
    stop
    stop
    rst $38
    ccf
    rst $38
    ld h, b
    rst $38
    add b
    ldh a, [$8F]
    ld sp, hl
    add b
    ld b, b
    nop
    ld b, b
    nop
    and d
    ld a, $FF
    add b
    rst $38
    add b
    rst $38
    ld b, c
    ld a, a
    db $E3
    inc c
    db $FC
    pop af
    rst $38
    inc bc
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    add b
    jr nc, jr_01D_6E4A

jr_01D_6E4A:
    rst $38
    add b
    nop
    nop
    add b
    nop
    cp $80
    db $FC
    add b
    db $FC
    ld b, b
    db $FC
    ld h, b
    ld h, b
    ld b, b
    sbc b
    add b
    add a
    nop
    ld a, b
    nop
    ld b, d
    nop
    ld b, c
    nop
    ld [hl+], a
    nop
    inc e
    nop
    ld [hl+], a
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld a, $00
    jr z, jr_01D_6E72

jr_01D_6E72:
    rst $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld a, a
    nop

jr_01D_6E7E:
    nop
    nop
    adc b
    rrca
    ld bc, $8001
    nop
    ld b, e
    ld [bc], a
    ld h, h
    nop
    ld d, e
    inc c
    add b
    ld b, b
    jr c, jr_01D_6EA0

    inc b
    db $FC
    add c
    ld a, a
    ld [bc], a
    inc bc
    db $10
    ldh a, [rDIV]
    inc c
    add b
    nop
    ld a, a
    nop
    add b
    nop

jr_01D_6EA0:
    add b
    nop
    ret nz

    add b
    rst $38
    ret nz

    add b
    nop
    add b
    nop
    ld b, b
    nop
    rst $18
    nop
    jr nz, jr_01D_6EB0

jr_01D_6EB0:
    ld b, b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    inc a
    nop
    ld b, d
    nop
    add c
    nop
    ld [hl], c
    nop
    nop
    nop
    jr nz, @+$41

    sbc $DF
    nop
    nop
    add b
    nop
    db $E3
    nop
    inc e
    nop
    inc b
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ret nz

    cp a
    db $E3
    ld b, b
    ld a, h
    ret c

    nop
    ld sp, $0F00
    nop
    ld hl, sp+$00
    rlca
    nop
    ldh a, [rP1]
    ld c, $00
    inc bc
    nop
    rst $20
    nop
    db $10
    rra
    ld bc, $0001
    nop
    call c, $2300
    nop
    jr nz, jr_01D_6EF8

jr_01D_6EF8:
    di
    nop
    db $FC
    nop
    ld c, a
    ret nz

    inc a
    db $FC
    cp $80
    cp $80
    cp $40
    cp $62
    db $FC
    ld a, h
    db $FC
    ldh a, [$FC]
    ret z

    db $FC
    adc b
    ld a, a
    ccf
    ld a, a
    ld h, b
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    ccf
    ccf
    db $10
    rst $00
    rrca
    jp z, $8D1F

    rra
    sbc d
    ccf
    inc e
    ccf
    jr c, jr_01D_6FAB

    inc [hl]
    ld a, a
    jr z, jr_01D_6FAF

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $FC
    nop
    ld hl, sp+$01
    pop af
    inc bc
    ld [c], a
    rlca
    ld hl, sp+$00
    ldh [rTAC], a
    adc a
    rra
    dec sp
    ld a, a
    ld a, h
    rst $38
    add sp, -$01
    ret nc

    rst $38
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
    ld bc, $0F01
    rrca
    rra
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
    nop
    nop
    ldh [$E0], a
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rra
    rra
    rst $38
    add b
    cp $80
    db $FC
    ld b, b
    db $FC
    ld h, b
    ld hl, sp+$78
    ld sp, hl

jr_01D_6FAB:
    ldh a, [$F9]
    ret z

    db $FD

jr_01D_6FAF:
    adc b
    rst $38
    ccf
    ld a, a
    ld h, b
    ccf
    nop
    ccf
    nop
    rra
    nop
    sbc a
    add b
    sbc a
    rra
    cp a
    db $10
    db $FC
    ldh a, [$FC]
    db $10
    db $FC
    adc b
    db $FC
    ld a, h
    db $FC
    ldh [$FE], a
    ld b, b
    cp $80
    cp $80
    ccf
    add hl, bc
    ccf
    rra
    ccf
    ld [hl-], a
    ccf
    ld [hl+], a
    ccf
    ld bc, $607F
    ld a, a
    jr nz, jr_01D_705E

    db $10
    db $FC
    add b
    db $FC
    add b
    db $FC
    ld b, b
    ld hl, sp+$60
    ld hl, sp+$78
    ld hl, sp-$10
    ld hl, sp-$38
    ld hl, sp-$78
    ccf
    ccf
    ccf
    jr nz, jr_01D_7034

    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    rra
    rra
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_01D_7034:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_01D_705E:
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

Jump_01D_7080:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $0301
    ld [bc], a
    rlca
    nop
    nop
    nop
    rlca
    rrca
    rra
    dec sp
    ld a, a
    ld a, h
    rst $38
    add sp, -$01
    ret nc

    rst $38
    add b
    rst $38
    nop
    nop
    ld d, a
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
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
    ld [$FFFF], a
    rst $38
    xor d
    rst $38
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
    ldh [$F0], a
    ld hl, sp-$24
    cp $3E
    rst $38
    rla
    rst $38
    dec bc
    rst $38
    ld bc, $00FF
    nop
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

    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld [bc], a
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    dec d
    rst $38
    dec bc
    rst $38
    scf
    rst $38
    ld c, a
    rst $38
    ld a, $FF
    ld b, b
    rst $38
    sub b
    rst $38
    ld b, b
    rst $38
    xor b
    rst $38
    ret nc

    rst $38
    db $EC
    rst $38
    ld a, [c]
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rrca
    ld a, [bc]
    rra
    dec c
    rra
    ld a, [de]
    ccf
    inc e
    ccf
    jr c, jr_01D_722B

    inc [hl]
    ld a, a
    jr z, jr_01D_722F

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [$F0], a
    ld d, b
    ld hl, sp-$50
    ld hl, sp+$58
    db $FC
    jr c, @-$02

    inc e
    cp $2C
    cp $14
    cp $FF
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_01D_722B:
    nop
    rst $38
    nop
    rst $38

jr_01D_722F:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, $FF
    ld c, a
    rst $38
    scf
    rst $38
    dec bc
    rst $38
    dec d
    rst $38
    ld [bc], a
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    ld a, h
    rst $38
    ld a, [c]
    rst $38
    db $EC
    rst $38
    ret nc

    rst $38
    xor b
    rst $38
    ld b, b
    rst $38
    sub b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    ld a, a
    jr z, jr_01D_7323

    ld [hl], h
    ld a, a
    jr c, jr_01D_7327

    ld [hl], h
    ld a, a
    jr z, jr_01D_732B

    ld [hl], b
    ld a, a
    jr c, jr_01D_732F

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $FE
    inc d
    cp $2E
    cp $1C
    cp $2E
    cp $14
    cp $0E
    cp $1C
    cp $FF
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_01D_7323:
    nop
    rst $38
    nop
    rst $38

jr_01D_7327:
    nop
    rst $38
    nop
    rst $38

jr_01D_732B:
    nop
    rst $38
    nop
    rst $38

jr_01D_732F:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], h
    ld a, a
    jr c, jr_01D_7423

    ld [hl], h
    ld a, a
    inc a
    ld a, a
    ld a, d
    ld a, a
    inc a
    ld a, a
    ld a, d
    ld a, a
    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, $FE
    inc e
    cp $2E
    cp $3C
    cp $5E
    cp $3C
    cp $5E
    cp $FC
    cp $FF
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_01D_7423:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, b
    rst $38
    ret nz

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
    ld a, d
    ld a, a
    ccf
    ld a, a
    dec a
    ld a, a
    ccf
    ld a, a
    cp [hl]
    ccf
    sbc a
    ccf
    sbc a
    ccf
    ld c, a
    rra
    add b
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld c, b
    rst $38
    ldh a, [rIE]
    xor d
    rst $38
    ld d, l
    rst $38
    cp $FF
    nop
    rst $38
    nop
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
    sub h
    rst $38
    nop
    rst $38
    nop
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
    xor c
    rst $38
    ld bc, $00FF
    rst $38
    dec b
    rst $38
    ld [de], a
    rst $38
    rrca
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld a, a
    rst $38
    ld e, [hl]
    cp $FC
    cp $BC
    cp $FC
    cp $7D
    db $FC
    ld sp, hl
    db $FC

Call_01D_74FC:
    ld sp, hl
    db $FC
    ld a, [c]
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rrca
    and e
    rlca
    sub c
    inc bc
    ret z

    ld bc, $00E2
    ld sp, hl
    nop
    cp $00
    rst $38
    nop
    db $EB
    rst $38
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    rrca
    rra
    ld hl, $0003
    nop
    ld l, d
    rst $38
    or l
    rst $38
    ld [$B5FF], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    ld d, [hl]
    rst $38
    xor l
    rst $38
    rst $10
    rst $38
    ld l, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $FC
    cp $D7
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $FC
    cp $F0
    ld hl, sp-$7C
    ret nz

    nop
    nop
    and $F0
    push bc
    ldh [$89], a
    ret nz

    inc de
    add b
    ld b, a
    nop
    sbc a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Call_01D_7678:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, h
    rst $38
    ld a, [c]
    rst $38
    db $EC
    rst $38
    ret nc

    rst $38
    xor b
    rst $38
    ld b, b
    rst $38
    sub b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec sp
    nop
    dec a
    nop
    ld e, $00
    rra
    nop
    rra
    nop
    ld c, a
    nop
    rrca
    nop
    scf
    nop
    jr nc, jr_01D_76B2

jr_01D_76B2:
    ret z

    nop
    ld h, h
    nop
    db $E3
    nop
    ld hl, sp+$00
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
    rst $00
    nop
    ldh a, [rP1]
    db $FC
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
    di
    nop
    nop
    nop
    rra
    nop
    rst $38
    nop
    inc c
    nop
    inc de
    nop
    ld h, $00
    rst $00
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    call c, $BC00
    nop
    ld a, b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, [c]
    nop
    ldh a, [rP1]
    db $EC
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec de
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret c

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
    nop
    pop af
    nop
    ld c, [hl]
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    ret c

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
    nop
    nop
    nop
    db $FC
    db $FC
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
    ld a, [hl]
    nop
    inc c
    nop
    add c
    add c
    jp $5CC3


    rst $38
    ld a, $FF
    pop bc
    rst $38
    nop
    rst $38
    nop
    nop
    ld e, $1E
    rst $38
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    add hl, de
    sbc a
    rst $20
    rst $20
    dec de
    ei
    ccf
    nop
    rst $18
    ret nz

    ld h, a
    ld h, b
    adc e
    adc b
    sbc c
    sbc h
    sbc c
    sbc [hl]
    adc h
    adc [hl]
    ld b, $06
    ld l, h
    db $FC
    ld d, $FE
    ld a, [bc]
    cp $0A
    cp $0F
    rst $38
    ld de, $00FF
    rst $38
    nop
    rst $38
    ld a, d
    ld a, d
    db $FC
    db $FC
    cp h
    db $FC
    adc b
    ld hl, sp+$14
    ld [hl], h
    and $FE
    or d
    cp $82
    cp $62
    rst $38
    db $10
    rst $38
    jr @+$01

    inc c
    rst $38
    ld b, $FF
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld a, [c]
    cp $0D
    rst $08
    ld [bc], a
    di
    ld bc, $01F9
    db $FD
    nop
    cp $01
    rst $38
    pop hl
    rst $38
    nop
    nop
    ld e, $1E
    rst $38
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    add hl, de
    sbc a
    rst $20
    rst $20
    dec de
    ei
    ccf
    nop
    rst $18
    ret nz

    ld h, a
    ld h, b
    adc e
    adc b
    sbc c
    sbc h
    sbc c
    sbc [hl]
    adc h
    adc [hl]
    ld b, $06
    ld sp, hl
    rst $38
    inc c
    rst $38
    ld b, [hl]
    rst $38
    ld b, $FF
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld l, h
    db $FC
    ld d, $FE
    ld a, [bc]
    cp $0A
    cp $0F
    rst $38
    ld de, $00FF
    rst $38
    nop
    rst $38
    ld a, d
    ld a, d
    db $FC
    db $FC
    cp h
    db $FC
    adc b
    ld hl, sp+$14
    ld [hl], h
    and $FE
    or d
    cp $82
    cp $02
    cp $05
    db $FC
    inc c
    db $FC
    sbc [hl]
    cp $FA
    cp $72
    cp $76
    cp $2C
    db $FC
    add hl, sp
    ld hl, sp+$3B
    ld hl, sp+$7B
    ld hl, sp+$6B
    ld hl, sp-$33
    db $FC
    dec b
    db $FC
    ld [bc], a
    cp $02
    cp $00
    rst $38
    nop
    rst $38
    ld de, $0FFF
    rst $38
    ld a, [bc]
    cp $0A
    cp $16
    cp $6C
    db $FC
    add d
    cp $B2
    cp $E6
    cp $14
    ld [hl], h
    adc b
    ld hl, sp-$44
    db $FC
    db $FC
    db $FC
    ld a, d
    ld a, d
    ret c

    rst $18
    rst $20
    rst $20
    add b
    ld sp, hl
    ret nz

    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    rst $38
    pop bc
    rst $38
    ld a, $FF
    ld e, h
    rst $38
    jp $81C3


    add c
    ld [$7008], sp
    ld [hl], b
    ld bc, $00FF
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $FC
    db $FC
    nop
    nop
    nop
    rst $38
    pop bc
    rst $38
    ld a, $FF
    ld e, h
    rst $38
    jp $81C3


    add c
    ld [$7008], sp
    ld [hl], b
    dec de
    ei
    rst $20
    rst $20
    add hl, de
    sbc a
    inc bc
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    ld e, $1E
    nop
    nop
    ld h, b
    ld h, b
    ld sp, $1971
    ld a, c
    sbc c
    add hl, sp
    pop de
    ld de, $06E6
    ei
    inc bc
    db $FC
    nop
    inc a
    ccf
    ldh [rIE], a
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ret nz

    ret z

    inc bc
    di
    ld b, $F7
    daa
    rst $20
    add b
    add b
    ld b, b
    ret nz

    jr c, @+$3A

    ld a, [hl]
    ld a, [hl]
    jp $81FF


    rst $38
    nop
    rst $38
    nop
    rst $38
    inc de
    inc de
    ld h, b
    ld h, b
    inc c
    inc c
    ld a, $3E
    ld a, [$F8FE]
    db $FC
    sub h
    db $FC
    ld l, b
    ld hl, sp-$20
    ldh [$CE], a
    adc $1E
    ld e, $28
    inc a
    ld b, l
    ld a, l
    add l
    db $FD
    ret z

    ld hl, sp+$70
    ld [hl], b
    ld bc, $1601
    ld d, $68
    ld a, b
    add l
    cp h
    push bc
    db $FC
    jp hl


    ld hl, sp-$07
    ld hl, sp+$73
    ld [hl], b
    ld a, a
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
    nop
    rst $38
    nop
    ld [hl], a
    rst $30
    db $DB
    ei
    adc h
    db $FC
    add [hl]
    cp $C3
    rst $38
    ccf
    ccf
    rst $08
    rrca
    ldh a, [rP1]
    jp $FCFF


    db $FC
    ldh a, [$F0]
    ld bc, $FB01
    ei
    pop hl
    pop hl
    ret c

    ret nz

    ccf
    nop
    db $E3
    db $E3
    rrca
    rrca
    ld a, [$A0FF]
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    ld e, $1E
    add b
    nop
    ld b, $06
    adc h
    adc [hl]
    sbc c
    sbc [hl]
    sbc c
    sbc h
    adc e
    adc b
    ld h, a
    ld h, b
    rst $18
    ret nz

    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    cp $FE
    cp $FE
    cp $FC
    db $FC
    db $FC
    db $FC
    ld hl, sp-$08
    ld a, b
    ld a, c
    ld [hl], b
    inc bc
    inc bc
    rra
    rra
    ld [hl], d
    ld a, a
    ld h, h
    ld a, a
    call nz, $C4FF
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ldh [$E0], a
    add hl, de
    ld sp, hl
    rlca
    rst $38
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
    rst $38
    rst $38
    add b
    rst $38
    jr c, @+$01

    ldh [rIE], a
    ret nz

    rst $38
    jr nz, @+$01

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
    ld bc, $83FF
    rst $38
    db $FC
    db $FC
    nop
    nop
    nop
    rst $38
    pop bc
    rst $38
    ld a, $FF
    ld e, h
    rst $38
    jp $81C3


    add c
    nop
    nop
    nop
    nop
    add a
    rlca
    ld [hl], e
    ld [hl], e
    ld a, b
    ld a, b
    inc d
    inc a
    and d
    ld a, $A1
    ccf
    sub e
    rra
    ld c, $0E
    add b
    add b
    ld b, b
    ret nz

    jr c, jr_01D_7ACE

    ld a, [hl]
    ld a, [hl]
    jp $81FF


    rst $38
    nop
    rst $38
    nop
    rst $38
    ret z

    ret z

    ld b, $06
    jr nc, jr_01D_7AD6

    ld a, h
    ld a, h
    ld e, a
    ld a, a
    dec b
    ccf
    jr nz, @+$41

    db $10
    rra
    nop
    nop
    ldh [rIE], a
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld hl, sp-$08
    sub e
    di
    ld d, $F7
    daa
    rst $20
    inc de
    inc de
    ld h, b
    ld h, b
    inc c
    inc c
    ld a, $3E
    ld a, [$F8FE]
    db $FC
    sub h
    db $FC

jr_01D_7ACE:
    ld l, b
    ld hl, sp-$39
    rst $00
    ldh a, [$F0]
    ld e, a
    rst $38

jr_01D_7AD6:
    dec b
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    ld a, b
    ld a, b
    ld bc, $E300
    db $E3
    rrca
    rrca
    ld a, [$A0FF]
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    ld e, $1E
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    rst $38
    rst $38
    pop hl
    rst $38
    ret nz

    rst $38
    sbc c
    ld sp, hl
    rst $20
    rst $20
    reti


    rst $18
    ld a, [hl]
    nop
    inc c
    nop
    add c
    add c
    jp nz, Jump_01D_4CC3

    rst $08
    ld h, $E7
    rst $00
    rst $00
    inc bc
    inc bc
    nop
    nop
    db $FC
    db $FC
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add e
    add e
    ccf
    nop
    rst $18
    ret nz

    ld h, a
    ld h, b
    adc e
    adc b
    sbc c
    sbc h
    sbc c
    sbc [hl]
    adc h
    adc [hl]
    ld b, $06
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
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
    jp c, $E9FF

    cp $47
    ccf
    ld e, e
    daa
    ld h, c
    rra
    ld b, d
    ld bc, $030D
    ld d, e
    rrca
    rla
    rrca
    jr z, jr_01D_7B7F

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01D_7B7F:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    jr nc, jr_01D_7BAE

    ld sp, $2218
    add hl, de
    db $10
    dec hl
    ld c, e
    jr nc, jr_01D_7BF4

    ld [hl+], a
    ld l, e
    db $10
    ld a, e
    nop
    ld a, a
    rst $38
    rlca
    rst $38
    add hl, sp
    cp a
    inc c
    ld [hl], e
    dec hl
    ld b, a
    ld d, [hl]
    rrca
    sub b
    ld c, a

jr_01D_7BAE:
    ld d, h
    add hl, bc
    ei
    rst $38
    rst $38
    rst $38
    or $FF
    inc c
    rst $38
    pop bc
    rst $38
    db $E3
    rst $38
    add [hl]
    rst $38
    inc c
    rst $38
    rrca
    rrca
    rra
    rra
    ld d, $1E
    jr nz, jr_01D_7C04

    jr nz, @+$3E

    inc d
    inc e
    ld l, b
    ld l, b
    add b
    add b
    ld a, a
    ccf
    cp a
    ccf
    cp a
    rra
    ld e, a
    rra
    rst $18
    rrca
    xor a
    ld c, a
    xor a
    ld c, a
    adc a
    ld l, a
    nop
    nop
    ccf
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    add e
    rst $38
    cp $FE
    ldh [$E0], a
    nop
    nop
    db $FC
    db $FC

jr_01D_7BF4:
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $FC
    rst $38
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    db $FC
    db $FC

jr_01D_7C04:
    jp $80FF


    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    adc b
    adc a
    ld [hl-], a
    inc sp
    ld a, [hl]
    nop
    inc c
    nop
    add c
    add c
    jp Jump_01D_5FC3


    rst $38
    ccf
    rst $38
    jp $01FF


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
    ldh a, [rP1]
    ldh [rP1], a
    adc $0E
    sbc a
    rra
    sub a
    rra
    and e
    ccf
    and c
    dec a
    sub [hl]
    ld e, $68
    ld l, b
    db $FC

Jump_01D_7C41:
    nop
    ei
    inc bc
    and $06
    pop de
    ld de, $3999
    sbc c
    ld a, c
    ld sp, $6071
    ld h, b
    nop
    nop
    ld a, b
    ld a, b
    cp $FE
    db $E3
    rst $38
    pop bc
    rst $38
    sbc c
    ld sp, hl
    rst $20
    rst $20
    rst $18
    rst $18
    ld b, b
    ld a, a
    and b
    ccf
    jr nc, jr_01D_7CA5

    ld a, c
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ld a, a
    ld l, a
    ld a, a
    dec [hl]
    ccf
    add h
    add h
    ld a, [c]
    ld a, [c]
    ld hl, sp-$08
    call nc, $A0FC
    cp h
    and h
    cp h
    jr jr_01D_7C96

    nop
    nop
    rlca
    rlca
    ld [hl], e
    ld [hl], e
    ld a, b
    ld a, b
    inc d
    inc a
    and d
    cp [hl]
    and c
    cp a
    inc de
    rra
    ld c, $0E
    ret z

    ret z

    ld b, $06
    jr nc, jr_01D_7CC6

jr_01D_7C96:
    ld e, h
    ld a, h
    ld b, e
    ld a, a
    jr nz, @+$41

    jr nc, jr_01D_7CDD

    ld e, $1F
    inc a
    ccf
    ldh [rIE], a
    ld a, [hl]

jr_01D_7CA5:
    ld a, [hl]
    nop
    nop
    db $FC
    db $FC
    dec sp
    ei
    ld d, $F7
    ld h, a
    rst $20
    add b
    add b
    ld b, b
    ret nz

    jr c, jr_01D_7CEE

    ld a, [hl]
    ld a, [hl]
    jp $81FF


    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    db $10
    rst $38
    jr @+$01

jr_01D_7CC6:
    inc c
    rst $38
    ld b, $FF
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38

jr_01D_7CD0:
    add b
    add b
    ret nz

    ret nz

    jr nc, jr_01D_7CC6

    jr jr_01D_7CD0

    inc b
    db $FC
    ld b, $FE
    ld [bc], a

jr_01D_7CDD:
    cp $83
    rst $38
    nop
    rst $38
    ld [$0CFF], sp
    rst $38

Jump_01D_7CE6:
    ld b, $FF
    ld b, $FF
    rla
    rst $30
    rst $08
    rst $08

jr_01D_7CEE:
    rra
    rra
    ld sp, hl
    rst $38
    inc c
    rst $38
    ld b, [hl]
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp $FE
    ret nz

    ret nz

    ld c, l
    ld a, l
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    adc b
    adc a
    inc a
    ccf
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    cp $45
    db $FD
    ld bc, $05FF
    rst $38
    dec de
    rst $38
    daa
    rst $20
    add [hl]
    add [hl]
    nop
    nop
    rst $20
    rlca
    rst $08
    rrca
    rrc a
    pop de
    rra
    ret nc

    ld e, $8B
    rrca
    inc [hl]
    inc [hl]
    ld b, b
    ld b, b
    nop
    nop
    adc a
    adc a
    sub l
    sbc a
    and d
    cp [hl]
    add d
    cp [hl]
    inc h
    inc a
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    ld e, [hl]
    ld e, [hl]
    ccf
    ccf
    dec a
    ccf
    ld de, $281F
    ld l, $67
    ld a, a
    ld c, l
    ld a, a
    ld b, c
    ld a, a
    scf
    ccf
    ld l, c
    ld a, a
    ld d, d
    ld a, [hl]
    ld d, d
    ld a, [hl]
    or $FE
    adc h
    db $FC
    inc e
    db $FC
    db $FC
    db $FC
    sbc h
    rra
    ret c

    rra
    ret c

    rra
    ret nc

    rra
    or b
    ccf
    and b
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    add b
    ldh a, [$F0]
    ld a, b
    ld hl, sp+$2C
    db $FC
    inc c
    db $FC
    sbc b
    ld hl, sp-$1C
    db $E4
    ret c

    call c, Call_01D_6060
    ld sp, $1971
    ld a, c
    sbc c
    add hl, sp
    pop de
    ld de, $06E6
    ei
    inc bc
    db $FC
    nop
    rst $00
    rst $00
    ldh a, [$F0]
    ld e, a
    rst $38
    dec b
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    ld a, b
    ld a, b
    nop
    nop
    add a
    add a
    ld d, e
    ld [hl], e
    adc b
    ld hl, sp-$7A
    cp $C3
    rst $38
    ccf
    ccf
    rst $08
    rrca
    ldh a, [rP1]
    jp $FCFF


    db $FC
    ldh a, [$F0]
    ld bc, $FB01
    ei
    pop hl
    pop hl
    ret c

    ret nz

    ccf
    nop
    rra
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    add sp, -$01
    di
    rst $38
    adc b
    rst $38
    ld a, h
    rst $38
    add b
    rst $38
    nop

jr_01D_7DD1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc [hl]
    adc l
    db $FC
    ld a, b
    db $FD
    adc l
    ldh a, [$7C]
    db $FD
    jr c, jr_01D_7DD1

    dec [hl]
    ld hl, sp-$3C
    ld sp, hl
    add b
    ld a, a
    rra
    ld h, a
    ld a, h
    rra
    ld l, d
    ld [hl], c
    ld [hl], h
    ld bc, $31B4
    sub h
    ld hl, $25A8
    ld h, b

jr_01D_7E21:
    sbc a
    adc a
    rst $38
    ld a, e
    db $FC
    adc l
    di
    ld a, a
    cp $38
    add $36
    ld hl, sp-$3F
    db $FC
    nop
    rst $38
    ccf
    add a
    ld e, h
    rra
    ld c, [hl]
    ld de, $0F50
    ret nc

    rrca
    xor [hl]
    ld c, a
    ldh [rIF], a
    ld h, d
    adc h
    xor h
    ret nz

    ld b, b
    add b
    and e
    add b
    xor b
    inc bc
    ld d, b
    cpl
    ld b, b
    ccf
    inc hl
    inc e
    jr z, jr_01D_7E63

    ld l, c
    ld de, $3588
    inc c
    pop af
    inc d
    pop hl

jr_01D_7E5A:
    jr nz, jr_01D_7E21

    push af
    nop
    xor d
    inc b
    ld l, c
    add [hl]
    adc e

jr_01D_7E63:
    db $E4
    ld l, e
    db $E4
    xor c
    call nz, $C855
    dec d
    ret z

    ld d, c
    add b
    cp b
    add b
    inc d
    db $E3
    dec de
    db $E3
    ld c, b
    or e
    ld a, [bc]
    pop af
    adc d
    ld [hl], c
    inc c
    ld [hl], c
    add h
    ld [hl], c
    cp h
    ld b, c
    nop
    rst $38
    db $FC
    pop hl
    ld a, [hl-]
    ld hl, sp+$72
    adc b
    ld a, [bc]

jr_01D_7E89:
    ldh a, [$0B]
    ldh a, [$75]
    ld a, [c]
    rlca
    ldh a, [rTMA]
    ld sp, hl
    pop af
    rst $38
    sbc $3F
    or c
    rst $08
    cp $7F
    inc e
    ld h, e
    ld l, h

jr_01D_7E9D:
    rra
    add e
    ccf
    nop
    rst $38
    ld hl, sp-$19
    ccf
    ld hl, sp+$77
    adc a
    inc c
    di
    rrca
    rst $38
    ld [hl], e
    db $FC
    inc c
    rst $38
    ld b, $F9
    pop af
    rst $38
    sbc $3F
    or c
    rst $08
    ld a, [hl]
    rst $38
    inc e
    db $E3
    db $EC
    rra
    inc bc
    rst $38
    jr z, jr_01D_7E89

    ret c

    rst $00
    ld [de], a
    call $8F50
    ld d, c
    adc [hl]
    jr nc, jr_01D_7E5A

    ld hl, $3D8E
    add d
    sub [hl]
    ld h, c
    pop de
    daa
    sub $27
    sub l
    inc hl
    xor d
    inc de
    xor b
    inc de
    adc d
    ld bc, $011D
    ld bc, $F9FC
    db $E4
    dec a
    ld hl, sp+$75
    adc h
    inc c
    ldh a, [$09]
    ldh a, [rPCM12]
    pop hl
    ld [$2AE7], sp
    pop bc
    ld e, c
    add e
    jp c, $A903

    inc de
    ld c, d
    ld sp, $718C
    inc e
    pop hl
    dec e

Jump_01D_7EFF:
    ldh [$7B], a
    add b
    sbc d
    ld sp, hl
    ld [hl+], a
    ld sp, hl
    ld a, e
    ldh a, [$36]
    pop bc
    rla
    ldh a, [$93]
    db $E4
    adc l
    ld h, d
    inc l
    and c
    xor c
    dec b
    adc b
    dec b
    jr nz, jr_01D_7E9D

    sub c
    dec b
    sub b
    dec b
    db $10
    dec b
    jr nz, jr_01D_7F31

    ld a, c
    add h
    sbc l
    ld hl, sp+$23
    ld hl, sp+$7B
    ld hl, sp+$3A
    pop bc

jr_01D_7F2A:
    ld d, $F1
    add [hl]
    pop af
    sub [hl]
    ld h, c
    and b

jr_01D_7F31:
    ld c, a
    cpl
    rst $08
    ld h, [hl]
    adc c
    ld l, [hl]
    add a
    or c
    ld b, a
    ld [hl], $C7
    or h
    ld b, a
    db $10
    rst $20
    halt
    nop
    ld e, a

Jump_01D_7F43:
    nop
    dec l
    nop
    inc d
    nop
    add b
    nop
    ld h, b
    add b
    sub b
    ldh [$9F], a
    ld [hl], b
    ret z

    inc b
    ld d, d
    inc c
    add d
    jr @+$16

    jr nz, jr_01D_7FCA

    nop
    ld [bc], a
    ld bc, $0314
    ld hl, sp+$07
    add hl, hl
    add b
    sub d
    add b
    ld b, c
    add b
    ld h, c
    ret nz

    jr nc, jr_01D_7F2A

    jr @-$0E

    add a
    ld hl, sp-$67
    ld a, [hl]
    ld d, h
    and c
    ret


    ld hl, $0172
    ld [hl+], a
    ld bc, $0385
    ld e, $07
    db $FC
    rra
    ret nz

    ccf
    dec b
    ld a, [c]
    db $F4
    di
    ld h, [hl]
    sub c
    halt
    pop hl
    adc l
    ld [c], a
    ld l, h
    db $E3
    dec l
    ld [c], a
    ld [$9EE7], sp
    ld hl, $1FB9
    call nz, $DE1F
    rra
    ld e, h
    add e
    ld l, b
    adc a
    ld h, c
    adc a
    ld l, c
    add [hl]
    rrca
    rst $38
    ldh a, [$FE]
    ld l, [hl]
    sub b
    ld a, b
    cp $8E

jr_01D_7FA9:
    cp $60
    cp $3E
    db $FC
    ld bc, $5EFC
    ld hl, $3FB9
    and h
    rra
    sbc [hl]
    ld e, a
    call c, $8803
    ld b, a
    and c
    ld b, a
    and l
    ld b, d
    ld a, [hl+]
    add l
    sub e
    add h
    ld c, [hl]
    add b
    ld b, h
    add b
    and c
    ret nz

jr_01D_7FCA:
    ld a, b
    ldh [$3F], a
    ld hl, sp+$03
    db $FC
    sub h
    ld bc, HeaderRAMSize
    add d
    ld bc, $0386
    inc c
    inc bc
    jr jr_01D_7FEB

    pop hl
    rra
    sbc c
    ld a, [hl]
    jr z, jr_01D_7FA9

    pop de
    adc $54
    adc e
    ld c, e
    ret nz

    and c
    ret nz

    ld a, b

jr_01D_7FEB:
    ldh [$3E], a
    ld hl, sp+$03
    db $FC
    ld [hl], l
    add b
    add hl, sp
    ret nz

    push de
    nop
    ld a, c
    add b
    ld l, b
    ld bc, $0192
    dec b
    inc bc
    ld sp, hl
    db $06
