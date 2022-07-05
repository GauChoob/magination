; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $011", ROMX[$4000], BANK[$11]

    nop
    nop
    dec b
    ld b, $00
    ld hl, sp+$04
    ld b, $F8
    nop
    inc bc
    ld bc, $F8F8
    ld [bc], a
    ld bc, $00F0
    ld bc, $F000
    ld hl, sp+$00
    nop
    add b
    nop
    ld hl, sp+$05
    ld h, $00
    nop
    inc b
    ld h, $F8
    ld hl, sp+$03
    ld hl, $00F8
    ld [bc], a
    ld hl, $F8F0
    ld bc, $F020
    nop
    nop
    db $20, $80
    nop
    nop
    dec bc
    ld b, $00
    ld hl, sp+$0A
    ld b, $F8
    nop
    add hl, bc
    ld bc, $F8F8
    ld [$F001], sp
    nop
    rlca
    nop
    ldh a, [$F8]
    ld b, $00
    add b
    nop
    ld hl, sp+$0B
    ld h, $00

jr_011_4050:
    nop
    ld a, [bc]
    ld h, $F8
    ld hl, sp+$09
    ld hl, $00F8
    ld [$F021], sp
    ld hl, sp+$07
    jr nz, jr_011_4050

    nop
    ld b, $20
    add b
    pop af
    ld hl, sp+$10
    jr nz, @-$0D

    nop
    stop
    nop
    nop
    rrca
    ld b, $00
    ld hl, sp+$0E
    ld b, $F8
    nop
    dec c
    ld bc, $F8F8
    inc c
    ld bc, $0080
    nop
    ld [de], a
    ld b, $00
    ld sp, hl
    ld [de], a
    ld h, $F8
    nop
    ld de, $F801
    ld hl, sp+$11

jr_011_408C:
    ld hl, $00F0
    stop
    ldh a, [$F8]
    db $10
    jr nz, @-$7E

    pop af
    ld hl, sp+$10
    jr nz, jr_011_408C

    nop
    stop
    nop
    ld hl, sp+$0F
    ld h, $00
    nop
    ld c, $26
    ld hl, sp-$08
    dec c
    ld hl, $00F8
    inc c
    ld hl, $F180
    ld hl, sp+$17
    jr nz, @-$0D

    nop
    rla
    nop
    nop
    ld bc, $0616
    nop
    ld sp, hl
    dec d
    ld b, $F8
    nop
    inc d
    ld bc, $F8F8
    inc de
    ld bc, $0080
    ld sp, hl
    add hl, de
    ld h, $00

jr_011_40CD:
    nop
    add hl, de
    ld b, $F8
    ld hl, sp+$18
    ld hl, $00F8
    jr @+$03

    ldh a, [$F8]
    rla
    jr nz, jr_011_40CD

    nop
    rla
    nop
    add b
    pop af
    ld hl, sp+$17
    jr nz, @-$0D

    nop
    rla
    nop
    nop
    ld hl, sp+$16
    ld h, $00
    nop
    dec d
    ld h, $F8
    ld hl, sp+$14
    ld hl, $00F8
    inc de
    ld hl, $F180
    nop
    rra
    nop
    pop af
    ld hl, sp+$1E
    nop
    nop
    nop
    dec e
    ld b, $00
    ld hl, sp+$1C
    ld b, $F8
    nop
    dec de
    ld bc, $F8F8
    ld a, [de]
    ld bc, $0080
    nop
    inc hl
    ld b, $00
    ld hl, sp+$22
    ld b, $F8
    nop
    ld hl, $F801
    ld hl, sp+$20
    ld bc, $00F0
    rra
    nop
    ldh a, [$F8]
    ld e, $00
    add b
    nop
    nop
    daa
    ld b, $00
    ld hl, sp+$26
    ld b, $F8
    nop
    dec h
    ld bc, $F8F8
    inc h

jr_011_413B:
    ld bc, $00F1
    rra
    nop
    pop af
    ld hl, sp+$1E
    nop
    add b
    pop af
    ld hl, sp+$1F
    jr nz, jr_011_413B

    nop
    ld e, $20
    nop
    ld hl, sp+$1D
    ld h, $00
    nop
    inc e
    ld h, $F8
    ld hl, sp+$1B
    ld hl, $00F8
    ld a, [de]
    ld hl, $0080
    ld hl, sp+$23
    ld h, $00

jr_011_4163:
    nop
    ld [hl+], a
    ld h, $F8
    ld hl, sp+$21
    ld hl, $00F8
    jr nz, jr_011_418F

    ldh a, [$F8]
    rra
    jr nz, jr_011_4163

    nop
    ld e, $20
    add b
    nop
    ld hl, sp+$27
    ld h, $00
    nop

jr_011_417D:
    ld h, $26
    ld hl, sp-$08
    dec h
    ld hl, $00F8
    inc h
    ld hl, $F8F1
    rra
    jr nz, jr_011_417D

    nop
    ld e, $20

jr_011_418F:
    add b
    ld d, b
    ld [$0008], sp
    rst $38
    xor a
    ld b, b
    ret z

    ld b, b
    pop hl
    ld b, b
    ret z

    ld b, b
    ld c, c
    sub b
    ld b, c
    ld d, b
    ld [$0008], sp
    ld bc, $4064
    ld a, l
    ld b, b
    sub [hl]
    ld b, b
    ld a, l
    ld b, b
    ld c, c
    and b
    ld b, c
    ld d, b
    ld [$FF08], sp
    nop
    ld b, l
    ld b, c
    ld e, [hl]
    ld b, c
    ld [hl], a
    ld b, c
    ld e, [hl]
    ld b, c
    ld c, c
    or b
    ld b, c
    ld d, b
    ld [$0108], sp
    nop
    ld a, [$1340]
    ld b, c
    inc l
    ld b, c
    inc de
    ld b, c
    ld c, c
    ret nz

    ld b, c
    ld d, b
    ld [$0008], sp
    cp $AF
    ld b, b
    ret z

    ld b, b
    pop hl
    ld b, b
    ret z

    ld b, b
    ld c, c
    ret nc

    ld b, c
    ld d, b
    ld [$0008], sp
    ld [bc], a
    ld h, h
    ld b, b
    ld a, l
    ld b, b
    sub [hl]
    ld b, b
    ld a, l
    ld b, b
    ld c, c
    ldh [rSTAT], a
    ld d, b
    ld [$FE08], sp
    nop
    ld b, l
    ld b, c
    ld e, [hl]
    ld b, c
    ld [hl], a
    ld b, c
    ld e, [hl]
    ld b, c
    ld c, c
    ldh a, [rSTAT]
    ld d, b
    ld [$0208], sp
    nop
    ld a, [$1340]
    ld b, c
    inc l
    ld b, c
    inc de
    ld b, c
    ld c, c
    nop
    ld b, d
    ld c, a
    rst $38
    nop
    nop
    ret z

    ld b, b
    nop
    ld c, c
    db $10
    ld b, d
    ld c, a
    rst $38
    nop
    nop
    ld a, l
    ld b, b
    nop
    ld c, c
    ld a, [de]
    ld b, d
    ld c, a
    rst $38
    nop
    nop
    ld e, [hl]
    ld b, c
    nop
    ld c, c
    inc h
    ld b, d
    ld c, a
    rst $38
    nop
    nop
    inc de
    ld b, c
    nop
    ld c, c
    ld l, $42
    ld c, a
    rst $38
    nop
    nop
    ld c, e
    ld b, b
    nop
    ld c, c
    jr c, @+$44

    ld c, a
    rst $38
    nop

jr_011_4245:
    nop
    ld [hl-], a
    ld b, b
    nop
    ld c, c
    ld b, d
    ld b, d
    ld c, a
    rst $38
    nop
    nop
    add hl, de
    ld b, b
    nop
    ld c, c
    ld c, h
    ld b, d
    ld c, a
    rst $38
    nop
    nop
    nop
    ld b, b
    nop
    ld c, c
    ld d, [hl]
    ld b, d
    ld c, [hl]
    inc bc
    ld de, $0000
    ld [hl], a
    ld b, d
    ld de, $0003
    ld a, [hl]
    ld b, d
    ld de, $0002
    adc h
    ld b, d
    ld de, $0001
    add l
    ld b, d
    rst $38
    inc d
    ld de, $4210
    ld h, l
    ld bc, $1412
    ld de, $421A
    ld h, l
    ld bc, $1412
    ld de, $4224
    ld h, l
    ld bc, $1412
    ld de, $422E
    ld h, l
    ld bc, $0012
    nop
    dec b
    inc b
    nop
    ld hl, sp+$04
    inc b
    ld hl, sp+$00
    inc bc
    ld bc, $F8F8
    ld [bc], a
    ld bc, $00F0
    ld bc, $F000
    ld hl, sp+$00
    nop
    add b
    nop
    ld hl, sp+$05
    inc h
    nop
    nop
    inc b
    inc h
    ld hl, sp-$08
    inc bc
    ld hl, $00F8
    ld [bc], a
    ld hl, $F8F0
    ld bc, $F020
    nop
    nop
    jr nz, jr_011_4245

    nop
    nop
    dec bc
    inc b
    nop
    ld hl, sp+$0A
    inc b
    ld hl, sp+$00
    add hl, bc
    ld bc, $F8F8
    ld [$F001], sp
    nop
    rlca
    nop
    ldh a, [$F8]
    ld b, $00
    add b
    nop
    ld hl, sp+$0B
    inc h
    nop

jr_011_42E3:
    nop
    ld a, [bc]
    inc h
    ld hl, sp-$08
    add hl, bc
    ld hl, $00F8
    ld [$F021], sp
    ld hl, sp+$07
    jr nz, jr_011_42E3

    nop
    ld b, $20
    add b
    nop
    nop
    rrca
    inc b
    nop
    ld hl, sp+$0E
    inc b
    pop af
    ld hl, sp+$10
    jr nz, @-$0D

    nop
    stop
    ld hl, sp+$00
    dec c
    ld bc, $F8F8
    inc c
    ld bc, $0080
    ld sp, hl
    ld [de], a
    inc h
    ld hl, sp-$08
    ld de, $F021
    nop
    stop
    nop
    nop
    ld [de], a
    inc b
    ld hl, sp+$00
    ld de, $F001
    ld hl, sp+$10

jr_011_4327:
    jr nz, @-$7E

    nop
    ld hl, sp+$0F
    inc h
    nop
    nop
    ld c, $24
    pop af
    ld hl, sp+$10
    jr nz, jr_011_4327

    nop
    stop
    ld hl, sp-$08
    dec c
    ld hl, $00F8
    inc c
    ld hl, $0080
    ld bc, $0416
    nop
    ld sp, hl

jr_011_4348:
    dec d
    inc b
    ld hl, sp+$00
    inc d
    ld bc, $F8F8
    inc de
    ld bc, $F8F1
    db $10
    jr nz, jr_011_4348

    nop
    stop
    add b
    nop
    nop
    add hl, de
    inc b
    ld hl, sp-$08
    jr @+$23

    nop
    ld sp, hl
    add hl, de
    inc h
    ld hl, sp+$00
    jr @+$03

    ldh a, [$F8]
    db $10
    jr nz, @-$0E

    nop

jr_011_4371:
    stop
    add b
    nop
    ld hl, sp+$16
    inc h
    nop
    nop

jr_011_437A:
    dec d
    inc h
    ld hl, sp-$08
    inc d
    ld hl, $00F8
    inc de
    ld hl, $F8F1
    db $10
    jr nz, jr_011_437A

    nop

jr_011_438A:
    stop
    add b
    nop
    nop
    rra
    inc b
    nop
    ld hl, sp+$1E
    inc b
    ld hl, sp+$00
    dec e
    ld bc, $F8F8
    inc e
    ld bc, $00F1
    dec de
    nop
    pop af
    ld hl, sp+$1A
    nop
    add b
    nop
    nop
    inc hl
    inc b
    nop
    ld hl, sp+$22
    inc b
    ld hl, sp+$00
    ld hl, $F801
    ld hl, sp+$20
    ld bc, $00F0
    dec de
    nop
    ldh a, [$F8]
    ld a, [de]
    nop
    add b
    nop
    nop
    daa
    inc b
    nop
    ld hl, sp+$26
    inc b
    ld hl, sp+$00
    dec h
    ld bc, $F8F8
    inc h
    ld bc, $00F1
    dec de
    nop
    pop af
    ld hl, sp+$1A
    nop
    add b
    nop
    ld hl, sp+$1F
    inc h
    nop
    nop

jr_011_43DE:
    ld e, $24
    ld hl, sp-$08
    dec e
    ld hl, $00F8
    inc e
    ld hl, $F8F1
    dec de
    jr nz, jr_011_43DE

    nop
    ld a, [de]
    jr nz, jr_011_4371

    nop
    ld hl, sp+$23
    inc h
    nop

jr_011_43F6:
    nop
    ld [hl+], a
    inc h
    ld hl, sp-$08
    ld hl, $F821
    nop
    jr nz, @+$23

    ldh a, [$F8]
    dec de
    jr nz, jr_011_43F6

    nop
    ld a, [de]
    jr nz, jr_011_438A

    nop
    ld hl, sp+$27
    inc h
    nop
    nop

jr_011_4410:
    ld h, $24
    ld hl, sp-$08
    dec h
    ld hl, $00F8
    inc h
    ld hl, $F8F1
    dec de
    jr nz, jr_011_4410

    nop
    ld a, [de]
    jr nz, @-$7E

    ld d, b
    ld [$0008], sp
    rst $38
    ld b, d
    ld b, e
    ld e, e
    ld b, e
    ld [hl], h
    ld b, e
    ld e, e
    ld b, e
    ld c, c
    inc hl
    ld b, h
    ld d, b
    ld [$0008], sp
    ld bc, $42F7
    db $10
    ld b, e
    add hl, hl
    ld b, e
    db $10
    ld b, e
    ld c, c
    inc sp
    ld b, h
    ld d, b
    ld [$FF08], sp
    nop
    ret c

    ld b, e
    pop af
    ld b, e
    ld a, [bc]
    ld b, h
    pop af
    ld b, e
    ld c, c
    ld b, e
    ld b, h
    ld d, b
    ld [$0108], sp
    nop
    adc l
    ld b, e
    and [hl]
    ld b, e
    cp a
    ld b, e
    and [hl]
    ld b, e
    ld c, c
    ld d, e
    ld b, h
    ld d, b
    ld [$0008], sp
    cp $42
    ld b, e
    ld e, e
    ld b, e
    ld [hl], h
    ld b, e
    ld e, e
    ld b, e
    ld c, c
    ld h, e
    ld b, h
    ld d, b
    ld [$0008], sp
    ld [bc], a
    rst $30
    ld b, d
    db $10
    ld b, e
    add hl, hl
    ld b, e
    db $10
    ld b, e
    ld c, c
    ld [hl], e
    ld b, h
    ld d, b
    ld [$FE08], sp
    nop
    ret c

    ld b, e
    pop af
    ld b, e
    ld a, [bc]
    ld b, h
    pop af
    ld b, e
    ld c, c
    add e
    ld b, h
    ld d, b
    ld [$0208], sp
    nop
    adc l
    ld b, e
    and [hl]
    ld b, e
    cp a
    ld b, e
    and [hl]
    ld b, e
    ld c, c
    sub e
    ld b, h
    ld c, a
    rst $38
    nop
    nop
    ld e, e
    ld b, e
    nop
    ld c, c
    and e
    ld b, h
    ld c, a
    rst $38
    nop
    nop
    db $10
    ld b, e
    nop
    ld c, c
    xor l
    ld b, h
    ld c, a
    rst $38
    nop
    nop
    pop af
    ld b, e
    nop
    ld c, c
    or a
    ld b, h
    ld c, a
    rst $38
    nop
    nop
    and [hl]
    ld b, e
    nop
    ld c, c
    pop bc
    ld b, h
    ld c, a
    rst $38
    nop
    nop
    sbc $42
    nop
    ld c, c
    bit 0, h
    ld c, a
    rst $38
    nop
    nop
    push bc
    ld b, d
    nop
    ld c, c
    push de
    ld b, h
    ld c, a
    rst $38
    nop
    nop
    xor h
    ld b, d
    nop
    ld c, c
    rst $18
    ld b, h
    ld c, a
    rst $38
    nop
    nop
    sub e
    ld b, d
    nop
    ld c, c
    jp hl


    ld b, h
    ld c, [hl]
    inc bc
    ld de, $0000
    ld a, [bc]
    ld b, l
    ld de, $0003
    ld de, $1145
    ld [bc], a
    nop
    rra
    ld b, l
    ld de, $0001
    jr jr_011_454E

    rst $38
    inc d
    ld de, $44A3
    ld h, l
    ld bc, $1412
    ld de, $44AD
    ld h, l
    ld bc, $1412
    ld de, $44B7
    ld h, l
    ld bc, $1412
    ld de, $44C1
    ld h, l
    ld bc, $F812
    ld hl, sp+$00
    ld [bc], a
    ld hl, sp+$00
    ld bc, $0002
    ld hl, sp+$02
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    add b
    ld hl, sp-$08
    inc b
    ld [bc], a
    ld hl, sp+$00
    dec b
    ld [bc], a
    nop
    ld hl, sp+$06
    ld [bc], a
    nop
    nop
    rlca
    ld [bc], a
    add b
    ld hl, sp-$08
    ld [$F802], sp
    nop

jr_011_454E:
    add hl, bc
    ld [bc], a
    nop
    ld hl, sp+$0A
    ld [bc], a
    nop
    nop
    dec bc
    ld [bc], a
    add b
    ld c, a
    rst $38
    nop
    nop
    ld h, $45
    nop
    ld c, c
    ld e, c
    ld b, l
    ld d, b
    ld b, $02
    nop
    inc b
    ld h, $45
    scf
    ld b, l
    ld c, b
    ld b, l
    ld c, c
    ld h, e
    ld b, l
    ld c, a
    ld bc, $FE00
    scf
    ld b, l
    nop
    ld c, c
    ld [hl], c
    ld b, l
    ld c, a
    inc b
    rst $38
    ld bc, $4537
    inc b
    rst $38
    nop
    scf
    ld b, l
    inc b
    rst $38
    ld bc, $4537
    inc b
    rst $38
    nop
    scf
    ld b, l
    inc b
    rst $38
    ld bc, $4537
    inc b
    rst $38
    nop
    scf
    ld b, l
    inc b
    nop
    ld bc, $4537
    inc b
    nop
    nop
    scf
    ld b, l
    inc b
    nop
    ld bc, $4537
    inc b
    nop
    nop
    scf
    ld b, l
    inc b
    ld bc, $3701
    ld b, l
    inc b
    ld bc, $3700
    ld b, l
    inc b
    ld bc, $3701
    ld b, l
    inc b
    ld bc, $3700
    ld b, l
    inc b
    ld bc, $3701
    ld b, l
    inc b
    ld bc, $3700
    ld b, l
    inc b
    nop
    ld bc, $4537
    inc b
    nop
    nop
    scf
    ld b, l
    inc b
    nop
    ld bc, $4537
    inc b
    nop
    nop
    scf
    ld b, l
    nop
    ld c, c
    ld a, e
    ld b, l
    ld c, a
    ld bc, $0200
    scf
    ld b, l
    nop
    ld c, c
    db $E4
    ld b, l
    ld c, a
    rst $38
    ld bc, $4800
    ld b, l
    nop
    ld c, c
    ld d, d
    ld b, [hl]
    ld c, a
    rst $38
    rst $38
    nop
    ld c, b
    ld b, l
    nop
    ld c, c
    ld e, h
    ld b, [hl]
    ld c, a
    rst $38
    nop
    rst $38
    scf
    ld b, l
    nop
    ld c, c
    ld [hl], c
    ld b, l
    ld c, a
    rst $38
    nop
    ld bc, $4537
    nop
    ld c, c
    db $E4
    ld b, l
    ld c, a
    ld [bc], a
    ld [bc], a
    nop
    ld c, b
    ld b, l
    ld [bc], a
    ld bc, $4800
    ld b, l
    nop
    ld c, c
    ld d, $46
    ld c, a
    ld [bc], a
    cp $00
    ld c, b
    ld b, l
    ld [bc], a
    rst $38
    nop
    ld c, b
    ld b, l
    nop
    ld c, c
    dec h
    ld b, [hl]
    ld c, a
    ld [bc], a
    nop
    cp $37
    ld b, l
    ld [bc], a
    nop
    rst $38
    scf
    ld b, l
    nop
    ld c, c
    inc [hl]
    ld b, [hl]
    ld c, a
    ld [bc], a
    nop
    ld [bc], a
    scf
    ld b, l
    ld [bc], a
    nop
    ld bc, $4537
    nop
    ld c, c
    ld b, e
    ld b, [hl]
    ld c, a
    ld bc, $0002
    ld c, b
    ld b, l
    nop
    ld c, c
    ld d, d
    ld b, [hl]
    ld c, a
    ld bc, $00FE
    ld c, b
    ld b, l
    nop
    ld c, c
    ld e, h
    ld b, [hl]
    ld c, a
    ld bc, $FC00
    scf
    ld b, l
    nop
    ld c, c
    ld h, [hl]
    ld b, [hl]
    ld c, a
    ld bc, $0400
    scf
    ld b, l
    nop
    ld c, c
    ld [hl], b
    ld b, [hl]
    ld c, a
    ld bc, $0004
    ld c, b
    ld b, l
    nop
    ld c, c
    ld a, d
    ld b, [hl]
    ld c, a
    ld bc, $00FC
    ld c, b
    ld b, l
    nop
    ld c, c
    add h
    ld b, [hl]
    ld c, a
    ld bc, $FD00
    scf
    ld b, l
    nop
    ld c, c
    adc [hl]
    ld b, [hl]
    ld c, a
    ld bc, $0300
    scf
    ld b, l
    nop
    ld c, c
    sbc b
    ld b, [hl]
    ld c, a
    ld bc, $0003
    ld c, b
    ld b, l
    nop
    ld c, c
    and d
    ld b, [hl]
    ld c, a
    ld bc, $00FD
    ld c, b
    ld b, l
    nop
    ld c, c
    xor h
    ld b, [hl]
    ldh a, [$FD]
    ld [bc], a
    inc bc
    nop
    nop
    ld b, $06
    nop
    ld hl, sp+$05
    ld b, $F8
    nop
    inc b
    ld bc, $F8F8
    inc bc
    ld bc, $00F0
    ld bc, $F000
    ld hl, sp+$00
    ld bc, $F080
    ei
    ld [bc], a
    inc hl
    nop
    ld hl, sp+$06
    ld h, $00
    nop
    dec b
    ld h, $F8
    ld hl, sp+$04
    ld hl, $00F8
    inc bc
    ld hl, $F8F0
    ld bc, $F020
    nop
    nop
    ld hl, $F080
    nop
    add hl, bc
    inc bc
    nop
    cp $0B
    ld b, $F8
    db $FD
    ld a, [bc]
    ld bc, $00F0
    ld [$F001], sp
    ld hl, sp+$07
    ld bc, $F080
    ld sp, hl
    add hl, bc
    inc hl
    nop
    ei
    dec bc
    ld h, $F8
    db $FC
    ld a, [bc]
    ld hl, $F9F0
    ld [$F021], sp
    ld bc, $2107
    add b
    nop
    ei
    db $10
    ld b, $F8
    nop
    rrca
    ld bc, $F8F8
    ld c, $01
    pop af
    nop
    dec c
    inc bc
    pop af
    ld hl, sp+$0C
    inc bc
    add b
    nop
    ld sp, hl
    ld [de], a
    ld h, $00
    nop
    ld [de], a
    ld b, $F8
    ld hl, sp+$11
    ld hl, $00F8
    ld de, $F001
    nop
    dec c
    inc bc
    ldh a, [$F8]
    inc c
    inc bc
    add b
    nop
    cp $10
    ld h, $F8
    ld hl, sp+$0F
    ld hl, $00F8
    ld c, $21
    pop af
    nop
    dec c
    inc bc
    pop af
    ld hl, sp+$0C
    inc bc
    add b
    pop af
    ld hl, sp+$16
    ld hl, $00F1
    ld d, $01
    nop
    db $FD
    dec d
    ld b, $F8
    nop
    inc d
    ld bc, $F8F8
    inc de
    ld bc, $0080
    ld sp, hl
    jr @+$28

    nop
    nop
    jr jr_011_4780

    ld hl, sp-$08
    rla
    ld hl, $00F8

jr_011_4780:
    rla
    ld bc, $F8F0
    ld d, $21
    ldh a, [rP1]
    ld d, $01
    add b
    pop af
    ld hl, sp+$16
    ld hl, $00F1
    ld d, $01
    nop
    db $FC
    dec d
    ld h, $F8
    ld hl, sp+$14
    ld hl, $00F8
    inc de
    ld hl, $F180
    rst $38
    dec de
    inc bc
    nop
    nop
    rra
    ld b, $00
    ld hl, sp+$1E
    ld b, $F8
    nop
    dec e
    ld bc, $F8F8
    inc e
    ld bc, $00F1
    ld a, [de]
    ld bc, $F8F1
    add hl, de
    ld bc, $F080
    rst $38
    dec de
    inc bc
    nop
    cp $21
    ld b, $F8
    db $FD
    jr nz, @+$03

    ldh a, [rP1]
    ld a, [de]
    ld bc, $F8F0
    add hl, de
    ld bc, $F180
    rst $38
    dec de
    inc bc
    nop
    nop
    dec h
    ld b, $00
    ld hl, sp+$24
    ld b, $F8
    nop
    inc hl
    ld bc, $F8F8
    ld [hl+], a
    ld bc, $00F1
    ld a, [de]
    ld bc, $F8F1
    add hl, de
    ld bc, $F180
    ld sp, hl
    dec de
    inc hl
    nop
    ld hl, sp+$1F
    ld h, $00
    nop
    ld e, $26
    ld hl, sp-$08
    dec e
    ld hl, $00F8
    inc e
    ld hl, $F8F1
    ld a, [de]
    ld hl, $00F1
    add hl, de
    ld hl, $F080
    ld sp, hl
    dec de
    inc hl
    nop
    ld a, [$2621]
    ld hl, sp-$05
    jr nz, @+$23

    ldh a, [$F8]
    ld a, [de]
    ld hl, $00F0
    add hl, de
    ld hl, $F180
    ld sp, hl
    dec de
    inc hl
    nop
    ld hl, sp+$25
    ld h, $00
    nop
    inc h
    ld h, $F8
    ld hl, sp+$23
    ld hl, $00F8
    ld [hl+], a
    ld hl, $F8F1
    ld a, [de]
    ld hl, $00F1
    add hl, de
    ld hl, $5080
    ld [$0008], sp
    rst $38
    ld e, l
    ld b, a
    ld [hl], d
    ld b, a
    adc e
    ld b, a
    ld [hl], d
    ld b, a
    ld c, c
    ld a, $48
    ld d, b
    ld [$0008], sp
    ld bc, $471A
    cpl
    ld b, a
    ld c, b
    ld b, a
    cpl
    ld b, a
    ld c, c
    ld c, [hl]
    ld c, b
    ld d, b
    ld [$FF08], sp
    nop
    rst $28
    ld b, a
    inc c
    ld c, b
    ld hl, $0C48
    ld c, b
    ld c, c
    ld e, [hl]
    ld c, b
    ld d, b
    ld [$0108], sp
    nop
    and b
    ld b, a
    cp l
    ld b, a
    jp nc, $BD47

    ld b, a
    ld c, c
    ld l, [hl]
    ld c, b
    ld d, b
    ld [$0008], sp
    cp $5D
    ld b, a
    ld [hl], d
    ld b, a
    adc e
    ld b, a
    ld [hl], d
    ld b, a
    ld c, c
    ld a, [hl]
    ld c, b
    ld d, b
    ld [$0008], sp
    ld [bc], a
    ld a, [de]
    ld b, a
    cpl
    ld b, a
    ld c, b
    ld b, a
    cpl
    ld b, a
    ld c, c
    adc [hl]
    ld c, b
    ld d, b
    ld [$FE08], sp
    nop
    rst $28
    ld b, a
    inc c
    ld c, b
    ld hl, $0C48
    ld c, b
    ld c, c
    sbc [hl]
    ld c, b
    ld d, b
    ld [$0208], sp
    nop
    and b
    ld b, a
    cp l
    ld b, a
    jp nc, $BD47

    ld b, a
    ld c, c
    xor [hl]
    ld c, b
    ld c, a
    rst $38
    nop
    nop
    ld [hl], d
    ld b, a
    nop
    ld c, c
    cp [hl]
    ld c, b
    ld c, a
    rst $38
    nop
    nop
    cpl
    ld b, a
    nop
    ld c, c
    ret z

    ld c, b
    ld c, a
    rst $38
    nop
    nop
    inc c
    ld c, b
    nop
    ld c, c
    jp nc, $4F48

    rst $38
    nop
    nop
    cp l
    ld b, a
    nop
    ld c, c
    call c, $4F48
    rst $38
    nop
    nop
    dec b
    ld b, a
    nop
    ld c, c
    and $48
    ld c, a
    rst $38
    nop
    nop
    ldh a, [rDMA]
    nop
    ld c, c
    ldh a, [rOBP0]
    ld c, a
    rst $38
    nop
    nop
    db $D3
    ld b, [hl]
    nop
    ld c, c
    ld a, [$4F48]
    rst $38
    nop
    nop
    or [hl]
    ld b, [hl]
    nop
    ld c, c
    inc b
    ld c, c
    ld c, [hl]
    inc bc
    ld de, $0000
    dec h
    ld c, c
    ld de, $0003
    inc l
    ld c, c
    ld de, $0002
    ld a, [hl-]
    ld c, c
    ld de, $0001
    inc sp
    ld c, c
    rst $38
    inc d
    ld de, $48BE
    ld h, l
    ld bc, $1412
    ld de, $48C8
    ld h, l
    ld bc, $1412
    ld de, $48D2
    ld h, l
    ld bc, $1412
    ld de, $48DC
    ld h, l
    ld bc, $F212
    db $FD
    dec l
    rlca
    nop
    nop
    dec b
    ld b, $00

Jump_011_494A:
    ld hl, sp+$04

Call_011_494C:
    ld b, $F8
    nop
    inc bc
    ld [bc], a

Jump_011_4951:
    ld hl, sp-$08
    ld [bc], a
    ld [bc], a
    ldh a, [rP1]
    ld bc, $F002
    ld hl, sp+$00
    ld [bc], a
    add b
    ld a, [c]
    ei
    dec l
    rlca
    nop
    ld hl, sp+$05
    ld h, $00
    nop
    inc b
    ld h, $F8
    ld hl, sp+$03
    ld [hl+], a
    ld hl, sp+$00
    ld [bc], a
    ld [hl+], a
    ldh a, [$F8]
    ld bc, $F022
    nop
    nop
    ld [hl+], a
    add b
    nop
    nop
    dec bc
    ld b, $00
    ld hl, sp+$0A
    ld b, $F8
    nop
    add hl, bc
    ld [bc], a
    ld hl, sp-$08
    ld [$F002], sp
    nop
    rlca
    ld [bc], a
    ldh a, [$F8]
    ld b, $02
    add b
    nop
    ld hl, sp+$0B
    ld h, $00
    nop
    ld a, [bc]
    ld h, $F8
    ld hl, sp+$09
    ld [hl+], a
    ld hl, sp+$00
    ld [$F022], sp
    ld hl, sp+$07
    ld [hl+], a
    ldh a, [rP1]
    ld b, $22
    add b
    di
    db $FC
    inc l
    rlca
    nop
    nop
    ld de, $0006
    ld hl, sp+$10
    ld b, $F8
    nop
    rrca
    ld [bc], a
    ld hl, sp-$08
    ld c, $02
    pop af
    nop
    dec c
    ld [bc], a
    pop af
    ld hl, sp+$0C
    ld [bc], a
    add b
    ld a, [c]
    db $FC
    inc l
    rlca
    ldh a, [rP1]
    dec c
    ld [bc], a
    ldh a, [$F8]
    inc c
    ld [bc], a
    nop
    ld sp, hl
    inc de
    ld h, $00
    nop
    inc de
    ld b, $F8
    ld hl, sp+$12
    ld [hl+], a
    ld hl, sp+$00
    ld [de], a
    ld [bc], a
    add b
    di
    db $FC
    inc l
    rlca
    nop
    ld hl, sp+$11
    ld h, $00
    nop
    db $10
    ld h, $F8
    ld hl, sp+$0F
    ld [hl+], a
    ld hl, sp+$00
    ld c, $22
    pop af
    nop
    dec c
    ld [bc], a
    pop af
    ld hl, sp+$0C
    ld [bc], a
    add b
    ld hl, sp+$00
    dec d
    ld [bc], a
    ld hl, sp-$08
    inc d
    ld [bc], a
    nop
    nop
    rla
    ld b, $00
    ld hl, sp+$16
    ld b, $F1
    nop
    add hl, de
    ld [bc], a
    pop af
    ld hl, sp+$18
    ld [bc], a
    add b
    nop
    nop
    inc e
    ld b, $00
    ld sp, hl
    inc e
    ld h, $F8
    nop
    dec de
    ld [bc], a
    ld hl, sp-$08
    ld a, [de]
    ld [bc], a
    ldh a, [rP1]
    add hl, de
    ld [bc], a
    ldh a, [$F8]
    jr @+$04

    add b
    ld hl, sp+$00
    cpl
    ld [bc], a
    ld hl, sp-$08
    ld l, $02
    nop
    ld sp, hl
    rla
    ld h, $00
    ld bc, $2616
    pop af
    nop
    add hl, de
    ld [bc], a
    pop af
    ld hl, sp+$18
    ld [bc], a
    add b
    di
    rst $38
    dec hl
    rlca
    nop
    nop
    ld [hl+], a
    ld b, $00
    ld hl, sp+$21
    ld b, $F8
    nop
    jr nz, jr_011_4A61

    ld hl, sp-$08

jr_011_4A61:
    rra
    ld [bc], a
    pop af
    nop
    ld e, $02
    pop af
    ld hl, sp+$1D
    ld [bc], a
    add b
    ld a, [c]
    rst $38
    dec hl
    rlca
    nop
    nop
    ld h, $06
    nop
    ld hl, sp+$25
    ld b, $F8
    nop
    inc h
    ld [bc], a
    ld hl, sp-$08
    inc hl
    ld [bc], a
    ldh a, [rP1]
    ld e, $02
    ldh a, [$F8]
    dec e
    ld [bc], a
    add b
    di
    rst $38
    dec hl
    rlca
    nop
    nop
    ld a, [hl+]
    ld b, $00
    ld hl, sp+$29
    ld b, $F8
    nop
    jr z, jr_011_4A9B

    ld hl, sp-$08

jr_011_4A9B:
    daa
    ld [bc], a
    pop af
    nop
    ld e, $02
    pop af
    ld hl, sp+$1D
    ld [bc], a
    add b
    di
    ei
    dec hl
    rlca
    nop
    ld hl, sp+$22
    ld h, $00
    nop
    ld hl, $F826
    ld hl, sp+$20
    ld [hl+], a
    ld hl, sp+$00
    rra
    ld [hl+], a
    pop af
    ld hl, sp+$1E
    ld [hl+], a
    pop af
    nop
    dec e
    ld [hl+], a
    add b
    ld a, [c]
    ei
    dec hl
    rlca
    nop
    ld hl, sp+$26
    ld h, $00
    nop
    dec h
    ld h, $F8
    ld hl, sp+$24
    ld [hl+], a
    ld hl, sp+$00
    inc hl
    ld [hl+], a
    ldh a, [$F8]
    ld e, $22
    ldh a, [rP1]
    dec e
    ld [hl+], a
    add b
    di
    ei
    dec hl
    rlca
    nop
    ld hl, sp+$2A
    ld h, $00
    nop
    add hl, hl
    ld h, $F8
    ld hl, sp+$28
    ld [hl+], a
    ld hl, sp+$00
    daa
    ld [hl+], a
    pop af
    ld hl, sp+$1E
    ld [hl+], a
    pop af
    nop
    dec e
    ld [hl+], a
    add b
    ld d, b
    ld [$0008], sp
    rst $38
    inc b
    ld c, d
    dec e
    ld c, d
    ld [hl], $4A
    dec e
    ld c, d
    ld c, c
    db $FD
    ld c, d
    ld d, b
    ld [$0008], sp
    ld bc, $49AD
    jp z, $E749

    ld c, c
    jp z, $4949

    dec c
    ld c, e
    ld d, b
    ld [$FF08], sp
    nop
    and [hl]
    ld c, d
    jp $E04A


    ld c, d
    jp Jump_011_494A


    dec e
    ld c, e
    ld d, b
    ld [$0108], sp
    nop
    ld c, a
    ld c, d
    ld l, h
    ld c, d
    adc c
    ld c, d
    ld l, h
    ld c, d
    ld c, c
    dec l
    ld c, e
    ld d, b
    ld [$0008], sp
    cp $04
    ld c, d
    dec e
    ld c, d
    ld [hl], $4A
    dec e
    ld c, d
    ld c, c
    dec a
    ld c, e
    ld d, b
    ld [$0008], sp
    ld [bc], a
    xor l
    ld c, c
    jp z, $E749

    ld c, c
    jp z, $4949

    ld c, l
    ld c, e
    ld d, b
    ld [$FE08], sp
    nop
    and [hl]
    ld c, d
    jp $E04A


    ld c, d
    jp Jump_011_494A


    ld e, l
    ld c, e
    ld d, b
    ld [$0208], sp
    nop
    ld c, a
    ld c, d
    ld l, h
    ld c, d
    adc c
    ld c, d
    ld l, h
    ld c, d
    ld c, c
    ld l, l
    ld c, e
    ld c, a
    rst $38
    nop
    nop
    dec e
    ld c, d
    nop
    ld c, c
    ld a, l
    ld c, e
    ld c, a
    rst $38
    nop
    nop
    jp z, $0049

    ld c, c
    add a
    ld c, e
    ld c, a
    rst $38
    nop
    nop
    jp $004A


    ld c, c
    sub c
    ld c, e
    ld c, a
    rst $38
    nop
    nop
    ld l, h
    ld c, d
    nop
    ld c, c
    sbc e
    ld c, e
    ld c, a
    rst $38
    nop
    nop
    sub h
    ld c, c
    nop
    ld c, c
    and l
    ld c, e
    ld c, a
    rst $38
    nop
    nop
    ld a, e
    ld c, c
    nop
    ld c, c
    xor a
    ld c, e
    ld c, a
    rst $38
    nop
    nop
    ld e, [hl]
    ld c, c
    nop
    ld c, c
    cp c
    ld c, e
    ld c, a
    rst $38
    nop
    nop
    ld b, c
    ld c, c
    nop
    ld c, c
    jp Jump_011_4E4B


    inc bc
    ld de, $0000
    db $E4
    ld c, e
    ld de, $0003
    db $EB
    ld c, e
    ld de, $0002
    ld sp, hl
    ld c, e
    ld de, $0001
    ld a, [c]
    ld c, e
    rst $38
    inc d
    ld de, $4B7D
    ld h, l
    ld bc, $1412
    ld de, $4B87
    ld h, l
    ld bc, $1412
    ld de, $4B91
    ld h, l
    ld bc, $1412
    ld de, $4B9B
    ld h, l
    ld bc, $F112
    ld hl, sp+$25
    nop
    nop
    nop
    dec b
    ld [bc], a
    nop
    ld hl, sp+$04
    ld [bc], a
    ld hl, sp+$00
    inc bc
    ld [bc], a
    ld hl, sp-$08
    ld [bc], a
    ld [bc], a
    ldh a, [rP1]
    ld bc, $F002
    ld hl, sp+$00
    ld [bc], a
    add b
    pop af
    rst $38
    dec h
    nop
    nop
    ld hl, sp+$05
    ld [hl+], a
    nop
    nop
    inc b
    ld [hl+], a
    ld hl, sp-$08
    inc bc
    ld [hl+], a
    ld hl, sp+$00
    ld [bc], a
    ld [hl+], a
    ldh a, [$F8]
    ld bc, $F022
    nop
    nop
    ld [hl+], a
    add b
    pop af
    db $FD
    dec h
    nop
    nop
    cp $0A
    ld [bc], a
    ld hl, sp-$01
    add hl, bc
    ld [bc], a
    ld hl, sp-$09
    ld [$F002], sp
    rst $38
    rlca
    ld [bc], a
    ldh a, [$F7]
    ld b, $02
    add b
    pop af
    ei
    dec h
    nop
    nop
    ei
    ld a, [bc]
    ld [hl+], a
    ld hl, sp-$06
    add hl, bc
    ld [hl+], a
    ld hl, sp+$02
    ld [$F022], sp
    ld a, [$2207]
    ldh a, [rSC]
    ld b, $22
    add b
    ld a, [c]
    rst $38
    dec h
    nop
    ld a, [c]
    ld hl, sp+$25
    nop
    nop
    db $FC
    dec c
    ld [bc], a
    ld hl, sp+$00
    inc c
    ld [bc], a
    ld hl, sp-$08
    dec bc
    ld [bc], a
    pop af
    nop
    rrca
    ld [bc], a
    pop af
    ld hl, sp+$0E
    ld [bc], a
    add b
    pop af
    rst $38
    dec h
    nop
    pop af
    ld hl, sp+$25
    nop
    nop
    ld sp, hl
    ld de, $0022
    nop
    ld de, $F802
    nop
    db $10
    ld [bc], a
    ld hl, sp-$08
    db $10
    ld [hl+], a
    ldh a, [rP1]
    rrca
    ld [bc], a
    ldh a, [$F8]
    ld c, $02
    add b
    ld a, [c]
    rst $38
    dec h
    nop
    ld a, [c]
    ld hl, sp+$25
    nop
    nop
    db $FC
    dec c
    ld [hl+], a
    ld hl, sp-$08
    inc c
    ld [hl+], a
    ld hl, sp+$00
    dec bc
    ld [hl+], a
    pop af
    nop
    rrca
    ld [bc], a
    pop af
    ld hl, sp+$0E
    ld [bc], a
    add b
    ld hl, sp+$00
    inc de
    ld [bc], a
    ld hl, sp-$08
    ld [de], a
    ld [bc], a
    nop
    db $FD
    inc d
    ld [bc], a
    pop af
    ld hl, sp+$15
    ld [hl+], a
    pop af
    nop
    dec d
    ld [bc], a
    add b
    nop
    ld sp, hl
    rla
    ld [hl+], a
    nop
    nop
    rla
    ld [bc], a
    ld hl, sp+$00
    ld d, $02
    ld hl, sp-$08
    ld d, $22
    ldh a, [rP1]
    dec d
    ld [bc], a
    ldh a, [$F8]
    dec d
    ld [hl+], a
    add b
    ld hl, sp-$08
    inc de
    ld [hl+], a
    ld hl, sp+$00
    ld [de], a
    ld [hl+], a
    nop
    db $FC
    inc d
    ld [hl+], a
    pop af
    ld hl, sp+$15
    ld [hl+], a
    pop af
    nop
    dec d
    ld [bc], a
    add b
    ld a, [c]
    ei
    dec h
    nop
    nop
    nop
    dec e
    ld [bc], a
    nop
    ld hl, sp+$1C
    ld [bc], a
    ld hl, sp+$00
    dec de
    ld [bc], a
    ld hl, sp-$08
    ld a, [de]
    ld [bc], a
    pop af
    nop
    add hl, de
    ld [bc], a
    pop af
    ld hl, sp+$18
    ld [bc], a
    add b
    pop af
    ei
    dec h
    nop
    nop
    db $FC
    jr nz, jr_011_4D31

    ldh a, [rP1]

jr_011_4D31:
    add hl, de
    ld [bc], a
    ldh a, [$F8]
    jr jr_011_4D39

    ld hl, sp+$00

jr_011_4D39:
    rra
    ld [bc], a
    ld hl, sp-$08
    ld e, $02
    add b
    ld a, [c]
    ei
    dec h
    nop
    nop
    nop
    inc h
    ld [bc], a
    nop
    ld hl, sp+$23
    ld [bc], a
    ld hl, sp+$00
    ld [hl+], a
    ld [bc], a
    ld hl, sp-$08
    ld hl, $F102
    nop
    add hl, de
    ld [bc], a
    pop af
    ld hl, sp+$18
    ld [bc], a
    add b
    ld a, [c]
    db $FC
    dec h
    nop
    nop
    ld hl, sp+$1D
    ld [hl+], a
    nop
    nop
    inc e
    ld [hl+], a
    ld hl, sp-$08
    dec de
    ld [hl+], a
    ld hl, sp+$00
    ld a, [de]
    ld [hl+], a
    pop af
    ld hl, sp+$19
    ld [hl+], a
    pop af
    nop
    jr jr_011_4D9B

    add b
    pop af
    db $FC
    dec h
    nop
    nop
    ei
    jr nz, @+$24

    ldh a, [$F8]
    add hl, de
    ld [hl+], a
    ldh a, [rP1]
    jr jr_011_4DAC

    ld hl, sp-$08
    rra
    ld [hl+], a
    ld hl, sp+$00
    ld e, $22
    add b
    ld a, [c]
    db $FC
    dec h
    nop
    nop
    ld hl, sp+$24
    ld [hl+], a

jr_011_4D9B:
    nop
    nop
    inc hl
    ld [hl+], a
    ld hl, sp-$08
    ld [hl+], a
    ld [hl+], a
    ld hl, sp+$00
    ld hl, $F122
    ld hl, sp+$19
    ld [hl+], a
    pop af

jr_011_4DAC:
    nop
    jr jr_011_4DD1

    add b
    ld d, b
    ld [$0008], sp
    rst $38
    rst $00
    ld c, h
    call c, $F54C
    ld c, h
    call c, Call_011_494C
    or b
    ld c, l
    ld d, b
    ld [$0008], sp
    ld bc, $4C6C
    adc c
    ld c, h
    xor d
    ld c, h
    adc c
    ld c, h
    ld c, c
    ret nz

    ld c, l
    ld d, b

jr_011_4DD1:
    ld [$FF08], sp
    nop
    ld e, l
    ld c, l
    ld a, d
    ld c, l
    sub e
    ld c, l
    ld a, d
    ld c, l
    ld c, c
    ret nc

    ld c, l
    ld d, b
    ld [$0108], sp
    nop
    ld a, [bc]
    ld c, l
    daa
    ld c, l
    ld b, b
    ld c, l
    daa
    ld c, l
    ld c, c
    ldh [rKEY1], a
    ld d, b
    ld [$0008], sp
    cp $C7
    ld c, h
    call c, $F54C
    ld c, h
    call c, Call_011_494C
    ldh a, [rKEY1]
    ld d, b
    ld [$0008], sp
    ld [bc], a
    ld l, h
    ld c, h
    adc c
    ld c, h
    xor d
    ld c, h
    adc c
    ld c, h
    ld c, c
    nop
    ld c, [hl]
    ld d, b
    ld [$FE08], sp
    nop
    ld e, l
    ld c, l
    ld a, d
    ld c, l
    sub e
    ld c, l
    ld a, d
    ld c, l
    ld c, c
    db $10
    ld c, [hl]
    ld d, b
    ld [$0208], sp
    nop
    ld a, [bc]
    ld c, l
    daa
    ld c, l
    ld b, b
    ld c, l
    daa
    ld c, l
    ld c, c
    jr nz, jr_011_4E7E

    ld c, a
    rst $38
    nop
    nop
    call c, $004C
    ld c, c
    jr nc, @+$50

    ld c, a
    rst $38
    nop
    nop
    adc c
    ld c, h
    nop
    ld c, c
    ld a, [hl-]
    ld c, [hl]
    ld c, a
    rst $38
    nop
    nop
    ld a, d
    ld c, l
    nop

Jump_011_4E4B:
    ld c, c
    ld b, h
    ld c, [hl]
    ld c, a
    rst $38
    nop
    nop
    daa
    ld c, l
    nop
    ld c, c
    ld c, [hl]
    ld c, [hl]
    ld c, a
    rst $38
    nop
    nop
    ld d, e
    ld c, h
    nop
    ld c, c
    ld e, b
    ld c, [hl]
    ld c, a
    rst $38
    nop
    nop
    ld a, [hl-]
    ld c, h
    nop
    ld c, c
    ld h, d
    ld c, [hl]
    ld c, a
    rst $38
    nop
    nop
    dec e
    ld c, h
    nop
    ld c, c
    ld l, h
    ld c, [hl]
    ld c, a
    rst $38
    nop
    nop
    nop
    ld c, h
    nop
    ld c, c

jr_011_4E7E:
    halt
    ld c, [hl]
    ld c, [hl]
    inc bc
    ld de, $0000
    sub a
    ld c, [hl]
    ld de, $0003
    sbc [hl]
    ld c, [hl]
    ld de, $0002
    xor h
    ld c, [hl]
    ld de, $0001
    and l
    ld c, [hl]
    rst $38
    inc d
    ld de, $4E30
    ld h, l
    ld bc, $1412
    ld de, $4E3A
    ld h, l
    ld bc, $1412
    ld de, $4E44
    ld h, l
    ld bc, $1412
    ld de, $4E4E
    ld h, l
    ld bc, $0012
    nop
    dec b
    ld b, $00
    ld hl, sp+$04
    ld b, $F8
    nop
    inc bc
    ld bc, $F8F8
    ld [bc], a
    ld bc, $00F0
    ld bc, $F001
    ld hl, sp+$00
    ld bc, $0080
    ld hl, sp+$05
    ld h, $00
    nop
    inc b
    ld h, $F8
    ld hl, sp+$03
    ld hl, $00F8
    ld [bc], a
    ld hl, $F8F0
    ld bc, $F021
    nop
    nop
    ld hl, $0080
    nop
    dec bc
    ld b, $00
    ld hl, sp+$0A
    ld b, $F8
    nop
    add hl, bc
    ld bc, $F8F8
    ld [$F001], sp
    nop
    rlca
    ld bc, $F8F0
    ld b, $01
    add b
    nop
    ld hl, sp+$0B
    ld h, $00
    nop
    ld a, [bc]
    ld h, $F8
    ld hl, sp+$09
    ld hl, $00F8
    ld [$F021], sp
    ld hl, sp+$07
    ld hl, $00F0
    ld b, $21
    add b
    nop
    nop
    rrca
    ld b, $00
    ld hl, sp+$0E
    ld b, $F8
    nop
    dec c
    ld bc, $F8F8
    inc c
    ld bc, $F8F1
    db $10
    ld hl, $00F1
    db $10
    ld bc, $0080
    ld sp, hl
    ld [de], a
    ld h, $00
    nop
    ld [de], a
    ld b, $F8
    ld hl, sp+$11
    ld hl, $00F8
    ld de, $F001
    ld hl, sp+$10
    ld hl, $00F0
    db $10
    ld bc, $0080
    ld hl, sp+$0F
    ld h, $00
    nop
    ld c, $26
    ld hl, sp-$08
    dec c
    ld hl, $00F8
    inc c
    ld hl, $F8F1
    db $10
    ld hl, $00F1
    db $10
    ld bc, $F180
    ld hl, sp+$17
    ld hl, $00F1
    rla
    ld bc, $0100
    ld d, $06
    nop
    ld sp, hl
    dec d
    ld b, $F8
    nop
    inc d

Call_011_4F75:
Jump_011_4F75:
    ld bc, $F8F8

Jump_011_4F78:
    inc de
    ld bc, $0080
    ld sp, hl
    add hl, de
    ld h, $00
    nop
    add hl, de
    ld b, $F8
    ld hl, sp+$18
    ld hl, $00F8
    jr @+$03

    ldh a, [$F8]
    rla
    ld hl, $00F0
    rla
    ld bc, $F180
    ld hl, sp+$17
    ld hl, $00F1
    rla
    ld bc, $F800
    ld d, $26
    nop
    nop
    dec d
    ld h, $F8
    ld hl, sp+$14
    ld hl, $00F8
    inc de
    ld hl, $0080
    nop
    rra
    ld b, $00
    ld hl, sp+$1E
    ld b, $F8
    nop
    dec e
    ld bc, $F8F8
    inc e
    ld bc, $00F1
    dec de
    ld bc, $F8F1
    ld a, [de]
    ld bc, $0080
    nop
    inc hl
    ld b, $00
    ld hl, sp+$22
    ld b, $F8
    nop
    ld hl, $F801
    ld hl, sp+$20
    ld bc, $00F0
    dec de
    ld bc, $F8F0
    ld a, [de]
    ld bc, $0080
    nop
    daa
    ld b, $00
    ld hl, sp+$26
    ld b, $F8
    nop
    dec h
    ld bc, $F8F8
    inc h
    ld bc, $00F1
    dec de
    ld bc, $F8F1
    ld a, [de]
    ld bc, $0080
    ld hl, sp+$1F
    ld h, $00
    nop
    ld e, $26
    ld hl, sp-$08
    dec e
    ld hl, $00F8
    inc e
    ld hl, $F8F1
    dec de
    ld hl, $00F1
    ld a, [de]
    ld hl, $0080
    ld hl, sp+$23
    ld h, $00
    nop
    ld [hl+], a
    ld h, $F8
    ld hl, sp+$21
    ld hl, $00F8
    jr nz, @+$23

    ldh a, [$F8]
    dec de
    ld hl, $00F0
    ld a, [de]
    ld hl, $0080
    ld hl, sp+$27
    ld h, $00
    nop
    ld h, $26
    ld hl, sp-$08
    dec h
    ld hl, $00F8
    inc h
    ld hl, $F8F1
    dec de
    ld hl, $00F1
    ld a, [de]
    ld hl, $5080
    ld [$0008], sp
    rst $38
    ld h, d
    ld c, a
    ld a, e
    ld c, a
    sub h
    ld c, a
    ld a, e
    ld c, a
    ld c, c
    ld b, e
    ld d, b
    ld d, b
    ld [$0008], sp
    ld bc, $4F17
    jr nc, @+$51

    ld c, c
    ld c, a
    jr nc, @+$51

    ld c, c
    ld d, e
    ld d, b
    ld d, b
    ld [$FF08], sp
    nop
    ld hl, sp+$4F
    ld de, $2A50
    ld d, b
    ld de, $4950
    ld h, e
    ld d, b
    ld d, b
    ld [$0108], sp
    nop
    xor l
    ld c, a
    add $4F
    rst $18
    ld c, a
    add $4F
    ld c, c
    ld [hl], e
    ld d, b
    ld d, b
    ld [$0008], sp
    cp $62
    ld c, a
    ld a, e
    ld c, a
    sub h
    ld c, a
    ld a, e
    ld c, a
    ld c, c
    add e
    ld d, b
    ld d, b
    ld [$0008], sp
    ld [bc], a
    rla
    ld c, a
    jr nc, jr_011_50EB

    ld c, c
    ld c, a
    jr nc, jr_011_50EF

    ld c, c
    sub e
    ld d, b
    ld d, b
    ld [$FE08], sp
    nop
    ld hl, sp+$4F
    ld de, $2A50
    ld d, b
    ld de, $4950
    and e
    ld d, b
    ld d, b
    ld [$0208], sp
    nop
    xor l
    ld c, a
    add $4F
    rst $18
    ld c, a
    add $4F
    ld c, c
    or e
    ld d, b
    ld c, a
    rst $38
    nop
    nop
    ld a, e
    ld c, a
    nop
    ld c, c
    jp $4F50


    rst $38
    nop
    nop
    jr nc, jr_011_5122

    nop
    ld c, c
    call $4F50
    rst $38
    nop
    nop
    ld de, $0050
    ld c, c
    rst $10
    ld d, b
    ld c, a
    rst $38
    nop
    nop
    add $4F
    nop
    ld c, c
    pop hl
    ld d, b

jr_011_50EB:
    ld c, a
    rst $38
    nop
    nop

jr_011_50EF:
    cp $4E
    nop
    ld c, c
    db $EB
    ld d, b
    ld c, a
    rst $38
    nop
    nop
    push hl
    ld c, [hl]
    nop
    ld c, c
    push af
    ld d, b
    ld c, a
    rst $38
    nop
    nop
    call z, $004E
    ld c, c
    rst $38
    ld d, b
    ld c, a
    rst $38
    nop
    nop
    or e
    ld c, [hl]
    nop
    ld c, c
    add hl, bc
    ld d, c
    ld c, [hl]
    inc bc
    ld de, $0000
    ld a, [hl+]
    ld d, c
    ld de, $0003
    ld sp, $1151
    ld [bc], a
    nop

jr_011_5122:
    ccf
    ld d, c
    ld de, $0001
    jr c, jr_011_517A

    rst $38
    inc d
    ld de, $50C3
    ld h, l
    ld bc, $1412
    ld de, $50CD
    ld h, l
    ld bc, $1412
    ld de, $50D7
    ld h, l
    ld bc, $1412
    ld de, $50E1
    ld h, l
    ld bc, $0012
    nop
    dec b
    ld b, $00
    ld hl, sp+$04
    ld b, $F8
    nop
    inc bc
    inc bc
    ld hl, sp-$08
    ld [bc], a
    inc bc
    ldh a, [rP1]
    ld bc, $F003
    ld hl, sp+$00
    inc bc
    add b
    nop
    ld hl, sp+$05
    ld h, $00
    nop
    inc b
    ld h, $F8
    ld hl, sp+$03
    inc hl
    ld hl, sp+$00
    ld [bc], a
    inc hl
    ldh a, [$F8]
    ld bc, $F023
    nop
    nop
    inc hl
    add b
    nop
    nop

jr_011_517A:
    dec bc
    ld b, $00
    ld hl, sp+$0A
    ld b, $F8
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld [$F003], sp
    nop
    rlca
    inc bc
    ldh a, [$F8]
    ld b, $03
    add b
    nop
    ld hl, sp+$0B
    ld h, $00

jr_011_5196:
    nop
    ld a, [bc]
    ld h, $F8
    ld hl, sp+$09
    jr nz, jr_011_5196

    nop
    ld [$F023], sp
    ld hl, sp+$07
    inc hl
    ldh a, [rP1]
    ld b, $23
    add b
    nop
    nop
    ld de, $0006
    ld hl, sp+$10
    ld b, $F8
    nop
    rrca
    inc bc
    ld hl, sp-$08
    ld c, $03
    pop af
    nop
    dec c
    inc bc
    pop af
    ld hl, sp+$0C
    inc bc
    add b
    nop
    nop
    inc de
    ld b, $00
    ld sp, hl
    inc de
    ld h, $F8
    nop
    ld [de], a
    inc bc
    ld hl, sp-$08
    ld [de], a
    inc hl
    ldh a, [rP1]
    dec c
    inc bc
    ldh a, [$F8]
    inc c
    inc bc
    add b
    nop
    ld hl, sp+$11
    ld h, $00
    nop
    db $10
    ld h, $F8
    ld hl, sp+$0F
    inc hl
    ld hl, sp+$00
    ld c, $23
    pop af
    nop
    dec c
    inc bc
    pop af
    ld hl, sp+$0C
    inc bc
    add b
    nop
    nop
    rla
    ld b, $00
    ld hl, sp+$16
    ld b, $F8
    nop
    dec d
    inc bc
    ld hl, sp-$08
    inc d
    inc bc
    pop af
    nop
    add hl, de
    inc bc
    pop af
    ld hl, sp+$18
    inc bc
    add b
    nop
    nop
    dec de
    ld b, $00
    ld a, [$261B]
    ld hl, sp+$00
    ld a, [de]
    inc bc
    ld hl, sp-$07
    ld a, [de]
    inc hl
    ldh a, [rP1]
    add hl, de
    inc bc
    ldh a, [$F8]
    jr jr_011_5229

    add b
    nop
    ld sp, hl

jr_011_5229:
    rla
    ld h, $00
    ld bc, $2616
    ld hl, sp-$07
    dec d
    inc hl
    ld hl, sp+$01
    inc d
    inc hl
    pop af
    nop
    add hl, de
    inc bc
    pop af
    ld hl, sp+$18
    inc bc
    add b
    nop
    nop
    ld hl, $0006
    ld hl, sp+$20
    ld b, $F8
    nop
    rra
    inc bc
    ld hl, sp-$08
    ld e, $03
    pop af
    nop
    dec e
    inc bc
    pop af
    ld hl, sp+$1C
    inc bc
    add b
    nop
    nop
    dec h
    ld b, $00
    ld hl, sp+$24
    ld b, $F8
    nop
    inc hl
    inc bc
    ld hl, sp-$08
    ld [hl+], a
    inc bc
    ldh a, [rP1]
    dec e
    inc bc
    ldh a, [$F8]
    inc e
    inc bc
    add b
    nop
    nop
    add hl, hl
    ld b, $00
    ld hl, sp+$28
    ld b, $F8
    nop
    daa
    inc bc
    ld hl, sp-$08
    ld h, $03
    pop af
    nop
    dec e
    inc bc
    pop af
    ld hl, sp+$1C
    inc bc
    add b
    nop
    ld hl, sp+$21
    ld h, $00
    nop
    jr nz, @+$28

    ld hl, sp-$08
    rra
    inc hl
    ld hl, sp+$00
    ld e, $23
    pop af
    ld hl, sp+$1D
    inc hl
    pop af
    nop
    inc e
    inc hl
    add b
    nop
    ld hl, sp+$25
    ld h, $00
    nop
    inc h
    ld h, $F8
    ld hl, sp+$23
    inc hl
    ld hl, sp+$00
    ld [hl+], a
    inc hl
    ldh a, [$F8]
    dec e
    inc hl
    ldh a, [rP1]
    inc e
    inc hl
    add b
    nop
    ld hl, sp+$29
    ld h, $00
    nop
    jr z, @+$28

    ld hl, sp-$08
    daa
    inc hl
    ld hl, sp+$00
    ld h, $23
    pop af
    ld hl, sp+$1D
    inc hl
    pop af
    nop
    inc e
    inc hl
    add b
    ld d, b
    ld [$0008], sp
    rst $38
    push af
    ld d, c
    ld c, $52
    daa
    ld d, d
    ld c, $52
    ld c, c
    sub $52
    ld d, b
    ld [$0008], sp
    ld bc, $51AA
    jp $DC51


    ld d, c
    jp Jump_011_4951


    and $52
    ld d, b
    ld [$FF08], sp
    nop
    adc e
    ld d, d
    and h
    ld d, d
    cp l
    ld d, d
    and h
    ld d, d
    ld c, c
    or $52
    ld d, b
    ld [$0108], sp
    nop
    ld b, b
    ld d, d
    ld e, c
    ld d, d
    ld [hl], d
    ld d, d
    ld e, c
    ld d, d
    ld c, c
    ld b, $53
    ld d, b
    ld [$0008], sp
    cp $F5
    ld d, c
    ld c, $52
    daa
    ld d, d
    ld c, $52
    ld c, c
    ld d, $53
    ld d, b
    ld [$0008], sp
    ld [bc], a
    xor d
    ld d, c
    jp $DC51


    ld d, c
    jp Jump_011_4951


    ld h, $53
    ld d, b
    ld [$FE08], sp
    nop
    adc e
    ld d, d
    and h
    ld d, d
    cp l
    ld d, d
    and h
    ld d, d
    ld c, c
    ld [hl], $53
    ld d, b
    ld [$0208], sp
    nop
    ld b, b
    ld d, d
    ld e, c
    ld d, d
    ld [hl], d
    ld d, d
    ld e, c
    ld d, d
    ld c, c
    ld b, [hl]
    ld d, e
    ld c, a
    rst $38
    nop
    nop
    ld c, $52
    nop
    ld c, c
    ld d, [hl]
    ld d, e
    ld c, a
    rst $38
    nop
    nop
    jp $0051


    ld c, c
    ld h, b
    ld d, e
    ld c, a
    rst $38
    nop
    nop
    and h
    ld d, d
    nop
    ld c, c
    ld l, d
    ld d, e
    ld c, a
    rst $38
    nop
    nop
    ld e, c
    ld d, d
    nop
    ld c, c
    ld [hl], h
    ld d, e
    ld c, a
    rst $38
    nop
    nop
    sub c
    ld d, c
    nop
    ld c, c
    ld a, [hl]
    ld d, e
    ld c, a
    rst $38
    nop
    nop
    ld a, b
    ld d, c
    nop
    ld c, c
    adc b
    ld d, e
    ld c, a
    rst $38
    nop
    nop
    ld e, a
    ld d, c
    nop
    ld c, c
    sub d
    ld d, e
    ld c, a
    rst $38
    nop
    nop
    ld b, [hl]
    ld d, c
    nop
    ld c, c
    sbc h
    ld d, e
    ld c, [hl]
    inc bc
    ld de, $0000
    cp l
    ld d, e
    ld de, $0003
    call nz, $1153
    ld [bc], a
    nop
    jp nc, $1153

    ld bc, $CB00
    ld d, e
    rst $38
    inc d
    ld de, $5356
    ld h, l
    ld bc, $1412
    ld de, $5360
    ld h, l
    ld bc, $1412
    ld de, $536A
    ld h, l
    ld bc, $1412
    ld de, $5374
    ld h, l
    ld bc, $0012
    nop
    ld bc, $F823
    nop
    nop
    inc hl
    nop
    ld hl, sp+$01
    inc bc
    ld hl, sp-$08
    nop
    inc bc
    add b
    nop
    nop
    dec b
    inc bc
    nop
    ld hl, sp+$04
    inc bc
    ld hl, sp+$00
    inc bc
    inc bc
    ld hl, sp-$08
    ld [bc], a
    inc bc
    add b
    db $FC
    db $FC
    ld b, $03
    add b
    ld c, a
    rst $38
    nop
    nop
    reti


    ld d, e
    nop
    ld c, c
    nop
    ld d, h
    ld c, a
    ld [$0000], sp
    reti


    ld d, e
    ld [$0000], sp
    ld [$0853], a
    nop
    nop
    ei
    ld d, e
    nop
    ld c, c
    dec de
    ld d, h
    ld c, a
    ld [$0000], sp
    ei
    ld d, e
    ld [$0000], sp
    ld [$0053], a
    ld c, c
    nop
    ld d, h
    ld c, a
    rst $38
    ld bc, $D900
    ld d, e
    nop
    ld c, c
    dec l
    ld d, h
    ld c, a
    ld [$0001], sp
    reti


    ld d, e
    ld [$0001], sp
    ld [$0853], a
    ld bc, $FB00
    ld d, e
    nop
    ld c, c
    ld c, b
    ld d, h
    ld c, a
    ld [$0001], sp
    ei
    ld d, e
    ld [$0001], sp
    ld [$0053], a
    ld c, c
    dec l
    ld d, h
    ld c, a
    rst $38
    ld [bc], a
    nop
    reti


    ld d, e
    nop
    ld c, c
    ld e, d
    ld d, h
    ld c, a
    ld [$0002], sp
    reti


    ld d, e
    ld [$0002], sp
    ld [$0853], a
    ld [bc], a
    nop
    ei
    ld d, e
    nop
    ld c, c
    ld [hl], l
    ld d, h
    ld c, a
    ld [$0002], sp
    ei
    ld d, e
    ld [$0002], sp
    ld [$0053], a
    ld c, c
    ld e, d
    ld d, h
    ld c, a
    rst $38
    inc bc
    nop
    reti


    ld d, e
    nop
    ld c, c
    add a
    ld d, h
    ld c, a
    ld [$0003], sp
    reti


    ld d, e
    ld [$0003], sp
    ld [$0853], a
    inc bc
    nop
    ei
    ld d, e
    nop
    ld c, c
    and d
    ld d, h
    ld c, a
    ld [$0003], sp
    ei
    ld d, e
    ld [$0003], sp
    ld [$0053], a
    ld c, c
    add a
    ld d, h
    ld c, a
    ld [bc], a
    ld [bc], a
    nop
    reti


    ld d, e
    ld [bc], a
    ld bc, $D900
    ld d, e
    nop
    ld c, c
    or h
    ld d, h
    ld c, a
    ld [bc], a
    ld [bc], a
    nop
    reti


    ld d, e
    ld [bc], a
    ld bc, $D900
    ld d, e
    ld [bc], a
    ld [bc], a
    nop
    reti


    ld d, e
    ld [bc], a
    ld bc, $D900
    ld d, e
    ld [bc], a
    ld [bc], a
    nop
    ld [$0253], a
    ld bc, $EA00
    ld d, e
    ld [bc], a
    ld [bc], a
    nop
    ld [$0253], a
    ld bc, $EA00
    ld d, e
    ld [bc], a
    ld [bc], a
    nop
    ei
    ld d, e
    ld [bc], a
    ld bc, $FB00
    ld d, e
    ld [bc], a
    ld [bc], a
    nop
    ei
    ld d, e
    ld [bc], a
    ld bc, $FB00
    ld d, e
    nop
    ld c, c
    ld bc, $4F55
    ld [bc], a
    ld [bc], a
    nop
    ei
    ld d, e
    ld [bc], a
    ld bc, $FB00
    ld d, e
    ld [bc], a
    ld [bc], a
    nop
    ei
    ld d, e
    ld [bc], a
    ld bc, $FB00
    ld d, e
    ld [bc], a
    ld [bc], a
    nop
    ld [$0253], a
    ld bc, $EA00
    ld d, e
    ld [bc], a
    ld [bc], a
    nop
    ld [$0253], a
    ld bc, $EA00
    ld d, e
    nop
    ld c, c
    or h
    ld d, h
    ld c, a
    rst $38
    rst $38
    nop
    reti


    ld d, e
    nop
    ld c, c
    ld sp, $4F55
    ld [$00FF], sp
    reti


    ld d, e
    ld [$00FF], sp
    ld [$0853], a
    rst $38
    nop
    ei
    ld d, e
    nop
    ld c, c
    ld c, h
    ld d, l
    ld c, a
    ld [$00FF], sp
    ei
    ld d, e
    ld [$00FF], sp
    ld [$0053], a
    ld c, c
    ld sp, $4F55
    rst $38
    cp $00
    reti


    ld d, e
    nop
    ld c, c
    ld e, [hl]
    ld d, l
    ld c, a
    ld [$00FE], sp
    reti


    ld d, e
    ld [$00FE], sp
    ld [$0853], a
    cp $00
    ei
    ld d, e
    nop
    ld c, c
    ld a, c
    ld d, l
    ld c, a
    ld [$00FE], sp
    ei
    ld d, e
    ld [$00FE], sp
    ld [$0053], a
    ld c, c
    ld e, [hl]
    ld d, l
    ld c, a
    rst $38
    db $FD
    nop
    reti


    ld d, e
    nop
    ld c, c
    adc e
    ld d, l
    ld c, a
    ld [$00FD], sp
    reti


    ld d, e
    ld [$00FD], sp
    ld [$0853], a
    db $FD
    nop
    ei
    ld d, e
    nop
    ld c, c
    and [hl]
    ld d, l
    ld c, a
    ld [$00FD], sp
    ei
    ld d, e
    ld [$00FD], sp
    ld [$0053], a
    ld c, c
    adc e
    ld d, l
    ld c, a
    ld [bc], a
    cp $00
    reti


    ld d, e
    ld [bc], a
    rst $38
    nop
    reti


    ld d, e
    nop
    ld c, c
    cp b
    ld d, l
    ld c, a
    ld [bc], a
    cp $00
    reti


    ld d, e
    ld [bc], a
    rst $38
    nop
    reti


    ld d, e
    ld [bc], a
    cp $00
    reti


    ld d, e
    ld [bc], a
    rst $38
    nop
    reti


    ld d, e
    ld [bc], a
    cp $00
    ld [$0253], a
    rst $38
    nop
    ld [$0253], a
    cp $00
    ld [$0253], a
    rst $38
    nop
    ld [$0253], a
    cp $00
    ei
    ld d, e
    ld [bc], a
    rst $38
    nop
    ei
    ld d, e
    ld [bc], a
    cp $00
    ei
    ld d, e
    ld [bc], a
    rst $38
    nop
    ei
    ld d, e
    nop
    ld c, c
    dec b
    ld d, [hl]
    ld c, a
    ld [bc], a
    cp $00
    ei
    ld d, e
    ld [bc], a
    rst $38
    nop
    ei
    ld d, e
    ld [bc], a
    cp $00
    ei
    ld d, e
    ld [bc], a
    rst $38
    nop
    ei
    ld d, e
    ld [bc], a
    cp $00
    ld [$0253], a
    rst $38
    nop
    ld [$0253], a
    cp $00
    ld [$0253], a
    rst $38
    nop
    ld [$0053], a
    ld c, c
    cp b
    ld d, l
    ld c, a
    rst $38
    nop
    rst $38
    reti


    ld d, e
    nop
    ld c, c
    dec [hl]
    ld d, [hl]
    ld c, a
    ld [$FF00], sp
    reti


    ld d, e
    ld [$FF00], sp
    ld [$0853], a
    nop
    rst $38
    ei
    ld d, e
    nop
    ld c, c
    ld d, b
    ld d, [hl]
    ld c, a
    ld [$FF00], sp
    ei
    ld d, e
    ld [$FF00], sp
    ld [$0053], a
    ld c, c
    dec [hl]
    ld d, [hl]
    ld c, a
    rst $38
    nop
    cp $D9
    ld d, e
    nop
    ld c, c
    ld h, d
    ld d, [hl]
    ld c, a
    ld [$FE00], sp
    reti


    ld d, e
    ld [$FE00], sp
    ld [$0853], a
    nop
    cp $FB
    ld d, e
    nop
    ld c, c
    ld a, l
    ld d, [hl]
    ld c, a
    ld [$FE00], sp
    ei
    ld d, e
    ld [$FE00], sp
    ld [$0053], a
    ld c, c
    ld h, d
    ld d, [hl]
    ld c, a
    rst $38
    nop
    db $FD
    reti


    ld d, e
    nop
    ld c, c
    adc a
    ld d, [hl]
    ld c, a
    ld [$FD00], sp
    reti


    ld d, e
    ld [$FD00], sp
    ld [$0853], a
    nop
    db $FD
    ei
    ld d, e
    nop
    ld c, c
    xor d
    ld d, [hl]
    ld c, a
    ld [$FD00], sp
    ei
    ld d, e
    ld [$FD00], sp
    ld [$0053], a
    ld c, c
    adc a
    ld d, [hl]
    ld c, a
    ld [bc], a
    nop
    cp $D9
    ld d, e
    ld [bc], a
    nop
    rst $38
    reti


    ld d, e
    nop
    ld c, c
    cp h
    ld d, [hl]
    ld c, a
    ld [bc], a
    nop
    cp $D9
    ld d, e
    ld [bc], a
    nop
    rst $38
    reti


    ld d, e
    ld [bc], a
    nop
    cp $D9
    ld d, e
    ld [bc], a
    nop
    rst $38
    reti


    ld d, e
    ld [bc], a
    nop
    cp $EA
    ld d, e
    ld [bc], a
    nop
    rst $38
    ld [$0253], a
    nop
    cp $EA
    ld d, e
    ld [bc], a
    nop
    rst $38
    ld [$0253], a
    nop
    cp $FB
    ld d, e
    ld [bc], a
    nop
    rst $38
    ei
    ld d, e
    ld [bc], a
    nop
    cp $FB
    ld d, e
    ld [bc], a
    nop
    rst $38
    ei
    ld d, e
    nop
    ld c, c
    add hl, bc
    ld d, a
    ld c, a
    ld [bc], a
    nop
    cp $FB
    ld d, e
    ld [bc], a
    nop
    rst $38
    ei
    ld d, e
    ld [bc], a
    nop
    cp $FB
    ld d, e
    ld [bc], a
    nop
    rst $38
    ei
    ld d, e
    ld [bc], a
    nop
    cp $EA
    ld d, e
    ld [bc], a
    nop
    rst $38
    ld [$0253], a
    nop
    cp $EA
    ld d, e
    ld [bc], a
    nop
    rst $38
    ld [$0053], a
    ld c, c
    cp h
    ld d, [hl]
    ld c, a
    rst $38
    nop
    ld bc, $53D9
    nop
    ld c, c
    add hl, sp
    ld d, a
    ld c, a
    ld [$0100], sp
    reti


    ld d, e
    ld [$0100], sp
    ld [$0853], a
    nop
    ld bc, $53FB
    nop
    ld c, c
    ld d, h
    ld d, a
    ld c, a
    ld [$0100], sp
    ei
    ld d, e
    ld [$0100], sp
    ld [$0053], a
    ld c, c
    add hl, sp
    ld d, a
    ld c, a
    rst $38
    nop
    ld [bc], a
    reti


    ld d, e
    nop
    ld c, c
    ld h, [hl]
    ld d, a
    ld c, a
    ld [$0200], sp
    reti


    ld d, e
    ld [$0200], sp
    ld [$0853], a
    nop
    ld [bc], a
    ei
    ld d, e
    nop
    ld c, c
    add c
    ld d, a
    ld c, a
    ld [$0200], sp
    ei
    ld d, e
    ld [$0200], sp
    ld [$0053], a
    ld c, c
    ld h, [hl]
    ld d, a
    ld c, a
    rst $38
    nop
    inc bc
    reti


    ld d, e
    nop
    ld c, c
    sub e
    ld d, a
    ld c, a
    ld [$0300], sp
    reti


    ld d, e
    ld [$0300], sp
    ld [$0853], a
    nop
    inc bc
    ei
    ld d, e
    nop
    ld c, c
    xor [hl]
    ld d, a
    ld c, a
    ld [$0300], sp
    ei
    ld d, e
    ld [$0300], sp
    ld [$0053], a
    ld c, c
    sub e
    ld d, a
    ld c, a
    ld [bc], a
    nop
    ld [bc], a
    reti


    ld d, e
    ld [bc], a
    nop
    ld bc, $53D9
    nop
    ld c, c
    ret nz

    ld d, a
    ld c, a
    ld [bc], a
    nop
    ld [bc], a
    reti


    ld d, e
    ld [bc], a
    nop
    ld bc, $53D9
    ld [bc], a
    nop
    ld [bc], a
    reti


    ld d, e
    ld [bc], a
    nop
    ld bc, $53D9
    ld [bc], a
    nop
    ld [bc], a
    ld [$0253], a
    nop
    ld bc, $53EA
    ld [bc], a
    nop
    ld [bc], a
    ld [$0253], a
    nop
    ld bc, $53EA
    ld [bc], a
    nop
    ld [bc], a
    ei
    ld d, e
    ld [bc], a
    nop
    ld bc, $53FB
    ld [bc], a
    nop
    ld [bc], a
    ei
    ld d, e
    ld [bc], a
    nop
    ld bc, $53FB
    nop
    ld c, c
    dec c
    ld e, b
    ld c, a
    ld [bc], a
    nop
    ld [bc], a
    ei
    ld d, e
    ld [bc], a
    nop
    ld bc, $53FB
    ld [bc], a
    nop
    ld [bc], a
    ei
    ld d, e
    ld [bc], a
    nop
    ld bc, $53FB
    ld [bc], a
    nop
    ld [bc], a
    ld [$0253], a
    nop
    ld bc, $53EA
    ld [bc], a
    nop
    ld [bc], a
    ld [$0253], a
    nop
    ld bc, $53EA
    nop
    ld c, c
    ret nz

    ld d, a
    nop
    db $FD
    ld bc, $F800
    db $FD
    ld bc, $0800
    db $FD
    nop
    ld b, b
    ldh a, [$FD]
    nop
    nop
    add b
    rlca
    db $FD
    ld [bc], a
    rlca
    nop
    db $FD
    ld [bc], a
    rlca
    ld hl, sp-$03
    ld [bc], a
    rlca
    pop af
    db $FD
    ld [bc], a
    rlca
    nop
    db $FD
    ld bc, $F800
    db $FD
    ld bc, $0800
    db $FD
    nop
    ld b, b
    ldh a, [$FD]
    nop
    nop
    add b
    rlca
    db $FD
    ld [bc], a
    rlca
    nop
    db $FD
    ld [bc], a
    rlca
    nop
    db $FD
    ld bc, $F800
    db $FD
    ld bc, $0800
    db $FD
    nop
    ld b, b
    ldh a, [$FD]
    nop
    nop
    add b
    rst $38
    db $FD
    inc b
    rlca
    rlca
    db $FD
    ld [bc], a
    rlca
    nop
    db $FD
    ld bc, $F800
    db $FD
    ld bc, $0800
    db $FD
    nop
    ld b, b
    ldh a, [$FD]
    nop
    nop
    add b
    nop
    db $FD
    inc bc
    rlca
    rlca
    db $FD
    ld [bc], a
    rlca
    nop
    db $FD
    ld bc, $F800
    db $FD
    ld bc, $0800
    db $FD
    nop
    ld b, b
    ldh a, [$FD]
    nop
    nop
    add b
    rlca
    db $FD
    inc b
    rlca
    nop
    db $FD
    ld bc, $F800
    db $FD
    ld bc, $0800
    db $FD
    nop
    ld b, b
    ldh a, [$FD]
    nop
    nop
    add b
    rlca
    db $FD
    inc bc
    rlca
    nop
    db $FD
    ld bc, $F800
    db $FD
    ld bc, $0800
    db $FD
    nop
    ld b, b
    ldh a, [$FD]
    nop
    nop
    add b
    rlca
    db $FD
    ld [bc], a
    rlca
    nop
    db $FD
    ld bc, $F800
    db $FD
    ld bc, $0800
    db $FD
    nop
    ld b, b
    ldh a, [$FD]
    nop
    nop
    add b
    ld hl, sp-$03
    inc b
    rlca
    rlca
    db $FD
    ld [bc], a
    rlca
    nop
    db $FD
    ld [bc], a
    rlca
    nop
    db $FD
    ld bc, $F800
    db $FD
    ld bc, $0800
    db $FD
    nop
    ld b, b
    ldh a, [$FD]
    nop
    nop
    add b
    ld hl, sp-$03
    inc bc
    rlca
    rlca
    db $FD
    ld [bc], a
    rlca
    nop
    db $FD
    ld [bc], a
    rlca
    nop
    db $FD
    ld bc, $F800
    db $FD
    ld bc, $0800
    db $FD
    nop
    ld b, b
    ldh a, [$FD]
    nop
    nop
    add b
    ld hl, sp-$03
    ld [bc], a
    rlca
    rlca
    db $FD
    ld [bc], a
    rlca
    nop
    db $FD
    ld [bc], a
    rlca
    nop
    db $FD
    ld bc, $F800
    db $FD
    ld bc, $0800
    db $FD
    nop
    ld b, b
    ldh a, [$FD]
    nop
    nop
    add b
    ldh a, [$FD]
    inc b
    rlca
    ld hl, sp-$03
    ld [bc], a
    rlca
    rlca
    db $FD
    ld [bc], a
    rlca
    nop
    db $FD
    ld [bc], a
    rlca
    nop
    db $FD
    ld bc, $F800
    db $FD
    ld bc, $0800
    db $FD
    nop
    ld b, b
    ldh a, [$FD]
    nop
    nop
    add b
    ldh a, [$FD]
    inc bc
    rlca
    ld hl, sp-$03
    ld [bc], a
    rlca
    rlca
    db $FD
    ld [bc], a
    rlca
    nop
    db $FD
    ld [bc], a
    rlca
    nop
    db $FD
    ld bc, $F800
    db $FD
    ld bc, $0800
    db $FD
    nop
    ld b, b
    ldh a, [$FD]
    nop
    nop
    add b
    ldh a, [$FD]
    ld [bc], a
    rlca
    ld hl, sp-$03
    ld [bc], a
    rlca
    ld [$02FD], sp
    rlca
    nop
    db $FD
    ld [bc], a
    rlca
    nop
    db $FD
    ld bc, $F800
    db $FD
    ld bc, $0800
    db $FD
    nop
    ld b, b
    ldh a, [$FD]
    nop
    nop
    add b
    ld d, d
    rst $38
    nop
    nop
    dec a
    ld e, b
    nop
    ld c, c
    or e
    ld e, c
    ld d, d
    rst $38
    nop
    nop
    cp d
    ld e, b
    nop
    ld c, c
    cp l
    ld e, c
    ld d, d
    rst $38
    nop
    nop
    rst $08
    ld e, b
    nop
    ld c, c
    rst $00
    ld e, c
    ld d, d
    rst $38
    nop
    nop
    db $E4
    ld e, b
    nop
    ld c, c
    pop de
    ld e, c
    ld d, d
    rst $38
    nop
    nop
    adc b
    ld e, b
    nop
    ld c, c
    db $DB
    ld e, c
    ld d, d
    rst $38
    nop
    nop
    and c
    ld e, b
    nop
    ld c, c
    push hl
    ld e, c
    ld d, d
    rst $38
    nop
    nop
    ld l, a
    ld e, b
    nop
    ld c, c
    rst $28
    ld e, c
    ld d, d
    rst $38
    nop
    nop
    ld sp, hl
    ld e, b
    nop
    ld c, c
    ld sp, hl
    ld e, c
    ld d, d
    rst $38
    nop
    nop
    ld d, $59
    nop
    ld c, c
    inc bc
    ld e, d
    ld d, d
    rst $38
    nop
    nop
    inc sp
    ld e, c
    nop
    ld c, c
    dec c
    ld e, d
    ld d, d
    rst $38
    nop
    nop
    ld d, b
    ld e, c
    nop
    ld c, c
    rla
    ld e, d
    ld d, d
    rst $38
    nop
    nop
    ld [hl], c
    ld e, c
    nop
    ld c, c
    ld hl, $525A
    rst $38
    nop
    nop
    sub d
    ld e, c
    nop
    ld c, c
    dec hl
    ld e, d
    ld d, d
    rst $38
    nop
    nop
    ld c, [hl]
    ld e, b
    nop
    ld c, c
    dec [hl]
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    dec a
    ld e, b
    nop
    ld c, c
    ccf
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    cp d
    ld e, b
    nop
    ld c, c
    ld c, c
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    rst $08
    ld e, b
    nop
    ld c, c
    ld d, e
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    db $E4
    ld e, b
    nop
    ld c, c
    ld e, l
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    adc b
    ld e, b
    nop
    ld c, c
    ld h, a
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    and c
    ld e, b
    nop
    ld c, c
    ld [hl], c
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    ld l, a
    ld e, b
    nop
    ld c, c
    ld a, e
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    ld sp, hl
    ld e, b
    nop
    ld c, c
    add l
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    ld d, $59
    nop
    ld c, c
    adc a
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    inc sp
    ld e, c
    nop
    ld c, c
    sbc c
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    ld d, b
    ld e, c
    nop
    ld c, c
    and e
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    ld [hl], c
    ld e, c
    nop
    ld c, c
    xor l
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    sub d
    ld e, c
    nop
    ld c, c
    or a
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    ld c, [hl]
    ld e, b
    nop
    ld c, c
    pop bc
    ld e, d
    db $FC
    db $FC
    nop
    nop
    add b
    db $FC
    db $FC
    ld bc, $8000
    db $FC
    db $FC
    ld [bc], a
    nop
    add b
    db $FC
    db $FC
    inc bc
    nop
    add b
    db $FC
    db $FC
    nop
    ld [bc], a
    add b
    db $FC
    db $FC
    ld bc, $8002
    db $FC
    db $FC
    ld [bc], a
    ld [bc], a
    add b
    db $FC
    db $FC
    inc bc
    ld [bc], a
    add b
    db $FC
    db $FC
    nop
    rlca
    add b
    db $FC
    db $FC
    ld bc, $8007
    db $FC
    db $FC
    ld [bc], a
    rlca
    add b
    db $FC
    db $FC
    inc bc
    rlca
    add b
    ldh a, [rP1]
    nop
    daa
    ldh a, [$F8]
    nop
    rlca
    ldh a, [rP1]
    ld bc, $F020
    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    daa
    ld hl, sp-$08
    ld [bc], a
    rlca
    ld hl, sp+$00
    inc bc
    jr nz, @-$06

    ld hl, sp+$03
    nop
    ld [$05FC], sp
    nop
    nop
    nop
    inc b
    jr nz, jr_011_5B30

jr_011_5B30:
    ld hl, sp+$04
    nop
    add b
    db $FC
    db $FC
    nop
    nop
    add b
    db $FC
    db $FC
    ld bc, $8000
    db $FC
    db $FC
    ld [bc], a
    nop
    add b
    ld hl, sp+$00
    ld bc, $F800
    ld hl, sp+$00
    dec b
    add b
    ld hl, sp+$08
    ld bc, $F821
    stop
    dec h
    add b
    rst $30
    nop
    ld bc, $F700
    ld hl, sp+$00
    dec b
    add b
    or $00
    ld bc, $F600
    ld hl, sp+$00
    dec b
    add b
    rst $30
    ld [$2101], sp
    rst $30
    stop
    dec h
    add b
    or $08
    ld bc, $F621
    stop
    dec h
    add b
    nop
    db $FC
    ld bc, $F800
    db $FC
    nop
    nop
    add b
    nop
    db $FC
    inc bc
    nop
    ld hl, sp-$04
    ld [bc], a
    nop
    add b
    nop
    db $FC
    dec b
    nop
    ld hl, sp-$04
    inc b
    nop
    add b
    nop
    db $FC
    rlca
    nop
    ld hl, sp-$04
    ld b, $00
    add b
    nop
    db $FC
    rlca
    nop
    ld hl, sp-$04
    ld b, $00
    add b
    nop
    db $FC
    rlca
    nop
    ld hl, sp-$04
    ld b, $00
    add b
    nop
    db $FC
    rlca
    nop
    ld hl, sp-$04
    ld b, $00
    add b
    ld [$0700], sp
    cpl
    ld [$0608], sp
    cpl
    ld [$07F8], sp
    rrca
    ld [$06F0], sp
    rrca
    nop
    nop
    dec b
    cpl
    nop
    ld [$2F04], sp
    nop
    ld hl, sp+$05
    rrca
    nop
    ldh a, [rDIV]
    rrca
    ld hl, sp+$00
    inc bc
    cpl
    ld hl, sp+$08
    ld [bc], a
    cpl
    ld hl, sp+$10
    ld bc, $F82F
    ld hl, sp+$03
    rrca
    ld hl, sp-$10
    ld [bc], a
    rrca
    ld hl, sp-$18
    ld bc, $F00F
    nop
    nop
    cpl
    ldh a, [$F8]
    nop
    rrca
    add b
    ld hl, sp+$00
    inc bc
    cpl
    ld hl, sp-$08
    inc bc
    rrca
    nop
    nop
    ld a, [bc]
    cpl
    nop
    ld hl, sp+$0A
    rrca
    stop
    inc c
    cpl
    db $10
    ld hl, sp+$0C
    rrca
    ld [$0B00], sp
    cpl
    ld [$0BF8], sp
    rrca
    nop
    ldh a, [$09]
    rrca
    nop
    ld [$2F09], sp
    ld hl, sp+$08
    ld [$F82F], sp
    ldh a, [$08]
    rrca
    ldh a, [rP1]
    nop
    cpl
    ldh a, [$F8]
    nop
    rrca
    add b
    add sp, $00
    inc c
    ld l, a
    add sp, -$08
    inc c
    ld c, a
    nop
    nop
    ld de, $002F
    ld [$2F10], sp
    nop
    ld hl, sp+$11
    rrca
    nop
    ldh a, [rNR10]
    rrca
    ld hl, sp+$08
    ld c, $2F
    ld hl, sp-$10
    ld c, $0F
    ldh a, [rP1]
    dec c
    cpl
    ldh a, [$F8]
    dec c
    rrca
    ld hl, sp+$00
    rrca
    cpl
    ld hl, sp-$08
    rrca
    rrca
    ld [$0000], sp
    ld l, a
    ld [$00F8], sp
    ld c, a
    add b
    nop
    db $10
    daa
    cpl
    nop
    add sp, $27
    rrca
    ld hl, sp+$08
    dec d
    cpl
    ld hl, sp-$10
    dec d
    rrca
    nop
    ld [$2F12], sp
    nop
    ldh a, [rNR12]
    rrca
    ldh a, [rP1]
    inc d
    cpl
    ldh a, [$08]
    inc de
    cpl
    ldh a, [$F8]
    inc d
    rrca
    ldh a, [$F0]
    inc de
    rrca
    nop
    nop
    ld de, $002F
    ld hl, sp+$11
    rrca
    ld hl, sp+$00
    rrca
    cpl
    ld hl, sp-$08
    rrca
    rrca
    ld [$0000], sp
    ld l, a
    ld [$00F8], sp
    ld c, a
    add b
    add sp, $00
    inc hl
    ld l, a
    ldh a, [rP1]
    ld [hl+], a
    ld c, a
    ldh a, [$F8]
    ld hl, $104F
    nop
    inc hl
    cpl
    ld [$2200], sp
    rrca
    ld [$21F8], sp
    rrca
    ldh a, [$F0]
    jr nz, jr_011_5D17

    ld [$20F0], sp
    rrca
    ld hl, sp+$08
    rra
    ld c, a
    nop
    ld [$0F1F], sp
    nop
    nop
    ld e, $0F
    nop
    ld hl, sp+$1D
    rrca
    nop
    ldh a, [rNR32]
    rrca
    ld hl, sp+$00
    dec de
    rrca
    ld hl, sp-$08
    ld a, [de]
    rrca
    ld hl, sp-$10
    add hl, de
    rrca
    add b
    ldh a, [rP1]
    dec h
    rrca
    ldh a, [$F8]
    inc h
    rrca
    ld [$2A00], sp
    rrca
    ld [$29F8], sp
    rrca
    ld hl, sp-$18
    daa
    rrca
    nop
    ldh a, [$28]
    rrca
    nop
    add sp, $27
    rrca
    ld hl, sp-$10
    ld h, $0F
    ld hl, sp+$08
    rra
    ld c, a
    nop
    ld [$0F1F], sp
    nop
    nop

jr_011_5D17:
    ld e, $0F
    nop
    ld hl, sp+$1D
    rrca
    ld hl, sp+$00
    dec de
    rrca
    ld hl, sp-$08
    ld a, [de]
    rrca
    add b
    add sp, -$08
    inc hl
    ld c, a
    ldh a, [$F8]
    ld [hl+], a
    ld l, a
    ldh a, [rP1]
    ld hl, $106F
    ld hl, sp+$23
    rrca
    ld [$22F8], sp
    cpl
    ld [$2100], sp
    cpl
    ldh a, [$08]
    jr nz, @+$71

    ld [$2008], sp
    cpl
    ld hl, sp-$10
    rra
    ld l, a
    nop
    ldh a, [$1F]
    cpl
    nop
    ld hl, sp+$1E
    cpl
    nop
    nop
    dec e
    cpl
    nop
    ld [$2F1C], sp
    ld hl, sp-$08
    dec de
    cpl
    ld hl, sp+$00
    ld a, [de]
    cpl
    ld hl, sp+$08
    add hl, de
    cpl
    add b
    ldh a, [$F8]
    dec h
    cpl
    ldh a, [rP1]
    inc h
    cpl
    ld [$2AF8], sp
    cpl
    ld [$2900], sp
    cpl
    ld hl, sp+$10
    daa
    cpl
    nop
    ld [$2F28], sp
    nop
    db $10
    daa
    cpl
    ld hl, sp+$08
    ld h, $2F
    ld hl, sp-$10
    rra
    ld l, a
    nop
    ldh a, [$1F]
    cpl
    nop
    ld hl, sp+$1E
    cpl
    nop
    nop
    dec e
    cpl
    ld hl, sp-$08
    dec de
    cpl
    ld hl, sp+$00
    ld a, [de]
    cpl
    add b
    ldh a, [$F0]
    ld a, [de]
    ld c, a
    ldh a, [$E8]
    add hl, de
    ld c, b
    ld [$1AF0], sp
    rrca
    ld [$19E8], sp
    ld [$F0F8], sp
    ld d, $0F
    nop
    ldh a, [rNR23]
    rrca
    ld hl, sp+$01
    ld [hl], h
    add hl, bc
    ldh a, [rSB]
    ld [hl], c
    ld [$10F8], sp
    ld l, a
    rrca
    ld hl, sp+$18
    ld [hl], b
    rrca
    jp hl


    ld [$4F14], sp
    pop hl
    ld [$4F15], sp
    jr jr_011_5DDA

    dec d
    rrca
    db $10
    ld [$0F14], sp
    ldh a, [rNR10]

jr_011_5DDA:
    inc de
    ld c, a
    ld [$1310], sp
    rrca
    ld [$1208], sp
    rrca
    ld [$1100], sp
    rrca
    ld [$10F8], sp
    rrca
    nop
    jr jr_011_5DFD

    rrca
    nop
    db $10
    dec c
    rrca
    nop
    ld [$0F0C], sp
    nop
    nop
    dec bc
    rrca
    nop

jr_011_5DFD:
    ld hl, sp+$0A
    rrca
    ld hl, sp+$08
    ld b, $0F
    ld hl, sp+$00
    dec b
    rrca
    ld hl, sp-$08
    inc b
    rrca
    ldh a, [$08]
    ld [bc], a
    rrca
    ldh a, [rP1]
    ld bc, $F00F
    ld hl, sp+$00
    rrca
    add b
    ldh a, [$E9]
    ld hl, $F04F
    pop af
    ld [hl+], a
    ld c, a
    ld hl, sp-$0F
    ld e, $0F
    ld [$21E9], sp
    rrca
    ld [$22F1], sp
    rrca
    nop
    pop af
    jr nz, jr_011_5E40

    ldh a, [rSC]
    ld [hl], c
    ld [$02F8], sp
    ld [hl], h
    add hl, bc
    add sp, $09
    dec e
    ld c, a
    add sp, $01
    inc e

jr_011_5E40:
    ld c, a
    db $10
    add hl, bc
    dec e
    rrca
    db $10
    ld bc, $0F1C
    ld [$1B09], sp
    rrca
    ldh a, [$09]
    rla
    rrca
    ld hl, sp+$11
    ld l, a
    rrca
    ld hl, sp+$19
    ld [hl], b
    rrca
    ldh a, [rNR11]
    inc de
    ld c, a
    ld [$1311], sp
    rrca
    ld [$1101], sp
    rrca
    ld [$10F9], sp
    rrca
    nop
    add hl, de
    ld c, $0F
    nop
    ld de, $0F0D
    nop
    add hl, bc
    inc c
    rrca
    nop
    ld bc, $0F0B
    nop
    ld sp, hl
    ld a, [bc]
    rrca
    ld hl, sp+$09
    ld b, $0F
    ld hl, sp+$01
    dec b
    rrca
    ld hl, sp-$07
    inc b
    rrca
    ldh a, [rSB]
    ld bc, $F00F
    ld sp, hl
    nop
    rrca
    add b
    ld hl, sp-$0E
    jr z, @+$11

    ldh a, [$F2]
    dec hl
    ld c, a
    db $F4
    ld [$4F29], a
    ld [$2BF2], sp
    rrca
    inc b
    ld [$0F29], a
    nop
    ld a, [c]
    ld a, [hl+]
    rrca
    ld hl, sp+$03
    ld [hl], h
    add hl, bc
    ldh a, [$03]
    ld [hl], c
    ld [$0AF0], sp
    ld h, $0F
    add sp, $0A
    dec h
    ld c, a
    add sp, $02
    inc h
    ld c, a
    db $10
    ld a, [bc]
    dec h
    rrca
    db $10
    ld [bc], a
    inc h
    rrca
    ld [$230A], sp
    rrca
    ld hl, sp+$12
    ld l, a
    rrca
    ld hl, sp+$1A
    ld [hl], b
    rrca
    ldh a, [rNR12]
    inc de
    ld c, a
    ld [$1312], sp
    rrca
    ld [$1102], sp
    rrca
    ld [$10FA], sp
    rrca
    nop
    ld a, [de]
    ld c, $0F
    nop
    ld [de], a
    dec c
    rrca
    nop
    ld a, [bc]
    inc c
    rrca
    nop
    ld [bc], a
    dec bc
    rrca
    nop
    ld a, [$0F0A]
    ld hl, sp+$0A
    ld b, $0F
    ld hl, sp+$02
    dec b
    rrca
    ld hl, sp-$06
    inc b
    rrca
    ldh a, [rSC]
    ld bc, $F00F
    ld a, [$0F00]
    add b
    ldh a, [$F2]
    inc [hl]
    ld c, a
    ldh a, [$EA]
    inc sp
    ld c, a
    ld [$33EA], sp
    rrca
    ld [$34F2], sp
    rrca
    ld hl, sp-$16
    ld sp, $004F
    ld [$0F31], a
    ld hl, sp-$0E
    jr nc, jr_011_5F36

    nop
    ld a, [c]
    ld [hl-], a
    rrca
    ldh a, [$03]
    ld [hl], c
    ld [$03F8], sp
    ld [hl], h
    add hl, bc
    ldh a, [$0A]
    cpl

jr_011_5F36:
    rrca
    add sp, $0E
    ld l, $4F
    add sp, $06
    dec l
    ld c, a
    db $10
    ld c, $2E
    rrca
    db $10
    ld b, $2D
    rrca
    ld [$2C0A], sp
    rrca
    ld hl, sp+$12
    ld l, a
    rrca
    ld hl, sp+$1A
    ld [hl], b
    rrca
    ldh a, [rNR12]
    inc de
    ld c, a
    ld [$1312], sp
    rrca
    ld [$1102], sp
    rrca
    ld [$10FA], sp
    rrca
    nop
    ld a, [de]
    ld c, $0F
    nop
    ld [de], a
    dec c
    rrca
    nop
    ld a, [bc]
    inc c
    rrca
    nop
    ld [bc], a
    dec bc
    rrca
    nop
    ld a, [$0F0A]
    ld hl, sp+$0A
    ld b, $0F
    ld hl, sp+$02
    dec b
    rrca
    ld hl, sp-$06
    inc b
    rrca
    ldh a, [rSC]
    ld bc, $F00F
    ld a, [$0F00]
    add b
    push af
    jp hl


    ld [$024F], sp
    jp hl


    ld [$F00F], sp
    pop af
    rrca
    ld c, a
    ld [$0FF1], sp
    rrca
    ld hl, sp-$0F
    inc bc
    rrca
    nop
    pop af
    add hl, bc
    rrca
    ld hl, sp+$02
    ld [hl], h
    add hl, bc
    ldh a, [rSC]
    ld [hl], c
    ld [$09F0], sp
    cpl
    rrca
    add sp, $0E
    scf
    ld c, a
    add sp, $06
    ld [hl], $4F
    db $10
    ld c, $37
    rrca
    db $10
    ld b, $36
    rrca
    ld [$3509], sp
    rrca
    ld hl, sp+$11
    ld l, a
    rrca
    ld hl, sp+$19
    ld [hl], b
    rrca
    ldh a, [rNR11]
    inc de
    ld c, a
    ld [$1311], sp
    rrca
    ld [$1101], sp
    rrca
    ld [$10F9], sp
    rrca
    nop
    add hl, de
    ld c, $0F
    nop
    ld de, $0F0D
    nop
    add hl, bc
    inc c
    rrca
    nop
    ld bc, $0F0B
    nop
    ld sp, hl
    ld a, [bc]
    rrca
    ld hl, sp+$09
    ld b, $0F
    ld hl, sp+$01
    dec b
    rrca
    ld hl, sp-$07
    inc b
    rrca
    ldh a, [rSB]
    ld bc, $F00F
    ld sp, hl
    nop
    rrca
    add b
    ldh a, [$08]
    ld a, [de]
    ld l, a
    ldh a, [rNR10]
    add hl, de
    ld l, b
    ld [$1A08], sp
    cpl
    ld [$1910], sp
    jr z, @-$06

    ld [$2F16], sp
    nop
    ld [$2F18], sp
    ld hl, sp-$09
    ld [hl], h
    add hl, hl
    ldh a, [$F7]
    ld [hl], c
    jr z, @-$06

    add sp, $6F
    cpl
    ld hl, sp-$20
    ld [hl], b
    cpl
    add sp, -$10
    inc d
    ld l, a
    ldh [$F0], a
    dec d
    ld l, a
    jr @-$0E

    dec d
    cpl
    db $10
    ldh a, [rNR14]
    cpl
    ldh a, [$E8]
    inc de
    ld l, a
    ld [$13E8], sp
    cpl
    ld [$12F0], sp
    cpl
    ld [$11F8], sp
    cpl
    ld [$1000], sp
    cpl
    nop
    ldh [$0E], a
    cpl
    nop
    add sp, $0D
    cpl
    nop
    ldh a, [$0C]
    cpl
    nop
    ld hl, sp+$0B
    cpl
    nop
    nop
    ld a, [bc]
    cpl
    ld hl, sp-$10
    ld b, $2F
    ld hl, sp-$08
    dec b
    cpl
    ld hl, sp+$00
    inc b
    cpl
    ldh a, [$F0]
    ld [bc], a
    cpl
    ldh a, [$F8]
    ld bc, $F02F
    nop
    nop
    cpl
    add b
    ldh a, [rTAC]
    ld [hl+], a
    ld l, a
    ldh a, [rIF]
    ld hl, $086F
    rlca
    ld [hl+], a
    cpl
    ld [$210F], sp
    cpl
    ld hl, sp+$07
    ld e, $2F
    nop

jr_011_6093:
    rlca
    jr nz, jr_011_60C5

    ldh a, [$F6]
    ld [hl], c
    jr z, jr_011_6093

    or $74
    add hl, hl
    add sp, -$11
    dec e
    ld l, a
    add sp, -$09
    inc e
    ld l, a
    db $10
    rst $28
    dec e
    cpl
    db $10
    rst $30
    inc e
    cpl
    ld [$1BEF], sp
    cpl
    ldh a, [$EF]
    rla
    cpl
    ld hl, sp-$19
    ld l, a
    cpl
    ld hl, sp-$21
    ld [hl], b
    cpl
    ldh a, [$E7]
    inc de
    ld l, a
    ld [$13E7], sp

jr_011_60C5:
    cpl
    ld [$11F7], sp
    cpl
    ld [$10FF], sp
    cpl
    nop
    rst $18
    ld c, $2F
    nop
    rst $20
    dec c
    cpl
    nop
    rst $28
    inc c
    cpl
    nop
    rst $30
    dec bc
    cpl
    nop
    rst $38
    ld a, [bc]
    cpl
    ld hl, sp-$11
    ld b, $2F
    ld hl, sp-$09
    dec b
    cpl
    ld hl, sp-$01
    inc b
    cpl
    ldh a, [$F7]
    ld bc, $F02F
    rst $38
    nop
    cpl
    add b
    ldh a, [rTMA]
    dec hl
    ld l, a
    ld [$2B06], sp
    cpl
    inc b
    ld c, $29
    cpl
    db $F4
    ld c, $29
    ld l, a
    ld hl, sp+$06
    jr z, jr_011_613A

    nop
    ld b, $2A
    cpl
    ld hl, sp-$0B
    ld [hl], h
    add hl, hl
    ldh a, [$F5]
    ld [hl], c
    jr z, @-$0E

    xor $26
    cpl
    add sp, -$12
    dec h
    ld l, a
    add sp, -$0A
    inc h
    ld l, a
    db $10
    xor $25
    cpl
    db $10
    or $24
    cpl
    ld [$23EE], sp
    cpl
    ld hl, sp-$1A
    ld l, a
    cpl
    ld hl, sp-$22
    ld [hl], b
    cpl
    ldh a, [$E6]
    inc de

jr_011_613A:
    ld l, a
    ld [$13E6], sp
    cpl
    ld [$11F6], sp
    cpl
    ld [$10FE], sp
    cpl
    nop
    sbc $0E
    cpl
    nop
    and $0D
    cpl
    nop
    xor $0C
    cpl
    nop
    or $0B
    cpl
    nop
    cp $0A
    cpl
    ld hl, sp-$12
    ld b, $2F
    ld hl, sp-$0A
    dec b
    cpl
    ld hl, sp-$02
    inc b
    cpl
    ldh a, [$F6]
    ld bc, $F02F
    cp $00
    cpl
    add b
    ldh a, [rTMA]
    inc [hl]
    ld l, a
    ldh a, [$0E]
    inc sp
    ld l, a
    ld [$3406], sp
    cpl
    ld [$330E], sp
    cpl
    ld hl, sp+$0E
    ld sp, $F86F
    ld b, $30
    cpl
    nop
    ld b, $32
    cpl
    nop

jr_011_618D:
    ld c, $31
    cpl
    ldh a, [$F5]
    ld [hl], c
    jr z, jr_011_618D

    push af
    ld [hl], h
    add hl, hl
    ldh a, [$EE]
    cpl
    cpl
    add sp, -$16
    ld l, $6F
    add sp, -$0E
    dec l
    ld l, a
    db $10
    ld [$2F2E], a
    db $10
    ld a, [c]
    dec l
    cpl
    ld [$2CEE], sp
    cpl
    ld hl, sp-$1A
    ld l, a
    cpl
    ld hl, sp-$22
    ld [hl], b
    cpl
    ldh a, [$E6]
    inc de
    ld l, a
    ld [$13E6], sp
    cpl
    ld [$11F6], sp
    cpl
    ld [$10FE], sp
    cpl
    nop
    sbc $0E
    cpl
    nop
    and $0D
    cpl
    nop
    xor $0C
    cpl
    nop
    or $0B
    cpl
    nop
    cp $0A
    cpl
    ld hl, sp-$12
    ld b, $2F
    ld hl, sp-$0A
    dec b
    cpl
    ld hl, sp-$02
    inc b
    cpl
    ldh a, [$F6]
    ld bc, $F02F
    cp $00
    cpl
    add b
    ld [$0F07], sp
    cpl
    ldh a, [rTAC]
    rrca
    ld l, a
    inc bc
    rrca
    ld [$F52F], sp
    rrca
    ld [$006F], sp

jr_011_6202:
    rlca
    add hl, bc
    cpl
    ld hl, sp+$07
    inc bc
    cpl
    ld hl, sp-$0A
    ld [hl], h
    add hl, hl
    ldh a, [$F6]
    ld [hl], c
    jr z, jr_011_6202

    rst $28
    cpl
    cpl
    add sp, -$16
    scf
    ld l, a
    add sp, -$0E
    ld [hl], $6F
    db $10
    ld [$2F37], a
    db $10
    ld a, [c]
    ld [hl], $2F
    ld [$35EF], sp
    cpl
    ld hl, sp-$19
    ld l, a
    cpl
    ld hl, sp-$21
    ld [hl], b
    cpl
    ldh a, [$E7]
    inc de
    ld l, a
    ld [$13E7], sp
    cpl
    ld [$11F7], sp
    cpl
    ld [$10FF], sp
    cpl
    nop
    rst $18
    ld c, $2F
    nop
    rst $20
    dec c
    cpl
    nop
    rst $28
    inc c
    cpl
    nop
    rst $30
    dec bc
    cpl
    nop
    rst $38
    ld a, [bc]
    cpl
    ld hl, sp-$11
    ld b, $2F
    ld hl, sp-$09
    dec b
    cpl
    ld hl, sp-$01
    inc b
    cpl
    ldh a, [$F7]
    ld bc, $F02F
    rst $38
    nop
    cpl
    add b
    db $10
    ld [$084B], sp
    db $10
    ldh a, [rWX]
    jr z, @+$0A

    ldh a, [rWY]
    cpl
    ld [$49F8], sp
    cpl
    ld [$4A08], sp
    rrca
    ld [$4900], sp
    rrca
    di
    db $FC
    ld [hl], l
    add hl, bc
    db $EB
    db $FC
    ld [hl], e
    ld [$F8F8], sp
    ccf
    cpl
    ld hl, sp+$00
    ccf
    rrca
    nop
    ldh a, [rSCY]
    cpl
    nop
    ld hl, sp+$41
    cpl
    nop
    ld [$0F42], sp
    nop
    nop
    ld b, c
    rrca
    ld hl, sp-$10
    ld b, b
    cpl
    ld hl, sp+$08
    ld b, b
    rrca
    ldh a, [$E0]
    ld a, $2F
    ldh a, [$E8]
    dec a
    cpl
    ldh a, [$F0]
    inc a
    cpl
    ldh a, [$F8]
    dec sp
    cpl
    ldh a, [rNR23]
    ld a, $0F
    ldh a, [rNR10]
    dec a
    rrca
    ldh a, [$08]
    inc a
    rrca
    ldh a, [rP1]
    dec sp
    rrca
    ldh [$F8], a
    jr c, @+$31

    ldh [rP1], a
    jr c, jr_011_62E1

    add sp, -$10
    ld a, [hl-]
    cpl
    add sp, -$08
    add hl, sp
    cpl
    add sp, $08
    ld a, [hl-]
    rrca
    add sp, $00
    add hl, sp

jr_011_62E1:
    rrca
    add b
    rlca
    ld hl, sp+$4F
    cpl
    rlca
    ldh a, [$50]
    cpl
    rrca
    ldh a, [rHDMA1]
    cpl
    rrca
    ld [$0F51], sp
    rlca
    ld [$0F50], sp
    rlca
    nop
    ld c, a
    rrca
    ld [$73FC], a
    ld [$FCF2], sp
    ld [hl], l
    add hl, bc
    rst $28
    add sp, $47
    cpl
    rst $28
    ldh a, [rDMA]
    cpl
    rst $30
    add sp, $48
    cpl
    rst $30
    db $10
    ld c, b
    rrca
    rst $28
    db $10
    ld b, a
    rrca
    rst $28
    ld [$0F46], sp
    rst $30
    ld hl, sp+$3F
    cpl
    rst $30
    nop
    ccf
    rrca
    rst $38
    ldh a, [rSCY]
    cpl
    rst $38
    ld hl, sp+$41
    cpl
    rst $38
    ld [$0F42], sp
    rst $38
    nop
    ld b, c
    rrca
    rst $30
    ldh a, [rLCDC]
    cpl
    rst $30
    ld [$0F40], sp
    rst $28
    ld hl, sp+$3B
    cpl
    rst $28
    nop
    dec sp
    rrca
    rst $18
    ld hl, sp+$38
    cpl
    rst $18
    nop
    jr c, jr_011_635A

    rst $20
    ldh a, [$3A]
    cpl
    rst $20
    ld hl, sp+$39
    cpl
    rst $20
    ld [$0F3A], sp
    rst $20
    nop
    add hl, sp

jr_011_635A:
    rrca
    add b
    ld c, $F4
    ld d, a
    cpl
    ld c, $04
    ld d, a
    rrca
    ld b, $F0
    ld d, [hl]
    cpl
    ld b, $F8
    ld d, l
    cpl
    ld b, $08
    ld d, [hl]
    rrca
    ld b, $00
    ld d, l
    rrca
    pop af
    db $FC
    ld [hl], l
    add hl, bc
    jp hl


    db $FC
    ld [hl], e
    ld [$E8F6], sp
    ld c, [hl]
    cpl
    or $10
    ld c, [hl]
    rrca
    xor $E8
    ld c, l
    cpl
    xor $F0
    ld c, h
    cpl
    xor $10
    ld c, l
    rrca
    xor $08
    ld c, h
    rrca
    or $F8
    ccf
    cpl
    or $00
    ccf
    rrca
    cp $F0
    ld b, d
    cpl
    cp $F8
    ld b, c
    cpl
    cp $08
    ld b, d
    rrca
    cp $00
    ld b, c
    rrca
    or $F0
    ld b, b
    cpl
    or $08
    ld b, b
    rrca
    xor $F8
    dec sp
    cpl
    xor $00
    dec sp
    rrca
    sbc $F8
    jr c, jr_011_63EF

    sbc $00
    jr c, jr_011_63D3

    rst $20
    ldh a, [$3A]
    cpl
    and $F8
    add hl, sp
    cpl
    rst $20
    ld [$0F3A], sp
    and $00
    add hl, sp

jr_011_63D3:
    rrca
    add b
    ld c, $F0
    ld e, l
    cpl
    ld c, $F8
    ld e, h
    cpl
    ld c, $08
    ld e, l
    rrca
    ld c, $00
    ld e, h
    rrca
    ld b, $F0
    ld e, e
    cpl
    ld b, $F8
    ld e, d
    cpl
    ld b, $08

jr_011_63EF:
    ld e, e
    rrca
    ld b, $00
    ld e, d
    rrca
    jp hl


    db $FC
    ld [hl], e
    ld [$FCF1], sp
    ld [hl], l
    add hl, bc
    di
    add sp, $54
    cpl
    di
    db $10
    ld d, h
    rrca
    db $EB
    add sp, $53
    cpl
    db $EB
    db $10
    ld d, e
    rrca
    xor $F0
    ld d, d
    cpl
    xor $08
    ld d, d
    rrca
    or $F8
    ccf
    cpl
    or $00
    ccf
    rrca
    cp $F0
    ld b, d
    cpl
    cp $F8
    ld b, c
    cpl
    cp $08
    ld b, d
    rrca
    cp $00
    ld b, c
    rrca
    or $F0
    ld b, b
    cpl
    or $08
    ld b, b
    rrca
    xor $F8
    dec sp
    cpl
    xor $00
    dec sp
    rrca
    sbc $F8
    jr c, jr_011_6470

    sbc $00
    jr c, jr_011_6454

    and $F0
    ld a, [hl-]
    cpl
    and $F8
    add hl, sp
    cpl
    and $08
    ld a, [hl-]
    rrca
    and $00
    add hl, sp

jr_011_6454:
    rrca
    add b
    rrca
    push af
    ld b, l
    cpl
    rrca
    inc bc
    ld b, l
    rrca
    rlca
    ldh a, [rLY]
    cpl
    rlca
    ld hl, sp+$43
    cpl
    rlca
    ld [$0F44], sp
    rlca
    nop
    ld b, e
    rrca
    ld a, [c]
    db $FC

jr_011_6470:
    ld [hl], l
    add hl, bc
    ld [$73FC], a
    ld [$E8E9], sp
    ld e, b
    cpl
    jp hl


    db $10
    ld e, b
    rrca
    pop af
    add sp, $59
    cpl
    pop af
    db $10
    ld e, c
    rrca
    rst $28
    ldh a, [rHDMA2]
    cpl
    rst $28
    ld [$0F52], sp
    rst $30
    ld hl, sp+$3F
    cpl
    rst $30
    nop
    ccf
    rrca
    rst $38
    ldh a, [rSCY]
    cpl
    rst $38
    ld hl, sp+$41
    cpl
    rst $38
    ld [$0F42], sp
    rst $38
    nop
    ld b, c
    rrca
    rst $30
    ldh a, [rLCDC]
    cpl
    rst $30
    ld [$0F40], sp
    rst $28
    ld hl, sp+$3B
    cpl
    rst $28
    nop
    dec sp
    rrca
    rst $18
    ld hl, sp+$38
    cpl
    rst $18
    nop
    jr c, jr_011_64CD

    rst $20
    ldh a, [$3A]
    cpl
    rst $20
    ld hl, sp+$39
    cpl
    rst $20
    ld [$0F3A], sp
    rst $20
    nop
    add hl, sp

jr_011_64CD:
    rrca
    add b
    add sp, -$10
    ld c, e
    ld l, b
    add sp, $08
    ld c, e
    ld c, b
    ldh a, [$F0]
    ld h, l
    cpl
    ldh a, [$F8]
    ld h, h
    cpl
    ldh a, [$08]
    ld h, l
    rrca
    ldh a, [rP1]
    ld h, h
    rrca
    push af
    db $FC
    ld [hl], d
    ld [$FCFD], sp
    ld [hl], l
    add hl, bc
    ld hl, sp-$10
    ld h, b
    cpl
    ld hl, sp+$08
    ld h, b
    rrca
    ld [$66F0], sp
    cpl
    ld [$6608], sp
    rrca
    db $10
    ldh a, [$63]
    jr z, jr_011_6514

    ld hl, sp+$62
    cpl
    db $10
    ld [$0863], sp
    stop
    ld h, d
    rrca
    nop
    nop
    ccf
    rrca
    nop

jr_011_6514:
    ld hl, sp+$3F
    cpl
    ld [$41F8], sp
    cpl
    ld [$4100], sp
    rrca
    nop
    ldh a, [rLCDC]
    cpl
    nop
    ld [$0F40], sp
    ld [$3EE0], sp
    ld l, a
    ld [$3DE8], sp
    ld l, a
    ld hl, sp-$08
    dec sp
    cpl
    ld [$3E18], sp
    ld c, a
    ld [$3D10], sp
    ld c, a
    ld hl, sp+$00
    dec sp
    rrca
    jr @-$06

    jr c, @+$71

    jr jr_011_6545

jr_011_6545:
    jr c, jr_011_6596

    add b
    jp hl


    ldh a, [rHDMA1]
    ld l, a
    jp hl


    ld [$4F51], sp
    pop af
    ldh a, [rBCPS]
    cpl
    pop af
    ld hl, sp+$67
    cpl
    pop af
    ld [$0F68], sp
    pop af
    nop
    ld h, a
    rrca
    cp $FC
    ld [hl], l
    add hl, bc
    or $FC
    ld [hl], d
    ld [$F009], sp
    ld h, c
    cpl
    add hl, bc
    ld [$0F61], sp
    ld de, $63F0
    jr z, @+$13

    ld hl, sp+$62
    cpl
    ld de, $6308
    ld [$0011], sp
    ld h, d
    rrca
    ld sp, hl
    ldh a, [$60]
    cpl
    ld sp, hl
    ld [$0F60], sp
    add hl, bc
    add sp, $47
    ld l, a
    ld bc, $48E8
    ld l, a
    ld bc, $4810
    ld c, a
    add hl, bc
    db $10

jr_011_6596:
    ld b, a
    ld c, a
    ld bc, $3FF8
    cpl
    ld bc, $3F00
    rrca
    add hl, bc
    ld hl, sp+$41
    cpl
    add hl, bc
    nop
    ld b, c
    rrca
    ld bc, $40F0
    cpl
    ld bc, $4008
    rrca
    ld sp, hl
    ld hl, sp+$3B
    cpl
    ld sp, hl
    nop
    dec sp
    rrca
    add hl, de
    ld hl, sp+$38
    ld l, a
    add hl, de
    nop
    jr c, jr_011_660F

    add b
    ld a, [c]
    ldh a, [rOCPD]
    cpl
    ld a, [c]
    ld hl, sp+$6A
    cpl
    ld a, [c]
    ld [$0F6B], sp
    ld a, [c]
    nop
    ld l, d
    rrca
    ld [$57F4], a
    ld l, a
    ld [$5704], a
    ld c, a
    rst $30
    db $FC
    ld [hl], d
    ld [$FCFF], sp
    ld [hl], l
    add hl, bc
    ld a, [$60F0]
    cpl
    ld a, [$6008]
    rrca
    ld a, [bc]
    ldh a, [$61]
    cpl
    ld a, [bc]
    ld [$0F61], sp
    ld [de], a
    ldh a, [$63]
    cpl
    ld [de], a
    ld hl, sp+$62
    cpl
    ld [de], a
    ld [$0863], sp
    ld [de], a
    nop
    ld h, d
    rrca
    ld [bc], a
    add sp, $4E
    ld l, a
    ld [bc], a
    db $10
    ld c, [hl]
    ld c, a
    ld a, [bc]
    add sp, $4D
    ld l, a
    ld a, [bc]
    db $10

jr_011_660F:
    ld c, l
    ld c, a
    ld [bc], a
    ld hl, sp+$3F
    cpl
    ld [bc], a
    nop
    ccf
    rrca
    ld a, [bc]
    ld hl, sp+$41
    cpl
    ld a, [bc]
    nop
    ld b, c
    rrca
    ld [bc], a
    ldh a, [rLCDC]
    cpl
    ld [bc], a
    ld [$0F40], sp
    ld a, [$3BF8]
    cpl
    ld a, [$3B00]
    rrca
    ld a, [de]
    ld hl, sp+$38
    ld l, a
    ld a, [de]
    nop
    jr c, jr_011_6688

    add b
    ld [$5DF0], a
    ld l, a
    ld [$5CF8], a
    ld l, a
    ld [$5D08], a
    ld c, a
    ld [$5C00], a
    ld c, a
    ld a, [c]
    ldh a, [$6E]
    cpl
    ld a, [c]
    ld hl, sp+$6D
    cpl
    ld a, [c]
    ld [$0F6E], sp
    ld a, [c]
    nop
    ld l, l
    rrca
    rst $38
    db $FC
    ld [hl], l
    add hl, bc
    rst $30
    db $FC
    ld [hl], d
    ld [$F80A], sp
    ld b, c
    cpl
    ld a, [bc]
    nop
    ld b, c
    rrca
    ld a, [$60F0]
    cpl
    ld a, [$6008]
    rrca
    ld a, [bc]
    ldh a, [rBCPD]
    cpl
    ld a, [bc]
    ld [$0F69], sp
    ld [de], a
    ldh a, [$63]
    jr z, jr_011_6691

    ld hl, sp+$62
    cpl
    ld [de], a
    ld [$0863], sp
    ld [de], a
    nop

jr_011_6688:
    ld h, d
    rrca
    dec b
    add sp, $54
    ld l, a
    dec b
    db $10
    ld d, h

jr_011_6691:
    ld c, a
    dec c
    add sp, $53
    ld l, a
    dec c
    db $10
    ld d, e
    ld c, a
    ld [bc], a
    ld hl, sp+$3F
    cpl
    ld [bc], a
    nop
    ccf
    rrca
    ld [bc], a
    ldh a, [rLCDC]
    cpl
    ld [bc], a
    ld [$0F40], sp
    ld a, [$3BF8]
    cpl
    ld a, [$3B00]
    rrca
    ld a, [de]
    ld hl, sp+$38
    ld l, a
    ld a, [de]
    nop
    jr c, jr_011_6709

    add b
    jp hl


    push af
    ld b, l
    ld l, a
    jp hl


    inc bc
    ld b, l
    ld c, a
    pop af
    ldh a, [$5F]
    cpl
    pop af
    ld hl, sp+$5E
    cpl
    pop af
    ld [$0F5F], sp
    pop af
    nop
    ld e, [hl]
    rrca
    or $FC
    ld [hl], d
    ld [$FCFE], sp
    ld [hl], l
    add hl, bc
    ld sp, hl
    ldh a, [$60]
    cpl
    ld sp, hl
    ld [$0F60], sp
    add hl, bc
    ldh a, [$61]
    cpl
    add hl, bc
    ld [$0F61], sp
    ld de, $63F0
    cpl
    ld de, $62F8
    cpl
    ld de, $6308
    rrca
    ld de, $6200
    rrca
    rrca
    add sp, $58
    ld l, a
    rrca
    db $10
    ld e, b
    ld c, a
    rlca
    add sp, $59
    ld l, a
    rlca
    db $10

jr_011_6709:
    ld e, c
    ld c, a
    ld bc, $3FF8
    cpl
    ld bc, $3F00
    rrca
    add hl, bc
    ld hl, sp+$41
    cpl
    add hl, bc
    nop
    ld b, c
    rrca
    ld bc, $40F0
    cpl
    ld bc, $4008
    rrca
    ld sp, hl
    ld hl, sp+$3B
    cpl
    ld sp, hl
    nop
    dec sp
    rrca
    add hl, de
    ld hl, sp+$38
    ld l, a
    add hl, de
    nop
    jr c, jr_011_6782

    add b
    nop
    db $FC
    ld [$0000], sp
    nop
    rlca
    ld [bc], a
    nop
    ld hl, sp+$06
    ld [bc], a
    ld hl, sp+$00
    ld [bc], a
    ld hl, $F8F8
    ld [bc], a
    ld bc, $00F0
    ld bc, $F000
    ld hl, sp+$00
    nop
    add b
    ldh a, [rP1]
    inc b
    nop
    ldh a, [$F8]
    inc bc
    nop
    ld hl, sp+$00
    dec b
    ld hl, $F8F8
    dec b
    ld bc, $FC00
    ld [$0000], sp
    nop
    rlca
    ld [bc], a
    nop
    ld hl, sp+$06
    ld [bc], a
    add b
    ld [$3308], sp
    rlca
    ld [$3200], sp
    rlca
    ld [$31F8], sp
    rlca
    ld [$30F0], sp
    rlca
    nop
    ld [$0723], sp

jr_011_6782:
    nop
    nop
    ld [hl+], a
    rlca
    nop
    ld hl, sp+$21
    rlca
    nop
    ldh a, [rNR41]
    rlca
    ld hl, sp+$08
    inc de
    rlca
    ld hl, sp+$00
    ld [de], a
    rlca
    ld hl, sp-$08
    ld de, $F807
    ldh a, [rNR10]
    rlca
    ldh a, [$08]
    inc bc
    inc b
    ldh a, [rP1]
    ld [bc], a
    inc b
    ldh a, [$F8]
    ld bc, $F007
    ldh a, [rP1]
    rlca
    add b
    ld [$3708], sp
    rlca
    ld [$3600], sp
    rlca
    ld [$35F8], sp
    rlca
    ld [$34F0], sp
    rlca
    nop
    ld [$0727], sp
    nop
    nop
    ld h, $07
    nop
    ld hl, sp+$25
    rlca
    nop
    ldh a, [rNR50]
    rlca
    ld hl, sp+$08
    rla
    rlca
    ld hl, sp+$00
    ld d, $07
    ld hl, sp-$08
    dec d
    rlca
    ld hl, sp-$10
    inc d
    rlca
    ldh a, [$08]
    rlca
    inc b
    ldh a, [rP1]
    ld b, $07
    ldh a, [$F8]
    dec b
    rlca
    ldh a, [$F0]
    inc b
    rlca
    add b
    ld [$3B08], sp
    inc b
    ld [$3A00], sp
    rlca
    ld [$39F8], sp
    rlca
    ld [$38F0], sp
    rlca
    nop
    ld [$042B], sp
    nop
    nop
    ld a, [hl+]
    rlca
    nop
    ld hl, sp+$29
    rlca
    nop
    ldh a, [$28]
    rlca
    ld hl, sp+$08
    dec de
    inc b
    ld hl, sp+$00
    ld a, [de]
    rlca
    ld hl, sp-$08
    add hl, de
    rlca
    ld hl, sp-$10
    jr jr_011_6827

    ldh a, [$08]
    dec bc
    rlca
    ldh a, [rP1]
    ld a, [bc]

jr_011_6827:
    rlca
    ldh a, [$F8]
    add hl, bc
    rlca
    ldh a, [$F0]
    ld [$8007], sp
    ld [$3F08], sp
    inc b
    ld [$3E00], sp
    rlca
    ld [$3DF8], sp
    rlca
    ld [$3CF0], sp
    rlca
    nop
    ld [$072F], sp
    nop
    nop
    ld l, $07
    nop
    ld hl, sp+$2D
    rlca
    nop
    ldh a, [$2C]
    rlca
    ld hl, sp+$08
    rra
    rlca
    ld hl, sp+$00
    ld e, $07
    ld hl, sp-$08
    dec e
    rlca
    ld hl, sp-$10
    inc e
    rlca
    ldh a, [$08]
    rrca
    rlca
    ldh a, [rP1]
    ld c, $07
    ldh a, [$F8]
    dec c
    rlca
    ldh a, [$F0]
    inc c
    rlca
    add b
    ldh a, [$F0]
    inc sp
    ld h, a
    ldh a, [$F8]
    ld [hl-], a
    ld h, a
    ldh a, [rP1]
    ld sp, $F067
    ld [$6730], sp
    ld hl, sp-$10
    inc hl
    ld h, a
    ld hl, sp-$08
    ld [hl+], a
    ld h, a
    ld hl, sp+$00
    ld hl, $F867
    ld [$6720], sp
    nop
    ldh a, [rNR13]
    ld h, a
    nop
    ld hl, sp+$12
    ld h, a
    nop
    nop
    ld de, $0067
    ld [$6710], sp
    ld [$03F0], sp
    ld h, h
    ld [$02F8], sp
    ld h, h
    ld [$0100], sp
    ld h, h
    ld [$0008], sp
    ld h, a
    add b
    ldh a, [$F0]
    scf
    ld h, a
    ldh a, [$F8]
    ld [hl], $67
    ldh a, [rP1]
    dec [hl]
    ld h, a
    ldh a, [$08]
    inc [hl]
    ld h, a
    ld hl, sp-$10
    daa
    ld h, a
    ld hl, sp-$08
    ld h, $67
    ld hl, sp+$00
    dec h
    ld h, a
    ld hl, sp+$08
    inc h
    ld h, a
    nop
    ldh a, [rNR22]
    ld h, a
    nop
    ld hl, sp+$16
    ld h, a
    nop
    nop
    dec d
    ld h, a
    nop
    ld [$6714], sp
    ld [$07F0], sp
    ld h, h
    ld [$06F8], sp
    ld h, a
    ld [$0500], sp
    ld h, a
    ld [$0408], sp
    ld h, a
    add b
    ldh a, [$F0]
    dec sp
    ld h, h
    ldh a, [$F8]
    ld a, [hl-]
    ld h, a
    ldh a, [rP1]
    add hl, sp
    ld h, a
    ldh a, [$08]
    jr c, @+$69

    ld hl, sp-$10
    dec hl
    ld h, h
    ld hl, sp-$08
    ld a, [hl+]
    ld h, a
    ld hl, sp+$00
    add hl, hl
    ld h, a
    ld hl, sp+$08
    jr z, jr_011_697B

    nop
    ldh a, [rNR31]
    ld h, h
    nop
    ld hl, sp+$1A
    ld h, a
    nop
    nop
    add hl, de
    ld h, a
    nop
    ld [$6718], sp
    ld [$0BF0], sp
    ld h, a
    ld [$0AF8], sp
    ld h, a
    ld [$0900], sp
    ld h, a
    ld [$0808], sp
    ld h, a
    add b
    ldh a, [$F0]
    ccf
    ld h, h
    ldh a, [$F8]
    ld a, $67
    ldh a, [rP1]
    dec a
    ld h, a
    ldh a, [$08]
    inc a
    ld h, a
    ld hl, sp-$10
    cpl
    ld h, h
    ld hl, sp-$08
    ld l, $67
    ld hl, sp+$00
    dec l
    ld h, a
    ld hl, sp+$08
    inc l
    ld h, a
    nop
    ldh a, [$1F]
    ld h, a
    nop
    ld hl, sp+$1E
    ld h, a
    nop
    nop
    dec e
    ld h, a
    nop
    ld [$671C], sp
    ld [$0FF0], sp
    ld h, a
    ld [$0EF8], sp
    ld h, a
    ld [$0D00], sp
    ld h, a
    ld [$0C08], sp
    ld h, a
    add b
    nop
    nop
    inc bc
    ld b, $00

jr_011_697B:
    ld hl, sp+$02
    ld b, $F8
    nop
    ld bc, $F806
    ld hl, sp+$00
    ld b, $80
    nop
    nop
    rlca
    ld b, $00
    ld hl, sp+$06
    ld b, $F8
    nop
    dec b
    ld b, $F8
    ld hl, sp+$04
    ld b, $80
    nop
    nop
    dec bc
    ld b, $00
    ld hl, sp+$0A
    ld b, $F8
    nop
    add hl, bc
    ld b, $F8
    ld hl, sp+$08
    ld b, $80
    nop
    nop
    rrca
    ld b, $00
    ld hl, sp+$0E
    ld b, $F8
    nop
    dec c
    ld b, $F8
    ld hl, sp+$0C
    ld b, $80
    ld hl, sp-$08
    inc bc
    ld h, [hl]
    ld hl, sp+$00
    ld [bc], a
    ld h, [hl]
    nop
    ld hl, sp+$01
    ld h, [hl]
    nop
    nop
    nop
    ld h, [hl]
    add b
    ld hl, sp-$08
    rlca
    ld h, [hl]
    ld hl, sp+$00
    ld b, $66
    nop
    ld hl, sp+$05
    ld h, [hl]
    nop
    nop
    inc b
    ld h, [hl]
    add b
    ld hl, sp-$08
    dec bc
    ld h, [hl]
    ld hl, sp+$00
    ld a, [bc]
    ld h, [hl]
    nop
    ld hl, sp+$09
    ld h, [hl]
    nop
    nop
    ld [$8066], sp
    ld hl, sp-$08
    rrca
    ld h, [hl]
    ld hl, sp+$00
    ld c, $66
    nop
    ld hl, sp+$0D
    ld h, [hl]
    nop
    nop
    inc c
    ld h, [hl]
    add b
    nop

jr_011_69FF:
    ld hl, sp+$03
    jr nz, jr_011_6A03

jr_011_6A03:
    nop
    ld [bc], a
    jr nz, jr_011_69FF

    ld hl, sp+$01
    jr nz, jr_011_6A03

    nop
    nop

jr_011_6A0D:
    jr nz, @-$7E

    nop
    ld hl, sp+$07
    jr nz, jr_011_6A14

jr_011_6A14:
    nop
    ld b, $20
    ld hl, sp-$08
    dec b
    jr nz, jr_011_6A14

    nop
    inc b
    jr nz, @-$7E

    nop
    nop
    inc bc
    nop
    nop
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    ld bc, $F800
    ld hl, sp+$00
    nop
    add b
    nop
    nop
    rlca
    nop
    nop
    ld hl, sp+$06
    nop
    ld hl, sp+$00
    dec b
    nop
    ld hl, sp-$08
    inc b

jr_011_6A40:
    nop
    add b
    nop
    cp $11
    jr nz, jr_011_6A47

jr_011_6A47:
    ld a, [$0011]
    push af
    ld hl, sp+$0B
    jr nz, @-$09

    nop
    ld a, [bc]
    jr nz, jr_011_6A40

    ld hl, sp+$09
    jr nz, @-$11

    nop
    ld [$8020], sp
    nop
    cp $12

jr_011_6A5E:
    jr nz, jr_011_6A60

jr_011_6A60:
    ld a, [$0012]
    xor $00
    dec c
    jr nz, jr_011_6A5E

    ld hl, sp+$0F
    jr nz, @-$08

    nop
    ld c, $20
    xor $F8
    inc c
    jr nz, @-$7E

jr_011_6A74:
    nop
    cp $13
    jr nz, jr_011_6A79

jr_011_6A79:
    ld a, [$0013]
    rst $28
    ld hl, sp+$05
    jr nz, @-$07

    ld hl, sp+$07
    jr nz, jr_011_6A74

    nop
    dec c
    jr nz, @-$07

    nop
    db $10
    jr nz, jr_011_6A0D

    nop
    cp $11
    jr nz, jr_011_6A92

jr_011_6A92:
    ld a, [$0011]
    push af
    nop
    dec bc
    nop
    push af
    ld hl, sp+$0A
    nop
    db $ED
    nop
    add hl, bc
    nop
    db $ED
    ld hl, sp+$08
    nop
    add b
    nop
    cp $12
    jr nz, jr_011_6AAB

jr_011_6AAB:
    ld a, [$0012]
    xor $F8
    dec c
    nop
    or $00
    rrca
    nop
    or $F8
    ld c, $00
    xor $00
    inc c
    nop
    add b
    nop
    cp $13
    jr nz, jr_011_6AC4

jr_011_6AC4:
    ld a, [$0013]
    rst $28
    nop
    dec b
    nop
    rst $30
    nop
    rlca
    nop
    rst $28
    ld hl, sp+$0D
    nop
    rst $30
    ld hl, sp+$10
    nop
    add b
    nop
    cp $13
    jr nz, jr_011_6ADD

jr_011_6ADD:
    ld a, [$0013]
    db $ED
    nop

jr_011_6AE2:
    dec e
    nop
    db $ED
    ld hl, sp+$1C
    nop
    push af
    ld hl, sp+$1B
    jr nz, jr_011_6AE2

    nop
    dec de
    nop
    add b
    nop
    cp $12
    jr nz, jr_011_6AF6

jr_011_6AF6:
    ld a, [$0012]
    xor $00
    dec e
    nop
    xor $F8
    inc e
    nop
    or $F8
    ld e, $20
    or $00
    ld e, $00
    add b
    nop
    cp $11
    jr nz, jr_011_6B0F

jr_011_6B0F:
    ld a, [$0011]
    rst $28
    nop
    jr nz, jr_011_6B16

jr_011_6B16:
    rst $28
    ld hl, sp+$1F
    nop
    rst $30
    ld hl, sp+$21
    jr nz, jr_011_6B16

    nop
    ld hl, $8000
    nop
    cp $13
    jr nz, jr_011_6B28

jr_011_6B28:
    ld a, [$0013]
    db $ED
    nop

jr_011_6B2D:
    ld d, $00
    db $ED
    ld hl, sp+$15
    nop
    push af
    ld hl, sp+$14
    jr nz, jr_011_6B2D

    nop
    inc d
    nop
    add b
    nop
    cp $12
    jr nz, jr_011_6B41

jr_011_6B41:
    ld a, [$0012]
    xor $00
    ld d, $00
    xor $F8
    dec d
    nop
    or $F8
    rla
    jr nz, @-$08

    nop
    rla
    nop
    add b
    nop
    ld a, [$0011]
    nop
    cp $11
    jr nz, @-$0F

    nop
    add hl, de
    nop

jr_011_6B61:
    rst $28
    ld hl, sp+$18
    nop
    rst $30
    ld hl, sp+$1A
    jr nz, jr_011_6B61

    nop
    ld a, [de]
    nop
    add b
    db $FC
    db $FC
    nop
    nop
    add b
    nop
    db $FC
    ld [bc], a
    ld b, b
    ld hl, sp-$04
    ld [bc], a
    nop
    add b
    db $FC
    db $FC
    ld bc, $8000
    db $FC

jr_011_6B82:
    nop
    inc bc
    jr nz, jr_011_6B82

    ld hl, sp+$03
    nop
    add b
    nop
    nop
    ld bc, $F826
    nop
    nop
    ld h, $00
    ld hl, sp+$01
    ld b, $F8
    ld hl, sp+$00
    ld b, $80
    ld hl, sp+$00
    dec c
    rlca
    ld hl, sp-$08
    inc c
    rlca
    nop
    nop
    rrca
    rlca
    nop
    ld hl, sp+$0E
    rlca
    add b
    ld hl, sp-$08
    dec c
    daa
    ld hl, sp+$00
    inc c
    daa
    nop
    ld hl, sp+$0F
    daa
    nop
    nop
    ld c, $27
    add b
    nop
    nop
    inc bc
    rlca
    nop
    ld hl, sp+$02
    rlca
    ld hl, sp+$00
    ld bc, $F807
    ld hl, sp+$00
    rlca
    add b
    nop
    nop
    rlca
    rlca
    nop
    ld hl, sp+$06
    rlca
    ld hl, sp+$00
    dec b
    rlca
    ld hl, sp-$08
    inc b
    rlca
    add b
    nop
    nop
    dec bc
    rlca
    nop
    ld hl, sp+$0A
    rlca
    ld hl, sp+$00
    add hl, bc
    rlca
    ld hl, sp-$08
    ld [$8007], sp
    nop
    ld hl, sp+$03
    daa
    nop
    nop
    ld [bc], a
    daa
    ld hl, sp-$08
    ld bc, $F827
    nop
    nop
    daa
    add b
    nop
    ld hl, sp+$07
    daa
    nop
    nop
    ld b, $27
    ld hl, sp-$08
    dec b
    daa
    ld hl, sp+$00
    inc b
    daa
    add b
    nop
    ld hl, sp+$0B
    daa
    nop
    nop
    ld a, [bc]
    daa
    ld hl, sp-$08
    add hl, bc
    daa
    ld hl, sp+$00
    ld [$8027], sp
    nop
    nop
    ld de, $0027
    ld hl, sp+$11
    rlca
    ld hl, sp+$00
    db $10
    daa
    ld hl, sp-$08
    db $10
    rlca
    add b
    nop
    nop
    inc de
    daa
    nop
    ld hl, sp+$13
    rlca
    ld hl, sp+$00
    ld [de], a
    daa
    ld hl, sp-$08
    ld [de], a
    rlca
    add b
    nop
    nop
    dec d
    daa
    nop
    ld hl, sp+$15
    rlca
    ld hl, sp+$00
    inc d
    daa
    ld hl, sp-$08
    inc d
    rlca
    add b
    nop
    nop
    rlca
    jr nz, jr_011_6C5B

jr_011_6C5B:
    ld hl, sp+$07
    nop
    ld hl, sp+$00
    ld bc, $F800
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
    inc bc
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    nop
    nop
    rlca
    jr nz, jr_011_6C74

jr_011_6C74:
    ld hl, sp+$07
    nop
    add b
    ld hl, sp+$00
    dec b
    nop
    ld hl, sp-$08
    inc b
    nop
    nop
    nop
    rlca
    jr nz, jr_011_6C85

jr_011_6C85:
    ld hl, sp+$07
    nop
    add b
    ld hl, sp+$00
    ld bc, $F800
    ld hl, sp+$00
    nop
    nop
    nop
    ld b, $20
    nop
    ld hl, sp+$06
    nop
    add b
    ld hl, sp+$00
    inc bc
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    nop
    nop
    ld b, $20
    nop
    ld hl, sp+$06
    nop
    add b
    ld hl, sp+$00
    dec b
    nop
    ld hl, sp-$08
    inc b
    nop
    nop
    nop
    ld b, $20
    nop
    ld hl, sp+$06
    nop
    add b
    ld hl, sp+$00
    ld bc, $F800
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$09
    jr nz, jr_011_6CC9

jr_011_6CC9:
    nop
    ld [$8020], sp
    ld hl, sp+$00
    inc bc
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    nop
    ld hl, sp+$09
    jr nz, jr_011_6CDA

jr_011_6CDA:
    nop
    ld [$8020], sp
    ld hl, sp+$00
    dec b
    nop
    ld hl, sp-$08
    inc b
    nop
    nop
    ld hl, sp+$09
    jr nz, jr_011_6CEB

jr_011_6CEB:
    nop
    ld [$8020], sp
    ld hl, sp+$00
    ld bc, $F820
    ld hl, sp+$00
    jr nz, jr_011_6CF8

jr_011_6CF8:
    nop
    add hl, bc
    nop
    nop
    ld hl, sp+$08
    nop
    add b
    ld hl, sp+$00
    inc bc
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    ld hl, sp+$08
    nop
    add b
    ld hl, sp-$08
    dec b
    jr nz, @-$06

    nop
    inc b
    jr nz, jr_011_6D1A

jr_011_6D1A:
    nop
    add hl, bc
    nop
    nop
    ld hl, sp+$08
    nop
    add b
    nop
    nop
    ld bc, $F820
    nop
    nop
    jr nz, jr_011_6D2B

jr_011_6D2B:
    ld hl, sp+$01
    nop
    ld hl, sp-$08
    nop
    nop
    add b
    rst $38
    nop
    ld bc, $F720
    nop
    nop
    jr nz, @+$01

    ld hl, sp+$01
    nop
    rst $30
    ld hl, sp+$00
    nop
    add b
    nop
    nop
    inc bc
    jr nz, @-$06

    nop
    ld [bc], a
    jr nz, jr_011_6D4D

jr_011_6D4D:
    ld hl, sp+$03
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    add b
    rst $38
    nop
    inc bc
    jr nz, @-$07

    nop
    ld [bc], a
    jr nz, @+$01

    ld hl, sp+$03
    nop
    rst $30
    ld hl, sp+$02
    nop
    add b
    ld sp, hl
    nop
    dec b
    nop
    ld sp, hl
    ld hl, sp+$04
    nop
    nop
    nop
    rlca
    nop
    nop
    ld hl, sp+$06
    nop
    add b
    nop
    nop
    add hl, bc
    nop
    nop
    ld hl, sp+$08
    nop
    ld hl, sp+$00
    dec b
    nop
    ld hl, sp-$08
    inc b

jr_011_6D86:
    nop
    add b
    ld sp, hl
    ld hl, sp+$05
    jr nz, jr_011_6D86

    nop
    inc b
    jr nz, jr_011_6D91

jr_011_6D91:
    ld hl, sp+$07
    jr nz, jr_011_6D95

jr_011_6D95:
    nop
    ld b, $20
    add b
    nop
    ld hl, sp+$09
    jr nz, jr_011_6D9E

jr_011_6D9E:
    nop
    ld [$F820], sp
    ld hl, sp+$05
    jr nz, jr_011_6D9E

    nop
    inc b
    jr nz, @-$7E

    nop
    inc b
    ld [bc], a
    ld b, $00
    db $FC
    ld bc, $F806
    db $FC
    nop
    ld b, $80
    nop
    inc c
    ld b, $06
    nop
    inc b
    inc b
    ld b, $00
    db $FC
    ld bc, $0006
    db $F4
    dec b
    ld b, $00
    db $EC
    inc b
    ld b, $00
    db $E4
    inc bc
    ld b, $F0
    rlca
    inc bc
    ld b, $F0
    rst $38
    inc bc
    ld b, $F0
    rst $30
    ld [bc], a
    ld b, $F0
    rst $28
    ld bc, $F006
    rst $20
    nop
    ld b, $80
    rst $38
    ld a, [de]
    ld b, $00
    rst $38
    ld [de], a
    inc b
    nop
    rst $38
    ld a, [bc]
    ld bc, $FF00
    ld [bc], a
    dec b
    nop
    rst $38
    ld a, [$0004]
    rst $38
    ld a, [c]
    inc bc
    nop
    ldh a, [rNR14]
    inc bc
    nop
    ldh a, [$0C]
    inc bc
    nop
    ldh a, [rDIV]
    ld [bc], a
    nop
    ldh a, [$FC]
    ld bc, $F000
    db $F4
    nop
    nop
    add b
    nop
    db $10
    ld b, $04
    nop
    ld [$0404], sp
    nop
    nop
    ld bc, $0004
    ld hl, sp+$05
    inc b
    nop
    ldh a, [rDIV]
    inc b
    nop
    add sp, $03
    inc b
    ldh a, [$0B]
    inc bc
    inc b
    ldh a, [$03]
    inc bc
    inc b
    ldh a, [$FB]
    ld [bc], a
    inc b
    ldh a, [$F3]
    ld bc, $F004
    db $EB
    nop
    inc b
    add b
    nop
    db $10
    ld b, $05
    nop
    ld [$0504], sp
    nop
    nop
    ld bc, $0005
    ld hl, sp+$05
    dec b
    nop
    ldh a, [rDIV]
    dec b
    nop
    add sp, $03
    dec b
    ldh a, [$0B]
    inc bc
    dec b
    ldh a, [$03]
    inc bc
    dec b
    ldh a, [$FB]
    ld [bc], a
    dec b
    ldh a, [$F3]
    ld bc, $F005
    db $EB
    nop
    dec b
    add b
    add b
    nop
    db $EC
    ld c, $40
    ld hl, sp-$14
    ld c, $00
    nop
    inc b
    dec b
    ld bc, $FC00
    inc b
    ld bc, $F400
    inc bc
    ld bc, $04F8
    ld [bc], a
    ld bc, $FCF8
    ld bc, $F801
    db $F4
    nop
    ld bc, $FF80
    db $EB
    ld c, $40
    ld sp, hl
    db $EB
    ld c, $00
    nop
    inc b
    dec b
    ld bc, $FC00
    inc b
    ld bc, $F400
    inc bc
    ld bc, $04F8
    ld [bc], a
    ld bc, $FCF8
    ld bc, $F801
    db $F4
    nop
    ld bc, $FE80
    ld [$400E], a
    ld a, [$0EEA]
    nop
    nop
    inc b
    dec b
    ld bc, $FC00
    inc b
    ld bc, $F400
    inc bc
    ld bc, $04F8
    ld [bc], a
    ld bc, $FCF8
    ld bc, $F801
    db $F4
    nop
    ld bc, $0080
    dec c
    ld c, $60
    ld hl, sp+$0D
    ld c, $20
    nop
    push af
    dec b
    ld hl, $FD00
    inc b
    ld hl, $0500
    inc bc
    ld hl, $F5F8
    ld [bc], a
    ld hl, $FDF8
    ld bc, $F821
    dec b
    nop
    ld hl, $FF80
    ld c, $0E
    ld h, b
    ld sp, hl
    ld c, $0E
    jr nz, jr_011_6EF9

jr_011_6EF9:
    push af
    dec b
    ld hl, $FD00
    inc b
    ld hl, $0500
    inc bc
    ld hl, $F5F8
    ld [bc], a
    ld hl, $FDF8
    ld bc, $F821
    dec b
    nop
    ld hl, $FE80
    rrca
    ld c, $60
    ld a, [$0E0F]
    jr nz, jr_011_6F1A

jr_011_6F1A:
    push af
    dec b
    ld hl, $FD00
    inc b
    ld hl, $0500
    inc bc
    ld hl, $F5F8
    ld [bc], a
    ld hl, $FDF8
    ld bc, $F821
    dec b
    nop
    ld hl, $EC80
    ld hl, sp+$0D
    ld b, b
    db $EB
    ld hl, sp+$06
    ld bc, $00EC
    dec c
    ld h, b
    inc bc
    nop
    add hl, bc
    ld hl, $F803
    add hl, bc
    ld bc, $00FB
    ld [$FB21], sp
    ld hl, sp+$08
    ld bc, $00F3
    rlca
    ld hl, $F8F3
    rlca
    ld bc, $00EB
    ld b, $21
    add b
    db $ED
    ld hl, sp+$0D
    ld b, b
    db $EB
    ld hl, sp+$06
    ld bc, $00ED
    dec c
    ld h, b
    inc bc
    nop
    add hl, bc
    ld hl, $F803
    add hl, bc
    ld bc, $00FB
    ld [$FB21], sp
    ld hl, sp+$08
    ld bc, $00F3
    rlca
    ld hl, $F8F3
    rlca
    ld bc, $00EB
    ld b, $21
    add b
    ld [$0DFA], a
    ld b, b
    db $EB
    ld hl, sp+$06
    ld bc, $FEEA
    dec c
    ld h, b
    inc bc
    nop
    add hl, bc
    ld hl, $F803
    add hl, bc
    ld bc, $00FB
    ld [$FB21], sp
    ld hl, sp+$08
    ld bc, $00F3
    rlca
    ld hl, $F8F3
    rlca
    ld bc, $00EB
    ld b, $21
    add b
    rrca
    nop
    dec c
    jr nz, @+$11

    ld hl, sp+$0D
    nop
    ld [$0C00], sp
    ld hl, $F808
    inc c
    ld bc, $0000
    dec bc
    ld hl, $F800
    dec bc
    ld bc, $00F8
    ld a, [bc]
    ld hl, $F8F8
    ld a, [bc]
    ld bc, $1080
    rst $38
    dec c
    jr nz, @+$12

    ld sp, hl
    dec c
    nop
    ld [$0C00], sp
    ld hl, $F808
    inc c
    ld bc, $0000
    dec bc
    ld hl, $F800
    dec bc
    ld bc, $00F8
    ld a, [bc]
    ld hl, $F8F8
    ld a, [bc]
    ld bc, $1180
    cp $0D
    jr nz, jr_011_7005

    ld a, [$000D]
    ld [$0C00], sp
    ld hl, $F808
    inc c
    ld bc, $0000
    dec bc
    ld hl, $F800

jr_011_7005:
    dec bc
    ld bc, $00F8
    ld a, [bc]
    ld hl, $F8F8
    ld a, [bc]
    ld bc, $F880
    nop
    rlca
    dec b
    ld hl, sp-$08
    ld b, $05
    ldh a, [$F8]
    nop
    nop
    ldh a, [rP1]
    inc bc
    dec b
    ldh a, [$F8]
    ld [bc], a
    dec b
    add b
    ldh a, [$F8]
    ld bc, $F800
    nop
    add hl, bc
    dec b
    ld hl, sp-$08
    ld [$F005], sp
    nop
    dec b
    dec b
    ldh a, [$F8]

jr_011_7037:
    inc b
    dec b
    add b
    ld hl, sp-$08
    rlca
    dec h
    ld hl, sp+$00
    ld b, $25
    ldh a, [rP1]
    nop
    jr nz, jr_011_7037

    ld hl, sp+$03
    dec h
    ldh a, [rP1]
    ld [bc], a
    dec h
    add b
    ldh a, [rP1]
    ld bc, $F820
    ld hl, sp+$09
    dec h
    ld hl, sp+$00
    ld [$F025], sp
    ld hl, sp+$05
    dec h
    ldh a, [rP1]
    inc b
    dec h
    add b
    rst $20
    ld bc, $0607
    rst $20

jr_011_7069:
    ld sp, hl
    ld b, $06
    rst $18
    ld bc, $0603
    rst $18
    ld sp, hl
    ld [bc], a
    ld b, $80
    rst $18

jr_011_7076:
    nop
    ld bc, $DF06
    ld hl, sp+$00
    ld b, $E7
    nop
    dec b
    ld b, $E7
    ld hl, sp+$04
    ld b, $80
    add sp, -$08
    rlca
    ld h, $E8
    nop
    ld b, $26
    ldh [$F8], a

jr_011_7090:
    inc bc
    ld h, $E0
    nop
    ld [bc], a
    ld h, $80
    ldh [$F9], a
    ld bc, $E026
    ld bc, $2600
    add sp, -$07
    dec b
    ld h, $E8
    ld bc, $2604
    add b
    ldh a, [$F8]
    ld [bc], a
    nop
    add sp, -$08
    ld bc, $F000
    nop
    nop
    nop
    add b
    ld hl, sp-$08
    inc b
    nop
    ldh a, [$F8]
    inc bc
    nop
    ldh a, [rP1]
    nop
    nop
    add b
    ld hl, sp-$08
    ld b, $00
    ldh a, [$F8]
    dec b

jr_011_70C9:
    nop
    ldh a, [rP1]
    nop
    nop
    add b
    ld hl, sp-$08
    ld [$F000], sp
    ld hl, sp+$07
    nop
    ldh a, [rP1]
    nop
    nop
    add b
    ldh a, [rP1]

jr_011_70DE:
    ld [bc], a
    jr nz, jr_011_70C9

    nop

jr_011_70E2:
    ld bc, $F020
    ld hl, sp+$00
    jr nz, jr_011_7069

    ld hl, sp+$00
    inc b
    jr nz, jr_011_70DE

    nop

jr_011_70EF:
    inc bc
    jr nz, jr_011_70E2

    ld hl, sp+$00
    jr nz, jr_011_7076

    ld hl, sp+$00
    ld b, $20
    ldh a, [rP1]

jr_011_70FC:
    dec b
    jr nz, jr_011_70EF

    ld hl, sp+$00
    jr nz, @-$7E

    ld hl, sp+$00
    ld [$F020], sp
    nop
    rlca
    jr nz, jr_011_70FC

    ld hl, sp+$00
    jr nz, jr_011_7090

    ld d, b
    ld b, $08
    rst $38
    nop
    rst $08
    ld l, [hl]
    ldh a, [$6E]
    ld de, $496F
    db $10
    ld [hl], c
    ld d, b
    ld b, $08
    ld bc, $6C00
    ld l, [hl]
    adc l
    ld l, [hl]
    xor [hl]
    ld l, [hl]
    ld c, c
    ld e, $71
    ld d, b
    ld b, $08
    nop
    rst $38
    xor l
    ld l, a
    adc $6F
    rst $28
    ld l, a
    ld c, c
    inc l
    ld [hl], c
    ld d, b
    ld b, $08
    nop
    ld bc, $6F32
    ld e, e
    ld l, a
    add h
    ld l, a
    ld c, c
    ld a, [hl-]
    ld [hl], c
    ld d, b
    ld b, $08
    nop
    nop
    rst $08
    ld l, [hl]
    ldh a, [$6E]
    ld de, $496F
    ld c, b
    ld [hl], c
    ld d, b
    ld b, $08
    nop
    nop
    ld l, h
    ld l, [hl]
    adc l
    ld l, [hl]
    xor [hl]
    ld l, [hl]
    ld c, c
    ld d, [hl]
    ld [hl], c
    ld d, b
    ld b, $08
    nop
    nop
    xor l
    ld l, a
    adc $6F
    rst $28
    ld l, a
    ld c, c
    ld h, h
    ld [hl], c
    ld d, b
    ld b, $08
    nop
    nop
    ld [hl-], a
    ld l, a
    ld e, e
    ld l, a
    add h
    ld l, a
    ld c, c
    ld [hl], d
    ld [hl], c
    ld c, a
    rst $38
    nop
    nop
    xor d
    ld l, l
    nop
    ld c, c
    add b
    ld [hl], c
    ld c, a
    rst $38
    nop
    nop
    db $E4
    ld l, l
    nop
    ld c, c
    adc d
    ld [hl], c
    ld d, d
    rst $38
    nop
    nop
    db $E4
    ld l, l
    nop
    ld c, c
    sub h
    ld [hl], c
    ld c, a
    add b
    nop
    nop
    bit 3, d
    ld [$0000], sp
    ret nc

    ld e, d
    ld [$0000], sp
    push de
    ld e, d
    ld [$0000], sp
    jp c, $005A

    ld c, c
    sbc [hl]
    ld [hl], c
    ld c, a
    add b
    nop
    nop
    rst $18
    ld e, d
    ld [$0000], sp
    db $E4
    ld e, d
    ld [$0000], sp
    jp hl


    ld e, d
    ld [$0000], sp
    xor $5A
    nop
    ld c, c
    or a
    ld [hl], c
    ld c, a
    add b
    nop
    nop
    di
    ld e, d
    ld [$0000], sp
    ld hl, sp+$5A
    ld [$0000], sp
    db $FD
    ld e, d
    ld [$0000], sp
    ld [bc], a
    ld e, e
    nop
    ld c, c
    ret nc

    ld [hl], c
    ld c, a
    ld bc, $0004
    ld b, e
    ld e, e
    nop
    ld c, c
    jp hl


    ld [hl], c
    ld c, a
    ld bc, $0000
    ld b, e
    ld e, e
    ld bc, $FF00
    ld b, e
    ld e, e
    ld bc, $0000
    ld b, e
    ld e, e
    ld bc, $0100
    ld b, e
    ld e, e
    ld bc, $0000
    ld b, e
    ld e, e
    ld bc, $FF00
    ld b, e
    ld e, e
    ld bc, $0000
    ld b, e
    ld e, e
    ld bc, $0100
    ld b, e
    ld e, e
    nop
    ld c, a
    rst $38
    nop
    nop
    ld b, e
    ld e, e
    nop
    ld c, c
    dec e
    ld [hl], d
    ld d, b
    ld [$0008], sp
    nop
    ld e, [hl]
    ld e, e
    ld d, l
    ld e, e
    ld b, e
    ld e, e
    ld d, l
    ld e, e
    ld c, c
    daa
    ld [hl], d
    ld c, a
    inc b
    nop
    ld bc, $5B43
    ld b, $00
    ld [bc], a
    ld b, e
    ld e, e
    inc b
    nop
    inc bc
    ld b, e
    ld e, e
    ld [bc], a
    nop
    nop
    ld b, e
    ld e, e
    ld [bc], a
    nop
    nop
    ld d, l
    ld e, e
    nop
    ld c, c
    dec e
    ld [hl], d
    ld d, b
    ld [$0008], sp
    nop
    ld [hl], b
    ld e, e
    ld h, a
    ld e, e
    ld c, h
    ld e, e
    ld h, a
    ld e, e
    ld c, c
    ld d, l
    ld [hl], d
    ld c, a
    ld bc, $0004
    ld c, h
    ld e, e
    nop
    ld c, c
    ld h, l
    ld [hl], d
    ld c, a
    rst $38
    nop
    nop
    ld c, h
    ld e, e
    nop
    ld c, c
    ld l, a
    ld [hl], d
    ld c, a
    rst $38
    nop
    nop
    rlca
    ld e, e
    nop
    ld c, c
    ld a, c
    ld [hl], d
    ld d, d
    rst $38
    nop
    nop
    rlca
    ld e, e
    nop
    ld c, c
    add e
    ld [hl], d
    ld c, a
    add b
    nop
    nop
    ld a, c
    ld e, e
    ld [$0000], sp
    add d
    ld e, e
    ld [$0000], sp
    adc e
    ld e, e
    nop
    ld c, c
    adc l
    ld [hl], d
    ld d, d
    add b
    nop
    nop
    ld a, c
    ld e, e
    ld [$0000], sp
    add d
    ld e, e
    ld [$0000], sp
    adc e
    ld e, e
    nop
    ld c, c
    and c
    ld [hl], d
    ld c, a
    stop
    rst $38
    ld a, c
    ld e, e
    ld [$0000], sp
    add d
    ld e, e
    ld [$0000], sp
    adc e
    ld e, e
    jr nz, jr_011_72C7

jr_011_72C7:
    nop
    ld a, c
    ld e, e
    nop
    ld d, b
    inc d
    inc b
    nop
    nop
    sub h
    ld e, e
    sbc l
    ld e, e
    and [hl]
    ld e, e
    sbc l
    ld e, e
    sub h
    ld e, e
    sbc l
    ld e, e
    xor a
    ld e, e
    sub h
    ld e, e
    and [hl]
    ld e, e
    sbc l
    ld e, e
    ld c, c
    bit 6, d
    ld c, a
    ld [$0200], sp
    ld a, c
    ld e, e
    nop
    ld c, c
    adc l
    ld [hl], d
    ld c, a
    rst $38
    nop
    nop
    ld a, c
    ld e, e
    nop
    ld c, c
    pop af
    ld [hl], d
    ld c, a
    ld [$0000], sp
    inc [hl]
    ld e, e
    ld [$0000], sp
    add hl, sp
    ld e, e
    ld [$0000], sp
    ld a, $5B
    ld [$0000], sp
    add hl, sp
    ld e, e
    nop
    ld c, c
    ei
    ld [hl], d
    ld d, d
    ld [$0000], sp
    inc [hl]
    ld e, e
    ld [$0000], sp
    add hl, sp
    ld e, e
    ld [$0000], sp
    ld a, $5B
    ld [$0000], sp
    add hl, sp
    ld e, e
    nop
    ld c, c
    inc d
    ld [hl], e
    ld d, b
    inc b
    ld [$FF00], sp
    cp b
    ld e, e
    ld sp, hl
    ld e, e
    ld c, c
    dec l
    ld [hl], e
    ld d, b
    inc b
    ld [$0100], sp
    ld l, e
    ld e, h
    ld [hl-], a
    ld e, h
    ld c, c
    add hl, sp
    ld [hl], e
    ld d, b
    inc b
    ld [$00FF], sp
    ld h, $5D
    ld h, a
    ld e, l
    ld c, c
    ld b, l
    ld [hl], e
    ld d, b
    inc b
    ld [$0001], sp
    xor h
    ld e, h
    db $ED
    ld e, h
    ld c, c
    ld d, c
    ld [hl], e
    ld d, b
    inc b
    stop
    nop
    cp b
    ld e, e
    ld sp, hl
    ld e, e
    ld c, c
    ld e, l
    ld [hl], e
    ld d, b
    inc b
    stop
    nop
    ld l, e
    ld e, h
    ld [hl-], a
    ld e, h
    ld c, c
    ld l, c
    ld [hl], e
    ld d, b
    inc b
    stop
    nop
    ld h, $5D
    ld h, a
    ld e, l
    ld c, c
    ld [hl], l
    ld [hl], e
    ld d, b
    inc b
    stop
    nop
    xor h
    ld e, h
    db $ED
    ld e, h
    ld c, c
    add c
    ld [hl], e
    ld d, b
    inc b
    stop
    nop
    push de
    ld h, e
    ld d, [hl]
    ld h, h
    ld c, c
    adc l
    ld [hl], e
    ld d, b
    inc b
    stop
    nop
    ld a, [hl-]
    ld h, [hl]
    cp e
    ld h, [hl]
    ld c, c
    sbc c
    ld [hl], e
    ld d, b
    inc b
    stop
    nop
    ld [hl], b
    ld h, c
    pop af
    ld h, c
    ld c, c
    and l
    ld [hl], e
    ld d, b
    inc b
    stop
    nop
    dec bc
    ld e, a
    adc h
    ld e, a
    ld c, c
    or c
    ld [hl], e
    ld c, a
    ld [$FF00], sp
    ld l, d
    ld h, d
    inc c
    nop
    cp $E3
    ld h, d
    ld b, $00
    cp $5C
    ld h, e
    ld b, $00
    rst $38
    ld e, h
    ld h, e
    ld [$FF00], sp
    push de
    ld h, e
    ld [$FF00], sp
    ld d, [hl]
    ld h, h
    nop
    ld c, c
    cp l
    ld [hl], e
    ld c, a
    ld [$0100], sp
    rst $08
    ld h, h
    inc c
    nop
    ld [bc], a
    ld c, b
    ld h, l
    ld b, $00
    ld [bc], a
    pop bc
    ld h, l
    ld b, $00
    ld bc, $65C1
    ld [$0100], sp
    ld a, [hl-]
    ld h, [hl]
    ld [$0100], sp
    cp e
    ld h, [hl]
    nop
    ld c, c
    ldh [$73], a
    ld c, a
    ld [$00FF], sp
    dec b
    ld h, b
    inc c
    cp $00
    ld a, [hl]
    ld h, b
    ld b, $FE
    nop
    rst $30
    ld h, b
    ld b, $FF
    nop
    rst $30
    ld h, b
    ld [$00FF], sp
    ld [hl], b
    ld h, c
    ld [$00FF], sp
    pop af
    ld h, c
    nop
    ld c, c
    inc bc
    ld [hl], h
    ld c, a
    ld [$0001], sp
    and b
    ld e, l
    inc c
    ld [bc], a
    nop
    add hl, de
    ld e, [hl]
    ld b, $02
    nop
    sub d
    ld e, [hl]
    ld b, $01
    nop
    sub d
    ld e, [hl]
    ld [$0001], sp
    dec bc
    ld e, a
    ld [$0001], sp
    adc h
    ld e, a
    nop
    ld c, c
    ld h, $74
    ld c, a
    inc b
    nop
    nop
    halt
    ld l, c
    inc b
    nop
    nop
    add a
    ld l, c
    inc b
    nop
    nop
    sbc b
    ld l, c
    inc b
    nop
    nop
    xor c
    ld l, c
    inc b
    nop
    nop
    cp d
    ld l, c
    inc b
    nop
    nop
    bit 5, c
    inc b
    nop
    nop
    call c, $0469
    nop
    nop
    db $ED
    ld l, c
    nop
    ld c, c
    ld c, c
    ld [hl], h
    ld d, b
    db $10
    inc b
    nop
    nop
    dec [hl]
    ld l, c
    db $F4
    ld l, b
    or e
    ld l, b
    ld [hl], d
    ld l, b
    ld sp, $F068
    ld h, a
    xor a
    ld h, a
    ld l, [hl]
    ld h, a
    ld c, c
    halt
    ld [hl], h
    ld c, a
    rst $38
    db $FC
    nop
    add c
    ld l, e
    nop
    ld c, c
    adc [hl]
    ld [hl], h
    ld c, a
    rst $38
    inc b
    nop
    add c
    ld l, e
    nop
    ld c, c
    sbc b
    ld [hl], h
    ld c, a
    rst $38
    nop
    db $FC
    ld [hl], e
    ld l, e
    nop
    ld c, c
    and d
    ld [hl], h
    ld c, a
    rst $38
    nop
    db $FD
    ld [hl], e
    ld l, e
    nop
    ld c, c
    xor h
    ld [hl], h
    ld c, a
    rst $38
    nop
    cp $73
    ld l, e
    nop
    ld c, c
    or [hl]
    ld [hl], h
    ld c, a
    ld [bc], a
    rst $38
    cp $73
    ld l, e
    ld [bc], a
    ld bc, $73FF
    ld l, e
    nop
    ld c, c
    ret nz

    ld [hl], h
    ld c, a
    rst $38
    nop
    inc b
    ld [hl], e
    ld l, e
    nop
    ld c, c
    rst $08
    ld [hl], h
    ld c, a
    ld b, $00
    nop
    ld sp, $006A
    ld c, a
    rst $38
    nop
    nop
    jr nz, jr_011_7550

    nop
    ld c, c
    ldh [$74], a
    ld c, a
    ld b, $00
    nop
    ld sp, $006A
    ld e, $11
    ld c, a
    inc b
    cp $00
    adc l
    ld l, d
    inc b
    cp $00
    and [hl]
    ld l, d
    inc b
    cp $00
    cp a
    ld l, d
    inc b
    cp $00
    and [hl]
    ld l, d
    nop
    ld c, c
    di
    ld [hl], h
    ld c, a
    ld b, $00
    nop
    rrca
    ld l, d
    nop
    ld c, a
    rst $38
    nop
    nop
    cp $69
    nop
    ld c, c
    inc de
    ld [hl], l
    ld c, a
    ld b, $00
    nop
    rrca
    ld l, d
    nop
    ld e, $11
    ld c, a
    inc b
    ld [bc], a
    nop
    ld b, d
    ld l, d
    inc b
    ld [bc], a
    nop
    ld e, e
    ld l, d
    inc b
    ld [bc], a
    nop
    ld [hl], h
    ld l, d
    inc b
    ld [bc], a
    nop
    ld e, e
    ld l, d
    nop
    ld c, c
    ld h, $75
    ld c, c
    ccf
    ld [hl], l
    ld c, a
    ld b, $00
    nop
    ld sp, $006A
    ld e, $11
    ld c, a
    inc b
    nop
    cp $23

jr_011_7550:
    ld l, e
    inc b
    nop
    cp $3C
    ld l, e
    inc b
    nop
    cp $55
    ld l, e
    inc b
    nop
    cp $3C
    ld l, e
    nop
    ld c, c
    ld c, e
    ld [hl], l
    ld c, a
    rst $38
    nop
    nop
    cp $69
    nop
    ld c, c
    ld h, h
    ld [hl], l
    ld c, a
    rst $38
    nop
    nop
    rrca
    ld l, d
    nop
    ld c, c
    ld l, [hl]
    ld [hl], l
    ld c, a
    ld b, $00
    nop
    rrca
    ld l, d
    nop
    ld e, $11
    ld c, a
    inc b
    nop
    ld [bc], a
    ret c

    ld l, d
    inc b
    nop
    ld [bc], a
    pop af
    ld l, d
    inc b
    nop
    ld [bc], a
    ld a, [bc]
    ld l, e
    inc b
    nop
    ld [bc], a
    pop af
    ld l, d
    nop
    ld c, c
    add c
    ld [hl], l
    ld c, a
    rst $38
    nop
    ld bc, $6B8A
    nop
    ld c, c
    sbc d
    ld [hl], l
    ld c, a
    rst $38
    ld bc, $8A00
    ld l, e
    nop
    ld c, c
    and h
    ld [hl], l
    ld c, a
    rst $38
    rst $38
    nop
    adc d
    ld l, e
    nop
    ld c, c
    xor [hl]
    ld [hl], l
    ld c, a
    rst $38
    nop
    rst $38
    adc d
    ld l, e
    nop
    ld c, c
    cp b
    ld [hl], l
    ld c, a
    rst $38
    nop
    ld [bc], a
    adc d
    ld l, e
    nop
    ld c, c
    jp nz, Jump_011_4F75

    rst $38
    ld [bc], a
    nop
    adc d
    ld l, e
    nop
    ld c, c
    call z, Call_011_4F75
    rst $38
    cp $00
    adc d
    ld l, e
    nop
    ld c, c
    sub $75
    ld c, a
    rst $38
    nop
    cp $8A
    ld l, e
    nop
    ld c, c
    ldh [$75], a
    ld c, a
    rst $38
    nop
    nop
    adc d
    ld l, e
    nop
    ld c, c
    ld [$4F75], a
    rst $38
    nop
    nop
    sbc e
    ld l, e
    nop
    ld c, c
    db $F4
    ld [hl], l
    ld c, a
    ld [$0001], sp
    ldh a, [rOCPD]
    ld [$0001], sp
    ld bc, $086C
    ld bc, $1200
    ld l, h
    nop
    ld c, c
    cp $75
    ld c, a
    ld [$00FF], sp
    cp l
    ld l, e
    ld [$00FF], sp
    adc $6B
    ld [$00FF], sp
    rst $18
    ld l, e
    nop
    ld c, c
    ld [de], a
    halt
    ld c, a
    ld [$FF00], sp
    inc hl
    ld l, h
    ld [$FF00], sp
    inc [hl]
    ld l, h
    ld [$FF00], sp
    ld b, l
    ld l, h
    nop
    ld c, c
    ld h, $76
    ld c, a
    ld [$0100], sp
    inc hl
    ld l, h
    ld [$0100], sp
    inc [hl]
    ld l, h
    ld [$0100], sp
    ld b, l
    ld l, h
    nop
    ld c, c
    ld a, [hl-]
    halt
    ld e, $0E
    ld c, a
    ld [$0002], sp
    ldh a, [rOCPD]
    ld [$0002], sp
    ld bc, $086C
    ld [bc], a
    nop
    ld [de], a
    ld l, h
    nop
    ld c, a
    ld [$0002], sp
    ldh a, [rOCPD]
    ld [$0002], sp
    ld bc, $086C
    ld [bc], a
    nop
    ld [de], a
    ld l, h
    nop
    ld c, c
    ld h, c
    halt
    ld e, $0E
    ld c, a
    ld [$00FE], sp
    cp l
    ld l, e
    ld [$00FE], sp
    adc $6B
    ld [$00FE], sp
    rst $18
    ld l, e
    nop
    ld c, a
    ld [$00FE], sp
    cp l
    ld l, e
    ld [$00FE], sp
    adc $6B
    ld [$00FE], sp
    rst $18
    ld l, e
    nop
    ld c, c
    adc b
    halt
    ld e, $0E
    ld c, a
    ld [$FE00], sp
    inc hl
    ld l, h
    ld [$FE00], sp
    inc [hl]
    ld l, h
    ld [$FE00], sp
    ld b, l
    ld l, h
    nop
    ld c, a
    ld [$FE00], sp
    inc hl
    ld l, h
    ld [$FE00], sp
    inc [hl]
    ld l, h
    ld [$FE00], sp
    ld b, l
    ld l, h
    nop
    ld c, c
    xor a
    halt
    ld e, $0E
    ld c, a
    ld [$0200], sp
    inc hl
    ld l, h
    ld [$0200], sp
    inc [hl]
    ld l, h
    ld [$0200], sp
    ld b, l
    ld l, h
    nop
    ld c, a
    ld [$0200], sp
    inc hl
    ld l, h
    ld [$0200], sp
    inc [hl]
    ld l, h
    ld [$0200], sp
    ld b, l
    ld l, h
    nop
    ld c, c
    sub $76
    ld c, a
    ld [$0003], sp
    ldh a, [rOCPD]
    ld [$0003], sp
    ld bc, $086C
    inc bc
    nop
    ld [de], a
    ld l, h
    nop
    ld c, c
    ld [$4F76], a
    ld [$00FD], sp
    cp l
    ld l, e
    ld [$00FD], sp
    adc $6B
    ld [$00FD], sp
    rst $18
    ld l, e
    nop
    ld c, c
    cp $76
    ld c, a
    ld [$FD00], sp
    inc hl
    ld l, h
    ld [$FD00], sp
    inc [hl]
    ld l, h
    ld [$FD00], sp
    ld b, l
    ld l, h
    nop
    ld c, c
    ld [de], a
    ld [hl], a
    ld c, a
    ld [$0300], sp
    inc hl
    ld l, h
    ld [$0300], sp
    inc [hl]
    ld l, h
    ld [$0300], sp
    ld b, l
    ld l, h
    nop
    ld c, c
    ld h, $77
    ld c, a
    ld [$0004], sp
    ldh a, [rOCPD]
    ld [$0004], sp
    ld bc, $086C
    inc b
    nop
    ld [de], a
    ld l, h
    nop
    ld c, c
    ld a, [hl-]
    ld [hl], a
    ld c, a
    ld [$00FC], sp
    cp l
    ld l, e
    ld [$00FC], sp
    adc $6B
    ld [$00FC], sp
    rst $18
    ld l, e
    nop
    ld c, c
    ld c, [hl]
    ld [hl], a
    ld c, a
    ld [$FC00], sp
    inc hl
    ld l, h
    ld [$FC00], sp
    inc [hl]
    ld l, h
    ld [$FC00], sp
    ld b, l
    ld l, h
    nop
    ld c, c
    ld h, d
    ld [hl], a
    ld c, a
    ld [$0400], sp
    inc hl
    ld l, h
    ld [$0400], sp
    inc [hl]
    ld l, h
    ld [$0400], sp
    ld b, l
    ld l, h
    nop
    ld c, c
    halt
    ld [hl], a
    ld c, a
    inc bc
    nop
    nop
    ld d, [hl]
    ld l, h
    nop
    ld c, a
    inc bc
    nop
    nop
    ld h, a
    ld l, h
    nop
    ld c, a
    inc bc
    nop
    nop
    ld a, b
    ld l, h
    nop
    ld c, c
    adc d
    ld [hl], a
    ld c, a
    inc bc
    ld bc, $BC00
    ld l, h
    inc bc
    ld bc, $CD00
    ld l, h
    inc bc
    ld bc, $DE00
    ld l, h
    nop
    ld c, c
    and d
    ld [hl], a
    ld c, a
    inc bc
    rst $38
    nop
    rst $28
    ld l, h
    inc bc
    rst $38
    nop
    nop
    ld l, l
    inc bc
    rst $38
    nop
    ld de, $006D
    ld c, c
    or [hl]
    ld [hl], a
    ld c, a
    inc bc
    nop
    rst $38
    adc c
    ld l, h
    inc bc
    nop
    rst $38
    sbc d
    ld l, h
    inc bc
    nop
    rst $38
    xor e
    ld l, h
    nop
    ld c, c
    jp z, $4F77

    inc bc
    nop
    ld bc, $6C56
    inc bc
    nop
    ld bc, $6C67
    inc bc
    nop
    ld bc, $6C78
    nop
    ld c, c
    sbc $77
    ld e, $15
    ld c, a
    inc bc
    ld [bc], a
    nop
    cp h
    ld l, h
    inc bc
    ld [bc], a
    nop
    call $036C
    ld [bc], a
    nop
    sbc $6C
    nop
    ld c, c
    db $F4
    ld [hl], a
    ld e, $15
    ld c, a
    inc bc
    cp $00
    rst $28
    ld l, h
    inc bc
    cp $00
    nop
    ld l, l
    inc bc
    cp $00
    ld de, $006D
    ld c, c
    ld a, [bc]
    ld a, b
    ld e, $15
    ld c, a
    inc bc
    nop
    cp $89
    ld l, h
    inc bc
    nop
    cp $9A
    ld l, h
    inc bc
    nop
    cp $AB
    ld l, h
    nop
    ld c, c
    jr nz, jr_011_78AC

    ld e, $15
    ld c, a
    inc bc
    nop
    ld [bc], a
    ld d, [hl]
    ld l, h
    inc bc
    nop
    ld [bc], a
    ld h, a
    ld l, h
    inc bc
    nop
    ld [bc], a
    ld a, b
    ld l, h
    nop
    ld c, c
    ld [hl], $78
    ld c, a
    inc bc
    ld [bc], a
    nop
    cp h
    ld l, h
    inc bc
    ld [bc], a
    nop
    call $036C
    ld [bc], a
    nop
    sbc $6C
    nop
    ld c, c
    ld c, d
    ld a, b
    ld c, a
    inc bc
    cp $00
    rst $28
    ld l, h
    inc bc
    cp $00
    nop
    ld l, l
    inc bc
    cp $00
    ld de, $006D
    ld c, c
    ld e, [hl]
    ld a, b
    ld c, a
    inc bc
    nop
    cp $89
    ld l, h
    inc bc
    nop
    cp $9A
    ld l, h
    inc bc
    nop
    cp $AB
    ld l, h
    nop
    ld c, c
    ld [hl], d
    ld a, b
    ld c, a
    inc bc
    nop
    ld [bc], a
    ld d, [hl]
    ld l, h
    inc bc
    nop
    ld [bc], a
    ld h, a
    ld l, h
    inc bc
    nop
    ld [bc], a
    ld a, b
    ld l, h
    nop
    ld c, c
    add [hl]
    ld a, b
    ld c, a
    inc bc
    inc bc
    nop
    cp h
    ld l, h
    inc bc
    inc bc
    nop
    call $036C
    inc bc
    nop
    sbc $6C
    nop
    ld c, c

jr_011_78AC:
    sbc d
    ld a, b
    ld c, a
    inc bc
    db $FD
    nop
    rst $28
    ld l, h
    inc bc
    db $FD
    nop
    nop
    ld l, l
    inc bc
    db $FD
    nop
    ld de, $006D
    ld c, c
    xor [hl]
    ld a, b
    ld c, a
    inc bc
    nop
    db $FD
    adc c
    ld l, h
    inc bc
    nop
    db $FD
    sbc d
    ld l, h
    inc bc
    nop
    db $FD
    xor e
    ld l, h
    nop
    ld c, c
    jp nz, Jump_011_4F78

    inc bc
    nop
    inc bc
    ld d, [hl]
    ld l, h
    inc bc
    nop
    inc bc
    ld h, a
    ld l, h
    inc bc
    nop
    inc bc
    ld a, b
    ld l, h
    nop
    ld c, c
    sub $78
    ld c, a
    inc bc
    inc b
    nop
    cp h
    ld l, h
    inc bc
    inc b
    nop
    call $036C
    inc b
    nop
    sbc $6C
    nop
    ld c, c
    ld [$4F78], a
    inc bc
    db $FC
    nop
    rst $28
    ld l, h
    inc bc
    db $FC
    nop
    nop
    ld l, l
    inc bc
    db $FC
    nop
    ld de, $006D
    ld c, c
    cp $78
    ld c, a
    inc bc
    nop
    db $FC
    adc c
    ld l, h
    inc bc
    nop
    db $FC
    sbc d
    ld l, h
    inc bc
    nop
    db $FC
    xor e
    ld l, h
    nop
    ld c, c
    ld [de], a
    ld a, c
    ld c, a
    inc bc
    nop
    inc b
    ld d, [hl]
    ld l, h
    inc bc
    nop
    inc b
    ld h, a
    ld l, h
    inc bc
    nop
    inc b
    ld a, b
    ld l, h
    nop
    ld c, c
    ld h, $79
    ld c, a
    rst $38
    nop
    nop
    ld [hl+], a
    ld l, l
    nop
    ld c, c
    ld a, [hl-]
    ld a, c
    ld c, a
    rst $38
    nop
    nop
    adc b
    ld l, l
    nop
    ld c, c
    ld b, h
    ld a, c
    ld c, a
    rst $38
    nop
    nop
    ld h, [hl]
    ld l, l
    nop
    ld c, c
    ld c, [hl]
    ld a, c
    ld c, a
    rst $38
    nop
    nop
    ld b, h
    ld l, l
    nop
    ld c, c
    ld e, b
    ld a, c
    ld e, $00
    ld c, a
    ld [bc], a
    ld bc, $8800
    ld l, l
    ld [bc], a
    ld bc, $9900
    ld l, l
    nop
    ld c, c
    ld h, d
    ld a, c
    ld e, $00
    ld c, a
    ld [bc], a
    rst $38
    nop
    ld h, [hl]
    ld l, l
    ld [bc], a
    rst $38
    nop
    ld [hl], a
    ld l, l
    nop
    ld c, c
    ld [hl], e
    ld a, c
    ld e, $00
    ld c, a
    ld [bc], a
    nop
    rst $38
    ld b, h
    ld l, l
    ld [bc], a
    nop
    rst $38
    ld d, l
    ld l, l
    nop
    ld c, c
    add h
    ld a, c
    ld e, $00
    ld c, a
    ld [bc], a
    nop
    ld bc, $6D22
    ld [bc], a
    nop
    ld bc, $6D33
    nop
    ld c, c
    sub l
    ld a, c
    ld e, $00
    ld c, a
    ld [bc], a
    ld [bc], a
    nop
    adc b
    ld l, l
    ld [bc], a
    ld [bc], a
    nop
    sbc c
    ld l, l
    nop
    ld c, c
    and [hl]
    ld a, c
    ld e, $00
    ld c, a
    ld [bc], a
    cp $00
    ld h, [hl]
    ld l, l
    ld [bc], a
    cp $00
    ld [hl], a
    ld l, l
    nop
    ld c, c
    or a
    ld a, c
    ld e, $00
    ld c, a
    ld [bc], a
    nop
    cp $44
    ld l, l
    ld [bc], a
    nop
    cp $55
    ld l, l
    nop
    ld c, c
    ret z

    ld a, c
    ld e, $00
    ld c, a
    ld [bc], a
    nop
    ld [bc], a
    ld [hl+], a
    ld l, l
    ld [bc], a
    nop
    ld [bc], a
    inc sp
    ld l, l
    nop
    ld c, c
    reti


    ld a, c
    ld e, $00
    ld c, a
    ld [bc], a
    inc bc
    nop
    adc b
    ld l, l
    ld [bc], a
    inc bc
    nop
    sbc c
    ld l, l
    nop
    ld c, c
    ld [$1E79], a
    nop
    ld c, a
    ld [bc], a
    db $FD
    nop
    ld h, [hl]
    ld l, l
    ld [bc], a
    db $FD
    nop
    ld [hl], a
    ld l, l
    nop
    ld c, c
    ei
    ld a, c
    ld e, $00
    ld c, a
    ld [bc], a
    nop
    db $FD
    ld b, h
    ld l, l
    ld [bc], a
    nop
    db $FD
    ld d, l
    ld l, l
    nop
    ld c, c
    inc c
    ld a, d
    ld e, $00
    ld c, a
    ld [bc], a
    nop
    inc bc
    ld [hl+], a
    ld l, l
    ld [bc], a
    nop
    inc bc
    inc sp
    ld l, l
    nop
    ld c, c
    dec e
    ld a, d
    ld e, $00
    ld c, a
    ld [bc], a
    inc b
    nop
    adc b
    ld l, l
    ld [bc], a
    inc b
    nop
    sbc c
    ld l, l
    nop
    ld c, c
    ld l, $7A
    ld e, $00
    ld c, a
    ld [bc], a
    db $FC
    nop
    ld h, [hl]
    ld l, l
    ld [bc], a
    db $FC
    nop
    ld [hl], a
    ld l, l
    nop
    ld c, c
    ccf
    ld a, d
    ld e, $00
    ld c, a
    ld [bc], a
    nop
    db $FC
    ld b, h
    ld l, l
    ld [bc], a
    nop
    db $FC
    ld d, l
    ld l, l
    nop
    ld c, c
    ld d, b
    ld a, d
    ld e, $00
    ld c, a
    ld [bc], a
    nop
    inc b
    ld [hl+], a
    ld l, l
    ld [bc], a
    nop
    inc b
    inc sp
    ld l, l
    nop
    ld c, c
    ld h, c
    ld a, d
    ld c, a
    ld [$00FF], sp
    add [hl]
    ld [hl], b
    ld [$00FF], sp
    sub a
    ld [hl], b
    nop
    ld c, c
    ld [hl], d
    ld a, d
    ld c, a
    ld [$0001], sp
    ld h, h
    ld [hl], b
    ld [$0001], sp
    ld [hl], l
    ld [hl], b
    nop
    ld c, c
    ld [hl], d
    ld a, d
    ld c, a
    ld [$0000], sp
    ld h, h
    ld [hl], b
    ld [$0000], sp
    ld [hl], l
    ld [hl], b
    nop
    ld c, c
    sub b
    ld a, d
    ld c, a
    ld [$0000], sp
    add [hl]
    ld [hl], b
    ld [$0000], sp
    sub a
    ld [hl], b
    nop
    ld c, c
    sbc a
    ld a, d
    ld c, a
    db $10
    rst $38
    nop
    ld a, [hl-]
    ld [hl], b
    db $10
    rst $38
    nop
    ld c, a
    ld [hl], b
    nop
    ld c, c
    xor [hl]
    ld a, d
    ld c, a
    db $10
    ld bc, $1000
    ld [hl], b
    db $10
    ld bc, $2500
    ld [hl], b
    nop
    ld c, c
    cp l
    ld a, d
    ld c, a
    stop
    nop
    ld a, [hl-]
    ld [hl], b
    stop
    nop
    ld c, a
    ld [hl], b
    nop
    ld c, c
    call z, $4F7A
    stop
    nop
    db $10
    ld [hl], b
    stop
    nop
    dec h
    ld [hl], b
    nop
    ld c, c
    db $DB
    ld a, d
    ld c, a
    stop
    rst $38
    ld a, [hl-]
    ld [hl], b
    stop
    rst $38
    ld c, a
    ld [hl], b
    nop
    ld c, c
    ld [$4F7A], a
    stop
    ld bc, $7010
    stop
    ld bc, $7025
    nop
    ld c, c
    ld sp, hl
    ld a, d
    ld c, a
    ld [$00FF], sp
    call c, $0870
    rst $38
    nop
    jp hl


    ld [hl], b
    ld [$00FF], sp
    or $70
    ld [$00FF], sp
    or $70
    nop
    ld c, c
    ld [$4F7B], sp
    ld [$00FE], sp
    call c, $0870
    cp $00
    jp hl


    ld [hl], b
    ld [$00FE], sp
    or $70
    ld [$00FE], sp
    or $70
    nop
    ld c, c
    ld hl, $4F7B
    ld [$0001], sp
    xor b
    ld [hl], b
    ld [$0001], sp
    or l
    ld [hl], b
    ld [$0001], sp
    jp nz, $0870

    ld bc, $CF00
    ld [hl], b
    nop
    ld c, c
    ld a, [hl-]
    ld a, e
    ld c, a
    ld [$0002], sp
    xor b
    ld [hl], b
    ld [$0002], sp
    or l
    ld [hl], b
    ld [$0002], sp
    jp nz, $0870

    ld [bc], a
    nop
    rst $08
    ld [hl], b
    nop
    ld c, c
    ld d, e
    ld a, e
    ld c, a
    ld [$0000], sp
    xor b
    ld [hl], b
    ld [$0000], sp
    or l
    ld [hl], b
    ld [$0000], sp
    jp nz, $0870

    nop
    nop
    rst $08
    ld [hl], b
    nop
    ld c, c
    ld l, h
    ld a, e
    ld c, a
    ld [$0000], sp
    call c, $0870
    nop
    nop
    jp hl


    ld [hl], b
    ld [$0000], sp
    or $70
    ld [$0000], sp
    inc bc
    ld [hl], c
    nop
    ld c, c
    add l
    ld a, e
    ld c, a
    ld [$FF00], sp
    call c, $0870
    nop
    rst $38
    jp hl


    ld [hl], b
    ld [$FF00], sp
    or $70
    ld [$FF00], sp
    or $70
    nop
    ld c, c
    sbc [hl]
    ld a, e
    ld c, a
    ld [$0100], sp
    xor b
    ld [hl], b
    ld [$0100], sp
    or l
    ld [hl], b
    ld [$0100], sp
    jp nz, $0870

    nop
    ld bc, $70CF
    nop
    ld c, c
    or a
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
