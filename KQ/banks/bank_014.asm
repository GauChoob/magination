; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

    nop
    ld bc, $0C05
    nop
    ld sp, hl
    inc b
    inc c
    ld hl, sp+$01
    inc bc
    ld [$F9F8], sp
    ld [bc], a
    ld [$01F0], sp
    ld bc, $F008
    ld sp, hl
    nop
    ld [$0080], sp

jr_014_401A:
    ld hl, sp+$05
    inc l
    nop

jr_014_401E:
    nop
    inc b
    inc l
    ld hl, sp-$08
    inc bc
    jr z, jr_014_401E

    nop
    ld [bc], a
    jr z, jr_014_401A

    ld hl, sp+$01
    jr z, jr_014_401E

    nop
    nop
    db $28, $80
    nop
    cp $0A
    inc c
    ld hl, sp+$00
    add hl, bc
    ld [$F8F8], sp
    ld [$F008], sp
    nop
    rlca
    ld [$F8F0], sp
    ld b, $08
    add b
    nop

jr_014_4048:
    ei
    ld a, [bc]
    inc l
    ld hl, sp-$07
    add hl, bc
    jr z, jr_014_4048

    ld bc, $2808
    ldh a, [$F9]
    rlca
    jr z, jr_014_4048

    ld bc, $2806
    add b
    nop
    db $FD
    ld de, $F80C
    nop
    db $10
    ld [$F8F8], sp
    rrca
    ld [$00F1], sp
    inc c
    ld [$F8F1], sp
    dec bc
    ld [$0080], sp

jr_014_4072:
    nop
    ld c, $0C
    nop
    ld sp, hl
    ld c, $2C
    ld hl, sp+$00
    dec c
    ld [$F8F8], sp
    dec c
    jr z, jr_014_4072

    nop
    inc c
    ld [$F8F0], sp
    dec bc

jr_014_4088:
    ld [$0080], sp

jr_014_408B:
    db $FC
    ld de, $F82C
    ld hl, sp+$10
    jr z, jr_014_408B

    nop
    rrca
    jr z, jr_014_4088

    nop
    inc c
    ld [$F8F1], sp
    dec bc
    ld [$0080], sp
    db $FC

jr_014_40A1:
    rla
    inc c
    ld hl, sp+$00
    ld d, $08
    ld hl, sp-$08
    dec d
    ld [$F8F1], sp
    ld [de], a
    jr z, jr_014_40A1

    nop

jr_014_40B1:
    ld [de], a
    ld [$0080], sp
    nop
    inc d
    inc c
    nop
    ld sp, hl
    inc d
    inc l
    ldh a, [$F8]
    ld [de], a
    jr z, jr_014_40B1

jr_014_40C1:
    nop
    ld [de], a
    ld [$F8F8], sp
    inc de
    jr z, jr_014_40C1

    nop
    inc de

jr_014_40CB:
    ld [$0080], sp
    db $FD

jr_014_40CF:
    rla
    inc l
    ld hl, sp-$08
    ld d, $28
    ld hl, sp+$00
    dec d
    jr z, jr_014_40CB

    ld hl, sp+$12
    jr z, jr_014_40CF

    nop
    ld [de], a
    ld [$F180], sp
    inc bc
    dec e
    ld [$FBF1], sp

jr_014_40E8:
    inc e
    ld [$0400], sp
    dec de
    inc c
    nop
    db $FC
    ld a, [de]
    inc c
    ld hl, sp+$04
    add hl, de
    ld [$FCF8], sp
    jr jr_014_4102

    add b
    ldh a, [$03]
    dec e
    ld [$FBF0], sp
    inc e

jr_014_4102:
    ld [$0000], sp
    rra
    inc c
    ld hl, sp+$00
    ld e, $08
    add b
    nop
    inc b
    inc hl
    inc c
    nop
    db $FC
    ld [hl+], a
    inc c
    ld hl, sp+$04
    ld hl, $F808
    db $FC
    jr nz, @+$0A

    pop af
    inc bc
    dec e
    ld [$FBF1], sp
    inc e
    ld [$F180], sp
    or $1D
    jr z, @-$0D

    cp $1C
    jr z, jr_014_412E

jr_014_412E:
    push af
    dec de
    inc l
    nop

jr_014_4132:
    db $FD

jr_014_4133:
    ld a, [de]
    inc l
    ld hl, sp-$0B
    add hl, de
    jr z, jr_014_4132

    db $FD
    jr @+$2A

    add b
    ldh a, [$F6]
    dec e
    jr z, jr_014_4133

    cp $1C
    jr z, jr_014_4147

jr_014_4147:
    ld sp, hl
    rra
    inc l
    ld hl, sp-$07
    ld e, $28
    add b
    nop
    push af
    inc hl
    inc l
    nop
    db $FD

jr_014_4155:
    ld [hl+], a
    inc l
    ld hl, sp-$0B
    ld hl, $F828
    db $FD
    jr nz, jr_014_4187

jr_014_415F:
    pop af
    or $1D
    jr z, jr_014_4155

    cp $1C
    jr z, jr_014_40E8

    nop
    ld hl, sp+$24
    jr z, jr_014_416D

jr_014_416D:
    nop
    inc h
    ld [$00F8], sp
    inc c
    ld [$F8F8], sp
    dec bc
    ld [$0080], sp
    nop

jr_014_417B:
    ld h, $08
    nop
    ld hl, sp+$26
    jr z, jr_014_417B

    nop
    inc c
    ld [$F8F9], sp

jr_014_4187:
    dec bc
    ld [$0080], sp
    ld hl, sp+$25
    jr z, jr_014_418F

jr_014_418F:
    nop
    dec h
    ld [$F8F8], sp
    ld [de], a
    jr z, jr_014_418F

    nop
    ld [de], a
    ld [$0080], sp
    ld hl, sp+$27
    jr z, jr_014_41A0

jr_014_41A0:
    nop

jr_014_41A1:
    daa
    ld [$F8F9], sp
    ld [de], a
    jr z, jr_014_41A1

    nop
    ld [de], a
    ld [$0080], sp
    nop
    add hl, hl
    ld [$F800], sp
    jr z, @+$0A

    ld hl, sp+$00
    dec e
    ld [$F8F8], sp
    inc e
    ld [$0080], sp
    nop
    dec hl
    ld [$F800], sp
    ld a, [hl+]
    ld [$00F9], sp
    dec e
    ld [$F8F9], sp
    inc e
    ld [$0080], sp
    ld hl, sp+$29
    jr z, jr_014_41D3

jr_014_41D3:
    nop
    jr z, jr_014_41FE

    ld hl, sp-$08
    dec e
    jr z, jr_014_41D3

    nop
    inc e
    jr z, jr_014_415F

    nop
    ld hl, sp+$2B
    jr z, jr_014_41E4

jr_014_41E4:
    nop

jr_014_41E5:
    ld a, [hl+]
    jr z, @-$05

    ld hl, sp+$1D
    jr z, jr_014_41E5

    nop
    inc e
    jr z, @-$7E

    ld hl, sp-$09
    dec bc
    ld [$0000], sp
    ld l, $08
    nop
    ld hl, sp+$2D

jr_014_41FB:
    ld [$FFF8], sp

jr_014_41FE:
    inc l
    ld [$FA80], sp
    nop
    dec e
    ld [$F8FA], sp
    inc e
    ld [$0000], sp
    jr nc, jr_014_4215

    nop
    ld hl, sp+$2F
    ld [$0180], sp
    nop
    ld b, c

jr_014_4215:
    ld [$00FD], sp
    ld [de], a
    ld [$F8FD], sp
    ld [de], a
    jr z, @+$03

    ld hl, sp+$31
    ld [$F880], sp
    nop
    inc sp
    ld [$F8F8], sp
    ld [hl-], a
    ld [$0000], sp
    dec [hl]
    ld [$F800], sp
    inc [hl]
    ld [$F180], sp
    db $FD
    ld bc, $F108
    push af
    nop
    ld [$04FE], sp
    ld a, $0C
    nop
    db $FC
    dec a
    inc c
    ld hl, sp-$04
    inc a
    add hl, bc
    ld hl, sp-$0C
    dec sp
    ld [$F880], sp
    ld a, [$0837]
    ld hl, sp-$0E
    ld [hl], $08
    nop
    ld [bc], a
    ld a, [hl-]
    inc c
    nop
    ld a, [$0C39]
    nop
    ld a, [c]
    jr c, jr_014_4269

    add b
    pop af
    ld a, [$2801]
    pop af
    ld [bc], a

jr_014_4268:
    nop

jr_014_4269:
    jr z, jr_014_4268

    di
    ld a, $2C
    nop
    ei
    dec a
    inc l
    ld hl, sp-$05
    inc a
    add hl, hl
    ld hl, sp+$03

jr_014_4278:
    dec sp
    jr z, jr_014_41FB

    ld hl, sp-$03
    scf
    jr z, jr_014_4278

    dec b
    ld [hl], $28
    nop
    push af
    ld a, [hl-]
    inc l
    nop
    db $FD
    add hl, sp

jr_014_428A:
    inc l
    nop
    dec b
    jr c, jr_014_42B7

    add b
    rst $38
    db $FD
    ld b, d
    ld [$F080], sp
    ld hl, sp+$3F
    jr z, jr_014_428A

    nop
    ccf
    ld [$00F0], sp
    inc c
    ld [$F8F0], sp
    dec bc
    ld [$F900], sp
    ld c, $2C
    nop

jr_014_42AA:
    nop
    ld c, $0C
    ld hl, sp-$08
    ld b, b
    jr z, jr_014_42AA

    nop
    ld b, b
    ld [$0080], sp

jr_014_42B7:
    ld hl, sp+$24
    cpl
    nop
    nop
    inc h
    rrca
    ld hl, sp+$00
    inc c
    rrca
    ld hl, sp-$08
    dec bc
    rrca
    add b
    nop
    nop
    ld h, $0F
    nop
    ld hl, sp+$26
    cpl
    ld sp, hl
    nop
    inc c
    rrca
    ld sp, hl
    ld hl, sp+$0B
    rrca
    add b
    nop
    ld hl, sp+$25
    cpl
    nop
    nop
    dec h
    rrca
    ld hl, sp-$08
    ld [de], a
    cpl
    ld hl, sp+$00
    ld [de], a
    rrca
    add b
    nop
    ld hl, sp+$27
    cpl
    nop
    nop
    daa
    rrca
    ld sp, hl
    ld hl, sp+$12
    cpl
    ld sp, hl
    nop
    ld [de], a
    rrca
    add b
    nop
    nop
    add hl, hl
    rrca
    nop
    ld hl, sp+$28
    rrca
    ld hl, sp+$00
    dec e
    rrca
    ld hl, sp-$08
    inc e
    rrca
    add b
    nop
    nop
    dec hl
    rrca
    nop
    ld hl, sp+$2A
    rrca
    ld sp, hl
    nop
    dec e
    rrca
    ld sp, hl
    ld hl, sp+$1C
    rrca
    add b
    nop
    ld hl, sp+$29
    cpl
    nop
    nop
    jr z, @+$31

    ld hl, sp-$08
    dec e
    cpl
    ld hl, sp+$00
    inc e
    cpl
    add b
    nop
    ld hl, sp+$2B
    cpl
    nop
    nop
    ld a, [hl+]
    cpl
    ld sp, hl
    ld hl, sp+$1D
    cpl
    ld sp, hl
    nop
    inc e
    cpl
    add b
    pop af
    nop
    inc c
    ld [$F8F1], sp
    dec bc
    ld [$0000], sp
    ld d, h
    inc c
    nop
    ld hl, sp+$53
    inc c
    ld hl, sp+$00
    ld d, d
    ld [$F8F8], sp
    ld d, c
    ld [$0080], sp
    db $FC
    ld d, a
    inc c
    ld hl, sp+$00
    ld d, [hl]
    ld [$F8F8], sp

jr_014_4361:
    ld d, l
    ld [$00F0], sp
    inc c
    ld [$F8F0], sp

jr_014_4369:
    dec bc
    ld [$F080], sp
    ld hl, sp+$12
    jr z, jr_014_4361

    nop
    ld [de], a
    ld [$FD00], sp

jr_014_4376:
    ld e, d
    inc c
    ld hl, sp+$00
    ld e, c
    ld [$F8F8], sp
    ld e, b
    ld [$F080], sp
    nop
    ld e, [hl]
    jr z, jr_014_4376

    ld hl, sp+$5E
    ld [$FC00], sp
    ld e, l
    inc c
    ld hl, sp+$00
    ld e, h
    ld [$F8F8], sp
    ld e, e
    ld [$00EF], sp
    ld [de], a
    ld [$F8EF], sp
    ld [de], a
    jr z, @-$7E

    pop af
    inc bc
    dec e
    ld [$FBF1], sp
    inc e
    ld [$0100], sp
    ld c, h
    inc c
    nop
    ld sp, hl
    ld c, e
    inc c
    ld hl, sp+$01
    ld c, d
    ld [$F9F8], sp
    ld c, c
    ld [$F080], sp
    ld bc, $081D
    ldh a, [$F9]
    inc e
    ld [$01F8], sp
    ld c, [hl]
    ld [$F9F8], sp
    ld c, l

jr_014_43C6:
    ld [$0100], sp
    ld d, b
    inc c
    nop
    ld sp, hl
    ld c, a
    inc c
    add b
    pop af
    or $1D
    jr z, jr_014_43C6

    cp $1C
    jr z, jr_014_43D9

jr_014_43D9:
    ld hl, sp+$4C
    inc l
    nop

jr_014_43DD:
    nop

jr_014_43DE:
    ld c, e
    inc l
    ld hl, sp-$08
    ld c, d
    jr z, jr_014_43DD

    nop
    ld c, c
    jr z, jr_014_4369

    ldh a, [$F8]
    dec e
    jr z, jr_014_43DE

jr_014_43EE:
    nop
    inc e
    jr z, @-$06

    ld hl, sp+$4E
    jr z, jr_014_43EE

    nop
    ld c, l
    jr z, jr_014_43FA

jr_014_43FA:
    ld hl, sp+$50
    inc l
    nop
    nop
    ld c, a
    inc l
    add b
    ldh a, [rP1]
    inc c
    ld [$F8F0], sp
    dec bc
    ld [$F900], sp
    ld c, $2C
    nop

jr_014_440F:
    nop
    ld c, $0C
    ld hl, sp-$08
    ld b, e
    jr z, jr_014_440F

    nop

jr_014_4418:
    ld b, e
    ld [$F880], sp
    ld hl, sp+$44
    jr z, jr_014_4418

    nop
    ld b, h
    ld [$F900], sp
    ld c, $2C
    nop
    nop
    ld c, $0C
    ldh a, [rP1]
    inc c
    ld [$F8F0], sp
    dec bc
    ld [$0080], sp
    nop
    ld b, [hl]
    inc c
    nop
    cp $48
    ld [$F900], sp
    ld c, $2C
    ld hl, sp-$08
    ld b, h
    jr z, @-$06

    nop
    ld b, l
    ld [$00F0], sp
    inc c
    ld [$F8F0], sp
    dec bc
    ld [$0080], sp

jr_014_4452:
    nop
    ld b, a
    inc c
    nop
    cp $48
    ld [$F900], sp
    ld c, $2C
    ld hl, sp-$08
    ld b, h
    jr z, @-$06

    nop
    ld b, l
    ld [$00F0], sp
    inc c
    ld [$F8F0], sp
    dec bc
    ld [$0080], sp
    ei
    ld h, d
    inc c
    ld hl, sp+$00
    ld h, b
    ld [$F8F8], sp
    ld e, a
    ld [$00F0], sp
    inc c
    ld [$F8F0], sp
    dec bc
    ld [$0080], sp
    ld sp, hl
    ld l, e
    ld [$FF00], sp
    ld l, e
    ld [$F8F8], sp
    ld h, c
    jr z, @-$06

    nop
    ld h, c
    ld [$0000], sp
    ld h, h
    inc c
    nop
    ld hl, sp+$63
    inc c
    pop af
    nop
    inc c
    ld [$F8F1], sp

jr_014_44A1:
    dec bc
    ld [$0080], sp

jr_014_44A5:
    db $FD
    ld h, d
    inc l
    ld hl, sp-$08
    ld h, b
    jr z, jr_014_44A5

    nop
    ld e, a
    jr z, jr_014_44A1

    nop
    inc c
    ld [$F8F0], sp
    dec bc
    ld [$F880], sp
    ei
    ld a, b
    inc c
    ld hl, sp+$00
    ld h, [hl]
    ld [$F8F8], sp
    ld h, l
    ld [$FC00], sp
    ld h, a
    inc c
    ldh a, [rP1]
    ld [de], a
    ld [$F8F0], sp
    ld [de], a
    jr z, jr_014_4452

    nop
    ld sp, hl
    ld l, e
    ld [$FF00], sp
    ld l, e
    ld [$00F8], sp
    ld l, b
    ld [$F8F8], sp

jr_014_44E0:
    ld l, b
    jr z, jr_014_44E3

jr_014_44E3:
    nop
    ld l, d
    inc c
    nop
    ld hl, sp+$69
    inc c
    pop af
    ld hl, sp+$12
    jr z, jr_014_44E0

    nop
    ld [de], a
    ld [$F880], sp

jr_014_44F4:
    db $FD
    ld a, b
    inc l
    ld hl, sp-$08
    ld h, [hl]
    jr z, jr_014_44F4

    nop
    ld h, l
    jr z, jr_014_4500

jr_014_4500:
    db $FC
    ld h, a
    inc l
    ldh a, [rP1]
    ld [de], a
    ld [$F8F0], sp
    ld [de], a
    jr z, @-$7E

    rst $38
    ei
    ld l, h
    inc c
    nop
    nop
    ld [hl], b
    inc c
    nop
    ld hl, sp+$6F
    inc c
    ld hl, sp+$00
    ld l, [hl]
    ld [$F8F8], sp
    ld l, l
    ld [$FFF0], sp
    dec e
    ld [$F7F0], sp
    inc e
    ld [$0080], sp
    ei
    ld [hl], e
    inc c
    ld hl, sp-$01
    ld [hl], d
    ld [$F7F8], sp
    ld [hl], c
    ld [$FFF1], sp
    dec e
    ld [$F7F1], sp
    inc e
    ld [$F880], sp
    ei
    ld a, b
    inc c
    nop
    nop
    ld [hl], a
    inc c
    nop
    ld hl, sp+$76
    inc c
    ld hl, sp+$00
    ld [hl], l
    ld [$F8F8], sp
    ld [hl], h
    ld [$FFF0], sp
    dec e
    ld [$F7F0], sp
    inc e
    ld [$FF80], sp
    db $FD
    ld l, h
    inc l
    nop

jr_014_4560:
    ld hl, sp+$70
    inc l
    nop

jr_014_4564:
    nop
    ld l, a
    inc l
    ld hl, sp-$08
    ld l, [hl]
    jr z, jr_014_4564

    nop
    ld l, l
    jr z, jr_014_4560

    ld sp, hl
    dec e
    jr z, jr_014_4564

    ld bc, $281C
    add b
    nop

jr_014_4579:
    db $FD

jr_014_457A:
    ld [hl], e
    inc l
    ld hl, sp-$07
    ld [hl], d
    jr z, jr_014_4579

    ld bc, $2871
    pop af
    ld sp, hl
    dec e
    jr z, jr_014_457A

    ld bc, $281C
    add b
    ld hl, sp-$03
    ld a, b
    inc l
    nop

jr_014_4592:
    ld hl, sp+$77
    inc l
    nop

jr_014_4596:
    nop
    halt
    inc l
    ld hl, sp-$08
    ld [hl], l
    jr z, jr_014_4596

    nop
    ld [hl], h
    jr z, jr_014_4592

    ld sp, hl
    dec e
    jr z, jr_014_4596

    ld bc, $281C
    add b
    add b
    inc b
    ei
    dec bc
    inc b
    db $FC
    inc b
    ld a, [bc]
    nop
    db $FC
    db $FC
    add hl, bc
    ld bc, $FCFC
    ld [$FC04], sp
    db $F4
    rlca
    nop
    db $FC
    db $EC
    ld b, $00
    db $EC
    db $FC
    ld bc, $EC00
    db $F4
    nop
    nop
    db $F4
    inc b
    dec b
    nop
    db $F4
    db $FC
    inc b
    nop
    db $F4
    db $F4
    inc bc
    nop
    db $F4
    db $EC
    ld [bc], a
    nop
    add b
    inc b
    ei
    dec bc
    inc b
    db $FC
    db $FC
    add hl, bc
    nop
    db $FC
    db $FC
    ld [$FC04], sp
    inc b
    ld de, $FC00
    db $F4
    stop
    db $EC
    db $FC
    ld bc, $EC00
    db $F4
    nop
    nop
    ei
    db $EC
    rrca
    nop
    db $F4
    inc b
    ld c, $00
    db $F4
    db $F4
    dec c
    nop
    di
    db $EC
    inc c
    nop
    db $F4
    db $FC
    inc b
    nop
    add b
    db $FC
    inc b
    rla
    nop
    db $FC
    db $F4
    ld d, $00
    db $FC
    db $EC
    dec d
    nop
    db $F4
    inc b
    inc d
    nop
    db $F4
    db $F4
    inc de

jr_014_4620:
    nop
    db $F4
    db $EC
    ld [de], a
    nop
    inc b
    ei
    dec bc
    inc b
    db $FC
    db $FC
    add hl, bc
    nop
    db $FC
    db $FC
    ld [$EC04], sp
    db $FC
    ld bc, $EC00
    db $F4
    nop
    nop
    db $F4
    db $FC
    inc b
    nop
    add b
    inc b
    db $FD
    dec bc
    inc h
    db $FC

jr_014_4643:
    db $F4
    ld a, [bc]
    jr nz, jr_014_4643

    db $FC
    add hl, bc
    ld hl, $FCFC
    ld [$FC24], sp

jr_014_464F:
    inc b
    rlca

jr_014_4651:
    jr nz, jr_014_464F

jr_014_4653:
    inc c
    ld b, $20
    db $EC

jr_014_4657:
    db $FC
    ld bc, $EC20

jr_014_465B:
    inc b
    nop
    jr nz, jr_014_4653

jr_014_465F:
    db $F4
    dec b
    jr nz, jr_014_4657

    db $FC
    inc b
    jr nz, jr_014_465B

    inc b
    inc bc
    jr nz, jr_014_465F

    inc c
    ld [bc], a
    jr nz, @-$7E

    inc b

jr_014_4670:
    db $FD
    dec bc
    inc h
    db $FC

jr_014_4674:
    db $FC
    add hl, bc
    jr nz, jr_014_4674

    db $FC
    ld [$FC24], sp
    db $F4
    ld de, $FC20
    inc b
    db $10
    jr nz, jr_014_4670

jr_014_4684:
    db $FC
    ld bc, $EC20
    inc b
    nop
    jr nz, @-$03

    inc c
    rrca
    jr nz, jr_014_4684

jr_014_4690:
    db $F4
    ld c, $20
    db $F4
    inc b
    dec c
    jr nz, @-$0B

    inc c
    inc c
    jr nz, jr_014_4690

    db $FC
    inc b
    jr nz, jr_014_4620

    db $FC

jr_014_46A1:
    db $F4
    rla
    jr nz, jr_014_46A1

jr_014_46A5:
    inc b
    ld d, $20
    db $FC

jr_014_46A9:
    inc c
    dec d
    jr nz, jr_014_46A1

    db $F4
    inc d
    jr nz, jr_014_46A5

    inc b
    inc de
    jr nz, jr_014_46A9

    inc c
    ld [de], a
    jr nz, jr_014_46BD

    db $FD
    dec bc
    inc h
    db $FC

jr_014_46BD:
    db $FC
    add hl, bc
    jr nz, jr_014_46BD

jr_014_46C1:
    db $FC
    ld [$EC24], sp
    db $FC

jr_014_46C6:
    ld bc, $EC20
    inc b
    nop
    jr nz, jr_014_46C1

    db $FC
    inc b
    jr nz, jr_014_4651

    ld hl, sp+$08
    inc e
    jr nz, jr_014_46C6

    ld [$2019], sp
    di
    db $10
    jr jr_014_46FD

    nop

jr_014_46DE:
    ei
    ld e, $04
    ld hl, sp-$08
    dec e
    jr nz, jr_014_46DE

    nop
    dec e
    nop
    ld hl, sp-$10
    inc e
    nop
    ldh a, [rP1]
    dec de
    nop
    ldh a, [$F8]
    ld a, [de]
    nop
    ldh a, [$F0]
    add hl, de
    nop
    di
    add sp, $18
    nop

jr_014_46FD:
    add b
    ld hl, sp+$08
    inc hl
    jr nz, @-$06

    ldh a, [rNR44]
    nop
    ldh a, [$08]
    jr nz, jr_014_472A

    db $F4
    db $10
    rra
    jr nz, jr_014_470F

jr_014_470F:
    ei
    ld e, $04
    ld hl, sp-$08
    inc h
    jr nz, jr_014_470F

    nop
    inc h
    nop
    ldh a, [rP1]
    ld [hl+], a
    nop
    ldh a, [$F8]
    ld hl, $F000
    ldh a, [rNR41]
    nop
    db $F4
    add sp, $1F
    nop

jr_014_472A:
    add b
    nop

jr_014_472C:
    ei
    ld e, $04
    ld hl, sp+$08
    add hl, hl
    jr nz, jr_014_472C

    ldh a, [$29]
    nop
    ld hl, sp+$10
    jr z, jr_014_475B

    ld hl, sp-$18
    jr z, jr_014_473F

jr_014_473F:
    ldh a, [$08]
    dec h
    jr nz, @-$06

    ld hl, sp+$24
    jr nz, @-$06

    nop
    inc h
    nop
    ldh a, [rP1]
    daa
    nop
    ldh a, [$F8]
    ld h, $00
    ldh a, [$F0]

jr_014_4755:
    dec h
    nop
    add b
    ld hl, sp+$08
    inc e

jr_014_475B:
    jr nz, jr_014_4755

    ldh a, [rNR32]
    nop
    nop
    db $FC
    ld sp, $F004
    ld [$2019], sp
    di

jr_014_4769:
    db $10
    jr jr_014_478C

    ldh a, [$F0]
    add hl, de
    nop
    di
    add sp, $18
    nop
    ld hl, sp-$08
    inc l
    jr nz, jr_014_4769

    ld hl, sp+$2B
    jr nz, @-$06

    nop
    inc l
    nop
    ldh a, [rP1]

jr_014_4782:
    dec hl
    nop
    add b
    ld hl, sp+$08
    inc hl
    jr nz, jr_014_4782

    ldh a, [rNR44]

jr_014_478C:
    nop
    ldh a, [$08]

jr_014_478F:
    jr nz, @+$22

    ldh a, [$F0]
    jr nz, jr_014_4795

jr_014_4795:
    push af
    db $10
    rra
    jr nz, jr_014_478F

    add sp, $1F
    nop
    ld hl, sp-$08
    ld l, $20
    ldh a, [$F8]
    dec l
    jr nz, @-$06

    nop
    ld l, $00
    ldh a, [rP1]
    dec l
    nop
    nop
    db $FC

jr_014_47AF:
    ld sp, $8004
    ld hl, sp-$08
    inc l
    jr nz, jr_014_47AF

jr_014_47B7:
    ld [$2029], sp
    ldh a, [$08]
    dec h
    jr nz, jr_014_47B7

    nop
    inc l
    nop
    ldh a, [rP1]
    cpl
    nop
    ldh a, [$F0]
    dec h
    nop
    ld hl, sp+$10
    jr z, jr_014_47EE

    ld hl, sp-$10
    add hl, hl
    nop
    ld hl, sp-$18

jr_014_47D4:
    jr z, jr_014_47D6

jr_014_47D6:
    ldh a, [$F8]
    cpl
    jr nz, jr_014_47DB

jr_014_47DB:
    db $FC
    ld sp, $8004
    ldh a, [$F8]
    scf
    jr nz, jr_014_47D4

jr_014_47E4:
    nop
    scf
    nop
    ld hl, sp-$10
    add hl, sp
    jr nz, jr_014_47E4

    ld hl, sp+$38

jr_014_47EE:
    jr nz, @-$06

    ld [$0039], sp
    ld hl, sp+$00

jr_014_47F5:
    jr c, jr_014_47F7

jr_014_47F7:
    nop
    ld hl, sp+$32
    inc h
    nop
    nop
    ld [hl-], a
    inc b
    add b
    ldh a, [$F0]
    inc [hl]
    jr nz, jr_014_47F5

    ld hl, sp+$33
    jr nz, @-$0E

    ld [$0034], sp
    ldh a, [rP1]
    inc sp
    nop
    ld hl, sp-$10
    ld [hl], $20
    ld hl, sp-$08
    dec [hl]
    jr nz, @-$06

    ld [$0036], sp
    ld hl, sp+$00
    dec [hl]
    nop
    nop
    ld hl, sp+$32
    inc h
    nop
    nop

jr_014_4826:
    ld [hl-], a
    inc b
    add b
    ld hl, sp+$08
    inc hl
    jr nz, jr_014_4826

    ldh a, [rNR44]
    nop
    ldh a, [$F8]
    dec hl
    jr nz, jr_014_4826

jr_014_4836:
    nop
    dec hl
    nop
    ld hl, sp-$08
    inc l
    jr nz, jr_014_4836

jr_014_483E:
    nop
    inc l
    nop
    di
    db $10
    jr jr_014_4865

    di
    add sp, $18
    nop
    ldh a, [$08]
    add hl, de
    jr nz, jr_014_483E

    ldh a, [rNR24]
    nop
    nop
    ld hl, sp+$32
    inc h
    nop
    nop
    ld [hl-], a

jr_014_4858:
    inc b
    add b
    ld sp, hl
    ldh a, [$39]
    jr nz, jr_014_4858

jr_014_485F:
    ld [$0039], sp
    ld hl, sp-$08
    ld b, b

jr_014_4865:
    jr nz, jr_014_485F

    nop
    ld b, b
    nop
    ldh a, [rP1]
    ccf
    nop
    ldh a, [$F8]
    ld a, $00
    nop
    ld hl, sp+$3A
    inc h
    nop
    nop

jr_014_4878:
    ld a, [hl-]
    inc b
    add b
    ld hl, sp-$10
    ld [hl], $20
    ld hl, sp+$08
    ld [hl], $00
    ldh a, [$F0]
    inc [hl]
    jr nz, jr_014_4878

    ld [$0034], sp
    ldh a, [rP1]
    inc a
    nop
    ldh a, [$F8]
    dec sp
    nop
    ld hl, sp-$08
    dec a
    jr nz, @-$06

    nop
    dec a
    nop
    nop
    ld hl, sp+$3A
    inc h
    nop
    nop

jr_014_48A1:
    ld a, [hl-]
    inc b
    add b
    ld hl, sp+$08
    inc hl
    jr nz, jr_014_48A1

jr_014_48A9:
    ldh a, [rNR44]
    nop
    ld hl, sp-$08
    dec e
    jr nz, jr_014_48A9

    nop
    dec e
    nop
    ld a, [c]

jr_014_48B5:
    db $10
    jr jr_014_48D8

    ld a, [c]
    add sp, $18
    nop
    ldh a, [rP1]
    dec de
    nop
    ldh a, [$F8]
    ld a, [de]
    nop
    ldh a, [$08]
    add hl, de
    nop
    ldh a, [$F0]

jr_014_48CA:
    add hl, de
    nop
    nop
    ld hl, sp+$3A
    inc h
    nop
    nop
    ld a, [hl-]
    inc b
    add b
    ldh a, [rP1]
    ld b, h

jr_014_48D8:
    nop
    ldh a, [$F8]
    ld b, e
    nop
    nop
    db $FD
    ld b, a
    inc b
    ld hl, sp+$01
    ld b, d
    nop
    ld hl, sp-$07
    ld b, c
    nop
    add b
    ldh a, [rP1]
    ld b, h
    nop
    ldh a, [$F8]
    ld b, e
    nop
    nop
    db $FD
    ld b, a
    inc b
    ld hl, sp+$00
    ld b, [hl]
    nop
    ld hl, sp-$08
    ld b, l
    nop
    add b
    db $FD
    ldh a, [rWY]
    nop
    nop
    ld hl, sp+$4D
    nop
    nop
    nop
    ld c, a
    inc b
    nop
    ld hl, sp+$4E
    inc b
    ld hl, sp+$00
    ld c, h
    nop
    ld hl, sp-$08

jr_014_4915:
    ld c, e
    nop
    ldh a, [rP1]
    ld c, c
    nop
    ldh a, [$F8]
    ld c, b
    nop
    add b
    ldh a, [$F8]
    ld b, h
    jr nz, jr_014_4915

jr_014_4925:
    nop
    ld b, e
    jr nz, jr_014_4929

jr_014_4929:
    ei

jr_014_492A:
    ld b, a
    inc h
    ld hl, sp-$09
    ld b, d
    jr nz, jr_014_4929

    rst $38
    ld b, c
    jr nz, jr_014_48B5

    ldh a, [$F8]
    ld b, h
    jr nz, jr_014_492A

    nop
    ld b, e
    jr nz, jr_014_493E

jr_014_493E:
    ei
    ld b, a
    inc h
    ld hl, sp-$08
    ld b, [hl]
    jr nz, jr_014_493E

    nop
    ld b, l
    jr nz, jr_014_48CA

    db $FD
    ld [$204A], sp
    nop
    nop

Call_014_4950:
    ld c, l
    jr nz, jr_014_4953

jr_014_4953:
    ld hl, sp+$4F
    inc h
    nop

jr_014_4957:
    nop
    ld c, [hl]
    inc h
    ld hl, sp-$08
    ld c, h
    jr nz, jr_014_4957

    nop
    ld c, e
    jr nz, jr_014_4953

    ld hl, sp+$49
    jr nz, jr_014_4957

    nop
    ld c, b
    jr nz, @-$7E

    nop
    nop
    ld b, $0C
    nop
    ld hl, sp+$05
    inc c
    nop
    ld hl, sp+$04
    ld [$00F8], sp
    inc bc
    ld [$F8F8], sp
    ld [bc], a
    ld [$00F0], sp
    ld bc, $F008
    ld hl, sp+$00
    ld [$0080], sp
    ld hl, sp+$06
    inc l
    nop

jr_014_498D:
    nop
    dec b
    inc l
    nop

jr_014_4991:
    nop
    inc b
    jr z, jr_014_498D

    ld hl, sp+$03
    jr z, jr_014_4991

    nop
    ld [bc], a
    jr z, jr_014_498D

    ld hl, sp+$01
    jr z, jr_014_4991

    nop
    nop
    jr z, jr_014_4925

    nop
    nop
    inc c
    inc c
    nop
    ld hl, sp+$0B
    ld [$00F8], sp
    ld a, [bc]
    ld [$F8F8], sp
    add hl, bc
    ld [$00F0], sp
    ld [$F008], sp
    ld hl, sp+$07
    ld [$0080], sp
    ld sp, hl
    inc c
    inc l
    nop

jr_014_49C3:
    ld bc, $280B
    ld hl, sp-$07
    ld a, [bc]
    jr z, jr_014_49C3

    ld bc, $2809
    ldh a, [$F9]
    ld [$F028], sp
    ld bc, $2807
    add b
    pop af
    nop
    dec d
    ld [$F8F0], sp
    dec c
    ld [$0000], sp
    inc de
    ld [$F800], sp
    ld [de], a
    ld [$0000], sp
    ld de, $000C
    ld hl, sp+$10
    inc c
    ld hl, sp+$00
    rrca
    ld [$F8F8], sp
    ld c, $08
    add b
    nop
    ld hl, sp+$18
    jr z, jr_014_49FD

jr_014_49FD:
    nop
    jr jr_014_4A08

    nop
    ld hl, sp+$17
    inc l
    nop
    nop
    rla
    inc c

jr_014_4A08:
    ld hl, sp-$08
    ld d, $28
    ld hl, sp+$00
    ld d, $08
    ldh a, [rP1]
    dec d
    ld [$F8F0], sp
    inc d
    ld [$F180], sp
    ld hl, sp+$14
    ld [$00F0], sp
    add hl, de
    ld [$0000], sp
    inc de
    ld [$F800], sp
    ld [de], a
    ld [$F800], sp
    ld de, $002C

jr_014_4A2E:
    nop
    db $10
    inc l
    ld hl, sp-$08
    rrca
    jr z, jr_014_4A2E

    nop
    ld c, $28
    add b
    nop
    nop
    ld hl, $0008
    ld hl, sp+$20
    ld [$0000], sp
    rra
    inc c
    nop
    ld hl, sp+$1E
    inc c
    ld hl, sp+$00
    dec e
    ld [$F8F8], sp
    inc e
    ld [$00F0], sp
    dec de
    ld [$F8F0], sp
    ld a, [de]
    ld [$0080], sp
    ld hl, sp+$26
    ld [$0000], sp
    ld h, $28
    nop
    nop
    dec h
    inc c
    nop

jr_014_4A68:
    ld hl, sp+$24
    inc c
    ld hl, sp-$08
    inc hl
    jr z, jr_014_4A68

    nop
    inc hl
    ld [$F8F0], sp
    ld [hl+], a
    jr z, jr_014_4A68

    nop
    ld [hl+], a
    ld [$0080], sp
    ld hl, sp+$21
    jr z, jr_014_4A81

jr_014_4A81:
    nop
    jr nz, jr_014_4AAC

    nop

jr_014_4A85:
    ld hl, sp+$1F
    inc l
    nop

jr_014_4A89:
    nop
    ld e, $2C
    ld hl, sp-$08
    dec e
    jr z, jr_014_4A89

    nop
    inc e
    jr z, jr_014_4A85

    ld hl, sp+$1B
    jr z, jr_014_4A89

    nop
    ld a, [de]
    jr z, @-$7E

    nop
    ld hl, sp+$2E
    ld [$F0FD], sp
    daa
    ld [$0000], sp
    dec l
    inc c
    nop
    ld hl, sp+$2C

jr_014_4AAC:
    inc c
    ld hl, sp+$00
    dec hl
    ld [$F8F8], sp
    ld a, [hl+]
    ld [$00F1], sp
    add hl, hl
    ld [$F8F1], sp
    jr z, jr_014_4AC5

    add b
    nop
    ld hl, sp+$32
    ld [$F0FC], sp
    daa

jr_014_4AC5:
    ld [$FE00], sp
    ld sp, $F80C
    nop
    jr nc, @+$0A

    ld hl, sp-$08
    cpl
    ld [$00F0], sp
    add hl, hl
    ld [$F8F0], sp
    jr z, @+$0A

    add b
    db $FD
    ldh a, [$27]
    ld [$F800], sp
    ld l, $08
    nop
    nop
    ld [hl], $0C
    nop
    ld hl, sp+$35
    inc c
    ld hl, sp+$00
    inc [hl]
    ld [$F8F8], sp
    inc sp
    ld [$00F1], sp
    add hl, hl
    ld [$F8F1], sp
    jr z, @+$0A

    add b
    nop
    nop
    ld l, $28
    db $FD
    ld [$2827], sp
    nop
    ld hl, sp+$2D
    inc l
    nop

jr_014_4B09:
    nop

jr_014_4B0A:
    inc l
    inc l
    ld hl, sp-$08
    dec hl
    jr z, jr_014_4B09

    nop
    ld a, [hl+]
    jr z, @-$0D

    ld hl, sp+$29
    jr z, jr_014_4B0A

    nop
    jr z, @+$2A

    add b
    nop

jr_014_4B1E:
    nop
    ld [hl-], a
    jr z, jr_014_4B1E

jr_014_4B22:
    ld [$2827], sp
    nop

jr_014_4B26:
    ld a, [$2C31]
    ld hl, sp-$08
    jr nc, jr_014_4B55

    ld hl, sp+$00
    cpl
    jr z, jr_014_4B22

    ld hl, sp+$29
    jr z, jr_014_4B26

    nop
    jr z, jr_014_4B61

    add b
    db $FD
    ld [$2827], sp
    nop
    nop
    ld l, $28
    nop
    ld hl, sp+$36
    inc l
    nop

jr_014_4B47:
    nop

jr_014_4B48:
    dec [hl]
    inc l
    ld hl, sp-$08
    inc [hl]
    jr z, jr_014_4B47

    nop
    inc sp
    jr z, @-$0D

    ld hl, sp+$29

jr_014_4B55:
    jr z, jr_014_4B48

    nop
    jr z, jr_014_4B82

    add b
    ldh a, [rP1]
    add hl, de
    ld [$F8F0], sp

jr_014_4B61:
    jr jr_014_4B6B

    nop
    ld sp, hl
    dec de
    ld a, [hl+]
    nop
    nop
    dec de
    ld a, [bc]

jr_014_4B6B:
    ld hl, sp-$08
    ld a, [de]
    add hl, hl
    ld hl, sp+$00
    ld a, [de]
    add hl, bc
    add b
    ld hl, sp-$08
    ld e, $29
    ld hl, sp+$00
    ld e, $09
    ldh a, [rP1]
    dec e
    ld [$F8F0], sp

jr_014_4B82:
    inc e
    ld [$F900], sp
    dec de
    ld a, [hl+]
    nop
    nop
    dec de
    ld a, [bc]
    add b
    nop
    ld sp, hl
    rla
    ld a, [hl+]
    nop
    nop
    rla
    ld a, [bc]
    ld hl, sp-$08
    ld d, $29
    ld hl, sp+$00
    ld d, $09
    ldh a, [rP1]
    dec d
    ld [$F8F0], sp
    inc d
    ld [$0080], sp
    nop
    ld c, $0A
    nop
    ld hl, sp+$0D
    ld a, [bc]
    ldh a, [rP1]
    ld a, [bc]
    ld [$F8F0], sp
    add hl, bc
    ld [$00F8], sp
    inc c
    add hl, bc
    ld hl, sp-$08
    dec bc
    add hl, bc
    add b
    ld hl, sp+$00
    rrca
    add hl, bc
    nop
    nop
    ld c, $0A
    nop
    ld hl, sp+$0D
    ld a, [bc]
    ldh a, [rP1]
    ld a, [bc]
    ld [$F8F0], sp
    add hl, bc
    ld [$F8F8], sp
    dec bc
    add hl, bc
    add b
    ld a, [$1206]
    ld [$00F8], sp
    rrca
    add hl, bc
    nop
    nop
    ld c, $0A
    nop
    ld hl, sp+$0D
    ld a, [bc]
    ldh a, [rP1]
    ld a, [bc]
    ld [$F8F0], sp
    add hl, bc
    ld [$F8F8], sp
    dec bc
    add hl, bc
    add b
    ld sp, hl
    dec b
    inc de
    ld [$00F8], sp
    rrca
    add hl, bc
    nop
    nop
    ld c, $0A
    nop
    ld hl, sp+$0D
    ld a, [bc]
    ldh a, [rP1]
    ld a, [bc]
    ld [$F8F0], sp
    add hl, bc
    ld [$F8F8], sp
    dec bc
    add hl, bc
    add b
    inc bc
    db $FC
    ld [$0309], sp
    ei
    rlca
    ld a, [bc]
    ld [bc], a
    di
    ld b, $0A
    ei
    db $FD
    dec b
    add hl, bc
    ei
    push af
    inc b
    add hl, bc
    ei
    cp $03
    ld [$F6FB], sp
    ld [bc], a
    ld [$FEF3], sp
    ld bc, $F308
    or $00
    ld [$0080], sp
    ld hl, sp+$0E
    ld a, [hl+]
    nop
    nop
    dec c
    ld a, [hl+]
    ldh a, [$F8]
    ld a, [bc]
    jr z, @-$0E

    nop
    add hl, bc
    jr z, @-$06

    ld hl, sp+$0C
    add hl, hl
    ld hl, sp+$00
    dec bc
    add hl, hl
    add b
    nop
    ld sp, hl
    rla
    ld a, [hl+]
    nop

jr_014_4C55:
    nop
    rla
    ld a, [bc]
    ld hl, sp-$0F
    dec hl
    jr z, jr_014_4C55

    ld [$082B], sp
    ld hl, sp+$00
    ld a, [hl+]
    add hl, bc
    ld hl, sp-$08
    add hl, hl
    add hl, bc
    ldh a, [rP1]
    ld a, [bc]
    ld [$F8F0], sp
    add hl, bc
    ld [$0080], sp
    nop
    jr nz, jr_014_4C7F

    nop
    ld hl, sp+$1F
    ld a, [bc]
    ld hl, sp+$00
    ld [hl], $09
    ld hl, sp-$08

jr_014_4C7F:
    dec [hl]
    add hl, bc
    ldh a, [rP1]
    inc [hl]
    ld [$F8F0], sp
    inc sp
    ld [$0080], sp
    nop
    scf
    ld a, [bc]
    nop
    ld hl, sp+$1F
    ld a, [bc]
    ld hl, sp+$00
    ld [hl], $09
    ld hl, sp-$08
    dec [hl]
    add hl, bc
    ldh a, [rP1]
    inc [hl]
    ld [$F8F0], sp
    inc sp
    ld [$F080], sp
    nop
    add hl, de
    ld [$F8F0], sp
    jr @+$0A

    ld hl, sp+$00
    ld [hl+], a
    add hl, bc
    ld hl, sp-$08
    ld hl, $0009
    nop
    jr nz, @+$0C

    nop
    ld hl, sp+$1F
    ld a, [bc]
    add b
    nop
    db $FC
    ld [hl-], a
    ld [$0400], sp
    dec l
    jr z, jr_014_4CC5

jr_014_4CC5:
    db $F4
    dec l
    ld [$00F0], sp
    add hl, de
    ld [$F8F0], sp
    jr @+$0A

    ld hl, sp+$00
    ld [hl+], a
    add hl, bc
    ld hl, sp-$08
    ld hl, $0009
    nop
    jr nz, @+$0C

    nop
    ld hl, sp+$1F
    ld a, [bc]
    add b
    db $FC
    db $FC
    ld [hl-], a
    ld [$04FC], sp
    dec l
    jr z, @-$02

    db $F4
    dec l
    ld [$00F0], sp
    add hl, de
    ld [$F8F0], sp
    jr @+$0A

    ld hl, sp+$00
    ld [hl+], a
    add hl, bc
    ld hl, sp-$08
    ld hl, $0009
    nop
    jr nz, @+$0C

    nop
    ld hl, sp+$1F
    ld a, [bc]
    add b
    ld hl, sp+$04
    ld l, $28
    ld hl, sp-$0C
    ld l, $08
    ld hl, sp-$04
    ld sp, $F808
    nop
    inc h
    add hl, bc
    ld hl, sp-$08
    inc hl
    add hl, bc
    ldh a, [rP1]
    add hl, de
    ld [$F8F0], sp
    jr jr_014_4D2A

    nop
    nop
    jr nz, jr_014_4D30

    nop
    ld hl, sp+$1F
    ld a, [bc]

jr_014_4D2A:
    add b
    db $F4
    inc b
    ld l, $28
    db $F4

jr_014_4D30:
    db $F4
    ld l, $08
    db $F4
    db $FC
    ld sp, $F808
    nop
    inc h
    add hl, bc
    ld hl, sp-$08
    inc hl
    add hl, bc
    ldh a, [rP1]
    add hl, de
    ld [$F8F0], sp
    jr jr_014_4D4F

    nop
    nop

jr_014_4D49:
    jr nz, @+$0C

    nop
    ld hl, sp+$1F
    ld a, [bc]

jr_014_4D4F:
    add b
    ldh a, [$FC]
    jr nc, @+$0A

    ldh a, [rDIV]
    cpl
    jr z, jr_014_4D49

    db $F4
    cpl
    ld [$00F8], sp
    inc l
    add hl, bc
    ld hl, sp-$08
    dec h
    add hl, bc
    ldh a, [rP1]
    dec e
    ld [$F8F0], sp

jr_014_4D6A:
    inc e
    ld [$0000], sp
    jr nz, jr_014_4D7A

    nop
    ld hl, sp+$1F
    ld a, [bc]
    add b
    db $EC
    db $FC
    jr nc, @+$0A

    db $EC

jr_014_4D7A:
    inc b
    cpl
    jr z, jr_014_4D6A

jr_014_4D7E:
    db $F4
    cpl
    ld [$00F8], sp
    inc l
    add hl, bc
    ld hl, sp-$08
    dec h
    add hl, bc
    ldh a, [rP1]
    dec e
    ld [$F8F0], sp
    inc e
    ld [$0000], sp
    jr nz, jr_014_4D9F

    nop
    ld hl, sp+$1F
    ld a, [bc]
    add b
    nop
    nop
    inc de
    ld [bc], a
    nop

jr_014_4D9F:
    ld hl, sp+$12
    ld [bc], a
    ld hl, sp+$00
    add hl, bc
    inc bc
    ld hl, sp-$08
    ld [$F003], sp
    nop
    inc bc
    nop
    ldh a, [$F8]
    ld [bc], a
    nop
    add b
    nop
    nop
    dec d
    ld [bc], a
    nop
    ld hl, sp+$14
    ld [bc], a
    ld hl, sp+$00
    dec bc
    inc bc
    ld hl, sp-$08
    ld a, [bc]
    inc bc
    ldh a, [rP1]
    inc bc
    nop
    ldh a, [$F8]
    ld [bc], a
    nop
    add b
    ldh a, [rP1]
    inc bc
    nop
    ldh a, [$F8]
    ld [bc], a
    nop
    nop
    nop
    rla
    ld [bc], a
    nop
    ld hl, sp+$16
    ld [bc], a
    ld hl, sp+$00
    dec c
    inc bc
    ld hl, sp-$08
    inc c
    inc bc
    add b
    nop
    ld hl, sp+$13
    ld [hl+], a
    nop

jr_014_4DEA:
    nop
    ld [de], a
    ld [hl+], a
    ld hl, sp-$08
    add hl, bc
    inc hl
    ld hl, sp+$00
    ld [$F023], sp
    ld hl, sp+$03
    jr nz, jr_014_4DEA

    nop
    ld [bc], a
    jr nz, jr_014_4D7E

    nop
    ld hl, sp+$15
    ld [hl+], a
    nop

jr_014_4E03:
    nop
    inc d
    ld [hl+], a
    ld hl, sp-$08
    dec bc
    inc hl
    ld hl, sp+$00

jr_014_4E0C:
    ld a, [bc]
    inc hl
    ldh a, [$F8]
    inc bc
    jr nz, jr_014_4E03

    nop
    ld [bc], a
    jr nz, @-$7E

    ldh a, [$F8]
    inc bc
    jr nz, jr_014_4E0C

    nop
    ld [bc], a
    jr nz, jr_014_4E20

jr_014_4E20:
    ld hl, sp+$17
    ld [hl+], a
    nop
    nop
    ld d, $22
    ld hl, sp-$08
    dec c
    inc hl
    ld hl, sp+$00
    inc c
    inc hl
    add b
    nop
    nop
    ld de, $0002
    ld hl, sp+$10
    ld [bc], a
    ld hl, sp+$00
    rlca
    inc bc
    ld hl, sp-$08
    ld b, $03
    ldh a, [rP1]
    ld bc, $F000
    ld hl, sp+$00
    nop
    add b
    nop
    nop
    rrca
    ld [bc], a
    nop
    ld hl, sp+$0E
    ld [bc], a
    ld hl, sp+$00
    dec b
    inc bc
    ld hl, sp-$08
    inc b
    inc bc
    ldh a, [rP1]
    ld bc, $F000
    ld hl, sp+$00
    nop
    add b
    nop
    nop
    dec h
    ld [bc], a
    nop
    ld hl, sp+$24
    ld [bc], a
    ld hl, sp+$00
    daa
    inc bc
    ld hl, sp-$08
    ld h, $03
    ldh a, [rP1]
    ld bc, $F000
    ld hl, sp+$00
    nop

jr_014_4E7A:
    add b
    nop
    nop
    rra
    ld [bc], a
    nop
    ld hl, sp+$1E
    ld [bc], a
    ld hl, sp+$00
    dec de
    ld bc, $F8F8
    ld a, [de]
    inc bc

jr_014_4E8B:
    ldh a, [rP1]
    inc bc
    nop
    ldh a, [$F8]
    ld [bc], a
    nop
    add b
    nop
    nop
    ld hl, $0002
    ld hl, sp+$20
    ld [bc], a

jr_014_4E9C:
    ld hl, sp+$00
    dec e
    ld bc, $F8F8
    inc e
    ld bc, $00F0
    inc bc
    nop
    ldh a, [$F8]
    ld [bc], a
    nop
    add b
    nop
    nop
    inc hl
    ld [bc], a
    nop
    ld hl, sp+$22
    ld [bc], a
    add b
    nop
    nop
    add hl, de
    ld [bc], a
    nop
    ld hl, sp+$18
    ld [bc], a
    ld hl, sp+$00
    inc bc
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    add b
    rst $38
    nop
    add hl, de
    ld [bc], a
    rst $38
    ld hl, sp+$18
    ld [bc], a
    rst $30
    nop
    inc bc
    nop
    rst $30
    ld hl, sp+$02
    nop
    add b
    cp $00
    add hl, de
    ld [bc], a
    cp $F8
    jr jr_014_4EE2

    or $00

jr_014_4EE2:
    inc bc
    nop
    or $F8
    ld [bc], a
    nop
    add b
    nop
    ld hl, sp+$19
    ld [hl+], a
    nop

jr_014_4EEE:
    nop
    jr jr_014_4F13

    ld hl, sp-$08
    inc bc
    jr nz, jr_014_4EEE

    nop
    ld [bc], a
    jr nz, jr_014_4E7A

    rst $38
    ld hl, sp+$19
    ld [hl+], a

jr_014_4EFE:
    rst $38
    nop
    jr jr_014_4F24

    rst $30
    ld hl, sp+$03
    jr nz, jr_014_4EFE

    nop
    ld [bc], a
    jr nz, jr_014_4E8B

    cp $F8
    add hl, de

jr_014_4F0E:
    ld [hl+], a
    cp $00
    jr @+$24

jr_014_4F13:
    or $F8
    inc bc
    jr nz, jr_014_4F0E

    nop
    ld [bc], a
    jr nz, jr_014_4E9C

    ld hl, sp-$10
    ld de, $F00A
    ldh a, [$0E]
    ld a, [bc]

jr_014_4F24:
    ldh a, [$F8]
    ld a, [bc]
    ld a, [bc]
    ld hl, sp-$08
    dec c
    ld a, [bc]
    ld hl, sp+$00
    rlca
    add hl, bc
    ldh a, [rP1]
    inc b
    ld [$08F8], sp
    ld bc, $F009
    ld [$0800], sp
    add b
    ld hl, sp-$07
    dec c
    ld a, [bc]

jr_014_4F41:
    ld hl, sp-$0F
    ld [de], a
    ld a, [bc]
    ldh a, [$F1]
    rrca
    ld a, [bc]
    ldh a, [$F9]
    dec bc
    ld a, [bc]
    ld hl, sp+$01
    ld [$F009], sp
    ld bc, $0805
    ld hl, sp+$09
    ld [bc], a
    ld [$09F0], sp
    nop
    ld [$F880], sp
    ld a, [c]
    inc de
    ld a, [bc]

jr_014_4F62:
    ldh a, [$F2]
    db $10
    ld a, [bc]
    ld hl, sp-$06

Jump_014_4F68:
    dec c
    ld a, [bc]
    ldh a, [$FA]
    inc c
    ld [$02F8], sp
    add hl, bc
    add hl, bc
    ldh a, [rSC]
    ld b, $08
    ld hl, sp+$0A
    inc bc
    ld [$0AF0], sp
    nop
    ld [$F880], sp
    ld [$2A11], sp
    ldh a, [$08]
    ld c, $2A
    ldh a, [rP1]
    ld a, [bc]
    ld a, [hl+]
    ld hl, sp+$00
    dec c
    ld a, [hl+]
    ld hl, sp-$08
    rlca
    add hl, hl
    ldh a, [$F8]
    inc b
    jr z, @-$06

    ldh a, [rSB]
    add hl, hl
    ldh a, [$F0]
    nop
    jr z, @-$7E

    ld hl, sp-$01
    dec c
    ld a, [hl+]
    ld hl, sp+$07
    ld [de], a
    ld a, [hl+]
    ldh a, [rTAC]
    rrca
    ld a, [hl+]
    ldh a, [rIE]
    dec bc
    ld a, [hl+]
    ld hl, sp-$09
    ld [$F029], sp
    rst $30
    dec b
    jr z, @-$06

    rst $28
    ld [bc], a
    jr z, @-$0E

    rst $28
    nop
    jr z, jr_014_4F41

    ld hl, sp+$06
    inc de
    ld a, [hl+]
    ldh a, [rTMA]
    db $10
    ld a, [hl+]
    ld hl, sp-$02
    dec c
    ld a, [hl+]
    ldh a, [$FE]
    inc c
    jr z, @-$06

    or $09
    add hl, hl
    ldh a, [$F6]
    ld b, $28
    ld hl, sp-$12
    inc bc
    jr z, @-$0E

    xor $00
    jr z, jr_014_4F62

    ldh a, [rP1]
    rla
    ld a, [hl+]
    ldh a, [$F8]
    rla
    ld a, [bc]
    nop
    nop
    ld d, $29
    nop
    ld hl, sp+$16
    add hl, bc
    ld hl, sp+$00
    dec d
    ld [$F8F8], sp
    inc d
    ld [$F180], sp
    nop
    ld a, [de]
    ld a, [hl+]
    pop af
    ld hl, sp+$1A
    ld a, [bc]
    ld bc, $1900
    add hl, hl
    ld bc, $19F8
    add hl, bc
    ld sp, hl
    nop
    jr @+$0A

    ld sp, hl
    ld hl, sp+$14
    ld [$F280], sp
    nop
    ld e, $2A
    ld a, [c]
    ld hl, sp+$1E
    ld a, [bc]
    ld [bc], a
    nop
    dec e
    add hl, hl
    ld [bc], a
    ld hl, sp+$1D
    ld [$00FA], sp
    inc e
    ld [$F8FA], sp
    dec de
    ld [$0080], sp
    nop
    ld [hl+], a
    ld a, [hl+]
    nop
    ld hl, sp+$22
    ld a, [bc]
    ld hl, sp+$00
    ld hl, $F829
    ld hl, sp+$21
    add hl, bc
    ldh a, [rP1]
    jr nz, jr_014_5049

    ldh a, [$F8]
    rra
    ld [$FF80], sp
    nop
    inc h

jr_014_5049:
    ld a, [hl+]
    rst $38
    ld hl, sp+$24
    ld a, [bc]
    rst $30
    nop
    inc hl
    add hl, hl
    rst $30
    ld hl, sp+$23
    add hl, bc
    rst $28
    nop
    jr nz, @+$0A

    rst $28

Call_014_505B:
    ld hl, sp+$1F
    ld [$FE80], sp
    nop
    ld h, $2A
    cp $F8
    ld h, $0A
    or $00
    dec h
    add hl, hl
    or $F8
    dec h
    add hl, bc
    xor $00
    jr nz, @+$0A

    xor $F8

jr_014_5075:
    rra
    ld [$FE80], sp
    nop
    jr nc, jr_014_5086

    cp $F8
    cpl
    ld a, [bc]
    or $00
    ld a, [hl+]
    add hl, bc
    or $F8

jr_014_5086:
    add hl, hl
    add hl, bc
    xor $00
    jr z, jr_014_5094

    xor $F8

jr_014_508E:
    daa
    ld [$F780], sp
    nop
    inc l

jr_014_5094:
    add hl, bc
    rst $30
    ld hl, sp+$2B
    add hl, bc
    rst $38
    nop
    jr nc, @+$0C

    rst $38
    ld hl, sp+$2F
    ld a, [bc]
    rst $28
    nop
    jr z, @+$0A

    rst $28
    ld hl, sp+$27
    ld [$F880], sp
    nop
    ld l, $09
    ld hl, sp-$08
    dec l
    add hl, bc
    nop
    nop
    jr nc, jr_014_50C0

    nop
    ld hl, sp+$2F
    ld a, [bc]
    ldh a, [rP1]
    jr z, jr_014_50C6

    ldh a, [$F8]

jr_014_50C0:
    daa
    ld [$FE80], sp
    ld hl, sp+$30

jr_014_50C6:
    ld a, [hl+]
    cp $00
    cpl
    ld a, [hl+]
    or $F8
    ld a, [hl+]
    add hl, hl
    or $00
    add hl, hl
    add hl, hl
    xor $F8
    jr z, @+$2A

    xor $00
    daa
    jr z, @-$7E

    rst $30
    ld hl, sp+$2C
    add hl, hl

jr_014_50E0:
    rst $30
    nop
    dec hl
    add hl, hl
    rst $38
    ld hl, sp+$30
    ld a, [hl+]
    rst $38
    nop
    cpl
    ld a, [hl+]
    rst $28
    ld hl, sp+$28
    jr z, jr_014_50E0

    nop
    daa
    jr z, jr_014_5075

    ld hl, sp-$08
    ld l, $29
    ld hl, sp+$00
    dec l
    add hl, hl
    nop
    ld hl, sp+$30
    ld a, [hl+]
    nop
    nop
    cpl
    ld a, [hl+]
    ldh a, [$F8]
    jr z, jr_014_5131

    ldh a, [rP1]
    daa
    jr z, jr_014_508E

    cp $00
    scf
    ld a, [bc]
    cp $F8
    ld [hl], $0A
    or $F8
    inc sp
    add hl, hl
    or $00
    inc sp
    add hl, bc
    xor $00
    ld [hl-], a
    ld [$F8EE], sp
    ld sp, $8008
    rst $30
    nop
    inc [hl]
    add hl, bc
    rst $30
    ld hl, sp+$34
    add hl, hl
    rst $38
    nop

jr_014_5131:
    scf
    ld a, [bc]
    rst $38
    ld hl, sp+$36
    ld a, [bc]
    rst $28
    nop
    ld [hl-], a
    ld [$F8EF], sp
    ld sp, $8008
    ld hl, sp-$08
    dec [hl]
    add hl, hl
    ld hl, sp+$00
    dec [hl]
    add hl, bc
    nop
    nop
    scf
    ld a, [bc]
    nop
    ld hl, sp+$36
    ld a, [bc]
    ldh a, [rP1]
    ld [hl-], a
    ld [$F8F0], sp
    ld sp, $8008
    cp $00
    ld a, $0A
    cp $F8
    dec a
    ld a, [bc]
    or $F8
    ld a, [hl-]
    add hl, hl
    or $00
    ld a, [hl-]
    add hl, bc
    xor $00
    add hl, sp
    ld [$F8EE], sp
    jr c, jr_014_5179

    add b
    rst $30
    ld hl, sp+$3B
    add hl, hl
    rst $30
    nop
    dec sp

jr_014_5179:
    add hl, bc
    rst $38
    nop
    ld a, $0A
    rst $38
    ld hl, sp+$3D
    ld a, [bc]
    rst $28
    nop
    add hl, sp
    ld [$F8EF], sp
    jr c, jr_014_5192

    add b
    ld hl, sp-$08
    inc a
    add hl, hl
    ld hl, sp+$00
    inc a

jr_014_5192:
    add hl, bc
    nop
    nop
    ld a, $0A
    nop
    ld hl, sp+$3D
    ld a, [bc]
    ldh a, [rP1]
    add hl, sp
    ld [$F8F0], sp
    jr c, jr_014_51AB

    add b
    inc b
    db $FC
    ld [$FC0A], sp
    db $FC
    ld [bc], a

jr_014_51AB:
    add hl, bc
    push af
    db $FC
    nop
    ld [$0480], sp

jr_014_51B2:
    db $FC
    inc b
    ld a, [bc]
    db $FC
    db $FC
    ld bc, $F409
    db $FC
    nop
    ld [$0480], sp

jr_014_51BF:
    db $FC
    ld [$FC0A], sp
    db $FC
    ld [bc], a
    add hl, hl
    push af
    db $FC
    nop
    ld [$0480], sp
    db $FC
    ld [$FC0A], sp

jr_014_51D0:
    db $FC
    rlca
    add hl, bc
    push af
    db $FC
    dec b
    ld [$0480], sp
    db $FC
    inc b
    ld a, [bc]
    db $FC
    db $FC
    ld b, $09
    db $F4
    db $FC
    dec b
    ld [$0480], sp
    db $FC
    ld [$FC2A], sp
    db $FC
    rlca
    add hl, hl
    push af
    db $FC
    dec b
    ld [$FC80], sp
    inc b
    inc bc
    jr z, jr_014_51FB

    db $FC
    dec bc
    ld a, [bc]
    db $FC

jr_014_51FB:
    db $FC
    ld a, [bc]
    add hl, bc
    push af
    db $FC
    add hl, bc
    ld [$0480], sp
    db $FC
    dec c
    ld a, [bc]
    db $FC
    db $FC
    inc c
    add hl, bc
    db $F4
    db $FC
    add hl, bc
    ld [$FC80], sp
    db $F4
    inc bc
    ld [$FC04], sp
    rrca
    ld a, [bc]
    db $FC
    db $FC
    ld c, $09
    push af
    db $FC
    add hl, bc
    ld [$FC80], sp
    db $F4
    inc bc
    ld [$FC04], sp
    dec bc
    ld a, [hl+]
    db $FC
    db $FC
    ld a, [bc]
    add hl, hl
    push af
    db $FC
    add hl, bc
    jr z, jr_014_51B2

    inc b

jr_014_5233:
    db $FC
    dec c
    ld a, [hl+]
    db $FC
    db $FC
    inc c
    add hl, hl
    db $F4
    db $FC
    add hl, bc
    jr z, jr_014_51BF

    db $FC
    inc b
    inc bc
    jr z, jr_014_5248

    db $FC
    rrca
    ld a, [hl+]
    db $FC

jr_014_5248:
    db $FC
    ld c, $29
    push af
    db $FC
    add hl, bc
    jr z, jr_014_51D0

    nop
    nop
    rlca
    ld [bc], a

jr_014_5254:
    nop
    ld hl, sp+$06
    ld [bc], a
    ld hl, sp+$08
    dec b
    nop
    ld hl, sp+$00
    inc b
    nop
    ld hl, sp+$00
    inc bc
    ld bc, $F8F8
    ld [bc], a
    ld bc, $00F0
    ld bc, $F000
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
    inc c
    nop
    or $08
    dec bc
    nop
    ld hl, sp+$00
    ld a, [bc]
    ld bc, $F8F8
    add hl, bc
    ld bc, $00F0
    ld [$0000], sp
    nop
    rlca
    ld [bc], a
    nop
    ld hl, sp+$06
    ld [bc], a
    ldh a, [$F9]
    nop
    nop
    add b
    nop
    ld hl, sp+$07
    ld [hl+], a
    nop

jr_014_5297:
    nop
    ld b, $22
    ld hl, sp-$10
    dec b
    jr nz, jr_014_5297

    ld hl, sp+$04
    jr nz, @-$06

    ld hl, sp+$03
    ld hl, $00F8
    ld [bc], a
    ld hl, $F8F0
    ld bc, $F020
    nop
    nop
    jr nz, jr_014_5233

    ld hl, sp-$08
    inc c
    jr nz, @-$08

    ldh a, [$0B]
    jr nz, @-$06

    ld hl, sp+$0A
    ld hl, $00F8
    add hl, bc
    ld hl, $F8F0
    ld [$0020], sp
    ld hl, sp+$07
    ld [hl+], a
    nop
    nop
    ld b, $22
    ldh a, [rIE]
    nop
    jr nz, jr_014_5254

    nop
    nop
    ld b, l
    dec b
    nop
    ld hl, sp+$44
    dec b
    ld hl, sp+$00
    dec d
    rlca
    ld hl, sp-$08
    inc d
    rlca
    ldh a, [rP1]
    rlca
    ld bc, $F8F0
    ld b, $01
    add b
    nop
    ld hl, sp+$45
    dec h
    nop
    nop
    ld b, h
    dec h
    ld hl, sp-$08
    dec d
    daa
    ld hl, sp+$00
    inc d
    daa
    ldh a, [$F8]
    rlca
    ld hl, $00F0
    ld b, $21
    add b
    nop
    nop
    ld c, a
    dec b
    nop
    ld hl, sp+$4E
    dec b
    ld hl, sp+$00
    rla
    rlca
    ld hl, sp-$08
    ld d, $07
    ldh a, [rP1]
    dec c
    ld bc, $F8F0
    inc c
    ld bc, $0080
    ld hl, sp+$4F
    dec h
    nop
    nop
    ld c, [hl]
    dec h
    ld hl, sp-$08
    rla
    daa
    ld hl, sp+$00
    ld d, $27
    ldh a, [$F8]
    dec c
    ld hl, $00F0
    inc c
    ld hl, $F880
    nop
    rrca
    rlca
    ld hl, sp-$08
    ld c, $07
    ldh a, [rP1]
    rlca
    ld bc, $F8F0
    ld b, $01
    nop
    nop
    ld b, l
    dec b
    nop
    ld hl, sp+$44
    dec b
    add b
    nop
    nop
    ld b, l
    dec b
    nop
    ld hl, sp+$44
    dec b
    ld hl, sp+$00
    ld de, $F807
    ld hl, sp+$10
    rlca
    ldh a, [rP1]
    add hl, bc
    ld bc, $F8F0
    ld [$8001], sp
    nop
    nop
    ld b, [hl]
    dec b
    nop
    ld hl, sp+$44
    dec b
    ld hl, sp+$00
    ld de, $F807
    ld hl, sp+$10
    rlca
    ldh a, [rP1]
    add hl, bc
    ld bc, $F8F0
    ld [$8001], sp
    ld hl, sp-$08
    rrca
    daa
    ld hl, sp+$00
    ld c, $27
    ldh a, [$F8]
    rlca
    ld hl, $00F0
    ld b, $21
    nop
    ld hl, sp+$45
    dec h
    nop
    nop
    ld b, h
    dec h
    add b
    nop
    ld hl, sp+$45
    dec h
    nop
    nop
    ld b, h
    dec h
    ld hl, sp-$08
    ld de, $F827
    nop
    db $10
    daa
    ldh a, [$F8]
    add hl, bc
    ld hl, $00F0
    ld [$8021], sp
    nop
    ld hl, sp+$46
    dec h
    nop
    nop
    ld b, h
    dec h
    ld hl, sp-$08
    ld de, $F827
    nop
    db $10
    daa
    ldh a, [$F8]
    add hl, bc
    ld hl, $00F0
    ld [$8021], sp
    nop
    nop
    ld b, l
    dec b
    nop
    ld hl, sp+$44
    dec b
    ld hl, sp+$00
    inc de
    rlca
    ld hl, sp-$08
    ld [de], a
    rlca
    ldh a, [rP1]
    dec bc
    ld bc, $F8F0
    ld a, [bc]
    ld bc, $0080
    ld hl, sp+$45
    dec h
    nop
    nop
    ld b, h
    dec h
    ld hl, sp-$08
    inc de
    daa
    ld hl, sp+$00
    ld [de], a
    daa
    ldh a, [$F8]
    dec bc
    ld hl, $00F0
    ld a, [bc]
    ld hl, $0080
    db $FC
    ld c, l
    dec b
    ld hl, sp+$00
    dec h
    rlca
    ld hl, sp-$08
    inc h
    rlca
    pop af
    nop
    ld bc, $F101
    ld hl, sp+$00
    ld bc, $0080
    ld sp, hl
    ld b, a
    dec h
    nop
    nop
    ld b, a
    dec b
    ld hl, sp-$08
    inc hl
    daa
    ld hl, sp+$00
    inc hl
    rlca
    ldh a, [rP1]
    ld bc, $F001
    ld hl, sp+$00
    ld bc, $0080
    db $FC
    ld c, l
    dec h
    ld hl, sp-$08
    dec h
    daa
    ld hl, sp+$00
    inc h
    daa
    pop af
    nop
    ld bc, $F101
    ld hl, sp+$00
    ld bc, $0080
    db $FD
    ld c, e
    dec h
    ld hl, sp+$00
    inc [hl]
    rlca
    ld hl, sp-$08
    inc sp
    rlca
    pop af
    nop
    inc bc
    ld bc, $F8F1
    ld [bc], a
    ld bc, $F880
    ld hl, sp+$68
    rlca
    ld hl, sp+$00
    jr jr_014_5467

    nop
    ld sp, hl
    ld c, b
    dec h
    nop
    nop
    ld c, b

jr_014_5467:
    dec b
    ldh a, [rP1]
    inc bc
    ld bc, $F8F0
    ld [bc], a
    ld bc, $F980
    nop
    ld [hl], d
    rlca
    ld sp, hl
    ld hl, sp+$71
    rlca
    nop
    db $FC
    ld c, e
    dec b
    pop af
    nop
    inc bc
    ld bc, $F8F1
    ld [bc], a
    ld bc, $F880
    nop
    ld l, $07
    ld hl, sp-$08
    dec l
    rlca
    nop
    nop
    ld h, b
    dec b
    nop
    ld hl, sp+$5F
    dec b
    pop af
    nop
    dec b
    ld bc, $F8F1
    inc b
    ld bc, $0080
    nop
    ld h, d
    dec b
    nop
    ld hl, sp+$61
    dec b
    ld hl, sp+$00
    add hl, hl
    rlca
    ld hl, sp-$08
    jr z, jr_014_54B6

    ldh a, [rP1]
    dec b
    ld bc, $F8F0
    inc b

jr_014_54B6:
    ld bc, $F880
    nop
    ld [hl-], a
    rlca
    ld hl, sp-$08
    ld sp, $0007
    nop
    ld h, h
    dec b
    nop
    ld hl, sp+$63
    dec b
    pop af
    nop
    dec b
    ld bc, $F8F1
    inc b
    ld bc, $F880
    ld hl, sp+$2E
    daa
    ld hl, sp+$00
    dec l
    daa
    nop
    ld hl, sp+$60
    dec h
    nop
    nop
    ld e, a
    dec h
    pop af
    ld hl, sp+$05
    ld hl, $00F1
    inc b
    ld hl, $0080
    ld hl, sp+$62
    dec h
    nop
    nop
    ld h, c
    dec h
    ld hl, sp-$08
    add hl, hl
    daa
    ld hl, sp+$00
    jr z, jr_014_5521

    ldh a, [$F8]
    dec b
    ld hl, $00F0
    inc b
    ld hl, $F880
    ld hl, sp+$32
    daa
    ld hl, sp+$00
    ld sp, $0027
    ld hl, sp+$64
    dec h
    nop
    nop
    ld h, e
    dec h
    pop af
    ld hl, sp+$05
    ld hl, $00F1
    inc b
    ld hl, $0080
    nop
    ld d, c
    dec b
    nop

jr_014_5521:
    ld hl, sp+$50
    dec b
    ld hl, sp+$00
    ld [hl+], a
    rlca
    ld hl, sp-$08
    ld hl, $F007
    nop
    ld bc, $F001
    ld hl, sp+$00
    ld bc, $F880
    nop
    ld c, c
    daa
    ld hl, sp-$08
    ld c, c
    rlca
    nop
    ld sp, hl
    ld b, a
    dec h
    nop
    nop
    ld b, a
    dec b
    pop af
    nop
    ld bc, $F101
    ld hl, sp+$00
    ld bc, $0080
    ld hl, sp+$51
    dec h
    nop
    nop
    ld d, b
    dec h
    ld hl, sp-$08
    ld [hl+], a
    daa
    ld hl, sp+$00
    ld hl, $F027
    nop
    ld bc, $F001
    ld hl, sp+$00
    ld bc, $0080
    ld hl, sp+$58
    dec h
    nop
    nop
    ld d, a
    dec h
    ld hl, sp+$00
    jr c, jr_014_557A

    ld hl, sp-$08
    scf
    rlca
    ldh a, [rP1]
    inc bc

jr_014_557A:
    ld bc, $F8F0
    ld [bc], a
    ld bc, $F880
    ld hl, sp+$35
    daa
    ld hl, sp+$00
    dec [hl]
    rlca
    nop
    ld sp, hl
    ld c, b
    dec h
    nop
    nop
    ld c, b
    dec b
    pop af
    nop
    inc bc
    ld bc, $F8F1
    ld [bc], a
    ld bc, $0080
    nop
    ld e, b
    dec b
    nop
    ld hl, sp+$57
    dec b
    ld hl, sp-$08
    jr c, jr_014_55CC

    ld hl, sp+$00
    scf
    daa
    ldh a, [rP1]
    inc bc
    ld bc, $F8F0
    ld [bc], a
    ld bc, $F880
    ld [bc], a
    daa
    rlca
    ld hl, sp-$06
    ld h, $07
    rst $38
    ld [$0267], sp
    rst $38
    nop
    ld e, d
    dec b
    rst $38
    ld hl, sp+$59
    dec b
    ldh a, [$03]
    dec b
    ld bc, $FBF0

jr_014_55CC:
    inc b
    ld bc, $0080
    inc bc
    ld h, d
    dec b
    nop
    ei
    ld h, c
    dec b
    ld hl, sp+$03
    jr nc, jr_014_55E2

    ld hl, sp-$05
    cpl
    rlca
    pop af
    inc bc
    dec b

jr_014_55E2:
    ld bc, $FBF1
    inc b
    ld bc, $F880
    ld [bc], a
    dec hl
    rlca
    ld hl, sp-$06
    ld a, [hl+]
    rlca
    rst $38
    ld [$0267], sp
    rst $38
    nop
    ld h, [hl]
    dec b
    rst $38
    ld hl, sp+$65
    dec b
    ldh a, [$03]
    dec b
    ld bc, $FBF0
    inc b
    ld bc, $F880
    rst $30
    daa
    daa
    ld hl, sp-$01
    ld h, $27
    rst $38
    pop af
    ld h, a
    ld [hl+], a
    rst $38
    ld sp, hl
    ld e, d
    dec h
    rst $38
    ld bc, $2559
    ldh a, [$F6]
    dec b
    ld hl, $FEF0
    inc b
    ld hl, $0080
    or $62
    dec h
    nop
    cp $61
    dec h
    ld hl, sp-$0A
    jr nc, jr_014_564F

    ld hl, sp-$02
    cpl
    daa
    pop af
    or $05
    ld hl, $FEF1
    inc b
    ld hl, $F880
    rst $30
    dec hl
    daa
    ld hl, sp-$01
    ld a, [hl+]
    daa
    rst $38
    pop af
    ld h, a
    ld [hl+], a
    rst $38
    ld sp, hl
    ld h, [hl]
    dec h
    rst $38
    nop
    ld h, l
    dec h

jr_014_564F:
    ldh a, [$F6]
    dec b
    ld hl, $FEF0
    inc b
    ld hl, $F880
    ld hl, sp+$25
    ld hl, $0000
    ld d, h
    ld [bc], a
    nop
    ld hl, sp+$53
    ld [bc], a
    ld hl, sp+$00
    dec a
    ld bc, $00F1
    ld bc, $F100
    ld hl, sp+$00
    nop
    add b
    nop
    nop
    ld d, [hl]
    ld [bc], a
    nop
    ld hl, sp+$55
    ld [bc], a
    ld hl, sp+$00
    ccf
    ld bc, $F8F8
    ld a, $01
    ldh a, [rP1]

jr_014_5683:
    ld bc, $F000
    ld hl, sp+$00
    nop
    add b
    nop
    nop
    ld e, b
    ld [bc], a
    nop
    ld hl, sp+$57
    ld [bc], a
    ld hl, sp+$00
    ld b, c
    ld bc, $F8F8
    ld b, b
    ld bc, $00F1
    inc bc
    nop
    pop af
    ld hl, sp+$02
    nop
    add b
    ld hl, sp+$00
    ld b, e
    ld bc, $F8F8
    ld b, d
    ld bc, $FC00
    ld c, d
    ld [bc], a
    ldh a, [rP1]
    inc bc
    nop
    ldh a, [$F8]
    ld [bc], a
    nop
    add b
    ld hl, sp+$00
    ld a, [hl-]
    ld bc, $F8F8
    add hl, sp
    ld bc, $0000
    ld e, h
    ld [bc], a
    nop
    ld hl, sp+$5B
    ld [bc], a
    ld a, [c]
    ld [bc], a
    dec b
    nop
    ld a, [c]
    ld a, [$0004]
    add b
    nop
    nop
    ld e, [hl]
    ld [bc], a
    nop
    ld hl, sp+$5D
    ld [bc], a
    pop af
    nop
    dec b
    nop
    pop af
    ld hl, sp+$04
    nop
    ld hl, sp+$00
    inc a
    ld bc, $F8F8
    dec sp
    ld bc, $F880
    ld hl, sp+$3A
    ld hl, $00F8
    add hl, sp

jr_014_56F1:
    ld hl, $F800
    ld e, h
    ld [hl+], a
    nop
    nop
    ld e, e
    ld [hl+], a
    ld a, [c]
    or $05
    jr nz, jr_014_56F1

    cp $04

jr_014_5701:
    jr nz, jr_014_5683

    nop
    ld hl, sp+$5E
    ld [hl+], a
    nop
    nop
    ld e, l
    ld [hl+], a
    pop af

jr_014_570C:
    ld hl, sp+$05
    jr nz, jr_014_5701

    nop
    inc b
    jr nz, jr_014_570C

    ld hl, sp+$3C
    ld hl, $00F8
    dec sp
    ld hl, $0480
    ld hl, sp+$52
    ld [hl+], a
    inc b
    nop
    ld d, d
    ld [bc], a
    db $FC
    ld hl, sp+$20
    ld hl, $00FC
    jr nz, jr_014_572D

    db $F4

jr_014_572D:
    nop
    ld bc, $F400
    ld hl, sp+$00
    nop
    add b
    db $FC
    ld hl, sp+$6A
    ld hl, $00FC
    ld l, d
    ld bc, $0004
    ld l, e
    ld [bc], a
    inc b
    ld hl, sp+$6B
    ld [hl+], a
    db $F4
    nop
    inc bc
    nop
    db $F4
    ld hl, sp+$02
    nop
    add b
    inc b
    nop
    ld l, a
    ld [bc], a
    inc b
    ld hl, sp+$6E
    ld [bc], a
    db $FC
    nop
    ld l, l
    ld bc, $F8FC
    ld l, h
    ld bc, $00F4
    dec b
    nop
    db $F4
    ld hl, sp+$04
    nop
    add b
    inc b
    ld hl, sp+$6F
    ld [hl+], a
    inc b
    nop
    ld l, [hl]
    ld [hl+], a
    db $FC

jr_014_5770:
    ld hl, sp+$6D
    ld hl, $00FC
    ld l, h
    ld hl, $F8F4
    dec b
    jr nz, jr_014_5770

    nop
    inc b
    jr nz, @-$7E

    ld hl, sp+$00
    ld bc, $F800
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, [de]
    ld hl, $F800
    ld a, [de]
    ld bc, $0080
    nop
    dec de
    ld hl, $F800
    dec de
    ld bc, $00F9
    ld bc, $F900
    ld hl, sp+$00
    nop
    add b
    nop
    ld hl, sp+$36
    ld hl, $0000
    ld [hl], $01
    ld hl, sp+$00
    inc bc
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    add b
    ld sp, hl
    nop
    inc bc
    nop
    ld sp, hl
    ld hl, sp+$02
    nop
    nop
    ld hl, sp+$19
    ld hl, $0000
    add hl, de
    ld bc, $0080
    nop
    dec e
    ld bc, $F800
    inc e
    ld bc, $00F8
    dec b
    nop
    ld hl, sp-$08
    inc b
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
    rra
    ld bc, $F800
    ld e, $01
    add b
    nop
    ld hl, sp+$1D
    ld hl, $0000
    inc e
    ld hl, $F8F8
    dec b
    jr nz, @-$06

    nop
    inc b

jr_014_57F5:
    jr nz, @-$7E

    ld sp, hl
    ld hl, sp+$05
    jr nz, jr_014_57F5

    nop
    inc b
    jr nz, jr_014_5800

jr_014_5800:
    ld hl, sp+$1F
    ld hl, $0000
    ld e, $21
    add b
    ld hl, sp+$00
    ld [hl], e
    ld bc, $0000
    ld b, l
    ld [bc], a
    nop
    ld hl, sp+$44
    ld [bc], a
    ld hl, sp-$08
    ld [hl], b
    ld bc, $00F1
    rlca
    nop
    pop af
    ld hl, sp+$06
    nop
    add b
    ldh a, [$F8]
    ld [hl], h
    nop
    nop
    rst $38
    ld a, c
    ld [bc], a
    nop
    rst $30
    ld a, b
    ld [bc], a
    ld hl, sp+$00
    ld [hl], a
    ld bc, $F8F8
    halt
    ld bc, $00F0
    ld [hl], l
    nop
    add b
    ld hl, sp-$08
    ld [hl], e
    ld hl, $F800

jr_014_5840:
    ld b, l
    ld [hl+], a
    nop
    nop
    ld b, h
    ld [hl+], a
    ld hl, sp+$00
    ld [hl], b
    ld hl, $F8F1

jr_014_584C:
    rlca
    jr nz, jr_014_5840

    nop
    ld b, $20
    add b
    nop
    ld bc, $2278
    ldh a, [$F8]
    ld [hl], l
    jr nz, jr_014_584C

    nop
    ld [hl], h
    jr nz, @-$06

    nop
    halt
    ld hl, $F8F8
    ld [hl], a
    ld hl, $F900
    ld a, c
    ld [hl+], a
    add b
    ld hl, sp-$04
    ld a, [hl]
    nop
    ld hl, sp+$04
    ld a, l
    ld bc, $FCF8
    ld a, h
    ld bc, $04F0
    ld a, e
    nop
    ldh a, [$FC]
    ld a, d
    nop
    ld hl, sp+$04
    ld a, a
    nop
    nop
    inc bc
    ld c, h
    ld bc, $0200
    ld a, c
    ld [bc], a
    nop
    ld a, [$0278]
    add b
    ld hl, sp-$03
    ld a, [hl]
    jr nz, @-$06

    rst $30
    ld a, l
    ld bc, $FDF8
    ld a, h
    ld hl, $F5F0
    ld a, e
    jr nz, @-$0E

    db $FD
    ld a, d
    jr nz, @-$06

    push af
    ld a, a
    jr nz, jr_014_58AA

jr_014_58AA:
    or $4C
    ld hl, $F700
    ld a, c
    ld [hl+], a
    nop
    rst $38
    ld a, b
    ld [hl+], a
    add b
    ld hl, sp+$01
    ld l, $01
    ld hl, sp-$07
    dec l
    ld bc, $01F1
    dec b
    nop
    pop af
    ld sp, hl
    inc b
    nop
    nop
    rst $38
    ld a, c
    ld [bc], a
    nop
    rst $30
    ld a, b
    ld [bc], a
    add b
    nop
    ld bc, $0279
    nop
    ld sp, hl
    ld a, b
    ld [bc], a
    ld hl, sp-$07
    ld sp, $F901
    ld bc, $012B
    pop af
    inc bc
    dec b
    nop
    pop af
    ei
    inc b
    nop
    ld sp, hl
    rst $38
    dec hl
    ld bc, $FF00
    ld a, c
    ld [bc], a

jr_014_58EF:
    pop af
    ld bc, $0005
    add b
    nop
    ld bc, $0279
    nop
    ld sp, hl
    ld a, b
    ld [bc], a
    ld hl, sp-$07
    ld sp, $F901
    ld bc, $012B
    pop af
    inc bc
    dec b
    nop
    pop af
    ei
    inc b
    nop
    ld sp, hl
    rst $38
    dec hl
    ld bc, $F3F8
    ld sp, $0001
    rst $38
    ld a, c
    ld [bc], a
    nop
    di
    ld a, b
    ld [bc], a
    pop af
    ld bc, $0005
    pop af
    push af
    inc b
    nop
    add b
    nop
    ld bc, $0279
    ld sp, hl
    ld bc, $012B
    pop af
    inc bc
    dec b
    nop
    nop
    db $F4
    ld a, c
    ld [bc], a
    nop
    ld sp, hl
    ld a, b
    ld [bc], a
    ld hl, sp-$07
    ld sp, $F901
    db $F4
    dec hl
    ld bc, $F6F1
    dec b
    nop

jr_014_5945:
    pop af
    ei
    inc b
    nop
    ld hl, sp-$14
    ld sp, $0001
    db $EC
    ld a, b
    ld [bc], a
    pop af
    xor $04
    nop
    add b
    nop
    ld sp, hl
    ld a, c
    ld [hl+], a
    nop
    ld bc, $2278
    ld hl, sp-$01
    ld sp, $F921
    rst $30
    dec hl
    ld hl, $FFF1
    inc b
    jr nz, @-$0D

    rst $30
    dec b
    jr nz, jr_014_58EF

    nop
    ld sp, hl
    ld a, c
    ld [hl+], a
    nop
    ld bc, $2278
    ld hl, sp-$01
    ld sp, $F921

jr_014_597C:
    rst $30
    dec hl
    ld hl, $FFF1

jr_014_5981:
    inc b
    jr nz, jr_014_597C

    dec b
    ld sp, $0021
    rlca
    ld a, b
    ld [hl+], a
    pop af
    rst $30
    dec b
    jr nz, jr_014_5981

    inc b
    inc b

jr_014_5992:
    jr nz, @-$7E

    pop af
    rst $30
    dec b
    jr nz, jr_014_5992

    rst $30
    dec hl
    ld hl, $0600
    ld a, c
    ld [hl+], a
    nop
    ld sp, hl
    ld a, c
    ld [hl+], a
    nop
    ld bc, $2278
    ld hl, sp-$01
    ld sp, $F921

jr_014_59AD:
    inc b
    dec hl
    ld hl, $FFF1

jr_014_59B2:
    inc b
    jr nz, jr_014_59AD

    inc c
    ld sp, $0021
    ld c, $78
    ld [hl+], a
    pop af
    inc bc
    dec b
    jr nz, jr_014_59B2

    dec bc
    inc b
    jr nz, jr_014_5945

    ld hl, sp+$00
    inc h
    ld hl, $F8F8
    inc h
    ld bc, $FC00
    ld c, d
    ld [bc], a
    pop af
    nop
    ld bc, $F100
    ld hl, sp+$00
    nop
    add b
    nop
    db $FC
    ld c, d
    ld [bc], a
    ld hl, sp+$00
    inc h
    ld hl, $F8F8
    inc h
    ld bc, $00F1
    ld bc, $F100
    ld hl, sp+$00
    nop
    db $EB
    nop
    ld bc, $EB00
    ld hl, sp+$00
    nop
    add b
    pop af
    nop
    ld bc, $F100
    ld hl, sp+$00
    nop
    db $EC
    ld hl, sp+$24
    ld bc, $00EC
    inc h
    ld hl, $00F8
    inc h
    ld hl, $F8F8
    inc h
    ld bc, $FC00
    ld c, d
    ld [bc], a
    push hl
    nop
    ld bc, $E500
    ld hl, sp+$00
    nop
    add b
    nop
    nop
    ld e, b
    ld [bc], a
    nop
    ld hl, sp+$57
    ld [bc], a
    ld hl, sp+$00
    ld [hl], $01
    ld hl, sp-$08
    ld [hl], $21
    ldh a, [rP1]
    inc bc
    nop
    ldh a, [$F8]
    ld [bc], a
    nop
    add b
    dec b
    nop
    ld e, b
    ld [bc], a
    dec b
    ld hl, sp+$57
    ld [bc], a
    db $FD
    ld hl, sp+$36
    ld hl, $00FD
    ld [hl], $01
    push af
    nop
    inc bc
    nop
    push af
    ld hl, sp+$02
    nop
    nop
    nop
    ld e, b
    ld [bc], a
    nop
    ld hl, sp+$57
    ld [bc], a
    ld hl, sp+$00
    ld [hl], $01
    ld hl, sp-$08
    ld [hl], $21
    ldh a, [rP1]
    inc bc
    nop
    ldh a, [$F8]
    ld [bc], a
    nop
    add b
    ld a, [bc]
    nop
    ld e, b
    ld [bc], a
    ld a, [bc]
    ld hl, sp+$57
    ld [bc], a
    ld [bc], a
    ld hl, sp+$36
    ld hl, $0002
    ld [hl], $01
    ld a, [$0300]
    nop
    ld a, [$02F8]
    nop
    nop
    nop
    ld e, b
    ld [bc], a
    nop
    ld hl, sp+$57
    ld [bc], a
    ld hl, sp+$00
    ld [hl], $01
    ld hl, sp-$08
    ld [hl], $21
    ldh a, [rP1]
    inc bc
    nop
    ldh a, [$F8]
    ld [bc], a
    nop
    add b
    add sp, $00
    dec c
    nop
    add sp, -$08
    inc c
    nop
    add b
    add sp, -$08
    dec c
    jr nz, @-$16

    nop
    inc c
    jr nz, @-$7E

    ld c, a
    ret z

    nop
    nop
    dec d
    ld d, h
    nop
    ld c, l
    inc d
    xor c
    ld e, d
    ld d, d
    ret z

    nop
    nop
    nop
    ld d, h
    nop
    ld c, c
    or h
    ld e, d
    ld d, b
    ld [$0010], sp
    nop
    sub l
    ld b, d
    ld [hl], c
    ld b, b
    sub l
    ld b, d
    ld [hl], c
    ld b, b
    ld c, c
    cp [hl]
    ld e, d
    ld d, b
    inc b
    ld [$0000], sp
    ld h, d
    ld b, d
    ld a, e
    ld b, d
    ld c, c
    jp c, $4F5A

    rst $38
    nop
    nop
    ld a, e
    ld b, d
    nop
    ld c, c
    jp c, $4F5A

    ld [de], a
    nop
    rst $38
    ld [hl], c
    ld b, b
    nop
    ld c, a
    add hl, bc
    nop
    cp $71
    ld b, b
    nop
    ld c, a
    add hl, bc
    nop
    cp $71
    ld b, b
    nop
    ld c, a
    inc c
    nop
    rst $38
    ld [hl], c
    ld b, b
    nop
    ld c, a
    ld [de], a
    nop
    rst $38
    ld [hl], c
    ld b, b
    nop
    ld c, a
    add hl, bc
    nop
    cp $71
    ld b, b
    nop
    ld c, a
    add hl, bc
    nop
    cp $71
    ld b, b
    nop
    ld c, a
    inc c
    nop
    rst $38
    ld [hl], c
    ld b, b
    nop
    ld c, a
    ld [de], a
    rst $38
    cp $71
    ld b, b
    nop
    ld c, a
    add hl, bc
    rst $38
    rst $38
    ld [hl], c
    ld b, b
    nop
    ld c, a
    add hl, bc
    rst $38
    nop
    ld [hl], c
    ld b, b
    nop
    ld c, a
    inc c
    rst $38
    ld bc, $4071
    nop
    ld c, a
    ld [de], a
    nop
    ld bc, $4071
    nop
    ld c, c
    and c
    ld e, l
    ld c, a
    rst $38
    nop
    cp $71
    ld b, b
    nop
    ld c, c
    ld b, d
    ld e, e
    ld d, b
    ld [$0010], sp
    nop
    bit 2, c
    ret c

    ld d, c
    push hl
    ld d, c
    ret c

    ld d, c
    ld c, c
    ld c, h
    ld e, e
    ld d, b
    ld [$0010], sp
    nop
    and h
    ld d, c
    or c
    ld d, c
    cp [hl]
    ld d, c
    or c
    ld d, c
    ld c, c
    ld e, h
    ld e, e
    ld d, b
    ld [$0010], sp
    nop
    ld hl, $3252
    ld d, d
    ccf
    ld d, d
    ld [hl-], a
    ld d, d
    ld c, c
    ld l, h
    ld e, e
    ld d, b
    ld [$FF10], sp
    nop
    ld hl, $3252
    ld d, d
    ccf
    ld d, d
    ld [hl-], a
    ld d, d
    ld c, c
    ld l, h
    ld e, e
    ld d, b
    ld [$0010], sp
    nop
    ld a, [c]
    ld d, c
    inc bc
    ld d, d
    db $10
    ld d, d
    inc bc
    ld d, d
    ld c, c
    adc h
    ld e, e
    ld d, b
    db $10
    inc b
    nop
    nop
    ld h, a
    ld d, l
    xor d
    ld b, l
    add b
    ld d, l
    xor d
    ld b, l
    add b
    ld d, l
    xor d
    ld b, l
    add b
    ld d, l
    xor d
    ld b, l
    ld e, c
    ld d, [hl]
    ld c, c
    sbc h
    ld e, e
    ld d, b
    ld c, $08
    nop
    cp $67
    ld d, l
    xor d
    ld b, l
    add b
    ld d, l
    xor d
    ld b, l
    sbc c
    ld d, l
    xor d
    ld b, l
    add b
    ld d, l
    ld c, c
    or [hl]
    ld e, e
    ld c, a
    ld [$0000], sp
    ld b, e
    ld d, h
    ld [$0000], sp
    xor d
    ld b, l
    nop
    ld c, c
    call z, Call_014_505B
    db $10
    ld [$0200], sp
    xor d
    ld b, l
    inc e
    ld d, l
    xor d
    ld b, l
    dec [hl]
    ld d, l
    xor d
    ld b, l
    ld c, [hl]
    ld d, l
    xor d
    ld b, l
    dec [hl]
    ld d, l
    ld c, c
    db $DB
    ld e, e
    ld d, b
    db $10
    ld [$00FE], sp
    xor d
    ld b, l
    pop de
    ld d, h
    xor d
    ld b, l
    ld [$AA54], a
    ld b, l
    inc bc
    ld d, l
    xor d
    ld b, l
    ld [$4954], a
    di
    ld e, e
    ld d, b
    db $10
    ld [$0002], sp
    xor d
    ld b, l
    add [hl]
    ld d, h
    xor d
    ld b, l
    sbc a
    ld d, h
    xor d
    ld b, l
    cp b
    ld d, h
    xor d
    ld b, l
    sbc a
    ld d, h
    ld c, c
    dec bc
    ld e, h
    ld d, b
    ld [$0008], sp
    rst $38
    sbc a
    ld b, b
    or h
    ld b, b
    call $B440
    ld b, b
    ld c, c
    inc hl
    ld e, h
    ld d, b
    ld [$0008], sp
    rst $38
    sbc a
    ld b, b
    or h
    ld b, b
    call $B440
    ld b, b
    ld c, c
    inc sp
    ld e, h
    ld c, a
    rst $38
    nop
    nop
    sbc a
    ld b, b
    nop
    ld c, c
    ld b, e
    ld e, h
    ld d, b
    ld [$0008], sp
    ld bc, $405C
    ld [hl], c
    ld b, b
    adc d
    ld b, b
    ld [hl], c
    ld b, b
    ld c, c
    ld c, l
    ld e, h
    ld d, b
    ld [$0008], sp
    ld bc, $405C
    ld [hl], c
    ld b, b
    adc d
    ld b, b
    ld [hl], c
    ld b, b
    ld c, c
    ld e, l
    ld e, h
    ld d, b
    ld [$FF08], sp
    nop
    dec h
    ld b, c
    ld a, $41
    ld c, a
    ld b, c
    ld a, $41
    ld c, c
    ld l, l
    ld e, h
    ld d, b
    ld [$FF08], sp
    nop
    dec h
    ld b, c
    ld a, $41
    ld c, a
    ld b, c
    ld a, $41
    ld c, c
    ld a, l
    ld e, h
    ld d, b
    ld [$0108], sp
    nop
    ld [c], a
    ld b, b
    ei
    ld b, b
    inc c
    ld b, c
    ei
    ld b, b
    ld c, c
    adc l
    ld e, h
    ld d, b
    ld [$0108], sp
    nop
    ld [c], a
    ld b, b
    ei
    ld b, b
    inc c
    ld b, c
    ei
    ld b, b
    ld c, c
    sbc l
    ld e, h
    ld d, b
    ld [$0008], sp
    rst $38
    ld e, h
    ld b, b
    ld [hl], c
    ld b, b
    adc d
    ld b, b
    ld [hl], c
    ld b, b
    ld c, c
    xor l
    ld e, h
    ld d, b
    ld [$0004], sp
    cp $5C
    ld b, b
    ld [hl], c
    ld b, b
    adc d
    ld b, b
    ld [hl], c
    ld b, b
    ld c, c
    cp l
    ld e, h
    ld d, b
    ld [$0008], sp
    ld bc, $409F
    or h
    ld b, b
    call $B440
    ld b, b
    ld c, c
    call $505C
    ld [$FF08], sp
    nop
    ld [c], a
    ld b, b
    ei
    ld b, b
    inc c
    ld b, c
    ei
    ld b, b
    ld c, c
    db $DD
    ld e, h
    ld d, b
    ld [$0108], sp
    nop
    dec h
    ld b, c
    ld a, $41
    ld c, a
    ld b, c
    ld a, $41
    ld c, c
    db $ED
    ld e, h
    ld d, b
    ld [$0008], sp
    cp $D2
    ld b, h
    cp c
    ld b, h
    jp nc, $F344

    ld b, h
    ld c, c
    db $FD
    ld e, h
    ld d, b
    ld [$0008], sp
    ld [bc], a
    add e
    ld b, h
    ld l, [hl]
    ld b, h
    add e
    ld b, h
    and h
    ld b, h
    ld c, c
    dec c
    ld e, l
    ld c, a
    rst $38
    nop
    nop
    adc d
    ld b, b
    nop
    ld c, c
    dec e
    ld e, l
    ld d, b
    ld [$FE08], sp
    nop
    ld a, b
    ld b, l
    ld e, e
    ld b, l
    ld a, b
    ld b, l
    adc l
    ld b, l
    ld c, c
    daa
    ld e, l
    ld c, a
    rst $38
    nop
    nop
    dec h
    ld b, c
    nop
    ld c, c
    scf
    ld e, l
    ld d, b
    ld [$0208], sp
    nop
    add hl, hl
    ld b, l
    inc c
    ld b, l
    add hl, hl
    ld b, l
    ld a, $45
    ld c, c
    ld b, c
    ld e, l
    ld c, a
    rst $38
    nop
    nop
    inc c
    ld b, c
    nop
    ld c, c
    ld d, c
    ld e, l
    ld c, a
    ld [$0000], sp
    ld e, b
    ld d, h
    ld [$0000], sp
    xor d
    ld b, l
    nop
    ld c, c
    ld e, e
    ld e, l
    ld c, a
    ld [$0000], sp
    dec d
    ld d, h
    ld [$0000], sp
    xor d
    ld b, l
    nop
    ld c, c
    ld l, d
    ld e, l
    ld c, a
    ld [$0000], sp
    ld [$0854], a
    nop
    nop
    xor d
    ld b, l
    nop
    ld c, c
    ld a, c
    ld e, l
    ld c, a
    ld [$0000], sp
    sbc a
    ld d, h
    ld [$0000], sp
    xor d
    ld b, l
    nop
    ld c, c
    adc b
    ld e, l
    ld c, a
    rst $38
    nop
    nop
    or h
    ld b, b
    nop
    ld c, c
    sub a
    ld e, l
    ld c, a
    rst $38
    nop
    nop
    ld [hl], c
    ld b, b
    nop
    ld c, c
    and c
    ld e, l
    ld c, a
    rst $38
    nop
    nop
    ld a, $41
    nop
    ld c, c
    xor e
    ld e, l
    ld c, a
    rst $38
    nop
    nop
    ei
    ld b, b
    nop
    ld c, c
    or l
    ld e, l
    ld c, a
    rst $38
    nop
    nop
    add hl, de
    ld b, b
    nop
    ld c, c
    cp a
    ld e, l
    ld c, a
    rst $38
    nop
    nop
    nop
    ld b, b
    nop
    ld c, c
    ret


    ld e, l
    ld c, a
    rst $38
    nop
    nop
    ld b, a
    ld b, b
    nop
    ld c, c
    db $D3
    ld e, l
    ld c, a
    rst $38
    nop
    nop
    ld [hl-], a
    ld b, b
    nop
    ld c, c
    db $DD
    ld e, l
    ld c, a
    ld [$0000], sp
    db $ED
    ld d, d
    ld [$0000], sp
    xor d
    ld b, l
    nop
    ld c, c
    rst $20
    ld e, l
    ld c, a
    ld [$0000], sp
    call nc, $0852
    nop
    nop
    xor d
    ld b, l
    nop
    ld c, c
    or $5D
    ld c, a
    ld [$0000], sp
    rra
    ld d, e
    ld [$0000], sp
    xor d
    ld b, l
    nop
    ld c, c
    dec b
    ld e, [hl]
    ld c, a
    ld [$0000], sp
    ld b, $53
    ld [$0000], sp
    xor d
    ld b, l
    nop
    ld c, c
    inc d
    ld e, [hl]
    ld c, a
    ld [hl-], a
    nop
    nop
    adc d
    ld b, c
    nop
    db $10
    jr nz, jr_014_5E91

    ld c, c
    ld d, a
    ld e, [hl]
    ld c, a
    ld [hl-], a
    nop
    nop
    adc d
    ld b, c
    nop
    db $10
    jr nz, jr_014_5E9E

    ld c, c
    ld [hl], h
    ld e, [hl]
    ld c, a
    ld [hl-], a
    nop
    nop
    adc d
    ld b, c
    nop
    db $10
    jr nz, jr_014_5EAB

    ld c, c
    sub a
    ld e, l
    ld c, a
    ld [hl-], a
    nop
    nop
    adc d
    ld b, c
    nop
    db $10
    jr nz, jr_014_5EB8

    ld c, c
    and c
    ld e, l
    ld c, a
    add b
    nop
    nop
    ld a, $41
    rst $38
    nop
    nop
    add hl, de
    ld b, b
    rst $38
    nop
    nop
    dec de
    ld b, h
    nop
    ld d, b
    inc b
    stop
    nop
    inc [hl]
    ld b, h
    ld d, c
    ld b, h
    ld c, c
    ld l, b
    ld e, [hl]
    ld c, a
    add b
    nop
    nop
    ei
    ld b, b
    rst $38
    nop
    nop
    nop
    ld b, b
    rst $38
    nop
    nop
    dec de
    ld b, h
    nop
    ld d, b
    inc b
    stop
    nop
    inc [hl]
    ld b, h
    ld d, c
    ld b, h
    ld c, c
    add l
    ld e, [hl]

jr_014_5E91:
    ld c, a
    rst $38
    nop
    rst $38
    or h
    ld b, b
    nop
    ld c, c
    sub c
    ld e, [hl]
    ld c, a
    rst $38
    nop

jr_014_5E9E:
    ld bc, $4071
    nop
    ld c, c
    sbc e
    ld e, [hl]
    ld c, a
    ld [$FF00], sp
    ld e, b
    ld d, h

jr_014_5EAB:
    ld [$0000], sp
    xor d
    ld b, l
    nop
    ld c, c
    and l
    ld e, [hl]
    ld c, a
    ld [$0100], sp

jr_014_5EB8:
    dec d
    ld d, h
    ld [$0000], sp
    xor d
    ld b, l
    nop
    ld c, c
    or h
    ld e, [hl]
    ld c, a
    ld [$00FF], sp
    ld [$0854], a
    nop
    nop
    xor d
    ld b, l
    nop
    ld c, c
    jp $4F5E


    ld [$0001], sp
    sbc a
    ld d, h
    ld [$0000], sp
    xor d
    ld b, l
    nop
    ld c, c
    jp nc, $505E

    inc b
    ld [$0000], sp
    inc e
    ld b, e
    dec l
    ld b, e
    ld c, c
    pop hl
    ld e, [hl]
    ld d, b
    inc b
    ld [$0000], sp
    ld a, [$0B42]
    ld b, e
    ld c, c
    db $ED
    ld e, [hl]
    ld d, b
    inc b
    ld [$0000], sp
    ret c

    ld b, d
    jp hl


    ld b, d
    ld c, c
    ld sp, hl
    ld e, [hl]
    ld d, b
    inc b
    ld [$0000], sp
    or [hl]
    ld b, d
    rst $00
    ld b, d
    ld c, c
    dec b
    ld e, a
    ld d, b
    inc b
    ld [$0000], sp
    adc $41
    rst $18
    ld b, c
    ld c, c
    ld de, $505F
    inc b
    ld [$0000], sp
    xor h
    ld b, c
    cp l
    ld b, c
    ld c, c
    dec e
    ld e, a
    ld d, b
    inc b
    ld [$0000], sp
    adc d
    ld b, c
    sbc e
    ld b, c
    ld c, c
    add hl, hl
    ld e, a
    ld d, b
    inc b
    ld [$0000], sp
    ld l, b
    ld b, c
    ld a, c
    ld b, c
    ld c, c
    dec [hl]
    ld e, a
    ld d, b
    ld [$0008], sp
    nop
    adc $41
    ld a, c
    ld b, c
    xor h
    ld b, c
    sbc e
    ld b, c
    ld c, c
    ld b, c
    ld e, a
    ld d, b
    ld [$000C], sp
    nop
    ldh a, [rSTAT]
    ld bc, $1242
    ld b, d
    inc hl
    ld b, d
    ld c, a
    inc c
    nop
    nop
    sub b
    ld b, d
    nop
    ld c, c
    ld e, [hl]
    ld e, a
    db $10
    ret nz

    ld e, e
    ld d, b
    inc b
    ld [$0000], sp
    ld l, b
    ld b, c
    ld a, c
    ld b, c
    ld c, c
    dec [hl]
    ld e, a
    ld c, a
    inc bc
    nop
    rst $38
    sbc e
    ld b, c
    inc bc
    nop
    rst $38
    sbc e
    ld b, c
    inc bc
    nop
    rst $38
    adc d
    ld b, c
    nop
    ld c, b
    inc d
    ld [hl], a
    ld e, a
    ld c, a
    inc bc
    nop
    ld bc, $4179
    inc bc
    nop
    ld bc, $4179
    inc bc
    nop
    ld bc, $4168
    nop
    ld c, b
    inc d
    adc h
    ld e, a
    ld c, a
    inc bc
    rst $38
    nop
    rst $18
    ld b, c
    inc bc
    rst $38
    nop
    rst $18
    ld b, c
    inc bc
    rst $38
    nop
    adc $41
    nop
    ld c, c
    and c
    ld e, a
    ld c, a
    inc bc
    ld bc, $BD00
    ld b, c
    inc bc
    ld bc, $BD00
    ld b, c
    inc bc
    ld bc, $AC00
    ld b, c
    nop
    ld c, c
    or l
    ld e, a
    ld c, a
    inc bc
    nop
    rst $38
    jp hl


    ld b, d
    inc bc
    nop
    rst $38
    jp hl


    ld b, d
    inc bc
    nop
    rst $38
    ret c

    ld b, d
    nop
    ld c, b
    inc d
    ret


    ld e, a
    ld c, a
    inc bc
    nop
    ld bc, $42C7
    inc bc
    nop
    ld bc, $42C7
    inc bc
    nop
    ld bc, $42B6
    nop
    ld c, b
    inc d
    sbc $5F
    ld c, a
    inc bc
    rst $38
    nop
    dec l
    ld b, e
    inc bc
    rst $38
    nop
    dec l
    ld b, e
    inc bc
    rst $38
    nop
    inc e
    ld b, e
    nop
    ld c, c
    di
    ld e, a
    ld c, a
    inc bc
    ld bc, $0B00
    ld b, e
    inc bc
    ld bc, $0B00
    ld b, e
    inc bc
    ld bc, $FA00
    ld b, d
    nop
    ld c, c
    rlca
    ld h, b
    ld c, a
    rst $38
    nop
    nop
    adc d
    ld b, c
    nop
    ld c, c
    dec de
    ld h, b
    ld c, a
    rst $38
    nop
    nop
    ret c

    ld b, d
    nop
    ld c, c
    dec h
    ld h, b
    ld c, a
    rst $38
    nop
    nop
    sub c
    ld e, b
    nop
    ld c, c
    cpl
    ld h, b
    ld c, a
    rst $38
    nop
    nop
    ld l, h
    ld e, b
    nop
    ld c, c
    add hl, sp
    ld h, b
    ld c, a
    ld [$0000], sp
    ld a, [hl-]
    ld e, b
    inc bc
    nop
    db $FD
    ld d, e
    ld e, b
    ld [bc], a
    nop
    cp $53
    ld e, b
    ld bc, $FF00
    ld d, e
    ld e, b
    ld bc, $0000
    ld d, e
    ld e, b
    ld bc, $0100
    ld d, e
    ld e, b
    ld [bc], a
    nop
    ld [bc], a
    ld d, e
    ld e, b
    inc bc
    nop
    inc bc
    ld d, e
    ld e, b
    nop
    ld c, c
    xor e
    ld e, l
    ld c, a
    ld [$0000], sp
    ld [$0358], sp
    nop
    db $FD
    ld hl, $0258
    nop
    cp $21
    ld e, b
    ld bc, $FF00
    ld hl, $0158
    nop
    nop
    ld hl, $0158
    nop
    ld bc, $5821
    ld [bc], a
    nop
    ld [bc], a
    ld hl, $0358
    nop
    inc bc
    ld hl, $0058
    ld c, c
    or l
    ld e, l
    ld d, b
    db $10
    ld bc, $0100
    ei
    ld b, b
    nop
    ld b, b
    ld [hl], c
    ld b, b
    add hl, de
    ld b, b
    ei
    ld b, b
    ld [hl-], a
    ld b, b
    or h
    ld b, b
    ld b, a
    ld b, b
    ld c, c
    sbc l
    ld h, b
    ld d, b
    ld [$0001], sp
    ld [bc], a
    ld [c], a
    ld b, b
    ld e, h
    ld b, b
    ld [c], a
    ld b, b
    sbc a
    ld b, b
    ld c, c
    or l
    ld h, b
    ld d, b
    ld [$0001], sp
    inc bc
    ld [c], a
    ld b, b
    ld e, h
    ld b, b
    ld [c], a
    ld b, b
    sbc a
    ld b, b
    ld c, c
    push bc
    ld h, b
    ld d, b
    ld [$0001], sp
    inc b
    ld [c], a
    ld b, b
    ld e, h
    ld b, b
    ld [c], a
    ld b, b
    sbc a
    ld b, b
    ld c, c
    push de
    ld h, b
    ld d, b
    ld [$0004], sp
    nop
    ld [c], a
    ld b, b
    ei
    ld b, b
    inc c
    ld b, c
    ei
    ld b, b
    ld c, c
    push hl
    ld h, b
    ld c, a
    inc c
    nop
    nop
    ret nc

    ld b, e
    ld bc, $0000
    jp hl


    ld b, e
    ld [bc], a
    nop
    nop
    jp hl


    ld b, e
    ld [bc], a
    nop
    nop
    jp hl


    ld b, e
    ld [bc], a
    nop
    nop
    jp hl


    ld b, e
    ld bc, $0000
    jp hl


    ld b, e
    nop
    db $10
    db $FD
    ld c, [hl]
    ld c, c
    xor e
    ld e, l
    ld c, a
    inc c
    nop
    nop
    sbc [hl]
    ld b, e
    ld bc, $0000
    or a
    ld b, e
    ld [bc], a
    nop
    nop
    or a
    ld b, e
    ld [bc], a
    nop
    nop
    or a
    ld b, e
    ld [bc], a
    nop
    nop
    or a
    ld b, e
    ld bc, $0000
    or a
    ld b, e
    nop
    db $10
    ld b, l
    ld c, a
    ld c, c
    or l
    ld e, l
    ld c, a
    inc c
    nop
    nop
    ld l, h
    ld b, e
    ld bc, $FE00
    add c
    ld b, e
    ld [bc], a
    nop
    rst $38
    add c
    ld b, e
    ld [bc], a
    nop
    nop
    add c
    ld b, e
    ld [bc], a
    nop
    ld bc, $4381
    ld bc, $0200
    add c
    ld b, e
    nop
    db $10
    adc l
    ld c, a
    ld c, c
    sub a
    ld e, l
    ld c, a
    inc c
    nop
    nop
    ld a, $43
    ld bc, $FE00
    ld d, a
    ld b, e
    ld [bc], a
    nop
    rst $38
    ld d, a
    ld b, e
    ld [bc], a
    nop
    nop
    ld d, a
    ld b, e

Jump_014_617C:
    ld [bc], a
    nop
    ld bc, $4357
    ld bc, $0200
    ld d, a
    ld b, e
    nop
    db $10
    or l
    ld c, [hl]
    ld c, c
    and c
    ld e, l
    ld c, a
    inc b
    nop
    nop
    dec [hl]
    ld d, a
    ld bc, $FE00
    and e
    ld d, [hl]
    ld [bc], a
    nop
    rst $38
    and e
    ld d, [hl]
    ld [bc], a
    nop
    nop
    and e
    ld d, [hl]
    ld [bc], a
    nop
    ld bc, $56A3
    ld bc, $0200
    and e
    ld d, [hl]
    nop
    db $10
    inc [hl]
    ld h, e
    ld c, c
    sub a
    ld e, l
    ld c, a
    inc b
    nop
    nop
    inc e
    ld d, a
    ld bc, $FE00
    ld [hl], c
    ld d, [hl]
    ld [bc], a
    nop
    rst $38
    ld [hl], c
    ld d, [hl]
    ld [bc], a
    nop
    nop
    ld [hl], c
    ld d, [hl]
    ld [bc], a
    nop
    ld bc, $5671
    ld bc, $0200
    ld [hl], c
    ld d, [hl]
    nop
    db $10
    inc [hl]
    ld h, e
    ld c, c
    and c
    ld e, l
    ld c, a
    inc b
    nop
    nop
    ld h, a
    ld d, a
    ld bc, $FE00
    ld a, [hl-]
    ld e, b
    ld [bc], a
    nop
    rst $38
    ld a, [hl-]
    ld e, b
    ld [bc], a
    nop
    nop
    ld d, e
    ld e, b
    ld [bc], a
    nop
    ld bc, $5853
    ld bc, $0200
    ld d, e
    ld e, b
    nop
    db $10
    inc [hl]
    ld h, e
    ld c, c
    xor e
    ld e, l
    ld c, a
    inc b
    nop
    nop
    ld c, [hl]
    ld d, a
    ld bc, $FE00
    ld [$0258], sp
    nop
    rst $38
    ld [$0258], sp
    nop
    nop
    ld hl, $0258
    nop
    ld bc, $5821
    ld bc, $0200
    ld hl, $0058
    db $10
    inc [hl]
    ld h, e
    ld c, c
    or l
    ld e, l
    ld c, a
    ld [bc], a
    rst $38
    db $FD
    dec h
    ld b, c
    ld [bc], a
    rst $38
    cp $25
    ld b, c
    ld [bc], a
    rst $38
    rst $38
    dec h
    ld b, c
    ld [bc], a
    cp $FF
    dec h
    ld b, c
    ld [bc], a
    db $FD
    rst $38
    dec h
    ld b, c
    ld [bc], a
    db $FD
    ld bc, $4125
    ld [bc], a
    cp $01
    dec h
    ld b, c
    ld [bc], a
    rst $38
    ld bc, $4125
    ld [bc], a
    rst $38
    ld [bc], a
    dec h
    ld b, c
    ld [bc], a
    rst $38
    inc bc
    dec h
    ld b, c
    inc bc
    rst $38
    nop
    ld a, $41
    nop
    db $10
    inc [hl]
    ld h, e
    ld c, c
    xor e
    ld e, l
    ld c, a
    ld [bc], a
    ld bc, $E2FD
    ld b, b
    ld [bc], a
    ld bc, $E2FE
    ld b, b
    ld [bc], a
    ld bc, $E2FF
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [c], a
    ld b, b
    ld [bc], a
    inc bc
    rst $38
    ld [c], a
    ld b, b
    ld [bc], a
    inc bc
    ld bc, $40E2
    ld [bc], a
    ld [bc], a
    ld bc, $40E2
    ld [bc], a
    ld bc, $E201
    ld b, b
    ld [bc], a
    ld bc, $E202
    ld b, b
    ld [bc], a
    ld bc, $E203
    ld b, b
    inc bc
    ld bc, $FB00
    ld b, b
    nop
    db $10
    inc [hl]
    ld h, e
    ld c, c
    or l
    ld e, l
    ld c, a
    ld [bc], a
    nop
    db $FC
    sbc a
    ld b, b
    ld [bc], a
    nop
    db $FD
    sbc a
    ld b, b
    ld [bc], a
    nop
    db $FD
    sbc a
    ld b, b
    ld [bc], a
    nop
    cp $9F
    ld b, b
    ld [bc], a
    nop
    cp $9F
    ld b, b
    ld [bc], a
    nop
    cp $9F
    ld b, b
    ld [bc], a
    nop
    nop
    sbc a
    ld b, b
    ld [bc], a
    nop
    nop
    sbc a
    ld b, b
    ld [bc], a
    nop
    ld bc, $409F
    ld [bc], a
    nop
    ld [bc], a
    sbc a
    ld b, b
    inc bc
    nop
    rst $38
    or h
    ld b, b
    nop
    db $10
    inc [hl]
    ld h, e
    ld c, c
    sub a
    ld e, l
    ld c, a
    ld [bc], a
    nop
    cp $5C
    ld b, b
    ld [bc], a
    nop
    rst $38
    ld e, h
    ld b, b
    ld [bc], a
    nop
    nop
    ld e, h
    ld b, b
    ld [bc], a
    nop
    nop
    ld e, h
    ld b, b
    ld [bc], a
    nop
    ld [bc], a
    ld e, h
    ld b, b
    ld [bc], a
    nop
    ld [bc], a
    ld e, h
    ld b, b
    ld [bc], a
    nop
    ld [bc], a
    ld e, h
    ld b, b
    ld [bc], a
    nop
    inc bc
    ld e, h
    ld b, b
    ld [bc], a
    nop
    inc bc
    ld e, h
    ld b, b
    ld [bc], a
    nop
    inc b
    ld e, h
    ld b, b
    inc bc
    nop
    ld bc, $4071
    nop
    db $10
    inc [hl]
    ld h, e
    ld c, c
    and c
    ld e, l
    ld c, a
    ld [bc], a
    rst $38
    db $FD
    dec h
    ld b, c
    ld [bc], a
    cp $FE
    dec h
    ld b, c
    ld [bc], a
    cp $FF
    dec h
    ld b, c
    ld [bc], a
    db $FD
    rst $38
    dec h
    ld b, c
    ld bc, $FFFD
    dec h
    ld b, c
    ld bc, $00FD
    dec h
    ld b, c
    ld bc, $01FD
    dec h
    ld b, c
    ld [bc], a
    db $FD
    ld bc, $4125
    ld [bc], a
    cp $01
    dec h
    ld b, c
    ld [bc], a
    cp $02
    dec h
    ld b, c
    ld [bc], a
    cp $03
    dec h
    ld b, c
    ld bc, $FFFE
    ld a, $41
    ld bc, $00FF
    ld a, $41
    ld bc, $01FF
    ld a, $41
    nop
    db $10
    inc [hl]
    ld h, e
    ld c, c
    xor e
    ld e, l
    ld c, a
    ld [bc], a
    ld bc, $E2FD
    ld b, b
    ld [bc], a
    ld [bc], a
    cp $E2
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [c], a
    ld b, b
    ld [bc], a
    inc bc
    rst $38
    ld [c], a
    ld b, b
    ld bc, $FF03
    ld [c], a
    ld b, b
    ld bc, $0003
    ld [c], a
    ld b, b
    ld bc, $0103
    ld [c], a
    ld b, b
    ld [bc], a
    inc bc
    ld bc, $40E2
    ld [bc], a
    ld [bc], a
    ld bc, $40E2
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [c], a
    ld b, b
    ld [bc], a
    ld [bc], a
    inc bc
    ld [c], a
    ld b, b
    ld bc, $FF02
    ei
    ld b, b
    ld bc, $0001
    ei
    ld b, b
    ld bc, $0101
    ei
    ld b, b
    nop
    db $10
    inc [hl]
    ld h, e
    ld c, c
    or l
    ld e, l
    ld c, a
    inc b
    nop
    ei
    sbc a
    ld b, b
    ld [bc], a
    nop
    db $FC
    sbc a
    ld b, b
    ld [bc], a
    nop
    db $FD
    sbc a
    ld b, b
    ld [bc], a
    nop
    db $FD
    sbc a
    ld b, b
    ld [bc], a
    nop
    cp $9F
    ld b, b
    ld [bc], a
    nop
    nop
    sbc a
    ld b, b
    ld [bc], a
    nop
    nop
    sbc a
    ld b, b
    ld [bc], a
    nop
    nop
    sbc a
    ld b, b
    ld [bc], a
    nop
    nop
    sbc a
    ld b, b
    ld [bc], a
    nop
    ld bc, $409F
    ld bc, $FD00
    or h
    ld b, b
    ld bc, $FE00
    or h
    ld b, b
    ld bc, $0000
    or h
    ld b, b
    nop
    db $10
    inc [hl]
    ld h, e
    ld c, c
    sub a
    ld e, l
    ld c, a
    ld [bc], a
    nop
    rst $38
    ld e, h
    ld b, b
    ld [bc], a
    nop
    nop
    ld e, h
    ld b, b
    ld [bc], a
    nop
    nop
    ld e, h
    ld b, b
    ld [bc], a
    nop
    nop
    ld e, h
    ld b, b
    ld [bc], a
    nop
    nop
    ld e, h
    ld b, b
    ld bc, $0100
    ld [hl], c
    ld b, b
    ld [bc], a
    nop
    ld [bc], a
    ld e, h
    ld b, b
    ld [bc], a
    nop
    ld [bc], a
    ld e, h
    ld b, b
    ld [bc], a
    nop
    inc bc
    ld e, h
    ld b, b
    ld [bc], a
    nop
    inc b
    ld e, h
    ld b, b
    inc b
    nop
    dec b
    ld e, h
    ld b, b
    ld bc, $0100
    ld [hl], c
    ld b, b
    ld bc, $0200
    ld [hl], c
    ld b, b
    ld bc, $0300
    ld [hl], c
    ld b, b
    nop
    db $10
    inc [hl]
    ld h, e
    ld c, c
    and c
    ld e, l
    ld c, a
    ld [bc], a
    cp $FD
    dec h
    ld b, c
    ld [bc], a
    cp $FE
    dec h
    ld b, c
    ld [bc], a
    cp $FF
    dec h
    ld b, c
    ld [bc], a
    db $FC
    rst $38
    dec h
    ld b, c
    ld bc, $FFFA
    dec h
    ld b, c
    ld bc, $00FA
    dec h
    ld b, c
    ld bc, $01FA
    dec h
    ld b, c
    ld [bc], a
    db $FC
    ld bc, $4125
    ld [bc], a
    cp $01
    dec h
    ld b, c
    ld [bc], a
    cp $02
    dec h
    ld b, c
    ld [bc], a
    cp $03
    dec h
    ld b, c
    ld bc, $FFFE
    ld a, $41
    ld bc, $00FE
    ld a, $41
    ld bc, $01FE
    ld a, $41
    nop
    ld c, c
    xor e
    ld e, l
    ld c, a
    ld bc, $FDFF
    dec h
    ld b, c
    ld bc, $FEFF
    dec h
    ld b, c
    ld bc, $FFFF
    dec h
    ld b, c
    ld bc, $FFFE
    dec h
    ld b, c
    ld bc, $FFFD
    dec h
    ld b, c
    ld bc, $01FD
    dec h
    ld b, c
    ld bc, $01FE
    dec h
    ld b, c
    ld bc, $01FF
    dec h
    ld b, c
    ld bc, $02FF
    dec h
    ld b, c
    ld bc, $03FF
    dec h
    ld b, c
    nop
    db $10
    ret nz

    ld e, e
    ld c, c
    ld de, $4F5F
    ld bc, $FD01
    ld [c], a
    ld b, b
    ld bc, $FE01
    ld [c], a
    ld b, b
    ld bc, $FF01
    ld [c], a
    ld b, b
    ld bc, $FF02
    ld [c], a
    ld b, b
    ld bc, $FF03
    ld [c], a
    ld b, b
    ld bc, $0103
    ld [c], a
    ld b, b
    ld bc, $0102
    ld [c], a
    ld b, b
    ld bc, $0101
    ld [c], a
    ld b, b
    ld bc, $0201
    ld [c], a
    ld b, b
    ld bc, $0301
    ld [c], a
    ld b, b
    nop
    db $10
    ret nz

    ld e, e
    ld c, c
    dec e
    ld e, a
    ld c, a
    ld bc, $FC00
    sbc a
    ld b, b
    ld bc, $FD00
    sbc a
    ld b, b
    ld bc, $FD00
    sbc a
    ld b, b
    ld bc, $FD00
    sbc a
    ld b, b
    ld bc, $FE00
    sbc a
    ld b, b
    ld bc, $FE00
    sbc a
    ld b, b
    ld bc, $FE00
    sbc a
    ld b, b
    ld bc, $0000
    sbc a
    ld b, b
    ld bc, $0000
    sbc a
    ld b, b
    ld bc, $0100
    sbc a
    ld b, b
    ld bc, $0200
    sbc a
    ld b, b
    nop
    db $10
    ret nz

    ld e, e
    ld c, c
    add hl, hl
    ld e, a
    ld c, a
    ld bc, $FE00
    ld e, h
    ld b, b
    ld bc, $FF00
    ld e, h
    ld b, b
    ld bc, $0000
    ld e, h
    ld b, b
    ld bc, $0000
    ld e, h
    ld b, b
    ld bc, $0200
    ld e, h
    ld b, b
    ld bc, $0200
    ld e, h
    ld b, b
    ld bc, $0200
    ld e, h
    ld b, b
    ld bc, $0300
    ld e, h
    ld b, b
    ld bc, $0300
    ld e, h
    ld b, b
    ld bc, $0300
    ld e, h
    ld b, b
    ld bc, $0400
    ld e, h
    ld b, b
    nop
    db $10
    ret nz

    ld e, e
    ld c, c
    dec [hl]
    ld e, a
    ld c, a
    ld bc, $FEFF
    dec h
    ld b, c
    ld bc, $FFFF
    dec h
    ld b, c
    ld bc, $FFFE
    dec h
    ld b, c
    ld bc, $FFFD
    dec h
    ld b, c
    ld bc, $01FD
    dec h
    ld b, c
    ld bc, $02FE
    dec h
    ld b, c
    ld bc, $02FF
    dec h
    ld b, c
    ld bc, $02FF
    dec h
    ld b, c
    ld bc, $03FF
    dec h
    ld b, c
    nop
    db $10
    inc [hl]
    ld h, e
    ld c, c
    ld d, a
    ld e, [hl]
    ld c, a
    ld bc, $FE01
    ld [c], a
    ld b, b
    ld bc, $FF01
    ld [c], a
    ld b, b
    ld bc, $FF02
    ld [c], a
    ld b, b
    ld bc, $FF03
    ld [c], a
    ld b, b
    ld bc, $0103
    ld [c], a
    ld b, b
    ld bc, $0202
    ld [c], a
    ld b, b
    ld bc, $0201
    ld [c], a
    ld b, b
    ld bc, $0201
    ld [c], a
    ld b, b
    ld bc, $0301
    ld [c], a
    ld b, b
    nop
    db $10
    inc [hl]
    ld h, e
    ld c, c
    ld [hl], h
    ld e, [hl]
    ld c, a
    ld bc, $FC00
    sbc a
    ld b, b
    ld bc, $FD00
    sbc a
    ld b, b
    ld bc, $FD00
    sbc a
    ld b, b
    ld bc, $FD00
    sbc a
    ld b, b
    ld bc, $FE00
    sbc a
    ld b, b
    ld bc, $FE00
    sbc a
    ld b, b
    ld bc, $FE00
    sbc a
    ld b, b
    ld bc, $0000
    sbc a
    ld b, b
    ld bc, $0000
    sbc a
    ld b, b
    ld bc, $0100
    sbc a
    ld b, b
    ld bc, $0200
    sbc a
    ld b, b
    nop
    db $10
    inc [hl]
    ld h, e
    ld c, c
    sub a
    ld e, l
    ld c, a
    ld bc, $FE00
    ld e, h
    ld b, b
    ld bc, $FF00
    ld e, h
    ld b, b
    ld bc, $0000
    ld e, h
    ld b, b
    ld bc, $0000
    ld e, h
    ld b, b
    ld bc, $0200
    ld e, h
    ld b, b
    ld bc, $0200
    ld e, h
    ld b, b
    ld bc, $0200
    ld e, h
    ld b, b
    ld bc, $0300
    ld e, h
    ld b, b
    ld bc, $0300
    ld e, h
    ld b, b
    ld bc, $0300
    ld e, h
    ld b, b
    ld bc, $0400
    ld e, h
    ld b, b
    nop
    db $10
    inc [hl]
    ld h, e
    ld c, c
    and c
    ld e, l
    ld c, a
    inc b
    cp $00
    ld a, b
    ld b, l
    inc b
    cp $00
    ld e, e
    ld b, l
    nop
    db $10
    inc [hl]
    ld h, e
    ld c, c
    ld d, a
    ld e, [hl]
    ld c, a
    inc b
    ld [bc], a
    nop
    add hl, hl
    ld b, l
    inc b
    ld [bc], a
    nop
    inc c
    ld b, l
    nop
    db $10
    inc [hl]
    ld h, e
    ld c, c
    ld [hl], h
    ld e, [hl]
    ld c, a
    inc b
    nop
    cp $D2
    ld b, h
    inc b
    nop
    cp $B9
    ld b, h
    nop
    db $10
    inc [hl]
    ld h, e
    ld c, c
    sub a
    ld e, l
    ld c, a
    inc b
    nop
    ld [bc], a
    add e
    ld b, h
    inc b
    nop
    ld [bc], a
    ld l, [hl]
    ld b, h
    nop
    db $10
    inc [hl]
    ld h, e
    ld c, c
    and c
    ld e, l
    ld c, a
    rst $38
    nop
    nop
    sub a
    ld e, d
    nop
    ld c, c
    pop bc
    ld h, [hl]
    ld c, a
    rst $38
    nop
    nop
    and b
    ld e, d
    nop
    ld c, c
    bit 4, [hl]
    ld c, a
    ld bc, $F802
    or d
    ld d, l
    ld bc, $0102
    or d
    ld d, l
    ld [bc], a
    ld bc, $B201
    ld d, l
    ld [bc], a
    ld bc, $B202
    ld d, l
    ld [$0001], sp
    rst $08
    ld d, l
    nop
    ld c, c
    or l
    ld e, l
    ld c, a
    ld bc, $F8FE
    dec b
    ld d, [hl]
    ld bc, $01FE
    dec b
    ld d, [hl]
    ld [bc], a
    rst $38
    ld bc, $5605
    ld [bc], a
    rst $38
    ld [bc], a
    dec b
    ld d, [hl]
    ld [$00FF], sp
    ld [hl+], a
    ld d, [hl]
    nop
    ld c, c
    xor e
    ld e, l
    ld c, a
    inc b
    nop
    rst $38
    ld b, [hl]
    ld d, b
    inc b
    nop
    cp $46
    ld d, b
    stop
    cp $5F
    ld d, b
    jr nz, jr_014_6723

jr_014_6723:
    rst $38
    ld e, a
    ld d, b
    stop
    rst $38
    ld b, [hl]
    ld d, b
    jr jr_014_672D

jr_014_672D:
    rst $38
    dec l
    ld d, b
    nop
    ld c, c
    ld de, $4F67
    inc b
    nop
    ld bc, $4FFB
    inc b
    nop
    ld [bc], a
    ei
    ld c, a
    stop
    ld [bc], a
    inc d
    ld d, b
    jr nz, jr_014_6746

jr_014_6746:
    ld bc, $5014
    stop
    ld bc, $4FFB
    jr jr_014_6750

jr_014_6750:
    ld bc, $4FE2
    nop
    ld c, c
    inc [hl]
    ld h, a
    ld c, a
    inc b
    rst $38
    nop
    and b
    ld c, a
    inc b
    cp $00
    and b
    ld c, a
    db $10
    cp $00
    pop bc
    ld c, a
    jr nz, @+$01

    nop
    pop bc
    ld c, a
    db $10
    rst $38
    nop
    and b
    ld c, a
    jr @+$01

    nop
    ld a, a
    ld c, a
    nop
    ld c, c
    ld d, a
    ld h, a
    ld c, a
    rst $38
    nop
    nop
    pop bc
    ld c, a
    nop
    ld c, c
    ld a, d
    ld h, a
    ld c, a
    inc b
    ld bc, $3D00
    ld c, a
    inc b
    ld [bc], a
    nop
    dec a
    ld c, a
    db $10
    ld [bc], a
    nop
    ld e, [hl]
    ld c, a
    jr nz, jr_014_6797

    nop

jr_014_6797:
    ld e, [hl]
    ld c, a
    db $10
    ld bc, $3D00
    ld c, a
    jr jr_014_67A1

    nop

jr_014_67A1:
    inc e
    ld c, a
    nop
    ld c, c
    add h
    ld h, a
    ld d, b
    ld [$0008], sp
    nop
    ld e, c
    ld d, c
    ld [hl], d
    ld d, c
    adc e
    ld d, c
    ld [hl], d
    ld d, c
    ld c, c
    and a
    ld h, a
    ld d, b
    ld [$0008], sp
    nop
    ld c, $51
    daa
    ld d, c
    ld b, b
    ld d, c
    daa
    ld d, c
    ld c, c
    or a
    ld h, a
    ld d, b
    ld [$0008], sp
    nop
    jp $DC50


    ld d, b
    push af
    ld d, b
    call c, Call_014_4950
    rst $00
    ld h, a
    ld d, b
    ld [$0008], sp
    nop
    ld a, b
    ld d, b
    sub c
    ld d, b
    xor d
    ld d, b
    sub c
    ld d, b
    ld c, c
    rst $10
    ld h, a
    ld c, a
    inc b
    cp $00
    jr nz, jr_014_6836

    inc b
    cp $00
    dec [hl]
    ld c, c
    inc b
    cp $00
    ld c, d
    ld c, c
    nop
    ld c, a
    ld a, [bc]
    cp $00
    ld l, a
    ld b, [hl]
    inc b
    cp $00
    ld a, $46
    ld [$00FE], sp
    and b
    ld b, [hl]
    ld [$00FE], sp
    ld a, $46
    nop
    ld c, c
    ld hl, sp+$67
    ld c, a
    ld bc, $0004
    ld a, $41
    ld [bc], a
    inc bc
    nop
    ld a, $41
    ld [bc], a
    ld [bc], a
    nop
    ld a, $41
    inc bc
    ld bc, $2500
    ld b, c
    inc b
    nop
    nop
    dec h
    ld b, c
    inc bc
    rst $38
    nop
    dec h
    ld b, c
    ld [bc], a
    cp $00
    ld a, $41
    ld [bc], a

jr_014_6836:
    db $FD
    nop
    ld a, $41
    ld bc, $00FC
    ld a, $41
    nop
    ld c, c
    ld hl, sp+$67
    ld c, a
    inc b
    ld [bc], a
    nop
    push de
    ld c, b
    inc b
    ld [bc], a
    nop
    ld [$0448], a
    ld [bc], a
    nop
    rst $38
    ld c, b
    nop
    ld c, a
    ld a, [bc]
    ld [bc], a
    nop
    call c, $0445
    ld [bc], a
    nop
    xor e
    ld b, l
    ld [$0002], sp
    dec c
    ld b, [hl]
    ld [$0002], sp
    xor e
    ld b, l
    nop
    ld c, c
    ld d, h
    ld l, b
    ld c, a
    inc b
    nop
    cp $DF
    ld b, a
    inc b
    nop
    cp $00
    ld c, b
    inc b
    nop
    cp $29
    ld c, b
    nop
    ld c, a
    ld a, [bc]
    nop
    cp $58
    ld b, a
    inc b
    nop
    cp $85
    ld b, a
    ld [$FE00], sp
    or d
    ld b, a
    ld [$FE00], sp
    add l
    ld b, a
    nop
    ld c, c
    ld a, [hl]
    ld l, b
    ld c, a
    ld bc, $0400
    or h
    ld b, b
    ld [bc], a
    nop
    inc bc
    or h
    ld b, b
    ld [bc], a
    nop
    ld [bc], a
    or h
    ld b, b
    inc bc
    nop
    ld bc, $409F
    inc b
    nop
    nop
    sbc a
    ld b, b
    inc bc
    nop
    rst $38
    sbc a
    ld b, b
    ld [bc], a
    nop
    cp $B4
    ld b, b
    ld [bc], a
    nop
    db $FD
    or h
    ld b, b
    ld bc, $FC00
    or h
    ld b, b
    nop
    ld c, c
    ld a, [hl]
    ld l, b
    ld c, a
    inc b
    nop
    ld [bc], a
    ld e, d
    ld c, b
    inc b
    nop
    ld [bc], a
    ld a, e
    ld c, b
    inc b
    nop
    ld [bc], a
    and h
    ld c, b
    nop
    ld c, a
    ld a, [bc]
    nop
    ld [bc], a
    pop de
    ld b, [hl]
    inc b
    nop
    ld [bc], a
    cp $46
    ld [$0200], sp
    dec hl
    ld b, a
    ld [$0200], sp
    cp $46
    nop
    ld c, c
    jp c, Jump_014_4F68

    ld [hl-], a
    nop
    nop
    adc d
    ld b, c
    nop
    db $10
    ld [bc], a
    ld d, b
    ld c, c
    daa
    ld l, c
    ld c, a
    ld [hl-], a
    nop
    nop
    adc d
    ld b, c
    nop
    db $10
    ld [bc], a
    ld d, b
    ld c, c
    ld [hl], d
    ld l, c
    ld c, a
    ld [hl-], a
    nop
    nop
    adc d
    ld b, c
    nop
    db $10
    ld [bc], a
    ld d, b
    ld c, c
    cp l
    ld l, c
    ld c, a
    ld [hl-], a
    nop
    nop
    adc d
    ld b, c
    nop
    db $10
    ld [bc], a
    ld d, b
    ld c, c
    ld [$4F6A], sp
    ld bc, $FF00
    ld l, a
    ld b, [hl]
    ld bc, $0000
    ld l, a
    ld b, [hl]
    ld bc, $FF00
    ld l, a
    ld b, [hl]
    ld bc, $0000
    ld l, a
    ld b, [hl]
    ld bc, $FF00
    ld l, a
    ld b, [hl]
    rlca
    nop
    nop
    ld l, a
    ld b, [hl]
    inc b
    nop
    nop
    ld a, $46
    ld bc, $0100
    and b
    ld b, [hl]
    ld bc, $0000
    and b
    ld b, [hl]
    ld bc, $0100
    and b
    ld b, [hl]
    ld bc, $0000
    and b
    ld b, [hl]
    ld bc, $0100
    and b
    ld b, [hl]
    dec b
    nop
    nop
    and b
    ld b, [hl]
    ld [$0000], sp
    ld a, $46
    nop
    ld c, c
    daa
    ld l, c
    ld c, a
    ld bc, $FF00
    call c, $0145
    nop
    nop
    call c, $0145
    nop
    rst $38
    call c, $0145
    nop
    nop
    call c, $0145
    nop
    rst $38
    call c, $0745
    nop
    nop
    call c, $0445
    nop
    nop
    xor e
    ld b, l
    ld bc, $0100
    dec c
    ld b, [hl]
    ld bc, $0000
    dec c
    ld b, [hl]
    ld bc, $0100
    dec c
    ld b, [hl]
    ld bc, $0000
    dec c
    ld b, [hl]
    ld bc, $0100
    dec c
    ld b, [hl]
    dec b
    nop
    nop
    dec c
    ld b, [hl]
    ld [$0000], sp
    xor e
    ld b, l
    nop
    ld c, c
    ld [hl], d
    ld l, c
    ld c, a
    ld bc, $0100
    ld e, b
    ld b, a
    ld bc, $0000
    ld e, b
    ld b, a
    ld bc, $0100
    ld e, b
    ld b, a
    ld bc, $0000
    ld e, b
    ld b, a
    ld bc, $0100
    ld e, b
    ld b, a
    rlca
    nop
    nop
    ld e, b
    ld b, a
    inc b
    nop
    nop
    add l
    ld b, a
    ld bc, $FF00
    or d
    ld b, a
    ld bc, $0000
    or d
    ld b, a
    ld bc, $FF00
    or d
    ld b, a
    ld bc, $0000
    or d
    ld b, a
    ld bc, $FF00
    or d
    ld b, a
    dec b
    nop
    nop
    or d
    ld b, a
    ld [$0000], sp
    add l
    ld b, a
    nop
    ld c, c
    cp l
    ld l, c
    ld c, a
    ld bc, $0100
    pop de
    ld b, [hl]
    ld bc, $0000
    pop de
    ld b, [hl]
    ld bc, $0100
    pop de
    ld b, [hl]
    ld bc, $0000
    pop de
    ld b, [hl]
    ld bc, $0100
    pop de
    ld b, [hl]
    rlca
    nop
    nop
    pop de
    ld b, [hl]
    inc b
    nop
    nop
    cp $46
    ld bc, $FF00
    dec hl
    ld b, a
    ld bc, $0000
    dec hl
    ld b, a
    ld bc, $FF00
    dec hl
    ld b, a
    ld bc, $0000
    dec hl
    ld b, a
    ld bc, $FF00
    dec hl
    ld b, a
    dec b
    nop
    nop
    dec hl
    ld b, a
    ld [$0000], sp
    cp $46
    nop
    ld c, c
    ld [$4F6A], sp
    ld bc, $FC00
    ld [hl], c
    ld b, b
    ld [bc], a
    nop
    db $FD
    ld [hl], c
    ld b, b
    ld [bc], a
    nop
    cp $71
    ld b, b
    inc bc
    nop
    rst $38
    ld e, h
    ld b, b
    inc b
    nop
    nop
    ld e, h
    ld b, b
    inc bc
    nop
    ld bc, $405C
    ld [bc], a
    nop
    ld [bc], a
    ld [hl], c
    ld b, b
    ld [bc], a
    nop
    inc bc
    ld [hl], c
    ld b, b
    ld bc, $0400
    ld [hl], c
    ld b, b
    nop
    ld c, c
    jp c, Jump_014_4F68

    ld bc, $00FC
    ei
    ld b, b
    ld [bc], a
    db $FD
    nop
    ei
    ld b, b
    ld [bc], a
    cp $00
    ei
    ld b, b
    inc bc
    rst $38
    nop
    ld [c], a
    ld b, b
    inc b
    nop
    nop
    ld [c], a
    ld b, b
    inc bc
    ld bc, $E200
    ld b, b
    ld [bc], a
    ld [bc], a
    nop
    ei
    ld b, b
    ld [bc], a
    inc bc
    nop
    ei
    ld b, b
    ld bc, $0004
    ei
    ld b, b
    nop
    ld c, c
    ld d, h
    ld l, b
    ld c, a
    rst $38
    nop
    nop
    or [hl]
    ld c, [hl]
    nop
    ld c, c
    or a
    ld l, d
    ld d, b
    ld [$0008], sp
    nop
    or [hl]
    ld c, [hl]
    rst $00
    ld c, [hl]
    ret c

    ld c, [hl]
    rst $00
    ld c, [hl]
    ld c, c
    pop bc
    ld l, d
    ld d, b
    ld [$0008], sp
    rst $38
    or [hl]
    ld c, [hl]
    rst $00
    ld c, [hl]
    ret c

    ld c, [hl]
    rst $00
    ld c, [hl]
    ld c, c
    pop de
    ld l, d
    ld c, a
    ld [$0000], sp
    sub h
    ld c, [hl]
    ld [$0000], sp
    ld a, e
    ld c, [hl]
    inc b
    nop
    nop
    or e
    ld c, l
    nop
    ld c, c
    or a
    ld l, d
    ld c, a
    stop
    nop
    or e
    ld c, l
    ld [$0000], sp
    sbc d
    ld c, l
    inc b
    nop
    nop
    or e
    ld c, l
    stop
    nop
    call z, $044D
    nop
    nop
    or e
    ld c, l
    inc b
    nop
    nop
    call z, $044D
    nop
    nop
    or e
    ld c, l
    inc b
    nop
    nop
    sbc d
    ld c, l
    inc b
    nop
    nop
    or e
    ld c, l
    inc b
    nop
    nop
    ld a, e
    ld c, [hl]
    inc b
    nop
    nop
    sub h
    ld c, [hl]
    nop
    ld c, a
    rst $38
    nop
    nop
    xor l
    ld c, [hl]
    nop
    ld c, c
    ld l, $6B
    ld c, a
    ld [bc], a
    db $FC
    nop
    xor l
    ld c, [hl]
    ld bc, $00FD
    xor l
    ld c, [hl]
    ld bc, $01FE
    xor l
    ld c, [hl]
    ld bc, $01FF
    xor l
    ld c, [hl]
    ld bc, $02FF
    xor l
    ld c, [hl]
    ld bc, $03FF
    xor l
    ld c, [hl]
    ld [bc], a
    nop
    inc bc
    xor l
    ld c, [hl]
    dec b
    nop
    inc b
    xor l
    ld c, [hl]
    nop
    ld c, c
    ld l, $6B
    ld d, b
    ld [$0402], sp
    nop
    db $ED
    ld d, d
    rra
    ld d, e
    ld b, $53
    call nc, $4952
    ld h, l
    ld l, e
    ld d, b
    ld [$0002], sp
    db $FD
    db $ED
    ld d, d
    rra
    ld d, e
    ld b, $53
    call nc, $4952
    ld [hl], l
    ld l, e
    ld d, b
    ld [$0004], sp
    rst $38
    db $ED
    ld d, d
    rra
    ld d, e
    ld b, $53
    call nc, $4952
    add l
    ld l, e
    ld c, a
    stop
    nop
    sub d
    ld d, d
    nop
    ld c, a
    rst $38
    nop
    nop
    or e
    ld d, d
    nop
    ld c, c
    sbc h
    ld l, e
    ld c, a
    stop
    nop
    ld d, b
    ld d, d
    nop
    ld c, a
    rst $38
    nop
    nop
    ld [hl], c
    ld d, d
    nop
    ld c, c
    xor l
    ld l, e
    ld c, a
    rst $38
    nop
    nop
    adc l
    ld c, e
    nop
    ld c, c
    or a
    ld l, e
    ld c, a
    rst $38
    nop
    nop
    ld e, e
    ld c, e
    rst $38
    nop
    nop
    ld e, e
    ld c, e
    nop
    ld d, b
    inc b
    ld [$0000], sp
    ld [hl], c
    ld c, h
    adc d
    ld c, h
    ld c, c
    call $4F6B
    jr nz, jr_014_6BDC

jr_014_6BDC:
    nop
    and [hl]
    ld c, e
    nop
    ld d, b
    jr nz, jr_014_6BE7

    nop
    nop
    cp a
    ld c, e

jr_014_6BE7:
    ret c

    ld c, e
    push af
    ld c, e
    ret c

    ld c, e
    cp a
    ld c, e
    ret c

    ld c, e
    push af
    ld c, e
    ret c

    ld c, e
    cp a
    ld c, e
    ret c

    ld c, e
    push af
    ld c, e
    ret c

    ld c, e
    cp a
    ld c, e
    ret c

    ld c, e
    push af
    ld c, e
    ret c

    ld c, e
    ld c, a
    jr nz, jr_014_6C08

jr_014_6C08:
    nop
    cp a
    ld c, e
    jr nz, jr_014_6C0D

jr_014_6C0D:
    nop
    and [hl]
    ld c, e
    nop
    ld c, c
    or a
    ld l, e
    ld d, b
    ld c, $08
    nop
    nop
    and e
    ld c, h
    cp h
    ld c, h
    pop hl
    ld c, h
    ld b, $4D
    dec hl
    ld c, l
    ld d, b
    ld c, l
    ld [hl], l
    ld c, l
    ld c, a
    rst $38
    nop
    nop
    and e
    ld c, h
    nop
    ld c, c
    daa
    ld l, h
    ld d, b
    inc b
    stop
    nop
    ld d, b
    ld c, h
    adc l
    ld c, e
    ld c, c
    ld sp, $4F6C
    rst $38
    nop
    nop
    ld [hl], h
    ld c, e
    nop
    ld c, c
    dec a
    ld l, h
    ld c, a
    rst $38
    nop
    nop
    ld [de], a
    ld c, h
    nop
    ld c, c
    ld b, a
    ld l, h
    ld d, b
    ld [$FF08], sp
    nop
    pop de
    ld d, h
    ld [$0354], a
    ld d, l
    ld [$4854], a
    inc d
    ld d, c
    ld l, h
    ld d, b
    ld [$0108], sp
    nop
    add [hl]
    ld d, h
    sbc a
    ld d, h
    cp b
    ld d, h
    sbc a
    ld d, h
    ld c, b
    inc d
    ld h, d
    ld l, h
    ld d, b
    ld [$0008], sp
    ld bc, $5400
    dec d
    ld d, h
    ld l, $54
    dec d
    ld d, h
    ld c, b
    inc d
    ld [hl], e
    ld l, h
    ld d, b
    ld [$0008], sp
    rst $38
    ld b, e
    ld d, h
    ld e, b
    ld d, h
    ld [hl], c
    ld d, h
    ld e, b
    ld d, h
    ld c, b
    inc d
    add h
    ld l, h
    ld d, b
    ld [$FF08], sp
    nop
    dec b
    ld d, [hl]
    ld [hl+], a
    ld d, [hl]
    dec sp
    ld d, [hl]
    ld [hl+], a
    ld d, [hl]
    ld c, b
    inc d
    sub l
    ld l, h
    ld d, b
    ld [$0108], sp
    nop
    or d
    ld d, l
    rst $08
    ld d, l
    add sp, $55
    rst $08
    ld d, l
    ld c, b
    inc d
    and [hl]
    ld l, h
    ld d, b
    ld [$0008], sp
    ld bc, $551C
    dec [hl]
    ld d, l
    ld c, [hl]
    ld d, l
    dec [hl]
    ld d, l
    ld c, b
    inc d
    or a
    ld l, h
    ld d, b
    ld [$0008], sp
    rst $38
    ld h, a
    ld d, l
    add b
    ld d, l
    sbc c
    ld d, l
    add b
    ld d, l
    ld c, b
    inc d
    ret z

    ld l, h
    ld c, a
    rst $38
    nop
    nop
    db $ED
    ld d, d
    nop
    ld c, b
    inc d
    reti


    ld l, h
    ld c, a
    rst $38
    nop
    nop
    call nc, $0052
    ld c, b
    inc d
    db $E4
    ld l, h
    ld c, a
    rst $38
    nop
    nop
    add b
    ld d, l
    nop
    ld c, b
    inc d
    rst $28
    ld l, h
    ld c, a
    rst $38
    nop
    nop
    dec [hl]
    ld d, l
    nop
    ld c, b
    inc d
    ld a, [$4E6C]
    inc bc
    inc d
    nop
    nop
    inc e
    ld l, l
    inc d
    inc bc
    nop
    inc hl
    ld l, l
    inc d
    ld [bc], a
    nop
    ld sp, $146D
    ld bc, $2A00
    ld l, l
    rst $38
    inc d
    inc d
    and c
    ld e, l
    ld h, l
    ld bc, $1412
    inc d
    sub a
    ld e, l
    ld h, l
    ld bc, $1412
    inc d
    or l
    ld e, l
    ld h, l
    ld bc, $1412
    inc d
    xor e
    ld e, l
    ld h, l
    ld bc, $0012
    nop
    nop
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
    nop
    nop
    jr nz, jr_014_6D7C

jr_014_6D7C:
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

    jr nz, @+$12

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
    rra
    rlca
    ccf
    ld d, $3F
    dec de
    ccf
    jr jr_014_6E32

    rla
    ccf
    rlca
    rra
    inc bc
    ld hl, sp+$00
    ldh a, [rLCDC]
    ld hl, sp-$50
    ld hl, sp+$70
    ld hl, sp-$50
    ld hl, sp-$50
    db $F4
    ret z

    db $E4
    ret c

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
    ld hl, sp+$00
    ldh a, [rLCDC]
    ld hl, sp-$50
    cp $70
    ld sp, hl
    or [hl]

jr_014_6E32:
    db $FD
    cp d
    cp $D8
    ld hl, sp-$20
    rlca
    nop
    ld [$0907], sp
    ld b, $10
    rrca
    rra
    nop
    rra
    ld c, $1F
    nop
    nop
    nop
    ldh a, [rP1]
    db $10
    ldh [$08], a
    ldh a, [$88]
    ld [hl], b
    sbc b
    ld h, b
    db $FC
    ld [$70FC], sp
    ld hl, sp+$00
    nop
    ret nz

    nop
    ld h, b
    nop
    jr nz, jr_014_6E5F

jr_014_6E5F:
    nop
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
    nop
    ldh a, [rP1]
    jr c, jr_014_6E6F

jr_014_6E6F:
    jr jr_014_6E71

jr_014_6E71:
    stop
    nop
    nop
    nop
    nop
    nop
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
    add sp, -$08
    nop
    ld hl, sp+$30

jr_014_6E9C:
    db $FC

jr_014_6E9D:
    ret z

    db $FC
    jr c, jr_014_6E9D

    ld hl, sp-$04
    add sp, -$04
    add sp, -$08
    ldh a, [$F0]
    nop
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
    jr c, jr_014_6F0D

    ret nc

    ld d, h
    xor b
    ld e, b
    and b
    jr nc, jr_014_6E9C

    ld hl, sp+$30
    db $FC
    ld hl, sp-$04
    add sp, -$04
    ldh [$E4], a
    ret c

    db $E4
    ret c

    ld hl, sp+$00
    db $10
    ldh [$88], a
    ld [hl], b
    cp b

jr_014_6EEF:
    ld b, b
    ld hl, sp+$30
    db $FC
    ld a, b
    db $FC
    jr c, jr_014_6EEF

    nop
    ld b, $00
    rrca
    ld b, $17
    rrca
    dec sp
    rra

jr_014_6F00:
    add hl, sp
    rra
    dec sp
    dec e
    dec e
    ld a, [bc]
    ld l, d
    dec d
    ldh a, [rP1]
    sbc b
    ldh a, [$8C]

jr_014_6F0D:
    ld hl, sp-$32
    db $FC
    sbc $FC
    db $FC
    jr c, jr_014_6F4D

    ret nc

    ld d, [hl]
    xor b
    ld e, c
    and [hl]
    add hl, sp
    sub $FE

jr_014_6F1D:
    jr nc, jr_014_6F1D

    db $FC
    db $FC
    ld hl, sp-$08
    ldh a, [$F0]
    ldh [$F0], a
    ldh [$1F], a
    nop
    inc c
    rrca
    db $10
    rrca
    ld de, $2F0E
    db $10
    ccf
    ld b, $3F
    ld e, $1F
    nop
    ldh [rP1], a
    jr nz, @-$3E

jr_014_6F3C:
    sub b
    ld h, b
    jr nc, jr_014_6F00

    ld hl, sp+$30
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    nop
    ld a, [de]
    dec b
    inc a
    dec bc
    ld a, a

jr_014_6F4D:
    inc a
    ld a, a
    ccf
    ld a, a
    dec sp
    ld a, a
    daa
    daa
    dec de
    daa
    dec de
    ld e, b
    and b
    jr nz, @-$3E

    ldh a, [rNR41]
    ldh a, [$E0]
    ldh a, [$C0]
    add sp, -$30
    add sp, -$30
    ldh a, [$80]
    ld a, [de]
    dec b
    inc a
    dec bc
    ld a, a
    inc e
    sbc a
    ld l, a
    sbc a
    ld l, a
    ld a, a

jr_014_6F73:
    rla
    rra
    rrca
    rra
    rrca
    ld e, b
    and b
    jr c, jr_014_6F3C

    db $F4
    jr z, jr_014_6F73

    add sp, -$08
    ldh [$E0], a
    ret nz

    ldh [$C0], a
    ldh [$80], a
    sbc d
    ld h, l
    sbc h
    ld l, e
    ld a, a
    inc e
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rra
    rrca
    rra
    rrca
    nop
    nop
    nop
    nop
    rra
    nop
    ld a, a
    nop
    ccf
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
    rrca
    nop
    ccf
    nop
    rra
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
    rlca
    nop
    rra
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    ld b, $3F
    reti


    ld a, a
    cp [hl]
    rst $38
    ld a, a
    ld a, a
    rrca
    rrca
    rlca
    rrca
    rlca
    ld hl, sp+$00
    rst $38

jr_014_6FDB:
    jr nc, jr_014_6FDB

    call $3EFF
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ldh a, [$F8]
    ldh a, [rP1]
    nop
    add b
    nop
    ld b, b
    add b
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
    ld e, d
    and h
    ld [hl-], a
    call z, $30FC
    ld hl, sp-$10
    ldh a, [$E0]
    ldh [$C0], a
    ldh [$C0], a
    ldh [$80], a
    nop
    nop
    nop
    nop
    jr nz, jr_014_702E

    ld b, b
    ld b, b
    ld h, b
    ld h, b
    jr c, jr_014_704C

    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_014_7046

    ld b, b
    ld b, b
    ld a, [hl]
    ld a, [hl]
    ccf
    ccf
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]

jr_014_702E:
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    ccf
    ccf
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38

jr_014_7046:
    rst $38
    rst $38
    nop
    nop
    nop
    nop

jr_014_704C:
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

jr_014_705A:
    nop
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
    nop
    dec e
    nop
    daa
    dec e

jr_014_706C:
    ld h, a
    ld a, $73
    ccf

Call_014_7070:
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
    jr c, jr_014_7091

    ld a, a
    inc c
    rst $38
    ccf
    rst $38
    ccf
    ld a, a

jr_014_7091:
    dec sp
    ld a, a
    dec sp
    ld a, a
    dec a
    ccf
    dec c
    jr nz, jr_014_705A

    ldh [rP1], a
    ldh a, [$E0]
    ldh a, [$E0]
    ld hl, sp-$30
    ld hl, sp-$30
    ld hl, sp-$30
    ldh a, [$80]
    ldh [rP1], a
    jr nz, jr_014_706C

    or b
    ld b, b
    ld a, b
    or b
    ld hl, sp+$70
    ldh a, [$C0]
    ret nz

    nop
    nop
    nop
    nop

jr_014_70B9:
    nop
    rlca
    nop
    rra
    inc bc
    ccf
    inc c
    ld a, [hl]
    ld de, $27F9
    rst $38
    ld b, a
    rst $38
    add e
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    add b
    db $FD
    ld [bc], a
    ld a, [de]
    rst $20
    rst $38
    rst $20
    rst $38
    jp $00FF


    pop hl
    ld a, $F1
    ld c, $FE
    ldh [$FE], a
    jr jr_014_7120

    call nz, $F2CF
    rst $38
    pop af
    rst $38
    ldh [$CF], a
    add c
    rst $08
    add d
    rst $08
    add h
    sbc $85
    sbc a
    add hl, bc
    ccf
    dec bc
    ld a, a
    ld [$689F], sp
    rst $00
    jr c, jr_014_70B9

    ld a, c
    ld a, [hl]
    ld sp, hl
    db $FD
    ei
    db $FD
    db $E3
    rst $38
    inc bc
    call $3733
    ld sp, hl
    add c
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    ld c, $6E
    sbc a
    ld a, a
    sbc a
    cp a
    rst $08

jr_014_7120:
    cp a
    rst $00
    rst $38
    pop bc
    and e
    call c, $9FFC
    ldh a, [rLCDC]
    di
    jr nz, jr_014_71A9

    and e
    db $FC
    sub e
    cp e
    call nc, $D7FF
    db $FC
    rla
    ld hl, sp+$17
    nop
    nop
    ld bc, $0200
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld bc, $0100
    nop
    sbc [hl]
    ld l, c
    ld a, l
    dec bc
    ccf
    dec bc
    sbc a
    add hl, bc
    rst $18
    add l
    rst $08
    add h
    rst $08
    add d
    rst $08
    add c
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$02
    ld sp, hl
    db $FD
    ei
    rst $38
    di
    ei
    rst $20
    rst $38
    ld b, a
    rst $30
    rrca
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    nop
    inc a
    jp $E7DB


    rst $30
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    sbc a
    rst $38
    rra
    ccf
    rst $08
    rst $18
    rst $28
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    ld a, [c]
    rst $38

jr_014_7187:
    ldh a, [$7C]
    sub a
    cp a
    rst $10
    rst $38
    call nc, $97F8
    db $FC
    sub e
    cp $21
    di
    jr nz, jr_014_7187

    ld b, b
    ld sp, hl
    or $F1
    ld c, $C2
    inc a
    inc b
    ld hl, sp+$38
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    nop
    ld a, e

jr_014_71A9:
    call z, $FE31
    ld [bc], a
    db $FC
    call nz, $3838
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    adc a
    rst $38
    ld b, a
    rst $38
    jr nz, jr_014_723E

    db $10
    ccf
    inc c
    rra
    inc bc
    rlca
    nop
    nop
    nop
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    jp $00FF


    rst $38
    nop
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    add d
    rst $38
    inc b
    cp $18
    cp $E0
    pop af
    ld c, $E1
    ld a, $E0
    add b
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
    ld h, c
    ld a, $61
    ld a, $62
    inc a
    ld h, d
    inc a
    ld [c], a
    inc a
    jp nz, $C47C

    ld a, b
    call nz, $C878
    ld [hl], b
    ret z

    ld [hl], b
    ret nc

    ld h, b
    ret nc

    ld h, b
    ldh [rLCDC], a
    ldh [rP1], a
    ld b, b
    nop
    nop
    nop
    rst $28
    ld b, c
    ld c, a
    ld [bc], a
    rrca
    inc b
    ld e, $05
    rra
    add hl, bc
    ccf
    dec bc
    ld a, a
    ld [$689F], sp
    pop bc
    ld a, $F1
    ld c, $FD
    ld [c], a
    cp $18
    ccf
    call nz, $F2CF
    rst $38
    pop af
    rst $38
    ldh [$9E], a
    ld l, c
    ld a, l
    dec bc
    ccf
    dec bc

jr_014_723E:
    rra
    add hl, bc
    rra
    dec b
    rrca
    inc b
    ld c, a
    ld [bc], a
    rst $28
    ld b, c
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
    nop
    nop
    ld l, a
    call nz, $EE39
    ld de, $81FE
    ld a, [hl]
    ld b, d
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    add d
    rst $38
    inc b
    cp $18
    db $FD
    ld [c], a
    pop af
    ld c, $C1
    ld a, $01
    nop
    rra
    ld bc, $1F7E
    ldh [$7F], a
    ld b, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    add d
    db $FC
    ld [bc], a
    db $FC
    inc b
    ld hl, sp+$18
    ldh [$60], a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    rst $00
    ld a, c
    ld a, a
    ld [hl-], a
    ccf
    inc b
    ld e, $05
    rra
    add hl, bc
    ccf
    dec bc
    ld a, a
    ld [$689F], sp
    pop af
    ld e, $F9
    ld b, $FE
    ldh [$FE], a
    jr jr_014_72F0

    call nz, $F2CF
    rst $38
    pop af
    rst $38
    ldh [$9E], a
    ld l, c
    ld a, l
    dec bc
    ccf
    dec bc
    rra
    add hl, bc
    rra
    dec b
    ccf
    inc b
    ld a, a
    ld [hl-], a
    rst $00
    ld a, c
    ld bc, $0100
    nop
    inc bc
    ld bc, $0103
    ld b, $03
    ld b, $03
    rlca
    ld [bc], a
    ld [bc], a
    nop
    add e
    db $FC
    add e
    db $FC
    inc b
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    add d
    rst $38
    inc b

jr_014_72F0:
    cp $18
    cp $E0
    ld sp, hl
    ld b, $F1
    ld e, $00
    nop
    ld [$1F00], sp
    ld [$0F17], sp
    db $10
    rrca
    ld [$0407], sp
    inc bc
    inc bc
    nop
    ld sp, $621E
    inc a
    jp nz, $827C

    db $FC
    inc b
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    ret nz

    nop
    ldh a, [$1F]
    pop af
    ld c, $FD
    ld [c], a
    cp $18
    ccf
    call nz, $F2CF
    rst $38
    pop af
    rst $38
    ldh [$80], a
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
    ldh [$80], a
    rlca
    ld sp, hl
    adc a
    ld a, [c]
    rst $38
    ld h, h
    ld a, [hl]
    dec b
    rra
    add hl, bc
    ccf
    dec bc
    ld a, a
    ld [$689F], sp
    nop
    nop
    rlca
    nop
    rra
    rlca
    jr c, jr_014_736F

    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    ld l, c
    ld a, l
    dec bc
    ccf
    dec bc
    rra
    add hl, bc

jr_014_7360:
    ld a, a
    dec b
    rst $38
    ld h, h
    adc a
    ld a, [c]
    rlca
    ld sp, hl
    rlca
    ld hl, sp-$07
    nop
    nop
    nop
    nop

jr_014_736F:
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
    ldh a, [rIE]
    pop af
    rst $38
    add d
    rst $38
    inc b
    cp $18
    db $FD
    ld [c], a
    pop af
    ld c, $F0
    rra
    ld b, e
    ld bc, $41E3
    cp [hl]
    ld h, e
    sbc h
    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    inc hl
    inc e
    inc e
    nop
    db $10
    ldh [rNR10], a
    ldh [rNR41], a
    ret nz

    jr nz, jr_014_7360

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ldh a, [$1F]
    pop af
    ld c, $FD
    ld [c], a
    cp $18
    ccf
    call nz, $F2CF
    rst $38
    pop af
    rst $38
    ldh [$67], a
    ld sp, hl
    rst $38
    sub d
    sbc a
    inc b
    ld e, $05
    rra
    add hl, bc
    ccf
    dec bc
    ld a, a
    ld [$689F], sp
    nop
    nop
    ld [bc], a
    nop
    rlca
    ld [bc], a
    dec bc
    ld b, $0B
    ld b, $09
    rlca
    inc b
    inc bc
    inc b
    inc bc
    sbc [hl]
    ld l, c
    ld a, l
    dec bc
    ccf
    dec bc
    rra
    add hl, bc
    rra
    dec b
    sbc a
    inc b
    rst $38
    sub d
    ld h, a
    ld sp, hl
    ld [bc], a
    ld bc, $0001

jr_014_73EC:
    nop
    nop

jr_014_73EE:
    nop
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
    db $FC
    inc bc
    db $FC

jr_014_73FC:
    adc h
    ld [hl], b
    ld [hl], b
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
    ldh a, [rIE]
    pop af
    rst $38
    add d
    rst $38
    inc b
    cp $18
    db $FD
    ld [c], a
    pop af
    ld c, $F0
    rra
    ld c, $03
    ld b, $03
    ld h, $03
    ld a, h
    daa
    ld e, b
    ccf
    ld b, b
    ccf
    inc hl
    inc e
    inc e
    nop
    jr nz, @-$3E

    jr nz, jr_014_73EC

    jr nz, jr_014_73EE

    ld b, b
    add b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_014_73FC

    db $10
    ldh [rOBP0], a
    or b
    ld l, b
    ret nc

    ld l, b
    ret nc

    ld [hl], h
    ret z

    ld [hl], d
    call z, $EC32
    ld [hl-], a
    db $EC
    ld l, h
    ldh a, [$FC]
    nop
    rst $38
    ld hl, sp-$01
    ld b, $CF
    ld sp, $7CB3
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_014_7462:
    add b
    nop
    ret nz

    nop
    ldh [$80], a
    db $FD
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    inc c
    ld e, $E1
    push hl
    ei
    rst $30
    ld sp, hl
    ei
    db $FD
    ei
    db $FD
    di
    ld b, b
    db $FC
    inc hl
    db $FC
    inc de
    ld a, h
    adc e
    sbc [hl]
    jp hl


    rst $38
    push hl
    rst $28
    db $F4
    rst $28
    db $F4
    ret nz

    nop
    inc a
    ret nz

    inc bc
    db $FC
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rlca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_014_7462

    inc c
    ldh a, [$FE]
    ld hl, sp-$04
    nop
    ei
    db $FC
    rst $38
    db $FC
    ld a, [$FFFD]
    db $FD
    rst $38
    ld sp, hl
    db $FD
    ei
    rst $38
    db $E3
    rst $38
    ld bc, $F2FF
    rst $38
    ld [hl-], a
    ld a, a
    add d
    sbc a
    ld [c], a
    rst $28
    ld a, [c]
    rst $28
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    db $F4
    jp $BD3C


    ld a, [hl]
    cp $7F
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    jr nc, @+$01

    nop
    cp $E4
    cp $64
    cp $08
    ld a, h
    adc b
    db $FC
    db $10
    ld hl, sp+$20
    ldh a, [rLCDC]
    ldh [$80], a
    rst $38
    ld bc, $02FF
    rst $38
    inc c

jr_014_74EE:
    rst $38
    ldh a, [$F0]
    nop
    ld h, b
    add b
    ld c, a
    add b
    sbc a
    rrca
    ret nz

    nop
    and b
    ld b, b
    db $10
    ldh [$88], a
    ldh a, [$C8]
    ld [hl], b
    ret z

    ld [hl], b
    sub b
    ldh [rNR10], a
    ldh [rSCX], a
    inc a
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
    nop
    nop
    rst $30
    ld b, b
    ld hl, sp+$27
    db $FC
    inc de
    inc a
    set 3, [hl]
    jp hl


    sbc $E5
    rst $28
    push af
    rst $28

jr_014_7527:
    db $F4
    nop
    nop
    ret nz

    nop
    jr nz, jr_014_74EE

    db $10
    ldh [rNR10], a
    ldh [$08], a
    ldh a, [$08]
    ldh a, [$84]
    ld hl, sp-$3C
    ld a, b
    ld h, h
    jr c, jr_014_75A1

    jr c, jr_014_75A3

    jr c, jr_014_75A5

    jr c, jr_014_7577

    jr jr_014_757D

    db $10
    stop
    rst $38
    ld bc, $02FF
    rst $38
    dec c
    rst $38
    ldh a, [$F0]
    nop
    ld h, c
    add b
    ld b, e
    add c
    add c
    nop
    ldh a, [rP1]
    ld [$84F0], sp
    ld hl, sp-$3C
    ld a, b
    ld h, h
    jr c, jr_014_7527

    ld a, b
    adc b
    ldh a, [rNR10]
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

jr_014_7577:
    nop
    di
    ld b, b
    db $FC
    inc hl
    db $FC

jr_014_757D:
    inc de

jr_014_757E:
    ld a, $C9
    rst $18
    jp hl


    rst $18
    db $E4
    rst $28
    db $F4
    rst $28
    db $F4
    add b
    nop
    ld [hl], b
    add b
    ld [$04F0], sp
    ld hl, sp-$7E
    db $FC
    jp nz, Jump_014_617C

    ld a, $31
    ld e, $31
    ld e, $31
    ld e, $32
    inc e
    ld h, h
    jr c, @+$3A

jr_014_75A1:
    nop
    nop

jr_014_75A3:
    nop
    nop

jr_014_75A5:
    nop
    nop
    nop
    rst $38
    ld bc, $02FF
    rst $38
    inc c
    cp $F1
    cp $03

jr_014_75B2:
    ld h, [hl]
    add e
    ld b, e
    add c
    add c
    nop
    ret nz

    nop
    ret nz

    nop
    jr nz, jr_014_757E

    db $10
    ldh [$08], a
    ldh a, [$08]
    ldh a, [rDIV]
    ld hl, sp-$3C
    ld hl, sp-$0E
    inc a
    ccf
    ld c, $0E
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or $41
    ld hl, sp+$27
    db $FC
    inc de
    inc a
    set 3, a
    jp hl


    rst $18
    db $E4
    rst $28
    db $F4
    rst $28
    db $F4
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_014_75B2

    ld [$04F0], sp
    ld hl, sp-$3E
    db $FC
    ld [c], a
    inc a
    ld sp, $311E
    ld e, $31
    ld e, $62
    inc a
    call z, Call_014_7070
    nop
    nop
    nop
    rst $38
    ld bc, $02FF
    rst $38
    inc c
    cp $F1
    db $FC
    inc bc
    ld l, h
    add a
    ld c, h
    add a
    add [hl]
    inc bc
    add b
    nop
    add b
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b

jr_014_7626:
    ld b, b
    add b
    ld h, h
    jr c, jr_014_768F

    jr c, jr_014_7691

    jr c, jr_014_7663

    jr jr_014_7665

    jr jr_014_764F

    ld [$0008], sp
    nop
    nop
    nop
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
    jr jr_014_7626

    inc b
    ld hl, sp+$02
    db $FC
    ld [c], a
    db $FC
    pop af
    ld e, $99

jr_014_764F:
    ld c, $19
    ld c, $32
    inc e
    inc e
    nop
    nop
    nop
    rst $38
    ld bc, $02FF
    rst $38
    inc c
    cp $F1
    or $03
    ld h, e

jr_014_7663:
    add c
    ld b, e

jr_014_7665:
    add c
    add [hl]
    inc bc
    ret nz

    nop
    ret nz

    nop
    jr nz, @-$3E

    jr nz, @-$3E

    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR41], a
    ret nz

    inc a
    rlca
    ld a, b
    ccf
    inc hl
    inc e
    inc e
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
    add b
    add b
    nop
    nop
    nop
    nop

jr_014_768F:
    nop
    nop

jr_014_7691:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc a
    rrca
    ld c, a
    add b
    ld h, b
    add b
    db $FC
    nop
    rst $38
    ld hl, sp-$01
    ld b, $CF
    ld sp, $7CB3
    db $10
    ldh [$90], a
    ldh [$C8], a
    ld [hl], b
    ret z

    ld [hl], b
    adc b
    ldh a, [$90]
    ld h, b
    ldh [rP1], a
    ldh [$80], a
    ldh a, [rLCDC]
    ld hl, sp+$20
    db $FC
    db $10
    ld a, h
    adc b
    sbc [hl]
    add sp, -$02
    db $E4
    rst $28
    db $F4
    rst $28
    db $F4
    rst $38
    db $E4
    rst $38
    ld h, h
    rst $38
    add hl, bc
    ld a, [hl]
    adc c
    db $FC
    inc de
    db $FC
    inc hl
    db $FC

jr_014_76D5:
    ld b, e
    di
    add b
    rst $38
    ld bc, $02FF
    rst $38
    inc c
    rst $38
    ldh a, [$FC]
    nop
    ld l, h
    ldh a, [$32]
    db $EC
    ld [hl-], a
    db $EC
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
    add c
    nop
    ld b, e
    add c
    ld h, c
    add b
    db $FC
    nop
    rst $38
    ld hl, sp-$01
    ld b, $CF
    ld sp, $7CB3
    db $10
    ldh [$88], a
    ldh a, [$C4]
    ld a, b
    ld h, h
    jr c, jr_014_76D5

    ld a, b
    add h
    ld a, b
    ret z

    jr nc, @-$0E

    add b
    rst $38
    db $E4
    rst $38
    ld h, l
    cp $09
    ld a, [hl]
    adc c
    db $FC
    inc de
    db $FC
    inc hl
    ld hl, sp+$47
    rst $30
    add b
    add c
    nop
    ld b, e
    add c
    ld h, [hl]
    add e
    cp $03
    rst $38
    ld hl, sp-$01
    ld b, $CF
    ld sp, $7CB3
    call nz, $04F8
    ld hl, sp+$08
    ldh a, [$08]
    ldh a, [rNR10]
    ldh [$A0], a
    ld b, b
    ret nz

    nop
    ldh [$80], a
    rst $38
    db $E4
    rst $38
    ld h, h
    rst $38
    ld [$897F], sp
    cp $11
    db $FC
    inc hl
    db $FC
    ld b, e
    di
    add b
    add [hl]
    inc bc

jr_014_775A:
    ld c, h
    add a
    ld l, h
    add a
    db $FC
    inc bc
    rst $38
    ld hl, sp-$01
    ld b, $CF
    ld sp, $7CB3
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    add b
    nop
    ret nz

    nop
    ldh [$80], a
    rst $38
    db $E4
    rst $38
    ld h, h
    rst $38
    ld [$897F], sp
    db $FC
    inc de
    db $FC
    inc hl
    ld hl, sp+$47
    or $81
    add [hl]
    inc bc
    ld b, e
    add c
    ld h, e
    add c
    cp $03
    rst $38
    ld hl, sp-$01
    ld b, $CF
    ld sp, $7CB3
    jr nz, jr_014_775A

    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR41], a
    ret nz

    and b
    ld b, b
    ret nz

    nop
    ldh [$80], a
    ldh a, [rLCDC]
    di
    jr nz, @+$7E

    and e
    rst $38
    sub b
    cp e
    rst $10
    db $FC
    rst $10
    db $FC
    rla
    ld hl, sp+$17
    nop
    nop
    add b
    nop
    ld b, b
    add b
    cp b
    ld b, b
    db $F4
    ld [$F4FA], sp
    ld bc, $01FE
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_014_77D2

jr_014_77D2:
    ld a, h
    jr c, @+$66

    jr c, jr_014_780F

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
    ld a, $1C
    ld [hl+], a
    inc e
    inc e
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
    ld a, $1C
    ld a, $1C
    inc e
    nop
    ld a, h
    jr c, jr_014_7877

    jr c, jr_014_7875

    db $10
    jr c, jr_014_7800

jr_014_7800:
    inc a
    nop
    jr c, jr_014_7804

jr_014_7804:
    nop
    nop
    nop
    nop
    ld a, $1C
    ld a, $1C
    ld e, $08
    inc e

jr_014_780F:
    nop
    ld a, $00
    ld [hl], $00
    nop
    nop
    nop
    nop
    ldh [$03], a
    nop
    nop
    ld e, a
    ld c, a
    ld a, a
    inc bc
    ldh [$03], a
    nop
    nop
    ld e, a
    ld c, a
    add hl, de
    inc h
    ldh [$03], a
    nop
    nop
    xor $08
    ld d, c
    ld d, d
    ldh [$03], a
    nop
    nop
    ld e, a
    ld c, a
    xor $08
    ldh [$03], a
    nop
    nop
    ld e, a
    ld c, a
    ld d, c
    ld d, d
    ldh [$03], a
    nop
    nop
    ld e, a
    ld c, a
    ldh [rSB], a
    ldh [$03], a
    nop
    nop
    ld e, a
    ld c, a
    xor l
    ld a, l
    ldh [$03], a
    nop
    nop
    ldh [rSB], a
    ld d, e
    ld a, [hl+]
    nop
    ld a, h
    nop
    nop
    ld a, l
    inc bc
    sbc b
    ld [hl], $00
    ld a, h
    nop
    nop
    jr nc, jr_014_7877

    sbc b
    ld [hl], $00
    ld a, h
    nop
    nop
    dec e
    ld [hl], h
    sbc b
    ld [hl], $00
    ld a, h
    nop
    nop
    ld a, a

jr_014_7875:
    ld [bc], a
    sbc b

jr_014_7877:
    ld [hl], $00
    ld a, h
    nop
    nop
    jr nc, @+$13

    ld h, b
    ld bc, $7C00
    nop
    nop
    jr nc, jr_014_7897

    nop
    ld d, b
    nop
    ld a, h
    nop
    nop
    jr nc, jr_014_789F

    ld de, $0046
    ld a, h
    nop
    nop
    nop
    ld a, [hl]
    nop

jr_014_7897:
    ld b, b
    nop
    ld a, h
    rst $38
    ld a, a
    rst $38
    rla
    inc a

jr_014_789F:
    dec de
    nop
    ld a, h
    add l
    inc d
    ld [hl], e
    dec e
    sbc a
    ld d, a
    nop
    ld a, h
    add l
    inc d
    dec e
    ld [hl], h
    sbc a
    ld d, a
    nop
    ld a, h
    add l
    inc d
    ld a, a
    ld [bc], a
    sbc a
    ld d, a
    nop
    ld a, h
    rst $38
    ld a, a
    inc a
    dec de
    rst $38
    rla
    nop
    ld a, h
    add l
    inc d
    ld [hl], e
    dec e
    nop
    ld h, b
    nop
    ld a, h
    add l
    inc d
    ld [hl], e
    dec e
    ld de, $0046
    ld a, h
    add l
    inc d
    add $7E
    nop
    ld h, b
    nop
    ld a, h
    nop
    nop
    ld a, l
    inc bc
    ld e, [hl]
    ld c, a
    nop
    ld a, h
    nop
    nop
    rst $38
    ld e, a
    ld a, e
    rrca
    nop
    ld a, h
    nop
    nop
    rst $38
    ld e, a
    or h
    ld hl, $7C00
    nop
    nop
    ld a, a
    ld [bc], a
    ld e, [hl]
    ld c, a
    nop
    ld a, h
    nop
    nop
    ld [hl], e
    dec e
    ld h, b
    ld bc, $7C00
    nop
    nop
    or h
    ld hl, $6318
    nop
    ld a, h
    nop
    nop
    dec hl
    ld e, $D7
    ld a, [hl-]
    nop
    ld a, h
    nop
    nop
    rst $38
    ld e, a
    sub e
    inc h
    daa
    ld [$B397], sp
    ld sp, $01C7
    or e
    inc sp
    rst $00
    nop
    ld l, c
    ret c

    ld a, b
    inc d
    ld l, b
    inc b
    ld d, c
    inc de
    ld h, a
    adc $46
    dec b
    nop
    ld hl, sp+$4A
    ld b, $03
    ld a, [hl+]
    ret nc

    nop
    inc d
    xor e
    ld a, c
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    ld b, $07
    ld e, d
    ret nc

    nop
    inc d
    ld a, [$1979]
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    dec b
    ld b, $4D
    ret nc

    jr nc, jr_014_796A

    ld b, $7B
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    rlca
    ld b, $4F
    ret nc

    ld h, b
    inc d
    ld l, $7B
    add hl, de
    add sp, $46

jr_014_796A:
    ld l, [hl]
    jr nc, jr_014_7977

    inc bc
    ld a, e
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_014_797F

    add e
    ld a, l

jr_014_7977:
    nop
    add e
    nop
    ld l, [hl]
    jr nc, jr_014_7986

    or b
    ld b, b

jr_014_797F:
    nop
    add [hl]
    nop
    or l
    dec hl
    and b
    ei

jr_014_7986:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b
    add [hl]
    or e
    daa
    and d
    dec b
    or l
    ld a, [hl+]
    and b
    rst $30
    sbc e
    inc d
    and [hl]
    ld a, c
    ld [hl], e
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    and b
    rrca
    ld e, e
    ld bc, $4545
    ld c, b
    inc d
    ld d, l
    ld a, e
    inc d
    inc d
    and c
    ld e, l
    ld h, l
    ld bc, $1415
    and c
    ld e, l
    jr nz, jr_014_79CB

    cp a
    ld e, l
    jr nz, jr_014_79CF

    ret


    ld e, l
    jr nz, jr_014_79D3

    ld c, l
    ld e, h
    ld [$A114], sp
    ld e, l
    nop
    nop
    ld e, a
    nop
    ld [bc], a
    ld e, a

jr_014_79CB:
    ld [bc], a
    ld [bc], a
    dec d
    inc d

jr_014_79CF:
    cp a
    ld e, l
    jr nz, jr_014_79E7

jr_014_79D3:
    ret


    ld e, l
    jr nz, jr_014_79EB

    and c
    ld e, l
    nop
    nop
    ld e, a
    inc bc
    ld [bc], a
    dec d
    inc d
    ret


    ld e, l
    inc b
    inc d
    xor e
    ld e, l
    inc b

jr_014_79E7:
    inc d
    and c
    ld e, l
    inc b

jr_014_79EB:
    inc d
    xor e
    ld e, l
    nop
    nop
    ld e, a
    inc b
    dec b
    dec d
    inc d
    db $FD
    ld e, h
    stop
    add hl, de
    inc d
    ld a, [de]
    ld a, [bc]
    ld b, d
    ld e, a
    nop
    ld [bc], a
    inc d
    ld a, [de]
    nop
    ld b, d
    ld e, [hl]
    inc d
    inc l
    ld a, d
    ld e, a
    ld bc, $1504
    ld a, [de]
    ret nz

    ld b, c
    ld c, $1A
    nop
    ld b, d
    nop
    nop
    ld e, a
    inc b
    dec b
    inc d
    ld a, [de]
    inc d
    ld b, d
    ld e, a
    dec b
    inc b
    inc d
    ld a, [de]
    jr z, jr_014_7A66

    ld e, a
    ld b, $04
    inc d
    ld a, [de]
    nop
    ld b, d
    ld b, l
    and d
    adc b
    ld h, l
    and [hl]
    ld c, b
    ld b, l
    ld e, c
    ld hl, $FE21
    db $FD
    ld e, a
    ld bc, $A604
    ld d, a
    ld l, b
    ld l, a
    jr nz, jr_014_7AA1

    ld [hl], d
    ld h, l
    jr nz, jr_014_7A9D

    ld c, a
    ld d, l
    ccf
    ld hl, $FDFE
    and d
    jr jr_014_7AB4

    and [hl]
    ld e, c
    ld h, l
    ld h, c
    ld l, b
    ld hl, $5920
    ld l, a
    ld [hl], l
    rst $38
    ld h, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_014_7AA6

    ld c, a
    ld c, [hl]
    ld b, l
    ld e, c
    cp $42

jr_014_7A66:
    ld c, a
    ld c, [hl]
    ld b, l
    ld e, c
    ld hl, $FE21
    db $FD
    and d
    xor b
    ld l, b
    and [hl]
    ld b, h
    ld l, c
    ld h, h
    jr nz, jr_014_7AEB

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_014_7AE2

    ld l, c
    ld l, [hl]
    ld l, e
    rst $38
    ld [hl], e
    ld h, l
    ld l, [hl]
    ld h, h
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    jr nz, jr_014_7AF9

    ld [hl], l
    ld [hl], h
    cp $77
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_014_7B02

    ld [hl], l
    ld [hl], d
    rst $38
    ld b, e
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h

jr_014_7A9D:
    ccf
    cp $FD
    and c

jr_014_7AA1:
    ld e, a
    ld [bc], a
    ld [bc], a
    and d
    sbc b

jr_014_7AA6:
    ld b, c
    and [hl]
    ld d, l
    ld l, b
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    adc b
    ld h, l
    and [hl]
    ld d, a

jr_014_7AB4:
    ld b, l
    ld c, h
    ld c, h
    ccf
    ld hl, $FDFE
    ld e, a
    inc bc
    ld [bc], a
    ld b, e
    db $10
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, h
    ld c, a
    ld c, a
    ld c, e
    ld hl, $4120
    rst $38
    ld d, h
    ld c, c
    ld c, l
    ld b, d
    ld b, l
    ld d, d
    jr nz, jr_014_7B1C

    ld e, c
    ld d, d
    ld b, l
    ld c, [hl]
    ld hl, $FE21
    db $FD
    ld e, a
    inc b
    dec b
    and c
    and [hl]
    ld d, a

jr_014_7AE2:
    ld c, b
    ld b, l
    ld d, d
    ld b, l
    ld hl, $FDFE
    ld e, a
    dec b

jr_014_7AEB:
    inc b
    and [hl]
    ld b, c
    jr nz, jr_014_7B67

    ld l, b
    ld h, c
    ld [hl], h
    ccf
    cp $FD
    ld e, a
    ld b, $04

jr_014_7AF9:
    and [hl]
    ld c, b
    ld b, l
    ld e, c
    ld hl, $FE21
    db $FD
    and c

jr_014_7B02:
    ld c, b
    inc d
    ld d, l
    ld a, e
    inc d
    ld a, [de]
    ret c

    ld b, h
    ld e, a
    ld bc, $1504
    ld a, [de]
    ld d, d
    ld b, h
    ld c, $1A
    call nz, $0044
    nop
    ld e, a
    inc b
    dec b
    inc d
    ld a, [de]

jr_014_7B1C:
    and [hl]
    ld b, h
    ld e, a
    dec b
    inc b
    inc d
    ld a, [de]
    ret c

    ld b, h
    ld e, a
    ld b, $04
    inc d
    ld a, [de]
    sub d
    ld b, h
    ld b, l
    ld b, l
    inc d
    ld a, [de]
    ld [hl], b
    ld b, a
    ld e, a
    ld bc, $1504
    ld a, [de]
    db $F4
    ld b, [hl]
    ld c, $1A
    ld e, h
    ld b, a
    nop
    nop
    ld e, a
    inc b
    dec b
    inc d
    ld a, [de]
    ld c, b
    ld b, a
    ld e, a
    dec b
    inc b
    inc d
    ld a, [de]
    ld [hl], b
    ld b, a
    ld e, a
    ld b, $04
    inc d
    ld a, [de]
    inc [hl]
    ld b, a
    ld b, l
    sub a
    or e
    ld sp, $01C7
    or e
    inc sp
    rst $00
    nop
    ld l, c
    ret c

    ld a, b
    inc d
    ld l, b
    inc de
    ld d, c
    inc de
    ld h, a

jr_014_7B67:
    db $D3
    ld b, [hl]
    dec b
    nop
    ld hl, sp+$4A
    dec c
    add hl, de
    ld bc, $00D2
    inc d
    xor l
    ld a, e
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    dec c
    ld d, $C5
    pop de
    nop
    inc d
    ld e, $7D
    add hl, de
    add sp, $46
    or l
    dec hl
    and b
    ei
    dec bc
    nop
    dec bc
    ld [bc], a
    ld l, [hl]
    add b
    ld hl, $5000
    nop
    add b

jr_014_7B96:
    nop
    adc b
    rrca
    dec e
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
    inc d
    xor b
    ld a, e
    ld b, l
    ld b, l
    ld c, b
    inc d
    jr @+$7B

    dec d
    inc d
    db $FD
    ld e, h
    db $10
    inc d
    xor e
    ld e, l
    inc b
    inc d
    dec c
    ld e, l
    ld [$9714], sp
    ld e, l
    nop
    nop
    ld e, [hl]
    inc d
    rst $28
    ld a, e
    ld e, a
    nop
    inc bc
    dec d
    inc d
    ld b, c
    ld e, l
    ld [$9714], sp
    ld e, l
    db $10
    inc d
    daa
    ld e, l
    ld [$9714], sp
    ld e, l
    db $10
    inc d
    ld b, c
    ld e, l
    ld [$2714], sp
    ld e, l
    ld [$FD14], sp
    ld e, h
    jr nc, jr_014_7BE4

jr_014_7BE4:
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    and b
    rrca
    ld c, b
    jr jr_014_7B96

    ld e, l
    and [hl]
    ld c, a
    ld d, l
    ld b, e
    ld c, b
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, a
    ld l, [hl]
    ld a, c
    ccf
    ld hl, $FDFE
    and d
    ld [$A640], sp
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    ld hl, $FDFE
    and c
    add a
    jr nz, jr_014_7C14

jr_014_7C14:
    rst $38
    nop
    and d
    ld [$A640], sp
    ld d, a
    ld l, b
    ld h, c
    ld l, $2E
    ld l, $20
    ld c, b
    ld l, a
    ld [hl], a
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_014_7C93

    ld [hl], d
    ld h, l
    jr nz, jr_014_7CAD

    ld h, l
    ccf
    cp $FD
    and d
    ld [$A640], sp
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_014_7CAD

    ld [hl], e
    jr nz, jr_014_7CBB

    ld l, b
    ld h, l
    rst $38
    ld h, e
    ld h, c
    halt
    ld h, l
    jr nz, jr_014_7CC7

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_014_7C9F

    cp $66
    ld h, l
    ld l, h
    ld l, h
    jr nz, @+$6B

    ld l, [hl]
    ld [hl], h
    ld l, a
    jr nz, jr_014_7CD6

    ld l, b
    ld h, l
    rst $38
    ld c, [hl]
    ld h, c
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    jr nz, @+$54

    ld l, c
    halt
    ld h, l
    ld [hl], d
    ld l, $2E
    ld l, $FE
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_014_7CE2

    ld l, a
    ld [hl], a
    jr nz, jr_014_7CE2

    ld l, c
    ld h, h
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_014_7CED

    ld h, l
    ld [hl], h
    jr nz, jr_014_7CF2

    ld h, l
    ld [hl], d
    ld h, l
    ccf
    cp $FD
    and d
    sbc b
    ld b, c

jr_014_7C93:
    and [hl]
    ld c, c
    jr nz, jr_014_7CFB

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_014_7D08

    ld l, [hl]
    ld l, a

jr_014_7C9F:
    ld [hl], a
    ld hl, $49FF
    jr nz, jr_014_7D1C

    ld h, c
    ld [hl], e
    jr nz, jr_014_7D19

    ld l, h
    ld h, c
    ld a, c
    ld l, c

jr_014_7CAD:
    ld l, [hl]
    ld h, a
    cp $61
    jr nz, jr_014_7D1A

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_014_7D19

    ld l, [hl]
    ld h, h
    rst $38

jr_014_7CBB:
    ld h, a
    ld l, a
    ld [hl], h
    jr nz, jr_014_7D37

    ld h, c
    ld [hl], d
    ld [hl], b
    ld h, l
    ld h, h
    jr nz, jr_014_7D2F

jr_014_7CC7:
    ld h, l
    ld [hl], d
    ld h, l
    cp $77
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_014_7D1A

    rst $38
    ld h, e
    ld l, a
    ld l, h
    ld l, h

jr_014_7CD6:
    ld h, l
    ld h, e
    ld [hl], h
    ld h, l
    ld h, h
    cp $32
    dec [hl]
    dec [hl]
    jr nz, jr_014_7D46

    ld l, [hl]

jr_014_7CE2:
    ld h, l
    ld [hl], d
    ld h, a
    ld a, c
    ld l, $FE
    db $FD
    and d
    ld [$A640], sp

jr_014_7CED:
    ld d, a
    ld h, l
    ld l, c
    ld [hl], d
    ld h, h

jr_014_7CF2:
    ld l, $2E
    ld l, $FE
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l

jr_014_7CFB:
    jr nz, jr_014_7D70

    ld h, l
    ld h, l
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_014_7D66

    ld [hl], d
    ld l, a
    ld [hl], l

jr_014_7D08:
    ld l, [hl]
    ld h, h
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, h
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    ld hl, $FDFE

jr_014_7D19:
    and c

jr_014_7D1A:
    ld e, a
    nop

jr_014_7D1C:
    inc bc
    ld b, l
    dec d
    inc d
    or a
    ld l, h
    db $10
    inc d
    db $E4
    ld l, h
    inc b
    inc d
    ret z

    ld l, h
    ld [$FA14], sp
    ld l, h
    nop

jr_014_7D2F:
    nop
    ld e, a
    nop
    inc bc
    dec d
    inc d
    and [hl]
    ld l, h

jr_014_7D37:
    ld [$FA14], sp
    ld l, h
    db $10
    inc d
    sub l
    ld l, h
    ld [$FA14], sp
    ld l, h
    db $10
    inc d
    and [hl]

jr_014_7D46:
    ld l, h
    db $10
    inc d
    or a
    ld l, h
    ld h, b
    nop
    add hl, de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_014_7D66:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_014_7D70:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
