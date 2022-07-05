; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    ld a, a
    nop
    rst $38
    ld [hl-], a
    rst $38
    ld a, a
    db $F4
    ccf
    ldh [$7F], a
    ldh a, [$7F]
    ldh [$7F], a
    add sp, $7F
    ld a, [c]
    ld a, a
    jp hl


    ccf
    or $7F
    rst $38
    ccf
    rst $38
    ld d, $FF
    add hl, hl
    rst $38
    nop
    ld a, a
    nop

jr_009_4020:
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
    rlca
    jr @+$11

jr_009_402E:
    db $10
    rrca
    nop

jr_009_4031:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld a, b
    and b
    jr jr_009_402E

    jr jr_009_4020

    jr @+$11

jr_009_4042:
    ld a, [de]
    rlca
    add hl, de
    rrca
    rra
    inc b
    rra
    ld bc, $000F
    nop
    nop
    nop
    nop
    jr jr_009_4042

    ld e, b
    ldh [$98], a
    ldh a, [rBCPS]
    or b
    ld hl, sp+$40
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld l, [hl]
    jr jr_009_40A9

    inc a
    ld a, [hl]
    inc h
    ld a, [hl]
    jr jr_009_40A9

    nop
    nop
    nop
    ld [$1810], sp
    ld b, b
    ld [$4890], sp

Jump_009_4077:
    jr nz, jr_009_4031

    ld b, b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    ld a, d
    nop
    rst $38
    nop
    cp $00
    ld a, [hl]
    nop
    ld e, d
    nop
    ld h, [hl]
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_009_4095

jr_009_4095:
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
    nop
    inc a
    nop
    ld h, [hl]
    nop
    ld b, d
    nop
    ld e, d

jr_009_40A9:
    inc h
    ld h, [hl]
    jr @+$3E

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
    rrca
    rlca
    rra
    rrca
    ccf
    rra
    ccf
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [$E0]
    ld hl, sp-$10
    db $FC
    cp b
    cp h
    ld e, b
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
    rlca
    rra
    rrca
    rra
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld hl, sp-$10
    db $FC
    ld hl, sp-$02
    cp h
    cp [hl]
    ld e, h
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
    ld b, $1F
    rrca
    rra
    rrca
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_4106:
    ldh a, [rP1]
    ld hl, sp-$10
    db $FC
    ld hl, sp-$02
    db $FC
    cp $FC
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rrca
    rlca
    rra
    dec c
    ccf
    rra
    ccf
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld hl, sp-$10
    db $FC
    ld hl, sp-$02
    db $F4
    db $FC
    ldh [rNR34], a
    dec b
    dec d
    ld a, [bc]
    add hl, bc
    ld b, $1C
    inc bc
    ccf
    nop
    ccf
    nop
    ld [hl], e
    dec c
    inc sp
    inc c
    inc e
    add sp, $38
    ret nz

    jr nc, jr_009_4106

    db $10
    ldh [$E0], a
    nop
    ldh a, [rP1]
    ret nc

    and b
    ret nc

    jr nz, jr_009_415F

    dec b
    dec d
    ld a, [bc]
    dec c
    ld [bc], a
    ld b, $01
    rrca
    nop
    rra
    nop
    add hl, de
    ld b, $19

jr_009_415F:
    ld b, $1C
    add sp, $2A
    call nc, $D02C
    db $10
    ldh [$F8], a
    nop
    db $FC
    nop
    db $E4
    ret c

    db $E4
    jr jr_009_4180

    rlca
    rla
    dec bc
    rrca
    ld bc, $0007
    rrca
    nop
    rra
    nop
    rra
    inc bc
    rrca
    nop

jr_009_4180:
    db $FC
    ld hl, sp-$06
    db $F4
    db $FC
    ldh [$F0], a
    nop
    ld hl, sp+$00
    db $FC
    nop
    db $FC
    ldh [$F8], a
    nop
    rra
    rrca
    rra
    rlca
    rrca
    inc bc
    rrca
    nop
    rra
    nop
    rra
    ld b, $0F
    ld bc, $000F
    add sp, -$30
    ret z

    or b
    sub b
    ld h, b
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $F4
    adc b
    db $F4
    ld [$0E1F], sp
    ld c, $05
    dec d
    ld a, [bc]
    dec c
    ld [bc], a
    ld b, $01
    rrca
    nop
    inc e
    inc bc
    inc e
    inc bc
    cp [hl]
    ld e, h
    inc e
    add sp, $2A
    call nc, $D02C
    db $10
    ldh [$F8], a
    nop
    ld hl, sp+$40
    add sp, $10
    rra
    rrca
    rrca
    rlca
    rla
    dec bc
    rrca
    ld bc, $000F
    rra
    nop
    rra
    ld bc, $0817
    cp $FC
    db $FC
    ld hl, sp-$06
    db $F4
    db $FC
    ldh [$F0], a
    nop
    ld hl, sp+$00
    ld hl, sp-$20
    ld hl, sp+$00
    rra
    nop
    rrca
    nop
    db $10
    rrca
    ld de, $2F0E
    db $10
    ccf
    ld b, $3F
    ld e, $1F
    nop
    ldh [rP1], a
    ldh [rP1], a
    db $10
    ldh [$30], a
    ret nz

    ld hl, sp+$30
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ld [$B8F0], sp

jr_009_4217:
    ld b, b
    ld hl, sp+$30
    db $FC
    ld a, b
    db $FC
    jr c, jr_009_4217

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    sub b
    ld h, b

jr_009_4226:
    adc b
    ld [hl], b
    sbc b
    ld h, b
    db $FC
    ld [$70FC], sp
    ld hl, sp+$00
    rlca
    nop
    dec b
    ld [bc], a
    ld [$0807], sp
    rlca
    ld c, $01
    rrca
    ld b, $0F
    nop
    nop
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld [$88F0], sp
    ld [hl], b
    sbc b
    ld h, b
    db $FC
    ld [$70FC], sp
    ld hl, sp+$00
    rra
    nop
    rrca
    nop
    ld [$0A07], sp
    dec b
    add hl, bc
    ld b, $07
    nop
    rlca
    ld [bc], a
    inc bc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    jr nc, jr_009_4226

    ld [hl], b
    add b
    ldh a, [$60]
    ldh a, [$E0]
    ldh [$C0], a
    ldh [rP1], a
    rrca
    nop
    rlca
    nop
    ld [$0807], sp
    rlca
    ld [$0707], sp
    nop
    rlca
    inc bc
    rlca
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld [$C8F0], sp
    jr nc, @-$0E

    nop
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    rra

jr_009_4299:
    rrca
    ccf
    rra
    ccf
    rra
    ccf
    add hl, de
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [$E0]
    ld hl, sp-$10
    db $FC
    ld hl, sp-$04
    sbc b
    sbc b
    ld h, b
    ccf
    add hl, de
    dec e
    ld a, [bc]
    inc c
    inc bc
    ld b, $01
    rrca
    nop
    rra
    nop
    cpl
    ld d, $2F
    db $10
    sbc b
    ld h, b
    ld d, b
    and b
    ld d, b
    and b
    db $10
    ldh [$C0], a
    nop
    ldh [rP1], a
    sub b
    ld h, b
    sub b
    ld h, b
    dec e
    ld a, [bc]
    inc c
    inc bc
    ld b, $01
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ld c, $01
    ld b, $01
    ld d, b
    and b
    ld d, b
    and b
    db $10
    ldh [$E0], a
    nop
    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    add b
    ld h, b
    add b
    ccf
    add hl, de
    dec e
    ld a, [bc]
    inc c
    inc bc
    ld b, $01
    rrca
    nop
    rra
    nop
    daa
    add hl, de
    daa
    jr jr_009_4299

    ld h, b
    ld d, b
    and b
    ld d, b
    and b

jr_009_4306:
    db $10
    ldh [$C0], a
    nop
    ldh [rP1], a
    ret nc

    and b
    ret nc

    jr nz, jr_009_4330

    nop
    rrca
    nop
    db $10
    rrca
    jr nz, jr_009_4337

    ld [hl], e
    inc l
    ld a, a
    ld [hl-], a
    ld a, a
    ld e, $7F
    nop
    ldh [rP1], a
    ldh [rP1], a
    ld a, b
    add b

jr_009_4326:
    db $FC
    jr jr_009_43A5

    cp b
    ld a, b
    or b
    ld hl, sp+$40
    ldh [rP1], a

jr_009_4330:
    rlca
    nop
    rlca
    nop
    ld [$1007], sp

jr_009_4337:
    rrca
    rra
    nop
    rra
    rlca
    rra
    rrca
    rra
    nop
    ldh [rP1], a
    ldh [rP1], a
    jr nz, jr_009_4306

    ld h, b
    add b
    ldh a, [rNR41]
    ldh a, [$A0]
    ldh a, [$80]

jr_009_434E:
    ret nz

    nop

jr_009_4350:
    rra
    nop
    rrca
    nop
    db $10
    rrca
    inc [hl]
    dec bc
    ld a, [hl]
    ld hl, $3C7F
    ld a, a
    ld e, $7F
    nop
    ldh [rP1], a

Call_009_4362:
    ret nz

    nop
    jr c, jr_009_4326

    inc a
    ret c

    ld a, h
    cp b
    ld a, b
    or b
    ld hl, sp+$40
    ldh [rP1], a
    rra
    ld c, $0E
    dec b
    dec d
    ld a, [bc]
    dec c
    ld [bc], a
    ld b, $01
    rrca
    nop
    rra
    ld [bc], a
    rla
    ld [$5CBE], sp
    inc e
    add sp, $2A
    call nc, $D02C
    db $10
    ldh [$F8], a
    nop
    jr c, jr_009_434E

    jr c, jr_009_4350

    rra
    rrca
    rrca
    rlca
    rla
    dec bc
    rrca
    ld bc, $0007
    rra
    nop
    rra
    inc bc
    rrca
    nop
    cp $FC
    db $FC
    ld hl, sp-$06

jr_009_43A5:
    db $F4
    db $FC
    ldh [$F0], a
    nop
    ld hl, sp+$00
    db $FC
    ret nz

    db $F4
    ld [$1F1E], sp
    ld e, h
    add hl, bc
    or a
    ld b, e
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
    jr nz, jr_009_440D

    ld h, c
    ld l, l
    ld h, l
    ccf
    cp $FD
    and b
    and [hl]
    jr nz, jr_009_441E

    ld l, a
    ld l, $FF
    jr nz, jr_009_442E

    ld h, l
    ld [hl], e
    ld l, $FD
    and e
    ld [bc], a
    add hl, bc
    ld a, [de]
    ld b, h
    add hl, bc
    pop hl
    ld b, e
    sbc d
    add hl, bc
    ld a, b
    ld c, b
    sub [hl]
    ld bc, $A6A0
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_009_4442

    ld h, c
    halt
    ld h, l
    ld h, h
    jr nz, jr_009_4469

    ld l, a
    rst $38
    db $FD
    ld b, [hl]
    rrca
    ld bc, $C74A
    dec b
    nop
    add hl, bc
    db $10
    ld b, h
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_009_443B

    ld l, $FE
    db $FD
    ld c, b

jr_009_440D:
    add hl, bc
    ld a, [de]
    ld b, h
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_009_4448

    ld l, $FE
    db $FD
    and c
    sbc e
    add hl, bc
    or b

jr_009_441E:
    ld b, e
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    rra
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00

jr_009_442E:
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld bc, $1354

jr_009_443B:
    ld h, a
    ld a, $4C
    ld l, e
    add [hl]
    ld l, d
    ld a, [hl+]

jr_009_4442:
    ld d, b
    ld d, d
    inc l
    ld l, h
    ld e, e
    ld c, h

jr_009_4448:
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
    db $10
    ld [hl+], a
    inc c
    call nc, $0900
    add h
    ld b, h
    add hl, bc
    or [hl]
    ld c, l
    ld l, [hl]
    jr nc, jr_009_4476

jr_009_4469:
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

jr_009_4476:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    add hl, bc
    or b
    ld b, e
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    nop
    ld b, [hl]
    and b
    ld [bc], a
    add hl, de
    db $10
    ld b, a
    inc d
    dec d
    sub [hl]
    ld a, b
    ld b, l
    ld [hl+], a
    rra
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
    ld bc, $1354
    ld h, a
    ld a, $4C
    ld l, e
    add [hl]
    ld l, d
    ld a, [hl+]
    ld d, b
    ld d, d
    inc l
    ld l, h
    ld e, e
    ld c, h
    dec b
    nop
    ld hl, sp+$4A
    ld d, $27
    xor b
    call nc, $0900
    jp hl


    ld b, h
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    inc d
    ld [hl+], a
    db $10
    call nc, $0900
    ld a, [bc]
    ld b, l
    add hl, bc
    dec d
    ld b, l
    ld l, [hl]
    jr nc, jr_009_44E3

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

jr_009_44E3:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    dec d
    inc d
    inc sp
    ld e, h
    jr nc, jr_009_4503

    db $D3
    ld e, l
    nop
    nop
    ld e, [hl]
    add hl, de
    ld a, [hl]
    ld h, e
    ld h, l
    ld bc, $1843
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld [hl+], a
    rra
    sbc e
    add hl, bc

jr_009_4503:
    or b
    ld b, e
    or e
    ld sp, $00C7
    ld b, l
    inc d
    dec d
    and b
    ld a, b
    ld h, l
    ld bc, $1514
    ld h, h
    ld a, b
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    add hl, bc
    ld hl, $4845
    dec d
    xor d
    ld a, b
    and d
    jr z, @+$45

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
    jr nz, @+$5B

    ld h, c
    ld l, e
    jr nz, @+$6B

    ld [hl], e
    jr nz, jr_009_45A6

    ld l, h
    ld h, c
    ld h, h
    cp $74
    ld l, a
    jr nz, jr_009_45BA

    ld h, l
    ld h, l
    jr nz, jr_009_45C4

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
    ld bc, $099B
    or b
    ld b, e
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    rra
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
    ld bc, $1354
    ld h, a
    ld a, $4C
    ld l, e
    add [hl]
    ld l, d
    ld a, [hl+]
    ld d, b
    ld d, d
    inc l
    ld l, h
    ld e, e
    ld c, h
    dec b
    nop
    ld hl, sp+$4A
    ld d, $27
    xor b
    call nc, $0900
    jp nz, $1945

    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    db $10
    inc hl
    ld a, [hl+]
    call nc, $0900
    add h
    ld b, h
    add hl, bc
    or [hl]
    ld c, l
    ld l, [hl]
    jr nc, jr_009_45B3

jr_009_45A6:
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

jr_009_45B3:
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e

jr_009_45BA:
    add hl, bc
    or b
    ld b, e
    or e
    ld sp, $00C7
    ld b, l
    ld d, $14

jr_009_45C4:
    ld e, l
    ld e, h
    jr nz, jr_009_45C8

jr_009_45C8:
    ld bc, $1400
    inc d
    cp a
    ld e, l
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    ld [hl+], a
    rra
    or [hl]
    ld c, d
    and b
    ld [bc], a
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    add hl, bc
    nop
    ld b, [hl]
    dec b
    ld [bc], a
    ld hl, sp+$4A
    rra
    inc e
    sub a
    push de
    ld a, b
    add hl, bc
    inc sp
    ld b, [hl]
    add hl, de
    rst $20
    ld b, [hl]
    ld l, [hl]
    jr nc, jr_009_4601

    ret nc

    ld b, e
    add b
    add a
    nop
    dec bc
    ld [bc], a
    add b
    ld e, $18
    ld bc, $1445

jr_009_4601:
    inc d
    ret


    ld e, l
    ld h, e
    ld bc, $095E
    adc h
    ld b, [hl]
    ld h, l
    ld [bc], a
    dec d
    inc d
    db $DD
    ld e, l
    ld [hl], $14
    ret


    ld e, l
    ld [hl], $14
    or l
    ld e, l
    stop
    ld e, a
    nop
    ld [bc], a
    ld h, l
    inc b
    ld b, e
    inc d
    inc d
    inc d
    db $DD
    ld e, l
    ld h, l
    ld h, e
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, @+$11

    ld c, b
    dec d
    ccf
    ld b, b
    ld b, l
    ld b, e
    jr nz, jr_009_464B

    dec d
    jp c, Jump_009_4077

    nop
    ld e, c
    ld bc, $1515
    jp c, $1077

    dec d
    adc h
    ld a, b
    jr nc, @+$17

    ld l, [hl]
    ld a, b
    nop
    nop

jr_009_464B:
    ld h, l
    ld bc, $1515
    add d
    ld a, b
    inc a
    dec d

Call_009_4653:
    ld l, [hl]
    ld a, b
    nop
    nop
    ld h, l
    inc bc
    dec d
    dec d
    jp c, $1077

    dec d
    ld a, [bc]
    ld a, b
    db $10
    dec d
    adc h
    ld a, b
    jr nc, jr_009_467C

    add d
    ld a, b
    jr nc, jr_009_4680

    ld [$1077], a
    dec d
    ld a, [bc]
    ld a, b
    db $10
    dec d
    ld a, b
    ld a, b
    jr nz, jr_009_468C

    ld l, [hl]
    ld a, b
    stop
    ld e, a

jr_009_467C:
    ld bc, $6502
    inc b

jr_009_4680:
    dec d
    dec d
    ld a, [$1077]
    dec d
    jp c, $7877

    nop
    add hl, de
    ld b, l

jr_009_468C:
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld h, c
    ld l, e
    ld l, c
    ld hl, $FDFE
    and d
    jr z, jr_009_46DD

    and [hl]
    ld c, b
    ld [hl], l
    ld l, b
    ccf
    jr nz, jr_009_46F0

    ld l, b
    ld hl, $53FF
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    ld hl, $5920
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    cp $68
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_009_472A

    ld l, h
    ld [hl], e
    ld h, l
    rst $38
    ld h, e
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_009_4719

    jr nz, jr_009_4734

    ld h, l
    ccf
    cp $FD
    ld e, e
    ld bc, $28A2
    ld b, e
    and [hl]
    ld e, c

jr_009_46DD:
    ld l, a
    ld [hl], l
    jr nz, jr_009_4744

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$64

    ld h, l
    jr nz, jr_009_475F

    ld [hl], b
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d

jr_009_46F0:
    ld h, l
    inc l
    jr nz, jr_009_476B

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    cp $74
    ld l, b
    ld h, l
    jr nz, @+$74

    ld h, l
    ld h, c
    ld l, h
    jr nz, jr_009_4768

    ld a, b
    ld l, c
    ld [hl], h
    rst $38
    ld l, c
    ld [hl], e
    ld l, $20
    ld c, c
    jr nz, jr_009_4785

    ld h, c
    ld [hl], e
    jr nz, jr_009_4779

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    cp $74
    ld l, b

jr_009_4719:
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_009_4792

    ld l, a
    jr nz, jr_009_478E

    ld h, l
    ld h, l
    ld [hl], h
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    ld l, $FE

jr_009_472A:
    db $FD
    ld e, e
    ld [bc], a
    and c
    ld e, a
    nop
    ld [bc], a
    and d
    sbc b
    ld b, c

jr_009_4734:
    and [hl]
    ld c, c
    jr nz, jr_009_479B

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_009_47B1

    ld h, l
    ld h, l
    ld l, l
    jr nz, jr_009_47B7

    ld l, a

jr_009_4744:
    rst $38
    ld h, a
    ld h, l
    ld [hl], h
    jr nz, jr_009_47BE

    ld l, a
    jr nz, jr_009_47C6

    ld l, a
    ld [hl], l
    ld l, $20
    ld c, b
    ld l, a
    ld [hl], a
    cp $64
    ld l, c
    ld h, h
    jr nz, jr_009_47D3

    ld l, a
    ld [hl], l
    jr nz, @+$69

    ld h, l

jr_009_475F:
    ld [hl], h
    rst $38
    ld l, a
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_009_47DB

    ld l, b

jr_009_4768:
    ld h, l
    ld [hl], d
    ld h, l

jr_009_476B:
    ccf
    cp $FD
    and d
    jr z, jr_009_47B4

    and [hl]
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_009_47E4

jr_009_4779:
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, $FF
    ld c, c
    jr nz, jr_009_47F8

    ld h, c
    ld [hl], e
    jr nz, @+$6C

jr_009_4785:
    ld [hl], l
    ld [hl], e
    ld [hl], h
    cp $77
    ld h, c
    ld l, h
    ld l, e
    ld l, c

jr_009_478E:
    ld l, [hl]
    daa
    jr nz, @+$63

jr_009_4792:
    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld hl, $42FF
    ld a, c

jr_009_479B:
    jr nz, jr_009_4811

    ld l, b
    ld h, l
    jr nz, jr_009_4818

    ld h, c
    ld a, c
    inc l
    jr nz, @+$4B

    cp $6A
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, @+$75

    ld h, c
    ld [hl], a
    jr nz, jr_009_4812

jr_009_47B1:
    rst $38
    ld [hl], e
    ld [hl], h

jr_009_47B4:
    ld [hl], d
    ld h, c
    ld l, [hl]

jr_009_47B7:
    ld h, a
    ld h, l
    jr nz, @+$67

    ld a, b
    ld [hl], h
    ld [hl], d

jr_009_47BE:
    ld h, c
    cp $70
    ld h, c
    ld [hl], h
    ld l, b
    jr nz, jr_009_4835

jr_009_47C6:
    ld [hl], b
    ld h, l
    ld l, [hl]
    jr nz, jr_009_4840

    ld [hl], b
    rst $38
    ld l, a
    ld [hl], l
    ld [hl], h
    ld [hl], e
    ld l, c
    ld h, h

jr_009_47D3:
    ld h, l
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]

jr_009_47DB:
    ld c, l
    ld h, c
    ld a, c
    ld h, d
    ld h, l
    jr nz, jr_009_482B

    daa
    ld l, h

jr_009_47E4:
    ld l, h
    rst $38
    ld h, e
    ld l, b
    ld h, l
    ld h, e
    ld l, e
    jr nz, @+$6B

    ld [hl], h
    jr nz, jr_009_485F

    ld [hl], l
    ld [hl], h
    ld l, $FE
    db $FD
    and d
    jr z, jr_009_483B

jr_009_47F8:
    and [hl]
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_009_4868

    ld h, h
    ld h, l
    ld h, c
    ld hl, $FDFE
    ld e, e
    inc bc
    and d
    jr z, jr_009_484D

    and [hl]
    ld d, h
    ld c, b
    ld b, l
    jr nz, jr_009_4869

    ld b, c

jr_009_4811:
    ld c, e

jr_009_4812:
    ld c, c
    ld l, $2E
    ld l, $FF
    ld l, l

jr_009_4818:
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_009_4880

    ld h, l
    jr nz, jr_009_4882

    cp $6C
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_009_4896

    ld l, a

jr_009_482B:
    ld [hl], e
    ld [hl], h
    ld l, $FF
    ld d, a
    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_009_48A2

jr_009_4835:
    ld h, l
    jr nz, @+$6E

    ld [hl], l
    ld h, e
    ld l, e

jr_009_483B:
    cp $67
    ld h, l
    ld [hl], h
    ld [hl], h

jr_009_4840:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$71

    ld [hl], l
    ld [hl], h
    jr nz, jr_009_48B8

    ld h, [hl]
    rst $38
    ld l, b
    ld h, l

jr_009_484D:
    ld [hl], d
    ld h, l
    ld hl, $FDFE
    and c
    ld e, a
    ld bc, $5B02
    inc b
    and d
    sbc b

Call_009_485A:
Jump_009_485A:
    ld b, c
    and [hl]
    ld b, a
    ld l, a
    ld l, a

jr_009_485F:
    ld h, h
    jr nz, jr_009_48CE

    ld [hl], l
    ld h, e
    ld l, e
    ld hl, $FDFE

jr_009_4868:
    and b

jr_009_4869:
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    cp $FD
    and c
    ld e, e
    ld h, e
    ld b, l
    ld [hl+], a
    rra
    sub a
    or e
    ld sp, $00C7
    or e

jr_009_4880:
    inc sp
    rst $00

jr_009_4882:
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld bc, $1354
    ld h, a
    ld a, $4C
    ld l, e
    add [hl]
    ld l, d
    ld a, [hl+]

jr_009_4896:
    ld d, b
    ld d, d
    inc l
    ld l, h
    ld e, e
    ld c, h
    dec b
    nop
    ld hl, sp+$4A
    ld d, $27

jr_009_48A2:
    xor b
    call nc, $0900
    ret c

    ld c, b
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    db $10
    inc hl
    ld a, [hl+]
    call nc, $0900
    add h
    ld b, h
    add hl, bc

jr_009_48B8:
    or [hl]
    ld c, l
    ld l, [hl]
    jr nc, jr_009_48CA

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

jr_009_48CA:
    ld a, a
    sbc b
    ld a, d
    ld h, b

jr_009_48CE:
    rrca
    sbc e
    add hl, bc
    or b
    ld b, e
    or e
    ld sp, $00C7
    ld b, l
    dec d
    inc d
    inc sp
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
    jr c, @-$5D

    dec bc
    ld bc, $A138
    dec b
    ld bc, $35B3
    and c
    ld [bc], a
    ld c, [hl]
    ld bc, $A136
    add hl, bc
    nop
    nop
    dec e
    ld c, c
    add hl, bc
    ld bc, $2100
    ld c, c
    add hl, bc
    ld [bc], a
    nop
    ld [hl], $49
    add hl, bc
    inc bc
    nop
    ld c, e
    ld c, c
    add hl, bc
    inc b
    nop
    ld c, e
    ld c, c
    add hl, bc
    dec b
    nop
    ld c, e
    ld c, c
    rst $38
    ld c, b
    add hl, bc
    ld c, e
    ld c, c
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
    db $10
    ld d, h
    inc de
    ld c, b
    dec bc
    jr c, jr_009_49A2

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
    db $10
    ld d, h
    inc de
    ld c, b
    dec bc
    jr nc, jr_009_49B8

    ld bc, $0304
    ld c, b
    add hl, bc
    ld h, c
    ld b, l
    ld [hl+], a
    rra
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
    ld bc, $1354
    ld h, a
    ld a, $4C
    ld l, e
    add [hl]
    ld l, d
    ld a, [hl+]
    ld d, b
    ld d, d
    inc l
    ld l, h
    ld e, e
    ld c, h
    dec b
    nop
    ld hl, sp+$4A
    inc b
    inc bc
    ld e, [hl]
    ret nc

    nop
    add hl, bc
    xor h
    ld c, c
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld b, $06
    cp d
    ret nc

    nop
    add hl, bc
    cp l
    ld c, c
    add hl, bc
    jp nz, Jump_009_6E49

    jr nc, jr_009_49A4

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
    dec b

jr_009_49A2:
    ld b, $73

jr_009_49A4:
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
    jr nc, jr_009_49C8

    or l
    ld e, l
    jr nz, jr_009_49B8

jr_009_49B8:
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
    add hl, bc

jr_009_49C8:
    adc $49
    ld c, b
    dec d
    xor d
    ld a, b
    and d
    jr z, jr_009_4A14

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
    jr nz, jr_009_4A5A

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
    jr nz, @+$76

    ld l, a
    rst $38
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_009_4A6A

    ld l, [hl]
    jr nz, jr_009_4A49

    ld l, a
    ld [hl], d
    ld h, a
    cp $61
    ld l, [hl]
    ld h, h
    jr nz, @+$5C

    ld h, l
    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $2245

jr_009_4A11:
    rra
    or [hl]
    ld b, [hl]

jr_009_4A14:
    and b
    ld [bc], a
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
    ld bc, $1354
    ld h, a
    ld a, $4C
    ld l, e
    add [hl]
    ld l, d
    ld a, [hl+]
    ld d, b
    ld d, d
    inc l
    ld l, h
    ld e, e
    ld c, h
    dec b
    nop
    ld hl, sp+$4A
    ld [de], a
    add hl, bc
    jr nz, jr_009_4A11

    nop
    add hl, bc
    add a
    ld c, d
    add hl, de
    add sp, $46
    dec b
    ld [bc], a

jr_009_4A49:
    ld hl, sp+$4A
    dec d
    add hl, bc
    inc hl
    pop de
    nop
    add hl, bc
    push hl
    ld c, d
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A

jr_009_4A5A:
    inc d
    inc c
    ld a, h
    pop de
    jr nc, jr_009_4A69

    ld a, [$194A]
    add sp, $46
    ld l, [hl]
    jr nc, jr_009_4A75

    ret nc

jr_009_4A69:
    ld b, e

jr_009_4A6A:
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_009_4A7D

    and b
    ld [hl], l
    nop
    add e
    nop

jr_009_4A75:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    adc b
    inc d

jr_009_4A7D:
    dec bc
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
    ld d, b
    dec d
    inc d
    ld c, l
    ld e, h
    jr jr_009_4AA3

    adc l
    ld e, h
    inc c
    inc d
    db $DD
    ld e, l
    jr jr_009_4AAB

    ret


    ld e, l
    jr jr_009_4A9B

jr_009_4A9B:
    ld e, [hl]
    add hl, bc
    ld [hl+], a
    ld d, d
    ld h, e
    ld [bc], a
    inc d
    inc d

jr_009_4AA3:
    or l
    ld e, l
    ld h, l
    add hl, de
    ld e, [hl]
    add hl, bc
    ld l, d
    ld d, d

jr_009_4AAB:
    dec d
    inc d
    ret


    ld e, l
    jr z, jr_009_4AC5

    or l
    ld e, l
    nop
    nop
    ld h, e
    ld bc, $1415
    adc l
    ld e, h
    db $10
    inc d
    db $DD
    ld e, l
    nop
    nop
    ld e, [hl]
    add hl, bc
    adc e
    ld d, d

jr_009_4AC5:
    ld h, l
    dec de
    ld e, [hl]
    add hl, bc
    and l
    ld d, d
    ld h, l
    inc e
    ld e, [hl]
    add hl, bc
    dec [hl]
    ld d, e
    ld h, l
    dec e
    ld e, a
    nop
    ld [bc], a
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld [hl+], a
    rra
    sbc e
    add hl, bc
    or b
    ld b, e
    or e
    ld sp, $00C7
    ld b, l
    inc d
    dec d
    sub [hl]
    ld a, b
    ld h, l
    dec e
    dec d
    dec d
    ld a, [bc]
    ld a, b
    jr jr_009_4B06

    jp c, Jump_009_6477

    nop
    ld e, a
    nop
    ld [bc], a
    add hl, de
    ld b, l
    dec d
    ld de, $4B2D
    jr nz, jr_009_4B11

    dec e
    ld c, e
    jr nz, jr_009_4B15

    dec l
    ld c, e

jr_009_4B06:
    jr nz, jr_009_4B19

    dec e
    ld c, e
    jr nz, @+$13

    dec l
    ld c, e
    jr nz, jr_009_4B21

    dec e

jr_009_4B11:
    ld c, e
    jr jr_009_4B25

    and l

jr_009_4B15:
    ld c, e
    nop
    nop
    ld h, l

jr_009_4B19:
    jr jr_009_4B30

    ld de, $4B87
    jr nz, jr_009_4B31

    db $FD

jr_009_4B21:
    ld c, d
    jr jr_009_4B24

jr_009_4B24:
    ld e, c

jr_009_4B25:
    ld [bc], a
    inc d
    ld de, $4B91
    ld e, [hl]
    add hl, bc
    add hl, sp
    ld d, d
    ld h, l
    ld a, [de]

jr_009_4B30:
    dec d

jr_009_4B31:
    ld de, $4B2D
    jr jr_009_4B47

    dec c
    ld c, e
    ld b, $11
    add a
    ld c, e
    ld d, l
    ld de, $4AFD
    db $10
    ld de, $4AFD
    jr nz, jr_009_4B57

    dec l

jr_009_4B47:
    ld c, e
    ld [$FD11], sp
    ld c, d
    ld [hl-], a
    nop
    ld e, c
    ld bc, $4519
    ld [hl+], a
    rra
    or e
    inc [hl]
    and c

jr_009_4B57:
    ld [bc], a
    sub a
    or e
    ld sp, $01C7
    or e
    inc sp
    rst $00
    ld bc, $5869
    ld a, b
    inc d
    ld l, b
    ld bc, $1354
    ld h, a
    ld a, $4C
    ld l, e
    add [hl]
    ld l, d
    ld a, [hl+]
    ld d, b
    ld d, d
    inc l
    ld l, h
    ld e, e
    ld c, h
    dec b
    nop
    ld hl, sp+$4A
    ld de, $0D22
    call nc, $0900
    sbc $4B
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld de, $2B23
    call nc, $0900
    dec e
    ld c, h
    add hl, bc
    or [hl]
    ld c, l
    dec b
    inc bc
    ld hl, sp+$4A
    ld a, [bc]
    inc hl
    inc h
    call nc, $0930
    ld a, b
    ld c, h
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    inc c
    inc hl
    ld h, $D4
    ld h, b
    add hl, bc
    add hl, bc
    ld c, l
    add hl, de
    add sp, $46
    ld l, [hl]
    jr nc, jr_009_4BC2

    ret nc

    ld b, e
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_009_4BCA

    and b
    ld [hl], l
    nop
    add e
    nop

jr_009_4BC2:
    ld l, [hl]
    ld a, [hl+]
    dec c
    add b
    ld e, b
    nop
    add [hl]
    nop

jr_009_4BCA:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b
    adc b
    dec bc
    inc hl
    ld [hl], e
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld h, e
    ld bc, $1415
    ld a, l
    ld e, h
    jr nc, jr_009_4BFA

    xor e
    ld e, l
    nop
    nop
    ld h, e
    inc bc
    dec d
    inc d
    and c
    ld e, l
    jr nc, jr_009_4C06

    xor e
    ld e, l
    nop
    nop
    ld h, e
    add hl, bc
    dec d
    inc d

jr_009_4BFA:
    ld a, l
    ld e, h
    ld h, b
    inc d
    sub a
    ld e, l
    jr nz, jr_009_4C16

    db $DD
    ld e, l
    jr nz, jr_009_4C1A

jr_009_4C06:
    ret


    ld e, l
    ld [$5E00], sp
    add hl, bc
    ret z

    ld d, b
    ld h, l
    dec d
    ld e, c
    ld a, [bc]
    ld h, e
    inc c
    ld e, [hl]
    add hl, bc

jr_009_4C16:
    jp nc, $1451

    inc d

jr_009_4C1A:
    and c
    ld e, l
    ld b, l
    ld h, e
    ld bc, $1515
    ld a, [$2877]
    dec d
    ld l, [hl]
    ld a, b
    nop
    nop
    ld h, e
    inc bc
    dec d
    dec d
    ld e, d
    ld a, b
    jr z, jr_009_4C46

    ld l, [hl]
    ld a, b
    nop
    nop
    ld h, e
    dec c
    dec d
    dec d
    ld a, [$1077]
    dec d
    ld e, d
    ld a, b
    db $10
    dec d
    add d
    ld a, b
    stop
    dec d

jr_009_4C46:
    dec d
    ld l, [hl]
    ld a, b
    nop
    nop
    ld h, e
    add hl, bc
    dec d
    dec d
    ld a, [$2877]
    dec d
    add d
    ld a, b
    nop
    nop
    ld h, e
    ld a, [bc]
    ld b, e
    jr @+$60

    add hl, bc
    ei
    ld d, b
    ld h, e
    dec bc
    dec d
    dec d
    ld a, [bc]
    ld a, b
    ld h, b
    dec d
    ld h, h
    ld a, b
    nop
    nop
    dec c
    nop
    nop
    nop
    nop
    ld [$5F01], sp
    inc bc
    ld [bc], a
    ld e, c
    inc c
    ld b, l
    dec d
    ld de, $4B1D
    jr nz, jr_009_4C8F

    dec l
    ld c, e
    jr nz, jr_009_4C93

    dec e
    ld c, e
    jr nz, jr_009_4C97

    dec l
    ld c, e
    jr nz, jr_009_4C9B

    dec e
    ld c, e
    jr nz, jr_009_4C9F

    ld a, l

jr_009_4C8F:
    ld c, e
    stop
    ld e, [hl]

jr_009_4C93:
    add hl, bc
    jp nz, Jump_009_654D

jr_009_4C97:
    ld bc, $1115
    sbc e

jr_009_4C9B:
    ld c, e
    ld [$5E00], sp

jr_009_4C9F:
    add hl, bc
    ld hl, sp+$4D
    ld h, l
    ld [bc], a
    ld e, [hl]
    add hl, bc
    dec l
    ld c, [hl]
    ld h, l
    inc bc
    ld e, [hl]
    add hl, bc
    ld d, d
    ld c, [hl]
    ld h, l
    inc b
    ld e, c
    ld bc, $0263
    dec d
    ld de, $4AFD
    db $10
    ld de, $4BA5
    db $10
    ld de, $4BAF
    db $10
    ld de, $4B7D
    stop
    ld h, e
    inc b
    inc d
    ld de, $4BC3
    ld h, e
    dec b
    dec d
    ld de, $4B2D
    db $10
    ld de, $4B9B
    nop
    nop
    ld h, e
    ld b, $15
    ld de, $4B1D
    db $10
    ld de, $4B7D
    nop
    nop
    ld h, l
    db $10
    inc d
    ld de, $4B9B
    ld h, e
    ld [$1114], sp
    sbc e
    ld c, e
    ld e, [hl]
    add hl, bc
    or c
    ld d, b
    dec d
    ld de, $4B0D
    jr nz, jr_009_4D0B

    dec l
    ld c, e
    sub [hl]
    ld de, $4B87
    nop
    nop
    ld e, a
    ld [bc], a
    ld [bc], a
    ld e, c
    add hl, bc
    add hl, de
    ld b, l
    inc d
    inc de

jr_009_4D0B:
    rst $10
    ld l, a
    ld h, e
    ld bc, $1314
    pop hl
    ld l, a
    ld e, [hl]
    add hl, bc
    ld [hl], l
    ld c, [hl]
    add a
    ld [$0001], sp
    nop
    ld e, a
    nop
    ld [bc], a
    ld e, c
    ld [bc], a
    ld e, [hl]
    add hl, bc
    add l
    ld c, [hl]
    ld h, l
    ld b, $14
    inc de
    rst $10
    ld l, a
    ld b, e
    ld [$095E], sp
    and a
    ld c, [hl]
    ld h, l
    rlca
    ld e, c
    inc bc
    ld b, e
    db $10
    ld e, [hl]
    add hl, bc
    jp $5F4E


    ld bc, $1502
    inc de
    ld h, e
    ld l, a
    db $10
    inc de
    db $EB
    ld l, a
    stop
    ld e, [hl]
    add hl, bc
    call nc, $654E
    add hl, bc
    ld e, c
    inc b
    ld b, e
    jr nz, jr_009_4DB1

    add hl, bc
    db $E4
    ld c, [hl]
    ld h, l
    ld a, [bc]
    ld e, [hl]
    add hl, bc
    push af
    ld c, [hl]
    inc d
    inc de
    pop hl
    ld l, a
    ld e, c
    dec b
    ld h, l
    dec bc
    ld e, [hl]
    add hl, bc
    ld e, l
    ld c, a
    ld h, l
    inc c
    ld e, [hl]
    add hl, bc
    ld l, d
    ld c, a
    ld h, l
    dec c
    ld e, [hl]
    add hl, bc
    sbc a
    ld c, a
    ld e, c
    ld b, $43
    ld [$1314], sp
    db $EB
    ld l, a
    ld h, l
    ld c, $14
    inc de
    pop hl
    ld l, a
    ld e, [hl]
    add hl, bc
    ret z

    ld c, a
    ld h, l
    rrca
    ld e, [hl]
    add hl, bc
    add sp, $4F
    ld h, l
    db $10
    ld e, c
    rlca
    ld e, [hl]
    add hl, bc
    inc l
    ld d, b
    ld h, l
    ld de, $095E
    dec a
    ld d, b
    ld h, l
    ld [de], a
    inc d
    inc de
    db $EB
    ld l, a
    ld e, [hl]
    add hl, bc
    ld c, [hl]
    ld d, b
    ld h, l
    inc de
    dec d
    inc de
    ld d, e
    ld l, a
    stop
    ld e, c
    ld [$1315], sp
    ld [hl], e

jr_009_4DB1:
    ld l, a
    ld h, h
    nop
    add hl, de
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    add hl, bc
    ld e, l
    ld d, e
    ld c, b
    dec d
    xor d
    ld a, b
    and d
    jr z, jr_009_4E21

    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_009_4E36

    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_009_4E49

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    rst $38
    ld l, [hl]
    ld l, a
    ld [hl], h
    jr nz, jr_009_4E4E

    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_009_4E58

    ld l, a
    cp $67
    ld l, a
    jr nz, jr_009_4E53

    ld l, [hl]
    jr nz, jr_009_4E61

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $A245
    cp b
    ld b, h
    and [hl]
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, jr_009_4E7A

    ld l, a
    ld [hl], l
    jr nz, @+$6D

    ld l, [hl]
    ld l, a
    ld [hl], a
    rst $38
    ld c, c
    daa
    ld h, h
    jr nz, jr_009_4E7B

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_009_4E7C

    ld [hl], h
    cp $74
    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_009_4E88

    ld [hl], l
    ld [hl], e
    ld [hl], h

jr_009_4E21:
    rst $38
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld h, l
    ld hl, $FDFE
    and c
    ld e, e
    ld [bc], a
    ld b, l
    and d
    jr z, jr_009_4E8C

    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l

jr_009_4E36:
    jr nz, jr_009_4EA5

    ld h, c
    ld a, c
    ld h, d
    ld h, l
    ld l, $FE
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_009_4EBC

    ld l, a
    ld [hl], l
    jr nz, jr_009_4EB2

    ld l, [hl]
    ld l, a

jr_009_4E49:
    ld [hl], a
    jr nz, jr_009_4E79

    cp $FD

jr_009_4E4E:
    and c
    ld e, e
    inc bc
    ld b, l
    and d

jr_009_4E53:
    jr z, jr_009_4E98

    and [hl]
    ld d, a
    ld c, a

jr_009_4E58:
    ld c, a
    ld hl, $4620
    ld c, a
    ld d, e
    ld d, e
    ld c, c
    ld c, e

jr_009_4E61:
    ld hl, $4DFF
    ld e, c
    jr nz, @+$4F

    ld b, c
    ld c, c
    ld c, [hl]
    jr nz, jr_009_4EB9

    ld b, c
    ld c, [hl]
    ld hl, $FDFE
    and c
    ld e, e
    inc b
    ld b, l
    and d
    jr z, jr_009_4ED4

    and [hl]

jr_009_4E79:
    ccf

jr_009_4E7A:
    ccf

jr_009_4E7B:
    ccf

jr_009_4E7C:
    ccf
    ccf
    cp $FD
    and c
    ld e, a
    nop
    ld [bc], a
    ld b, l
    and d
    cp b
    ld b, h

jr_009_4E88:
    and [hl]
    ld d, h
    ld l, b
    ld h, c

jr_009_4E8C:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_009_4EFA

    ld [hl], h
    ld hl, $4920
    daa
    ld l, l
    rst $38

jr_009_4E98:
    ld h, a
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_009_4F08

    ld l, [hl]
    ld l, $FE
    db $FD
    and c
    ld e, e

jr_009_4EA5:
    ld b, $45
    and d
    jr z, jr_009_4F06

    and [hl]
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_009_4F19

jr_009_4EB2:
    ld l, a
    jr nz, jr_009_4F1E

    ld l, [hl]
    rst $38
    ld [hl], h
    ld l, b

jr_009_4EB9:
    ld h, l
    ld [hl], d
    ld h, l

jr_009_4EBC:
    ld hl, $FDFE
    and c
    ld e, e
    rlca
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E
    cp $FD
    and c
    ld e, a
    ld bc, $4502

jr_009_4ED4:
    and d
    jr z, jr_009_4F33

    and [hl]
    ld d, e
    ld [hl], h
    ld [hl], d
    ld h, c
    ld h, a
    ld l, $FE
    db $FD
    and c
    ld e, e
    add hl, bc
    ld b, l
    and d
    cp b
    ld b, h
    and [hl]
    ld b, [hl]
    ld l, a
    ld [hl], e
    ld [hl], e
    ld l, c
    ld l, e
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld a, [bc]
    ld b, l
    and d
    jr z, jr_009_4F3B

    ld e, c
    dec c

jr_009_4EFA:
    and [hl]
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    inc l
    jr nz, @+$4A

    ld b, l
    ld d, d

jr_009_4F06:
    ld b, l
    rst $38

jr_009_4F08:
    db $FD
    and [hl]
    ld d, h
    ld c, b
    ld b, l
    ld e, c
    jr nz, jr_009_4F51

    ld d, d
    ld b, l
    ld hl, $2020
    ld c, l
    ld h, l
    ld h, l
    ld [hl], h

jr_009_4F19:
    cp $FD
    and [hl]
    ld d, e
    ld [hl], h

jr_009_4F1E:
    ld [hl], d
    ld h, c
    ld h, a
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    rst $38
    db $FD
    and [hl]
    ld b, [hl]
    ld l, a
    ld [hl], e
    ld [hl], e
    ld l, c
    ld l, e
    ld l, $20
    ld b, [hl]
    ld l, a
    ld [hl], e

jr_009_4F33:
    ld [hl], e
    ld l, c
    ld l, e
    cp $FD
    and [hl]
    ld l, c
    ld [hl], e

jr_009_4F3B:
    jr nz, @+$4D

    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    jr nz, jr_009_4FB3

    ld h, [hl]
    rst $38
    db $FD
    and [hl]
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_009_4FA2

    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d

jr_009_4F51:
    ld l, [hl]
    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec bc
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, b
    ld l, c
    ld hl, $FDFE
    and c
    ld e, e
    inc c
    ld b, l
    and d
    jr z, jr_009_4FB0

jr_009_4F6D:
    and [hl]
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    daa
    ld [hl], e
    jr nz, jr_009_4FE0

    ld h, l
    ld [hl], d
    ld h, l
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_009_4FE6

    ld h, c
    ld h, e
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, l
    cp $55
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    rst $38
    ld c, l
    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec c
    ld b, l
    and d
    cp b
    ld b, h

jr_009_4FA2:
    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_009_5012

    ld h, [hl]
    jr nz, jr_009_501F

    ld l, b
    ld h, l
    daa
    ld [hl], e

jr_009_4FB0:
    rst $38
    ld h, a
    ld l, a

jr_009_4FB3:
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, @+$4B

    daa
    ld l, l
    cp $67
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld c, $45
    ld b, e
    jr nz, jr_009_4F6D

    jr z, jr_009_5029

    and [hl]
    ld c, c
    ld [hl], e
    jr nz, jr_009_5025

    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    rst $38
    ld [hl], e
    ld [hl], b
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, a
    ld [hl], d
    ld h, l

jr_009_4FE0:
    ld h, h
    ccf
    cp $FD
    and c
    ld e, e

jr_009_4FE6:
    rrca
    ld b, l
    and d
    jr z, jr_009_502E

    and [hl]
    ld e, c
    ld b, l
    ld b, c
    ld c, b
    ld hl, $4220
    ld e, c
    jr nz, jr_009_5043

    ld b, l
    ld hl, $57FF
    ld c, a
    ld c, a
    ld c, a
    ld hl, $FDFE
    and d
    jr z, jr_009_505F

    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    jr z, @+$45

jr_009_5012:
    and [hl]
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, jr_009_505D

    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    rst $38
    ld h, c
    ld [hl], b

jr_009_501F:
    ld [hl], b
    ld [hl], d
    ld l, a
    halt
    ld h, l
    ld h, h

jr_009_5025:
    ld hl, $FDFE
    and c

jr_009_5029:
    ld e, e
    db $10
    ld b, l
    and d
    cp b

jr_009_502E:
    ld b, h
    and [hl]
    ld c, b
    ld h, l
    jr nz, jr_009_5098

    ld l, c
    ld h, h
    ccf
    cp $FD
    and c
    ld e, e
    ld de, $A245
    sbc b
    ld b, c
    and [hl]
    ld c, b
    ld h, l

jr_009_5043:
    jr nz, jr_009_50A9

    ld l, c
    ld h, h
    ccf
    cp $FD
    and c
    ld e, e
    ld [de], a
    ld b, l
    and d
    jr z, jr_009_50AD

    and [hl]
    ld c, b
    ld h, l
    jr nz, jr_009_50BE

    ld h, c
    ld [hl], e
    ld l, $20
    ld d, e
    ld [hl], h
    ld [hl], d

jr_009_505D:
    ld h, c
    ld h, a

jr_009_505F:
    inc l
    rst $38
    ld l, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_009_50DB

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_009_50E0

    ld l, a
    cp $67
    ld l, a
    ld l, $20
    ld c, h
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    rst $38
    ld l, h
    ld h, l
    ld h, c
    halt
    ld h, l
    jr nz, jr_009_50D2

    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    cp $74
    ld l, a
    jr nz, @+$65

    ld l, a
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld [hl], h
    ld h, l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    cp $63

jr_009_5098:
    ld l, b
    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], e
    jr nz, jr_009_510C

    ld l, [hl]
    rst $38
    ld [hl], b
    ld h, l
    ld h, c
    ld h, e

jr_009_50A9:
    ld h, l
    ld l, $FE
    db $FD

jr_009_50AD:
    and c
    ld e, e
    inc de
    ld b, l
    and d
    cp b
    ld b, h
    and [hl]
    ld b, c
    ld l, h
    ld l, h
    jr nz, @+$74

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h

jr_009_50BE:
    ld l, $2E
    ld l, $FE
    db $FD
    and c
    ld e, a
    ld [bc], a
    ld [bc], a
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_009_513C

    ld l, a
    ld l, a

jr_009_50D2:
    ld l, e
    ld [hl], e
    jr nz, @+$6E

    ld l, c
    ld l, e
    ld h, l
    rst $38
    ld [hl], e

jr_009_50DB:
    ld l, a
    ld l, l
    ld h, l
    jr nz, @+$75

jr_009_50E0:
    ld l, a
    ld [hl], d
    ld [hl], h
    jr nz, jr_009_5154

    ld h, [hl]
    cp $6D
    ld h, c
    ld a, d
    ld h, l
    jr nz, jr_009_5156

    ld l, [hl]
    jr nz, jr_009_5164

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec d
    ld b, l
    and d
    jr z, jr_009_5141

    and [hl]
    ld b, c
    jr nz, jr_009_5176

    ld h, l
    ld [hl], e
    ld [hl], h
    ld hl, $43FF
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, c

jr_009_510C:
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld h, l
    cp $66
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_009_518A

    ld [hl], l
    ld a, d
    ld a, d
    ld l, h
    ld h, l
    ld [hl], e
    rst $38
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, a
    jr nz, jr_009_518C

    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, l
    cp $6E
    ld h, l
    ld a, b
    ld [hl], h
    jr nz, jr_009_51A6

    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_009_51AA

    ld h, [hl]

jr_009_513C:
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d

jr_009_5141:
    jr nz, @+$76

    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $FE
    ld b, d
    ld a, c
    jr nz, jr_009_51C4

    ld l, b
    ld h, l
    jr nz, @+$79

jr_009_5154:
    ld h, c
    ld a, c

jr_009_5156:
    inc l
    rst $38
    ld b, l
    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    jr nz, jr_009_51D3

    ld l, a
    ld l, h
    ld h, h
    jr nz, jr_009_51D1

jr_009_5164:
    ld h, l
    cp $61
    jr nz, jr_009_51E0

    ld l, b
    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_009_51DB

    ld l, a
    ld [hl], h
    rst $38
    ld h, c
    ld h, d
    ld l, a
    ld [hl], l

jr_009_5176:
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    cp $6D
    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_009_51F9

    ld l, a
    jr nz, jr_009_51F2

    ld h, [hl]

jr_009_518A:
    rst $38
    ld a, c

jr_009_518C:
    ld l, a
    ld [hl], l
    jr nz, @+$79

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_009_51F6

    jr nz, jr_009_51FF

    ld l, c
    ld l, [hl]
    ld [hl], h
    cp $61
    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_009_5216

    ld l, b
    ld h, l
    jr nz, jr_009_5214

jr_009_51A6:
    ld h, l
    ld a, b
    ld [hl], h
    rst $38

jr_009_51AA:
    ld l, a
    ld l, [hl]
    ld h, l
    inc l
    jr nz, jr_009_51F1

    ld d, e
    ld c, e
    jr nz, jr_009_5208

    ld c, b
    ld b, l
    cp $59
    ld b, c
    ld c, e
    ld c, c
    ld hl, $FDFE
    ld e, c
    dec bc
    and [hl]
    ld b, a
    ld l, a
    ld l, a

jr_009_51C4:
    ld h, h
    jr nz, @+$6E

    ld [hl], l
    ld h, e
    ld l, e
    ld hl, $FDFE
    and c
    ld e, a
    inc bc
    ld [bc], a

jr_009_51D1:
    ld b, l
    and d

jr_009_51D3:
    sbc b
    ld b, c
    and [hl]
    ld c, b
    ld [hl], l
    ld l, l
    ld [hl], b
    ld l, b

jr_009_51DB:
    ld hl, $4920
    daa
    ld l, h

jr_009_51E0:
    ld l, h
    rst $38
    ld h, [hl]
    ld l, c
    ld h, a
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_009_5259

    ld [hl], l
    ld [hl], h
    cp $77
    ld l, b
    ld h, c
    ld [hl], h

jr_009_51F1:
    daa

jr_009_51F2:
    ld [hl], e
    jr nz, jr_009_525C

    ld l, a

jr_009_51F6:
    ld l, c
    ld l, [hl]
    ld h, a

jr_009_51F9:
    jr nz, jr_009_526A

    ld l, [hl]
    rst $38
    ld [hl], e
    ld l, a

jr_009_51FF:
    ld l, a
    ld l, [hl]
    ld h, l
    ld [hl], d
    jr nz, jr_009_5274

    ld [hl], d
    cp $6C

jr_009_5208:
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $FE
    db $FD
    and c
    rlca
    nop
    inc [hl]
    ld h, e

jr_009_5214:
    add hl, bc
    nop

jr_009_5216:
    inc d
    and c
    ld e, l
    sbc e
    add hl, bc
    or b
    ld b, e
    or e
    ld sp, $00C7
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_009_52A3

    ld h, c
    ld [hl], e
    jr nz, @+$68

    ld [hl], l
    ld l, [hl]
    ld l, $FE
    db $FD
    and c
    ld e, e
    jr jr_009_527E

    and d
    cp b
    ld b, h
    and [hl]
    ld b, [hl]
    ld [hl], l
    ld l, [hl]
    ccf
    ld hl, $4920
    ld [hl], h
    jr nz, jr_009_52BE

    ld h, c
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    rst $38
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_009_52B4

    jr nz, jr_009_52C1

    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h

jr_009_5259:
    ld h, l
    cp $62

jr_009_525C:
    ld l, c
    ld [hl], h
    jr nz, jr_009_52C8

    ld h, c
    ld [hl], d
    ld h, h
    ccf
    cp $FD
    and c
    ld e, e
    add hl, de
    ld b, l

jr_009_526A:
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    ld l, $2E

jr_009_5274:
    ld l, $20
    ld h, c
    rst $38
    ld l, h
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l

jr_009_527E:
    jr nz, jr_009_52E2

    ld l, c
    ld [hl], h
    ld l, $2E
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld a, [de]
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
    jr nz, jr_009_530E

    ld l, c
    ld [hl], h
    ld l, b
    rst $38
    ld l, b
    ld l, c
    ld l, l
    ccf
    cp $FD
    and c
    ld e, e

jr_009_52A3:
    dec de
    ld b, l
    and d
    jr z, jr_009_52EB

    and [hl]
    ld b, d
    ld b, c
    ld b, h
    jr nz, @+$4F

    ld d, l
    ld d, e
    ld c, b
    ld d, d
    ld c, a
    ld c, a

jr_009_52B4:
    ld c, l
    ld d, e
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, e

jr_009_52BE:
    ld l, a
    jr nz, jr_009_5322

jr_009_52C1:
    ld l, l
    jr nz, jr_009_530D

    jr nz, jr_009_532A

    ld l, a
    ld l, [hl]

jr_009_52C8:
    ld h, l
    ccf
    cp $FD
    and d
    jr z, @+$45

    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], b
    ld h, l
    ld hl, $4920
    daa
    ld l, l
    rst $38
    ld [hl], h
    ld h, c
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_009_535B

jr_009_52E2:
    ld l, a
    ld [hl], l
    jr nz, jr_009_535A

    ld l, a
    cp $43
    ld h, c
    ld l, h

jr_009_52EB:
    ld h, h
    inc l
    jr nz, jr_009_5363

    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_009_5356

    ld h, c
    ld h, e
    ld l, e
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_009_534A

    ld h, c
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    inc l
    jr nz, jr_009_5378

    ld l, b
    ld h, l
    ld l, [hl]
    cp $74
    ld l, a
    jr nz, jr_009_535B

    ld [hl], d

jr_009_530D:
    ld l, a

jr_009_530E:
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_009_5374

    ld l, [hl]
    ld h, h
    rst $38
    ld b, c
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    ld l, c
    ld h, c
    ld l, h
    ld l, $FE
    ld b, c
    ld d, d

jr_009_5322:
    ld b, l
    jr nz, jr_009_537E

    ld c, a
    ld d, l
    jr nz, @+$54

    ld b, l

jr_009_532A:
    ld b, c
    ld b, h
    ld e, c
    ccf
    ld hl, $FDFE
    and c
    ld e, e
    inc e
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld h, l
    ld [hl], e
    ld hl, $FDFE
    and d
    jr z, jr_009_5385

    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_009_53B5

    ld h, l

jr_009_534A:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_009_53B6

    ld l, a
    ld hl, $57FE
    ld c, a
    ld c, a
    ld c, a

jr_009_5356:
    ld hl, $FDFE
    and c

jr_009_535A:
    ld e, e

jr_009_535B:
    dec e
    ld b, l
    ld b, [hl]
    rrca
    nop
    dec [hl]
    and b
    inc b

jr_009_5363:
    ld b, $FF
    rst $38
    add hl, bc
    call nc, Call_009_4653
    rrca
    nop
    dec [hl]
    and b
    ld [bc], a
    ld b, $FF
    rst $38
    add hl, bc
    ld [de], a

jr_009_5374:
    ld d, h
    ld b, [hl]
    rrca
    nop

jr_009_5378:
    dec [hl]
    and b
    ld bc, $FF06
    rst $38

jr_009_537E:
    add hl, bc
    ld l, d
    ld d, h
    and d
    jr z, jr_009_53C7

    and [hl]

jr_009_5385:
    ld d, h
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, jr_009_53FC

    ld h, c
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    ld h, c
    ld h, a
    ld [hl], e
    rst $38
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_009_5413

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_009_5415

    ld l, a
    cp $70
    ld l, h
    ld h, c
    ld a, c
    ld hl, $5220
    ld [hl], l
    ld l, [hl]
    jr nz, jr_009_541E

    ld h, c
    ld [hl], e
    ld [hl], h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l

jr_009_53B5:
    ld l, l

jr_009_53B6:
    jr nz, jr_009_5427

    ld [hl], d
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    cp $62
    ld h, l
    jr nz, jr_009_542B

    ld l, h
    ld h, c

jr_009_53C7:
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld h, l
    ld h, h
    ld hl, $FDFE
    ld c, b
    add hl, bc
    and b
    ld d, h
    and d
    jr z, jr_009_541A

    and [hl]
    ld d, a
    ld l, b
    ld l, c
    ld h, e
    ld l, b
    jr nz, jr_009_5456

    ld h, c
    ld a, c
    jr nz, jr_009_5447

    ld l, a
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, @+$69

    ld l, a
    ccf
    jr nz, jr_009_540E

    ld d, h
    ld l, b
    ld h, l
    cp $73
    ld h, c
    ld h, [hl]
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_009_5471

    ld h, c
    ld a, c

jr_009_53FC:
    inc l
    jr nz, jr_009_5468

    ld h, [hl]
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_009_5467

    ld [hl], e
    ld l, e
    jr nz, @+$6F

    ld h, l
    ld l, $FE
    db $FD

jr_009_540E:
    ld c, b
    add hl, bc
    and b
    ld d, h
    and d

jr_009_5413:
    jr z, jr_009_5458

jr_009_5415:
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    daa

jr_009_541A:
    ld h, h
    jr nz, jr_009_5491

    ld l, b

jr_009_541E:
    ld l, c
    ld l, [hl]
    ld l, e
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l

jr_009_5427:
    daa
    ld h, h
    jr nz, jr_009_548D

jr_009_542B:
    ld h, l
    jr nz, jr_009_548F

    cp $73
    ld h, c
    ld h, [hl]
    ld h, l
    jr nz, jr_009_54A8

    ld [hl], b
    ld l, a
    ld [hl], h
    jr nz, @+$6B

    ld l, [hl]
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    inc l
    jr nz, jr_009_54BB

    ld l, a
    ld [hl], l
    ld l, h

jr_009_5447:
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    cp $79
    ld l, a
    ld [hl], l
    ccf
    jr nz, @+$22

    ld d, a
    ld h, l
    ld l, h
    ld l, h

jr_009_5456:
    inc l
    rst $38

jr_009_5458:
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_009_54A0

    ld c, c
    ld c, [hl]
    daa
    ld d, h
    ld hl, $FDFE
    ld c, b

jr_009_5467:
    add hl, bc

jr_009_5468:
    and b
    ld d, h
    and d
    jr z, jr_009_54B0

    and [hl]
    ld d, h
    ld l, b
    ld h, l

jr_009_5471:
    jr nz, @+$69

    ld l, a
    ld h, c
    ld l, h
    jr nz, jr_009_54E1

    ld [hl], e
    jr nz, jr_009_54EE

    ld l, a
    rst $38
    ld h, e
    ld l, h
    ld l, a
    ld [hl], e
    ld h, l
    inc l
    jr nz, jr_009_54E7

    ld [hl], l
    ld [hl], h
    jr nz, jr_009_54FC

    ld l, a
    cp $68
    ld h, c

jr_009_548D:
    ld [hl], d
    ld h, h

jr_009_548F:
    jr nz, @+$76

jr_009_5491:
    ld l, a
    jr nz, jr_009_54FB

    ld h, l
    ld [hl], h
    jr nz, jr_009_550C

    ld l, a
    ld hl, $FDFE
    ld c, b
    add hl, bc
    and b
    ld d, h

jr_009_54A0:
    and c
    ld e, e
    ld bc, $B345
    ld sp, $01C7

jr_009_54A8:
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld [hl], d
    ld h, c
    ld l, [hl]

jr_009_54B0:
    ld h, a
    ld h, l
    inc l
    jr nz, @+$68

    ld l, h
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld a, c
    rst $38

jr_009_54BB:
    ld l, l
    ld [hl], l
    ld [hl], e
    ld l, b
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    ld [hl], e
    ld l, $2E
    ld l, $2E
    ld l, $2E
    cp $4D
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, $2E
    ld l, $FE
    db $FD
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d

jr_009_54E1:
    sbc b
    ld b, c
    ld c, d
    inc b
    add hl, bc
    pop af

jr_009_54E7:
    ld d, h
    add hl, bc
    db $10
    ld d, l
    add hl, bc
    ld b, l
    ld d, l

jr_009_54EE:
    add hl, bc
    ld a, a
    ld d, l
    and [hl]
    ld c, h
    ld l, a
    ld l, a
    ld [hl], b
    ld a, c
    inc l
    jr nz, @+$69

    ld [hl], d

jr_009_54FB:
    ld h, c

jr_009_54FC:
    ld [hl], e
    ld [hl], e
    dec l
    rst $38
    ld l, h
    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_009_557D

    ld h, l
    ld h, l
    ld h, h
    ld [hl], e
    ld l, $FE

jr_009_550C:
    db $FD
    ld c, c
    sbc c
    ld d, l
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, jr_009_5579

    ld [hl], d
    ld h, l
    jr nz, jr_009_5590

    ld l, b
    ld h, l
    rst $38
    ld [hl], a
    ld h, l
    ld l, c
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_009_5599

    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    cp $49
    jr nz, jr_009_559A

    ld h, c
    halt
    ld h, l
    jr nz, @+$67

    halt
    ld h, l
    ld [hl], d
    rst $38
    ld [hl], e
    ld h, l
    ld h, l
    ld l, [hl]
    ld hl, $FDFE
    ld c, c
    sbc c
    ld d, l
    and [hl]
    ld c, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_009_55B8

    ld l, a
    ld l, a
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_009_55B5

    ld [hl], h
    rst $38
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$72

    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_009_55CB

    ld [hl], e
    jr nz, @+$63

    cp $6C
    ld h, l
    ld [hl], e
    ld [hl], e
    ld l, a
    ld l, [hl]
    jr nz, jr_009_55D7

    ld l, [hl]
    jr nz, @+$01

    ld h, a
    ld h, l
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld [hl], d
    ld a, c

jr_009_5579:
    ld hl, $FDFE
    ld c, c

jr_009_557D:
    sbc c
    ld d, l
    and [hl]
    ld b, c
    ld l, h
    ld l, h
    dec l
    ld l, [hl]
    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, c
    ld l, h
    jr nz, @+$01

    ld l, b
    ld [hl], l
    ld l, h

jr_009_5590:
    ld h, c
    ld l, b
    ld l, a
    ld l, a
    ld [hl], b
    ld [hl], e
    ccf
    cp $FD

jr_009_5599:
    and c

jr_009_559A:
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
    add hl, bc
    or c
    ld d, l
    add hl, bc
    ld [$0955], a
    inc h
    ld d, [hl]
    and [hl]
    ld d, e
    ld [hl], b
    ld l, a

jr_009_55B5:
    ld l, [hl]
    ld h, a
    ld a, c

jr_009_55B8:
    inc l
    jr nz, @+$75

    ld l, a
    ld l, h
    ld l, c
    ld h, h
    jr nz, @+$01

    ld [hl], d
    ld l, a
    ld h, e
    ld l, e
    jr nz, jr_009_563E

    ld h, c
    ld l, h
    ld l, h
    ld [hl], e

jr_009_55CB:
    ld l, $2E
    ld l, $2E
    ld l, $FE
    ld c, b
    ld l, a
    ld [hl], a
    jr nz, jr_009_563A

    ld l, a

jr_009_55D7:
    ld h, l
    ld [hl], e
    jr nz, jr_009_564F

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$01

    ld [hl], a
    ld l, a
    ld [hl], d
    ld l, e
    ccf
    cp $FD
    ld c, c
    ld b, l
    ld d, [hl]
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_009_565B

    ld [hl], e
    jr nz, jr_009_5656

    jr nz, @+$01

    ld [hl], e
    ld l, h
    ld l, c
    ld l, l
    ld a, c
    inc l
    jr nz, jr_009_566F

    ld [hl], l
    ld [hl], d
    ld [hl], b
    ld l, h
    ld h, l
    cp $73
    ld [hl], l
    ld h, d
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_009_567F

    ld l, [hl]
    jr nz, jr_009_5633

    rst $38
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$79

    ld h, c
    ld l, h
    ld l, h
    ld l, $20
    cp $FD
    ld c, c
    ld b, l
    ld d, [hl]
    and [hl]
    ld b, l
    ld h, l
    ld h, l
    ld h, l
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld hl, $2021
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h

jr_009_5633:
    rst $38
    ld h, c
    ld l, l
    jr nz, jr_009_5681

    jr nz, @+$76

jr_009_563A:
    ld l, a
    ld [hl], l
    ld h, e
    ld l, b

jr_009_563E:
    ld l, c
    ld l, [hl]
    ld h, a
    ccf
    ccf
    cp $FD
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7

jr_009_564F:
    and d
    sbc b
    ld b, c
    ld c, d
    inc bc
    add hl, bc
    ld e, l

jr_009_5656:
    ld d, [hl]
    add hl, bc
    cp e
    ld d, [hl]
    add hl, bc

jr_009_565B:
    reti


    ld d, [hl]
    and [hl]
    ld c, c
    jr nz, jr_009_56D8

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_009_56CF

    ld h, c
    ld [hl], h
    ld h, l
    jr nz, @+$76

    ld l, a
    rst $38
    ld l, l

jr_009_566F:
    ld h, l
    ld h, l
    ld [hl], h
    jr nz, jr_009_56E8

    ld l, b
    ld h, l
    jr nz, @+$66

    ld [hl], d
    ld h, l
    ld h, c
    ld l, l
    cp $63
    ld [hl], d

jr_009_567F:
    ld h, l
    ld h, c

jr_009_5681:
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_009_56FB

    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld [hl], a
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_009_56F5

    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_009_5706

    ld [hl], l
    ld [hl], h
    cp $6F
    ld h, [hl]
    jr nz, jr_009_5712

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_009_570B

    ld [hl], l
    ld h, a
    ld h, l
    rst $38
    ld h, d
    ld l, c
    ld [hl], h
    jr nz, jr_009_571B

    ld h, [hl]
    jr nz, jr_009_5710

    ld l, [hl]
    ld l, c
    ld l, l
    ld l, c
    ld [hl], h
    ld h, l
    ld hl, $FDFE
    ld c, c
    inc b
    ld d, a
    and [hl]
    ld c, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, b
    inc l
    jr nz, jr_009_5735

    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld a, c
    rst $38
    ld h, e
    ld [hl], d
    ld a, c
    ld [hl], e

jr_009_56CF:
    ld [hl], h
    ld h, c
    ld l, h
    ld [hl], e
    ld hl, $FDFE
    ld c, c
    inc b

jr_009_56D8:
    ld d, a
    and [hl]
    ld c, c
    jr nz, @+$75

    ld h, l
    ld h, l
    jr nz, jr_009_5755

    ld [hl], a
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld a, c
    rst $38
    ld d, e

jr_009_56E8:
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    ld [hl], e
    jr nz, jr_009_5763

    ld [hl], h
    ld h, c
    ld [hl], d
    ld l, c
    ld l, [hl]

jr_009_56F5:
    ld h, a
    cp $62
    ld h, c
    ld h, e
    ld l, e

jr_009_56FB:
    jr nz, jr_009_575E

    ld [hl], h
    jr nz, jr_009_576D

    ld h, l
    ld hl, $FDFE
    and c
    or e

jr_009_5706:
    ld sp, $00C7
    ld b, l
    ld c, b

jr_009_570B:
    dec d
    nop
    ld b, b
    ld c, b
    dec d

jr_009_5710:
    ld b, $40

jr_009_5712:
    ld c, b
    dec d
    inc c
    ld b, b
    ld c, b
    dec d
    ld [de], a
    ld b, b
    ld c, b

jr_009_571B:
    dec d
    jr jr_009_575E

    ld bc, $0507
    ld c, b
    ld a, [de]
    ld a, [hl-]
    ld c, d
    ld bc, $0507
    ld c, b
    ld a, [de]
    ld a, [hl-]
    ld c, d
    ld b, [hl]
    rrca
    nop
    dec [hl]
    and b
    ld bc, $0005
    add hl, de

jr_009_5735:
    rst $20
    ld b, [hl]
    add e
    push af
    jp nc, $0907

    push af
    jp nc, $0719

    ld b, l
    ld b, [hl]
    rrca
    nop
    dec [hl]
    and b
    ld [bc], a
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e
    ld h, $D2
    ld b, $07
    ld h, $D2
    ld [de], a
    ld a, [bc]

jr_009_5755:
    ld b, l
    ld b, [hl]
    rrca
    nop
    dec [hl]
    and b
    inc b
    dec b
    nop

jr_009_575E:
    add hl, de
    rst $20
    ld b, [hl]
    add e
    sub [hl]

jr_009_5763:
    pop de
    dec b
    add hl, bc
    sub [hl]
    pop de
    dec c
    db $10
    ld b, l
    ld b, [hl]
    rrca

jr_009_576D:
    nop
    dec [hl]
    and b
    ld [$0005], sp
    add hl, de
    rst $20
    ld b, [hl]
    add e
    inc sp
    ret nc

    inc b
    ld [$D033], sp
    ld bc, $4515
    ld b, [hl]
    rrca
    nop
    dec [hl]
    and b
    jr nz, jr_009_578C

    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e

jr_009_578C:
    ei
    ret nc

    ld b, $06
    ei
    ret nc

    ld [$450B], sp
    ld b, l
    ld e, $1F
    ld e, h
    add hl, bc
    sbc l
    ld d, a
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
    jr nz, jr_009_57F3

    ld h, c
    ld l, l
    ld h, l
    ccf
    cp $FD
    and b
    and [hl]
    jr nz, jr_009_5804

    ld l, a
    ld l, $FF
    jr nz, jr_009_5814

    ld h, l
    ld [hl], e
    ld l, $FD
    and e
    ld [bc], a
    add hl, bc
    nop
    ld e, b
    add hl, bc
    rst $00
    ld d, a
    sbc d
    add hl, bc
    pop bc
    ld e, c
    sub [hl]
    ld bc, $A6A0
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_009_5828

    ld h, c
    halt
    ld h, l
    ld h, h
    jr nz, jr_009_584F

    ld l, a
    rst $38
    db $FD
    ld b, [hl]
    rrca
    ld bc, $C74A
    dec b
    nop
    add hl, bc
    or $57
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_009_5821

    ld l, $FE
    db $FD
    ld c, b

jr_009_57F3:
    add hl, bc
    nop
    ld e, b
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_009_582E

    ld l, $FE
    db $FD
    and c
    sbc e
    add hl, bc
    sub [hl]

jr_009_5804:
    ld d, a
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    ld d, $97
    or e

jr_009_580E:
    ld sp, $00C7
    or e
    inc sp
    rst $00

jr_009_5814:
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    inc d
    ld d, b
    inc de

jr_009_5821:
    ld h, a
    sbc a
    ld b, e
    ld l, e
    ld h, [hl]
    ld [hl], h
    ld a, [hl+]

jr_009_5828:
    ld b, l
    ld b, e
    dec l
    ld l, h
    cp h
    ld b, e

jr_009_582E:
    dec b
    nop
    inc [hl]
    ld h, e
    add hl, bc
    jr jr_009_580E

    jp nc, $1400

    cp a
    ld e, l
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    inc c
    add hl, de
    ld a, [$00D2]
    add hl, bc
    ld l, d
    ld e, b
    add hl, bc
    ld [hl], h
    ld h, c
    ld l, [hl]
    jr nc, jr_009_585C

jr_009_584F:
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

jr_009_585C:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    add hl, bc
    sub [hl]
    ld d, a
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    nop
    ld b, [hl]
    and b
    inc b
    add hl, de
    db $10
    ld b, a
    inc d
    dec d
    sub [hl]
    ld a, b
    ld b, l
    ld [hl+], a
    ld d, $97
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

jr_009_5888:
    ld a, b
    inc d
    ld l, b
    inc d
    ld d, b
    inc de
    ld h, a
    sbc a
    ld b, e
    ld l, e
    ld h, [hl]
    ld [hl], h
    ld a, [hl+]
    ld b, l
    ld b, e
    dec l
    ld l, h
    cp h
    ld b, e
    dec b
    nop
    ld hl, sp+$4A
    dec b
    dec e
    ld l, e
    db $D3
    nop
    add hl, bc
    rst $08
    ld e, b
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    rlca
    jr jr_009_5888

    jp nc, $0900

    xor $58
    add hl, bc
    ld sp, hl
    ld e, b
    ld l, [hl]
    jr nc, jr_009_58C9

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

jr_009_58C9:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    dec d
    inc d
    inc sp
    ld e, h
    jr nc, jr_009_58E9

    db $DD
    ld e, l
    nop
    nop
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
    add hl, bc
    sub [hl]
    ld d, a

jr_009_58E9:
    or e
    ld sp, $00C7
    ld b, l
    inc d
    dec d
    sub [hl]
    ld a, b
    ld h, l
    ld bc, $1514
    ld h, h
    ld a, b
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    add hl, bc
    dec b
    ld e, c
    ld c, b
    dec d
    xor d
    ld a, b
    or e
    ld sp, $01C7
    and d
    jr z, @+$45

    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_009_5978

    ld h, c
    ld h, e
    ld l, e
    ld hl, $54FF
    ld l, b
    ld h, l
    jr nz, jr_009_5979

    ld h, c
    ld l, e
    jr nz, @+$6B

    ld [hl], e
    jr nz, jr_009_598E

    ld l, h
    ld h, c
    ld h, h
    cp $74
    ld l, a
    jr nz, jr_009_59A2

    ld h, l
    ld h, l
    jr nz, jr_009_59AC

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
    ld bc, $099B
    sub [hl]
    ld d, a
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    ld d, $97
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
    inc d
    ld d, b
    inc de
    ld h, a
    sbc a
    ld b, e
    ld l, e
    ld h, [hl]
    ld [hl], h
    ld a, [hl+]
    ld b, l
    ld b, e
    dec l
    ld l, h
    cp h
    ld b, e
    dec b
    nop
    ld hl, sp+$4A
    rlca
    add hl, de
    push af
    jp nc, $0900

    xor d

jr_009_5978:
    ld e, c

jr_009_5979:
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    inc c
    add hl, de
    ld a, [$00D2]
    add hl, bc
    ld l, d
    ld e, b
    add hl, bc
    ld [hl], h
    ld h, c
    ld l, [hl]
    jr nc, jr_009_599B

jr_009_598E:
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

jr_009_599B:
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e

jr_009_59A2:
    add hl, bc
    sub [hl]
    ld d, a
    or e
    ld sp, $00C7
    ld b, l
    dec d
    inc d

jr_009_59AC:
    adc l
    ld e, h
    inc b
    nop
    ld d, $14
    ld e, l
    ld e, h
    jr nz, jr_009_59B6

jr_009_59B6:
    ld bc, $1400
    inc d
    cp a
    ld e, l
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    ld [hl+], a
    ld d, $97
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
    inc d

jr_009_59D6:
    ld d, b
    inc de
    ld h, a
    sbc a
    ld b, e
    ld l, e
    ld h, [hl]
    ld [hl], h
    ld a, [hl+]
    ld b, l
    ld b, e
    dec l
    ld l, h
    cp h
    ld b, e
    dec b
    nop
    ld hl, sp+$4A
    dec b
    dec e
    ld l, e
    db $D3
    nop
    add hl, bc
    ld hl, $195A
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    inc c
    add hl, de
    ld a, [$00D2]
    add hl, bc
    ld l, d
    ld e, b
    add hl, bc
    ld [hl], h
    ld h, c
    ld l, [hl]
    jr nc, jr_009_5A13

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

jr_009_5A13:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    add hl, bc
    sub [hl]
    ld d, a
    or e
    ld sp, $00C7
    ld b, l
    dec d
    inc d
    inc sp
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
    jr c, jr_009_59D6

    dec bc
    ld bc, $A138
    dec b
    ld bc, $35B3
    and c
    inc bc
    ld c, [hl]
    ld bc, $A136
    add hl, bc
    nop
    nop
    ld h, [hl]
    ld e, d
    add hl, bc
    ld bc, $6A00
    ld e, d
    add hl, bc
    ld [bc], a
    nop
    ld a, a
    ld e, d
    add hl, bc
    inc bc
    nop
    sub h
    ld e, d
    add hl, bc
    inc b
    nop
    sub h
    ld e, d
    add hl, bc
    dec b
    nop
    sub h
    ld e, d
    rst $38
    ld c, b
    add hl, bc
    sub h
    ld e, d
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
    inc hl
    ld d, b
    inc de
    ld c, b
    dec bc
    jr c, jr_009_5AEB

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
    inc hl
    ld d, b
    inc de
    ld c, b
    dec bc
    jr nc, jr_009_5B01

    ld bc, $0903
    ld c, b
    add hl, bc
    ld c, c
    ld e, c
    ld [hl+], a
    ld d, $97
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
    inc d
    ld d, b
    inc de
    ld h, a
    sbc a
    ld b, e
    ld l, e
    ld h, [hl]
    ld [hl], h
    ld a, [hl+]
    ld b, l
    ld b, e
    dec l
    ld l, h
    cp h
    ld b, e
    dec b
    nop
    ld hl, sp+$4A
    inc bc
    add hl, bc
    ld de, $00D1
    add hl, bc
    push af
    ld e, d
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
    add hl, bc
    ld a, [bc]
    ld e, e
    add hl, bc
    rrca
    ld e, e
    ld l, [hl]
    jr nc, jr_009_5AED

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
    inc b

jr_009_5AEB:
    inc c
    ld [hl], e

jr_009_5AED:
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
    adc l
    ld e, h
    inc b
    inc d
    ld e, l
    ld e, h
    jr nc, jr_009_5B15

jr_009_5B01:
    or l
    ld e, l
    jr nz, jr_009_5B05

jr_009_5B05:
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
    add hl, bc

jr_009_5B15:
    dec de
    ld e, e
    ld c, b
    dec d
    xor d
    ld a, b
    and d
    jr z, jr_009_5B61

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
    jr nz, jr_009_5BA7

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
    jr nz, jr_009_5BB4

    ld l, a
    rst $38
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_009_5BB7

    ld l, [hl]
    jr nz, @+$4D

    ld l, a
    ld [hl], d
    ld h, a
    cp $61
    ld l, [hl]
    ld h, h
    jr nz, jr_009_5BAE

    ld h, l
    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $099B
    sub [hl]
    ld d, a
    or e

jr_009_5B61:
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    ld d, $B3
    dec [hl]
    and c
    inc bc
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
    inc d
    ld d, b
    inc de
    ld h, a
    sbc a
    ld b, e
    ld l, e
    ld h, [hl]
    ld [hl], h
    ld a, [hl+]
    ld b, l
    ld b, e
    dec l
    ld l, h
    cp h
    ld b, e
    dec b
    nop
    ld hl, sp+$4A
    rla
    ld [de], a
    inc sp
    jp nc, $0900

    jp $195B


    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    add hl, de
    dec d
    adc a
    jp nc, $0900

    db $FD

jr_009_5BA7:
    ld e, e
    add hl, bc
    inc d
    ld e, h
    ld l, [hl]
    jr nc, jr_009_5BBB

jr_009_5BAE:
    ret nc

    ld b, e
    nop
    add b
    nop
    dec bc

jr_009_5BB4:
    nop
    dec bc
    ld [bc], a

jr_009_5BB7:
    adc b
    jr jr_009_5BD0

    ld [hl], e

jr_009_5BBB:
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
    adc l
    ld e, h
    inc b
    inc d
    ld e, l
    ld e, h
    jr nc, jr_009_5BE3

    or l

jr_009_5BD0:
    ld e, l
    jr nz, jr_009_5BD3

jr_009_5BD3:
    ld e, [hl]
    dec bc
    ld l, c
    ld l, l
    ld h, e
    ld bc, $1414
    db $DD
    ld e, l
    add b
    ld a, [de]
    ld a, [bc]
    ld bc, $3043

jr_009_5BE3:
    ld e, c
    ld [bc], a
    inc d
    inc d
    db $D3
    ld e, l
    add b
    dec b
    ld a, [bc]
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
    sbc e
    add hl, bc
    sub [hl]
    ld d, a
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
    add d
    ld a, b
    ld h, e
    inc bc
    inc d
    dec d
    sub [hl]
    ld a, b
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    add hl, bc
    jr nz, jr_009_5C78

    ld c, b
    dec d
    xor d
    ld a, b
    and d
    jr z, jr_009_5C66

    and [hl]
    ld d, a
    ld l, b
    ld l, c
    ld h, e
    ld l, b
    jr nz, jr_009_5CA2

    ld h, c
    ld a, c
    jr nz, jr_009_5CA3

    ld l, a
    rst $38
    ld h, a
    ld l, a
    ccf
    ccf
    jr nz, jr_009_5C90

    ld c, a
    ld d, l
    jr nz, jr_009_5C88

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
    sbc e
    add hl, bc
    sub [hl]
    ld d, a
    ld e, e
    ld bc, $2245
    ld d, $B6
    ld b, [hl]
    and b
    inc b
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

jr_009_5C66:
    inc d
    ld l, b
    inc d
    ld d, b
    inc de
    ld h, a
    sbc a
    ld b, e
    ld l, e
    ld h, [hl]
    ld [hl], h
    ld a, [hl+]
    ld b, l
    ld b, e
    dec l
    ld l, h
    cp h
    ld b, e

jr_009_5C78:
    dec b
    nop
    ld hl, sp+$4A
    db $10
    ld [bc], a
    ld c, h
    ret nc

    nop
    add hl, bc
    xor [hl]
    ld e, h
    add hl, de
    add sp, $46
    dec b

jr_009_5C88:
    ld [bc], a
    ld hl, sp+$4A
    rrca
    dec b
    and l
    ret nc

    nop

jr_009_5C90:
    add hl, bc
    ei
    ld e, h
    add hl, bc
    ld [hl], h
    ld h, c
    ld l, [hl]
    jr nc, jr_009_5CA6

    ret nc

    ld b, e
    nop
    add b
    nop
    dec bc
    nop
    dec bc
    ld [bc], a

jr_009_5CA2:
    adc b

jr_009_5CA3:
    ld de, $7306

jr_009_5CA6:
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
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    jr nz, jr_009_5CB8

jr_009_5CB8:
    ld e, c
    ld bc, $1415
    ld c, l
    ld e, h
    jr nz, jr_009_5CD4

    cp a
    ld e, l
    nop
    nop
    ld h, l
    add hl, de
    ld e, [hl]
    add hl, bc
    ld a, d
    ld e, l
    ld h, l
    ld a, [de]
    ld e, [hl]
    add hl, bc
    or [hl]
    ld e, l
    ld h, l
    dec de
    ld b, e
    db $10

jr_009_5CD4:
    dec d
    inc d
    and c
    ld e, l
    db $10
    inc d
    ret


    ld e, l
    stop
    ld e, [hl]
    add hl, bc
    db $DB
    ld e, l
    ld h, l
    rra
    dec d
    inc d
    ld e, l
    ld e, h
    inc c
    inc d
    and c
    ld e, l
    ld h, h
    nop
    sbc e
    add hl, bc
    sub [hl]
    ld d, a
    or e
    ld sp, $00C7
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    inc d
    dec d
    ld h, h
    ld a, b
    ld h, e
    ld bc, $3043
    dec d
    dec d
    and b
    ld a, b
    ld b, $15
    ld a, b
    ld a, b
    ld b, $15
    adc h
    ld a, b
    nop
    nop
    ld e, [hl]
    add hl, bc
    ld d, l
    ld e, l
    ld h, l
    dec de
    dec d
    dec d
    ld a, [bc]
    ld a, b
    ld [hl-], a
    dec d
    add d
    ld a, b
    nop
    nop
    ld h, l
    inc e
    inc d
    dec d
    ld h, h
    ld a, b
    ld e, [hl]
    add hl, bc
    ld [hl], $5E
    ld h, l
    dec e
    inc d
    dec d
    add d
    ld a, b
    ld e, [hl]
    add hl, bc
    ld l, [hl]
    ld e, [hl]
    ld h, l
    ld e, $5E
    add hl, bc
    ld [hl], c
    ld e, [hl]
    ld h, l
    rra
    dec d
    dec d
    ld a, [bc]
    ld a, b
    jr nc, jr_009_5D58

    jp c, $0877

    dec d
    ld a, [bc]
    ld a, b
    dec bc
    dec d
    jp c, $1877

    dec d
    ld a, [bc]
    ld a, b
    sub [hl]
    nop
    add hl, de
    ld b, l
    and d
    jr z, @+$45

jr_009_5D58:
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$79

    ld h, c
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_009_5DD9

    ld l, a
    rst $38
    ld h, d
    ld h, c
    ld h, h
    inc l
    jr nz, jr_009_5DE5

    ld h, c
    ld [hl], e
    jr nz, jr_009_5DDB

    ld [hl], h
    ccf
    cp $FD
    and c
    ld e, e
    add hl, de
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    jr nz, jr_009_5DE2

    ld l, h
    ld l, l
    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_009_5DEF

    ld l, a
    ld [hl], h
    rst $38
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld h, h
    jr nz, jr_009_5DF4

    jr nz, @+$65

    ld l, a
    ld [hl], l
    ld [hl], b
    ld l, h
    ld h, l
    cp $74
    ld l, c
    ld l, l
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_009_5E05

    ld [hl], l
    ld [hl], h
    jr nz, jr_009_5DF0

    rst $38
    ld l, l
    ld h, c
    ld h, h
    ld h, l
    jr nz, jr_009_5E17

    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld a, [de]
    ld b, l
    and d
    jr z, jr_009_5DFC

    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_009_5E36

    ld h, l
    rst $38
    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld l, $2E
    ld l, $FE
    ld d, h
    ld c, a
    jr nz, jr_009_5E1D

    ld b, c
    ld d, d
    ld c, a
    ld c, a
    ld c, l
    ld hl, $FDFE
    and c
    ld e, e

jr_009_5DD9:
    dec de
    ld b, l

jr_009_5DDB:
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld l, b
    ld a, c

jr_009_5DE2:
    jr nz, jr_009_5E48

    ld l, c

jr_009_5DE5:
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$79

    ld h, l
    rst $38
    ld [hl], e
    ld [hl], h

jr_009_5DEF:
    ld h, c

jr_009_5DF0:
    ld a, c
    jr nz, jr_009_5E67

    ld l, b

jr_009_5DF4:
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld l, [hl]
    cp $74

jr_009_5DFC:
    ld l, b
    ld h, l
    jr nz, @+$68

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    rst $38

jr_009_5E05:
    ld [hl], b
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ccf
    jr nz, jr_009_5E61

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_009_5E7B

    ld [hl], e
    cp $77
    ld l, b
    ld h, l

jr_009_5E17:
    ld [hl], d
    ld h, l
    jr nz, jr_009_5E92

    ld h, l
    daa

jr_009_5E1D:
    ld [hl], d
    ld h, l
    rst $38
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld l, l
    inc l
    jr nz, jr_009_5E88

    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    cp $61
    ld l, h
    ld l, h
    ld l, $FE
    db $FD
    and c
    ld e, e
    inc e
    ld b, l

jr_009_5E36:
    and d
    jr z, @+$45

    and [hl]
    ld d, a
    ld h, c
    ld l, h
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_009_5EAC

    ld [hl], e
    jr nz, jr_009_5EAD

    ld l, a
    ld l, a

jr_009_5E48:
    ld h, h
    rst $38
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, jr_009_5EC3

    ld l, b
    ld h, l
    jr nz, jr_009_5EC6

    ld l, a
    ld l, h
    ld h, l
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld l, $2E
    ld l, $2E

jr_009_5E61:
    ld l, $2E
    ld l, $2E
    ld l, $2E

jr_009_5E67:
    cp $FD
    and c
    and c
    ld e, e
    dec e
    ld b, l
    ld e, e
    ld e, $45
    and d
    jr z, jr_009_5EB7

    and [hl]
    ld c, a
    ld c, e
    ld hl, $4F20
    ld c, e

jr_009_5E7B:
    ld hl, $4C20
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    rst $38
    ld h, a
    ld l, a
    ld l, $20
    ld c, c

jr_009_5E88:
    daa
    ld l, l
    jr nz, @+$75

    ld [hl], l
    ld [hl], d
    ld h, l
    cp $45
    ld l, c

jr_009_5E92:
    ld h, h
    ld l, a
    ld l, [hl]
    jr nz, jr_009_5F00

    ld [hl], e
    rst $38
    ld [hl], a
    ld h, c
    ld l, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $FE
    db $FD
    ld e, e
    rra
    and c
    ld b, l
    ld [hl+], a
    ld d, $B3
    inc [hl]
    and c

jr_009_5EAC:
    inc bc

jr_009_5EAD:
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e

jr_009_5EB7:
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    inc d
    ld d, b
    inc de
    ld h, a

jr_009_5EC3:
    sbc a
    ld b, e
    ld l, e

jr_009_5EC6:
    ld h, [hl]
    ld [hl], h
    ld a, [hl+]
    ld b, l
    ld b, e
    dec l
    ld l, h
    cp h
    ld b, e
    dec b

jr_009_5ED0:
    nop
    ld hl, sp+$4A
    dec b
    inc e
    ld c, l
    db $D3
    nop
    add hl, bc
    scf
    ld e, a
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    dec b
    dec de
    cpl
    db $D3
    nop
    add hl, bc
    adc c
    ld e, a
    add hl, bc
    ld [hl], h
    ld h, c
    dec b
    inc bc
    ld hl, sp+$4A
    inc c
    jr jr_009_5ED0

    jp nc, $0930

    ld [$1960], sp
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A

jr_009_5F00:
    dec c
    rla
    cp a
    jp nc, $0956

    xor [hl]
    ld h, b
    add hl, de
    add sp, $46
    ld l, [hl]
    jr nc, jr_009_5F1B

    ret nc

    ld b, e
    nop
    add b
    nop
    ld l, [hl]
    ld h, $0D
    ld h, b
    ld e, l
    nop
    add e
    nop

jr_009_5F1B:
    ld l, [hl]
    ld a, [hl+]
    dec c
    jr nz, jr_009_5F9B

    ld h, b
    add l
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
    rlca
    jr jr_009_5FA2

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
    inc sp
    ld e, h
    jr nc, jr_009_5F51

    inc sp
    ld e, h
    db $10
    inc d
    sbc l
    ld e, h
    ld l, $00
    dec d
    inc d
    or l
    ld e, l
    nop
    nop
    ld e, c
    ld bc, $1965
    dec d
    inc d

jr_009_5F51:
    ld e, l
    ld e, h
    ld [$A114], sp
    ld e, l
    jr jr_009_5F6D

    ld a, l
    ld e, h
    ld [$BF14], sp
    ld e, l
    jr jr_009_5F75

    sbc l
    ld e, h
    ld [$C914], sp
    ld e, l
    db $10
    inc d
    db $DD
    ld e, l
    nop
    nop

jr_009_5F6D:
    ld e, a
    ld bc, $6503
    dec c
    inc d
    inc d
    or l

jr_009_5F75:
    ld e, l
    ld h, l
    inc de
    inc d
    inc d
    ret


    ld e, l
    ld e, [hl]
    add hl, bc
    dec hl
    ld h, l
    ld h, e
    ld [$0843], sp
    inc d
    inc d
    sub a
    ld e, l
    ld b, l
    dec d
    dec d
    jp c, $3477

    nop
    dec d
    dec d
    jp c, $1077

    dec d
    ld a, [bc]
    ld a, b
    ld b, $00
    ld d, $15

jr_009_5F9B:
    ld a, [bc]
    ld a, b
    jr nz, jr_009_5FA0

    nop

jr_009_5FA0:
    nop
    dec d

jr_009_5FA2:
    dec d
    ld a, b
    ld a, b
    nop
    nop
    ld h, e
    ld [bc], a
    dec d
    dec d
    ld a, [bc]
    ld a, b
    ld [$8C15], sp
    ld a, b
    ld b, $15
    ld e, d
    ld a, b
    ld b, $15
    add d
    ld a, b
    ld b, $15
    ld l, [hl]
    ld a, b
    ld b, $15
    sub [hl]
    ld a, b
    ld b, $15
    ld h, h
    ld a, b
    ld b, $15
    and b
    ld a, b
    ld b, $15
    ld a, b
    ld a, b
    ld b, $00
    ld h, l
    ld a, [de]
    inc d
    dec d
    and b
    ld a, b
    ld h, e
    ld [$1514], sp
    ld h, h
    ld a, b
    ld e, [hl]
    add hl, bc
    sub c
    ld h, l
    ld h, l
    rla
    dec d
    dec d
    ld a, [$0E77]
    dec d
    ld [$0677], a
    dec d
    and b
    ld a, b
    nop
    nop
    dec c
    nop
    nop
    nop
    nop
    ld [$071E], sp
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    sbc e
    add hl, bc
    sub [hl]
    ld d, a
    or e
    ld sp, $00C7
    ld b, l
    inc d
    ld de, $48D2
    ld h, e
    ld bc, $1115
    ld e, [hl]
    ld c, b
    jr @+$13

    jp nc, LCDCInterrupt

    nop
    ld h, e
    inc bc
    ld e, [hl]
    add hl, bc
    ld a, [hl-]
    ld h, d
    dec d
    ld de, $48E6
    jr jr_009_6035

    jp nc, LCDCInterrupt

    nop
    ld e, a
    nop
    ld [bc], a
    ld e, [hl]
    add hl, bc
    ld [hl], c
    ld h, d
    ld h, l
    dec b
    ld e, [hl]
    add hl, bc
    sub l
    ld h, d

jr_009_6035:
    dec d
    ld de, $485E
    ld b, $11
    jp nc, LCDCInterrupt

    nop
    ld h, l
    ld b, $5E
    add hl, bc
    ld [$6363], sp
    dec b
    inc d
    ld de, $48BE
    ld e, [hl]
    add hl, bc
    ld e, e
    ld h, e
    ld h, l
    add hl, bc
    ld e, c
    ld b, $65
    ld a, [de]
    dec d
    ld de, $485E
    ld b, $11
    jp nc, LCDCInterrupt

    nop
    ld h, l
    inc c
    dec d
    ld de, $485E
    inc b
    ld de, $48FA
    nop
    nop
    ld e, [hl]
    add hl, bc
    ld hl, $6564
    dec c
    ld e, [hl]
    add hl, bc
    ld c, e
    ld h, h
    ld h, l
    ld de, $1115
    ld c, [hl]
    ld c, b
    inc b
    ld de, $48C8
    nop
    nop
    ld e, [hl]
    add hl, bc
    nop
    ld h, l
    ld h, l
    inc d
    inc d
    ld de, $48D2
    ld e, [hl]
    add hl, bc
    ld b, l
    ld h, l
    dec d
    ld de, $484E
    db $10
    ld de, $485E
    jr z, jr_009_60AA

    call c, LCDCInterrupt
    nop
    ld e, a
    ld [bc], a
    ld [bc], a
    dec d
    ld de, $485E
    jr z, @+$13

    ld c, [hl]
    ld c, b
    ld b, b
    nop

jr_009_60AA:
    ld e, c
    ld [$4519], sp
    inc d
    ld de, $536A
    ld h, e
    ld bc, $1115
    sub $52
    ld [$F611], sp
    ld d, d
    jr @+$13

    ld l, d
    ld d, e
    nop
    nop
    ld e, [hl]
    add hl, bc
    add b
    ld h, c
    ld h, l
    ld bc, $1115
    or $52
    inc d
    ld de, $5392
    nop
    nop
    ld e, [hl]
    add hl, bc
    pop bc
    ld h, c
    ld h, l
    jr @+$16

    ld de, $536A
    ld h, l
    ld [bc], a
    ld e, c
    ld [bc], a
    ld e, [hl]
    add hl, bc
    or $61
    ld h, l
    inc bc
    ld e, c
    inc bc
    ld e, a
    ld bc, $1503
    ld de, $52D6
    ld [$9211], sp
    ld d, e
    nop
    nop
    ld e, [hl]
    add hl, bc
    ld a, [hl-]
    ld h, e
    ld h, l
    ld [$0559], sp
    ld h, e
    ld b, $14
    ld de, $5360
    ld e, [hl]
    add hl, bc
    ld a, b
    ld h, e
    ld h, l
    ld a, [bc]
    ld e, [hl]
    add hl, bc
    sbc a
    ld h, e
    ld h, l
    dec bc
    dec d
    ld de, $5346
    ld [$2611], sp
    ld d, e
    ld [de], a
    nop
    add a
    ld [$0100], sp
    nop
    dec d
    ld de, $5336
    inc c
    ld de, $5356
    nop
    nop
    ld e, [hl]
    add hl, bc
    ld c, $64
    ld h, l
    ld c, $14
    ld de, $537E
    ld e, [hl]
    add hl, bc
    ld e, l
    ld h, h
    ld h, l
    rrca
    ld e, [hl]
    add hl, bc
    add h
    ld h, h
    ld h, l
    db $10
    ld d, $11
    and $52
    stop
    ld bc, $1400
    ld de, $5360
    ld e, [hl]
    add hl, bc
    xor h
    ld h, h
    ld h, l
    ld [de], a
    inc d
    ld de, $5356
    ld e, [hl]
    add hl, bc
    rla
    ld h, l
    ld h, l
    dec d
    inc d
    ld de, $537E
    ld e, [hl]
    add hl, bc
    ld h, e
    ld h, l
    ld h, l
    ld d, $15
    ld de, $52D6
    ld [$F611], sp
    ld d, d
    ld c, h
    ld de, $52E6
    ld b, b
    nop
    add hl, de
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    add hl, bc
    and a
    ld h, l
    ld c, b
    dec d
    xor d
    ld a, b
    and d
    ld c, b
    ld b, [hl]
    and [hl]
    ld b, c
    ld l, b
    ld l, b
    inc l
    jr nz, @+$7B

jr_009_618A:
    ld l, a
    ld [hl], l
    jr nz, jr_009_61FB

    ld [hl], l
    ld [hl], e
    ld [hl], h
    rst $38
    ld h, d
    ld h, l
    jr nz, jr_009_61E9

    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    ld l, $20
    ld c, c
    daa
    ld l, l
    cp $47
    ld [hl], d
    ld h, l
    ld h, a
    ld h, c
    inc l
    jr nz, jr_009_620A

    ld l, [hl]
    ld h, h
    jr nz, jr_009_6221

    ld l, b
    ld l, c
    ld [hl], e
    rst $38
    ld l, c
    ld [hl], e
    jr nz, jr_009_620B

    ld h, c
    ld l, h
    ld l, e
    ld h, c
    ld l, [hl]
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $A245
    ret c

    ld b, a
    and [hl]
    ld c, [hl]
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_009_623F

    ld l, a
    jr nz, jr_009_623B

    ld h, l
    ld h, l
    ld [hl], h
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    ld l, $20
    ld c, b
    ld l, a
    ld [hl], a
    daa
    ld [hl], e
    jr nz, jr_009_6247

    ld [hl], h
    cp $FD
    ld e, e
    jr jr_009_618A

    ld h, a
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a

jr_009_61E9:
    inc l
    jr nz, jr_009_6245

    ld h, c
    ld l, e
    ld l, c
    ccf
    cp $FD
    and c
    ld e, e
    ld [bc], a
    ld b, l
    and d
    jr z, jr_009_623C

    and [hl]
    ld d, a

jr_009_61FB:
    ld c, a
    ld c, a
    ld hl, $4920
    daa
    ld l, l
    jr nz, jr_009_6274

    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld a, c
    rst $38

jr_009_620A:
    ld [hl], e

jr_009_620B:
    ld [hl], h
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, h
    jr nz, jr_009_6279

    ld [hl], l
    ld l, h
    ld l, h
    jr nz, jr_009_6287

    ld h, [hl]
    cp $6D
    ld [hl], l
    ld [hl], e
    ld l, b
    ld [hl], d
    ld l, a
    ld l, a

jr_009_6221:
    ld l, l
    ld [hl], e
    ld l, $FF
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_009_62A2

    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_009_6277

    ld c, a
    ld c, a
    ld b, h
    ld hl, $FDFE
    and c
    ld e, e
    inc bc
    ld b, l
    and d

jr_009_623B:
    ld c, b

jr_009_623C:
    ld b, [hl]
    and [hl]
    ld e, c

jr_009_623F:
    ld l, a
    ld [hl], l
    jr nz, jr_009_62B7

    ld [hl], a
    ld l, a

jr_009_6245:
    jr nz, jr_009_62B1

jr_009_6247:
    ld [hl], l
    ld [hl], e
    ld [hl], h
    rst $38
    ld h, e
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_009_62B7

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_009_62CA

    ld l, b
    ld h, l
    cp $55
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    rst $38
    ld c, l
    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    ccf
    cp $FD
    and c
    ld e, a
    nop
    ld [bc], a
    ld b, l
    and d
    sbc b
    ld b, c

jr_009_6274:
    and [hl]
    ld e, c
    ld h, l

jr_009_6277:
    ld h, c
    ld l, b

jr_009_6279:
    inc l
    jr nz, @+$6A

    ld l, a
    ld [hl], a
    daa
    ld h, h
    jr nz, jr_009_62FB

    ld l, a
    ld [hl], l
    rst $38
    ld l, e
    ld l, [hl]

jr_009_6287:
    ld l, a
    ld [hl], a
    jr nz, jr_009_62FF

    ld l, b
    ld h, c
    ld [hl], h
    ccf
    cp $FD
    and c
    ld e, e
    dec b
    ld b, l
    and d
    ld c, b
    ld b, [hl]
    and [hl]
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    jr nz, jr_009_62E2

    ld [hl], e

jr_009_62A2:
    ld l, b
    ld h, a
    ld h, c
    ld [hl], d
    rst $38
    ld [hl], h
    ld l, a
    ld l, h
    ld h, h
    jr nz, jr_009_631A

    ld h, l
    jr nz, jr_009_6329

    ld l, a

jr_009_62B1:
    ld [hl], l
    daa
    ld h, h
    cp $62
    ld h, l

jr_009_62B7:
    jr nz, jr_009_631D

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$76

    ld l, b

jr_009_62C0:
    ld h, l
    rst $38
    ld l, l
    ld h, c
    ld a, d
    ld h, l
    jr nz, jr_009_632B

    ld l, c
    ld [hl], d

jr_009_62CA:
    ld h, e
    ld [hl], l
    ld l, c
    ld [hl], h
    cp $73
    ld l, a
    ld l, a
    ld l, [hl]
    inc l
    jr nz, jr_009_6349

    ld l, a
    jr nz, @+$4B

    rst $38
    ld [hl], a
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_009_6356

jr_009_62E2:
    ld l, a
    jr nz, jr_009_6352

    ld h, c
    ld l, e
    ld h, l
    cp $73
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_009_6368

    ld l, a
    ld [hl], l
    jr nz, jr_009_6359

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l

jr_009_62FB:
    jr nz, jr_009_636D

    ld l, h
    ld h, c

jr_009_62FF:
    ld h, e
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld b, $45
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld l, $FE
    db $FD
    ld e, e
    add hl, de
    ld b, e
    jr nz, jr_009_62C0

jr_009_631A:
    ld d, e
    ld [hl], l
    ld [hl], d

jr_009_631D:
    ld h, l
    jr nz, jr_009_6389

    ld [hl], e
    jr nz, @+$79

    ld h, c
    ld [hl], d
    ld l, l
    rst $38
    ld h, c
    ld [hl], d

jr_009_6329:
    ld l, a
    ld [hl], l

jr_009_632B:
    ld l, [hl]
    ld h, h
    jr nz, jr_009_6397

    ld h, l
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, a
    ld bc, $4503
    and d
    ret c

    ld b, a
    and [hl]
    ld d, d
    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ccf
    jr nz, jr_009_6367

    ld c, [hl]
    ld h, l

jr_009_6349:
    halt
    ld h, l
    ld [hl], d
    rst $38
    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, c
    ld h, e

jr_009_6352:
    ld h, l
    ld h, h
    ld l, $FE

jr_009_6356:
    db $FD
    and c
    ld e, e

jr_009_6359:
    ld [$A245], sp
    ld c, b
    ld b, [hl]
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], b
    ld h, l
    inc l
    jr nz, jr_009_63DF

    ld l, a

jr_009_6367:
    ld [hl], l

jr_009_6368:
    rst $38
    ld [hl], a
    ld l, a
    ld [hl], l
    ld l, h

jr_009_636D:
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld e, e
    add hl, bc
    ld b, l
    and d
    ret c

    ld b, a
    and [hl]
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_009_63F8

    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld [hl], e

jr_009_6389:
    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_009_6406

    ld l, a
    cp $6D
    ld h, l
    ld h, c

jr_009_6397:
    ld l, [hl]
    ccf
    cp $FD
    and c
    ld e, e
    ld a, [bc]
    ld b, l
    and d
    ld c, b
    ld b, [hl]
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $FE
    db $FD
    ld e, e
    ld a, [de]
    and [hl]
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_009_6424

    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_009_6424

    ld l, c
    ld l, l
    ld l, $FF
    ld c, b
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_009_6430

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, @+$63

    jr nz, jr_009_642F

    ld l, c
    ld [hl], h
    cp $6A
    ld h, l
    ld h, c
    ld l, h
    ld l, a
    ld [hl], l
    ld [hl], e
    jr nz, jr_009_643B

    ld h, l
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l

jr_009_63DF:
    rst $38
    ld l, b
    ld h, l
    jr nz, jr_009_6447

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    cp $70
    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_009_6466

    ld l, b
    ld h, l
    jr nz, @+$45

    ld h, c
    ld l, h

jr_009_63F8:
    ld h, h
    rst $38
    ld l, l
    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    jr nz, @+$6A

    ld l, c
    ld l, l
    ld [hl], e
    ld h, l
    ld l, h

jr_009_6406:
    ld h, [hl]
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec bc
    ld b, l
    and d
    ret c

    ld b, a
    and [hl]
    ld c, c
    jr nz, jr_009_6456

    ld c, l
    jr nz, jr_009_6466

    ld c, a
    ld d, h
    ld hl, $FDFE
    and c
    ld e, e
    inc c
    ld b, l
    and d
    ld c, b
    ld b, [hl]

jr_009_6424:
    and [hl]
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, jr_009_6492

    ld h, l
    jr nz, jr_009_64A4

    ld h, c
    ld l, [hl]

jr_009_642F:
    ld [hl], h

jr_009_6430:
    ld [hl], e
    jr nz, jr_009_64A7

    ld l, a
    rst $38
    ld [hl], e
    ld h, l
    ld h, l
    jr nz, jr_009_64A3

    ld h, [hl]

jr_009_643B:
    jr nz, jr_009_64B6

    ld l, a
    ld [hl], l
    cp $66
    ld h, c
    ld l, c
    ld l, h
    ld l, $FE
    db $FD

jr_009_6447:
    and c
    ld e, e
    dec c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    jr nz, jr_009_64C9

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h

jr_009_6456:
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld c, $45
    and d
    ret c

    ld b, a
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    daa

jr_009_6466:
    ld [hl], d
    ld h, l
    jr nz, jr_009_64DA

    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld a, c
    rst $38
    ld [hl], h
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld l, $20

Jump_009_6477:
    ld d, d
    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ld l, $FE
    db $FD
    and c
    ld e, e
    rrca
    ld b, l
    and d
    ld c, b
    ld b, [hl]
    and [hl]
    ld b, c
    ld [hl], e
    ld l, b
    ld h, a
    ld h, c
    ld [hl], d
    jr nz, jr_009_6504

    ld l, a
    ld l, h

jr_009_6492:
    ld h, h
    jr nz, jr_009_6502

    ld h, l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_009_6514

    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_009_6507

    ld h, c

jr_009_64A3:
    ld [hl], e

jr_009_64A4:
    ld a, c
    ld l, $FE

jr_009_64A7:
    db $FD
    and c
    ld e, e
    db $10
    ld b, l
    and d
    ret c

    ld b, a
    and [hl]
    ld c, c
    jr nz, jr_009_652A

    ld l, a
    ld [hl], l
    ld l, h

jr_009_64B6:
    ld h, h
    jr nz, jr_009_6521

    ld h, c
    halt
    ld h, l
    rst $38
    ld [hl], b
    ld h, c
    ld [hl], e
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_009_6539

    ld l, b
    ld h, l
    ld l, l
    inc l

jr_009_64C9:
    cp $62
    ld [hl], l
    ld [hl], h
    jr nz, jr_009_6518

    jr nz, jr_009_6533

    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld h, h
    rst $38
    ld l, l
    ld a, c
    ld [hl], e

jr_009_64DA:
    ld h, l
    ld l, h
    ld h, [hl]
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_009_6556

    ld l, b
    ld h, l
    cp $6C
    ld h, c
    halt
    ld h, c
    jr nz, jr_009_654C

    ld l, [hl]
    ld h, h
    jr nz, jr_009_6557

    ld h, c
    ld h, h
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_009_6569

    ld [hl], h
    ld l, a
    ld [hl], b
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld de, $A245
    ld c, b

jr_009_6502:
    ld b, [hl]
    and [hl]

jr_009_6504:
    ld d, e
    ld [hl], l
    ld [hl], d

jr_009_6507:
    ld h, l
    jr nz, jr_009_6583

    ld l, a
    ld [hl], l
    jr nz, jr_009_6572

    ld l, c
    ld h, h
    ld l, $FE
    db $FD
    and c

jr_009_6514:
    ld e, e
    ld [de], a
    ld b, l
    and d

jr_009_6518:
    ret c

    ld b, a
    and [hl]
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_009_6595

jr_009_6521:
    ld [hl], d
    ld [hl], l
    ld h, l
    ld hl, $FDFE
    and c
    ld e, e
    inc de

jr_009_652A:
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    daa
    ld l, h
    ld l, h

jr_009_6533:
    jr nz, jr_009_6597

    ld h, l
    rst $38
    ld h, e
    ld h, c

jr_009_6539:
    ld [hl], d
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld l, $FE
    db $FD
    and c
    ld e, e
    inc d
    ld b, l
    and d
    ld c, b
    ld b, [hl]
    and [hl]
    ld b, a
    ld l, a
    ld l, a

jr_009_654C:
    ld h, h

Jump_009_654D:
    ld hl, $4E20
    ld l, a
    ld [hl], a
    jr nz, jr_009_65BB

    ld h, l
    ld [hl], h

jr_009_6556:
    rst $38

jr_009_6557:
    ld h, a
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $FDFE
    and c
    ld e, e
    dec d

Call_009_6562:
    ld b, l
    and d
    ret c

    ld b, a
    and [hl]
    dec l
    ld h, a

jr_009_6569:
    ld [hl], d
    ld [hl], l
    ld l, l
    ld h, d
    ld l, h
    ld h, l
    dec l
    cp $47

jr_009_6572:
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_009_65E3

    ld [hl], l
    ld h, e
    ld l, e
    ld l, $2E
    ld l, $FF
    ld c, c
    jr nz, jr_009_65E8

    ld [hl], l
    ld h, l

jr_009_6583:
    ld [hl], e
    ld [hl], e
    ld l, $2E
    ld l, $FE
    db $FD
    and c
    ld e, a
    ld [bc], a
    ld [bc], a
    ld e, e
    ld d, $45
    and d
    jr z, jr_009_65D7

    and [hl]

jr_009_6595:
    ld b, d
    ld d, l

jr_009_6597:
    ld d, d
    ld c, [hl]
    jr nz, @+$43

    jr nz, jr_009_65E9

    ld b, l
    ld b, a
    ld hl, $FE21
    db $FD
    and c
    ld e, e
    rla
    ld b, l
    ld b, [hl]
    rrca
    nop
    ld [hl], $A0
    inc b
    ld b, $FF
    rst $38
    add hl, bc
    ld l, $66
    ld b, [hl]
    rrca
    nop
    ld [hl], $A0
    ld [bc], a
    ld b, $FF

jr_009_65BB:
    rst $38
    add hl, bc
    ld l, e
    ld h, [hl]
    ld b, [hl]
    rrca
    nop
    ld [hl], $A0
    ld bc, $FF06
    rst $38
    add hl, bc
    and [hl]
    ld h, [hl]
    and d
    jr z, jr_009_6611

    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_009_6615

    ld [hl], d
    ld h, d
    ld l, a

jr_009_65D7:
    ld l, h
    ld l, c
    ld [hl], h
    ld [hl], e
    cp $77
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_009_6654

    ld h, l

jr_009_65E3:
    ld h, c
    ld h, e
    ld [hl], h
    jr nz, jr_009_665C

jr_009_65E8:
    ld l, a

jr_009_65E9:
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_009_665F

    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld h, l
    cp $70
    ld l, h
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], e
    ld l, $20
    ld d, a
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    cp $74
    ld l, b
    ld h, l
    ld l, c
    ld [hl], d
    jr nz, jr_009_667C

    ld h, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d

jr_009_6611:
    ld l, [hl]
    ld [hl], e
    cp $61

jr_009_6615:
    ld l, [hl]
    ld h, h
    jr nz, jr_009_667D

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_009_6686

    ld h, l
    ld [hl], h
    cp $62
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld [hl], h
    ld hl, $FDFE
    ld c, b
    add hl, bc
    pop hl
    ld h, [hl]
    and d
    jr z, jr_009_6674

    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld h, h
    jr nz, jr_009_669B

    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    rst $38
    ld l, l
    ld l, a
    halt
    ld h, l
    jr nz, @+$73

    ld [hl], l
    ld l, c
    ld h, e
    ld l, e
    inc l
    jr nz, jr_009_66BB

    ld [hl], d
    cp $79
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h

jr_009_6654:
    jr nz, jr_009_66C9

    ld l, c
    ld l, [hl]
    ld h, a
    ld h, l
    rst $38
    ld a, c

jr_009_665C:
    ld l, a
    ld [hl], l
    ld [hl], d

jr_009_665F:
    jr nz, jr_009_66D5

    ld l, a
    ld h, l
    ld [hl], e
    ld hl, $FDFE
    ld c, b
    add hl, bc
    pop hl
    ld h, [hl]
    and d
    jr z, jr_009_66B1

    and [hl]
    ld b, c
    jr nz, jr_009_66DF

    ld h, c
    ld a, d

jr_009_6674:
    ld h, l
    jr nz, jr_009_66E6

    ld h, [hl]
    rst $38
    ld h, [hl]
    ld l, h
    ld h, c

jr_009_667C:
    ld l, l

jr_009_667D:
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_009_66E3

    ld l, [hl]
    ld h, h
    cp $74

jr_009_6686:
    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_009_66CD

    ld [hl], d
    ld h, d
    ld l, a
    ld l, h
    ld l, c
    ld [hl], h
    ld [hl], e
    rst $38
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_009_670C

    ld l, l
    ld l, a

jr_009_669B:
    ld l, e
    ld l, c
    ld l, [hl]
    daa
    ld hl, $FDFE
    ld c, b
    add hl, bc
    pop hl
    ld h, [hl]
    and d
    jr z, jr_009_66EC

    and [hl]
    ld d, h
    ld [hl], d
    ld a, c
    jr nz, jr_009_6723

    ld h, l
    ld [hl], e

jr_009_66B1:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_009_672B

    ld l, b
    ld h, l
    rst $38
    ld [hl], e

jr_009_66BB:
    ld [hl], a
    ld l, c
    ld [hl], h
    ld h, e
    ld l, b
    ld h, l
    ld [hl], e
    jr nz, jr_009_6726

    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l

jr_009_66C9:
    cp $79
    ld l, a
    ld [hl], l

jr_009_66CD:
    jr nz, @+$76

    ld [hl], d
    ld a, c
    jr nz, jr_009_6739

    ld l, a
    ld [hl], d

jr_009_66D5:
    rst $38
    ld [hl], d
    ld h, l
    ld h, c
    ld l, h
    ld l, $FF
    db $FD
    ld c, b
    add hl, bc

jr_009_66DF:
    pop hl
    ld h, [hl]
    and c
    ld e, e

jr_009_66E3:
    ld bc, $4845

jr_009_66E6:
    jr jr_009_6755

    ld l, b
    ld c, b
    jr jr_009_675F

jr_009_66EC:
    ld l, b
    ld c, b
    jr jr_009_6769

    ld l, b
    ld c, b
    jr @+$81

    ld l, b
    ld c, b
    jr jr_009_667D

    ld l, b
    ld bc, $0613
    ld c, b
    ld a, [de]
    ld a, [hl-]
    ld c, d
    ld bc, $0613
    ld c, b
    ld a, [de]
    ld a, [hl-]
    ld c, d
    or e
    ld sp, $01C7
    and d

jr_009_670C:
    sbc b
    ld b, c
    ld c, d
    dec b
    add hl, bc
    rra
    ld h, a
    add hl, bc
    ld d, [hl]
    ld h, a
    add hl, bc
    sub e
    ld h, a
    add hl, bc
    xor [hl]
    ld h, a
    add hl, bc
    bit 4, a
    and [hl]
    ld c, c
    jr nz, jr_009_6784

jr_009_6723:
    ld l, l
    jr nz, jr_009_6794

jr_009_6726:
    ld l, a
    ld [hl], h
    rst $38
    ld l, h
    ld l, a

jr_009_672B:
    ld l, a
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_009_6796

    ld l, a
    ld [hl], a
    ld l, [hl]

jr_009_6735:
    jr nz, jr_009_6735

    ld l, c
    ld l, [hl]

jr_009_6739:
    ld [hl], h
    ld l, a
    jr nz, jr_009_67AC

    ld l, [hl]
    ld h, l
    jr nz, jr_009_67B0

    ld h, [hl]
    jr nz, @+$01

    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_009_67BF

    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld [hl], e
    ld hl, $FDFE
    ld c, c
    ld b, h

jr_009_6755:
    ld l, b
    and [hl]
    ld c, c
    ld h, e
    ld l, e
    ld hl, $5420
    ld l, b
    ld h, l

jr_009_675F:
    ld [hl], d
    ld h, l
    jr nz, jr_009_67CC

    ld [hl], e
    jr nz, @+$63

    rst $38
    ld l, [hl]
    ld h, c

jr_009_6769:
    ld [hl], e
    ld [hl], h
    ld a, c
    jr nz, jr_009_67E1

    ld l, l
    ld h, l
    ld l, h
    ld l, h

jr_009_6772:
    jr nz, jr_009_6772

    ld h, e
    ld l, a
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$71

    ld [hl], l
    ld [hl], h
    jr nz, jr_009_67EF

    ld h, [hl]
    jr nz, @+$01

    ld [hl], h

jr_009_6784:
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_009_67FD

    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $FDFE
    ld c, c
    ld b, h
    ld l, b
    and [hl]

jr_009_6794:
    ld d, h
    ld l, b

jr_009_6796:
    ld l, c
    ld [hl], e
    jr nz, jr_009_6809

    ld l, [hl]
    ld h, l
    jr nz, jr_009_680A

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    rst $38
    ld h, c
    ld l, h
    ld l, c
    halt
    ld h, l
    ld hl, $FDFE
    ld c, c

jr_009_67AC:
    ld b, h
    ld l, b
    and [hl]
    ld d, h

jr_009_67B0:
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_009_6824

    ld l, [hl]
    ld h, l
    jr nz, jr_009_682C

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    rst $38

jr_009_67BF:
    ld l, b
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], d
    ld a, c
    ld hl, $FDFE
    ld c, c
    ld b, h
    ld l, b
    and [hl]

jr_009_67CC:
    ld c, c
    jr nz, @+$76

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_009_681E

    jr nz, jr_009_684A

    ld h, c
    ld [hl], a
    jr nz, jr_009_683C

    rst $38
    ld h, h
    ld l, a
    ld h, e
    ld [hl], l
    ld l, l

jr_009_67E1:
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld [hl], d
    ld a, c
    jr nz, jr_009_6858

    ld l, [hl]
    cp $74
    ld l, b
    ld h, l
    ld [hl], e

jr_009_67EF:
    ld h, l
    jr nz, @+$78

    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    ld l, $20
    ld c, c
    ld [hl], h
    rst $38
    ld [hl], a
    ld h, c

jr_009_67FD:
    ld [hl], e
    jr nz, jr_009_6863

    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld h, h

jr_009_6805:
    jr nz, jr_009_6805

    daa
    ld d, [hl]

jr_009_6809:
    ld h, l

jr_009_680A:
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    ld a, [hl-]
    jr nz, @+$01

    ld [hl], b
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_009_687B

    ld [hl], d
    ld l, a
    ld l, l
    ld h, c

jr_009_681E:
    ld [hl], e
    cp $6F
    ld [hl], d
    jr nz, @+$75

jr_009_6824:
    ld h, l
    ld h, e
    ld [hl], d
    ld h, l
    ld [hl], h
    rst $38
    ld [hl], a
    ld h, l

jr_009_682C:
    ld h, c
    ld [hl], b
    ld l, a
    ld l, [hl]
    ld [hl], e
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_009_68AA

    ld l, b
    ld h, l
    cp $43
    ld h, c
    ld l, h

jr_009_683C:
    ld h, h
    ld h, l
    ld [hl], d
    ld [hl], e
    ccf
    daa
    cp $FD
    and c
    or e
    ld sp, $00C7
    ld b, l

jr_009_684A:
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    ld c, d
    dec b
    add hl, bc
    ld h, d
    ld l, b
    add hl, bc
    xor h

jr_009_6858:
    ld l, b
    add hl, bc
    push af
    ld l, b
    add hl, bc
    dec c
    ld l, c
    add hl, bc
    ld d, b
    ld l, c
    and [hl]

jr_009_6863:
    ld c, b
    ld [hl], d
    ld l, l
    ld l, l
    ld l, $2E
    ld l, $20
    ld b, l
    halt
    ld h, l
    ld [hl], d
    jr nz, @+$01

    ld l, b
    ld h, c
    halt
    ld h, l
    jr nz, @+$63

    jr nz, @+$75

    ld l, [hl]
    ld l, a

jr_009_687B:
    ld [hl], a
    ld h, d
    ld h, c
    ld l, h
    ld l, h
    cp $66
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_009_68FD

    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$01

    ld [hl], b
    ld h, c
    ld [hl], d
    ld [hl], h
    ld [hl], e
    jr nz, jr_009_6904

    ld h, [hl]
    jr nz, jr_009_68F9

jr_009_6898:
    jr nz, jr_009_6898

    ld l, l
    ld h, l
    ld l, h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_009_691A

    ld h, c
    ld l, h
    ld l, h
    ccf
    cp $FD
    ld c, c

jr_009_68AA:
    add l
    ld l, c
    and [hl]
    ld c, c
    jr nz, jr_009_6918

    ld h, c
    halt
    ld h, l
    jr nz, jr_009_6929

    ld l, b
    ld h, l
    jr nz, jr_009_692E

    ld [hl], d
    ld h, a
    ld h, l
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_009_692E

    ld l, a
    ld l, h
    ld h, h
    jr nz, jr_009_693A

    ld l, b
    ld l, c
    ld [hl], e

jr_009_68C9:
    jr nz, jr_009_68C9

    ld l, l
    ld h, l
    ld l, h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$79

    ld h, c
    ld l, h
    ld l, h
    jr nz, @+$01

    ld l, c
    ld l, [hl]
    ld [hl], h
    ld l, a
    jr nz, jr_009_6940

    jr nz, jr_009_694F

    ld l, c
    ld h, e
    ld h, l
    cp $66
    ld l, h
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_009_695D

    ld l, a
    ld [hl], h
    ld hl, $FDFE
    ld c, c
    add l
    ld l, c
    and [hl]
    daa
    ld d, [hl]
    ld h, c

jr_009_68F9:
    ld l, h
    ld l, e
    ld h, c
    ld l, [hl]

jr_009_68FD:
    jr nz, jr_009_6976

    ld h, c
    ld [hl], e
    rst $38
    ld l, b
    ld h, l

jr_009_6904:
    ld [hl], d
    ld h, l
    ld l, $27
    cp $FD
    ld c, c
    add l
    ld l, c
    and [hl]
    ld c, c
    jr nz, @+$64

    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_009_6986

jr_009_6918:
    ld l, a
    ld [hl], h

jr_009_691A:
    jr nz, @+$01

    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_009_6996

    ld l, a
    jr nz, @+$65

    ld l, h
    ld l, a
    ld [hl], e

jr_009_6929:
    ld h, l
    inc l
    cp $74
    ld l, b

jr_009_692E:
    ld l, c
    ld [hl], e
    jr nz, jr_009_69A9

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_009_69A0

    ld [hl], e
    jr nz, @+$01

jr_009_693A:
    ld l, a
    ld l, a
    ld a, d
    ld l, c
    ld l, [hl]
    ld h, a

jr_009_6940:
    jr nz, jr_009_69B6

    ld l, a
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, h
    cp $6D
    ld h, l
    ld hl, $FDFE
    ld c, c
    add l

jr_009_694F:
    ld l, c
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$74

    ld l, a
    ld h, e
    ld l, e
    jr nz, jr_009_69D3

    ld h, c

jr_009_695D:
    ld l, h
    ld l, h
    rst $38
    ld l, c
    ld [hl], e
    jr nz, jr_009_69D1

    ld h, l
    ld l, h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $4120
    ld l, [hl]
    ld h, h
    cp $73
    ld l, a
    jr nz, jr_009_69D5

    ld [hl], d
    ld h, l

jr_009_6976:
    jr nz, @+$6F

    ld a, c
    jr nz, @+$01

    ld [hl], e
    ld l, b
    ld l, a
    ld h, l
    ld [hl], e
    ld hl, $2021
    cp $FD
    and c

jr_009_6986:
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    rrca
    nop
    ld [hl], $A0
    ld bc, $0005
    add hl, de
    rst $20
    ld b, [hl]

jr_009_6996:
    add e
    and e
    jp nc, $0506

    and e
    jp nc, $0F16

    ld b, l

jr_009_69A0:
    ld b, [hl]
    rrca
    nop
    ld [hl], $A0
    ld [bc], a
    dec b
    nop
    add hl, de

jr_009_69A9:
    rst $20
    ld b, [hl]
    add e
    cp e
    pop de
    dec b
    rlca
    cp e
    pop de
    ld c, $17
    ld b, l
    ld b, [hl]

jr_009_69B6:
    rrca
    nop
    ld [hl], $A0
    inc b
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e
    rst $38
    ret nc

    ld [$FF06], sp
    ret nc

    ld [$840F], sp
    rlca
    ld de, $D0E3
    nop
    ld e, $84

jr_009_69D1:
    rlca
    ld [de], a

jr_009_69D3:
    db $E4
    ret nc

jr_009_69D5:
    ld [$451D], sp
    ld b, [hl]
    rrca
    nop
    ld [hl], $A0
    ld [$0005], sp
    add hl, de
    rst $20
    ld b, [hl]
    add e
    ld de, $09D0
    ld [$D011], sp
    nop
    ld de, $4645
    rrca
    nop
    ld [hl], $A0
    jr nz, jr_009_69F9

    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e

jr_009_69F9:
    rst $30
    ret nc

    ld [$F70A], sp
    ret nc

    ld [$8307], sp
    sub l
    pop de
    rlca
    ld [$D195], sp
    dec c
    rrca
    ld b, l
    ld b, l
    ld e, $1F
    ld e, h
    add hl, bc
    inc de
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
    jr nz, jr_009_6A69

    ld h, c
    ld l, l
    ld h, l
    ccf
    cp $FD
    and b
    and [hl]
    jr nz, jr_009_6A7A

    ld l, a
    ld l, $FF
    jr nz, jr_009_6A8A

    ld h, l
    ld [hl], e
    ld l, $FD
    and e
    ld [bc], a
    add hl, bc
    halt
    ld l, d
    add hl, bc
    dec a
    ld l, d
    sbc d
    add hl, bc
    ld e, a
    ld l, e
    sub [hl]
    ld bc, $A6A0
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_009_6A9E

    ld h, c
    halt
    ld h, l
    ld h, h
    jr nz, jr_009_6AC5

    ld l, a
    rst $38
    db $FD
    ld b, [hl]
    rrca
    ld bc, $C74A
    dec b
    nop
    add hl, bc
    ld l, h
    ld l, d
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_009_6A97

    ld l, $FE
    db $FD
    ld c, b

jr_009_6A69:
    add hl, bc
    halt
    ld l, d
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_009_6AA4

    ld l, $FE
    db $FD
    and c
    sbc e
    add hl, bc
    inc c

jr_009_6A7A:
    ld l, d
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    ld de, $B397

jr_009_6A84:
    ld sp, $00C7
    or e
    inc sp
    rst $00

jr_009_6A8A:
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld a, c
    ld d, h
    inc de

jr_009_6A97:
    ld h, a
    dec l
    ld c, [hl]
    ld l, e
    nop
    ld b, b
    dec hl

jr_009_6A9E:
    add e
    ld l, h
    inc l
    ld l, h
    ld c, d
    ld c, [hl]

jr_009_6AA4:
    dec b
    nop
    inc [hl]
    ld h, e
    add hl, bc
    jr jr_009_6A84

    jp nc, $1400

    cp a
    ld e, l
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    add hl, de
    ld [$D109], sp
    nop
    add hl, bc
    ldh [rOCPS], a
    add hl, bc
    ld h, b
    ld [hl], d
    ld l, [hl]
    jr nc, jr_009_6AD2

jr_009_6AC5:
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

jr_009_6AD2:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    add hl, bc
    inc c
    ld l, d
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    nop
    ld b, [hl]
    and b
    jr nz, jr_009_6AFF

    db $10
    ld b, a
    inc d
    inc de
    ld e, h
    ld l, l
    ld b, l
    ld [hl+], a
    ld de, $B397
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

jr_009_6AFF:
    inc d
    ld l, b
    ld a, c
    ld d, h
    inc de
    ld h, a
    dec l
    ld c, [hl]
    ld l, e
    nop
    ld b, b
    dec hl
    add e
    ld l, h
    inc l
    ld l, h
    ld c, d
    ld c, [hl]
    dec b
    nop
    ld hl, sp+$4A
    rlca
    add hl, de
    push af
    jp nc, $0900

    ld c, [hl]
    ld l, e
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    add hl, de
    ld [$D109], sp
    nop
    add hl, bc
    ldh [rOCPS], a
    add hl, bc
    ld h, b
    ld [hl], d
    ld l, [hl]
    jr nc, jr_009_6B3F

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

jr_009_6B3F:
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    add hl, bc
    inc c
    ld l, d
    or e
    ld sp, $00C7
    ld b, l
    ld d, $14
    ld e, l
    ld e, h
    jr nz, jr_009_6B54

jr_009_6B54:
    ld bc, $1400
    inc d
    cp a
    ld e, l
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    ld [hl+], a
    ld de, $B397
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
    ld a, c
    ld d, h
    inc de
    ld h, a
    dec l
    ld c, [hl]
    ld l, e
    nop
    ld b, b
    dec hl
    add e
    ld l, h
    inc l
    ld l, h
    ld c, d
    ld c, [hl]
    dec b
    nop
    ld hl, sp+$4A
    dec e
    inc c
    add l
    pop de
    nop
    add hl, bc
    cp a
    ld l, e
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    add hl, de
    ld [$D109], sp
    nop
    add hl, bc
    ldh [rOCPS], a
    add hl, bc
    ld h, b
    ld [hl], d
    ld l, [hl]
    jr nc, jr_009_6BB1

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

jr_009_6BB1:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    add hl, bc
    inc c
    ld l, d
    or e
    ld sp, $00C7
    ld b, l
    dec d
    inc d
    ld a, l
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
    ld b, $4E
    ld bc, $A136
    add hl, bc
    nop
    nop
    inc b
    ld l, h
    add hl, bc
    ld bc, $0C00
    ld l, h
    add hl, bc
    ld [bc], a
    nop
    ld hl, $096C
    inc bc
    nop
    ld [hl], $6C
    add hl, bc
    inc b
    nop
    ld c, e
    ld l, h
    add hl, bc
    dec b
    nop
    ld c, e
    ld l, h
    rst $38
    ld c, b
    add hl, bc
    ld c, e
    ld l, h
    or e
    ld [hl], $A1
    inc bc
    ld c, b
    add hl, bc
    ld [hl], $6C
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
    adc b
    ld d, h
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
    adc b
    ld d, h
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
    adc b
    ld d, h
    inc de
    ld c, b
    dec bc
    ld c, d
    ld l, l
    ld bc, $1315
    ld c, b
    add hl, bc
    db $ED
    ld l, d
    ld [hl+], a
    ld de, $B397
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
    ld a, c
    ld d, h
    inc de
    ld h, a
    dec l
    ld c, [hl]
    ld l, e
    nop
    ld b, b
    dec hl
    add e
    ld l, h
    inc l
    ld l, h
    ld c, d
    ld c, [hl]
    dec b
    nop
    ld hl, sp+$4A
    dec d
    inc de
    ld c, a
    jp nc, $0900

    xor h
    ld l, h
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    rla
    ld d, $AB
    jp nc, $0900

    cp l
    ld l, h
    add hl, bc
    jp nz, Jump_009_6E6C

    jr nc, jr_009_6CA4

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
    ld d, $15
    ld [hl], e

jr_009_6CA4:
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
    jr nc, jr_009_6CC8

    or l
    ld e, l
    jr nz, jr_009_6CB8

jr_009_6CB8:
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
    add hl, bc

jr_009_6CC8:
    adc $6C
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
    jr nz, jr_009_6D3E

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, jr_009_6D55

    ld h, l
    rst $38
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_009_6D4F

    ld h, c
    halt
    ld h, l
    jr nz, jr_009_6D4D

    ld l, h
    ld l, h
    cp $64
    ld h, c
    ld a, c
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $2245
    ld de, $B397
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
    ld a, c
    ld d, h
    inc de
    ld h, a
    dec l
    ld c, [hl]
    ld l, e
    nop
    ld b, b
    dec hl
    add e
    ld l, h
    inc l
    ld l, h
    ld c, d
    ld c, [hl]
    dec b
    nop
    ld hl, sp+$4A
    ld b, $02
    ld b, d
    ret nc

    nop
    add hl, bc
    ld d, e
    ld l, l
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld [$8004], sp
    ret nc

    nop
    add hl, bc
    add a
    ld l, l
    add hl, bc
    sbc b
    ld l, l
    ld l, [hl]
    jr nc, jr_009_6D4B

jr_009_6D3E:
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
    rlca
    inc b
    ld [hl], e

jr_009_6D4B:
    rrca
    rst $38

jr_009_6D4D:
    ld a, a
    sbc b

jr_009_6D4F:
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld b, e
    db $10

jr_009_6D55:
    dec d
    inc d
    ld e, l
    ld e, h
    jr nz, jr_009_6D6F

    or l
    ld e, l
    jr nz, jr_009_6D5F

jr_009_6D5F:
    or e
    dec [hl]
    and c
    ld b, $5E
    dec bc
    adc b
    ld l, l
    ld h, e
    ld bc, $1414
    ret


    ld e, l
    add b
    dec bc

jr_009_6D6F:
    inc c
    ld bc, $2043
    add b
    dec d

jr_009_6D75:
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
    add hl, bc
    inc c
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
    add hl, bc
    and h
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
    jr nz, jr_009_6E14

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, jr_009_6E2B

    ld h, l
    rst $38
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$6A

    ld h, c
    halt
    ld h, l
    jr nz, jr_009_6E23

    ld l, h
    ld l, h
    cp $64
    ld h, c
    ld a, c
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $099B
    inc c
    ld l, d
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    ld de, $46B6
    and b
    jr nz, jr_009_6D75

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
    ld a, c
    ld d, h
    inc de
    ld h, a
    dec l
    ld c, [hl]
    ld l, e
    nop
    ld b, b
    dec hl
    add e
    ld l, h
    inc l
    ld l, h
    ld c, d
    ld c, [hl]
    dec b
    nop
    ld hl, sp+$4A
    add hl, bc
    dec d
    ld a, a
    jp nc, $0900

    ld e, [hl]
    ld l, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld a, [bc]
    add hl, de

jr_009_6E14:
    ld hl, sp-$2E
    jr nc, jr_009_6E21

    sub b
    ld l, [hl]
    add hl, bc
    ld h, b
    ld [hl], d
    dec b
    inc bc
    adc a
    ld l, [hl]

jr_009_6E21:
    rlca
    rla

jr_009_6E23:
    cp c
    jp nc, $0989

    xor c
    ld l, [hl]
    add hl, bc
    xor [hl]

jr_009_6E2B:
    ld l, [hl]
    ld l, [hl]
    jr nc, jr_009_6E3C

    ret nc

    ld b, e
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_009_6E44

    and b
    ld b, b
    nop
    add e
    nop

jr_009_6E3C:
    ld l, [hl]
    add hl, hl
    dec c
    ld b, b
    ld d, e
    nop
    add [hl]
    nop

jr_009_6E44:
    ld l, [hl]
    add hl, hl
    inc c
    jr nc, jr_009_6E8A

Jump_009_6E49:
    sub b
    adc b
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    adc b
    ld [$7319], sp
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld b, e
    jr nz, jr_009_6E76

    inc d
    ld c, l
    ld e, h
    jr nz, jr_009_6E7A

    and c
    ld e, l
    db $10
    inc d
    cp a
    ld e, l

Jump_009_6E6C:
    nop
    nop
    ld e, [hl]
    add hl, bc
    rst $20
    ld l, [hl]
    ld h, l
    ld bc, $1414

jr_009_6E76:
    ret


    ld e, l
    ld e, [hl]
    add hl, bc

jr_009_6E7A:
    ld b, b
    ld l, a
    ld h, l
    ld [bc], a
    ld b, e
    jr nc, jr_009_6EE0

    nop
    ld [bc], a
    ld e, l
    add hl, de
    ldh a, [rDMA]
    sbc e
    add hl, bc
    inc c

jr_009_6E8A:
    ld l, d
    or e
    ld sp, $00C7
    ld b, l
    inc d
    inc de
    ld c, b
    ld l, l
    ld h, l
    ld [bc], a
    dec d
    inc de
    and b
    ld l, h
    db $10
    inc de
    ret nz

    ld l, h
    ld d, b
    inc de
    and b
    ld l, h
    inc a
    nop
    ld e, a
    nop
    ld [bc], a
    add hl, de
    ld b, l
    inc d
    db $10
    ld h, b
    ld [hl], l
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    add hl, bc
    cp d
    ld l, [hl]
    ld c, b
    db $10
    sub d
    ld [hl], l
    and d
    adc b
    ld c, h
    and [hl]
    ld d, h
    ld [hl], a
    ld l, a
    jr nz, jr_009_6F3A

    ld l, a
    ld [hl], d
    ld h, h
    ld [hl], e
    ld a, [hl-]
    jr nz, jr_009_6F12

    ld h, c
    ld l, c
    ld [hl], d
    rst $38
    ld h, l
    ld a, b
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $099B

jr_009_6EE0:
    inc c
    ld l, d
    or e
    ld sp, $00C7
    ld b, l
    and d
    adc b
    ld c, h
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_009_6F5D

    ld h, c
    ld h, h
    ld h, l
    jr nz, jr_009_6F5E

    ld [hl], h
    ld hl, $43FF
    ld l, a
    ld l, [hl]
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h
    ld [hl], e
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld l, $20
    ld c, l
    ld h, c
    ld a, c

jr_009_6F12:
    ld h, d
    ld h, l
    jr nz, jr_009_6F77

    rst $38
    ld l, h
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    cp $64
    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld l, c
    ld h, e
    ld [hl], l
    ld l, h
    ld [hl], h
    inc l
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    rst $38
    ld l, [hl]
    ld l, a
    jr nz, jr_009_6FA3

    ld h, l
    ld h, c
    ld l, h
    jr nz, jr_009_6FA9

    ld [hl], a
    ld h, l
    ld h, c
    ld [hl], h

jr_009_6F3A:
    ld l, $FE
    db $FD
    ld e, e
    ld bc, $A245
    cp b
    ld e, l
    and [hl]
    ld d, d
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    jr nz, jr_009_6FBF

    ld l, a
    jr nz, @+$69

    ld l, a
    inc l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld l, [hl]
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a

jr_009_6F5D:
    ld l, b

jr_009_6F5E:
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_009_6FD2

    ld h, l
    ld a, b
    ld [hl], h
    ccf
    cp $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$55

    ld h, c
    ld l, [hl]
    ld h, h
    ld [hl], e

jr_009_6F77:
    jr nz, jr_009_6FE8

    ld h, [hl]
    rst $38
    ld h, h
    daa
    ld d, d
    ld h, l
    ld [hl], e
    ld l, b
    ld l, $2E
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld [bc], a
    ld b, l
    ld [hl+], a
    ld de, $34B3
    and c
    ld b, $97
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
    ld a, c

jr_009_6FA3:
    ld d, h
    inc de
    ld h, a
    dec l
    ld c, [hl]
    ld l, e

jr_009_6FA9:
    nop
    ld b, b
    dec hl
    add e
    ld l, h
    inc l
    ld l, h
    ld c, d
    ld c, [hl]
    dec b
    nop
    ld hl, sp+$4A
    rra
    dec c
    and l
    pop de
    nop
    add hl, bc
    cpl
    ld [hl], b
    add hl, de

jr_009_6FBF:
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    ld e, $0D
    and h
    pop de
    nop
    add hl, bc
    dec h
    ld [hl], d
    add hl, de
    add sp, $46
    dec b
    inc bc

jr_009_6FD2:
    adc a
    ld l, [hl]
    dec e
    dec c
    and e
    pop de
    jr nc, jr_009_6FE3

    sub h
    ld [hl], b
    add hl, bc
    ld h, b
    ld [hl], d
    dec b
    inc b
    ld hl, sp+$4A

jr_009_6FE3:
    ld [de], a
    dec b
    xor b
    ret nc

    adc c

jr_009_6FE8:
    add hl, bc
    dec h
    ld [hl], c
    add hl, de
    add sp, $46
    dec b
    dec b
    ld hl, sp+$4A
    inc de
    dec b
    xor c
    ret nc

    ld h, b
    add hl, bc
    adc h
    ld [hl], c
    add hl, de
    add sp, $46
    ld l, [hl]
    jr nc, jr_009_700D

    ret nc

    ld b, e
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_009_7015

    and b
    ld b, b
    nop
    add e
    nop

jr_009_700D:
    ld l, [hl]
    add hl, hl
    dec c
    ld b, b
    ld d, e
    nop
    add [hl]
    nop

jr_009_7015:
    ld l, [hl]
    add hl, hl
    inc c
    jr nc, jr_009_705B

    sub b
    adc b
    nop
    dec bc
    inc bc
    dec bc
    inc b
    dec bc
    dec b
    adc b
    ld a, [de]
    dec bc
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
    ld a, l
    ld e, h
    jr c, jr_009_7049

    inc sp
    ld e, h
    ld b, [hl]
    inc d
    ld a, l
    ld e, h
    ld a, [hl+]
    inc d
    xor e
    ld e, l
    nop
    nop
    ld b, e
    jr nz, jr_009_70A3

    nop
    inc bc
    inc d
    inc d
    and c

jr_009_7049:
    ld e, l
    ld h, e
    ld bc, $2043
    inc d
    inc d
    db $D3
    ld e, l
    ld h, l
    rlca
    dec d
    inc d
    ld c, l
    ld e, h
    inc c
    inc d
    ld l, l

jr_009_705B:
    ld e, h
    jr c, jr_009_7072

    db $D3
    ld e, l
    nop
    nop
    ld e, [hl]
    add hl, bc
    pop de
    ld [hl], h
    ld h, l
    add hl, bc
    inc d
    inc d
    db $DD
    ld e, l
    ld e, [hl]
    add hl, bc
    ld [hl], $75
    ld h, l
    ld a, [bc]

jr_009_7072:
    ld e, [hl]
    add hl, bc
    ld e, b
    ld [hl], l
    ld h, l
    dec bc
    inc d
    inc d
    sub a
    ld e, l
    ld h, l
    db $10
    ld e, [hl]
    add hl, bc
    and e
    halt
    dec d
    inc d
    ld a, l
    ld e, h
    jr z, jr_009_709C

    inc sp
    ld e, h
    jr nc, jr_009_70A0

    ret


    ld e, l
    nop
    nop
    ld e, a
    inc bc
    inc bc
    ld b, l
    dec d
    inc de
    ret nz

    ld l, h
    jr nz, jr_009_709A

jr_009_709A:
    dec bc
    ld [bc], a

jr_009_709C:
    dec d
    inc de
    and b
    ld l, h

jr_009_70A0:
    jr nz, jr_009_70A2

jr_009_70A2:
    dec bc

jr_009_70A3:
    nop
    dec d
    inc de
    ret nz

    ld l, h
    jr nz, jr_009_70BD

    and b
    ld l, h
    jr z, @+$15

    ret nz

    ld l, h
    jr nz, jr_009_70C5

    ld h, [hl]
    ld l, l
    nop
    nop
    ld e, a
    nop
    inc bc
    ld h, l
    ld [bc], a
    ld e, l
    add hl, bc

jr_009_70BD:
    ld e, d
    ld [hl], d
    ld e, c
    ld bc, $1043
    inc d
    inc de

jr_009_70C5:
    ld c, b
    ld l, l
    ld h, l
    inc bc
    ld e, [hl]
    add hl, bc
    jr nc, jr_009_7141

    ld e, a
    ld bc, $1402
    inc de
    inc [hl]
    ld l, l
    ld h, l
    inc b
    ld e, [hl]
    add hl, bc
    ld h, b
    ld [hl], h
    ld h, l
    dec b
    ld e, [hl]
    add hl, bc
    ld a, a
    ld [hl], h
    dec d
    inc de
    ld e, h
    ld l, l
    inc bc
    inc de
    ld a, [hl+]
    ld l, l
    inc bc
    inc de
    ld h, [hl]
    ld l, l
    inc bc
    inc de
    ld a, $6D
    db $10
    inc de
    inc [hl]
    ld l, l
    nop
    nop
    ld e, a
    ld [bc], a
    ld [bc], a
    ld e, [hl]
    add hl, bc
    or b
    ld [hl], h
    ld h, l
    inc c
    inc d
    inc de
    ld h, [hl]
    ld l, l
    ld e, [hl]
    add hl, bc
    ret c

    ld [hl], l
    ld h, l
    dec c
    inc d
    inc de
    ld c, b
    ld l, l
    ld e, [hl]
    add hl, bc
    nop
    halt
    ld h, e
    ld [bc], a
    dec d
    inc de
    or b
    ld l, h
    rlca
    inc de
    ld e, h
    ld l, l
    nop
    nop
    dec c
    nop
    nop
    nop
    nop
    ld [$4501], sp
    inc d
    db $10
    ld c, h
    ld [hl], l
    ld h, e
    ld bc, $1015
    jp nc, $2C74

    db $10
    ld a, [c]
    ld [hl], h
    jr nz, jr_009_7145

    adc b
    ld [hl], l
    nop
    nop
    ld h, l
    ld c, $15
    db $10
    jp nc, $0574

    db $10

jr_009_7141:
    ld a, [c]
    ld [hl], h
    dec b
    db $10

jr_009_7145:
    ld h, b
    ld [hl], l
    nop
    nop
    ld e, [hl]
    add hl, bc
    ld [hl], $76
    ld h, l
    rrca
    ld b, e
    jr nz, jr_009_71B0

    add hl, bc
    ld h, a
    halt
    ld e, a
    inc bc
    inc bc
    inc d
    db $10
    ld l, d
    ld [hl], l
    ld b, e
    jr nz, jr_009_71BD

    add hl, bc
    and $76
    inc d
    db $10
    adc b
    ld [hl], l
    ld h, l
    ld d, $14
    db $10
    ld l, d
    ld [hl], l
    ld h, l
    inc d
    ld e, [hl]
    add hl, bc
    ld e, h
    ld [hl], a
    ld h, l
    dec d
    ld b, e
    ld [$1015], sp
    jp nc, $1E74

    db $10
    ld a, [c]
    ld [hl], h
    ld [hl-], a
    db $10
    jp nc, $3274

    db $10
    ld a, [c]
    ld [hl], h
    ld b, [hl]
    nop
    ld e, c
    ld [bc], a
    add hl, de
    ld b, l
    inc d
    inc de
    or [hl]
    ld h, d
    ld h, e
    ld bc, $1043
    dec d
    inc de
    inc a
    ld h, d
    inc e
    inc de
    ld e, h
    ld h, d
    jr z, jr_009_71B1

    inc a
    ld h, d
    ld [$F213], sp
    ld h, d
    nop
    nop
    ld e, [hl]
    add hl, bc
    ld a, [bc]
    ld [hl], h
    ld h, l
    ld [$095E], sp
    push hl
    ld [hl], h

jr_009_71B0:
    dec d

jr_009_71B1:
    inc de
    jp z, $0662

    inc de
    or [hl]
    ld h, d
    ld b, $13
    jp z, $0662

jr_009_71BD:
    inc de
    or [hl]
    ld h, d
    ld b, $13
    jp z, $0662

    inc de
    or [hl]
    ld h, d
    ld b, $13
    ld a, [c]
    ld h, d
    nop
    nop
    ld h, l
    dec bc
    dec d
    inc de
    ld e, h
    ld h, d
    dec b
    inc de
    ld a, [c]
    ld h, d
    nop
    nop
    ld e, [hl]
    add hl, bc
    adc d
    ld [hl], l
    ld h, l
    ld de, $1314
    call nc, Call_009_4362
    jr nz, jr_009_71FB

    inc de
    ld a, [c]
    ld h, d
    ld h, l
    ld [de], a
    ld b, e
    jr nz, jr_009_724D

    add hl, bc
    inc e
    ld [hl], a
    ld h, l
    inc de
    ld e, [hl]
    add hl, bc
    ld l, $77
    ld h, l
    ld d, $14

jr_009_71FB:
    inc de
    call nc, Call_009_6562
    dec d
    ld b, e
    ld [$1315], sp
    inc a
    ld h, d
    jr z, jr_009_721B

    ld e, h
    ld h, d
    ld [hl-], a
    inc de
    inc a
    ld h, d
    jr z, jr_009_7223

    ld e, h
    ld h, d
    ld b, [hl]
    nop
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d

jr_009_721B:
    and c
    ld e, l
    ld [hl+], a
    ld de, $099B
    inc c
    ld l, d

jr_009_7223:
    add hl, de
    ld b, l
    dec d
    dec d
    ld a, [$3077]
    dec d
    jp c, $3077

    dec d
    ld a, [$2A77]
    dec d
    add d
    ld a, b
    nop
    nop
    ld e, a
    nop
    inc bc
    inc d
    dec d
    ld e, d
    ld a, b
    ld e, [hl]
    add hl, bc
    sbc a
    ld [hl], e
    ld h, l
    ld bc, $1515
    ld a, [bc]
    ld a, b
    ld a, [hl+]
    nop
    ld e, [hl]
    add hl, bc
    jp hl


jr_009_724D:
    ld [hl], e
    dec d
    dec d
    ld [$3077], a
    dec d
    ld a, [bc]
    ld a, b
    ld b, b
    nop
    add hl, de
    ld b, l
    add a
    jr nz, @+$01

    rst $38
    nop
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    add hl, bc
    ld l, l
    ld [hl], d
    ld c, b
    inc de
    ld [hl], b
    ld l, l
    ld b, l
    ld b, [hl]
    rrca
    nop
    scf
    and b
    inc b
    ld b, $FF
    rst $38
    add hl, bc
    push de
    ld [hl], d
    ld b, [hl]
    rrca
    nop
    scf
    and b
    ld [bc], a
    ld b, $FF
    rst $38
    add hl, bc
    ld e, $73
    ld b, [hl]
    rrca
    nop
    scf
    and b
    ld bc, $FF06
    rst $38
    add hl, bc
    ld d, h
    ld [hl], e
    and d
    cp b
    ld e, l
    and [hl]
    ld d, a
    ld l, b
    ld l, c
    ld h, e
    ld l, b
    jr nz, jr_009_7313

    ld h, c
    ld a, c
    rst $38
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_009_7320

    ld l, a
    ld [hl], l
    jr nz, jr_009_7312

    ld l, a
    ccf
    cp $53
    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_009_731E

    ld l, a
    ld [hl], d
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_009_7325

    ld a, b
    ld l, c
    ld [hl], h
    inc l
    jr nz, jr_009_7335

    ld h, [hl]
    cp $63
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld hl, $FDFE
    ld c, b
    add hl, bc
    sbc e
    ld [hl], e
    and d
    cp b
    ld e, l
    and [hl]
    ld d, d
    ld h, l
    ld l, l
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_009_7357

    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld h, [hl]
    ld l, h
    ld h, c
    ld [hl], d
    ld [hl], b
    ld [hl], e
    jr nz, jr_009_7366

    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_009_735A

    ld l, h
    ld a, c
    cp $6F
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_009_735E

    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld a, [hl-]
    rst $38
    ld h, l
    halt
    ld h, l
    ld l, [hl]
    jr nz, jr_009_737B

    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    cp $66

jr_009_7312:
    ld l, h

jr_009_7313:
    ld h, c
    ld [hl], d
    ld [hl], b
    ld [hl], e
    ld hl, $FDFE
    ld c, b
    add hl, bc
    sbc e
    ld [hl], e

jr_009_731E:
    and d
    cp b

jr_009_7320:
    ld e, l
    and [hl]
    ld b, h
    ld l, a
    ld l, [hl]

jr_009_7325:
    daa
    ld [hl], h
    jr nz, @+$6E

    ld h, l
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    rst $38
    ld h, [hl]
    ld l, h
    ld h, c
    ld [hl], d
    ld [hl], b

jr_009_7335:
    ld [hl], e
    jr nz, @+$69

    ld h, l
    ld [hl], h
    cp $73
    ld [hl], h
    ld [hl], l
    ld h, e
    ld l, e
    jr nz, jr_009_73B1

    ld l, [hl]
    jr nz, @+$63

    ld l, [hl]
    rst $38
    ld l, c
    ld [hl], e
    ld l, h
    ld h, c
    ld l, [hl]
    ld h, h
    ld hl, $FDFE
    ld c, b
    add hl, bc
    sbc e
    ld [hl], e
    and d
    cp b
    ld e, l

jr_009_7357:
    and [hl]
    ld e, c
    ld l, a

jr_009_735A:
    ld [hl], l
    jr nz, @+$65

    ld h, c

jr_009_735E:
    ld l, [hl]
    jr nz, jr_009_73C8

    ld l, a
    rst $38
    ld h, l
    ld l, c
    ld [hl], h

jr_009_7366:
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_009_73E2

    ld h, c
    ld a, c
    inc l
    jr nz, jr_009_73D2

    ld [hl], l
    ld [hl], h
    cp $79
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, @+$6A

jr_009_737B:
    ld h, c
    halt
    ld h, l
    jr nz, @+$76

    ld l, a
    rst $38
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_009_73FB

    ld l, b
    ld h, l
    jr nz, jr_009_73FE

    ld h, c
    ld l, l
    ld h, l
    cp $74
    ld l, a
    ld l, a
    ld l, h
    ld [hl], e
    ld l, $FE
    db $FD
    ld c, b
    add hl, bc
    sbc e
    ld [hl], e
    and c
    ld e, e
    ld bc, $A245
    jr z, jr_009_73E5

    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_009_7410

    ld [hl], e
    jr nz, jr_009_73FE

    ld c, c
    ld c, l
    ld b, l
    cp $FD
    ld b, e
    dec b

jr_009_73B1:
    and [hl]
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, @+$4F

    ld b, l
    cp $FD
    ld b, e
    dec b
    and [hl]
    ld [hl], h
    ld l, a
    jr nz, jr_009_7408

    ld c, a
    ld hl, $4DFE
    ld h, c
    ld a, c
    ld h, d

jr_009_73C8:
    ld h, l
    jr nz, jr_009_7444

    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    rst $38
    ld [hl], e

jr_009_73D2:
    ld h, l
    ld h, l
    jr nz, jr_009_7443

    ld h, l
    jr nz, @+$63

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    cp $73
    ld l, a
    ld l, a
    ld l, [hl]

jr_009_73E2:
    ld l, $FE
    db $FD

jr_009_73E5:
    and c
    ld e, e
    ld bc, $A245
    jr z, jr_009_742F

    and [hl]
    ld b, h
    ld c, c
    ld b, a
    jr nz, jr_009_743B

    ld d, h
    ld hl, $2021
    ld d, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a

jr_009_73FB:
    ld hl, $59FE

jr_009_73FE:
    ld b, l
    ld b, c
    ld c, b
    ld c, b
    ld c, b
    ld hl, $FDFE
    and c
    ld e, e

jr_009_7408:
    ld [bc], a
    ld b, l
    and d
    jr jr_009_745B

    and [hl]
    ld d, a
    ld h, l

jr_009_7410:
    ld l, h
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_009_748B

    ld l, a
    jr nz, jr_009_748E

    ld l, b
    ld h, l
    rst $38
    ld d, a
    ld h, l
    ld h, c
    halt
    ld h, l
    inc l
    jr nz, jr_009_746A

    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    ld l, $FE
    db $FD
    and c
    ld e, e
    inc bc

jr_009_742F:
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_009_74B4

jr_009_743B:
    ld l, a
    ld [hl], l
    inc l
    rst $38
    ld b, d
    ld l, a
    daa
    ld b, c

jr_009_7443:
    ld l, b

jr_009_7444:
    ld [hl], e
    ld h, c
    ld l, $20
    ld c, b
    ld h, l
    ld l, h
    ld l, h
    ld l, a
    inc l
    cp $FD
    ld e, a
    ld bc, $A602
    ld b, c
    ld l, b
    ld h, h
    ld h, c
    ld [hl], d
    ld l, $FE

jr_009_745B:
    db $FD
    and c
    ld e, e
    inc b
    ld b, l
    and d
    adc b
    ld c, h
    and [hl]
    ld c, b
    ld h, l
    ld a, c
    inc l
    jr nz, jr_009_74CE

jr_009_746A:
    ld [hl], l
    ld h, h
    ld h, l
    ld l, $FF
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_009_74EC

    ld [hl], b
    ccf
    cp $FD
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
    ld a, c
    jr nz, jr_009_74F4

jr_009_748B:
    ld [hl], e
    jr nz, jr_009_74F6

jr_009_748E:
    ld h, l
    ld [hl], d
    ld h, l
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_009_74FC

    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_009_750F

    ld l, b
    ld h, l
    cp $57
    ld h, l
    ld h, c
    halt
    ld h, l
    jr nz, jr_009_74F2

    ld h, c
    ld a, d
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, a
    ld [bc], a
    ld [bc], a
    ld b, l
    and d
    adc b
    ld c, h
    and [hl]

jr_009_74B4:
    ld d, a
    ld l, b
    ld l, a
    ld h, c
    inc l
    jr nz, jr_009_751E

    ld l, a
    ld l, a
    ld l, h
    ld l, $FF
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_009_7538

    ld [hl], l
    ld l, h
    ld h, l
    ld [hl], e
    ld l, $FE
    db $FD
    and c

jr_009_74CE:
    ld e, e
    rlca
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    ld l, [hl]
    ld a, c
    jr nz, jr_009_7542

    ld l, c
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    ccf
    cp $FD
    and c
    ld e, e
    ld [$A245], sp
    jr jr_009_7536

    and [hl]
    ld c, a
    ld l, b
    inc l

jr_009_74EC:
    jr nz, jr_009_755C

    ld l, a
    ld l, $20
    ld d, a

jr_009_74F2:
    ld h, l
    daa

jr_009_74F4:
    ld [hl], d
    ld h, l

jr_009_74F6:
    rst $38
    ld [hl], b
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, h

jr_009_74FC:
    jr nz, jr_009_756D

    ld h, [hl]
    jr nz, jr_009_7570

    ld [hl], l
    ld [hl], d
    cp $6D
    ld h, c
    ld a, d
    ld h, l
    ld l, $20
    ld c, c
    ld l, [hl]
    jr nz, jr_009_7574

    ld h, c

jr_009_750F:
    ld h, e
    ld [hl], h
    inc l
    rst $38
    ld c, c
    jr nz, jr_009_757A

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_009_7590

    ld l, b
    ld l, c

jr_009_751E:
    ld l, [hl]
    ld l, e
    cp $79
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, jr_009_7596

    ld h, c
    ld l, e
    ld h, l
    jr nz, @+$6B

    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld e, e
    add hl, bc
    ld b, l

jr_009_7536:
    and d
    cp b

jr_009_7538:
    ld e, l
    and [hl]
    ld d, h
    ld [hl], d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_009_75AE

    ld h, l

jr_009_7542:
    inc l
    jr nz, jr_009_75B8

    ld l, b
    ld h, l
    rst $38
    ld h, e
    ld h, c
    ld l, [hl]
    jr nz, jr_009_75B1

    ld l, a
    jr nz, @+$6B

    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld a, [bc]
    ld b, l
    and d
    adc b
    ld c, h
    and [hl]

jr_009_755C:
    ld c, b
    ld h, l
    ld l, b
    ld h, l
    inc l
    jr nz, jr_009_75DA

    ld h, l
    daa
    ld [hl], d
    ld h, l
    rst $38
    ld h, a
    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld h, c

jr_009_756D:
    jr nz, jr_009_75E2

    ld h, l

jr_009_7570:
    ld h, l
    jr nz, jr_009_75E7

    ld l, b

jr_009_7574:
    ld h, l
    cp $61
    ld l, [hl]
    ld l, c
    ld l, l

jr_009_757A:
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_009_75E5

    ld l, h
    ld a, c
    ld l, $2E
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec bc
    ld b, l
    and d
    jr jr_009_75DB

    and [hl]
    ld c, c
    daa

jr_009_7590:
    ld l, h
    ld l, h
    jr nz, jr_009_75F6

    ld h, l
    ld [hl], h

jr_009_7596:
    jr nz, jr_009_7611

    ld l, a
    ld [hl], l
    rst $38
    ld [hl], h
    ld h, l
    ld l, [hl]
    jr nz, jr_009_7601

    ld l, [hl]
    ld l, c
    ld l, l
    ld l, c
    ld [hl], h
    ld h, l
    cp $74
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_009_7600

    ld h, c

jr_009_75AE:
    ld l, h
    ld h, c
    ld h, [hl]

jr_009_75B1:
    ld a, c
    rst $38
    ld [hl], a
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h

jr_009_75B8:
    jr nz, jr_009_7627

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_009_7628

    ld [hl], h
    cp $74
    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_009_763E

    ld l, b
    ld h, l
    rst $38
    ld l, l
    ld h, c
    ld a, d
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    inc c
    ld b, l
    and d
    cp b

jr_009_75DA:
    ld e, l

jr_009_75DB:
    and [hl]
    ld c, a
    ld h, [hl]
    jr nz, jr_009_7643

    ld l, a
    ld [hl], l

jr_009_75E2:
    ld [hl], d
    ld [hl], e
    ld h, l

jr_009_75E5:
    jr nz, jr_009_7655

jr_009_75E7:
    ld l, a
    ld [hl], h
    inc l
    rst $38
    ld c, c
    jr nz, jr_009_7652

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_009_765B

    ld h, c
    ld l, l

jr_009_75F6:
    ld h, d
    ld l, h
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec c
    ld b, l

jr_009_7600:
    and d

jr_009_7601:
    jr jr_009_7651

    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$6F

    ld h, l
    ld h, c
    ld l, [hl]
    jr nz, jr_009_7687

    ld l, a
    ld [hl], l
    rst $38

jr_009_7611:
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_009_768C

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    cp $74
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_009_7696

    ld l, b
    ld h, l
    jr nz, jr_009_768A

jr_009_7627:
    ld h, c

jr_009_7628:
    ld l, [hl]
    rst $38
    ld h, h
    ld l, a
    jr nz, jr_009_7697

    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld c, $45
    and d
    adc b
    ld c, h
    and [hl]
    ld c, b
    ld h, l
    ld a, c
    inc l

jr_009_763E:
    jr nz, jr_009_76B3

    ld l, h
    ld l, a
    ld [hl], a

jr_009_7643:
    jr nz, @+$66

    ld l, a
    ld [hl], a
    ld l, [hl]
    inc l
    rst $38
    ld [hl], a
    ld h, l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_009_76B2

jr_009_7651:
    ld l, h

jr_009_7652:
    ld l, h
    cp $66

jr_009_7655:
    ld [hl], d
    ld l, c
    ld h, l
    ld l, [hl]
    ld h, h
    ld [hl], e

jr_009_765B:
    jr nz, jr_009_76C5

    ld h, l
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    rrca
    ld b, l
    and d
    jr jr_009_76B8

    and [hl]
    ld c, a
    ld c, e
    inc l
    jr nz, jr_009_76DE

    ld l, a
    jr nz, jr_009_76D5

    ld h, l
    ld [hl], h
    ld l, $20
    ld b, d
    ld [hl], l
    ld [hl], h
    rst $38
    ld c, c
    jr nz, jr_009_76F1

    ld [hl], h
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_009_76E8

    ld l, a
    ld l, [hl]
    daa

jr_009_7687:
    ld [hl], h
    cp $74

jr_009_768A:
    ld l, b
    ld l, c

jr_009_768C:
    ld l, [hl]
    ld l, e
    jr nz, jr_009_7703

    ld l, b
    ld h, l
    jr nz, jr_009_76F7

    ld h, c
    ld l, [hl]

jr_009_7696:
    rst $38

jr_009_7697:
    ld h, h
    ld l, a
    jr nz, jr_009_7704

    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld e, e
    db $10
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    jr nz, jr_009_770E

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$65

    ld h, c
    ld [hl], d

jr_009_76B2:
    ld h, l

jr_009_76B3:
    rst $38
    ld [hl], a
    ld l, b
    ld h, c
    ld [hl], h

jr_009_76B8:
    jr nz, jr_009_7733

    ld l, a
    ld [hl], l
    jr nz, jr_009_7732

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    ld l, $FE
    ld c, c

jr_009_76C5:
    daa
    ld l, l
    jr nz, @+$69

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_009_7743

    ld l, a
    rst $38
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld l, c

jr_009_76D5:
    ld [hl], e
    ld l, b
    jr nz, jr_009_774D

    ld l, b
    ld l, c
    ld [hl], e
    ld l, $FE

jr_009_76DE:
    db $FD
    and c
    ld e, a
    inc bc
    inc bc
    ld e, e
    ld de, $A245
    adc b

jr_009_76E8:
    ld c, h
    and [hl]
    ld c, b
    ld h, l
    ld a, c
    inc l
    jr nz, jr_009_7763

    ld l, b

jr_009_76F1:
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_009_775D

    ld l, a

jr_009_76F7:
    ld [hl], h
    rst $38
    ld [hl], e
    ld [hl], b
    ld [hl], l
    ld l, [hl]
    ld l, e
    ld l, $20
    ld c, c
    jr nz, jr_009_7777

jr_009_7703:
    ld l, b

jr_009_7704:
    ld l, c
    ld l, [hl]
    ld l, e
    cp $73
    ld l, b
    ld h, l
    jr nz, jr_009_7770

    ld h, c

jr_009_770E:
    ld l, [hl]
    jr nz, @+$66

    ld l, a
    jr nz, @+$6B

    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld [de], a
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]
    ld b, d
    ld l, a
    daa
    ld b, c
    ld l, b
    ld [hl], e
    ld h, c
    ccf

jr_009_7728:
    cp $FD
    and c
    ld e, e
    inc de
    ld b, l
    and d
    jr jr_009_777F

    and [hl]

jr_009_7732:
    ld c, a

jr_009_7733:
    ld c, e
    inc l
    jr nz, @+$4B

    daa
    ld l, l
    jr nz, jr_009_77AE

    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    ld l, $FE
    db $FD
    ld e, e

jr_009_7743:
    ld d, $A6
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_009_77B7

    ld [hl], l
    ld h, e

jr_009_774D:
    ld l, e
    rst $38
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    ld l, $FE
    db $FD
    and c
    ld e, e
    inc d
    ld b, l
    and d

jr_009_775D:
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, c

jr_009_7763:
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld l, $20
    ld b, d
    ld a, c
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e

jr_009_7770:
    dec d
    ld b, [hl]
    rrca
    ld bc, $A136
    dec b

jr_009_7777:
    ld [bc], a
    add hl, bc
    add hl, de
    ld a, b
    ld b, [hl]
    ld [$010F], sp

jr_009_777F:
    ld [hl], $A1
    dec b
    ld bc, $0110
    jr c, jr_009_7728

    dec b
    dec b
    add hl, bc
    db $10
    ld a, b
    ld b, [hl]
    rrca
    ld bc, $A136
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    and d
    cp b
    ld e, l
    and [hl]
    ld d, d
    ld h, l
    ld l, l
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_009_7806

    ld [hl], e
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_009_781F

    ld l, a
    ld l, h

jr_009_77AE:
    halt
    ld h, l
    jr nz, jr_009_7826

    ld l, b
    ld l, c
    ld [hl], e
    cp $6E

jr_009_77B7:
    ld h, l
    ld a, b
    ld [hl], h
    jr nz, jr_009_782F

    ld h, l
    ld [hl], d
    ld l, c
    ld h, l
    ld [hl], e
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_009_7833

    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    inc l
    jr nz, @+$6E

    ld l, a
    ld l, a
    ld l, e
    cp $66
    ld l, a
    ld [hl], d
    jr nz, jr_009_784A

    ld l, b
    ld h, l
    rst $38
    ld h, e
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    ld hl, $4920
    ld [hl], h
    jr nz, @+$6B

    ld [hl], e
    cp $76
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_009_7857

    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld [hl], h
    rst $38
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_009_7876

    ld l, a
    ld [hl], l
    jr nz, jr_009_7867

    ld l, c
    ld l, [hl]
    ld h, h
    cp $69

jr_009_7806:
    ld [hl], h
    ld l, $FE
    db $FD
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld [hl], $A1
    nop
    or e
    ld sp, $00C7
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop

jr_009_781F:
    inc d
    ret


    ld e, l
    and d
    cp b
    ld e, l
    and [hl]

jr_009_7826:
    ld c, a
    ld l, b
    inc l
    jr nz, jr_009_788D

    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d

jr_009_782F:
    ld h, l
    jr nz, jr_009_78AB

    ld l, a

jr_009_7833:
    ld [hl], l
    rst $38
    ld h, a
    ld l, a
    inc l
    jr nz, jr_009_7883

    jr nz, @+$6A

    ld h, c
    halt
    ld h, l
    jr nz, jr_009_78A2

    cp $67
    ld l, c
    ld h, [hl]
    ld [hl], h
    jr nz, jr_009_78AE

    ld l, a
    ld [hl], d

jr_009_784A:
    jr nz, jr_009_78C5

    ld l, a
    ld [hl], l
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld h, c

jr_009_7857:
    ld a, c
    ld hl, $4920
    jr nz, jr_009_78C9

    ld l, a
    halt
    ld h, l
    rst $38
    ld [hl], e
    ld [hl], l
    ld [hl], b
    ld [hl], d
    ld l, c
    ld [hl], e

jr_009_7867:
    ld h, l
    ld [hl], e
    ld l, $20
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    cp $69
    ld [hl], e
    jr nz, jr_009_78DD

    ld [hl], h
    ccf

jr_009_7876:
    cp $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld c, c
    jr nz, jr_009_78F1

    ld h, l
    ld l, l
    ld h, l
    ld l, l

jr_009_7883:
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_009_78FF

    ld l, b
    ld h, l
    ld l, [hl]
    rst $38
    ld c, c

jr_009_788D:
    jr nz, jr_009_7906

    ld h, c
    ld [hl], e
    jr nz, jr_009_790C

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    cp $61
    ld l, [hl]
    ld h, h
    jr nz, jr_009_7913

    ld [hl], d
    ld l, c
    ld h, l

jr_009_78A2:
    ld h, h
    jr nz, jr_009_7919

    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    rst $38
    ld l, l

jr_009_78AB:
    ld h, c
    ld a, d
    ld h, l

jr_009_78AE:
    ld [hl], e
    jr nz, jr_009_791E

    ld a, c
    ld [hl], e
    ld h, l
    ld l, h
    ld h, [hl]
    ld l, $2E
    ld l, $FE
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$59

    ld h, l
    ld h, c
    halt
    ld h, l
    jr nz, jr_009_7928

jr_009_78C5:
    ld h, c
    ld l, [hl]
    rst $38
    ld h, a

jr_009_78C9:
    ld [hl], d
    ld l, a
    ld [hl], a
    jr nz, jr_009_7942

    ld l, a
    jr nz, jr_009_7933

    ld h, l
    cp $71
    ld [hl], l
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_009_794E

    ld h, c
    ld l, h
    ld l, h

jr_009_78DD:
    jr nz, jr_009_7948

    ld l, [hl]
    rst $38
    ld [hl], b
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld [hl], e
    ld l, $20
    cp $49
    jr nz, jr_009_794E

    ld l, h
    ld l, l
    ld l, a
    ld [hl], e

jr_009_78F1:
    ld [hl], h
    jr nz, @+$68

    ld h, l
    ld l, h
    ld l, h
    rst $38
    ld h, c
    jr nz, @+$68

    ld h, l
    ld [hl], a
    jr nz, @+$76

jr_009_78FF:
    ld l, c
    ld l, l
    ld h, l
    ld [hl], e
    inc l
    cp $73

jr_009_7906:
    ld l, a
    jr nz, jr_009_7952

    jr nz, jr_009_797F

    ld l, b

jr_009_790C:
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h
    rst $38
    ld c, c

jr_009_7913:
    daa
    ld h, h
    jr nz, jr_009_7984

    ld h, c
    ld l, e

jr_009_7919:
    ld h, l
    jr nz, jr_009_798F

    ld [hl], l
    ld [hl], d

jr_009_791E:
    ld h, l
    cp $74
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_009_799F

    ld l, a
    ld [hl], l

jr_009_7928:
    jr nz, jr_009_798E

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    ld l, $FE
    ld c, b
    ld h, l
    ld [hl], d

jr_009_7933:
    ld h, l
    inc l
    jr nz, @+$76

    ld h, c
    ld l, e
    ld h, l
    cp $74
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    ld l, $FE

jr_009_7942:
    db $FD
    and c
    add hl, bc
    inc bc
    inc de
    ld c, b

jr_009_7948:
    ld l, l
    add hl, bc
    nop
    add hl, bc
    xor c
    ld a, d

jr_009_794E:
    ld h, l
    ld bc, $98A2

jr_009_7952:
    ld b, c
    and [hl]
    ld b, e
    ld l, a
    ld l, a
    ld l, h
    ld hl, $5720
    ld l, c
    ld l, [hl]
    ld h, a
    ld [hl], e
    ld hl, $57FF
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_009_79CC

    ld l, c
    ld h, h
    jr nz, jr_009_79E5

    ld l, a
    ld [hl], l
    cp $67
    ld h, l
    ld [hl], h
    jr nz, jr_009_79E8

    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    ccf
    cp $FD
    and d
    cp b
    ld e, l
    and [hl]

jr_009_797F:
    ld c, c
    jr nz, @+$6A

    ld h, c
    ld h, h

jr_009_7984:
    jr nz, jr_009_79DD

    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_009_79FE

    ld [hl], l
    ld l, [hl]

jr_009_798E:
    rst $38

jr_009_798F:
    ld [hl], h
    ld l, a
    jr nz, jr_009_79D4

    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    ld l, c
    ld h, c
    ld l, h
    jr nz, jr_009_7A10

    ld l, a
    cp $70

jr_009_799F:
    ld l, c
    ld h, e
    ld l, e
    jr nz, jr_009_7A18

    ld l, b
    ld h, l
    ld l, l
    jr nz, jr_009_7A1E

    ld [hl], b
    ld l, $20
    ld c, c
    rst $38
    ld l, b
    ld l, a
    ld [hl], b
    ld h, l
    jr nz, jr_009_7A28

    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_009_7A1A

    ld [hl], d
    ld h, l
    cp $74
    ld l, b
    ld h, l
    jr nz, @+$74

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, @+$75

    ld l, c
    ld a, d
    ld h, l
    ld l, $FF

jr_009_79CC:
    ld c, c
    daa
    ld l, l
    jr nz, jr_009_7A44

    ld [hl], l
    ld [hl], d
    ld h, l

jr_009_79D4:
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h
    cp $74
    ld l, b
    ld h, l

jr_009_79DD:
    ld a, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_009_7A46

    ld l, a
    ld l, l

jr_009_79E5:
    ld h, l
    rst $38
    ld l, c

jr_009_79E8:
    ld l, [hl]
    jr nz, jr_009_7A53

    ld h, c
    ld l, [hl]
    ld h, h
    ld a, c
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, @+$6B

    ld [hl], h
    daa
    ld [hl], e

jr_009_79FE:
    jr nz, jr_009_7A6E

    ld l, a
    ld [hl], h
    rst $38
    ld h, l
    halt
    ld h, l
    ld l, [hl]
    jr nz, jr_009_7A76

    ld a, c
    cp $62
    ld l, c
    ld [hl], d
    ld [hl], h
    ld l, b

jr_009_7A10:
    ld h, h
    ld h, c
    ld a, c
    ld hl, $54FE
    ld l, b
    ld h, c

jr_009_7A18:
    ld l, [hl]
    ld l, e

jr_009_7A1A:
    ld [hl], e
    inc l
    jr nz, jr_009_7A63

jr_009_7A1E:
    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    ld hl, $FDFE
    and d
    cp b
    ld e, l

jr_009_7A28:
    and [hl]
    ld d, d
    ld h, l
    ld l, l
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_009_7A95

    ld [hl], e
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_009_7AAE

    ld l, a
    ld l, h
    halt
    ld h, l
    jr nz, @+$76

    ld l, b
    ld l, c
    ld [hl], e

jr_009_7A44:
    cp $6E

jr_009_7A46:
    ld h, l
    ld a, b
    ld [hl], h
    jr nz, jr_009_7ABE

    ld h, l
    ld [hl], d
    ld l, c
    ld h, l
    ld [hl], e
    rst $38
    ld l, a
    ld h, [hl]

jr_009_7A53:
    jr nz, jr_009_7AC2

    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    inc l
    jr nz, @+$6E

    ld l, a
    ld l, a
    ld l, e
    cp $66
    ld l, a
    ld [hl], d

jr_009_7A63:
    jr nz, jr_009_7AD9

    ld l, b
    ld h, l
    rst $38
    ld h, e
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c

jr_009_7A6E:
    ld l, h
    ld hl, $4920
    ld [hl], h
    jr nz, jr_009_7ADE

    ld [hl], e

jr_009_7A76:
    cp $76
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_009_7AE6

    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld [hl], h
    rst $38
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_009_7B05

    ld l, a
    ld [hl], l
    jr nz, jr_009_7AF6

    ld l, c
    ld l, [hl]
    ld h, h
    cp $69

jr_009_7A95:
    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld [hl+], a
    ld de, $099B
    inc c
    ld l, d
    ld e, l
    add hl, de
    ldh a, [rDMA]
    or e
    ld sp, $00C7
    ld b, l
    inc de
    ld hl, sp+$4A
    dec d
    inc d

jr_009_7AAE:
    ld c, l
    ld e, h
    jr nz, jr_009_7AC6

    adc l
    ld e, h
    jr nc, jr_009_7ACA

    ret


    ld e, l
    ld d, b
    inc d
    ld l, l
    ld e, h
    jr jr_009_7ABE

jr_009_7ABE:
    inc d
    inc d
    or l
    ld e, l

jr_009_7AC2:
    ld e, e
    ld bc, $4845

jr_009_7AC6:
    ld a, [bc]
    add $5A
    ld c, b

jr_009_7ACA:
    ld a, [bc]
    call z, Call_009_485A
    ld a, [bc]
    jp nc, Jump_009_485A

    ld a, [bc]
    ret c

    ld e, d
    ld c, b
    ld a, [bc]
    sbc $5A

jr_009_7AD9:
    ld bc, $1107
    ld c, b
    ld a, [de]

jr_009_7ADE:
    inc l
    ld d, c
    ld bc, $1107
    ld c, b
    ld a, [de]
    inc l

jr_009_7AE6:
    ld d, c
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, jr_009_7B69

jr_009_7AF6:
    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l
    ld [hl], e
    rst $38
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_009_7B65

    ld [hl], d
    ld h, l
    ld h, l

jr_009_7B05:
    ld [hl], b
    ld a, c
    ld hl, $4920
    daa
    ld l, l
    cp $6E
    ld l, a
    ld [hl], h
    jr nz, jr_009_7B77

    halt
    ld h, l
    ld l, [hl]
    jr nz, jr_009_7B8A

    ld [hl], l
    ld [hl], d
    ld h, l
    rst $38
    ld [hl], a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_009_7B95

    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_009_7B87

    ld [hl], d
    ld h, l
    ld hl, $FE20
    db $FD
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$75

    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l
    jr nz, @+$01

    ld [hl], e
    ld h, c
    ld a, c
    ld [hl], e
    jr nz, jr_009_7BBC

    ld l, [hl]
    jr nz, @+$6B

    ld [hl], h
    jr nz, jr_009_7BC7

    ld l, b
    ld h, c
    ld [hl], h
    cp $69
    ld [hl], h
    jr nz, jr_009_7BC4

    ld [hl], e
    jr nz, jr_009_7BC6

    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_009_7BD7

    ld l, a
    rst $38

jr_009_7B65:
    ld [hl], b
    ld [hl], d
    ld l, a
    ld l, l

jr_009_7B69:
    ld l, a
    ld [hl], h
    ld h, l
    jr nz, jr_009_7BDE

    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    cp $67
    ld [hl], d
    ld l, a
    ld [hl], a

jr_009_7B77:
    ld [hl], h
    ld l, b
    jr nz, jr_009_7BDC

    ld l, [hl]
    ld h, h
    rst $38
    ld h, d
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_009_7BE7

    ld h, c
    ld h, h

jr_009_7B87:
    jr nz, jr_009_7BFD

    ld l, c

jr_009_7B8A:
    ld l, l
    ld h, l
    ld [hl], e
    cp $75
    ld [hl], b
    ld l, a
    ld l, [hl]
    jr nz, @+$63

    ld l, h

jr_009_7B95:
    ld l, h
    jr nz, jr_009_7C0F

    ld h, l
    ld h, l
    ld h, h
    ld [hl], e
    ld l, $FE
    db $FD
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_009_7C27

    ld h, l
    ld h, l
    ld l, l
    ld [hl], e
    jr nz, jr_009_7C2E

    ld l, a
    rst $38

jr_009_7BBC:
    ld h, d
    ld h, l
    jr nz, jr_009_7C27

    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e

jr_009_7BC4:
    cp $67

jr_009_7BC6:
    ld [hl], d

jr_009_7BC7:
    ld l, a
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_009_7C3D

    ld [hl], l
    ld [hl], h
    jr nz, jr_009_7C41

    ld h, [hl]
    rst $38
    ld [hl], h
    ld l, b
    ld h, l

jr_009_7BD7:
    jr nz, @+$65

    ld [hl], d
    ld h, c
    ld h, e

jr_009_7BDC:
    ld l, e
    ld [hl], e

jr_009_7BDE:
    jr nz, jr_009_7C4F

    ld l, [hl]

jr_009_7BE1:
    jr nz, jr_009_7BE1

    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e

jr_009_7BE7:
    jr nz, @+$75

    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l
    ld l, $FE
    db $FD
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d
    sbc b

jr_009_7BFD:
    ld b, c
    and [hl]
    ld e, c
    ld h, c
    ld l, e
    ld l, c
    jr nz, jr_009_7C6D

    ld h, c
    ld [hl], e
    jr nz, jr_009_7C6B

    ld h, l
    ld h, l
    ld l, [hl]
    rst $38
    ld [hl], h
    ld l, a

jr_009_7C0F:
    jr nz, jr_009_7C85

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_009_7C89

    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l
    ld l, $FE
    ld c, c
    ld [hl], h
    jr nz, jr_009_7C89

    ld h, c
    ld [hl], e
    jr nz, @+$29

    ld e, c
    ld h, c

jr_009_7C27:
    ld l, e
    ld l, c
    jr nz, jr_009_7C94

    ld [hl], e
    rst $38
    ld h, h

jr_009_7C2E:
    ld h, c
    jr nz, jr_009_7C9E

    ld h, c
    ld l, [hl]
    daa
    jr nz, @+$65

    ld h, c
    ld [hl], d
    halt
    ld h, l
    ld h, h
    cp $6F

jr_009_7C3D:
    ld l, [hl]
    jr nz, jr_009_7CA9

    ld [hl], h

jr_009_7C41:
    ld l, $FE
    db $FD
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d

jr_009_7C4F:
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_009_7CB9

    ld l, c
    ld [hl], d
    ld h, h
    ld [hl], e
    jr nz, @+$01

    ld [hl], d
    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_009_7CD8

    ld h, l
    ld h, l
    ld l, l
    jr nz, jr_009_7CDE

    ld l, a

jr_009_7C6B:
    cp $6C

jr_009_7C6D:
    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_009_7CE6

    ld l, b
    ld l, c
    ld [hl], e
    rst $38
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l
    ld hl, $FDFE
    and c
    or e
    ld sp, $00C7
    ld b, l

jr_009_7C85:
    or e
    ld sp, $01C7

jr_009_7C89:
    and d
    sbc b
    ld b, c
    and [hl]
    daa
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_009_7CE6

    ld [hl], h

jr_009_7C94:
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l
    jr nz, jr_009_7D09

    ld h, [hl]
    rst $38
    ld b, a
    ld l, a

jr_009_7C9E:
    ld l, a
    ld h, h
    jr nz, jr_009_7CF4

    ld l, c
    ld h, h
    ld h, h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l

jr_009_7CA9:
    daa
    ccf
    cp $FD
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d
    sbc b

jr_009_7CB9:
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_009_7D34

    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l
    rst $38
    ld l, l
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_009_7D2F

    ld h, l
    jr nz, jr_009_7D42

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    cp $6F
    ld l, h

jr_009_7CD8:
    ld h, h
    inc l
    jr nz, jr_009_7D3E

    ld h, l
    ld h, e

jr_009_7CDE:
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_009_7D4D

    ld [hl], h
    rst $38

jr_009_7CE6:
    ld l, c
    ld [hl], e
    jr nz, jr_009_7D5D

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_009_7D67

    ld l, a

jr_009_7CF4:
    cp $63
    ld [hl], d
    ld [hl], l
    ld l, l
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_009_7D5F

    ld [hl], a
    ld h, c
    ld a, c
    ld l, $FE
    db $FD
    and c
    or e
    ld sp, $00C7

jr_009_7D09:
    ld b, l
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_009_7D80

    ld h, c
    halt
    ld h, l
    jr nz, jr_009_7D91

    ld l, b
    ld l, c
    ld [hl], e
    rst $38
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l
    jr nz, jr_009_7D8C

    ld l, b
    ld h, c
    ld l, c
    ld l, [hl]
    ld h, l
    ld h, h

jr_009_7D2F:
    cp $64
    ld l, a
    ld [hl], a
    ld l, [hl]

jr_009_7D34:
    ld hl, $4920
    ld [hl], h
    jr nz, jr_009_7DA7

    ld [hl], l
    ld [hl], e
    ld [hl], h
    rst $38

jr_009_7D3E:
    ld l, b
    ld h, c
    halt
    ld h, l

jr_009_7D42:
    jr nz, jr_009_7DA6

    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, @+$64

    ld l, a
    ld [hl], d
    ld h, l
    ld h, h

jr_009_7D4D:
    cp $61
    ld l, [hl]
    ld h, h
    jr nz, jr_009_7DC7

    ld [hl], d
    ld l, c
    ld h, l
    ld h, h
    jr nz, jr_009_7DCD

    ld l, a
    jr nz, @+$01

    ld [hl], d

jr_009_7D5D:
    ld [hl], l
    ld l, [hl]

jr_009_7D5F:
    jr nz, @+$63

    ld [hl], a
    ld h, c
    ld a, c
    ld hl, $FDFE

jr_009_7D67:
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_009_7DEE

    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l

jr_009_7D80:
    jr nz, @+$01

    ld [hl], e
    ld h, c
    ld a, c
    ld [hl], e
    inc l
    jr nz, @+$29

    ld d, d
    ld [hl], l
    ld l, [hl]

jr_009_7D8C:
    jr nz, jr_009_7D8C

    ld h, c
    ld [hl], d
    ld l, a

jr_009_7D91:
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$6A

    ld h, l
    ld h, c
    ld h, h
    rst $38
    ld h, [hl]
    ld l, c
    halt
    ld h, l
    jr nz, jr_009_7E18

    ld l, c
    ld l, l

jr_009_7DA6:
    ld h, l

jr_009_7DA7:
    ld [hl], e
    ld l, $27
    cp $57
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_009_7E1A

    ld [hl], e
    jr nz, jr_009_7E28

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$01

    ld [hl], e
    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_009_7E37

    ld l, a

jr_009_7DC4:
    jr nz, jr_009_7DC4

    ld l, l

jr_009_7DC7:
    ld h, l
    ld h, c
    ld l, [hl]
    ccf
    cp $FD

jr_009_7DCD:
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_009_7E50

    ld l, [hl]
    ld h, l
    jr nz, jr_009_7E58

    ld h, c
    ld a, c
    ld [hl], e
    inc l
    rst $38
    daa
    ld d, h
    ld l, b
    ld h, l

jr_009_7DEE:
    ld l, [hl]
    jr nz, jr_009_7E61

    ld l, a
    ld l, e
    ld h, l
    jr nz, jr_009_7E6A

    ld l, b
    ld h, l
    cp $65
    ld a, c
    ld h, l
    ld l, $27
    rst $38
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    cp $49
    jr nz, jr_009_7E6C

    ld l, l
    jr nz, @+$69

    ld h, l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld [hl], d
    ld h, l
    ld h, c

jr_009_7E18:
    ld l, h
    ld l, h

jr_009_7E1A:
    ld a, c
    jr nz, @+$65

    ld l, a
    ld l, [hl]
    ld h, [hl]
    ld [hl], l
    ld [hl], e
    ld h, l
    ld h, h
    cp $77
    ld l, c
    ld [hl], h

jr_009_7E28:
    ld l, b
    jr nz, jr_009_7E9F

    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, @+$01

    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l

jr_009_7E37:
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
    dec b
    add hl, bc
    ld e, c
    ld a, [hl]
    add hl, bc
    adc h
    ld a, [hl]

jr_009_7E50:
    add hl, bc
    jp nc, $097E

    inc b
    ld a, a
    add hl, bc
    ld b, c

jr_009_7E58:
    ld a, a
    and [hl]
    ld d, e
    ld l, a
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l

jr_009_7E61:
    jr nz, jr_009_7ED1

    ld h, l
    ld h, l
    ld h, h
    ld [hl], e
    rst $38
    ld [hl], h
    ld l, a

jr_009_7E6A:
    jr nz, jr_009_7ED9

jr_009_7E6C:
    ld l, a
    ld [hl], a
    jr nz, jr_009_7EE4

    ld l, b
    ld h, l
    ld l, c
    ld [hl], d
    cp $67
    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_009_7EE9

    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$01

    ld l, a
    ld h, [hl]
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld hl, $FDFE
    ld c, c
    ld [hl], e
    ld a, a
    and [hl]
    ld c, c
    jr nz, jr_009_7EFE

    ld h, l
    ld h, l
    ld h, h
    jr nz, @+$76

    ld l, a
    jr nz, jr_009_7EFE

    ld l, c
    ld l, [hl]
    ld h, h
    rst $38
    ld l, a
    ld [hl], l
    ld [hl], h

jr_009_7E9F:
    jr nz, jr_009_7F18

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_009_7F11

    ld l, c
    ld l, [hl]
    ld h, h
    cp $6F
    ld h, [hl]
    jr nz, jr_009_7F1E

    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_009_7F1A

    ld l, a
    ld l, a
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_009_7F33

    ld [hl], e
    ld h, l
    jr nz, jr_009_7F23

    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    cp $68
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $FDFE
    ld c, c
    ld [hl], e

jr_009_7ED1:
    ld a, a
    and [hl]
    ld c, h
    ld h, c
    ld [hl], d
    ld h, a
    ld h, l
    inc l

jr_009_7ED9:
    jr nz, jr_009_7F4F

    ld h, c
    ld l, h
    ld l, h
    jr nz, @+$01

    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], e

jr_009_7EE4:
    ld [hl], e
    jr nz, jr_009_7F4C

    ld [hl], c
    ld [hl], l

jr_009_7EE9:
    ld h, c
    ld l, h
    ld [hl], e

jr_009_7EEC:
    jr nz, jr_009_7EEC

    ld l, h
    ld h, c
    ld [hl], d
    ld h, a
    ld h, l
    inc l
    jr nz, jr_009_7F6A

    ld h, c
    ld l, h
    ld l, h
    rst $38
    ld h, d
    ld [hl], l
    ld h, a
    ld [hl], e

jr_009_7EFE:
    ld hl, $FDFE
    ld c, c
    ld [hl], e
    ld a, a
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_009_7F6D

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_009_7F7C

    ld l, a

jr_009_7F11:
    ld [hl], e
    ld h, l
    rst $38
    ld h, c
    jr nz, jr_009_7F8E

    ld h, l

jr_009_7F18:
    ld h, l
    ld h, d

jr_009_7F1A:
    ld l, a
    jr nz, jr_009_7F86

    ld l, [hl]

jr_009_7F1E:
    jr nz, jr_009_7F1E

    ld [hl], h
    ld l, b
    ld h, l

jr_009_7F23:
    ld [hl], d
    ld h, l
    jr nz, jr_009_7F90

    ld l, [hl]
    jr nz, jr_009_7F8B

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    rst $38
    ld h, [hl]
    ld l, c
    halt
    ld h, l

jr_009_7F33:
    jr nz, jr_009_7FA8

    ld h, l
    ld h, e
    ld l, a
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld hl, $FDFE
    ld c, c
    ld [hl], e
    ld a, a
    and [hl]
    ld c, c
    jr nz, jr_009_7FA9

    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_009_7FAE

    ld h, c
    ld [hl], h

jr_009_7F4C:
    jr nz, jr_009_7FBB

    ld a, c

jr_009_7F4F:
    rst $38
    ld l, b
    ld h, c
    ld a, c
    ld h, [hl]
    ld h, l
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_009_7FC3

    ld [hl], e

jr_009_7F5B:
    jr nz, jr_009_7F5B

    ld [hl], e
    ld h, h
    ld h, c
    ld [hl], d
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_009_7FCB

    ld h, c
    jr nz, @+$01

jr_009_7F6A:
    ld h, c
    ld h, e
    ld [hl], h

jr_009_7F6D:
    jr nz, jr_009_7FE4

    ld [hl], b
    ld hl, $FDFE
    and c
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    rrca
    nop

jr_009_7F7C:
    scf
    and b
    ld bc, $0005
    add hl, de
    rst $20
    ld b, [hl]
    add e
    and c

jr_009_7F86:
    ret nc

    rlca
    dec b
    and c
    ret nc

jr_009_7F8B:
    dec b
    dec bc
    ld b, l

jr_009_7F8E:
    ld b, [hl]
    rrca

jr_009_7F90:
    nop
    scf
    and b
    ld [bc], a
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e
    reti


    ret nc

    inc b
    ld [$D0D9], sp
    rlca
    rlca
    add e
    xor l
    pop de
    ld bc, $AD02

jr_009_7FA8:
    pop de

jr_009_7FA9:
    ld c, $09
    ld b, l
    ld b, [hl]
    rrca

jr_009_7FAE:
    nop
    scf
    and b
    inc b
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e
    ld [$04D1], a

jr_009_7FBB:
    add hl, bc
    ld [$10D1], a
    ld a, [bc]
    ld b, l
    ld b, [hl]
    rrca

jr_009_7FC3:
    nop
    scf
    and b
    ld [$0005], sp
    add hl, de
    rst $20

jr_009_7FCB:
    ld b, [hl]
    add e
    add a
    pop de
    rlca
    ld c, $87
    pop de
    dec c
    ld bc, $4645
    rrca
    nop
    scf
    and b
    jr nz, jr_009_7FE2

    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e

jr_009_7FE2:
    ld [hl], l
    pop de

jr_009_7FE4:
    ld [$750C], sp
    pop de
    inc c
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
