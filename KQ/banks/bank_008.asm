; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

    rst $38
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
    cp $F1
    ld hl, sp-$3A
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ldh [rNR34], a
    ld bc, $7F80
    ld a, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    db $FC
    ld [bc], a
    ld bc, $C021
    ld [de], a
    adc h
    ld b, b
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0007
    ld hl, sp-$80
    ld a, a
    ld e, h
    ld a, $99
    inc a
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
    rra
    ccf
    adc a
    ld e, a
    rlca
    rst $28
    add hl, de
    add a
    ld h, a
    rra
    adc a
    ld a, a
    ld e, $FF
    inc c
    cp $01
    db $FC
    ld [bc], a
    ld sp, hl
    nop
    ei
    ei
    db $FC

jr_008_4062:
    db $FC

jr_008_4063:
    ei
    db $E3
    rst $38
    ld e, a
    cp a
    cp a
    ld a, a
    cpl
    rst $38
    ld e, [hl]
    rst $38
    ld c, h
    cp [hl]
    nop
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    add b
    pop af
    adc [hl]
    ret nz

    ld sp, $4686
    ccf
    cp a
    ld a, a
    ld b, l
    cp e
    jr nz, jr_008_4063

    jr nz, jr_008_4062

    inc bc
    ret c

    inc c
    db $D3
    jr nz, jr_008_40CC

    xor a
    db $10
    jr @+$01

    rlca
    rst $30
    inc bc
    rlca
    jp Jump_008_713B


    ei
    add hl, sp
    db $FD
    adc b
    ld a, l
    jr nz, jr_008_40BC

    ret nc

    ld c, $04
    ld a, [c]
    add c
    ld [hl], h
    adc c
    ld h, h
    ld b, d
    add hl, hl
    ld b, d
    add hl, hl
    ld [bc], a
    adc c

jr_008_40AC:
    sub l
    or b
    add hl, hl
    ld [hl], b
    add c
    ld a, h
    ld [bc], a
    ld sp, hl
    dec b
    di
    inc b
    ldh a, [$08]
    db $E3
    rrca
    db $E3

jr_008_40BC:
    inc c
    and $00
    db $EC
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rlca
    ret nz

    nop
    jr jr_008_40AC

jr_008_40CC:
    nop
    inc bc
    or l
    or e
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    ld a, h
    ld [hl], b
    ld hl, sp-$20
    ldh a, [$E1]
    db $F4
    ld b, b
    adc [hl]
    ld [$2086], sp
    add [hl]
    db $10
    and [hl]
    nop
    ld h, $92
    inc b
    ld [bc], a
    inc [hl]
    ld d, b
    dec [hl]
    ld c, d
    inc e
    dec h
    adc [hl]
    ld [de], a
    and a
    and l
    cp e
    sbc [hl]
    rst $18
    call $E0EC
    ld a, [c]
    nop
    rst $38
    add b
    ld l, c
    ld c, b
    inc h
    and h
    rla
    ld d, a
    add a
    and a
    rst $08
    ld c, a
    rst $38
    cp a
    ld a, a
    ld c, a
    ccf
    sbc e
    ld d, a
    scf
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
    db $E4
    jp hl


    ld a, [c]
    db $E3
    xor $FE
    adc h
    sbc $EC
    xor $11
    call z, $BDC8
    di
    ld sp, hl
    jr nc, jr_008_41A7

    dec [hl]
    ld [hl], c
    pop af
    ld a, e
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
    ld bc, $0000
    cp $87
    nop
    ld h, b
    add b
    rlca
    ld hl, sp+$08
    rlca
    pop af
    nop
    ld [bc], a
    db $FC
    inc sp
    adc a
    ld c, h
    inc bc
    and e
    nop
    jr jr_008_4178

    ld h, $38
    ld e, c
    sbc [hl]
    ld h, $CF
    ld d, c
    inc hl
    cp $FF
    db $FC
    cp $3E
    rst $38
    jp $0C3F


    inc bc
    ldh [rP1], a
    nop
    rst $20
    jp hl


    db $E3
    ld de, $233B
    rst $30
    rst $00
    cpl
    rrca
    rst $18

jr_008_4178:
    rra
    ccf
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
    rst $38
    nop
    rst $38
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
    db $FC
    ld [bc], a
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$04

jr_008_41A7:
    db $E3
    db $10
    adc a
    ld b, b
    ccf
    nop
    rst $38
    ld [bc], a
    db $FD
    nop
    rst $38
    inc b
    ld hl, sp+$03
    nop
    inc e
    ldh [$03], a
    db $FC
    nop
    rst $38
    add b
    rst $38
    ld h, e
    rst $38
    nop
    rst $38
    db $10
    rrca
    add h
    ld h, e
    ld [hl+], a
    ld sp, hl
    ld l, h
    ld [hl], c
    sbc l
    jr nz, jr_008_422B

    add b
    xor [hl]
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    di
    ret z

    rst $20
    db $10
    rst $08
    ld [de], a
    call $9D20
    dec h
    sbc b
    inc h
    sbc b
    nop
    cp c
    dec d
    ld hl, sp+$22
    ld hl, sp+$69
    ld a, [c]
    ld h, h
    di
    ld h, d
    rst $30
    inc hl
    rst $30
    add l
    ld [hl], e
    ld b, c
    dec sp
    add hl, sp
    rst $38
    adc a
    ld a, a
    ld h, e
    rra
    sbc b
    rlca
    inc bc
    ld h, b
    ld h, b
    inc e
    adc b
    rlca
    or c
    ret nz

    push de
    ldh [rBCPS], a
    ldh a, [$F2]
    db $FC
    jr c, @+$01

    rlca
    ld hl, sp-$08
    nop
    rlca
    nop
    jr jr_008_41A7

    nop
    rst $38
    add b
    ld a, a
    rra
    ccf
    add b
    ccf
    nop
    ccf
    ret nz

jr_008_422B:
    rra
    nop
    rst $18
    ret nz

    rst $28
    ld hl, $229A
    sbc b
    dec [hl]
    adc b
    ld de, $18CC
    push bc
    jp z, $E2E4

    db $F4
    and $F0
    or e
    add hl, bc
    dec c
    ld bc, $01F3
    rra
    rst $38
    rrca
    rra
    ld e, a
    ld c, a
    rrca
    rrca
    adc a
    rrca
    or $F8
    rst $38
    cp $ED
    di
    ret nz

    pop hl
    push hl
    call nz, $C0C0
    jp nc, $CCC0

    ret nc

    and e
    rrca
    ld b, c
    cpl
    nop
    rst $28
    pop bc
    xor $C4
    add sp, -$36
    db $D3
    sub b
    call nz, $88A3
    rst $00
    rst $28
    add a
    rst $28
    jr nz, @-$2F

    nop
    rrca
    ld h, b
    rst $28
    rlca
    cpl
    and a
    ld l, a
    ld b, a
    rst $28
    ld a, [bc]
    ldh [rDIV], a
    add sp, -$1E
    db $F4
    db $E4
    db $F4
    ldh a, [$FA]
    ld hl, sp-$04
    nop
    rst $38
    rst $38
    rst $38
    ld c, a
    cpl
    adc a
    rra
    sbc a
    rst $38
    ld a, a
    rst $38
    or $79
    add hl, sp
    ld a, a
    ld e, a
    ccf
    cpl
    sbc a
    jp hl


    call nz, $E1D2
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    db $FD
    cp $FA
    db $FC
    push bc
    sub e
    ld a, [$DAF7]
    db $FC
    and c
    ret nz

    ld e, [hl]
    add c
    or c
    rrca
    ld h, c
    rra
    ld b, b
    ccf
    add b
    rst $18
    add b
    ccf
    rra
    ccf
    sbc a
    ccf
    dec de
    cp a
    add e
    reti


    ret nz

    push hl
    ld h, c
    db $FD
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    db $FC
    ld hl, sp-$0E
    ld sp, hl
    ld a, [c]
    ld sp, hl
    push af
    ld hl, sp-$06
    db $FC

Jump_008_42E0:
    rla
    adc a
    dec hl
    add a
    ld [de], a
    ld h, c
    ld c, h
    ldh a, [$85]
    ld hl, sp+$04
    ld sp, hl
    ld [$94F1], sp
    ld h, c
    jp hl


    ldh a, [$A6]
    pop bc
    sbc b
    rlca
    ld h, [hl]
    rra
    sbc [hl]
    ld a, a
    ld a, a
    cp $FC
    cp $FA
    db $FC
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    db $10
    rrca
    ld l, b
    rlca
    db $E4
    inc bc
    ret nc

    jr jr_008_4322

    db $FD
    dec b
    ld sp, hl
    ld bc, $09FB
    di
    inc de
    rst $20
    daa
    rst $08
    adc a
    rra
    rra
    ld a, a
    rst $38
    rst $38

jr_008_4322:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    db $FC
    cp $F9
    db $FC
    ld a, [$FFF9]
    rst $38
    rst $38
    rst $38
    ld hl, sp-$04
    add b
    swap h
    inc bc
    add d
    ld a, c
    ld h, b
    db $FC
    jp nz, $C6FC

    rst $28
    rst $08
    rst $18
    rrca
    ld e, a
    sbc a
    ccf
    inc de
    cp a
    ld h, c
    dec sp
    inc c
    ld [hl], c
    adc [hl]
    ld h, b
    adc a
    rra
    ld h, a
    adc a
    ld [hl], e
    add a
    cp b
    ret nz

    cp l
    ret nz

    sbc $E0
    sbc $E0
    ld l, a
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    cp a
    ccf
    sbc a
    ccf
    ld c, a
    rra
    pop af
    ei
    db $E3
    rst $30
    xor $E7
    call nz, $DCEF
    rst $08
    adc c
    sbc $A9
    sbc [hl]
    sbc e
    cp h
    add [hl]
    ld hl, sp+$1D
    ldh [$32], a
    pop bc
    ld l, c
    add [hl]
    sbc $00
    cp b
    ld bc, $0701
    ld [hl], e
    ld a, e
    nop
    nop
    ld hl, sp+$00
    ld [hl], a
    add a
    adc h
    inc c
    ld a, [bc]
    ld e, d
    ld d, h
    call nc, $ECE4
    db $FD
    db $FD
    ld l, a
    ldh a, [$27]
    ld a, b
    scf
    ld a, b
    sub e
    cp h
    dec de
    inc a
    ld c, e
    ld e, h
    ld c, c
    ld e, [hl]
    ld b, l
    ld l, [hl]
    ld b, a
    rrca
    ld d, e
    rlca
    cp e
    inc bc
    cp c
    inc bc
    cp l
    ld bc, $01DD
    call nc, $D609
    ld [$BC92], sp
    ld [hl], $B8
    ld [hl], h
    jr c, jr_008_43EB

    ld a, b
    inc h
    ld a, b
    jr z, jr_008_443C

    add hl, hl
    ld [hl], b
    dec hl
    ld [hl], b
    sbc c
    sbc l
    ld hl, $4363
    ld b, a
    ld b, [hl]
    ld b, [hl]
    ld d, l
    ld d, l
    ld l, $6E
    ccf
    ld a, a
    rra
    ld a, a
    cp $FE
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a

jr_008_43EB:
    rst $38
    db $E3
    db $E3
    sbc l
    sbc c
    dec b
    xor $85
    xor $C4
    rst $30
    jp nz, $C2F7

    rst $30
    jp z, $CAF3

    di
    ret z

    di
    jp nc, $DA0C

    inc b
    reti


    ld b, $C5
    ld [bc], a
    jp z, $CC19

    dec c
    reti


    inc e
    sub b
    ld a, [hl-]
    dec hl
    ld [hl], b
    daa
    ld [hl], b
    add d
    or c
    add d
    or c
    and h
    sub l
    add $D6
    rst $10
    jp $E3EB


    sbc a
    ccf
    xor a
    rra
    add a
    rra
    ld b, e
    ld h, a
    ld h, b
    ld [hl], c
    inc a
    cp [hl]
    jr c, jr_008_444B

    pop af
    ei
    ld l, c
    ld sp, $81B1
    call $E3C1
    db $E3
    cp $FF
    jr jr_008_4478

jr_008_443C:
    nop
    jp $EFC1


    ret z

    di
    sub b
    pop hl
    and h
    pop bc
    ld c, h

jr_008_4447:
    add c
    add hl, hl
    inc b
    nop

jr_008_444B:
    db $F4
    ld b, b
    pop af
    pop bc
    di
    add b
    ld b, $B0
    dec c
    and b
    dec e
    add hl, bc
    ld [de], a
    ld [hl+], a
    nop
    add hl, hl
    ret nz

    xor a
    ret nz

    ld l, a
    add b
    di
    di
    ei
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    cp $FE
    cp $FE
    push hl
    di
    db $EB
    rst $20
    set 4, a
    adc c
    rst $00

jr_008_4478:
    ld [$04A7], sp
    ld [hl], e
    ld h, d
    ld sp, hl
    ldh a, [$FC]
    jp $C3F7


    rst $10
    ldh [$E0], a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
    rst $38
    add b
    ld a, a
    jp $8EE7


    sbc a
    ld a, $7F
    db $FD
    cp $F1
    cp $83
    db $FC
    ld b, $F8
    add hl, bc
    ldh a, [$6F]
    add b
    rst $18
    nop
    rst $18
    nop
    cp h
    inc bc
    or b
    rrca
    ld b, e
    ccf
    adc a
    ld a, a
    ccf
    rst $38
    ld a, h
    add e
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    ld bc, $10FE
    ldh [rVBK], a
    add b
    jr c, jr_008_4447

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $FE00
    nop
    ld bc, $06FE
    rst $38
    add hl, sp
    ret nz

    ld b, $F8
    ld bc, $1EFE
    rst $38
    rrca
    rst $38
    inc hl
    rra
    ret


    rlca
    inc d
    db $E3
    ld de, $42E0
    inc a
    sub b
    rrca
    ld l, b
    add a
    sub e
    rst $20
    db $ED
    di
    push af
    ei
    ld a, [bc]
    db $FD
    nop
    rst $38
    ld b, b
    ccf
    and b
    rra
    ld d, b
    adc a
    jr nz, @-$2F

    ret z

    rst $20
    ret nc

    rst $20
    db $E4
    di
    ldh a, [rIF]
    ld [hl], b
    rrca
    ldh [$1F], a
    ld h, d
    sbc l
    ld [c], a
    sbc l
    and $99
    add $B9
    push bc
    cp b
    rra
    rst $38
    ld a, $FF
    inc a
    cp $32
    db $FC
    inc h
    ld hl, sp+$01
    ld sp, hl
    ld [bc], a
    ei
    ld [$14F3], sp
    ldh [$80], a
    rlca
    rlca
    ld a, b
    inc bc
    add b
    ld a, h
    ld a, h
    cp a
    jp $8041


    sbc h
    nop
    ld [$0007], sp
    ldh a, [$F0]
    rrca
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ld c, a
    ret nz

    ld d, a
    jr nc, jr_008_45A9

    di
    sub e
    ld a, e
    ld [hl+], a
    add hl, de
    inc d
    ret


    ret z

    dec h
    db $E4
    ld de, $09F0
    ld a, [c]
    dec bc
    ld c, l
    or b
    ld e, [hl]
    and b
    db $10
    ldh [$AE], a
    ld c, [hl]
    sub e
    ld b, e
    dec e
    ld d, c
    ld e, $DC
    sbc h
    ld e, h
    inc b
    rst $30
    add c
    halt
    add b
    halt
    add b
    halt
    ld b, h
    ld [hl-], a
    ld c, b
    ld [hl-], a
    ld b, d
    jr c, @+$27

    add hl, de
    ccf
    inc e
    ld d, a
    cpl
    ld a, l
    inc bc
    cp $01
    cp a
    ld b, b
    cp a
    ld b, b
    sbc a
    ld h, b
    ld b, a
    jr c, jr_008_4599

    ld [$04CD], sp
    and $C2
    pop af
    db $E3
    ld a, b
    di
    cp b
    ld [hl], e
    ret nc

    dec sp
    db $F4
    rla
    ld a, b
    dec b
    inc e
    ld bc, $8140
    jr @+$3B

    inc h

jr_008_4599:
    push bc
    ld b, l
    add c
    sub d
    ld [bc], a
    ld a, [hl-]
    ld [de], a
    dec de
    ret nc

    sbc a
    adc $8F
    ld b, a

jr_008_45A6:
    daa
    ld b, b
    db $10

jr_008_45A9:
    ld h, b
    inc e
    ldh [$27], a
    ret c

    sub a
    add sp, $20
    dec e
    and c
    inc e
    sub d
    inc c
    db $10
    ld c, $09
    ld b, $08
    rlca
    adc d
    rlca
    add h
    inc bc
    ld h, b
    rra
    sbc a
    add b
    jr nz, jr_008_45A6

    sbc [hl]
    ld a, a
    ld a, h
    nop
    ld bc, $3E00
    ld bc, $3F81
    ldh [rNR22], a
    rst $00
    ld [$2030], sp
    add $00
    inc e
    ld b, $EF
    ld e, $1E
    rst $38
    di
    pop hl
    ld l, b
    ld a, [de]
    ld [hl], b

jr_008_45E3:
    ld a, [bc]
    sbc d
    and d
    sbc d
    jr nz, jr_008_462D

    ld d, l
    ld c, c
    dec bc
    jr nc, jr_008_45F5

    add a
    rlca
    sbc a
    ldh [$AF], a
    ret nc

    rra

jr_008_45F5:
    ld h, b
    ldh [rP1], a
    adc h
    rra
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    and h
    inc bc
    or l
    inc bc
    ld [hl], l
    ld h, e
    ld [hl], l
    ld [hl], e
    ld [hl], $11
    ld c, [hl]
    add c
    xor [hl]
    pop bc
    xor $C1
    rra
    cp a
    ld c, a
    sbc a
    sub a
    rst $08
    adc e
    rst $00
    and d
    pop bc
    ret z

    ldh [$D4], a
    ldh [$E5], a
    db $F4
    di
    rst $38
    rst $38
    rst $38
    cp $FF
    push hl
    add $E2
    db $FC
    ld c, b
    jr nc, jr_008_4630

jr_008_462D:
    nop
    db $FC
    inc bc

jr_008_4630:
    ld d, a
    add a
    rlca
    sub a
    and a
    rla
    rlca
    cpl
    ld c, a
    cpl
    adc a
    ld l, a
    ld c, a
    rst $28
    ld c, a
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02FE
    db $FC
    ld bc, $04FC
    ld sp, hl
    nop
    rst $38
    ld bc, $04FE
    ld hl, sp-$76
    ld [hl], c
    ld d, h
    inc hl
    jr z, jr_008_45E3

    ld d, e
    adc h
    dec b
    ld hl, sp+$40
    add b
    jr nz, jr_008_4683

    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rlca
    rst $38
    rra
    rst $38
    jr nz, jr_008_4691

    ld b, h
    add e
    add hl, bc
    ldh a, [rSC]
    db $FC
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop

jr_008_4683:
    rst $38
    nop
    rst $38
    ld b, b
    ccf
    sub b

jr_008_4689:
    rrca
    jr z, @-$37

    inc d
    db $E3
    ld a, [bc]
    pop af
    ld [bc], a

jr_008_4691:
    ld sp, hl
    nop
    ei
    ldh a, [$FB]
    inc b
    di
    ld bc, $41F7
    or a
    and e
    rla
    inc de
    ld b, a
    ld a, [bc]
    pop af
    inc d
    db $E3
    ld d, b
    rst $20
    xor b
    rst $00
    and b
    rst $08
    and b
    rst $08
    xor b
    rst $00
    or b

jr_008_46AF:
    rst $00
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $FF
    ld a, h
    rst $38
    ld a, e
    rst $38
    ld a, $FF
    db $F4
    dec bc
    ldh a, [rIE]
    ld hl, sp-$01
    call nz, $00FF
    rst $38
    ret nz

    rst $38
    inc b
    ld hl, sp+$13
    ldh [$2C], a
    jp $F904


    ld bc, $02FC
    db $FC
    nop
    cp $01
    cp $20
    rra
    ret nz

    rra
    jr nc, jr_008_46AF

    dec bc
    ld h, a
    ld bc, $407F
    ccf
    ld b, b
    ccf
    and b
    rra
    or b
    adc a
    ret c

    rst $00
    rst $28

jr_008_46EF:
    ldh [$15], a
    ld [c], a
    jr @-$1E

    daa
    ret nz

    ld e, b
    add a
    jr nc, jr_008_4689

    or b
    rrca
    ld a, c
    ld b, $7E
    nop
    ld bc, $FE00
    nop
    ccf
    ret nz

    ld [hl], b
    add b
    call z, $A30F
    inc a
    inc c
    ld [hl], b
    inc sp
    ld b, b
    ld d, b
    adc a
    ld hl, $D01F
    rrca
    add sp, $07
    inc [hl]
    inc bc
    ret c

    inc bc
    ld a, [de]
    ld bc, $019C
    ret z

    rst $30
    ldh a, [rIE]
    ld a, b
    rst $38
    ld a, [hl-]

jr_008_4727:
    db $FD
    jr jr_008_4727

    add hl, bc
    db $FC
    ld a, [bc]
    db $FC
    nop

jr_008_472F:
    cp $13
    ldh [rDIV], a
    ld hl, sp-$04
    cp $FE
    cp $FE
    rst $38
    cp $FF
    nop
    cp $FC
    cp $01
    nop
    ld d, $31
    ld [hl], c
    dec bc
    dec b
    inc bc
    ld c, e
    dec bc
    ld b, e
    inc de
    xor b
    ld b, d
    ld bc, $81C0
    inc bc
    dec [hl]
    push bc
    ret nz

    jp hl


    add sp, -$1B
    ldh [$E0], a
    call nz, $02EE
    ld e, $40
    add c
    ld c, l
    add b
    and [hl]
    ret nz

    ret nz

    add sp, -$3D
    reti


    nop
    ld a, [de]
    pop bc
    jr jr_008_46EF

    pop de
    adc c
    and [hl]
    ld bc, $80FE
    ld a, a
    ld b, b
    ccf
    nop
    cp a
    and b
    rra
    db $10
    adc a
    and h
    add e
    ld a, c
    nop
    db $FD
    db $FC
    ld hl, sp-$03
    ld a, [c]
    ld sp, hl
    push hl
    di
    adc d
    rst $00
    ld h, $1F
    sbc h
    ld a, a
    ld a, b
    rst $38
    jr @-$41

    dec b
    sbc l
    ld b, e
    add c
    dec [hl]
    jp $916A


    adc l
    ld [hl], b
    ld e, $E0
    ld a, a
    add b
    di
    rst $38
    rst $38
    rst $38
    ld e, a
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    halt
    jr c, jr_008_472F

    nop
    sub $88
    sub b
    ld hl, sp-$17
    ldh a, [$D2]
    pop hl
    and l

jr_008_47B9:
    jp $078A


    inc [hl]
    ld c, $41
    inc a
    ld h, a
    jr jr_008_47F3

    inc c
    inc de
    add b
    adc a
    ret nz

    ccf
    add b
    ld a, h
    inc bc
    ld hl, sp+$07
    ldh [$1F], a
    add hl, bc
    or d
    add hl, bc
    or d
    ld a, [bc]
    or c
    inc c
    or c
    inc h
    sbc c
    ld b, h
    sbc c
    dec b
    ret c

    ld b, $D8
    inc e
    ld a, a
    ld c, l
    ld a, $8C
    ld a, $A4
    ld e, $44
    sbc [hl]
    ld d, c
    adc [hl]
    ld hl, $2ACE
    call nz, $DFEE
    ld h, [hl]

jr_008_47F3:
    rst $18
    halt
    rst $28
    ld [hl-], a
    rst $28
    or e
    ld l, a
    add hl, de
    ld [hl], a
    ld e, [hl]
    ld hl, $0000
    ld sp, hl
    cp $F8
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    ld c, $FF
    ld b, $FF
    inc hl
    rra
    nop
    ld a, a
    ld b, b
    ccf
    add b
    ccf
    nop
    cp a
    jr nz, jr_008_47B9

    ld b, b
    sbc a
    nop
    rst $18
    nop
    rst $18
    ld [bc], a
    call c, $DC02
    jp nz, $03DC

    call c, $DC02
    dec d
    ret z

    inc hl
    ret z

    dec bc
    ldh [rNR11], a
    ldh [rVBK], a
    add b
    cp a
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
    ret nz

    ccf
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1F], a
    ldh [$1F], a
    ldh a, [rIF]
    db $EC
    inc bc
    ret


    rlca
    ld [hl], d
    add c
    dec a
    ret nz

    ld e, $E0
    rra
    ldh [$1F], a
    ldh [$3F], a
    ret nz

    rst $38
    nop
    db $10
    rst $08
    and b
    rst $08
    rrca
    rst $28
    add b
    ld l, a
    ld b, b
    cpl
    add b
    cpl
    and b
    rrca
    ret nc

    rrca
    rst $20
    ldh [$E7], a
    ldh [rTAC], a
    ldh [rNR22], a
    ldh [rTMA], a
    ldh a, [$F0]
    ld sp, hl
    push af
    ldh a, [$F2]
    db $F4
    rst $38
    nop
    db $FC
    nop
    sub e
    nop
    ld l, a
    ld h, b
    scf
    ldh a, [$09]
    ld hl, sp+$06
    cp $F0
    rrca
    db $10
    rrca
    ldh a, [rIF]
    ld sp, hl
    ld b, $FA
    inc b
    cp $00
    add b
    nop
    ld h, b
    ld c, $91
    and h
    rra
    ret nz

    inc bc
    add b
    inc e
    ld a, h
    add e
    ld a, a
    ld [hl], b
    rrca
    inc c
    inc bc
    di
    nop
    ld l, h
    ldh a, [$DF]
    rra
    rst $18
    rra
    ret nz

    rra
    nop
    rra
    and b
    sbc a
    cp a
    ccf
    ld a, a
    ld a, a
    ccf
    cp a
    add hl, bc
    ld a, [c]
    ld [bc], a
    ld sp, hl
    inc d
    ldh [$E1], a
    db $EC
    xor $E8
    push hl
    xor $0A
    rst $20
    push hl
    ld a, [c]
    rra
    nop
    ld h, b
    nop
    adc d
    ld [hl], d
    inc h
    ld [hl], b
    ld [hl], d
    ld [hl], c
    ld [hl], h
    ld [hl], d
    jr nc, jr_008_4956

    ld a, b
    ccf
    xor c
    inc sp
    ld [hl], e
    ccf
    cp a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    db $FC
    ld hl, sp-$3C
    jp hl


    sub d
    call nc, $82A1
    sub d
    adc e
    and e
    sub e
    add e
    rst $00
    add $FF
    ld a, a
    cp $00
    cp a
    jr nz, jr_008_4923

    ld c, a
    rra
    ld c, a
    cpl
    cpl
    ld c, a
    cpl
    ld l, a
    ld b, b
    cpl
    rrca
    rra
    ldh a, [$F8]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ldh [$1F], a
    nop
    pop hl
    ld e, $06
    ld sp, hl
    rra
    cp a
    xor a

jr_008_4923:
    sbc a
    sub a
    rst $08
    set 4, a
    dec b
    inc hl
    ret


    nop
    and $08
    pop af
    ld b, $FC
    rst $38
    rst $38

jr_008_4933:
    rst $38
    rst $38
    rst $38
    ld hl, sp-$0F
    ld sp, hl
    rst $38
    ld a, a
    rst $38
    dec l
    ld e, $C0
    nop
    db $FC
    cp $FA
    db $FC
    db $F4
    ld sp, hl
    jp hl


    di
    db $D3
    rst $20
    ld c, c
    add e
    inc [hl]
    ld [$3CC3], sp
    ld a, a

jr_008_4951:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_008_4956:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    nop
    rst $38
    ld bc, $04FE
    ld hl, sp+$0A
    pop af
    inc d
    db $E3
    jr z, jr_008_4933

    db $10
    rst $08
    ld b, b

jr_008_496F:
    sbc a
    ld [hl+], a
    pop bc
    inc de
    rrca
    adc [hl]
    ld a, a
    ld a, [de]
    db $FC
    add hl, hl
    ldh a, [rNR21]
    pop hl

jr_008_497C:
    inc l
    jp $845A


    jp hl


    ldh a, [$82]
    db $FC
    ld b, b
    add b
    add hl, sp
    ld e, $3A
    db $FD
    jr c, jr_008_497C

    add d
    ld bc, $1F20
    nop
    rst $38
    ld b, b
    ccf
    jr nz, jr_008_49B5

    sub b
    rrca
    ret z

    rlca
    inc b
    inc bc
    ld bc, $02F8
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
    nop
    rst $38
    add b
    ld a, a
    jr nz, jr_008_4951

    nop
    cp a
    nop

jr_008_49B5:
    cp a
    ld b, c
    ld a, $00
    ld a, [hl]
    ld [bc], a
    ld a, h
    ld bc, $417C
    inc a
    inc a
    add b
    cp c
    nop
    ld [hl], d
    ld bc, $0265
    ret z

    ld b, $D0
    rrca
    add b
    rra
    and d
    rra
    add d
    ld a, a
    ld bc, $00FF
    rst $38
    inc b
    rst $38
    add e
    ld a, a
    ld b, c
    ccf
    ld h, b
    rra
    jr nc, jr_008_496F

    dec b
    cp $A2
    rst $18
    db $DB
    rst $20
    ld h, l
    di
    ld l, b
    di
    or d
    ld sp, hl
    db $F4
    ld sp, hl
    ld a, c
    db $FC
    ld b, b
    ccf
    and b
    rra
    ld c, a
    sbc a
    sub b
    rst $08
    and b
    rst $08
    ret nz

    rst $28
    ld c, b
    rst $20
    ld d, b
    rst $20
    ld bc, $81BC
    cp h
    inc h
    sbc b
    ld c, c
    sub e
    db $10
    call nz, $E4C7
    inc b
    add a
    inc de
    ld h, a
    ld bc, $433F
    ccf
    ld b, e
    ccf
    ld [hl+], a
    rra
    ld [bc], a
    sbc a
    ld [de], a
    ld c, a
    add b
    rrca
    xor b
    rlca
    inc c
    add e
    ld [hl+], a
    add c
    add hl, de
    and b
    and h
    jr c, jr_008_4A29

jr_008_4A29:
    jr nz, jr_008_4A6B

    rra
    rrca
    jr nc, jr_008_4A9F

    nop

jr_008_4A30:
    add hl, sp
    db $FC
    jr jr_008_4A30

    adc h
    ld a, b
    ld h, c
    jr jr_008_4A53

    nop
    and b
    ld bc, $2059
    sub h
    ld a, b
    daa
    rst $30
    add a
    ld [hl], a
    ld b, b
    scf
    jr nz, jr_008_4A5F

    db $10
    rlca
    rrca
    and a
    sbc a

jr_008_4A4D:
    ld e, a
    ld e, a
    rra
    ld bc, $00C3

jr_008_4A53:
    add c
    ld [$80C0], sp
    ld h, b
    ret nz

    jr nc, @-$1D

    jr jr_008_4A4D

    dec c
    ld a, b

jr_008_4A5F:
    add [hl]
    ld b, h
    and e
    sub d
    pop hl
    add hl, de
    nop
    ld b, h
    ld [$C62D], sp
    and e

jr_008_4A6B:
    rst $00
    push de
    db $E3
    ld d, d
    pop hl
    add hl, bc
    nop
    db $10
    ld h, l
    jr nc, jr_008_4AF1

    cp $7F
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, sp
    db $FC

jr_008_4A82:
    jr c, jr_008_4A82

    ld a, c
    rst $38
    db $FD
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FD
    pop af
    ld [c], a

jr_008_4A90:
    jr nz, jr_008_4AB1

    nop
    cp a
    cp a
    cp a
    cp a
    cp a
    ccf
    cp a
    cp a
    ccf
    ld b, b
    ccf
    ccf

jr_008_4A9F:
    ld a, a
    inc a
    jp Jump_008_619E


    rst $28
    db $10
    ld [hl], a
    ld [$003F], sp
    adc a

jr_008_4AAB:
    nop
    ld h, e
    add b
    jr jr_008_4A90

    add hl, hl

jr_008_4AB1:
    ld [hl], b
    inc d
    cp b
    ld [bc], a
    call c, Call_008_6681
    pop bc
    jr c, jr_008_4AAB

    ld c, $FC
    inc bc
    rst $38
    nop
    ld a, a
    rst $38
    cp a
    ld a, a
    cpl
    rra
    dec bc
    rlca
    ld de, $0400
    nop
    ld e, a
    and b
    rst $38
    nop
    ld a, [c]
    db $FC
    db $F4
    ld sp, hl
    jp hl


    di
    db $D3
    rst $20
    ld b, a
    adc a
    rrca
    rra
    rst $08
    cpl
    rst $20
    rrca
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
    nop

jr_008_4AF1:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $04FE
    ld a, [$F00A]
    dec b
    ldh a, [rNR10]
    push hl
    ld [de], a
    pop hl
    ld c, b
    add a
    and b
    rra
    ld b, b
    ccf
    add b
    ld a, a
    nop
    rst $38
    ld [$32FF], sp
    db $FD
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    inc e
    rst $38
    jr nc, @+$01

    ld hl, $42FF
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    pop bc
    rst $38
    rlca
    rst $38
    inc e
    rst $38
    ld a, c
    rst $38
    rst $28
    rst $38
    inc a
    rst $38
    ld h, b
    rst $38
    ld [bc], a
    ld sp, hl
    ret nz

    ei
    add hl, bc
    ld a, [c]
    ld b, [hl]
    ldh a, [$84]
    pop af
    add hl, bc
    ld a, [c]
    nop
    cp $0A
    db $FC
    ld a, [bc]
    push hl
    nop
    rst $28
    ret nz

    rst $28
    ld de, $03CF
    rst $18
    inc bc
    rst $18
    ld b, a
    sbc a
    daa
    sbc a
    ld h, h
    ei
    call nc, $9BE3
    db $E4
    and h

jr_008_4B57:
    ret z

    adc d
    pop de
    ld c, c
    sub e
    ld d, a
    add e
    ld d, e
    add a
    inc e
    db $E3
    ret


    ld b, $1C
    nop
    jp $8200


    rst $38
    pop bc
    pop hl
    nop
    sbc [hl]
    ld bc, $007E
    rst $38
    jr c, jr_008_4B7B

jr_008_4B74:
    pop hl
    rra
    ld b, e
    ccf
    and d
    rra
    ld b, h

jr_008_4B7B:
    sbc a
    sub c
    adc $6C
    ld b, b
    ld de, $64FC
    ld sp, hl
    pop bc
    ei
    adc b
    di
    inc d
    db $E3
    ld b, b
    add a
    nop
    daa
    jr z, jr_008_4B57

    adc [hl]
    cp a
    adc [hl]
    cp a
    dec c
    cp [hl]
    inc b
    cp [hl]
    inc h
    sbc [hl]
    and d
    sbc h
    add c
    call c, $C8D4
    xor [hl]
    rlca
    ld d, [hl]

jr_008_4BA3:
    ld l, $2C
    ld a, [hl]
    db $FC
    ld a, l
    ld a, l
    db $FC
    ld a, h
    db $FC
    ld a, h
    db $FC
    ld e, $3C
    ld c, $70
    jr nc, jr_008_4B74

    ld c, h
    add d
    sub e
    jr nz, @+$4E

    nop
    ccf
    sbc h
    cp a
    ld b, $AF
    inc de
    ld b, b
    ld h, e
    add e
    inc e
    ld e, $60
    jr c, @-$7E

    sub d
    ld b, b
    ld [$1042], sp
    ld c, d
    ld a, [bc]
    ld e, b
    add e
    rlca
    ld [hl], c
    dec sp
    sub h
    ld c, c
    inc l
    sbc l
    cp b
    adc l
    db $DD
    cp c
    or c
    ei
    xor e
    sub e
    jr z, jr_008_4BA3

    db $10
    rst $20
    push af
    ld a, [c]
    pop af
    ld hl, sp-$04
    cp $FE
    cp $02
    db $FC
    cp $FE
    ld c, h
    sbc h
    add b
    dec bc
    inc sp
    ld b, h
    ld c, d
    nop
    inc [hl]
    or b
    dec [hl]
    sub b
    add b
    dec [hl]
    ld b, c
    ld b, l

Jump_008_4C00:
    ld h, $98
    ld e, d
    ld b, h
    ld bc, $1F41
    ld a, $80
    nop
    ld e, [hl]
    pop hl
    pop af
    rst $38
    rst $38
    rst $38
    reti


    sbc b
    ld a, [de]
    sbc l
    cp a
    rra
    ld e, $3F
    ld a, a
    ld a, $7E
    cp $FC
    cp $F8
    db $FC
    add h
    jp Jump_008_67C8


    ld h, d
    halt
    jr nc, jr_008_4CA2

    add hl, sp
    ld a, h
    add hl, sp
    ld a, h
    sub e
    ld a, b
    add a
    ld [hl], b
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $8339
    pop bc
    push hl
    di
    di
    ld sp, hl
    ld sp, hl
    db $FC
    db $FC
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    adc a
    sbc [hl]
    rst $38
    ld a, d
    db $FC
    ld c, c
    jr nc, @+$09

    add b
    sbc a
    add b
    push af
    ld hl, sp-$18
    ldh a, [$A3]
    ret nz

    sbc a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    nop
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1F], a
    nop

jr_008_4C7D:
    rst $38
    nop
    rst $38
    nop
    ei
    ld [$05F3], sp
    ld a, [c]
    db $10
    and $08
    and $04
    xor $04
    xor $28
    add $32
    ld a, h
    ld [hl-], a
    ld a, h
    dec h
    ld a, b
    or h
    ld a, c
    inc h
    ld sp, hl
    ld l, d
    pop af
    ld l, c
    di
    xor c
    ld [hl], e
    ld [hl], h
    rst $38

jr_008_4CA2:
    ret z

    ldh a, [$A4]
    jp $CF11


    add b
    rst $18
    add l
    ret c

    ld b, d
    sbc h
    ld b, d
    sbc h
    dec e
    cp $26
    rra
    ld c, e
    add a
    sub h
    db $E3
    ld l, d
    pop af
    dec [hl]
    ld hl, sp-$67
    ld a, h
    ld c, d
    inc a
    ld [hl+], a
    inc e
    ld d, l
    adc [hl]
    xor d
    rst $00
    push de
    db $E3
    ld h, l
    di
    ld l, d
    pop af
    ld [hl-], a
    ld sp, hl
    sub l
    ld a, b
    ld de, $D1C6
    add $51
    add [hl]
    inc d
    and e
    jr jr_008_4C7D

    ld [hl-], a
    add c
    ld hl, $2880
    add b
    add hl, hl
    ld [hl], e
    ld [$4A73], sp
    ld sp, $2099
    or b
    nop
    rst $00
    nop
    sbc b
    rlca
    daa
    rra
    ld b, [hl]
    sbc b
    ld b, [hl]
    sbc b
    ld d, h
    adc b
    sbc l
    nop
    ld b, b
    nop
    cp [hl]
    ld b, b
    ret nz

    db $FC
    ldh a, [$FB]
    inc h
    ld e, $A5
    ld e, $92
    rrca
    ld c, d
    add a
    ret z

    rlca
    add hl, bc
    rlca
    dec d
    db $E3
    dec [hl]
    jp Jump_008_7C89


    ld c, c
    inc a
    ld c, d
    inc a
    ld c, b
    ld a, $A0
    ld e, $24
    sbc [hl]
    inc h
    sbc [hl]
    ld d, b
    adc [hl]
    inc d
    adc b
    ld b, [hl]
    sbc b
    ld [bc], a
    call c, $9824
    inc b
    cp b
    add h
    cp b
    add h
    cp b
    sub h
    cp b
    ld e, a
    ccf
    cp a
    ld a, a
    rlca
    adc a
    ld bc, $0073
    db $FD
    ld a, b
    add [hl]
    add [hl]
    nop
    jr nz, jr_008_4D40

jr_008_4D40:
    ldh [$F7], a
    pop hl
    or $E6
    ldh a, [$F8]
    ldh a, [$F7]
    ld hl, sp-$04
    rst $38
    cp $FF
    rst $38
    rst $38
    call nz, $1203
    ld bc, $116A
    xor d
    ld [hl], c
    ld a, [bc]
    sub c
    ld a, [bc]
    ld bc, $216A
    ld a, [hl+]
    ld b, c
    inc d
    adc $11
    adc $91
    adc $A9
    add $C9
    and $C9
    and $89
    and $89
    and $02
    cp h
    ld a, [hl+]
    sbc h
    and l
    sbc [hl]
    add l
    sbc [hl]
    sub [hl]
    adc a
    sub d
    rst $08
    inc de
    rst $08
    adc c
    add a
    ld c, e
    ld [$5309], sp
    ld [bc], a
    ld h, a
    ld h, h
    ld a, $9C
    ld a, $BF
    ld e, $4E
    sbc a
    ld d, a
    adc a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ccf
    rst $38
    rra
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    ld a, [de]
    add c
    sub d
    ld sp, hl
    ld a, [c]
    ld sp, hl
    ld a, [c]
    ld sp, hl
    di
    ld hl, sp-$0D
    ld hl, sp-$0D
    ld hl, sp-$0B
    ld hl, sp+$69
    add $09
    and $A9
    add $29
    add $2B
    call nz, $8C53
    jp nc, $A20C

    inc e
    xor c
    add a
    inc h
    add e
    inc [hl]
    ld b, e
    ld [de], a
    ld h, c
    ld a, [de]
    ld h, c
    add hl, de
    ldh [$3C], a
    ret nz

    add hl, sp
    ret nz

    xor e
    rst $00
    and l
    jp $C122


    ld d, b
    ldh [rNR14], a
    ldh [$BA], a
    ld b, b
    ld a, d
    nop
    add h
    nop
    add l
    jp $E7DB


    rst $38
    rst $38
    or d
    ld a, h
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    db $E4
    ld hl, sp-$2D
    ldh [rVBK], a
    add b
    ccf
    nop
    ei
    inc b
    push hl
    ld a, [de]
    add b
    ld a, a
    ld e, b
    rst $38
    ld h, $18
    ld h, $18
    cp [hl]
    nop
    sbc h
    nop
    pop bc
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    ld d, b
    add e
    inc hl
    call z, $10CE
    sbc b
    jr nz, jr_008_4E3C

    ld b, b
    ld c, l
    nop
    ld e, d
    add h
    push de
    ld c, $CB
    rlca
    di
    rlca
    ld bc, $F407
    inc bc
    dec bc
    pop af
    ld h, d
    ld sp, hl
    sub l
    ld a, b
    ld h, h
    jr jr_008_4E4B

    cp h
    ld a, [bc]
    cp h
    ld [hl+], a
    sbc h
    add hl, hl
    sbc h

jr_008_4E38:
    ld d, b
    adc l
    ld d, l
    adc b

jr_008_4E3C:
    adc h
    nop
    ld [hl+], a
    nop
    ld h, d
    db $FC
    ld h, l
    ld hl, sp+$4A
    pop af
    ld c, b
    di
    inc d
    db $E3
    ld d, [hl]

jr_008_4E4B:
    ldh [rNR41], a
    pop bc
    ret z

    inc bc
    sbc [hl]
    ld a, a
    jr c, @+$01

    ld b, e
    db $FC
    jr jr_008_4E38

    ret nz

    rlca
    ld b, $3F
    ld e, e
    db $FC
    inc e
    ldh [$9B], a
    rlca
    inc c
    inc bc
    inc sp
    ret nz

    ld l, h
    ld hl, sp+$02
    db $FC
    ldh a, [$0E]
    ld e, $00
    ld h, b
    add b
    cp d
    ld bc, $8345
    ld d, e
    adc a
    adc a
    rra
    ccf
    rra
    ld e, a
    ccf
    cp a
    ld a, a
    inc bc
    rlca
    ld h, a
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_008_4E8F:
    rst $38
    ld [de], a
    add hl, bc
    inc de
    ld hl, sp-$04
    ld hl, sp-$10
    ld hl, sp-$40
    rst $20
    add b
    rst $18
    rlca
    cp b
    jr jr_008_4F00

    ld [c], a
    ld bc, $0F11
    ld b, $FF
    ld h, b
    rra
    rla
    ld [$8058], sp
    inc b
    inc bc
    inc bc
    rst $38
    sbc b
    ldh [$34], a
    pop bc
    push bc
    ld [$2018], sp
    inc hl
    ret nz

    ld d, h
    adc c
    jp z, $9510

    jr jr_008_4EC1

jr_008_4EC1:
    ld sp, hl
    ld a, b
    add [hl]
    add [hl]
    ld bc, $1020
    ld b, b
    ld h, c

jr_008_4ECA:
    dec h
    inc b
    nop
    add b
    sub d
    add b
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl+], a
    ld b, b
    adc d
    ld b, $81
    jp nz, $89CA

    nop
    add c
    inc h
    add c
    jr jr_008_4E8F

    db $D3
    adc c
    ld hl, sp+$07
    rrca
    nop
    jr nz, jr_008_4F36

    adc e
    ld b, b
    ld d, d
    ret


    add sp, -$25
    ret c

    or e
    or d
    and c

jr_008_4F00:
    ld e, l
    add hl, bc
    ld c, d
    adc l
    adc [hl]
    ld b, $66
    inc b
    jr nc, jr_008_4ECA

    ld h, [hl]
    add b
    push de
    ld [$300B], sp
    adc h
    ret nc

    jp hl


    call nz, $E152
    and c
    ld a, a
    ld e, a
    ccf
    cpl
    rra
    sub a
    rrca
    rlc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_008_4F26:
    di
    rst $38
    di
    pop hl
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    and l
    jp $FFC3


    cp $FF

jr_008_4F36:
    rst $38
    cp $FC
    cp $FA
    db $FC
    db $F4
    ld hl, sp-$18
    ldh a, [rTMA]
    add c
    sub e
    nop
    inc h
    jr @+$73

    ld c, $60
    nop
    add e
    rrca
    rra
    ccf
    ccf
    ld a, a
    ld sp, $C3C6
    inc c
    ld b, $38
    ld l, h
    pop af
    ret z

    di
    add hl, de
    ld [c], a
    or c
    add $F3
    inc b
    and l
    inc bc
    ld [hl], c
    nop
    jr c, jr_008_4F26

    ld b, e
    add b
    add [hl]
    rra
    inc e
    ld a, $39
    ld a, h
    ld [hl], e
    ld a, b
    pop hl
    di
    ld a, a
    di
    ld a, [hl+]
    inc e
    add b
    nop
    ld h, a

jr_008_4F79:
    nop
    ret nc

    rlca
    xor e
    inc de
    ld [hl], a
    dec sp
    jp nc, Jump_008_42E0

    add b
    dec d
    nop
    db $E4
    ld de, $F105
    db $EB
    pop hl
    jp hl


    db $E3
    jp hl


    db $E3
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, $E9
    ld bc, $00FE
    rst $38
    ld a, $C1
    ld h, e
    add b
    nop
    rst $38
    ld [$06F7], sp
    ld sp, hl
    dec b
    ld hl, sp-$7E
    ld a, h
    ld h, d

jr_008_4FBB:
    sbc h
    add hl, hl
    add $D5
    ld [hl+], a
    ld [bc], a
    db $FC
    ld de, $09EE
    or $08
    db $F4
    adc d
    ld [hl], c
    sbc a
    ld h, b
    ld e, h
    jr nz, jr_008_5048

    nop
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf
    jr nz, jr_008_4F79

    add b
    ld e, a
    ld b, b
    rra
    jr nz, jr_008_4FFF

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, b
    add b
    ld a, h
    add b
    ld a, l
    add b
    inc a
    pop bc
    jr c, jr_008_4FBB

    ld a, [de]
    pop hl
    adc d
    ld [hl], b
    ld h, c

jr_008_4FFF:
    nop
    ld a, b
    nop
    inc de
    ld bc, $8344
    dec hl
    call nz, $E804
    adc c
    nop
    ld d, e
    jr nz, @+$06

    ld hl, sp+$02
    ld bc, $E374
    ld [$F8F3], sp

jr_008_5017:
    inc bc
    ld [bc], a
    ld bc, $00FC
    ld b, e
    cp h
    ldh [$1F], a
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    jr nz, jr_008_504D

    ret z

    nop
    nop
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
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
    ld [de], a
    adc c
    ret z

    push hl
    ldh [$F5], a
    ld a, [c]
    push af

jr_008_5048:
    ldh a, [$F7]
    ld [hl+], a
    push af
    inc b

jr_008_504D:
    ld sp, $0102
    ld e, c
    cp $0E
    rst $38
    ld [hl], c
    adc a
    adc [hl]
    ld bc, $0041
    ld [hl-], a
    add $0B
    di
    inc b
    ld hl, sp+$31
    ld c, $40
    add b
    sub a
    ldh [rBCPD], a
    di
    sub b
    ld a, e
    ld h, h
    dec de
    db $10
    adc a
    jr nz, jr_008_5088

    ld [hl], $00
    ret z

    daa
    rla
    rst $08
    jr z, jr_008_5017

    adc a
    ld [hl], b
    db $10
    ldh [rNR51], a
    call nz, $0962
    jr nz, jr_008_50A1

    sub b
    rrca
    ld c, h
    add b
    add c
    db $D3

jr_008_5088:
    ld b, a
    sub a
    add a
    scf
    daa
    sub a
    sub [hl]
    rst $00
    add b
    inc bc
    ld [hl], h
    add d
    db $10
    and $01
    ld [bc], a
    jr jr_008_509D

    ldh [rSB], a
    db $FC

jr_008_509D:
    nop
    ccf
    ret nz

    nop

jr_008_50A1:
    rst $38
    inc b
    inc bc
    ld e, b
    or b
    ld [hl], l
    dec sp
    sbc e
    dec l
    ld e, [hl]
    adc l
    dec h
    adc $13
    ld [hl+], a
    nop
    rst $30
    dec c
    ldh [$5B], a
    jr nz, @-$67

    ld [$C0E3], sp
    call c, $AEE8
    rst $10
    ld c, [hl]
    or a
    inc [hl]
    add e
    sbc b
    ld b, a
    db $10
    ld c, h
    db $E3
    db $10
    adc c
    ld b, $5E
    ld a, [hl+]
    ld sp, hl
    ld l, h
    or d
    ld l, c
    ld b, b
    and $00
    ld h, b
    add [hl]
    jr nz, @+$0F

    and d
    ld l, b
    rlca
    add d
    ld b, c
    ld d, b
    adc b
    adc a
    rra
    rrca
    ldh a, [rSB]
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
    call nz, $F108
    ld [bc], a
    inc a
    ret nz

    rlca
    ld hl, sp-$76
    ld [hl], l
    dec b
    ld a, [$EF10]
    ld bc, $B5FE
    ld a, d
    dec a
    ld a, [hl-]
    ld b, $01
    ldh a, [rP1]
    ld a, a
    add b
    add d
    ld a, l
    dec d
    ld [$906F], a
    ld h, l
    or d
    xor h
    ret nz

    pop de
    ret nz

    ld bc, $FC03
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rra
    ccf
    ccf
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    inc bc
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    and d
    sbc h
    ld e, b
    ret nz

    and c
    ld h, a
    rst $08
    db $10
    sub b
    jr nz, jr_008_516A

    ld b, b
    inc l
    ld b, b
    ld [$E6E0], sp
    ld e, $13
    rrca
    ret


    rst $00
    ld h, b
    ldh [$AB], a
    ld l, a
    ld [hl], b
    scf
    jr @+$3D

    inc c
    ccf
    add b
    ld a, a
    nop
    ld a, a
    ld h, c
    nop
    jr @+$08

    pop bc
    ret nz

    cp $FE
    add hl, bc
    ldh a, [rNR21]
    and $00
    rst $38

jr_008_5162:
    nop
    rst $38
    nop
    rst $38
    ld b, b
    ccf
    nop
    cp a

jr_008_516A:
    jr nz, jr_008_518B

    ret


    ret nz

    or [hl]
    ld [hl], d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_008_5178:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    jr nz, jr_008_5162

    ld d, b
    or b
    ld l, a

jr_008_5185:
    sbc a
    ccf
    ret nz

    ld c, $F1
    ld b, b

jr_008_518B:
    cp $31
    db $FC
    ld [hl], e
    ld sp, hl
    ld [bc], a
    ccf
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld de, $4EE0
    ld c, $8E
    sbc [hl]
    add $DE
    add hl, hl
    rst $08
    inc h
    reti


    nop
    ld hl, sp+$02
    db $FD
    db $10
    adc a
    and d
    inc l
    ld l, h
    ld h, b
    ld h, c
    ldh [$5B], a
    add hl, sp
    add $BD
    nop
    rst $38
    jr nz, jr_008_5178

    adc a
    nop
    scf
    ld [$06F9], sp
    db $FC
    inc bc
    nop
    ld a, a
    ld b, b
    ccf
    ccf
    ccf
    jr nz, jr_008_51E7

    ret nc

    rrca
    ld h, b
    adc a
    xor b
    ld b, a
    sub b
    ld h, a
    ld [hl], b
    ei
    ld h, b
    ei
    ld [hl+], a
    ld sp, hl
    nop
    ld sp, hl
    add l
    ld a, b
    ld [$5370], sp
    jr nz, jr_008_5185

    ld bc, $DEC4
    ld d, b
    adc $10
    adc $28

jr_008_51E7:
    add $24
    jp nz, $00DA

    inc d
    ld [$1C8B], sp
    and b
    ld h, b
    add b
    ld h, b
    ld c, b
    inc h
    inc l
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $5315
    ld h, e
    rla
    db $FC
    inc bc
    ld a, $01
    adc a
    nop
    ld b, e
    add b
    inc h
    ret nz

    ret nc

    ldh [$E1], a
    push af
    db $F4
    ld a, [c]
    inc bc
    rst $30
    inc hl
    sbc e
    ld [de], a
    ret


    sub b
    ld c, l
    add b
    ld h, l
    ld b, c
    dec hl
    dec hl
    rrca
    rra
    ld e, a
    inc bc
    add b
    ld b, h
    adc b
    and c
    sub [hl]
    adc d
    or e
    sbc e
    or e
    and [hl]
    sbc e
    ld d, l
    adc [hl]
    jp z, Jump_008_5DE4

    sbc [hl]
    ld e, $DF
    ld c, a
    cpl
    sbc a
    rrca
    sbc a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    scf
    rlca
    adc a
    rlca
    rst $00
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
    rst $18
    di
    ld hl, sp-$08
    db $FC
    db $FC
    rst $38
    rst $38
    rst $38
    and $C7
    rst $20
    cp $FC
    cp $FA
    db $FC
    nop
    ld a, a
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add b
    ld a, a
    rst $38
    rst $38
    ldh [$F0], a
    ld a, [$FDFC]
    db $FC
    ld hl, sp-$03
    add c
    ret nz

    ld a, $00
    pop af
    ld c, $40
    cp a
    ld e, a
    ccf
    sub a
    rrca
    ld h, l
    add e
    sbc b
    ldh [$67], a
    ld hl, sp+$28
    rra
    rlc a
    push af
    inc bc
    rst $00
    db $E3
    rst $20
    rst $38
    rst $38
    rst $38
    call $003E
    nop
    rst $00
    rra
    ccf
    sbc a
    sbc a
    cp a
    db $F4
    ld sp, hl
    jp hl


    di
    and e
    rst $00
    adc a
    rra
    ccf
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $FC
    ld b, c
    add b
    inc [hl]
    sub e
    dec hl
    sub a
    dec [hl]
    adc a
    ld d, b
    adc a
    ld [de], a
    call z, $8041
    jr nz, jr_008_52F5

    add hl, de
    cp $E2
    db $FC
    push bc
    ld sp, hl
    add [hl]
    ei
    ld [$00F7], sp
    nop
    nop
    rst $38
    ld [hl], c
    adc [hl]
    adc c
    ld b, $34
    ld [hl], e
    cp d
    ret


    ld c, [hl]
    add l
    db $10
    add a
    ld e, d
    inc e
    or b
    ccf
    ld b, a

jr_008_52F5:
    ld a, b
    adc b
    ldh a, [rNR13]
    ldh [rNR42], a
    ret nz

    ld b, c
    add b
    ld [bc], a
    ret nz

    inc l
    rra
    ld e, b
    adc a
    jr nz, @-$2F

    add c
    ld l, [hl]
    ld b, e
    inc l
    ld b, [hl]
    jr z, jr_008_531A

    ld h, b
    ld a, [bc]
    ld h, c
    ld b, e
    sbc h
    adc b
    jr nc, jr_008_533C

    ld b, b
    ld e, b
    add a
    inc hl
    sbc h

jr_008_531A:
    and [hl]
    add hl, de
    ld c, h
    inc sp
    ld e, b
    daa
    ret nz

    ccf

jr_008_5322:
    db $10
    rrca
    call nz, $F103
    nop
    inc e
    ldh [rTMA], a
    ld hl, sp+$1F
    ldh [$7C], a
    add b
    db $10
    add a
    ld c, b
    rst $08
    jr nc, @+$01

    nop
    rst $38
    add h
    ld a, b
    ld c, e
    inc sp

jr_008_533C:
    dec [hl]
    inc bc
    inc c
    inc bc
    jr nz, jr_008_5322

    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, d
    ld bc, $BC9C
    xor l
    sbc l
    sub h
    db $E3
    inc b
    di
    ld l, e
    di
    ldh a, [$FB]
    ld [hl], d
    ld sp, hl
    inc d
    ld sp, hl
    sbc b
    ld a, l
    jr z, jr_008_537D

    ld e, b
    daa
    ld [hl], c
    ld c, $71
    ld c, $51
    ld c, $13
    inc c
    inc de
    adc h
    sub d
    call z, $C8D6
    pop af
    nop
    ld [$D501], a
    inc bc
    adc e
    rlca
    ld b, a
    ccf
    rrca
    rra
    ld e, a

jr_008_537D:
    ld c, a
    rrca
    rrca
    ld h, $01
    ld [hl], d
    ld bc, $0081
    ld l, [hl]
    sub b
    add b
    pop hl
    push hl
    call nz, $C080
    sub d
    ret nz

    inc h
    sbc l
    ld sp, $118C
    ld [$0053], sp
    jp z, $F801

    ret z

    ei
    ld hl, sp-$0C
    ldh a, [$C1]
    db $DD
    ld b, c
    db $DD
    db $10
    call $8914
    ld a, [hl-]
    ld bc, $031B
    inc bc
    rlca
    daa
    ld [hl], a
    inc l
    ret nz

    inc c
    ldh [$E4], a
    ldh a, [$F0]
    ld a, [$FEFA]
    cp $FE
    ld bc, $FFFE
    rst $38
    adc a
    rrca
    ld c, a
    cpl
    adc a
    rra
    sbc a
    rst $38
    ld a, a
    rst $38
    di
    ld [hl], c
    inc sp
    ld a, a
    ld e, a
    ccf
    adc h
    ret nc

    jp hl


    call nz, $E1D2
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    pop af
    db $FC
    cp $F9
    db $FC
    db $FD
    ld hl, sp-$10
    ld hl, sp-$16
    ldh a, [$D2]
    pop hl
    and l
    jp $8B10


    ld l, b
    inc de
    or e
    ld h, a
    ld b, a
    add a
    rra
    ccf
    ld a, a
    rst $38
    ld b, b
    ccf
    rlca
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    sbc a
    sub a
    rst $08
    set 4, a
    ld [c], a
    pop af
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $FD
    cp $F4
    ld hl, sp-$60
    jp $1E0C


    ld hl, sp-$03
    ld a, [$F0FA]
    ld a, [$874B]
    rla
    rrca
    ld l, a
    rra
    ld e, a
    ccf
    ld a, $3F
    dec a
    ld a, $1D
    cp a
    xor a
    rra
    ldh [$F1], a
    jp nc, $A5E4

    ret z

    ld a, [bc]
    pop de
    reti


    inc bc
    rla
    and e
    inc sp
    add a
    or a
    add a
    nop
    rst $38
    nop
    rst $38
    ld bc, $02FE
    db $FC
    dec b
    ld hl, sp+$03
    ld hl, sp+$0B
    ldh a, [rTAC]
    ldh a, [rVBK]
    add b
    cp a
    nop
    ld a, d
    rlca
    ldh a, [rIF]
    ld hl, sp+$07
    push af
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    pop hl
    rra
    rst $00
    ccf
    ld b, e
    cp a
    ret nz

    ccf
    ldh [$1F], a
    ld hl, sp+$07
    cp $01
    add hl, bc
    ldh a, [rSC]
    db $FC
    pop bc
    cp $E1
    cp $50
    rst $38
    ld bc, $02FE
    db $FD
    ret


    ld [hl], $00
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    add b
    ccf
    and b
    rra
    ret nz

    rra
    ret nc

    rrca
    ldh [rIF], a
    rla
    ldh [rTAC], a
    ldh [$E2], a
    ldh [rP1], a
    ldh [rSB], a
    ldh [$27], a
    ret nz

    inc c
    ret nz

    ld [$FFC3], sp
    nop
    ret nz

    nop
    add hl, de
    rrca
    cp a
    ld b, b
    ret nz

    nop
    nop
    nop
    inc a
    ld bc, $DC02
    rst $38
    nop
    ld bc, $CC00
    ld hl, sp-$02
    ld bc, $0000
    ld bc, $80FE
    nop
    db $10
    ld [$02FD], sp
    rst $38
    nop
    rra
    nop
    ld b, e
    add b
    add sp, $10
    ld [de], a
    inc c
    dec b
    ld [bc], a
    and c
    nop
    ld h, b
    adc a
    ldh [rIF], a
    rst $28
    rrca
    ret nz

    rrca
    nop
    rrca
    nop
    rrca
    ld b, b
    rrca
    add b
    rrca
    call nz, $C1C0
    ldh [$E0], a
    ldh a, [rSB]
    ldh [rNR13], a
    ret nz

    ld a, [bc]
    pop de
    jp z, $C3D1

    pop hl
    ld e, $3F
    rrca
    sbc a
    rlca
    rrca
    adc a
    rra
    ld c, a
    sbc a
    ld d, a
    adc a
    and b
    jp $E0DC


    ld h, h
    add e
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], e
    rst $38
    add hl, de
    rlca
    ld [$F3F0], sp
    db $FC
    db $FC
    rst $38
    rst $38
    rst $38
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    db $F4
    ld hl, sp+$0B
    rlca
    ld bc, $FC03
    db $FD
    nop
    add l
    ld h, h
    add hl, bc
    add c
    ei
    db $EB
    di
    sub e
    ld h, a
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    ei
    ld sp, hl
    ld hl, sp-$03
    ld sp, hl
    db $FC
    db $FC
    cp $00
    rst $38
    rst $38
    rst $38
    ld h, c
    add e
    adc h
    ldh a, [$C8]
    rst $38
    rst $10
    rst $28
    ld l, h
    di
    cp a
    ld a, a
    cpl
    rra
    adc b
    rst $00
    ld d, a
    adc a
    cpl
    rra

jr_008_5564:
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    ld a, [$08FC]
    ldh a, [$E8]
    pop af
    ldh [$F1], a
    pop de
    pop hl
    and l
    pop bc
    ld c, l
    add c
    sbc l
    ld bc, $0D30
    ldh [rNR33], a
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
    db $FC
    cp $F9
    db $FC
    ldh a, [$F9]
    ld [c], a
    pop af
    pop bc
    ld [c], a
    ret nz

    db $E3
    ldh [$F0], a
    ld hl, sp-$04
    inc b
    ld [$00D0], sp
    and b
    nop
    ld c, l
    nop
    ld e, d
    inc b
    ld d, c
    ld c, $03
    nop
    rrca
    nop
    inc a
    inc bc
    ld a, e
    rlca
    and b
    rra
    ret nz

    nop
    add b
    ld a, a
    ld b, b
    ccf
    or b
    ld a, h
    ld a, b
    db $FC
    ld sp, hl
    db $FC
    db $E3
    ldh a, [$0B]
    call nz, $1826
    dec c
    ldh a, [$03]
    ldh a, [$3F]
    ld a, a
    nop
    jr nc, jr_008_5564

    nop
    ld c, $00
    dec d
    ld [$1409], sp
    and c
    inc e
    add c
    inc a
    nop
    rst $38
    ld hl, $16C0
    ldh [$0B], a
    ldh a, [rSB]
    db $FC
    dec b
    nop
    di
    nop
    ld c, $F1
    ld [bc], a
    db $FC
    db $10
    ldh [rTAC], a
    nop
    jp $1000


    ldh [$88], a
    ld [hl], b
    inc h
    ret c

    rra
    ldh [rP1], a
    nop
    rst $38
    nop
    and b
    ld e, a
    ldh a, [rIF]
    ld e, $01
    ld h, c
    nop
    ld a, $00
    push bc
    ld [bc], a
    inc b
    inc bc
    ldh a, [rP1]
    ld a, $C0
    ld bc, $00FE
    rst $38
    ret nz

    ccf
    jr nz, jr_008_563D

    ld c, b
    add a
    nop
    rst $38
    ld [bc], a
    ld bc, $007D
    add [hl]
    jr jr_008_568B

    adc h
    ld [hl-], a
    call nz, $E016
    inc d
    ld [c], a
    ldh [$1F], a
    ldh [$1F], a
    ld b, e
    inc a
    sbc a
    ld h, b
    db $FC
    nop
    ldh [rP1], a
    nop

jr_008_563D:
    nop
    daa
    ret nz

    ld bc, $0FFE
    ldh a, [$F8]
    nop

jr_008_5646:
    rst $30
    nop
    inc c
    nop
    di
    ld [$FC00], sp
    jr c, jr_008_56CF

    ld a, d
    add c
    db $FC
    nop
    rlca
    nop
    add hl, sp
    nop
    add h
    ld a, b
    ld a, [$0704]
    nop
    ld a, b
    add b
    ld [de], a
    pop hl
    adc l
    ld [hl], b
    ld [hl+], a
    inc e
    ret


    ld b, $F4
    inc bc
    ld e, b
    inc hl
    ld a, [hl+]
    ld de, $08D5
    ld l, $D0
    ld d, $E8
    call c, $6D20
    db $10
    or h
    add hl, bc
    cp h
    ld bc, $815C
    ld e, h
    add c
    db $EC
    ldh [$E8], a
    db $E3
    jr z, jr_008_5646

    ld de, $08E1
    ldh a, [$FA]

jr_008_568B:
    ld hl, sp-$07
    ld hl, sp-$08
    ld hl, sp+$78
    rst $38
    ld a, h
    rst $38
    dec a
    ld a, [hl]
    ld a, l
    ld a, $3C
    rra
    inc a
    rra
    ld e, $9F
    rra
    rra
    add [hl]
    ld bc, $1394
    inc bc
    ld bc, HeaderOldLicenseeCode
    ld sp, $A543
    inc de
    ld c, e
    add a
    add c
    rst $38
    dec h
    ret z

    push bc
    add sp, -$36
    db $E4
    jp z, $CAE4

    db $E4
    adc $E0
    ret


    pop bc
    sub d
    add d
    dec l
    pop bc
    ld l, c
    add c
    xor d
    ld b, c
    ld [$EA01], a
    ld bc, $0309
    di
    di
    inc bc

jr_008_56CF:
    rla
    add hl, bc
    ld a, [c]
    ld [$F9F3], sp
    ei
    ei
    ld sp, hl
    ld hl, sp-$03
    db $FD
    db $FC
    ld [bc], a
    db $FC
    cp $FF
    sbc a
    ccf
    sbc a
    ccf
    xor e
    rra
    ld c, a
    add a
    ccf
    rst $08
    ld a, [de]
    db $FC
    sub c
    ld h, b
    ld e, a
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
    ccf
    rst $38
    ld a, a
    rst $38
    cp $FF
    add l
    add h
    db $FD
    db $FC
    rst $38
    db $FD
    rst $30
    rst $38
    add sp, -$10
    ret nc

    ldh [$60], a
    add b
    add d
    nop

jr_008_5710:
    inc h
    or e
    ld h, h
    ld [hl], e
    jp $87E7


    rst $08
    rlca
    rrca
    ld sp, $7C03
    ld bc, $0339
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc hl
    sbc a
    sbc c
    rst $00
    call nz, $F0E3
    ld hl, sp-$08
    db $FC
    pop af
    ld hl, sp-$1D
    ldh a, [$CA]
    pop hl
    ld a, [$E8FC]
    ldh a, [$27]
    ret nz

    dec e
    inc bc
    dec de
    rlca
    sub a
    rrca
    rst $08
    nop
    jr nc, jr_008_5710

    ld sp, $B000
    ld b, b
    ld d, h
    db $E3
    ret nc

    ldh [$C0], a
    ldh [$A1], a
    add $D0
    rrca
    ld hl, $031E
    rlca
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    rra
    ccf
    adc a
    rra
    ld h, a
    rrca
    nop
    rst $38
    ld bc, $02FE
    db $FC
    dec b
    ld hl, sp+$0A
    pop af
    inc d
    db $E3
    ld [$20E7], sp

jr_008_577F:
    rst $08
    ld b, h
    add e
    jr nz, jr_008_57A3

    add c

jr_008_5785:
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
    cp $FF
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $00FF
    rst $38
    ld de, $02E0

jr_008_57A3:
    db $FC
    jr nz, jr_008_5785

    sub c
    rst $28
    call nc, $E8E3
    di
    ld [$74F1], a
    ld sp, hl
    nop
    rst $38
    ld b, b
    ccf
    sub b
    rrca

jr_008_57B6:
    jr z, jr_008_577F

    call nc, Call_008_68E3
    di
    ld [hl], d
    ld sp, hl
    inc [hl]
    ld sp, hl
    db $10
    rst $08
    ld b, b
    sbc a
    and b
    sbc a
    add b
    ccf
    ld b, b
    ccf
    nop
    ld a, a
    nop
    ld a, a
    ld b, e
    ccf
    inc bc
    db $FC
    ld [$17F0], sp
    ldh [$08], a
    di
    add hl, bc
    db $FD
    add hl, sp
    ld sp, hl
    db $D3
    ld sp, hl
    jr nc, @-$0B

    ld hl, sp+$07
    rlca
    nop
    ldh a, [rP1]
    ld c, $F0
    pop hl
    ldh a, [$86]
    adc $31
    cp a
    ld c, a
    ld [hl], b
    dec [hl]
    ld hl, sp+$1A
    db $FC
    adc $3C
    ld h, $1C
    sub h
    inc c
    ld c, b
    add h
    jr nz, @+$46

    sub l
    jr nz, @+$1A

    db $FD
    ld c, c
    inc a
    ld d, $0C
    adc b
    ld b, [hl]
    inc b
    ld [bc], a
    ld b, b
    jp nz, $E02A

    push bc
    jr z, jr_008_5815

    cp a
    and e
    sbc a
    ld b, a

jr_008_5815:
    sbc a
    rrca
    rst $18
    jr z, jr_008_57B6

    sub c
    cp e
    sub e
    or a
    sub h
    ret nc

    or $F2
    di
    or $F3
    ei
    ei
    ei
    add hl, sp
    ld a, e
    add hl, de
    cp l
    adc l
    db $DD
    ld b, b
    ld h, l
    ld b, b
    add b
    ld hl, $1200
    pop hl
    db $ED
    di
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    db $FD
    cp $6A
    jr nc, @+$76

    ld a, [$FEFA]
    cp $FF
    db $D3
    rst $28
    and b
    ret nz

    sub l
    rrca
    ld e, b
    ccf
    rrca
    rrca
    cpl
    rrca
    ld d, b
    rrca
    nop
    ld e, a
    nop
    rra
    adc a
    ld e, a
    rst $20
    rst $08
    ld [hl], a
    rst $20
    dec b
    sub $22
    rst $00
    push hl
    di
    ld a, [c]
    ld sp, hl
    ld sp, hl
    db $FC
    db $FC
    cp $00
    rst $38
    ld hl, sp-$04
    xor b
    ld [hl-], a
    or l
    jr c, jr_008_58F1

    cp a
    xor e
    rst $30
    inc hl
    pop bc
    push bc
    inc bc
    ld [de], a
    ld bc, $1029
    cp $FC
    ld sp, hl
    db $FC
    db $F4
    ld sp, hl
    ld [$F0F1], a
    db $E3
    jp z, $E4E1

    ret


    ld b, c
    call c, Call_008_7FB0
    ld h, h
    ld hl, sp-$35
    ldh a, [$D4]
    db $E3
    adc c
    rst $20
    xor b
    rst $00
    sub c
    rst $08
    ld d, b
    adc a
    db $10
    rst $30
    jr nz, jr_008_58BB

    rst $10
    rlca

jr_008_58A6:
    daa
    rst $00
    rst $10
    rst $20
    rst $20
    rst $30
    ld h, h
    di
    ei
    di
    pop af
    ld a, [$F7F2]
    db $F4
    ld a, [c]
    ldh [$F5], a
    add e
    ret nz

    inc de

jr_008_58BB:
    jr nz, jr_008_58A6

    ld a, [c]
    ld c, b
    pop af
    inc d
    jr c, jr_008_591E

    inc a

jr_008_58C4:
    inc l
    rra
    rst $10
    rst $08
    ld [hl+], a
    pop hl

jr_008_58CA:
    adc l
    ld e, h
    and d
    ld e, $B8
    ld b, $52
    inc c
    nop
    ld c, $C9
    ld b, $20
    rst $00
    call nc, $12E3
    ld bc, $60A1
    ret z

    inc h
    and b
    rra
    and b
    rra
    ld b, b
    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    inc b
    ld hl, sp-$5F
    ld b, e
    or e

jr_008_58F1:
    ei
    db $DB
    di
    ld b, e
    rst $30
    rla
    rst $20
    daa
    rst $08
    adc a
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02FE

jr_008_5907:
    db $FC
    dec b
    ld hl, sp+$12
    pop hl
    ld c, c
    add a
    inc hl
    rra
    inc h
    jp $0F91


    ld b, d
    ccf
    sbc [hl]
    ld a, a
    ld a, h
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38

jr_008_591E:
    ld hl, sp-$01
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    jr nz, jr_008_5907

    ld h, c
    sbc [hl]
    jr nz, jr_008_58CA

    and b
    ld e, $40
    ld a, $01
    db $FC
    ld bc, $00FC
    db $FC
    inc b
    ld sp, hl
    inc bc
    ld hl, sp-$7D
    ld a, b
    ld b, c
    jr c, jr_008_58C4

    jr c, @+$42

    or e
    add h
    ld d, e
    jp nz, $1901

    jr jr_008_5956

    call c, $DE16
    adc d
    ld c, [hl]
    add c
    ld l, a
    add a
    ld a, a
    rra
    rst $38
    ld a, a
    rst $38

jr_008_5956:
    cp a
    rst $38
    ld a, h
    rst $38
    pop de
    cp $04
    ld hl, sp+$13
    ldh [$F9], a
    cp $E2
    db $FC
    push bc
    ld hl, sp+$12
    pop hl
    ld c, l
    add e
    inc sp
    rrca
    rst $08
    ccf
    inc a
    rst $38
    ld d, d
    inc a
    and b
    ld a, h
    ld h, c
    db $FC
    push bc
    ld hl, sp-$40
    ld hl, sp-$77
    pop af
    ld [de], a
    db $E3
    inc hl
    call nz, $9C20
    ld [bc], a
    sbc h
    pop de
    adc [hl]
    add b
    rst $08
    ld a, [bc]
    rlca
    add l
    db $E3
    ld [hl], c
    add e
    adc c
    inc bc
    jp nz, Jump_008_6026

    db $10
    ld h, b
    ld [de], a
    inc h
    inc bc
    adc [hl]
    ld bc, $8027
    db $10
    add b
    ld b, d
    sbc h
    inc l
    jp $8F53


    ld l, $9F
    xor b
    rra
    ld d, c
    ld a, $42
    inc a
    add b
    ld a, h
    add h
    ld a, b
    ldh a, [rIE]
    ret z

    ldh a, [rNR44]
    ret nz

    adc h
    inc bc
    ld d, c
    rrca
    add e
    rlca
    rla
    inc de
    inc bc
    inc bc
    adc h
    nop
    ld hl, $DC00
    jr nz, @+$26

    ld hl, sp-$10
    ld hl, sp-$0E
    ld hl, sp-$0F
    ld a, [$F8F1]
    ld hl, $AA03
    ld [hl], c
    db $10
    add hl, sp
    cp h
    sbc c
    jr jr_008_59F7

    ld e, h
    dec e
    sbc b
    dec e
    inc e
    sbc c
    add b
    sbc $90
    adc $89
    add $A4
    jp $E9C2


    call nz, $A8E1
    push bc
    add h
    call $F800
    ld [$0AF0], sp
    ldh a, [$0A]

jr_008_59F7:
    ldh a, [$0A]
    ldh a, [$2B]
    ldh a, [$2B]
    ldh a, [$2B]
    ldh a, [rWX]
    inc bc
    inc sp
    ld b, e
    and a
    inc de
    rlc a
    rrca
    ld a, a
    ld a, a
    ccf
    ld e, $3F
    xor a
    rra
    db $FC
    ld hl, sp-$06
    db $FC
    db $FD
    cp $FE
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rra
    ccf
    rst $38
    ld a, [hl-]
    add hl, de
    ld d, c
    dec sp
    cp c
    ld [hl], e
    ld [hl], l
    di
    db $E3
    rst $30
    di
    rst $20
    jp z, $A6E7

    rst $08
    sbc h
    ret


    add d
    reti


    adc d
    pop de
    ld d, h
    add e
    inc b
    add e
    inc h
    add e
    xor b
    rlca
    add hl, hl
    rlca
    inc sp
    ld hl, sp+$35
    ld hl, sp+$19
    db $FC
    add hl, de
    db $FC
    ld a, [de]
    db $FC
    inc c
    cp $0D
    cp $0E
    rst $38
    sub a
    rrca
    rlc a
    push hl
    inc bc
    pop af
    nop
    db $FC
    nop
    rst $38
    nop
    ld a, a
    nop
    cp b
    nop
    rst $38
    rst $38
    cp $FF
    db $FD
    cp $7A
    db $FC
    add hl, hl
    db $10
    add h
    inc bc
    db $10
    rrca
    add b
    ld a, a
    ld d, l
    adc [hl]
    xor b
    ld e, $42
    inc a
    add b
    ld a, h
    dec b
    ld hl, sp+$01
    ld hl, sp+$02
    ld sp, hl
    ld a, [bc]
    pop af
    ld c, c
    daa
    ld c, c
    daa
    xor e
    ld b, a
    add e
    ld c, a
    inc de
    rst $08
    inc de
    rst $08
    ld de, $11CF
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $04FE
    ld hl, sp+$12

jr_008_5A9F:
    pop hl
    nop
    rst $38
    nop
    rst $38
    ld bc, $08FE
    ldh a, [rLY]

jr_008_5AA9:
    add e
    jr nz, jr_008_5ACB

    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_008_5AB5:
    nop
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    add hl, bc
    rst $30
    nop
    rst $38
    nop
    rst $38
    db $10
    rrca
    ld [hl+], a
    pop bc
    ld h, h
    ld hl, sp+$1D

jr_008_5ACB:
    cp $8F
    ld a, a
    and h
    sbc e
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
    ld b, b
    ccf
    and b
    rra
    ret nz

    sbc a
    jr z, jr_008_5AA9

    ld d, h
    adc a
    or d
    inc e
    ld h, l
    jr c, jr_008_5AB5

    ld [hl], c
    jp c, $A8E1

    jp $8358


    ld c, b
    or a
    sub b
    ld l, a
    and e
    ld c, a
    rla
    adc $4E
    sbc h
    inc l
    sbc b
    adc l
    cp b
    and b
    add hl, de
    inc b
    ld sp, hl
    and $9C
    sub e
    ld c, $45
    inc bc
    ld [hl-], a
    ld b, c
    ret


    ld [hl], b
    ld [hl], $F8
    sbc b
    ld a, [hl]
    ld [$B1C5], a
    ld h, h
    ld d, $70
    ld e, b
    ld [hl-], a
    xor e
    jr jr_008_5A9F

    sbc c
    inc d
    adc l

jr_008_5B1E:
    add b
    dec c
    ret nc

    rst $08
    ld h, b
    rst $08
    ld h, a
    rst $28
    ldh a, [$67]
    inc [hl]
    ld [hl], e
    jr jr_008_5B9F

    ld a, [de]

jr_008_5B2D:
    ld a, c
    inc c
    ld a, c
    or l
    inc bc
    ld [hl], c
    rlca
    ld d, l
    inc hl
    or b
    ld h, e
    ld c, d
    pop af
    ret z

    pop af
    call $9EF0
    ldh [rNR13], a
    add hl, bc
    add hl, bc
    inc bc
    ld b, b
    ld bc, $0E40
    rlca
    ld e, b
    ld d, b
    nop
    ld [bc], a
    ld b, c
    ld b, b
    jr jr_008_5B2D

    ld a, $F8
    cp l
    ld [hl], b
    ei
    inc bc
    db $F4
    ld b, h
    ld [hl], b
    jr nz, jr_008_5BCC

    ld [hl], a
    ld a, b
    rst $38
    ld a, a
    nop
    dec c
    inc h
    ret


    jp z, $0401

    inc bc
    db $10
    ld b, e
    ld c, b
    sub e
    ld de, $E136
    or $45
    dec a
    and c
    dec e
    db $10
    adc l
    adc b
    dec h
    xor b
    dec h
    ld c, c
    dec h
    add hl, bc
    ld h, l
    dec l
    ld b, c
    rra
    ldh [$BC], a
    ret nz

    inc sp
    ret nz

    ld l, l
    add d
    ld d, h
    adc b
    pop af
    nop
    ld b, a
    jr nz, jr_008_5B1E

    ld b, b
    dec c
    ld e, $44
    ld [$01C2], sp
    ld a, [bc]
    rlca
    ld d, h
    rrca
    adc h
    rra
    xor c
    ld e, $A0

jr_008_5B9F:
    rra
    ld hl, sp+$7C
    ld [hl+], a
    ld a, c
    add l
    inc bc
    nop
    rst $38
    nop
    rst $38

jr_008_5BAA:
    add d
    ld bc, $0038
    adc $30
    ld [bc], a
    inc l
    ld d, [hl]
    adc b
    xor l
    ret nz

    push de
    ldh [rOCPD], a
    ldh a, [$75]
    ld hl, sp+$35
    ld hl, sp+$34
    ld a, b
    jp nc, $2809

    inc de
    ret nc

    jr nz, jr_008_5BAA

    nop
    ld c, a
    add b
    sbc a
    nop

jr_008_5BCC:
    ld a, $01
    ld a, l
    ld [bc], a
    sbc a
    nop
    ccf
    nop
    halt
    ld [$106E], sp
    adc h
    ld [hl], b
    add hl, de
    ldh [$B2], a
    ld b, c
    ld h, l
    add d
    jr z, jr_008_5C01

    jr nz, jr_008_5C03

    jr nz, jr_008_5C05

    and d
    dec e
    ld [hl+], a
    sbc l
    and h
    dec de
    ld c, h
    inc sp
    sbc b
    ld h, a
    inc bc
    db $FC
    ld bc, $01FE
    cp $00
    cp $00
    cp $09
    cp $10
    rst $38
    jr nc, @+$01

    inc [hl]

jr_008_5C01:
    ld a, b
    inc d

jr_008_5C03:
    ld a, b
    dec d

jr_008_5C05:
    ld a, b
    and l
    ld a, b
    add hl, bc
    ldh a, [$0B]
    ldh a, [rNR13]
    ldh [$37], a
    ret nz

    ld hl, sp+$07
    db $F4
    dec bc
    add sp, $17
    ld [c], a
    dec e
    or b
    ld c, a
    db $E4
    dec de
    ret nc

    cpl
    ld l, b
    sub a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ld hl, sp+$0A
    pop af
    inc h
    jp $C314


    ld d, h
    add e
    dec [hl]
    add d
    xor l
    ld [bc], a
    ld l, [hl]
    nop
    add c
    ld a, h
    dec de
    ldh [rPCM12], a
    add c
    rst $30
    nop
    xor $00
    pop hl
    nop
    adc a
    nop
    ld e, b
    rlca
    add $38
    inc bc
    db $FC
    ld bc, $F0FE
    rrca
    inc e
    inc bc
    rst $20
    nop
    add hl, sp
    ret nz

    ld e, d
    and b
    add b
    ld a, a
    ld b, b
    ccf
    add b
    ccf
    and b
    rra
    ld b, b
    sbc a
    db $10
    rst $08
    ldh [rIF], a
    ldh [rIF], a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $02FE
    db $FC
    ld bc, $00FC
    db $FD
    ld l, c
    nop
    ld h, h
    inc bc
    ld l, c
    ld b, $52
    inc c
    jr z, jr_008_5C9A

    stop
    db $E3
    nop
    ld sp, $B0C7
    rrca
    ld h, b
    rra
    ld b, e
    inc a
    adc [hl]
    ld [hl], b
    ldh a, [rP1]

jr_008_5C9A:
    inc bc
    nop
    nop
    rst $38
    ld hl, sp-$01
    add hl, hl
    jp nc, $A358

    db $F4
    inc bc
    ld bc, $0400
    nop
    dec h
    ret nz

    dec d
    ldh [$6C], a
    pop bc
    ld h, b
    rrca
    xor b
    rlca
    or a
    rlca
    ld b, b
    add a
    ret nc

    rlca
    ld b, b
    rlca
    add b
    rlca
    or h
    inc sp
    db $FC
    db $FD
    db $FD
    db $FC
    ld [bc], a
    db $FC
    nop
    rst $38
    ld bc, $FEFE
    cp $FE
    cp $FF
    cp $63
    add a
    add e
    rlca
    db $10
    rlca
    sbc c
    nop
    ld e, $01
    sbc c
    rlca
    sub e
    rrca
    ld d, h
    ld [$FFFF], sp
    rst $38
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
    cp a
    ld a, a
    sbc d
    pop bc
    add d
    pop hl
    ret


    ld a, [c]
    push bc
    ld a, [c]
    push hl
    ld a, [c]
    ld [c], a
    db $F4
    and $F0
    push hl
    ldh a, [$9B]
    dec sp
    dec bc
    dec de
    jr z, @+$0D

    ld c, b
    dec sp
    ld d, h
    inc sp
    rst $20
    ld l, a
    rrca
    rra
    rra
    ccf
    ld bc, $01FE
    cp $FF
    rst $38
    cp $FF
    db $FC
    cp $FD
    db $FC
    inc b
    ld hl, sp-$04
    db $FC
    ld d, b
    rrca
    ld b, e
    rrca
    ld [$0387], sp
    rlca
    add l
    inc bc
    ld [hl], d
    ld bc, $20D9
    adc h
    ld [hl], b
    rst $38
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
    cp $00
    nop
    nop
    ld [$F6F0], a
    ld hl, sp-$0C
    ld hl, sp-$18
    ldh a, [$A1]
    ret nz

    adc [hl]
    nop
    dec sp
    inc b
    ld [hl], c
    ld c, $20
    rra
    db $10
    rrca
    daa
    rrca
    sub e
    rlca
    ld b, c
    inc bc
    and b
    ld b, c
    ld h, b
    nop
    ld h, [hl]
    nop
    db $FC
    db $FC
    db $FC
    db $FC
    db $FC
    db $FC
    ld sp, hl
    db $FC
    ei
    ld hl, sp-$0D
    ld hl, sp-$09
    ldh a, [$F7]
    ldh a, [$94]
    ld l, b
    add l
    ld a, b
    add l
    ld a, b
    ld c, l
    jr nc, jr_008_5DB2

    nop
    add b
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    add e
    ld a, h
    ld bc, $05FE
    ld a, [$FC03]
    add a
    ld a, b
    ld a, [hl]
    nop
    nop
    nop
    ld h, e
    inc e
    and c
    ld e, $A1
    ld e, $B2
    inc c
    sbc h
    nop
    ld hl, $0F00
    nop
    rst $38
    nop
    ld c, a
    nop
    rra
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
    rst $38
    nop
    nop
    rst $38

jr_008_5DB2:
    ld [bc], a
    db $FC
    add hl, bc
    ldh a, [rNR50]
    jp $8F50


    and c
    ld e, $40
    ccf
    add b
    ld a, b
    sub b
    rrca
    ld b, b
    ccf
    ld bc, $00FF
    rst $38
    nop
    rst $38
    ret z

    rlca
    ld [hl-], a
    pop bc
    dec c
    jr nc, jr_008_5DD1

jr_008_5DD1:
    rst $38
    nop
    rst $38
    db $FC
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, $FF
    inc c
    rst $38
    nop
    rst $38
    inc h
    jp $F009


Jump_008_5DE4:
    ld [bc], a
    db $FC
    add c
    cp $E0
    rst $38
    ld a, b
    rst $38
    ld c, $FF
    ld bc, $00FF
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    add b
    ccf
    jr nz, @-$5F

    ld b, b
    sbc a
    db $10
    rst $08
    rlca
    ldh [rNR23], a
    add a
    ld h, c
    rra
    add a
    ld a, a
    inc bc
    rst $38
    jr nc, jr_008_5E1B

    ld c, [hl]
    add c
    rla
    ldh [$C2], a

jr_008_5E11:
    inc c
    ld sp, $CAC4

jr_008_5E15:
    pop af
    adc c
    di
    ld de, $20E3

jr_008_5E1B:
    call z, $CF10
    and e
    ld b, b
    ld b, b
    ccf
    sub d
    inc c
    dec h
    ret z

    jp nc, $F3E1

    rst $38
    ld a, a
    rst $38
    dec sp
    ld a, a
    dec bc
    sbc a
    ret z

    rlca
    inc [hl]
    inc bc
    ld c, d
    pop af
    push hl
    ld hl, sp-$10
    db $FC
    ldh [$FB], a
    add b
    rst $20
    ld b, $98
    jr nz, jr_008_5E11

    rrca
    rst $28
    jr nz, jr_008_5E15

    db $10
    rst $08
    ld b, b
    sbc a
    jr nz, @+$21

    db $10
    rst $08
    ld b, a
    cpl
    di
    ld hl, sp-$07
    db $FC
    ld [bc], a
    db $FC
    ld bc, $00FE
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    ld bc, $00EC
    jp $A309


    dec bc
    ld bc, $B52B
    ld hl, $B520

jr_008_5E6C:
    ld [de], a
    or h
    ret nz

    ld d, $0E
    rrca
    adc [hl]
    ccf
    adc $FF
    rst $28
    rst $38
    rst $38
    rst $38
    call nz, $91EE
    ret nz

    xor [hl]
    sub c
    nop
    nop
    ld b, h
    sbc c
    ldh a, [$FC]
    ld sp, hl
    db $FC
    ld hl, sp-$04
    ld [hl], d
    ld hl, sp+$21
    ld a, d
    add b
    scf
    rra
    adc a
    jr nz, @+$21

    add b
    ccf
    nop
    cp a
    add b
    cp a
    rra
    ccf
    rrca
    rra
    daa
    rrca
    call nc, $0FF8
    ldh a, [rNR42]
    sbc $FF
    nop
    sub b

jr_008_5EA9:
    nop
    ld l, $40
    rrca
    ldh [$E3], a
    db $F4
    ldh [rSC], a
    ld bc, $7802
    add c
    ldh [rSB], a
    nop
    ld bc, $0102
    add b
    inc bc
    call nz, $0103
    cp a
    nop
    ld [hl], e
    inc c
    ld h, c
    sub d
    ld c, h
    ld [de], a
    call z, $9E20
    jr nz, jr_008_5E6C

    ld hl, $419E
    add [hl]
    and b
    add $C0
    xor $52
    db $EC
    ld h, b
    db $FC
    dec h
    ld hl, sp+$21
    ld hl, sp+$0B
    pop af
    ld [hl], b
    rlca
    ld d, h
    inc hl
    cp e
    ld b, e
    ret c

    ld h, b
    db $DD
    ld h, b
    cp l
    ret nz

    cp [hl]
    ret nz

    ld a, [hl]
    add b
    push af
    ld a, [c]
    ldh [$F3], a
    jp z, $9CE1

    pop bc
    inc l
    sub c
    ld c, h
    ld sp, $708D
    ld e, $E0
    ldh [rTAC], a
    add sp, $07
    ld d, h
    adc a
    ld c, b
    sbc a
    jr nz, jr_008_5EA9

    ld bc, $47BF
    ccf
    ld e, $7F
    ld b, c
    cp [hl]
    ld b, d
    cp l
    add b
    ld a, a
    inc b
    rst $38
    ld a, c
    cp $C6
    ld hl, sp+$38
    ret nz

    ret nz

    nop
    ld [bc], a
    pop af
    inc d
    db $E3
    dec h
    jp nz, $844B

    adc a
    nop
    ld c, $00
    inc c
    nop
    ret


    nop
    ld [hl], b
    add b
    jp $8700


    nop
    dec de
    nop
    inc a
    nop
    ld [hl], a
    ld [$30CC], sp
    sbc c
    ld h, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    jr nz, jr_008_5F69

    ld b, h
    add e
    adc b
    ld [hl], b
    pop hl
    ld e, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$15F0], sp
    rst $20
    xor b
    ld c, b
    inc bc
    inc d
    ld [bc], a
    db $FC
    inc b
    ld sp, hl
    ld [$10F2], sp
    db $E4
    ld h, c

jr_008_5F69:
    ld [$8093], sp
    ld b, l
    jp nz, Jump_008_6026

    sbc b
    inc bc
    ld a, [hl+]
    ld de, $314C
    sub h
    ld l, c
    ld a, l
    add b
    db $FD
    nop
    add h
    ld bc, $7861
    ld [de], a
    add hl, bc
    add c
    inc c
    ld [$0486], sp
    add e
    ld [de], a
    add c
    add hl, de

jr_008_5F8B:
    add b
    sbc h
    nop
    sbc [hl]
    nop
    add b
    ld bc, $003C
    ld a, a
    nop
    ld [hl], e
    inc c
    ld h, b
    rra
    ld c, c
    ld [hl], $77
    ld [$007F], sp
    ld b, [hl]
    sub a
    jr jr_008_5FAC

    ret z

    rlca
    ld b, a
    add b
    ret nz

    nop
    ld c, b
    add b

jr_008_5FAC:
    rst $28
    nop
    jp nz, $0505

    ld h, c
    and d
    jp $8740


    sub c
    ld b, $22
    inc c
    ld h, h
    ld [$5188], sp
    db $10
    jp $FE00


    jr c, jr_008_5F8B

    call nz, $0303
    nop
    jr nz, jr_008_6002

    ld [hl], b
    sub b
    adc $00
    ld hl, $971E
    ld [$0619], sp
    inc e
    inc bc
    jr nz, jr_008_5FD8

jr_008_5FD8:
    ld a, [bc]
    dec b
    ld c, b
    rlca
    inc c
    inc bc
    dec c
    ld [bc], a
    jr c, jr_008_5FE2

jr_008_5FE2:
    ld b, $07
    add hl, bc
    ld c, $42
    inc c
    add h

jr_008_5FE9:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, h
    inc bc
    inc b
    add d
    pop hl
    ld de, $0704
    dec bc
    inc c
    and $89
    inc bc
    adc b
    ld l, c
    nop

Call_008_6000:
    nop
    ret nz

jr_008_6002:
    ld [bc], a
    ld bc, $F380
    nop
    ld sp, hl
    cp b
    dec b
    call Call_008_6000
    add b
    ret nz

    rlca
    sbc d
    ld a, h
    ld bc, $21FD
    sbc l
    ld b, h
    ld e, c
    ld [hl], c
    ld l, e
    jr z, jr_008_607F

    nop

jr_008_601D:
    ld bc, $FE00
    ld [$0807], sp
    rlca
    adc d
    add l

Jump_008_6026:
    adc h
    add e
    adc h
    add e
    adc h
    add e
    dec b
    add d
    ld b, $01
    ld h, b
    add b
    ld a, b
    add b
    inc [hl]
    ret nz

    add hl, sp
    pop bc
    add hl, sp
    pop bc
    jr jr_008_601D

    or b
    ld b, c
    sub h
    ld h, b
    xor c
    ld b, b
    db $10
    ret nz

    jr z, jr_008_5FE9

    inc de
    scf
    add [hl]
    xor a
    call z, $98DF
    cp a
    ld de, $07BE
    ccf
    ccf
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    rlca
    ld hl, sp+$32
    ret nz

    rst $08
    nop
    jr jr_008_6067

    add sp, -$01
    nop
    rst $38
    nop
    rst $38
    inc bc

jr_008_6067:
    db $FC
    rra
    ldh [rIE], a
    nop
    add b
    ld a, a
    inc b
    ei
    sub [hl]
    ld bc, $8344
    call nc, $8503
    ld [bc], a
    add [hl]
    ld bc, $0116
    ld d, $01
    scf

jr_008_607F:
    nop
    jp c, $DF20

    jr nz, @+$70

    db $10
    ld l, a
    db $10
    ccf
    nop
    scf
    ld [$003F], sp
    inc e
    nop

jr_008_6090:
    ld [hl+], a
    inc e
    inc a
    nop
    add b
    nop
    nop
    nop
    ld [hl], b
    nop
    ret nz

    nop
    ld [bc], a
    nop
    ld c, $00
    jr nc, jr_008_60B1

    ld [hl], b
    rrca
    ccf
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    jr nc, jr_008_60BA

    ld b, c
    jr nc, @+$36

jr_008_60B1:
    jp $06C9


jr_008_60B4:
    db $10
    inc c
    ld h, c
    db $10
    add a
    ld b, b

jr_008_60BA:
    inc e
    inc bc
    ld h, c
    ld e, $80
    ld a, a
    ld [hl], $01
    scf
    nop
    rla
    nop
    add a
    nop
    add b
    nop
    ret nz

    nop
    ld b, b
    add b
    jr nz, jr_008_6090

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00FE
    rst $38
    nop
    rst $38
    ld bc, $04FE
    ld hl, sp+$13
    ldh [rVBK], a
    add b
    cp a
    nop
    ld a, a
    nop
    nop
    rst $38
    jr nz, jr_008_60B4

    rra
    nop
    cp $01
    db $FD
    inc bc
    ld hl, sp+$07
    db $EC
    inc de
    ld hl, sp+$07
    nop
    rst $38
    db $10
    rrca
    ld [c], a
    ld bc, $807C
    sbc a
    ldh [$E7], a
    ld hl, sp+$79
    cp $BA
    db $FD
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    and b
    rra
    ret nz

    rra
    ret nc

    rrca
    nop
    cp $02
    db $FC
    db $FD
    db $FC
    ld bc, $05FC
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp-$75
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ldh a, [rTIMA]
    and [hl]
    ld [$11CC], sp
    push af
    ld a, [bc]
    sbc $21
    ei
    inc b
    db $FC
    inc bc
    ld c, $01
    ld bc, $B0F0
    ld a, [hl]
    ld c, $FF
    ld bc, $FFFE
    nop
    cp $7C
    jp c, $A0FF

    ld e, a
    ret z

    scf
    ld [hl], e
    inc c
    ld a, $80
    ldh [rIF], a
    rst $28
    rrca
    add b
    rrca
    ld [$00C7], sp
    rst $20
    db $E4
    inc de
    jp nz, $1801

    dec a
    ld hl, $8860
    cp h
    ld b, $83
    ld de, $4CA0
    sub b
    ret nz

    ret nz

    sbc c
    cp [hl]
    add b
    ret nz

    dec bc
    db $10
    db $10
    jr nz, @+$25

    nop
    inc b
    add e
    adc c
    ld b, e
    ld d, h
    add hl, bc
    ld [bc], a
    inc e
    nop
    ld e, $F3
    rrca
    inc c
    inc bc
    jp Jump_008_4C00


    add h
    add b
    ret z

    db $E3
    ret nz

    db $E3
    rst $38

Jump_008_619E:
    rst $38
    rst $38
    inc a
    add c
    add b
    ret nz

    inc c
    ret nz

    call nc, $0C0C
    dec e
    call $FC3C
    cp $FE
    rst $38
    inc b
    ld sp, hl
    ret nc

    ld bc, $310A
    or b
    ld a, e
    inc [hl]
    ld sp, hl
    ld e, c
    db $FD
    xor c
    ld a, l
    dec b
    ld a, c
    inc bc
    db $F4
    nop
    ld a, [c]
    pop af
    pop af
    ldh [$F0], a
    add sp, -$20
    add sp, -$20
    ld a, [bc]
    ldh [$D6], a
    ret nz

    ld b, h
    ld e, $0D
    sbc [hl]
    inc l
    ld e, $0A
    dec a
    ld hl, $151F
    dec bc
    ld [bc], a
    add hl, bc
    ld c, b
    dec b
    ld c, $9F
    jr nz, jr_008_6230

    sub d
    ld h, c
    ld b, l
    db $E3
    sub e
    rst $08
    ld c, [hl]
    cp a
    sbc h
    rst $38
    ld c, l
    cp [hl]
    rla
    rrca
    and b
    ld b, b
    ld e, a
    ldh [$90], a
    ldh [$4E], a
    add b
    xor l
    ld e, $50
    jr nz, jr_008_622E

    ld [hl], b
    ld a, b
    inc bc
    add b

jr_008_6203:
    inc bc
    inc de
    db $E3
    xor c
    ld [hl], e
    ld d, c
    add hl, sp
    dec e
    add hl, sp
    xor b
    dec e
    add hl, bc
    sbc l
    sub $C0
    sbc $C0
    sub [hl]
    ret nz

    cp h
    add c
    cp l
    add c
    ld hl, $0F83
    rra
    rst $38
    rst $38
    dec h
    ld b, b
    ld d, b
    ldh [$E8], a
    ldh a, [$B6]
    ld hl, sp-$47
    cp $9E
    rst $38
    rst $18
    cp a

jr_008_622E:
    ld c, a
    cp a

jr_008_6230:
    inc c
    cp [hl]
    and h
    ld e, $50
    ld c, $28

jr_008_6237:
    ld b, $84
    ld [bc], a
    ld h, d
    add c
    sbc c
    ldh [$C4], a
    ld hl, sp-$02
    ld a, a
    ld a, l
    cp $82
    ld a, h
    nop
    nop
    ld [bc], a
    nop
    ld a, b
    nop
    ld b, c
    jr c, jr_008_6203

    ld a, b
    adc c
    dec e
    ld b, c
    dec e
    dec h
    add hl, de
    add c
    dec sp
    ld c, e
    inc sp
    sub e
    ld h, a
    ld b, a
    adc a
    inc bc
    rlca
    ld hl, sp-$01
    ld h, h
    ld hl, sp+$0A
    ldh a, [$35]
    ret nz

    ld [$E801], a
    ld h, e
    add h
    db $E3
    jr nz, jr_008_6237

    and c
    jr nz, @+$12

    rrca
    ld b, b
    ccf
    nop
    rst $38
    inc b

jr_008_6279:
    ei
    ld [$29F7], sp
    rst $00
    ld [de], a
    rst $08
    rlca
    rst $38
    ld bc, $04FF
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    ld b, h
    cp b
    and e
    nop
    pop de
    ldh [$EA], a
    db $F4
    db $F4
    ei
    ld [hl], l
    ld hl, sp+$7A
    db $FC
    ld a, [hl-]
    db $FC
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld b, b
    ccf
    and b
    rra
    ld d, b
    adc a
    jr nz, jr_008_6279

    adc b
    ld h, a
    jr nc, jr_008_62B5

    ret nz

    rlca
    jr nc, jr_008_6279

    ld l, c
    add a
    ld [c], a

jr_008_62B5:
    rrca
    pop bc
    rrca
    inc hl
    rrca
    inc bc
    rst $28
    inc bc
    rst $28
    add hl, bc
    rst $20
    ld b, a
    sbc [hl]
    inc l
    sbc [hl]
    inc c
    cp [hl]
    sbc d
    inc a
    sbc d
    inc a
    xor d
    inc e
    ld c, d
    sbc h
    ld c, [hl]
    sbc h
    rra
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
    cp $00
    ldh a, [rP1]
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1F], a
    rst $38
    nop
    nop
    nop
    ldh a, [rIF]
    ld [hl], h
    add e
    ld a, b
    add e
    add hl, sp
    jp $C13C


    inc a
    pop bc
    db $FC

jr_008_62FB:
    ld bc, $011C
    call z, $E001
    rst $30
    ldh a, [$F7]
    nop
    rst $30
    inc b
    di
    inc bc
    nop
    cp b
    ld a, h
    cpl
    rra
    adc c
    rlca
    sub h
    adc [hl]
    and d
    ld c, $69
    ld b, $74
    inc bc
    ld [hl], d
    ld bc, $0025
    ld [bc], a
    add h
    sub c
    add [hl]
    add $01
    add hl, de
    rlca
    ld l, b
    inc e
    ld [bc], a
    inc sp
    add b
    rrca
    rrca
    sub b
    ret nc

    nop
    ld c, d
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rra
    ccf
    sbc $DF
    ld e, [hl]
    sbc [hl]
    cp [hl]
    ld e, $7F
    ld a, $3E
    ld a, a
    and l
    pop bc
    push de
    pop hl
    ld a, [bc]
    add c
    jr nc, jr_008_63BB

    ld a, [bc]
    ld sp, hl
    push af
    dec c
    dec b
    ld bc, $0349

jr_008_6350:
    and c
    ret nz

    nop
    add b
    ld [hl-], a
    ld a, h
    nop
    nop
    jr jr_008_62FB

    add h
    add $10
    ret c

    ret nz

    ld [c], a
    jr nz, @-$63

    nop
    dec e
    db $10
    ld c, $84
    inc bc
    sbc c
    nop
    ld b, $08
    dec hl
    rlca
    ld h, l
    inc bc
    sub c
    ld a, [bc]
    jr z, jr_008_6350

    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
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
    ld hl, sp-$0F
    ld sp, hl
    rst $38
    jr nz, jr_008_63DD

    adc d
    ld de, $F195
    db $E4
    ld a, [c]
    ldh a, [$E1]
    rst $00
    rst $28
    and b
    rst $08
    ld c, a
    sbc a
    db $FC
    cp $3C
    ld a, h
    adc c
    inc e
    ldh [rSB], a
    ld sp, hl
    nop
    ld a, [hl]
    add b
    rra
    ldh [$03], a
    db $FC
    ld [de], a
    pop hl
    ld l, c
    ldh a, [$F4]
    ld hl, sp-$05
    db $FC
    ld a, h
    rst $38
    ld e, [hl]

jr_008_63BB:
    ccf
    sub a
    rrca
    ld [c], a
    ld bc, $FFFF
    ld a, a
    rst $38
    ld e, a
    ccf
    dec bc
    rlca
    pop bc
    nop
    ld b, b
    sbc h
    rrca
    sbc a
    rra
    cp a
    cp $FF
    db $FD
    cp $CA
    sbc h
    db $F4
    ld sp, hl
    ld d, c
    db $E3
    rlca
    rrca
    rst $38

jr_008_63DD:
    rst $38
    rst $38
    rst $38
    sbc a
    ccf
    ccf
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
    nop
    rst $38
    ld bc, $04FE
    ld hl, sp+$08
    di
    db $10
    rst $20
    ld [$08E7], sp
    rst $20
    ld [$44E7], sp
    add e
    ld bc, $1838
    cp $3E
    rst $38
    ld d, a
    rst $38
    ld [de], a
    pop hl
    ld c, h
    add b
    and d
    ld bc, $FF00
    ld bc, $40FE
    ld a, $20
    sbc [hl]
    ld [de], a
    call z, $0080
    ld b, b
    ccf
    nop
    rst $38
    and b
    rra
    ld b, b
    ccf
    add b
    ld a, a
    or b
    ld c, a
    ld c, b
    rlca
    ld [de], a
    ld bc, $C12C
    dec d
    ldh [$0A], a
    pop af
    ld de, $4CFC

jr_008_6435:
    cp $3C
    cp $1D
    cp $2E
    rst $38
    ld e, $FF
    rrca
    rst $38
    dec b
    ld [c], a
    rla
    ldh [$F2], a
    ldh a, [rSB]
    ld hl, sp+$0A
    pop af
    inc b
    di
    db $10
    rst $20
    add hl, bc
    and $10
    rrca
    ld b, b
    ccf
    add d
    ld a, a
    dec b
    rst $38
    rlca
    rst $38
    ld a, [bc]
    rst $38
    add [hl]
    ld a, a
    rlca
    cp $00
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    and b
    rst $18
    ld e, b
    add a
    add [hl]
    ld bc, $2011
    ld [hl], h
    jr c, jr_008_647B

    ldh a, [rLY]
    ld hl, sp-$4E
    db $FC
    ld a, h
    cp $3D
    cp $1E

jr_008_647B:
    rst $38
    ld e, $FF
    adc a
    ld a, a
    rlca
    rst $38
    inc bc
    rst $38
    jp $313F


    rrca
    add hl, bc
    rlca
    inc b
    inc hl
    add d
    ld sp, $B900
    jp nz, $D1EC

    call z, $D904
    ld [bc], a
    reti


    jr nz, jr_008_6435

    add b
    cp e
    add d
    cp c
    and d
    sbc c
    rla
    xor $2B
    add $6B
    add $C5
    add e
    push de
    add e
    jp nz, $8A81

    sub c
    ld de, $3AA0
    ld a, h
    ld b, b
    ld h, b
    ld d, b
    ld c, a
    inc e
    ld b, b
    ld hl, $B140
    cp [hl]
    jr @-$42

    ld e, h
    ret c

    ld b, a
    ccf
    inc hl
    rra
    sub e
    rrca
    add hl, bc
    rlca
    ret


    add a
    and h
    ld b, e
    inc d
    inc hl
    and d
    sub c
    inc a
    cp l
    inc a
    cp l
    ld b, c
    sbc d
    add d
    call nc, $C089
    sub e

jr_008_64DB:
    rst $00
    add a
    rst $10
    rla
    rst $10
    inc h
    sbc c
    dec b
    sbc b
    sub l
    ret z

    pop de
    ret z

    jp nz, $CACA

    ld [c], a
    inc b
    pop hl
    db $E3
    pop af
    xor b
    add h
    nop
    add d
    ld a, [hl+]
    adc c
    ld bc, $1181
    add c
    adc c
    dec b
    ld de, $8343
    rst $18
    adc b
    ld e, b
    ld c, d
    jr z, jr_008_651E

    ld a, [bc]
    sbc l
    ld hl, sp-$06
    db $FC
    db $FC
    rst $38
    rst $38
    rst $38
    db $FC
    rst $38
    ld a, [de]
    ld de, $1851
    sbc h
    add hl, de
    add hl, sp
    sbc h
    ld e, [hl]
    inc a
    inc a
    db $FC
    ret c

    db $FC

jr_008_651E:
    inc [hl]
    ld hl, sp+$40
    sub a
    db $10
    add a
    and a
    rlca
    rlca
    rrca
    rra
    ld a, a
    ld a, a
    rst $38
    add b
    ld a, a
    ccf
    ld a, a
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc b
    rst $08
    set 0, a
    ld [c], a
    pop bc
    add sp, -$10
    ld a, [$FEFC]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $1F
    ccf
    rst $38
    rst $38
    rst $38
    cp l
    ld a, [hl]
    inc [hl]
    jr jr_008_64DB

    ld [bc], a
    ret z

    ldh a, [$F1]
    db $E4
    ld l, c
    ldh a, [$D2]
    pop hl
    ld b, l
    add e
    dec de
    rlca
    scf
    rrca
    cpl
    rra
    ld c, a
    rra
    ld a, $5F
    ld a, a
    ccf
    sbc a
    ccf
    cpl
    sbc a
    jp nz, $A881

    ret nz

    sbc d
    pop bc
    dec [hl]
    add e
    ld l, e
    rlca
    rst $38
    rst $38

jr_008_6582:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $FC
    cp $F9
    db $FC
    ld a, [$F0F9]
    ei
    rst $38
    rst $38
    db $FC
    cp $F9
    db $FC
    inc bc
    adc b
    ld [hl], a
    nop
    adc h
    ld [hl], b
    dec sp
    ret nz

    db $F4
    inc bc
    nop
    add b
    ld [hl], b
    rrca
    add e
    ld a, h
    rra
    ldh [$8F], a
    ld [hl], b

jr_008_65AA:
    ld h, e
    inc e
    rlca
    ld hl, sp+$3F
    ret nz

    rrca
    rra
    ld h, c
    add e
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
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    sbc a
    ccf
    rst $08
    rra
    rst $28
    rrca
    rst $20
    rrca
    push af
    ld a, [c]
    db $E3
    db $F4
    db $EB
    db $E4
    adc $E0
    sbc $C0
    sbc $C0
    sbc $C0
    rst $08
    ldh [$E9], a
    ld b, $CF
    nop
    ld d, a
    jr nz, jr_008_6582

    ld h, b
    jr nc, jr_008_65AA

    ld [hl], c
    add b
    di
    nop
    ld a, d
    ld bc, $00FB
    db $FD
    nop
    db $FD
    nop
    cp $00
    cp $00
    ccf
    nop
    rst $18
    nop
    cpl
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $30
    nop
    ld a, e
    nop
    dec sp
    nop
    ld e, l
    nop
    rst $30
    rlca
    di
    rlca
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    di
    rlca
    rst $30
    rlca
    rst $20
    rrca
    rst $28
    ldh [$E7], a
    ldh a, [$F2]
    ld hl, sp-$06
    ld hl, sp-$08
    db $FC
    ld hl, sp-$08
    ld a, [$F9F8]
    ld a, [$0338]
    ld c, h
    ld bc, $31C2
    add c
    ld b, b
    add b
    nop
    sbc b
    db $10
    sub d
    ld [hl-], a
    sub h
    ld [hl], b
    rrca
    ldh [rTMA], a
    ldh a, [$E6]
    ldh a, [$75]
    pop af
    dec sp
    ld a, e
    ld a, $3E
    db $DD
    cp [hl]
    rst $38
    rst $38
    dec c
    ld h, b
    ld b, $F0
    ld [c], a
    ld hl, sp-$40
    add b
    ld bc, $4500
    ld b, $95
    sub [hl]
    and l
    add [hl]
    rst $28
    rrca
    rst $08
    rra
    rst $18
    rra
    sbc a
    ccf
    ccf
    ccf
    rra
    rra
    ld e, a
    rra
    rra
    ld e, a
    ld a, [$FAFA]
    ld a, [$FBF8]
    db $FD
    db $FC
    cp $FE
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a

Call_008_6681:
    ld a, c
    rst $08
    ccf
    rst $08
    ccf
    ld c, a
    ccf
    daa
    rra
    daa
    sbc a
    db $D3
    rst $08
    db $E3
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $E3
    di
    rst $38
    rst $38
    rst $38
    rst $38
    di
    pop hl
    rst $38
    rst $18
    ld sp, hl
    adc $F1
    cp $F2
    db $FC
    ld a, [c]
    db $FC
    ldh a, [$FC]
    db $E4
    ld sp, hl
    db $E3
    ei
    rst $00
    rst $30
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    rra
    rst $18
    cp a
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    pop af
    rst $30
    ld hl, sp-$05
    ld hl, sp-$04
    pop af
    ld hl, sp-$3F
    ldh [$95], a
    ret nz

    dec l
    add b
    ld e, [hl]
    nop
    rst $38
    di
    rst $38
    rst $38
    ld a, $FF
    nop
    ld a, $81
    ld b, b
    inc bc
    db $FC
    ld sp, $78FE
    cp $CF
    rst $28
    sbc a
    rst $18
    rra
    cp a
    rlca
    rrca
    inc de
    rlca
    add hl, hl
    inc bc
    ld [hl], h
    ld bc, $00FA
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    cp $FC
    cp $FE
    db $FC
    rst $38
    rst $38
    db $FD
    cp $E8
    ldh a, [$A0]
    ret nz

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

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
    rst $38
    rst $38
    ld c, a
    ccf
    dec bc
    rlca
    ld [bc], a
    ld bc, $0001
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
    ld a, a
    rst $38

jr_008_675A:
    rst $38
    ld a, a
    ccf
    ld a, a
    ld a, a
    ccf
    ld hl, sp-$04
    ld hl, sp-$04
    db $FC
    ld hl, sp-$0C
    ld hl, sp-$0C
    ld hl, sp-$0B
    ld hl, sp-$0B
    ld hl, sp-$10
    db $FD
    nop
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
    inc bc
    db $FC
    nop
    rst $38
    nop

jr_008_6781:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    jr nc, @+$11

    ret nz

    ccf
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

Jump_008_6798:
    jr c, jr_008_675A

    ld [$00F0], sp
    ldh a, [rP1]
    ldh a, [$1F]
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    ld hl, sp-$03
    db $FC
    ld sp, hl
    ld a, [$F3F9]
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$03
    ld hl, sp-$08
    db $FC
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Jump_008_67C8:
    ld h, b
    rra
    db $10
    rrca
    jr nz, jr_008_67FD

    ld [$0087], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$66F0], sp
    add c
    add b
    nop
    add hl, hl
    ret


    nop
    db $FC
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rOBP0]

jr_008_67E7:
    jr nc, jr_008_6781

    nop
    ret nz

    jr c, jr_008_6812

    jr jr_008_6801

    ld c, l
    ld e, a
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ld e, a
    ccf
    rrca

jr_008_67F9:
    rra
    xor a
    ld l, a
    cpl

jr_008_67FD:
    adc a
    ld c, a
    cpl
    ld sp, hl

jr_008_6801:
    db $FC
    ld hl, sp-$03
    ld hl, sp-$03
    db $FC
    db $FD
    db $FD
    db $FC
    db $FC
    cp $FC
    cp $FE
    rst $38
    jr jr_008_67F9

jr_008_6812:
    ld [$10F7], sp
    rst $20
    jr nz, jr_008_67E7

    nop
    rst $18
    inc h
    jp Jump_008_6798


    jr nz, jr_008_687F

    nop
    rst $38
    nop
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
    db $FD
    nop
    db $E3
    ld bc, $00FE
    rst $38
    ld [bc], a
    db $FD
    dec b
    ld hl, sp+$08
    ldh a, [$09]
    di
    inc de
    rst $20
    cpl
    rst $00
    rrca
    rst $18
    adc a
    rst $18
    rra
    cp a
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    jr nz, jr_008_6889

    sbc a
    sub a
    ret z

    ret z

    rst $20
    db $E4
    di
    pop af
    ld hl, sp-$08
    cp $FE
    rst $38
    db $10
    rrca
    nop
    rst $38
    ld bc, $06FE
    ld hl, sp+$18
    ldh [$E3], a
    nop
    inc c
    inc bc
    inc de

jr_008_687F:
    rst $08
    ld b, a
    adc a
    add a
    rrca
    daa
    rrca
    ld b, e
    cpl
    add b

jr_008_6889:
    ld h, e
    ld [$1EE4], sp
    pop bc
    rra
    ret nz

    rst $38
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
    rst $38
    ccf
    ld a, a
    rra
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_008_68AB:
    rst $38
    rst $38
    rst $38
    cp $FE
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    ld hl, sp-$04
    ld [c], a
    pop af
    adc b
    rst $00
    jr nz, jr_008_68DD

    add b
    ld a, a
    rst $38
    rst $38
    ret nz

    ldh [rNR34], a
    nop
    add l
    ld a, b
    inc e
    db $E3
    jr nz, jr_008_68AB

    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $3C43
    nop
    ld bc, $00FE
    rst $38
    nop
    rst $38
    nop

jr_008_68DD:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38

Call_008_68E3:
    rst $38
    ld a, a
    rst $38
    ccf
    ccf
    rst $18
    rra
    ld l, a
    adc a
    ld h, a
    adc a
    scf
    rst $00
    db $FD
    db $FC
    ld a, [$F5F9]
    di
    db $EB
    rst $20
    jp $D7EF


    rst $08
    sub [hl]
    rst $08
    or h
    adc a
    nop
    rst $38
    ld [hl], b
    rst $38
    db $EB
    rst $30
    sub a
    rst $28
    cpl
    rst $18
    ld e, a
    cp a
    ccf
    cp a
    ld a, $7F
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    sbc e
    rst $38
    cp e
    rst $38
    or c
    rst $38
    ld d, h
    cp e
    ld b, d
    cp l
    inc a
    rst $38
    ld e, $FF
    ld l, $DF
    sub h
    rst $28
    ret nc

    rst $28
    ret z

    rst $30
    add b
    rst $30
    nop
    rst $30
    inc sp
    rst $00
    dec de
    db $E3
    dec de
    db $E3
    dec de

jr_008_6937:
    db $E3
    inc de
    rst $20
    rla
    rst $20
    or a
    ld b, a
    and a
    ld c, a
    or b
    adc a
    or b
    adc a
    cp b
    add a
    ret c

    rst $00
    db $DD
    jp nz, $E0EE

    xor $E0
    rst $30
    ldh a, [$32]
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    ld hl, $D01E
    ld c, $80
    ld b, $08
    ld a, [bc]
    add c
    ld a, h
    add b
    ld a, h
    inc bc
    ld a, b
    inc b
    ld [hl], e
    ld c, h
    jr nz, @+$23

    add c
    ld [$0BD8], sp
    ld hl, sp+$01
    ld a, [$3843]
    dec hl
    db $10
    sbc d
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    jr nz, jr_008_6981

    ld [hl], b
    inc b
    ld a, c
    ld l, a

jr_008_6981:
    rrca
    ld l, a
    rrca
    daa
    rrca
    rla
    add a
    add a
    rst $10
    jp $8BD7


    db $D3
    and e
    sbc e
    ei
    ld hl, sp-$04
    db $FC
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and d
    jr nz, jr_008_6937

jr_008_69A3:
    dec h
    nop
    ccf
    dec e
    cp l
    sbc e
    db $DB
    call z, $E7DC
    rst $28
    di
    rst $30
    inc b
    db $FC
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ei
    jp $0587


    ld hl, sp-$3C
    ld hl, sp-$1B
    ld hl, sp-$1F
    ld hl, sp-$18
    ldh a, [$E6]
    ldh a, [$C0]
    rst $30
    call nz, $0BEF
    or e
    ld d, e
    daa
    rst $30
    rlca
    rst $20
    rrca

jr_008_69D8:
    rst $08
    rra
    rra
    ccf
    ccf
    ld a, a
    inc bc
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ei
    db $FC
    db $FC
    cp $FF
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    ld a, $80
    pop bc
    cp $FF
    cp $FE
    db $FC
    cp $FD
    db $FC
    adc [hl]
    rst $18
    rrca
    cp a
    ld h, $1E
    ld de, $6688
    nop
    sbc c
    nop
    rst $20
    nop
    rst $38
    nop
    jr jr_008_69A3

    ld [hl+], a
    inc e
    add c
    ld a, $40
    ccf
    ldh [$1F], a
    ldh [$1F], a
    or b
    rrca
    ld a, b
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, b
    add a
    ld [bc], a
    or c
    db $10
    adc h
    ld c, b

jr_008_6A3D:
    add a
    ld h, $C1
    nop
    rst $38
    ld d, d
    adc h
    dec c
    and b
    jr nz, jr_008_69D8

    inc de
    adc b
    ret nc

    inc c
    jr jr_008_6A55

    ld [bc], a
    pop hl
    adc b
    rlca
    ld a, a
    nop
    ret nz

jr_008_6A55:
    nop
    ld hl, $001E
    rst $38
    rst $00

jr_008_6A5B:
    nop
    nop
    stop
    cp $04
    inc bc
    ld [$C1F0], sp
    ld a, $10
    rrca
    inc h
    jp $F009


    ld [c], a
    inc e
    add hl, de
    ld b, $00
    rst $38
    add b
    ld a, a
    db $10
    rrca
    inc h
    jp $F009


    ld [bc], a
    db $FC
    ld sp, $8CFE
    ld a, a
    inc de
    ldh [rLCDC], a
    adc a
    inc bc
    inc a
    rra
    ldh [$3C], a
    jp $8671


    db $E3
    inc c
    add $08
    add b
    ld a, h
    ld [hl], b
    adc a
    rst $38
    nop
    dec e
    ld [c], a
    ld [hl], e
    add h
    jp nz, $040C

    jr jr_008_6AA8

    jr nc, jr_008_6A3D

    ld h, e
    ld b, [hl]
    or c
    ld hl, $9898
    inc b

jr_008_6AA8:
    nop
    nop
    inc a
    nop
    ld b, d
    inc a
    inc a
    ld a, [hl]
    inc b
    jp $B142


    ld sp, $9888
    inc b
    inc c
    ld [bc], a
    ld h, h
    inc bc
    sub d
    ld h, c
    ld c, d
    pop af
    add [hl]
    ccf
    ld b, a
    cp a
    inc hl
    rst $18
    add e
    ld a, a
    ld b, c
    ccf
    ld d, c
    ccf
    add hl, hl
    rra
    inc l
    sbc a
    add h
    jr jr_008_6A5B

    db $10
    db $10
    jr nz, jr_008_6AD7

jr_008_6AD7:
    jr nz, jr_008_6AFA

    ld b, b
    ld bc, $4443
    add c
    ld [de], a
    add b
    inc sp
    ld b, b
    ld b, l
    add d
    inc de
    ld c, $06
    rrca
    inc hl
    ld [hl], a
    ld [hl], a
    dec de
    rra
    ccf
    ld a, a
    ccf
    ld a, $7E
    jr jr_008_6B72

    ld bc, $8438
    ld [bc], a
    ld b, c
    add b

jr_008_6AFA:
    db $DD
    db $E3
    rst $38
    rst $38
    rst $38
    rst $38
    jp hl


    ldh a, [$71]
    ld hl, sp-$0F
    ld a, d
    db $E3
    ld [hl], h
    ld b, h
    add sp, -$0F
    ldh [$F1], a
    rst $38
    rst $38
    rst $38
    inc h
    sbc a
    inc d
    adc a
    sub b
    rrca
    db $10
    rrca
    ld d, b
    rrca
    ld [$2AC7], sp
    push bc
    xor d
    push bc
    sbc b
    ld bc, $0018
    adc b
    db $10
    ret nc

    ret z

    ret nz

    ret z

    call nz, $04E8
    add sp, -$20
    db $EC
    cp a
    ld a, a
    ld a, h
    rst $38
    ld [hl], h
    ld hl, sp+$52
    pop hl
    db $EB
    ld b, a
    sub a
    ld c, a
    rrca
    ld e, a
    ld c, a
    rra
    add b
    rst $38
    add b
    nop
    ld b, b
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rra
    rst $38
    rla
    rrca
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret


    db $E4
    jp z, $C9E5

    db $E4
    jp hl


    call nz, $CC91
    sub c
    call z, $CC91
    push de
    adc b
    ldh [$EC], a

jr_008_6B72:
    ldh [$EC], a
    add sp, -$1C
    ld [c], a
    db $E4
    ldh [$F6], a
    db $F4
    ld a, [c]
    pop af
    ld a, [c]
    ld a, [c]
    ld sp, hl
    rrca
    rra
    ld c, $1F
    inc e
    ld c, $05
    inc c
    dec b
    inc c
    ld a, [bc]
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $F309
    dec b
    add hl, bc
    ld a, [c]
    dec b
    ldh a, [rTIMA]
    ld l, d
    dec b
    or l
    rlca
    ld c, a
    rlca
    or a
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    rst $38
    cp $FC
    cp $FA
    db $FC
    push af
    ld hl, sp+$22
    sbc c
    ld [hl+], a
    sbc c
    xor d
    ld de, $3344
    ld d, h
    inc hl
    adc b
    ld h, a
    xor b
    ld b, a
    ld d, b
    adc a
    ld e, $1F
    ld e, h
    ld [$6BC7], sp
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
    jr nz, jr_008_6C1D

    ld h, c
    ld l, l
    ld h, l
    ccf
    cp $FD
    and b
    and [hl]
    jr nz, @+$50

    ld l, a
    ld l, $FF
    jr nz, jr_008_6C3E

    ld h, l
    ld [hl], e
    ld l, $FD
    and e
    ld [bc], a
    ld [$6C2A], sp
    ld [$6BF1], sp
    sbc d
    ld [$6D13], sp
    sub [hl]
    ld bc, $A6A0
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_008_6C52

    ld h, c
    halt
    ld h, l
    ld h, h
    jr nz, jr_008_6C79

    ld l, a
    rst $38
    db $FD
    ld b, [hl]
    rrca
    ld bc, $C74A
    dec b
    nop
    ld [$6C20], sp
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_008_6C4B

    ld l, $FE
    db $FD
    ld c, b

jr_008_6C1D:
    ld [$6C2A], sp
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_008_6C58

    ld l, $FE
    db $FD
    and c
    sbc e
    ld [$6BC0], sp
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    ld a, [bc]
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00

jr_008_6C3E:
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    xor e
    ld c, a
    inc de

jr_008_6C4B:
    ld h, a
    ld e, a
    ld b, c
    ld l, e
    or c
    ld b, a
    ld a, [hl+]

jr_008_6C52:
    ld e, $70
    inc l
    ld l, h
    ld a, h
    ld b, c

jr_008_6C58:
    dec b
    nop
    inc [hl]
    ld h, e
    dec b
    rla
    or a
    jp nc, $1400

    cp a
    ld e, l
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld b, $19
    db $F4
    jp nc, $0800

    sub h
    ld l, h
    ld [$763B], sp
    ld l, [hl]
    jr nc, jr_008_6C86

jr_008_6C79:
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

jr_008_6C86:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    ld [$6BC0], sp
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    nop
    ld b, a
    and b
    ld bc, $1019
    ld b, a
    inc d
    inc de
    ld c, b
    ld l, l
    ld b, l
    ld [hl+], a
    ld a, [bc]
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
    xor e
    ld c, a
    inc de
    ld h, a
    ld e, a
    ld b, c
    ld l, e
    or c
    ld b, a
    ld a, [hl+]
    ld e, $70
    inc l
    ld l, h
    ld a, h
    ld b, c
    dec b
    nop
    ld hl, sp+$4A
    inc bc
    ld d, $97
    jp nc, $0800

    ld [bc], a
    ld l, l
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld b, $19
    db $F4
    jp nc, $0800

    sub h
    ld l, h
    ld [$763B], sp
    ld l, [hl]
    jr nc, jr_008_6CF3

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

jr_008_6CF3:
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    ld [$6BC0], sp
    or e
    ld sp, $00C7
    ld b, l
    ld d, $14
    ld e, l
    ld e, h
    jr nz, jr_008_6D08

jr_008_6D08:
    ld bc, $1400
    inc d
    cp a
    ld e, l
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    ld [hl+], a
    ld a, [bc]
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
    xor e
    ld c, a
    inc de
    ld h, a
    ld e, a
    ld b, c
    ld l, e
    or c
    ld b, a
    ld a, [hl+]
    ld e, $70
    inc l
    ld l, h
    ld a, h
    ld b, c
    dec b
    nop
    ld hl, sp+$4A
    nop
    dec de
    ld a, [hl+]
    db $D3
    nop
    ld [$6D73], sp
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld b, $19
    db $F4
    jp nc, $0800

    sub h
    ld l, h
    ld [$763B], sp
    ld l, [hl]
    jr nc, jr_008_6D65

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

jr_008_6D65:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    ld [$6BC0], sp
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
    add hl, bc
    ld c, [hl]
    ld bc, $A136
    ld [$0000], sp
    cp b
    ld l, l
    ld [$0001], sp
    ret nz

    ld l, l
    ld [$0002], sp
    push de
    ld l, l
    ld [$0003], sp
    ld [$086D], a
    inc b
    nop
    rst $38
    ld l, l
    ld [$0005], sp
    rst $38
    ld l, l
    rst $38
    ld c, b
    ld [$6DFF], sp
    or e
    ld [hl], $A1
    inc bc
    ld c, b
    ld [$6DEA], sp
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
    cp d
    ld c, a
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
    cp d
    ld c, a
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
    cp d
    ld c, a
    inc de
    ld c, b
    dec bc
    ld c, d
    ld l, l
    ld bc, $0604
    ld c, b
    ld [$6CA1], sp
    ld [hl+], a
    ld a, [bc]
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
    xor e
    ld c, a
    inc de
    ld h, a
    ld e, a
    ld b, c
    ld l, e
    or c
    ld b, a
    ld a, [hl+]
    ld e, $70
    inc l
    ld l, h
    ld a, h
    ld b, c
    dec b
    nop
    ld hl, sp+$4A
    inc b
    ld b, $B8
    ret nc

    nop
    ld [$6E60], sp
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld b, $09
    inc d
    pop de
    nop
    ld [$6E71], sp
    ld [$6E76], sp
    ld l, [hl]
    jr nc, @+$0F

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
    dec b
    ld [$0F73], sp
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
    jr nc, @+$16

    or l
    ld e, l
    jr nz, jr_008_6E6C

jr_008_6E6C:
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
    ld [$6E82], sp
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
    jr nz, jr_008_6EF2

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, jr_008_6F09

    ld h, l
    rst $38
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_008_6F03

    ld h, c
    halt
    ld h, l
    jr nz, jr_008_6F01

    ld l, h
    ld l, h
    cp $64
    ld h, c
    ld a, c
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $089B
    ret nz

    ld l, e
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    ld a, [bc]
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
    xor e
    ld c, a
    inc de
    ld h, a
    ld e, a
    ld b, c
    ld l, e
    or c
    ld b, a
    ld a, [hl+]
    ld e, $70
    inc l
    ld l, h
    ld a, h
    ld b, c
    dec b
    nop
    ld hl, sp+$4A
    rrca
    inc d
    ld h, a
    jp nc, $0800

    rrca
    ld l, a
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld de, $A516
    jp nc, $0800

jr_008_6EF2:
    ld b, e
    ld l, a
    ld [$6F54], sp
    ld l, [hl]
    jr nc, jr_008_6F07

    and b
    ld b, b
    nop
    add b
    nop
    dec bc
    nop

jr_008_6F01:
    dec bc
    ld [bc], a

jr_008_6F03:
    adc b
    db $10
    ld d, $73

jr_008_6F07:
    rrca
    rst $38

jr_008_6F09:
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
    jr nz, @+$16

    or l
    ld e, l
    jr nz, jr_008_6F1B

jr_008_6F1B:
    or e
    dec [hl]
    and c
    add hl, bc
    ld e, [hl]
    dec bc
    adc b
    ld l, l
    ld h, e
    ld bc, $1414
    db $DD
    ld e, l
    add b
    jr jr_008_6F36

    ld bc, $2043
    add b
    dec b
    rlca
    ld bc, $2043
    add c

jr_008_6F36:
    adc c
    pop bc
    inc b
    ld e, a
    nop
    ld [bc], a
    ld e, c
    ld [bc], a
    sbc e
    ld [$6BC0], sp
    ld b, l
    inc d
    inc de
    inc [hl]
    ld l, l
    ld h, e
    ld bc, $1314
    ld d, d
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
    ld [$6F60], sp
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
    jr nz, jr_008_6FD0

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, @+$79

    ld h, l
    rst $38
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_008_6FE1

    ld h, c
    halt
    ld h, l
    jr nz, @+$63

    ld l, h
    ld l, h
    cp $64
    ld h, c
    ld a, c
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $089B
    ret nz

    ld l, e
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    ld a, [bc]
    or [hl]
    ld b, a
    and b
    ld bc, $B397
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
    xor e
    ld c, a
    inc de
    ld h, a
    ld e, a
    ld b, c
    ld l, e
    or c
    ld b, a
    ld a, [hl+]
    ld e, $70
    inc l
    ld l, h
    ld a, h
    ld b, c
    dec b
    nop
    ld hl, sp+$4A
    inc c
    ld bc, $D02A
    nop
    ld [$700A], sp
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    ld d, $05

jr_008_6FD0:
    xor h
    ret nc

    nop
    ld [$7047], sp
    add hl, de
    add sp, $46
    dec b
    inc bc
    adc a
    ld l, [hl]
    ld de, $8904
    ret nc

jr_008_6FE1:
    jr nc, jr_008_6FEB

    ld l, a
    ld [hl], b
    ld [$72D5], sp
    ld l, [hl]
    jr nc, jr_008_6FF8

jr_008_6FEB:
    and b
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    dec l
    ld a, [bc]
    inc de
    ld a, b
    nop
    add e
    nop

jr_008_6FF8:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    adc b
    dec c
    inc bc
    ld [hl], e
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
    jr nc, jr_008_7026

    adc l
    ld e, h
    ld [$B514], sp
    ld e, l
    ld b, b
    inc d

jr_008_701A:
    ret


    ld e, l
    jr nc, jr_008_7032

    or l
    ld e, l
    jr nc, jr_008_7022

jr_008_7022:
    ld e, [hl]
    ld [$7098], sp

jr_008_7026:
    ld h, e
    inc b
    dec d
    inc d
    ld c, l
    ld e, h
    db $10
    inc d
    adc l
    ld e, h
    ld e, b
    inc d

jr_008_7032:
    db $D3
    ld e, l
    jr nz, jr_008_7036

jr_008_7036:
    ld e, c
    dec b
    ld h, l
    ld bc, $195D
    ldh a, [rDMA]
    sbc e
    ld [$6BC0], sp
    or e
    ld sp, $00C7
    ld b, l
    inc d
    inc de
    ld e, h
    ld l, l
    ld h, e
    ld bc, $1315
    ret nz

    ld l, h
    ld b, b
    inc de
    inc [hl]
    ld l, l
    nop
    nop
    ld e, c
    ld [bc], a
    ld h, e
    inc bc
    dec d
    inc de
    ret nz

    ld l, h
    db $10
    inc de
    inc [hl]
    ld l, l
    nop
    nop
    ld h, e
    inc b
    dec d
    inc de
    ret nc

    ld l, h
    ld d, b
    nop
    add hl, de
    ld b, l
    dec d
    ld a, [de]
    ei
    ld c, b
    jr nz, jr_008_708F

    rlca
    ld c, c
    jr nz, jr_008_7093

    ei
    ld c, b
    jr nz, jr_008_7097

    rlca
    ld c, c
    jr nz, jr_008_709B

    ei
    ld c, b
    jr nz, jr_008_709F

    ld d, a
    ld c, c
    jr nz, jr_008_7089

jr_008_7089:
    ld h, e
    ld bc, $1A14
    adc c
    ld c, c

jr_008_708F:
    ld b, l
    ld b, e
    jr nz, jr_008_701A

jr_008_7093:
    jr nc, jr_008_7096

    nop

jr_008_7096:
    nop

jr_008_7097:
    ld b, l
    and d
    jr c, jr_008_7105

jr_008_709B:
    and [hl]
    ld c, c
    daa
    ld l, l

jr_008_709F:
    jr nz, jr_008_710D

    ld h, c
    ld [hl], h
    ld h, l
    ld hl, $4920
    daa
    ld l, l
    rst $38
    ld l, h
    ld h, c
    ld [hl], h
    ld h, l
    ld hl, $4420
    ld l, c
    ld h, h
    jr nz, @+$4B

    cp $6D
    ld l, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_008_711D

    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    jr nz, @+$66

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_008_713E

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, $FF
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$63

    ld [hl], d
    ld h, l
    jr nz, jr_008_715B

    ld l, a
    ld [hl], l
    cp $6C
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_008_7151

    ld l, a
    ld [hl], d
    ccf
    cp $FD
    and d
    jr c, @+$6C

    and [hl]
    ld c, c
    jr nz, jr_008_7165

    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_008_7170

    ld l, a
    jr nz, jr_008_716C

    ld h, c
    ld l, e
    ld h, l
    rst $38
    ld [hl], e
    ld [hl], l

jr_008_7105:
    ld [hl], d
    ld h, l
    jr nz, jr_008_715C

    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]

jr_008_710D:
    ld a, c
    cp $66
    ld l, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_008_718A

    ld l, b
    ld h, l
    rst $38
    ld b, d
    ld l, a
    ld h, a
    ld [hl], d

jr_008_711D:
    ld h, c
    ld [hl], h
    ld l, b
    jr nz, jr_008_718F

    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    daa
    ld l, l
    jr nz, jr_008_7185

    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    inc l
    jr nz, jr_008_719B

    ld l, [hl]

Jump_008_713B:
    ld h, h
    rst $38
    ld c, c

jr_008_713E:
    jr nz, jr_008_71A1

    ld l, l
    jr nz, jr_008_71A4

    ld l, h
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    cp $64
    ld l, a
    ld l, [hl]
    ld h, l
    ld l, $20
    ld d, a

jr_008_7151:
    ld l, b
    ld l, a
    jr nz, jr_008_71B6

    ld [hl], d
    ld h, l
    rst $38
    ld a, c
    ld l, a
    ld [hl], l

jr_008_715B:
    ccf

jr_008_715C:
    cp $FD
    and d
    jr c, jr_008_71CB

    and [hl]
    ld c, c
    jr nz, jr_008_71C6

jr_008_7165:
    ld l, l
    jr nz, @+$51

    ld h, d
    ld h, a
    ld [hl], d
    ld h, l

jr_008_716C:
    ld l, [hl]
    inc l
    rst $38
    ld c, e

jr_008_7170:
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    jr nz, jr_008_71E6

    ld h, [hl]
    cp $42
    ld l, a
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h
    ld l, b
    ld hl, $FDFE
    and d
    cp b

jr_008_7185:
    ld e, l
    and [hl]
    ld b, c
    ld l, h
    ld [hl], e

jr_008_718A:
    ld l, a
    jr nz, @+$6D

    ld l, [hl]
    ld l, a

jr_008_718F:
    ld [hl], a
    ld l, [hl]
    jr nz, jr_008_71F4

    ld [hl], e
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_008_71C1

    ld l, h

jr_008_719B:
    ld h, c
    ld [hl], h
    ld h, l
    daa
    cp $4B

jr_008_71A1:
    ld h, l
    ld h, l
    ld [hl], b

jr_008_71A4:
    ld h, l
    ld [hl], d
    jr nz, jr_008_7217

    ld h, [hl]
    rst $38
    ld b, d
    ld l, a
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h
    ld l, b
    ld l, $FE
    db $FD
    and c
    ld e, c

jr_008_71B6:
    ld bc, $085D
    sub b
    ld [hl], b
    ld h, e
    ld [bc], a
    and d
    jr c, jr_008_722A

    and [hl]

jr_008_71C1:
    ld b, l
    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]

jr_008_71C6:
    ld hl, $5320
    ld l, a
    ld [hl], d

jr_008_71CB:
    ld [hl], d
    ld a, c
    rst $38
    ld c, c
    daa
    ld l, l
    jr nz, jr_008_723F

    ld h, c
    ld [hl], h
    ld h, l
    ld l, $20
    ld c, c
    cp $77
    ld h, c
    ld [hl], e
    ld l, $2E
    ld l, $20
    ld [hl], l
    ld l, l
    ld l, l
    ld l, $2E

jr_008_71E6:
    ld l, $FF
    ld l, l
    ld a, c
    jr nz, jr_008_725C

    ld h, l
    ld [hl], h
    ld l, $2E
    ld l, $FE
    ld [hl], l
    ld l, l

jr_008_71F4:
    ld l, l
    ld l, $2E
    ld l, $20
    ld l, l
    ld a, c
    jr nz, jr_008_7263

    ld l, a
    ld l, a
    ld [hl], h
    rst $38
    ld h, a
    ld l, a
    ld [hl], h
    jr nz, jr_008_7279

    ld [hl], h
    ld [hl], l
    ld h, e
    ld l, e
    jr nz, jr_008_727B

    ld l, [hl]
    cp $61
    ld l, $2E
    ld l, $20
    ld [hl], l
    ld l, b
    ld l, $2E

jr_008_7217:
    ld l, $20
    ld c, c
    rst $38
    ld l, b
    ld h, c
    ld h, h
    jr nz, jr_008_7293

    ld l, a
    ld l, l
    ld h, l
    cp $4B
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d

jr_008_722A:
    daa
    ld [hl], e
    jr nz, jr_008_72A1

    ld [hl], h
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_008_7298

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld h, h
    jr nz, jr_008_72B2

    ld l, a

jr_008_723F:
    ld l, $FE
    ld e, c
    ld h, l
    ld h, c
    ld l, b
    ld l, $20
    ld c, c
    ld [hl], h
    jr nz, jr_008_72C2

    ld h, c
    ld [hl], e
    rst $38
    halt
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_008_72BD

    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld [hl], h

jr_008_725C:
    ld l, $FE
    db $FD
    and d
    cp b
    ld e, l
    ld e, c

jr_008_7263:
    inc bc
    and [hl]
    ld c, a
    ld h, [hl]
    jr nz, jr_008_72CC

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $20
    ld b, e
    ld l, a
    ld l, l
    ld h, l
    rst $38
    ld d, e
    ld h, c
    ld l, h
    ld h, c

jr_008_7279:
    ld h, [hl]
    ld a, c

jr_008_727B:
    inc l
    jr nz, jr_008_72E7

    ld [hl], h
    daa
    ld [hl], e
    cp $74
    ld l, c
    ld l, l
    ld h, l
    jr nz, @+$76

    ld l, a
    jr nz, jr_008_72F2

    ld l, a
    jr nz, jr_008_7302

    ld l, a
    rst $38
    ld [hl], h
    ld l, b
    ld h, l

jr_008_7293:
    jr nz, @+$75

    ld [hl], l
    ld l, [hl]
    ld l, [hl]

jr_008_7298:
    ld a, c
    cp $74
    ld [hl], d
    ld l, a
    ld [hl], b
    ld l, c
    ld h, e
    ld [hl], e

jr_008_72A1:
    jr nz, jr_008_7312

    ld h, [hl]
    rst $38
    ld d, b
    ld h, c
    ld [hl], d
    ld h, c
    ld h, h
    ld [hl], a
    ld a, c
    ld l, [hl]
    ld hl, $FDFE
    and c
    ld e, c

jr_008_72B2:
    inc b
    ld h, e
    dec b
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, [hl]
    ld l, c
    ld h, e
    ld h, l

jr_008_72BD:
    jr nz, jr_008_732C

    ld h, l
    ld h, l
    ld [hl], h

jr_008_72C2:
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    ld l, $20
    ld b, d

jr_008_72CC:
    ld a, c
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $B345
    ld sp, $01C7
    ld e, [hl]
    ld [$72E1], sp
    ld c, b
    ld a, [de]
    sub e
    ld c, c
    and d
    jr c, @+$6C

    and [hl]
    ld c, b
    ld l, c

jr_008_72E7:
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, b
    ld l, c
    ld l, $FE

jr_008_72F2:
    db $FD
    and c
    ld e, e
    ld bc, $089B
    ret nz

    ld l, e
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    ld a, [bc]
    or e

jr_008_7302:
    inc [hl]
    and c
    add hl, bc
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e
    ld sp, $01C7

jr_008_7312:
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    xor e
    ld c, a
    inc de
    ld h, a
    ld e, a
    ld b, c
    ld l, e
    or c
    ld b, a
    ld a, [hl+]
    ld e, $70
    inc l
    ld l, h
    ld a, h
    ld b, c
    dec b
    nop
    ld hl, sp+$4A
    nop

jr_008_732C:
    dec de
    ld a, [hl+]
    db $D3
    nop
    ld [$738F], sp
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    nop
    inc e
    ld c, b
    db $D3
    nop
    ld [$745A], sp
    ld [$763B], sp
    dec b
    inc bc
    ld hl, sp+$4A
    inc b
    dec d
    ld a, d
    jp nc, $0830

    cp c
    ld [hl], h
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    ld b, $15
    ld a, h
    jp nc, $0858

    ld l, a
    ld [hl], l
    add hl, de
    add sp, $46
    ld l, [hl]
    jr nc, jr_008_7373

    and b
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    jr z, jr_008_737B

    ret nz

    ld [hl], b
    nop
    add e
    nop

jr_008_7373:
    ld l, [hl]
    inc h
    dec c
    jr nz, jr_008_73D3

    add b
    add l
    nop

jr_008_737B:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b
    adc b
    ld [bc], a
    dec de
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
    adc l
    ld e, h
    jr nc, jr_008_73A9

    sub a
    ld e, l
    jr nz, jr_008_73AD

    ret


    ld e, l
    jr nz, jr_008_73B1

    cp a
    ld e, l
    ld [$5E00], sp
    ld [$7787], sp
    ld h, l
    ld bc, $085E

jr_008_73A9:
    cp d
    ld [hl], a
    ld h, l
    ld [bc], a

jr_008_73AD:
    ld e, [hl]
    ld [$77E0], sp

jr_008_73B1:
    ld h, l
    inc bc
    ld b, e
    jr nz, @+$17

    inc d
    ret


    ld e, l
    jr nz, jr_008_73CF

    db $DD
    ld e, l
    stop
    ld e, c
    ld bc, $1C87
    nop
    rst $38
    nop
    ld d, $14
    inc hl
    ld e, h
    stop
    rst $38
    nop
    dec d

jr_008_73CF:
    inc d
    adc l
    ld e, h
    db $10

jr_008_73D3:
    inc d
    inc hl
    ld e, h
    db $10
    inc d
    db $DD
    ld e, l
    nop
    nop
    ld h, l
    ld a, [bc]
    dec d
    inc d
    sub a
    ld e, l
    jr nz, @+$16

    db $DD
    ld e, l
    jr nz, @+$16

    sub a
    ld e, l
    jr nz, jr_008_7400

    db $DD
    ld e, l
    jr nc, jr_008_73F0

jr_008_73F0:
    ld e, [hl]
    ld [$78F1], sp
    ld h, l
    dec bc
    ld e, [hl]
    ld [$790F], sp
    ld b, e
    ld [$1415], sp
    sub a
    ld e, l

jr_008_7400:
    nop
    nop
    ld h, l
    inc c
    ld e, [hl]
    ld [$7929], sp
    ld h, l
    dec c
    ld b, e
    jr nc, jr_008_746B

    ld [$7948], sp
    ld h, l
    ld c, $15
    inc d
    cp a
    ld e, l
    jr nc, jr_008_7418

jr_008_7418:
    ld e, [hl]
    ld [$795A], sp
    ld h, l
    rrca
    ld b, e
    jr jr_008_7435

    inc d
    or l
    ld e, l
    ld h, l
    ld de, $1415
    inc hl
    ld e, h
    db $10
    inc d
    ld l, l
    ld e, h
    db $10
    inc d
    or l
    ld e, l
    ld b, b
    inc d
    adc l

jr_008_7435:
    ld e, h
    db $10
    inc d
    inc hl
    ld e, h
    jr nc, @+$16

    ld l, l
    ld e, h
    db $10
    inc d
    and c
    ld e, l
    nop
    nop
    ld h, l
    add hl, de
    add a
    ld b, b
    nop
    rst $38
    nop
    ld b, e
    jr nz, jr_008_74AB

    add hl, de
    ldh a, [rDMA]
    sbc e
    ld [$6BC0], sp
    or e
    ld sp, $00C7
    ld b, l
    ld b, e
    db $10
    dec d
    inc de
    ld a, $6D
    db $10
    inc de
    ret nc

    ld l, h
    db $10
    inc de
    ld d, d
    ld l, l
    nop
    nop
    ld h, l

jr_008_746B:
    inc bc
    dec d
    inc de
    ret nc

    ld l, h
    jr nc, jr_008_7485

    and b
    ld l, h
    db $10
    inc de
    ret nc

    ld l, h
    db $10
    inc de
    and b
    ld l, h
    jr nz, @+$15

    ret nc

    ld l, h
    db $10
    inc de
    jr nz, jr_008_74F1

    nop

jr_008_7485:
    nop
    ld h, l
    dec b
    inc d
    inc de
    ld c, b
    ld l, l
    ld b, e
    inc c
    ld e, [hl]
    ld [$786F], sp
    ld h, l
    rrca
    inc d
    inc de
    inc [hl]
    ld l, l
    ld e, [hl]
    ld [$7982], sp
    ld h, l
    db $10
    ld e, [hl]
    ld [$79B6], sp
    ld h, l
    ld de, $8043
    dec d
    inc de
    ret nz

    ld l, h
    db $10

jr_008_74AB:
    inc de
    and b
    ld l, h
    ld b, b
    inc de
    ret nc

    ld l, h
    db $10
    inc de
    ld e, h
    ld l, l
    nop
    nop
    ld b, l
    inc d
    ld de, $44DF
    ld h, e
    ld bc, $1115
    ld d, e
    ld b, h
    ld b, $11
    inc sp
    ld b, h
    db $10
    ld de, $44AD
    nop
    nop
    ld e, [hl]
    ld [$783F], sp
    dec d
    ld de, $4433
    ld [$AD11], sp
    ld b, h
    nop
    nop
    ld h, l
    inc b
    dec d
    ld de, $4423
    ld [$AD11], sp
    ld b, h
    nop
    nop
    ld h, l
    ld b, $5E
    ld [$7893], sp
    dec d
    ld de, $4433

jr_008_74F1:
    ld [$AD11], sp
    ld b, h
    nop
    nop
    ld h, l
    rlca
    dec d
    ld de, $4423
    ld [$AD11], sp
    ld b, h
    nop
    nop
    ld h, l
    dec c
    dec d
    ld de, $44C1
    jr nc, jr_008_751C

    xor l
    ld b, h
    stop
    ld h, l
    ld de, $1843
    dec d
    ld de, $4433
    ld b, b
    ld de, $4443
    db $10

jr_008_751C:
    ld de, $44C1
    nop
    nop
    ld h, l
    inc d
    dec d
    ld de, $44E9
    jr nz, jr_008_753A

    rst $18
    ld b, h
    jr nz, jr_008_753E

    pop bc
    ld b, h
    jr nc, jr_008_7531

jr_008_7531:
    ld e, [hl]
    ld [$7A3B], sp
    ld h, l
    dec d
    ld b, e
    db $10
    ld e, [hl]

jr_008_753A:
    ld [$7A54], sp
    ld b, e

jr_008_753E:
    ld [$1115], sp
    xor l
    ld b, h
    ld [$DF11], sp
    ld b, h
    nop
    nop
    ld h, l
    ld d, $5E
    ld [$7A8A], sp
    ld b, e
    jr nc, jr_008_7567

    ld de, $44CB
    jr nz, jr_008_7568

    pop bc
    ld b, h
    jr nz, jr_008_756C

    rst $18
    ld b, h
    jr nz, jr_008_755F

jr_008_755F:
    ld h, l
    jr jr_008_75A5

    inc b
    dec d
    ld de, $4433

jr_008_7567:
    db $10

jr_008_7568:
    ld de, $4443
    ld h, h

jr_008_756C:
    nop
    add hl, de
    ld b, l
    inc d
    inc de
    ret


    ld l, d
    ld h, e
    ld bc, $1315
    dec e
    ld l, d
    db $10
    inc de
    sub a
    ld l, d
    nop
    nop
    ld h, l
    inc b
    ld e, [hl]
    ld [$7857], sp
    ld b, e
    ld [$1315], sp
    dec e
    ld l, d
    ld [$9713], sp
    ld l, d
    nop
    nop
    ld h, l
    dec b
    dec d
    inc de
    dec c
    ld l, d
    ld [$9713], sp
    ld l, d
    nop
    nop
    ld h, l
    rlca
    ld b, e
    db $10
    ld e, [hl]
    ld [$78A6], sp

jr_008_75A5:
    ld h, l
    ld [$085E], sp
    add $78
    dec d
    inc de
    dec e
    ld l, d
    ld [$9713], sp
    ld l, d
    nop
    nop
    ld h, l
    add hl, bc
    dec d
    inc de
    dec c
    ld l, d
    ld [$9713], sp
    ld l, d
    nop
    nop
    ld b, e
    db $10
    ld e, [hl]
    ld [$78D9], sp
    ld h, l
    dec c
    dec d
    inc de
    and c
    ld l, d
    jr nc, @+$15

    sub a
    ld l, d
    stop
    ld h, l
    ld de, $2843
    dec d
    inc de
    dec l
    ld l, d
    stop
    ld d, $13
    dec e
    ld l, d
    jr nz, jr_008_75E3

jr_008_75E3:
    ld bc, $8700
    ld [$0100], sp
    nop
    dec d
    inc de
    dec e
    ld l, d
    jr jr_008_7603

    and c
    ld l, d
    nop
    nop
    ld b, e
    jr nz, jr_008_7655

    ld [$79CE], sp
    ld h, l
    ld [de], a
    ld e, [hl]
    ld [$79EE], sp
    ld h, l
    inc de
    ld e, [hl]

jr_008_7603:
    ld [$7A1F], sp
    ld h, l
    dec d
    ld e, [hl]
    ld [$7A54], sp
    dec d
    inc de
    dec l
    ld l, d
    db $10
    inc de
    dec e
    ld l, d
    db $10
    inc de
    dec l
    ld l, d
    jr nc, @+$15

    cp a
    ld l, d
    nop
    nop
    ld e, a
    nop
    ld [bc], a
    ld e, [hl]
    ld [$7ABB], sp
    ld b, e
    ld b, $14
    inc de
    and c
    ld l, d
    ld h, l
    jr @+$60

    ld [$7AE0], sp
    ld b, e
    db $10
    dec d
    inc de
    dec l
    ld l, d
    ld h, h
    nop
    add hl, de
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    ld [$7647], sp
    ld c, b
    inc de
    ld [hl], b
    ld l, l
    ld b, [hl]
    rrca
    nop
    ld a, [hl-]
    and b
    inc b
    ld b, $FF
    rst $38
    ld [$76AD], sp
    ld b, [hl]
    rrca

jr_008_7655:
    nop
    ld a, [hl-]
    and b
    ld [bc], a
    ld b, $FF
    rst $38
    ld [$76F3], sp
    ld b, [hl]
    rrca
    nop
    ld a, [hl-]
    and b
    ld bc, $FF06
    rst $38
    ld [$7748], sp
    and d
    cp b
    ld e, l
    and [hl]
    ld d, b
    ld h, c
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    ld h, c
    ld h, a
    ld [hl], e
    jr nz, jr_008_76DE

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    rst $38
    ld h, a
    ld h, l
    ld [hl], h
    jr nz, jr_008_76F7

    ld [hl], h
    ld [hl], l
    ld h, e
    ld l, e
    jr nz, jr_008_76F3

    ld l, [hl]
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_008_76FE

    ld [hl], l
    ld h, h
    ld l, $20
    ld b, [hl]
    ld l, a
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld l, c
    ld [hl], d
    jr nz, jr_008_770F

    ld h, l
    ld h, c
    ld h, h
    ld l, $FE
    db $FD
    ld c, b
    ld [$7783], sp
    and d
    cp b
    ld e, l
    and [hl]
    ld d, h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_008_7720

    ld [hl], h
    jr nz, @+$71

    ld l, [hl]
    ld h, l
    rst $38
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], b
    jr nz, jr_008_7724

    ld [hl], h
    jr nz, jr_008_7727

    cp $74
    ld l, c
    ld l, l
    ld h, l
    ld l, $2E
    ld l, $20
    ld h, c
    ld l, [hl]
    ld a, c
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    inc l
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, jr_008_7757

jr_008_76DE:
    ld l, a
    ld [hl], l
    cp $6D
    ld h, c
    ld a, c
    jr nz, jr_008_774C

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_008_7754

    ld l, [hl]
    ld hl, $FDFE
    ld c, b
    ld [$7783], sp

jr_008_76F3:
    and d
    cp b
    ld e, l
    and [hl]

jr_008_76F7:
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_008_776B

jr_008_76FE:
    ld h, c
    ld a, c
    jr nz, @+$64

    ld h, l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_008_777A

    ld h, c
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h

jr_008_770F:
    ld h, c
    ld h, a
    ld [hl], e
    cp $74
    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_008_776C

    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    ld [hl], e
    inc l

jr_008_7720:
    rst $38
    ld h, d
    ld [hl], l
    ld [hl], h

jr_008_7724:
    jr nz, jr_008_779F

    ld l, a

jr_008_7727:
    ld [hl], l
    cp $6F
    ld [hl], l
    ld [hl], h
    ld l, [hl]
    ld [hl], l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_008_77A8

    ld l, b
    ld h, l
    ld l, l
    rst $38
    ld l, c
    ld l, [hl]
    jr nz, @+$75

    ld l, l
    ld h, c
    ld [hl], d
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    ld c, b
    ld [$7783], sp
    and d
    cp b
    ld e, l
    and [hl]

jr_008_774C:
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_008_77B8

    ld [hl], d
    ld l, a
    ld [hl], l

jr_008_7754:
    ld l, [hl]
    ld h, h
    rst $38

jr_008_7757:
    ld l, c
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_008_77D1

    ld [hl], h
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    cp $68
    ld h, l
    ld [hl], d
    ld h, l
    inc l
    jr nz, jr_008_77DE

jr_008_776B:
    ld l, a

jr_008_776C:
    jr nz, jr_008_77E5

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, @+$75

    ld [hl], h

jr_008_777A:
    ld h, l
    ld [hl], b
    ld hl, $FDFE
    ld c, b
    ld [$7783], sp
    and c
    ld e, e
    ld bc, $A245
    sbc b
    ld b, c
    and [hl]
    ld c, c
    jr nz, jr_008_77F9

    ld l, [hl]
    ld h, l
    ld [hl], a
    jr nz, jr_008_77FC

    ld [hl], h
    ld hl, $4120
    ld l, [hl]
    rst $38
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld [hl], d
    ld h, l

jr_008_779F:
    jr nz, jr_008_7813

    ld h, l
    ld h, a
    ld l, c
    ld l, a
    ld l, [hl]
    cp $6D

jr_008_77A8:
    ld h, c
    ld h, h
    ld h, l
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_008_781D

    ld [hl], l
    ld h, e
    ld l, e
    ld l, $FE
    db $FD
    and c
    ld e, e

jr_008_77B8:
    ld bc, $A245
    cp b
    ld e, l
    and [hl]
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_008_783C

    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    inc l
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h

jr_008_77D1:
    jr nz, jr_008_7846

    ld [hl], l
    ld [hl], d
    halt
    ld l, c
    halt
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e

jr_008_77DE:
    ld [bc], a
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c

jr_008_77E5:
    jr nz, @+$66

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_008_7858

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, $2E
    ld l, $FF
    ld h, h
    ld l, c
    ld a, d
    ld a, d
    ld a, c

jr_008_77F9:
    ld l, c
    ld l, [hl]
    ld h, a

jr_008_77FC:
    jr nz, jr_008_7861

    ld l, h
    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld [hl], e
    cp $61
    ld [hl], d
    ld h, l
    jr nz, jr_008_7878

    ld l, [hl]
    ld h, l
    jr nz, jr_008_7881

    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    rst $38

jr_008_7813:
    ld l, l
    ld l, c
    ld l, h
    ld h, l
    ld [hl], e
    jr nz, jr_008_7889

    ld h, [hl]
    jr nz, jr_008_788A

jr_008_781D:
    ld [hl], l
    ld h, h
    cp $61
    ld [hl], d
    ld h, l
    jr nz, jr_008_7888

    ld l, a
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld [hl], h
    ld h, l
    ld l, h
    ld a, c
    rst $38
    ld h, h
    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $FE
    db $FD
    and c

jr_008_783C:
    ld e, e
    inc bc
    ld b, l
    and d
    ld e, b
    ld d, h
    and [hl]
    ld c, b
    ld h, l
    ld l, h

jr_008_7846:
    ld l, h
    ld l, a
    ld l, a
    ld l, a
    jr nz, jr_008_7891

    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    ld hl, $FDFE
    and c
    ld e, e
    inc b
    ld b, l
    and d

jr_008_7858:
    add sp, $55
    and [hl]
    ld c, b
    ld h, l
    ld l, h
    ld l, h
    ld l, a
    ld l, a

jr_008_7861:
    ld l, a
    jr nz, jr_008_78A9

    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    ld hl, $FDFE
    and c
    ld e, e
    dec b
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]

jr_008_7878:
    ld a, c
    inc l
    jr nz, jr_008_78F0

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_008_78EA

jr_008_7881:
    ld [hl], e
    rst $38
    ld b, e
    ld l, b
    ld [hl], l
    ld h, d
    ld h, d

jr_008_7888:
    ld l, h

jr_008_7889:
    ld h, l

jr_008_788A:
    ld l, $2E
    ld l, $FE
    db $FD
    and c
    ld e, e

jr_008_7891:
    ld b, $45
    and d
    ld e, b
    ld d, h
    and [hl]
    ld c, b
    ld l, c
    inc l
    jr nz, jr_008_7908

    ld h, c
    ld h, h
    ld a, c
    ld hl, $FDFE
    and c
    ld e, e
    rlca
    ld b, l
    and d
    cp b
    ld e, l

jr_008_78A9:
    and [hl]
    ld l, $2E
    ld l, $61
    ld l, [hl]
    ld h, h
    jr nz, jr_008_7926

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_008_7920

    ld [hl], e
    rst $38
    ld b, a
    ld l, a
    ld l, h
    ld [hl], h
    ld l, b
    ld h, c
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld [$A245], sp
    add sp, $55
    and [hl]
    ld c, b
    ld l, c
    inc l
    jr nz, jr_008_793B

    ld h, c
    ld h, h
    ld a, c
    ld hl, $FDFE
    and c
    ld e, e
    add hl, bc
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_008_795A

    ld [hl], a
    ld l, c
    ld l, [hl]
    ld [hl], e

jr_008_78EA:
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld a, [bc]

jr_008_78F0:
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, e
    ld l, a
    halt
    ld h, l
    ld [hl], d
    ld h, l
    ld h, h
    jr nz, @+$6B

    ld l, [hl]
    jr nz, jr_008_796E

    ld [hl], l
    ld h, h
    inc l
    rst $38
    ld [hl], h
    ld l, a
    ld l, a

jr_008_7908:
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec bc
    ld b, l
    and d
    ld e, b
    ld d, h
    and [hl]
    ld d, a
    ld h, l
    jr nz, jr_008_7983

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_008_7990

    ld l, b
    ld h, l
    rst $38
    ld l, l

jr_008_7920:
    ld [hl], l
    ld h, h
    ld l, $FE
    db $FD
    and c

jr_008_7926:
    ld e, e
    inc c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, h
    ld l, a
    jr nz, jr_008_79AA

    ld l, a
    ld [hl], l
    jr nz, jr_008_79A1

    ld l, c
    ld l, e
    ld h, l
    rst $38
    ld [hl], b
    ld l, c

jr_008_793B:
    ld h, l
    inc l
    jr nz, jr_008_79B3

    ld l, a
    ld l, a
    ccf
    cp $FD
    and c
    ld e, e
    dec c
    ld b, l
    and d
    add sp, $55
    and [hl]
    ld c, a
    ld l, b
    inc l
    jr nz, jr_008_79CA

    ld h, l
    ld [hl], e
    ld hl, $FDFE
    and c
    ld e, e
    ld c, $45

jr_008_795A:
    and d
    sbc b
    ld b, c
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, [hl]

jr_008_796E:
    ld h, c
    ld h, c
    ld l, b
    inc l
    jr nz, jr_008_79E8

    ld l, a
    ld l, a
    jr nz, @+$67

    ld h, c
    ld [hl], e
    ld a, c
    ld l, $FE
    db $FD
    and c
    ld e, e
    rrca
    ld b, l
    and d

jr_008_7983:
    cp b
    ld e, l
    and [hl]
    ld d, e
    ld l, a
    jr nz, @+$55

    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    inc l

jr_008_7990:
    jr nz, jr_008_79F3

    ld [hl], d
    ld h, l
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, @+$74

    ld h, l
    ld h, c
    ld h, h
    ld a, c
    jr nz, jr_008_7A06

    ld l, a

jr_008_79A1:
    ld [hl], d
    cp $61
    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d

jr_008_79AA:
    jr nz, @+$6F

    ld h, c
    ld a, d
    ld h, l
    ccf
    cp $FD
    and c

jr_008_79B3:
    ld e, e
    db $10
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld [hl], l
    ld [hl], b
    inc l
    jr nz, jr_008_7A2C

    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_008_7A2D

    ld l, a
    ld hl, $FDFE

jr_008_79CA:
    and c
    ld e, e
    ld de, $A245
    add sp, $55
    and [hl]
    ld d, a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_008_7A50

    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_008_7A52

    ld l, b
    ld h, l
    ld a, c
    rst $38
    ld h, a
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    ccf

jr_008_79E8:
    cp $FD
    and c
    ld e, e
    ld [de], a
    ld b, l
    and d
    ld e, b
    ld d, h
    and [hl]
    ld c, c

jr_008_79F3:
    jr nz, jr_008_7A69

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_008_7A63

    ld h, l
    jr nz, @+$75

    ld h, c
    ld l, c
    ld h, h
    rst $38
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l

jr_008_7A06:
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_008_7A6E

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    cp $61
    jr nz, jr_008_7A82

    ld h, c
    ld a, d
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    inc de
    ld b, l
    and d
    add sp, $55
    and [hl]
    ld d, d
    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ccf
    jr nz, jr_008_7A83

jr_008_7A2C:
    ld l, b

jr_008_7A2D:
    ld h, c
    ld [hl], h
    rst $38
    ld l, l
    ld h, c
    ld a, d
    ld h, l
    ccf
    cp $FD
    and c
    ld e, e
    inc d
    ld b, l
    and d
    ld e, b
    ld d, h
    and [hl]
    ld c, c
    jr nz, jr_008_7AA6

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_008_7AB3

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, $2E
    ld l, $FE
    db $FD

jr_008_7A50:
    and c
    ld e, e

jr_008_7A52:
    dec d
    ld b, l
    and d
    add sp, $55
    and [hl]
    ld c, h
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_008_7AC5

    ld l, a
    ld l, h
    ld l, h
    ld l, a

jr_008_7A63:
    ld [hl], a
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld l, l

jr_008_7A69:
    ld hl, $4D20
    ld h, c
    ld a, c

jr_008_7A6E:
    ld h, d
    ld h, l
    cp $77
    ld h, l
    daa
    ld l, h
    ld l, h
    jr nz, jr_008_7AEB

    ld h, l
    ld h, l
    jr nz, jr_008_7AF0

    ld l, b
    ld h, l
    rst $38
    ld l, l
    ld h, c
    ld a, d

jr_008_7A82:
    ld h, l

jr_008_7A83:
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld d, $45
    and d
    ld e, b
    ld d, h
    and [hl]
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_008_7AFD

    ld h, h
    ld h, l
    ld h, c
    ld hl, $FDFE
    and d
    ld e, b
    ld d, h
    and [hl]
    ld d, a
    ld l, b
    ld l, c
    ld h, e
    ld l, b
    jr nz, @+$79

    ld h, c

jr_008_7AA6:
    ld a, c
    jr nz, @+$66

    ld l, c
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_008_7B19

    ld l, a

jr_008_7AB3:
    ccf
    cp $FD
    and c
    ld e, a
    nop
    ld [bc], a
    ld b, l
    and d
    add sp, $55
    and [hl]
    ld c, c
    jr nz, jr_008_7B36

    ld l, b
    ld l, c
    ld l, [hl]

jr_008_7AC5:
    ld l, e
    jr nz, jr_008_7B3C

    ld l, b
    ld h, l
    ld a, c
    cp $77
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_008_7B46

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_008_7B4E

    ld h, c
    ld a, c
    ld l, $FE
    db $FD
    and c
    ld e, e
    jr @+$47

    and d
    ld e, b
    ld d, h
    and [hl]
    ld e, c
    ld h, c
    ld a, c
    inc l
    jr nz, jr_008_7B56

    ld h, l

jr_008_7AEB:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_008_7B57

jr_008_7AF0:
    ld l, a
    ld hl, $FDFE
    and c
    ld e, e
    add hl, de
    ld b, l
    ld c, b
    rla
    ld d, b
    ld e, h
    ld c, b

jr_008_7AFD:
    rla
    ld d, [hl]
    ld e, h
    ld c, b
    rla
    ld e, h
    ld e, h
    ld c, b
    rla
    ld h, d
    ld e, h
    ld c, b
    rla
    ld l, b
    ld e, h
    ld bc, $0613
    ld c, b
    ld a, [de]
    inc l
    ld d, c
    ld bc, $0613
    ld c, b
    ld a, [de]
    inc l

jr_008_7B19:
    ld d, c
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    ld c, d
    inc b
    ld [$7B2F], sp
    ld [$7B71], sp
    ld [$7BAA], sp
    ld [$7BEC], sp
    and [hl]
    ld c, a
    ld l, a
    ld l, a
    ld l, a
    ld l, b
    inc l

jr_008_7B36:
    jr nz, jr_008_7BAC

    ld l, b
    ld h, l
    jr nz, @+$01

jr_008_7B3C:
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]

jr_008_7B46:
    jr nz, jr_008_7BBC

    ld l, a
    cp $73
    ld [hl], h
    ld h, l
    ld [hl], b

jr_008_7B4E:
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_008_7BB4

    jr nz, jr_008_7BC9

    ld [hl], d

jr_008_7B56:
    ld h, l

jr_008_7B57:
    ld h, l
    rst $38
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_008_7BC0

    ld [hl], l
    ld [hl], d
    ld a, c
    jr nz, jr_008_7BCC

    ld [hl], h
    jr nz, jr_008_7BCF

    ld l, [hl]
    cp $6D
    ld [hl], l
    ld h, h
    ld hl, $FDFE
    ld c, c
    add hl, de
    ld a, h
    and [hl]
    ld b, c
    jr nz, jr_008_7BEC

    ld l, b
    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_008_7BE1

    ld l, a
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], h
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, @+$64

    ld [hl], l
    ld [hl], d
    ld l, c
    ld h, l
    ld h, h
    jr nz, jr_008_7C00

    ld [hl], d
    ld h, l
    ld h, l
    ld [hl], e
    cp $72
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_008_7BFA

    ld h, l
    ld l, h
    ld l, a
    ld [hl], a
    jr nz, jr_008_7C0B

    ld a, c
    rst $38
    ld h, [hl]
    ld h, l
    ld h, l
    ld [hl], h
    ld hl, $FDFE
    ld c, c
    add hl, de
    ld a, h
    and [hl]
    ld c, c

jr_008_7BAC:
    jr nz, jr_008_7C10

    ld h, l
    ld [hl], h
    jr nz, jr_008_7C26

    ld l, b
    ld l, c

jr_008_7BB4:
    ld [hl], e
    jr nz, jr_008_7C2B

    ld [hl], d
    ld h, l
    ld h, l
    rst $38
    ld [hl], a

jr_008_7BBC:
    ld h, c
    ld [hl], e
    jr nz, jr_008_7C32

jr_008_7BC0:
    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, @+$76

    ld h, c
    ld l, h

jr_008_7BC9:
    ld l, h
    cp $62

jr_008_7BCC:
    ld h, l
    ld h, [hl]
    ld l, a

jr_008_7BCF:
    ld [hl], d
    ld h, l
    jr nz, jr_008_7C3C

    ld [hl], h
    jr nz, jr_008_7C49

    ld h, c
    ld l, [hl]
    ld l, e
    rst $38
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld l, a
    jr nz, jr_008_7C54

    ld l, b

jr_008_7BE1:
    ld h, l
    jr nz, jr_008_7C51

    ld [hl], l
    ld h, h
    ld l, $FE
    db $FD
    ld c, c
    add hl, de
    ld a, h

jr_008_7BEC:
    and [hl]
    ld c, [hl]
    ld l, a
    jr nz, jr_008_7C64

    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l
    ld l, [hl]
    jr nz, @+$01

    ld [hl], h
    ld [hl], d

jr_008_7BFA:
    ld h, l
    ld h, c
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld h, l

jr_008_7C00:
    inc l
    jr nz, jr_008_7C6D

    ld [hl], l
    ld [hl], e
    ld [hl], h
    cp $73
    ld [hl], l
    ld l, [hl]
    ld l, e

jr_008_7C0B:
    ld h, l
    ld l, [hl]
    jr nz, jr_008_7C83

    ld [hl], d

jr_008_7C10:
    ld h, l
    ld h, l
    ld [hl], e
    ld l, $FE
    db $FD
    ld c, c
    add hl, de
    ld a, h
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c

jr_008_7C26:
    ld c, d
    ld [bc], a
    ld [$7C2E], sp

jr_008_7C2B:
    ld [$7C83], sp
    and [hl]
    ld d, a
    ld l, b
    ld h, l

jr_008_7C32:
    ld l, [hl]
    jr nz, @+$6E

    ld l, c
    halt
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_008_7CAB

jr_008_7C3C:
    ld h, [hl]
    ld h, [hl]
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_008_7CB0

    ld [hl], l
    ld h, h
    inc l
    jr nz, jr_008_7CBF

    ld l, b

jr_008_7C49:
    ld h, c
    ld [hl], h

jr_008_7C4B:
    jr nz, jr_008_7C4B

    ld l, l
    ld l, a
    ld [hl], d
    ld h, l

jr_008_7C51:
    jr nz, jr_008_7CB6

    ld h, c

jr_008_7C54:
    ld l, [hl]
    jr nz, jr_008_7CD0

    ld l, a
    ld [hl], l
    jr nz, @+$01

    ld h, l
    ld a, b
    ld [hl], b
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, @+$76

    ld l, b

jr_008_7C64:
    ld h, c
    ld l, [hl]
    jr nz, jr_008_7CC9

jr_008_7C68:
    jr nz, jr_008_7C68

    ld h, a
    ld [hl], d
    ld h, c

jr_008_7C6D:
    ld a, c
    inc l
    jr nz, jr_008_7CDD

    ld l, c
    ld h, [hl]
    ld h, l
    ld l, h
    ld h, l
    ld [hl], e
    ld [hl], e
    rst $38
    ld [hl], h
    ld [hl], d
    ld h, l
    ld h, l
    ccf
    cp $FD
    ld c, c
    db $E4
    ld a, h

jr_008_7C83:
    and [hl]
    ld b, [hl]
    ld h, c
    ld l, h
    ld l, h
    ld l, c

Jump_008_7C89:
    ld l, [hl]
    ld h, a
    jr nz, jr_008_7CFC

    ld [hl], l
    ld [hl], h
    jr nz, jr_008_7D00

    ld h, [hl]
    rst $38
    ld [hl], h
    ld [hl], d
    ld h, l
    ld h, l
    ld [hl], e
    jr nz, jr_008_7D11

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, @+$70

    ld l, a
    cp $63
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld h, l
    ld [hl], c
    ld [hl], l
    ld h, l
    ld l, [hl]
    ld h, e

jr_008_7CAB:
    ld h, l
    ld [hl], e
    ld hl, $4920

jr_008_7CB0:
    rst $38
    ld h, c
    ld l, l
    jr nz, jr_008_7D28

    ld [hl], h

jr_008_7CB6:
    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_008_7D32

    ld l, a

jr_008_7CBF:
    jr nz, jr_008_7CBF

    ld [hl], e
    ld h, l
    ld h, l
    jr nz, jr_008_7D3A

    ld l, b
    ld h, l
    rst $38

jr_008_7CC9:
    ld h, d
    ld [hl], d
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld h, l

jr_008_7CD0:
    ld [hl], d
    jr nz, jr_008_7D46

    ld l, c
    ld h, h
    ld h, l

jr_008_7CD6:
    jr nz, jr_008_7CD6

    ld l, a
    ld h, [hl]
    jr nz, @+$6F

    ld [hl], l

jr_008_7CDD:
    ld h, h
    ld hl, $FDFE
    ld c, c
    db $E4
    ld a, h
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
    inc b
    ld [$7CFF], sp
    ld [$7D4D], sp
    ld [$7D5E], sp

jr_008_7CFC:
    ld [$7D99], sp
    and [hl]

jr_008_7D00:
    ld c, c
    jr nz, jr_008_7D66

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_008_7D76

    ld h, c
    ld l, e
    ld h, l
    jr nz, @+$01

    ld l, l
    ld l, c
    ld l, h

jr_008_7D11:
    ld l, h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    jr nz, jr_008_7D81

    ld l, [hl]

jr_008_7D19:
    jr nz, jr_008_7D19

    ld h, c
    ld l, [hl]
    ld l, c
    ld l, l
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_008_7D97

    ld h, l
    ld l, h
    ld l, h
    ld l, c

jr_008_7D28:
    ld l, [hl]
    ld h, a
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, @+$6F

jr_008_7D32:
    ld [hl], l
    ld [hl], e
    ld l, b
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    ld [hl], e

jr_008_7D3A:
    cp $61
    ld [hl], e
    jr nz, jr_008_7DAF

    ld l, a
    ld [hl], h
    ld [hl], b
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], d

jr_008_7D46:
    ld l, c
    ld hl, $FDFE
    ld c, c
    call c, $A67D
    ld c, l
    ld [hl], l
    ld h, h
    ld [hl], e
    ld l, b
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    ld [hl], e
    ccf
    cp $FD
    ld c, c
    call c, $A67D
    ld b, d
    ld h, l
    jr nz, jr_008_7DD0

    ld [hl], l
    ld h, h
    rst $38

jr_008_7D66:
    ld h, [hl]
    ld [hl], d
    ld l, c
    ld h, l
    ld l, [hl]
    ld h, h
    ld l, h
    ld a, c
    inc l
    jr nz, @+$69

    ld [hl], d
    ld l, a
    ld [hl], a
    cp $61

jr_008_7D76:
    jr nz, jr_008_7DDA

    ld [hl], d
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    inc l
    jr nz, jr_008_7DE7

    ld [hl], d

jr_008_7D81:
    ld h, l
    ld h, l
    ld l, [hl]
    rst $38
    ld l, l
    ld [hl], l
    ld [hl], e
    ld l, b
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    jr nz, jr_008_7E03

    ld l, a
    ld h, h
    ld h, c
    ld a, c
    ld hl, $FDFE
    ld c, c

jr_008_7D97:
    call c, $A67D
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_008_7E13

    ld l, l
    ld h, l
    ld l, h
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$01

    ld l, l
    ld [hl], l
    ld [hl], e
    ld l, b
    ld [hl], d
    ld l, a

jr_008_7DAF:
    ld l, a
    ld l, l
    ld [hl], e
    ccf
    cp $57
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_008_7E2A

    ld h, l
    ld a, b
    ld [hl], h
    ccf
    jr nz, @+$01

    ld c, [hl]
    ld h, c
    ld [hl], e
    ld [hl], h
    ld a, c
    jr nz, jr_008_7E3C

    ld l, l
    ld h, l
    ld l, h
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a

jr_008_7DD0:
    cp $72
    ld l, a
    ld [hl], e
    ld h, l
    ld [hl], e
    ccf
    cp $FD
    ld c, c

jr_008_7DDA:
    call c, $A17D
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d

jr_008_7DE7:
    sbc b
    ld b, c
    ld c, d
    inc bc
    ld [$7DF4], sp
    ld [$7E1B], sp
    ld [$7E64], sp
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_008_7E72

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_008_7E6C

    ld l, a
    ld l, a
    ld l, e

jr_008_7E03:
    ld [hl], e
    rst $38
    ld l, h
    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_008_7E78

    ld l, a
    ld l, h
    ld h, h
    ld h, l
    ld h, h
    cp $6D
    ld [hl], l

jr_008_7E13:
    ld h, e
    ld l, e
    ld hl, $FDFE
    ld c, c
    or [hl]
    ld a, [hl]
    and [hl]
    ld b, [hl]
    ld [hl], l
    ld l, h
    ld l, h
    dec l
    ld [hl], e
    ld l, c
    ld a, d
    ld h, l
    jr nz, @+$6F

    ld [hl], l
    ld h, h
    rst $38

jr_008_7E2A:
    ld [hl], a
    ld h, c
    ld l, h
    ld l, h
    ld [hl], e
    ld l, $2E
    ld l, $2E
    ld l, $FE
    ld d, a
    ld l, b
    ld a, c
    jr nz, @+$66

    ld l, a
    ld h, l

jr_008_7E3C:
    ld [hl], e
    jr nz, jr_008_7EB3

    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld l, [hl]
    ld l, a
    ld [hl], h
    jr nz, jr_008_7EB5

    ld h, c
    ld l, e
    ld h, l
    jr nz, @+$6F

    ld h, l

jr_008_7E4E:
    jr nz, jr_008_7E4E

    ld h, [hl]
    ld h, l
    ld h, l
    ld l, h
    jr nz, jr_008_7ECC

    ld h, l
    ld [hl], d
    ld a, c
    jr nz, @+$75

    ld h, c
    ld h, [hl]
    ld h, l
    ccf
    cp $FD
    ld c, c
    or [hl]
    ld a, [hl]
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_008_7ECD

jr_008_7E6C:
    ld [hl], d
    ld h, l
    rst $38
    ld [hl], e
    ld l, b
    ld l, c

jr_008_7E72:
    ld [hl], d
    ld [hl], h
    ld [hl], e
    jr nz, jr_008_7ED8

    ld l, [hl]

jr_008_7E78:
    ld h, h
    cp $73
    ld l, b
    ld l, a
    ld h, l
    ld [hl], e
    jr nz, @+$75

    ld [hl], h
    ld [hl], l
    ld h, e
    ld l, e
    jr nz, jr_008_7EFB

    ld l, a
    rst $38
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_008_7F06

    ld h, c
    ld l, h
    ld l, h
    ld hl, $4E20
    ld l, a
    cp $73
    ld l, b
    ld l, c
    ld [hl], d
    ld [hl], h
    inc l
    jr nz, jr_008_7F0D

    ld l, a
    rst $38
    ld [hl], e
    ld l, b
    ld l, a
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_008_7F17

    ld l, a
    cp $6D
    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    ccf
    cp $FD

jr_008_7EB3:
    ld c, c
    or [hl]

jr_008_7EB5:
    ld a, [hl]
    and c
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    rrca
    nop
    ld a, [hl-]
    and b
    ld bc, $0005
    add hl, de
    rst $20
    ld b, [hl]
    add e
    ld b, c
    jp nc, $0708

jr_008_7ECC:
    ld b, c

jr_008_7ECD:
    jp nc, $0713

    add d
    adc e
    ret nc

    inc b
    ld [$D1CD], sp
    rrca

jr_008_7ED8:
    dec bc
    ld b, l
    ld b, [hl]
    rrca
    nop
    ld a, [hl-]
    and b
    ld [bc], a
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e
    or a
    pop de
    inc b
    dec c
    or a
    pop de
    ld c, $13
    ld b, [hl]
    rrca
    nop
    ld a, [hl-]
    and b
    jr nz, jr_008_7EFA

    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e

jr_008_7EFA:
    dec d

jr_008_7EFB:
    pop de
    inc b
    dec b
    dec d
    pop de
    add hl, bc
    rlca
    add e
    ld d, l
    pop de
    dec b

jr_008_7F06:
    dec b
    ld d, l
    pop de
    dec bc
    dec bc
    add e
    db $EB

jr_008_7F0D:
    pop de
    inc b
    rlca
    db $EB
    pop de
    db $10
    dec bc
    ld b, l
    ld b, [hl]
    rrca

jr_008_7F17:
    nop
    ld a, [hl-]
    and b
    inc b
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e
    ldh [$D0], a
    dec b
    dec b
    ldh [$D0], a
    rlca
    ld c, $83
    nop
    pop de
    dec b
    ld b, $00
    pop de
    ld [$8210], sp
    adc c
    ret nc

    ld [bc], a
    inc bc
    and a
    ret nc

    dec b
    ld de, $0E84
    ld [de], a
    or [hl]
    pop de
    ld [$840E], sp
    rlca
    ld [de], a
    db $E4
    ret nc

    ld [$452D], sp
    ld b, [hl]
    rrca
    nop
    ld a, [hl-]
    and b
    ld [$0005], sp
    add hl, de
    rst $20
    ld b, [hl]
    add e
    ld c, l
    ret nc

    inc c
    ld b, $4D
    ret nc

    ld [bc], a
    ld de, $4645
    rrca
    nop
    ld a, [hl-]
    and b
    jr nz, jr_008_7F6B

    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e

jr_008_7F6B:
    ld d, b
    pop de
    add hl, bc
    dec b
    ld d, b
    pop de
    dec bc
    ld b, $83
    ld d, $D1
    ld [bc], a
    ld [bc], a
    ld d, $D1
    add hl, bc
    ld [$4545], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_008_7FB0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
