; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    ld [de], a
    inc c
    ld hl, $291E
    ld d, $2F
    ld de, $132F
    inc de
    dec c
    rrca
    inc bc
    rrca
    dec b
    rrca
    ld b, $07
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    ld [de], a
    inc c
    dec h
    ld a, [de]
    add hl, hl
    ld d, $2F
    ld de, $132F
    rra
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    inc bc
    rlca
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld [$1007], sp
    rrca
    ld [de], a
    dec c
    ccf
    ld [de], a
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
    ld [hl], b
    add b
    ld a, b
    or b
    ccf
    ld [de], a
    ld a, [hl]
    add hl, sp
    ld a, b
    scf
    ld a, a
    jr c, jr_017_40A8

    dec c
    rra
    inc bc
    rrca
    nop
    rlca
    nop
    ld a, b
    or b
    ld a, [hl]
    cp b
    rst $38
    ld a, d
    rst $38
    ld a, [$F0FE]
    db $FC
    ret nz

    ld hl, sp+$00
    jr nc, jr_017_4080

jr_017_4080:
    ld a, [hl]
    add hl, sp
    ld a, b
    scf
    ld a, a
    jr c, jr_017_40C6

    dec c
    rra
    inc bc
    rra
    nop
    inc c
    nop
    nop
    nop

jr_017_4090:
    ld a, [hl]
    cp b
    rst $38
    ld a, d
    rst $38
    ld a, [$F0FE]
    db $FC
    ret nz

    cp $00
    ld c, $00
    nop
    nop
    ld [hl+], a
    db $10
    ld c, b
    rla
    ld b, c
    ld b, c
    ld [hl+], a
    db $10

jr_017_40A8:
    ld c, b
    rla
    sbc e
    ld b, a
    ld [hl+], a
    db $10
    ld c, b
    rla
    ld h, [hl]
    ld c, l
    ld [hl+], a
    db $10
    ld c, b
    rla
    ld d, e
    ld d, d
    ld [hl+], a
    db $10
    ld c, b
    rla
    ld c, [hl]
    ld d, a
    or [hl]
    ld [hl-], a
    and b
    ld bc, $0B01
    rrca
    ld c, b

jr_017_40C6:
    rrca
    and b
    ld e, b
    ld b, [hl]
    nop
    ld c, d
    and b
    ld [$EB17], sp
    ld b, b
    or [hl]
    ld [hl-], a
    and b
    ld bc, $32B6
    and b
    jr nz, jr_017_4090

    ld c, d
    and b
    ld [$0F46], sp
    ld bc, $A136
    dec b
    inc b
    rla
    ret


    ld b, b
    ld c, b
    rrca
    and [hl]
    ld e, d
    or [hl]
    ld [hl-], a
    and b
    ld bc, $32B6
    and b
    jr nz, jr_017_40F5

    dec bc

jr_017_40F5:
    rrca
    ld c, b
    rrca
    and b
    ld e, b
    or [hl]
    ld [hl-], a
    and b
    ld [bc], a
    ld bc, $0E13
    ld c, b
    rrca
    and b
    ld e, b
    or [hl]
    ld [hl-], a
    and b
    inc b
    ld bc, $1414
    ld c, b
    rrca
    and b
    ld e, b
    ld b, [hl]
    nop
    ld [hl-], a
    and b
    ld [$2317], sp
    ld b, c
    or [hl]
    ld [hl-], a
    and b
    ld [$0901], sp
    dec d
    ld c, b
    rrca
    adc c
    ld e, e
    ld bc, $1509
    ld c, b
    rrca
    and b
    ld e, b
    ld b, [hl]
    nop
    ld [hl-], a
    and b
    db $10
    rla
    ld a, [hl-]
    ld b, c
    or [hl]
    ld [hl-], a
    and b
    db $10
    ld c, b
    rrca
    ld a, c
    ld e, c
    ld bc, $0314
    ld c, b
    rrca
    and b
    ld e, b
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
    adc d
    ld d, d
    inc de
    ld h, a
    cp a
    ld c, b
    ld l, h
    db $EC
    ld c, b
    ld l, a
    push af
    ld c, b
    dec b
    nop
    inc [hl]
    ld h, e
    ld e, $15

jr_017_4165:
    ld h, [hl]
    db $D3
    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    ld e, $13
    ld d, $D3
    nop
    ld de, $7279
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    dec e
    dec de
    ld d, l
    call nc, $110F
    ei
    ld [hl], d
    add hl, de
    add sp, $46
    dec b
    inc b

jr_017_418E:
    ld hl, sp+$4A
    rra
    dec b

jr_017_4192:
    rst $20
    ret nc

    rrca
    ld de, $72FB
    add hl, de
    add sp, $46
    dec b
    dec b
    ld hl, sp+$4A
    ld [hl+], a
    dec h
    ld [$0FD5], a
    ld de, $72FB
    add hl, de
    add sp, $46
    dec b
    ld b, $F8
    ld c, d
    dec d
    rla
    xor l
    db $D3
    ld [de], a
    ld de, $7476
    add hl, de
    add sp, $46
    ld [$1006], sp
    nop
    dec d
    rla
    xor l
    db $D3
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b
    dec bc
    dec b
    dec bc
    ld b, $6E
    ld b, $0D
    ld b, b
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    inc bc
    dec c
    and b
    ld b, e
    ldh a, [$80]
    nop
    ld l, [hl]
    ld b, b
    ld a, [bc]
    inc de
    ld [hl], h
    jr nz, jr_017_4165

    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    dec b
    or l
    jr z, jr_017_418E

    cp $B5
    jr z, jr_017_4192

    db $FD
    or l
    ld a, [hl+]
    and b
    cp $B5
    ld a, [hl+]
    and b
    db $FD
    or l
    ld a, [hl+]
    and b
    ei
    or e
    inc sp
    and c
    nop
    or l
    add hl, hl
    and b
    ld a, a
    or l
    add hl, hl
    and b
    cp a
    sbc e
    rla
    db $10
    ld b, d
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
    jr nz, jr_017_4271

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_017_426D

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    rla
    ld b, l
    ld b, d
    rla
    jp nz, Jump_017_4540

    or e
    ld sp, $01C7
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    rla
    ld b, l
    ld b, d
    ld e, $08
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $17
    ld e, h
    ld b, d
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $0F72
    nop
    nop
    ld a, d
    jr nz, jr_017_4269

    ld a, d
    jr nz, jr_017_42DE

    ld c, b
    rla
    ld b, l

jr_017_4269:
    ld b, c
    ld e, $13
    rlca

jr_017_426D:
    nop
    ld hl, sp+$4A
    add hl, bc

jr_017_4271:
    nop
    inc d
    ld b, c
    ld e, a
    ld b, e
    jr nz, jr_017_4281

    nop
    inc d
    ld d, c
    ld e, a
    ld b, e
    ld b, b
    ld c, b
    rla
    ld b, l

jr_017_4281:
    ld b, d
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
    jr nz, jr_017_42F6

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_017_42FF

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    rla
    db $DD
    ld b, d
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_017_4326

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_4330

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_017_431E

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
    ld [hl-], a
    and b
    ld bc, $0005
    rla
    add hl, de
    ld b, e
    and c
    xor l
    ld l, c
    and c
    ld bc, $A132
    ld c, b
    rla
    cp [hl]
    ld b, b
    and [hl]

jr_017_42DE:
    ld c, c
    ld [hl], h
    jr nz, jr_017_4356

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_4360

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_4364

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_017_4327

    dec [hl]

jr_017_42F6:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_017_42FF:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld [hl-], a
    and b
    ld bc, $0005
    rla
    add hl, de
    ld b, e
    and c
    xor l
    ld l, c
    and c
    ld bc, $A132
    ld c, b
    rla
    cp [hl]
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_017_431E:
    ld bc, $A169
    rla
    sbc b
    ld b, e
    sbc a
    ld l, c

jr_017_4326:
    and c

jr_017_4327:
    ld b, [hl]
    rrca
    ld bc, $A169
    dec b
    ld bc, $5E17

jr_017_4330:
    ld b, e
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_017_439A

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
    jr nz, jr_017_4397

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_43B3

    ld [hl], e
    cp $FC
    jr nz, jr_017_43B0

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_017_4356:
    ld l, $FE
    db $FD
    and c
    ld c, b
    rla
    cp [hl]
    ld b, b
    and [hl]
    ld d, h

jr_017_4360:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_017_4364:
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
    jr nz, jr_017_43C4

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_017_43F2

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
    rla
    cp [hl]

jr_017_4397:
    ld b, b
    sbc a
    ld l, c

jr_017_439A:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_017_4407

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_017_4416

    ld h, c
    halt

jr_017_43B0:
    ld h, l
    jr nz, jr_017_4426

jr_017_43B3:
    ld h, l
    ld [hl], h
    jr nz, @+$63

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_017_4405

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_017_4415

    ld h, e
    ld l, a

jr_017_43C4:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_017_443D

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
    jr nz, jr_017_442E

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_4458

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

jr_017_43F2:
    xor l
    ld l, c
    and c
    ld bc, $A132
    ld c, b
    rla
    cp [hl]
    ld b, b
    ld [hl+], a
    ld [bc], a
    inc c
    nop
    or e
    ld sp, $01C7
    and [hl]

jr_017_4405:
    ld e, c
    ld l, a

jr_017_4407:
    ld [hl], l
    jr nz, jr_017_4470

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_017_4471

    rst $38
    ld d, e
    ld b, l
    ld b, e
    ld d, d

jr_017_4415:
    ld b, l

jr_017_4416:
    ld d, h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    rla
    ld d, a
    ld b, h
    sbc a
    ld [hl-], a

jr_017_4426:
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_017_44A0

    ld l, a
    ld l, a

jr_017_442E:
    ld l, e
    jr nz, jr_017_44AA

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_017_4498

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_017_443D:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld [hl-], a
    and b
    ld bc, $0005
    rla
    sub e
    ld b, h
    and c
    xor l
    ld l, c
    and c
    ld bc, $A132
    ld c, b
    rla
    ret


    ld b, b
    and [hl]

jr_017_4458:
    ld c, c
    ld [hl], h
    jr nz, jr_017_44D0

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_44DA

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_44DE

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_017_44A1

    dec [hl]

jr_017_4470:
    dec [hl]

jr_017_4471:
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
    ld [hl-], a
    and b
    ld bc, $0005
    rla
    sub e
    ld b, h
    and c
    xor l
    ld l, c
    and c
    ld bc, $A132
    ld c, b
    rla
    ret


    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_017_4498:
    ld bc, $A169
    rla
    ld [de], a
    ld b, l
    sbc a
    ld l, c

jr_017_44A0:
    and c

jr_017_44A1:
    ld b, [hl]
    rrca
    ld bc, $A169
    dec b
    ld bc, $D817

jr_017_44AA:
    ld b, h
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_017_4514

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
    jr nz, jr_017_4511

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_452D

    ld [hl], e
    cp $FC
    jr nz, jr_017_452A

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_017_44D0:
    ld l, $FE
    db $FD
    and c
    ld c, b
    rla
    ret


    ld b, b
    and [hl]
    ld d, h

jr_017_44DA:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_017_44DE:
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
    jr nz, jr_017_453E

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_017_456C

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
    rla
    ret


jr_017_4511:
    ld b, b
    sbc a
    ld l, c

jr_017_4514:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l

jr_017_4519:
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
    jr nz, jr_017_4590

    ld h, c
    halt

jr_017_452A:
    ld h, l
    jr nz, @+$75

jr_017_452D:
    ld h, l
    ld [hl], h
    jr nz, jr_017_4592

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_017_457F

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_017_458F

    ld h, e
    ld l, a

jr_017_453E:
    ld [hl], d
    ld h, l

Jump_017_4540:
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_017_45B7

    ld [hl], d

Jump_017_4548:
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
    jr nz, jr_017_45A8

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_45D2

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_017_45C2

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

jr_017_456C:
    xor l
    ld l, c
    and c
    ld bc, $A132
    ld c, b
    rla
    ret


    ld b, b
    xor d
    jr z, jr_017_4519

    ld bc, $DC19
    ld b, [hl]
    cp $F2

jr_017_457F:
    push de
    ld e, $09
    ld e, l
    rla
    call z, Call_017_6B45
    ld l, h
    ld h, c
    cpl
    adc e
    ld l, c
    cpl
    add e
    ld d, b

jr_017_458F:
    ret nc

jr_017_4590:
    inc b
    inc b

jr_017_4592:
    ld a, c
    ret nc

    inc bc
    ld bc, $195D
    rst $20
    ld b, [hl]
    ld c, b
    add hl, de
    call c, $AA46
    jr z, @-$5E

    ld [bc], a
    add hl, de
    call c, $FE46
    xor e
    push de

jr_017_45A8:
    ld e, $09
    ld e, l
    add hl, de
    and a
    ld b, [hl]
    ld h, l
    ld [bc], a
    ld e, l
    rla
    call z, Call_017_6B45
    ld l, h
    ld h, c

jr_017_45B7:
    cpl
    adc e
    ld l, c
    cpl
    add e
    inc l
    ret nc

    ld bc, $0D03
    db $D3

jr_017_45C2:
    inc de
    dec d
    ld e, l
    add hl, de
    rst $20
    ld b, [hl]
    ld c, b
    add hl, de
    call c, $8746
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    add a

jr_017_45D2:
    ld [bc], a
    cp $FE
    nop
    ld c, b
    rla
    call z, $4645
    nop
    add hl, hl
    and b
    ld b, b
    rla
    add a
    ld b, [hl]
    ld e, $19
    ld b, [hl]
    ld a, [bc]
    nop
    add hl, hl
    and b
    add b
    rla
    dec [hl]
    ld b, d
    ld b, [hl]
    inc de
    ld bc, $A133
    dec b
    ld bc, $3517
    ld b, d
    xor l
    inc sp
    and c
    inc c
    ld bc, $A133
    dec b
    ld bc, $29B6
    and b
    ld b, b
    ld c, [hl]
    ld bc, $A133
    rla
    nop
    nop
    ld hl, $1746
    ld bc, $2700
    ld b, [hl]
    rla
    ld [bc], a
    nop
    dec l
    ld b, [hl]
    rla
    inc bc
    nop
    inc sp
    ld b, [hl]
    rst $38
    ld c, b
    rla
    dec [hl]
    ld b, [hl]
    inc c
    rla
    ld c, b
    rla
    dec [hl]
    ld b, [hl]
    inc c
    jr jr_017_4672

    rla
    dec [hl]
    ld b, [hl]
    inc c
    add hl, de
    ld c, b
    rla
    dec [hl]
    ld b, [hl]
    inc c
    ld a, [de]
    ld l, c
    sbc b
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l

jr_017_4672:
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    or l
    add hl, hl
    and b
    cp a
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    add b
    rla
    sub [hl]
    ld b, [hl]
    ld e, $0D
    ld e, l
    rla
    sbc [hl]
    ld b, [hl]
    add h
    inc de
    ld e, $16
    db $D3
    nop
    ld a, [hl]
    ld b, l
    or [hl]
    add hl, hl
    and b
    add b
    ld d, e
    cp a
    pop bc
    inc d
    inc hl
    nop
    ld de, $7283
    ld b, l
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld bc, $C717
    ld b, [hl]
    or [hl]
    ld a, [hl+]
    and b
    ld bc, $33AD
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $030C
    ld c, b
    rla
    ld d, a
    ld c, c
    ld b, l
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [bc], a
    rla
    db $E3
    ld b, [hl]
    or [hl]
    ld a, [hl+]
    and b
    ld [bc], a
    xor l
    inc sp
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $040C
    ld c, b
    rla
    ld d, a
    ld c, c
    ld b, l
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    inc b
    rla
    rst $38
    ld b, [hl]
    or [hl]
    ld a, [hl+]
    and b
    inc b
    xor l
    inc sp
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $050C
    ld c, b
    rla
    ld d, a
    ld c, c
    ld b, l
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    ld e, $15
    ld h, [hl]
    db $D3
    nop
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
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    ld b, l
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    ld b, $10
    add [hl]
    jp nc, $1400

    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    add c
    adc c
    pop bc
    ld [$0007], sp
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    ld b, l
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    inc h
    inc bc
    sbc h
    ret nc

    nop
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
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    ld b, l
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    dec c
    rlca
    dec h
    pop de
    nop
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
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    ld b, l
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    inc bc
    dec h
    set 2, l
    nop
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
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
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
    sbc c
    ld d, d
    inc de
    ld h, a
    cp $48
    ld l, a
    inc sp
    ld c, c
    dec b
    nop
    inc [hl]
    ld h, e
    dec c
    ld [$D20D], sp
    nop
    inc d
    and c
    ld e, l
    add hl, de
    add sp, $46
    dec b
    inc bc
    pop hl
    ld [hl], b
    add hl, bc
    ld a, [hl-]
    adc c
    sbc $00
    rla
    jr jr_017_481A

    rla
    rst $30
    ld c, b
    dec b
    ld b, $E1
    ld [hl], b
    inc c
    ld a, $8C
    rst $18
    nop
    rla
    dec l
    ld c, c
    rla
    rst $30
    ld c, b
    dec b
    inc b
    pop hl
    ld [hl], b
    db $10
    add hl, sp
    ld d, b
    sbc $00
    rla
    jr @+$4B

    rla
    rst $30
    ld c, b
    dec b
    ld [$70E1], sp
    inc de
    dec a
    ld d, e
    rst $18
    nop
    rla
    ld b, d
    ld c, c
    rla
    rst $30
    ld c, b
    dec b
    dec b
    pop hl
    ld [hl], b
    rla
    add hl, sp
    ld d, a
    sbc $00
    rla
    jr jr_017_4856

    rla
    rst $30
    ld c, b
    dec b
    rlca
    pop hl
    ld [hl], b
    add hl, de
    ld a, $99
    rst $18
    nop
    rla

jr_017_481A:
    dec l
    ld c, c
    rla
    rst $30
    ld c, b
    dec b
    add hl, bc
    pop hl
    ld [hl], b
    inc e
    ld a, $9C
    rst $18
    nop
    rla
    ld b, d
    ld c, c
    rla
    rst $30
    ld c, b
    dec b
    ld a, [bc]
    ld hl, sp+$4A
    db $10
    rrca
    ret nc

    db $D3
    add hl, bc
    ld de, $7279
    add hl, de
    rst $20
    ld b, [hl]
    dec b
    dec bc
    ld hl, sp+$4A
    jr @+$11

    ret c

    db $D3
    rrca
    ld de, $72FB
    add hl, de
    rst $20
    ld b, [hl]
    dec b
    inc c
    ld hl, sp+$4A
    ld hl, $A112
    call nc, $110F

jr_017_4856:
    ei
    ld [hl], d
    add hl, de
    rst $20
    ld b, [hl]
    dec b
    dec c
    ld hl, sp+$4A
    db $10

jr_017_4860:
    ld l, $90
    db $DB
    rrca

jr_017_4864:
    ld de, $72FB
    add hl, de

jr_017_4868:
    rst $20
    ld b, [hl]
    dec b
    ld c, $F8
    ld c, d
    ld [$0834], sp
    db $DD
    rrca
    ld de, $72FB

Jump_017_4876:
    add hl, de
    rst $20
    ld b, [hl]
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
    inc c
    dec bc
    dec c
    dec bc
    ld c, $6E
    add hl, bc
    dec c
    ret nc

    ld b, [hl]
    nop
    add b
    nop
    ld l, [hl]
    ld b, $0D
    ld b, b
    ld b, b
    sub b
    add b
    nop
    ld l, [hl]
    inc bc
    dec c
    and b
    ld b, e
    ldh a, [$80]
    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    dec b
    or e
    inc sp
    and c
    nop
    or l
    add hl, hl
    and b
    ld a, a
    or l
    add hl, hl
    and b
    cp a
    or l
    jr z, jr_017_4860

    cp $B5
    jr z, jr_017_4864

    db $FD
    or l
    jr z, jr_017_4868

    ei
    or l
    jr z, @-$5E

    rst $30
    sbc e
    rla
    jp nc, Jump_017_4548

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
    jr nz, jr_017_4933

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_017_492F

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    rla
    db $EC
    ld c, d
    rla
    cp $40
    ld b, l
    ld b, [hl]
    rrca
    ld bc, $C9CB
    dec b
    ld bc, $E719
    ld b, [hl]
    or e
    ld sp, $01C7
    ld c, e
    ld e, $0E
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    rla
    db $EC
    ld c, d
    inc d
    inc de
    push hl
    ld d, h
    ld e, $08
    ld b, l
    dec d
    inc de
    dec hl
    ld d, l
    ld b, b
    inc de
    push hl
    ld d, h
    inc d
    inc de
    inc bc
    ld d, l
    ld b, b
    inc de
    db $DB
    ld d, h
    inc d
    nop
    ld c, c
    jr jr_017_4976

    dec d
    inc de

jr_017_492F:
    inc bc
    ld d, l
    ld b, b
    inc de

jr_017_4933:
    db $DB
    ld d, h
    inc d
    inc de
    dec hl
    ld d, l
    ld b, b
    inc de
    push hl
    ld d, h
    inc d
    nop
    ld c, c
    dec l
    ld c, c
    dec d
    inc de
    inc bc
    ld d, l
    jr nc, @+$15

    db $DB
    ld d, h
    jr @+$15

    dec hl
    ld d, l

jr_017_494E:
    jr nc, jr_017_4963

    push hl
    ld d, h
    jr jr_017_4954

jr_017_4954:
    ld c, c
    ld b, d
    ld c, c
    ld e, $1F
    ld c, [hl]
    ld bc, $A133
    rla
    ld bc, $7300
    ld c, c
    rla

jr_017_4963:
    ld [bc], a
    nop
    ld a, a
    ld c, c
    rla
    inc bc
    nop

jr_017_496A:
    adc e
    ld c, c
    rla
    inc b
    nop
    sub a
    ld c, c
    rst $38
    ld b, l
    ld d, e
    or $C3

jr_017_4976:
    and b
    ld e, $0F
    ld de, $7314
    dec bc
    rla
    ld b, l

jr_017_497F:
    ld d, e
    ld de, $91C4
    ld e, $0F
    ld de, $7314
    dec bc
    jr @+$47

    ld d, e
    inc l
    call nz, $1E82
    rrca
    ld de, $7314
    dec bc
    add hl, de
    ld b, l
    ld d, e
    ld b, a
    call nz, $1E73
    rrca
    ld de, $7314
    dec bc
    ld a, [de]

jr_017_49A2:
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld bc, $BE17
    ld c, c
    or [hl]
    jr z, jr_017_494E

    ld bc, $33AD
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $0B0C
    ld c, b
    rla
    ld d, a
    ld c, c
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_017_4963

    ld [bc], a
    rla
    jp c, $B649

    jr z, jr_017_496A

    ld [bc], a
    xor l
    inc sp
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $0C0C
    ld c, b
    rla
    ld d, a
    ld c, c
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_017_497F

    inc b
    rla
    or $49
    or [hl]
    jr z, @-$5E

    inc b
    xor l
    inc sp
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $0D0C
    ld c, b
    rla
    ld d, a
    ld c, c
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld [$1217], sp
    ld c, d
    or [hl]
    jr z, jr_017_49A2

    ld [$33AD], sp
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $0E0C
    ld c, b
    rla
    ld d, a
    ld c, c
    ld b, l
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    inc b
    dec sp
    call nz, $00DE
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
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    ld b, l
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    inc b
    cpl
    call nz, $00DB
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
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    ld b, l
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    inc b
    inc h
    inc b
    reti


    nop
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
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    ld b, l
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    inc [hl]
    dec bc
    db $F4
    jp nc, $1400

    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    add c
    adc c
    pop bc
    ld [$0007], sp
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    ld b, l
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    inc [hl]
    dec bc
    db $F4
    jp nc, $1400

    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    add c
    adc c
    pop bc
    ld [$0007], sp
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    ld b, l
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    inc b
    inc h
    inc b
    reti


    nop
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
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    ld b, l
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    rlca
    dec de
    rst $00
    sub $00
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
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $17
    inc bc
    ld c, e
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_017_4B12

    ld a, d
    jr nz, jr_017_4B87

    ld c, b
    rla
    sbc a

jr_017_4B12:
    ld b, a
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
    jr nz, jr_017_4B87

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_017_4B90

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    rla
    ld l, [hl]
    ld c, e
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_017_4BB7

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_4BC1

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_017_4BAF

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
    ld [hl-], a
    and b
    ld [bc], a
    dec b
    nop
    rla
    xor d
    ld c, e
    and c
    xor l
    ld l, d
    and c
    ld bc, $A132
    ld c, b
    rla
    ld a, [$A640]
    ld c, c
    ld [hl], h
    jr nz, jr_017_4BE7

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_4BF1

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_4BF5

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_017_4BB8

    dec [hl]

jr_017_4B87:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_017_4B90:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld [hl-], a
    and b
    ld [bc], a
    dec b
    nop
    rla
    xor d
    ld c, e
    and c
    xor l
    ld l, d
    and c
    ld bc, $A132
    ld c, b
    rla
    ld a, [$4640]
    inc de
    ld bc, $A132

jr_017_4BAF:
    ld bc, $A16A
    rla
    add hl, hl
    ld c, h
    sbc a
    ld l, d

jr_017_4BB7:
    and c

jr_017_4BB8:
    ld b, [hl]
    rrca
    ld bc, $A16A
    dec b
    ld bc, $EF17

jr_017_4BC1:
    ld c, e
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_017_4C2B

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
    jr nz, jr_017_4C44

    ld [hl], e
    cp $FC
    jr nz, jr_017_4C41

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_017_4BE7:
    ld l, $FE
    db $FD
    and c
    ld c, b
    rla
    ld a, [$A640]
    ld d, h

jr_017_4BF1:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_017_4BF5:
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
    jr nz, jr_017_4C55

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_017_4C83

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
    rla
    ld a, [$9F40]
    ld l, d

jr_017_4C2B:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_017_4C98

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$6A

    ld h, c
    halt

jr_017_4C41:
    ld h, l
    jr nz, jr_017_4CB7

jr_017_4C44:
    ld h, l
    ld [hl], h
    jr nz, jr_017_4CA9

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_017_4CA6

    ld h, e
    ld l, a

jr_017_4C55:
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
    jr nz, jr_017_4CBF

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_4CE9

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_017_4CD9

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

jr_017_4C83:
    xor l
    ld l, d
    and c
    ld bc, $A132
    ld c, b
    rla
    ld a, [$4640]
    nop
    add hl, hl
    and b
    add b
    rla
    sbc e
    ld c, h
    ld e, $0D
    ld e, l

jr_017_4C98:
    rla
    sbc h
    ld c, h
    ld b, l
    or [hl]
    add hl, hl
    and b
    add b
    ld d, e
    sub a
    jp nz, $2314

    add hl, bc

jr_017_4CA6:
    ld de, $7283

jr_017_4CA9:
    ld b, l
    or e
    ld sp, $01C7
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    rla
    db $EC
    ld c, d

jr_017_4CB7:
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld b, b
    rla
    ld h, l

jr_017_4CBF:
    ld c, l
    ld e, $19
    ld b, [hl]
    ld a, [bc]
    nop
    add hl, hl
    and b
    add b
    rla
    xor d
    ld c, h
    ld b, [hl]
    inc de
    ld bc, $A133
    dec b
    ld bc, $AA17
    ld c, h
    xor l
    inc sp
    and c
    inc c

jr_017_4CD9:
    ld bc, $A133
    dec b
    ld bc, $29B6
    and b
    ld b, b
    ld c, [hl]
    ld bc, $A133
    rla
    nop
    nop

jr_017_4CE9:
    rst $38
    ld c, h
    rla
    ld bc, $0500
    ld c, l
    rla
    ld [bc], a
    nop
    dec bc
    ld c, l
    rla
    inc bc
    nop
    ld de, $FF4D
    ld c, b
    rla
    inc de
    ld c, l
    inc c
    rla
    ld c, b
    rla
    inc de
    ld c, l
    inc c
    jr jr_017_4D50

    rla
    inc de
    ld c, l
    inc c
    add hl, de
    ld c, b
    rla
    inc de
    ld c, l
    inc c
    ld a, [de]
    ld l, c
    sbc b
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l

jr_017_4D50:
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    or l
    add hl, hl
    and b
    cp a
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
    xor b
    ld d, d
    inc de
    ld h, a
    jr c, jr_017_4DC7

    ld l, h
    ld c, l
    ld c, c
    ld l, a
    ld h, [hl]
    ld c, c
    dec b
    nop
    inc [hl]
    ld h, e
    inc bc
    inc bc
    jp $00D0


    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld a, [bc]
    ld hl, sp+$4A
    inc bc
    ld [bc], a
    add e

jr_017_4D9A:
    ret nc

    add hl, bc
    ld de, $7279
    add hl, de
    rst $20
    ld b, [hl]

jr_017_4DA2:
    dec b
    dec bc
    ld hl, sp+$4A

jr_017_4DA6:
    ld [bc], a
    inc b
    ld [bc], a
    pop de

jr_017_4DAA:
    rrca
    ld de, $72FB

jr_017_4DAE:
    add hl, de
    rst $20
    ld b, [hl]
    dec b
    inc c
    ld hl, sp+$4A
    inc b
    dec b
    ld b, h
    pop de
    rrca
    ld de, $72FB
    add hl, de
    rst $20
    ld b, [hl]
    dec b
    dec c
    ld hl, sp+$4A
    add hl, sp
    add hl, hl
    ld a, c

jr_017_4DC7:
    jp c, $110F

    ei
    ld [hl], d
    add hl, de
    rst $20
    ld b, [hl]
    dec bc
    nop
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    inc c
    dec bc
    dec c
    ld l, [hl]
    add hl, bc
    dec c
    ret nc

    ld b, [hl]
    nop
    add b
    nop
    ld l, [hl]
    ld b, $0D
    ld b, b
    ld b, b
    sub b
    add b
    nop
    ld l, [hl]
    inc bc
    dec c
    and b
    ld b, e
    ldh a, [$80]
    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    dec b
    or l
    jr z, jr_017_4D9A

    cp $B5
    jr z, @-$5E

    db $FD
    or l
    jr z, jr_017_4DA2

    ei
    or l
    jr z, jr_017_4DA6

    rst $30
    or l
    jr z, jr_017_4DAA

    rst $28
    or l
    jr z, jr_017_4DAE

    rst $18
    or l
    ld a, [hl+]
    and b
    cp $B5
    ld a, [hl+]
    and b
    db $FD
    or l
    ld a, [hl+]
    and b
    ei
    or e
    inc sp
    and c
    nop
    or l
    add hl, hl
    and b
    ld a, a
    or l
    add hl, hl
    and b
    cp a
    sbc e
    rla
    inc l
    ld c, [hl]
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
    jr nz, jr_017_4E89

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    rla
    ld h, c
    ld c, [hl]
    rla
    add hl, bc
    ld b, c
    ld b, l
    or e
    ld sp, $01C7
    ld e, $19
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    rla
    ld h, c
    ld c, [hl]
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $17
    ld a, b
    ld c, [hl]
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_017_4E87

    ld a, d
    jr nz, jr_017_4EFC

    ld c, b
    rla
    ld l, d

jr_017_4E87:
    ld c, l
    ld [hl+], a

jr_017_4E89:
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_017_4EFC

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_017_4F05

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    rla
    db $E3
    ld c, [hl]
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_017_4F2C

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_4F36

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_017_4F24

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
    ld [hl-], a
    and b
    inc b
    dec b
    nop
    rla
    rra
    ld c, a
    and c
    xor l
    ld l, e
    and c
    ld bc, $A132
    ld c, b
    rla
    dec b
    ld b, c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_017_4F5C

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_4F66

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_4F6A

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_017_4F2D

    dec [hl]

jr_017_4EFC:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_017_4F05:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld [hl-], a
    and b
    inc b
    dec b
    nop
    rla
    rra
    ld c, a
    and c
    xor l
    ld l, e
    and c
    ld bc, $A132
    ld c, b
    rla
    dec b
    ld b, c
    ld b, [hl]
    inc de
    ld bc, $A132

jr_017_4F24:
    ld bc, $A16B
    rla
    sbc [hl]
    ld c, a
    sbc a
    ld l, e

jr_017_4F2C:
    and c

jr_017_4F2D:
    ld b, [hl]
    rrca
    ld bc, $A16B
    dec b
    ld bc, $6417

jr_017_4F36:
    ld c, a
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_017_4FA0

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
    jr nz, jr_017_4F9D

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_4FB9

    ld [hl], e
    cp $FC
    jr nz, jr_017_4FB6

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_017_4F5C:
    ld l, $FE
    db $FD
    and c
    ld c, b
    rla
    dec b
    ld b, c
    and [hl]
    ld d, h

jr_017_4F66:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_017_4F6A:
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
    jr nz, jr_017_4FCA

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_017_4FF8

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
    rla
    dec b

jr_017_4F9D:
    ld b, c
    sbc a
    ld l, e

jr_017_4FA0:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l

jr_017_4FA5:
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
    jr nz, @+$6A

    ld h, c
    halt

jr_017_4FB6:
    ld h, l
    jr nz, jr_017_502C

jr_017_4FB9:
    ld h, l
    ld [hl], h
    jr nz, jr_017_501E

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_017_500B

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_017_501B

    ld h, e
    ld l, a

jr_017_4FCA:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, @+$72

    ld [hl], d
    ld h, l
    halt

jr_017_4FD6:
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_017_5034

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_505E

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_017_504E

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

jr_017_4FF8:
    xor l
    ld l, e
    and c
    ld bc, $A132
    ld c, b
    rla
    dec b
    ld b, c
    xor d
    jr z, jr_017_4FA5

    ld bc, $DC19
    ld b, [hl]
    cp $49

jr_017_500B:
    push de
    ld e, $09
    ld e, l
    rla
    call z, Call_017_6B45
    push de
    ld h, a
    ld l, $31
    ld a, d
    ld l, $83
    dec de

jr_017_501B:
    sub $03
    ld [bc], a

jr_017_501E:
    dec de
    sub $18
    dec de
    add e
    and a
    call nc, $0203
    and a
    call nc, $2712
    ld e, l

jr_017_502C:
    add hl, de
    rst $20
    ld b, [hl]
    ld c, b
    add hl, de
    call c, $AA46

jr_017_5034:
    jr z, jr_017_4FD6

    ld [bc], a
    add hl, de

jr_017_5038:
    call c, $FE46
    ld e, b
    rst $10
    ld e, $09
    ld e, l
    rla
    call z, Call_017_6B45
    push de
    ld h, a
    ld l, $31
    ld a, d
    ld l, $83
    call nz, $03D6

jr_017_504E:
    ld [bc], a
    call nz, $1BD6
    inc b
    add e
    ld [hl], b
    reti


    inc bc
    ld [bc], a
    ld [hl], b
    reti


    dec h
    jr nc, jr_017_50BA

    add hl, de

jr_017_505E:
    rst $20
    ld b, [hl]
    ld c, b
    add hl, de
    call c, $AA46
    jr z, @-$5E

    inc b
    add hl, de

jr_017_5069:
    call c, $FE46
    ld [hl], $DD
    ld e, $09
    ld e, l
    rla
    call z, Call_017_6B45
    push de
    ld h, a
    ld l, $31
    ld a, d
    ld l, $83
    and a
    db $DD
    inc bc
    ld [bc], a
    and a
    db $DD
    ld [hl], $27
    add e
    adc d
    jp c, $0203

    adc d
    jp c, $0A2A

    ld e, l
    add hl, de
    rst $20
    ld b, [hl]
    ld c, b
    add hl, de
    call c, $AA46
    jr z, jr_017_5038

    ld [$DC19], sp
    ld b, [hl]
    cp $89
    reti


    ld e, $09
    ld e, l
    rla
    call z, Call_017_6B45
    push de
    ld h, a
    ld l, $31
    ld a, d
    ld l, $83
    dec d
    call nc, $0203
    dec d
    call nc, $1510
    add e
    and l
    jp nc, $0203

jr_017_50BA:
    and l
    jp nc, $250A

    ld e, l
    add hl, de
    rst $20
    ld b, [hl]
    ld c, b
    add hl, de
    call c, $AA46
    jr z, jr_017_5069

    db $10
    add hl, de
    call c, $FE46
    ld l, e
    ret c

    ld e, $09
    ld e, l
    add hl, de
    ret nz

    ld b, [hl]
    ld h, l
    ld [bc], a
    ld e, l
    rla
    call z, Call_017_6B45
    push de
    ld h, a
    ld l, $31
    ld a, d
    ld l, $83
    ld de, $03D8
    ld [bc], a
    ld de, $20D8
    ld de, $2783
    push de
    inc bc
    ld [bc], a
    and a
    call nc, $2712
    ld e, l
    add hl, de
    rst $20
    ld b, [hl]
    ld c, b
    add hl, de
    call c, $AA46
    jr z, @-$5E

    jr nz, jr_017_511B

    call c, $FE46
    sbc l
    call c, $091E
    ld e, l
    add hl, de
    ret nz

    ld b, [hl]
    ld h, l
    ld [bc], a
    ld e, l
    rla
    call z, Call_017_6B45
    push de
    ld h, a
    ld l, $31
    ld a, d
    ld l, $83

jr_017_511B:
    sbc [hl]
    reti


    inc bc
    ld [bc], a
    sbc [hl]
    reti


    ld h, $1E
    add e
    ld a, [bc]
    db $DB
    inc bc
    ld [bc], a
    adc d
    jp c, $0A2A

    ld e, l
    add hl, de
    rst $20
    ld b, [hl]
    ld c, b
    add hl, de
    call c, $4646
    nop
    add hl, hl
    and b
    ld b, b
    rla
    pop hl
    ld d, c
    ld e, $19
    ld b, [hl]
    ld a, [bc]
    nop
    add hl, hl
    and b
    add b
    rla
    ld d, c
    ld c, [hl]
    ld b, [hl]
    inc de
    ld bc, $A133
    dec b
    ld bc, $5117
    ld c, [hl]
    xor l
    inc sp
    and c
    inc c
    ld bc, $A133
    dec b
    ld bc, $29B6
    and b
    ld b, b
    ld c, [hl]
    ld bc, $A133
    rla
    nop
    nop
    ld a, e
    ld d, c
    rla
    ld bc, $8100
    ld d, c
    rla
    ld [bc], a
    nop
    add a
    ld d, c
    rla
    inc bc
    nop
    adc l
    ld d, c
    rst $38
    ld c, b
    rla
    adc a
    ld d, c
    inc c
    rla
    ld c, b
    rla
    adc a
    ld d, c
    inc c
    jr jr_017_51CC

    rla
    adc a
    ld d, c
    inc c
    add hl, de
    ld c, b
    rla
    adc a
    ld d, c
    inc c
    ld a, [de]
    ld l, c
    sbc b
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l

jr_017_51CC:
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    or l
    add hl, hl
    and b
    cp a
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    add b
    rla
    ldh a, [rHDMA1]
    ld e, $0D
    ld e, l
    rla
    pop af
    ld d, c
    ld b, l
    or [hl]
    add hl, hl
    and b
    add b
    ld d, e
    sub a
    jp nz, $2314

    add hl, bc
    ld de, $7283
    ld b, l
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld bc, $1A17
    ld d, d
    or [hl]
    ld a, [hl+]
    and b
    ld bc, $33AD
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $0B0C
    ld c, b
    rla
    ld d, a
    ld c, c
    ld b, l
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [bc], a
    rla
    ld [hl], $52
    or [hl]
    ld a, [hl+]
    and b
    ld [bc], a
    xor l
    inc sp
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $0C0C
    ld c, b
    rla
    ld d, a
    ld c, c
    ld b, l
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    inc b
    rla
    ld d, d
    ld d, d
    or [hl]
    ld a, [hl+]
    and b
    inc b
    xor l
    inc sp
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $0D0C
    ld c, b
    rla
    ld d, a
    ld c, c
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
    or a
    ld d, d
    inc de
    ld h, a
    ld l, e
    ld c, c
    ld l, h
    ld [hl], b
    ld c, c
    ld l, a
    adc l
    ld c, c
    dec b
    nop
    inc [hl]
    ld h, e
    rrca
    dec c
    xor a
    pop de
    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [de], a
    ld hl, sp+$4A
    inc bc
    ld [bc], a
    ld b, e

jr_017_5287:
    ret nc

    add hl, bc
    ld de, $7279
    add hl, de
    rst $20
    ld b, [hl]

jr_017_528F:
    dec b
    dec bc
    ld hl, sp+$4A

jr_017_5293:
    ld [bc], a
    inc b
    add d
    ret nc

jr_017_5297:
    rrca
    ld de, $72FB
    add hl, de
    rst $20
    ld b, [hl]
    dec b
    inc c
    ld hl, sp+$4A
    inc b
    dec b
    and h
    ret nc

    rrca
    ld de, $72FB
    add hl, de
    rst $20
    ld b, [hl]
    dec b
    dec c
    ld hl, sp+$4A
    add hl, sp
    add hl, hl
    ld e, c
    push de
    rrca
    ld de, $72FB
    add hl, de
    rst $20
    ld b, [hl]
    dec bc
    nop
    ld l, [hl]
    add hl, bc
    dec c
    ret nc

    ld b, [hl]
    nop
    add b
    nop
    ld l, [hl]
    ld b, $0D
    ld b, b
    ld b, b
    sub b
    add b
    nop
    ld l, [hl]
    inc bc
    dec c
    and b
    ld b, e
    ldh a, [$80]
    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    dec b
    or l
    jr z, @-$5E

    cp $B5
    jr z, @-$5E

    db $FD
    or l
    jr z, jr_017_5287

    ei
    or l
    jr z, @-$5E

    rst $30
    or l
    jr z, jr_017_528F

    rst $28
    or l
    jr z, jr_017_5293

    rst $18
    or l
    jr z, jr_017_5297

    cp a
    or l
    ld a, [hl+]
    and b
    cp $B5
    ld a, [hl+]
    and b
    db $FD
    or l
    ld a, [hl+]
    and b
    ei
    or e
    inc sp
    and c
    nop
    or l
    add hl, hl
    and b
    ld a, a
    or l
    add hl, hl
    and b
    cp a
    sbc e
    rla
    dec d
    ld d, e
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
    jr nz, jr_017_5372

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    rla
    ld c, d
    ld d, e
    rla
    inc hl
    ld b, c
    ld b, l
    or e
    ld sp, $01C7
    ld e, $19
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    rla
    ld c, d
    ld d, e
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $17
    ld h, c
    ld d, e
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_017_5370

    ld a, d
    jr nz, jr_017_53E5

    ld c, b
    rla
    ld d, a

jr_017_5370:
    ld d, d
    ld [hl+], a

jr_017_5372:
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_017_53E5

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_017_53EE

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    rla
    call z, $9F53
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_017_5415

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_541F

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_017_540D

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
    ld [hl-], a
    and b
    ld [$0005], sp
    rla
    ld [$A154], sp
    xor l
    ld l, h
    and c
    ld bc, $A132
    ld c, b
    rla
    db $10
    ld b, c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_017_5445

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_544F

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_5453

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_017_5416

    dec [hl]

jr_017_53E5:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_017_53EE:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld [hl-], a
    and b
    ld [$0005], sp
    rla
    ld [$A154], sp
    xor l
    ld l, h
    and c
    ld bc, $A132
    ld c, b
    rla
    db $10
    ld b, c
    ld b, [hl]
    inc de
    ld bc, $A132

jr_017_540D:
    ld bc, $A16C
    rla
    add a
    ld d, h
    sbc a
    ld l, h

jr_017_5415:
    and c

jr_017_5416:
    ld b, [hl]
    rrca
    ld bc, $A16C
    dec b
    ld bc, $4D17

jr_017_541F:
    ld d, h
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_017_5489

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
    jr nz, jr_017_5486

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_54A2

    ld [hl], e
    cp $FC
    jr nz, jr_017_549F

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_017_5445:
    ld l, $FE
    db $FD
    and c
    ld c, b
    rla
    db $10
    ld b, c
    and [hl]
    ld d, h

jr_017_544F:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_017_5453:
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
    jr nz, jr_017_54B3

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_017_54E1

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
    rla
    db $10

jr_017_5486:
    ld b, c
    sbc a
    ld l, h

jr_017_5489:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l

jr_017_548E:
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
    jr nz, @+$6A

    ld h, c
    halt

jr_017_549F:
    ld h, l
    jr nz, jr_017_5515

jr_017_54A2:
    ld h, l
    ld [hl], h
    jr nz, jr_017_5507

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_017_54F4

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_017_5504

    ld h, e
    ld l, a

jr_017_54B3:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_017_552C

jr_017_54BC:
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
    jr nz, jr_017_551D

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$79

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_017_5537

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

jr_017_54E1:
    xor l
    ld l, h
    and c
    ld bc, $A132
    ld c, b
    rla
    db $10

jr_017_54EA:
    ld b, c
    xor d
    jr z, jr_017_548E

    ld bc, $DC19
    ld b, [hl]
    cp $DD

jr_017_54F4:
    pop de
    ld e, $09
    ld e, l
    add hl, de
    sub b
    ld b, [hl]
    ld h, l
    ld [bc], a
    ld e, l
    rla
    call z, Call_017_6B45
    ld c, [hl]
    ld a, a

jr_017_5504:
    ld l, $00
    ld b, b

jr_017_5507:
    cpl
    add e
    adc l
    db $D3
    ld bc, $8D03
    db $D3
    inc e
    dec c
    ld e, l
    add hl, de
    rst $20
    ld b, [hl]

jr_017_5515:
    ld c, b
    add hl, de
    call c, $AA46

jr_017_551A:
    jr z, jr_017_54BC

    ld [bc], a

jr_017_551D:
    add hl, de
    call c, $FE46
    add d
    db $D3
    ld e, $09
    ld e, l
    add hl, de
    sub b
    ld b, [hl]
    ld h, l
    ld [bc], a
    ld e, l

jr_017_552C:
    rla
    call z, Call_017_6B45
    ld c, [hl]
    ld a, a
    ld l, $00
    ld b, b
    cpl
    add e

jr_017_5537:
    ld c, e
    ret nc

    ld bc, $4B03
    ret nc

    ld [bc], a
    dec bc
    ld e, l
    add hl, de
    rst $20
    ld b, [hl]
    ld c, b
    add hl, de
    call c, $AA46

jr_017_5548:
    jr z, jr_017_54EA

    inc b
    add hl, de
    call c, $FE46
    ld b, d
    ret nc

    ld e, $09
    ld e, l
    add hl, de
    sub b
    ld b, [hl]
    ld h, l
    ld [bc], a
    ld e, l
    rla
    call z, Call_017_6B45
    ld c, [hl]
    ld a, a
    ld l, $00
    ld b, b
    cpl
    add e
    db $FC
    jp nc, $0203

    db $FC
    jp nc, $1C17

    ld e, l
    add hl, de
    rst $20
    ld b, [hl]
    ld c, b
    add hl, de
    call c, $1E46

jr_017_5576:
    add hl, bc
    xor d
    jr z, jr_017_551A

    ld [$DC19], sp
    ld b, [hl]
    cp $9D
    db $D3
    ld e, $09
    ld e, l
    add hl, de
    sub b
    ld b, [hl]
    ld h, l
    ld [bc], a
    ld e, l
    rla
    call z, Call_017_6B45
    ld c, [hl]
    ld a, a
    ld l, $00
    ld b, b
    cpl
    add e
    ld d, [hl]
    ret nc

    ld bc, $5603
    ret nc

    ld [bc], a
    ld d, $5D
    add hl, de
    rst $20
    ld b, [hl]
    ld c, b
    add hl, de
    call c, $AA46
    jr z, jr_017_5548

    db $10
    add hl, de
    call c, $FE46
    ld e, l
    ret nc

    ld e, $09
    ld e, l
    add hl, de
    and a
    ld b, [hl]
    ld h, l
    ld [bc], a
    ld e, l
    rla
    call z, Call_017_6B45
    ld c, [hl]
    ld a, a
    ld l, $00
    ld b, b
    cpl
    add e
    ld l, d
    jp nc, $0203

    ld l, d
    jp nc, $0A13

    ld e, l
    add hl, de
    rst $20
    ld b, [hl]
    ld c, b
    add hl, de
    call c, $AA46
    jr z, jr_017_5576

    jr nz, jr_017_55F1

    call c, $FE46
    ld c, a
    ret nc

    ld e, $09
    ld e, l
    add hl, de
    ret nz

    ld b, [hl]
    ld h, l
    ld [bc], a
    ld e, l
    rla
    call z, Call_017_6B45
    ld c, [hl]
    ld a, a
    ld l, $00
    ld b, b
    cpl
    add e

jr_017_55F1:
    inc a
    jp nc, $0203

    inc a
    jp nc, $1C11

    ld e, l
    add hl, de
    rst $20
    ld b, [hl]
    ld c, b
    add hl, de
    call c, $AA46
    jr z, @-$5E

    ld b, b
    add hl, de
    call c, $FE46
    ld c, a
    db $D3
    ld e, $09
    ld e, l
    add hl, de
    ret nz

    ld b, [hl]
    ld h, l
    ld [bc], a
    ld e, l
    rla
    call z, Call_017_6B45
    ld c, [hl]
    ld a, a
    ld l, $00
    ld b, b
    cpl
    add e
    ld l, $D1
    inc bc
    ld [bc], a
    ld l, $D1
    add hl, bc
    ld c, $5D
    add hl, de
    rst $20
    ld b, [hl]
    ld c, b
    add hl, de
    call c, $4646
    nop
    add hl, hl
    and b
    ld b, b
    rla
    call c, $1E56
    add hl, de
    ld b, [hl]
    ld a, [bc]
    nop
    add hl, hl
    and b
    add b
    rla
    ld a, [hl-]
    ld d, e
    ld b, [hl]
    inc de
    ld bc, $A133
    dec b
    ld bc, $3A17
    ld d, e
    xor l
    inc sp
    and c
    inc c
    ld bc, $A133
    dec b
    ld bc, $29B6
    and b
    ld b, b
    ld c, [hl]
    ld bc, $A133
    rla
    nop
    nop
    halt
    ld d, [hl]
    rla
    ld bc, $7C00
    ld d, [hl]
    rla
    ld [bc], a
    nop
    add d
    ld d, [hl]
    rla
    inc bc
    nop
    adc b
    ld d, [hl]
    rst $38
    ld c, b
    rla
    adc d
    ld d, [hl]
    inc c
    rla
    ld c, b
    rla
    adc d
    ld d, [hl]
    inc c
    jr jr_017_56C7

    rla
    adc d
    ld d, [hl]
    inc c
    add hl, de
    ld c, b
    rla
    adc d
    ld d, [hl]
    inc c
    ld a, [de]
    ld l, c
    sbc b
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l

jr_017_56C7:
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    or l
    add hl, hl
    and b
    cp a
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    add b
    rla
    db $EB
    ld d, [hl]
    ld e, $0D
    ld e, l
    rla
    db $EC
    ld d, [hl]
    ld b, l
    or [hl]
    add hl, hl
    and b
    add b
    ld d, e
    ld l, a
    jp $2314


    add hl, bc
    ld de, $7283
    ld b, l
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld bc, $1517
    ld d, a
    or [hl]
    ld a, [hl+]
    and b
    ld bc, $33AD
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $0B0C
    ld c, b
    rla
    ld d, a
    ld c, c
    ld b, l
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [bc], a
    rla
    ld sp, $B657
    ld a, [hl+]
    and b
    ld [bc], a
    xor l
    inc sp
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $0C0C
    ld c, b
    rla
    ld d, a
    ld c, c
    ld b, l
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    inc b
    rla
    ld c, l
    ld d, a
    or [hl]
    ld a, [hl+]
    and b
    inc b
    xor l
    inc sp
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $0D0C
    ld c, b
    rla
    ld d, a
    ld c, c
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
    add $52
    inc de
    ld h, a
    sub d
    ld c, c
    ld l, h
    xor a
    ld c, c
    ld l, a
    ret z

    ld c, c
    dec b
    nop
    inc [hl]
    ld h, e
    dec h
    jr nz, @+$27

    push de
    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    ld h, $20
    ld h, $D5
    nop
    ld de, $7279
    add hl, de
    add sp, $46

jr_017_578A:
    dec b
    inc bc
    ld hl, sp+$4A

jr_017_578E:
    inc d
    inc bc
    adc h
    ret nc

    rrca
    ld de, $72FB
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    dec b
    ld d, $75
    db $D3
    rrca
    ld de, $72FB
    add hl, de
    add sp, $46
    dec b
    dec b
    ld hl, sp+$4A
    jr jr_017_57CE

    jr @-$29

    rrca
    ld de, $72FB
    add hl, de
    add sp, $46
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b
    dec bc
    dec b
    ld l, [hl]
    ld b, $0D
    ld b, b
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    inc bc
    dec c
    and b
    ld b, e

jr_017_57CE:
    ldh a, [$80]
    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    dec b
    or l
    jr z, @-$5E

    cp $B5
    jr z, @-$5E

    db $FD
    or l
    jr z, @-$5E

    ei
    or l
    jr z, @-$5E

    rst $30
    or l
    jr z, jr_017_578A

    rst $28
    or l
    jr z, jr_017_578E

    rst $18
    or l
    ld a, [hl+]
    and b
    cp $B5
    ld a, [hl+]
    and b
    db $FD
    or l
    ld a, [hl+]
    and b
    ei
    or e
    inc sp
    and c
    nop
    or l
    add hl, hl
    and b
    ld a, a
    or l
    add hl, hl
    and b
    cp a
    sbc e
    rla
    inc c
    ld e, b
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
    jr nz, jr_017_5869

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    rla
    ld b, c
    ld e, b
    rla
    ld a, [hl-]
    ld b, c
    ld b, l
    or e
    ld sp, $01C7
    ld e, $19
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    rla
    ld b, c
    ld e, b
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $17
    ld e, b
    ld e, b
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_017_5867

    ld a, d
    jr nz, jr_017_58DC

    ld c, b
    rla
    ld d, d

jr_017_5867:
    ld d, a
    ld [hl+], a

jr_017_5869:
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_017_58DC

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_017_58E5

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    rla
    jp $9F58


    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_017_590C

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_5916

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_017_5904

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
    ld [hl-], a
    and b
    db $10
    dec b
    nop
    rla
    rst $38
    ld e, b
    and c
    xor l
    ld l, l
    and c
    ld bc, $A132
    ld c, b
    rla
    ld a, [hl+]
    ld b, c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_017_593C

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_5946

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_594A

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_017_590D

    dec [hl]

jr_017_58DC:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_017_58E5:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld [hl-], a
    and b
    db $10
    dec b
    nop
    rla
    rst $38
    ld e, b
    and c
    xor l
    ld l, l
    and c
    ld bc, $A132
    ld c, b
    rla
    ld a, [hl+]
    ld b, c
    ld b, [hl]
    inc de
    ld bc, $A132

jr_017_5904:
    ld bc, $A16D
    rla
    ld a, [hl]
    ld e, c
    sbc a
    ld l, l

jr_017_590C:
    and c

jr_017_590D:
    ld b, [hl]
    rrca
    ld bc, $A16D
    dec b
    ld bc, $4417

jr_017_5916:
    ld e, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_017_5980

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
    jr nz, jr_017_597D

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_5999

    ld [hl], e
    cp $FC
    jr nz, jr_017_5996

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_017_593C:
    ld l, $FE
    db $FD
    and c
    ld c, b
    rla
    ld a, [hl+]
    ld b, c
    and [hl]
    ld d, h

jr_017_5946:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_017_594A:
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
    jr nz, jr_017_59AA

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_017_59D8

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
    rla
    ld a, [hl+]

jr_017_597D:
    ld b, c
    sbc a
    ld l, l

jr_017_5980:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l

jr_017_5985:
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
    jr nz, jr_017_59FC

    ld h, c

jr_017_5995:
    halt

jr_017_5996:
    ld h, l
    jr nz, @+$75

jr_017_5999:
    ld h, l
    ld [hl], h
    jr nz, jr_017_59FE

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_017_59EB

    ld l, c
    ld h, a

jr_017_59A5:
    ld l, b
    jr nz, jr_017_59FB

    ld h, e
    ld l, a

jr_017_59AA:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_017_5A23

    ld [hl], d
    ld h, l

jr_017_59B5:
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
    jr nz, jr_017_5A3E

jr_017_59C7:
    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_017_5A2E

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b

jr_017_59D2:
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    and c

jr_017_59D8:
    xor l
    ld l, l
    and c
    ld bc, $A132
    ld c, b
    rla
    ld a, [hl+]
    ld b, c
    xor d
    jr z, jr_017_5985

    ld bc, $DC19

jr_017_59E8:
    ld b, [hl]
    cp $52

jr_017_59EB:
    ret nc

    ld e, $09
    ld c, b
    rla
    ld [hl+], a
    ld e, d
    xor d
    jr z, jr_017_5995

    ld [bc], a
    add hl, de
    call c, $FE46
    ld [hl], l

jr_017_59FB:
    ret nc

jr_017_59FC:
    ld e, $09

jr_017_59FE:
    ld c, b
    rla
    ld [hl+], a
    ld e, d
    xor d
    jr z, jr_017_59A5

    inc b
    add hl, de
    call c, $FE46
    ld b, h
    call nc, $091E
    ld c, b
    rla
    ld [hl+], a
    ld e, d
    xor d
    jr z, jr_017_59B5

    ld [$DC19], sp
    ld b, [hl]
    cp $7E
    call nc, $091E
    ld c, b
    rla

jr_017_5A20:
    ld [hl+], a
    ld e, d
    ld b, [hl]

jr_017_5A23:
    rrca
    nop
    jr z, jr_017_59C7

    ld bc, $0005
    add hl, de
    sub b
    ld b, [hl]
    ld b, [hl]

jr_017_5A2E:
    rrca
    nop
    jr z, jr_017_59D2

    ld [bc], a
    dec b
    nop
    add hl, de
    sub b
    ld b, [hl]
    ld b, [hl]
    rrca
    nop
    jr z, @-$5E

    inc b

jr_017_5A3E:
    dec b
    nop
    add hl, de
    sub b
    ld b, [hl]
    ld b, [hl]
    rrca
    nop
    jr z, jr_017_59E8

jr_017_5A48:
    ld [$0005], sp
    add hl, de
    sub b
    ld b, [hl]
    ld l, e
    db $E3
    ld e, a
    cpl
    dec de
    ld h, d
    cpl
    add e
    add hl, hl
    ret nc

    ld bc, $2B02
    pop de
    rlca
    inc de
    add e
    ld a, [hl+]
    ret nc

    ld bc, $2C02
    pop de
    rlca
    inc d
    add e
    dec hl
    ret nc

    ld bc, $2D02
    pop de
    rlca
    dec d
    add e
    inc l
    ret nc

    ld bc, $2E02
    pop de
    rlca
    ld d, $48
    add hl, de
    and a
    ld b, [hl]
    xor d
    jr z, jr_017_5A20

    db $10
    add hl, de
    call c, $FE46
    ld h, a
    jp nc, $091E

    ld e, l
    rla
    call z, Call_017_6B45
    db $E3
    ld e, a
    cpl
    dec de
    ld h, d
    cpl
    add e
    ld a, c
    ret nc

    inc bc
    ld [bc], a
    db $10
    db $D3
    inc de
    jr jr_017_5AFB

    add hl, de
    rst $20
    ld b, [hl]
    ld c, b
    add hl, de
    call c, $AA46
    jr z, jr_017_5A48

    jr nz, jr_017_5AC3

    call c, $FE46
    rst $30
    pop de
    ld e, $09
    ld e, l
    rla
    call z, Call_017_6B45
    db $E3
    ld e, a
    cpl
    dec de
    ld h, d
    cpl
    add e
    ld l, $D0
    ld bc, $8204
    db $D3

jr_017_5AC3:
    ld d, $12
    ld e, l
    add hl, de
    rst $20
    ld b, [hl]
    ld c, b
    add hl, de
    call c, $1E46
    dec bc
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld b, b
    rla
    and a
    ld e, e
    ld b, [hl]
    ld a, [bc]
    nop
    add hl, hl
    and b
    add b
    rla
    ld sp, $4658
    inc de
    ld bc, $A133
    dec b
    ld bc, $3117
    ld e, b
    xor l
    inc sp
    and c
    inc c
    ld bc, $A133
    dec b
    ld bc, $29B6
    and b
    ld b, b
    ld c, [hl]
    ld bc, $A133

jr_017_5AFB:
    rla
    nop
    nop
    inc d
    ld e, e
    rla
    ld bc, $1A00
    ld e, e
    rla
    ld [bc], a
    nop
    jr nz, jr_017_5B65

    rla
    inc bc
    nop
    ld h, $5B
    rst $38
    ld c, b
    rla
    jr z, jr_017_5B6F

    inc c
    rla
    ld c, b
    rla
    jr z, jr_017_5B75

    inc c
    jr jr_017_5B65

    rla
    jr z, jr_017_5B7B

    inc c
    add hl, de
    ld c, b
    rla
    jr z, jr_017_5B81

    inc c
    ld a, [de]
    ld l, c
    sbc b
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l

jr_017_5B65:
    rrca
    ld b, e
    ld [$9869], sp
    ld a, b
    inc d
    ld a, l
    rrca
    ld b, e

jr_017_5B6F:
    ld [$5869], sp
    ld a, b
    inc d
    ld a, l

jr_017_5B75:
    rrca
    or l
    add hl, hl
    and b
    cp a
    ld b, [hl]

jr_017_5B7B:
    nop
    ld a, [hl+]
    and b
    ld bc, $9217

jr_017_5B81:
    ld e, e
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [bc], a
    rla
    sbc c
    ld e, e
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    inc b
    rla
    and b
    ld e, e
    or l
    ld a, [hl+]
    and b
    cp $0B
    inc bc
    ld b, l
    or l
    ld a, [hl+]
    and b
    db $FD
    dec bc
    inc b
    ld b, l
    or l
    ld a, [hl+]
    and b
    ei
    dec bc
    dec b
    ld b, l
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    add b
    add hl, de
    rst $20
    ld b, [hl]
    ld e, $0D
    ld e, l
    rla
    or a
    ld e, e
    ld b, l
    or [hl]
    add hl, hl
    and b
    add b
    ld d, e
    cp a
    pop bc
    inc d
    inc hl
    nop
    ld de, $7283
    ld b, l
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld bc, $E719
    ld b, [hl]
    or [hl]
    ld a, [hl+]
    and b
    ld bc, $33AD
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $030C
    ld c, b
    rla
    ld d, a
    ld c, c
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [bc], a
    add hl, de
    rst $20
    ld b, [hl]
    or [hl]
    ld a, [hl+]
    and b
    ld [bc], a
    xor l
    inc sp
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $040C
    ld c, b
    rla
    ld d, a
    ld c, c
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    or [hl]
    ld a, [hl+]
    and b
    inc b
    xor l
    inc sp
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $050C
    ld c, b
    rla
    ld d, a
    ld c, c
    dec b
    nop
    ld hl, sp+$4A
    add hl, de
    inc c
    ld sp, hl
    pop de
    nop
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
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    ld b, l
    dec b
    nop
    ld hl, sp+$4A
    dec h
    jr nz, jr_017_5C5F

    push de
    nop
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
    ld h, e
    add hl, bc

jr_017_5C4B:
    nop
    inc d
    and c
    ld e, l
    ld b, l
    ld [hl+], a
    add hl, de
    ld c, b
    rla
    pop af
    ld e, h
    ld [hl+], a
    add hl, de
    ld c, b
    rla
    ld [hl+], a
    ld h, l
    ld [hl+], a
    add hl, de
    ld c, b

jr_017_5C5F:
    rla
    ld d, $6B
    ld [hl+], a
    add hl, de
    ld c, b
    rla
    rst $10
    ld [hl], c
    ld [hl+], a
    add hl, de
    ld c, b
    db $10
    inc a
    ld l, e
    or [hl]
    ld a, [hl-]
    and b
    ld bc, $0401
    ld [de], a
    ld c, b
    ld [$6CA1], sp
    or [hl]
    ld a, [hl-]
    and b
    ld [bc], a
    ld bc, $140F
    ld c, b
    ld [$6CA1], sp
    ld b, [hl]
    nop
    ld c, e
    and b
    ld bc, $A617
    ld e, h
    or [hl]
    ld a, [hl-]
    and b
    ld [bc], a
    or [hl]
    ld a, [hl-]
    and b
    jr nz, jr_017_5C4B

    ld c, e
    and b
    ld bc, $0F46
    ld bc, $A136
    dec b
    inc b
    rla
    add h
    ld e, h
    ld c, b
    ld [$6EB5], sp
    or [hl]
    ld a, [hl-]
    and b
    ld [bc], a
    or [hl]
    ld a, [hl-]
    and b
    jr nz, jr_017_5CB0

    rrca

jr_017_5CB0:
    inc d
    ld c, b
    ld [$6CA1], sp
    or [hl]
    ld a, [hl-]
    and b
    inc b
    ld bc, $0917
    ld c, b
    ld [$6CA1], sp
    ld b, [hl]
    nop
    ld a, [hl-]
    and b
    ld [$D317], sp
    ld e, h
    or [hl]
    ld a, [hl-]
    and b
    ld [$0C01], sp
    ld bc, $0848
    sub e
    ld l, a
    ld bc, $010C
    ld c, b
    ld [$6CA1], sp
    ld b, [hl]
    nop
    ld a, [hl-]
    and b
    db $10
    rla
    ld [$B65C], a
    ld a, [hl-]
    and b
    db $10
    ld c, b
    ld [$6D82], sp
    ld bc, $0604
    ld c, b
    ld [$6CA1], sp
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
    ld h, b
    ld c, a
    inc de
    ld h, a
    and l
    ld b, c
    dec b
    nop
    inc [hl]
    ld h, e
    ld [bc], a
    dec c
    jp nc, $00D0

    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    inc bc
    pop hl
    ld [hl], b
    ld b, $10
    ld b, $D1
    nop
    ld de, $75F4
    rla
    ld [hl], l
    ld e, [hl]
    dec b
    inc b
    pop hl
    ld [hl], b
    ld [$F80F], sp
    ret nc

    nop
    ld de, $75F4
    rla
    ld [hl], l
    ld e, [hl]
    dec b
    dec b
    pop hl
    ld [hl], b
    dec bc
    rla
    ld a, e
    pop de
    nop
    ld de, $75F4
    rla
    ld [hl], l
    ld e, [hl]
    dec b
    ld b, $E1
    ld [hl], b
    inc c
    ld [de], a
    inc l
    pop de
    nop
    ld de, $75F4
    rla
    ld [hl], l
    ld e, [hl]
    dec b
    rlca
    pop hl
    ld [hl], b
    dec c
    rla
    ld a, l
    pop de
    nop
    ld de, $75F4
    rla
    ld [hl], l
    ld e, [hl]
    dec b
    ld [$70E1], sp
    inc c
    ld bc, $D01C
    nop
    ld de, $75F4
    rla
    ld [hl], l
    ld e, [hl]
    dec b
    add hl, bc
    pop hl
    ld [hl], b
    dec b
    ld [bc], a
    dec h
    ret nc

    nop
    ld de, $75F4
    rla
    ld [hl], l
    ld e, [hl]
    dec b
    ld a, [bc]
    pop hl
    ld [hl], b
    dec b
    inc bc
    dec [hl]
    ret nc

    nop
    ld de, $75F4
    rla
    ld [hl], l
    ld e, [hl]
    dec b
    dec bc
    pop hl
    ld [hl], b
    dec b
    rlca
    ld [hl], l
    ret nc

    nop
    ld de, $75F4
    rla
    ld [hl], l
    ld e, [hl]

jr_017_5D9F:
    dec b
    ld [de], a
    pop hl
    ld [hl], b

jr_017_5DA3:
    inc b
    ld a, [bc]
    and h
    ret nc

jr_017_5DA7:
    nop
    ld de, $75F4

jr_017_5DAB:
    rla
    ld [hl], l
    ld e, [hl]
    dec b

jr_017_5DAF:
    inc de
    pop hl
    ld [hl], b
    inc bc

jr_017_5DB3:
    ld a, [bc]
    and e
    ret nc

    nop
    ld de, $75F4
    rla
    ld [hl], l
    ld e, [hl]
    dec b
    inc d
    pop hl
    ld [hl], b
    ld [bc], a
    ld [$D082], sp
    nop
    ld de, $75F4
    rla
    ld [hl], l
    ld e, [hl]
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
    dec bc
    inc de
    dec bc
    inc d
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
    jr z, @-$5E

    db $FD
    or l
    jr z, jr_017_5D9F

    ei
    or l
    jr z, jr_017_5DA3

    rst $30
    or l
    jr z, jr_017_5DA7

    rst $28
    or l
    jr z, jr_017_5DAB

    rst $18
    or l
    jr z, jr_017_5DAF

    cp a
    or l
    jr z, jr_017_5DB3

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
    rla
    add hl, hl
    ld e, [hl]
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_017_5E88

    ld h, l
    ld [hl], e
    ld [hl], h

jr_017_5E39:
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_017_5E84

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    rla
    ld c, h
    ld e, [hl]
    rla
    ld [hl], d
    ld e, h
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]

jr_017_5E50:
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $17
    ld h, e
    ld e, [hl]
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld b, e
    db $10

jr_017_5E67:
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_017_5E74

    ld a, d
    jr nz, @+$7A

    ld c, b
    rla
    push af

jr_017_5E74:
    ld e, h
    or e
    ld sp, $01C7
    ld c, e
    add hl, bc
    nop
    rla
    ld c, h

jr_017_5E7E:
    ld e, [hl]
    inc d
    ld de, $75F4
    ld b, l

jr_017_5E84:
    dec d
    ld de, $764E

jr_017_5E88:
    jr jr_017_5E9B

    db $F4
    ld [hl], l
    jr jr_017_5E9F

    ld [hl], l
    halt
    jr jr_017_5EA3

    db $F4
    ld [hl], l
    nop

jr_017_5E95:
    nop
    or l
    jr z, jr_017_5E39

    cp $45

jr_017_5E9B:
    dec d
    ld de, $76C3

jr_017_5E9F:
    jr z, jr_017_5EB2

    db $F4
    ld [hl], l

jr_017_5EA3:
    jr jr_017_5EB6

    sbc h
    halt
    jr z, jr_017_5EBA

    db $F4
    ld [hl], l
    nop

jr_017_5EAC:
    nop
    or l
    jr z, jr_017_5E50

    cp $45

jr_017_5EB2:
    dec d
    ld de, $769C

jr_017_5EB6:
    jr nc, jr_017_5EC9

    db $F4
    ld [hl], l

jr_017_5EBA:
    jr jr_017_5ECD

    jp $3076


    ld de, $75F4
    nop

jr_017_5EC3:
    nop
    or l
    jr z, jr_017_5E67

    cp $45

jr_017_5EC9:
    dec d
    ld de, $76C3

jr_017_5ECD:
    jr jr_017_5EE0

    db $F4
    ld [hl], l
    jr jr_017_5EE4

    sbc h
    halt
    jr jr_017_5EE8

    db $F4
    ld [hl], l
    nop

jr_017_5EDA:
    nop
    or l
    jr z, jr_017_5E7E

    db $FD
    ld b, l

jr_017_5EE0:
    dec d
    ld de, $769C

jr_017_5EE4:
    jr z, jr_017_5EF7

    db $F4
    ld [hl], l

jr_017_5EE8:
    jr jr_017_5EFB

    jp $2876


    ld de, $75F4
    nop

jr_017_5EF1:
    nop
    or l
    jr z, jr_017_5E95

    db $FD
    ld b, l

jr_017_5EF7:
    dec d
    ld de, $769C

jr_017_5EFB:
    ld c, b
    ld de, $75F4
    jr jr_017_5F12

    jp Jump_017_4876


    ld de, $75F4
    nop

jr_017_5F08:
    nop
    or l
    jr z, jr_017_5EAC

    ei
    ld b, l
    dec d
    ld de, $769C

jr_017_5F12:
    jr nz, jr_017_5F25

    db $F4
    ld [hl], l
    jr jr_017_5F29

    jp $2076


    ld de, $75F4
    nop

jr_017_5F1F:
    nop
    or l
    jr z, jr_017_5EC3

    rst $30
    ld b, l

jr_017_5F25:
    dec d
    ld de, $76C3

jr_017_5F29:
    jr nz, jr_017_5F3C

    db $F4
    ld [hl], l
    jr jr_017_5F40

    sbc h
    halt
    jr nz, jr_017_5F44

    db $F4
    ld [hl], l
    nop

jr_017_5F36:
    nop
    or l
    jr z, jr_017_5EDA

    rst $30
    ld b, l

jr_017_5F3C:
    dec d
    ld de, $764E

jr_017_5F40:
    ld [$F411], sp
    ld [hl], l

jr_017_5F44:
    jr jr_017_5F57

    ld [hl], l
    halt
    ld [$F411], sp
    ld [hl], l
    nop

jr_017_5F4D:
    nop
    or l
    jr z, jr_017_5EF1

    rst $30
    ld b, l
    dec d
    ld de, $7675

jr_017_5F57:
    ld [$F411], sp
    ld [hl], l
    jr jr_017_5F6E

    ld c, [hl]
    halt
    ld [$F411], sp
    ld [hl], l
    nop

jr_017_5F64:
    nop
    or l
    jr z, jr_017_5F08

    rst $30
    ld b, l
    dec d
    ld de, $769C

jr_017_5F6E:
    ld c, b
    ld de, $75F4
    jr jr_017_5F85

    jp Jump_017_4876


    ld de, $75F4
    nop

jr_017_5F7B:
    nop
    or l
    jr z, jr_017_5F1F

    rst $28
    ld b, l
    dec d
    ld de, $7675

jr_017_5F85:
    jr nc, jr_017_5F98

    db $F4
    ld [hl], l
    jr jr_017_5F9C

    ld c, [hl]
    halt
    jr nc, jr_017_5FA0

    db $F4
    ld [hl], l
    nop

jr_017_5F92:
    nop
    or l
    jr z, jr_017_5F36

    rst $18
    ld b, l

jr_017_5F98:
    dec d
    ld de, $76C3

jr_017_5F9C:
    jr jr_017_5FAF

    db $F4
    ld [hl], l

jr_017_5FA0:
    jr jr_017_5FB3

    sbc h
    halt
    jr jr_017_5FB7

    db $F4
    ld [hl], l
    nop

jr_017_5FA9:
    nop
    or l
    jr z, jr_017_5F4D

    rst $18
    ld b, l

jr_017_5FAF:
    dec d
    ld de, $764E

jr_017_5FB3:
    ld c, b
    ld de, $75F4

jr_017_5FB7:
    jr jr_017_5FCA

    ld [hl], l
    halt
    ld c, b
    ld de, $75F4
    nop
    nop
    or l
    jr z, jr_017_5F64

    cp a
    ld b, l
    dec d
    ld de, $76C3

jr_017_5FCA:
    jr jr_017_5FDD

    db $F4
    ld [hl], l
    jr jr_017_5FE1

    sbc h
    halt
    jr jr_017_5FE5

    db $F4
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_017_5F7B

    cp a
    ld b, l

jr_017_5FDD:
    dec d
    ld de, $764E

jr_017_5FE1:
    ld c, b
    ld de, $75F4

jr_017_5FE5:
    jr jr_017_5FF8

    ld [hl], l
    halt
    ld c, b
    ld de, $75F4
    nop
    nop
    or l
    jr z, jr_017_5F92

    ld a, a
    ld b, l
    dec d
    ld de, $76C3

jr_017_5FF8:
    db $10
    ld de, $75F4
    jr jr_017_600F

    sbc h
    halt
    db $10
    ld de, $75F4
    nop
    nop
    or l
    jr z, jr_017_5FA9

    ld a, a
    ld b, l
    dec d
    ld de, $7675

jr_017_600F:
    jr jr_017_6022

    db $F4
    ld [hl], l
    jr jr_017_6026

    ld c, [hl]
    halt
    jr jr_017_602A

    db $F4
    ld [hl], l
    nop
    nop
    or l
    add hl, hl
    and b
    cp $45

jr_017_6022:
    dec d
    ld de, $76C3

jr_017_6026:
    db $10
    ld de, $75F4

jr_017_602A:
    jr jr_017_603D

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

jr_017_603D:
    jr nz, jr_017_6050

    db $F4
    ld [hl], l
    jr jr_017_6054

    ld [hl], l
    halt
    jr nz, jr_017_6058

    db $F4
    ld [hl], l
    nop
    nop
    or l
    add hl, hl
    and b
    cp $45

jr_017_6050:
    dec d
    ld de, $769C

jr_017_6054:
    jr nz, jr_017_6067

    db $F4
    ld [hl], l

jr_017_6058:
    jr jr_017_606B

    jp $2076


    ld de, $75F4
    nop
    nop
    or l
    add hl, hl
    and b
    db $FD
    ld b, l

jr_017_6067:
    dec d
    ld de, $769C

jr_017_606B:
    jr c, jr_017_607E

    db $F4
    ld [hl], l
    jr jr_017_6082

    jp $3876


    ld de, $75F4
    nop
    nop
    or l
    add hl, hl
    and b
    ei
    ld b, l

jr_017_607E:
    dec d
    ld de, $769C

jr_017_6082:
    jr z, jr_017_6095

    db $F4
    ld [hl], l
    jr jr_017_6099

    jp $2876


    ld de, $75F4
    nop
    nop
    or l
    add hl, hl
    and b
    rst $30
    ld b, l

jr_017_6095:
    dec d
    ld de, $764E

jr_017_6099:
    jr c, jr_017_60AC

    db $F4
    ld [hl], l
    jr @+$13

    ld [hl], l
    halt
    jr c, jr_017_60B4

    db $F4
    ld [hl], l
    nop
    nop
    or l
    add hl, hl
    and b
    rst $30
    ld b, l

jr_017_60AC:
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop

jr_017_60B4:
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_017_6120

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_017_6129

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    rla
    rlca
    ld h, c
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_017_6150

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_615A

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_017_6148

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
    ld a, [hl-]
    and b
    ld bc, $0005
    rla
    ld b, e
    ld h, c
    and c
    xor l
    add d
    and c
    ld bc, $A132
    ld c, b
    rla
    ld l, [hl]
    ld e, h
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_017_6180

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_618A

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_618E

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_017_6151

    dec [hl]

jr_017_6120:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_017_6129:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld a, [hl-]
    and b
    ld bc, $0005
    rla
    ld b, e
    ld h, c
    and c
    xor l
    add d
    and c
    ld bc, $A132
    ld c, b
    rla
    ld l, [hl]
    ld e, h
    ld b, [hl]
    inc de
    ld bc, $A132

jr_017_6148:
    ld bc, $A182
    rla
    jp nz, $9F61

    add d

jr_017_6150:
    and c

jr_017_6151:
    ld b, [hl]
    rrca
    ld bc, $A182
    dec b
    ld bc, $8817

jr_017_615A:
    ld h, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_017_61C4

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
    jr nz, jr_017_61C1

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_61DD

    ld [hl], e
    cp $FC
    jr nz, jr_017_61DA

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_017_6180:
    ld l, $FE
    db $FD
    and c
    ld c, b
    rla
    ld l, [hl]
    ld e, h
    and [hl]
    ld d, h

jr_017_618A:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_017_618E:
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
    jr nz, jr_017_61EE

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_017_621C

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
    rla
    ld l, [hl]

jr_017_61C1:
    ld e, h
    sbc a
    add d

jr_017_61C4:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h

jr_017_61CB:
    jr nz, jr_017_6231

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_017_6240

    ld h, c
    halt

jr_017_61DA:
    ld h, l
    jr nz, @+$75

jr_017_61DD:
    ld h, l
    ld [hl], h
    jr nz, jr_017_6242

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_017_622F

    ld l, c
    ld h, a

jr_017_61E9:
    ld l, b
    jr nz, jr_017_623F

    ld h, e
    ld l, a

jr_017_61EE:
    ld [hl], d

jr_017_61EF:
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_017_6267

    ld [hl], d
    ld h, l
    halt
    ld l, c

jr_017_61FB:
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38
    ld c, b
    ld l, c

jr_017_6201:
    ld h, a
    ld l, b
    jr nz, jr_017_6258

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_6282

    ld h, c
    ld [hl], e

jr_017_620D:
    cp $FC
    jr nz, @+$63

    ld [hl], h
    ld [hl], h

jr_017_6213:
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    and c

jr_017_621C:
    xor l
    add d
    and c

jr_017_621F:
    ld bc, $A132
    and c
    ld c, b
    rla

jr_017_6225:
    ld l, [hl]
    ld e, h
    ld b, [hl]
    nop
    jr z, jr_017_61CB

    ld bc, $3817
    ld h, d

jr_017_622F:
    add hl, bc
    inc bc

jr_017_6231:
    rla
    or d
    ld e, [hl]
    or [hl]
    jr z, @-$5E

jr_017_6237:
    ld bc, $4645
    nop
    jr z, jr_017_61DD

    ld [bc], a
    rla

jr_017_623F:
    ld c, d

jr_017_6240:
    ld h, d
    add hl, bc

jr_017_6242:
    inc b

jr_017_6243:
    rla
    ldh [$5E], a
    or [hl]
    jr z, jr_017_61E9

jr_017_6249:
    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_017_61EF

    ld bc, $5C17
    ld h, d
    add hl, bc
    inc bc

jr_017_6255:
    rla
    sbc e
    ld e, [hl]

jr_017_6258:
    or [hl]
    jr z, jr_017_61FB

jr_017_625B:
    ld bc, $4645
    nop
    jr z, jr_017_6201

    ld [bc], a
    rla
    ld l, [hl]
    ld h, d
    add hl, bc
    inc b

jr_017_6267:
    rla
    ret


    ld e, [hl]
    or [hl]
    jr z, jr_017_620D

    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_017_6213

    inc b
    rla
    add b
    ld h, d
    add hl, bc

jr_017_6278:
    dec b
    rla
    rst $30
    ld e, [hl]
    or [hl]
    jr z, jr_017_621F

    inc b
    ld b, l
    ld b, [hl]

jr_017_6282:
    nop
    jr z, jr_017_6225

    db $10
    rla
    sub d
    ld h, d
    add hl, bc

jr_017_628A:
    rlca
    rla
    ld l, d
    ld e, a
    or [hl]

jr_017_628F:
    jr z, jr_017_6231

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_017_6237

    ld [$A417], sp
    ld h, d

jr_017_629B:
    add hl, bc
    ld b, $17
    dec h
    ld e, a
    or [hl]

jr_017_62A1:
    jr z, jr_017_6243

    ld [$4645], sp
    nop
    jr z, jr_017_6249

    ld [$B617], sp
    ld h, d

jr_017_62AD:
    add hl, bc
    ld b, $17
    ld c, $5F
    or [hl]

jr_017_62B3:
    jr z, jr_017_6255

    ld [$4645], sp
    nop
    jr z, jr_017_625B

    ld [$C817], sp
    ld h, d

jr_017_62BF:
    add hl, bc
    ld b, $17
    ld d, e
    ld e, a
    or [hl]

jr_017_62C5:
    jr z, jr_017_6267

    ld [$0046], sp
    jr z, @-$5E

    inc b
    rla
    reti


    ld h, d
    add hl, bc

jr_017_62D1:
    dec b
    rla
    rst $30
    ld e, [hl]
    or [hl]
    jr z, jr_017_6278

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld [$EB17], sp
    ld h, d
    add hl, bc

jr_017_62E3:
    ld b, $17
    inc a
    ld e, a
    or [hl]

jr_017_62E8:
    jr z, jr_017_628A

    ld [$0046], sp
    jr z, jr_017_628F

    db $10
    rla
    db $FC
    ld h, d
    add hl, bc

jr_017_62F4:
    rlca
    rla
    ld l, d
    ld e, a
    or [hl]
    jr z, jr_017_629B

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_017_62A1

    jr nz, @+$19

    ld c, $63
    add hl, bc

jr_017_6306:
    ld [$9817], sp
    ld e, a
    or [hl]
    jr z, jr_017_62AD

    jr nz, jr_017_6354

    ld b, [hl]
    nop
    jr z, jr_017_62B3

    jr nz, jr_017_632C

    jr nz, jr_017_637A

    add hl, bc

jr_017_6318:
    ld [$8117], sp
    ld e, a
    or [hl]

jr_017_631D:
    jr z, jr_017_62BF

    jr nz, jr_017_6366

    ld b, [hl]
    nop
    jr z, jr_017_62C5

    ld b, b
    rla
    ld [hl-], a
    ld h, e

jr_017_6329:
    add hl, bc
    add hl, bc
    rla

jr_017_632C:
    xor a
    ld e, a
    or [hl]

jr_017_632F:
    jr z, jr_017_62D1

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld b, b
    rla
    ld b, h
    ld h, e

jr_017_633B:
    add hl, bc
    add hl, bc
    rla
    xor a
    ld e, a

jr_017_6340:
    or [hl]
    jr z, jr_017_62E3

    ld b, b
    ld b, [hl]
    nop
    jr z, jr_017_62E8

    jr nz, jr_017_6361

    ld d, l
    ld h, e

jr_017_634C:
    add hl, bc
    ld [$9817], sp
    ld e, a
    or [hl]
    jr z, jr_017_62F4

jr_017_6354:
    jr nz, jr_017_639B

    ld b, [hl]
    nop
    jr z, @-$5E

    add b
    rla
    ld h, a
    ld h, e
    add hl, bc
    ld a, [bc]
    rla

jr_017_6361:
    db $DD
    ld e, a
    or [hl]
    jr z, jr_017_6306

jr_017_6366:
    add b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    add b
    rla
    ld a, c
    ld h, e
    add hl, bc
    ld a, [bc]
    rla
    db $DD
    ld e, a
    or [hl]
    jr z, jr_017_6318

    add b
    ld b, [hl]

jr_017_637A:
    nop
    jr z, jr_017_631D

    jr nz, jr_017_6396

    adc d
    ld h, e
    add hl, bc
    ld [$9817], sp
    ld e, a
    or [hl]
    jr z, jr_017_6329

    jr nz, jr_017_63D0

    ld b, [hl]
    nop
    jr z, jr_017_632F

    add b
    rla
    sbc h
    ld h, e
    add hl, bc
    ld a, [bc]
    rla

jr_017_6396:
    db $F4
    ld e, a
    or [hl]
    jr z, jr_017_633B

jr_017_639B:
    add b
    ld b, [hl]
    nop
    jr z, jr_017_6340

    ld b, b
    rla
    xor l
    ld h, e
    add hl, bc
    add hl, bc
    rla
    add $5F
    or [hl]
    jr z, jr_017_634C

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld bc, $BF17
    ld h, e
    add hl, bc
    dec bc
    rla
    add hl, sp
    ld h, b
    or [hl]
    add hl, hl
    and b
    ld bc, $4645
    nop
    add hl, hl
    and b
    ld [$D117], sp
    ld h, e
    add hl, bc
    inc d
    rla
    sub l
    ld h, b
    or [hl]
    add hl, hl
    and b

jr_017_63D0:
    ld [$4645], sp
    nop
    add hl, hl
    and b
    ld bc, $E317
    ld h, e
    add hl, bc
    dec bc
    rla
    ld [hl+], a
    ld h, b
    or [hl]
    add hl, hl
    and b
    ld bc, $0046
    add hl, hl
    and b
    ld [$F417], sp
    ld h, e
    add hl, bc
    inc d
    rla
    sub l
    ld h, b
    or [hl]
    add hl, hl
    and b
    ld [$4645], sp
    nop
    add hl, hl
    and b
    ld bc, $0617
    ld h, h
    add hl, bc
    dec bc
    rla
    ld [hl+], a
    ld h, b
    or [hl]
    add hl, hl
    and b
    ld bc, $4645
    nop
    add hl, hl
    and b
    inc b
    rla
    jr jr_017_6473

    add hl, bc
    inc de
    rla
    ld h, a
    ld h, b
    or [hl]
    add hl, hl
    and b
    inc b
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld [$2917], sp
    ld h, h
    add hl, bc
    inc d
    rla
    sub l
    ld h, b
    or [hl]
    add hl, hl
    and b
    ld [$4645], sp
    nop
    add hl, hl
    and b
    ld [bc], a
    rla
    dec sp
    ld h, h
    add hl, bc
    ld [de], a
    rla
    ld d, b
    ld h, b
    or [hl]
    add hl, hl
    and b
    ld [bc], a
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld [$4C17], sp
    ld h, h
    add hl, bc
    inc d
    rla
    sub l
    ld h, b
    or [hl]
    add hl, hl
    and b
    ld [$4645], sp
    nop
    add hl, hl
    and b
    ld [bc], a
    rla
    ld e, [hl]
    ld h, h
    add hl, bc
    ld [de], a
    rla
    ld d, b
    ld h, b
    or [hl]
    add hl, hl
    and b
    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    inc b
    rla
    ld [hl], b
    ld h, h
    add hl, bc
    inc de
    rla
    ld h, a
    ld h, b
    or [hl]

jr_017_646D:
    add hl, hl
    and b
    inc b
    ld b, l
    ld b, [hl]
    nop

jr_017_6473:
    add hl, hl
    and b
    ld bc, $8217
    ld h, h

jr_017_6479:
    add hl, bc
    dec bc
    rla
    dec bc
    ld h, b
    or [hl]

jr_017_647F:
    add hl, hl
    and b
    ld bc, $0046
    add hl, hl
    and b
    inc b
    rla
    sub e
    ld h, h
    add hl, bc

jr_017_648B:
    inc de
    rla
    ld h, a
    ld h, b
    or [hl]
    add hl, hl

jr_017_6491:
    and b
    inc b
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld [$A517], sp
    ld h, h
    add hl, bc

jr_017_649D:
    inc d
    rla
    ld a, [hl]
    ld h, b
    or [hl]
    add hl, hl
    and b
    ld [$4645], sp
    nop
    add hl, hl
    and b
    ld [$B717], sp
    ld h, h
    add hl, bc
    inc d
    rla
    sub l
    ld h, b
    or [hl]
    add hl, hl
    and b
    ld [$0046], sp
    add hl, hl
    and b
    ld bc, $C817
    ld h, h
    add hl, bc
    dec bc
    rla
    dec bc
    ld h, b
    or [hl]
    add hl, hl
    and b
    ld bc, $4645
    nop
    jr z, jr_017_646D

    ld bc, $DA17
    ld h, h
    add hl, bc
    inc bc
    rla
    add h
    ld e, [hl]
    or [hl]
    jr z, jr_017_6479

    ld bc, $4645
    nop
    jr z, jr_017_647F

    ld bc, $EC17
    ld h, h
    add hl, bc
    inc bc
    rla
    add h
    ld e, [hl]
    or [hl]
    jr z, jr_017_648B

    ld bc, $4645
    nop
    jr z, jr_017_6491

    ld [bc], a
    rla
    cp $64
    add hl, bc
    inc b
    rla
    ret


    ld e, [hl]
    or [hl]
    jr z, jr_017_649D

    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld bc, $1017
    ld h, l
    add hl, bc
    dec bc
    rla
    dec bc
    ld h, b
    or [hl]
    add hl, hl
    and b

jr_017_650F:
    ld bc, $0046
    add hl, hl
    and b
    ld [bc], a
    rla
    ld hl, $0965
    ld [de], a
    rla
    ld d, b
    ld h, b
    or [hl]

jr_017_651E:
    add hl, hl
    and b
    ld [bc], a
    ld b, l

jr_017_6522:
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
    ld l, a
    ld c, a
    inc de
    ld l, h
    ld d, a
    ld b, d
    ld h, a
    ld h, $42
    dec b
    nop
    inc [hl]
    ld h, e
    inc b
    inc h
    inc c
    rst $10
    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    inc d
    inc d
    db $FC
    db $D3
    nop
    rla
    ld [hl], e
    ld l, c
    add hl, de
    add sp, $46
    or l
    dec hl
    and b
    ei
    dec bc
    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    dec b
    or e
    inc sp
    and c
    nop
    or e
    jr z, jr_017_650F

    nop
    or l
    ld a, [hl+]
    and b
    cp $B5
    ld a, [hl+]
    and b
    db $FD
    or l
    ld a, [hl+]
    and b
    ei
    or l
    jr z, jr_017_651E

    cp $B5
    jr z, jr_017_6522

    db $FD
    or l
    jr z, @-$5E

    ei
    or l
    jr z, @-$5E

    rst $30
    or l
    ld a, [hl+]
    and b
    rst $18
    or l
    ld a, [hl+]
    and b
    cp a
    or l
    ld a, [hl+]
    and b
    ld a, a
    or l
    dec hl
    and b
    cp $9B
    rla
    and b
    ld h, l
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    or [hl]
    dec hl
    and b
    inc b
    inc c
    nop
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_017_6605

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_017_6601

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    rla
    ret nc

    ld h, l
    rla
    ld a, l
    ld e, h
    ld b, l
    ld b, [hl]
    ld bc, $C9CB
    add hl, de
    rst $20
    ld b, [hl]
    or e
    ld sp, $01C7
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $17
    db $EB
    ld h, l
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $0F72
    nop
    nop
    ld a, d
    jr nz, jr_017_65F8

    ld a, d
    jr nz, jr_017_666D

    ld b, [hl]
    nop
    ld a, [hl+]

jr_017_65F8:
    and b
    inc b
    rla
    db $DB
    ld [hl], c
    ld c, b
    rla
    ld h, $65

jr_017_6601:
    inc c
    nop
    ld b, [hl]
    nop

jr_017_6605:
    ld a, [hl+]
    and b
    inc b
    rla
    xor [hl]
    ld [hl], d
    ld b, [hl]
    rrca
    ld bc, $A128
    dec b
    inc b
    rla
    adc [hl]
    ld h, a
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_017_6687

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_017_6690

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    rla
    ld l, [hl]
    ld h, [hl]
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_017_66B7

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_66C1

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_017_66AF

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
    ld a, [hl-]
    and b
    ld [bc], a
    dec b
    nop
    rla
    xor d
    ld h, [hl]
    and c
    xor l
    add e
    and c
    ld bc, $A132
    ld c, b
    rla
    ld a, c

jr_017_666D:
    ld e, h
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_017_66E7

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_66F1

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_66F5

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_017_66B8

    dec [hl]

jr_017_6687:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_017_6690:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld a, [hl-]
    and b
    ld [bc], a
    dec b
    nop
    rla
    xor d
    ld h, [hl]
    and c
    xor l
    add e
    and c
    ld bc, $A132
    ld c, b
    rla
    ld a, c
    ld e, h
    ld b, [hl]
    inc de
    ld bc, $A132

jr_017_66AF:
    ld bc, $A183
    rla
    add hl, hl
    ld h, a
    sbc a
    add e

jr_017_66B7:
    and c

jr_017_66B8:
    ld b, [hl]
    rrca
    ld bc, $A183
    dec b
    ld bc, $EF17

jr_017_66C1:
    ld h, [hl]
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_017_672B

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
    jr nz, jr_017_6728

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_6744

    ld [hl], e
    cp $FC
    jr nz, jr_017_6741

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_017_66E7:
    ld l, $FE
    db $FD
    and c
    ld c, b
    rla
    ld a, c
    ld e, h
    and [hl]
    ld d, h

jr_017_66F1:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_017_66F5:
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
    jr nz, jr_017_6755

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_017_6783

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
    rla
    ld a, c

jr_017_6728:
    ld e, h
    sbc a
    add e

jr_017_672B:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_017_6798

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_017_67A7

    ld h, c
    halt

jr_017_6741:
    ld h, l
    jr nz, jr_017_67B7

jr_017_6744:
    ld h, l
    ld [hl], h
    jr nz, jr_017_67A9

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_017_6796

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_017_67A6

    ld h, e
    ld l, a

jr_017_6755:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_017_67CE

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
    jr nz, jr_017_67BF

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_67E9

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_017_67D9

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

jr_017_6783:
    xor l
    add e
    and c
    ld bc, $A132
    and c
    ld c, b
    rla
    ld a, c
    ld e, h
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop

jr_017_6796:
    and [hl]
    ld e, c

jr_017_6798:
    ld l, a
    ld [hl], l
    jr nz, jr_017_6802

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld h, c
    jr nz, jr_017_67F7

    ld b, l
    ld b, e

jr_017_67A6:
    ld d, d

jr_017_67A7:
    ld b, l
    ld d, h

jr_017_67A9:
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    rla
    jp hl


    ld h, a
    sbc a

jr_017_67B7:
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_017_6832

    ld l, a

jr_017_67BF:
    ld l, a
    ld l, e
    jr nz, jr_017_683C

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_017_682A

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b

jr_017_67CE:
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld a, [hl-]
    and b
    ld [bc], a

jr_017_67D9:
    dec b
    nop
    rla
    dec h
    ld l, b
    and c
    xor l
    add e
    and c
    ld bc, $A132
    ld c, b
    rla
    add h
    ld e, h

jr_017_67E9:
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_017_6862

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_686C

    ld l, a
    ld [hl], l
    rst $38
    ld l, l

jr_017_67F7:
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_6870

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_017_6833

    dec [hl]

jr_017_6802:
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
    ld a, [hl-]
    and b
    ld [bc], a
    dec b
    nop
    rla
    dec h
    ld l, b
    and c
    xor l
    add e
    and c
    ld bc, $A132
    ld c, b
    rla
    add h
    ld e, h
    ld b, [hl]
    inc de
    ld bc, $A132

jr_017_682A:
    ld bc, $A183
    rla
    and h
    ld l, b
    sbc a
    add e

jr_017_6832:
    and c

jr_017_6833:
    ld b, [hl]
    rrca
    ld bc, $A183
    dec b
    ld bc, $6A17

jr_017_683C:
    ld l, b
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_017_68A6

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
    jr nz, jr_017_68A3

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_68BF

    ld [hl], e
    cp $FC
    jr nz, jr_017_68BC

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_017_6862:
    ld l, $FE
    db $FD
    and c
    ld c, b
    rla
    add h
    ld e, h
    and [hl]
    ld d, h

jr_017_686C:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_017_6870:
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
    jr nz, jr_017_68D0

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_017_68FE

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
    rla
    add h

jr_017_68A3:
    ld e, h
    sbc a
    add e

jr_017_68A6:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_017_6913

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_017_6922

    ld h, c
    halt

jr_017_68BC:
    ld h, l
    jr nz, jr_017_6932

jr_017_68BF:
    ld h, l
    ld [hl], h
    jr nz, jr_017_6924

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_017_6911

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_017_6921

    ld h, e
    ld l, a

jr_017_68D0:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_017_6949

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

jr_017_68E4:
    ld l, b
    jr nz, jr_017_693A

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$79

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_017_6954

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

jr_017_68FE:
    xor l
    add e
    and c
    ld bc, $A132
    and c
    ld c, b
    rla
    add h
    ld e, h
    or [hl]
    ld a, [hl+]
    and b
    jr nz, @+$4A

    rla
    ld d, l
    ld l, c

jr_017_6911:
    or [hl]
    ld a, [hl+]

jr_017_6913:
    and b
    ld b, b
    ld c, b
    rla
    ld d, l
    ld l, c
    or [hl]
    ld a, [hl+]
    and b
    add b
    ld c, b
    rla
    ld d, l
    ld l, c

jr_017_6921:
    or [hl]

jr_017_6922:
    dec hl
    and b

jr_017_6924:
    ld bc, $1748
    ld d, l
    ld l, c
    or [hl]
    ld a, [hl+]
    and b
    jr nz, jr_017_68E4

    ld a, [hl+]
    and b
    add b
    ld c, b

jr_017_6932:
    rla
    ld d, l
    ld l, c
    or [hl]
    ld a, [hl+]
    and b
    jr nz, @-$48

jr_017_693A:
    dec hl
    and b
    ld bc, $1748
    ld d, l
    ld l, c
    or [hl]
    ld a, [hl+]
    and b
    ld b, b
    or [hl]
    ld a, [hl+]
    and b
    add b

jr_017_6949:
    ld c, b
    rla
    ld d, l
    ld l, c
    or [hl]
    ld a, [hl+]
    and b
    ld b, b
    or [hl]
    dec hl
    and b

jr_017_6954:
    ld bc, $0046
    ld a, [hl+]
    and b
    ld bc, $E719
    ld b, [hl]
    or [hl]
    ld a, [hl+]
    and b
    ld bc, $0205
    ld hl, sp+$4A
    inc d
    inc d
    db $FC
    db $D3
    nop
    rla
    ld [hl], e
    ld l, c
    add hl, de
    add sp, $46
    dec bc
    ld [bc], a
    ld b, l
    ld e, $0B
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [bc], a
    add hl, de
    rst $20
    ld b, [hl]
    or [hl]
    ld a, [hl+]
    and b
    ld [bc], a
    rrca
    nop
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
    nop
    halt
    ld c, [hl]
    ld bc, $A133
    rla
    nop
    nop
    cp a
    ld l, c
    rla
    ld bc, $DA00
    ld l, c
    rla
    ld [bc], a
    nop
    inc c
    ld l, d
    rla
    inc bc
    nop
    daa
    ld l, d
    rla
    inc b
    nop
    ld e, c
    ld l, d
    rla
    dec b
    nop
    jp c, $1769

    ld b, $00
    ld [hl], h
    ld l, d
    rla
    rlca
    nop
    daa
    ld l, d
    rst $38
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    jr nz, jr_017_69DC

    adc a
    ld l, d
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    rst $38
    nop
    adc $FF
    jp z, $48FA

    rla
    adc a
    ld l, d
    ld b, [hl]
    nop

jr_017_69DC:
    ld a, [hl+]
    and b
    add b
    rla
    pop af
    ld l, c
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
    ld bc, $0001
    jp z, $46FA

    nop
    dec hl
    and b
    ld bc, $8F17
    ld l, d
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
    rst $38
    rst $38
    rst $38
    jp z, $48FA

    rla
    adc a
    ld l, d
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    add b
    rla
    adc a
    ld l, d
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
    ld bc, $0001
    jp z, $48FA

    rla
    adc a
    ld l, d
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    jr nz, jr_017_6A44

    ld a, $6A
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    rst $38
    nop
    adc $FF
    jp z, $46FA

    nop
    ld a, [hl+]
    and b
    ld b, b
    rla

jr_017_6A44:
    adc a
    ld l, d
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    ld bc, $3200
    nop
    jp z, $48FA

    rla
    adc a
    ld l, d
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld b, b
    rla
    adc a
    ld l, d
    ld b, [hl]
    nop

jr_017_6A63:
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    ld bc, $3200
    nop
    jp z, $48FA

    rla
    adc a

jr_017_6A73:
    ld l, d
    ld b, [hl]
    nop
    dec hl
    and b
    ld bc, $8F17
    ld l, d
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20

jr_017_6A83:
    ld b, [hl]
    dec c
    nop
    rst $38
    rst $38
    rst $38
    jp z, $48FA

    rla
    adc a
    ld l, d
    xor l
    inc sp
    and c
    dec bc

jr_017_6A93:
    ld bc, $A133
    dec b
    ld bc, $2AB5
    and b
    db $FD
    or l
    ld a, [hl+]
    and b
    cp $B5
    ld a, [hl+]
    and b
    rst $18
    or l
    ld a, [hl+]

jr_017_6AA6:
    and b
    cp a
    or l
    ld a, [hl+]
    and b
    ld a, a
    or l
    dec hl
    and b
    cp $46
    rrca
    ld bc, $A133
    dec b
    ld [$BB17], sp
    ld l, d
    add hl, de
    or e
    inc sp
    and c
    nop
    add hl, de
    xor d
    jr z, jr_017_6A63

    ld bc, $DC19
    ld b, [hl]
    cp $9E
    ret nc

    ld e, $09
    ld c, b
    rla
    db $FC
    ld l, d
    xor d
    jr z, jr_017_6A73

    ld [bc], a
    add hl, de
    call c, $FE46
    rst $38
    jp nc, $091E

    ld c, b
    rla
    db $FC
    ld l, d
    xor d
    jr z, jr_017_6A83

    inc b
    add hl, de
    call c, $FE46
    ld [$1ED3], sp
    add hl, bc
    ld c, b
    rla
    db $FC
    ld l, d
    xor d
    jr z, jr_017_6A93

    ld [$DC19], sp
    ld b, [hl]
    cp $64
    sub $1E
    add hl, bc
    ld e, l
    add hl, de
    sub b
    ld b, [hl]
    ld h, l
    ld [bc], a
    xor l
    jr z, jr_017_6AA6

    dec bc
    ld bc, $A128
    dec b
    ld bc, $0F46
    ld bc, $A128
    dec b
    inc b
    add hl, de
    and a
    ld b, [hl]
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
    ld a, [hl]
    ld c, a
    inc de
    ld h, a
    ld l, b
    ld b, d
    dec b
    nop
    inc [hl]
    ld h, e
    ld bc, $1801
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
    inc bc
    ld c, b
    ret nc

Call_017_6B45:
    nop
    ld de, $75F4
    rla
    ld h, l
    ld l, h
    dec b
    inc b
    pop hl
    ld [hl], b
    dec b
    ld [bc], a
    inc sp
    ret nc

    nop
    ld de, $75F4
    rla
    ld h, l
    ld l, h
    dec b
    dec b
    pop hl
    ld [hl], b
    ld a, [bc]
    inc bc
    ld c, a
    ret nc

    nop
    ld de, $75F4
    rla
    ld h, l
    ld l, h
    dec b
    ld b, $E1
    ld [hl], b
    inc de
    ld [bc], a
    ld b, c
    ret nc

    nop
    ld de, $75F4
    rla
    ld h, l
    ld l, h
    dec b
    rlca
    pop hl
    ld [hl], b
    dec d
    inc bc
    ld e, d
    ret nc

    nop
    ld de, $75F4
    rla
    ld h, l
    ld l, h
    dec b
    ld [$70E1], sp
    db $10

jr_017_6B8D:
    dec b
    add e
    ret nc

    nop

jr_017_6B91:
    ld de, $75F4
    rla

jr_017_6B95:
    ld h, l
    ld l, h
    dec b
    add hl, bc

jr_017_6B99:
    pop hl
    ld [hl], b
    ld de, $9B06
    ret nc

    nop
    ld de, $75F4
    rla
    ld h, l

jr_017_6BA5:
    ld l, h
    dec b
    dec bc
    pop hl
    ld [hl], b
    ld b, $0A
    db $EC
    ret nc

    nop
    ld de, $75F4
    rla
    ld h, l
    ld l, h
    dec b
    ld [de], a
    pop hl
    ld [hl], b
    dec b
    dec bc
    ld [bc], a
    pop de
    nop
    ld de, $75F4
    rla
    ld h, l
    ld l, h
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
    jr z, jr_017_6B8D

    db $FD
    or l
    jr z, jr_017_6B91

    ei
    or l
    jr z, jr_017_6B95

    rst $30
    or l
    jr z, jr_017_6B99

    rst $28
    or l
    jr z, @-$5E

    rst $18
    or l
    jr z, @-$5E

    cp a
    or l
    jr z, jr_017_6BA5

    ld a, a
    or l
    add hl, hl
    and b
    cp $B5
    add hl, hl
    and b
    db $FD
    sbc e
    rla
    inc de
    ld l, h
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
    jr nz, jr_017_6C74

    ld h, l
    ld [hl], e
    ld [hl], h

jr_017_6C25:
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_017_6C70

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    rla
    jr c, @+$6E

    rla
    cp c
    ld e, h
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]

jr_017_6C3C:
    or e
    ld sp, $01C7
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $17
    ld d, e
    ld l, h
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
    jr nz, jr_017_6C64

    ld a, d
    jr nz, jr_017_6CD9

    ld c, b
    rla
    ld a, [de]

jr_017_6C64:
    ld l, e
    ld c, e
    add hl, bc
    nop
    rla
    jr c, @+$6E

    inc d
    ld de, $75F4
    ld b, l

jr_017_6C70:
    dec d
    ld de, $769C

jr_017_6C74:
    db $10
    ld de, $75F4
    jr jr_017_6C8B

    jp $1076


    ld de, $75F4
    nop

jr_017_6C81:
    nop
    or l
    jr z, jr_017_6C25

    cp $45
    dec d
    ld de, $7675

jr_017_6C8B:
    jr nz, jr_017_6C9E

    db $F4
    ld [hl], l
    jr jr_017_6CA2

    ld c, [hl]
    halt
    jr nz, jr_017_6CA6

    db $F4
    ld [hl], l
    nop

jr_017_6C98:
    nop
    or l
    jr z, jr_017_6C3C

    db $FD
    ld b, l

jr_017_6C9E:
    dec d
    ld de, $769C

jr_017_6CA2:
    ld [$F411], sp
    ld [hl], l

jr_017_6CA6:
    jr jr_017_6CB9

    jp $0876


    ld de, $75F4
    nop

jr_017_6CAF:
    nop
    or l
    jr z, @-$5E

    db $FD
    ld b, l
    dec d
    ld de, $7675

jr_017_6CB9:
    jr jr_017_6CCC

    db $F4
    ld [hl], l
    jr jr_017_6CD0

    ld c, [hl]
    halt
    jr jr_017_6CD4

    db $F4
    ld [hl], l
    nop

jr_017_6CC6:
    nop
    or l
    jr z, @-$5E

    ei
    ld b, l

jr_017_6CCC:
    dec d
    ld de, $769C

jr_017_6CD0:
    db $10
    ld de, $75F4

jr_017_6CD4:
    jr jr_017_6CE7

    jp $1076


jr_017_6CD9:
    ld de, $75F4
    nop

jr_017_6CDD:
    nop
    or l
    jr z, jr_017_6C81

    ei
    ld b, l
    dec d
    ld de, $7675

jr_017_6CE7:
    jr nz, jr_017_6CFA

    db $F4
    ld [hl], l
    jr jr_017_6CFE

    ld c, [hl]
    halt
    jr nz, jr_017_6D02

    db $F4
    ld [hl], l
    nop

jr_017_6CF4:
    nop
    or l
    jr z, jr_017_6C98

    rst $30
    ld b, l

jr_017_6CFA:
    dec d
    ld de, $76C3

jr_017_6CFE:
    jr nz, jr_017_6D11

    db $F4
    ld [hl], l

jr_017_6D02:
    jr jr_017_6D15

    sbc h
    halt
    jr nz, jr_017_6D19

    db $F4
    ld [hl], l
    nop

jr_017_6D0B:
    nop
    or l
    jr z, jr_017_6CAF

    rst $30
    ld b, l

jr_017_6D11:
    dec d
    ld de, $7675

jr_017_6D15:
    jr z, jr_017_6D28

    db $F4
    ld [hl], l

jr_017_6D19:
    jr jr_017_6D2C

    ld c, [hl]
    halt
    jr z, jr_017_6D30

    db $F4
    ld [hl], l
    nop

jr_017_6D22:
    nop
    or l
    jr z, jr_017_6CC6

    rst $28
    ld b, l

jr_017_6D28:
    dec d
    ld de, $764E

jr_017_6D2C:
    jr z, jr_017_6D3F

    db $F4
    ld [hl], l

jr_017_6D30:
    jr jr_017_6D43

    ld [hl], l
    halt
    jr z, jr_017_6D47

    db $F4
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_017_6CDD

    rst $18
    ld b, l

jr_017_6D3F:
    dec d
    ld de, $769C

jr_017_6D43:
    jr nz, jr_017_6D56

    db $F4
    ld [hl], l

jr_017_6D47:
    jr jr_017_6D5A

    jp $2076


    ld de, $75F4
    nop
    nop
    or l
    jr z, jr_017_6CF4

    rst $18
    ld b, l

jr_017_6D56:
    dec d
    ld de, $764E

jr_017_6D5A:
    jr nz, jr_017_6D6D

    db $F4
    ld [hl], l
    jr jr_017_6D71

    ld [hl], l
    halt
    jr nz, jr_017_6D75

    db $F4
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_017_6D0B

    cp a
    ld b, l

jr_017_6D6D:
    dec d
    ld de, $769C

jr_017_6D71:
    jr z, jr_017_6D84

    db $F4
    ld [hl], l

jr_017_6D75:
    jr jr_017_6D88

    jp $2876


    ld de, $75F4
    nop
    nop
    or l
    jr z, jr_017_6D22

    cp a
    ld b, l

jr_017_6D84:
    dec d
    ld de, $7675

jr_017_6D88:
    jr z, jr_017_6D9B

    db $F4
    ld [hl], l
    jr jr_017_6D9F

    ld c, [hl]
    halt
    jr z, jr_017_6DA3

    db $F4
    ld [hl], l
    nop
    nop
    or l
    add hl, hl
    and b
    cp $45

jr_017_6D9B:
    dec d
    ld de, $764E

jr_017_6D9F:
    jr z, jr_017_6DB2

    db $F4
    ld [hl], l

jr_017_6DA3:
    jr jr_017_6DB6

    ld [hl], l
    halt
    jr z, jr_017_6DBA

    db $F4
    ld [hl], l
    nop
    nop
    or l
    add hl, hl

jr_017_6DAF:
    and b
    cp $45

jr_017_6DB2:
    dec d
    ld de, $7675

jr_017_6DB6:
    jr nz, jr_017_6DC9

    db $F4
    ld [hl], l

jr_017_6DBA:
    jr jr_017_6DCD

    ld c, [hl]
    halt
    jr nz, jr_017_6DD1

jr_017_6DC0:
    db $F4
    ld [hl], l
    nop
    nop
    or l
    add hl, hl

jr_017_6DC6:
    and b
    db $FD
    ld b, l

jr_017_6DC9:
    dec d
    ld de, $764E

jr_017_6DCD:
    jr nz, jr_017_6DE0

    db $F4
    ld [hl], l

jr_017_6DD1:
    jr jr_017_6DE4

    ld [hl], l
    halt
    jr nz, jr_017_6DE8

    db $F4

jr_017_6DD8:
    ld [hl], l
    nop
    nop
    or l
    add hl, hl
    and b
    db $FD
    ld b, l

jr_017_6DE0:
    ld e, $05
    dec b
    nop

jr_017_6DE4:
    ld hl, sp+$4A
    inc d
    dec bc

jr_017_6DE8:
    ld de, $00D1
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    add c
    adc c
    pop bc
    inc b
    rlca

jr_017_6DF6:
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d

jr_017_6DFC:
    ld d, a
    ld e, [hl]
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_017_6DA3

    ld [bc], a
    rla
    db $10
    ld l, [hl]
    add hl, bc

jr_017_6E08:
    inc b
    rla
    add a
    ld l, h
    or [hl]
    jr z, jr_017_6DAF

    ld [bc], a
    ld b, [hl]
    nop
    jr z, @-$5E

    ld bc, $2117
    ld l, [hl]
    add hl, bc
    inc bc

jr_017_6E1A:
    rla
    ld [hl], b
    ld l, h
    or [hl]
    jr z, jr_017_6DC0

jr_017_6E20:
    ld bc, $4645
    nop
    jr z, jr_017_6DC6

    ld bc, $3317
    ld l, [hl]
    add hl, bc
    inc bc

jr_017_6E2C:
    rla
    ld [hl], b
    ld l, h
    or [hl]
    jr z, @-$5E

jr_017_6E32:
    ld bc, $4645
    nop
    jr z, jr_017_6DD8

    ld [bc], a
    rla
    ld b, l
    ld l, [hl]
    add hl, bc
    inc b

jr_017_6E3E:
    rla
    add a
    ld l, h
    or [hl]
    jr z, jr_017_6DE4

    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld [bc], a
    rla
    ld d, a
    ld l, [hl]
    add hl, bc

jr_017_6E4F:
    inc b
    rla
    sbc [hl]
    ld l, h
    or [hl]
    jr z, jr_017_6DF6

    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_017_6DFC

    inc b
    rla
    ld l, c
    ld l, [hl]
    add hl, bc

jr_017_6E61:
    dec b
    rla
    or l
    ld l, h
    or [hl]

jr_017_6E66:
    jr z, jr_017_6E08

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    inc b
    rla
    ld a, e
    ld l, [hl]

jr_017_6E72:
    add hl, bc
    dec b
    rla
    call z, $B66C

jr_017_6E78:
    jr z, jr_017_6E1A

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_017_6E20

    ld [$8D17], sp
    ld l, [hl]

jr_017_6E84:
    add hl, bc
    ld b, $17
    db $E3
    ld l, h
    or [hl]

jr_017_6E8A:
    jr z, jr_017_6E2C

    ld [$4645], sp
    nop
    jr z, jr_017_6E32

    ld [$9F17], sp
    ld l, [hl]

jr_017_6E96:
    add hl, bc
    ld b, $17
    db $E3
    ld l, h
    or [hl]

jr_017_6E9C:
    jr z, jr_017_6E3E

    ld [$0046], sp
    jr z, @-$5E

    ld b, b
    rla
    or b
    ld l, [hl]
    add hl, bc

jr_017_6EA8:
    add hl, bc
    rla
    ld l, l
    ld l, l
    or [hl]

jr_017_6EAD:
    jr z, jr_017_6E4F

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld [$C217], sp
    ld l, [hl]

jr_017_6EB9:
    add hl, bc
    ld b, $17
    db $E3
    ld l, h
    or [hl]

jr_017_6EBF:
    jr z, jr_017_6E61

    ld [$0046], sp
    jr z, jr_017_6E66

    jr nz, @+$19

    db $D3
    ld l, [hl]
    add hl, bc

jr_017_6ECB:
    ld [$3F17], sp
    ld l, l
    or [hl]

jr_017_6ED0:
    jr z, jr_017_6E72

    jr nz, jr_017_6F19

    ld b, [hl]
    nop
    jr z, jr_017_6E78

    jr nz, jr_017_6EF1

    push hl
    ld l, [hl]

jr_017_6EDC:
    add hl, bc
    ld [$3F17], sp
    ld l, l
    or [hl]

jr_017_6EE2:
    jr z, jr_017_6E84

    jr nz, jr_017_6F2B

    ld b, [hl]
    nop
    jr z, jr_017_6E8A

    ld b, b
    rla
    rst $30
    ld l, [hl]

jr_017_6EEE:
    add hl, bc
    add hl, bc
    rla

jr_017_6EF1:
    ld l, l
    ld l, l

jr_017_6EF3:
    or [hl]
    jr z, jr_017_6E96

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_017_6E9C

    db $10
    rla
    add hl, bc

jr_017_6EFF:
    ld l, a
    add hl, bc
    rlca
    rla
    ld de, $B66D
    jr z, jr_017_6EA8

    db $10
    ld b, [hl]
    nop
    jr z, jr_017_6EAD

    jr nz, jr_017_6F26

    ld a, [de]
    ld l, a

jr_017_6F11:
    add hl, bc
    ld [$3F17], sp
    ld l, l
    or [hl]

jr_017_6F17:
    jr z, jr_017_6EB9

jr_017_6F19:
    jr nz, jr_017_6F60

    ld b, [hl]
    nop
    jr z, jr_017_6EBF

    db $10
    rla
    inc l
    ld l, a

jr_017_6F23:
    add hl, bc
    rlca
    rla

jr_017_6F26:
    ld de, $B66D
    jr z, jr_017_6ECB

jr_017_6F2B:
    db $10
    ld b, [hl]
    nop
    jr z, jr_017_6ED0

    ld b, b
    rla
    dec a
    ld l, a

jr_017_6F34:
    add hl, bc
    add hl, bc
    rla
    ld l, l
    ld l, l
    or [hl]
    jr z, jr_017_6EDC

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_017_6EE2

    jr nz, jr_017_6F5B

    ld c, a
    ld l, a
    add hl, bc
    ld [$2817], sp
    ld l, l
    or [hl]

jr_017_6F4C:
    jr z, jr_017_6EEE

    jr nz, jr_017_6F96

    nop
    jr z, jr_017_6EF3

    ld b, b
    rla
    ld h, b
    ld l, a
    add hl, bc

jr_017_6F58:
    add hl, bc
    rla
    ld l, l

jr_017_6F5B:
    ld l, l
    or [hl]
    jr z, jr_017_6EFF

    ld b, b

jr_017_6F60:
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld b, b
    rla
    ld [hl], d
    ld l, a
    add hl, bc

jr_017_6F6A:
    add hl, bc
    rla
    ld d, [hl]
    ld l, l
    or [hl]

jr_017_6F6F:
    jr z, jr_017_6F11

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_017_6F17

    ld [$8417], sp
    ld l, a

jr_017_6F7B:
    add hl, bc
    ld b, $17
    ld a, [$B66C]

jr_017_6F81:
    jr z, jr_017_6F23

    ld [$0046], sp
    jr z, @-$5E

    ld b, b
    rla
    sub l
    ld l, a
    add hl, bc

jr_017_6F8D:
    add hl, bc
    rla
    ld d, [hl]
    ld l, l
    or [hl]

jr_017_6F92:
    jr z, jr_017_6F34

    ld b, b
    ld b, l

jr_017_6F96:
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld [bc], a
    rla
    and a
    ld l, a

jr_017_6F9E:
    add hl, bc
    ld [de], a
    rla
    or d
    ld l, l
    or [hl]

jr_017_6FA4:
    add hl, hl
    and b
    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_017_6F4C

    jr nz, @+$19

    cp c
    ld l, a

jr_017_6FB0:
    add hl, bc
    ld [$2817], sp
    ld l, l
    or [hl]

jr_017_6FB6:
    jr z, jr_017_6F58

    jr nz, @+$47

    ld b, [hl]
    nop
    jr z, @-$5E

    jr nz, @+$19

    bit 5, a

jr_017_6FC2:
    add hl, bc
    ld [$2817], sp
    ld l, l
    or [hl]
    jr z, jr_017_6F6A

    jr nz, jr_017_7012

    nop
    jr z, jr_017_6F6F

    ld [$DC17], sp
    ld l, a
    add hl, bc
    ld b, $17
    ld a, [$B66C]
    jr z, jr_017_6F7B

    ld [$4645], sp
    nop
    jr z, jr_017_6F81

    db $10
    rla
    xor $6F
    add hl, bc
    rlca
    rla
    ld de, $B66D
    jr z, jr_017_6F8D

    db $10
    ld b, [hl]
    nop
    jr z, jr_017_6F92

    ld [$FF17], sp
    ld l, a
    add hl, bc
    ld b, $17
    ld a, [$B66C]
    jr z, jr_017_6F9E

    ld [$4645], sp
    nop
    jr z, jr_017_6FA4

    db $10
    rla
    ld de, $0970
    rlca
    rla
    ld de, $B66D
    jr z, jr_017_6FB0

    db $10
    ld b, l

jr_017_7012:
    ld b, [hl]
    nop
    jr z, jr_017_6FB6

    ld [$2317], sp
    ld [hl], b
    add hl, bc
    ld b, $17
    ld a, [$B66C]
    jr z, jr_017_6FC2

    ld [$4545], sp
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld bc, $3617
    ld [hl], b
    add hl, bc
    dec bc
    rla
    sbc e
    ld l, l
    or [hl]
    add hl, hl
    and b
    ld bc, $4645
    nop
    add hl, hl
    and b
    ld [bc], a
    rla
    ld c, b
    ld [hl], b
    add hl, bc
    ld [de], a
    rla
    ret


    ld l, l
    or [hl]
    add hl, hl
    and b
    ld [bc], a
    ld b, l
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld bc, $5B17
    ld [hl], b
    add hl, bc
    dec bc
    rla
    add h
    ld l, l
    or [hl]
    add hl, hl
    and b
    ld bc, $2245
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_017_70D0

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_017_70D9

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    rla
    or a
    ld [hl], b
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_017_7100

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_710A

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_017_70F8

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
    ld a, [hl-]
    and b
    inc b
    dec b
    nop
    rla
    di
    ld [hl], b
    and c
    xor l
    add h
    and c
    ld bc, $A132
    ld c, b
    rla
    or l
    ld e, h
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_017_7130

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_713A

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_713E

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_017_7101

    dec [hl]

jr_017_70D0:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_017_70D9:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld a, [hl-]
    and b
    inc b
    dec b
    nop
    rla
    di
    ld [hl], b
    and c
    xor l
    add h
    and c
    ld bc, $A132
    ld c, b
    rla
    or l
    ld e, h
    ld b, [hl]
    inc de
    ld bc, $A132

jr_017_70F8:
    ld bc, $A184
    rla
    ld [hl], d
    ld [hl], c
    sbc a
    add h

jr_017_7100:
    and c

jr_017_7101:
    ld b, [hl]
    rrca
    ld bc, $A184
    dec b
    ld bc, $3817

jr_017_710A:
    ld [hl], c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_017_7174

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
    jr nz, jr_017_7171

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_718D

    ld [hl], e
    cp $FC
    jr nz, jr_017_718A

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_017_7130:
    ld l, $FE
    db $FD
    and c
    ld c, b
    rla
    or l
    ld e, h
    and [hl]
    ld d, h

jr_017_713A:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_017_713E:
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
    jr nz, jr_017_719E

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_017_71CC

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
    rla
    or l

jr_017_7171:
    ld e, h
    sbc a
    add h

jr_017_7174:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_017_71E1

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_017_71F0

    ld h, c
    halt

jr_017_718A:
    ld h, l
    jr nz, jr_017_7200

jr_017_718D:
    ld h, l
    ld [hl], h
    jr nz, jr_017_71F2

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_017_71DF

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_017_71EF

    ld h, e
    ld l, a

jr_017_719E:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_017_7217

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
    jr nz, jr_017_7232

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_017_7222

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_017_71C8:
    ld l, $FE
    db $FD
    and c

jr_017_71CC:
    xor l
    add h
    and c
    ld bc, $A132
    and c
    ld c, b
    rla
    or l
    ld e, h

jr_017_71D7:
    or e
    ld [hl-], a
    and c
    ld bc, $2BB5
    and b
    ei

jr_017_71DF:
    sub a
    or e

jr_017_71E1:
    ld sp, $00C7
    or e
    inc sp
    rst $00

jr_017_71E7:
    nop
    ld l, c
    ld e, b
    ld a, b

jr_017_71EB:
    inc d
    ld l, b
    adc l
    ld c, a

jr_017_71EF:
    inc de

jr_017_71F0:
    ld l, h
    db $DD

jr_017_71F2:
    ld b, d

jr_017_71F3:
    ld h, a
    ld h, $42
    dec b
    nop
    inc [hl]
    ld h, e
    rlca
    rlca
    ld h, l
    pop de
    nop
    inc d

jr_017_7200:
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    inc d
    inc d
    db $FC
    db $D3
    nop
    rla
    ld [hl], e
    ld l, c
    add hl, de
    add sp, $46
    dec bc
    nop
    add [hl]

jr_017_7217:
    sbc b
    or e
    daa
    and d
    dec b
    or e
    inc sp
    and c
    nop
    or e
    daa

jr_017_7222:
    and c
    nop
    or e
    jr z, jr_017_71C8

    nop
    or l
    ld a, [hl+]
    and b
    cp $B5
    ld a, [hl+]
    and b
    db $FD
    or [hl]
    ld a, [hl+]

jr_017_7232:
    and b
    inc b
    or l
    jr z, jr_017_71D7

    cp $B5
    jr z, @-$5E

    db $FD
    or l
    jr z, jr_017_71DF

    ei
    or l
    jr z, @-$5E

    rst $30
    or l
    jr z, jr_017_71E7

    rst $28
    or l
    jr z, jr_017_71EB

    rst $18
    or l
    jr z, jr_017_71EF

    cp a
    or l
    jr z, jr_017_71F3

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
    or l
    add hl, hl
    and b
    rst $28
    or l
    ld a, [hl+]
    and b
    rst $18
    or l
    ld a, [hl+]
    and b
    cp a
    or l
    ld a, [hl+]
    and b
    ld a, a
    or l
    dec hl
    and b
    cp $B3
    inc a
    and c
    nop
    or e
    dec a
    and c
    nop
    sbc e
    rla
    add l
    ld [hl], d
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    or [hl]
    ld a, [hl+]
    and b
    inc b
    inc c
    nop
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_017_72EA

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_017_72E6

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    rla
    ret nc

    ld h, l
    rla
    db $D3
    ld e, h
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
    jr nz, jr_017_7322

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_017_732B

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    rla
    add hl, bc
    ld [hl], e
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_017_7352

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_735C

    ld l, a
    ld [hl], l
    rst $38

jr_017_72E6:
    db $FC
    jr nz, jr_017_734A

    ld [hl], h

jr_017_72EA:
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
    ld a, [hl-]
    and b
    ld [$0005], sp
    rla
    ld b, l
    ld [hl], e
    and c
    xor l
    add l
    and c
    ld bc, $A132
    ld c, b
    rla
    ret nz

    ld e, h
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_017_7382

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_017_738C

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_7390

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_017_7353

    dec [hl]

jr_017_7322:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_017_732B:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld a, [hl-]
    and b
    ld [$0005], sp
    rla
    ld b, l
    ld [hl], e
    and c
    xor l
    add l
    and c
    ld bc, $A132
    ld c, b
    rla
    ret nz

    ld e, h
    ld b, [hl]
    inc de
    ld bc, $A132

jr_017_734A:
    ld bc, $A185
    rla
    call nz, $9F73
    add l

jr_017_7352:
    and c

jr_017_7353:
    ld b, [hl]
    rrca
    ld bc, $A185
    dec b
    ld bc, $8A17

jr_017_735C:
    ld [hl], e
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_017_73C6

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
    jr nz, jr_017_73C3

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_017_73DF

    ld [hl], e
    cp $FC
    jr nz, jr_017_73DC

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_017_7382:
    ld l, $FE
    db $FD
    and c
    ld c, b
    rla
    ret nz

    ld e, h
    and [hl]
    ld d, h

jr_017_738C:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_017_7390:
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
    jr nz, jr_017_73F0

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_017_741E

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
    rla
    ret nz

jr_017_73C3:
    ld e, h
    sbc a
    add l

jr_017_73C6:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h

jr_017_73CC:
    ld l, h
    jr nz, jr_017_7433

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_017_7442

    ld h, c
    halt

jr_017_73DC:
    ld h, l
    jr nz, jr_017_7452

jr_017_73DF:
    ld h, l
    ld [hl], h
    jr nz, jr_017_7444

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_017_7441

    ld h, e
    ld l, a

jr_017_73F0:
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
    jr nz, jr_017_745A

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$79

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

jr_017_741E:
    xor l
    add l
    and c
    ld bc, $A132
    and c
    ld c, b
    rla
    ret nz

    ld e, h
    xor d
    jr z, jr_017_73CC

    ld bc, $DC19
    ld b, [hl]
    cp $F7
    pop de

jr_017_7433:
    ld e, $09
    ld e, l

jr_017_7436:
    rla
    call z, $8245
    jp nc, $03D7

    ld bc, $D7A0
    daa

jr_017_7441:
    ld [bc], a

jr_017_7442:
    ld e, l
    add hl, de

jr_017_7444:
    rst $20
    ld b, [hl]
    ld c, b
    add hl, de
    and a
    ld b, [hl]
    xor d
    jr z, @-$5E

    ld [bc], a
    add hl, de
    call c, $FE46

jr_017_7452:
    ld c, c
    jp nc, $091E

    ld e, l
    add hl, de
    and a
    ld b, [hl]

jr_017_745A:
    ld h, l
    ld [bc], a
    rlca

jr_017_745D:
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    cp a
    ld e, l
    ld e, l
    rla
    call z, Call_017_6B45
    xor h
    ld a, a
    inc l
    xor l
    ld h, b
    cpl
    add e
    nop
    ret nc

    ld [$2E07], sp
    db $D3
    db $10
    ld c, $5D
    add hl, de
    rst $20
    ld b, [hl]
    rlca
    nop
    inc [hl]
    ld h, e
    ld c, b
    add hl, de
    call c, $A646
    ld b, [hl]
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_017_74F6

    ld [hl], h
    ld hl, $FDFE
    and c
    ld b, l
    xor d
    jr z, jr_017_7436

    inc b
    add hl, de
    call c, $FE46
    inc h
    pop de
    ld e, $09
    ld e, l
    add hl, de
    and a
    ld b, [hl]
    ld h, l
    ld [bc], a
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_017_74AA:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    add hl, bc

jr_017_74AF:
    inc l
    xor $D1
    set 7, e
    ld c, b
    add hl, de
    call c, $4646
    rrca
    nop
    jr z, jr_017_745D

    ld [$0005], sp
    rla
    ld hl, sp+$74
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld b, $2D
    ld e, c
    pop de
    ld b, h
    rst $38
    or l
    jr z, @-$5E

    rst $30
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld b, $29
    ld d, l
    pop de
    jp z, $46FA

jr_017_74E6:
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [$BE2E], sp
    pop de
    nop
    jr z, @+$4A

    add hl, de

jr_017_74F6:
    call c, $4646
    nop
    dec hl
    and b
    inc b
    add hl, de

jr_017_74FE:
    rst $20
    ld b, [hl]
    add h
    ld b, $2D
    ld e, c
    pop de
    ld b, h
    cp $B6
    jr z, jr_017_74AA

    ld [$0046], sp
    jr z, jr_017_74AF

    db $10
    rla
    ld l, $75
    ld b, [hl]
    nop
    jr z, @-$5E

    jr nz, jr_017_7530

    ld l, $75
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld b, $29
    ld d, l
    pop de
    nop
    jr z, jr_017_7573

    add hl, de
    call c, $4646
    nop

jr_017_7530:
    dec hl
    and b
    inc b

jr_017_7533:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [$BE2E], sp
    pop de
    jp z, $48FA

    add hl, de
    call c, $4646
    rrca
    nop

jr_017_7544:
    jr z, jr_017_74E6

    db $10
    dec b
    nop
    rla
    add c
    ld [hl], l
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [$BF2F], sp
    pop de
    ld b, l
    rst $38
    or l
    jr z, jr_017_74FE

    rst $28
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld b, $2A
    ld d, [hl]
    pop de
    jp z, $46FA

    nop
    dec hl
    and b
    inc b

jr_017_7573:
    add hl, de
    rst $20

jr_017_7575:
    ld b, [hl]
    add h
    add hl, bc
    add hl, hl
    db $EB
    pop de
    nop
    jr z, jr_017_75C6

    add hl, de
    call c, $4646
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [$BF2F], sp

jr_017_758D:
    pop de
    ld b, l
    cp $B6
    jr z, jr_017_7533

    db $10
    ld b, [hl]
    rrca
    nop
    jr z, @-$5E

    ld [$0005], sp
    rla
    cp l
    ld [hl], l
    ld b, [hl]
    rrca
    nop
    jr z, jr_017_7544

    jr nz, jr_017_75AB

    nop
    rla
    cp l
    ld [hl], l
    ld b, [hl]

jr_017_75AB:
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld b, $2A
    ld d, [hl]
    pop de
    nop
    jr z, jr_017_7602

    add hl, de
    call c, $4646
    nop
    dec hl
    and b
    inc b

jr_017_75C2:
    add hl, de
    rst $20
    ld b, [hl]
    add h

jr_017_75C6:
    add hl, bc
    add hl, hl

jr_017_75C8:
    db $EB
    pop de
    jp z, $48FA

    add hl, de
    call c, $4646

jr_017_75D1:
    rrca

jr_017_75D2:
    nop
    jr z, jr_017_7575

    jr nz, jr_017_75DC

    nop
    rla
    db $10
    halt
    ld b, [hl]

jr_017_75DC:
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    add hl, bc
    jr z, jr_017_75D1

    pop de
    ld b, [hl]
    rst $38
    or l
    jr z, jr_017_758D

    rst $18
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld b, $2B
    ld d, a
    pop de
    jp z, $46FA

    nop

jr_017_75FF:
    dec hl
    and b
    inc b

jr_017_7602:
    add hl, de
    rst $20
    ld b, [hl]
    add h

jr_017_7606:
    rlca
    dec l
    adc e
    pop de
    nop
    jr z, jr_017_7655

    add hl, de
    call c, $4646
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    add hl, bc
    jr z, jr_017_7606

    pop de
    ld b, [hl]
    cp $B6
    jr z, jr_017_75C2

    jr nz, jr_017_766A

    rrca
    nop
    jr z, jr_017_75C8

    ld [$0005], sp
    rla
    ld c, c
    halt
    ld b, [hl]
    nop
    jr z, jr_017_75D2

    db $10
    rla
    ld c, c
    halt
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld b, $2B
    ld d, a

jr_017_7642:
    pop de
    nop
    jr z, jr_017_768E

    add hl, de
    call c, $4646
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    rlca
    dec l
    adc e

jr_017_7655:
    pop de
    jp z, $48FA

    add hl, de
    call c, $AA46
    jr z, jr_017_75FF

    ld b, b
    add hl, de
    call c, $FE46
    add $D2
    ld e, $09
    ld c, b
    rla

jr_017_766A:
    sbc b
    halt
    xor d
    jr z, @-$5E

    add b
    add hl, de
    call c, $FE46
    ldh a, [$D3]
    ld e, $09
    ld c, b
    rla
    sbc b
    halt
    xor d
    add hl, hl
    and b
    ld bc, $DC19
    ld b, [hl]
    cp $EB
    call nc, $091E
    ld c, b
    rla
    sbc b
    halt
    xor d
    add hl, hl

jr_017_768E:
    and b
    ld [bc], a
    add hl, de
    call c, $FE46
    ld d, c
    push de
    ld e, $09
    ld e, l
    add hl, de
    sub b
    ld b, [hl]
    ld h, l
    ld [bc], a
    xor l
    jr z, jr_017_7642

    dec bc
    ld bc, $A128
    dec b
    ld bc, $0F46
    ld bc, $A128
    dec b
    inc b
    rla
    or l
    halt
    ld c, b
    add hl, de
    call c, $8246
    jp nz, $01D4

    inc bc
    pop bc
    call nc, $1118
    ld c, b
    add hl, de
    and a
    ld b, [hl]
    xor d
    jr z, @-$5E

    ld bc, $DC19
    ld b, [hl]
    cp $D3
    sub $1E
    add hl, bc
    ld e, l
    add hl, de
    and a
    ld b, [hl]
    ld h, l
    ld [bc], a
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    rlca
    dec l
    adc e
    pop de
    nop
    jr z, jr_017_772A

    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [$BE2E], sp
    pop de
    nop
    jr z, jr_017_7739

    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    add hl, bc
    add hl, hl
    db $EB
    pop de
    nop
    jr z, jr_017_774A

    add hl, de
    call c, $4646
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc h
    ld [$D710], sp
    ld [$46FE], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc h
    ld a, [bc]
    ld [de], a
    rst $10
    ld c, l
    rst $38
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20

jr_017_772A:
    ld b, [hl]
    add h
    inc h
    inc c
    inc d
    rst $10
    ld c, [hl]
    rst $38
    or e
    inc a
    and c
    ld bc, $1748
    and h

jr_017_7739:
    ld [hl], a
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc h
    ld a, [bc]
    ld [de], a
    rst $10
    ld [$46FE], sp

jr_017_774A:
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc h
    inc c
    inc d
    rst $10
    ld c, [hl]
    rst $38
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc h
    ld [$D710], sp
    ld c, h
    rst $38
    or e
    inc a
    and c
    ld [bc], a
    ld c, b
    rla
    and h
    ld [hl], a
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc h
    inc c
    inc d
    rst $10
    ld [$46FE], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc h
    ld [$D710], sp
    ld c, h
    rst $38
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc h
    ld a, [bc]
    ld [de], a
    rst $10
    ld c, l
    rst $38
    or e
    inc a
    and c
    inc bc
    ld c, b
    rla
    and h
    ld [hl], a
    xor l
    dec a
    and c
    dec bc
    ld bc, $A13D
    dec b

jr_017_77AC:
    ld bc, $0F46
    ld bc, $A13D
    dec b

jr_017_77B3:
    add hl, bc
    rla
    nop
    ld a, b
    xor l
    inc a
    and c
    dec bc
    ld bc, $A13C
    ld bc, $A13D
    ld c, [hl]
    ld bc, $A13C
    rla
    ld bc, $0800
    ld a, b

jr_017_77CA:
    rla
    ld [bc], a
    nop
    ld a, $78
    rla
    inc bc
    nop
    ld [hl], h
    ld a, b
    rla
    inc b
    nop
    xor d
    ld a, b
    rla
    dec b
    nop
    ldh [$78], a
    rla
    ld b, $00
    ld d, $79
    rla
    rlca
    nop
    ld c, h
    ld a, c
    rla

jr_017_77E9:
    ld [$8200], sp
    ld a, c
    rla
    add hl, bc
    nop
    cp b
    ld a, c
    rst $38
    xor l
    inc a
    and c
    inc c
    ld bc, $A13C
    dec b
    add hl, bc
    ld c, b
    rla
    pop bc
    ld [hl], a

jr_017_7800:
    or e
    dec a
    and c
    nop
    ld c, b
    rla
    or a
    ld [hl], a
    ld b, [hl]
    nop
    jr z, jr_017_77AC

    ld [bc], a
    rla
    daa
    ld a, b
    or [hl]
    jr z, jr_017_77B3

    ld [bc], a
    ld b, [hl]
    nop
    dec hl
    and b

jr_017_7818:
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc e
    ld [bc], a

jr_017_781F:
    ld a, d
    push de
    nop
    jr z, jr_017_786C

    add hl, de
    call c, $B546
    jr z, jr_017_77CA

    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc e
    ld [bc], a

jr_017_7836:
    ld a, d
    push de
    jp z, $48FA

    add hl, de
    call c, $4646
    nop
    jr z, @-$5E

    inc b
    rla
    ld e, l
    ld a, b
    or [hl]
    jr z, jr_017_77E9

    inc b
    ld b, [hl]
    nop
    dec hl
    and b

jr_017_784E:
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc e
    inc bc

jr_017_7855:
    ld a, e
    push de
    nop
    jr z, jr_017_78A2

    add hl, de
    call c, $B546
    jr z, jr_017_7800

    ei
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc e
    inc bc

jr_017_786C:
    ld a, e
    push de
    jp z, $48FA

    add hl, de
    call c, $4646
    nop
    jr z, jr_017_7818

    ld [$9317], sp
    ld a, b
    or [hl]
    jr z, jr_017_781F

    ld [$0046], sp
    dec hl
    and b

jr_017_7884:
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc e
    inc b

jr_017_788B:
    ld a, h
    push de
    nop
    jr z, jr_017_78D8

    add hl, de
    call c, $B546
    jr z, jr_017_7836

    rst $30
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc e
    inc b

jr_017_78A2:
    ld a, h
    push de
    jp z, $48FA

    add hl, de
    call c, $4646
    nop
    jr z, jr_017_784E

    db $10
    rla
    ret


    ld a, b
    or [hl]
    jr z, jr_017_7855

    db $10
    ld b, [hl]
    nop
    dec hl
    and b

jr_017_78BA:
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec e
    ld [bc], a

jr_017_78C1:
    xor h
    push de
    nop
    jr z, jr_017_790E

    add hl, de
    call c, $B546
    jr z, jr_017_786C

    rst $28
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec e
    ld [bc], a

jr_017_78D8:
    xor h
    push de
    jp z, $48FA

    add hl, de
    call c, $4646
    nop
    jr z, jr_017_7884

    jr nz, jr_017_78FD

    rst $38
    ld a, b
    or [hl]
    jr z, jr_017_788B

    jr nz, jr_017_7933

    nop
    dec hl
    and b

jr_017_78F0:
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec e
    inc bc

jr_017_78F7:
    xor l
    push de
    nop
    jr z, jr_017_7944

    add hl, de

jr_017_78FD:
    call c, $B546
    jr z, jr_017_78A2

    rst $18
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec e
    inc bc

jr_017_790E:
    xor l
    push de
    jp z, $48FA

    add hl, de
    call c, $4646
    nop
    jr z, jr_017_78BA

    ld b, b
    rla
    dec [hl]
    ld a, c
    or [hl]
    jr z, jr_017_78C1

    ld b, b
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec e
    inc b
    xor [hl]
    push de
    nop
    jr z, jr_017_797A

    add hl, de

jr_017_7933:
    call c, $B546
    jr z, jr_017_78D8

    cp a
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec e
    inc b

jr_017_7944:
    xor [hl]
    push de
    jp z, $48FA

    add hl, de
    call c, $4646
    nop
    jr z, jr_017_78F0

    add b
    rla
    ld l, e
    ld a, c
    or [hl]
    jr z, jr_017_78F7

    add b
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld e, $02
    sbc $D5
    nop
    jr z, jr_017_79B0

    add hl, de
    call c, $B546
    jr z, jr_017_790E

    ld a, a
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld e, $02

jr_017_797A:
    sbc $D5
    jp z, $48FA

    add hl, de
    call c, $4646
    nop
    add hl, hl
    and b
    ld bc, $A117
    ld a, c
    or [hl]
    add hl, hl
    and b
    ld bc, $0046
    dec hl

jr_017_7991:
    and b
    inc b
    add hl, de
    rst $20

jr_017_7995:
    ld b, [hl]
    add h
    ld e, $03

jr_017_7999:
    rst $18
    push de
    nop
    jr z, jr_017_79E6

    add hl, de
    call c, $B546
    add hl, hl
    and b
    cp $46
    nop
    dec hl
    and b

jr_017_79A9:
    inc b
    add hl, de
    rst $20
    ld b, [hl]

jr_017_79AD:
    add h
    ld e, $03

jr_017_79B0:
    rst $18
    push de
    jp z, $48FA

    add hl, de
    call c, $4646
    nop
    add hl, hl
    and b
    ld [bc], a
    rla
    rst $10
    ld a, c
    or [hl]
    add hl, hl
    and b
    ld [bc], a
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld e, $04
    ldh [$D5], a
    nop
    jr z, jr_017_7A1C

    add hl, de
    call c, $B546
    add hl, hl
    and b
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld e, $04

jr_017_79E6:
    ldh [$D5], a
    jp z, $48FA

    add hl, de
    call c, $B546
    jr z, jr_017_7991

    cp $B5
    jr z, jr_017_7995

    db $FD
    or l
    jr z, jr_017_7999

    ei
    or l
    jr z, @-$5E

    rst $30
    or l
    jr z, @-$5E

    rst $28
    or l
    jr z, @-$5E

    rst $18
    or l
    jr z, jr_017_79A9

    cp a
    or l
    jr z, jr_017_79AD

    ld a, a
    or l
    add hl, hl
    and b
    cp $B5
    add hl, hl
    and b
    db $FD
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A

jr_017_7A1C:
    inc l
    ld a, [hl+]
    ld h, b
    ret c

    nop
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
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
