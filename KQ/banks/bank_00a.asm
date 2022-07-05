; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    ld [hl+], a
    ld d, $48
    ld a, [bc]
    and c
    ld b, b
    ld [hl+], a
    ld d, $48
    ld a, [bc]
    adc h
    ld c, e
    ld [hl+], a
    ld d, $48
    ld a, [bc]
    ld h, a
    ld b, h
    ld [hl+], a
    ld d, $48
    ld a, [bc]
    dec h
    ld c, b
    ld [hl+], a
    ld d, $48

jr_00A_401B:
    ld a, [bc]
    or d
    ld d, c
    or [hl]
    db $38, $A0
    inc b
    ld bc, $1209
    ld c, b
    inc c
    dec sp
    ld l, e
    or [hl]
    db $38, $A0
    ld [$0501], sp
    ld [bc], a
    ld c, b
    inc c
    dec sp
    ld l, e
    ld b, [hl]

jr_00A_4035:
    nop
    ld c, d
    and b
    ld b, b
    ld a, [bc]
    ld d, [hl]
    ld b, b
    or [hl]
    db $38, $A0
    ld [$38B6], sp
    and b
    add b
    or [hl]
    ld c, d
    and b
    ld b, b
    ld b, [hl]
    rrca
    ld bc, $A136
    dec b
    inc b
    ld a, [bc]
    inc [hl]
    ld b, b
    ld c, b
    inc c
    ld d, e
    ld l, l
    or [hl]
    db $38, $A0
    ld [$38B6], sp
    and b
    add b
    ld bc, $0205
    ld c, b
    inc c
    dec sp
    ld l, e
    or [hl]
    jr c, @-$5E

    db $10
    ld bc, $0A0C
    ld c, b
    inc c
    dec sp
    ld l, e
    ld b, [hl]
    nop
    jr c, @-$5E

    jr nz, jr_00A_4080

    add e
    ld b, b
    or [hl]
    jr c, jr_00A_401B

    jr nz, jr_00A_407E

    rla

jr_00A_407E:
    ld [bc], a
    ld c, b

jr_00A_4080:
    inc c
    ld sp, $016E
    rla
    ld [bc], a
    ld c, b
    inc c
    dec sp
    ld l, e
    ld b, [hl]
    nop
    jr c, @-$5E

    ld b, b
    ld a, [bc]
    sbc d
    ld b, b
    or [hl]
    jr c, jr_00A_4035

    ld b, b
    ld c, b
    inc c
    inc e
    ld l, h
    ld bc, $1314
    ld c, b
    inc c
    dec sp
    ld l, e
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
    sbc e
    ld d, b
    inc de
    ld l, l
    inc c

jr_00A_40B8:
    ld [hl], b
    ld l, $85
    ld d, [hl]
    cpl
    ld h, a
    ld b, b
    ld b, [hl]
    dec b
    nop
    inc [hl]
    ld h, e
    inc d
    inc hl
    adc h
    push de
    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    add a
    ld h, a
    db $10
    dec bc
    ret z

jr_00A_40D6:
    pop de
    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    cp $41
    dec b
    inc bc
    add a
    ld h, a
    db $10
    dec c
    jr jr_00A_40B8

    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    cp $41
    dec b
    inc b
    add a
    ld h, a
    jr jr_00A_40FE

    ret nc

    pop de
    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    cp $41
    dec b
    dec b

jr_00A_40FE:
    add a
    ld h, a
    jr jr_00A_410F

    jr nz, jr_00A_40D6

    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    cp $41
    dec b
    ld c, $B2
    ld l, [hl]

jr_00A_410F:
    inc b
    rlca
    inc e
    pop de
    ld d, h
    add hl, de
    ld a, e
    ld c, d
    add hl, de
    sub e
    ld c, d
    dec b
    rrca
    or d
    ld l, [hl]
    inc h
    inc bc
    sbc h
    ret nc

    ld d, h
    add hl, de
    push hl
    ld c, e
    add hl, de
    db $FD
    ld c, e
    dec b
    db $10
    or d
    ld l, [hl]
    jr nz, jr_00A_4143

    ld b, b
    db $D3
    ld d, h
    add hl, de
    ld c, a
    ld c, l
    add hl, de
    ld h, a
    ld c, l
    dec b
    ld de, $6EB2
    rlca
    rra
    rst $18
    call nc, $1954
    cp c

jr_00A_4143:
    ld c, [hl]
    add hl, de
    pop de
    ld c, [hl]
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_00A_418F

    nop
    add l
    nop
    ld l, [hl]
    jr nc, jr_00A_416B

    jr nc, jr_00A_4194

    ld b, b
    add l
    nop
    or l
    dec hl
    and b
    ei
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
    ld c, $0B
    rrca
    dec bc
    db $10

jr_00A_416B:
    dec bc
    ld de, $9886
    or e
    daa
    and d
    dec b
    or l
    ld a, [hl+]
    and b
    rst $30
    sbc e
    ld a, [bc]
    ld a, h
    ld b, c
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    jr nz, jr_00A_4193

    sub e
    ld b, c
    inc bc
    ld c, $00
    nop

jr_00A_418F:
    nop
    nop
    nop
    db $FD

jr_00A_4193:
    ld b, [hl]

jr_00A_4194:
    nop
    dec hl
    and b
    ld b, b
    ld a, [bc]
    and e
    ld b, c
    inc bc
    rrca
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    add b
    ld a, [bc]
    or e
    ld b, c
    inc bc
    stop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    inc l
    and b
    ld bc, $C30A
    ld b, c
    inc bc
    ld de, $0000
    nop
    nop
    nop
    db $FD
    inc c
    ld c, $0C
    rrca
    inc c
    db $10
    inc c
    ld de, $2BB6
    and b
    inc b
    ld l, l
    inc c
    ld [hl], b
    ld l, $C5
    ld d, h
    cpl
    ld c, e
    ld l, l
    inc c
    ld [hl], b
    ld l, $C5
    ld d, h
    cpl
    ld a, l
    rrca
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_00A_423A

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_00A_4236

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    ld a, [bc]
    ld l, [hl]
    ld b, d
    ld a, [bc]
    ld [hl+], a
    ld b, b
    ld b, l
    or e
    ld sp, $01C7
    ld c, e
    ld e, $1D
    ld l, c
    sbc b
    ld a, b
    inc d
    ld a, l
    rrca
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    ld a, [bc]
    ld l, $42
    ld c, [hl]
    ld bc, $C9D8
    ld a, [bc]
    nop
    nop
    ld a, $42
    ld a, [bc]
    ld bc, $4A00
    ld b, d
    ld a, [bc]
    ld [bc], a
    nop
    ld d, [hl]
    ld b, d
    ld a, [bc]
    inc bc
    nop
    ld h, d
    ld b, d
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_00A_4234

jr_00A_4234:
    ld c, b
    ld a, [bc]

jr_00A_4236:
    ld l, [hl]
    ld b, d
    inc c
    nop

jr_00A_423A:
    ld c, b
    ld a, [bc]
    ld l, [hl]
    ld b, d
    dec d
    ld de, $74CF
    jr nz, jr_00A_4244

jr_00A_4244:
    inc c
    nop
    ld c, b
    ld a, [bc]
    ld l, [hl]
    ld b, d
    dec d
    ld de, $7498
    jr nz, jr_00A_4250

jr_00A_4250:
    inc c
    nop
    ld c, b
    ld a, [bc]
    ld l, [hl]
    ld b, d
    dec d
    ld de, $74A2
    jr nz, jr_00A_425C

jr_00A_425C:
    inc c
    nop
    ld c, b
    ld a, [bc]
    ld l, [hl]
    ld b, d
    dec d
    ld de, $748E
    jr nz, jr_00A_4268

jr_00A_4268:
    inc c
    nop
    ld c, b
    ld a, [bc]
    ld l, [hl]
    ld b, d
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld e, $08
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, @+$08

    ld a, d
    jr nz, jr_00A_42F8

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0A
    sub e
    ld b, d
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $0A48
    and l
    ld b, b
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    jr nz, jr_00A_42AF

    xor a
    ld b, d
    inc bc
    ld c, $00
    nop
    nop
    nop
    nop
    db $FD

jr_00A_42AF:
    ld b, [hl]
    nop
    dec hl
    and b
    ld b, b
    ld a, [bc]
    cp a
    ld b, d
    inc bc
    rrca
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    add b
    ld a, [bc]
    rst $08
    ld b, d
    inc bc
    stop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    inc l
    and b
    ld bc, $DF0A

jr_00A_42D6:
    ld b, d
    inc bc
    ld de, $0000
    nop
    nop
    nop
    db $FD
    inc c
    ld c, $0C
    rrca
    inc c
    db $10
    inc c
    ld de, $2BB6
    and b
    inc b
    ld l, l
    inc c
    ld [hl], b
    ld l, $C5
    ld d, h
    cpl
    ld a, l
    rrca
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l

jr_00A_42F8:
    jr nz, jr_00A_4360

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00A_4369

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld a, [bc]

jr_00A_4312:
    ld b, a
    ld b, e
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_4390

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_439A

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00A_4388

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
    jr c, jr_00A_42D6

    inc b
    dec b
    nop
    ld a, [bc]
    add e
    ld b, e
    and c
    xor l
    ld a, b
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    ld e, $40
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_43C0

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_43CA

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_43CE

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00A_4391

    dec [hl]

jr_00A_4360:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00A_4369:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    jr c, jr_00A_4312

    inc b
    dec b
    nop
    ld a, [bc]
    add e
    ld b, e
    and c
    xor l
    ld a, b
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    ld e, $40
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00A_4388:
    ld bc, $A178
    ld a, [bc]
    ld [bc], a
    ld b, h
    sbc a
    ld a, b

jr_00A_4390:
    and c

jr_00A_4391:
    ld b, [hl]
    rrca
    ld bc, $A178
    dec b
    ld bc, $C80A

jr_00A_439A:
    ld b, e
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00A_4404

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
    jr nz, jr_00A_441D

    ld [hl], e
    cp $FC
    jr nz, jr_00A_441A

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00A_43C0:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld a, [bc]
    ld e, $40
    and [hl]
    ld d, h

jr_00A_43CA:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00A_43CE:
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
    jr nz, jr_00A_442E

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00A_445C

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
    ld a, [bc]
    ld e, $40
    sbc a
    ld a, b

jr_00A_4404:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00A_4471

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

jr_00A_441A:
    ld h, l
    jr nz, jr_00A_4490

jr_00A_441D:
    ld h, l
    ld [hl], h
    jr nz, jr_00A_4482

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00A_447F

    ld h, e
    ld l, a

jr_00A_442E:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00A_44A7

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
    jr nz, jr_00A_4498

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_44C2

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_00A_44B2

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

jr_00A_445C:
    xor l
    ld a, b
    and c
    ld bc, $A132
    and c
    ld c, b
    ld a, [bc]
    ld e, $40
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e

jr_00A_4471:
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    xor d
    ld d, b
    inc de
    ld l, l
    inc c
    ld [hl], b

jr_00A_447F:
    ld l, $85
    ld d, [hl]

jr_00A_4482:
    cpl
    ld h, a
    ld b, l
    ld b, [hl]
    dec b
    nop
    inc [hl]
    ld h, e
    inc c
    ld [bc], a
    ld a, $D0
    nop
    inc d

jr_00A_4490:
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    add a

jr_00A_4498:
    ld h, a
    add hl, bc
    ld a, [bc]
    inc bc
    pop de
    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    cp h
    ld b, l
    dec b
    inc bc
    add a

jr_00A_44A7:
    ld h, a
    db $10
    ld a, [bc]
    ld a, [bc]
    pop de
    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    cp h

jr_00A_44B2:
    ld b, l
    dec b
    inc b
    add a
    ld h, a
    db $10
    db $10
    and b
    pop de
    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    cp h
    ld b, l

jr_00A_44C2:
    dec b
    dec b
    add a
    ld h, a
    add hl, bc
    db $10
    sbc c
    pop de
    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    cp h
    ld b, l
    dec b
    ld c, $B2
    ld l, [hl]
    dec b
    dec b
    add d
    ret nc

    ld d, h
    add hl, de
    ld a, e
    ld c, d
    add hl, de
    sub e
    ld c, d
    dec b
    rrca
    or d
    ld l, [hl]
    inc de
    dec b
    sub b
    ret nc

    ld d, h
    add hl, de
    push hl
    ld c, e
    add hl, de
    db $FD
    ld c, e
    dec b
    db $10
    or d
    ld l, [hl]
    inc de
    inc de
    xor $D1
    ld d, h
    add hl, de
    ld c, a
    ld c, l
    add hl, de
    ld h, a
    ld c, l
    dec b
    ld de, $6EB2
    dec b
    inc de
    ldh [$D1], a
    ld d, h
    add hl, de
    cp c
    ld c, [hl]
    add hl, de
    pop de
    ld c, [hl]
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_00A_4555

    nop
    add l
    nop
    ld l, [hl]
    jr nc, jr_00A_4531

    jr nc, jr_00A_455A

    ld b, b
    add l
    nop
    or l
    dec hl
    and b
    ei
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
    ld c, $0B
    rrca
    dec bc
    db $10

jr_00A_4531:
    dec bc
    ld de, $9886
    or e
    daa
    and d
    dec b
    or l
    ld a, [hl+]
    and b
    rst $30
    sbc e
    ld a, [bc]
    ld b, d
    ld b, l
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    inc c

Call_00A_4548:
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    jr nz, jr_00A_4559

    ld e, c
    ld b, l
    inc bc
    ld c, $00
    nop

jr_00A_4555:
    nop
    nop
    nop
    db $FD

jr_00A_4559:
    ld b, [hl]

jr_00A_455A:
    nop
    dec hl
    and b
    ld b, b
    ld a, [bc]
    ld l, c
    ld b, l
    inc bc
    rrca
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    add b
    ld a, [bc]
    ld a, c
    ld b, l
    inc bc
    stop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    inc l
    and b
    ld bc, $890A
    ld b, l
    inc bc
    ld de, $0000
    nop
    nop
    nop
    db $FD
    inc c
    ld c, $0C
    rrca
    inc c
    db $10
    inc c
    ld de, $2BB6
    and b
    inc b
    ld l, l
    inc c
    ld [hl], b
    ld l, $C5
    ld d, h
    cpl
    ld a, l
    rrca
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_00A_45F8

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_00A_45F4

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    ld a, [bc]
    inc l
    ld b, [hl]
    ld a, [bc]
    ld l, c
    ld b, b
    ld b, l
    or e
    ld sp, $01C7
    ld c, e
    ld e, $1D
    ld l, c
    sbc b
    ld a, b
    inc d
    ld a, l
    rrca
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    ld a, [bc]
    db $EC
    ld b, l
    ld c, [hl]
    ld bc, $C9D8
    ld a, [bc]
    nop
    nop
    db $FC
    ld b, l
    ld a, [bc]
    ld bc, $0800
    ld b, [hl]
    ld a, [bc]
    ld [bc], a
    nop
    inc d
    ld b, [hl]
    ld a, [bc]
    inc bc
    nop
    jr nz, jr_00A_4630

    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_00A_45F2

jr_00A_45F2:
    ld c, b
    ld a, [bc]

jr_00A_45F4:
    inc l
    ld b, [hl]
    inc c
    nop

jr_00A_45F8:
    ld c, b
    ld a, [bc]
    inc l
    ld b, [hl]
    dec d
    ld de, $74CF
    jr nz, jr_00A_4602

jr_00A_4602:
    inc c
    nop
    ld c, b
    ld a, [bc]
    inc l
    ld b, [hl]
    dec d
    ld de, $7498
    jr nz, jr_00A_460E

jr_00A_460E:
    inc c
    nop
    ld c, b
    ld a, [bc]
    inc l
    ld b, [hl]
    dec d
    ld de, $74A2
    jr nz, jr_00A_461A

jr_00A_461A:
    inc c
    nop
    ld c, b
    ld a, [bc]
    inc l
    ld b, [hl]
    dec d
    ld de, $748E
    jr nz, jr_00A_4626

jr_00A_4626:
    inc c
    nop
    ld c, b
    ld a, [bc]
    inc l
    ld b, [hl]
    inc d
    add hl, de
    rst $20
    ld b, [hl]

jr_00A_4630:
    ld e, $08
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, @+$08

    ld a, d
    jr nz, jr_00A_46B6

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0A
    ld d, c
    ld b, [hl]
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $0A48
    ld l, e
    ld b, h
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    jr nz, jr_00A_466D

    ld l, l
    ld b, [hl]
    inc bc
    ld c, $00
    nop
    nop
    nop
    nop
    db $FD

jr_00A_466D:
    ld b, [hl]
    nop
    dec hl
    and b
    ld b, b
    ld a, [bc]
    ld a, l
    ld b, [hl]
    inc bc
    rrca
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    add b
    ld a, [bc]
    adc l
    ld b, [hl]
    inc bc
    stop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    inc l
    and b
    ld bc, $9D0A

jr_00A_4694:
    ld b, [hl]
    inc bc
    ld de, $0000
    nop
    nop
    nop
    db $FD
    inc c
    ld c, $0C
    rrca
    inc c
    db $10
    inc c
    ld de, $2BB6
    and b
    inc b
    ld l, l
    inc c
    ld [hl], b
    ld l, $C5
    ld d, h
    cpl
    ld a, l
    rrca
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l

jr_00A_46B6:
    jr nz, jr_00A_471E

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00A_4727

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld a, [bc]

jr_00A_46D0:
    dec b
    ld b, a
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_474E

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_4758

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00A_4746

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
    jr c, jr_00A_4694

    db $10
    dec b
    nop
    ld a, [bc]
    ld b, c
    ld b, a
    and c
    xor l
    ld a, d
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    ld h, l
    ld b, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_477E

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_4788

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_478C

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00A_474F

    dec [hl]

jr_00A_471E:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00A_4727:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    jr c, jr_00A_46D0

    db $10
    dec b
    nop
    ld a, [bc]
    ld b, c
    ld b, a
    and c
    xor l
    ld a, d
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    ld h, l
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00A_4746:
    ld bc, $A17A
    ld a, [bc]
    ret nz

    ld b, a
    sbc a
    ld a, d

jr_00A_474E:
    and c

jr_00A_474F:
    ld b, [hl]
    rrca
    ld bc, $A17A
    dec b
    ld bc, $860A

jr_00A_4758:
    ld b, a
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00A_47C2

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
    jr nz, jr_00A_47BF

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_47DB

    ld [hl], e
    cp $FC
    jr nz, jr_00A_47D8

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00A_477E:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld a, [bc]
    ld h, l
    ld b, b
    and [hl]
    ld d, h

jr_00A_4788:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00A_478C:
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
    jr nz, jr_00A_47EC

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00A_481A

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
    ld a, [bc]
    ld h, l

jr_00A_47BF:
    ld b, b
    sbc a
    ld a, d

jr_00A_47C2:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00A_482F

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

jr_00A_47D8:
    ld h, l
    jr nz, jr_00A_484E

jr_00A_47DB:
    ld h, l
    ld [hl], h
    jr nz, jr_00A_4840

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00A_483D

    ld h, e
    ld l, a

jr_00A_47EC:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00A_4865

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
    jr nz, jr_00A_4856

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_4880

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_00A_4870

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

jr_00A_481A:
    xor l
    ld a, d
    and c
    ld bc, $A132
    and c
    ld c, b
    ld a, [bc]
    ld h, l
    ld b, b
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e

jr_00A_482F:
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    cp c
    ld d, b
    inc de
    ld l, l
    inc c
    ld [hl], b

jr_00A_483D:
    ld l, $85
    ld d, [hl]

jr_00A_4840:
    cpl
    ld h, a
    ld c, d
    ld b, [hl]
    dec b
    nop
    inc [hl]
    ld h, e
    ld [bc], a
    ld [bc], a
    inc [hl]
    ret nc

    nop
    inc d

jr_00A_484E:
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    add a

jr_00A_4856:
    ld h, a
    dec b
    inc d
    ld sp, hl
    pop de
    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    dec [hl]
    ld c, c
    dec b
    inc bc
    add a

jr_00A_4865:
    ld h, a
    db $10
    ld [de], a
    jp nc, Jump_00A_50D1

    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    dec [hl]

jr_00A_4870:
    ld c, c
    dec b
    ld c, $B2
    ld l, [hl]
    inc bc
    inc bc
    ld c, [hl]
    ret nc

    ld d, h
    add hl, de
    ld a, e
    ld c, d
    add hl, de
    sub e
    ld c, d

jr_00A_4880:
    dec b
    rrca
    or d
    ld l, [hl]
    add hl, bc
    add hl, bc
    ld [$54D0], a
    add hl, de
    push hl
    ld c, e
    add hl, de
    db $FD
    ld c, e
    dec b
    db $10
    or d
    ld l, [hl]
    db $10
    inc c
    inc a
    pop de
    ld d, h
    add hl, de
    ld c, a
    ld c, l
    add hl, de
    ld h, a
    ld c, l
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_00A_48E6

    nop
    add l
    nop
    ld l, [hl]
    jr nc, jr_00A_48C2

    jr nc, jr_00A_48EB

    ld b, b
    add l
    nop
    or l
    dec hl
    and b
    ei
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    ld c, $0B
    rrca
    dec bc
    db $10
    add [hl]
    sbc b
    or e
    daa

jr_00A_48C2:
    and d
    dec b
    or l
    ld a, [hl+]
    and b
    rst $30
    sbc e
    ld a, [bc]
    call Call_00A_4548
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    jr nz, jr_00A_48E4

    db $E4
    ld c, b
    inc bc
    ld c, $00
    nop
    nop
    nop
    nop
    db $FD

jr_00A_48E4:
    ld b, [hl]
    nop

jr_00A_48E6:
    dec hl
    and b
    ld b, b
    ld a, [bc]
    db $F4

jr_00A_48EB:
    ld c, b
    inc bc
    rrca
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    add b
    ld a, [bc]
    inc b
    ld c, c
    inc bc
    stop
    nop
    nop
    nop
    nop
    db $FD
    inc c
    ld c, $0C
    rrca
    inc c
    db $10
    or [hl]
    dec hl
    and b
    inc b
    ld l, l
    inc c
    ld [hl], b
    ld l, $C5
    ld d, h
    cpl
    ld a, l
    rrca
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_00A_4971

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_00A_496D

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    ld a, [bc]
    and l
    ld c, c
    ld a, [bc]
    add e
    ld b, b
    ld b, l
    or e
    ld sp, $01C7
    ld c, e
    ld e, $1D
    ld l, c
    sbc b
    ld a, b
    inc d
    ld a, l
    rrca
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    ld a, [bc]
    ld h, l
    ld c, c
    ld c, [hl]
    ld bc, $C9D8
    ld a, [bc]
    nop
    nop
    ld [hl], l
    ld c, c
    ld a, [bc]
    ld bc, $8100
    ld c, c
    ld a, [bc]
    ld [bc], a
    nop
    adc l
    ld c, c
    ld a, [bc]
    inc bc
    nop
    sbc c
    ld c, c
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_00A_496B

jr_00A_496B:
    ld c, b
    ld a, [bc]

jr_00A_496D:
    and l
    ld c, c
    inc c
    nop

jr_00A_4971:
    ld c, b
    ld a, [bc]
    and l
    ld c, c
    dec d
    ld de, $74CF
    jr nz, jr_00A_497B

jr_00A_497B:
    inc c
    nop
    ld c, b
    ld a, [bc]
    and l
    ld c, c
    dec d
    ld de, $7498
    jr nz, jr_00A_4987

jr_00A_4987:
    inc c
    nop
    ld c, b
    ld a, [bc]
    and l
    ld c, c
    dec d
    ld de, $74A2
    jr nz, jr_00A_4993

jr_00A_4993:
    inc c
    nop
    ld c, b
    ld a, [bc]
    and l
    ld c, c
    dec d
    ld de, $748E
    jr nz, jr_00A_499F

jr_00A_499F:
    inc c
    nop
    ld c, b
    ld a, [bc]
    and l
    ld c, c
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld e, $08
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, @+$08

    ld a, d
    jr nz, jr_00A_4A2F

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0A
    jp z, $AD49

    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $0A48
    add hl, hl
    ld c, b
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    jr nz, jr_00A_49E6

    and $49
    inc bc
    ld c, $00
    nop
    nop
    nop
    nop
    db $FD

jr_00A_49E6:
    ld b, [hl]
    nop
    dec hl
    and b
    ld b, b
    ld a, [bc]
    or $49
    inc bc
    rrca
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    add b

jr_00A_49FB:
    ld a, [bc]
    ld b, $4A
    inc bc
    stop
    nop
    nop
    nop
    nop
    db $FD
    inc c
    ld c, $0C
    rrca
    inc c
    db $10
    or [hl]
    dec hl
    and b
    inc b
    ld l, l
    inc c
    ld [hl], b
    ld l, $C5
    ld d, h
    cpl
    ld a, l
    rrca
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00A_4A85

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00A_4A8E

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE

jr_00A_4A2F:
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld a, [bc]

jr_00A_4A37:
    ld l, h
    ld c, d
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_4AB5

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_4ABF

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00A_4AAD

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
    jr c, jr_00A_49FB

    jr nz, jr_00A_4A62

    nop
    ld a, [bc]
    xor b
    ld c, d
    and c

jr_00A_4A62:
    xor l
    ld a, e
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    ld [hl], b
    ld b, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_4AE5

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_4AEF

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_4AF3

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00A_4AB6

    dec [hl]

jr_00A_4A85:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00A_4A8E:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    jr c, jr_00A_4A37

    jr nz, jr_00A_4A9E

    nop
    ld a, [bc]
    xor b
    ld c, d
    and c

jr_00A_4A9E:
    xor l
    ld a, e
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    ld [hl], b
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00A_4AAD:
    ld bc, $A17B
    ld a, [bc]
    daa
    ld c, e
    sbc a
    ld a, e

jr_00A_4AB5:
    and c

jr_00A_4AB6:
    ld b, [hl]
    rrca
    ld bc, $A17B
    dec b
    ld bc, $ED0A

jr_00A_4ABF:
    ld c, d
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00A_4B29

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
    jr nz, jr_00A_4B26

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_4B42

    ld [hl], e
    cp $FC
    jr nz, jr_00A_4B3F

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00A_4AE5:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld a, [bc]
    ld [hl], b
    ld b, b
    and [hl]
    ld d, h

jr_00A_4AEF:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00A_4AF3:
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
    jr nz, jr_00A_4B53

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00A_4B81

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
    ld a, [bc]
    ld [hl], b

jr_00A_4B26:
    ld b, b
    sbc a
    ld a, e

jr_00A_4B29:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00A_4B96

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00A_4BA5

    ld h, c
    halt

jr_00A_4B3F:
    ld h, l
    jr nz, jr_00A_4BB5

jr_00A_4B42:
    ld h, l
    ld [hl], h
    jr nz, jr_00A_4BA7

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00A_4BA4

    ld h, e
    ld l, a

jr_00A_4B53:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00A_4BCC

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
    jr nz, jr_00A_4BBD

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$79

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_00A_4BD7

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

jr_00A_4B81:
    xor l
    ld a, e
    and c
    ld bc, $A132
    and c
    ld c, b
    ld a, [bc]
    ld [hl], b
    ld b, b
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e

jr_00A_4B96:
    inc sp

jr_00A_4B97:
    rst $00
    nop
    ld l, c
    ld e, b

jr_00A_4B9B:
    ld a, b
    inc d
    ld l, b
    and $50
    inc de
    ld h, a
    ld c, a
    ld b, [hl]

jr_00A_4BA4:
    ld l, h

jr_00A_4BA5:
    cp l
    ld b, [hl]

jr_00A_4BA7:
    ld l, e
    and b
    ld a, d
    inc l
    dec h
    ld l, a
    dec l
    ld l, [hl]
    ld b, $19
    sub b
    ld b, e
    nop
    add b

jr_00A_4BB5:
    nop
    dec b
    nop
    inc [hl]
    ld h, e
    inc de
    dec h
    db $DB

jr_00A_4BBD:
    push de
    nop
    inc d
    ld [hl], h
    ld e, [hl]
    add hl, de
    add sp, $46
    ld d, e
    cp a
    pop bc
    sub [hl]
    inc hl
    nop
    ld a, [bc]

jr_00A_4BCC:
    ld a, $4D
    or l
    dec hl
    and b
    ei
    dec bc
    nop
    dec bc
    ld [bc], a
    or e

jr_00A_4BD7:
    daa
    and d
    ld bc, $28B6
    and b
    jr nz, @-$49

    jr z, jr_00A_4B81

    cp a
    add [hl]
    sbc b
    sbc e
    ld a, [bc]
    ld bc, $B34C
    inc sp
    and c
    ld c, $B3
    jr z, @-$5D

    nop
    or l
    jr z, @-$5E

    cp $B5
    jr z, jr_00A_4B97

    db $FD
    or l
    jr z, jr_00A_4B9B

    ei
    or l
    jr z, @-$5E

    rst $30
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    ld [bc], a
    inc c
    nop
    or [hl]
    dec hl
    and b
    inc b
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]

jr_00A_4C14:
    jr nz, @+$54

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_00A_4C64

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e

jr_00A_4C24:
    ld [bc], a
    ld a, [bc]
    inc l
    ld c, h
    ld a, [bc]
    ld e, [hl]
    ld b, b
    ld b, l
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0A
    ccf
    ld c, h

jr_00A_4C36:
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
    jr nz, jr_00A_4C50

    ld a, d
    jr nz, jr_00A_4CC5

    ld c, b
    ld a, [bc]
    sub b

jr_00A_4C50:
    ld c, e
    xor d
    jr z, @-$5E

    ld bc, $DC19
    ld b, [hl]
    sbc a
    sub [hl]
    pop de
    ld e, $09
    ld c, b
    ld a, [bc]
    adc l
    ld c, h
    xor d
    jr z, @-$5E

jr_00A_4C64:
    ld [bc], a
    add hl, de
    call c, $9F46
    rst $20
    ret nc

    ld e, $09
    ld c, b
    ld a, [bc]
    adc l
    ld c, h
    xor d
    jr z, jr_00A_4C14

    inc b
    add hl, de
    call c, $9F46
    ld sp, hl
    jp nc, $091E

    ld c, b
    ld a, [bc]
    adc l
    ld c, h
    xor d
    jr z, jr_00A_4C24

    ld [$DC19], sp
    ld b, [hl]
    sbc a
    ld l, d
    push de
    ld e, $09
    add hl, bc
    ld [bc], a
    ld a, [bc]
    or a
    ld c, h
    xor l
    jr z, jr_00A_4C36

    dec bc
    ld bc, $A128
    dec b
    ld bc, $195D
    sub b
    ld b, [hl]
    ld h, l
    ld [bc], a
    ld b, [hl]
    db $10
    ld bc, $A128
    dec b
    inc b
    ld a, [bc]
    or c
    ld c, h
    ld e, l
    add hl, de
    and a
    ld b, [hl]
    ld h, l
    ld [bc], a
    add hl, bc
    ld [bc], a
    ld a, [bc]
    ld a, $4D
    ld b, l
    ld c, [hl]
    ld bc, $A133
    ld a, [bc]
    ld bc, $3900
    ld c, l
    ld a, [bc]
    ld [bc], a
    nop
    inc [hl]
    ld c, l

jr_00A_4CC5:
    ld a, [bc]
    inc bc
    nop
    cpl
    ld c, l
    ld a, [bc]
    inc b
    nop
    ld a, [hl+]
    ld c, l
    ld a, [bc]
    dec b
    nop
    dec h
    ld c, l
    ld a, [bc]
    ld b, $00
    jr nz, jr_00A_4D26

    ld a, [bc]
    rlca
    nop
    dec de
    ld c, l
    ld a, [bc]
    ld [$1600], sp
    ld c, l
    ld a, [bc]
    add hl, bc
    nop
    ld de, $0A4D
    ld a, [bc]
    nop
    inc c
    ld c, l
    ld a, [bc]
    dec bc
    nop
    rlca
    ld c, l
    ld a, [bc]
    inc c
    nop
    ld [bc], a
    ld c, l
    ld a, [bc]
    ld c, $00
    db $FD
    ld c, h
    rst $38
    inc d
    ld de, $5A35
    ld b, l
    inc d
    ld de, $5A21
    ld b, l
    inc d
    ld de, $5A17
    ld b, l
    inc d
    ld de, $5A0D
    ld b, l
    inc d
    ld de, $5A03
    ld b, l
    inc d
    ld de, $59F9
    ld b, l
    inc d
    ld de, $59EF
    ld b, l
    inc d
    ld de, $59E5
    ld b, l
    inc d

jr_00A_4D26:
    ld de, $59DB
    ld b, l
    inc d
    ld de, $59D1
    ld b, l
    inc d
    ld de, $59C7
    ld b, l
    inc d
    ld de, $59BD
    ld b, l
    inc d
    ld de, $59B3
    ld b, l
    ld c, [hl]
    ld bc, $A133
    ld a, [bc]
    ld bc, $F800
    ld c, l
    ld a, [bc]
    ld [bc], a
    nop
    xor $4D
    ld a, [bc]
    inc bc
    nop
    db $E4
    ld c, l
    ld a, [bc]
    inc b
    nop
    jp c, $0A4D

    dec b
    nop
    ret nc

    ld c, l
    ld a, [bc]
    ld b, $00
    add $4D
    ld a, [bc]
    rlca
    nop
    cp h
    ld c, l
    ld a, [bc]
    ld [$B200], sp
    ld c, l
    ld a, [bc]
    add hl, bc
    nop
    xor b
    ld c, l
    ld a, [bc]
    ld a, [bc]
    nop
    sbc [hl]
    ld c, l
    ld a, [bc]
    dec bc
    nop
    sub h
    ld c, l
    ld a, [bc]
    inc c
    nop
    adc d
    ld c, l
    ld a, [bc]
    ld c, $00
    add h
    ld c, l
    rst $38
    dec d
    ld de, $5A35
    ld b, b
    nop
    or e
    inc sp
    and c
    inc c
    dec d
    ld de, $5A21
    ld b, b
    nop
    or e
    inc sp
    and c
    dec bc
    dec d
    ld de, $5A17
    ld b, b
    nop
    or e
    inc sp
    and c
    ld a, [bc]
    dec d
    ld de, $5A0D
    ld b, b
    nop
    or e
    inc sp
    and c
    add hl, bc
    dec d
    ld de, $5A03
    ld b, b
    nop
    or e
    inc sp
    and c
    ld [$1115], sp
    ld sp, hl
    ld e, c
    ld b, b
    nop
    or e
    inc sp
    and c
    rlca
    dec d
    ld de, $59EF
    ld b, b
    nop
    or e
    inc sp
    and c
    ld b, $15
    ld de, $59E5
    ld b, b
    nop
    or e
    inc sp
    and c
    dec b
    dec d
    ld de, $59DB
    ld b, b
    nop
    or e
    inc sp
    and c
    inc b
    dec d
    ld de, $59D1
    ld b, b
    nop
    or e
    inc sp
    and c
    inc bc
    dec d
    ld de, $59C7
    ld b, b
    nop
    or e
    inc sp
    and c
    ld [bc], a
    dec d
    ld de, $59BD
    ld b, b
    nop
    or e
    inc sp
    and c
    ld bc, $1115
    or e
    ld e, c
    ld b, b
    nop
    ld b, [hl]
    ld bc, $C9CB
    ld a, [bc]
    ld l, $4E
    or e
    ld sp, $01C7
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0A
    jr nz, @+$50

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
    jr nz, jr_00A_4E2D

    ld a, d
    jr nz, jr_00A_4EA2

    ld c, b
    ld a, [bc]
    sub b

jr_00A_4E2D:
    ld c, e
    ld b, l
    or e
    inc sp
    and c

jr_00A_4E32:
    ld c, $09
    ld [bc], a
    ld a, [bc]
    ld a, $4D
    ld b, l
    add hl, bc
    ld [bc], a
    ld a, [bc]
    or a
    ld c, h
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c

Call_00A_4E45:
    nop
    ld b, [hl]
    rrca
    ld bc, $A128
    dec b
    inc b
    ld a, [bc]
    jp $A64F


    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00A_4EBC

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00A_4EC5

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld a, [bc]

jr_00A_4E6E:
    and e
    ld c, [hl]
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_4EEC

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_4EF6

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00A_4EE4

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
    jr c, jr_00A_4E32

    ld [$0005], sp
    ld a, [bc]
    rst $18
    ld c, [hl]
    and c
    xor l
    ld a, c
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    add hl, hl

jr_00A_4EA2:
    ld b, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_4F1C

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_4F26

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_4F2A

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00A_4EED

    dec [hl]

jr_00A_4EBC:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00A_4EC5:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    jr c, jr_00A_4E6E

    ld [$0005], sp
    ld a, [bc]
    rst $18
    ld c, [hl]
    and c
    xor l
    ld a, c
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    add hl, hl
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00A_4EE4:
    ld bc, $A179
    ld a, [bc]
    ld e, [hl]
    ld c, a
    sbc a
    ld a, c

jr_00A_4EEC:
    and c

jr_00A_4EED:
    ld b, [hl]
    rrca
    ld bc, $A179
    dec b
    ld bc, $240A

jr_00A_4EF6:
    ld c, a
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00A_4F60

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
    jr nz, jr_00A_4F5D

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_4F79

    ld [hl], e
    cp $FC
    jr nz, jr_00A_4F76

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00A_4F1C:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld a, [bc]
    add hl, hl
    ld b, b
    and [hl]
    ld d, h

jr_00A_4F26:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00A_4F2A:
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
    jr nz, jr_00A_4F8A

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00A_4FB8

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
    ld a, [bc]
    add hl, hl

jr_00A_4F5D:
    ld b, b
    sbc a
    ld a, c

jr_00A_4F60:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00A_4FCD

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00A_4FDC

    ld h, c
    halt

jr_00A_4F76:
    ld h, l
    jr nz, @+$75

jr_00A_4F79:
    ld h, l
    ld [hl], h
    jr nz, @+$63

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_00A_4FCB

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00A_4FDB

    ld h, e
    ld l, a

jr_00A_4F8A:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00A_5003

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
    jr nz, jr_00A_4FF4

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$79

jr_00A_4FA7:
    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_00A_500E

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

jr_00A_4FB8:
    xor l
    ld a, c
    and c
    ld bc, $A132
    and c
    ld c, b
    ld a, [bc]
    add hl, hl
    ld b, b
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00A_5031

jr_00A_4FCB:
    ld l, a
    ld [hl], l

jr_00A_4FCD:
    ld l, [hl]
    ld h, h
    rst $38
    ld h, c
    jr nz, jr_00A_5026

    ld b, l
    ld b, e
    ld d, d
    ld b, l
    ld d, h
    ld hl, $FDFE

jr_00A_4FDB:
    ld b, [hl]

jr_00A_4FDC:
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld a, [bc]
    ld e, l
    ld d, b
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, @+$76

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_506B

    ld l, a
    ld [hl], l

jr_00A_4FF4:
    rst $38
    db $FC
    jr nz, jr_00A_5059

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

jr_00A_5003:
    stop
    jr c, jr_00A_4FA7

    ld [$0005], sp
    ld a, [bc]
    jr jr_00A_505D

    and c

jr_00A_500E:
    xor l
    ld a, c
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    inc [hl]
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132
    ld bc, $A179
    ld a, [bc]
    db $D3
    ld d, b
    sbc a
    ld a, c
    and c

jr_00A_5026:
    ld b, [hl]
    rrca

jr_00A_5028:
    ld bc, $A179
    dec b
    ld bc, $990A
    ld d, b
    and [hl]

jr_00A_5031:
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00A_5099

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
    jr nz, jr_00A_5096

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_50B2

    ld [hl], e
    cp $FC
    jr nz, jr_00A_50AF

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

jr_00A_5059:
    ld c, b
    ld a, [bc]
    inc [hl]
    ld b, b

jr_00A_505D:
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_50D6

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_50E0

    ld l, a
    ld [hl], l
    rst $38
    ld l, l

jr_00A_506B:
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_50E4

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00A_50A7

    dec [hl]
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
    jr c, jr_00A_5028

    ld [$0005], sp
    ld a, [bc]
    jr jr_00A_50DE

    and c
    xor l
    ld a, c
    and c
    ld bc, $A132
    ld c, b

jr_00A_5096:
    ld a, [bc]
    inc [hl]
    ld b, b

jr_00A_5099:
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$65

    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b

jr_00A_50A7:
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00A_50FF

    ld h, e
    ld l, a
    ld [hl], d

jr_00A_50AF:
    ld h, l
    jr nz, @+$6B

jr_00A_50B2:
    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00A_512D

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

Call_00A_50C2:
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
    ld a, [bc]

Jump_00A_50D1:
    inc [hl]
    ld b, b
    sbc a
    ld a, c
    and c

jr_00A_50D6:
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h

jr_00A_50DC:
    jr nz, jr_00A_5142

jr_00A_50DE:
    ld l, a
    ld l, [hl]

jr_00A_50E0:
    ld h, l
    ld hl, $FF21

jr_00A_50E4:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00A_5151

    ld h, c
    halt
    ld h, l

jr_00A_50EC:
    jr nz, jr_00A_5161

    ld h, l
    ld [hl], h

jr_00A_50F0:
    jr nz, jr_00A_5153

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_00A_5140

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00A_5150

    ld h, e
    ld l, a

jr_00A_50FF:
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
    jr nz, jr_00A_5169

    ld h, e
    ld l, a
    ld [hl], d

jr_00A_5119:
    ld h, l
    jr nz, jr_00A_5193

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_00A_5183

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00A_5129:
    ld l, $FE
    db $FD
    and c

jr_00A_512D:
    xor l
    ld a, c
    and c
    ld bc, $A132
    and c
    ld c, b
    ld a, [bc]
    inc [hl]
    ld b, b
    ld b, [hl]
    nop
    jr z, jr_00A_50DC

    jr nz, jr_00A_5148

    ld [hl], h
    ld d, c

jr_00A_5140:
    rlca
    nop

jr_00A_5142:
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    ld [hl], h

jr_00A_5148:
    ld e, [hl]
    or [hl]
    jr z, jr_00A_50EC

    jr nz, @-$49

    jr z, jr_00A_50F0

jr_00A_5150:
    cp a

jr_00A_5151:
    add hl, bc
    ld [bc], a

jr_00A_5153:
    ld a, [bc]
    or a
    ld c, h
    ld e, l
    rla
    call z, $8345
    xor d
    jp nc, $0E0E

    db $ED
    pop de

jr_00A_5161:
    inc c
    dec c
    ld b, e
    inc b
    ld e, l
    ld a, [bc]
    ld [hl], h
    ld d, c

jr_00A_5169:
    ld e, $10
    add hl, bc
    ld [bc], a
    ld a, [bc]
    ld a, $4D
    rlca
    nop
    inc [hl]
    ld h, e
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00A_5119

    ld b, b
    ld a, [bc]
    or c
    ld d, c
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop

jr_00A_5183:
    inc d
    ld [hl], h
    ld e, [hl]
    or [hl]
    jr z, jr_00A_5129

    ld b, b
    or l
    jr z, jr_00A_512D

    rst $18
    add hl, bc
    ld [bc], a
    ld a, [bc]
    or a
    ld c, h

jr_00A_5193:
    ld e, l
    rla
    call z, $8345
    ld a, [hl+]
    ret nc

    ld c, $0E
    db $ED
    pop de
    inc c
    dec c
    ld b, e
    inc b
    ld e, l
    ld a, [bc]
    or c
    ld d, c
    ld e, $10
    add hl, bc
    ld [bc], a
    ld a, [bc]
    ld a, $4D
    rlca
    nop
    inc [hl]
    ld h, e
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
    push af
    ld d, b
    inc de
    ld h, a
    ld h, b
    ld b, [hl]
    ld l, e
    ld h, b
    ld d, a
    daa
    db $EB
    ld c, b
    add hl, hl
    ld l, [hl]
    ld b, $19
    sub b
    ld b, e
    nop
    add b
    nop
    dec b
    nop
    inc [hl]
    ld h, e
    dec c
    inc hl
    inc [hl]
    sub $00
    inc d
    ld [hl], h
    ld e, [hl]
    add hl, de
    add sp, $46
    ld d, e
    cp a
    pop bc
    sub [hl]
    inc hl
    nop
    ld a, [bc]
    ld h, l
    ld d, h
    dec bc
    nop
    or l
    dec hl
    and b
    ei
    or e
    daa
    and d
    ld bc, $27B3
    and c
    nop
    or e
    inc sp
    and c
    nop
    or e
    jr z, @-$5D

    nop
    add [hl]
    sbc b
    sbc e
    ld a, [bc]
    ld c, $52
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    inc c
    ld [bc], a
    or [hl]
    dec hl
    and b
    inc b
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_00A_5275

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_00A_5271

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    ld a, [bc]
    add hl, sp
    ld d, d
    ld a, [bc]
    sbc d
    ld b, b
    ld b, l
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0A
    ld c, h
    ld d, d
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
    jr nz, jr_00A_525D

    ld a, d
    jr nz, jr_00A_52D2

    ld c, b
    ld a, [bc]
    or [hl]

jr_00A_525D:
    ld d, c
    ld [hl+], a
    ld [bc], a
    add hl, bc
    ld [bc], a
    ld a, [bc]
    sbc $53
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00A_52D7

jr_00A_5271:
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_00A_5275:
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00A_52E0

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld a, [bc]

jr_00A_5289:
    cp [hl]
    ld d, d
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_5307

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_5311

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00A_52FF

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
    jr c, @-$5E

    ld b, b
    dec b
    nop
    ld a, [bc]
    ld a, [$A152]
    xor l
    ld a, h
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    adc d
    ld b, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_5337

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_5341

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_5345

    ld l, b

jr_00A_52D2:
    ld h, c
    ld l, [hl]
    jr nz, jr_00A_5308

    dec [hl]

jr_00A_52D7:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00A_52E0:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    jr c, jr_00A_5289

    ld b, b
    dec b
    nop
    ld a, [bc]
    ld a, [$A152]
    xor l
    ld a, h
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    adc d
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00A_52FF:
    ld bc, $A17C
    ld a, [bc]
    ld a, c
    ld d, e
    sbc a
    ld a, h

jr_00A_5307:
    and c

jr_00A_5308:
    ld b, [hl]
    rrca
    ld bc, $A17C
    dec b
    ld bc, $3F0A

jr_00A_5311:
    ld d, e
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00A_537B

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
    jr nz, jr_00A_5378

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_5394

    ld [hl], e
    cp $FC
    jr nz, jr_00A_5391

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00A_5337:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld a, [bc]
    adc d
    ld b, b
    and [hl]
    ld d, h

jr_00A_5341:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00A_5345:
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
    jr nz, jr_00A_53A5

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00A_53D3

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
    ld a, [bc]
    adc d

jr_00A_5378:
    ld b, b
    sbc a
    ld a, h

jr_00A_537B:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00A_53E8

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00A_53F7

    ld h, c
    halt

jr_00A_5391:
    ld h, l
    jr nz, @+$75

jr_00A_5394:
    ld h, l
    ld [hl], h
    jr nz, jr_00A_53F9

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_00A_53E6

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00A_53F6

    ld h, e
    ld l, a

jr_00A_53A5:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00A_541E

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
    jr nz, jr_00A_540F

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_5439

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_00A_5429

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

jr_00A_53D3:
    xor l
    ld a, h
    and c
    ld bc, $A132
    and c
    ld c, b
    ld a, [bc]
    adc d
    ld b, b
    ld c, [hl]
    ld bc, $A128
    ld a, [bc]
    ld bc, $6000

jr_00A_53E6:
    ld d, h
    ld a, [bc]

jr_00A_53E8:
    ld [bc], a
    nop
    ld e, e
    ld d, h
    ld a, [bc]
    inc bc
    nop
    ld d, [hl]
    ld d, h
    ld a, [bc]
    inc b
    nop
    ld d, c
    ld d, h

jr_00A_53F6:
    ld a, [bc]

jr_00A_53F7:
    dec b
    nop

jr_00A_53F9:
    ld c, h
    ld d, h
    ld a, [bc]
    ld b, $00
    ld b, a
    ld d, h
    ld a, [bc]
    rlca
    nop
    ld b, d
    ld d, h
    ld a, [bc]
    ld [$3D00], sp
    ld d, h
    ld a, [bc]
    add hl, bc
    nop
    jr c, @+$56

jr_00A_540F:
    ld a, [bc]
    ld a, [bc]
    nop
    inc sp
    ld d, h
    ld a, [bc]
    dec bc
    nop
    ld l, $54
    ld a, [bc]
    inc c
    nop
    add hl, hl
    ld d, h

jr_00A_541E:
    ld a, [bc]
    ld c, $00
    inc h
    ld d, h
    rst $38
    inc d
    ld de, $5A35
    ld b, l

jr_00A_5429:
    inc d
    ld de, $5A21
    ld b, l
    inc d
    ld de, $5A17
    ld b, l
    inc d
    ld de, $5A0D
    ld b, l
    inc d

jr_00A_5439:
    ld de, $5A03
    ld b, l
    inc d
    ld de, $59F9
    ld b, l
    inc d
    ld de, $59EF
    ld b, l
    inc d
    ld de, $59E5
    ld b, l
    inc d
    ld de, $59DB
    ld b, l
    inc d
    ld de, $59D1

jr_00A_5455:
    ld b, l
    inc d
    ld de, $59C7
    ld b, l
    inc d
    ld de, $59BD

jr_00A_545F:
    ld b, l
    inc d
    ld de, $59B3
    ld b, l
    ld c, [hl]
    ld bc, $A128

jr_00A_5469:
    ld a, [bc]
    ld bc, $1F00
    ld d, l
    ld a, [bc]
    ld [bc], a
    nop
    dec d
    ld d, l

jr_00A_5473:
    ld a, [bc]
    inc bc
    nop
    dec bc
    ld d, l
    ld a, [bc]
    inc b
    nop
    ld bc, $0A55
    dec b
    nop
    rst $30
    ld d, h
    ld a, [bc]
    ld b, $00
    db $ED
    ld d, h

jr_00A_5487:
    ld a, [bc]
    rlca
    nop
    db $E3
    ld d, h
    ld a, [bc]
    ld [$D900], sp
    ld d, h

jr_00A_5491:
    ld a, [bc]
    add hl, bc
    nop
    rst $08
    ld d, h
    ld a, [bc]
    ld a, [bc]
    nop
    push bc
    ld d, h

jr_00A_549B:
    ld a, [bc]
    dec bc
    nop
    cp e
    ld d, h
    ld a, [bc]
    inc c
    nop
    or c
    ld d, h

jr_00A_54A5:
    ld a, [bc]
    ld c, $00
    xor e
    ld d, h
    rst $38
    dec d
    ld de, $5A35

jr_00A_54AF:
    ld b, b
    nop
    or e
    jr z, jr_00A_5455

    inc c
    dec d
    ld de, $5A21

jr_00A_54B9:
    ld b, b
    nop
    or e
    jr z, jr_00A_545F

    dec bc
    dec d
    ld de, $5A17

jr_00A_54C3:
    ld b, b
    nop
    or e
    jr z, jr_00A_5469

    ld a, [bc]
    dec d
    ld de, $5A0D
    ld b, b
    nop
    or e
    jr z, jr_00A_5473

    add hl, bc
    dec d
    ld de, $5A03
    ld b, b
    nop
    or e
    jr z, @-$5D

    ld [$1115], sp
    ld sp, hl
    ld e, c
    ld b, b
    nop
    or e
    jr z, jr_00A_5487

    rlca
    dec d
    ld de, $59EF
    ld b, b
    nop
    or e
    jr z, jr_00A_5491

    ld b, $15
    ld de, $59E5
    ld b, b
    nop
    or e
    jr z, jr_00A_549B

jr_00A_54FA:
    dec b
    dec d
    ld de, $59DB
    ld b, b
    nop
    or e
    jr z, jr_00A_54A5

    inc b
    dec d
    ld de, $59D1
    ld b, b
    nop
    or e
    jr z, jr_00A_54AF

    inc bc
    dec d
    ld de, $59C7
    ld b, b
    nop
    or e
    jr z, jr_00A_54B9

    ld [bc], a
    dec d
    ld de, $59BD
    ld b, b
    nop
    or e
    jr z, jr_00A_54C3

    ld bc, $1115
    or e
    ld e, c
    ld b, b
    nop
    ld b, [hl]
    ld bc, $C9CB
    ld a, [bc]
    ld d, l
    ld d, l
    or e
    ld sp, $01C7
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0A
    ld b, a
    ld d, l
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
    jr nz, jr_00A_5554

    ld a, d
    jr nz, jr_00A_55C9

    ld c, b
    ld a, [bc]
    or [hl]

jr_00A_5554:
    ld d, c
    ld b, l
    or e
    jr z, jr_00A_54FA

    ld c, $09
    ld [bc], a
    ld a, [bc]
    ld h, l
    ld d, h
    ld b, l
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    ld bc, $E719
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    ld bc, $0A48
    or b
    ld d, a
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    ld [bc], a
    add hl, de
    rst $20
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    ld [bc], a
    ld c, b
    ld a, [bc]
    or b
    ld d, a
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    inc bc
    add hl, de
    rst $20
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    inc bc
    ld c, b
    ld a, [bc]
    or b
    ld d, a
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    inc b
    ld c, b

jr_00A_55C9:
    ld a, [bc]
    or b
    ld d, a
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    dec b
    add hl, de
    rst $20
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    dec b
    ld c, b
    ld a, [bc]
    or b
    ld d, a
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    ld b, $19
    rst $20
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    ld b, $48
    ld a, [bc]
    or b
    ld d, a
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    rlca
    add hl, de
    rst $20
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    rlca
    ld c, b
    ld a, [bc]
    or b
    ld d, a
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    ld [$E719], sp
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    ld [$0A48], sp
    or b
    ld d, a
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    add hl, bc
    add hl, de
    rst $20
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    add hl, bc
    ld c, b
    ld a, [bc]
    or b
    ld d, a
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    ld a, [bc]
    add hl, de
    rst $20
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    ld a, [bc]
    ld c, b
    ld a, [bc]
    or b
    ld d, a
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    dec bc
    add hl, de
    rst $20
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    dec bc
    ld c, b
    ld a, [bc]
    or b
    ld d, a
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    inc c
    add hl, de
    rst $20
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    inc c
    ld c, b
    ld a, [bc]
    or b
    ld d, a
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    dec c
    add hl, de
    rst $20
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    dec c
    ld c, b
    ld a, [bc]
    or b
    ld d, a
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    ld c, $19
    rst $20
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    ld c, $48
    ld a, [bc]
    or b
    ld d, a
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    rrca
    add hl, de
    rst $20
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    rrca
    ld c, b
    ld a, [bc]
    or b
    ld d, a
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    db $10
    add hl, de
    rst $20
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    db $10
    ld c, b
    ld a, [bc]
    or b
    ld d, a
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    ld de, $E719
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    ld de, $0A48
    or b
    ld d, a
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    ld [de], a
    add hl, de
    rst $20
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    ld [de], a
    ld c, b
    ld a, [bc]
    or b
    ld d, a
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    inc de
    add hl, de
    rst $20
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    inc de
    ld c, b
    ld a, [bc]
    or b
    ld d, a
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    xor l
    daa
    and c
    dec bc
    ld bc, $A133
    dec b
    nop
    or e
    inc sp
    and c
    inc d
    ld c, b
    ld a, [bc]
    or b
    ld d, a
    or e
    daa
    and c
    nop
    or e
    inc sp
    and c
    ld de, $0007
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    ld [hl], h
    ld e, [hl]
    ld e, l
    rla
    call z, $8345
    sbc c
    call nc, $090A
    ld l, [hl]
    call nc, $0919
    add e
    ld e, h
    sub $05
    ld bc, $D605
    ld [hl+], a
    dec bc
    ld e, l
    add hl, de
    rst $20
    ld b, [hl]
    ld e, $10
    rlca
    nop
    inc [hl]
    ld h, e
    dec bc
    ld [bc], a
    ld b, l
    ld e, $0F
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    ld [hl], h
    ld e, [hl]
    add hl, bc
    ld [bc], a
    ld a, [bc]
    sbc $53
    ld e, l
    rla
    call z, Call_00A_4E45
    ld bc, $A127
    ld a, [bc]
    ld bc, $3100
    ld e, b
    ld a, [bc]
    ld [bc], a
    nop
    ld a, $58
    ld a, [bc]
    inc bc
    nop
    ld c, e
    ld e, b
    ld a, [bc]
    inc b
    nop
    ld e, b
    ld e, b
    ld a, [bc]
    dec b
    nop
    ld h, l
    ld e, b
    ld a, [bc]
    ld b, $00
    ld [hl], d
    ld e, b
    ld a, [bc]
    rlca
    nop
    ld a, a
    ld e, b
    ld a, [bc]
    ld [$8C00], sp
    ld e, b
    ld a, [bc]
    add hl, bc
    nop
    sbc c
    ld e, b
    ld a, [bc]
    ld a, [bc]
    nop
    and [hl]
    ld e, b
    ld a, [bc]
    dec bc
    nop
    or e
    ld e, b
    ld a, [bc]
    inc c
    nop
    ret nz

    ld e, b
    ld a, [bc]
    dec c
    nop
    call $0A58
    ld c, $00
    jp c, $0A58

    rrca
    nop
    rst $20
    ld e, b
    ld a, [bc]
    stop
    db $F4
    ld e, b
    ld a, [bc]
    ld de, $0800
    ld e, c
    ld a, [bc]
    ld [de], a
    nop
    dec d
    ld e, c
    ld a, [bc]
    inc de
    nop
    ld [hl+], a
    ld e, c
    ld a, [bc]
    inc d
    nop
    cpl
    ld e, c
    rst $38
    ld c, b
    ld a, [bc]
    ld b, e
    ld e, c
    add e
    daa
    sub $09
    add hl, bc
    ld e, h
    ret nc

    ld [bc], a
    ld [bc], a
    ld c, b
    ld a, [bc]
    ld b, e
    ld e, c
    add e
    cpl
    sub $0A
    ld a, [bc]
    ld h, e
    ret nc

    ld [bc], a
    add hl, bc
    ld c, b
    ld a, [bc]
    ld b, e
    ld e, c
    add e
    ld [hl], $D6
    ld a, [bc]
    add hl, bc
    ld l, e
    ret nc

    ld [bc], a
    ld de, $0A48
    ld b, e
    ld e, c
    add e
    ld a, $D6
    ld a, [bc]
    add hl, bc
    ld [hl], e
    ret nc

    ld [bc], a
    add hl, de
    ld c, b
    ld a, [bc]
    ld b, e
    ld e, c
    add e
    ld b, [hl]
    sub $09
    add hl, bc
    ld a, e
    ret nc

    ld [bc], a
    ld hl, $0A48
    ld b, e
    ld e, c
    add e
    add c
    sub $09
    ld a, [bc]
    sub a
    pop de
    add hl, bc
    ld [bc], a
    ld c, b
    ld a, [bc]
    ld b, e
    ld e, c
    add e
    add d
    sub $0A
    ld a, [bc]
    sbc [hl]
    pop de
    add hl, bc
    add hl, bc
    ld c, b
    ld a, [bc]
    ld b, e
    ld e, c
    add e
    add d
    sub $0A
    ld a, [bc]
    and [hl]
    pop de
    add hl, bc
    ld de, $0A48
    ld b, e
    ld e, c
    add e
    add d
    sub $0A
    ld a, [bc]
    xor [hl]
    pop de
    add hl, bc
    add hl, de
    ld c, b
    ld a, [bc]
    ld b, e
    ld e, c
    add e
    add d
    sub $09
    ld a, [bc]
    or [hl]
    pop de
    add hl, bc
    ld hl, $0A48
    ld b, e
    ld e, c
    add e
    add c
    sub $09
    ld a, [bc]
    rst $38
    jp nc, $0211

    ld c, b
    ld a, [bc]
    ld b, e
    ld e, c
    add e
    add d
    sub $0A
    ld a, [bc]
    ld b, $D3
    ld de, $4809
    ld a, [bc]
    ld b, e
    ld e, c
    add e
    add d
    sub $0A
    ld a, [bc]
    ld c, $D3
    ld de, $4811
    ld a, [bc]
    ld b, e
    ld e, c
    add e
    add d
    sub $0A
    ld a, [bc]
    ld d, $D3
    ld de, $4819
    ld a, [bc]
    ld b, e
    ld e, c
    add e
    and b
    sub $09
    ld a, [bc]
    ld e, $D3
    ld de, $4821
    ld a, [bc]
    ld b, e
    ld e, c
    add e
    add c
    sub $09
    add hl, bc
    ld h, a
    call nc, $0219
    add h
    ld hl, $7B02
    db $DB
    ld [$482D], sp
    ld a, [bc]
    ld b, e
    ld e, c
    add e
    add d
    sub $0A
    add hl, bc
    ld l, [hl]
    call nc, $0919
    ld c, b
    ld a, [bc]
    ld b, e
    ld e, c
    add e
    add d
    sub $0A
    add hl, bc
    halt
    call nc, $1119
    ld c, b
    ld a, [bc]
    ld b, e
    ld e, c
    add e
    add d
    sub $0A
    add hl, bc
    ld a, [hl]
    call nc, $1919
    ld c, b
    ld a, [bc]
    ld b, e
    ld e, c
    add e
    and b
    sub $09
    add hl, bc
    add [hl]
    call nc, $2119
    add h
    ld hl, $C329
    db $DB
    ld [$482D], sp
    ld a, [bc]
    ld b, e
    ld e, c
    ld e, $0F
    ld c, [hl]
    ld bc, $A133
    ld a, [bc]
    ld bc, $B200
    ld e, c
    ld a, [bc]
    ld [bc], a
    nop
    cp a
    ld e, c
    ld a, [bc]
    inc bc
    nop
    call z, $0A59
    inc b
    nop
    reti


    ld e, c
    ld a, [bc]
    dec b
    nop
    and $59
    ld a, [bc]
    ld b, $00
    di
    ld e, c
    ld a, [bc]
    rlca
    nop
    nop
    ld e, d
    ld a, [bc]
    ld [$0D00], sp
    ld e, d
    ld a, [bc]
    add hl, bc
    nop
    ld a, [de]
    ld e, d
    ld a, [bc]
    ld a, [bc]
    nop
    daa
    ld e, d
    ld a, [bc]
    dec bc
    nop
    inc [hl]
    ld e, d
    ld a, [bc]
    inc c
    nop
    ld b, c
    ld e, d
    ld a, [bc]
    dec c
    nop
    ld c, [hl]
    ld e, d
    ld a, [bc]
    ld c, $00
    ld e, e
    ld e, d
    ld a, [bc]
    rrca
    nop
    ld l, b
    ld e, d
    ld a, [bc]
    stop
    ld [hl], l
    ld e, d
    ld a, [bc]
    ld de, $8200
    ld e, d
    ld a, [bc]
    ld [de], a
    nop
    adc a
    ld e, d
    ld a, [bc]
    inc de
    nop
    sbc h
    ld e, d
    ld a, [bc]
    inc d
    nop
    xor c
    ld e, d
    rst $38
    ld c, b
    ld a, [bc]
    or [hl]
    ld e, d
    add e
    add a
    ret nc

    add hl, bc
    add hl, bc
    ld e, h
    ret nc

    ld [bc], a
    ld [bc], a
    ld c, b
    ld a, [bc]
    or [hl]
    ld e, d
    add e
    adc [hl]
    ret nc

    ld a, [bc]
    ld a, [bc]
    ld h, e
    ret nc

    ld [bc], a
    add hl, bc
    ld c, b
    ld a, [bc]
    or [hl]
    ld e, d
    add e
    sub [hl]
    ret nc

    ld a, [bc]
    add hl, bc
    ld l, e
    ret nc

    ld [bc], a
    ld de, $0A48
    or [hl]
    ld e, d
    add e
    sbc [hl]
    ret nc

    ld a, [bc]
    add hl, bc
    ld [hl], e
    ret nc

    ld [bc], a
    add hl, de
    ld c, b
    ld a, [bc]
    or [hl]
    ld e, d
    add e
    and [hl]
    ret nc

    add hl, bc
    add hl, bc
    ld a, e
    ret nc

    ld [bc], a
    ld hl, $0A48
    or [hl]
    ld e, d
    add e
    jp nz, $09D1

    ld a, [bc]
    sub a
    pop de
    add hl, bc
    ld [bc], a
    ld c, b
    ld a, [bc]
    or [hl]
    ld e, d
    add e
    ret


    pop de
    ld a, [bc]
    ld a, [bc]
    sbc [hl]
    pop de
    add hl, bc
    add hl, bc
    ld c, b
    ld a, [bc]
    or [hl]
    ld e, d
    add e
    pop de
    pop de
    ld a, [bc]
    ld a, [bc]
    and [hl]
    pop de
    add hl, bc
    ld de, $0A48
    or [hl]
    ld e, d
    add e
    reti


    pop de
    ld a, [bc]
    ld a, [bc]
    xor [hl]
    pop de
    add hl, bc
    add hl, de
    ld c, b
    ld a, [bc]
    or [hl]
    ld e, d
    add e
    pop hl
    pop de
    add hl, bc
    ld a, [bc]
    or [hl]
    pop de
    add hl, bc
    ld hl, $0A48
    or [hl]
    ld e, d
    add e
    ld a, [hl+]
    db $D3
    add hl, bc
    ld a, [bc]
    rst $38
    jp nc, $0211

    ld c, b
    ld a, [bc]
    or [hl]
    ld e, d
    add e
    ld sp, $0AD3
    ld a, [bc]
    ld b, $D3
    ld de, $4809
    ld a, [bc]
    or [hl]
    ld e, d
    add e
    add hl, sp
    db $D3
    ld a, [bc]
    ld a, [bc]
    ld c, $D3
    ld de, $4811
    ld a, [bc]
    or [hl]
    ld e, d
    add e
    ld b, c
    db $D3
    ld a, [bc]
    ld a, [bc]
    ld d, $D3
    ld de, $4819
    ld a, [bc]
    or [hl]
    ld e, d
    add e
    ld c, c
    db $D3
    add hl, bc
    ld a, [bc]
    ld e, $D3
    ld de, $4821
    ld a, [bc]
    or [hl]
    ld e, d
    add e
    sub d
    call nc, $0909
    ld h, a
    call nc, $0219
    ld c, b
    ld a, [bc]
    or [hl]
    ld e, d
    add e
    sbc c
    call nc, $090A
    ld l, [hl]
    call nc, $0919
    ld c, b
    ld a, [bc]
    or [hl]
    ld e, d
    add e
    and c
    call nc, $090A
    halt
    call nc, $1119
    ld c, b
    ld a, [bc]
    or [hl]
    ld e, d
    add e
    xor c
    call nc, $090A
    ld a, [hl]
    call nc, $1919
    ld c, b
    ld a, [bc]
    or [hl]
    ld e, d
    add e
    or c
    call nc, $0909
    add [hl]
    call nc, $2119
    ld c, b
    ld a, [bc]
    or [hl]
    ld e, d
    ld e, l
    add hl, de
    rst $20
    ld b, [hl]
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    ld [bc], a
    ld a, [bc]

jr_00A_5AC1:
    ld h, l
    ld d, h
    ld e, $10
    ld b, l
    ld [hl+], a
    dec de
    ld c, b
    ld a, [bc]
    ld h, a
    ld e, e
    ld [hl+], a
    dec de
    ld c, b
    ld a, [bc]
    or h
    ld e, [hl]
    ld [hl+], a
    dec de
    ld c, b
    ld a, [bc]
    dec d
    ld h, h
    ld [hl+], a
    dec de
    ld c, b
    ld a, [bc]
    and b
    ld h, a
    ld [hl+], a
    dec de
    ld c, b
    ld a, [bc]
    dec hl
    ld l, e
    or [hl]
    scf
    and b
    ld bc, $1301
    ld [bc], a
    ld c, b
    add hl, bc
    db $ED
    ld l, d
    or [hl]
    scf
    and b
    ld [bc], a
    ld bc, $0206
    ld c, b
    add hl, bc
    db $ED
    ld l, d
    ld b, [hl]
    nop
    ld c, d
    and b
    jr nz, @+$0C

    inc e
    ld e, e
    or [hl]
    scf
    and b
    ld [bc], a
    or [hl]
    scf
    and b
    jr nz, jr_00A_5AC1

    ld c, d
    and b
    jr nz, jr_00A_5B55

    rrca
    ld bc, $A136
    dec b
    inc b
    ld a, [bc]
    ld a, [$485A]
    add hl, bc
    ld sp, hl
    ld l, h
    or [hl]
    scf
    and b
    ld [bc], a
    or [hl]
    scf
    and b
    jr nz, @+$03

    ld b, $02
    ld c, b
    add hl, bc
    db $ED
    ld l, d
    or [hl]
    scf
    and b
    inc b
    ld bc, $0A0B
    ld c, b
    add hl, bc
    db $ED
    ld l, d
    ld b, [hl]
    nop
    scf
    and b
    ld [$490A], sp
    ld e, e
    or [hl]
    scf
    and b
    ld [$0901], sp
    dec d
    ld c, b
    add hl, bc
    rst $10
    ld l, l
    ld bc, $1509
    ld c, b
    add hl, bc
    db $ED
    ld l, d
    ld b, [hl]
    nop
    scf
    and b
    db $10

jr_00A_5B55:
    ld a, [bc]
    ld h, b
    ld e, e
    or [hl]
    scf
    and b
    db $10
    ld c, b
    add hl, bc
    adc $6B
    ld bc, $1315
    ld c, b
    add hl, bc
    db $ED
    ld l, d
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
    rra
    ld d, h
    inc de
    ld h, a
    adc a
    ld c, [hl]
    dec b
    nop
    inc [hl]
    ld h, e
    dec bc
    dec bc
    rst $20
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    add a
    ld h, a
    add hl, bc
    dec b
    ld l, l
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    and b
    ld e, h
    dec b
    inc bc
    add a
    ld h, a
    add hl, bc
    add hl, bc
    cp l
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    and b
    ld e, h
    dec b
    inc b
    add a
    ld h, a
    add hl, bc
    dec c
    dec c
    pop de
    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    and b
    ld e, h
    dec b
    dec b
    add a
    ld h, a
    dec b
    dec b
    ld l, c
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    and b
    ld e, h
    dec b
    ld b, $87
    ld h, a
    dec b
    add hl, bc
    cp c
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    and b
    ld e, h
    dec b
    rlca
    add a
    ld h, a
    dec b
    dec c
    add hl, bc
    pop de
    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    and b
    ld e, h
    dec b
    ld [$6787], sp
    dec c
    dec b
    ld [hl], c
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    and b
    ld e, h
    dec b
    add hl, bc
    add a
    ld h, a
    dec c
    add hl, bc
    pop bc
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    and b
    ld e, h
    dec b
    ld a, [bc]
    add a
    ld h, a
    dec c
    dec c
    ld de, $00D1
    add hl, de
    rst $20

jr_00A_5C11:
    ld b, [hl]
    ld a, [bc]
    and b
    ld e, h

jr_00A_5C15:
    dec b
    dec bc
    add a
    ld h, a
    ld de, $7505
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    and b
    ld e, h
    dec b
    ld [de], a
    add a
    ld h, a
    ld de, $C509
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    and b
    ld e, h
    dec b
    inc de
    add a
    ld h, a
    ld de, $150D
    pop de
    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    and b
    ld e, h
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_00A_5C8A

    nop
    add b
    nop
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
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $2AB5
    and b
    rst $30
    or l
    jr z, jr_00A_5C11

    cp $B5
    jr z, jr_00A_5C15

    db $FD
    sbc e
    ld a, [bc]
    ld a, e
    ld e, h
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
    jr nz, jr_00A_5CDC

jr_00A_5C8A:
    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_00A_5CD8

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    ld a, [bc]
    db $10
    ld e, l
    ld a, [bc]
    add sp, $5A
    ld b, l
    or e
    ld sp, $01C7
    ld c, e
    ld e, $1D
    ld l, c
    sbc b
    ld a, b
    inc d
    ld a, l
    rrca
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    ld a, [bc]
    ret nc

    ld e, h
    ld c, [hl]
    ld bc, $C9D8
    ld a, [bc]
    nop
    nop
    ldh [$5C], a
    ld a, [bc]
    ld bc, $EC00
    ld e, h
    ld a, [bc]
    ld [bc], a
    nop
    ld hl, sp+$5C
    ld a, [bc]
    inc bc
    nop
    inc b
    ld e, l
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_00A_5CD6

jr_00A_5CD6:
    ld c, b
    ld a, [bc]

jr_00A_5CD8:
    db $10
    ld e, l
    inc c
    nop

jr_00A_5CDC:
    ld c, b
    ld a, [bc]
    db $10
    ld e, l
    dec d
    ld de, $74CF
    jr nz, jr_00A_5CE6

jr_00A_5CE6:
    inc c
    nop
    ld c, b
    ld a, [bc]
    db $10
    ld e, l
    dec d
    ld de, $7498
    jr nz, jr_00A_5CF2

jr_00A_5CF2:
    inc c
    nop
    ld c, b
    ld a, [bc]
    db $10
    ld e, l
    dec d
    ld de, $74A2
    jr nz, jr_00A_5CFE

jr_00A_5CFE:
    inc c
    nop
    ld c, b
    ld a, [bc]
    db $10
    ld e, l
    dec d
    ld de, $748E
    jr nz, jr_00A_5D0A

jr_00A_5D0A:
    inc c
    nop
    ld c, b
    ld a, [bc]
    db $10
    ld e, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld e, $08
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, @+$08

    ld a, d
    jr nz, jr_00A_5D9A

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0A
    dec [hl]
    ld e, l
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $0A48
    ld l, e
    ld e, e
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
    jr nz, jr_00A_5DAD

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00A_5DB6

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld a, [bc]
    sub h
    ld e, l
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_5DDD

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_5DE7

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00A_5DD5

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
    scf
    and b
    ld bc, $0005
    ld a, [bc]
    ret nc

    ld e, l
    and c
    xor l
    ld [hl], e
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    db $E4
    ld e, d
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_5E0D

    ld l, a

jr_00A_5D9A:
    ld l, a
    ld l, e
    jr nz, jr_00A_5E17

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_5E1B

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00A_5DDE

    dec [hl]

jr_00A_5DAD:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00A_5DB6:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    scf
    and b
    ld bc, $0005
    ld a, [bc]
    ret nc

    ld e, l
    and c
    xor l
    ld [hl], e
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    db $E4
    ld e, d
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00A_5DD5:
    ld bc, $A173
    ld a, [bc]
    ld c, a
    ld e, [hl]
    sbc a
    ld [hl], e

jr_00A_5DDD:
    and c

jr_00A_5DDE:
    ld b, [hl]
    rrca
    ld bc, $A173
    dec b
    ld bc, $150A

jr_00A_5DE7:
    ld e, [hl]
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00A_5E51

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
    jr nz, jr_00A_5E4E

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_5E6A

    ld [hl], e
    cp $FC
    jr nz, jr_00A_5E67

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00A_5E0D:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld a, [bc]
    db $E4
    ld e, d
    and [hl]
    ld d, h

jr_00A_5E17:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00A_5E1B:
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
    jr nz, jr_00A_5E7B

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00A_5EA9

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
    ld a, [bc]
    db $E4

jr_00A_5E4E:
    ld e, d
    sbc a
    ld [hl], e

jr_00A_5E51:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00A_5EBE

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00A_5ECD

    ld h, c
    halt

jr_00A_5E67:
    ld h, l
    jr nz, jr_00A_5EDD

jr_00A_5E6A:
    ld h, l
    ld [hl], h
    jr nz, jr_00A_5ECF

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00A_5ECC

    ld h, e
    ld l, a

jr_00A_5E7B:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00A_5EF4

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
    jr nz, jr_00A_5EE5

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$79

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_00A_5EFF

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

jr_00A_5EA9:
    xor l
    ld [hl], e
    and c
    ld bc, $A132
    and c
    ld c, b
    ld a, [bc]
    db $E4
    ld e, d
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e

jr_00A_5EBE:
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld l, $54
    inc de
    ld h, a
    sub h
    ld c, [hl]

jr_00A_5ECC:
    dec b

jr_00A_5ECD:
    nop
    inc [hl]

jr_00A_5ECF:
    ld h, e
    inc bc
    ld a, [bc]
    rst $18
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a

jr_00A_5EDD:
    add a
    ld h, a
    rlca
    ld [bc], a
    inc sp
    ret nc

    ld d, b
    add hl, de

jr_00A_5EE5:
    rst $20
    ld b, [hl]
    ld a, [bc]
    ld h, l
    ld h, b
    dec b
    add hl, bc
    add a
    ld h, a
    rrca
    add hl, bc
    push de
    ret nc

    ld d, b
    add hl, de

jr_00A_5EF4:
    rst $20
    ld b, [hl]
    ld a, [bc]
    ld h, l
    ld h, b
    dec b
    inc bc
    or d
    ld l, [hl]
    dec b
    rlca

jr_00A_5EFF:
    sbc a
    ret nc

    ld d, [hl]
    add hl, de
    add hl, hl
    ld c, b
    add hl, de
    inc hl
    ld d, b
    dec b
    inc b
    pop hl
    ld [hl], b
    rlca
    ld [$D0B7], sp
    nop
    ld a, [bc]
    cp $60
    ld a, [bc]
    db $10
    ld h, c
    dec b
    dec b
    pop hl
    ld [hl], b
    inc b
    inc b
    ld e, h
    ret nc

    nop
    ld a, [bc]
    cp $60
    ld a, [bc]
    db $10
    ld h, c
    dec b
    ld b, $87
    ld h, a
    db $10
    ld bc, $D026
    ld d, h
    ld a, [bc]
    rst $08
    ld e, a
    ld a, [bc]
    di
    ld e, a
    dec b
    rlca
    add a
    ld h, a
    ld de, $9506
    ret nc

    ld d, h
    ld a, [bc]
    cp c
    ld e, a
    ld a, [bc]
    add hl, de
    ld h, b
    dec b
    ld [$6787], sp
    ld de, $ED0A
    ret nc

    ld d, h
    ld a, [bc]
    cp c
    ld e, a
    ld a, [bc]
    ccf
    ld h, b
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_00A_5F9B

    nop
    add l
    nop
    ld l, [hl]
    ld [bc], a
    add hl, de
    ld [hl], b
    ld b, e
    ld b, b
    add l
    nop
    ld l, [hl]
    jr nc, @+$1B

    jr nc, jr_00A_5FA8

    ld h, b
    add l
    nop
    dec bc
    nop
    or l
    dec hl
    and b
    ei
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
    add [hl]
    sbc b
    or e
    daa
    and d
    dec b
    or l
    ld a, [hl+]
    and b
    rst $30
    sbc e
    ld a, [bc]
    sub b
    ld e, a
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

jr_00A_5F9B:
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

jr_00A_5FA8:
    ld [hl], h
    rst $38
    jr nz, jr_00A_5FF1

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    ld a, [bc]
    push de
    ld h, b
    ld a, [bc]
    di
    ld e, d
    ld b, l
    dec d
    ld de, $75A4
    jr nc, jr_00A_5FD0

    cp b
    ld [hl], l
    jr nz, @+$13

    xor [hl]
    ld [hl], l
    jr nc, @+$13

    sbc d
    ld [hl], l
    jr nz, jr_00A_5FCB

jr_00A_5FCB:
    ld c, b
    ld a, [bc]
    cp c
    ld e, a
    dec d

jr_00A_5FD0:
    ld de, $75AE
    ld [$EA11], sp
    ld [hl], l
    ld [$AE11], sp
    ld [hl], l
    ld [$1500], sp
    ld de, $759A
    jr nz, jr_00A_5FF4

    and h
    ld [hl], l
    jr nc, jr_00A_5FF8

    cp b
    ld [hl], l
    jr nz, @+$13

    xor [hl]
    ld [hl], l
    jr nc, jr_00A_5FEF

jr_00A_5FEF:
    ld c, b
    ld a, [bc]

jr_00A_5FF1:
    db $DD
    ld e, a
    or e

jr_00A_5FF4:
    ld sp, $01C7
    ld b, [hl]

jr_00A_5FF8:
    nop
    ld a, [hl+]
    and b
    ld [$9F0A], sp
    ld h, b
    dec b
    dec d
    ld hl, sp+$4A
    nop
    nop
    nop
    ret nc

    ld d, h
    ld de, $75EA
    add hl, de
    rst $20
    ld b, [hl]
    dec bc
    dec d
    jr @+$52

    ld b, $15
    ld b, $48
    ld a, [bc]
    ld h, l
    ld h, b
    or e
    ld sp, $01C7
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [$9F0A], sp
    ld h, b
    dec b
    dec d
    ld hl, sp+$4A
    nop
    nop
    nop
    ret nc

    ld d, h
    ld de, $75EA
    add hl, de
    rst $20
    ld b, [hl]
    dec bc
    dec d
    jr jr_00A_6088

    ld b, $15
    rlca
    ld c, b
    ld a, [bc]
    ld h, l
    ld h, b
    or e
    ld sp, $01C7
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [$9F0A], sp
    ld h, b
    dec b
    dec d
    ld hl, sp+$4A
    nop
    nop
    nop
    ret nc

    ld d, h
    ld de, $75EA
    add hl, de
    rst $20
    ld b, [hl]
    dec bc
    dec d
    jr jr_00A_60AE

    ld b, $15
    ld [$0A48], sp
    ld h, l
    ld h, b
    or e
    ld sp, $01C7
    ld c, e
    ld e, $1D
    ld l, c
    sbc b
    ld a, b
    inc d
    ld a, l
    rrca
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    ld a, [bc]
    sub l
    ld h, b
    ld c, [hl]
    ld bc, $C9D8
    ld a, [bc]
    nop
    nop
    and l
    ld h, b
    ld a, [bc]
    ld bc, $B100

jr_00A_6088:
    ld h, b
    ld a, [bc]
    ld [bc], a
    nop
    cp l
    ld h, b
    ld a, [bc]
    inc bc
    nop
    ret


    ld h, b
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_00A_609B

jr_00A_609B:
    ld c, b
    ld a, [bc]
    push de
    ld h, b
    inc c
    nop
    ld c, b
    ld a, [bc]
    push de
    ld h, b
    dec d
    ld de, $74CF
    jr nz, jr_00A_60AB

jr_00A_60AB:
    inc c
    nop
    ld c, b

jr_00A_60AE:
    ld a, [bc]
    push de
    ld h, b
    dec d
    ld de, $7498
    jr nz, jr_00A_60B7

jr_00A_60B7:
    inc c
    nop
    ld c, b
    ld a, [bc]
    push de
    ld h, b
    dec d
    ld de, $74A2
    jr nz, jr_00A_60C3

jr_00A_60C3:
    inc c
    nop
    ld c, b
    ld a, [bc]
    push de
    ld h, b
    dec d
    ld de, $748E
    jr nz, jr_00A_60CF

jr_00A_60CF:
    inc c
    nop
    ld c, b
    ld a, [bc]
    push de
    ld h, b
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld e, $08
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, @+$08

    ld a, d
    jr nz, jr_00A_615F

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0A
    ld a, [$AD60]
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $0A48
    cp b
    ld e, [hl]
    ld a, [de]
    cp $46
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
    add c
    db $FD
    add hl, de
    or e
    ld sp, $01C7
    ld c, e
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    ld a, [bc]
    sub l
    ld h, b
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
    jr nz, jr_00A_6193

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00A_619C

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld a, [bc]
    ld a, d
    ld h, c
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_61C3

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_61CD

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00A_61BB

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b

jr_00A_615F:
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    scf
    and b
    ld [bc], a
    dec b
    nop
    ld a, [bc]
    or [hl]
    ld h, c
    and c
    xor l
    ld [hl], h
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    rst $28
    ld e, d
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_61F3

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_61FD

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_6201

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00A_61C4

    dec [hl]

jr_00A_6193:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00A_619C:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    scf
    and b
    ld [bc], a
    dec b
    nop
    ld a, [bc]
    or [hl]
    ld h, c
    and c
    xor l
    ld [hl], h
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    rst $28
    ld e, d
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00A_61BB:
    ld bc, $A174
    ld a, [bc]
    dec [hl]
    ld h, d
    sbc a
    ld [hl], h

jr_00A_61C3:
    and c

jr_00A_61C4:
    ld b, [hl]
    rrca
    ld bc, $A174
    dec b
    ld bc, $FB0A

jr_00A_61CD:
    ld h, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00A_6237

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
    jr nz, jr_00A_6234

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_6250

    ld [hl], e
    cp $FC
    jr nz, jr_00A_624D

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00A_61F3:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld a, [bc]
    rst $28
    ld e, d
    and [hl]
    ld d, h

jr_00A_61FD:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00A_6201:
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
    jr nz, jr_00A_6261

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00A_628F

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
    ld a, [bc]
    rst $28

jr_00A_6234:
    ld e, d
    sbc a
    ld [hl], h

jr_00A_6237:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00A_62A4

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00A_62B3

    ld h, c
    halt

jr_00A_624D:
    ld h, l
    jr nz, jr_00A_62C3

jr_00A_6250:
    ld h, l
    ld [hl], h
    jr nz, jr_00A_62B5

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_00A_62A2

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00A_62B2

    ld h, e
    ld l, a

jr_00A_6261:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00A_62DA

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
    jr nz, jr_00A_62CB

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$79

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_00A_62E5

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

jr_00A_628F:
    xor l
    ld [hl], h
    and c
    ld bc, $A132
    and c
    ld c, b
    ld a, [bc]
    rst $28
    ld e, d
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop

jr_00A_62A2:
    and [hl]
    ld e, c

jr_00A_62A4:
    ld l, a
    ld [hl], l
    jr nz, jr_00A_630E

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld h, c
    jr nz, jr_00A_6303

    ld b, l
    ld b, e

jr_00A_62B2:
    ld d, d

jr_00A_62B3:
    ld b, l
    ld d, h

jr_00A_62B5:
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld a, [bc]
    push af
    ld h, d
    sbc a

jr_00A_62C3:
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_633E

    ld l, a

jr_00A_62CB:
    ld l, a
    ld l, e
    jr nz, jr_00A_6348

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00A_6336

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b

jr_00A_62DA:
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    scf
    and b
    ld [bc], a

jr_00A_62E5:
    dec b
    nop
    ld a, [bc]
    ld sp, $A163
    xor l
    ld [hl], h
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    ld a, [$A65A]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_636E

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_6378

    ld l, a
    ld [hl], l
    rst $38
    ld l, l

jr_00A_6303:
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_637C

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00A_633F

    dec [hl]

jr_00A_630E:
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
    scf
    and b
    ld [bc], a
    dec b
    nop
    ld a, [bc]
    ld sp, $A163
    xor l
    ld [hl], h
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    ld a, [$465A]
    inc de
    ld bc, $A132

jr_00A_6336:
    ld bc, $A174
    ld a, [bc]
    or b
    ld h, e
    sbc a
    ld [hl], h

jr_00A_633E:
    and c

jr_00A_633F:
    ld b, [hl]
    rrca
    ld bc, $A174
    dec b
    ld bc, $760A

jr_00A_6348:
    ld h, e
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00A_63B2

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
    jr nz, jr_00A_63CB

    ld [hl], e
    cp $FC
    jr nz, jr_00A_63C8

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00A_636E:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld a, [bc]
    ld a, [$A65A]
    ld d, h

jr_00A_6378:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00A_637C:
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
    jr nz, jr_00A_63DC

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00A_640A

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
    ld a, [bc]
    ld a, [$9F5A]
    ld [hl], h

jr_00A_63B2:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00A_641F

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

jr_00A_63C8:
    ld h, l
    jr nz, jr_00A_643E

jr_00A_63CB:
    ld h, l
    ld [hl], h
    jr nz, jr_00A_6430

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00A_642D

    ld h, e
    ld l, a

jr_00A_63DC:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00A_6455

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
    jr nz, jr_00A_6446

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_6470

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_00A_6460

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

jr_00A_640A:
    xor l
    ld [hl], h
    and c
    ld bc, $A132
    and c
    ld c, b
    ld a, [bc]
    ld a, [$B35A]
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e

jr_00A_641F:
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    dec a
    ld d, h
    inc de
    ld l, l
    adc e
    ld [hl], a

jr_00A_642D:
    ld l, $C5
    ld d, b

jr_00A_6430:
    cpl
    ld h, a
    sbc l
    ld c, [hl]
    dec b
    nop
    inc [hl]
    ld h, e
    ld [bc], a
    dec d
    rrca

jr_00A_643B:
    jp nc, $1400

jr_00A_643E:
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    add a

jr_00A_6446:
    ld h, a
    inc de
    ld b, $A9
    ret nc

    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [bc]
    scf
    ld h, l
    dec b
    ld c, $B2

jr_00A_6455:
    ld l, [hl]
    inc bc
    dec d
    db $10
    jp nc, $1954

    ld a, e
    ld c, d
    add hl, de
    sub e

jr_00A_6460:
    ld c, d
    dec b
    rrca
    or d
    ld l, [hl]
    dec bc
    dec d
    jr jr_00A_643B

    ld d, h
    add hl, de
    push hl
    ld c, e
    add hl, de
    db $FD
    ld c, e

jr_00A_6470:
    dec b
    db $10
    or d
    ld l, [hl]
    inc b
    add hl, bc
    push hl
    ret nc

    ld d, h
    add hl, de
    ld c, a
    ld c, l
    add hl, de
    ld h, a
    ld c, l
    dec b
    ld de, $6EB2
    dec d
    dec d
    ld [hl+], a
    jp nc, $1954

    cp c
    ld c, [hl]
    add hl, de
    pop de
    ld c, [hl]
    or l
    dec hl
    and b
    ei
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_00A_64DA

    nop
    add l
    nop
    ld l, [hl]
    jr nc, jr_00A_64B6

    jr nc, jr_00A_64DF

    ld b, b
    add l
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    ld c, $0B
    rrca
    dec bc
    db $10
    dec bc
    ld de, $9886
    or e
    daa
    and d
    dec b
    or l
    ld a, [hl+]

jr_00A_64B6:
    and b
    rst $30
    sbc e
    ld a, [bc]
    cp l
    ld h, h
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    jr nz, jr_00A_64D4

    call nc, $0364
    ld c, $00
    nop
    nop
    nop
    nop
    db $FD

jr_00A_64D4:
    ld b, [hl]
    nop
    dec hl
    and b
    ld b, b
    ld a, [bc]

jr_00A_64DA:
    db $E4
    ld h, h
    inc bc
    rrca
    nop

jr_00A_64DF:
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    add b
    ld a, [bc]
    db $F4
    ld h, h
    inc bc
    stop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    inc l
    and b
    ld bc, $040A
    ld h, l
    inc bc
    ld de, $0000
    nop
    nop
    nop
    db $FD
    inc c
    ld c, $0C
    rrca
    inc c
    db $10
    inc c
    ld de, $2BB6
    and b
    inc b
    ld l, l
    adc e
    ld [hl], a
    ld l, $05
    ld d, c
    cpl
    ld a, l
    rrca
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_00A_6573

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_00A_656F

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    ld a, [bc]
    and a
    ld h, l
    ld a, [bc]
    cpl
    ld e, e
    ld b, l
    or e
    ld sp, $01C7
    ld c, e
    ld e, $1D
    ld l, c
    sbc b
    ld a, b
    inc d
    ld a, l
    rrca
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    ld a, [bc]
    ld h, a
    ld h, l
    ld c, [hl]
    ld bc, $C9D8
    ld a, [bc]
    nop
    nop
    ld [hl], a
    ld h, l
    ld a, [bc]
    ld bc, $8300
    ld h, l
    ld a, [bc]
    ld [bc], a
    nop
    adc a
    ld h, l
    ld a, [bc]
    inc bc
    nop
    sbc e
    ld h, l
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_00A_656D

jr_00A_656D:
    ld c, b
    ld a, [bc]

jr_00A_656F:
    and a
    ld h, l
    inc c
    nop

jr_00A_6573:
    ld c, b
    ld a, [bc]
    and a
    ld h, l
    dec d
    ld de, $74CF
    jr nz, jr_00A_657D

jr_00A_657D:
    inc c
    nop
    ld c, b
    ld a, [bc]
    and a
    ld h, l
    dec d
    ld de, $7498
    jr nz, jr_00A_6589

jr_00A_6589:
    inc c
    nop
    ld c, b
    ld a, [bc]
    and a
    ld h, l
    dec d
    ld de, $74A2
    jr nz, jr_00A_6595

jr_00A_6595:
    inc c
    nop
    ld c, b
    ld a, [bc]
    and a
    ld h, l
    dec d
    ld de, $748E
    jr nz, jr_00A_65A1

jr_00A_65A1:
    inc c
    nop
    ld c, b
    ld a, [bc]
    and a
    ld h, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld e, $08
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, @+$08

    ld a, d
    jr nz, jr_00A_6631

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0A
    call z, $AD65
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $0A48
    add hl, de
    ld h, h
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    jr nz, jr_00A_65E8

    add sp, $65
    inc bc
    ld c, $00
    nop
    nop
    nop
    nop
    db $FD

jr_00A_65E8:
    ld b, [hl]
    nop
    dec hl
    and b
    ld b, b
    ld a, [bc]
    ld hl, sp+$65
    inc bc
    rrca
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    add b
    ld a, [bc]
    ld [$0366], sp
    stop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    inc l
    and b
    ld bc, $180A
    ld h, [hl]
    inc bc
    ld de, $0000
    nop
    nop
    nop
    db $FD
    inc c
    ld c, $0C
    rrca
    inc c
    db $10
    inc c
    ld de, $2BB6
    and b
    inc b
    ld l, l
    adc e
    ld [hl], a
    ld l, $05
    ld d, c
    cpl
    ld a, l
    rrca
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l

jr_00A_6631:
    jr nz, jr_00A_6699

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00A_66A2

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld a, [bc]
    add b
    ld h, [hl]
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_66C9

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_66D3

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00A_66C1

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
    scf
    and b
    inc b
    dec b
    nop
    ld a, [bc]
    cp h
    ld h, [hl]
    and c
    xor l
    ld [hl], l
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    dec hl
    ld e, e
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_66F9

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_6703

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_6707

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00A_66CA

    dec [hl]

jr_00A_6699:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00A_66A2:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    scf
    and b
    inc b
    dec b
    nop
    ld a, [bc]
    cp h
    ld h, [hl]
    and c
    xor l
    ld [hl], l
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    dec hl
    ld e, e
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00A_66C1:
    ld bc, $A175
    ld a, [bc]
    dec sp
    ld h, a
    sbc a
    ld [hl], l

jr_00A_66C9:
    and c

jr_00A_66CA:
    ld b, [hl]
    rrca
    ld bc, $A175
    dec b
    ld bc, $010A

jr_00A_66D3:
    ld h, a
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00A_673D

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
    jr nz, jr_00A_673A

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_6756

    ld [hl], e
    cp $FC
    jr nz, jr_00A_6753

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00A_66F9:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld a, [bc]
    dec hl
    ld e, e
    and [hl]
    ld d, h

jr_00A_6703:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00A_6707:
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
    jr nz, jr_00A_6767

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00A_6795

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
    ld a, [bc]
    dec hl

jr_00A_673A:
    ld e, e
    sbc a
    ld [hl], l

jr_00A_673D:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00A_67AA

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

jr_00A_6753:
    ld h, l
    jr nz, jr_00A_67C9

jr_00A_6756:
    ld h, l
    ld [hl], h
    jr nz, jr_00A_67BB

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00A_67B8

    ld h, e
    ld l, a

jr_00A_6767:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00A_67E0

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
    jr nz, jr_00A_67D1

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_67FB

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_00A_67EB

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

jr_00A_6795:
    xor l
    ld [hl], l
    and c
    ld bc, $A132
    and c
    ld c, b
    ld a, [bc]
    dec hl
    ld e, e
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e

jr_00A_67AA:
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld e, e
    ld d, h
    inc de
    ld l, l
    adc e
    ld [hl], a

jr_00A_67B8:
    ld l, $C5
    ld d, b

jr_00A_67BB:
    cpl
    ld h, a
    and d
    ld c, [hl]
    dec b
    nop
    inc [hl]
    ld h, e
    ld [bc], a
    ld [bc], a
    inc [hl]
    ret nc

    nop
    inc d

jr_00A_67C9:
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    add a

jr_00A_67D1:
    ld h, a
    ld [$1515], sp
    jp nc, $1950

    rst $20
    ld b, [hl]
    ld a, [bc]
    jp nz, $0568

    ld c, $B2

jr_00A_67E0:
    ld l, [hl]
    rrca
    dec d
    inc e
    jp nc, $1954

    ld a, e
    ld c, d
    add hl, de
    sub e

jr_00A_67EB:
    ld c, d
    dec b
    rrca
    or d
    ld l, [hl]
    db $10
    rrca
    add a
    pop de
    ld d, h
    add hl, de
    push hl
    ld c, e
    add hl, de
    db $FD
    ld c, e

jr_00A_67FB:
    dec b
    db $10
    or d
    ld l, [hl]
    ld de, $1E15
    jp nc, $1954

    ld c, a
    ld c, l
    add hl, de
    ld h, a
    ld c, l
    dec b
    ld de, $6EB2
    inc b
    inc b
    ld l, b
    ret nc

    ld d, h
    add hl, de
    cp c
    ld c, [hl]
    add hl, de
    pop de
    ld c, [hl]
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_00A_6861

    nop
    add l
    nop
    ld l, [hl]
    jr nc, jr_00A_683D

    jr nc, jr_00A_6866

    ld b, b
    add l
    nop
    or l
    dec hl
    and b
    ei
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    ld c, $0B
    rrca
    dec bc
    db $10
    dec bc
    ld de, $9886
    or e
    daa

jr_00A_683D:
    and d
    dec b
    or l
    ld a, [hl+]
    and b
    rst $30
    sbc e
    ld a, [bc]
    ld c, b
    ld l, b
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    jr nz, jr_00A_685F

    ld e, a
    ld l, b
    inc bc
    ld c, $00
    nop
    nop
    nop
    nop
    db $FD

jr_00A_685F:
    ld b, [hl]
    nop

jr_00A_6861:
    dec hl
    and b
    ld b, b
    ld a, [bc]
    ld l, a

jr_00A_6866:
    ld l, b
    inc bc
    rrca
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    add b
    ld a, [bc]
    ld a, a
    ld l, b
    inc bc
    stop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    inc l
    and b
    ld bc, $8F0A
    ld l, b
    inc bc
    ld de, $0000
    nop
    nop
    nop
    db $FD
    inc c
    ld c, $0C
    rrca
    inc c
    db $10
    inc c
    ld de, $2BB6
    and b
    inc b
    ld l, l
    adc e
    ld [hl], a
    ld l, $05
    ld d, c
    cpl
    ld a, l
    rrca
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_00A_68FE

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_00A_68FA

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    ld a, [bc]
    ld [hl-], a
    ld l, c
    ld a, [bc]
    ld c, c
    ld e, e
    ld b, l
    or e
    ld sp, $01C7
    ld e, $1D
    ld c, e
    ld l, c
    sbc b
    ld a, b
    inc d
    ld a, l
    rrca
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    ld a, [bc]
    ld a, [c]
    ld l, b
    ld c, [hl]
    ld bc, $C9D8
    ld a, [bc]
    nop
    nop
    ld [bc], a
    ld l, c
    ld a, [bc]
    ld bc, $0E00
    ld l, c
    ld a, [bc]
    ld [bc], a
    nop
    ld a, [de]
    ld l, c
    ld a, [bc]
    inc bc
    nop
    ld h, $69
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_00A_68F8

jr_00A_68F8:
    ld c, b
    ld a, [bc]

jr_00A_68FA:
    ld [hl-], a
    ld l, c
    inc c
    nop

jr_00A_68FE:
    ld c, b
    ld a, [bc]
    ld [hl-], a
    ld l, c
    dec d
    ld de, $74CF
    jr nz, jr_00A_6908

jr_00A_6908:
    inc c
    nop
    ld c, b
    ld a, [bc]
    ld [hl-], a
    ld l, c
    dec d
    ld de, $7498
    jr nz, jr_00A_6914

jr_00A_6914:
    inc c
    nop
    ld c, b
    ld a, [bc]
    ld [hl-], a
    ld l, c
    dec d
    ld de, $74A2
    jr nz, jr_00A_6920

jr_00A_6920:
    inc c
    nop
    ld c, b
    ld a, [bc]
    ld [hl-], a
    ld l, c
    dec d
    ld de, $748E
    jr nz, jr_00A_692C

jr_00A_692C:
    inc c
    nop
    ld c, b
    ld a, [bc]
    ld [hl-], a
    ld l, c
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld e, $08
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, @+$08

    ld a, d
    jr nz, jr_00A_69BC

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0A
    ld d, a
    ld l, c
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $0A48
    and h
    ld h, a
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    jr nz, jr_00A_6973

    ld [hl], e
    ld l, c
    inc bc
    ld c, $00
    nop
    nop
    nop
    nop
    db $FD

jr_00A_6973:
    ld b, [hl]
    nop
    dec hl
    and b
    ld b, b
    ld a, [bc]
    add e
    ld l, c
    inc bc
    rrca
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    add b
    ld a, [bc]
    sub e
    ld l, c
    inc bc
    stop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    inc l
    and b
    ld bc, $A30A
    ld l, c
    inc bc
    ld de, $0000
    nop
    nop
    nop
    db $FD
    inc c
    ld c, $0C
    rrca
    inc c
    db $10
    inc c
    ld de, $2BB6
    and b
    inc b
    ld l, l
    adc e
    ld [hl], a
    ld l, $05
    ld d, c
    cpl
    ld a, l
    rrca
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l

jr_00A_69BC:
    jr nz, jr_00A_6A24

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00A_6A2D

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld a, [bc]
    dec bc
    ld l, d
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_6A54

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_6A5E

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00A_6A4C

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
    scf
    and b
    ld [$0005], sp
    ld a, [bc]
    ld b, a
    ld l, d
    and c
    xor l
    halt
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    ld [hl], $5B
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_6A84

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_6A8E

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_6A92

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00A_6A55

    dec [hl]

jr_00A_6A24:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00A_6A2D:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    scf
    and b
    ld [$0005], sp
    ld a, [bc]
    ld b, a
    ld l, d
    and c
    xor l
    halt
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    ld [hl], $5B
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00A_6A4C:
    ld bc, $A176
    ld a, [bc]
    add $6A
    sbc a
    halt

jr_00A_6A54:
    and c

jr_00A_6A55:
    ld b, [hl]
    rrca
    ld bc, $A176
    dec b
    ld bc, $8C0A

jr_00A_6A5E:
    ld l, d
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00A_6AC8

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
    jr nz, jr_00A_6AE1

    ld [hl], e
    cp $FC
    jr nz, jr_00A_6ADE

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00A_6A84:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld a, [bc]
    ld [hl], $5B
    and [hl]
    ld d, h

jr_00A_6A8E:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00A_6A92:
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
    jr nz, jr_00A_6AF2

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00A_6B20

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
    ld a, [bc]
    ld [hl], $5B
    sbc a
    halt

jr_00A_6AC8:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00A_6B35

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00A_6B44

    ld h, c
    halt

jr_00A_6ADE:
    ld h, l
    jr nz, jr_00A_6B54

jr_00A_6AE1:
    ld h, l
    ld [hl], h
    jr nz, jr_00A_6B46

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00A_6B43

    ld h, e
    ld l, a

jr_00A_6AF2:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00A_6B6B

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
    jr nz, jr_00A_6B5C

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_6B86

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_00A_6B76

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

jr_00A_6B20:
    xor l
    halt
    and c
    ld bc, $A132
    and c
    ld c, b
    ld a, [bc]
    ld [hl], $5B
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e

jr_00A_6B35:
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld l, d
    ld d, h
    inc de
    ld h, a
    and a
    ld c, [hl]

jr_00A_6B43:
    dec b

jr_00A_6B44:
    nop
    inc [hl]

jr_00A_6B46:
    ld h, e
    ld bc, $EB12
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a

jr_00A_6B54:
    add a
    ld h, a
    inc b
    inc c
    and b
    ret nc

    inc b
    ld a, [bc]

jr_00A_6B5C:
    call c, $0A6B
    ld h, h
    ld l, h
    dec b
    inc bc
    add a
    ld h, a
    add hl, bc
    add hl, bc
    ld a, [hl]
    ret nc

    inc b
    ld a, [bc]

jr_00A_6B6B:
    ld hl, sp+$6B
    ld a, [bc]
    adc d
    ld l, h
    dec b
    inc b
    add a
    ld h, a
    inc b
    inc bc

jr_00A_6B76:
    dec hl
    ret nc

    inc b
    ld a, [bc]
    inc d
    ld l, h
    ld a, [bc]
    or b
    ld l, h
    dec b
    dec b
    add a
    ld h, a
    rlca
    ld c, $BD

jr_00A_6B86:
    ret nc

    inc b
    ld a, [bc]
    ld c, b
    ld l, h
    ld a, [bc]
    sub $6C
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
    add [hl]
    ld l, [hl]
    inc b
    add hl, de
    jr nc, @+$45

    nop
    add b
    nop
    ld l, [hl]
    ld [bc], a
    add hl, de
    ld [hl], b
    ld b, e
    ld b, b
    add b
    nop
    sbc b
    or e
    daa
    and d
    ld bc, $2AB5
    and b
    rst $30
    sbc e
    ld a, [bc]
    or a
    ld l, e
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
    jr nz, jr_00A_6C18

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_00A_6C14

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    ld a, [bc]
    ld l, b
    ld l, l
    ld a, [bc]
    ld h, b
    ld e, e
    ld b, l
    dec d
    ld de, $75A4
    jr nc, jr_00A_6BE2

jr_00A_6BE2:
    dec d
    ld de, $75B8
    jr nz, jr_00A_6BE8

jr_00A_6BE8:
    dec d
    ld de, $75AE
    jr nc, jr_00A_6BEE

jr_00A_6BEE:
    dec d
    ld de, $759A
    jr nz, jr_00A_6BF4

jr_00A_6BF4:
    ld c, b
    ld a, [bc]
    call c, $156B
    ld de, $759A
    jr nc, jr_00A_6BFE

jr_00A_6BFE:
    dec d
    ld de, $75A4
    jr nz, jr_00A_6C04

jr_00A_6C04:
    dec d
    ld de, $75B8
    jr nc, jr_00A_6C0A

jr_00A_6C0A:
    dec d
    ld de, $75AE
    jr nz, jr_00A_6C10

jr_00A_6C10:
    ld c, b
    ld a, [bc]
    ld hl, sp+$6B

jr_00A_6C14:
    dec d
    ld de, $75AE

jr_00A_6C18:
    jr nc, jr_00A_6C1A

jr_00A_6C1A:
    dec d
    ld de, $75B8
    jr nz, jr_00A_6C20

jr_00A_6C20:
    dec d
    ld de, $75A4
    jr nz, jr_00A_6C26

jr_00A_6C26:
    dec d
    ld de, $759A
    jr nz, jr_00A_6C2C

jr_00A_6C2C:
    dec d
    ld de, $75AE
    stop
    dec d
    ld de, $759A
    jr nz, jr_00A_6C38

jr_00A_6C38:
    dec d
    ld de, $75A4
    jr nz, jr_00A_6C3E

jr_00A_6C3E:
    dec d
    ld de, $75B8
    jr nz, jr_00A_6C44

jr_00A_6C44:
    ld c, b
    ld a, [bc]
    inc d
    ld l, h
    dec d
    ld de, $75AE
    ld h, b
    nop
    dec d
    ld de, $759A
    jr nz, jr_00A_6C54

jr_00A_6C54:
    dec d
    ld de, $75A4
    ld h, b
    nop
    dec d
    ld de, $75B8
    jr nz, jr_00A_6C60

jr_00A_6C60:
    ld c, b
    ld a, [bc]
    ld c, b
    ld l, h
    or e
    ld sp, $01C7
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [$320A], sp
    ld l, l
    dec b
    dec d
    ld hl, sp+$4A
    nop
    nop
    nop
    ret nc

    inc b
    ld de, $75EA
    add hl, de
    rst $20
    ld b, [hl]
    dec bc
    dec d
    jr jr_00A_6C83

jr_00A_6C83:
    ld b, $15
    ld [bc], a
    ld c, b
    ld a, [bc]
    ld hl, sp+$6C
    or e
    ld sp, $01C7
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [$320A], sp
    ld l, l
    dec b
    dec d
    ld hl, sp+$4A
    nop
    nop
    nop
    ret nc

    inc b
    ld de, $75EA
    add hl, de
    rst $20
    ld b, [hl]
    dec bc
    dec d
    jr jr_00A_6CA9

jr_00A_6CA9:
    ld b, $15
    inc bc
    ld c, b
    ld a, [bc]
    ld hl, sp+$6C
    or e
    ld sp, $01C7
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [$320A], sp
    ld l, l
    dec b
    dec d
    ld hl, sp+$4A
    nop
    nop
    nop
    ret nc

    inc b
    ld de, $75EA
    add hl, de
    rst $20
    ld b, [hl]
    dec bc
    dec d
    jr jr_00A_6CCF

jr_00A_6CCF:
    ld b, $15
    inc b
    ld c, b
    ld a, [bc]
    ld hl, sp+$6C
    or e
    ld sp, $01C7
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [$320A], sp
    ld l, l
    dec b
    dec d
    ld hl, sp+$4A
    nop
    nop
    nop
    ret nc

    inc b
    ld de, $75EA
    add hl, de
    rst $20
    ld b, [hl]
    dec bc
    dec d
    jr jr_00A_6CF5

jr_00A_6CF5:
    ld b, $15
    dec b
    or e
    ld sp, $01C7
    ld c, e
    ld e, $1D
    ld l, c
    sbc b
    ld a, b
    inc d
    ld a, l
    rrca
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    ld a, [bc]
    jr z, jr_00A_6D7B

    ld c, [hl]
    ld bc, $C9D8
    ld a, [bc]
    nop
    nop
    jr c, jr_00A_6D84

    ld a, [bc]
    ld bc, $4400
    ld l, l
    ld a, [bc]
    ld [bc], a
    nop
    ld d, b
    ld l, l
    ld a, [bc]
    inc bc
    nop
    ld e, h
    ld l, l
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_00A_6D2E

jr_00A_6D2E:
    ld c, b
    ld a, [bc]
    ld l, b
    ld l, l
    inc c
    nop
    ld c, b
    ld a, [bc]
    ld l, b
    ld l, l
    dec d
    ld de, $74CF
    jr nz, jr_00A_6D3E

jr_00A_6D3E:
    inc c
    nop
    ld c, b
    ld a, [bc]
    ld l, b
    ld l, l
    dec d
    ld de, $7498
    jr nz, jr_00A_6D4A

jr_00A_6D4A:
    inc c
    nop
    ld c, b
    ld a, [bc]
    ld l, b
    ld l, l
    dec d
    ld de, $74A2
    jr nz, jr_00A_6D56

jr_00A_6D56:
    inc c
    nop
    ld c, b
    ld a, [bc]
    ld l, b
    ld l, l
    dec d
    ld de, $748E
    jr nz, jr_00A_6D62

jr_00A_6D62:
    inc c
    nop
    ld c, b
    ld a, [bc]
    ld l, b
    ld l, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld e, $08
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, @+$08

    ld a, d
    jr nz, jr_00A_6DF2

    ld b, [hl]

jr_00A_6D7B:
    ld de, $3201
    and c
    dec b
    cp $0A
    adc l
    ld l, l

jr_00A_6D84:
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $0A48
    cpl
    ld l, e
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
    jr nz, jr_00A_6E05

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00A_6E0E

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld a, [bc]
    db $EC
    ld l, l
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_6E35

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00A_6E3F

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00A_6E2D

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
    scf
    and b
    db $10
    dec b
    nop
    ld a, [bc]
    jr z, jr_00A_6E4F

    and c
    xor l
    ld [hl], a
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    ld d, b
    ld e, e
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00A_6E65

    ld l, a

jr_00A_6DF2:
    ld l, a
    ld l, e
    jr nz, jr_00A_6E6F

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_6E73

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00A_6E36

    dec [hl]

jr_00A_6E05:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00A_6E0E:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    scf
    and b
    db $10
    dec b
    nop
    ld a, [bc]
    jr z, @+$70

    and c
    xor l
    ld [hl], a
    and c
    ld bc, $A132
    ld c, b
    ld a, [bc]
    ld d, b
    ld e, e
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00A_6E2D:
    ld bc, $A177
    ld a, [bc]
    and a
    ld l, [hl]
    sbc a
    ld [hl], a

jr_00A_6E35:
    and c

jr_00A_6E36:
    ld b, [hl]
    rrca
    ld bc, $A177
    dec b
    ld bc, $6D0A

jr_00A_6E3F:
    ld l, [hl]
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00A_6EA9

    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c

jr_00A_6E4F:
    ld h, a
    ld l, b
    jr nz, jr_00A_6EA6

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00A_6EC2

    ld [hl], e
    cp $FC
    jr nz, jr_00A_6EBF

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00A_6E65:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld a, [bc]
    ld d, b
    ld e, e
    and [hl]
    ld d, h

jr_00A_6E6F:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00A_6E73:
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
    jr nz, jr_00A_6ED3

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00A_6F01

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
    ld a, [bc]
    ld d, b

jr_00A_6EA6:
    ld e, e
    sbc a
    ld [hl], a

jr_00A_6EA9:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00A_6F16

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00A_6F25

    ld h, c
    halt

jr_00A_6EBF:
    ld h, l
    jr nz, jr_00A_6F35

jr_00A_6EC2:
    ld h, l
    ld [hl], h
    jr nz, jr_00A_6F27

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_00A_6F14

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00A_6F24

    ld h, e
    ld l, a

jr_00A_6ED3:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00A_6F4C

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
    jr nz, jr_00A_6F3D

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

jr_00A_6F01:
    xor l
    ld [hl], a
    and c
    ld bc, $A132
    and c
    ld c, b
    ld a, [bc]
    ld d, b
    ld e, e
    or [hl]
    dec hl
    and b
    ld [$2BB6], sp
    and b
    db $10

jr_00A_6F14:
    sub a
    or e

jr_00A_6F16:
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
    ld [hl+], a
    ld d, c

jr_00A_6F24:
    inc de

jr_00A_6F25:
    dec b
    nop

jr_00A_6F27:
    ld hl, sp+$4A
    add hl, bc
    db $10
    ret


    ret nc

    nop
    ld a, [bc]
    dec c
    ld [hl], b
    add hl, de
    add sp, $46
    dec b

jr_00A_6F35:
    inc bc
    ld hl, sp+$4A
    ld b, $11
    jp nc, $00D0

jr_00A_6F3D:
    ld a, [bc]
    rst $00
    ld l, a
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    ld bc, $B50F
    ret nc

    nop

jr_00A_6F4C:
    ld a, [bc]
    push hl
    ld l, a
    add hl, de
    add sp, $46
    dec b
    dec b
    ld hl, sp+$4A
    ld b, $0B
    adc d
    ret nc

    nop
    ld a, [bc]
    inc bc
    ld [hl], b
    add hl, de
    add sp, $46
    dec b
    ld b, $F8
    ld c, d
    ld [$980C], sp
    ret nc

    nop
    ld a, [bc]
    ld [$1970], sp

jr_00A_6F6E:
    add sp, $46
    dec b
    rlca
    ld hl, sp+$4A
    add hl, bc
    dec b
    ld b, l
    ret nc

    nop
    ld de, $75F4
    add hl, de
    add sp, $46
    dec b
    ld [$4AF8], sp
    inc bc
    ld b, $4B
    ret nc

    nop
    ld de, $75F4
    add hl, de
    add sp, $46
    ld d, e
    call Call_00A_50C2
    ld e, h
    jr nz, jr_00A_6F9F

    db $FD
    ld [hl], e
    dec bc
    nop
    dec bc
    inc bc
    dec bc
    inc b
    dec bc
    dec b

jr_00A_6F9F:
    dec bc
    ld b, $0B
    rlca
    dec bc
    inc c
    ld l, [hl]
    jr nz, @+$1B

    ldh [rSCX], a
    nop
    add b
    nop
    ld l, [hl]
    rlca
    inc c
    ret nz

    ld b, b
    nop
    add d
    nop
    add [hl]
    sbc b
    sbc e
    ld a, [bc]
    cp h
    ld l, a
    ld b, l
    or e
    inc [hl]
    rst $00
    nop
    ld bc, $1306
    ld c, b
    jr jr_00A_6F6E

    ld e, l
    inc d
    ld de, $75F4
    ld e, a
    nop
    ld [bc], a
    dec d
    ld de, $75F4
    inc b
    ld de, $769C
    jr jr_00A_6FE9

    db $F4
    ld [hl], l
    jr jr_00A_6FED

    jp $1876


    ld de, $75F4
    nop
    nop
    ld b, l
    inc d
    ld de, $75F4

jr_00A_6FE9:
    ld e, a
    ld bc, $1502

jr_00A_6FED:
    ld de, $75F4
    inc b
    ld de, $764E
    jr z, jr_00A_7007

    db $F4
    ld [hl], l
    jr @+$13

    ld [hl], l
    halt
    jr z, jr_00A_700F

    db $F4
    ld [hl], l
    nop
    nop
    ld b, l
    inc d
    ld de, $75F4

jr_00A_7007:
    ld b, l
    inc d
    ld de, $75F4
    ld b, l
    dec d
    inc d

jr_00A_700F:
    xor e
    ld e, l
    jr nz, jr_00A_7027

    and c
    ld e, l
    jr nz, @+$16

    daa
    ld e, l
    ld [$FD14], sp
    ld e, h
    db $10
    inc d
    daa
    ld e, l
    ld [$A114], sp
    ld e, l
    stop

jr_00A_7027:
    ld e, a
    nop
    ld [bc], a
    ld d, $14
    daa
    ld e, l
    db $10
    cp $00
    nop
    ld e, a
    ld bc, $1502
    inc d
    dec c
    ld e, l
    stop
    ld d, $14
    daa
    ld e, l

jr_00A_703F:
    jr jr_00A_703F

    nop
    inc d
    db $FD
    ld e, h
    stop
    cp $00
    dec d
    inc d
    sub a
    ld e, l
    jr nz, jr_00A_7063

    db $DD
    ld e, l
    jr nz, @+$16

    or l
    ld e, l
    jr nz, jr_00A_706B

    sub a
    ld e, l
    jr nz, jr_00A_705B

jr_00A_705B:
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00

jr_00A_7063:
    nop
    ld l, b
    ld sp, $1351
    ld l, c
    ld e, b
    ld a, b

jr_00A_706B:
    inc d
    dec b
    nop
    ld hl, sp+$4A
    ld bc, $4017
    jp nc, $0A00

    dec b
    ld [hl], c
    add hl, de
    add sp, $46
    dec b
    inc b
    pop hl
    ld [hl], b
    inc b
    rla
    ld b, e
    jp nc, $0A00

    ld e, l
    ld [hl], c
    jr jr_00A_70E6

    ld a, h
    dec b
    dec b
    pop hl
    ld [hl], b
    dec b
    rla
    ld b, h
    jp nc, $1100

    adc d
    ld [hl], a
    jr jr_00A_70F5

    ld a, h
    dec b
    ld b, $E1
    ld [hl], b
    add hl, bc
    db $10
    sbc c
    pop de
    nop
    ld de, $778A
    jr jr_00A_7104

    ld a, h
    dec b
    rlca
    pop hl
    ld [hl], b

jr_00A_70AC:
    add hl, bc
    ld [de], a
    set 2, c
    nop
    ld de, $778A
    jr jr_00A_7113

    ld a, h
    dec b
    ld [$70E1], sp
    ld [bc], a
    ld c, $60
    pop de
    nop
    ld de, $778A
    jr jr_00A_7122

    ld a, h
    ld d, e
    call Call_00A_50C2
    ld e, h
    jr nz, @+$0C

    db $FD
    ld [hl], e
    dec bc
    nop
    dec bc
    inc b
    dec bc
    dec b
    dec bc
    ld b, $0B
    rlca
    dec bc
    ld [$0C0B], sp
    ld l, [hl]
    dec bc
    add hl, de
    ldh [rLYC], a
    nop
    add b
    nop
    ld l, [hl]

jr_00A_70E6:
    rlca
    inc c
    ret nz

    ld b, b
    nop
    add d
    nop
    add [hl]
    sbc b
    sbc e
    ld a, [bc]
    ld a, [$5F70]
    ld [bc], a

jr_00A_70F5:
    inc bc
    ld c, b
    add hl, de
    ld e, a
    ld b, a
    or e
    inc [hl]
    rst $00
    nop
    ld bc, $1306
    ld c, b
    jr jr_00A_70AC

jr_00A_7104:
    ld e, l
    dec d
    inc d
    and c
    ld e, l
    jr nz, jr_00A_711F

    db $FD
    ld e, h
    db $10
    inc d
    or l
    ld e, l
    jr nz, jr_00A_7127

jr_00A_7113:
    db $DD
    ld e, l
    jr nz, @+$16

    dec c
    ld e, l
    db $10
    inc d
    ld b, c
    ld e, l
    inc bc
    nop

jr_00A_711F:
    ld e, a
    nop
    ld [bc], a

jr_00A_7122:
    dec d
    inc d
    db $FD
    ld e, h
    ld [de], a

jr_00A_7127:
    inc d
    or l
    ld e, l
    jr nz, jr_00A_7140

    sub a
    ld e, l
    jr nz, jr_00A_7144

    or l
    ld e, l
    jr nz, @+$16

    ret


    ld e, l
    jr nz, jr_00A_7138

jr_00A_7138:
    ld e, a
    ld bc, $1502
    inc d
    dec c
    ld e, l
    ld [de], a

jr_00A_7140:
    inc d
    ld b, c
    ld e, l
    db $10

jr_00A_7144:
    inc d
    db $FD
    ld e, h
    ld [$4114], sp
    ld e, l
    ld [$FD14], sp
    ld e, h
    db $10
    inc d
    sub a
    ld e, l
    jr nz, jr_00A_7169

    or l
    ld e, l
    jr nz, jr_00A_7159

jr_00A_7159:
    ld e, a
    ld [bc], a
    inc bc
    ld b, l
    inc d

jr_00A_715E:
    ld de, $778A
    ld e, a
    nop
    ld [bc], a
    add h
    ld d, $02
    jr z, @-$2C

jr_00A_7169:
    pop bc
    ei
    dec d
    ld de, $781E
    jr nz, jr_00A_7182

    adc d
    ld [hl], a
    db $10
    ld de, $77DE

jr_00A_7177:
    ld b, b
    ld de, $778A
    nop
    nop
    add h
    ld d, $02
    jr z, @-$2C

jr_00A_7182:
    pop bc
    ld a, [$015F]
    ld [bc], a
    add h
    ld d, $02
    jr z, jr_00A_715E

    pop bc
    ei
    dec d
    ld de, $781E
    jr nz, jr_00A_71A5

    adc d
    ld [hl], a
    db $10
    ld de, $77DE
    ld b, b
    ld de, $778A
    nop
    nop
    add h
    ld d, $02
    jr z, jr_00A_7177

jr_00A_71A5:
    pop bc
    ld a, [$025F]
    inc bc
    ld b, l
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or l
    dec hl
    and b
    rst $28
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld b, b
    ld d, c
    inc de
    dec b
    nop
    ld hl, sp+$4A
    ld c, $04
    add [hl]
    ret nc

    nop
    ld a, [bc]
    jr z, jr_00A_723E

    add hl, de
    add sp, $46

jr_00A_71CF:
    dec b
    ld [bc], a
    ld hl, sp+$4A
    ld a, [bc]
    add hl, bc
    jr @-$2D

    nop
    ld a, [bc]
    ld [hl], c
    ld [hl], d
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    inc c
    add hl, bc
    ld a, [de]
    pop de
    jr nc, jr_00A_71F2

    sbc h
    ld [hl], d
    add hl, de
    add sp, $46
    ld d, e
    call Call_00A_50C2
    ld e, h

jr_00A_71F2:
    ld h, b
    ld a, [bc]
    db $FD
    ld [hl], e
    ld l, [hl]
    jr nc, jr_00A_7206

    and b
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_00A_720E

    ret nc

    ld b, e
    nop
    add e
    nop

jr_00A_7206:
    ld l, [hl]
    rlca
    inc c
    ret nz

    ld b, b
    nop
    add [hl]
    nop

jr_00A_720E:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc c
    add [hl]
    sbc b
    sbc e
    ld a, [bc]
    dec e
    ld [hl], d
    ld b, l
    or e
    inc [hl]
    rst $00
    nop
    ld bc, $1306
    ld c, b
    jr jr_00A_71CF

    ld e, l
    ld d, $14
    ld c, l
    ld e, h
    jr nz, jr_00A_722E

jr_00A_722E:
    ld bc, $1500
    inc d
    and c
    ld e, l
    jr nz, jr_00A_724A

    ld l, l
    ld e, h
    jr nz, jr_00A_724E

    ld c, l
    ld e, h
    db $10
    inc d

jr_00A_723E:
    and c
    ld e, l
    nop
    nop
    ld e, a
    nop
    inc bc
    dec d
    inc d
    and c
    ld e, l
    ld d, b

jr_00A_724A:
    inc d
    cp a
    ld e, l
    ld [bc], a

jr_00A_724E:
    inc d
    xor e
    ld e, l
    ld b, b
    inc d
    cp a
    ld e, l
    ld [bc], a
    inc d
    and c
    ld e, l
    stop
    ld e, a
    ld bc, $1503
    inc d
    and c
    ld e, l
    db $10
    inc d
    cp a
    ld e, l
    jr jr_00A_727C

    and c
    ld e, l
    db $10
    inc d
    ld c, l
    ld e, h
    jr nc, jr_00A_7270

jr_00A_7270:
    ld b, l
    inc d
    inc de
    ld a, $6D
    ld e, a
    nop
    inc bc
    dec d
    inc de
    ld d, d
    ld l, l

jr_00A_727C:
    jr nz, jr_00A_7291

    and b
    ld l, h
    jr nz, jr_00A_7295

    ld d, d
    ld l, l
    ld [bc], a
    inc de
    ld a, $6D
    nop
    nop
    ld e, a
    ld bc, $1503
    inc de
    ld h, [hl]
    ld l, l

jr_00A_7291:
    jr c, jr_00A_72A6

    ret nc

    ld l, h

jr_00A_7295:
    jr nz, jr_00A_72AA

    or b
    ld l, h
    jr nz, jr_00A_729B

jr_00A_729B:
    ld b, l
    inc d
    dec d
    ld l, [hl]
    ld a, b
    ld e, a
    nop
    inc bc
    dec d
    dec d
    add d

jr_00A_72A6:
    ld a, b
    ld [bc], a
    dec d
    ld e, d

jr_00A_72AA:
    ld a, b
    ld d, b
    dec d
    add d
    ld a, b
    ld b, b
    dec d
    ld e, d
    ld a, b
    jr nz, jr_00A_72B5

jr_00A_72B5:
    ld e, a
    ld bc, $1503
    dec d
    add d
    ld a, b
    ld [bc], a
    dec d
    ld a, [$1877]
    dec d
    adc h
    ld a, b
    jr nz, jr_00A_72DB

    ld a, b
    ld a, b
    jr nz, jr_00A_72DF

    and b
    ld a, b
    jr nz, jr_00A_72E3

    ld a, [bc]
    ld a, b
    jr jr_00A_72E7

    ld [$1877], a
    nop
    sub a
    or e
    ld sp, $00C7

jr_00A_72DB:
    or e
    inc sp
    rst $00
    nop

jr_00A_72DF:
    ld l, c
    ld e, b
    ld a, b
    inc d

jr_00A_72E3:
    ld l, b
    ld c, a
    ld d, c
    inc de

jr_00A_72E7:
    dec b
    nop
    ld hl, sp+$4A
    inc d
    dec b
    add a
    ret nc

    nop
    ld a, [bc]
    ld a, b
    ld [hl], e
    add hl, de
    add sp, $46
    dec b
    ld b, $F8
    ld c, d
    inc de
    ld [bc], a
    ld b, c
    ret nc

    nop
    ld de, $75F4
    add hl, de
    add sp, $46
    dec b
    rlca
    ld hl, sp+$4A
    dec d
    inc bc
    ld e, d
    ret nc

    nop
    ld de, $75F4
    add hl, de
    add sp, $46
    dec b
    ld [$4AF8], sp
    db $10
    dec b
    add e
    ret nc

    nop
    ld de, $75F4
    add hl, de
    add sp, $46
    dec b
    add hl, bc
    ld hl, sp+$4A
    ld de, $9B06
    ret nc

    nop
    ld de, $75F4
    add hl, de
    add sp, $46
    dec b
    dec bc
    ld hl, sp+$4A
    ld b, $0A
    db $EC
    ret nc

    nop
    ld a, [bc]
    sub $73
    add hl, de
    add sp, $46
    ld d, e
    call Call_00A_50C2
    ld e, h
    ld h, b
    ld a, [bc]
    db $FD
    ld [hl], e
    dec bc
    nop
    dec bc
    ld b, $0B
    rlca
    dec bc
    ld [$090B], sp
    dec bc
    inc c
    ld l, [hl]
    jr nz, @+$1B

    ldh [rSCX], a
    nop
    add b
    nop
    ld l, [hl]
    rlca
    inc c
    ret nz

    ld b, b
    nop
    add [hl]
    nop
    add [hl]
    sbc b
    sbc e
    ld a, [bc]
    ld l, l
    ld [hl], e
    ld b, l
    or e
    inc [hl]
    rst $00
    nop
    ld bc, $1306
    ld c, b
    jr @-$56

    ld e, l
    ld d, $14
    dec c
    ld e, l
    jr jr_00A_737E

jr_00A_737E:
    ld [bc], a
    nop
    dec d
    inc d
    daa
    ld e, l
    stop
    ld d, $14
    dec c
    ld e, l
    ld [$0200], sp
    nop
    dec d
    inc d
    daa
    ld e, l
    ld [$1600], sp
    inc d
    dec c
    ld e, l
    ld [$0200], sp
    nop
    ld d, $14
    daa
    ld e, l
    db $10
    cp $00
    inc d
    dec c
    ld e, l
    ld [$0200], sp
    inc d
    daa
    ld e, l

jr_00A_73AC:
    jr nz, jr_00A_73AC

    nop
    nop
    dec d
    inc d
    xor e
    ld e, l
    jr nz, jr_00A_73B6

jr_00A_73B6:
    dec bc
    dec bc
    dec d
    inc d
    db $FD
    ld e, h
    ld [$0D14], sp
    ld e, l
    ld [$AB14], sp
    ld e, l
    ld a, h
    inc d
    db $FD
    ld e, h
    ld [$0D14], sp
    ld e, l
    ld [$AB14], sp
    ld e, l
    jr z, jr_00A_73D2

jr_00A_73D2:
    ld c, b
    add hl, de
    ld e, a
    ld b, a
    dec d
    ld de, $75F4
    inc b
    ld de, $764E
    jr z, jr_00A_73F1

    db $F4
    ld [hl], l
    jr jr_00A_73F5

    ld [hl], l
    halt
    jr z, jr_00A_73F9

    db $F4
    ld [hl], l
    jr z, jr_00A_73FD

    ld c, [hl]
    halt
    jr z, @+$13

    db $F4

jr_00A_73F1:
    ld [hl], l
    jr jr_00A_7405

    ld [hl], l

jr_00A_73F5:
    halt
    jr z, jr_00A_7409

    db $F4

jr_00A_73F9:
    ld [hl], l
    nop
    nop
    ld b, l

jr_00A_73FD:
    ld b, e
    db $10
    inc d
    ld de, $7194
    ld b, e
    db $10

jr_00A_7405:
    inc d
    add hl, de
    rst $20
    ld b, [hl]

jr_00A_7409:
    ld b, e
    db $10
    inc d
    ld de, $7194
    ld c, b
    ld a, [bc]
    db $FD
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rrca
    nop
    rra
    nop
    ccf
    ld [bc], a
    nop
    nop
    inc d
    nop
    ld l, e
    nop
    cp $00
    db $F4
    nop
    ldh a, [rP1]
    ldh [rP1], a
    rst $00
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
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
    jr nz, jr_00A_744D

jr_00A_744D:
    stop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0707
    rrca
    rrca
    rra
    rrca
    ccf
    rra
    rra
    nop
    ld a, a
    nop
    rst $38
    xor d
    rst $38
    ld a, h
    rst $38
    ret nc

    rst $38
    add sp, -$04
    ret nz

    ldh a, [$80]
    ret nc

    nop
    ld hl, sp+$00
    rst $38
    nop
    cp $80
    rst $38
    nop
    xor d
    nop
    ld bc, $4000
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
    ret nz

    nop
    nop
    nop
    and b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0600
    inc bc
    dec c
    rlca
    jr jr_00A_74AE

    db $10
    rra
    jr nz, jr_00A_74C2

    rra
    rlca
    rst $38
    ccf
    cp a
    rst $38
    ld c, e
    rst $38
    scf
    rst $38
    rra

jr_00A_74AE:
    cp $7F
    ld hl, sp-$04
    ldh [$F8], a
    ld b, b
    cp $E0
    rst $38
    db $FC
    rst $38
    ld a, [$F5FF]
    rst $38
    ld a, [bc]
    rst $38
    nop
    rlca

jr_00A_74C2:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$80]
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    ld [$0107], sp
    rrca
    ld [de], a
    rra
    ld h, $1F
    inc e
    rra
    ret nz

    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $07FF
    rst $38
    rrca
    rst $38
    ccf
    ld hl, sp-$44
    ldh a, [$2F]
    cp $03
    rst $38
    dec bc
    rst $38
    ld [hl], l
    rst $38
    cp $FF
    rst $38
    xor a
    ld a, a
    ld bc, $0000
    nop
    nop
    ret nz

    add b
    ldh [$C0], a
    ldh a, [$E0]
    ld hl, sp-$10
    db $FC
    ld hl, sp-$04
    ld hl, sp+$3F
    inc c
    ld a, a
    ld [de], a
    ld a, a
    inc l
    cp $58
    cp $38
    cp $78
    cp $B8
    cp $78
    adc a
    inc bc
    rra
    rlca
    ld a, $0F
    ld a, h
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    db $10
    ld a, h
    nop
    rst $38
    ldh a, [rVBK]
    cp $03
    rst $38
    ld bc, $08FF
    rst $38
    adc b
    rst $38
    adc $7F
    sbc $7F
    ld d, h
    nop
    adc h
    nop
    and $00
    ei
    add b
    and $C0
    ld a, a
    ret nz

    ld a, e
    ldh [$7F], a
    ldh [$3F], a
    ccf
    ld [hl], a
    ccf
    ld l, e
    ld a, [hl]
    rst $10
    ld a, [hl]
    and a
    ld a, [hl]
    adc a
    ld a, [hl]
    rst $00
    db $FC
    rlca
    cp $E3
    add b
    rst $08
    nop
    adc a
    inc bc
    sbc a
    dec b
    ccf
    inc bc
    rra
    nop
    inc a
    nop
    nop
    nop
    db $FC
    nop
    rst $38
    ldh a, [rIE]
    db $FC
    rst $20
    cp $C3
    rst $38
    ldh [$7F], a
    ldh [$7F], a
    ld h, b
    ccf
    nop
    nop
    stop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [$80], a
    ldh [$80], a
    ldh a, [$C0]
    ld b, c
    ccf
    ld b, c
    ccf
    ld bc, $837F
    ld a, a
    add e
    rst $38
    inc bc
    cp $23
    cp $03
    rst $38
    ldh a, [$C0]
    db $E3
    add b
    jp $CF00


    nop
    add l
    nop
    add b
    nop
    add d
    nop
    add a
    nop
    ld bc, $F800
    nop
    db $FC
    ld b, b
    cp $38
    rst $38
    ld a, h
    rst $38
    ld a, $77
    ld a, $73
    ccf
    ld hl, sp+$00
    db $FC
    nop
    ld a, h
    nop
    inc e
    nop
    inc [hl]
    nop
    sbc d
    nop
    add h
    nop
    adc b
    nop
    jr @+$41

    ld e, h
    ccf
    ld [hl], h
    ld a, a
    cp b
    ld a, a
    ld sp, hl
    ld a, a
    ld sp, hl
    ld a, a
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld a, h
    ldh [$78], a
    ldh [$F0], a
    ret nz

    pop hl
    add b
    ldh [$80], a
    ld [$FF80], a
    nop
    cp $87
    rlca
    nop
    inc bc
    nop
    ld a, b
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    ccf
    ld [$0CBF], sp
    cp a
    ld c, $FE
    db $F4
    cp $78
    rst $38
    inc e
    ld a, a
    inc d
    ld a, a
    ld [$0C3F], sp
    ccf
    nop
    sbc a
    inc b
    cp $FC
    cp $F8
    rst $28
    db $FC
    rst $38
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld [hl], a
    ld a, a
    ld d, c
    ccf
    ld [hl], c
    ccf
    ld a, c
    nop
    ld a, c
    ld bc, $0019
    jr nz, jr_00A_762B

jr_00A_762B:
    add b
    nop
    ret nz

    nop
    jp hl


    add b
    rst $38
    ldh [$1F], a
    rst $38
    cp [hl]
    rst $30
    rst $38
    ld d, e
    cp $03
    ld a, $07
    ld e, [hl]
    rlca
    ld a, h
    rrca
    ld hl, sp+$1F
    ccf
    ldh [$7F], a
    pop hl
    ccf
    ldh a, [$7F]
    ld [c], a
    ld a, a
    ld [c], a
    ld a, [hl]
    db $F4
    cp $E4
    db $FC
    db $EC
    adc a
    cp $87
    cp $83
    cp $83
    ld a, a
    add e
    ld a, a
    ret nz

    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    inc hl
    ld bc, $0183
    add a
    ld bc, $00C3
    push bc
    nop
    ei
    add b
    rst $38
    ldh [$3F], a
    ld hl, sp-$3C
    rst $38
    ld [$DEFF], sp
    rst $38
    db $FC
    rst $38
    db $FC
    cpl
    ld hl, sp+$1F
    ld sp, hl
    ccf
    pop af
    rst $38
    ld h, c
    ret nz

    ldh a, [$C0]
    ld [hl], l
    ret nz

    ld sp, hl
    ret nz

    di
    ret nz

    ld [$F6C0], a
    add b
    xor $80
    ld h, e
    cp $23
    rst $38
    ld e, c
    rst $38
    or c
    ld a, a
    cp b
    ld a, a
    ld e, h
    ld a, a
    ld e, [hl]
    ccf
    ld a, a
    ccf
    sbc l
    inc bc
    adc $07
    cp $07
    rst $38
    add e
    rst $38
    jp $F57F


    ccf
    rst $38
    rlca
    rst $38
    pop hl
    ld a, a
    jp $01FF


    rst $38
    add e
    rst $38
    db $E3
    rst $38
    jp $A7FE


    cp $0F
    db $FC
    call nz, $C000
    nop
    ret z

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
    ld hl, sp-$21
    db $FD
    rst $28
    db $FC
    ld e, a
    db $FC
    ld d, a
    cp $4F
    ld a, a
    ld h, e
    ccf
    ld hl, $223F
    db $FD
    add a
    db $FD
    rst $08
    db $FC
    rst $38
    ld a, [hl]
    rst $28
    inc a
    rst $38
    ld e, $FF
    add b
    rst $38
    ldh [rIE], a
    cp a
    ld e, $FF
    cp $67
    cp $07
    cp $07
    cp $8F
    db $FC
    ld c, $FC
    ld a, $F0
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    sbc [hl]
    nop
    ld a, $00
    inc e
    nop
    ld a, [hl-]
    nop
    jr z, jr_00A_7713

jr_00A_7713:
    jr nz, jr_00A_7734

    jr @+$21

    inc b
    rrca
    ld [$0607], sp
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    ld a, a
    ldh a, [rNR22]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    pop bc
    ccf
    jr jr_00A_773A

jr_00A_7733:
    pop af

jr_00A_7734:
    rst $38
    jp $07FF


    rst $38
    rra

jr_00A_773A:
    rst $38
    cp a
    rst $38
    ld d, l
    rst $38
    daa
    db $FC
    jr jr_00A_7733

    db $FC
    ret c

    ld hl, sp-$10
    ld hl, sp-$10
    ldh a, [$E0]
    ret nz

    ret nz

    add b
    nop
    nop
    nop
    nop
    nop
    inc h
    rra
    ld [hl+], a
    rra
    ld de, $080F
    rlca
    ld b, $03
    inc bc
    ld bc, $0000
    nop
    nop
    rra
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    rst $28
    ld a, a
    ccf
    rra
    jp $0FFF


    cp $1F
    db $FC
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    rst $30
    rst $38
    xor h
    db $FC
    ret nc

    db $FC
    nop
    db $FC
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rLCDC], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    cpl
    rra
    rra
    rra
    rrca
    ld c, $0F
    rlca
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    ret nz

    rst $38
    pop af
    rst $38
    rst $38
    cp a
    rst $38
    ld b, b
    rst $38
    sub b
    rst $38
    ret nz

    ld a, a
    jr c, jr_00A_77D1

    ld [bc], a
    ld a, $F8
    cp $F0
    db $FC
    ret nz

    pop af
    nop
    ld [$B700], a
    nop
    db $FC
    nop
    ldh a, [rP1]
    nop
    nop
    ld [$2000], sp
    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    nop
    nop

jr_00A_77D1:
    nop
    nop
    ccf
    nop
    rra
    db $10
    rra
    nop
    rlca
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    db $FD
    ld a, a
    rst $38
    rra
    rst $38
    nop
    ld c, d
    nop
    and b
    nop
    call nc, Call_00A_7A00
    nop
    dec b
    nop
    db $FC
    ldh [$F8], a
    add b
    pop hl
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
    ld d, b
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
    jr c, jr_00A_7824

    ld b, b
    ccf
    ld hl, $231E
    inc e
    nop

jr_00A_7824:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$E8], a
    db $10
    db $F4
    ret z

    daa
    jr jr_00A_786D

    add hl, bc
    ld c, a
    jr nc, jr_00A_7881

    jr c, jr_00A_787C

    ccf

jr_00A_783D:
    ld b, c
    ld a, $40
    ccf
    ld d, b
    cpl
    db $FC
    nop
    db $FC
    ld d, b
    ld hl, sp-$20
    ld hl, sp+$00
    ld c, h
    or b
    ld d, h
    xor b
    db $E4
    jr jr_00A_7876

    ret c

    ld c, b
    scf
    ld c, h
    inc sp
    ld b, a
    jr c, @+$43

    ld a, $80
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ld a, a
    nop
    inc h
    ret c

    inc h
    ret c

    inc l
    ret nc

    ld hl, sp+$00
    jr z, jr_00A_783D

jr_00A_786D:
    inc [hl]
    ret z

    inc d
    add sp, -$04
    nop
    nop
    nop
    nop

jr_00A_7876:
    nop
    nop
    nop
    inc bc
    nop
    inc c

jr_00A_787C:
    inc bc
    db $10
    rrca
    jr nz, @+$21

jr_00A_7881:
    add hl, hl
    ld d, $00
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld [$04F0], sp
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$26
    add hl, de
    jr nz, @+$21

    jr @+$09

    daa
    jr jr_00A_78BC

    rra
    jr nz, jr_00A_78BE

    jr nz, jr_00A_78C0

    jr nz, @+$21

    inc b
    ld hl, sp+$04
    ld hl, sp+$1C
    ldh [$F8], a
    nop
    ld [$04F0], sp
    ld hl, sp+$04
    ld hl, sp+$02
    db $FC
    jr nz, jr_00A_78D4

    jr nz, jr_00A_78D6

    ld h, b
    rra
    ld b, b
    ccf
    ld b, b

jr_00A_78BC:
    ccf
    ld h, b

jr_00A_78BE:
    rra
    ccf

jr_00A_78C0:
    nop
    ld bc, $2200
    call c, $EC12
    ld c, $F0
    inc b
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$0C
    ldh a, [$F8]
    nop
    nop

jr_00A_78D4:
    nop
    nop

jr_00A_78D6:
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    daa
    jr jr_00A_7911

    inc de
    cpl
    db $10
    cpl
    dec d
    ccf
    inc bc
    rra
    nop
    ld sp, $2B0E
    inc d
    daa
    jr jr_00A_7913

    ld e, $21
    ld e, $21
    ld e, $31
    ld c, $1F
    nop
    inc de
    inc c
    ld hl, $211E
    ld e, $3F
    nop
    ld hl, $211E
    ld e, $21
    ld e, $31
    ld c, $1F
    nop
    ld hl, $231E
    inc e

jr_00A_7911:
    ccf
    nop

jr_00A_7913:
    add h
    ld a, b
    add h
    ld a, b
    add h
    ld a, b
    adc h
    ld [hl], b
    ld hl, sp+$00
    add h
    ld a, b
    inc b
    ld hl, sp-$04
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
    jr nz, @+$21

    ld [hl+], a
    dec e
    ld hl, $201E
    rra
    jr c, @+$09

    rra
    nop
    jr nc, jr_00A_794C

jr_00A_793D:
    jr nz, @+$21

    jr nz, @+$21

    jr nz, jr_00A_7962

    jr nz, jr_00A_7964

    jr nz, jr_00A_7966

    jr nc, @+$11

    db $10
    rrca
    db $10

jr_00A_794C:
    rrca
    jr nc, @+$11

    jr nz, @+$21

    ccf
    nop
    jr nz, jr_00A_7974

    jr nz, jr_00A_7976

    jr nz, jr_00A_7978

    jr nc, jr_00A_796A

    db $10
    rrca
    jr nc, @+$11

    jr nz, jr_00A_7980

    ccf

jr_00A_7962:
    nop
    nop

jr_00A_7964:
    nop
    nop

jr_00A_7966:
    nop
    nop
    nop
    inc bc

jr_00A_796A:
    nop
    inc e
    inc bc
    jr nz, jr_00A_798E

jr_00A_796F:
    jr nc, jr_00A_7980

    db $10
    rrca
    nop

jr_00A_7974:
    nop
    nop

jr_00A_7976:
    nop
    nop

jr_00A_7978:
    nop
    ret nz

    nop
    jr nc, jr_00A_793D

    ld [$04F0], sp

jr_00A_7980:
    ld hl, sp+$0A
    db $F4
    db $10
    rrca
    jr jr_00A_798E

    ld c, $01
    dec de
    inc b
    db $10
    rrca
    db $10

jr_00A_798E:
    rrca
    db $10
    rrca
    inc d
    dec bc
    ld a, [de]
    db $E4
    ld e, $E0
    inc e
    ldh [$CC], a
    jr nc, jr_00A_7A14

    add b

jr_00A_799D:
    jr z, jr_00A_796F

    inc e
    ldh [$0C], a
    ldh a, [rNR50]
    dec de
    ld [hl+], a
    dec e
    ld hl, $201E
    rra
    ld b, b
    ccf
    ld b, b
    ccf
    ld h, b
    rra
    ccf
    nop
    inc c
    ldh a, [$0C]
    ldh a, [$8C]
    ld [hl], b
    ld a, h
    add b
    jr jr_00A_799D

    ld [$18F0], sp
    ldh [$F0], a
    nop
    inc d
    dec bc
    inc h
    dec de
    ld [hl+], a
    dec e
    ld hl, $401E
    ccf
    add b
    ld a, a
    add b
    ld a, a
    rst $38
    nop
    inc c
    ldh a, [$0C]
    ldh a, [$0C]
    ldh a, [$8C]
    ld [hl], b
    ld a, h
    add b
    ld b, $F8
    ld [bc], a
    db $FC
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00A_79FD:
    nop
    nop
    nop

Call_00A_7A00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h

jr_00A_7A14:
    nop
    adc d
    ld [hl], h
    ld a, l
    ld b, $EE
    ld sp, $5AF7
    rst $38
    ld [hl+], a
    rst $38
    ld a, [hl]
    rst $38
    ld h, b
    nop
    nop
    nop
    nop
    add b
    nop
    rst $38
    nop
    cp h
    ld b, e
    rst $20
    jr @+$01

    inc bc
    rst $38
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_00A_79FD

    call z, $F630
    adc h
    ld a, [$E1E4]
    ld e, [hl]
    sbc $3F
    cp a
    ld [hl], c
    rst $38
    ld h, h
    rst $38
    ld c, d
    rst $38
    ld b, a
    ld a, a
    ld [hl+], a
    ccf
    nop
    rst $38
    dec de
    rst $38
    inc bc
    rst $38
    rra
    ld a, a
    cp a
    cp a
    ld b, b
    ret nz

    ccf
    rst $38
    rrca
    rst $38
    nop
    db $FD
    ld a, [c]
    db $FD
    ld a, [$F6FB]
    or $CC
    call z, $3838
    ldh a, [$F0]
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
    nop
    nop
    ld bc, $0200
    ld bc, $0102
    inc bc
    nop
    inc bc
    ld bc, $017F
    rst $38
    dec [hl]
    bit 6, l
    adc e
    ld [hl], l
    db $FD
    halt
    rst $38
    inc sp
    rst $38
    nop
    cp $01
    cp a
    ld d, b
    cp a
    ld e, l
    cp a
    ld e, l
    cp a
    ld e, h
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    rst $18
    ld l, a
    ld l, a
    inc sp
    ld [hl], e
    inc a
    inc a
    rra
    rra
    rlca
    rlca
    nop
    rlca
    nop
    rra
    rlca
    jr nc, @+$21

    ld l, a
    jr nc, jr_00A_7B1B

    inc hl
    cp a
    ld c, a
    cp a
    ld c, a
    cp a
    ld e, a
    cp a
    ld e, h
    cp [hl]
    ld e, l
    cp a
    ld c, h
    cp a
    ld c, c
    cp a
    ld b, c
    rst $38
    nop
    cp $75
    cp $75
    bit 6, h
    adc d
    ld [hl], l
    cp $75
    rst $38
    ld [hl], h
    rst $38
    ld [hl], a
    rst $38
    scf
    ccf
    nop

jr_00A_7AE1:
    nop
    nop

jr_00A_7AE3:
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    jr nc, jr_00A_7AEC

jr_00A_7AEC:
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
    inc b
    nop
    ld [$0800], sp
    nop
    stop
    stop
    stop
    db $10
    rlca
    nop
    rrca
    rlca
    rra
    rrca
    rra
    rrca
    rra
    ld c, $1E
    dec b
    dec d
    ld a, [bc]
    add hl, bc
    ld b, $F8
    nop
    db $FC
    ld hl, sp-$02
    cp h
    cp $DC

jr_00A_7B1B:
    db $FC
    adc b
    sbc h
    ld l, b
    jr c, jr_00A_7AE1

    jr nc, jr_00A_7AE3

    dec c
    nop
    rra
    dec c
    ccf
    rra
    ccf
    ld e, $3F
    ld e, $3F
    inc e
    inc e
    dec bc
    ld a, [hl+]
    dec d
    ldh [rP1], a
    ld hl, sp-$20
    db $FC
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    cp b
    cp b
    ld d, b
    ld d, h
    xor b
    inc bc
    nop
    rlca
    inc bc
    rrca
    rlca
    rra
    ld c, $1F
    rrca
    rra
    rrca
    cpl
    rla
    rra
    rlca
    ld [hl], b
    nop
    ld hl, sp+$70
    db $FC
    ld hl, sp-$02
    db $FC
    cp $FC
    db $FC
    ld hl, sp-$06
    db $F4
    db $FC
    ldh a, [$03]
    nop
    rlca
    inc bc
    rrca
    rlca
    rra
    dec c
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rlca
    ld hl, sp+$00
    db $FC
    ld a, b
    cp $FC
    cp $FC
    cp $FC
    cp $E4
    db $EC
    ret nc

    ret z

    or b
    inc c
    inc bc
    rra
    inc c
    ccf
    rra
    ccf
    rla
    ccf
    rlca
    cpl
    inc de
    inc de
    dec c
    inc de
    dec c
    db $10
    ldh [$E0], a
    nop
    ldh a, [$E0]
    ldh a, [$E0]
    ldh a, [$C0]
    ld hl, sp-$40
    add sp, -$30
    ldh a, [$C0]
    ld a, [de]
    dec b
    inc b
    inc bc
    rrca
    inc b
    rra
    rrca
    rra
    rlca
    rla
    dec bc
    inc de
    dec c
    inc de
    dec c
    ldh a, [$E0]
    ldh a, [rP1]
    ld hl, sp-$10

jr_00A_7BB9:
    db $FC
    ld hl, sp-$04
    ldh a, [$F4]
    add sp, -$0C
    add sp, -$08
    ldh [rIF], a
    inc bc
    rlca
    nop
    rrca
    rlca
    rra
    rrca
    rra
    rrca
    rra
    rlca
    rrca
    rlca
    rrca

jr_00A_7BD2:
    rlca
    sub b
    ld h, b
    ldh [rP1], a
    ldh [$C0], a
    ldh a, [$E0]
    ldh a, [$E0]
    ld hl, sp+$40
    call nz, $E4B8
    sbc b
    ld a, [hl+]
    dec d
    ld a, [de]
    dec b
    inc c
    inc bc
    rrca
    inc b
    rra
    rrca
    rra
    ld bc, $0E11
    add hl, bc
    ld b, $54
    xor b
    ld e, b
    and b
    jr nc, jr_00A_7BB9

    ldh a, [rNR41]
    ld hl, sp-$10
    ld hl, sp-$20
    add sp, -$30
    add sp, -$30
    rra
    rlca
    rlca
    inc bc
    rlca
    nop
    rrca
    rlca
    rra
    dec bc
    rra
    inc bc
    rla
    dec bc
    rla
    dec bc
    db $FC
    ldh a, [$F0]
    ldh [$F0], a
    nop
    ld hl, sp-$10
    db $FC
    add sp, -$04
    ldh [$F4], a
    add sp, -$08
    ldh [rIF], a
    nop
    rrca
    rlca
    rra
    rrca
    rra
    ld c, $3F
    db $10
    add hl, sp
    ld b, $21
    ld e, $1F
    nop
    ldh [rP1], a
    ldh [$C0], a
    ldh [rLCDC], a
    ldh a, [$C0]
    ret z

    jr nc, @+$0A

    ldh a, [$F0]
    nop
    nop
    nop
    ld hl, sp+$00
    ldh a, [$E0]
    ld hl, sp+$70
    ld hl, sp+$40
    ret z

    jr nc, jr_00A_7BD2

    ld a, b
    call nz, $F838
    nop
    ldh a, [rP1]
    ldh a, [$60]
    ld hl, sp+$60
    ld hl, sp+$70
    ld hl, sp+$70
    db $F4
    ld [$708C], sp
    ld hl, sp+$00
    rlca
    nop
    rlca
    inc bc
    rrca
    ld b, $0F
    rlca
    rrca
    ld bc, $0609
    rrca
    nop
    nop
    nop
    db $FC
    ld h, b
    ldh a, [$E0]
    ld hl, sp-$10
    ld hl, sp+$70
    ld hl, sp+$60
    db $F4
    ld [$708C], sp
    ld hl, sp+$00
    rst $38
    nop
    ld a, a
    ld a, $FE
    ld a, h
    rst $38
    ld e, b
    ld sp, hl
    ld h, [hl]
    ld [hl], c
    ld c, $52
    inc l
    ld a, $00
    rrca
    nop
    rlca
    inc bc
    rrca
    ld b, $0F
    rlca
    rrca
    rlca
    rlca
    nop
    inc b
    inc bc
    rlca
    nop
    ldh a, [rP1]
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp+$30
    ldh a, [rP1]
    sub b
    ld h, b
    sub b
    ld h, b
    ldh a, [rP1]
    inc bc
    nop
    rrca
    inc bc
    rra
    rrca
    ccf
    rra
    ccf
    rra
    rra
    rrca
    rrca
    dec b
    dec b
    ld [bc], a
    ld hl, sp+$00
    db $FC
    ld hl, sp-$08
    ldh a, [$FC]
    ld hl, sp-$04
    sbc b
    sbc h
    ld l, b
    ld e, b
    and b
    ld d, b
    and b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0003
    rlca
    inc bc
    rrca
    rlca
    rra
    ld b, $2F
    rla
    cpl
    rla
    ld d, b
    and b
    db $10
    ldh [$E0], a
    nop
    ret nz

    add b
    ret nz

    nop
    ld h, b
    add b
    sub b
    ld h, b
    sub b
    ld h, b
    ld hl, $7E1E

jr_00A_7CF6:
    nop
    db $FC
    jr c, jr_00A_7CF6

    ld l, b
    cp $0C
    sbc $24
    and $58
    ld h, [hl]
    ld e, b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0007
    rrca
    rlca
    rrca
    inc bc
    dec de
    dec b
    daa
    dec de
    daa
    dec de
    ld d, b
    and b
    db $10
    ldh [$E0], a
    nop
    ret nz

    add b
    ret nz

    add b
    ldh [$80], a
    ret nc

    and b
    ret nc

    and b
    rra
    nop
    rrca
    rlca
    rra
    rrca
    ccf
    rra
    ld e, a
    inc l
    ld c, l
    ld [hl-], a
    ld h, c
    ld e, $7F
    nop
    ldh [rP1], a
    ldh [$80], a
    ld hl, sp-$80
    db $E4
    jr @-$3A

    cp b
    ret z

    or b
    cp b
    ld b, b
    ldh [rP1], a
    rlca
    nop
    rrca
    rlca
    rra
    rrca
    rra
    rrca
    ccf
    db $10
    jr c, @+$09

    jr nc, jr_00A_7D60

    rra
    nop
    ldh [rP1], a
    ldh [$C0], a
    ldh [$C0], a
    ldh [$80], a
    ret nc

    jr nz, @+$52

    and b
    ld [hl], b

jr_00A_7D60:
    add b
    ret nz

    nop
    rra
    nop
    rrca
    rlca
    rra
    rrca
    ccf
    dec bc
    ld e, a
    ld hl, $3C43
    ld h, c
    ld e, $7F
    nop
    ldh [rP1], a
    ret nz

    add b
    ld hl, sp-$40
    db $E4
    ret c

    call nz, $C8B8
    or b
    cp b
    ld b, b
    ldh [rP1], a
    nop
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rra
    inc bc
    rra
    inc bc
    rra
    ld c, $0F
    ld b, $00
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$E0]
    ldh a, [$E0]
    ldh a, [$C0]
    ldh a, [$C0]
    nop
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$C0]
    ld hl, sp-$20
    db $FC
    xor b
    nop
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    db $FC
    ld [$00F8], sp
    nop
    nop
    inc bc
    nop

jr_00A_7DC7:
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    nop
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$10
    ld hl, sp+$30
    ld hl, sp+$70
    inc c
    inc bc
    rra
    inc c
    ccf
    rra
    ccf
    rla
    ccf
    rlca
    cpl
    inc de
    inc de
    dec c
    inc de
    dec c
    db $10
    ldh [$E0], a
    nop
    ldh a, [$E0]
    ldh a, [$E0]
    ldh a, [$C0]
    ld hl, sp-$40
    add sp, -$30
    ldh a, [$C0]
    ld e, b
    and b
    jr nz, jr_00A_7DC7

    ldh a, [rNR41]
    ld hl, sp-$10
    ld hl, sp-$20
    add sp, -$30
    ret z

    or b
    ret z

    or b
    ldh [rP1], a
    ldh a, [$E0]
    ld hl, sp-$10

jr_00A_7E19:
    db $FC
    ld hl, sp-$04
    ldh a, [$F4]
    add sp, -$0C
    add sp, -$08
    ldh [rTAC], a
    nop
    rlca
    inc bc
    rrca
    rlca
    rra
    rrca
    rra
    rrca
    rra
    rlca
    rrca
    rlca
    rrca

jr_00A_7E32:
    rlca
    db $10
    ldh [$E0], a
    nop
    ldh [$C0], a
    ldh a, [$E0]
    ldh a, [$E0]
    ld hl, sp+$40
    call nz, $E4B8
    sbc b
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
    ld bc, $0E11
    add hl, bc
    ld b, $54
    xor b
    ld e, b
    and b
    jr nz, jr_00A_7E19

    ldh a, [rNR41]
    ld hl, sp-$10
    ld hl, sp-$20
    add sp, -$30
    add sp, -$30
    rrca
    nop
    rlca
    nop
    rlca
    inc bc
    rrca
    rlca
    rra
    rrca
    rra
    inc bc
    rla
    dec bc
    rla
    dec bc
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [$E0]
    ld hl, sp-$10
    db $FC
    ld hl, sp-$04
    ldh [$F4], a
    add sp, -$08
    ldh [rIF], a
    nop
    rrca
    rlca
    rra
    rrca
    rra
    ld c, $3F
    db $10
    add hl, sp
    ld b, $21
    ld e, $1F
    nop
    ldh [rP1], a
    ldh [$C0], a
    ldh [rLCDC], a
    ldh a, [$C0]
    ret z

    jr nc, @+$0A

    ldh a, [$F0]
    nop
    nop
    nop
    ld hl, sp+$00
    ldh a, [$E0]
    ld hl, sp+$70
    ld hl, sp+$40
    ret z

    jr nc, jr_00A_7E32

    ld a, b
    call nz, $F838
    nop
    ldh a, [rP1]
    ldh a, [$60]
    ld hl, sp+$60
    ld hl, sp+$70
    ld hl, sp+$70
    db $F4
    ld [$708C], sp
    ld hl, sp+$00
    rlca
    nop
    rlca
    inc bc
    rrca
    ld b, $0F
    rlca
    rrca
    ld bc, $0609
    rrca
    nop
    nop
    nop
    db $FC
    ld h, b
    ldh a, [$E0]
    ld hl, sp-$10
    ld hl, sp+$70
    ld hl, sp+$60
    db $F4
    ld [$708C], sp
    ld hl, sp+$00
    rst $38
    nop
    ld a, a
    ld a, $FE
    ld a, h
    rst $38
    ld e, b
    ld sp, hl
    ld h, [hl]
    ld [hl], c
    ld c, $52
    inc l
    ld a, $00
    rrca
    nop
    rlca
    inc bc
    rrca
    ld b, $0F
    rlca
    rrca
    rlca
    rlca
    nop
    inc b
    inc bc
    rlca
    nop
    ldh a, [rP1]
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp+$30
    ldh a, [rP1]
    sub b
    ld h, b
    sub b
    ld h, b
    ldh a, [rP1]
    nop
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rrca
    ld [bc], a
    rlca
    inc bc
    nop
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rNR41]
    ldh a, [$E0]
    ldh a, [$A0]
    ldh a, [$A0]
    inc b
    inc bc
    ld [bc], a
    ld bc, $0007
    rlca
    inc bc
    rrca
    rlca
    rra
    ld b, $2F
    rla
    cpl
    rla
    ld d, b
    and b
    db $10
    ldh [$E0], a
    nop
    ret nz

    add b
    ret nz

    nop
    ld h, b
    add b
    sub b
    ld h, b
    sub b
    ld h, b
    ld hl, $7E1E

jr_00A_7F56:
    nop
    db $FC
    jr c, jr_00A_7F56

    ld l, b
    cp $0C
    sbc $24
    and $58
    ld h, [hl]
    ld e, b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0007
    rrca
    rlca
    rrca
    inc bc
    dec de
    dec b
    daa
    dec de
    daa
    dec de
    ld d, b
    and b
    db $10
    ldh [$E0], a
    nop
    ret nz

    add b
    ret nz

    add b
    ldh [$80], a
    ret nc

    and b
    ret nc

    and b
    rra
    nop
    rrca
    rlca
    rra
    rrca
    ccf
    rra
    ld e, a
    inc l
    ld c, l
    ld [hl-], a
    ld h, c
    ld e, $7F
    nop
    ldh [rP1], a
    ldh [$80], a
    ld hl, sp-$80
    db $E4
    jr @-$3A

    cp b
    ret z

    or b
    cp b
    ld b, b
    ldh [rP1], a
    rlca
    nop
    rrca
    rlca
    rra
    rrca
    rra
    rrca
    ccf
    db $10
    jr c, @+$09

    jr nc, jr_00A_7FC0

    rra
    nop
    ldh [rP1], a
    ldh [$C0], a
    ldh [$C0], a
    ldh [$80], a
    ret nc

    jr nz, @+$52

    and b
    ld [hl], b

jr_00A_7FC0:
    add b
    ret nz

    nop
    rra
    nop
    rrca
    rlca
    rra
    rrca
    ccf
    dec bc
    ld e, a
    ld hl, $3C43
    ld h, c
    ld e, $7F
    nop
    ldh [rP1], a
    ret nz

    add b
    ld hl, sp-$40
    db $E4
    ret c

    call nz, $C8B8
    or b
    cp b
    ld b, b
    ldh [rP1], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
