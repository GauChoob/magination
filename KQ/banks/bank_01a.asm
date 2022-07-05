; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

    nop
    nop
    inc de
    dec b
    nop
    ld hl, sp+$12
    dec b
    ld hl, sp+$00
    add hl, bc
    ld bc, $F8F8
    ld [$F001], sp
    nop
    ld bc, $F001
    ld hl, sp+$00
    ld bc, $0080
    ld hl, sp+$13
    dec h
    nop
    nop
    ld [de], a
    dec h
    ld hl, sp-$08
    add hl, bc
    ld hl, $00F8
    ld [$F021], sp
    ld hl, sp+$01
    ld hl, $00F0
    nop
    ld hl, $0080
    nop
    rla
    dec b
    nop
    ld hl, sp+$16
    dec b
    ld hl, sp+$00
    dec c
    ld bc, $F8F8
    inc c
    ld bc, $00F0
    rlca
    ld bc, $F8F0
    ld b, $01
    add b
    nop
    ld hl, sp+$17
    dec h
    nop
    nop
    ld d, $25
    ld hl, sp-$08
    dec c
    ld hl, $00F8
    inc c
    ld hl, $F8F0
    rlca
    ld hl, $00F0
    ld b, $21
    add b
    nop
    db $FC
    jr @+$07

    ld hl, sp+$00
    rrca
    ld bc, $F8F8
    ld c, $01
    pop af
    nop
    inc bc
    ld bc, $F8F1
    ld [bc], a
    ld bc, $0080
    nop
    inc d
    dec b
    nop
    ld sp, hl
    inc d
    dec h
    ld hl, sp+$00
    ld a, [bc]
    ld hl, $F8F8
    ld a, [bc]
    ld bc, $00F0
    inc bc
    ld bc, $F8F0
    ld [bc], a
    ld bc, $0080
    db $FC
    jr @+$27

    ld hl, sp-$08
    rrca
    ld hl, $00F8
    ld c, $21
    pop af
    nop
    inc bc
    ld bc, $F8F1
    ld [bc], a
    ld bc, $0080
    nop
    ld a, [de]
    dec b
    nop
    ld hl, sp+$19
    dec b
    ld hl, sp+$00
    ld de, $F801
    ld hl, sp+$10
    ld bc, $00F1
    dec b
    ld bc, $F8F1
    inc b
    ld bc, $0080
    ld sp, hl
    dec d
    dec h
    nop
    nop
    dec d
    dec b
    ld hl, sp-$07
    dec bc
    ld hl, $00F8
    dec bc
    ld bc, $00F0
    dec b
    ld bc, $F8F0
    inc b
    ld bc, $0080
    ld sp, hl
    ld a, [de]
    dec h
    nop
    ld bc, $2519
    ld hl, sp-$07
    ld de, $F821
    ld bc, $2110
    ldh a, [rP1]
    dec b
    ld bc, $F8F1
    inc b
    ld bc, $0080
    nop
    inc hl
    dec b
    nop
    ld hl, sp+$22
    dec b
    ld hl, sp+$00
    ld e, $01
    ld hl, sp-$08
    dec e
    ld bc, $00F1
    inc e
    ld bc, $F8F1
    dec de
    ld bc, $0080
    nop
    dec h
    dec b
    nop
    ld hl, sp+$24
    dec b
    ld hl, sp-$04
    rra
    ld bc, $00F0
    inc e
    ld bc, $F8F0
    dec de
    ld bc, $F880
    nop
    ld hl, $F801
    ld hl, sp+$20
    ld bc, $0000
    daa
    dec b
    nop
    ld hl, sp+$26
    dec b
    pop af
    nop
    inc e
    ld bc, $F8F1
    dec de
    ld bc, $0080
    ld hl, sp+$23
    dec h
    nop
    nop
    ld [hl+], a
    dec h
    ld hl, sp-$08
    ld e, $21
    ld hl, sp+$00
    dec e
    ld hl, $F8F1
    inc e
    ld hl, $00F1
    dec de
    ld hl, $0080
    ld hl, sp+$25
    dec h
    nop
    nop
    inc h
    dec h
    ld hl, sp-$04
    rra
    ld hl, $F8F0
    inc e
    ld hl, $00F0
    dec de
    ld hl, $F880
    ld hl, sp+$21
    ld hl, $00F8
    jr nz, jr_01A_4190

    nop
    ld hl, sp+$27
    dec h
    nop
    nop
    ld h, $25
    pop af
    ld hl, sp+$1C
    ld hl, $00F1
    dec de
    ld hl, $5080
    ld [$0008], sp
    rst $38
    and a
    ld b, b
    ret nz

    ld b, b
    reti


    ld b, b
    ret nz

    ld b, b
    ld c, c
    add b
    ld b, c

jr_01A_4190:
    ld d, b
    ld [$0008], sp
    ld bc, $4064
    ld a, c
    ld b, b
    sub d
    ld b, b
    ld a, c
    ld b, b
    ld c, c
    sub b
    ld b, c
    ld d, b
    ld [$FF08], sp
    nop
    add hl, sp
    ld b, c
    ld d, d
    ld b, c
    ld h, a
    ld b, c
    ld d, d
    ld b, c
    ld c, c
    and b
    ld b, c
    ld d, b
    ld [$0108], sp
    nop
    ld a, [c]
    ld b, b
    dec bc
    ld b, c
    jr nz, jr_01A_41FC

    dec bc
    ld b, c
    ld c, c
    or b
    ld b, c
    ld d, b
    ld [$0008], sp
    cp $A7
    ld b, b
    ret nz

    ld b, b
    reti


    ld b, b
    ret nz

    ld b, b
    ld c, c
    ret nz

    ld b, c
    ld d, b
    ld [$0008], sp
    ld [bc], a
    ld h, h
    ld b, b
    ld a, c
    ld b, b
    sub d
    ld b, b
    ld a, c
    ld b, b
    ld c, c
    ret nc

    ld b, c
    ld d, b
    ld [$FE08], sp
    nop
    add hl, sp
    ld b, c
    ld d, d
    ld b, c
    ld h, a
    ld b, c
    ld d, d
    ld b, c
    ld c, c
    ldh [rSTAT], a
    ld d, b
    ld [$0208], sp
    nop
    ld a, [c]
    ld b, b
    dec bc
    ld b, c
    jr nz, jr_01A_423C

    dec bc

jr_01A_41FC:
    ld b, c
    ld c, c
    ldh a, [rSTAT]
    ld c, a
    rst $38
    nop
    nop
    ret nz

    ld b, b
    nop
    ld c, c
    nop
    ld b, d
    ld c, a
    rst $38
    nop
    nop
    ld a, c
    ld b, b
    nop
    ld c, c
    ld a, [bc]
    ld b, d
    ld c, a
    rst $38
    nop
    nop
    ld d, d
    ld b, c
    nop
    ld c, c
    inc d
    ld b, d
    ld c, a
    rst $38
    nop
    nop
    dec bc
    ld b, c
    nop
    ld c, c
    ld e, $42
    ld c, a
    rst $38
    nop
    nop
    ld c, e
    ld b, b
    nop
    ld c, c
    jr z, jr_01A_4274

    ld c, a
    rst $38
    nop
    nop
    ld [hl-], a
    ld b, b
    nop
    ld c, c
    ld [hl-], a
    ld b, d

jr_01A_423C:
    ld c, a
    rst $38
    nop
    nop
    add hl, de
    ld b, b
    nop
    ld c, c
    inc a
    ld b, d
    ld c, a
    rst $38
    nop
    nop
    nop
    ld b, b
    nop
    ld c, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld bc, $0100
    ret nz

    ld b, b
    inc bc
    nop
    nop
    ret nz

    ld b, b
    nop
    ld c, c
    ld d, b
    ld b, d
    ld c, [hl]
    inc bc
    ld a, [de]
    nop
    nop
    halt
    ld b, d
    ld a, [de]
    inc bc
    nop
    ld a, l
    ld b, d
    ld a, [de]
    ld [bc], a
    nop
    adc e
    ld b, d
    ld a, [de]
    ld bc, $8400

jr_01A_4274:
    ld b, d
    rst $38
    inc d
    ld a, [de]
    nop
    ld b, d
    ld h, l
    ld bc, $1412
    ld a, [de]
    ld a, [bc]
    ld b, d
    ld h, l
    ld bc, $1412
    ld a, [de]
    inc d
    ld b, d
    ld h, l
    ld bc, $1412
    ld a, [de]
    ld e, $42
    ld h, l
    ld bc, $0012
    nop
    ld de, $0006
    ld hl, sp+$10
    ld b, $F8
    nop
    rlca
    dec b
    ld hl, sp-$08
    ld b, $05
    ldh a, [rP1]
    ld bc, $F002
    ld hl, sp+$00
    ld [bc], a
    add b
    nop
    ld hl, sp+$11
    ld h, $00
    nop
    db $10
    ld h, $F8
    ld hl, sp+$07
    dec h
    ld hl, sp+$00
    ld b, $25
    ldh a, [$F8]
    ld bc, $F022
    nop
    nop
    ld [hl+], a
    add b
    nop
    nop
    dec d
    ld b, $00
    ld hl, sp+$14
    ld b, $F8
    nop
    dec bc
    dec b
    ld hl, sp-$08
    ld a, [bc]
    dec b
    ldh a, [rP1]
    dec b
    ld [bc], a
    ldh a, [$F8]
    inc b
    ld [bc], a
    add b
    nop
    ld hl, sp+$15
    ld h, $00
    nop
    inc d
    ld h, $F8
    ld hl, sp+$0B
    dec h
    ld hl, sp+$00
    ld a, [bc]
    dec h
    ldh a, [$F8]
    dec b
    ld [hl+], a
    ldh a, [rP1]
    inc b
    ld [hl+], a
    add b
    ld hl, sp+$00
    dec c
    dec b
    ld hl, sp-$08
    inc c
    dec b
    nop
    db $FC
    ld d, $06
    pop af
    nop
    ld [bc], a
    ld [bc], a
    pop af
    ld hl, sp+$02
    ld [hl+], a
    add b
    nop
    nop
    ld [de], a
    ld b, $00
    ld sp, hl
    ld [de], a
    ld h, $F8
    nop
    ld [$F805], sp
    ld hl, sp+$08
    dec h
    ldh a, [rP1]
    ld [bc], a
    ld [bc], a
    ldh a, [$F8]
    ld [bc], a
    ld [hl+], a
    add b
    ld hl, sp-$08
    dec c
    dec h
    ld hl, sp+$00
    inc c
    dec h
    nop
    db $FC
    ld d, $26
    pop af
    nop
    ld [bc], a
    ld [bc], a
    pop af
    ld hl, sp+$02
    ld [hl+], a
    add b
    nop
    nop
    jr jr_01A_4343

    nop
    ld hl, sp+$17
    ld b, $F8
    nop

jr_01A_4343:
    rrca
    dec b
    ld hl, sp-$08
    ld c, $05
    pop af
    nop
    inc bc
    ld [bc], a
    pop af
    ld hl, sp+$03
    ld [hl+], a
    add b
    nop
    nop
    inc de
    ld b, $00
    ld sp, hl
    inc de
    ld h, $F8
    nop
    add hl, bc
    dec b
    ld hl, sp-$08
    add hl, bc
    dec h
    ldh a, [rP1]
    inc bc
    ld [bc], a
    ldh a, [$F8]
    inc bc
    ld [hl+], a
    add b
    nop
    ld hl, sp+$18
    ld h, $00
    nop
    rla
    ld h, $F8
    ld hl, sp+$0F
    dec h
    ld hl, sp+$00
    ld c, $25
    pop af
    nop
    inc bc
    ld [bc], a
    pop af
    ld hl, sp+$03
    ld [hl+], a
    add b
    nop
    nop
    ld hl, $0006
    ld hl, sp+$20
    ld b, $F8
    nop
    inc e
    dec b
    ld hl, sp-$08
    dec de
    dec b
    pop af
    nop
    ld a, [de]
    ld [bc], a
    pop af
    ld hl, sp+$19
    ld [bc], a
    add b
    nop
    nop
    inc hl
    ld b, $00
    ld hl, sp+$22
    ld b, $F8
    db $FC
    dec e
    dec b
    ldh a, [rP1]
    ld a, [de]
    ld [bc], a
    ldh a, [$F8]
    add hl, de
    ld [bc], a
    add b
    nop
    nop
    dec h
    ld b, $00
    ld hl, sp+$24
    ld b, $F8
    nop
    rra
    dec b
    ld hl, sp-$08
    ld e, $05
    pop af
    nop
    ld a, [de]
    ld [bc], a
    pop af
    ld hl, sp+$19
    ld [bc], a
    add b
    nop
    ld hl, sp+$21
    ld h, $00
    nop
    jr nz, jr_01A_43F9

    ld hl, sp-$08
    inc e
    dec h
    ld hl, sp+$00
    dec de
    dec h
    pop af
    ld hl, sp+$1A
    ld [hl+], a
    pop af
    nop
    add hl, de
    ld [hl+], a
    add b
    nop
    ld hl, sp+$23
    ld h, $00
    nop
    ld [hl+], a
    ld h, $F8
    db $FC
    dec e
    dec h
    ldh a, [$F8]
    ld a, [de]
    ld [hl+], a
    ldh a, [rP1]
    add hl, de
    ld [hl+], a
    add b

jr_01A_43F9:
    nop
    ld hl, sp+$25
    ld h, $00
    nop
    inc h
    ld h, $F8
    ld hl, sp+$1F
    dec h
    ld hl, sp+$00
    ld e, $25
    pop af
    ld hl, sp+$1A
    ld [hl+], a
    pop af
    rst $38
    add hl, de
    ld [hl+], a
    add b
    ld d, b
    ld [$0008], sp
    rst $38
    add hl, sp
    ld b, e
    ld d, d
    ld b, e
    ld l, e
    ld b, e
    ld d, d
    ld b, e
    ld c, c
    ld [de], a
    ld b, h
    ld d, b
    ld [$0008], sp
    ld bc, $42F6
    dec bc
    ld b, e
    inc h
    ld b, e
    dec bc
    ld b, e
    ld c, c
    ld [hl+], a
    ld b, h
    ld d, b
    ld [$FF08], sp
    nop
    bit 0, e
    db $E4
    ld b, e
    ld sp, hl
    ld b, e
    db $E4
    ld b, e
    ld c, c
    ld [hl-], a
    ld b, h
    ld d, b
    ld [$0108], sp
    nop
    add h
    ld b, e
    sbc l
    ld b, e
    or d
    ld b, e
    sbc l
    ld b, e
    ld c, c
    ld b, d
    ld b, h
    ld d, b
    ld [$0008], sp
    cp $39
    ld b, e
    ld d, d
    ld b, e
    ld l, e
    ld b, e
    ld d, d
    ld b, e
    ld c, c
    ld d, d
    ld b, h
    ld d, b
    ld [$0008], sp
    ld [bc], a
    or $42
    dec bc
    ld b, e
    inc h
    ld b, e
    dec bc
    ld b, e
    ld c, c
    ld h, d
    ld b, h
    ld d, b
    ld [$FE08], sp
    nop
    bit 0, e
    db $E4
    ld b, e
    ld sp, hl
    ld b, e
    db $E4
    ld b, e
    ld c, c
    ld [hl], d
    ld b, h
    ld d, b
    ld [$0208], sp
    nop
    add h
    ld b, e
    sbc l
    ld b, e
    or d
    ld b, e
    sbc l
    ld b, e
    ld c, c
    add d
    ld b, h
    ld c, a
    rst $38
    nop
    nop
    ld d, d
    ld b, e
    nop
    ld c, c
    sub d
    ld b, h
    ld c, a
    rst $38
    nop
    nop
    dec bc
    ld b, e
    nop
    ld c, c
    sbc h
    ld b, h
    ld c, a
    rst $38
    nop
    nop
    db $E4
    ld b, e
    nop
    ld c, c
    and [hl]
    ld b, h
    ld c, a
    rst $38
    nop
    nop
    sbc l
    ld b, e
    nop
    ld c, c
    or b
    ld b, h
    ld c, a
    rst $38
    nop
    nop
    db $DD
    ld b, d
    nop
    ld c, c
    cp d
    ld b, h
    ld c, a
    rst $38
    nop
    nop
    call nz, $0042
    ld c, c
    call nz, Call_01A_4F44
    rst $38
    nop
    nop
    xor e
    ld b, d
    nop
    ld c, c
    adc $44
    ld c, a
    rst $38
    nop
    nop
    sub d
    ld b, d
    nop
    ld c, c
    ret c

    ld b, h
    ld c, a
    ld bc, $0100
    ld d, d
    ld b, e
    inc bc
    nop
    nop
    ld d, d
    ld b, e
    nop
    ld c, c
    ld [c], a
    ld b, h
    ld c, [hl]
    inc bc
    ld a, [de]
    nop
    nop
    ld [$1A45], sp
    inc bc
    nop
    rrca
    ld b, l
    ld a, [de]
    ld [bc], a
    nop
    dec e
    ld b, l
    ld a, [de]
    ld bc, $1600
    ld b, l
    rst $38
    inc d
    ld a, [de]
    sub d
    ld b, h
    ld h, l
    ld bc, $1412
    ld a, [de]
    sbc h
    ld b, h
    ld h, l
    ld bc, $1412
    ld a, [de]
    and [hl]
    ld b, h
    ld h, l
    ld bc, $1412
    ld a, [de]
    or b
    ld b, h
    ld h, l
    ld bc, $0012
    nop
    dec d
    dec b
    nop
    ld hl, sp+$14
    dec b
    ld hl, sp+$00
    add hl, bc
    ld bc, $F8F8
    ld [$F001], sp
    nop
    ld bc, $F001
    ld hl, sp+$00
    ld bc, $0080
    ld hl, sp+$15
    dec h
    nop
    nop
    inc d
    dec h
    ld hl, sp-$08
    add hl, bc
    ld hl, $00F8
    ld [$F021], sp
    ld hl, sp+$01
    ld hl, $00F0
    nop
    ld hl, $0080
    nop
    add hl, de
    dec b
    nop
    ld hl, sp+$18
    dec b
    ld hl, sp+$00
    rrca
    ld bc, $F8F8
    ld c, $01
    ldh a, [rP1]
    rlca
    ld bc, $F8F0
    ld b, $01
    add b
    nop
    ld hl, sp+$19
    dec h
    nop
    nop
    jr @+$27

    ld hl, sp-$08
    rrca
    ld hl, $00F8
    ld c, $21
    ldh a, [$F8]
    rlca
    ld hl, $00F0
    ld b, $21
    add b
    nop
    nop
    dec de
    dec b
    nop
    ld hl, sp+$1A
    dec b
    ld hl, sp+$00
    ld de, $F801
    ld hl, sp+$10
    ld bc, $00F1
    inc bc
    ld bc, $F8F1
    ld [bc], a
    ld bc, $0080
    ld sp, hl
    ld d, $25
    nop
    nop
    ld d, $05
    ld hl, sp+$00
    dec bc
    ld bc, $F8F8
    ld a, [bc]
    ld bc, $00F0
    inc bc
    ld bc, $F8F0
    ld [bc], a
    ld bc, $0080
    ld hl, sp+$1B
    dec h
    nop
    nop
    ld a, [de]
    dec h
    pop af
    nop
    inc bc
    ld bc, $F8F1
    ld [bc], a
    ld bc, $00F8
    dec l
    ld bc, $F8F8
    inc l
    ld bc, $0080
    nop
    dec e
    dec b
    nop
    ld hl, sp+$1C
    dec b
    ld hl, sp+$00
    inc de
    ld bc, $F8F8
    ld [de], a
    ld bc, $00F1
    dec b
    ld bc, $F8F1
    inc b
    ld bc, $0080
    ld sp, hl
    rla
    dec h
    nop
    nop
    rla
    dec b
    ld hl, sp+$00
    dec c
    ld bc, $F8F8
    inc c
    ld bc, $00F0
    dec b
    ld bc, $F8F0
    inc b
    ld bc, $F880
    nop
    cpl
    ld bc, $F8F8
    ld l, $01
    nop
    ld sp, hl
    dec e
    dec h
    nop
    ld bc, $251C
    pop af
    nop
    dec b
    ld bc, $F8F1
    inc b
    ld bc, $0080
    nop
    daa
    dec b
    nop
    ld hl, sp+$26
    dec b
    ld hl, sp+$00
    ld hl, $F801
    ld hl, sp+$20
    ld bc, $00F1
    rra
    ld bc, $F8F1
    ld e, $01
    add b
    nop
    nop
    add hl, hl
    dec b
    nop
    ld hl, sp+$28
    dec b
    ld hl, sp+$00
    inc hl
    ld bc, $F8F8
    ld [hl+], a
    ld bc, $00F0
    rra
    ld bc, $F8F0
    ld e, $01
    add b
    nop
    nop
    dec hl
    dec b
    nop
    ld hl, sp+$2A
    dec b
    ld hl, sp+$00
    dec h
    ld bc, $F8F8
    inc h
    ld bc, $00F1
    rra
    ld bc, $F8F1
    ld e, $01
    add b
    nop
    ld hl, sp+$27
    dec h
    nop
    nop
    ld h, $25
    ld hl, sp-$08
    ld hl, $F821
    nop
    jr nz, jr_01A_469A

    pop af
    ld hl, sp+$1F
    ld hl, $00F1
    ld e, $21
    add b
    nop
    ld hl, sp+$29
    dec h
    nop
    nop
    jr z, @+$27

    ld hl, sp-$08
    inc hl
    ld hl, $00F8
    ld [hl+], a
    ld hl, $F8F0
    rra
    ld hl, $00F0
    ld e, $21

jr_01A_469A:
    add b
    nop
    ld hl, sp+$2B
    dec h
    nop
    nop
    ld a, [hl+]
    dec h
    ld hl, sp-$08
    dec h
    ld hl, $00F8
    inc h
    ld hl, $F8F1
    rra
    ld hl, $00F1
    ld e, $21
    add b
    ld d, b
    ld [$0008], sp
    rst $38
    db $D3
    ld b, l
    db $EC
    ld b, l
    dec b
    ld b, [hl]
    db $EC
    ld b, l
    ld c, c
    or h
    ld b, [hl]
    ld d, b
    ld [$0008], sp
    ld bc, $4588
    and c
    ld b, l
    cp d
    ld b, l
    and c
    ld b, l
    ld c, c
    call nz, Call_01A_5046
    ld [$FF08], sp
    nop
    ld l, c
    ld b, [hl]
    add d
    ld b, [hl]
    sbc e
    ld b, [hl]
    add d
    ld b, [hl]
    ld c, c
    call nc, Call_01A_5046
    ld [$0108], sp
    nop
    ld e, $46
    scf
    ld b, [hl]
    ld d, b
    ld b, [hl]
    scf
    ld b, [hl]
    ld c, c
    db $E4
    ld b, [hl]
    ld d, b
    ld [$0008], sp
    cp $D3
    ld b, l
    db $EC
    ld b, l
    dec b
    ld b, [hl]
    db $EC
    ld b, l
    ld c, c
    db $F4
    ld b, [hl]
    ld d, b
    ld [$0008], sp
    ld [bc], a
    adc b
    ld b, l
    and c
    ld b, l
    cp d
    ld b, l
    and c
    ld b, l
    ld c, c
    inc b
    ld b, a
    ld d, b
    ld [$FE08], sp
    nop
    ld l, c
    ld b, [hl]
    add d
    ld b, [hl]
    sbc e
    ld b, [hl]
    add d
    ld b, [hl]
    ld c, c
    inc d
    ld b, a
    ld d, b
    ld [$0208], sp
    nop
    ld e, $46
    scf
    ld b, [hl]
    ld d, b
    ld b, [hl]
    scf
    ld b, [hl]
    ld c, c
    inc h
    ld b, a
    ld c, a
    rst $38
    nop
    nop
    db $EC
    ld b, l
    nop
    ld c, c
    inc [hl]
    ld b, a
    ld c, a
    rst $38
    nop
    nop
    and c
    ld b, l
    nop
    ld c, c
    ld a, $47
    ld c, a
    rst $38
    nop
    nop
    add d
    ld b, [hl]
    nop
    ld c, c
    ld c, b
    ld b, a
    ld c, a
    rst $38
    nop
    nop
    scf
    ld b, [hl]
    nop
    ld c, c
    ld d, d
    ld b, a
    ld c, a
    rst $38
    nop
    nop
    ld l, a
    ld b, l
    nop
    ld c, c
    ld e, h
    ld b, a
    ld c, a
    rst $38
    nop
    nop
    ld d, [hl]
    ld b, l
    nop
    ld c, c
    ld h, [hl]
    ld b, a
    ld c, a
    rst $38
    nop
    nop
    dec a
    ld b, l
    nop
    ld c, c
    ld [hl], b
    ld b, a
    ld c, a
    rst $38
    nop
    nop
    inc h
    ld b, l
    nop
    ld c, c
    ld a, d
    ld b, a
    ld c, [hl]
    inc bc
    ld a, [de]
    nop
    nop
    sbc e
    ld b, a
    ld a, [de]
    inc bc
    nop
    and d
    ld b, a
    ld a, [de]
    ld [bc], a
    nop
    or b
    ld b, a
    ld a, [de]
    ld bc, $A900
    ld b, a
    rst $38
    inc d
    ld a, [de]
    inc [hl]
    ld b, a
    ld h, l
    ld bc, $1412
    ld a, [de]
    ld a, $47
    ld h, l
    ld bc, $1412
    ld a, [de]
    ld c, b
    ld b, a
    ld h, l
    ld bc, $1412
    ld a, [de]
    ld d, d
    ld b, a
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
    inc b
    ld hl, sp-$08
    ld [bc], a
    inc b
    ldh a, [rP1]
    ld bc, $F004
    ld hl, sp+$00
    inc b
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
    inc h
    ld hl, sp+$00
    ld [bc], a
    inc h
    ldh a, [$F8]
    ld bc, $F024
    nop
    nop
    inc h
    add b
    nop
    nop
    dec bc
    inc b
    nop
    ld hl, sp+$0A
    inc b
    ld hl, sp+$00
    add hl, bc
    inc b
    ld hl, sp-$08
    ld [$F004], sp
    nop
    rlca
    inc b
    ldh a, [$F8]
    ld b, $04
    add b
    nop
    ld hl, sp+$0B
    inc h
    nop
    nop
    ld a, [bc]
    inc h
    ld hl, sp-$08
    add hl, bc
    inc h
    ld hl, sp+$00
    ld [$F024], sp
    ld hl, sp+$07
    inc h
    ldh a, [rP1]
    ld b, $24
    add b
    nop
    nop
    ld c, $24
    nop
    ld hl, sp+$0E
    inc b
    ld hl, sp+$00
    dec c
    inc h
    ld hl, sp-$08
    dec c
    inc b
    ldh a, [rP1]
    inc c
    inc h
    ldh a, [$F8]
    inc c
    inc b
    add b
    nop
    nop
    rrca
    inc h
    nop
    ld hl, sp+$0F
    inc b
    ld sp, hl
    nop
    dec c
    inc h
    ld sp, hl
    ld hl, sp+$0D
    inc b
    pop af
    nop
    inc c
    inc h
    pop af
    ld hl, sp+$0C
    inc b
    add b
    nop
    nop
    inc de
    inc h
    nop
    ld hl, sp+$13
    inc b
    ld hl, sp+$00
    ld [de], a
    inc h

Call_01A_4859:
    ld hl, sp-$08
    ld [de], a
    inc b
    ldh a, [rP1]
    ld de, $F024
    ld hl, sp+$11
    inc b
    add b
    nop
    nop
    inc d
    inc h
    nop
    ld hl, sp+$14
    inc b
    ld sp, hl
    nop
    ld [de], a
    inc h
    ld sp, hl
    ld hl, sp+$12
    inc b
    pop af
    nop
    ld de, $F124
    ld hl, sp+$11
    inc b
    add b
    nop
    nop
    ld a, [de]
    inc b
    nop
    ld hl, sp+$19
    inc b
    ld hl, sp+$00
    jr jr_01A_488F

    ld hl, sp-$08
    rla
    inc b

jr_01A_488F:
    ldh a, [rP1]
    ld d, $04
    ldh a, [$F8]
    dec d
    inc b
    add b
    nop
    nop
    inc e
    inc b
    nop
    ld hl, sp+$1B
    inc b
    ld sp, hl
    nop
    jr jr_01A_48A8

    ld sp, hl
    ld hl, sp+$17
    inc b

jr_01A_48A8:
    pop af
    nop
    ld d, $04
    pop af
    ld hl, sp+$15
    inc b
    add b
    nop
    ld hl, sp+$1A
    inc h
    nop
    nop
    add hl, de
    inc h
    ld hl, sp-$08
    jr jr_01A_48E1

    ld hl, sp+$00
    rla
    inc h
    ldh a, [$F8]
    ld d, $24
    ldh a, [rP1]
    dec d
    inc h
    add b
    nop
    ld hl, sp+$1C
    inc h
    nop
    nop
    dec de
    inc h
    ld sp, hl
    ld hl, sp+$18
    inc h
    ld sp, hl
    nop
    rla
    inc h
    pop af
    ld hl, sp+$16
    inc h
    pop af
    nop
    dec d

jr_01A_48E1:
    inc h
    add b
    ld d, b
    inc b
    ld [$FF00], sp
    ld c, l
    ld c, b
    ld h, [hl]
    ld c, b
    ld c, c
    db $E3
    ld c, b
    ld d, b
    inc b
    ld [$0100], sp
    dec de
    ld c, b
    inc [hl]
    ld c, b
    ld c, c
    rst $28
    ld c, b
    ld d, b
    inc b
    ld [$00FF], sp
    or c
    ld c, b
    jp z, Jump_01A_4948

    ei
    ld c, b
    ld d, b
    inc b
    ld [$0001], sp
    ld a, a
    ld c, b
    sbc b
    ld c, b
    ld c, c
    rlca
    ld c, c
    ld d, b
    inc b
    ld [$FE00], sp
    ld c, l
    ld c, b
    ld h, [hl]
    ld c, b
    ld c, c
    inc de
    ld c, c
    ld d, b
    inc b
    ld [$0200], sp
    dec de
    ld c, b
    inc [hl]
    ld c, b
    ld c, c
    rra
    ld c, c
    ld d, b
    inc b
    ld [$00FE], sp
    or c
    ld c, b
    jp z, Jump_01A_4948

    dec hl
    ld c, c
    ld d, b
    inc b
    ld [$0002], sp
    ld a, a
    ld c, b
    sbc b
    ld c, b
    ld c, c
    scf
    ld c, c
    ld c, a
    rst $38
    nop
    nop
    ld h, [hl]

Jump_01A_4948:
    ld c, b
    nop
    ld c, c
    ld b, e
    ld c, c
    ld c, a
    rst $38
    nop
    nop
    inc [hl]
    ld c, b
    nop
    ld c, c
    ld c, l
    ld c, c
    ld c, a
    rst $38
    nop
    nop
    jp z, LCDCInterrupt

    ld c, c
    ld d, a
    ld c, c
    ld c, a
    rst $38
    nop
    nop
    sbc b
    ld c, b
    nop
    ld c, c
    ld h, c
    ld c, c
    ld c, a
    rst $38
    nop
    nop
    ld [bc], a
    ld c, b
    nop
    ld c, c
    ld l, e
    ld c, c
    ld c, a
    rst $38
    nop
    nop
    jp hl


    ld b, a
    nop
    ld c, c
    ld [hl], l
    ld c, c
    ld c, a
    rst $38
    nop
    nop
    ret nc

    ld b, a
    nop
    ld c, c
    ld a, a
    ld c, c
    ld c, a
    rst $38
    nop
    nop
    or a
    ld b, a
    nop
    ld c, c
    adc c
    ld c, c
    ld c, [hl]
    inc bc
    ld a, [de]
    nop
    nop
    xor d
    ld c, c
    ld a, [de]
    inc bc
    nop
    or c
    ld c, c
    ld a, [de]
    ld [bc], a
    nop
    cp a
    ld c, c
    ld a, [de]
    ld bc, $B800
    ld c, c
    rst $38
    inc d
    ld a, [de]
    ld b, e
    ld c, c
    ld h, l
    ld bc, $1412
    ld a, [de]
    ld c, l
    ld c, c
    ld h, l
    ld bc, $1412
    ld a, [de]
    ld d, a
    ld c, c
    ld h, l
    ld bc, $1412
    ld a, [de]
    ld h, c
    ld c, c
    ld h, l
    ld bc, $1E12
    rra
    ld e, h
    ld a, [de]
    call $4549
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
    jr nz, jr_01A_4A23

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
    jr nz, jr_01A_4A44

    ld h, l
    ld [hl], e
    ld l, $FD
    and e
    ld [bc], a
    ld a, [de]
    jr nc, jr_01A_4A3E

    ld a, [de]
    rst $30
    ld c, c
    sbc d
    ld a, [de]
    add l
    ld c, d
    sub [hl]
    ld bc, $A6A0
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_01A_4A58

    ld h, c
    halt
    ld h, l
    ld h, h
    jr nz, @+$76

    ld l, a
    rst $38
    db $FD
    ld b, [hl]
    rrca
    ld bc, $C74A
    dec b
    nop
    ld a, [de]
    ld h, $4A
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_01A_4A51

    ld l, $FE
    db $FD
    ld c, b

jr_01A_4A23:
    ld a, [de]
    jr nc, jr_01A_4A70

    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_01A_4A5E

    ld l, $FE
    db $FD
    and c
    sbc e
    ld a, [de]
    add $49
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    inc h
    sub a
    or e

jr_01A_4A3E:
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b

jr_01A_4A44:
    inc d
    ld l, b
    di
    ld d, d
    inc de
    ld h, a
    jr nz, jr_01A_4A96

    ld l, e
    rst $28
    ld a, h
    inc h
    add b

jr_01A_4A51:
    ld e, h
    dec l
    ld l, h
    ld b, c
    ld c, d
    dec b
    nop

jr_01A_4A58:
    ld hl, sp+$4A
    ld [$F808], sp
    ret nc

jr_01A_4A5E:
    nop
    ld a, [de]
    ld l, h
    ld c, d
    add hl, de
    add sp, $46
    dec bc
    nop
    nop
    ld c, b
    ld a, [de]
    db $ED
    ld c, d
    dec d
    inc d
    ld e, l
    ld e, h

jr_01A_4A70:
    db $10
    inc d
    and c
    ld e, l
    stop
    ld b, e
    jr nz, jr_01A_4AD6

    add hl, de
    ldh a, [rDMA]
    sbc e
    ld a, [de]
    add $49
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    inc h
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

jr_01A_4A96:
    ld a, b
    inc d
    ld l, b
    di
    ld d, d
    inc de
    ld h, a
    jr nz, jr_01A_4AE9

    ld l, e
    rst $28
    ld a, h
    inc h
    add b
    ld e, h
    dec l
    ld l, h
    ld b, c
    ld c, d
    dec b
    nop
    ld hl, sp+$4A
    inc bc
    ld [de], a
    rra
    jp nc, $1A00

    ret c

    ld c, d
    add hl, de
    add sp, $46
    ld b, [hl]
    rrca
    ld bc, $A136
    dec b
    inc b
    ld a, [de]
    pop de
    ld c, d
    dec b
    nop
    ld hl, sp+$4A
    inc b
    dec b
    sbc d
    ret nc

    nop
    ld a, [de]
    ret c

    ld c, d
    add hl, de
    add sp, $46
    dec bc
    nop
    add [hl]
    ld c, b
    ld a, [de]

jr_01A_4AD6:
    db $ED
    ld c, d
    dec d
    inc d
    and c
    ld e, l
    stop
    ld b, e
    jr nc, jr_01A_4B3E

    add hl, de
    ldh a, [rDMA]
    sbc e
    ld a, [de]
    add $49
    or e

jr_01A_4AE9:
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    rrca
    ld bc, $A136
    dec b
    inc b
    ld a, [de]
    ld d, $4B
    ld b, [hl]
    ld [$010F], sp
    jr c, @-$5D

    dec b
    dec b
    rrca
    ld bc, $A139
    dec b
    dec b
    ld a, [de]
    ld d, $4B
    add [hl]
    ld [hl], e
    rrca
    rst $38
    ld a, a
    or e
    daa
    and d
    dec b
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    inc b
    rla
    or [hl]
    jp nc, $1100

    ld c, b
    ld [hl], c
    ld a, [de]
    dec a
    ld c, e
    dec bc
    ld [bc], a
    ld l, [hl]
    rrca
    ld a, [bc]
    inc de
    ld a, d
    nop
    add b
    nop
    add [hl]
    ld [hl], e
    rrca
    rst $38
    ld a, a
    or e
    daa
    and d
    dec b
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    or e

jr_01A_4B3E:
    ld sp, $01C7
    inc d
    ld de, $7148
    and [hl]
    ld d, h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_01A_4BC0

    ld [hl], d
    ld l, c
    ld [hl], b
    jr nz, @+$76

    ld l, a
    rst $38
    ld d, b
    ld h, c
    ld [hl], d
    ld h, c
    ld h, h
    ld [hl], a
    ld a, c
    ld l, [hl]
    ccf
    cp $20
    ld e, c
    ld h, l
    ld [hl], e
    ld l, $FF
    jr nz, jr_01A_4BB3

    ld l, a
    ld l, $FD
    and e
    ld [bc], a
    ld a, [de]
    add l
    ld c, e
    ld a, [de]
    ld [hl], b
    ld c, e
    and c
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    inc hl
    ld e, h
    ld b, e
    inc b
    ld e, l
    add hl, de
    ldh a, [rDMA]
    or e
    ld sp, $00C7
    ld [de], a
    and c
    inc c
    nop
    dec d
    ld de, $713A
    ld h, h
    nop
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_01A_4BA4

    ld c, b
    ld a, [de]
    rst $20
    ld d, c
    ld [hl+], a
    inc h
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop

jr_01A_4BA4:
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    di
    ld d, d
    inc de
    ld h, a
    jr nz, jr_01A_4BFD

jr_01A_4BB3:
    ld l, e
    rst $28
    ld a, h
    inc h
    add b
    ld e, h
    dec l
    ld l, h
    ld b, c
    ld c, d
    dec b
    nop
    inc [hl]

jr_01A_4BC0:
    ld h, e
    inc b
    ld d, $98
    jp nc, $1400

    or l
    ld e, l
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    inc b
    dec e
    ld l, d
    db $D3
    nop
    ld a, [de]
    push af
    ld c, e
    ld a, [de]
    dec a
    ld c, e
    ld l, [hl]
    rrca
    ld a, [bc]
    inc de
    ld a, d
    nop
    add b
    nop
    dec bc
    ld [bc], a
    adc b
    inc b
    ld d, $73
    rrca
    rst $38
    ld a, a
    or e
    daa
    and d
    dec b
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    dec d
    ld de, $712C
    ld h, b
    ld de, $7148

jr_01A_4BFD:
    ld c, $00
    dec bc
    nop
    sbc e
    ld a, [de]
    add $49
    or e
    ld sp, $00C7
    ld b, l
    ld c, b
    add hl, bc
    ld a, b
    ld c, b
    ld b, [hl]
    rrca
    nop
    ld c, b
    and b
    inc b
    dec b
    nop
    ld a, [de]
    dec e
    ld c, h
    ld c, b
    add hl, bc
    pop bc
    ld e, c
    or [hl]
    ld c, b
    and b
    inc b
    ld c, b
    add hl, bc
    and a
    ld e, [hl]
    ld b, [hl]
    rrca
    nop
    ld c, b
    and b
    ld bc, $0005
    ld a, [de]
    inc [hl]
    ld c, h
    ld c, b
    rrca
    sbc b
    ld b, d
    or [hl]
    ld c, b
    and b
    ld bc, $0F48
    ld b, e
    ld c, b
    ld b, [hl]
    rrca
    nop
    ld c, b
    and b
    ld [$0005], sp
    ld a, [de]
    ld c, e
    ld c, h
    ld c, b
    rrca
    ld a, [bc]
    ld e, c
    or [hl]
    ld c, b
    and b
    ld [$0F48], sp
    cp $5C
    ld c, b
    ld c, $E8
    ld c, l
    or [hl]
    ld c, b
    and b
    db $10
    ld c, b
    ld c, $E8
    ld d, [hl]
    ld b, l
    ld c, b
    ld a, [de]
    ld a, a
    ld d, c
    and d
    sbc b
    ld b, c
    ld c, d
    inc b
    ld a, [de]
    ld [hl], l
    ld c, h
    ld a, [de]
    pop bc
    ld c, h
    ld a, [de]
    ei
    ld c, h
    ld a, [de]
    ld b, c
    ld c, l
    and [hl]
    ld c, c
    jr nz, jr_01A_4CDC

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01A_4CF2

    ld h, l
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, l
    rst $38
    ld h, d
    ld l, a
    ld [hl], h
    ld [hl], h
    ld l, a
    ld l, l
    ld hl, $5420
    ld l, b
    ld h, c
    ld [hl], h

jr_01A_4C92:
    jr nz, jr_01A_4C92

    ld h, e
    ld l, h
    ld l, c
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_01A_4D0E

    ld h, l
    ld h, l
    ld l, l
    ld [hl], e
    jr nz, @+$76

    ld l, a
    rst $38
    ld h, a
    ld l, a
    jr nz, jr_01A_4D0B

    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, @+$6B

    ld l, [hl]
    ld [hl], h
    ld l, a
    cp $6E
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, [hl]
    ld h, l
    ld [hl], e
    ld [hl], e
    ld hl, $FDFE
    ld c, c
    ld [hl], e
    ld c, l
    and [hl]
    ld d, a
    ld c, a
    ld d, a
    ld hl, $5420
    ld l, b
    ld h, l
    jr nz, jr_01A_4D31

    ld h, h
    ld h, a
    ld h, l
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_01A_4D48

    ld l, b
    ld h, l
    jr nz, jr_01A_4D4F

    ld l, b
    ld l, a
    ld l, h
    ld h, l

jr_01A_4CDC:
    cp $77
    ld l, a
    ld [hl], d
    ld l, h
    ld h, h
    ld hl, $4920
    jr nz, jr_01A_4D49

    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    rst $38
    ld l, [hl]
    ld l, a
    ld [hl], h
    jr nz, @+$75

jr_01A_4CF2:
    ld l, h
    ld l, c
    ld [hl], b
    ld hl, $FDFE
    ld c, c
    ld [hl], e
    ld c, l
    and [hl]
    ld d, e
    ld l, b
    ld [hl], l
    ld h, e
    ld l, e
    ld [hl], e
    ld l, $20
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    rst $38
    ld [hl], h
    ld l, b

jr_01A_4D0B:
    ld h, l
    jr nz, jr_01A_4D73

jr_01A_4D0E:
    ld h, h
    ld h, a
    ld h, l
    jr nz, jr_01A_4D82

    ld h, [hl]

jr_01A_4D14:
    jr nz, jr_01A_4D14

    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_01A_4D92

    ld l, a
    ld [hl], d
    ld l, h
    ld h, h
    jr nz, jr_01A_4D82

    ld l, [hl]
    ld h, h
    rst $38
    ld c, c
    jr nz, jr_01A_4D8F

    ld h, c
    halt
    ld h, l
    jr nz, jr_01A_4D9A

    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]

jr_01A_4D31:
    ld h, a

jr_01A_4D32:
    jr nz, jr_01A_4D32

    ld [hl], h
    ld l, a
    jr nz, jr_01A_4DAF

    ld h, l
    ld h, c
    ld [hl], d
    ld hl, $FDFE
    ld c, c
    ld [hl], e
    ld c, l
    and [hl]
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01A_4DBC

jr_01A_4D48:
    ld l, b

jr_01A_4D49:
    ld h, l
    jr nz, jr_01A_4DB1

    ld h, h
    ld h, a
    ld h, l

jr_01A_4D4F:
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_01A_4DC8

    ld l, b
    ld h, l
    jr nz, jr_01A_4DCF

    ld l, a
    ld [hl], d
    ld l, h
    ld h, h
    cp $61
    ld l, [hl]
    ld h, h
    jr nz, @+$4B

    daa
    ld l, l
    jr nz, @+$01

    ld [hl], e
    ld [hl], b
    ld h, l
    ld h, l
    ld h, e
    ld l, b
    ld l, h
    ld h, l
    ld [hl], e
    ld [hl], e
    ld l, $FE
    db $FD

jr_01A_4D73:
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01A_4DE8

    ld [hl], e
    jr nz, jr_01A_4DF6

jr_01A_4D82:
    ld l, b
    ld h, l
    jr nz, @+$01

    ld [hl], e
    ld h, l
    ld h, e
    ld l, a
    ld l, [hl]
    ld h, h
    jr nz, jr_01A_4E02

    ld h, c

jr_01A_4D8F:
    ld l, h
    ld l, h
    ld h, l

jr_01A_4D92:
    ld [hl], e
    ld [hl], h
    cp $67
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], b

jr_01A_4D9A:
    jr nz, jr_01A_4E0B

    ld h, [hl]
    jr nz, jr_01A_4E13

    ld [hl], d
    ld h, l
    ld h, l
    ld [hl], e
    rst $38
    ld c, c
    jr nz, jr_01A_4E0F

    ld h, c
    halt
    ld h, l
    jr nz, @+$75

    ld h, l
    ld h, l
    ld l, [hl]

jr_01A_4DAF:
    jr nz, jr_01A_4E1A

jr_01A_4DB1:
    ld l, [hl]

jr_01A_4DB2:
    jr nz, jr_01A_4DB2

    ld [hl], h
    ld l, b
    ld h, l
    jr nz, @+$4F

    ld l, a
    ld l, a
    ld l, [hl]

jr_01A_4DBC:
    ld l, h
    ld h, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld hl, $FDFE
    and c
    ld b, l
    and d
    sbc b

jr_01A_4DC8:
    ld b, c
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01A_4E23

jr_01A_4DCF:
    ld c, b
    ld c, a
    ld d, e
    ld b, l
    jr nz, jr_01A_4E36

    ld [hl], d
    ld h, l
    jr nz, @+$01

    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_01A_4E52

    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld [hl], e
    ld [hl], h

jr_01A_4DE4:
    jr nz, jr_01A_4DE4

    ld [hl], h
    ld [hl], d

jr_01A_4DE8:
    ld h, l
    ld h, l
    ld [hl], e
    jr nz, jr_01A_4E36

    jr nz, jr_01A_4E57

    ld h, c
    halt
    ld h, l
    jr nz, @+$01

    ld h, l
    halt

jr_01A_4DF6:
    ld h, l
    ld [hl], d
    jr nz, jr_01A_4E6D

    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01A_4E68

    ld l, [hl]

jr_01A_4E00:
    jr nz, jr_01A_4E00

jr_01A_4E02:
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_01A_4E54

    ld l, a
    ld l, a
    ld l, [hl]
    ld l, h

jr_01A_4E0B:
    ld h, c
    ld l, [hl]
    ld h, h
    ld [hl], e

jr_01A_4E0F:
    ld hl, $FDFE
    and c

jr_01A_4E13:
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, b
    ld [hl], d

jr_01A_4E1A:
    ld l, l
    ld l, l
    ld l, $2E
    ld l, $20
    rst $38
    ld d, h
    ld l, b

jr_01A_4E23:
    ld l, c
    ld [hl], e
    jr nz, jr_01A_4E9B

    ld [hl], d
    ld h, l
    ld h, l
    jr nz, jr_01A_4E9F

    ld h, l
    ld h, l
    ld l, l
    ld [hl], e
    cp $74
    ld l, a
    jr nz, jr_01A_4E97

    ld h, l

jr_01A_4E36:
    jr nz, jr_01A_4EAB

    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, @+$01

    ld [hl], h
    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_01A_4EB3

    ld h, l
    ld hl, $FDFE
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b

jr_01A_4E52:
    ld l, c
    ld [hl], e

jr_01A_4E54:
    jr nz, jr_01A_4ECA

    ld [hl], d

jr_01A_4E57:
    ld h, l
    ld h, l
    jr nz, jr_01A_4EBE

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    rst $38
    ld h, d
    ld h, l
    jr nz, jr_01A_4EC5

    jr nz, jr_01A_4EDA

    ld l, a
    ld l, a

jr_01A_4E68:
    ld [hl], h
    ld l, b
    ld [hl], b
    ld l, c
    ld h, e

jr_01A_4E6D:
    ld l, e
    cp $66
    ld l, a
    ld [hl], d
    jr nz, jr_01A_4ED5

    ld l, [hl]
    jr nz, jr_01A_4EE6

    ld [hl], d
    ld l, l
    ld h, c
    ld h, a
    ld l, a
    ld l, [hl]
    ld hl, $FDFE
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    jr nz, @+$79

    ld h, l
    ld l, h
    ld l, h
    jr nz, @+$79

    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, l
    ld h, h
    rst $38
    ld h, c
    ld l, [hl]

jr_01A_4E97:
    ld h, h
    jr nz, jr_01A_4F11

    ld h, l

jr_01A_4E9B:
    ld l, h
    ld l, h
    jr nz, jr_01A_4F0A

jr_01A_4E9F:
    ld h, l
    ld [hl], b
    ld [hl], h
    cp $68
    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    ld l, b
    ld l, a
    ld l, h

jr_01A_4EAB:
    ld h, h
    jr nz, jr_01A_4F22

    ld [hl], d
    ld h, l
    ld h, l
    ld l, $FE

jr_01A_4EB3:
    db $FD
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    jr nz, jr_01A_4F29

    ld l, a

jr_01A_4EBE:
    ld l, [hl]
    ld h, l
    jr nz, jr_01A_4F36

    ld [hl], d
    ld h, l
    ld h, l

jr_01A_4EC5:
    jr nz, jr_01A_4F30

    ld l, [hl]
    rst $38
    ld [hl], h

jr_01A_4ECA:
    ld l, b
    ld h, l
    jr nz, jr_01A_4F3B

    ld l, c
    ld h, h
    ld h, h
    ld l, h
    ld h, l
    jr nz, jr_01A_4F44

jr_01A_4ED5:
    ld h, [hl]
    cp $6E
    ld l, a
    ld [hl], a

jr_01A_4EDA:
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $2E
    ld l, $2E
    ld l, $FE
    db $FD
    and c

jr_01A_4EE6:
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01A_4F52

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, e
    ld l, b
    ld h, l
    ld [hl], e
    rst $38
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_01A_4F5E

    ld l, h
    ld l, h
    jr nz, jr_01A_4F63

    ld h, l
    ld l, [hl]
    ld [hl], h
    ld hl, $54FE
    ld l, b
    ld l, c
    ld [hl], e

jr_01A_4F0A:
    jr nz, jr_01A_4F80

    ld [hl], d
    ld h, l
    ld h, l
    jr nz, jr_01A_4F79

jr_01A_4F11:
    ld h, c
    ld [hl], e
    rst $38
    ld l, b
    ld h, c
    ld h, h
    jr nz, jr_01A_4F88

    ld l, [hl]
    ld h, l
    jr nz, jr_01A_4F91

    ld l, a
    ld l, a

jr_01A_4F1F:
    jr nz, jr_01A_4F1F

    ld l, l

jr_01A_4F22:
    ld h, c
    ld l, [hl]
    ld a, c
    jr nz, jr_01A_4F8E

    ld l, c
    ld h, c

jr_01A_4F29:
    ld l, [hl]
    ld [hl], h

jr_01A_4F2B:
    jr nz, jr_01A_4F2B

    ld h, d
    ld l, c
    ld [hl], d

jr_01A_4F30:
    ld h, h
    ld [hl], e
    jr nz, jr_01A_4FA0

    ld h, c
    ld l, [hl]

jr_01A_4F36:
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38

jr_01A_4F3B:
    ld l, a
    ld l, [hl]
    jr nz, jr_01A_4FA8

    ld [hl], h
    ld hl, $FDFE
    and c

Call_01A_4F44:
jr_01A_4F44:
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$75

jr_01A_4F52:
    ld [hl], b
    ld h, l
    ld h, e
    ld l, c
    ld h, c
    ld l, h
    rst $38
    ld h, c
    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h

jr_01A_4F5E:
    jr nz, jr_01A_4FD4

    ld l, b
    ld l, c
    ld [hl], e

jr_01A_4F63:
    jr nz, jr_01A_4F63

    ld [hl], h
    ld [hl], d
    ld h, l
    ld h, l
    ld l, $20
    ld c, [hl]
    ld l, a
    ld [hl], b
    ld h, l
    inc l
    jr nz, @+$01

    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a

jr_01A_4F79:
    jr nz, jr_01A_4FEE

    ld [hl], b
    ld h, l
    ld h, e
    ld l, c
    ld h, c

jr_01A_4F80:
    ld l, h
    cp $61
    ld [hl], h
    jr nz, jr_01A_4FE7

    ld l, h
    ld l, h

jr_01A_4F88:
    ld l, $2E
    ld l, $2E
    cp $FD

jr_01A_4F8E:
    and c
    ld b, l
    and d

jr_01A_4F91:
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01A_500E

    ld [hl], d
    ld h, l
    ld h, l
    jr nz, jr_01A_500B

    ld l, a

jr_01A_4FA0:
    ld l, a
    ld l, e
    ld [hl], e
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_01A_500A

jr_01A_4FA8:
    ld h, l
    jr nz, jr_01A_5010

    halt
    ld h, l
    ld l, [hl]

jr_01A_4FAE:
    jr nz, jr_01A_4FAE

    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld l, c
    ld h, l
    ld [hl], d
    jr nz, jr_01A_502F

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, @+$01

    ld c, c
    jr nz, @+$63

    ld l, l
    ld hl, $FDFE
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, [hl]
    ld l, a
    ld [hl], d
    jr nz, @+$75

    ld l, a
    ld l, l

jr_01A_4FD4:
    ld h, l
    jr nz, @+$74

    ld h, l
    ld h, c
    ld [hl], e
    ld l, a
    ld l, [hl]
    rst $38
    ld c, c
    jr nz, jr_01A_5044

    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_01A_5053

    ld l, a
    ld [hl], h

jr_01A_4FE7:
    jr nz, jr_01A_5050

    ld h, l
    ld [hl], h

jr_01A_4FEB:
    jr nz, jr_01A_4FEB

    ld h, c

jr_01A_4FEE:
    ld l, [hl]
    ld a, c
    jr nz, jr_01A_5055

    ld l, h
    ld l, a
    ld [hl], e
    ld h, l
    ld [hl], d
    jr nz, jr_01A_506D

    ld l, a
    jr nz, @+$01

    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01A_5064

    ld [hl], l
    ld [hl], e
    ld l, b
    ld l, $FE
    db $FD
    and c
    ld b, l

jr_01A_500A:
    and d

jr_01A_500B:
    sbc b
    ld b, c
    and [hl]

jr_01A_500E:
    ld b, l
    halt

jr_01A_5010:
    ld h, l
    ld l, [hl]
    jr nz, jr_01A_507A

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01A_507A

    rst $38
    ld h, h
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    inc l
    jr nz, jr_01A_5099

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    cp $69
    ld [hl], e
    jr nz, @+$70

    ld l, a

jr_01A_502F:
    jr nz, jr_01A_5095

    ld l, a
    ld [hl], l
    ld h, d
    ld [hl], h
    rst $38
    ld d, [hl]
    ld h, c
    ld [hl], e
    ld l, b
    jr nz, jr_01A_508A

    ld h, c
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    jr nz, jr_01A_50AC

    ld [hl], e

jr_01A_5044:
    cp $74

Call_01A_5046:
    ld l, b
    ld h, l
    jr nz, jr_01A_50BA

    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld h, l

jr_01A_5050:
    ld [hl], e
    ld [hl], h
    rst $38

jr_01A_5053:
    ld h, e
    ld l, c

jr_01A_5055:
    ld [hl], h
    ld a, c
    jr nz, jr_01A_50BA

    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld hl, $FDFE
    and c
    ld b, l
    ld b, [hl]

jr_01A_5064:
    rrca
    nop
    ld b, [hl]
    and b
    ld [bc], a
    dec b
    nop
    add hl, de
    rst $20

jr_01A_506D:
    ld b, [hl]
    add e
    add hl, bc
    ret nc

    add hl, bc
    add hl, bc
    add hl, bc
    ret nc

    nop
    add hl, bc
    ld b, l
    ld b, [hl]
    rrca

jr_01A_507A:
    nop
    ld b, [hl]
    and b
    inc b
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e
    ld b, b
    pop de
    ld [$4009], sp
    pop de

jr_01A_508A:
    ld a, [bc]
    inc d
    ld b, l
    ld b, [hl]
    rrca
    nop
    ld b, [hl]
    and b
    ld bc, $0005

jr_01A_5095:
    add hl, de
    rst $20
    ld b, [hl]
    add e

jr_01A_5099:
    add l
    jp nc, $0A0C

    add l
    jp nc, $0F15

    ld b, l
    ld b, [hl]
    rrca
    nop
    ld b, [hl]
    and b
    ld [$0005], sp
    add hl, de
    rst $20

jr_01A_50AC:
    ld b, [hl]
    add e
    ld hl, $08D2
    rlca
    ld hl, $12D2
    dec b
    ld b, l
    ld b, l
    ld e, $1F

jr_01A_50BA:
    ld e, h
    ld a, [de]
    cp a
    ld d, b
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
    jr nz, jr_01A_5115

    ld h, c
    ld l, l
    ld h, l
    ccf
    cp $FD
    and b
    and [hl]
    jr nz, jr_01A_5126

    ld l, a
    ld l, $FF
    jr nz, jr_01A_5136

    ld h, l
    ld [hl], e
    ld l, $FD
    and e
    ld [bc], a
    ld a, [de]
    ld [hl+], a
    ld d, c
    ld a, [de]
    jp hl


    ld d, b
    sbc d
    ld a, [de]
    ld a, a
    ld d, c
    sub [hl]
    ld bc, $A6A0
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_01A_514A

    ld h, c
    halt
    ld h, l
    ld h, h
    jr nz, jr_01A_5171

    ld l, a
    rst $38
    db $FD
    ld b, [hl]
    rrca
    ld bc, $C74A
    dec b
    nop
    ld a, [de]
    jr jr_01A_515B

    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_01A_5143

    ld l, $FE
    db $FD
    ld c, b

jr_01A_5115:
    ld a, [de]
    ld [hl+], a
    ld d, c
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_01A_5150

    ld l, $FE
    db $FD
    and c
    sbc e
    ld a, [de]
    cp b

jr_01A_5126:
    ld d, b
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    inc h
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00

jr_01A_5136:
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld [bc], a
    ld d, e
    inc de

jr_01A_5143:
    ld h, a
    adc d
    ld c, d
    ld l, e
    sub d
    ld [hl], a
    ld a, [hl+]

jr_01A_514A:
    db $10
    ld d, c
    dec l
    ld l, h
    xor e
    ld c, d

jr_01A_5150:
    dec b
    nop
    ld hl, sp+$4A
    ld [$F808], sp
    ret nc

    nop
    ld a, [de]
    ld h, [hl]

jr_01A_515B:
    ld d, c
    add hl, de
    add sp, $46
    dec bc
    nop
    nop
    ld c, b
    ld a, [de]
    ld e, b
    ld d, d
    dec d
    inc d
    ld e, l
    ld e, h
    db $10
    inc d
    and c
    ld e, l
    stop
    ld b, e

jr_01A_5171:
    jr nz, jr_01A_51D0

    add hl, de
    ldh a, [rDMA]
    sbc e
    ld a, [de]
    cp b
    ld d, b
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    inc h
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
    ld [bc], a
    ld d, e
    inc de
    ld h, a
    adc d
    ld c, d
    ld l, e
    sub d
    ld [hl], a
    ld a, [hl+]
    db $10
    ld d, c
    dec l
    ld l, h
    xor e
    ld c, d
    dec b
    nop
    ld hl, sp+$4A
    rlca
    rlca
    reti


    ret nc

    nop
    ld a, [de]
    jp nc, $1951

    add sp, $46
    ld b, [hl]
    rrca
    ld bc, $A136
    dec b
    inc b
    ld a, [de]
    bit 2, c
    dec b
    nop
    ld hl, sp+$4A
    ld [$6014], sp
    jp nc, $1A00

    jp nc, $1951

    add sp, $46
    dec bc
    nop
    ld c, b
    ld a, [de]
    ld e, b

jr_01A_51D0:
    ld d, d
    ld b, l
    dec d
    inc d
    and c
    ld e, l
    stop
    ld b, e
    jr nc, jr_01A_5238

    add hl, de
    ldh a, [rDMA]
    sbc e
    ld a, [de]
    cp b
    ld d, b
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    inc h
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
    ld [bc], a
    ld d, e
    inc de
    ld h, a
    adc d
    ld c, d
    ld l, e
    sub d
    ld [hl], a
    ld a, [hl+]
    db $10
    ld d, c
    dec l
    ld l, h

jr_01A_5209:
    xor e
    ld c, d
    dec b
    nop
    inc [hl]
    ld h, e
    inc bc
    rlca
    push de
    ret nc

    nop
    inc d
    or l
    ld e, l
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld [bc], a
    nop
    ld [bc], a
    ret nc

    nop
    ld a, [de]
    ld b, e
    ld d, d
    ld a, [de]
    xor b
    ld d, d
    ld l, [hl]
    rrca
    ld a, [bc]
    inc de
    ld a, d
    nop
    add b
    nop
    dec bc
    ld [bc], a
    adc b
    inc bc
    rlca
    ld [hl], e
    rrca

jr_01A_5238:
    rst $38
    ld a, a
    or e
    daa
    and d
    dec b
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    dec d
    ld de, $713A
    ld [hl], b
    ld de, $7172
    ld c, $00
    dec bc
    nop
    sbc e
    ld a, [de]
    cp b
    ld d, b
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    rrca
    ld bc, $A136
    dec b
    inc b
    ld a, [de]
    add c
    ld d, d
    ld b, [hl]
    ld [$010F], sp
    jr c, jr_01A_5209

    dec b
    dec b
    rrca
    ld bc, $A139
    dec b
    dec b
    ld a, [de]
    add c
    ld d, d
    add [hl]
    ld [hl], e
    rrca
    rst $38
    ld a, a
    or e
    daa
    and d
    dec b
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld [bc], a
    rlca
    call nc, $00D0
    ld de, $7172
    ld a, [de]
    xor b
    ld d, d
    ld l, [hl]
    rrca
    ld a, [bc]
    inc de
    ld a, d
    nop
    add b
    nop
    dec bc
    ld [bc], a
    add [hl]
    ld [hl], e
    rrca
    rst $38
    ld a, a
    or e
    daa
    and d
    dec b
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    or e
    ld sp, $01C7
    inc d
    ld de, $7172
    and [hl]
    ld d, h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_01A_532B

    ld [hl], d
    ld l, c
    ld [hl], b
    jr nz, jr_01A_5330

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
    ccf
    cp $20
    ld e, c
    ld h, l
    ld [hl], e
    ld l, $FF
    jr nz, jr_01A_531E

    ld l, a
    ld l, $FD
    and e
    ld [bc], a
    ld a, [de]
    ldh a, [rHDMA2]
    ld a, [de]
    db $DB
    ld d, d
    and c
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    adc l
    ld e, h
    ld b, e
    inc b
    ld e, l
    add hl, de
    ldh a, [rDMA]
    or e
    ld sp, $00C7
    ld [de], a
    and c
    inc c
    nop
    ld b, e
    inc c
    dec d
    ld de, $7148
    ld [$2C11], sp
    ld [hl], c
    ld h, h
    nop
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_01A_5315

    ld c, b
    ld a, [de]
    sbc c
    ld c, e
    ld c, b
    add hl, bc
    ld e, a
    ld l, e
    ld b, [hl]
    rrca
    nop
    ld c, b
    and b
    ld b, b
    dec b

jr_01A_5315:
    nop
    ld a, [de]
    dec e
    ld d, e
    ld c, b
    inc c
    xor l
    ld l, e
    or [hl]

jr_01A_531E:
    ld c, b
    and b
    ld b, b
    ld c, b
    inc c
    or c
    ld l, a
    ld b, [hl]
    rrca
    nop
    ld c, b
    and b
    add b

jr_01A_532B:
    dec b
    nop
    ld a, [de]
    inc [hl]
    ld d, e

jr_01A_5330:
    ld c, b
    ld d, $92
    ld l, a
    or [hl]
    ld c, b
    and b
    add b
    ld c, b
    ld d, $7D
    ld [hl], e
    ld b, [hl]
    rrca
    nop
    ld c, c
    and b
    ld bc, $0005
    ld a, [de]
    ld c, e
    ld d, e
    ld c, b
    ld [$6D13], sp
    or [hl]
    ld c, c
    and b
    ld bc, $0848
    rst $38
    ld [hl], d
    ld b, [hl]
    rrca
    nop
    ld c, c
    and b
    ld [bc], a
    dec b
    nop
    ld a, [de]
    ld h, d
    ld d, e
    ld c, b
    ld c, $D9
    ld l, d
    or [hl]
    ld c, c
    and b
    ld [bc], a
    ld c, b
    ld c, $F1
    ld [hl], h
    ld c, b
    db $10
    and l
    ld b, l
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, h
    ld l, a
    jr nz, jr_01A_53C0

    jr nz, jr_01A_53EB

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, @+$22

    rst $38
    ld h, l
    ld a, b
    ld [hl], b
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, jr_01A_53FD

    ld l, b
    ld l, c
    ld [hl], e

jr_01A_538C:
    jr nz, jr_01A_538C

    ld [hl], h
    ld [hl], d
    ld h, l
    ld h, l
    jr nz, jr_01A_5408

    ld l, a
    jr nz, jr_01A_540B

    ld h, c
    ld l, h
    ld l, e
    rst $38
    ld h, d
    ld h, c
    ld h, e
    ld l, e
    jr nz, @+$76

    ld l, a
    jr nz, jr_01A_5411

    ld h, l
    ccf

jr_01A_53A6:
    jr nz, jr_01A_53A6

    db $FD
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01A_5429

    ld [hl], d
    ld h, l
    ld h, l
    jr nz, jr_01A_5427

    ld h, c
    ld a, c
    rst $38
    ld l, h
    ld l, c
    halt

jr_01A_53C0:
    ld h, l
    jr nz, jr_01A_542C

    ld l, [hl]
    jr nz, jr_01A_543A

    ld l, b
    ld h, l

jr_01A_53C8:
    jr nz, jr_01A_53C8

    ld h, h
    ld h, l
    ld [hl], e
    ld h, l
    ld [hl], d
    ld [hl], h
    inc l
    jr nz, jr_01A_5435

    ld [hl], l
    ld [hl], h
    jr nz, jr_01A_5420

    jr nz, @+$01

    ld h, c
    ld l, l
    jr nz, jr_01A_5451

    ld l, b
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld l, c
    ld h, l
    ld [hl], d

jr_01A_53E5:
    jr nz, jr_01A_53E5

    ld [hl], h
    ld l, b
    ld h, c
    ld l, [hl]

jr_01A_53EB:
    jr nz, jr_01A_5456

    ld [hl], h
    jr nz, jr_01A_5459

    ld [hl], e
    ld hl, $FDFE
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    jr nz, jr_01A_5465

jr_01A_53FD:
    ld h, c
    halt
    ld h, l
    jr nz, jr_01A_5464

    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01A_5470

    ld l, [hl]

jr_01A_5408:
    jr nz, @+$01

    ld [hl], h

jr_01A_540B:
    ld l, b
    ld h, l
    jr nz, jr_01A_5473

    ld h, l
    ld [hl], e

jr_01A_5411:
    ld h, l
    ld [hl], d
    ld [hl], h
    jr nz, jr_01A_548A

    ld l, a
    ld l, a
    cp $6C
    ld l, a
    ld l, [hl]
    ld h, a
    ld hl, $5420

jr_01A_5420:
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01A_5499

    ld [hl], d
    ld h, l

jr_01A_5427:
    ld h, l
    rst $38

jr_01A_5429:
    ld l, l
    ld [hl], l
    ld [hl], e

jr_01A_542C:
    ld [hl], h
    jr nz, jr_01A_5491

    ld h, l
    jr nz, jr_01A_549C

    ld [hl], l
    ld [hl], e
    ld [hl], h

jr_01A_5435:
    jr nz, jr_01A_5498

jr_01A_5437:
    jr nz, jr_01A_5437

    ld l, l

jr_01A_543A:
    ld l, c
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    ld hl, $FDFE
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, @+$6F

    ld h, c
    ld a, c
    jr nz, jr_01A_54BC

    ld l, a

jr_01A_5451:
    ld l, a
    ld l, e
    jr nz, jr_01A_5475

    rst $38

jr_01A_5456:
    ld l, h
    ld l, c
    ld l, e

jr_01A_5459:
    ld h, l
    jr nz, jr_01A_54BD

    jr nz, jr_01A_54D2

    ld [hl], d
    ld h, l
    ld h, l
    inc l

jr_01A_5462:
    jr nz, jr_01A_5462

jr_01A_5464:
    ld h, d

jr_01A_5465:
    ld [hl], l
    ld [hl], h
    jr nz, jr_01A_54DB

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_01A_54D9

jr_01A_5470:
    ld [hl], h
    daa
    ld [hl], e

jr_01A_5473:
    rst $38
    ld l, d

jr_01A_5475:
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01A_54DB

    ld l, [hl]
    jr nz, jr_01A_549D

    cp $6F
    halt
    ld h, l
    ld [hl], d
    ld h, a
    ld [hl], d
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, jr_01A_5500

    ld h, l

jr_01A_548A:
    ld h, l
    ld h, h
    ld hl, $FDFE
    and c
    ld b, l

jr_01A_5491:
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld l, c

jr_01A_5498:
    ld [hl], e

jr_01A_5499:
    jr nz, jr_01A_550E

    ld [hl], l

jr_01A_549C:
    ld [hl], d

jr_01A_549D:
    ld h, l
    jr nz, jr_01A_5509

    ld [hl], e
    jr nz, jr_01A_5504

    rst $38
    ld [hl], b
    ld l, a
    ld [hl], b
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], d
    jr nz, jr_01A_5521

    ld a, c
    ld [hl], b
    ld h, l
    jr nz, jr_01A_5521

    ld h, [hl]
    cp $74
    ld [hl], d
    ld h, l
    ld h, l
    jr nz, jr_01A_551B

    ld [hl], d
    ld l, a

jr_01A_54BC:
    ld [hl], l

jr_01A_54BD:
    ld l, [hl]
    ld h, h
    rst $38
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    ld [hl], e
    jr nz, jr_01A_5545

    ld l, b

jr_01A_54D2:
    ld h, l
    ld [hl], d
    ld h, l
    rst $38
    ld h, c
    ld l, [hl]
    ld a, c

jr_01A_54D9:
    ld [hl], h
    ld l, b

jr_01A_54DB:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$63

    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    cp $68
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_01A_5560

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01A_555A

    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    rst $38
    ld h, e
    ld l, a
    halt
    ld h, l
    ld [hl], d
    ld h, l
    ld h, h
    jr nz, jr_01A_5568

    ld l, [hl]

jr_01A_5500:
    jr nz, jr_01A_556F

    ld [hl], l
    ld h, h

jr_01A_5504:
    ccf
    cp $FD
    and c
    ld b, l

jr_01A_5509:
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c

jr_01A_550E:
    ld [hl], h
    jr nz, @+$63

    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, c
    ld [hl], d
    ld [hl], e
    jr nz, jr_01A_558D

    ld l, a
    rst $38

jr_01A_551B:
    ld h, d
    ld h, l
    jr nz, jr_01A_5580

    jr nz, jr_01A_558E

jr_01A_5521:
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_01A_5596

    ld h, [hl]

jr_01A_5528:
    jr nz, jr_01A_5528

    ld l, l
    ld [hl], l
    ld h, h
    jr nz, @+$6B

    ld l, [hl]
    jr nz, jr_01A_55A6

    ld l, b
    ld h, l
    jr nz, @+$01

    ld [hl], e
    ld l, b
    ld h, c
    ld [hl], b
    ld h, l
    jr nz, jr_01A_55AC

    ld h, [hl]
    jr nz, jr_01A_55A1

jr_01A_5540:
    jr nz, jr_01A_5540

    ld [hl], e
    ld [hl], h
    ld [hl], l

jr_01A_5545:
    ld h, d
    ld h, d
    ld a, c
    jr nz, jr_01A_55BE

    ld [hl], d
    ld h, l
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    ld h, [hl]
    jr nz, jr_01A_55A3

jr_01A_555A:
    jr nz, jr_01A_55CA

    ld h, l
    halt
    ld h, l
    ld [hl], d

jr_01A_5560:
    jr nz, jr_01A_55D5

    ld h, l
    ld h, l
    rst $38
    ld h, c
    ld l, [hl]
    ld l, a

jr_01A_5568:
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_01A_55E2

    ld [hl], d

jr_01A_556F:
    ld h, l
    ld h, l
    jr nz, jr_01A_5593

    cp $63
    ld l, a
    halt
    ld h, l
    ld [hl], d
    ld h, l
    ld h, h
    jr nz, @+$6B

    ld l, [hl]
    jr nz, jr_01A_55ED

jr_01A_5580:
    ld [hl], l
    ld h, h
    inc l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01A_55D3

    jr nz, jr_01A_5603

    ld l, a

jr_01A_558D:
    ld [hl], l

jr_01A_558E:
    ld l, h
    ld h, h

jr_01A_5590:
    jr nz, jr_01A_5590

    ld l, [hl]

jr_01A_5593:
    ld h, l
    halt
    ld h, l

jr_01A_5596:
    ld [hl], d
    jr nz, jr_01A_560C

    ld h, l
    ld h, l
    jr nz, @+$01

    ld h, c
    ld l, [hl]
    ld l, a
    ld [hl], h

jr_01A_55A1:
    ld l, b
    ld h, l

jr_01A_55A3:
    ld [hl], d
    jr nz, jr_01A_561A

jr_01A_55A6:
    ld [hl], d
    ld h, l
    ld h, l
    cp $63
    ld l, a

jr_01A_55AC:
    halt
    ld h, l
    ld [hl], d
    ld h, l
    ld h, h
    jr nz, jr_01A_561C

    ld l, [hl]
    jr nz, jr_01A_5623

    ld [hl], l
    ld h, h
    ld l, $FE
    db $FD
    and c
    ld b, l
    and d

jr_01A_55BE:
    sbc b
    ld b, c
    and [hl]
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01A_563A

    ld l, a
    jr nz, @+$6A

jr_01A_55CA:
    ld l, a
    ld [hl], h
    rst $38
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_01A_5647

jr_01A_55D3:
    ld l, b
    ld h, c

jr_01A_55D5:
    ld [hl], h
    jr nz, jr_01A_564C

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    cp $69
    ld [hl], e
    jr nz, jr_01A_5654

    ld [hl], h

jr_01A_55E2:
    ld h, l
    ld h, c
    ld l, l
    jr nz, jr_01A_5659

    ld l, c
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38

jr_01A_55ED:
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01A_5667

    ld l, b
    ld h, l
    jr nz, jr_01A_5663

    ld h, l
    ld h, c
    halt
    ld h, l
    ld [hl], e
    cp $6F
    ld h, [hl]
    jr nz, jr_01A_5675

    ld l, b
    ld l, c

jr_01A_5603:
    ld [hl], e
    jr nz, @+$76

    ld [hl], d
    ld h, l
    ld h, l
    ld l, $FE
    db $FD

jr_01A_560C:
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e

jr_01A_561A:
    jr nz, jr_01A_568F

jr_01A_561C:
    ld l, a
    ld l, l
    ld h, l
    rst $38
    ld [hl], a
    ld [hl], d
    ld l, c

jr_01A_5623:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01A_568C

    ld h, c
    ld [hl], d
    halt
    ld h, l
    ld h, h
    cp $6F
    ld l, [hl]
    jr nz, jr_01A_56A7

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01A_56AC

    ld [hl], d
    ld h, l

jr_01A_563A:
    ld h, l
    ld l, $FF
    ld c, c
    ld [hl], h
    jr nz, jr_01A_56B4

    ld h, c
    ld a, c
    ld [hl], e
    jr nz, @+$29

    ld d, h

jr_01A_5647:
    ld l, b
    ld h, l

jr_01A_5649:
    jr nz, jr_01A_5649

    ld l, c

jr_01A_564C:
    ld l, [hl]
    ld h, e
    ld [hl], d
    ld h, l
    ld h, h
    ld l, c
    ld h, d
    ld l, h

jr_01A_5654:
    ld h, l
    inc l
    rst $38
    ld [hl], e
    ld [hl], b

jr_01A_5659:
    ld h, l
    ld h, e
    ld [hl], h
    ld h, c
    ld h, e
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], d
    inc l

jr_01A_5663:
    cp $61
    ld l, l
    ld h, c

jr_01A_5667:
    ld a, d
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, jr_01A_56E0

    ld h, l
    ld h, c
    ld l, h
    rst $38
    ld [hl], h
    ld h, c
    ld l, h

jr_01A_5675:
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01A_56EF

    ld [hl], d
    ld h, l
    ld h, l
    ld hl, $FE27
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $FF
    daa
    ld c, a
    ld [hl], l

jr_01A_568C:
    ld [hl], h
    jr nz, @+$71

jr_01A_568F:
    ld h, [hl]
    jr nz, jr_01A_5701

    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    ld l, $27
    cp $46
    ld l, c
    ld h, a
    ld [hl], l
    ld [hl], d
    ld h, l
    ld [hl], e
    ld l, $FE
    db $FD
    and c
    ld b, l
    ld b, [hl]
    rrca

jr_01A_56A7:
    nop
    ld b, [hl]
    and b
    jr nz, jr_01A_56B1

jr_01A_56AC:
    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e

jr_01A_56B1:
    ld b, $D2
    add hl, bc

jr_01A_56B4:
    dec bc
    ld b, $D2
    ld de, $4508
    ld b, [hl]
    rrca
    nop
    ld b, a
    and b
    ld [$0005], sp
    add hl, de
    rst $20
    ld b, [hl]

jr_01A_56C5:
    add e
    ldh a, [$D1]
    ld b, $06
    ldh a, [$D1]
    db $10
    db $10
    ld b, l
    ld b, [hl]
    rrca
    nop
    ld b, [hl]
    and b
    add b
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e
    ld c, a
    ret nc

    ld a, [bc]
    dec bc
    ld c, a

jr_01A_56E0:
    ret nc

    ld [bc], a
    inc de
    ld b, l
    ld b, [hl]
    rrca
    nop
    ld b, a
    and b
    ld bc, $0005
    add hl, de
    rst $20
    ld b, [hl]

jr_01A_56EF:
    add e
    ld b, h
    ret nc

    ld b, $06
    ld b, h
    ret nc

    ld [bc], a
    ld [$4645], sp
    add hl, bc
    db $10
    ld bc, $A138
    dec b
    dec b

jr_01A_5701:
    db $10
    ld bc, $A139
    dec b
    dec b
    add hl, de
    rst $20
    ld b, [hl]
    add e
    ld a, [de]
    pop de
    rlca
    rlca
    ld a, [de]
    pop de
    add hl, bc
    inc c
    ld b, l
    ld b, [hl]
    rrca
    ld bc, $A136
    dec b
    inc b
    ld a, [de]
    jr nc, jr_01A_5775

    ld b, [hl]
    ld [$010F], sp
    jr c, jr_01A_56C5

    dec b
    dec b
    rrca
    ld bc, $A139
    dec b
    dec b
    ld a, [de]
    jr nc, @+$59

    ld b, l
    add e
    jp $02D1


    ld a, [bc]
    jp $0FD1


    ld bc, $9745
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
    ld de, $1353
    ld h, a
    db $EC
    ld c, d
    dec b
    nop
    inc [hl]
    ld h, e
    ld a, [bc]
    ld c, $C6
    jp nc, $1A00

    ld a, c
    ld d, a
    add hl, de
    add sp, $46
    dec bc
    nop
    add [hl]
    or e

jr_01A_5765:
    ld sp, $01C7
    ld [hl], e
    rrca
    rst $38
    ld a, a
    or e
    daa
    and d
    dec b
    sbc b
    ld a, d
    ld h, b
    rrca
    ld c, b

jr_01A_5775:
    ld a, [de]

jr_01A_5776:
    sbc e
    ld d, a
    ld b, l
    dec d
    inc d
    and c
    ld e, l
    stop
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    or e
    ld sp, $00C7
    ld e, h

jr_01A_5789:
    ld a, [de]
    adc l
    ld d, a
    ld b, l
    and c
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, e
    rst $38

jr_01A_5794:
    ld b, e
    rst $38
    ld c, b
    ld a, [de]
    sbc e
    ld d, a
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    and d
    sbc b
    ld b, c

jr_01A_57A7:
    sbc e
    ld a, [de]
    add h
    ld d, a
    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, @+$76

    ld l, a
    jr nz, jr_01A_582C

    ld l, b
    ld h, l

jr_01A_57BA:
    rst $38
    db $FD
    ld b, e
    jr jr_01A_5765

    ld c, l
    ld h, c
    ld h, a
    ld l, c
    dec l
    ld c, [hl]
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld a, [hl-]

jr_01A_57CB:
    rst $38
    db $FD
    ld b, e
    jr jr_01A_5776

    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    jr nz, jr_01A_582B

    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], h

jr_01A_57DE:
    rst $38
    db $FD
    ld b, e
    jr jr_01A_5789

    ld b, h
    ld b, l
    ld c, l
    ld c, a
    ld hl, $FF21
    db $FD
    ld b, e
    jr jr_01A_5794

    ld d, h
    ld l, a
    jr nz, jr_01A_5862

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_01A_5858

    ld l, [hl]
    ld a, c
    jr nz, jr_01A_586A

    ld h, [hl]
    rst $38
    db $FD
    ld b, e
    jr jr_01A_57A7

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01A_5869

    ld l, b
    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], e
    rst $38
    db $FD
    ld b, e
    jr jr_01A_57BA

    ld h, l
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, @+$63

    ld l, [hl]
    ld a, c
    jr nz, @+$71

    ld h, [hl]
    rst $38
    db $FD
    ld b, e
    jr jr_01A_57CB

    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_01A_588B

    ld h, d

jr_01A_582B:
    ld l, a

jr_01A_582C:
    halt
    ld h, l
    jr nz, jr_01A_5896

    ld l, c
    halt
    ld h, l
    rst $38
    db $FD
    ld b, e
    jr jr_01A_57DE

    ld h, h
    ld l, a
    ld l, a
    ld [hl], d
    ld [hl], e
    ld l, $FF
    db $FD
    and c
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld c, b
    ld a, [de]
    sbc e
    ld d, a
    ld b, l
    sub a
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b

jr_01A_5858:
    jr nz, jr_01A_58AD

    inc de
    ld b, [hl]
    ld a, [bc]
    nop
    inc l
    and b
    ld b, b
    ld a, [de]

jr_01A_5862:
    ld l, b
    ld e, b
    ld l, b
    cpl
    ld d, e
    inc de
    ld h, a

jr_01A_5869:
    dec l

jr_01A_586A:
    ld c, e
    ld l, h
    ld c, b
    ld c, e
    dec b
    nop
    ld hl, sp+$4A
    dec b
    dec bc
    adc c
    ret nc

    nop
    ld a, [de]
    ld a, [hl]
    ld l, c
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    rlca
    inc bc
    dec hl
    ret nc

    nop
    inc de
    add hl, sp
    ld h, b
    ld a, [de]
    xor e

jr_01A_588B:
    ld e, b
    ld l, [hl]
    jr nc, jr_01A_589C

    ldh [rBGP], a
    nop
    add b
    nop
    dec bc
    nop

jr_01A_5896:
    add [hl]
    ld [hl], e
    rrca
    rst $38
    ld a, a
    ld b, [hl]

jr_01A_589C:
    ld a, [bc]
    nop
    ld b, [hl]
    and b
    ld [$A61A], sp
    ld e, b
    dec bc
    ld [bc], a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    inc d
    inc de

jr_01A_58AD:
    add hl, sp
    ld h, b
    ld b, [hl]
    ld [$2C00], sp
    and b
    ld b, b
    ld a, [bc]
    nop
    dec l
    and b
    ld [bc], a
    ld a, [de]
    db $DD
    ld e, b
    ld b, [hl]
    nop
    dec l
    and b
    ld [bc], a
    ld a, [de]
    push de
    ld e, b
    ld b, [hl]
    nop
    inc l
    and b
    ld [$E91A], sp
    ld e, b
    ld e, [hl]
    ld a, [de]
    rlca
    ld e, d
    ld c, b
    inc de
    adc c
    ld h, b
    ld e, [hl]
    ld a, [de]
    pop af
    ld e, b
    ld c, b
    inc de
    adc c
    ld h, b
    or [hl]
    dec l
    and b
    ld [bc], a
    ld e, [hl]
    ld a, [de]
    add hl, de
    ld e, c
    ld c, b
    inc de
    adc c
    ld h, b
    ld e, [hl]
    ld a, [de]
    call nz, Call_01A_4859
    inc de
    adc c
    ld h, b
    and d
    ret c

    ld h, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, @+$6A

    ld h, c
    ld [hl], e
    jr nz, jr_01A_595E

    rst $38
    ld [hl], e
    ld [hl], h
    ld l, a
    ld l, a
    ld l, h
    jr nz, jr_01A_5966

    ld l, [hl]
    ld h, h
    cp $65
    halt
    ld h, l
    ld [hl], d
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $A245
    ret c

    ld h, b
    and [hl]
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    ld hl, $48FE
    ld l, a
    ld [hl], a
    jr nz, jr_01A_598E

    ld l, a
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    rst $38
    ld l, h
    ld l, c
    ld l, e
    ld h, l
    jr nz, @+$6F

    ld a, c
    jr nz, jr_01A_59A7

    ld h, l
    ld [hl], a
    cp $66
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], l
    ld [hl], e
    dec l
    ld h, [hl]
    ld [hl], d
    ld h, l
    ld h, l
    rst $38
    ld l, b
    ld l, a
    ld l, l
    ld h, l
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    ccf
    rst $38
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01A_59C5

jr_01A_595E:
    ld l, a
    ld [hl], h
    jr nz, jr_01A_59D4

    ld l, c
    ld h, h
    cp $6F

jr_01A_5966:
    ld h, [hl]
    jr nz, jr_01A_59E2

    ld l, a
    ld [hl], l
    ld [hl], d
    rst $38
    ld h, [hl]
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], l
    ld [hl], e
    ccf
    cp $FD
    and d
    ret c

    ld h, b
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], b
    ld h, l
    ld l, $2E
    ld l, $20
    ld c, c
    rst $38
    ld h, a
    ld l, a
    ld [hl], h
    jr nz, jr_01A_59FB

    ld l, c
    ld h, h
    jr nz, jr_01A_59FC

    ld h, [hl]

jr_01A_598E:
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_01A_59FC

    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    ld l, $FF
    ld c, c
    jr nz, jr_01A_5A11

    ld [hl], d
    ld h, c
    ld h, h
    ld h, l
    ld h, h
    jr nz, jr_01A_5A0D

    ld [hl], h
    cp $69

jr_01A_59A7:
    ld l, [hl]
    jr nz, jr_01A_5A10

    ld l, a
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld h, l
    rst $38
    ld h, h
    ld h, l
    ld l, h
    ld [hl], l
    ld a, b
    ld h, l
    jr nz, jr_01A_5A26

    ld l, a
    ld h, h
    ld h, l
    ld l, h
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $A245

jr_01A_59C5:
    ret c

    ld h, b
    and [hl]
    ld b, c
    ld [hl], d
    ld h, a
    ld l, b
    inc l
    jr nz, jr_01A_5A43

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    rst $38

jr_01A_59D4:
    ld h, d
    ld h, l
    jr nz, jr_01A_5A41

    ld h, e
    ld l, e
    ld a, c
    cp $66
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], l
    ld [hl], e

jr_01A_59E2:
    rst $38
    ld h, l
    halt
    ld h, l
    ld [hl], d
    ld a, c
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $FDFE
    ld b, [hl]
    ld [$0008], sp
    inc l
    and b
    ld [bc], a
    nop
    inc l
    and b
    inc b

jr_01A_59FB:
    ld a, [bc]

jr_01A_59FC:
    nop
    inc l
    and b
    db $10
    ld a, [de]
    cp h
    ld e, e
    and c
    ld e, e
    ld bc, $B645
    inc l
    and b
    ld [$D8A2], sp

jr_01A_5A0D:
    ld h, b
    and [hl]
    ld b, c

jr_01A_5A10:
    ld [hl], d

jr_01A_5A11:
    ld [hl], d
    inc l
    jr nz, jr_01A_5A68

    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    inc l
    rst $38
    ld h, a
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01A_5A97

    ld l, a
    jr nz, @+$75

jr_01A_5A26:
    ld h, l
    ld h, l
    cp $79
    ld h, l
    jr nz, jr_01A_5A8E

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld hl, $47FF
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_01A_5AB0

    ld l, a
    ld [hl], d
    ld l, e
    jr nz, jr_01A_5AAD

    ld l, [hl]
    cp $62

jr_01A_5A41:
    ld h, l
    ld h, c

jr_01A_5A43:
    ld [hl], h
    ld l, c
    ld l, [hl]
    daa
    jr nz, jr_01A_5AB8

    ld [hl], l
    ld [hl], d
    rst $38
    ld l, l
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
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    inc l
    jr nz, @+$44

    ld l, h
    ld [hl], l
    ld hl, $54FF
    ld l, b
    ld l, c

jr_01A_5A68:
    ld [hl], e
    jr nz, jr_01A_5AD4

    ld [hl], e
    jr nz, jr_01A_5ACF

    cp $72
    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_01A_5AE5

    ld l, c
    ld h, e
    ld h, l
    rst $38
    ld l, b
    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    jr nz, jr_01A_5AEE

    ld h, c
    halt
    ld h, l
    ld hl, $FDFE
    and d
    ret c

jr_01A_5A8E:
    ld h, b
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01A_5B10

jr_01A_5A97:
    ld h, l
    ld l, $FF
    ld c, l
    ld h, l
    jr nz, jr_01A_5B06

    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_01A_5B1B

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    cp $62
    ld h, l
    jr nz, jr_01A_5B12

jr_01A_5AAD:
    halt
    ld h, l
    ld l, [hl]

jr_01A_5AB0:
    jr nz, @+$70

    ld l, c
    ld h, e
    ld h, l
    ld [hl], d
    rst $38
    ld l, c

jr_01A_5AB8:
    ld h, [hl]
    jr nz, jr_01A_5B24

    ld [hl], h
    jr nz, jr_01A_5B35

    ld h, l
    ld [hl], d
    ld h, l
    ld l, [hl]
    daa
    ld [hl], h
    cp $66
    ld l, a
    ld [hl], d
    jr nz, jr_01A_5B3E

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01A_5B35

jr_01A_5ACF:
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], l
    ld [hl], e

jr_01A_5AD4:
    rst $38
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, d
    ld l, h
    ld h, l
    ld l, l
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, [hl]
    ld [hl], l

jr_01A_5AE5:
    ld l, [hl]
    ld h, a
    ld [hl], l
    ld [hl], e
    ccf
    rst $38
    ld c, c
    jr nz, jr_01A_5B52

jr_01A_5AEE:
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01A_5B67

    ld h, l
    ld h, l
    cp $61
    ld l, [hl]
    ld a, c
    jr nz, jr_01A_5B62

    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], l
    ld [hl], e
    ld l, $FE
    db $FD
    and d
    ret c

jr_01A_5B06:
    ld h, b
    and [hl]
    ld b, c
    ld [hl], d
    ld h, a
    ld l, b
    inc l
    jr nz, jr_01A_5B78

    ld [hl], h

jr_01A_5B10:
    jr nz, jr_01A_5B74

jr_01A_5B12:
    ld h, l
    rst $38
    ld h, l
    halt
    ld h, l
    ld [hl], d
    ld a, c
    ld [hl], a
    ld l, b

jr_01A_5B1B:
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $48FE
    ld h, l
    ld [hl], d
    ld h, l

jr_01A_5B24:
    inc l
    jr nz, jr_01A_5B8F

    ld h, c
    halt
    ld h, l
    rst $38
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01A_5B97

    ld l, a
    ld [hl], d
    cp $79

jr_01A_5B35:
    ld h, l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, h
    ld h, [hl]
    ld hl, $FDFE

jr_01A_5B3E:
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    inc l
    jr nz, jr_01A_5BBE

    ld l, b
    ld l, c
    ld [hl], e
    rst $38
    ld h, [hl]
    ld [hl], l
    ld l, [hl]
    ld h, a

jr_01A_5B52:
    ld [hl], l
    ld [hl], e
    ld hl, $4920
    jr nz, jr_01A_5BBD

    ld l, c
    ld h, h
    cp $6E
    ld l, a
    ld [hl], h
    jr nz, jr_01A_5BD4

    ld h, l

jr_01A_5B62:
    ld h, l
    jr nz, jr_01A_5BCE

    ld [hl], h
    rst $38

jr_01A_5B67:
    ld h, d
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    ld l, $20
    ld c, c
    ld [hl], h
    cp $6A
    ld [hl], l

jr_01A_5B74:
    ld [hl], e
    ld [hl], h
    jr nz, jr_01A_5BDA

jr_01A_5B78:
    ld l, h
    ld h, l
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_01A_5BE8

    ld l, [hl]
    rst $38
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01A_5BFB

    ld l, b
    ld h, l
    cp $63
    ld h, c
    ld [hl], d
    ld [hl], b
    ld h, l

jr_01A_5B8F:
    ld [hl], h
    ld l, $FE
    db $FD
    and d
    ret c

    ld h, b
    and [hl]

jr_01A_5B97:
    ld b, c
    ld a, c
    ld h, l
    inc l
    jr nz, jr_01A_5C11

    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld l, c
    ld [hl], h
    jr nz, jr_01A_5C09

    ld l, a
    ld h, l
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    ld [$2C00], sp
    and b
    ld [bc], a
    nop
    inc l
    and b
    inc b
    ld a, [de]
    cp h
    ld e, e
    and c
    ld e, e
    ld bc, $A245

jr_01A_5BBD:
    sbc b

jr_01A_5BBE:
    ld b, c
    and [hl]
    ld c, b
    ld [hl], d
    ld l, l
    ld l, l
    ld l, $2E
    ld l, $20
    ld c, c
    rst $38
    ld l, l
    ld l, c
    ld h, a
    ld l, b

jr_01A_5BCE:
    ld [hl], h
    jr nz, jr_01A_5C33

    ld h, l
    jr nz, jr_01A_5C35

jr_01A_5BD4:
    ld h, d
    ld l, h
    ld h, l
    cp $74
    ld l, a

jr_01A_5BDA:
    jr nz, jr_01A_5C42

    ld l, c
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]

jr_01A_5BE8:
    ld h, a
    jr nz, jr_01A_5C5F

    ld l, b
    ld h, c
    ld [hl], h
    cp $63
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01A_5C5D

    ld h, l
    ld [hl], h
    jr nz, @+$74

    ld l, c

jr_01A_5BFB:
    ld h, h
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_01A_5C75

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$68

    ld [hl], l
    ld l, [hl]
    ld h, a

jr_01A_5C09:
    ld [hl], l
    ld [hl], e
    cp $66
    ld l, a
    ld [hl], d
    jr nz, jr_01A_5C8A

jr_01A_5C11:
    ld l, a
    ld [hl], l
    ld l, $20
    ld c, l
    ld l, c
    ld l, [hl]
    ld h, h
    rst $38
    ld l, c
    ld h, [hl]
    jr nz, jr_01A_5C67

    jr nz, jr_01A_5C94

    ld h, c
    ld l, e
    ld h, l
    cp $61
    jr nz, jr_01A_5C9A

    ld h, c
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ccf
    cp $FD
    and d
    ret c

    ld h, b
    and [hl]

jr_01A_5C33:
    ld d, h
    ld h, c

jr_01A_5C35:
    ld l, e
    ld h, l
    jr nz, jr_01A_5C9A

    ld [hl], e
    jr nz, jr_01A_5CA9

    ld [hl], l
    ld h, e
    ld l, b
    rst $38
    ld h, c
    ld [hl], e

jr_01A_5C42:
    jr nz, jr_01A_5CBD

    ld h, l
    jr nz, jr_01A_5CBE

    ld h, c
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    jr nz, jr_01A_5CB8

    ld h, c
    ld l, [hl]
    jr nz, jr_01A_5CCC

    ld [hl], h
    ld l, a
    ld [hl], d
    ld h, l

jr_01A_5C5D:
    rst $38
    ld [hl], h

jr_01A_5C5F:
    ld l, b
    ld h, l
    jr nz, @+$68

    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], l

jr_01A_5C67:
    ld [hl], e
    jr nz, jr_01A_5CD3

    ld l, [hl]
    cp $74
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01A_5CE5

    ld [hl], b
    ld h, l
    ld h, e

jr_01A_5C75:
    ld l, c
    ld l, l
    ld h, l
    ld l, [hl]
    rst $38
    ld l, d
    ld h, c
    ld [hl], d
    jr nz, jr_01A_5CF3

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01A_5CCD

    cp $66
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_01A_5C8A:
    ld l, $FE
    db $FD
    and d
    ret c

    ld h, b
    and [hl]
    ld d, a
    ld l, b
    ld a, c

jr_01A_5C94:
    jr nz, jr_01A_5CFA

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h

jr_01A_5C9A:
    jr nz, @+$7B

    ld h, c
    rst $38
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_01A_5D17

    ld l, b
    ld h, c
    ld [hl], h
    cp $63
    ld h, c

jr_01A_5CA9:
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    dec l
    rst $38
    ld l, h
    ld l, a
    ld l, a
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a

jr_01A_5CB8:
    jr nz, jr_01A_5D2E

    ld l, b
    ld l, c
    ld l, [hl]

jr_01A_5CBD:
    ld h, a

jr_01A_5CBE:
    ld a, c
    cp $77
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01A_5D3A

    ld l, b
    ld h, l
    jr nz, jr_01A_5D2D

    ld [hl], d
    ld h, c

jr_01A_5CCC:
    ld a, c

jr_01A_5CCD:
    ld l, a
    ld l, [hl]
    rst $38
    ld [hl], a
    ld [hl], d
    ld l, c

jr_01A_5CD3:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01A_5D3A

    ld l, h
    ld l, h
    cp $6F
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_01A_5D4B

    ld [hl], h
    jr nz, jr_01A_5D59

jr_01A_5CE5:
    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld a, c
    ld h, l
    jr nz, @+$69

    ld l, a
    ld [hl], h
    jr nz, jr_01A_5D65

    ld l, b
    ld h, l

jr_01A_5CF3:
    ld [hl], d
    ld h, l
    ccf
    cp $FD
    and d
    sbc b

jr_01A_5CFA:
    ld b, c
    and [hl]
    ld c, c
    jr nz, jr_01A_5D73

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, @+$58

    ld h, c
    ld l, h
    ld l, e
    ld h, c
    ld l, [hl]
    rst $38
    ld [hl], a
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01A_5D79

    ld h, l
    ld [hl], h
    jr nz, @+$77

    ld [hl], b

jr_01A_5D17:
    ld [hl], e
    ld h, l
    ld [hl], h
    cp $69
    ld h, [hl]
    jr nz, jr_01A_5D87

    ld h, l
    jr nz, jr_01A_5D8D

    ld l, [hl]
    ld h, l
    ld [hl], a
    jr nz, jr_01A_5D70

    rst $38
    ld [hl], a
    ld h, c
    ld [hl], e
    jr nz, jr_01A_5DA2

jr_01A_5D2D:
    ld [hl], e

jr_01A_5D2E:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01A_5D9B

    ld l, c
    ld [hl], e
    cp $74
    ld [hl], d
    ld h, l
    ld h, c

jr_01A_5D3A:
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld h, l
    ld h, h
    jr nz, jr_01A_5D84

    ld h, c
    ld l, h
    ld h, h
    rst $38
    ld [hl], h
    ld [hl], d
    ld l, a
    ld [hl], b
    ld l, b
    ld a, c

jr_01A_5D4B:
    jr nz, jr_01A_5DC1

    ld l, a
    jr nz, jr_01A_5DB8

    ld l, a
    ld l, h
    ld h, h
    cp $66
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], l

jr_01A_5D59:
    ld [hl], e
    ld l, $FE
    db $FD
    and d
    ret c

    ld h, b
    and [hl]
    ld c, c
    ld l, [hl]
    jr nz, jr_01A_5DD9

jr_01A_5D65:
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01A_5DCD

    ld h, c
    ld [hl], e
    ld h, l
    inc l
    rst $38
    ld h, d

jr_01A_5D70:
    ld h, l
    jr nz, jr_01A_5DE6

jr_01A_5D73:
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_01A_5DEC

    ld l, a

jr_01A_5D79:
    cp $6C
    ld h, l

jr_01A_5D7C:
    ld [hl], h
    jr nz, jr_01A_5DA6

    ld l, a

jr_01A_5D80:
    ld l, h
    jr nz, @+$44

    ld l, h

jr_01A_5D84:
    ld [hl], l
    rst $38
    ld l, e

jr_01A_5D87:
    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01A_5DF5

    ld h, [hl]

jr_01A_5D8D:
    jr nz, jr_01A_5E08

    ld h, l
    cp $66
    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01A_5E0A

    ld l, a
    ld l, l
    ld h, l
    ld [hl], h

jr_01A_5D9B:
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld [hl], h
    ld l, a

jr_01A_5DA2:
    jr nz, jr_01A_5E0B

    ld h, l
    ld [hl], h

jr_01A_5DA6:
    jr nz, jr_01A_5E1A

    ld l, c
    ld h, h
    jr nz, jr_01A_5E1B

    ld h, [hl]
    cp $74
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01A_5E1A

    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], l

jr_01A_5DB8:
    ld [hl], e
    ld hl, $FDFE
    and d
    sbc b

jr_01A_5DBE:
    ld b, c
    and [hl]
    ld d, e

jr_01A_5DC1:
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_01A_5E3A

    ld l, b

jr_01A_5DC7:
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $FDFE

jr_01A_5DCD:
    and c
    ld e, e
    ld bc, $2CB6
    and b
    db $10
    ld b, l
    or e
    add hl, hl
    and c
    nop

jr_01A_5DD9:
    or l
    jr z, jr_01A_5D7C

    cp $B5
    jr z, jr_01A_5D80

    db $FD
    or l
    jr z, jr_01A_5D84

    ei
    sub a

jr_01A_5DE6:
    or e
    ld sp, $01C7
    ld l, c
    ld e, b

jr_01A_5DEC:
    ld a, b
    inc d
    ld l, b
    ld a, $53

jr_01A_5DF1:
    inc de
    ld h, a
    ld e, c
    ld c, e

jr_01A_5DF5:
    ld l, h

jr_01A_5DF6:
    ld l, [hl]
    ld c, e
    dec b
    nop
    ld hl, sp+$4A

jr_01A_5DFC:
    nop
    ld [de], a
    ret nc

    jp nc, $1A00

    adc e
    ld l, c
    add hl, de
    add sp, $46
    dec bc

jr_01A_5E08:
    nop

jr_01A_5E09:
    add [hl]

jr_01A_5E0A:
    ld [hl], e

jr_01A_5E0B:
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld bc, $161C
    ld c, b
    ld a, [de]
    ld a, [hl-]
    ld c, d

jr_01A_5E1A:
    ld b, [hl]

jr_01A_5E1B:
    nop
    jr z, jr_01A_5DBE

    ld [bc], a
    ld a, [de]
    ld b, h
    ld e, [hl]
    ld b, [hl]
    rrca
    nop

jr_01A_5E25:
    jr z, jr_01A_5DC7

    inc b
    dec b
    nop
    ld a, [de]
    ld b, h
    ld e, [hl]
    or l
    jr z, @-$5E

    ei
    ld b, [hl]
    rrca
    ld bc, $A129
    dec b
    dec b
    ld a, [de]
    ld b, l

jr_01A_5E3A:
    ld e, [hl]
    xor l
    add hl, hl
    and c
    dec bc
    ld bc, $A129
    dec b
    ld bc, $B645
    jr z, @-$5E

    ld bc, $B345
    add hl, hl
    and c
    nop
    or l
    jr z, jr_01A_5DF1

    cp $45
    or [hl]
    jr z, jr_01A_5DF6

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_01A_5DFC

    ld bc, $611A
    ld e, [hl]
    ld b, l
    or e
    ld sp, $01C7
    ld b, [hl]
    nop
    jr z, jr_01A_5E09

    ld [bc], a
    ld a, [de]
    sbc b
    ld e, [hl]
    and [hl]
    daa
    ld b, e
    ld l, h
    ld l, c
    ld h, e
    ld l, e
    ld hl, $FE27
    db $FD
    and c
    add d
    inc [hl]
    call nc, $0302
    dec e
    jp nc, $150D

    or [hl]
    jr z, jr_01A_5E25

    ld [bc], a
    ld b, [hl]
    rrca
    nop
    inc l
    and b
    inc b
    dec b
    nop
    ld a, [de]
    sbc b
    ld e, [hl]
    add h
    inc bc
    jr jr_01A_5E25

    ret nc

    ld b, b
    rst $38
    or e
    ld sp, $00C7
    ld b, l
    xor d
    inc l
    and b
    inc b
    ld a, [de]
    sub $5E
    rst $38
    sub b
    ret nc

    ld e, $09
    or e
    ld sp, $01C7
    and [hl]
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    jr nz, jr_01A_5F1C

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_01A_5F1D

    rst $38
    ld d, e
    ld [hl], b
    ld h, l
    ld h, e
    ld l, c
    ld l, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01A_5F11

    ld h, c
    ld [hl], d
    ld hl, $FDFE
    and c
    or [hl]
    inc l
    and b
    inc b
    or e
    ld sp, $00C7
    ld b, l
    ld b, a
    rst $20
    ld b, [hl]
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld a, c
    ld l, $2E
    ld l, $20
    ld d, e
    ld c, c
    ld b, a
    ld c, b
    ld l, $FE
    db $FD
    and c
    or e
    ld sp, $00C7
    ld b, l
    ld bc, $1A06
    ld c, b
    ld a, [de]
    inc l
    ld d, c
    sub a
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    jr nz, jr_01A_5F5D

    inc de
    ld h, a
    rla
    ld c, e
    ld l, h
    inc e
    ld c, e

jr_01A_5F11:
    dec b
    nop
    ld hl, sp+$4A
    dec b
    dec bc
    adc c
    ret nc

    nop
    ld a, [de]
    ld a, [hl]

jr_01A_5F1C:
    ld l, c

jr_01A_5F1D:
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    rlca
    inc bc
    dec hl
    ret nc

    nop
    inc de
    xor h
    ld h, d
    ld a, [de]
    ld d, [hl]
    ld e, a
    ld l, [hl]
    add hl, hl
    dec c
    ld b, b
    ld d, e
    nop
    add b
    nop
    dec bc
    nop
    add [hl]
    ld [hl], e
    rrca
    rst $38
    ld a, a
    ld b, [hl]
    ld a, [bc]
    nop
    ld b, [hl]
    and b
    jr nz, @+$1C

    ld c, c
    ld e, a
    dec bc
    ld [bc], a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    ld a, [de]
    cp b
    ld d, b
    or e
    ld sp, $00C7
    ld b, l
    inc d
    inc de
    xor h
    ld h, d
    ld b, [hl]
    nop
    inc l

jr_01A_5F5D:
    and b
    jr nz, jr_01A_5F7A

    ld l, d
    ld e, a
    ld e, [hl]
    ld a, [de]
    rst $18
    ld e, a
    ld c, b
    inc de
    db $FC
    ld h, d
    ld e, [hl]
    ld a, [de]
    ld [hl], d
    ld e, a
    ld c, b
    inc de
    db $FC
    ld h, d
    and d
    jr jr_01A_5FC3

    and [hl]
    ld c, c
    jr nz, jr_01A_5FF0

    ld l, a

jr_01A_5F7A:
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01A_5FE1

    ld h, l
    rst $38
    ld [hl], d
    ld l, c
    ld h, e
    ld l, b
    jr nz, @+$79

    ld l, c
    ld [hl], h
    ld l, b
    cp $61
    ld l, [hl]
    ld l, c
    ld l, l
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_01A_6006

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    rst $38
    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01A_6007

    ld h, [hl]
    jr nz, jr_01A_5FE6

    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    cp $68
    ld h, c
    ld h, h
    jr nz, jr_01A_6015

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01A_601D

    ld h, c
    ld h, h
    ld h, l
    rst $38
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01A_601C

    ld h, l
    ld [hl], h
    ld l, $2E
    ld l, $2E
    ld l, $FE
    db $FD

jr_01A_5FC3:
    ld b, [hl]
    ld [$0808], sp
    nop
    inc l
    and b
    ld [bc], a
    nop
    inc l
    and b
    inc b
    nop
    inc l
    and b
    db $10
    ld a, [bc]
    nop
    inc l
    and b
    ld b, b
    ld a, [de]
    ld h, b
    ld h, c
    and c
    ld e, e
    ld bc, $B645
    inc l

jr_01A_5FE1:
    and b
    jr nz, @-$5C

    jr @+$50

jr_01A_5FE6:
    and [hl]
    ld c, b
    ld h, l
    ld a, c
    ld h, c
    inc l
    jr nz, jr_01A_6041

    ld h, c
    ld l, h

jr_01A_5FF0:
    ld h, c
    ld h, [hl]
    ld a, c
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, b
    ld l, c
    inc l
    jr nz, jr_01A_6041

    ld l, a
    daa
    ld b, c
    ld l, b
    ld [hl], e
    ld h, c
    inc l

jr_01A_6006:
    rst $38

jr_01A_6007:
    ld l, b
    ld l, a
    ld [hl], a
    jr nz, jr_01A_606D

    ld [hl], d
    ld h, l
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    ccf
    cp $FD

jr_01A_6015:
    and d
    jr jr_01A_6066

    and [hl]
    ld b, h
    ld l, a
    ld l, c

jr_01A_601C:
    ld l, [hl]

jr_01A_601D:
    ld h, a
    jr nz, jr_01A_6086

    ld l, c
    ld l, [hl]
    ld h, l
    inc l
    rst $38
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_01A_6076

    cp $77
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$64

    ld h, l
    jr nz, @+$66

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld h, d
    ld h, l
    ld [hl], h
    ld [hl], h

jr_01A_6041:
    ld h, l
    ld [hl], d
    jr nz, jr_01A_60AE

    ld h, [hl]
    cp $45
    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    jr nz, jr_01A_60B6

    ld h, c
    ld h, h
    rst $38
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01A_60C4

    ld h, c
    ld h, h
    ld h, l
    jr nz, jr_01A_60D0

    ld l, b
    ld h, c
    ld [hl], h
    cp $62
    ld h, l
    ld [hl], h
    ld hl, $FDFE

jr_01A_6066:
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, d
    ld [hl], l
    ld [hl], h

jr_01A_606D:
    jr nz, jr_01A_60B8

    jr nz, jr_01A_60D3

    ld h, l
    ld h, c
    ld [hl], h
    rst $38
    ld [hl], h

jr_01A_6076:
    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_01A_60E9

    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    ld hl, $49FE
    ld h, [hl]
    jr nz, jr_01A_60FF

jr_01A_6086:
    ld l, a
    ld [hl], l
    jr nz, jr_01A_60F2

    ld h, c
    ld h, h
    rst $38
    ld l, l
    ld h, c
    ld h, h
    ld h, l
    jr nz, jr_01A_6107

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$64

    ld h, l
    ld [hl], h
    inc l
    cp $79
    ld l, a
    ld [hl], l
    jr nz, jr_01A_6118

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01A_610F

    ld h, c
    halt
    ld h, l
    rst $38
    ld l, h
    ld l, a
    ld [hl], e

jr_01A_60AE:
    ld [hl], h
    jr nz, jr_01A_6112

    ld l, h
    ld l, h
    jr nz, jr_01A_612E

    ld l, a

jr_01A_60B6:
    ld [hl], l
    ld [hl], d

jr_01A_60B8:
    cp $61
    ld l, [hl]
    ld l, c
    ld l, l
    ld l, c
    ld [hl], h
    ld h, l
    ld hl, $FDFE
    and d

jr_01A_60C4:
    jr jr_01A_6114

    and [hl]
    ld c, b
    ld h, c
    ld l, b
    ld hl, $4920
    ld h, [hl]
    rst $38
    ld b, l

jr_01A_60D0:
    ld l, c
    ld h, h
    ld l, a

jr_01A_60D3:
    ld l, [hl]
    jr nz, jr_01A_613E

    ld h, c
    ld h, h
    jr nz, @+$6F

    ld h, c
    ld h, h
    ld h, l
    cp $74
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$64

    ld h, l
    ld [hl], h
    inc l
    jr nz, jr_01A_615D

jr_01A_60E9:
    ld l, b
    ld h, l
    ld l, [hl]
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_01A_6162

jr_01A_60F2:
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld h, l
    cp $6F
    ld l, [hl]
    jr nz, @+$7B

    ld l, a

jr_01A_60FF:
    ld [hl], l
    jr nz, jr_01A_6179

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    rst $38

jr_01A_6107:
    ld l, b
    ld h, c
    halt
    ld h, l
    jr nz, jr_01A_616F

    ld h, l
    ld h, l

jr_01A_610F:
    ld l, [hl]
    jr nz, jr_01A_6186

jr_01A_6112:
    ld l, a
    ld l, a

jr_01A_6114:
    cp $6D
    ld [hl], l
    ld h, e

jr_01A_6118:
    ld l, b
    jr nz, jr_01A_617C

    ld l, [hl]
    ld h, h
    jr nz, jr_01A_6198

    ld l, a
    ld [hl], l
    rst $38
    ld [hl], a
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$6A

    ld h, c
    halt
    ld h, l
    cp $66

jr_01A_612E:
    ld h, c
    ld l, c
    ld l, h
    ld h, l
    ld h, h
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld l, $2E
    ld l, $2E

jr_01A_613E:
    ld l, $2E
    ld l, $2E
    cp $FD
    ld b, [hl]
    ld [$0808], sp
    nop
    inc l
    and b
    ld [bc], a
    nop
    inc l
    and b
    inc b
    nop
    inc l
    and b
    db $10
    ld a, [bc]
    nop
    inc l
    and b
    ld b, b
    ld a, [de]
    ld h, b
    ld h, c
    and c

jr_01A_615D:
    ld e, e
    ld bc, $A245
    sbc b

jr_01A_6162:
    ld b, c
    and [hl]
    ld c, c
    jr nz, jr_01A_61DE

    ld h, c
    ld [hl], e
    rst $38
    ld [hl], a
    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l

jr_01A_616F:
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01A_61DE

    ld h, [hl]
    cp $79
    ld l, a

jr_01A_6179:
    ld [hl], l
    jr nz, jr_01A_61DF

jr_01A_617C:
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01A_61EA

    ld h, l
    ld l, h
    ld [hl], b
    rst $38

jr_01A_6186:
    ld l, l
    ld h, l
    ld l, $FE
    db $FD
    and d
    jr jr_01A_61DC

    and [hl]
    ld c, c
    jr nz, @+$79

    ld l, c
    ld l, h
    ld l, h
    rst $38
    ld l, c
    ld h, [hl]

jr_01A_6198:
    jr nz, jr_01A_61E3

    jr nz, jr_01A_61FF

    ld h, c
    ld l, [hl]
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, l
    ld a, c
    jr nz, jr_01A_620F

    ld [hl], d
    ld l, c
    ld h, l
    ld l, [hl]
    ld h, h
    rst $38
    ld l, b
    ld h, c
    ld [hl], e
    jr nz, jr_01A_6215

    jr nz, @+$68

    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], l
    ld [hl], e
    cp $70
    ld [hl], d
    ld l, a
    ld h, d
    ld l, h
    ld h, l
    ld l, l
    jr nz, jr_01A_622E

    ld l, [hl]
    rst $38
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01A_6234

    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    inc l
    cp $61
    ld l, [hl]
    ld h, h
    jr nz, jr_01A_6220

    jr nz, jr_01A_6241

    ld h, c
    halt
    ld h, l

jr_01A_61DC:
    jr nz, jr_01A_6240

jr_01A_61DE:
    ld h, l

jr_01A_61DF:
    ld h, l
    ld l, [hl]
    rst $38
    ld [hl], h

jr_01A_61E3:
    ld [hl], d
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01A_625E

jr_01A_61EA:
    ld l, a
    jr nz, jr_01A_6253

    ld l, c
    ld l, [hl]
    ld h, h
    cp $73
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01A_6270

    ld l, a
    rst $38
    ld h, a

jr_01A_61FF:
    ld h, l
    ld [hl], h
    jr nz, jr_01A_6275

    ld l, c
    ld h, h
    jr nz, @+$71

    ld h, [hl]
    cp $69
    ld [hl], h
    ld l, $FE
    db $FD
    and d

jr_01A_620F:
    jr jr_01A_625F

    and [hl]
    ld d, h
    ld l, b
    ld h, l

jr_01A_6215:
    jr nz, jr_01A_627F

    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_01A_628C

    ld [hl], d
    rst $38
    ld [hl], h

jr_01A_6220:
    ld l, b
    ld h, l
    jr nz, jr_01A_628A

    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], l
    ld [hl], e
    ccf
    cp $FD
    and d
    sbc b

jr_01A_622E:
    ld b, c
    and [hl]
    ld hl, $FE21
    db $FD

jr_01A_6234:
    and d
    jr jr_01A_6285

    and [hl]
    ld e, c
    ld h, l
    ld h, c
    ld l, b
    inc l
    jr nz, @+$4B

    rst $38

jr_01A_6240:
    ld l, b

jr_01A_6241:
    ld h, c
    halt
    ld h, l
    jr nz, jr_01A_62B9

    ld l, a
    ld l, l
    ld h, l
    cp $66
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld l, c
    ld h, e
    ld l, c
    ld h, h
    ld h, l

jr_01A_6253:
    jr nz, jr_01A_629E

    rst $38
    ld h, e
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01A_62C4

    ld l, c

jr_01A_625E:
    halt

jr_01A_625F:
    ld h, l
    cp $79
    ld l, a
    ld [hl], l
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, d
    ld h, l
    ld h, c
    ld l, h
    ld l, h

jr_01A_6270:
    ld a, c
    ccf
    cp $FD
    and d

jr_01A_6275:
    jr jr_01A_62C5

    and [hl]
    ld c, a
    ld h, [hl]
    jr nz, jr_01A_62DF

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01A_627F:
    ld [hl], e
    ld h, l
    ld hl, $54FE
    ld l, b

jr_01A_6285:
    ld l, c
    ld [hl], e
    jr nz, jr_01A_62F2

    ld [hl], e

jr_01A_628A:
    jr nz, jr_01A_6300

jr_01A_628C:
    ld l, b
    ld h, l
    rst $38
    ld d, a
    ld h, l
    ld h, c
    halt
    ld h, l
    ld hl, $57FE
    ld h, l
    jr nz, @+$63

    ld l, h
    ld [hl], a
    ld h, c
    ld a, c

jr_01A_629E:
    ld [hl], e
    jr nz, jr_01A_630F

    ld h, l
    ld h, l
    ld h, h
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_01A_6311

    ld h, c
    halt
    ld h, l

jr_01A_62AC:
    jr nz, jr_01A_62AC

    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01A_632B

jr_01A_62B9:
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_01A_6326

    ld h, l
    ld [hl], e

jr_01A_62C4:
    ld [hl], h

jr_01A_62C5:
    ld [hl], d
    ld l, a
    ld a, c
    cp $6E
    ld h, c
    ld [hl], e
    ld [hl], h
    ld a, c
    jr nz, jr_01A_6336

    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], l
    ld [hl], e
    rst $38
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01A_6352

    ld h, l
    ld h, l
    ld h, h
    ld [hl], e

jr_01A_62DF:
    jr nz, jr_01A_6355

    ld l, b
    ld h, c
    ld [hl], h
    cp $74
    ld [hl], d
    ld a, c
    jr nz, jr_01A_635E

    ld l, a
    jr nz, jr_01A_635F

    ld [hl], l
    ld l, c
    ld l, [hl]
    rst $38
    ld l, a

jr_01A_62F2:
    ld [hl], l
    ld [hl], d
    jr nz, jr_01A_635D

    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c

jr_01A_6300:
    and [hl]
    ld d, a
    ld l, a
    ld [hl], a
    ld hl, $5420
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    inc l
    rst $38
    ld b, d

jr_01A_630F:
    ld l, a
    daa

jr_01A_6311:
    ld b, c
    ld l, b
    ld [hl], e
    ld h, c
    ld hl, $49FE
    jr nz, @+$69

    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_01A_6369

    daa
    ld l, h
    ld l, h
    rst $38
    ld [hl], l
    ld [hl], e

jr_01A_6326:
    ld h, l
    jr nz, jr_01A_639D

    ld l, b
    ld l, c

jr_01A_632B:
    ld [hl], e
    jr nz, jr_01A_63A2

    ld [hl], d
    ld l, a
    ld [hl], b
    ld l, b
    ld a, c
    cp $74
    ld l, a

jr_01A_6336:
    jr nz, jr_01A_639B

    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, @+$76

    ld l, b
    ld h, l
    rst $38
    ld h, [hl]
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld l, c
    ld h, e
    ld l, c
    ld h, h
    ld h, l
    jr nz, @+$68

    ld l, a
    ld [hl], d
    cp $6E
    ld l, a
    ld [hl], a

jr_01A_6352:
    ld l, $FE
    db $FD

jr_01A_6355:
    and d
    jr jr_01A_63A6

    and [hl]
    ld d, h
    ld [hl], d
    ld l, a
    ld [hl], b

jr_01A_635D:
    ld l, b

jr_01A_635E:
    ld a, c

jr_01A_635F:
    ccf
    cp $4C
    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, jr_01A_63D5

    ld l, a

jr_01A_6369:
    ld [hl], d
    ld h, l
    jr nz, jr_01A_63D9

    ld l, c
    ld l, e
    ld h, l
    rst $38
    ld h, c
    jr nz, jr_01A_63D7

    ld h, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01A_63F4

    ld l, c
    ld [hl], h
    ld l, b
    cp $63
    ld [hl], d
    ld h, c
    ld a, c
    ld l, a
    ld l, [hl]
    jr nz, jr_01A_6400

    ld [hl], d
    ld l, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01A_6404

    halt
    ld h, l
    ld [hl], d
    jr nz, jr_01A_6403

    ld [hl], h

jr_01A_639B:
    ld l, $FE

jr_01A_639D:
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]

jr_01A_63A2:
    ld l, $2E
    ld l, $2E

jr_01A_63A6:
    ld l, $2E
    ld l, $FE
    db $FD
    and c
    or [hl]
    inc l
    and b
    ld b, b
    ld e, e
    ld bc, $9745
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    jr nz, jr_01A_6412

    inc de
    ld h, a
    ld bc, $6C4B
    ld b, $4B
    dec b
    nop
    ld hl, sp+$4A
    dec b
    dec bc
    adc c
    ret nc

    nop
    ld a, [de]
    ld a, [hl]
    ld l, c
    add hl, de
    add sp, $46

jr_01A_63D5:
    dec b
    ld [bc], a

jr_01A_63D7:
    adc a
    ld l, [hl]

jr_01A_63D9:
    rlca
    inc bc
    dec hl
    ret nc

    nop
    ld de, $5356
    ld a, [de]
    inc bc
    ld h, h
    ld l, [hl]
    ld a, [hl+]
    dec c
    jr nz, jr_01A_6464

    nop
    add b
    nop
    dec bc
    nop
    add [hl]
    ld [hl], e
    rrca
    rst $38
    ld a, a
    ld b, [hl]

jr_01A_63F4:
    ld a, [bc]
    nop
    ld b, [hl]
    and b
    inc b
    ld a, [de]
    cp $63
    dec bc
    ld [bc], a
    sbc b
    ld a, d

jr_01A_6400:
    ld h, b
    rrca
    ld b, l

jr_01A_6403:
    inc d

jr_01A_6404:
    ld de, $5374
    ld b, [hl]
    nop
    inc l
    and b
    ld [bc], a
    ld a, [de]
    rla
    ld h, h
    ld e, [hl]
    ld a, [de]
    and b

jr_01A_6412:
    ld h, h
    ld c, b
    ld de, $53A6
    ld e, [hl]
    ld a, [de]
    rra
    ld h, h
    ld c, b
    ld de, $53A6
    and d
    ret c

    ld b, a
    and [hl]
    ld b, d
    ld h, l
    jr nz, @+$75

    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, a
    rst $38
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_01A_6497

    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_01A_64A8

    ld h, [hl]
    cp $74
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01A_64B5

    ld [hl], d
    ld l, a
    ld [hl], b
    ld l, b
    ld a, c
    jr nz, jr_01A_64A9

    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], b
    ld l, a
    ld l, h
    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_01A_64BC

    ld [hl], h
    jr nz, jr_01A_64CA

    ld [hl], a
    ld l, c
    ld h, e
    ld h, l
    cp $64
    ld h, c
    ld l, c
    ld l, h
    ld a, c
    ld hl, $FDFE
    and d

jr_01A_6464:
    sbc b
    ld b, c
    and [hl]
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01A_64E5

    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    inc l
    rst $38
    ld l, c
    ld [hl], h
    jr nz, @+$79

    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01A_64DF

    ld h, l
    cp $74
    ld h, c
    ld l, e
    ld h, l
    ld l, [hl]
    jr nz, jr_01A_64E9

    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_01A_64FA

    ld h, [hl]
    ld l, $FF
    ld e, c
    ld h, l
    ld h, c
    ld l, b
    ld l, $20
    ld d, d
    ld l, c
    ld h, a

jr_01A_6497:
    ld l, b
    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $A245
    ret c

    ld b, a
    and [hl]
    ld d, e
    ld h, c
    ld l, h
    ld h, c

jr_01A_64A8:
    ld h, [hl]

jr_01A_64A9:
    ld a, c
    ld hl, $57FE
    ld h, l
    ld l, h
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01A_6529

jr_01A_64B5:
    ld l, a
    rst $38
    ld l, l
    ld a, c
    jr nz, jr_01A_6523

    ld l, a

jr_01A_64BC:
    ld [hl], l
    ld [hl], e
    ld h, l
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]

jr_01A_64CA:
    ld l, e
    jr nz, jr_01A_6546

    ld l, a
    ld [hl], l
    inc l
    rst $38
    ld d, [hl]
    ld h, c
    ld l, h
    ld l, e
    ld h, c
    ld l, [hl]
    ld l, $FE
    db $FD
    and d
    ret c

    ld b, a
    and [hl]
    ld d, e

jr_01A_64DF:
    ld l, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01A_655E

jr_01A_64E5:
    ld l, a
    ld [hl], l
    rst $38
    ld h, a

jr_01A_64E9:
    ld l, a
    ld [hl], h
    jr nz, @+$75

    ld l, a
    jr nz, jr_01A_655C

    ld [hl], l
    ld h, e
    ld l, e
    ld a, c
    cp $62
    ld h, l
    ld h, c
    ld [hl], h
    ld l, c

jr_01A_64FA:
    ld l, [hl]
    ld h, a
    jr nz, jr_01A_656D

    ld [hl], l
    ld [hl], d
    rst $38
    ld b, e
    ld h, c
    ld l, h
    ld h, h
    jr nz, @+$6F

    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_01A_658F

    ld h, c
    ld [hl], e
    jr nz, jr_01A_658F

    ld l, e
    ld l, c
    ld l, h
    ld l, h
    inc l
    rst $38
    ld l, [hl]

jr_01A_6523:
    ld l, a
    ld [hl], h
    jr nz, jr_01A_6593

    ld [hl], l
    ld h, e

jr_01A_6529:
    ld l, e
    ld hl, $FDFE
    and d
    ret c

    ld b, a
    and [hl]
    ld l, $2E
    ld l, $20
    ld h, d
    ld h, l
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01A_65AF

    ld [hl], l
    ld h, e
    ld l, e

jr_01A_6546:
    cp $67
    ld l, a
    ld [hl], h
    jr nz, jr_01A_65C5

    ld l, a
    ld [hl], l
    rst $38
    ld [hl], h
    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    inc l
    cp $49
    jr nz, jr_01A_65D2

    ld l, a

jr_01A_655C:
    ld [hl], l
    ld l, h

jr_01A_655E:
    ld h, h
    jr nz, jr_01A_65CD

    ld l, c
    ld l, e
    ld h, l
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_01A_65D9

    ld [hl], d
    ld h, l
    ld [hl], e
    ld h, l

jr_01A_656D:
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01A_65EA

    ld l, a
    ld [hl], l
    cp $77
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, @+$76

    ld l, b
    ld l, c
    ld [hl], e
    rst $38
    ld [hl], h
    ld [hl], d
    ld l, a
    ld [hl], b
    ld l, b
    ld a, c
    cp $73
    ld l, c
    ld h, a
    ld l, [hl]
    ld l, c
    ld h, [hl]
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a

jr_01A_658F:
    rst $38
    ld a, c
    ld l, a
    ld [hl], l

jr_01A_6593:
    ld [hl], d
    jr nz, @+$65

    ld l, a
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    cp $6F
    ld h, [hl]
    jr nz, jr_01A_6618

    ld l, b
    ld h, l
    jr nz, jr_01A_65EB

    ld h, c
    ld l, h
    ld h, h
    rst $38
    ld l, l
    ld h, c
    ld a, d

jr_01A_65AF:
    ld h, l
    ld [hl], e
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01A_662A

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    rst $38
    ld l, h
    ld l, c

jr_01A_65C5:
    ld l, e
    ld h, l
    jr nz, jr_01A_662A

    jr nz, jr_01A_662E

    ld h, c
    ld l, [hl]

jr_01A_65CD:
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d

jr_01A_65D2:
    cp $77
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01A_6646

jr_01A_65D9:
    ld a, c
    jr nz, jr_01A_664A

    ld h, c
    ld l, l
    ld h, l
    rst $38
    ld l, a
    ld l, [hl]
    jr nz, jr_01A_664D

    ld [hl], h
    jr nz, jr_01A_665E

    ld [hl], d
    ld l, c
    ld [hl], h

jr_01A_65EA:
    ld [hl], h

jr_01A_65EB:
    ld h, l
    ld l, [hl]
    cp $69
    ld l, [hl]
    jr nz, jr_01A_6655

    ld [hl], d
    ld h, c
    ld a, c
    ld l, a
    ld l, [hl]
    ld hl, $FDFE
    and d
    ret c

    ld b, a
    and [hl]
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    ccf
    ld hl, $5420
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    rst $38
    ld l, [hl]
    ld l, a
    ld [hl], h
    jr nz, jr_01A_667B

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01A_6677

    cp $63

jr_01A_6618:
    ld h, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld hl, $54FF
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01A_668A

    ld l, [hl]

jr_01A_662A:
    cp $61
    ld l, [hl]
    ld h, e

jr_01A_662E:
    ld l, c
    ld h, l
    ld l, [hl]
    ld [hl], h
    inc l
    cp $68
    ld l, c
    ld h, a
    ld l, b
    ld l, h
    ld a, c
    jr nz, jr_01A_66AF

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h
    dec l
    rst $38
    ld h, c
    ld h, [hl]
    ld [hl], h

jr_01A_6646:
    ld h, l
    ld [hl], d
    jr nz, jr_01A_66BE

jr_01A_664A:
    ld [hl], d
    ld l, a
    ld [hl], b

jr_01A_664D:
    ld l, b
    ld a, c
    ld hl, $49FE
    ld [hl], h
    jr nz, jr_01A_66BD

jr_01A_6655:
    ld h, c
    ld [hl], e
    jr nz, jr_01A_66BB

    ld h, l
    ld h, l
    ld l, [hl]
    rst $38
    ld h, a

jr_01A_665E:
    ld l, c
    halt
    ld h, l
    ld l, [hl]
    jr nz, jr_01A_66D8

    ld l, a
    jr nz, jr_01A_66DB

    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    cp $77
    ld l, a
    ld [hl], d
    ld [hl], h
    ld l, b
    ld a, c
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_01A_66E0

jr_01A_6677:
    ld [hl], h
    rst $38
    ld h, [hl]
    ld l, a

jr_01A_667B:
    ld [hl], d
    jr nz, jr_01A_66E6

    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], d
    ld h, l
    ld h, h
    ld [hl], e
    cp $6F
    ld h, [hl]
    jr nz, @+$7B

jr_01A_668A:
    ld h, l
    ld h, c
    ld [hl], d
    ld [hl], e
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, l
    ld l, l
    ld l, l
    ld l, $2E
    ld l, $2E
    cp $74
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_01A_6719

    ld l, b
    ld h, l
    ld l, [hl]
    ld l, $2E
    ld l, $FF
    ld c, c
    jr nz, jr_01A_6722

jr_01A_66AF:
    ld l, b
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01A_6718

    ld l, b
    ld h, l
    ld [hl], d
    ld l, c
    ld [hl], e
    ld l, b

jr_01A_66BB:
    cp $74

jr_01A_66BD:
    ld l, b

jr_01A_66BE:
    ld l, c
    ld [hl], e
    jr nz, jr_01A_6725

    ld h, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    inc l
    rst $38
    ld h, l
    ld [hl], d
    ld l, $2E
    jr nz, @+$4B

    jr nz, @+$6F

    ld h, l
    ld h, c
    ld l, [hl]
    cp $74

jr_01A_66D8:
    ld [hl], d
    ld l, a
    ld [hl], b

jr_01A_66DB:
    ld l, b
    ld a, c
    inc l
    rst $38
    ld h, [hl]

jr_01A_66E0:
    ld l, a
    ld [hl], d
    jr nz, jr_01A_6745

    jr nz, jr_01A_6752

jr_01A_66E6:
    ld l, a
    ld l, [hl]
    ld h, a
    cp $74
    ld l, c
    ld l, l
    ld h, l
    ld l, $FE
    db $FD
    and d
    ret c

    ld b, a
    and [hl]
    ld b, a
    ld l, h
    ld h, c
    ld h, h
    jr nz, jr_01A_6774

    ld l, a
    ld [hl], l
    rst $38
    ld l, h
    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_01A_676D

    ld [hl], h
    ld hl, $FDFE
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
    and c

jr_01A_6718:
    ld e, e

jr_01A_6719:
    ld bc, $2CB6
    and b
    ld [bc], a
    ld b, l
    and d
    sbc b
    ld b, c

jr_01A_6722:
    and [hl]
    ld c, c
    ld [hl], h

jr_01A_6725:
    jr nz, jr_01A_678B

    ld l, a
    ld h, l
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    rst $38
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], b
    ld l, a
    ld l, [hl]
    ld h, h
    inc l
    cp $69
    ld [hl], h
    ld [hl], e
    jr nz, jr_01A_67A6

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01A_67A2

    rst $38
    daa
    ld h, e
    ld h, c

jr_01A_6745:
    ld [hl], h
    jr nz, jr_01A_67B8

    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld l, $27
    cp $FD

jr_01A_6752:
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    jr nz, jr_01A_67D1

    ld l, c
    ld h, l
    ld [hl], a
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_01A_67D0

    ld h, c
    ld h, a
    ld l, l
    ld h, c
    ld l, $FE
    db $FD
    and c
    ld b, l
    and d

jr_01A_676D:
    sbc b
    ld b, c
    and [hl]
    ld d, b
    ld [hl], l
    ld l, l
    ld l, c

jr_01A_6774:
    ld h, e
    ld h, l
    rst $38
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    ld [hl], a
    ld h, l
    ld h, c
    ld [hl], d
    ccf
    cp $FD
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, d
    ld [hl], d

jr_01A_678B:
    ld l, c
    ld h, h
    ld h, a
    ld h, l
    dec l
    rst $38
    ld h, d
    ld [hl], l
    ld l, c
    ld l, h
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    cp $62
    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    ld l, $FE
    db $FD

jr_01A_67A2:
    and c
    ld b, l
    and d
    sbc b

jr_01A_67A6:
    ld b, c
    and [hl]
    ld b, a
    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_01A_6812

    ld h, c
    ld [hl], h
    rst $38
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld h, c
    ld [hl], h
    ld h, c

jr_01A_67B8:
    cp $70
    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, e
    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01A_6843

jr_01A_67D0:
    ld h, l

jr_01A_67D1:
    ld h, l
    rst $38
    ld [hl], b
    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, jr_01A_684D

    ld l, b
    ld h, l
    cp $68
    ld [hl], l
    ld h, a
    ld h, l
    rst $38
    ld h, h
    ld h, c
    ld l, [hl]
    ld h, h
    ld h, l
    ld l, h
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $FE
    db $FD
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$75

    ld h, l
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01A_686B

    ld l, c
    ld [hl], h
    rst $38
    ld l, b
    ld h, c
    ld [hl], e
    jr nz, jr_01A_6869

    jr nz, jr_01A_6872

    ld h, l
    ld h, h
    ld h, a
    ld h, l
    cp $74
    ld [hl], d
    ld l, c

jr_01A_6812:
    ld l, l
    ld l, l
    ld h, l
    ld [hl], d
    rst $38
    ld l, c
    ld l, [hl]
    jr nz, jr_01A_6884

    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld l, a
    halt
    ld h, l
    ld l, [hl]
    jr nz, @+$69

    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e
    rst $38
    ld h, [hl]
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld l, c
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]

jr_01A_6843:
    ld d, e
    ld [hl], l
    ld [hl], d
    ld h, [hl]
    ld h, l
    ld [hl], d
    jr nz, jr_01A_68AE

    ld h, c
    ld [hl], h

jr_01A_684D:
    ld l, $FE
    db $FD
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01A_68D3

    ld l, c
    ld l, [hl]
    ld h, h
    ld l, a
    ld [hl], a
    jr nz, jr_01A_68CC

    ld [hl], e
    rst $38
    ld [hl], d
    ld [hl], l
    ld [hl], e
    ld [hl], h

jr_01A_6869:
    ld h, l
    ld h, h

jr_01A_686B:
    jr nz, jr_01A_68E0

    ld l, b
    ld [hl], l
    ld [hl], h
    ld l, $FE

jr_01A_6872:
    db $FD
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    inc sp
    add hl, sp
    jr nz, jr_01A_68DF

    ld l, h
    ld h, c
    ld h, e
    ld l, e
    rst $38
    ld h, l
    ld a, c

jr_01A_6884:
    ld h, l
    ld [hl], b
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    ld h, l
    ld [hl], e
    cp $61
    ld l, [hl]
    ld h, h
    jr nz, jr_01A_68C3

    jr nz, jr_01A_6904

    ld [hl], l
    ld [hl], d
    ld [hl], b
    ld l, h
    ld h, l
    rst $38
    ld l, a
    ld l, [hl]
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld [hl], d
    ld h, l
    ld h, l
    rst $38
    ld [hl], a
    ld h, c

jr_01A_68AE:
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, h
    ld l, a
    ld h, a
    ld h, a
    ld h, l
    ld h, h
    cp $63
    ld l, a
    ld [hl], b
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, jr_01A_692F

    ld h, [hl]
    rst $38
    daa

jr_01A_68C3:
    ld d, b
    ld l, c
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], e
    jr nz, jr_01A_693B

jr_01A_68CC:
    ld h, [hl]
    cp $4F
    ld [hl], e
    ld h, e
    ld h, l
    ld l, [hl]

jr_01A_68D3:
    ld [hl], h
    jr nz, jr_01A_6923

    ld h, c
    ld [hl], d
    ld l, $27
    cp $FD
    and c
    ld b, l
    and d

jr_01A_68DF:
    sbc b

jr_01A_68E0:
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01A_694B

    ld h, c
    ld [hl], h
    jr nz, @+$6B

    ld [hl], e
    rst $38
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01A_6958

    ld [hl], h
    jr nz, jr_01A_6967

    ld h, l
    ld l, $FE
    db $FD
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]

jr_01A_6904:
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    jr nz, jr_01A_696F

    rst $38
    ld l, l
    ld [hl], l
    ld h, h
    jr nz, jr_01A_697B

    ld h, c
    ld [hl], d
    ld h, h
    ld h, l
    ld l, [hl]
    cp $6F
    ld [hl], l
    ld [hl], h
    jr nz, jr_01A_6993

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l

jr_01A_6923:
    ld l, $FE
    db $FD
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, [hl]
    ld [hl], l
    ld l, h

jr_01A_692F:
    ld l, h
    jr nz, @+$71

    ld h, [hl]
    jr nz, @+$66

    ld l, c
    ld [hl], d
    ld [hl], h
    ld l, $FE
    db $FD

jr_01A_693B:
    and c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    ld l, h
    ld l, h
    jr nz, @+$71

    ld h, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l

jr_01A_694B:
    rst $38
    ld h, d
    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, jr_01A_69C2

    ld l, [hl]
    jr nz, jr_01A_69CA

    ld l, b
    ld l, c

jr_01A_6958:
    ld [hl], e
    cp $73
    ld l, b
    ld h, l
    ld l, h
    ld h, [hl]
    jr nz, jr_01A_69C2

    ld [hl], d
    ld h, l
    jr nz, @+$65

    ld l, b
    ld h, l

jr_01A_6967:
    ld h, c
    ld [hl], b
    rst $38
    ld h, e
    ld h, c
    ld [hl], d
    ld h, h
    ld h, d

jr_01A_696F:
    ld l, a
    ld h, c
    ld [hl], d
    ld h, h
    cp $70
    ld [hl], d
    ld l, a
    ld [hl], b
    ld [hl], e
    ld l, $FE

jr_01A_697B:
    db $FD
    and c
    ld b, l
    dec d
    inc d
    inc hl
    ld e, h
    stop
    ld b, e
    db $10
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    dec d
    inc d
    adc l
    ld e, h
    stop
    ld b, e
    db $10

jr_01A_6993:
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    ld bc, $0219
    ld c, b
    ld a, [de]
    ld a, [hl-]
    ld c, d
    ld bc, $1A0C
    ld c, b
    ld a, [de]
    ld a, [hl-]
    ld c, d
    sub a
    or e
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
    ld de, $1353
    ld h, a
    db $EC
    ld c, d
    dec b
    nop
    ld hl, sp+$4A
    ld [$9808], sp
    pop de

jr_01A_69C2:
    nop
    ld a, [de]
    and $69
    add hl, de

jr_01A_69C7:
    add sp, $46
    dec bc

jr_01A_69CA:
    nop
    nop
    add [hl]
    or e
    ld sp, $01C7
    ld [hl], e
    rrca
    rst $38
    ld a, a
    or e
    daa
    and d
    dec b
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld c, b
    ld a, [de]
    sbc e
    ld d, a
    ld b, l
    ld d, $14
    ld e, l
    ld e, h
    jr nc, jr_01A_69EC

jr_01A_69EC:
    ld bc, $5D00
    add hl, de
    ldh a, [rDMA]
    ld b, l
    ld c, b
    rrca
    ld h, a
    ld l, l
    ld c, b
    dec d
    sbc a
    ld b, b
    ld c, b
    jr jr_01A_69C7

    ld l, l
    ld c, b
    rla
    ld h, [hl]
    ld c, l
    ld c, b
    ld [de], a
    cp e
    ld b, b
    or [hl]
    inc [hl]
    and b
    ld [bc], a
    ld bc, $0A0C
    ld c, b
    ld a, [de]
    and [hl]
    ld l, c
    or [hl]
    dec [hl]
    and b
    ld bc, $0F01
    ld a, [bc]
    ld c, b
    ld a, [de]
    and [hl]
    ld l, c
    or [hl]
    ld [hl], $A0
    ld [bc], a
    ld bc, $0A12
    ld c, b
    ld a, [de]
    and [hl]
    ld l, c
    or [hl]
    ld [hl-], a
    and b
    inc b
    ld bc, $0A15
    ld c, b
    ld a, [de]
    and [hl]
    ld l, c
    or [hl]
    inc sp
    and b
    ld bc, $1801
    ld a, [bc]
    ld c, b
    ld a, [de]
    and [hl]
    ld l, c
    ld [hl+], a
    rlca
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
    ld [de], a
    ld d, d
    inc de
    dec b
    nop
    ld hl, sp+$4A
    ld c, $11
    or [hl]
    jp nc, $1A00

    daa
    ld l, a
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    db $10
    ld de, $D2B8
    nop
    ld a, [de]
    cp d
    ld l, a
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    inc c
    db $10
    adc h
    jp nc, $1A30

    ld d, c
    ld [hl], b
    add hl, de
    add sp, $46
    ld l, [hl]
    jr nc, jr_01A_6A92

    ret nc

    ld b, e
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_01A_6A9A

    and b
    ld b, b
    nop
    add e
    nop

jr_01A_6A92:
    dec bc
    nop
    dec bc
    ld [bc], a
    adc b
    inc d
    ld [de], a
    ld [hl], e

jr_01A_6A9A:
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld e, [hl]
    ld a, [de]
    and [hl]
    ld l, d
    ld b, l
    and d
    jr z, jr_01A_6AEC

    and [hl]
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01A_6B23

    ld l, b
    ld h, l
    jr nz, jr_01A_6B23

    ld h, c
    ld [hl], d
    ld [hl], h
    ld a, c
    daa
    ld [hl], e
    rst $38
    ld h, c
    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, @+$76

    ld l, a
    jr nz, jr_01A_6B37

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    jr nz, jr_01A_6B45

    ld [hl], h
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01A_6B4C

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01A_6B27

    rst $38
    ld l, [hl]
    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_01A_6B59

    ld l, a
    jr nz, jr_01A_6B4F

    ld h, l
    ld [hl], h
    jr nz, jr_01A_6B5E

jr_01A_6AEC:
    ld l, c
    ld h, h
    cp $6F
    ld h, [hl]
    jr nz, jr_01A_6B67

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $FE
    db $FD
    and d
    jr z, jr_01A_6B45

    and [hl]
    ld d, a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_01A_6B6E

    ld l, c
    ld h, h
    jr nz, jr_01A_6B87

    ld l, a
    ld [hl], l
    rst $38
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01A_6B80

    ld [hl], h
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    ld l, [hl]
    jr nz, jr_01A_6B97

jr_01A_6B23:
    ld l, b
    ld h, l
    jr nz, jr_01A_6B6A

jr_01A_6B27:
    ld l, a
    ld [hl], d
    ld h, l
    ld l, $20
    ld c, c
    rst $38
    ld h, [hl]
    ld l, c
    ld h, a
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_01A_6B9F

    ld h, [hl]

jr_01A_6B37:
    jr nz, jr_01A_6BA2

    ld [hl], h
    daa
    ld [hl], e
    cp $66
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01A_6BB7

    ld l, b
    ld h, l

jr_01A_6B45:
    ld [hl], d
    ld h, l
    inc l
    rst $38
    ld l, c
    ld [hl], h
    daa

jr_01A_6B4C:
    ld [hl], e
    jr nz, jr_01A_6BBD

jr_01A_6B4F:
    ld l, a
    ld [hl], h
    jr nz, jr_01A_6BC6

    ld h, c
    ld h, [hl]
    ld h, l
    cp $74
    ld l, a

jr_01A_6B59:
    jr nz, jr_01A_6BC3

    ld h, c
    halt
    ld h, l

jr_01A_6B5E:
    jr nz, jr_01A_6BCC

    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld h, c
    ld [hl], d

jr_01A_6B67:
    ld l, a
    ld [hl], l
    ld l, [hl]

jr_01A_6B6A:
    ld h, h
    ld l, $FE
    db $FD

jr_01A_6B6E:
    and d
    jr z, @+$45

    and [hl]
    ld b, h
    ld l, a
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    jr nz, jr_01A_6BE2

    ld h, c
    halt
    ld h, l
    jr nz, jr_01A_6BF3

    ld l, a

jr_01A_6B80:
    rst $38
    ld [hl], b
    ld [hl], l
    ld [hl], h
    jr nz, @+$6B

    ld [hl], h

jr_01A_6B87:
    jr nz, jr_01A_6BF2

    ld l, [hl]
    jr nz, jr_01A_6BF9

    ld a, c
    cp $73
    ld h, l
    ld h, e
    ld [hl], d
    ld h, l
    ld [hl], h
    jr nz, @+$74

    ld l, a

jr_01A_6B97:
    ld l, a
    ld l, l
    ccf
    cp $FD
    and d
    sbc b
    ld b, c

jr_01A_6B9F:
    and [hl]
    ld e, c
    ld h, l

jr_01A_6BA2:
    ld [hl], e
    ld l, $FE
    db $FD
    and c
    ld e, a
    nop
    inc bc
    ld b, e
    ld d, b
    and d
    jr z, jr_01A_6BF2

    and [hl]
    ld c, a
    ld c, e
    inc l
    jr nz, jr_01A_6BFE

    daa
    ld l, h

jr_01A_6BB7:
    ld l, h
    jr nz, jr_01A_6C22

    ld l, c
    ld h, h
    ld h, l

jr_01A_6BBD:
    cp $69
    ld [hl], h
    jr nz, jr_01A_6C2A

    ld h, l

jr_01A_6BC3:
    ld [hl], d
    ld h, l
    inc l

jr_01A_6BC6:
    jr nz, jr_01A_6C2A

    ld [hl], l
    ld [hl], h
    cp $79

jr_01A_6BCC:
    ld l, a
    ld [hl], l
    jr nz, jr_01A_6C33

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$79

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    cp $6D
    ld h, l
    jr nz, @+$71

    ld [hl], b
    ld h, l
    ld l, [hl]

jr_01A_6BE2:
    jr nz, @+$6B

    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld e, a
    ld bc, $4503
    and d
    jr z, jr_01A_6C33

    and [hl]
    ld c, b

jr_01A_6BF2:
    ld h, c

jr_01A_6BF3:
    ld [hl], b
    ld [hl], b
    ld a, c
    jr nz, @+$70

    ld l, a

jr_01A_6BF9:
    ld [hl], a
    ccf
    cp $FD
    and d

jr_01A_6BFE:
    sbc b
    ld b, c
    and [hl]
    ld c, c
    jr nz, @+$79

    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01A_6C6B

    ld h, l
    inc l
    rst $38
    ld h, c
    ld [hl], e
    jr nz, jr_01A_6C83

    ld l, a
    ld l, a
    ld l, [hl]
    jr nz, jr_01A_6C76

    ld [hl], e
    cp $79
    ld l, a
    ld [hl], l
    jr nz, jr_01A_6C8C

    ld [hl], l
    ld [hl], h
    jr nz, jr_01A_6C94

    ld l, b
    ld h, l

jr_01A_6C22:
    rst $38
    ld [hl], d
    ld h, l
    ld l, h
    ld l, c
    ld h, e
    jr nz, jr_01A_6C8B

jr_01A_6C2A:
    ld [hl], a
    ld h, c
    ld a, c
    ld l, $FE
    db $FD
    and d
    jr z, jr_01A_6C76

jr_01A_6C33:
    and [hl]
    ld c, a
    ld c, b
    ld c, b
    ld c, b
    jr nz, jr_01A_6C93

    ld b, l
    ld b, c
    ld c, b
    ld hl, $FE21
    db $FD
    and c
    ld e, a
    ld [bc], a
    inc bc
    ld b, l
    add d
    ld [hl-], a
    call nc, $0302
    dec e
    jp nc, $150D

    and d
    jr z, jr_01A_6C95

    and [hl]
    ld c, h
    ld b, l
    ld d, h
    daa
    ld d, e
    jr nz, jr_01A_6CAA

    ld b, c
    ld d, d
    ld d, h
    ld e, c
    ld hl, $FF21
    ld d, a
    ld c, a
    ld c, a
    ld c, a
    ld hl, $FE21
    db $FD
    and c
    ld e, a

jr_01A_6C6B:
    inc bc
    inc bc
    ld b, l
    and d
    jr z, jr_01A_6CB4

    and [hl]
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h

jr_01A_6C76:
    jr nz, jr_01A_6CD9

    ld [hl], d
    ld h, l
    jr nz, jr_01A_6CF5

    ld l, a
    ld [hl], l
    rst $38
    ld h, h
    ld l, a
    ld l, c
    ld l, [hl]

jr_01A_6C83:
    ld h, a
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]

jr_01A_6C8B:
    ld c, c

jr_01A_6C8C:
    daa
    ld l, l
    jr nz, jr_01A_6D03

    ld [hl], l
    ld [hl], d
    ld h, l

jr_01A_6C93:
    rst $38

jr_01A_6C94:
    ld a, c

jr_01A_6C95:
    ld l, a
    ld [hl], l
    jr nz, @+$66

    ld l, c
    ld h, h
    cp $73
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$76

    ld l, a
    rst $38
    ld [hl], h

jr_01A_6CAA:
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$75

    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l

jr_01A_6CB4:
    jr nz, jr_01A_6D2A

    ld l, a
    cp $6F
    ld [hl], b
    ld h, l
    ld l, [hl]
    jr nz, jr_01A_6D32

    ld l, b
    ld h, l
    jr nz, jr_01A_6D26

    ld l, a
    ld l, a
    ld [hl], d
    ld l, $FE
    db $FD
    ld b, [hl]
    ld a, [bc]
    nop
    inc l
    and b
    inc b
    ld a, [de]
    jr nz, jr_01A_6D3E

    and [hl]
    ld c, c
    jr nz, jr_01A_6D44

    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l

jr_01A_6CD9:
    ld h, h
    jr nz, jr_01A_6D45

    ld [hl], h
    rst $38
    ld h, l
    ld h, c
    ld [hl], d
    ld l, h
    ld l, c
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_01A_6D31

    cp $6A
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01A_6D52

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    rst $38
    ld [hl], d

jr_01A_6CF5:
    ld h, l
    ld l, l
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_01A_6D66

    ld l, a
    ld [hl], a
    cp $74
    ld l, a

jr_01A_6D03:
    jr nz, jr_01A_6D69

    ld l, a
    jr nz, jr_01A_6D71

    ld [hl], h
    ld hl, $53FE
    ld l, a
    jr nz, jr_01A_6D88

    ld l, a
    ld [hl], l
    jr nz, @+$65

    ld h, c
    ld l, [hl]
    rst $38
    ld [hl], h
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_01A_6D89

    ld h, l
    ld l, $FE
    db $FD
    and d
    jr z, jr_01A_6D66

    and [hl]
    ld b, [hl]
    ld l, a

jr_01A_6D26:
    ld [hl], d
    ld h, a
    ld h, l
    ld [hl], h

jr_01A_6D2A:
    jr nz, jr_01A_6D95

    ld [hl], h
    ld l, $20
    ld c, c
    daa

jr_01A_6D31:
    ld l, l

jr_01A_6D32:
    rst $38
    ld l, [hl]
    ld l, a
    ld [hl], h
    jr nz, jr_01A_6DAC

    ld h, l
    ld l, h
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a

jr_01A_6D3E:
    ld l, $FE
    ld c, h
    ld h, l
    ld [hl], h
    daa

jr_01A_6D44:
    ld [hl], e

jr_01A_6D45:
    jr nz, jr_01A_6DB1

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01A_6DB3

    ld l, a
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_01A_6DC6

jr_01A_6D52:
    ld l, b
    ld h, l
    jr nz, jr_01A_6DC6

    ld h, c
    ld [hl], d
    ld [hl], h
    ld a, c
    ld l, $FE
    db $FD
    and c
    ld e, a
    inc b
    inc bc
    ld b, l
    and d
    jr z, jr_01A_6DA8

    and [hl]

jr_01A_6D66:
    ld c, c
    ld d, h
    daa

jr_01A_6D69:
    ld d, e
    jr nz, jr_01A_6DBC

    ld b, c
    ld d, d
    ld d, h
    ld e, c
    rst $38

jr_01A_6D71:
    ld d, h
    ld c, c
    ld c, l
    ld b, l
    ld hl, $4C20
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01A_6DE5

    ld l, a
    ld hl, $FDFE
    and c
    dec bc
    inc bc
    ld e, a
    dec b
    inc b

jr_01A_6D88:
    and d

jr_01A_6D89:
    cp b
    ld e, l
    and [hl]
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    inc l
    jr nz, jr_01A_6DFE

jr_01A_6D95:
    ld [hl], h
    daa
    ld [hl], e
    rst $38
    ld [hl], h
    ld l, c
    ld l, l
    ld h, l
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, l
    ld l, c
    ld h, h
    ld l, a

jr_01A_6DA8:
    ld l, [hl]
    inc l
    jr nz, jr_01A_6E10

jr_01A_6DAC:
    ld l, a
    jr nz, jr_01A_6E28

    ld l, a
    ld [hl], l

jr_01A_6DB1:
    rst $38
    ld l, e

jr_01A_6DB3:
    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01A_6E20

    ld l, a
    ld [hl], a
    jr nz, @+$76

jr_01A_6DBC:
    ld l, a
    cp $6F
    ld [hl], b
    ld h, l
    ld l, [hl]
    jr nz, jr_01A_6E38

    ld l, b
    ld h, c

jr_01A_6DC6:
    ld [hl], h
    jr nz, jr_01A_6E2D

    ld l, a
    ld l, a
    ld [hl], d
    ccf
    cp $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld c, a
    ld h, [hl]
    jr nz, jr_01A_6E3A

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $20
    ld b, c
    ld l, h
    ld l, h
    rst $38
    ld c, e
    ld h, l
    ld h, l

jr_01A_6DE5:
    ld [hl], b
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_01A_6E4F

    ld l, a
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01A_6E41

    daa
    ld l, l
    jr nz, @+$63

    ld h, d
    ld l, a

jr_01A_6DFE:
    ld [hl], l
    ld [hl], h
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_01A_6E67

    ld h, l
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    cp $4B
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l

jr_01A_6E10:
    ld [hl], d
    ld l, $FE
    db $FD
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
    jr nz, jr_01A_6E8E

jr_01A_6E20:
    ld l, a
    ld [hl], h
    rst $38
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l

jr_01A_6E28:
    ld [hl], d
    jr nz, jr_01A_6EA4

    ld h, l
    ld [hl], h

jr_01A_6E2D:
    dec l
    dec l
    cp $79
    ld l, a
    ld [hl], l
    jr nz, jr_01A_6E9D

    ld h, c
    halt
    ld h, l

jr_01A_6E38:
    jr nz, @+$76

jr_01A_6E3A:
    ld l, a
    jr nz, jr_01A_6EA4

    ld l, a
    rst $38
    ld [hl], h
    ld l, b

jr_01A_6E41:
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_01A_6EBC

    ld l, b
    ld h, l
    cp $6F
    ld h, [hl]
    ld h, [hl]
    ld l, c

jr_01A_6E4F:
    ld h, e
    ld l, c
    ld h, c
    ld l, h
    rst $38
    ld h, e
    ld h, l
    ld [hl], d
    ld h, l
    ld l, l
    ld l, a
    ld l, [hl]
    ld a, c
    jr nz, jr_01A_6EC4

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld l, $FE
    db $FD
    and d
    sbc b

jr_01A_6E67:
    ld b, c
    and [hl]
    ld b, c
    ld l, h
    ld l, h
    jr nz, jr_01A_6EE0

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    inc l
    jr nz, jr_01A_6ED7

    ld [hl], l
    ld [hl], h
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, @+$76

    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_01A_6EF2

    ld h, l
    cp $61
    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [hl], a
    ld h, c

jr_01A_6E8E:
    ld [hl], d
    ld h, h
    ld [hl], e
    ld l, $FE
    db $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld c, c
    jr nz, jr_01A_6EFF

    ld l, a
    ld l, [hl]

jr_01A_6E9D:
    daa
    ld [hl], h
    jr nz, jr_01A_6F0C

    ld l, [hl]
    ld l, a
    ld [hl], a

jr_01A_6EA4:
    ld l, $2E
    ld l, $FE
    ld h, c
    ld h, [hl]

jr_01A_6EAA:
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01A_6F08

    ld h, c
    ld l, e
    ld l, c
    rst $38
    ld h, d
    ld [hl], l
    ld l, c
    ld l, h
    ld [hl], h
    jr nz, jr_01A_6F2E

    ld l, b
    ld h, c

jr_01A_6EBC:
    ld [hl], h
    jr nz, jr_01A_6F31

    ld l, a
    ld l, a
    ld l, l
    cp $69

jr_01A_6EC4:
    ld [hl], h
    jr nz, jr_01A_6F3A

    ld [hl], h
    ld l, c
    ld l, h
    ld l, h
    jr nz, @+$76

    ld l, a
    ld l, a
    ld l, e
    rst $38
    ld l, l
    ld h, l
    jr nz, jr_01A_6F4E

    ld h, l
    ld h, c

jr_01A_6ED7:
    ld [hl], d
    ld [hl], e
    jr nz, jr_01A_6F4F

    ld l, a
    jr nz, jr_01A_6F45

    ld h, l
    ld [hl], h

jr_01A_6EE0:
    cp $68
    ld l, c
    ld l, l
    jr nz, jr_01A_6F5A

    ld l, a
    jr nz, jr_01A_6F5D

    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_01A_6F5B

    ld h, l
    rst $38
    ld l, b
    ld l, a

jr_01A_6EF2:
    ld [hl], a
    jr nz, @+$76

    ld l, a
    jr nz, jr_01A_6F5F

    ld h, l
    ld [hl], h
    cp $69
    ld l, [hl]
    ld l, $2E

jr_01A_6EFF:
    ld l, $FE
    db $FD
    ld e, a
    ld b, $02
    ld e, d
    jr c, jr_01A_6EAA

jr_01A_6F08:
    jr z, jr_01A_6F4D

    and [hl]
    ld d, a

jr_01A_6F0C:
    ld b, l
    jr nz, jr_01A_6F51

    ld b, l
    ld d, h
    ld d, h
    ld b, l
    ld d, d
    rst $38
    ld b, a
    ld b, l
    ld d, h
    jr nz, jr_01A_6F61

    ld c, a
    ld c, c
    ld c, [hl]
    ld b, a
    ld hl, $FE21
    db $FD
    and c
    ld e, a
    rlca
    inc b
    ld b, l
    dec d
    inc d
    adc l
    ld e, h
    ld b, b
    inc d
    or l

jr_01A_6F2E:
    ld e, l
    nop
    nop

jr_01A_6F31:
    ld e, a
    nop
    inc bc
    dec d
    inc d
    adc l
    ld e, h
    db $10
    inc d

jr_01A_6F3A:
    db $DD
    ld e, l
    nop
    nop
    ld e, a
    ld bc, $1503
    inc d
    db $D3
    ld e, l

jr_01A_6F45:
    nop
    nop
    ld h, e
    ld bc, $1415
    db $DD
    ld e, l

jr_01A_6F4D:
    nop

jr_01A_6F4E:
    nop

jr_01A_6F4F:
    ld e, a
    ld [bc], a

jr_01A_6F51:
    inc bc
    dec d
    inc d
    db $DD
    ld e, l
    ld [$9714], sp
    ld e, l

jr_01A_6F5A:
    ld d, b

jr_01A_6F5B:
    nop
    ld e, c

jr_01A_6F5D:
    inc bc
    dec d

jr_01A_6F5F:
    inc d
    db $DD

jr_01A_6F61:
    ld e, l
    nop
    nop
    ld e, a
    inc bc
    inc bc
    ld b, e
    ld [$1415], sp
    sub a
    ld e, l
    ld [$D314], sp
    ld e, l
    db $10
    inc d
    xor e
    ld e, l
    jr nc, jr_01A_6F77

jr_01A_6F77:
    ld d, $14
    ld l, l
    ld e, h
    jr nz, @+$01

    nop
    nop
    inc d
    inc d
    and c
    ld e, l
    ld e, a
    inc b
    inc bc
    dec d
    inc d
    ld c, l
    ld e, h
    db $10
    inc d
    cp a
    ld e, l
    jr nz, jr_01A_6FA4

    ret


    ld e, l
    jr nz, jr_01A_6FA8

    cp a
    ld e, l
    jr nz, jr_01A_6FAC

    xor e
    ld e, l
    nop
    nop
    ld e, [hl]
    ld a, [de]
    ld h, d
    ld l, l
    ld e, a
    dec b
    inc b
    inc d

jr_01A_6FA4:
    inc d
    db $D3
    ld e, l
    ld e, a

jr_01A_6FA8:
    ld b, $02
    inc d
    inc d

jr_01A_6FAC:
    xor e
    ld e, l
    ld e, a
    rlca
    inc b
    ld b, e
    jr nc, jr_01A_6FC9

    inc d
    ld l, l
    ld e, h
    jr nc, jr_01A_6FB9

jr_01A_6FB9:
    ld b, l
    dec d
    dec d
    ld a, [bc]
    ld a, b
    ld b, b
    dec d
    ld l, [hl]
    ld a, b
    nop
    nop
    ld e, a
    nop
    inc bc
    dec d
    dec d

jr_01A_6FC9:
    ld a, [bc]
    ld a, b
    db $10
    dec d
    jp c, $1077

    dec d
    ld e, d
    ld a, b
    jr nc, @+$17

    sub [hl]
    ld a, b
    nop
    nop
    ld e, a
    ld bc, $1503
    dec d
    ld [$7877], a
    dec d
    ld h, h
    ld a, b
    jr nc, jr_01A_6FE6

jr_01A_6FE6:
    add d
    daa
    call nc, $0302
    dec e
    jp nc, $150D

    ld b, e
    jr nc, jr_01A_7007

    dec d
    jp c, Jump_01A_7877

    dec d
    sub [hl]
    ld a, b
    nop
    nop
    ld e, c
    ld bc, $1A5E
    db $ED
    ld l, e
    ld e, a
    ld [bc], a
    inc bc
    dec d
    dec d
    ld a, [de]

jr_01A_7007:
    ld a, b
    ld [hl-], a
    dec d
    ld a, [hl+]
    ld a, b
    ld [hl-], a
    dec d
    sub [hl]
    ld a, b
    nop
    nop
    ld e, c
    inc bc
    ld e, [hl]
    ld a, [de]
    ld b, [hl]
    ld l, h
    ld e, a
    inc bc
    inc bc
    dec d
    dec d
    ld a, [hl-]
    ld a, b
    ld d, b
    dec d
    sub [hl]
    ld a, b
    jr nz, @+$17

    ld c, d
    ld a, b
    jr nz, jr_01A_703E

    ld a, [hl+]
    ld a, b
    db $10
    dec d
    adc h
    ld a, b
    nop
    nop
    ld e, [hl]
    ld a, [de]
    ld l, [hl]
    ld l, h
    ld e, a
    inc b
    inc bc
    ld b, e
    ld [$1514], sp
    ld a, b
    ld a, b

jr_01A_703E:
    ld e, a
    dec b
    inc b
    inc d
    dec d
    adc h
    ld a, b
    ld e, a
    rlca
    inc b
    ld b, e
    jr nc, @+$17

    dec d
    ld a, [$3077]
    nop
    ld b, l
    dec d
    inc de
    ret nc

    ld l, h
    ld b, b
    inc de
    ld a, [hl+]
    ld l, l
    nop
    nop
    ld e, a
    dec b
    inc b
    ld h, h
    jr c, @+$16

    inc de
    ld e, h
    ld l, l
    ld e, a
    rlca
    inc b
    ld b, e
    jr nc, jr_01A_707F

    inc de
    ret nz

    ld l, h
    jr nc, jr_01A_706F

jr_01A_706F:
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_01A_7085

    ld c, b
    ld a, [de]
    ld a, d
    ld [hl], b
    sub a
    or e
    ld sp, $01C7

jr_01A_707F:
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ccf

jr_01A_7085:
    ld d, d
    inc de
    dec b
    ld [bc], a
    ld hl, sp+$4A
    ld c, $0B
    ld e, b
    pop de
    nop
    ld a, [de]
    and a
    ld [hl], c
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    inc c
    dec bc
    ld d, [hl]
    pop de
    ld a, c
    ld a, [de]
    adc e
    ld [hl], d
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    dec c
    inc c

jr_01A_70AB:
    ld [hl], l
    pop de
    xor c
    ld a, [de]
    rra
    ld [hl], d
    add hl, de
    add sp, $46
    dec b
    dec b
    ld hl, sp+$4A
    rlca
    dec c
    adc l
    pop de
    nop
    inc de
    ld d, h
    ld l, b
    add hl, de
    add sp, $46
    dec b
    ld b, $F8
    ld c, d
    ld [$E810], sp
    pop de
    dec hl
    ld de, $4242
    add hl, de
    add sp, $46
    dec b
    rlca
    ld hl, sp+$4A
    inc c
    inc de
    ld b, [hl]
    jp nc, $13A0

    xor h
    ld h, d
    add hl, de
    add sp, $46
    dec b
    ld [$4AF8], sp
    rrca
    inc de
    ld c, c
    jp nc, $1179

    and e
    ld b, h
    add hl, de
    add sp, $46
    dec b
    add hl, bc
    ld hl, sp+$4A
    ld [de], a
    db $10
    ld a, [c]
    pop de
    ld d, e
    ld de, $4E58
    add hl, de
    add sp, $46
    dec bc
    ld [bc], a
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
    ld l, [hl]
    dec hl
    dec c
    ret nc

    ld d, l
    nop
    add b
    nop
    ld l, [hl]
    jr z, jr_01A_7127

    ld b, b
    ld l, [hl]
    or b
    add d
    nop
    ld l, [hl]
    ld h, $0D
    ld b, b
    ld [hl], e
    jr nc, jr_01A_70AB

    nop

jr_01A_7127:
    ld l, [hl]
    jr nc, jr_01A_7137

    ret nc

    ld b, e
    sub b
    add a
    nop
    ld l, [hl]
    jr nc, jr_01A_713F

    and b
    ld b, b
    sub b
    adc d
    nop

jr_01A_7137:
    adc b
    ld c, $0A
    ld [hl], e
    rrca
    rst $38
    ld a, a
    sbc b

jr_01A_713F:
    ld a, d
    ld h, b
    rrca
    ld e, l
    ld a, [de]
    ld b, a
    ld [hl], c
    ld b, l
    add a
    ld [hl-], a
    rst $38
    ld bc, $FF46
    nop
    nop
    ld l, [hl]
    add hl, hl
    dec c
    ld b, b
    ld d, e
    nop
    adc d
    nop
    add a
    ld c, b
    nop
    ld bc, $6E00
    jr z, jr_01A_716C

    ret nz

    ld [hl], b
    sub b
    add a
    nop
    add a
    or b
    ld bc, $0000
    ld l, [hl]
    jr nc, jr_01A_7179

jr_01A_716C:
    and b
    ld b, b
    sub b
    adc d
    nop
    add a
    ld c, b
    nop
    rst $38
    nop
    ld l, [hl]
    jr nc, jr_01A_7186

jr_01A_7179:
    ret nc

    ld b, e
    sub b
    add a
    nop
    add a
    inc a
    rst $38
    nop
    nop
    ld e, a
    nop
    ld [bc], a

jr_01A_7186:
    ld b, l
    dec d
    inc de
    ld h, e
    ld l, a
    ld [$4313], sp
    ld l, a
    db $10
    inc de
    db $EB
    ld l, a
    nop
    nop
    ld e, a
    ld b, $05
    dec d
    inc de
    ld [hl], e
    ld l, a
    db $10
    inc de
    ld b, e
    ld l, a
    jr nz, jr_01A_71B5

    ld [hl], e
    ld l, a
    ld c, b
    nop
    add hl, de
    inc d
    inc d
    and c
    ld e, l
    ld e, a
    ld [bc], a
    ld [bc], a
    dec d
    inc d
    ret


    ld e, l
    jr nz, jr_01A_71C8

    ld l, l

jr_01A_71B5:
    ld e, h
    ld [$4D14], sp
    ld e, h
    db $10
    inc d
    ret


    ld e, l
    jr nz, jr_01A_71D4

    ld c, l
    ld e, h
    db $10
    inc d
    and c
    ld e, l
    jr nz, jr_01A_71C8

jr_01A_71C8:
    ld e, [hl]
    ld a, [de]
    cp h
    ld [hl], d
    ld e, a
    inc bc
    inc b
    inc d
    inc d
    sub a
    ld e, l
    ld e, a

jr_01A_71D4:
    inc b
    inc b
    dec d
    inc d
    ld b, c
    ld e, l
    ld [$AB14], sp
    ld e, l
    inc c
    inc d
    cp a
    ld e, l
    ld [$A114], sp
    ld e, l
    jr nz, jr_01A_71FC

    or l
    ld e, l
    stop
    ld e, [hl]
    ld a, [de]
    db $FD
    ld [hl], c
    ld h, l
    dec bc
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_01A_7208

    ld c, b
    ld c, $10

jr_01A_71FC:
    ld b, a
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    ccf

jr_01A_7208:
    cp $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_01A_7289

    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01A_727B

    ld l, a
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec bc
    ld b, l
    inc d
    inc de
    ld a, [hl+]
    ld l, l
    ld e, a
    nop
    ld [bc], a
    dec d
    inc de
    ld a, [hl+]
    ld l, l
    jr nz, jr_01A_723F

    or b
    ld l, h
    stop
    ld e, c
    ld bc, $1315
    ret nc

    ld l, h
    ld [$2A13], sp
    ld l, l
    jr nz, jr_01A_723C

jr_01A_723C:
    ld e, [hl]
    ld a, [de]
    inc l

jr_01A_723F:
    ld [hl], h
    ld e, a
    ld bc, $1502
    inc de
    ld h, [hl]
    ld l, l
    jr nz, jr_01A_725C

    ld e, h
    ld l, l
    jr nz, jr_01A_7260

    jr nz, jr_01A_72BC

    jr nz, jr_01A_7251

jr_01A_7251:
    ld e, c
    ld bc, $1315
    db $10
    ld l, l
    db $10
    inc de
    ld c, b
    ld l, l
    nop

jr_01A_725C:
    nop
    ld e, a
    ld [bc], a
    ld [bc], a

jr_01A_7260:
    dec d
    inc de
    ld c, b
    ld l, l
    ld l, b
    inc de
    inc [hl]
    ld l, l
    nop
    nop
    ld e, a
    inc bc
    inc b
    inc d
    inc de
    ld c, b
    ld l, l
    ld e, a
    inc b
    inc b
    dec d
    inc de
    ld c, b
    ld l, l
    ld [$3413], sp

jr_01A_727B:
    ld l, l
    inc c
    inc de
    ld e, h
    ld l, l
    ld [$2A13], sp
    ld l, l
    jr nz, jr_01A_7299

    inc [hl]
    ld l, l
    nop

jr_01A_7289:
    nop
    ld b, l
    inc d
    dec d
    ld h, h
    ld a, b
    ld h, e
    ld bc, $1514
    and b
    ld a, b
    ld h, e
    ld bc, $1515

jr_01A_7299:
    ld a, b
    ld a, b
    jr c, jr_01A_72B2

    and b
    ld a, b
    nop
    nop
    ld e, a
    inc bc
    inc b
    dec d
    dec d
    ld c, d
    ld a, b
    ld [$6415], sp
    ld a, b
    nop
    nop
    ld e, a
    inc b
    inc b
    dec d

jr_01A_72B2:
    dec d
    ld c, d
    ld a, b
    inc b
    dec d
    ld a, [hl+]
    ld a, b
    ld h, b
    nop
    add hl, de

jr_01A_72BC:
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    ld [hl], e
    jr nz, jr_01A_733D

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01A_7337

    ld h, l
    ld [hl], a
    rst $38
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_01A_731E

    cp $70
    ld [hl], d
    ld l, a
    ld l, l
    ld l, c
    ld [hl], e
    ld h, l
    jr nz, jr_01A_7353

    ld l, a
    rst $38
    ld l, h
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_01A_735C

    ld h, c
    ld a, b
    ld h, l
    ld [hl], e
    jr nz, jr_01A_734F

    ld l, [hl]
    ld h, h
    cp $63
    ld l, h
    ld h, l
    ld h, c
    ld l, [hl]
    jr nz, jr_01A_7367

    ld [hl], l
    ld [hl], h
    jr nz, jr_01A_7370

    ld l, b
    ld h, l
    rst $38
    ld b, l
    ld h, l
    ld h, d
    ld l, c
    ld [hl], h
    ld [hl], e
    jr nz, jr_01A_737B

    ld l, b
    ld h, c
    ld [hl], h
    cp $61
    ld [hl], d
    ld h, l
    jr nz, jr_01A_7380

    ld l, h
    ld h, c
    ld h, a
    ld [hl], l
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01A_7383

    ld h, c

jr_01A_731E:
    ld l, c
    ld [hl], d
    jr nz, jr_01A_7385

    ld l, c
    ld [hl], h
    ld a, c
    inc l
    cp $61
    ld [hl], e
    jr nz, jr_01A_73A2

    ld h, l
    ld l, h
    ld l, h
    jr nz, @+$63

    ld [hl], e
    rst $38
    ld h, d
    ld h, l
    ld h, a
    ld l, c
    ld l, [hl]

jr_01A_7337:
    jr nz, jr_01A_73A6

    ld a, c
    jr nz, jr_01A_73AA

    ld h, l

jr_01A_733D:
    ld [hl], a
    cp $70
    ld h, c
    ld [hl], d
    ld l, e
    jr nz, jr_01A_73B7

    ld h, l
    ld l, [hl]
    ld l, a
    halt
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    rst $38

jr_01A_734F:
    ld [hl], b
    ld l, h
    ld h, c
    ld l, [hl]

jr_01A_7353:
    ld l, $FE
    db $FD
    and d
    cp b
    ld e, l
    and [hl]
    dec l
    ld d, b

jr_01A_735C:
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], h
    ld hl, $FF2D
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h

jr_01A_7367:
    daa
    ld [hl], e
    jr nz, jr_01A_73D9

    ld l, a
    ld [hl], h
    jr nz, jr_01A_73DF

    ld h, c

jr_01A_7370:
    ld [hl], d
    ld [hl], h
    cp $6F
    ld h, [hl]
    jr nz, jr_01A_73EB

    ld l, b
    ld h, l
    jr nz, jr_01A_73E5

jr_01A_737B:
    ld l, a
    ld h, d
    rst $38
    ld h, h
    ld h, l

jr_01A_7380:
    ld [hl], e
    ld h, e
    ld [hl], d

jr_01A_7383:
    ld l, c
    ld [hl], b

jr_01A_7385:
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $20
    ld c, a
    ld l, e
    ld h, c
    ld a, c
    ld l, $FE
    ld c, c
    jr nz, @+$72

    ld [hl], d

jr_01A_73A2:
    ld l, a
    ld l, l
    ld l, c
    ld [hl], e

jr_01A_73A6:
    ld h, l
    jr nz, jr_01A_741D

    ld l, a

jr_01A_73AA:
    rst $38
    ld l, e
    ld h, l
    ld h, l
    ld [hl], b
    jr nz, @+$71

    ld [hl], l
    ld [hl], h
    jr nz, jr_01A_7429

    ld l, b
    ld h, l

jr_01A_73B7:
    jr nz, jr_01A_73B7

    ld [hl], a
    ld l, c
    ld l, h
    ld h, h
    jr nz, jr_01A_7433

    ld l, c
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    rst $38
    ld l, b
    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    jr nz, jr_01A_742D

    ld l, [hl]
    ld h, h
    cp $70
    ld [hl], d
    ld l, a
    ld [hl], h
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, jr_01A_744C

    ld l, b

jr_01A_73D9:
    ld h, l
    rst $38
    ld h, e
    ld l, c
    ld [hl], h
    ld a, c

jr_01A_73DF:
    ld l, $FE
    db $FD
    and c
    and [hl]
    ld e, c

jr_01A_73E5:
    ld c, c
    ld d, b
    ld d, b
    ld b, l
    ld b, l
    ld b, l

jr_01A_73EB:
    ld hl, $4CFE
    ld c, a
    ld c, [hl]
    ld b, a
    jr nz, jr_01A_743F

    ld c, c
    ld d, [hl]
    ld b, l
    rst $38
    ld d, h
    ld c, b
    ld b, l
    jr nz, @+$4D

    ld b, l
    ld b, l
    ld d, b
    ld b, l
    ld d, d
    ld hl, $FDFE
    and c
    ld e, a
    inc bc
    inc b
    and d
    jr z, jr_01A_744E

    and [hl]
    ld d, h
    ld c, c
    ld c, l
    ld b, l
    jr nz, jr_01A_7466

    ld c, a
    jr nz, jr_01A_7465

    ld b, c
    ld d, d
    ld d, h
    ld e, c
    ld hl, $59FE
    ld b, l

jr_01A_741D:
    ld b, c
    ld c, b
    ld hl, $5720
    ld c, a
    ld c, a
    ld hl, $FDFE
    and c
    ld e, a

jr_01A_7429:
    inc b
    inc b
    ld b, l
    and d

jr_01A_742D:
    cp b
    ld e, l
    and [hl]
    ld b, c
    ld l, [hl]
    ld h, h

jr_01A_7433:
    jr nz, jr_01A_74A8

    ld l, a
    rst $38
    ld c, c
    jr nz, jr_01A_74A1

    ld l, c
    halt
    ld h, l
    jr nz, jr_01A_74B8

jr_01A_743F:
    ld l, a
    ld [hl], l
    jr nz, jr_01A_74BC

    ld l, a
    ld [hl], l
    ld [hl], d
    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_01A_7497

jr_01A_744C:
    ld h, l
    ld h, l

jr_01A_744E:
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, $2E
    ld l, $FE
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    ld hl, $FDFE
    and c
    and [hl]
    ld e, c
    ld b, l
    ld b, c
    ld b, c
    ld b, c

jr_01A_7465:
    ld c, b

jr_01A_7466:
    ld c, b
    ld hl, $4820
    ld c, a
    ld c, a
    ld d, d
    ld b, c
    ld e, c
    rst $38
    ld b, [hl]
    ld c, a
    ld d, d
    jr nz, jr_01A_74C8

    ld b, c
    ld c, h
    ld b, c
    ld b, [hl]
    ld e, c
    ld hl, $FDFE
    and c
    ld e, a
    ld bc, $4502
    ld bc, $1B19
    ld c, b
    ld a, [de]
    inc l
    ld d, c
    sub a
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    cpl
    ld d, e
    inc de
    ld h, a

jr_01A_7497:
    ld b, e
    ld c, e
    ld l, h
    ld [hl-], a
    ld c, e
    dec b
    nop
    ld hl, sp+$4A
    dec b

jr_01A_74A1:
    dec bc
    adc c
    ret nc

    nop
    ld a, [de]
    reti


    ld [hl], h

jr_01A_74A8:
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    rlca
    inc bc
    dec hl
    ret nc

    nop
    ld a, [de]
    sub h
    ld [hl], l
    ld a, [de]

jr_01A_74B8:
    rlca
    halt
    ld l, [hl]
    dec l

jr_01A_74BC:
    ld a, [bc]
    inc de
    ld a, b
    nop
    add b
    nop
    dec bc
    nop
    add [hl]
    ld [hl], e
    rrca
    rst $38

jr_01A_74C8:
    ld a, a
    ld b, [hl]
    ld a, [bc]
    nop
    ld b, a
    and b
    ld bc, $D41A
    ld [hl], h
    dec bc
    ld [bc], a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    dec d
    inc d
    inc hl
    ld e, h
    stop
    ld b, [hl]
    ld [$0808], sp
    ld [$0008], sp
    inc l
    and b
    ld [bc], a
    nop
    inc l
    and b
    inc b
    nop
    inc l
    and b
    stop
    inc l
    and b
    ld b, b
    ld a, [bc]
    nop
    inc l
    and b
    add b
    nop
    ld b, a
    and b
    ld bc, $0C1A
    ld [hl], l
    dec d
    inc d
    sub a
    ld e, l
    jr nc, jr_01A_7507

jr_01A_7507:
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    dec d
    inc d
    inc hl
    ld e, h
    db $10
    inc d
    adc l
    ld e, h
    stop
    ld d, $14
    inc hl
    ld e, h
    stop
    rst $38
    nop
    dec d
    inc d
    inc hl
    ld e, h
    db $10
    inc d
    adc l
    ld e, h
    db $10
    inc d
    sub a
    ld e, l
    nop
    nop
    ld e, a
    nop
    ld [bc], a
    ld e, [hl]
    ld a, [de]
    dec de
    halt
    ld e, a
    ld [bc], a
    inc bc
    dec d
    inc d
    inc hl
    ld e, h
    jr @+$16

    sub a
    ld e, l
    jr nz, jr_01A_7554

    cp a
    ld e, l
    nop
    nop
    ld e, [hl]
    ld a, [de]
    ld l, h
    ld a, e
    ld e, a
    inc bc
    inc bc
    dec d
    inc d
    daa
    ld e, l
    ld [$FD14], sp
    ld e, h
    db $10

jr_01A_7554:
    inc d
    ld b, c
    ld e, l
    ld [$9714], sp
    ld e, l
    nop
    nop
    ld e, l
    ld a, [de]
    db $F4
    ld a, h
    ld h, h
    ld bc, $0C43
    ld e, l
    ld a, [de]
    db $F4
    ld a, h
    ld h, h
    ld bc, $0C43
    ld e, l
    ld a, [de]
    db $F4
    ld a, h
    ld h, h
    ld bc, $1A5E
    jr nc, jr_01A_75F3

    ld e, a
    inc b
    inc bc
    dec d
    inc d
    sub a
    ld e, l
    ld b, $14
    db $FD
    ld e, h
    inc b
    inc d
    ld b, c
    ld e, l
    inc b
    inc d
    sub a
    ld e, l
    nop
    nop
    ld e, a
    dec b
    inc bc
    inc d
    inc d
    cp a
    ld e, l
    ld b, l
    inc d
    ld a, [de]
    ld b, e
    ld c, c
    ld e, a
    nop
    ld [bc], a
    inc d
    ld a, [de]
    ld c, l
    ld c, c
    ld e, a
    ld bc, $1502
    ld a, [de]
    rst $28
    ld c, b
    db $10
    ld a, [de]
    ei
    ld c, b
    db $10
    ld a, [de]
    rst $28
    ld c, b
    jr nz, jr_01A_75CA

    rlca
    ld c, c
    db $10
    ld a, [de]
    ld c, l
    ld c, c
    jr nz, jr_01A_75D2

    db $E3
    ld c, b
    ld [$431A], sp
    ld c, c
    jr nz, jr_01A_75DA

    ld c, l
    ld c, c
    nop
    nop
    ld e, [hl]
    ld a, [de]
    ld b, b
    ld a, d
    ld e, a
    ld [bc], a

jr_01A_75CA:
    inc bc
    dec d
    ld a, [de]
    ei
    ld c, b
    db $10
    ld a, [de]
    ld h, c

jr_01A_75D2:
    ld c, c
    nop
    nop
    ld e, a
    inc bc
    inc bc
    dec d
    ld a, [de]

jr_01A_75DA:
    rra
    ld c, c
    inc b
    ld a, [de]
    ld b, e
    ld c, c
    inc c
    ld a, [de]
    inc de
    ld c, c
    db $10
    ld a, [de]
    ld [hl], l
    ld c, c
    nop
    nop
    ld e, a
    inc b
    inc bc
    dec d
    ld a, [de]
    inc de
    ld c, c
    inc b
    ld a, [de]

jr_01A_75F3:
    scf
    ld c, c
    inc b
    ld a, [de]
    ld b, e
    ld c, c
    nop
    nop
    ld e, [hl]
    ld a, [de]
    ld [hl], l
    ld a, h
    ld e, a
    dec b
    inc bc
    inc d
    ld a, [de]
    ld [hl], l
    ld c, c
    ld b, l
    inc d
    ld a, [de]
    ld b, e
    ld c, c
    ld b, [hl]
    nop
    dec l
    and b
    ld bc, $0F1A
    ld a, l
    ld e, [hl]
    ld a, [de]
    dec de
    halt
    ld c, b
    ld a, [de]
    sub e
    ld c, c
    ld b, [hl]
    nop
    dec l
    and b
    ld bc, $6C1A
    ld a, b
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld h, d
    ld h, a
    ld [hl], d
    ld h, l
    ld l, [hl]
    inc l
    jr nz, jr_01A_76A4

    ld l, b
    ld l, c
    ld [hl], e
    rst $38
    ld l, c
    ld [hl], e
    jr nz, jr_01A_76B1

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01A_76A5

    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    ccf
    cp $FD
    and d
    jr c, jr_01A_76B1

    and [hl]
    ld e, c
    ld [hl], l
    ld [hl], b
    inc l
    jr nz, jr_01A_76C1

    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_01A_76BC

    ld [hl], e
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, [hl]
    ld l, a
    jr nz, jr_01A_76D6

    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_01A_76E1

    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_01A_76E2

    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    cp $6C
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_01A_76EF

    ld l, a
    jr nz, jr_01A_76F2

    ld l, b
    ld h, l
    rst $38
    ld l, l
    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    ld hl, $5920
    ld l, a
    ld [hl], l
    cp $6C
    ld l, c
    halt
    ld h, l
    jr nz, jr_01A_7705

    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    rst $38
    ld h, [hl]
    ld h, c
    ld [hl], d
    jr nz, jr_01A_76FF

    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_01A_7709

    ld [hl], d

jr_01A_76A4:
    ld l, a

jr_01A_76A5:
    ld l, l
    cp $74
    ld l, b
    ld h, l
    ld l, l
    ld l, $FE
    db $FD
    and d
    jr c, @+$6C

jr_01A_76B1:
    and [hl]
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    inc l
    jr nz, jr_01A_772A

    ld [hl], l
    ld h, c
    ld l, h

jr_01A_76BC:
    ld l, c
    ld [hl], h
    ld a, c
    dec l
    rst $38

jr_01A_76C1:
    ld l, l
    ld h, c
    ld h, h
    ld h, l
    jr nz, jr_01A_7734

    ld [hl], l
    ld h, h
    jr nz, jr_01A_7733

    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    ld [hl], e
    cp $61
    ld [hl], d
    ld h, l
    jr nz, jr_01A_774A

jr_01A_76D6:
    ld l, a
    ld l, a
    rst $38
    ld h, l
    ld a, b
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld [hl], e
    ld l, c
    halt

jr_01A_76E1:
    ld h, l

jr_01A_76E2:
    inc l
    cp $73
    ld l, a
    jr nz, jr_01A_7731

    jr nz, jr_01A_7756

    ld l, c
    halt
    ld h, l
    jr nz, jr_01A_7758

jr_01A_76EF:
    ld l, [hl]
    rst $38
    ld h, c

jr_01A_76F2:
    jr nz, jr_01A_775C

    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_01A_7769

    ld h, [hl]
    cp $73
    ld [hl], h
    ld l, c

jr_01A_76FF:
    ld h, e
    ld l, e
    ld [hl], e
    jr nz, jr_01A_7765

    ld l, [hl]

jr_01A_7705:
    ld h, h
    rst $38
    ld [hl], h
    ld [hl], a

jr_01A_7709:
    ld l, c
    ld h, a
    ld [hl], e
    jr nz, @+$68

    ld h, c
    ld [hl], d
    jr nz, @+$63

    ld [hl], a
    ld h, c
    ld a, c
    cp $66
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01A_7790

    ld l, b
    ld h, l
    jr nz, jr_01A_7788

    ld [hl], l
    ld h, d
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_01A_7769

    ld l, a
    ld h, a
    ld [hl], d

jr_01A_772A:
    ld h, c
    ld [hl], h
    ld l, b
    ld l, $FE
    db $FD
    and d

jr_01A_7731:
    sbc b
    ld b, c

jr_01A_7733:
    and [hl]

jr_01A_7734:
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01A_77B2

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01A_77A6

    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    rst $38
    ld l, h
    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, @+$67

jr_01A_774A:
    ld a, b
    ld h, c
    ld h, e
    ld [hl], h
    ld l, h
    ld a, c
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_01A_77C9

jr_01A_7756:
    ld h, c
    ld l, l

jr_01A_7758:
    ld h, l
    jr nz, jr_01A_77BC

    ld [hl], e

jr_01A_775C:
    rst $38
    ld h, l
    halt
    ld h, l
    ld [hl], d
    ld a, c
    ld l, a
    ld l, [hl]
    ld h, l

jr_01A_7765:
    cp $65
    ld l, h
    ld [hl], e

jr_01A_7769:
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_01A_77D6

    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    ld hl, $57FF
    ld l, b
    ld a, c
    jr nz, jr_01A_77DD

    ld l, a
    ld h, l
    ld [hl], e
    cp $65
    halt
    ld h, l
    ld [hl], d
    ld a, c
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, @+$6A

    ld h, c

jr_01A_7788:
    halt
    ld h, l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_01A_7803

jr_01A_7790:
    ld h, c
    ld l, l
    ld h, l
    cp $6C
    ld l, a
    ld l, a
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01A_7805

    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    ccf
    ld hl, $FDFE
    and d

jr_01A_77A6:
    jr c, jr_01A_7812

    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$79

    ld h, c
    ld [hl], e

jr_01A_77B2:
    jr nz, @+$63

    rst $38
    ld h, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_01A_782E

    ld h, c

jr_01A_77BC:
    ld l, h
    ld h, l
    jr nz, jr_01A_782F

    ld l, [hl]
    cp $6D
    ld h, c
    ld l, [hl]
    ld [hl], l
    ld h, [hl]
    ld h, c
    ld h, e

jr_01A_77C9:
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld h, h
    rst $38
    ld l, b
    ld l, a
    ld l, l
    ld h, l
    ld [hl], e
    jr nz, jr_01A_7842

jr_01A_77D6:
    ld h, c
    ld [hl], e
    ld [hl], h
    cp $6D
    ld l, a
    ld l, [hl]

jr_01A_77DD:
    ld [hl], h
    ld l, b
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01A_785A

    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, jr_01A_7864

    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
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
    jr nz, jr_01A_7869

    ld l, [hl]
    cp $79

jr_01A_7803:
    ld l, a
    ld [hl], l

jr_01A_7805:
    ld [hl], d
    jr nz, jr_01A_7870

    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_01A_7877

    ld [hl], e
    rst $38
    ld [hl], h
    ld l, b

jr_01A_7812:
    ld h, c
    ld [hl], h
    jr nz, jr_01A_7889

    ld [hl], h
    ld l, a
    ld l, a
    ld l, h
    ld hl, $FDFE
    and d
    jr c, @+$6C

    and [hl]
    ld c, c
    jr nz, jr_01A_788B

    ld l, a
    ld [hl], h
    jr nz, jr_01A_789C

    ld l, b
    ld h, l
    rst $38
    ld h, h
    ld h, l
    ld l, h

jr_01A_782E:
    ld [hl], l

jr_01A_782F:
    ld a, b
    ld h, l
    jr nz, jr_01A_78A0

    ld l, a
    ld h, h
    ld h, l
    ld l, h
    cp $68
    ld l, a
    ld l, l
    ld h, l
    ld hl, $FDFE
    and d
    sbc b
    ld b, c

jr_01A_7842:
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    cp $FD
    or [hl]
    dec l
    and b
    ld bc, $0846
    ld [$0008], sp
    inc l
    and b
    ld [bc], a
    nop

jr_01A_785A:
    inc l
    and b
    inc b
    nop
    inc l
    and b
    stop
    inc l
    and b

jr_01A_7864:
    ld b, b
    ld a, [de]
    adc b
    ld a, b
    and c

jr_01A_7869:
    ld e, e
    ld bc, $A245
    sbc b
    ld b, c
    and [hl]

jr_01A_7870:
    ld c, b
    ld l, c
    inc l
    jr nz, jr_01A_78C4

    ld h, d
    ld h, a

Jump_01A_7877:
jr_01A_7877:
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld hl, $57FF
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01A_78F9

    ld [hl], b
    ccf
    cp $FD
    and d

jr_01A_7889:
    jr c, jr_01A_78F5

jr_01A_788B:
    and [hl]
    ld c, c
    jr nz, jr_01A_7903

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01A_78DE

    rst $38
    ld h, c
    ld l, l
    jr nz, jr_01A_7901

    ld l, a
    ld l, c

jr_01A_789C:
    ld l, [hl]
    ld h, a
    jr nz, jr_01A_7914

jr_01A_78A0:
    ld l, a
    cp $72
    ld h, l
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld l, c
    ld [hl], e
    rst $38
    ld l, b
    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_01A_791B

    ld l, a
    ld [hl], d
    jr nz, jr_01A_791A

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_01A_792E

    ld l, [hl]
    ld h, l
    inc l
    rst $38
    ld h, d

jr_01A_78C4:
    ld h, l
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h
    cp $73
    ld [hl], h
    ld l, a
    ld l, a
    ld l, h
    jr nz, @+$6A

    ld h, c
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld l, c
    ld [hl], e

jr_01A_78DE:
    rst $38
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    jr nz, jr_01A_794E

    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], l
    ld [hl], e
    cp $66
    ld l, a
    ld [hl], d
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a

jr_01A_78F5:
    jr nz, jr_01A_7958

    ld l, h
    ld l, h

jr_01A_78F9:
    rst $38
    ld l, a
    halt
    ld h, l
    ld [hl], d
    jr nz, @+$6B

    ld [hl], h

jr_01A_7901:
    ld l, $FE

jr_01A_7903:
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, b
    ld h, l
    ld a, c
    inc l
    jr nz, jr_01A_7982

    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld l, c
    ld [hl], e

jr_01A_7914:
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01A_798D

jr_01A_791A:
    ld h, c

jr_01A_791B:
    ld l, l
    ld h, l
    cp $66
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], l
    ld [hl], e
    jr nz, jr_01A_796F

    jr nz, jr_01A_7990

    ld h, c
    halt
    ld h, l
    rst $38
    ld l, c
    ld l, [hl]

jr_01A_792E:
    jr nz, @+$6F

    ld a, c
    jr nz, jr_01A_79A6

    ld [hl], b
    ld h, l
    ld h, e
    ld l, c
    ld l, l
    ld h, l
    ld l, [hl]
    cp $6A
    ld h, c
    ld [hl], d
    ld hl, $4920
    jr nz, jr_01A_79B7

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    rst $38
    ld [hl], a
    ld h, l
    jr nz, jr_01A_79AF

    ld h, c
    ld l, [hl]

jr_01A_794E:
    jr nz, jr_01A_79C3

    ld l, a
    ld l, h
    halt
    ld h, l
    cp $79
    ld l, a
    ld [hl], l

jr_01A_7958:
    ld [hl], d
    jr nz, jr_01A_79C1

    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], l
    ld [hl], e
    rst $38
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, d
    ld l, h
    ld h, l
    ld l, l
    jr nz, jr_01A_79E1

    ld l, c
    ld [hl], h
    ld l, b
    cp $74

jr_01A_796F:
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01A_79DA

    ld [hl], l
    ld l, [hl]
    ld h, a
    ld l, c
    ld h, e
    ld l, c
    ld h, h
    ld h, l
    rst $38
    ld c, c
    jr nz, jr_01A_79E8

    ld h, c
    halt

jr_01A_7982:
    ld h, l
    jr nz, jr_01A_79EE

    ld l, [hl]
    cp $6D
    ld a, c
    jr nz, jr_01A_79EE

    ld h, c
    ld l, [hl]

jr_01A_798D:
    ld l, c
    ld [hl], e
    ld [hl], h

jr_01A_7990:
    ld h, l
    ld [hl], d
    ld hl, $FDFE
    and d
    jr c, @+$6C

    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01A_7A0B

    ld h, l
    ld h, c
    ld l, [hl]
    jr nz, jr_01A_7A17

    ld l, b
    ld h, c
    ld [hl], h

jr_01A_79A6:
    rst $38
    ld h, d
    ld h, l
    ld h, c
    ld [hl], l
    ld [hl], h
    ld l, c
    ld h, [hl]
    ld [hl], l

jr_01A_79AF:
    ld l, h
    cp $74
    ld [hl], d
    ld l, a
    ld [hl], b
    ld l, b
    ld a, c

jr_01A_79B7:
    jr nz, jr_01A_7A30

    ld l, c
    ld [hl], h
    ld l, b
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d

jr_01A_79C1:
    jr nz, jr_01A_7A31

jr_01A_79C3:
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_01A_7A3B

    ld l, a
    cp $69
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, c
    ld h, e
    ld h, c
    ld [hl], h
    ld h, l
    ld l, h
    ld a, c
    rst $38
    ld [hl], a
    ld [hl], d
    ld l, c
    ld [hl], h

jr_01A_79DA:
    ld [hl], h
    ld h, l
    ld l, [hl]
    jr nz, jr_01A_7A4E

    ld l, [hl]
    ld [hl], h

jr_01A_79E1:
    ld l, a
    cp $69
    ld [hl], h
    ccf
    cp $FD

jr_01A_79E8:
    and d
    sbc b
    ld b, c
    and [hl]
    ld l, $2E

jr_01A_79EE:
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    jr c, jr_01A_7A64

    and [hl]
    ld c, h
    ld h, l
    ld [hl], h
    jr nz, jr_01A_7A6D

    ld h, l
    jr nz, jr_01A_7A6D

    ld [hl], l
    ld [hl], e
    ld [hl], h
    rst $38
    ld h, a
    ld [hl], d
    ld h, c
    ld h, d

jr_01A_7A0B:
    jr nz, jr_01A_7A81

    ld l, b
    ld h, l
    jr nz, jr_01A_7A84

    ld [hl], h
    ld l, a
    ld l, a
    ld l, h
    cp $61

jr_01A_7A17:
    ld l, [hl]
    ld h, h
    jr nz, @+$72

    ld [hl], l
    ld [hl], h
    jr nz, jr_01A_7A93

    ld l, b
    ld l, c
    ld [hl], e
    rst $38
    ld h, [hl]
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld l, c
    ld h, e
    ld l, c
    ld h, h
    ld h, l
    jr nz, jr_01A_7AA1

    ld [hl], h
    ld [hl], l

jr_01A_7A30:
    ld h, [hl]

jr_01A_7A31:
    ld h, [hl]
    cp $6F
    ld l, [hl]
    jr nz, jr_01A_7AA0

    ld [hl], h
    ld l, $FE
    db $FD

jr_01A_7A3B:
    and c
    ld e, a
    ld bc, $4502
    and d
    jr c, jr_01A_7AAD

    and [hl]
    ld c, b
    ld [hl], d
    ld l, l
    ld l, l
    ld l, $2E
    ld l, $2E
    jr nz, jr_01A_7AA2

jr_01A_7A4E:
    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld h, [hl]
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld l, c
    ld h, e
    ld l, c
    ld h, h
    ld h, l
    jr nz, jr_01A_7AD0

    ld h, l
    ld h, l
    ld l, l
    ld [hl], e
    cp $74
    ld l, a

jr_01A_7A64:
    jr nz, @+$6A

    ld h, c
    halt
    ld h, l
    jr nz, jr_01A_7ADD

    ld l, c
    ld h, h

jr_01A_7A6D:
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_01A_7AE6

    ld [hl], h
    ld l, a
    ld l, a
    ld l, h
    jr nz, jr_01A_7AE8

    ld h, [hl]
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_01A_7AE6

    ld [hl], l

jr_01A_7A81:
    ld l, [hl]
    ld h, a
    ld [hl], l

jr_01A_7A84:
    ld [hl], e
    inc l
    rst $38
    ld h, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01A_7AF5

    ld [hl], h
    jr nz, jr_01A_7AF0

    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, c

jr_01A_7A93:
    ld [hl], d
    ld [hl], e
    cp $74
    ld l, a
    jr nz, jr_01A_7AFB

    ld l, h
    ld [hl], e
    ld l, a
    jr nz, jr_01A_7B07

    ld h, c

jr_01A_7AA0:
    halt

jr_01A_7AA1:
    ld h, l

jr_01A_7AA2:
    rst $38
    ld l, b
    ld l, a
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    ld h, l
    ld h, h
    jr nz, jr_01A_7B1C

jr_01A_7AAD:
    ld [hl], l
    ld [hl], h
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_01A_7B28

    ld [hl], h
    ld l, a
    ld l, a
    ld l, h
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
    ld l, $2E
    ld l, $2E
    cp $57
    ld h, c
    ld l, c
    ld [hl], h
    ld hl, $4920

jr_01A_7AD0:
    jr nz, jr_01A_7B46

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    rst $38
    ld c, c
    jr nz, jr_01A_7B4C

    ld h, l
    ld l, l
    ld h, l

jr_01A_7ADD:
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_01A_7B57

    ld l, b
    ld h, c
    ld [hl], h

jr_01A_7AE6:
    cp $73

jr_01A_7AE8:
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a

jr_01A_7AF0:
    rst $38
    ld [hl], d
    ld h, l
    ld h, c
    ld l, h

jr_01A_7AF5:
    ld l, h
    ld a, c
    jr nz, jr_01A_7B67

    ld h, l
    ld h, c

jr_01A_7AFB:
    ld [hl], h
    jr nz, jr_01A_7B67

    ld [hl], e
    cp $73
    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l

jr_01A_7B07:
    ld h, h
    jr nz, jr_01A_7B7E

    ld l, a
    rst $38
    ld l, b
    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld l, [hl]
    jr nz, jr_01A_7B7D

    ld h, [hl]
    jr nz, jr_01A_7B90

    ld l, a
    ld [hl], l
    cp $62
    ld l, h

jr_01A_7B1C:
    ld l, a
    ld [hl], a
    jr nz, @+$76

    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    rst $38
    ld [hl], h

jr_01A_7B28:
    ld l, b
    ld h, l
    jr nz, @+$6E

    ld h, l
    ld h, a
    jr nz, jr_01A_7B9F

    ld h, [hl]
    jr nz, @+$63

    cp $68
    ld l, a
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    jr nz, @+$75

    ld [hl], h
    ld l, a
    ld l, a
    ld l, h
    ld l, $FE
    db $FD
    and d
    jr c, jr_01A_7BB0

jr_01A_7B46:
    and [hl]
    ld d, d
    ld h, l
    ld h, c
    ld l, h
    ld l, h

jr_01A_7B4C:
    ld a, c
    ccf
    jr nz, @+$56

    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld [hl], e
    ld l, a
    ld [hl], l

jr_01A_7B57:
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_01A_7BCE

    ld h, c
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    cp $6F
    ld h, h
    ld h, h
    ld l, $FE

jr_01A_7B67:
    db $FD
    ld e, a
    ld [bc], a
    inc bc
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, e
    ld l, b
    ld [hl], l
    ld h, e
    ld l, e
    ld [hl], e
    inc l
    rst $38
    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c

jr_01A_7B7D:
    ld l, [hl]

jr_01A_7B7E:
    ld h, a
    cp $68
    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l
    ld h, h
    ld l, $FE
    db $FD
    and d
    jr c, jr_01A_7BF8

    and [hl]
    ld d, a

jr_01A_7B90:
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01A_7BF9

    ld l, c
    ld h, h
    jr nz, jr_01A_7C12

    ld l, a
    ld [hl], l
    rst $38
    ld h, l
    ld a, b
    ld [hl], b

jr_01A_7B9F:
    ld h, l
    ld h, e
    ld [hl], h
    ccf
    jr nz, jr_01A_7BE6

    ld l, [hl]
    cp $6F
    ld [hl], d
    ld l, l
    ld h, c
    ld h, a
    ld l, a
    ld l, [hl]
    jr nz, jr_01A_7C24

jr_01A_7BB0:
    ld l, a
    rst $38
    ld l, l
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_01A_7C19

    jr nz, jr_01A_7C21

    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], h
    cp $61
    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, c
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ccf
    cp $FD
    and d
    sbc b

jr_01A_7BCE:
    ld b, c
    and [hl]
    ld c, b
    ld h, l
    ld l, b
    ld h, l
    inc l
    rst $38
    ld l, [hl]
    ld l, a
    ld [hl], h
    jr nz, jr_01A_7C4D

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ld l, $FE
    db $FD
    and d
    jr c, jr_01A_7C50

jr_01A_7BE6:
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], h
    jr nz, jr_01A_7C58

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_01A_7C65

    ld l, b
    ld h, l
    rst $38
    ld c, a
    ld [hl], d
    ld l, l
    ld h, c

jr_01A_7BF8:
    ld h, a

jr_01A_7BF9:
    ld l, a
    ld l, [hl]
    jr nz, jr_01A_7C4E

    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], h
    cp $6F
    ld [hl], d
    jr nz, jr_01A_7C67

    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $FDFE
    and c
    ld e, l

jr_01A_7C12:
    ld a, [de]
    db $F4
    ld a, h
    ld h, h
    ld bc, $98A2

jr_01A_7C19:
    ld b, c
    and [hl]
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01A_7C8A

jr_01A_7C21:
    ld [hl], e
    jr nz, jr_01A_7C78

jr_01A_7C24:
    ld c, b
    ld b, c
    ld d, h
    ccf
    ld hl, $FDFE
    and c
    ld e, a
    inc bc
    inc bc
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld l, b
    jr nz, @+$6F

    ld a, c
    ld hl, $5420
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    rst $38
    ld l, c
    ld [hl], e
    jr nz, jr_01A_7CA6

    ld l, [hl]
    jr nz, @+$71

    ld [hl], d
    ld l, l
    ld h, c
    ld h, a
    ld l, a

jr_01A_7C4D:
    ld l, [hl]

jr_01A_7C4E:
    cp $6F

jr_01A_7C50:
    ld [hl], l
    ld [hl], h
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    jr nz, jr_01A_7CD1

jr_01A_7C58:
    ld l, a
    ld [hl], l
    ld [hl], d
    rst $38
    ld l, b
    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    ld hl, $FDFE
    and d

jr_01A_7C65:
    jr c, jr_01A_7CD1

jr_01A_7C67:
    and [hl]
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    ccf
    ld hl, $FDFE
    and c
    ld e, a
    inc b
    inc bc
    ld b, l
    and d
    jr c, @+$6C

jr_01A_7C78:
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_01A_7CC9

    ld d, e
    jr nz, jr_01A_7CE4

    ld l, [hl]
    rst $38
    ld l, a
    ld [hl], d
    ld l, l
    ld h, c
    ld h, a

jr_01A_7C8A:
    ld l, a
    ld l, [hl]
    cp $6F
    ld [hl], l
    ld [hl], h
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    jr nz, jr_01A_7D03

    ld a, c
    rst $38
    ld l, b
    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    ld hl, $FDFE
    ld e, a
    dec b
    inc bc
    and d
    jr c, jr_01A_7D10

jr_01A_7CA6:
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01A_7D28

    ld h, c
    ld [hl], e
    rst $38
    ld h, c
    ld l, [hl]
    jr nz, jr_01A_7D21

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    cp $63
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, e
    ld l, c

jr_01A_7CC9:
    ld h, h
    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l
    inc l
    rst $38
    ld [hl], a

jr_01A_7CD1:
    ld h, c
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01A_7D41

    ld [hl], h
    ccf
    cp $FD
    and c
    or [hl]
    dec l
    and b
    ld bc, $2CB6
    and b

jr_01A_7CE4:
    add b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    sub a
    ld e, l
    add hl, bc
    ld [bc], a
    ld a, [de]
    ld b, e
    ld c, c
    ld b, l
    ld e, $0F
    add a
    inc b
    inc bc
    nop
    inc b
    db $FD
    nop
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    db $FD
    nop

jr_01A_7D03:
    ld bc, $0003
    ld bc, $00FD
    nop
    ld e, $10
    ld e, d
    ld bc, $5E45

jr_01A_7D10:
    ld a, [de]
    rla
    ld a, l
    ld c, b
    ld a, [de]
    sub e
    ld c, c
    and d
    jr c, jr_01A_7D84

    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01A_7D89

jr_01A_7D21:
    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    rst $38
    ld l, l
    ld l, c

jr_01A_7D28:
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_01A_7D9B

    ld l, a
    ld [hl], h
    cp $68
    ld h, c
    halt
    ld h, l
    jr nz, jr_01A_7D99

    ld l, a
    ld [hl], e
    ld [hl], h
    rst $38
    ld l, l
    ld [hl], l
    ld h, e
    ld l, b
    jr nz, jr_01A_7DA1

    ld l, [hl]

jr_01A_7D41:
    ld l, c
    ld l, l
    ld l, c
    ld [hl], h
    ld h, l
    inc l
    cp $62
    ld [hl], l
    ld [hl], h
    jr nz, jr_01A_7DC1

    ld l, b
    ld h, l
    jr nz, jr_01A_7DBD

    ld l, a
    ld l, [hl]
    ld h, a
    rst $38
    ld h, h
    ld h, c
    ld l, c
    ld l, h
    ld a, c
    jr nz, jr_01A_7DD0

    ld [hl], d
    ld l, c
    ld [hl], b
    jr nz, jr_01A_7DD5

    ld l, a
    cp $77
    ld l, a
    ld [hl], d
    ld l, e
    jr nz, jr_01A_7DD3

    ld [hl], l
    ld [hl], e
    ld [hl], h
    rst $38
    ld [hl], d
    ld [hl], l
    ld l, c
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01A_7DE1

    ld a, c
    jr nz, jr_01A_7DDB

    ld h, c
    ld a, c
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $FF45
    rst $38
    rst $38
    rst $38

jr_01A_7D84:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01A_7D89:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01A_7D99:
    rst $38
    rst $38

jr_01A_7D9B:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01A_7DA1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01A_7DBD:
    rst $38
    rst $38
    rst $38
    rst $38

jr_01A_7DC1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01A_7DD0:
    rst $38
    rst $38
    rst $38

jr_01A_7DD3:
    rst $38
    rst $38

jr_01A_7DD5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01A_7DDB:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01A_7DE1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
