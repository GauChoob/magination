; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $023", ROMX[$4000], BANK[$23]

    sub a
    add sp, $4D
    ld a, [c]
    call c, $D5EB
    xor $AB
    add $25
    jp nz, $8374

    push bc
    ld [bc], a
    push hl
    ld e, $6A
    sbc l
    jp c, $B53D

    ld a, a
    ld l, e
    rst $30
    ld d, l
    db $E3
    ld d, [hl]
    pop hl
    or c
    ret nz

    nop
    nop
    nop
    nop
    or d
    or d
    jr z, jr_023_4050

    cp $DA
    dec d
    rst $28
    ei
    dec b
    ld a, h
    add e
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    ld [bc], a
    inc bc
    ld bc, $0203
    inc bc
    ld bc, $0203
    jr z, jr_023_406A

    or h
    sub h
    ld c, l
    ld bc, $3FBF
    ld a, a
    ld d, $24
    inc h
    ld a, a
    ld e, c
    nop
    ld a, a

jr_023_4050:
    dec b
    dec b
    sbc d
    sbc d
    ld b, e
    ld b, c
    db $F4
    call nc, $20F8
    nop
    nop
    db $FC
    nop
    nop
    db $FC
    pop de
    jp nc, $A2A1

    pop bc
    jp nz, $02D1

    or c
    ld [bc], a

jr_023_406A:
    pop hl
    ld [bc], a
    sub c
    ld [bc], a
    pop hl
    ld [c], a
    rst $38
    dec bc
    rst $38
    nop
    rst $18
    jr nz, jr_023_4077

jr_023_4077:
    rst $38
    inc bc
    db $FC
    inc b
    ld hl, sp+$0B
    ldh a, [rNR10]
    rst $28
    db $FC
    ld c, h
    db $FC
    db $F4
    or h
    ld d, b
    ld a, [$347A]
    inc [hl]
    ei

jr_023_408B:
    dec de
    ld a, $CA
    cp $1E
    and d
    ld e, l
    pop bc
    ld a, $81
    ld a, [hl]
    add e
    ld a, h
    and b
    ld a, a
    add e
    ld a, h
    and c
    ld a, [hl]
    and b
    ld a, a
    ld a, l
    adc c
    ei
    ld sp, $8377
    rst $30
    ld b, $EF
    inc bc
    ld l, a
    add l
    rst $18
    ld [bc], a
    rra
    and b
    ret nz

    ret nz

    ld [hl-], a
    ld [hl-], a
    ret nz

    ret nz

    db $FC
    cp h
    ld a, [$FDFA]
    cp l
    cp h
    sbc h
    ld a, [c]
    ld [hl-], a
    rrca
    rst $20
    inc a
    call c, $30F0
    call nz, $38C4
    jr c, jr_023_408B

    ret nz

    nop
    nop
    nop
    nop
    inc [hl]
    rrca
    inc [hl]
    rrca
    jr z, @+$19

    jr z, @+$19

    inc h
    dec de
    ld a, [hl+]
    dec e
    ld b, c
    ld a, $42
    dec a
    ld e, $E2
    ld a, $CA
    ld a, h
    add h
    ccf
    ret


    ld e, [hl]
    xor [hl]
    cp $06
    cp $DA
    ld l, $2E
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
    ld b, $12
    inc c
    ld [de], a

Jump_023_4105:
    inc c
    ld a, [hl+]
    inc e
    inc [hl]
    jr jr_023_413F

    jr jr_023_4139

    db $10
    ld h, h
    jr jr_023_4139

    ret nz

    xor b
    ld b, b
    sub b
    ld h, b
    ld c, b
    jr nc, jr_023_4171

    jr nz, jr_023_4173

    jr nz, jr_023_416D

    jr nz, jr_023_4187

    jr nc, jr_023_4121

jr_023_4121:
    nop
    ld b, b
    ld b, b
    add hl, de
    add hl, de
    ld h, h
    ld h, h
    xor [hl]
    xor d
    ld a, a
    ld [hl], b
    ld a, h
    db $EB
    ld a, [$0185]
    ld [bc], a
    ld hl, $0122
    ld [bc], a
    ld bc, $0102

jr_023_4139:
    ld [bc], a
    ld b, c
    ld b, d
    pop hl
    ld [c], a
    and c

jr_023_413F:
    and d
    or b
    ld a, a
    ld e, b
    ccf
    ld e, b
    ccf
    ld e, h
    ccf
    inc l
    rra
    dec l
    ld e, $15
    ld c, $09
    ld b, $BF
    nop
    ld d, e
    xor h
    adc a
    ld [hl], b
    add h
    ld a, e
    add b
    ld a, a
    nop
    rst $38
    ld b, b
    rst $38
    ld a, b
    rst $38
    rst $38
    ld c, a
    ld a, [hl]
    sub d
    db $FD
    ld bc, $718D
    ld a, d
    add l
    ld [bc], a
    db $FD
    inc b

jr_023_416D:
    ei
    inc b
    ei
    cp b

jr_023_4171:
    cp b
    ld l, e

jr_023_4173:
    ld l, e
    cp $FE
    db $FD
    dec b
    ld e, [hl]
    and l
    cp a
    ld b, b
    rrca
    ldh a, [rTAC]
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop

jr_023_4187:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc e
    inc bc
    pop hl
    rra
    ld d, $EF
    add sp, -$09
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    rlca
    ld hl, sp-$38
    rst $38
    nop

jr_023_41AD:
    rst $38
    nop
    rst $38
    nop
    nop
    rlca
    nop
    jr jr_023_41BD

    ldh [$1F], a
    nop
    rst $38
    ret nz

    rst $38
    nop

jr_023_41BD:
    rst $38
    dec bc
    db $F4
    adc a
    nop
    ld a, a
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    di
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    db $EB
    rst $30
    adc b
    rst $30
    ld [$08F7], sp
    rst $30
    ld [hl], l
    add d
    rst $30
    nop
    rst $30
    nop
    add d
    ld a, [hl]
    add [hl]
    ld a, d
    add a
    ld a, c
    add $3A
    ld sp, hl
    add hl, de
    add a
    ld a, e
    add e
    ld a, l
    add a
    ld a, e
    ld e, b
    sbc b
    ld [hl], h
    or h
    ldh [$60], a
    ldh a, [rSVBK]
    ldh [$E0], a
    add b
    add b
    ld d, b
    ld d, b

jr_023_41FE:
    nop
    nop
    ld c, h
    jr nc, jr_023_41AD

    ld [hl], b
    ret c

    ldh [$A8], a
    ret nc

    sub l
    ld hl, sp+$0B
    db $FC
    ld d, h
    xor a
    ei
    rlca
    ld l, l
    jr nc, jr_023_425A

    jr c, jr_023_41FE

    ld e, $AC
    ld e, a
    sub [hl]
    ld l, a
    inc bc
    rst $38
    xor h
    db $D3
    ld a, [hl]
    add c
    ccf
    ccf
    nop
    nop
    ld a, a
    ld b, b
    nop
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    cp $FE
    ld c, $0E
    ld [c], a
    ld [hl+], a
    ld [$02F8], sp
    ld [bc], a
    or b
    or b
    db $FC
    db $FC
    nop
    nop
    ld b, l
    ld [bc], a
    db $E3
    nop
    ld l, b
    nop
    adc $00
    inc e
    inc bc
    db $EB
    rla
    sub a
    ld l, a
    ld l, a
    sbc a
    ld a, a
    rst $38
    ccf
    rst $38
    pop bc
    ccf
    ld a, $01
    add c
    nop

jr_023_425A:
    ld h, b
    add b
    or d
    ret nz

    call nc, $A4E8
    ei
    add a
    ei
    db $F4
    ei
    rlca
    ld hl, sp-$04
    nop
    nop
    nop
    ccf
    nop
    add b
    ld b, b
    inc bc
    db $FC
    rlca
    ld sp, hl
    ld e, $E6
    ld hl, sp+$18
    ld bc, $0101
    ld bc, $C1C1
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
    ld bc, $0200
    ld bc, $0102
    dec b
    inc bc
    inc de
    rrca
    ld [hl+], a
    rra
    ld c, [hl]
    ccf
    ret c

    ccf
    ld e, b
    cp a
    ld d, b
    cp a
    or b
    rst $18
    and b
    rst $18
    ld [$04F7], sp
    ei
    ld [bc], a
    db $FD
    ld [bc], a
    db $FD
    nop
    cp $02
    db $FC
    rla
    jp hl


    ccf
    ret nz

    nop
    rst $38
    inc b
    ei
    dec d
    ld [$F807], a
    rst $38
    ld bc, $87FF
    ld a, [hl]
    ld c, [hl]
    cp e
    or e
    daa

Jump_023_42C1:
    ret c

    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    dec de
    rst $38
    rst $28
    ld a, h
    ld a, h
    cp e
    cp e
    cp $0A
    rst $38
    rra
    db $FD
    cp l
    jp hl


    ld l, c
    or c
    or c
    inc d
    inc d
    jr nz, jr_023_42FE

    add b
    add b
    db $FD
    xor l
    or l
    or l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    or l
    xor l
    xor l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_023_42FE:
    nop
    nop
    ld d, [hl]
    cp c
    ld a, d
    cp l
    ld e, [hl]
    cp l
    ld a, [hl-]
    db $DD
    inc l
    db $DB
    ld e, c
    and $22
    db $FD
    db $DB
    dec a
    ld e, h
    and e
    ld a, a
    add b
    dec e
    xor $3F
    sbc $AF
    ld e, [hl]
    ld d, l
    xor [hl]
    xor [hl]
    pop de
    and $DF
    cpl
    jr z, jr_023_4353

    rla
    nop
    nop
    scf
    scf
    rrca
    rrca

jr_023_432A:
    nop
    nop
    ld a, a
    ld b, b
    nop
    ld a, a
    cp $02
    nop
    cp $00
    nop
    cp $FE
    cp $FE
    nop
    nop
    db $FC
    nop
    nop
    db $FC
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    ld sp, hl
    add [hl]
    ldh a, [rIF]
    ret nc

    cpl
    ret nc

    cpl
    ret nz

    ccf
    rst $38
    inc bc
    rst $38

jr_023_4353:
    nop
    rst $18
    ld hl, $C13F
    rrca
    pop af
    daa
    reti


    inc bc
    db $FC
    ld bc, $10FE
    sub b
    ld a, $BE
    rst $38
    ld sp, $20FF
    rst $38
    jr nz, jr_023_432A

    jr nz, jr_023_43CC

    pop de
    ld l, [hl]
    xor [hl]
    jr z, jr_023_439A

    inc e
    inc e
    ld [$8C08], sp
    adc h
    adc h
    adc h
    sbc b
    sbc b
    jr jr_023_438E

    ld [hl-], a
    ld [hl+], a
    dec b
    inc bc
    dec bc
    rlca
    ld a, [bc]
    rlca
    ld d, $0F
    ld d, $0F
    inc d
    rrca
    inc d
    rrca

jr_023_438E:
    inc [hl]
    rrca
    jr nz, @-$1F

    ld de, $12EE
    db $ED
    rlca
    ldh a, [rTAC]
    db $F4

jr_023_439A:
    dec bc
    ld hl, sp+$0B
    di
    dec c
    push af
    cp a
    ld b, b
    dec a
    pop bc
    ld [hl], a
    add l
    rst $30
    inc de
    db $FD
    sbc l
    cp d
    ld a, [hl-]
    ret nc

    ld d, b
    and b
    and b
    cp [hl]
    cp [hl]
    db $F4
    ld [hl], h
    add sp, -$18
    ld d, b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    nop
    add [hl]
    ld a, b
    ld b, e
    db $FC
    ld b, e
    ld a, h
    jp Jump_023_477C


    ld a, b

jr_023_43CC:
    add e
    ld a, h
    rst $00
    jr c, @-$3E

    ld b, b
    add b
    nop
    ld b, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    nop
    ret nz

    ld b, b
    ld e, $E2
    ld e, $EA
    ld a, h
    add h
    ccf
    ret


    ld e, $EE
    cp [hl]
    ld b, [hl]
    cp $DA
    ld l, $2E
    add $3A
    add e
    ld a, h
    add a
    ld a, b
    add e
    ld a, h
    inc bc
    db $FD
    inc bc
    db $FC
    inc bc
    db $FD
    rrca
    pop af

Call_023_4400:
    daa
    ld a, [de]
    sub d
    dec c
    ld l, b
    rla
    jr z, jr_023_441F

    ld d, l
    ld a, [hl+]
    ld e, l
    ld a, [hl+]
    ld l, l
    ld a, [de]
    ld a, a
    add hl, de
    add sp, -$21
    db $E3
    ld e, h
    and [hl]
    ld e, b
    call z, Call_023_7C30
    add b
    ret c

    and b
    jp nc, $CAA0

jr_023_441F:
    or b
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    ccf
    nop
    nop
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    db $FC
    db $FC
    db $FC
    db $FC
    nop
    nop
    cp $02
    nop
    cp $00
    nop
    cp $FE
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    pop hl
    ld e, $C3
    inc a
    sub e
    ld l, h
    sbc b
    ld h, a
    adc b
    ld [hl], a
    ld bc, $01FF
    cp $23
    call c, $38C7
    rst $00
    add hl, sp
    adc a
    ld [hl], c
    rrca
    di
    rrca
    di
    or b
    ld d, b
    rra
    ldh [$03], a
    db $FC
    add hl, sp
    add $44
    add e
    or d
    ld sp, $29B9
    cp h
    inc h
    ld l, h
    ld c, h
    ld hl, sp-$48
    ld a, b
    ld [$1CFC], sp
    cp $0E
    ld h, [hl]
    add [hl]
    sbc h
    ld c, h
    ld hl, sp-$28
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    add b
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    add b
    nop
    ret nz

    ret nz

    call nc, Call_023_7454
    or h
    ld l, l
    xor l
    cp c
    ld e, c
    db $F4
    or h
    ld h, b
    jr nz, @-$2E

    ld d, b
    ldh [$E0], a
    add a
    ld a, b
    ld b, a
    ld a, b
    ld h, a
    ld a, b
    ld h, a
    ld a, b
    db $E3
    ld a, h
    db $E3
    ld a, h
    rst $20
    ld a, b
    rst $20
    ld a, b
    ld b, a
    cp b
    ccf
    call $17FF
    db $EB
    ld l, b
    push af
    push de
    or h
    or h
    ld c, b
    ld c, b
    add b
    add b
    rst $28
    nop
    rst $28
    nop
    xor [hl]
    ld b, c
    db $10
    rst $28
    db $10
    rst $28
    ld de, $D7EF
    rst $28
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, jr_023_44D7

jr_023_44D7:
    rst $38
    nop
    rst $38
    db $FC
    rst $38
    cp $FF
    pop af
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld b, b
    nop
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    cp $FE
    nop
    nop
    db $FC
    nop
    nop
    db $FC
    nop
    nop
    db $FC
    db $FC
    nop
    nop
    nop
    nop
    rst $38
    add hl, de
    cp a
    ld e, c
    ccf
    reti


    scf
    reti


    xor [hl]
    ld d, c
    ld [de], a
    db $ED
    xor c
    sub $7D
    add d
    db $E4
    sbc b
    rst $08
    or b
    sub $A9
    call c, $ECAB
    sbc e
    cp $99
    cp $89
    ld e, [hl]
    and c
    rrca
    ld c, $03
    inc bc
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
    and d
    ld e, c
    ld hl, sp-$59
    rst $38
    ld hl, sp+$3F
    ccf
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ccf
    ret nz

    ccf
    pop hl
    ld e, $E5
    ld a, [de]
    push af
    adc d
    push af
    adc d
    xor $91
    ld a, [c]
    adc l
    ld b, a
    cp c
    rlca
    ld sp, hl
    ld e, a
    and b
    ld d, a
    xor b
    ld d, a
    xor b

jr_023_455A:
    cp a
    ld b, c
    cp a
    ld b, e
    ld a, a
    add c
    sbc $52
    db $EB
    ld h, l
    ld h, l
    add d
    ld d, $E5
    ld a, [de]
    jp hl


    dec c
    db $F4
    jp nz, $FC3C

    jp $B0F0


    ld h, b
    ld h, b
    or b
    or b
    ld c, b
    adc b
    jr nz, jr_023_455A

    ld [hl], b
    or b
    ldh a, [rSVBK]
    ld h, b
    and b
    ldh [$1F], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    ld [$41AF], a
    cp $06
    ld a, $32
    ret nc

    sub b
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
    db $E3
    ld a, h
    rst $00
    ld a, b
    ld b, a
    ld a, b
    add a
    ld a, b
    ld hl, sp+$00
    add a
    ld a, b
    jp $C77C


    ld a, b
    ret nz

    ret nz

    ld [hl-], a
    ld [hl-], a
    ret nz

    ret nz

    db $FC
    cp h
    ld a, [$FDFA]
    cp l
    cp h
    sbc h
    ld a, [c]
    ld [hl-], a
    cp e
    cp e
    ld l, a
    ld l, a
    cp $FE
    db $FD
    dec l
    ld e, a
    and h
    cp a
    ld b, b
    rrca
    ldh a, [rTAC]
    ld hl, sp+$01
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    nop
    nop
    add c
    add d
    ld bc, $4102
    ld b, d
    ld bc, $0102
    ld [bc], a
    ld b, c
    ld b, d
    add c
    add d
    add c
    add d
    ret nz

    ret nz

    jr nz, jr_023_4614

    ret nz

    ret nz

    db $FC
    cp h
    ld hl, sp-$08
    rst $38
    cp a
    cp [hl]
    sbc [hl]
    di
    inc sp
    xor $AD

Jump_023_4602:
    adc $CB
    add a
    add [hl]
    inc de
    ld [de], a

jr_023_4608:
    ld a, [hl-]
    dec de
    ld a, e

Call_023_460B:
    ld a, [bc]
    ld [hl], a
    ld d, l
    inc bc
    inc bc
    xor [hl]
    ld d, c
    inc d
    db $EB

jr_023_4614:
    ld d, l
    xor e
    ld l, c
    sub a
    ld a, [$7C16]
    ld l, b
    sub b
    ld [de], a
    ld [$8008], sp
    add b
    ld h, h
    ld h, h
    di
    di
    db $FC
    cp h
    ei
    dec de
    rst $38
    dec c
    rst $38
    inc b
    sbc $20
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
    add b

jr_023_463B:
    add b
    ret nz

    ret nz

    add b
    add b
    cp a
    ld a, a
    ccf
    ld a, a
    ld e, a
    ccf
    rst $18
    ccf
    ld l, a
    rra
    scf
    rrca
    adc e
    rlca
    db $E4
    inc bc
    db $FD
    cp $FA
    db $FC
    db $FD
    cp $FD
    cp $CE
    rst $38
    or d
    rst $08
    ld b, c
    cp a
    ld hl, sp+$07
    inc bc
    ld [bc], a
    jr nc, jr_023_4694

    ld a, a
    ld c, a
    ccf
    jr nz, jr_023_4608

    jr @+$49

    add [hl]
    ld sp, $0ED1
    ld a, [c]
    or b
    ld [hl], b
    ld d, b
    jr nc, jr_023_468D

    jr jr_023_463B

    call nz, $30F0
    ld hl, sp+$78
    ret nc

    ret nc

    jr c, @+$3A

    db $FD
    xor l
    or l
    or l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_023_468D:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_023_4694:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or h
    or h
    rst $38
    ld a, a
    inc bc
    inc bc
    ld bc, $0300
    inc bc
    dec bc
    ld a, [bc]
    dec b
    dec b
    rrca
    rrca
    inc c
    inc c
    inc de
    inc de
    rst $00
    ld a, $E3
    ld e, $E2
    ld e, $E1
    ld e, $1F
    nop
    pop hl
    ld e, $C3
    ld a, $C3
    ld a, $C0
    ret nz

    jr nz, jr_023_46E4

    ret nz

    ret nz

    db $FC
    cp h
    ld hl, sp-$08
    rst $38
    cp a
    cp [hl]
    sbc [hl]
    di
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    and b
    reti


    reti


    cp e
    cp e
    nop
    nop
    nop
    nop

jr_023_46E4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor l
    xor l
    rst $38
    push af
    and b
    ld [hl+], a
    ld hl, $8121
    ld [bc], a
    add c
    ld [bc], a
    ld b, c
    ld b, d
    pop bc
    jp nz, Jump_023_42C1

    pop bc
    jp nz, RST_00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $40B8
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_023_471A:
    inc c
    inc c
    ret nz

    jp $E020


    rst $18
    jr nz, jr_023_471A

    ld [$38C7], sp
    and a
    ld a, b
    db $E3
    ld a, h
    db $E3
    ld a, h
    rst $20
    ld a, b
    rst $20
    ld a, b
    ld b, b
    ld b, b
    add b
    add b
    ld b, b
    ld b, b
    add b
    add b
    ret nz

    ret nz

    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    push af
    ld [de], a
    db $EB
    adc l
    db $EB
    push bc
    db $DB
    push de
    ld [hl], e
    ld l, l
    ld [hl], c
    ld h, [hl]
    jr c, jr_023_4785

    ld e, $19
    cp $F9
    add e
    add d
    ld e, $1A
    ccf
    ld hl, $4E71
    ld h, b
    ld e, a
    ldh a, [$6F]
    ld [hl], h
    xor e
    ld [bc], a
    db $FD
    add a
    ld a, e
    adc $B6
    ld l, h
    ld d, h
    ld l, h
    ld d, h
    sub [hl]
    ld a, [de]
    ld l, d
    add [hl]
    ld d, $E2
    ld hl, sp-$68
    or b
    ld [hl], b
    ldh a, [$F0]
    jr nz, jr_023_4798

    nop
    nop
    nop
    nop

Jump_023_477C:
    inc b
    inc b
    adc b
    adc b
    ret nz

    ret nz

    add b
    nop
    ret nz

jr_023_4785:
    ret nz

    ret nz

    ld b, b
    add b
    add b
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    rst $38
    rlca
    rst $38
    rlca
    ld a, a
    adc c
    ccf
    ret nz

jr_023_4798:
    rra
    add sp, $1F
    add sp, $3F
    ret z

    rst $18
    inc e
    ld a, a
    ld [hl], d
    ccf
    cpl
    cpl
    ld [$5E5F], sp
    inc l
    inc l
    rst $18
    ret c

    ld a, h
    ld d, e
    ld a, a
    ld a, b
    add c
    cp $81
    ld a, [hl]
    ld bc, $00FE
    rst $38
    ret nz

    ccf
    jr nz, jr_023_47DB

    ret nc

    rrca
    ld [$FFF7], sp
    ld c, a
    ld a, [hl]
    sub d
    db $FD
    ld bc, $718D
    ld a, d
    add l
    ld [bc], a
    db $FD
    inc b
    ei
    inc b
    ei
    cp a
    cp a
    ld a, a
    ld a, b
    rst $38
    ldh [$FE], a
    ld bc, $A758
    nop

jr_023_47DB:
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $28
    nop
    rst $28
    nop
    xor $01
    sub b
    ld l, a
    db $10
    rst $28
    ld de, $17EF
    rst $28
    ccf
    ret nz

    ld hl, sp+$18
    add b
    add b
    ld [hl-], a
    ld [hl-], a
    ld [$1E08], sp
    ld a, [de]
    dec b
    rrca
    ld c, e
    dec b
    rra
    nop
    rst $28
    ccf
    db $E3
    ccf
    di
    ccf
    db $E3
    scf
    db $E3
    scf
    pop hl
    dec sp
    pop hl
    inc sp
    pop hl
    scf
    di
    sub [hl]
    rst $30
    sbc [hl]
    di
    ld d, [hl]
    di
    sub h
    di
    sub [hl]
    di
    call c, $8CFB

jr_023_481E:
    ei
    adc $E7
    ccf
    rst $20
    ld a, $EB
    ccf
    rst $00
    ld l, a
    jp nz, $C16F

    ld h, a
    pop bc
    ld [hl], a
    jp nz, $E76B

    inc a
    rst $30
    cp b
    rst $28
    jr c, jr_023_481E

    cp b
    rst $28
    cp h
    rst $28
    ld hl, sp-$31
    ret c

    sbc a
    cp b
    ld hl, sp+$4D
    ld hl, sp+$4D
    ld hl, sp+$2C
    ld hl, sp+$6E
    ret c

    ld l, h
    db $FC
    ld l, $DC
    ld h, [hl]
    call c, $FF66
    add $FF
    ld [c], a
    ld a, a
    ld a, [c]
    ccf
    ldh a, [$3F]
    ld l, d
    ccf
    ld a, d
    ccf
    ld l, b
    rra
    cp b
    db $E3
    ld [hl], a
    rst $00
    ld l, a
    rst $08
    ld l, a
    bit 7, [hl]
    rst $08
    ld a, l
    rst $18
    ld a, [hl]
    rst $18
    ld a, d
    rst $38
    ld a, h
    rst $30
    sub h
    rst $30
    ld d, $F7
    inc e
    rst $30
    inc d
    di
    ld d, $F7
    ld d, $FB
    inc c
    ei
    ld c, $E0
    ld sp, $35E0
    ldh a, [$3B]
    ldh a, [rNR24]
    ldh a, [rNR31]
    pop af
    dec de
    ld sp, hl
    rra
    ld sp, hl
    rrca
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    call z, $84FF
    rst $38
    add h
    rst $18
    sub h
    rst $28
    or b
    rst $38
    nop
    ret nz

    ld h, a
    ret nz

    ld [hl], c
    ldh [$72], a
    ldh [$35], a
    ldh [$3B], a
    ld a, [c]
    ccf
    pop af
    rra
    ld sp, hl
    rra
    ccf
    add sp, $3F
    ld [hl], d
    ld a, a
    jp nc, $E67F

    ei
    and h
    ei
    adc h
    ei
    ld c, [hl]
    rst $30
    adc [hl]
    rst $38
    dec bc
    rst $38
    dec de
    rst $38
    dec d
    rst $38
    rla
    rst $38
    dec c
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld bc, $01FF
    rst $38
    ld bc, $03FF
    cp $03
    cp $17
    db $FD
    cpl
    ld hl, sp+$1F
    db $F4
    cp a
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $18
    rst $38
    db $ED
    rst $38
    adc d
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    adc d
    rst $38
    db $ED
    rst $38
    rst $18
    rst $38
    nop
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
    and b
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    db $FD
    rst $38
    ld a, h
    rst $38
    ld l, b
    rst $38
    inc [hl]
    rst $38
    ld h, $FF
    inc e
    rst $38
    ld [de], a
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    pop af
    rst $38
    db $D3
    rst $38
    ld [hl], $FF
    ld b, h
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
    call nz, $E2FF
    ld a, a
    ei
    ld a, a
    xor $7F
    rst $38
    ld d, a
    rst $38
    dec h
    cp $67
    rst $38
    daa
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld [$50FF], sp
    rst $38
    nop
    rst $38
    call nz, $A8FF
    rst $38
    rst $38
    ld [$0AFF], sp
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    inc h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, e
    rst $38
    ld b, [hl]
    rst $38
    inc b
    rst $38
    ld [hl+], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc b
    db $ED
    ld a, a
    ldh a, [$3F]
    cp $77
    cp $4F
    db $FD
    daa
    rst $38
    ld b, a
    rst $38
    ld b, e
    rst $38
    ld bc, $01FF
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec bc
    ldh [rIE], a
    ld h, b
    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld b, b
    rst $38
    ret nc

    rst $38
    and b
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $FD
    nop
    db $FC
    ld [bc], a
    cp $03
    rst $38
    ld bc, $00FF
    rst $28
    jr nc, @-$20

    ld h, e
    rst $20
    ld h, b
    ret nc

    ld a, b
    ldh [$7E], a
    ldh a, [$7C]
    add sp, $7D
    ldh a, [$7E]
    rst $30
    inc c
    ld a, e
    add $E7
    ld b, $0B
    ld e, $07
    ld a, [hl]
    ld c, $38
    jr jr_023_4A1F

    ld sp, $FF67
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ld a, a
    add b
    rst $38
    add b
    rst $38
    nop
    ld hl, sp+$46
    call nz, $C408
    add hl, de
    sbc h
    ld a, [hl-]
    cp h
    ld [hl], d
    ld a, h
    ld h, [hl]
    db $FC
    add [hl]
    cp $0B
    inc hl
    ld c, [hl]
    ccf
    sbc h
    ccf
    ld [$611E], sp
    rra
    ld [hl], c
    cpl
    ld hl, sp+$3F
    ld [hl], h
    ld a, a

jr_023_4A1F:
    ret nc

    rst $38

jr_023_4A21:
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    sbc a
    ret nz

    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $02
    ldh a, [rSB]
    rst $28
    jr nc, jr_023_4A21

    ld h, e
    rst $20
    ld h, b
    ret nc

    ld a, b
    ldh [$7E], a
    ldh a, [rNR32]
    jr c, jr_023_4A7B

    ld [hl], b
    xor $F7
    inc c
    ld a, e
    add $E7
    ld b, $0B
    ld e, $07
    ld a, [hl]
    rrca
    ld a, $17
    ld a, $3F
    ld c, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    and b
    add a
    call nz, $07FC
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_023_4A7B:
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [$CE]
    ld hl, sp+$0C
    db $F4
    dec e
    ld hl, sp+$1E
    ld hl, sp+$3E
    db $F4
    ld a, $FC
    ld l, $FE
    dec bc
    ld c, a

jr_023_4A91:
    ld d, $7F
    or [hl]
    ld a, a
    inc b
    ccf
    ld c, [hl]
    ccf
    ld e, d
    cpl
    db $FC
    ccf
    ld [hl], h
    ld a, a
    ret nc

    pop bc
    ld a, [$7CFF]

jr_023_4AA4:
    rst $38
    nop
    rst $38
    nop

jr_023_4AA8:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    jr nc, jr_023_4A91

    ld h, e
    rst $20
    ld h, b
    ret nc

    ld a, b
    ld hl, sp+$4E
    adc $22
    di
    ld d, b
    ld hl, sp+$6C
    rst $30
    inc c
    ld a, e
    add $E7
    ld b, $0B
    ld e, $07
    ld a, [hl]
    rrca
    ld a, $97
    cp [hl]
    sbc a
    ld h, [hl]
    db $DD

jr_023_4AD1:
    ld h, a
    rst $18
    ld [hl], d
    rst $38
    jr nc, @+$01

    ld a, b
    rst $38
    ld e, b
    rst $30
    add hl, sp
    cp $2D
    cp $0B
    and a
    ld b, d
    or e
    jr jr_023_4AA4

    inc e
    cp a
    jp nz, $C23F

    ccf
    ldh [$3F], a
    ld [hl], h
    ld a, a
    ret nc

    rst $28
    jr nc, jr_023_4AD1

    ld h, e
    rst $20
    ld h, b
    ret nc

    ld a, b
    ldh [$7E], a
    cp $7A
    db $EB
    ld [hl], c
    ld sp, hl
    ld [hl], b
    rst $30
    inc c
    ld a, e

Call_023_4B03:
    add $E7
    ld b, $0B
    ld e, $07
    ld a, [hl]
    rrca
    jr nc, @+$13

    jr z, jr_023_4AA8

    xor $F8

jr_023_4B11:
    halt
    db $ED
    ld [hl], a
    rst $38
    inc sp
    rst $38
    ld [hl], b
    rst $38
    ld d, b
    rst $30

jr_023_4B1B:
    jr c, jr_023_4B1B

jr_023_4B1D:
    jr z, jr_023_4B1D

    dec c
    rst $08
    ld [hl], h
    rst $18
    or b
    rst $28
    jr c, @-$1F

    inc a
    sbc a
    ld a, d
    cpl
    db $FC
    ccf
    ld [hl], h
    ld a, a
    ret nc

    rst $28
    jr nc, jr_023_4B11

    ld h, e
    rst $20
    ld h, b
    ret nc

    ld a, b
    ldh [$7E], a
    ldh a, [$7C]
    add sp, $7D
    ldh a, [$7E]
    rst $30
    inc c
    ld a, e
    add $E7
    ld b, $0B
    ld e, $07
    ld a, [hl]
    rrca
    ld a, $17
    ld a, $0F
    ld a, [hl]
    ldh a, [$7E]
    add sp, $7C
    db $F4
    dec a
    ld hl, sp+$7E
    ld hl, sp+$5E
    db $F4
    ld a, $FC
    ld l, $FE
    dec bc
    rrca
    ld a, [hl]
    rla
    cp [hl]
    cpl
    inc a
    rra
    ld a, [hl]
    rra
    ld a, d
    cpl
    db $FC
    ccf
    ld [hl], h
    ld a, a
    ret nc

    rst $28
    jr nc, @-$20

    ld h, e
    rst $20
    ld h, b
    ldh a, [$58]
    ldh [$3E], a
    ldh a, [$5C]
    ld hl, sp+$0D
    ld hl, sp+$1E
    rst $30
    inc c
    ld a, e
    add $E7
    ld b, $0F
    ld a, [de]
    rlca
    ld a, h
    rrca
    ld a, d
    rra
    inc [hl]
    rra
    ld a, b
    db $FC
    ld a, [hl+]
    ld sp, hl
    ld c, $FF
    dec h
    db $FD
    ld d, $FF
    ld bc, $02FF
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nc

    rra
    ldh a, [rIE]
    inc h
    cp a
    ld l, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    cp a
    ccf
    rst $38
    ld [hl], b
    rst $38
    ld l, a
    ldh a, [$5F]
    ldh [$5F], a
    ldh [$5F], a
    ldh [$5F], a
    ret nc

    ld c, a
    rst $28
    ld h, b
    ldh a, [rSVBK]
    cp a
    ccf
    add b
    nop
    and l
    dec h
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    add b
    ld b, b
    pop de
    ld a, a
    rst $00
    ld a, a
    ldh [$7F], a
    db $FC
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    ld bc, $FB02
    cp $1F
    cp $E3
    cp $4F
    cp $FF
    cp $FF
    nop
    rst $38
    nop
    rst $18
    ld [hl], b
    cp a
    ld h, b
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
    jr nc, @+$01

    nop
    rst $38
    ld [$47FF], sp
    rst $38
    ld bc, $1BFF
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, [hl]
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ld a, a
    ei
    dec l
    cp $87
    rst $38
    ld a, l
    sbc $EF

jr_023_4C2A:
    ld [hl-], a
    rst $38
    adc b
    rst $38
    nop
    rst $38
    rst $18
    ld a, h
    rst $38
    ld b, c
    rst $38
    and a
    rst $38
    db $FD
    ld l, e
    rst $18
    or h
    rst $38
    ld b, d
    rst $38
    ld [$7CFF], sp
    cp h
    cp [hl]
    ld a, $FD
    dec e
    ld a, [hl]
    xor [hl]
    cp a
    jr nc, jr_023_4C2A

    rra
    ld [hl], b
    add b
    rra
    ldh [rTMA], a
    dec b
    ld c, l
    ld c, h
    cp a
    cp b
    ld a, [hl]
    ld [hl], l
    db $FD
    inc c
    di
    ldh a, [$0E]
    ld bc, $07F8
    rlca
    inc b
    rra
    ld de, $2C3F
    scf
    add hl, de
    ld a, a
    ld b, e
    ld d, d
    dec l
    ld e, c
    ld l, $DE
    and a
    ldh [rNR41], a
    ld hl, sp-$78
    db $FC
    inc [hl]
    db $EC
    sbc b
    cp $CA
    halt
    db $EC
    ld a, [hl-]
    db $E4
    cp e
    ld [hl], l
    rst $18
    ld h, a
    sbc a
    ld l, d
    cp a
    ld l, b
    rst $18
    ld l, b
    cp a
    ld l, h
    rst $38
    ld l, h
    db $DB
    ld l, h
    rst $38
    ld l, h
    sbc e
    halt
    sbc c
    halt
    sbc l
    halt
    ei
    ld d, $9D
    ld h, [hl]
    rst $18
    and $CB
    or $EB
    halt
    rst $38
    ld l, [hl]
    jp c, $F767

    ld c, e
    ld [$EF5D], a
    ld e, l
    rst $38
    ld c, c
    rst $38
    inc hl
    rst $38
    and e
    push af
    ld a, [de]
    rst $38
    ld b, $FD
    ld b, $FF
    ld d, $7F
    sub h
    rst $38
    or [hl]
    ld a, a
    db $F4
    rst $38
    push hl
    ld a, a
    ld de, $237F
    ld a, a
    dec b
    ld a, a
    ld d, d
    ccf
    add hl, bc
    ccf
    ld [hl+], a
    rra
    nop
    rra
    db $10
    rlca
    inc b
    rra
    ld de, $2C3F
    scf
    add hl, de
    ld l, a
    ld d, e
    ld e, [hl]

jr_023_4CDB:
    scf
    ld e, h
    daa
    call c, $E0AF
    jr nz, jr_023_4CDB

    adc b
    db $FC
    inc [hl]
    db $EC
    sbc b
    cp $CA
    halt
    db $EC
    ld a, [hl-]
    db $E4
    dec sp
    push af
    ret c

    ld l, a
    sbc b
    ld l, a
    cp b
    ld l, a
    jp c, $BC6F

    ld l, a
    db $FC
    ld l, a
    jp c, $FC6F

    ld l, a

Call_023_4D00:
    dec de
    or $19
    or $1D
    or $3B
    or $1D
    or $BF
    or $1B
    or $BB
    or $FF
    ld l, a
    jp c, $FF6F

    ld c, a
    cp $6F
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    cpl
    rst $38
    and a
    ld e, l
    or $BF
    or $BD
    or $FF
    or $7F
    db $F4
    rst $38
    or $7F
    db $F4
    rst $38
    push hl
    ld a, a
    dec d
    ld a, a
    daa
    ld a, a
    dec b
    ld a, a
    ld d, d
    ccf
    add hl, bc
    ccf
    ld [hl+], a
    rra
    nop
    rra
    db $10
    cp $E8
    cp $64
    cp $C8
    cp $8A
    db $FC
    ld d, b
    db $FC
    inc b
    ld hl, sp+$00
    ld hl, sp+$08
    rlca
    inc b
    rra
    ld de, $2C3F
    scf
    add hl, de
    ld l, a
    ld d, e
    ld e, [hl]

jr_023_4D5B:
    scf
    ld e, h
    daa
    call c, $E0AF
    jr nz, jr_023_4D5B

    adc b
    db $FC
    inc [hl]
    db $EC
    sbc b
    cp $CA
    halt
    db $EC
    ld a, [hl-]
    db $E4
    dec sp
    push af
    ret c

    ld l, a
    sbc b
    ld l, a
    cp b
    ld l, a
    jp c, $BC6F

    ld l, a
    db $FD
    ld l, a
    db $DB
    ld l, a
    rst $38
    cpl
    dec de
    or $19
    or $9D
    or $3B
    or $1D
    or $BF
    or $1B
    or $BF
    db $F4
    cp $15
    ld a, a
    daa
    ld a, a
    dec b
    ld a, a
    ld d, d
    ccf
    add hl, bc
    ccf
    ld [hl+], a
    rra
    nop
    rra
    db $10
    rst $38
    add sp, -$02
    ld h, h
    cp $C8
    cp $8A
    db $FC
    ld d, b
    db $FC
    inc b
    ld hl, sp+$00
    ld hl, sp+$08
    rlca
    inc b
    rra
    ld de, $2C3F
    scf
    add hl, de
    ld l, a
    ld d, e
    ld e, [hl]
    scf
    ld e, h
    daa
    rst $18
    xor b
    ldh [rNR41], a
    cp $88
    db $FD
    ld [hl-], a
    rst $28
    sbc d
    cp $C8
    halt
    db $EC
    ld a, [hl-]
    db $E4
    dec sp
    push af
    ret c

    ld h, a
    or a
    ld c, a
    cp a
    ld h, [hl]
    rst $18
    ld l, b
    cp a
    ld l, b
    rst $38
    ld l, h
    rst $18
    ld h, b
    di
    inc l
    sbc e
    halt
    sbc a
    ld [hl], b
    sbc c
    ld h, [hl]
    or a
    ld l, [hl]
    sbc a
    ld l, h
    cp a
    ld h, b
    rra
    ldh [$BF], a
    ldh a, [$E7]
    ld e, $7F
    inc l
    ld a, a
    ld bc, $527F
    ccf
    ld bc, $223F
    rra
    nop
    rra
    db $10
    jr c, jr_023_4E02

jr_023_4E02:
    ld [hl], h
    ld [$54AA], sp
    rst $20
    ld e, d
    rst $28
    ld e, d
    rst $38
    ld e, d
    rst $38
    jr @+$80

    nop
    rlca
    inc b
    rra
    ld de, $2C3F
    scf
    add hl, de
    ld l, a
    ld d, e
    ld e, [hl]
    scf
    ld e, h
    daa
    ld e, h
    cpl
    ldh [rNR41], a
    ld hl, sp-$78
    db $FC
    inc [hl]
    db $EC
    sbc b
    cp $CA
    halt
    db $EC
    ld a, [hl-]
    db $E4
    ld a, [hl-]
    db $F4
    ld e, l
    scf
    ld a, [hl]
    scf
    ld a, a
    rla
    ld a, [hl]
    ld b, e
    ccf
    dec bc
    ccf
    ld [hl+], a
    rra
    ld bc, $101F
    ld a, [hl-]

jr_023_4E41:
    db $EC
    ld a, [hl]
    db $E4
    ld a, [hl]
    add sp, -$02
    jp nz, $90FC

    db $FC
    call nz, $00F8
    ld hl, sp+$08
    rlca
    inc b
    rra
    ld de, $2C3F
    ld [hl], a
    ld e, c
    ld l, a
    db $10
    ld e, b

jr_023_4E5B:
    scf
    ld e, a
    inc hl
    ld e, a
    jr z, jr_023_4E41

    jr nz, jr_023_4E5B

    adc b
    db $FC
    inc [hl]
    db $EC
    sbc b
    cp $CA
    or $6C
    cp d
    ld b, h
    jp z, $5F34

    inc [hl]
    ld a, [hl]
    dec [hl]
    ld a, a
    rla
    ld a, [hl]
    ld b, e
    ccf
    dec bc
    ccf
    ld [hl+], a
    rra
    ld bc, $101F
    halt
    cp b
    ld a, [hl]
    sub h
    ld a, [hl]
    add b
    cp $C2
    db $FC
    sub b
    db $FC
    call nz, $00F8
    ld hl, sp+$08
    inc bc
    db $FC
    inc c
    ldh a, [rNR10]
    ldh [$30], a
    ret nc

    ld h, b
    and b

jr_023_4E9A:
    ldh [$60], a
    pop hl
    ld h, c
    ld a, e
    cp d
    ret nz

    ccf
    jr nc, jr_023_4EB3

    ld [$0407], sp
    inc bc
    ld [bc], a
    ld bc, $0001
    add e
    add d
    jp nz, Jump_023_7F41

    cp h
    cp a

jr_023_4EB3:
    inc a
    db $FD
    inc e
    ld a, [hl]
    xor [hl]
    cp a
    jr nc, jr_023_4E9A

    rra
    ld [hl], b
    add b
    rra
    ldh [$C6], a
    dec b
    call $BF0C
    jr c, jr_023_4F45

    ld [hl], l
    db $FD
    inc c
    di
    ldh a, [$0E]
    ld bc, $07F8
    inc bc
    db $FC
    inc c
    ldh a, [rNR10]
    ldh [$30], a
    ret nc

    ld h, b
    and b
    ldh [$60], a
    pop hl
    ld h, c
    ld a, d
    cp d
    ret nz

    ccf
    jr nc, jr_023_4EF3

    ld [$0407], sp
    inc bc
    ld [bc], a
    ld bc, $0001
    add e
    add d
    ld b, d
    ld b, c
    add b
    ld h, b
    ret nz

jr_023_4EF3:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_023_4F45:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ccf
    ret nc

    cpl
    ldh [$1F], a
    and b
    ld e, a
    ret nz

    ccf
    and b
    ld e, a
    ret nz

    ccf
    add b
    ld a, a
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    db $ED
    ld [de], a
    ldh a, [rIF]
    xor b
    ld d, a
    ldh [$1F], a
    add b
    ld a, a
    rst $38
    nop
    halt
    adc c
    add hl, bc
    or $40
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    nop
    cpl
    nop
    rra
    nop
    ld e, a
    nop
    ccf
    nop
    ld e, a
    nop
    ccf
    nop
    ld a, a
    nop
    nop
    nop
    ld bc, $0700
    nop
    ld [de], a
    nop
    rrca
    nop
    ld d, a
    nop
    rra
    nop
    ld a, a
    nop
    nop
    nop
    adc c
    nop
    or $00
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
    rra
    nop
    rrca
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rst $18
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    nop
    ld a, a
    nop
    ld b, $00
    rlca
    nop
    rlca
    nop
    ld h, d
    nop
    ccf
    nop
    scf
    nop
    rra
    nop
    ld a, a
    nop
    nop
    nop
    call c, $AAB0
    ld b, b
    ld [hl], b
    add b
    ld c, b
    add b
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    rrca
    nop
    rrca
    nop
    push af
    nop
    ld a, a
    nop
    ccf
    nop
    ld e, a
    nop
    ld [de], a
    nop
    inc sp
    nop
    cp e
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
    inc b
    nop
    dec l
    nop
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
    nop
    nop
    ld bc, $0201
    ld [bc], a
    dec b
    ld bc, $080F
    inc e
    db $10
    jr jr_023_50EE

    add hl, bc
    jr nz, jr_023_50E1

jr_023_50E1:
    nop
    add b
    add b
    ld b, b

jr_023_50E5:
    nop
    ldh a, [$80]

jr_023_50E8:
    add sp, $20
    ld a, b
    jr nc, jr_023_50E5

    db $10

jr_023_50EE:
    ldh a, [rDIV]
    jr nz, jr_023_5122

    jr nc, jr_023_5133

    jr nc, jr_023_5135

    db $10
    ccf
    nop
    rra
    jr nz, jr_023_510B

    jr nc, jr_023_510E

    rra
    ld [$0CF0], sp
    nop
    db $FC
    nop
    db $FC
    nop
    db $FC
    inc b
    ld hl, sp+$08

jr_023_510B:
    ld hl, sp-$10
    nop

jr_023_510E:
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    nop
    dec e
    nop
    jr nz, jr_023_512A

    rlca
    nop
    inc e
    ld [bc], a
    nop
    nop
    nop
    nop

jr_023_5122:
    add b
    nop
    nop
    nop
    jr nz, jr_023_50E8

    nop
    nop

jr_023_512A:
    ld a, b
    nop
    ld c, h
    jr nc, jr_023_512F

jr_023_512F:
    nop
    nop
    nop
    dec b

jr_023_5133:
    ld a, [de]
    cpl

jr_023_5135:
    jr nc, jr_023_518F

    ld h, b
    jr nc, jr_023_517A

    jr nz, jr_023_517C

    jr nz, jr_023_517E

    db $10
    ld h, b
    jr nz, @+$42

    ld d, b
    jr nz, jr_023_514D

    ld h, b
    ld b, a
    jr nc, jr_023_5199

    jr c, jr_023_516C

    rra
    dec e

jr_023_514D:
    ld [bc], a
    nop
    nop
    nop
    nop
    add hl, bc
    jr @+$24

    ld d, $2D
    inc bc
    nop
    nop
    rlca
    dec a
    inc e
    ld [bc], a
    nop
    nop
    nop
    nop
    sbc b
    adc b
    xor b
    ld h, h
    ld d, h
    jr nc, jr_023_5169

jr_023_5169:
    nop
    xor h
    sbc h

jr_023_516C:
    ld [hl], b
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    ld c, $00

jr_023_517A:
    rrca
    nop

jr_023_517C:
    rrca
    nop

jr_023_517E:
    dec c
    ld [bc], a
    ld d, b
    jr nz, jr_023_51D3

    ld h, b
    ld d, b
    ld h, b
    sub b
    ldh [$90], a
    ld h, b
    jr nc, @+$42

    ld [hl], b
    nop
    sub b

jr_023_518F:
    nop
    dec c
    ld [bc], a
    ld b, $03
    ld bc, $0606
    inc bc
    dec b

jr_023_5199:
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    xor b
    inc e
    xor [hl]
    inc e
    call nz, $D41E
    ld c, $28
    add $16
    ldh [$F0], a
    nop
    nop
    nop
    dec c
    ld [bc], a
    inc b
    inc bc
    ld bc, $0406
    inc bc
    dec b
    inc bc
    ld b, $01
    ld [bc], a
    ld bc, $201B
    xor b
    inc e
    xor h
    ld e, $C4
    ld e, $C4
    ld e, $20
    adc $D0
    and $60
    ld a, [$FC1A]
    ld [bc], a
    pop bc
    ld b, c

jr_023_51D3:
    ld h, b
    nop
    jr nc, jr_023_51D7

jr_023_51D7:
    inc d
    nop
    ld b, $00
    inc bc
    ld bc, $0001
    ld bc, $4041
    ld bc, $1028
    jr @+$0A

    inc e
    nop
    inc c
    nop
    inc b
    nop
    ld bc, $0101
    ld [$4242], sp
    ld h, b
    ld [bc], a
    jr nc, jr_023_51F7

jr_023_51F7:
    jr jr_023_51FD

    inc c
    ld [bc], a
    ld b, $00

jr_023_51FD:
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
    ld b, b
    nop
    add b
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    nop
    nop

Jump_023_5218:
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    ld bc, $0000
    ld bc, $0020
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    nop
    nop
    ccf
    nop
    ld sp, $110E
    ld l, [hl]
    ld b, e
    inc a
    ld c, a
    jr nc, jr_023_52BD

    nop
    inc bc
    nop
    nop
    nop
    ld a, $00
    ld a, [hl+]
    inc d
    ld l, d
    inc d
    ld h, b
    ld e, $62
    inc e
    ld h, b
    ld e, $64
    ld a, [de]
    ld sp, $210E
    ld e, $02
    inc a
    ld a, [hl+]
    sub h
    adc d
    inc [hl]
    xor [hl]
    db $10
    ld a, $80
    add b
    nop
    ld h, [hl]
    jr jr_023_52D9

    jr jr_023_52B3

    nop
    nop
    nop
    cp [hl]
    ld b, b
    sbc [hl]
    ld h, b
    sbc d
    ld h, h
    jp z, $8034

    nop
    ld a, $80
    xor [hl]
    db $10
    ld a, [hl+]
    inc d
    ld a, [hl+]
    inc d
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    inc hl
    inc e
    ld [$4214], a
    inc a
    ld l, d
    inc d
    ld b, [hl]
    jr c, jr_023_5317

    nop
    inc c
    nop
    ld hl, $1C00
    jr nz, jr_023_52AA

    ld [hl], $4D
    ld [hl-], a
    ld a, [hl]
    nop
    stop
    nop
    nop

jr_023_52AA:
    ld d, d
    ld a, [hl]
    jr nz, jr_023_532D

    nop
    nop
    ld [de], a
    inc l
    ld [hl-], a

jr_023_52B3:
    inc c
    inc a

jr_023_52B5:
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    inc h

jr_023_52BD:
    ld a, [hl]
    nop
    nop
    and b
    db $10
    stop
    nop
    ld [bc], a
    ld [hl+], a
    nop
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    jr nz, jr_023_52E0

    ld [de], a
    ld [$10A1], sp
    ld [de], a
    nop
    nop
    nop

jr_023_52D6:
    ld hl, $2100

jr_023_52D9:
    db $10
    add hl, hl
    db $10
    add hl, hl
    db $10
    add hl, de
    ld b, b

jr_023_52E0:
    add hl, bc
    nop
    ld hl, $3500
    nop
    ld hl, $2110
    db $10
    inc sp
    nop
    ld [hl-], a
    ld bc, $9122
    ld b, c
    and b
    ret nc

    jr nz, jr_023_52B5

    jr nc, @+$54

    jr nz, @+$25

    nop
    ld a, [bc]
    ld bc, $010A
    ld a, [bc]
    add c
    ld hl, $2910
    db $10
    ld hl, $2118
    jr @+$2B

    db $10
    jr z, @+$12

    jr nc, jr_023_5316

    add hl, de
    nop
    nop
    add b
    nop
    ret nz

    jr nz, jr_023_52D6

jr_023_5316:
    add b

jr_023_5317:
    ld h, b
    ld b, b
    jr nz, jr_023_535F

    jr nz, jr_023_5341

    ld [bc], a
    add l
    ld [bc], a
    inc b
    add e
    ld b, h
    add e
    ld b, l
    add d
    ld h, l
    add d
    ld b, e
    and b
    ld b, c
    and b
    add b

jr_023_532D:
    ld h, b
    ret nz

    jr nz, jr_023_5373

    jr nz, jr_023_5355

    ld de, $1122
    sub e
    nop
    add e
    ld b, b
    add d
    ld b, c
    ld [hl+], a
    pop bc
    ld b, d
    and c
    nop

jr_023_5341:
    nop
    nop
    nop
    jr nz, jr_023_5346

jr_023_5346:
    jr nz, jr_023_5358

    jr z, jr_023_535A

    db $10
    ld [$0008], sp
    ld hl, $1F00
    nop
    dec l
    ld [de], a
    ld [hl], b

jr_023_5355:
    rrca
    ld l, a
    rra

jr_023_5358:
    cp $3F

jr_023_535A:
    halt
    dec c
    dec a
    ld [bc], a
    nop

jr_023_535F:
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld a, l
    inc bc
    ld b, d
    ccf
    ld d, [hl]
    dec sp
    dec sp
    inc b
    nop
    nop
    nop
    nop
    nop

jr_023_5373:
    nop
    ldh [rP1], a
    ld a, $C0
    ld b, e
    db $FC
    ld l, [hl]
    or b
    cp h
    ld b, b
    nop
    nop
    ccf
    nop
    ld h, a
    jr jr_023_53DB

    dec sp
    ld l, l
    ccf
    ld c, a
    ccf
    halt
    dec sp
    dec sp
    inc b
    nop
    nop
    ld hl, sp+$00
    or h
    ld c, b
    ld c, $F0
    or $F8
    ld a, a
    db $FC
    ld l, [hl]
    or b
    cp h
    ld b, b
    nop
    nop
    rst $10
    nop
    or l
    ld c, d
    halt
    adc l
    rst $38
    rst $38
    and [hl]
    rst $38
    ld [$5CF7], sp
    and e
    sub $00
    ld b, e
    nop
    dec a
    nop
    ld d, d
    inc l
    ld a, [$BC5C]
    ld [hl], b
    sub d
    ld h, b
    ld b, d
    jr nz, jr_023_53EF

    nop
    or h
    nop
    ld l, d
    inc b
    ld a, l
    ld l, $D7
    ld l, [hl]
    sub d
    ld l, h
    xor l
    ld b, b
    ld l, b
    nop
    ld b, b
    nop
    nop
    nop
    rlca
    nop
    dec de
    inc b
    inc h
    jr jr_023_5412

    nop
    ld h, d

jr_023_53DB:
    ld bc, $034D
    inc bc
    nop
    nop
    nop
    call z, $1E00
    nop
    ld b, $00
    or d
    nop
    ld c, b
    or b
    cp [hl]
    ret nz

    ret nz

jr_023_53EF:
    nop
    nop
    nop
    add hl, de
    nop
    ld [hl-], a
    ld bc, $0335
    ld l, e
    ld b, $6B
    inc b
    ld d, a
    add hl, bc
    ld d, h
    dec bc
    ld l, h
    nop
    sub [hl]
    ld c, b
    inc l
    sub b
    ld e, c
    jr nz, @-$2B

    ld h, c
    and [hl]
    jp nz, $84C3

    ld c, [hl]
    add c
    jr jr_023_5412

jr_023_5412:
    ld h, [hl]
    db $10
    adc d
    ld b, h
    ld [hl-], a
    adc h
    ld d, d
    inc a
    or d
    ld a, h
    ld a, d
    db $FC
    cp $F8
    ld e, h
    inc bc
    add hl, de
    ld b, $13
    inc c
    ld d, $08
    inc e
    nop
    add hl, de
    nop

jr_023_542C:
    ld de, $0100
    nop
    adc h
    inc bc
    adc h
    inc bc
    jr jr_023_543D

    ld d, c
    ld c, $D7
    ld [$805C], sp
    sbc b

jr_023_543D:
    nop

jr_023_543E:
    stop
    db $FC
    ld hl, sp+$3C
    ldh a, [$38]
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
    nop
    nop
    rlca
    nop
    ld a, [de]
    rlca
    cpl
    db $10
    ld d, b
    jr nz, @+$68

    nop
    ld c, c
    ld b, $00
    nop
    ld a, b
    nop
    ld h, $18
    sub [hl]
    inc c
    rlc [hl]
    dec b
    ld [bc], a
    add l
    ld [bc], a
    ld h, e
    nop
    ret


    ld b, $D0
    rrca
    sub a
    rrca
    xor a
    rra
    cpl
    rra
    scf
    rrca
    inc de
    rrca
    ld e, b
    rlca
    ld d, e
    jr nz, jr_023_542C

    db $10
    xor c
    db $10
    or h
    jr jr_023_543E

    ld hl, sp-$54
    ldh a, [rOBP0]
    or b
    ld e, b
    and b
    ld l, h
    inc bc
    and [hl]
    ld b, c
    or d
    ld h, c
    ld d, d
    ld hl, $2053
    ld h, e
    nop
    ld [hl+], a
    nop
    inc d
    nop
    sub c
    ld h, b
    or e
    ld b, b
    push hl
    ld [bc], a
    push bc
    ld [bc], a
    adc d
    inc b
    inc c
    nop
    jr jr_023_54AE

jr_023_54AE:
    nop
    nop
    nop
    nop
    inc e
    nop
    add hl, sp
    nop
    ld [hl], d
    ld bc, $0041
    inc d
    nop
    dec hl
    db $10
    ld c, b
    inc sp
    nop
    nop
    ld b, $00
    or e
    nop
    ld c, h
    add b
    or [hl]
    ld b, b
    ld c, d
    jr nc, jr_023_54F8

    db $10
    sub l
    ld [$1964], sp
    dec l
    add hl, de
    ccf
    dec c
    rla
    inc c
    add hl, de
    ld b, $49
    ld b, $6D
    ld [bc], a
    ld h, l
    ld [bc], a
    sbc l
    ld [$88DD], sp
    rst $08
    add h
    ld c, d
    add l
    ld c, c
    add [hl]
    jp z, $8A04

    inc b
    adc d
    inc b
    ld h, a
    nop
    ld d, e
    jr nz, @+$55

    jr nz, jr_023_5529

    nop

jr_023_54F8:
    ld [hl-], a
    nop
    stop
    jr jr_023_54FE

jr_023_54FE:
    ld [$1200], sp
    inc c
    inc d
    ld [$0814], sp
    jr jr_023_5508

jr_023_5508:
    stop
    jr nc, jr_023_550C

Jump_023_550C:
jr_023_550C:
    jr nz, jr_023_550E

jr_023_550E:
    nop
    nop
    nop
    nop
    ld [bc], a
    jr nz, jr_023_553B

    ld h, d
    ld h, d
    push bc
    and b
    and l
    jr nz, jr_023_5521

    ld h, c
    ld bc, $8241
    add d

jr_023_5521:
    add h
    add b
    inc b
    add h
    add h
    add h
    adc b
    adc b

jr_023_5529:
    ld [$8088], sp
    ret nz

    nop
    ld c, b
    ld c, b
    ld c, b
    nop
    ld h, h
    nop
    inc h
    nop
    jr nc, jr_023_5538

jr_023_5538:
    ld [de], a
    nop
    nop

jr_023_553B:
    nop
    stop
    ld bc, $0000
    nop
    jr nz, @+$12

    jr nc, jr_023_55BE

    ld c, b
    call z, $008C
    adc b
    ld [$C080], sp
    ld h, b
    ld d, b
    db $10
    jr jr_023_5553

jr_023_5553:
    ld [$0008], sp
    ld [$1000], sp
    ld [$3010], sp
    nop
    jr nz, @+$22

    nop
    ld [de], a
    ld bc, $0013
    ld de, $1100
    nop
    stop
    jr jr_023_556C

jr_023_556C:
    stop
    jr jr_023_5570

jr_023_5570:
    ld de, $11E0
    ldh [$33], a
    ret nz

    and e
    ld b, b
    and a
    ld b, b
    and $01
    adc $01
    call z, $F003
    nop
    or c
    ld b, b
    or c
    ld b, b
    inc sp
    ret nz

    inc hl
    ret nz

    ld h, $C1
    ld h, [hl]
    add c
    ld h, h
    add e
    ld a, [$BA00]
    ld b, b
    or d
    ld b, b
    ld [hl-], a
    ret nz

    ld [hl-], a
    ret nz

    ld [hl], d
    add b
    ld [hl], h
    add b
    ld h, h
    add b
    jr jr_023_55A2

jr_023_55A2:
    stop
    stop
    jr jr_023_55A8

jr_023_55A8:
    jr jr_023_55AA

jr_023_55AA:
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    db $DD
    inc bc
    reti


    rlca
    di
    rrca
    ld [hl], e
    rrca
    ld h, a
    rra
    ld h, l
    rra
    halt
    rrca

jr_023_55BE:
    halt
    rrca

jr_023_55C0:
    ld l, l
    add e
    ld l, l
    add e
    ld c, d
    add a
    ld e, d
    add a
    ld d, [hl]
    adc a
    halt
    adc a
    ld l, h
    sbc a
    ld l, c
    sbc [hl]
    ld h, h
    add b
    ld h, h
    add b
    ld h, h
    add b
    ld h, h
    add b
    ld b, h
    add b
    call nc, $C400
    nop
    sub h
    nop
    ld [$0800], sp

jr_023_55E3:
    nop
    add hl, bc
    nop
    ld de, $1100
    nop
    ld de, $0B00
    nop
    dec bc
    nop
    db $EC
    db $10
    db $ED
    db $10
    db $DD
    jr nz, jr_023_55C0

    jr nc, jr_023_55E3

    ld de, $11E2
    push bc
    inc sp
    push bc
    inc hl
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [hl], d
    rrca
    ld [hl], h
    rrca
    db $F4
    rrca
    ld sp, hl
    ld b, $F1
    ld c, $FB
    inc b
    ld a, [$F604]
    ld [$9E69], sp
    jp hl


    ld e, $A9
    ld e, $A9
    ld e, $AB
    inc e
    ld a, [hl+]
    inc e
    ld e, d
    inc a
    cp d
    ld a, h
    sub h
    nop
    sub h
    nop
    inc h
    nop
    inc h
    nop
    ld l, b
    nop
    ld l, b
    nop
    ld c, b
    nop
    ret z

    nop
    dec bc
    nop
    dec bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    ld [$0800], sp
    nop
    adc e
    ld h, a
    sla a
    sla a
    and l
    ld b, e
    push de
    inc hl
    add l
    ld [hl], e
    push bc
    inc sp
    call nz, $0023
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld a, h
    nop
    ld a, c
    nop
    ld [hl], e
    nop
    ld h, a
    nop
    adc [hl]
    ld bc, $031D
    inc sp
    rrca
    ld h, [hl]
    rra
    or d
    ld a, h
    ld [hl], h
    ld hl, sp+$64
    ld hl, sp+$68
    ldh a, [$C8]
    ldh a, [$D0]
    pop hl
    sub l
    ldh [$A9], a
    call nz, $00C8
    ret z

    nop
    ret z

    nop
    adc b
    nop
    and h
    nop
    and d
    nop
    ld [hl+], a
    nop
    ld h, d
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld b, $00
    push bc
    inc hl
    ld [c], a
    ld bc, HeaderDestinationCode
    ld e, c
    nop
    ld e, l
    nop
    inc d
    ld [$0834], sp
    ld [hl-], a
    inc c
    inc b
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    dec bc
    nop
    inc de
    nop
    ld [de], a
    ld bc, $3FC6
    add $3F
    ld a, [c]
    rrca
    ld e, b
    add a
    ld c, b
    add a
    ld c, h
    add e
    call nz, $A403
    inc bc
    xor b
    ret nz

    ld a, [hl+]
    ret nz

    ld c, d
    add b
    ld d, b
    adc b
    ld d, b
    adc b
    ld d, c
    add b
    ld d, c
    add b
    ld d, l
    add b
    ld h, d
    nop
    ld l, d
    nop
    ld [c], a
    nop
    jp hl


    nop
    ld c, c
    add b
    ld c, l
    add b
    ld c, l
    add b
    db $DD
    nop
    ld a, d
    inc b
    ld a, c
    ld b, $71
    ld c, $75
    ld a, [bc]
    ld [hl], l
    ld a, [bc]
    ld a, l
    ld [bc], a
    push af
    ld [bc], a
    push af
    ld [bc], a
    ld [de], a
    ld bc, $0112
    ld [de], a
    ld bc, $0013
    dec bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    and h
    inc bc
    and h
    inc bc
    and h
    inc bc
    call $4D02
    add d
    ld l, l
    add d
    ld a, c

jr_023_572D:
    add [hl]
    or e
    ld c, h
    ld b, l
    add b
    ld h, l
    adc b
    ld h, d
    adc l
    ld h, l
    adc a
    ld c, c
    add a
    jp z, Jump_023_4105

    ld c, $05
    ld c, $59
    add b

jr_023_5742:
    ld e, c
    add b
    ld e, c
    add b
    ld e, c
    add b
    ld e, c
    add b
    sbc c
    nop
    sbc l
    nop
    adc c
    nop
    ld b, $00
    ld b, $00
    inc b
    nop
    ld b, $00
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld [$C300], sp
    inc a
    jp Jump_023_653C


    ld e, $34
    rrca
    ld a, [hl-]
    rlca
    inc e
    inc bc
    jr jr_023_5775

    ld d, l
    ld a, [bc]
    dec c
    ld e, $0D
    ld e, $0B

jr_023_5775:
    inc e
    dec bc
    inc e
    dec hl
    inc e
    ld h, $18
    ld d, $38
    ld h, [hl]

jr_023_577F:
    jr jr_023_572D

    nop
    ld h, h
    nop
    ld [hl], l
    nop
    ld d, h
    jr nz, jr_023_57DD

    jr nz, jr_023_577F

    nop
    or h
    ld b, b
    or h
    ld b, b
    ld [$0800], sp
    nop
    stop
    stop
    jr nz, jr_023_579A

jr_023_579A:
    ld [$0000], sp
    nop
    nop
    nop
    ld [hl], a
    nop
    and $00
    and $00
    ld l, d
    inc b
    ld l, d
    inc b
    ld c, h
    nop
    call z, $9900
    nop
    ld d, [hl]
    jr c, jr_023_5820

    db $10
    ld l, c
    db $10
    ret


    jr nc, jr_023_5742

    ld [hl], b
    sub d
    ld h, c
    sub e
    ld h, c
    or d
    ld b, c
    or h
    ld b, b
    and h
    ld b, b
    xor h
    ld b, b
    xor h
    ret nz

    ld l, b
    add b
    ld c, b
    add b
    ld c, h
    add b
    call z, Boot
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_023_57DD:
    nop
    ld bc, $1900
    nop
    ld de, $3300
    nop
    ld h, [hl]
    ld bc, $0364
    push bc
    ld [bc], a
    adc c
    ld b, $0A
    inc b
    ld [hl+], a
    pop bc
    ld h, h
    add e
    ld b, h
    add e
    call nz, $8602
    nop
    adc h
    nop
    inc c
    nop
    ld [$A400], sp
    ld e, e
    db $D3
    inc l
    or h
    ld c, e
    ld b, c
    cp [hl]
    ld [$00F7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld sp, $4F0F
    nop
    rrca
    nop
    rra
    nop
    cpl
    nop
    cpl
    nop
    scf
    rrca

jr_023_581E:
    ld l, a
    db $10

jr_023_5820:
    rst $30
    add hl, bc
    cp $07
    rst $38
    ld [bc], a
    db $DD
    ld [hl+], a
    ccf
    pop bc
    sbc a
    ld h, b
    rst $38
    jr nz, jr_023_581E

    stop
    ldh [$1F], a
    rst $18
    rra
    ret c

    ccf
    or b
    rrca
    inc c
    ccf
    ld a, [hl-]
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    nop
    inc e
    db $E3
    db $EB
    rst $30
    inc [hl]
    rst $38
    jr @+$01

    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    inc sp
    call z, $FFCC
    ccf
    rst $38
    jr @+$01

    ld [$00FF], sp
    rst $38
    nop
    rst $38
    nop
    ldh [$1F], a
    ret nz

    ccf
    add b
    ld a, a
    ret nz

    ccf
    add b
    ld a, a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld a, h
    add b
    ld a, [$FC80]
    ld b, b
    sbc b
    ld h, b
    sub b
    ld a, b
    ld a, [hl+]
    ldh a, [$F6]
    ret z

    ld [hl], h
    adc b
    jr nc, @+$11

    ld [hl], b
    ccf
    ret nc

    ld l, a
    cp b
    ld b, a
    ldh a, [$1F]
    ld l, d
    push af
    xor b
    rst $00
    ret nc

    adc a
    ld [$E8F0], sp
    db $10
    ld [hl], b
    adc b
    sbc b
    ld a, h
    ld e, b
    ldh [$B4], a
    ld b, b
    ld [hl], h
    add b
    ld a, b
    add b
    ret nz

    rra
    inc [hl]
    dec de
    ld l, b
    scf
    sbc b
    ld h, a
    ldh [rIF], a
    ld a, [de]
    dec b
    inc l
    dec de
    ld e, b
    inc sp
    ld a, h
    add b
    ld a, [c]
    add b
    ldh a, [rLCDC]
    sbc b
    ld h, b
    sub b
    ld [hl], h
    inc h
    ldh a, [$F4]
    ret z

    ld [hl], d
    adc b
    xor d
    ld [hl], c
    dec [hl]
    jp $07CA


    dec d
    ld c, $2F
    inc e
    ld e, d
    dec a
    ld d, [hl]
    add hl, sp
    add hl, hl
    db $10
    ld b, b
    rst $38
    add b
    rst $38
    ld b, b
    cp a
    or b
    ld a, a
    ld b, [hl]
    ld sp, hl
    db $DB
    rst $20
    or [hl]
    rst $08
    ld h, $CF
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    inc h
    rst $18
    ld c, d
    cp l
    ld l, e
    sbc h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $04FE
    ei
    sbc h
    ld h, e
    rlca
    ld hl, sp-$80
    nop
    ret nz

    nop
    ld [hl], b
    add b
    call nz, $1000
    ldh [$E6], a
    jr jr_023_5986

    add [hl]
    rrca
    ldh a, [$D5]
    ld c, $2D
    ld e, $5A
    inc a
    cp d
    ld a, h
    ei
    ld a, h
    push af
    ld a, b
    add l
    ld a, b
    ld a, b
    nop
    xor a
    inc e
    ld e, h
    ld a, $5F
    ld a, $AE
    rra
    ld l, [hl]
    sbc a
    db $ED
    sbc $32
    call z, $00CC
    xor a
    ld [hl], b
    or h
    ld a, b
    ld e, d
    inc a
    ld e, l
    ld a, $6E
    rra
    ld [hl], $0F
    add hl, de
    ld b, $0F
    nop
    ld a, [$F900]
    nop
    ld a, a
    add d
    add hl, sp
    add $C9
    cp $F4
    rrca
    rst $28
    inc de
    xor $11
    ld a, h
    nop
    ld b, $00
    pop bc
    nop
    ld sp, hl
    nop
    rst $38
    ld bc, $03FE
    push hl
    cp $F7
    ld [$0000], sp
    add a
    nop
    ld h, b
    add b
    ret nz

    add b
    db $FC
    add b
    ld a, a
    ret nz

    and a
    ld a, a
    rst $28
    stop
    nop
    nop
    nop
    pop bc
    nop
    ld b, a
    nop
    ld h, c
    nop
    jp $3F00


    nop
    rst $38
    nop
    ld sp, $5F1F
    nop
    ccf
    nop

jr_023_5986:
    rra
    nop
    rra
    nop
    ld e, a
    nop
    ld [hl], a
    rrca
    cpl
    db $10
    rla
    add hl, bc
    ld d, $0F
    rra
    ld [bc], a
    dec a
    ld [bc], a
    rra
    ld bc, $002F
    cpl
    nop
    rra
    nop
    ld sp, $4F0F
    nop
    rrca
    nop
    rra
    nop
    cpl
    nop
    cpl
    nop
    scf
    rrca
    ld c, a
    stop
    rst $38
    nop
    ldh a, [rTAC]
    rst $20
    rrca
    rst $08
    rra
    db $DD
    rra
    jp c, $CC0F

    rlca
    add [hl]
    nop
    ld hl, $DEDE
    rst $18
    ld d, e
    cp a
    and c
    cp a
    and c
    ld a, a
    ld b, c
    ld a, [hl]
    ld b, d
    cp a
    and e
    nop
    ldh [$1F], a
    rst $18
    ccf
    jr nc, jr_023_5A56

    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    nop
    nop
    rlca
    nop
    sbc h
    inc bc
    ret c

    rlca
    ld [hl], b
    adc a
    db $10
    rst $28
    ld [$00F7], sp
    rst $38
    add hl, de
    add hl, de
    ccf
    ccf
    ld a, a
    ld [hl], c
    ld a, a

jr_023_59F7:
    ld l, b
    ccf
    or h
    rra
    sbc b
    rlca
    ld b, $1F
    inc e
    ld h, e
    sbc h
    ld e, d
    cp l
    dec l
    rst $18
    jp c, $ECE5

    pop af
    dec de
    ldh [$F1], a
    nop
    nop
    nop
    nop
    rst $38
    xor b
    ld a, a
    ld a, [hl]
    rst $38
    push hl
    cp $CA
    push hl
    rlca
    ldh [$F6], a
    nop
    nop
    nop
    add b
    ld a, a
    nop
    rst $38
    add c
    ld a, a
    jr nc, jr_023_59F7

    add hl, de
    rst $20
    inc b
    ei
    add e
    ld a, h
    rlca
    ld hl, sp+$3F
    jr c, jr_023_5AB2

    ld h, b
    ld a, a
    ld d, b
    ld a, a
    ld h, b
    ld a, a
    ld a, l
    inc bc
    add e
    rra
    sbc [hl]
    ccf
    inc a
    cp $06
    cp $02
    cp $06
    db $FC
    dec e
    ldh [rNR42], a
    call c, $FEDD
    ld b, $FE
    ld c, $7F
    ld a, d
    ld a, a
    ld [hl], h
    ld a, a
    ld a, c

jr_023_5A56:
    ld a, a
    ld a, h
    dec b
    add l
    ccf
    jr c, jr_023_5ADC

    ld b, b
    ld a, a
    ld h, b
    db $FC
    dec e
    ldh [$E3], a
    db $FC
    dec e
    cp $06
    cp $02
    cp $86
    db $FC
    dec a
    cp $06
    ld a, b
    rlca
    ld h, [hl]
    ld bc, $0718
    ld h, l
    rra
    ld l, [hl]

jr_023_5A79:
    rra
    ld [hl], c
    ld c, $3F
    nop
    add hl, de
    nop
    nop
    ld c, $F1
    push af
    ei
    dec de
    rst $38
    ld c, $FF
    ld a, [de]
    rst $38
    jr nz, @+$01

    ld b, d
    rst $38
    ld h, e
    nop
    add hl, de
    and $E6
    rst $38
    rra
    rst $38
    ld c, $FF
    inc bc
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rlca
    ld hl, sp-$7D
    ld a, h
    inc b
    ei
    sbc b
    rst $20
    jr nc, jr_023_5A79

    add b
    ld a, a
    nop
    rst $38
    adc h
    ld a, a
    rlca
    add [hl]

jr_023_5AB2:
    rrca
    ret z

    rra
    ret c

    rra
    call c, $CF0F
    rlca
    rst $20

Jump_023_5ABC:
    nop
    ldh a, [rP1]
    rst $38
    ld [hl], b
    rst $38
    db $EB
    or $55
    xor $36
    rst $08
    db $DB
    rlca
    sbc h
    inc bc
    rlca
    nop
    nop
    nop
    xor a
    inc e
    ld e, h
    ld a, $5F
    ld a, $AE
    rra
    xor [hl]
    rra
    ld c, l
    sbc [hl]

jr_023_5ADC:
    jp nc, $0C0C

    nop
    and b
    ld a, a
    or c
    ld a, a
    ld e, a
    ccf
    ld e, a
    ccf
    ld l, a
    rra
    ld [hl], $0F
    add hl, de
    ld b, $0F
    nop
    ld l, [hl]
    rst $38
    rst $10
    rst $28
    ld [$ECF7], a
    di
    db $DB
    ldh [$39], a
    ret nz

    ldh [rP1], a
    nop
    nop
    ld b, b
    ccf
    pop bc
    ld a, $20
    rst $18
    ld bc, $00FF
    rst $38
    add c
    ld a, [hl]
    add b
    ld a, a
    ld sp, $00FE
    add d
    dec a
    dec a
    ld a, a
    ld h, e
    ld a, a
    ld b, d
    ld a, a
    ld b, h
    ld a, a
    ld e, d
    ld l, a
    ld l, b
    ld e, a
    ld d, b
    nop
    add hl, de
    and $E6
    rst $38
    rra
    rst $38
    ld c, $FF
    inc b
    rst $38
    inc b
    rst $38
    sbc [hl]
    rst $38
    rlca
    nop
    pop hl
    ld e, $9E
    ld a, a
    ld [hl], e
    ld a, a
    ld h, c
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld e, h
    ld h, e
    ld h, d
    nop
    add e
    ld a, h
    ld a, h
    ld a, [hl]
    ld h, [hl]
    ld a, [hl]
    ld b, d
    cp [hl]
    add d
    cp $42
    cp $42
    cp $06
    dec hl
    inc e
    ld e, h
    ld a, $5F
    ld a, $6E
    rra
    ld l, $1F
    dec l
    ld e, $12
    inc c
    inc c
    nop
    xor a
    ld [hl], b
    or h
    ld a, b
    ld e, d
    inc a
    ld e, l
    ld a, $6E
    rra
    ld [hl], $0F
    add hl, de
    ld b, $0F
    nop
    dec e
    sbc h
    ld a, a
    ld [hl], c
    ld a, a
    ld l, b
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    ld a, b
    ld b, a
    ld b, a
    ccf
    cp [hl]
    cp $1E
    ldh [rNR42], a
    sbc $1E
    cp $4E
    cp $06
    cp $0E
    ld a, [c]
    ld [hl-], a
    db $FC
    ld c, l
    nop
    ld c, $F1
    push af
    ei
    ld a, [de]
    rst $38
    inc c
    rst $38
    jr @+$01

    jr nz, @+$01

    ld b, d
    rst $38
    ld h, e
    nop
    jr nz, @-$20

    sbc $FF
    ld h, e
    rst $38
    ld hl, $11FF
    rst $38
    dec l
    ei
    adc e
    db $FD
    dec b
    ccf
    cp [hl]
    ld b, a
    ld b, a
    ld a, a
    ld a, b
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld l, b
    ld a, a
    ld [hl], c
    dec e
    sbc h
    db $FC
    ld c, l
    ld a, [c]
    ld [hl-], a
    cp $0E
    cp $06
    cp $4E
    sbc $1E
    ldh [rNR42], a
    cp $1E
    xor a
    inc e
    ld e, h
    ld a, $5F
    ld a, $AE
    rra
    ld l, $9F
    adc l
    ld e, [hl]
    jp nc, $0C0C

    nop
    ld [$9D1C], a
    ld a, $7D
    ld a, $3B
    ld a, h
    ld a, [hl-]
    ld a, h
    ld e, d
    inc a
    inc h
    jr jr_023_5C07

    nop
    ld h, d
    ld bc, $235C
    ld b, e
    ccf
    ld e, [hl]
    ccf
    ld l, l
    ld e, $73
    inc c
    ld e, $00
    nop
    nop
    ld h, $F8
    jp nc, Jump_023_5ABC

    cp h
    sbc d

jr_023_5C07:
    inc a
    ld c, d
    inc a
    ld h, [hl]
    jr jr_023_5C89

    nop
    nop
    nop
    nop
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
    ld e, a
    jr nz, jr_023_5C2F

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_023_5C2F:
    nop
    ld [$1101], sp
    ld c, $00
    ld [hl-], a
    ld [hl+], a
    ret nz

    ret nz

    ld bc, $0060
    nop
    jr nz, jr_023_5C4F

    nop
    ldh a, [rP1]
    stop
    adc b
    nop
    ld h, [hl]
    add hl, de
    and c
    ld b, b
    ld b, b
    nop
    add b
    nop
    add b

jr_023_5C4F:
    nop
    ld c, $31
    jr nz, jr_023_5C94

    add b
    nop
    nop
    add b
    nop
    add b
    add b
    ld b, b
    ld e, b
    daa
    stop
    add b
    nop
    nop
    add b
    ld bc, $6340
    nop
    ld l, h
    inc de
    ret nc

    jr nz, jr_023_5C75

    ret nz

    adc b
    nop
    add hl, bc
    ld bc, $001F
    ld [hl-], a

jr_023_5C75:
    nop
    ld [c], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    stop
    adc b
    nop
    ld a, a
    nop
    pop hl

jr_023_5C89:
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld sp, $5F0F
    nop

jr_023_5C94:
    sbc a
    nop
    sbc a
    nop
    adc a
    nop
    ld b, b
    nop

jr_023_5C9C:
    ld [hl], b
    rrca
    nop
    db $10
    ld a, a
    add b
    rst $38
    add b
    cp $41
    sbc h
    ld h, e
    sub e
    ld a, a
    jr nz, jr_023_5C9C

jr_023_5CAC:
    ld [$88C0], sp
    nop
    pop af
    ccf
    rst $18
    ld h, b
    ld a, a
    add b
    rst $38
    add b
    cp a
    add b
    ld b, b
    ret nz

jr_023_5CBC:
    nop
    ld a, a
    nop
    db $10
    ld a, a
    add b
    rst $38

Jump_023_5CC3:
    add b
    cp $41
    sbc h
    ld h, e
    inc de
    ld a, a
    jr nz, jr_023_5CBC

    ld [$88C0], sp
    nop
    pop af
    ccf
    rst $18
    ld h, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    ld b, b
    ret nz

    nop
    ld a, a
    nop
    db $10
    ld a, h
    add b
    db $FC
    add b
    db $FC
    ld b, b
    sbc b
    ld h, b
    jr nz, jr_023_5D2A

    jr nc, jr_023_5CAC

    ld c, b
    add b
    adc b
    nop
    add hl, bc
    nop
    inc de
    inc c
    nop
    ld [de], a
    jr nz, @+$04

    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    stop
    adc b
    nop
    ld h, b
    rra
    and c
    ld b, b
    ld b, b
    nop
    add b
    nop
    add b
    nop
    ld [$1101], sp
    ld c, $20
    ld [hl-], a
    ld [hl+], a
    ret nz

    ret nz

    ld bc, $0060
    jr nz, jr_023_5D1E

jr_023_5D1E:
    stop
    ldh a, [rP1]
    stop
    adc b
    nop
    ld h, [hl]
    add hl, de
    and c
    ld b, b

jr_023_5D2A:
    ld b, b
    nop
    add b
    nop
    add b
    nop
    add hl, bc
    nop
    inc de
    inc c
    nop
    ld [hl-], a
    jr nz, @-$3C

    ret nz

    ld bc, $0060
    jr nz, jr_023_5D3E

jr_023_5D3E:
    stop
    ldh a, [rP1]
    stop
    adc b
    nop
    ld h, b
    nop
    ldh [rP1], a
    ld b, b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    ldh [rP1], a
    ret nz

    rra
    adc b
    ccf
    db $10
    ld a, a
    dec d
    ld a, a
    adc d
    ccf
    add e
    ccf
    rst $38
    nop
    rlca
    nop
    inc bc
    ld hl, sp+$11
    db $FC
    adc b
    cp $48
    cp $91
    db $FC
    pop hl
    db $FC
    add a
    ccf
    rrca
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rrca
    ld a, a
    adc a
    ccf
    add a
    ccf
    add e
    ccf
    reti


    db $FC
    db $F4
    cp $F8
    cp $F8
    cp $F0
    cp $E1
    db $FC
    sub c
    db $FC
    pop hl
    db $FC
    rrca
    ld a, a
    rra
    ld a, a
    cpl
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    rra
    ld a, a
    sbc a
    ccf
    sbc a
    ccf
    ldh a, [$FE]
    add sp, -$02
    db $FC
    cp $FC
    cp $F4
    cp $F8
    cp $F9
    db $FC
    ld sp, hl
    db $FC
    sbc a
    ccf
    sbc [hl]
    ccf
    sbc a
    ccf
    sbc a
    ccf
    rra
    ld a, a
    rrca
    ld a, a
    ld d, $7F
    sub c
    ccf
    sbc c
    db $FC
    ld c, c
    db $FC
    pop hl
    db $FC
    pop hl
    db $FC
    ldh a, [$FE]
    ld hl, sp-$02
    ld a, b
    cp $F9
    db $FC
    di
    nop
    ldh [$0C], a

jr_023_5DD4:
    ret nz

    rra
    adc l
    ccf
    sub e
    ccf
    add a
    ccf
    add a
    ccf
    add hl, bc
    ld a, a
    add a
    nop
    nop
    ld a, b
    nop
    rst $38
    di
    rst $38
    ei
    rst $38
    db $FD
    rst $38
    cp $FF
    cp $FF
    adc a
    nop
    nop
    ld [hl], b
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
    rst $38

Call_023_5E00:
    ret nz

    nop
    nop
    ccf
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
    ld d, $7F
    add [hl]
    ccf
    adc c
    ccf
    add h
    ccf
    ld a, [bc]
    ld a, a
    nop

jr_023_5E1B:
    ld a, a
    nop

jr_023_5E1D:
    ld a, [hl]
    nop
    inc a
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    ld d, c
    rst $38
    ld c, $7F
    nop
    rst $38
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_023_5E35:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr @+$01

    nop
    rst $08
    nop
    ld [hl], a
    rst $18
    rst $38
    rst $20
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ret nz

    db $FD
    add h
    cp $00
    db $FC
    nop
    ldh a, [$80]
    jr c, jr_023_5DD4

    nop
    add e
    nop
    add e
    db $10
    pop de
    jr jr_023_5E1B

    jr jr_023_5E1D

    ld de, $10D0
    inc d
    ccf
    adc $1E
    ldh [$0E], a
    ldh [rDIV], a
    ldh a, [rP1]
    inc a
    ld bc, $C100
    ld h, d
    ei
    nop
    inc sp
    inc c
    ld bc, $003E
    rra
    nop
    rrca
    add b
    inc bc
    ret nz

    add b
    call z, $C783
    ld [$3CC0], sp
    add b
    ld a, h
    nop
    db $FC
    nop
    ld hl, sp+$01
    pop hl
    ld bc, $1100
    ld b, c
    db $E3
    add $10
    rst $10
    db $10
    add a
    jr nc, jr_023_5ECA

    jr c, jr_023_5E99

jr_023_5E99:
    jr c, jr_023_5E9C

    nop

jr_023_5E9C:
    and d
    nop
    db $FD
    nop
    ld bc, $9963
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    db $F4
    ld bc, $00F0
    add sp, $00
    cp $00
    jr nc, jr_023_5E35

    cp b
    add b
    ccf
    add b
    ccf
    add b
    rra
    add b
    cpl
    nop
    rra
    nop
    cp a
    nop
    nop
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld hl, sp+$03
    ld hl, sp+$01

jr_023_5ECA:
    ldh a, [rP1]
    ld a, [$FD00]
    nop
    xor d
    ld [hl], c
    dec [hl]
    jp $07CA


    dec d
    ld c, $2E
    inc e
    ld e, c
    inc a
    ld d, [hl]
    add hl, sp
    ld l, e
    ld de, $FF40
    add b
    rst $38
    ld b, b
    cp a
    or b
    ld a, a
    ld b, [hl]
    ld sp, hl
    db $DB
    rst $20
    or [hl]
    rst $08
    and [hl]
    rst $08
    ld d, l
    adc [hl]
    xor l
    ld e, $5A
    inc a
    ld a, d
    inc a
    ld d, l
    jr c, @+$3B

    nop
    nop
    nop
    nop
    nop
    ld a, $00
    ld h, b
    nop
    add e
    nop
    sbc a
    nop
    rst $38
    add b
    ld a, a
    ret nz

    and a
    ld a, a
    rst $28
    db $10
    cp a
    ld b, b
    sbc c
    ld h, [hl]
    xor l
    ld [hl], e
    sub $39
    ld e, e
    inc a
    ld l, h
    rra
    scf
    rrca
    ld sp, hl
    rlca
    cp $00
    db $ED
    ld [de], a
    ld e, l
    or d
    xor l
    ld a, [c]
    ld l, e
    or $BE
    ld h, h
    halt
    db $EC
    rst $30
    db $EC
    reti


    db $FC
    db $F4
    cp $F8
    cp $F8
    cp $F0
    cp $E1
    db $FC
    sub c
    db $FC
    pop hl
    db $FC
    ldh a, [$FE]
    add sp, -$02
    db $FC
    cp $FC
    cp $F4
    cp $F8
    cp $F9
    db $FC
    ld sp, hl
    db $FC
    sbc c
    db $FC
    ld c, c
    db $FC
    pop hl
    db $FC
    pop hl
    db $FC
    ldh a, [$FE]
    ld hl, sp-$02
    ld a, b
    cp $F9
    db $FC
    ld sp, hl
    db $FC
    sub c
    db $FC
    pop hl
    db $FC
    ldh a, [$FE]
    ld hl, sp-$02
    ld hl, sp-$02
    db $F4
    cp $D9
    db $FC
    sbc e
    ld h, b
    or c
    ld b, b
    and c
    ld b, b
    and e
    ld b, b
    add $01
    call z, Call_023_4B03
    inc b
    ld e, l
    nop
    rra
    ldh [$6D], a
    sub b
    ld a, [$8800]
    nop
    ret nz

    nop
    ld b, b
    add b
    add b
    nop
    add b
    nop
    sbc $21
    ld [hl], e
    nop
    dec h
    nop
    rlca
    nop
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0001
    ret nz

    nop
    ld h, b
    add b
    ld b, b
    add b
    ret nz

    nop
    add b
    nop
    sub b
    nop
    db $EB
    db $10
    ld e, h
    and e
    ld bc, $0100
    nop
    ld [bc], a
    ld bc, $0001
    ld [bc], a
    ld bc, $0182
    ld d, [hl]
    add c
    ld hl, sp+$07
    nop
    nop
    nop

Jump_023_5FC3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jp Jump_023_5CC3


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

jr_023_61E9:
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
    cp $FE
    db $FD
    db $FC
    cp $FE
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    pop bc
    jp nc, $E9CC

    and $03
    inc bc
    dec b
    ld sp, hl
    xor b
    ld d, b
    ld e, b
    jr nz, jr_023_61E9

    add b
    add b
    add b
    nop
    nop
    nop
    nop
    jp nz, $89C2

    sub b
    dec h
    jr jr_023_628B

    jr c, @+$4E

    jr nc, jr_023_6283

    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    sbc d
    nop
    ld a, [hl+]
    db $10
    ld c, b
    jr nc, jr_023_62D1

    nop
    jr nc, jr_023_625C

jr_023_625C:
    nop
    nop
    nop
    nop
    xor $E0
    db $F4
    ldh a, [$80]

jr_023_6265:
    add b
    jr nc, @+$42

    ld d, b
    jr nz, jr_023_62CB

    nop
    add b
    add b
    ret nz

    ret nz

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

jr_023_6283:
    ld sp, hl
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop

jr_023_628B:
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
    ret nz

    ret nz

    cp b
    add b
    ld b, h
    jr c, jr_023_62F3

    jr nc, jr_023_6265

    add b
    ret nz

    ret nz

    ldh [$E0], a
    add [hl]
    add b
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
    ld [hl-], a
    inc c
    ld b, [hl]
    jr c, @-$62

    add b
    ldh [$E0], a
    ret nz

    ret nz

    xor h

jr_023_62CB:
    sub b
    ld d, b
    jr nz, jr_023_631B

    nop
    ld h, b

jr_023_62D1:
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
    and [hl]
    sbc b
    ld c, [hl]
    jr nc, jr_023_62F5

    ld h, b
    ld l, [hl]
    nop
    sub e
    adc h
    and a
    sbc b
    ld c, [hl]
    jr nc, jr_023_632B

    ld b, b
    or b
    rst $38
    ld c, h

jr_023_62F3:
    ld a, a
    ld h, b

jr_023_62F5:
    ld a, a
    ld [hl], b
    ld a, a
    ccf
    ccf
    dec de
    dec de
    nop
    nop
    nop
    nop
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


jr_023_631B:
    add c
    nop
    nop
    nop
    nop
    ld [hl], c
    nop
    add h
    add e
    add sp, -$19
    pop de
    adc $BF
    add b
    add b

jr_023_632B:
    add b
    ret nz

    ret nz

    add b
    add b
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
    nop
    ldh a, [$E0]
    ld hl, sp-$10
    ld sp, hl
    ldh [$FB], a
    ld b, b
    di
    nop
    pop hl
    nop
    ld b, b
    nop
    nop
    nop
    inc bc
    ld bc, $E2C7
    rst $30
    ld [hl], c
    ei
    cp b
    db $FD
    ld e, h
    db $FC
    inc b
    ld a, h
    nop
    inc e
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

    jr c, jr_023_63AE

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
    jr nc, jr_023_63B6

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

jr_023_63AE:
    ld l, b
    ld hl, sp-$39
    rst $00
    ldh a, [$F0]
    ld e, a
    rst $38

jr_023_63B6:
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
    ld a, [hl]
    nop
    inc c
    nop
    add c
    add c
    jp nz, $4CC3

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

Jump_023_641B:
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
    jr z, jr_023_647F

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_023_647F:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_023_64AE

    ld sp, $2218
    add hl, de
    db $10
    dec hl
    ld c, e
    jr nc, jr_023_64F4

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

jr_023_64AE:
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
    jr nz, jr_023_6504

    jr nz, @+$3E

    inc d
    inc e
    ld l, b
    ld l, b
    add b
    add b
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

jr_023_64F4:
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
    nop
    nop
    db $FC
    db $FC

jr_023_6504:
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
    jp Jump_023_5FC3


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

Jump_023_653C:
    sub [hl]
    ld e, $68
    ld l, b
    db $FC
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
    jr nc, jr_023_65A5

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
    jr jr_023_6596

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
    jr nc, jr_023_65C6

jr_023_6596:
    ld e, h
    ld a, h
    ld b, e
    ld a, a
    jr nz, jr_023_65DB

    jr nc, jr_023_65DD

    ld e, $1F
    inc a
    ccf
    ldh [rIE], a
    ld a, [hl]

jr_023_65A5:
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

    jr c, jr_023_65EE

    ld a, [hl]
    ld a, [hl]
    jp $81FF


    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $01
    add hl, bc
    rlca
    inc de
    rrca

jr_023_65C6:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_023_65DB:
    rst $38
    rst $38

jr_023_65DD:
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

jr_023_65EE:
    ld b, e
    ccf
    nop
    rst $38
    ld [$0CFF], sp
    rst $38
    ld b, $FF
    ld b, $FF
    rla
    rst $30
    rst $08
    rst $08
    rra
    rra
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

    call c, $6060
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
    ld h, e
    rst $38
    db $10
    rst $38
    jr @+$01

jr_023_66C6:
    inc c
    rst $38
    ld b, $FF
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38

jr_023_66D0:
    add b
    add b
    ret nz

    ret nz

    jr nc, jr_023_66C6

    jr jr_023_66D0

    inc b
    db $FC
    ld b, $FE
    ld [bc], a
    cp $83
    rst $38
    ld c, l
    ccf
    ld e, a
    ccf
    ld l, a
    rra
    scf
    rrca
    inc c
    inc bc
    ld sp, $670F
    rra
    ld c, a
    ccf
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
    dec sp
    nop
    ld c, e
    nop
    rla
    nop
    rlca
    nop
    dec b
    nop
    ld [bc], a
    nop
    nop
    jr nc, jr_023_6720

jr_023_6720:
    ld e, b
    inc bc
    ld c, c
    ld [bc], a
    ld c, c
    ld [bc], a
    ld h, d
    dec b
    ld h, d
    dec b
    ld [c], a
    dec c
    and $09
    and $09
    ld h, [hl]
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
    jr z, jr_023_67B1

    inc h
    ld [hl], e
    ld a, [hl+]
    ld [hl], c
    ld e, d
    ld sp, $6464
    ld d, $5E
    ld c, e
    ld a, a
    ld [hl], d
    ld a, [hl]
    inc [hl]
    inc a
    dec sp
    dec sp
    add hl, sp
    ccf
    ld b, [hl]
    ld c, a
    nop
    rst $08
    nop
    xor a
    nop
    ld c, a
    nop
    rlca
    nop
    dec bc
    ldh [$03], a
    ldh a, [rSB]
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_023_67B1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    add sp, -$3B
    ldh a, [$89]
    ld a, [c]
    ret nz

    add b
    or b
    ret nz

    cp b
    ldh [$EC], a
    ret nc

    or $E9
    rlca
    rst $38
    rst $20
    rra
    ld h, a
    sbc a
    ld de, $0A07
    rlca
    cp a
    rlca
    rst $20
    rra
    rlca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld b, c
    cp [hl]
    ld a, a
    add b
    ccf
    add b
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    db $FD
    rst $38
    add l
    cp $34
    adc $DC
    ld h, $64
    sub $84
    cp $D4
    cp $FC
    cp $01
    rst $38
    ld b, e
    add c
    ld bc, $3D81
    add c
    ld b, e
    cp l
    ld h, a
    sbc c
    ld bc, $FFFF
    rst $38
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    db $D3
    add sp, -$45
    call z, $EFD8
    rst $00
    rst $38
    cp [hl]
    pop bc
    adc h
    di
    ret nz

    rst $38
    cp $FF
    inc de
    rrca
    db $FD
    rlca
    dec c
    rst $30
    rst $30
    rst $38
    rst $38
    inc bc
    adc c
    rst $30
    add c
    rst $38
    rst $38
    rst $38
    ld hl, sp-$40
    ei
    adc h
    ret z

    rst $28
    rst $38
    rst $28
    jp nz, $BFE1

    ret nz

    ret nz

    rst $38
    cp $FE
    rra
    inc bc
    db $FD
    rlca
    dec b
    rst $30
    rst $38
    rst $30
    adc a
    inc bc
    cp a
    jp $FF81


    rst $38
    rst $38
    rst $00
    rst $38
    push af
    rst $38
    call nz, $AAFB
    call c, $F794
    rst $18
    rst $30
    xor $E8
    rst $38
    rst $38
    inc e
    nop
    db $FD
    ld b, $04
    rst $30
    rst $38
    rst $30
    sbc l
    nop
    cp a
    ret nz

    add b
    cp $FE
    cp $08
    nop
    sub h
    ld [$C43B], sp
    ldh a, [$8F]
    add c
    nop
    or e
    ret nz

    add b
    rst $38
    cp $78
    nop
    inc b
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
    rst $38
    nop
    ld [$0000], sp
    nop
    ret nz

    nop
    nop
    nop
    db $FC
    nop
    stop
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
    rlca
    dec b
    rrca
    nop
    ccf
    dec hl
    ld a, a
    nop
    nop
    rra
    rra
    ccf
    ccf
    ld h, b
    ld e, [hl]
    ld h, b
    ld e, [hl]
    ld h, b
    ld e, l
    ld h, b
    ld b, e
    ld h, b
    ld e, l
    rst $38
    rst $38
    jr z, @+$01

    adc l
    ld [hl], d
    rst $38
    nop
    cp a
    ld b, b
    or a
    ld c, b
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $4CFF
    or e
    cp a
    ld b, b
    rst $38
    nop
    ld c, c
    or [hl]
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    db $FC
    cp $FC
    cp $FD
    cp $FC
    cp $DD
    cp $9E
    rst $38
    sbc a
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    add h
    rst $38
    ld [hl-], a
    call $FF70
    ld d, a
    rst $38
    cp l
    rst $18
    rst $38
    sbc l
    rst $38
    db $DD
    rst $38
    rst $38
    ld hl, $4CFF
    or e
    cp e
    ld b, h
    rrca
    rst $38
    ld sp, hl
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    xor d
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $070F
    rst $38
    rst $38
    xor d
    nop
    rst $38
    rst $38
    inc bc
    ld bc, $1F3F
    ldh a, [$7F]
    jp $1FFF


    rst $38
    rst $38
    rst $38
    xor d
    nop
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    rrca
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
    rst $38
    nop
    nop
    nop
    ld a, a
    add b
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    add b
    nop
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
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, $C1
    ld b, b
    rst $38
    ld b, [hl]
    ld sp, hl
    ld b, [hl]
    rst $38
    ld b, b
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    nop
    nop
    rrca
    nop
    ld bc, $FF00
    nop
    stop
    rst $38
    nop
    nop
    nop
    cp $00
    jr nz, jr_023_69F5

jr_023_69F5:
    ld hl, sp+$00
    nop
    nop
    sub b
    nop
    nop
    nop
    add b
    nop
    nop
    dec b
    ld a, a
    cpl
    ld a, a
    rla
    rst $38
    dec a
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld h, b
    ld e, [hl]
    ld h, b
    ld e, [hl]
    ld h, b
    ld b, b
    ld c, $00
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    cpl
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    ld a, a
    add b
    rst $38
    rst $38
    ldh [rIE], a
    ret nc

    ldh [$A7], a
    ret nz

    xor a
    ret nz

    cp a
    ret nz

    rst $18
    ldh [$EF], a
    ldh a, [$9F]
    ldh [$BF], a
    ret nz

    ret nz

    add b
    add b
    rst $38
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    rst $38
    rst $10
    rst $38
    rst $38
    db $DD
    rst $18
    adc l
    adc a
    ld [hl], h
    halt
    db $FC
    ld h, $FC
    xor a
    call c, $FFFC
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $00
    ld a, e
    ld h, a
    ld b, e
    ld e, e
    ld h, a
    rst $20
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    db $FC
    rst $38
    add hl, sp
    rra
    scf
    rra
    ld a, $1F
    rst $38
    rst $38
    ld a, l
    cpl
    ld a, b
    cpl
    ld a, e
    dec l
    ld [hl], h
    rst $38
    rst $38
    rst $38
    ld b, e
    db $FD
    ld b, b
    rst $38
    cp a
    rst $38
    xor c
    db $10
    rst $28
    db $10
    db $10
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    ld d, b
    nop
    xor b
    nop
    inc [hl]
    rst $38
    xor c
    db $10
    rst $28
    db $10
    db $10
    rst $38
    ld [hl], a
    db $FD
    rst $38
    db $FD
    ld b, a
    db $FD
    ld b, a
    db $FD
    cp a
    db $FD
    xor a
    dec d
    rst $28
    dec d
    rla
    db $FD
    ld a, a
    add b
    ld b, b
    cp a
    ld e, a
    cp a
    ld d, a
    cp a
    ld d, b
    cp a
    ld d, a
    cp b
    ld e, a
    cp a
    ld d, a
    cp a
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    add b
    ld b, b
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld b, b
    cp a
    ld l, a
    or b
    ld e, a
    cp a
    ld e, a
    cp a
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $30
    rst $30
    rst $20
    rst $30
    rst $20
    rra
    adc a
    rra
    adc a
    rra
    adc a
    rra
    adc a
    rra
    adc a
    rra

jr_023_6AFB:
    adc a
    rra
    adc a
    rra
    adc a
    nop
    rst $38
    ld b, b
    add b
    rra
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ldh [rP1], a
    nop
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
    rra
    ld e, $1F
    add b
    rst $38
    rst $38
    rst $38
    ret nz

    add b
    and b
    sbc a
    jp nz, $C1BC

    cp a
    rst $38
    rst $38
    cp a
    ret nz

    rst $28
    ldh a, [$C7]
    ld hl, sp-$6D
    call c, $BF18
    ccf
    cp a
    jr nc, jr_023_6AFB

    xor a
    ldh a, [$CF]
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    reti


    rst $20
    sbc h
    rst $38
    and d
    rst $38
    or $A3
    cp a
    sbc h
    ret nz

    ret nz

    cp a
    ret nz

    rst $38
    rst $38
    adc d
    rst $38
    adc e
    ei
    ei
    adc e
    ei
    adc e
    adc e
    rst $38
    ldh [$80], a
    db $FD
    inc bc
    rst $38
    rst $38
    dec b
    rst $38
    db $FD
    db $FD
    db $FD
    db $FD
    db $FD
    db $FD
    db $FD
    rst $38
    dec b
    inc bc
    ld a, a
    cpl
    ld a, e
    inc l
    ld a, a
    cpl
    ld a, d
    inc l
    ld a, e
    inc l
    ld a, b
    cpl
    ld a, a
    cpl
    ld a, e
    inc l
    rst $38
    rst $38
    ld h, l
    add d
    cp $FF
    xor d
    db $10
    rst $28
    db $10
    db $10
    rst $38
    rst $38
    rst $38
    cp l
    jp nz, $FFEF

    cp l
    ld b, d
    ld a, a
    rst $38
    xor d
    db $10
    rst $28
    db $10
    db $10
    rst $38
    rst $38
    rst $38
    ld d, h
    nop
    rst $38
    db $FD
    ld h, a
    add l
    rst $38
    db $FD
    xor a
    dec d
    rst $28
    dec d
    rla
    db $FD
    rst $38
    db $FD
    cp a
    push bc
    ld d, b
    cp a
    ld d, a
    cp b
    ld e, a
    cp a
    ld d, a
    cp a
    ld d, b
    cp a
    ld d, a
    cp b
    ld e, a
    cp a
    ld e, a
    cp a
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $20
    rst $38
    ld b, b
    cp a
    ld l, a
    or b
    ld e, a
    cp a
    ld e, a
    cp a
    ld b, b
    cp a
    ld l, a
    or b
    ld b, b
    cp a
    ld a, [hl]
    and c
    rst $30
    rst $20
    rst $30
    rst $20
    rst $30
    rst $20
    rst $30
    rst $20
    rst $30
    rst $20
    rst $38
    rst $30
    nop
    rst $38
    rst $38
    nop
    rra
    adc a
    rra
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    rst $38
    rst $30
    rst $30
    rst $20
    rst $30
    rst $20
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ld e, $1F
    dec e
    rra
    inc bc
    rra
    dec e
    rra
    ld e, $1F
    ld c, $1F
    nop
    nop
    nop
    nop
    add b
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    sbc a
    rst $38
    rst $38

jr_023_6C2B:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    ldh [$50], a
    ldh [rVBK], a
    ldh a, [$60]
    rst $38
    ccf
    rst $38
    jr c, jr_023_6C2B

    ld e, b
    rst $18
    jr nc, @+$01

    rst $38
    rst $38
    add b
    ret nz

    sbc a
    rst $38
    and a
    ld hl, sp-$59
    ld hl, sp-$61
    rst $38
    rst $18
    ldh [$7F], a
    rst $38
    rst $38
    nop
    db $E4
    dec de
    db $E4
    dec de
    db $E4
    dec de
    db $E4
    dec de
    db $E4
    dec de
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    sub e
    ld l, h
    sub e
    ld l, h
    sub e
    ld l, h
    sub e
    ld l, h
    sub e
    ld l, h
    rst $38
    nop
    nop
    nop
    ld a, b
    cpl
    ld a, a
    cpl
    ld a, b
    cpl
    ld a, a
    cpl
    db $F4
    ccf
    db $F4
    rst $38
    ccf
    rra
    rst $38
    rra
    add d
    rst $38
    rst $38
    rst $38
    inc h
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    ld d, b
    rst $38
    rst $38
    jr nz, @+$01

    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    db $FD
    rst $38
    db $FD
    daa
    db $FD
    rst $38
    db $FD
    add a
    db $FD
    add a
    db $FD
    rst $38
    db $FD
    rst $38
    rst $38
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld d, a
    cp a
    ld d, b
    cp a
    ld d, a
    cp b
    ld e, a
    cp a
    sbc a
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, d
    cp l
    ld l, d
    or l
    ld l, d
    cp l
    ld h, d
    cp l
    ld a, h
    cp a
    ld l, a
    or b
    ld e, a
    cp a
    sbc a
    rst $38
    ldh a, [$C0]
    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ldh a, [$80]
    rst $38
    add b
    cp a
    ret nz

    rst $08
    ldh a, [rSB]
    rst $38
    dec bc
    push af
    ld c, e
    push af
    ld l, e
    push af
    ld l, c
    rst $30
    ld [hl], e
    push hl
    ld [hl], c
    rst $20
    di
    rst $20
    ccf
    add b
    ccf
    add b
    ccf
    add b
    rra
    add b
    ld b, b
    add b
    add b
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $DD
    db $E3
    or [hl]
    pop bc
    inc hl
    ret nz

    inc hl
    ret nz

    and d
    pop bc
    db $DD
    db $E3
    db $E3
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
    ldh [rNR10], a
    nop
    nop
    rst $38
    rst $38
    rst $38
    add b
    ret nz

    cp a
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    cp a

Jump_023_6D3C:
    rst $18
    cp a
    rst $18
    cp a
    rst $28
    rst $38
    jp $81FF


    rst $28
    adc d
    push hl
    and h
    jp $C384


    add $A1
    or h
    jp $FFFF


    jr z, @+$01

    adc l
    ld a, [c]
    ret nc

    nop
    cp c
    ld b, b
    or a
    add sp, $13
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, $4CFF
    or e
    cp e
    ld b, h
    ld h, [hl]
    dec bc
    ld b, c
    cp a
    dec hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    rst $38
    xor d
    xor d
    rst $38
    xor d
    xor d
    push de
    rst $38
    add b
    sbc $A1
    call c, $FFA3
    rst $38
    xor d
    rst $38
    xor d
    xor d
    rst $38
    xor d
    xor d
    ld d, l
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    rst $38
    xor d
    rst $38
    xor d
    xor d
    rst $38
    xor d
    xor d
    ld d, l
    db $D3
    nop
    or d
    ld bc, $034C
    ld a, [hl]
    ld bc, $017E
    ld a, [hl]
    ld bc, $017E
    ld a, [hl]
    ld bc, $017E
    ld a, [hl]
    ld bc, $017E
    ld bc, $7E00
    ld bc, $017E
    ld a, [hl]
    ld bc, $017E
    ld a, [hl]
    ld bc, $017E
    ld a, [hl]
    ld bc, $80FF
    rst $38
    rst $38
    db $E4
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    daa
    add b
    inc bc
    and h
    inc bc
    and h
    inc bc
    and h
    daa
    sbc b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ret nz

    rst $38
    and b
    ret nz

    ret nz

    add b
    ret nz

    add b
    ldh [$9F], a
    sbc a
    ldh [$BF], a
    ret nz

    cp a
    ret nz

    nop
    rst $38
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
    rst $38
    nop
    ld a, b
    nop
    jr c, jr_023_6E44

    rrca
    ld [hl], b
    jr z, jr_023_6E78

    jr z, jr_023_6E7A

    ld e, b
    jr nz, jr_023_6E3D

    nop
    nop
    nop
    db $E3
    rst $38
    db $EB
    rst $30
    db $EB
    or a
    and d
    ld [hl], a
    ld h, e
    or $EB
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    nop
    db $10
    rrca
    jr nz, jr_023_6E47

    jr nz, @+$21

    jr nc, jr_023_6E4B

    inc l
    rra
    inc sp
    rrca
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    cp a
    rst $18

jr_023_6E3D:
    cp a
    rst $18
    cp a
    and h
    jp $C394


jr_023_6E44:
    sbc [hl]
    pop bc
    and h

jr_023_6E47:
    jp $ABC0


    sbc d

jr_023_6E4B:
    db $E3
    add b
    rst $20
    or e
    call $FFFF
    rst $38
    rst $38
    ld a, [c]
    cp a
    cpl
    ret nc

    add $79
    add sp, -$41
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or e
    db $FD
    ld b, l
    cp d
    sbc d
    ld l, a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$79
    call c, $DEA3
    and c
    rst $38
    add b

jr_023_6E78:
    rst $18
    and b

jr_023_6E7A:
    rst $18
    and b
    rst $38
    add b
    rst $18
    and b
    ld a, $C0
    ld a, l
    add b
    ei
    nop
    db $F4
    nop
    db $EC
    nop
    db $D3
    nop
    or d
    ld bc, $034C
    ret z

    rlca
    jr nc, @+$10

    jr nz, @+$1F

    pop bc
    ld a, [hl-]
    add e
    ld [hl], h
    ld b, $E8
    inc c
    pop de
    jr @-$5C

    ld a, [hl]
    ld bc, $007F
    ld a, a
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
    rst $38
    nop
    rst $38
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    ld bc, $0000
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    ld bc, $0000
    rst $38
    cp a
    ret nz

    sbc a
    ret nz

    sbc a
    ret nz

    rst $18
    add b
    rst $18
    add b
    ret nz

    add b
    ldh [$80], a
    cp a
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    jr z, @+$01

    adc l
    ld [hl], d
    ld d, b
    nop
    add hl, de
    ld b, b
    or a
    ld c, b
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $4CFF
    or e
    or d
    ld b, b
    ld l, l
    nop
    ld c, c
    or [hl]
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    jr jr_023_6F29

    rra
    nop
    rla
    ld [$0C16], sp
    ld a, [de]

jr_023_6F29:
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
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
    add $FB
    jp c, $ACB5

    db $DB
    rst $10
    pop hl
    cp [hl]
    rst $38
    db $DD
    rst $20
    cp [hl]
    rst $38
    xor c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call $3AFF
    rst $20
    ld d, [hl]
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
    or e
    rst $38
    ld e, h
    rst $20
    ld l, d
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $A0
    db $FD
    add b
    db $DB
    and b
    call nc, $ECA0
    add b
    db $D3
    and b
    jp nc, $FCA1

    add e
    rst $38
    nop
    ld [hl], h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_023_6FD6

    ld h, b
    adc b
    pop bc
    db $10
    add e
    jr nz, jr_023_6FA0

    ld b, b
    ld c, $81
    inc e
    inc bc
    jr c, jr_023_6FA7

jr_023_6FA0:
    rst $38
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b

jr_023_6FA7:
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rra
    rrca
    rra
    rrca
    rra
    adc a
    rra
    adc a
    rra
    adc a
    rra
    adc a
    rst $38
    nop
    ret nz

    nop
    rst $38
    nop
    ret nz

jr_023_6FC7:
    nop
    ret nz

jr_023_6FC9:
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    rst $38

jr_023_6FD1:
    nop
    inc e
    nop
    cp $00

jr_023_6FD6:
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    add b
    rst $38
    add b
    rst $38
    ret c

    rst $28
    jp c, $CAED

    db $FD
    jp c, $CCED

jr_023_6FED:
    ld sp, hl
    db $EC
    ld sp, hl
    jr nz, jr_023_6FD1

    nop
    rst $38
    jr nz, @-$1F

    jr nc, jr_023_6FC7

    jr nc, jr_023_6FC9

    db $10
    rst $28
    nop
    rst $38
    inc e
    rst $38
    adc h
    nop
    inc b
    nop
    inc b
    nop
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
    inc e
    nop
    jr jr_023_7014

jr_023_7014:
    jr nc, jr_023_7016

jr_023_7016:
    ld h, b
    nop
    ld b, b
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    inc d
    ld [hl], b
    add b
    ret nz

    inc d
    ldh [rNR41], a
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    nop
    ld a, [hl-]
    ld b, b
    ld l, c
    ld d, b
    ld l, d
    ld d, b
    ld d, [hl]
    jr nz, jr_023_70A7

    ld h, b
    add hl, sp
    nop
    ld d, h
    jr nz, jr_023_6FED

    inc b
    ld sp, hl
    ld bc, $02F8
    call nc, $0F03
    nop
    dec a

jr_023_705B:
    nop
    ccf
    nop
    ld [hl], d
    nop
    nop
    nop
    ld b, $04
    jr jr_023_705B

    rst $38
    nop
    ld [hl], a
    nop
    adc l
    nop
    jr nc, jr_023_706E

jr_023_706E:
    dec b
    nop
    ld e, h
    nop
    ld a, d
    add b
    call nc, Call_023_7220
    add b
    call c, $F000
    nop
    ld b, b
    nop
    sub b
    nop
    inc b
    nop
    nop
    inc b
    inc c
    nop
    db $10
    inc b
    ld [$AC04], sp
    nop
    inc d
    ld [$005C], sp
    nop
    nop
    nop
    nop
    ret nz

    xor b
    ld a, [hl]
    nop
    ldh [rP1], a
    ld [$6000], sp
    nop
    nop
    nop
    ld b, $05
    add e
    xor h
    inc b
    ld e, h
    ld b, a

jr_023_70A7:
    inc bc
    and h
    db $10
    and d
    ld bc, $00D2
    ld [c], a
    db $10
    ld d, b
    stop
    add b
    inc e
    call c, $E63C
    sub b
    inc c
    dec e
    add b
    xor $00
    ldh [rP1], a
    daa
    ret nz

    add $09
    ld hl, sp+$00
    ld h, b
    db $10

jr_023_70C8:
    add hl, sp
    dec b
    ld e, $20
    inc sp
    nop
    jr c, jr_023_7110

    nop
    nop
    nop
    nop
    jr nc, jr_023_70D6

jr_023_70D6:
    call c, $8C44
    ld h, b
    and a
    ld [hl], b
    add b
    ld c, $61
    ld c, [hl]
    ld c, $01

jr_023_70E2:
    rst $20
    ld [$16EB], sp
    rst $28
    db $10
    ld de, $610C
    nop
    and c
    nop
    cp b
    nop
    nop
    nop
    add d
    nop
    and c
    ld h, e
    ld hl, $90C2
    db $E3
    db $10
    ld hl, $0010
    stop
    add b
    nop
    add b
    nop
    ld b, b
    ret nz

    jr nz, jr_023_70C8

    jr @+$22

    ld a, b
    ld h, b
    jr nz, jr_023_716E

    add b
    nop

jr_023_7110:
    ld [hl], $28
    ld c, $01
    inc bc
    jr z, jr_023_711E

    inc b
    add hl, bc
    nop
    nop
    nop
    nop
    nop

jr_023_711E:
    nop
    nop
    sub b
    db $10
    db $10
    or b
    ld [$A438], sp
    jr c, jr_023_7159

    ld [$1418], sp
    ret z

    ld [bc], a
    sbc b
    ld [hl], c
    add b
    nop
    nop
    nop
    jr c, jr_023_713A

    inc c
    ld [bc], a
    inc h
    ld [bc], a

jr_023_713A:
    ld [hl+], a
    db $10
    ld [hl-], a
    nop
    stop
    add hl, sp
    jr nz, jr_023_70E2

    add b
    rra
    ld b, b
    dec hl
    ret nz

    ldh a, [rP1]
    cp h
    nop
    db $FC
    nop
    ld c, [hl]
    nop
    ld b, $10
    nop
    rrca
    add hl, bc
    ld b, $8E
    nop
    ld a, [bc]

jr_023_7159:
    ld [bc], a
    add h
    nop
    nop
    inc b
    ld [$1000], sp
    nop
    stop
    db $10
    ld hl, $E390
    ld hl, $A1C2
    ld h, e
    add d
    nop

jr_023_716E:
    nop
    nop
    jr nz, jr_023_71B2

    sbc b
    ld l, b
    sub h
    ld h, d
    add hl, sp
    ld b, b
    nop
    add b
    nop
    nop
    nop
    nop
    inc d
    nop
    sub b
    nop
    add h
    ld l, l
    adc [hl]
    ld l, l
    add d
    ld h, l
    call nz, $2918
    jr jr_023_71DD

    ld hl, $00F1
    jp nc, $390E

    nop
    jp Jump_023_4602


jr_023_7197:
    ld bc, $0714
    ld hl, $A207
    ld d, $12
    add d
    ld d, $08
    ld a, [de]
    inc b
    ld [$0D04], sp
    nop
    ld [hl+], a
    nop
    dec e
    ld [bc], a
    rlca
    nop
    jr c, jr_023_71B0

jr_023_71B0:
    jr nc, jr_023_71B9

jr_023_71B2:
    add hl, bc
    ld b, $57
    ld [$0162], sp
    ld [hl], b

jr_023_71B9:
    ld [$003E], sp
    jr jr_023_71BE

jr_023_71BE:
    inc b
    nop
    rlca
    nop
    dec de
    nop
    ld a, [hl-]
    inc b
    dec h
    ld e, d
    inc b
    nop
    ld [$0F00], sp
    nop
    inc c
    nop
    ld d, $00
    jp z, $9604

    ld h, b
    ld [hl], l
    add b
    push bc
    nop
    add hl, bc
    nop
    nop

jr_023_71DD:
    nop
    nop
    nop
    ld h, b

jr_023_71E1:
    sub b
    inc [hl]
    ret nz

    dec h
    ret nz

    ld b, [hl]
    jr z, jr_023_7197

    nop
    sbc h
    nop
    jr c, jr_023_71EE

jr_023_71EE:
    nop
    nop
    jp nc, $E200

    db $10

jr_023_71F4:
    sbc e
    jr nz, jr_023_725E

    db $10
    ld h, b
    db $10
    jr nc, jr_023_71FC

jr_023_71FC:
    nop
    stop
    nop
    adc [hl]
    ld h, b
    ld h, b
    db $10
    cp b
    nop
    ldh a, [$08]
    ld [hl], b
    ld [$0018], sp
    add b
    nop
    jp RST_00


    nop
    add b
    add b
    add b
    nop
    add b
    ld b, b
    ldh a, [rP1]
    inc c
    inc [hl]
    nop
    inc e
    ld d, $18

Call_023_7220:
    sbc e
    jr nz, jr_023_728A

    db $10
    ld h, b
    db $10
    ld [hl], b
    nop
    ld h, b
    db $10
    jr nc, jr_023_722C

jr_023_722C:
    jr jr_023_722E

jr_023_722E:
    add e
    nop
    ld b, [hl]
    jr z, jr_023_71E1

    nop
    sbc h
    nop
    jr c, jr_023_7238

jr_023_7238:
    ld h, b
    nop
    add b
    nop
    inc b
    nop
    ld e, $00
    db $EB
    nop
    ld l, e
    nop
    cp c
    ld b, b
    ld [hl], b
    add b
    ret nz

    nop
    add d
    nop
    rlca
    nop
    rlca
    nop
    inc b
    ld [hl], d
    ld sp, $6B00
    ld [hl], b
    dec h
    ld l, h
    add e
    inc c
    dec b
    ld [hl], d
    dec bc
    ld [hl], b

jr_023_725E:
    ld sp, hl
    nop
    ld h, h
    inc e
    or e
    xor a
    jr jr_023_71F4

    ld b, b
    add b
    ret


    ld [bc], a
    ld b, [hl]
    nop
    or b
    nop
    and d
    ld bc, $C141
    ld b, b
    or e
    sub d
    ld h, e
    ld [hl], d
    add hl, sp
    db $DB
    jr nz, jr_023_71FC

    ld l, h
    ld de, $124C
    adc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_023_728A:
    nop
    nop
    jr nz, jr_023_72EE

    add b
    ld [$0300], sp
    ld de, $8C8C
    ld c, $16
    ld [$0016], sp
    jp z, $9504

    ld h, b
    ld [hl], l
    add b
    ld b, c
    rst $18
    sbc c
    ld b, [hl]
    daa
    inc a
    adc b
    di
    ld sp, hl
    nop
    ld h, b
    sub b
    inc [hl]
    ret nz

    dec h
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
    ld b, c
    inc bc
    add b
    rst $20
    nop
    ld [$0018], sp
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
    xor $10
    jr c, jr_023_72D0

jr_023_72D0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_023_72D7:
    nop
    ld bc, $8100
    ld b, d
    pop bc
    jr nc, jr_023_72D7

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    and b
    jr @-$70

    ld b, b
    add b

jr_023_72EE:
    ret


jr_023_72EF:
    ld [bc], a
    ld l, d
    ret nc

    dec e
    ldh [$78], a
    add b
    and h
    ld b, b
    ld h, b
    add b
    ret nc

    nop
    add b
    nop
    nop
    nop
    inc c
    di
    inc bc
    db $FC
    nop
    rst $38
    jr jr_023_72EF

    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    ld [hl], a
    ld [hl], b
    adc a
    nop
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
    dec bc
    jr jr_023_732A

    db $10

jr_023_7325:
    add hl, bc
    jr nz, @+$09

    ld b, b
    nop

jr_023_732A:
    inc [hl]
    dec bc
    ld e, b
    rlca
    jr c, jr_023_7337

    inc e
    rlca
    jr nz, jr_023_7394

    sbc a
    rst $38
    nop

jr_023_7337:
    rst $38
    jr nz, @+$21

    ret nc

    rst $08
    jr z, jr_023_7325

    ld d, $F0
    nop
    nop
    ld d, c
    nop
    xor c
    nop
    rst $08
    nop
    jp nc, $2925

    ret nc

    ld b, h
    cp b
    ld b, e
    cp h
    nop
    nop
    ld d, c
    nop
    and c
    nop
    rst $30
    nop
    sub $21
    dec h
    jp nc, $E50A

    ld [bc], a
    dec l
    nop
    rst $38
    ld c, $FE
    pop hl
    ldh [rNR23], a
    inc bc
    add c
    ld a, h
    xor d
    call c, $0004
    rst $30
    ld [$E0DE], sp
    inc a
    nop
    add d
    ld b, b
    ld [hl], b
    add b
    ld c, b
    add b
    ldh [rP1], a
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
    ret nc

    cpl
    nop
    ccf
    db $D3
    call z, $E728
    ld d, $F0
    ld l, b
    rrca
    inc d
    rst $20

jr_023_7394:
    dec bc
    di
    inc b
    ld hl, sp+$01
    cp $F9
    rst $38
    inc b
    ld b, $38
    ldh [$A0], a
    rst $38
    ret nz

    ccf
    inc a
    rst $00
    dec c
    ld [de], a
    nop
    ld hl, sp+$02
    rst $38
    ret nz

    ccf
    db $FC
    inc bc
    add sp, $07

jr_023_73B2:
    ld b, b
    cp a
    add b
    ld a, a
    db $10
    cpl
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    nop
    ld h, b
    ld a, a
    sub a
    adc b
    ld h, b
    add b
    dec e
    rra
    ld b, b
    rst $38
    inc bc
    db $FC
    ccf
    ret nz

    jr c, jr_023_73B2

    inc b

jr_023_73D3:
    ld b, $F9
    rst $38
    nop
    rst $38
    inc b
    ld hl, sp+$0B
    di
    inc d
    rst $20
    ld l, b
    rrca
    add b
    ld a, a
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld hl, sp+$3F
    cp $01
    nop
    rst $08
    add hl, de
    and $FC
    inc bc
    nop
    rrca
    ld a, [hl]
    adc a
    rrca
    ldh a, [rP1]
    db $FC
    dec e
    cp $FE
    ld bc, $3FE0
    jr c, jr_023_73D3

    ld c, $F1
    ld [hl], b
    db $E3
    ldh [$8F], a
    nop
    ld a, a
    nop
    rst $38
    add b
    rst $38
    db $10
    rst $28
    dec c
    ld a, [c]
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    and b
    ld e, a
    db $10
    rst $28
    ld l, b
    add a
    nop
    db $FC
    nop
    rst $38
    nop
    sbc a
    jr nz, @+$51

    nop
    rra
    db $D3
    call z, $E728
    ld d, $F0
    ld d, $F0
    ld [$23C7], sp
    inc [hl]
    sub b
    rst $20
    ld h, b
    inc bc
    inc d
    add hl, de
    nop
    jp nz, $008F

    ld b, $F9
    ld bc, $00FE
    rst $38
    inc h
    dec sp
    pop de
    ld e, $26
    call $C000
    rla

jr_023_744F:
    jr z, jr_023_744F

    or c
    jr nz, jr_023_7497

Call_023_7454:
    ret nz

    sbc a
    add [hl]
    ld a, c
    nop
    ld a, a
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    ccf
    pop bc
    nop
    ld hl, sp+$00
    rst $38
    ld bc, $06FE
    db $FC

jr_023_746A:
    rra
    add b
    ldh [rSB], a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    ldh [$7F], a
    ld [hl], b
    rra
    jr @-$37

    add b

jr_023_747D:
    ld a, a
    ld h, b
    sbc a
    nop
    nop
    ld a, l
    ld [bc], a
    nop
    rst $38
    xor $06
    jr nc, jr_023_746A

    rrca
    ldh a, [$F7]
    add hl, de
    inc sp
    nop
    ld a, [hl]
    ld bc, $0728
    jr c, @+$09

    dec [hl]

jr_023_7497:
    dec bc
    ld d, h
    inc c
    ld [hl-], a
    ld bc, $0708
    ld d, h
    dec bc
    nop
    rra
    ldh [$1F], a
    ld c, b
    or a
    add d
    ld h, e
    dec b
    ld sp, hl
    ld h, d
    db $EC
    ld de, $408E
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    inc b
    ld a, [c]
    nop
    ld hl, sp-$35
    inc sp
    inc d
    rst $20
    ld l, b
    rrca
    add sp, $14
    nop
    inc bc
    ld h, h
    or e
    adc e
    ld a, b
    inc h
    call c, $FF00
    add b
    ld a, a
    ld h, b
    sbc a
    inc e
    nop
    ld b, $00
    ld a, [de]
    nop
    inc c
    nop
    ld b, $00
    ld b, $00
    add [hl]
    nop
    call nz, Call_023_5E00
    and c
    ld c, c
    or b
    ret c

    or b
    ld a, h
    sbc b
    ld e, d
    adc h
    adc c
    ld b, $A5
    ld [bc], a
    ld [de], a
    nop
    sub b
    nop
    add h
    ld b, $88
    inc c
    add b
    jr jr_023_7509

    jr nc, jr_023_751B

    jr nz, jr_023_747D

    add b
    nop
    add b
    ld e, h
    add b
    call z, Call_023_4400
    nop
    ld b, b
    nop
    nop

jr_023_7509:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    push bc
    nop
    call Call_023_4D00
    nop
    dec c
    nop
    inc b

jr_023_751B:
    nop
    nop
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
    ld [hl], b
    nop
    adc h
    inc bc
    rst $18
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    jr c, jr_023_7538

jr_023_7538:
    dec e
    nop
    cpl
    nop
    ld b, a
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    ldh [rP1], a
    ret c

    nop
    sbc h
    nop
    db $E4
    nop
    ld a, [c]
    nop
    ld a, $00
    add hl, sp
    nop
    ld h, e
    nop
    ld c, l
    nop
    ld c, h
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    jr c, jr_023_7564

jr_023_7564:
    sbc d
    nop
    sbc e
    nop
    adc e
    nop
    dec bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    rrca
    nop
    ld de, $0000
    nop
    inc bc
    nop
    nop
    nop
    add b
    nop
    ld [hl], b
    nop
    jr c, jr_023_7588

jr_023_7588:
    call c, $EC00
    nop
    db $EB
    nop
    rst $30
    nop
    rlca
    nop
    rlca
    nop
    inc c
    nop
    stop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    db $DB
    nop
    sbc l
    nop
    ld l, l
    nop
    db $EC
    nop
    call nz, $0800
    nop
    nop
    nop
    nop
    nop
    ld h, c
    nop
    sbc c
    ld h, b
    ld b, a
    add hl, sp
    ld l, $1D
    add hl, de
    ld b, $7D
    ld [bc], a
    or e
    ld a, h
    dec e
    ld a, [$857A]
    sbc e
    dec c
    dec sp
    dec e
    ld e, a
    ld sp, $2152
    sub d
    ld h, c
    and d
    ld b, c
    ld b, c
    nop
    nop
    nop
    ld b, c
    jr nc, jr_023_7607

    ld [$0419], sp
    inc c
    ld b, d
    ld b, [hl]
    jr nz, @+$64

    nop
    ld [hl+], a
    nop
    jr nz, jr_023_75FA

    ld a, b
    inc b
    nop
    nop
    jr z, jr_023_75FE

    inc c
    inc bc
    ld b, $01
    inc bc
    nop
    add c
    nop
    add b
    nop
    nop
    nop
    jr c, jr_023_75FA

    inc c
    ld [bc], a
    inc h
    ld [bc], a

jr_023_75FA:
    ld [hl+], a
    db $10
    ld [hl-], a
    nop

jr_023_75FE:
    stop
    nop
    nop
    ld a, a
    nop
    adc a
    ld [hl], b
    ld h, a

jr_023_7607:
    ld e, $1E
    inc bc
    ld a, [c]
    ld bc, $00EF
    ld [hl-], a
    dec c
    xor [hl]
    nop
    rra
    nop
    or c
    ld c, $5E
    xor h
    push hl
    jr @+$80

    add c
    swap b
    and l
    ld e, b
    add b
    nop
    ld a, e
    nop
    call c, $8A33
    ld [hl], l
    dec h
    ld e, d
    ld h, h
    dec sp
    ld [hl], l
    dec sp
    sub a
    ld [hl], e
    rlca
    nop
    ldh [rP1], a
    or [hl]
    ret nz

    db $EB
    db $10
    ld a, e
    ldh [$B9], a
    ld [hl], b
    ld b, h
    cp b
    add $9C
    db $E3
    nop
    inc hl
    nop
    rrca
    nop
    ld a, [hl-]
    dec b
    ld c, h
    inc sp
    cp b
    ld h, a
    pop af
    ld c, [hl]
    or [hl]
    ld c, h
    ld c, $00
    ld [c], a
    nop
    cp h
    ld b, b
    ld h, [hl]
    sbc b
    ld e, a

jr_023_7659:
    xor [hl]
    adc l
    halt
    adc c
    halt
    ld e, l
    ld [hl-], a
    inc e
    nop
    nop
    nop
    dec sp
    nop
    ld c, l
    dec sp
    halt
    add hl, bc
    adc a
    ld [hl], b
    ld d, [hl]
    jp hl


    cp d
    call HeaderLogo
    ld a, b
    ld bc, $799C
    push af
    cp b
    ld h, h
    sbc b
    db $FC
    nop
    jp nz, Jump_023_6D3C

    sub d
    add e
    nop
    add l
    inc bc
    dec bc
    rlca
    add a
    ld bc, $00C7
    sbc [hl]
    rlca
    and e
    rra
    inc de
    ld c, $86
    nop
    res 0, h
    ld [hl], $C8
    ld b, $F8
    jp z, $B334

    ld c, [hl]
    ld l, l
    add [hl]
    push hl
    ld [bc], a
    ld d, $0F
    cpl
    jr jr_023_7703

    daa
    ccf
    rrca
    and a
    inc e
    and a
    jr jr_023_7659

    ld de, $019A
    ld a, $C0
    xor e
    ld d, h

jr_023_76B4:
    ld d, l
    xor d
    and l
    ld e, d
    add hl, bc
    or $C9
    or $F5
    xor $7F
    adc $3F
    nop
    ld e, c
    ld c, $DD
    ld [bc], a
    scf
    jr jr_023_7732

    ld [hl], $5E
    inc h
    xor a
    inc b
    adc d
    dec b
    ldh [rP1], a
    jr nc, jr_023_76B4

    sub $20
    xor $00
    ld h, c
    ret nz

    and [hl]
    ld b, b
    ret


    ld b, $76
    adc h
    nop
    nop
    rrca
    nop
    dec d
    ld c, $38
    rlca
    ld l, a
    nop
    jp c, $A50D

    ld a, [de]
    or a
    ld a, [de]
    add b
    nop
    ld hl, sp-$80
    db $F4
    jr @-$62

    ld h, b
    sub $2C
    ei
    ld b, $6D
    sub d
    ld e, l
    xor d
    ld a, h
    dec sp
    sbc h

jr_023_7703:
    ld [hl], a
    sbc [hl]
    ld a, a
    add a
    ld a, [hl]
    add d

jr_023_7709:
    ld a, h
    adc h
    ld [hl], b
    or e
    ld b, b
    ld b, [hl]
    ld bc, $7C8E
    call $B93E
    ld e, $51
    ld c, $E9

jr_023_7719:
    ld b, $C5
    ld [hl+], a
    ld c, d
    jr nz, jr_023_776B

    jr nz, @-$7B

    ld h, c
    and e
    ld b, c
    ld d, d
    ld hl, $0122
    sub d
    ld bc, $0132
    dec [hl]
    ld [bc], a
    adc d
    nop
    res 0, [hl]

jr_023_7732:
    ld b, l
    add d
    ld h, l
    add d
    cp d
    inc b
    or h
    nop
    and c
    nop
    ld b, c
    nop
    ld bc, $5D02
    jr z, @+$3F

    ld [$0855], sp
    ld l, c
    inc b
    ld a, [hl+]
    inc b

jr_023_774A:
    dec d
    ld [bc], a
    ld a, [bc]
    nop
    nop
    nop
    ld a, d
    inc [hl]
    cp h
    jr c, jr_023_7709

    jr jr_023_7719

    inc e
    jp nc, Jump_023_550C

    ld [$10AB], sp
    ld [de], a
    nop
    ld a, e
    sbc l
    rst $08
    add hl, sp
    adc l
    ld [hl], e
    ld [hl], l
    ld [bc], a
    ld [bc], a
    nop
    add hl, de

jr_023_776B:
    nop
    inc a
    nop
    cp b
    nop
    halt
    sbc b
    db $FC
    sbc b
    call $8538
    ld a, b
    adc c
    ld [hl], b
    ld [hl-], a
    pop bc
    jp nz, $0A01

    ld bc, $001F
    dec a
    ld e, $4F
    jr c, jr_023_77C2

    inc b
    ld a, [de]
    dec c
    ld a, $1D
    dec h
    jr jr_023_77A7

    nop
    ld [hl-], a
    ldh [$E8], a
    ld [hl], b
    ld l, e
    jr nc, jr_023_774A

    nop
    ld b, c
    add b
    ret c

    add b
    ld e, b
    add b
    adc b
    nop
    inc h
    inc bc

jr_023_77A2:
    inc [hl]
    inc bc
    dec [hl]
    ld [bc], a
    dec [hl]

jr_023_77A7:
    ld [bc], a
    ld [hl-], a
    ld bc, $0010
    ld [$8000], sp
    nop
    ld e, a
    adc [hl]
    xor l
    ld b, $69
    ld b, $6B
    inc b
    ld d, [hl]
    ld [$004D], sp
    ld [de], a
    ld bc, $011A
    dec [hl]
    nop

jr_023_77C2:
    jr nc, jr_023_77C4

jr_023_77C4:
    ld hl, $0200
    ld bc, $0335
    ld [hl], l
    ld [bc], a
    ld [hl+], a
    nop
    nop
    nop
    sub h
    add sp, -$14
    db $10
    sub d
    ld l, h
    xor e
    sub $DD
    ld [hl-], a
    ld a, [hl-]
    db $10
    jr z, jr_023_77EE

    sub b
    nop
    or [hl]
    dec de
    xor a
    ld [de], a
    xor l
    inc de
    xor h
    inc de
    call nc, Call_023_460B
    ld bc, $0122

jr_023_77EE:
    ld bc, $ED00
    ld a, [hl-]
    push hl
    ld a, [de]
    cp [hl]
    ld [$0894], sp
    sub h
    ld [$10A9], sp
    sub e

jr_023_77FD:
    nop
    ld b, h
    add b
    ld bc, $C406
    inc bc
    ld [hl-], a
    pop bc
    dec c
    ldh a, [$C2]
    inc a
    ld sp, $4D0E
    ld [bc], a

jr_023_780E:
    ld h, [hl]
    ld bc, $2075
    inc hl
    nop
    db $DB
    ret c

    db $EB
    add sp, $33
    jr nc, jr_023_77A2

    nop
    ld a, a
    nop
    ld a, a
    nop
    xor [hl]
    jr nz, jr_023_77FD

    nop
    push af
    inc b
    db $ED
    inc c
    ei
    ld [$00F7], sp
    rst $38
    nop
    rst $38
    nop

jr_023_7830:
    db $ED
    inc c
    or l
    inc b
    ld e, e
    ld b, b
    ld l, a
    ld h, b

jr_023_7838:
    ld l, a
    ld h, b
    rst $18
    ld b, b
    cp a
    nop
    rst $38
    nop
    or a
    jr nc, jr_023_7830

    jr nz, jr_023_78BF

    ld [bc], a
    or [hl]
    add [hl]
    halt
    ld b, [hl]
    dec sp
    ld [hl+], a
    dec a
    jr nz, jr_023_77EE

    nop
    ld [hl], l
    inc b
    ld e, e
    nop
    xor a
    jr nz, jr_023_780E

    jr nc, jr_023_7838

    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    inc b
    inc b
    inc bc
    nop
    ld bc, $0000
    stop
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    dec b
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    inc b
    add hl, bc
    ld b, $04
    inc bc
    add d
    ld bc, $8140
    nop
    pop bc
    add c
    ld h, b
    nop
    jr nz, jr_023_7903

    adc h
    or l
    ld a, [hl]
    ld [hl], d
    db $FD
    rst $38
    nop
    dec bc
    db $FC
    db $FD
    cp $A1
    cp $1F
    ldh [$AD], a
    sbc $72
    adc a
    cp $01
    ld de, $6DEE
    rst $18
    xor a
    rst $18
    ld [hl], b
    adc a
    rst $38
    nop
    ld a, [c]
    dec c
    xor [hl]
    db $DD
    scf
    ret z

    cp $01
    ld c, l
    di
    push af
    ei
    ld a, $C1
    rst $08

jr_023_78BF:
    jr nc, jr_023_78C1

jr_023_78C1:
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr @+$11

jr_023_78CB:
    inc sp
    rra
    ld h, l
    ld bc, $007E
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$E0], a
    jr jr_023_78CB

    call z, $E6F8
    db $FC
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr @+$11

jr_023_78EB:
    inc sp
    rra
    ld h, a
    rra
    ld l, b

jr_023_78F0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$E0], a
    jr jr_023_78EB

    call z, $E6F8
    ld hl, sp+$16
    ld l, h
    ld h, b
    sub a

jr_023_7903:
    sub b
    db $EB
    add sp, -$0D
    ldh a, [$7B]
    ld a, b
    dec de
    jr jr_023_78F0

    nop
    rst $38
    nop
    nop
    ld bc, $0102
    ld bc, $3200
    ld bc, $3B52
    ld d, c
    dec sp
    jr nc, jr_023_791F

    rrca

jr_023_791F:
    nop
    or b
    nop
    xor e
    stop
    ld de, $0086
    ld e, h
    add e
    db $D3
    adc a
    ld a, h
    add e
    ei
    inc c
    ld h, e
    nop
    sub b
    ld h, c
    add b
    add b
    ld [hl], a
    nop
    ld a, [hl+]
    pop af
    pop af
    ei
    ld c, $F1
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ld e, a
    nop
    ld a, a
    nop
    rst $38
    nop
    nop
    ld bc, $0102
    ld bc, $3200
    ld bc, $3B52
    ld d, c
    dec sp
    jr nc, jr_023_795F

    rrca

jr_023_795F:
    nop
    nop
    nop
    rlca
    nop
    ld e, $00
    jr c, jr_023_7968

jr_023_7968:
    jr nz, jr_023_796A

jr_023_796A:
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
    inc b
    inc bc
    inc de
    inc c
    ld c, h
    inc sp
    sub [hl]
    ld l, c
    and b
    ld e, [hl]
    ld e, [hl]
    jr nz, jr_023_79BD

    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nc, jr_023_79D1

    pop bc
    set 6, c
    ld a, [hl-]
    pop bc
    ld h, c
    nop
    nop
    adc b
    push de
    ld [$000D], sp
    ld de, $670B
    nop
    add h
    ld [hl], a
    ld e, e
    and $E3
    nop
    nop
    rrca
    ld h, l
    rra

jr_023_79AE:
    sbc a
    ld h, b
    ld hl, sp+$07
    add l
    ld a, a
    cp a
    ld a, a
    ret nc

    ccf
    rst $38
    nop
    ld c, [hl]
    cp a
    xor l

jr_023_79BD:
    ld a, [hl]
    adc $31
    ld a, h

jr_023_79C1:
    ei
    ld a, a
    add e
    inc bc
    ld a, h
    jr nz, @+$59

    add hl, hl
    ld e, d
    nop
    inc sp
    nop
    rra
    nop
    jr nz, jr_023_79D1

jr_023_79D1:
    cp $F0
    adc $FE
    add hl, sp
    inc a
    jp $FF00


    ldh a, [$0E]
    nop
    db $FC
    nop
    nop
    inc c
    di
    inc hl
    db $DD
    ld a, a
    sub [hl]
    inc a
    jp Jump_023_7F00


    dec bc
    add hl, hl
    ld bc, $1012
    dec l
    jr nc, jr_023_79C1

    call nz, $FEBB
    ld l, c
    inc a
    jp $FE00


    ret nc

    sub h
    add b
    ld c, b
    ld [$FFB4], sp
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    add b
    ld a, a
    ld b, b
    ccf
    jr nz, @+$41

    jr nz, jr_023_79AE

    nop
    sbc a
    ld h, b
    ld h, l
    rra
    nop
    rrca
    db $E3
    nop
    ld e, e
    and $84
    ld [hl], a
    ld h, a
    nop
    ld de, $CE0B
    ld sp, $7EAD
    ld c, [hl]
    cp a
    rst $38
    nop
    ret nc

    ccf
    cp a
    ld a, a
    add l
    ld a, a
    ld hl, sp+$07
    ld e, a
    ldh [$AF], a
    ld e, a
    ld [hl], h
    adc a
    cp a
    ld b, b
    ld d, e
    xor $EC
    rst $30
    sbc a
    ldh [$75], a
    adc e
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    add b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_023_7A8C

    jr nz, @-$5F

    nop
    sbc a
    ld h, b
    ld h, l
    rra
    nop
    rrca
    db $E3
    nop
    ld e, e
    and $84
    ld [hl], a
    ld h, a
    nop
    ld de, $8A0B
    call c, $8826
    ret z

    nop
    ld b, $E8
    ld c, c
    call c, $D0A3
    ld b, [hl]
    add b
    add c
    nop
    nop
    nop
    nop
    jr @+$1A

    inc h
    inc a
    ld e, d
    ld a, $78
    ld a, $50
    inc e
    ld h, d
    nop
    inc a
    nop
    ld a, $1E
    ld l, l
    ccf
    ld c, [hl]
    ccf
    ld d, h
    ld a, $41
    jr jr_023_7AB3

jr_023_7A8C:
    ld bc, $071E
    jr c, jr_023_7A91

jr_023_7A91:
    ld c, $0C
    sub e
    ld e, $ED
    ld a, $C7
    ld d, $E9
    inc c
    di
    ldh [rNR34], a
    ld hl, sp+$74
    ld a, c
    ld b, $7B
    inc b
    db $DB
    inc h
    ld e, c
    ld h, $E8
    rla
    jp hl


    ld d, $ED
    ld [de], a
    push hl
    ld a, [de]
    cp l
    ld c, a
    or a

jr_023_7AB3:
    ld l, a
    sub a
    ld a, e
    rst $18
    dec sp
    db $DB
    cpl
    ld e, a
    xor a
    ld l, a
    sub a
    ld [hl], e
    rst $18
    nop
    cp d
    inc d
    xor e
    ld b, $9B
    ld b, $CB
    ld b, $A9
    nop
    add $00
    rst $38
    ld a, a
    xor a
    nop
    reti


    ld d, b
    xor l
    ret c

    ld l, l
    ret c

    ld l, l
    ret c

    dec h
    nop
    db $DD
    nop
    rst $38
    cp $FD
    jr nz, @+$80

    inc [hl]
    xor d
    inc [hl]
    xor d
    jr nc, @-$72

    nop
    or d
    nop
    push bc
    nop
    rst $38
    ld a, a
    cp a
    inc b
    ld a, [hl]
    inc l
    ld d, l

jr_023_7AF4:
    inc l
    ld d, l
    inc c
    ld sp, $4D00
    nop
    and e
    nop
    rst $38
    cp $BD
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop

jr_023_7B0A:
    ld e, a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld d, c
    dec sp
    ld h, h
    ld de, $0013
    ld l, b
    rla
    sub $3B
    push hl
    dec de
    ld a, d
    ld bc, $0003
    ld c, a
    or b
    ld [hl], l
    cp e
    db $EC
    inc de
    ld a, a
    add b
    or d
    rst $08
    xor a
    rst $18
    ld a, h
    add e
    di
    inc c
    or l
    ld a, e
    ld c, [hl]
    pop af
    ld a, a
    add b
    adc b
    ld [hl], a
    or [hl]
    ei
    push af
    ei
    ld c, $F1
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    inc b
    ld e, l
    inc b
    ld a, d
    ld [bc], a
    ld [$FF02], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    jr nz, jr_023_7B0A

    jr nz, jr_023_7AF4

    db $10
    sbc e
    jr jr_023_7B70

    db $10
    rra
    cpl
    ccf
    ld e, a
    ld a, a
    add a
    inc a
    jp Jump_023_641B


    inc b
    dec sp
    nop
    rrca

jr_023_7B70:
    or b
    ld c, b
    ret c

    or h
    ld hl, sp-$2C
    ld hl, sp+$14
    ldh a, [$6C]
    add b
    db $FC
    nop
    ld hl, sp+$00
    ret nz

    dec c
    ld [hl-], a
    dec de
    dec b
    inc bc
    inc a
    ld b, $79
    inc bc
    ld a, h
    nop
    ccf
    nop
    rra
    nop
    inc bc
    db $FC
    ld a, [$DCFE]
    rst $38
    jr c, jr_023_7C16

    and b
    cp [hl]
    ld b, c
    call z, $0033
    cp $00
    ld hl, sp+$79
    ld b, $7B
    inc b
    db $DB
    inc h
    ld e, c
    ld h, $E8
    rla
    jp hl


jr_023_7BAB:
    ld d, $E9
    ld d, $E5
    ld a, [de]
    db $FD
    ld c, a
    or l
    ld l, a
    sub a
    ld a, e
    rst $18
    dec sp
    db $DB
    cpl
    ld e, a
    xor a
    ld l, a
    sub a
    inc sp
    rst $18
    nop
    ld [hl], a
    dec sp
    ld b, h
    nop
    ld b, h
    nop
    dec sp
    rla
    jr z, jr_023_7BCB

jr_023_7BCB:
    ld [hl], a
    ccf
    ld e, a
    nop
    ld a, a
    nop
    cp $FC
    ld [bc], a
    nop
    ld [bc], a
    nop
    db $EC
    add sp, $14
    nop
    or $F4
    ld a, [$FE00]
    ld c, $01
    dec c
    nop
    dec e
    nop
    add hl, de
    nop
    dec sp
    nop
    ld [hl-], a
    dec b
    ld [hl], h
    inc bc
    ld a, c
    ld b, $F9
    ld l, $D8
    cpl
    sbc h
    ld l, e
    cp l
    ld c, d
    cp $11
    rst $10
    jr c, jr_023_7BAB

    ld [hl], b
    ld l, h
    ldh a, [rIE]
    nop
    ccf
    nop
    rst $08
    ret nz

    ld a, e
    ld a, b
    and a
    and b
    rst $08
    ret nz

    rra
    nop
    jr nc, jr_023_7C10

jr_023_7C10:
    rrca
    nop
    jr nc, jr_023_7C15

    ld d, c

jr_023_7C15:
    dec sp

jr_023_7C16:
    ld d, d
    dec sp
    ld [hl-], a
    ld bc, $0001
    ld [bc], a
    ld bc, $0100
    ei
    inc c
    ld a, h
    add e
    db $D3
    adc a
    ld e, h
    add e
    add [hl]
    nop
    nop
    ld de, $10AB
    or b
    nop

Call_023_7C30:
    rst $38
    nop
    ld c, $F1
    pop af
    ei
    ld a, [hl+]
    pop af
    ld [hl], a
    nop
    add b
    add b
    sub b
    ld h, c
    ld h, e
    nop
    ld [bc], a
    nop

jr_023_7C42:
    ld bc, $0600
    nop
    ld c, $01
    ld c, $01
    dec e
    ld [bc], a
    ld a, [bc]
    dec b
    dec b
    nop
    nop
    nop
    ret nz

    nop
    ld l, c
    db $10
    sub c
    ld [$6880], sp
    ld c, b
    or h
    ld h, $D8
    ei
    inc b
    nop
    jr nc, jr_023_7CD3

    add sp, $71
    adc d
    inc bc
    call $320D
    ld e, $6D
    ccf
    ld d, b
    jr nc, jr_023_7CBF

    nop
    nop
    nop
    nop
    ldh a, [$08]
    ld hl, sp-$1C
    db $FC
    ld hl, sp-$04
    ld [hl], b
    jr c, jr_023_7C42

    nop
    db $FC
    ld c, a
    jr nc, jr_023_7CC2

    ld e, l
    ld a, a
    ld a, $7F
    adc $3C
    jp Jump_023_641B


    inc b
    dec sp
    nop
    rrca
    ldh [rNR32], a
    ldh a, [$E8]
    ld hl, sp-$0C
    ld hl, sp+$16
    ldh a, [$6E]
    add b
    db $FC
    nop
    ld hl, sp+$00
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
    nop
    nop
    nop
    nop
    nop
    and l
    ld e, e
    add c
    ld a, a
    sub b
    ld l, a
    sub d
    ld l, a

jr_023_7CB8:
    adc b
    ld [hl], a
    xor d
    ld d, a
    xor h
    ld d, a
    xor l

jr_023_7CBF:
    ld d, [hl]
    ld e, e
    rst $28

jr_023_7CC2:
    ld l, c
    rst $38
    cp l
    rst $38
    cp [hl]
    rst $38
    sbc l
    rst $38

jr_023_7CCA:
    sbc [hl]
    rst $38
    xor l
    rst $18
    ret c

    rst $28
    jr nc, jr_023_7CD2

jr_023_7CD2:
    xor e

jr_023_7CD3:
    stop
    ld de, $0086
    ld e, h
    add e
    db $D3
    adc a
    inc a
    add e
    ld [$7B0C], sp
    inc b
    ld [hl], e
    inc c
    and $09
    call $9F13
    ld [hl+], a

jr_023_7CEA:
    sbc l
    ld h, $3F
    inc b
    ld e, d
    dec h
    ld e, d
    db $E4
    or $C8
    and d
    call c, $3CD2
    or [hl]
    ld a, b
    rst $38
    ld d, b
    ld e, l
    or b
    rst $38
    or b
    add hl, bc
    ld b, $32
    dec c
    ld b, h
    dec de
    ld hl, $0E06
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld e, a
    nop
    rst $08
    nop
    rst $28
    jr nz, jr_023_7CCA

    jr nz, jr_023_7CB8

    nop
    ld sp, hl
    nop
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
    cp l
    inc b
    ld l, d
    ld [bc], a
    jp z, $FF02

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    jr nz, jr_023_7CEA

    jr nz, @-$67

    db $10
    sbc e
    jr jr_023_7D41

jr_023_7D41:
    nop
    nop
    nop
    jr jr_023_7D46

jr_023_7D46:
    inc l
    db $10
    ld [hl-], a
    inc c
    inc e
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld h, h
    jr jr_023_7D6F

    ld b, $06
    ld bc, $0180
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_023_7DA4

    inc a
    ld [hl], d
    inc a
    ld b, e
    ld a, b
    ld b, $30

jr_023_7D6F:
    ld c, l
    nop
    jr c, @+$3E

    ld e, d
    ld a, $F9
    ld a, $CD
    ld e, $61
    rlca
    ld [$E601], sp
    ld h, b
    sub e
    nop
    dec sp
    ld bc, $0006
    rrca
    rlca
    dec de
    rrca
    inc sp
    rlca
    jr c, @+$03

    ld e, $00
    inc bc
    ldh a, [$6C]
    ld hl, sp-$0A
    ld a, b
    adc [hl]
    adc h
    ld [hl], e
    or $C9
    ld a, [$FCFD]
    inc bc
    nop
    cp $03
    nop
    inc bc
    nop

jr_023_7DA4:
    rlca
    nop
    ld b, $01
    ld b, $01
    rlca
    nop
    ld b, $01
    ld b, $01
    xor l
    ld d, [hl]
    xor e
    ld d, [hl]
    xor d
    ld d, a
    ld [c], a
    rra
    swap [hl]
    or $2F
    push de
    ld l, $FD
    ld l, $55
    ld [$E45B], a
    sub a
    ld l, b
    cp a
    ld b, b
    ld a, h
    add b
    ret nc

    nop
    and b
    nop
    ld b, b
    nop
    db $EB
    inc c
    ld [hl], h

jr_023_7DD3:
    add e
    db $D3
    adc a
    ld e, h
    add e
    add [hl]
    nop
    nop
    ld de, $10AB
    or b
    nop
    sub c
    ld l, [hl]
    rst $20
    jr jr_023_7DD3

    ld de, $03DC
    ld a, c
    rlca
    db $10
    rrca
    rra
    nop
    nop
    nop
    db $E3
    ld a, h
    ld h, [hl]
    ld hl, sp-$14
    ldh a, [$D3]
    ldh [$8B], a
    db $F4
    ld h, [hl]
    sbc b
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
    ld bc, $0300
    nop
    ld bc, $1000
    nop
    jr c, jr_023_7E10

jr_023_7E10:
    inc c
    nop
    ld b, $00
    add c
    nop
    and c
    ld b, b
    ld d, b
    and b
    xor b
    ld d, b
    ld c, h
    jr nc, @+$26

    jr jr_023_7E21

jr_023_7E21:
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld b, h
    nop
    and $00
    and d
    ld b, h
    dec h
    ld b, d
    nop
    nop
    and b
    nop
    ld c, b
    db $10
    sub h
    ld l, b
    ld c, b
    inc [hl]
    ld a, [hl+]
    inc d
    inc b
    ld a, [de]
    inc d
    ld a, [bc]
    ld h, d
    nop
    jr nc, jr_023_7E84

    jr nz, jr_023_7E96

    jr z, @+$52

    ld d, h
    jr z, jr_023_7E55

    inc [hl]
    ld a, [hl+]
    inc d
    dec d
    ld a, [bc]
    inc d
    jr z, jr_023_7E67

    jr z, jr_023_7E99

jr_023_7E55:
    jr c, jr_023_7EBB

    jr @+$2E

    db $10
    inc a
    nop
    stop
    ld [$0000], sp
    nop
    jr c, jr_023_7E64

jr_023_7E64:
    inc d
    jr z, jr_023_7E92

jr_023_7E67:
    inc d
    ld de, $0E0E
    ld bc, $0005
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    ld a, [bc]
    inc b
    ld [bc], a
    inc c
    add [hl]
    ld [$0004], sp
    nop
    nop
    nop
    nop
    nop
    nop

jr_023_7E84:
    jr jr_023_7E86

jr_023_7E86:
    inc b
    nop
    ld a, [bc]
    db $10
    jr jr_023_7EAC

    inc bc
    jr nz, @+$47

    ld [bc], a
    nop
    nop

jr_023_7E92:
    nop
    nop
    inc e
    nop

jr_023_7E96:
    ld b, b
    jr nz, jr_023_7E99

jr_023_7E99:
    ld b, b
    nop
    nop
    add b
    nop
    ld h, b
    jr jr_023_7EA1

jr_023_7EA1:
    nop
    inc bc
    nop
    ld d, b
    jr nz, @+$3A

    ld b, b
    jr nz, jr_023_7EEA

    ld b, b
    nop

jr_023_7EAC:
    ld [de], a
    jr nz, jr_023_7ED3

    ld b, b
    nop
    nop
    ret nz

    nop
    ld a, [bc]
    inc b
    inc e
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a

jr_023_7EBB:
    nop
    ld c, b
    inc b
    inc h
    ld [bc], a
    jr nc, jr_023_7EC2

jr_023_7EC2:
    xor b
    stop
    db $10
    add b
    nop
    ld b, b
    add b
    ret nz

    add b
    nop
    add b
    nop
    nop
    ld h, e
    nop
    nop

jr_023_7ED3:
    ld bc, $0000
    rlca
    nop
    ld [bc], a
    ld bc, $0301
    ld [bc], a
    ld bc, $0001
    stop
    dec b
    nop
    ld a, [hl+]
    nop
    rrca
    nop
    jr nz, jr_023_7EEA

jr_023_7EEA:
    daa
    nop
    nop
    cpl
    cpl
    nop
    inc b
    nop
    ld b, b
    nop
    and h
    nop
    ldh a, [rP1]
    inc b
    nop
    db $E4
    nop
    nop
    db $F4
    db $F4
    nop

Jump_023_7F00:
    inc d
    ld a, [bc]
    inc c
    inc bc
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld [$0600], sp
    ld [$0C12], sp
    ld a, [bc]
    inc b
    inc c
    add d
    add h
    ld b, d
    add h
    ld b, d
    ret nz

    ld [hl+], a
    ld b, b
    ld [hl+], a
    ld c, b
    ld [hl+], a
    dec b
    ld b, d
    ld b, h
    inc bc
    inc b
    inc bc
    jr nz, @+$05

    ld [hl], d
    ld bc, $2152
    ld [hl+], a
    ld d, c
    ld b, b
    ld sp, $0A04
    adc d
    inc b
    adc d
    inc b
    adc b
    inc b
    nop
    inc b
    nop
    inc b
    jr nz, jr_023_7F3E

jr_023_7F3E:
    ld [de], a
    nop
    rrca

Jump_023_7F41:
    nop
    ld a, [bc]
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0500
    ld [bc], a
    ld [$1107], sp
    ld c, $37
    ld [$001C], sp
    jr nz, jr_023_7F6E

jr_023_7F6E:
    nop
    nop
    stop
    sbc b
    nop
    add h
    ld [$048A], sp
    nop
    ld b, $02
    nop
    nop
    nop
    nop
    nop
    ld bc, $0206
    inc c
    inc d
    ld [$1028], sp
    ld h, b
    nop
    ld b, d
    nop
    inc b
    nop
    nop
    nop
    ld a, [de]
    add h
    add d
    ld b, b
    ld b, b
    jr nz, jr_023_7FC7

    nop
    stop
    stop
    nop
    nop
    nop
    nop
    ld de, $4348
    jr jr_023_7FEF

    ld de, $011A
    ld a, [bc]
    ld de, $011A
    add hl, bc
    nop
    nop
    nop
    adc b
    ld [de], a
    jp nz, Jump_023_5218

    adc b
    ld e, b
    add b
    ld d, b
    adc b
    ld e, b
    add b
    sub b
    nop
    nop
    nop
    ret nz

    nop
    ld h, b
    add b
    ret nz

    add b
    ld b, b

jr_023_7FC7:
    add b
    add b
    nop
    nop
    db $10
    xor c
    db $10
    or b
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
    ld b, [hl]
    add b
    add c
    nop
    ld h, e
    nop
    sub b
    ld h, c
    add b
    add b
    ld [hl], a
    nop
    ld a, [hl+]
    pop af
    pop af
    ei
    ld c, $F1
    cp a

jr_023_7FEF:
    nop
    ldh a, [rDIV]
    inc b
    nop
    nop
    db $F4
    ldh a, [$F4]
    nop
    inc b
    db $F4
    db $F4
    nop
    db $F4
    nop
    nop
