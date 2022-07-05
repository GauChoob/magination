; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

    rlca
    nop
    ld c, $D3
    ld h, l
    nop
    ld c, $D7
    ld h, l
    nop
    ld c, $DB
    ld h, l
    nop
    ld c, $DF
    ld h, l
    nop
    ld c, $E3
    ld h, l
    nop
    ld c, $E7
    ld h, l
    nop
    ld c, $EE
    ld h, l
    ld [$0E00], sp
    push af
    ld h, l
    nop
    ld c, $76
    ld l, b
    ld bc, $7C0E
    ld l, c
    ld bc, $910E
    ld l, c
    ld bc, $A60E
    ld l, c
    ld bc, $BB0E
    ld l, c
    ld bc, $D00E
    ld l, c
    ld bc, $E50E
    ld l, c
    ld bc, $1200
    rst $30
    ld b, c
    ld bc, $1200
    ld c, a
    ld b, l
    ld bc, $1200
    reti


    ld c, b
    ld [bc], a
    nop
    ld [de], a
    ld h, d
    ld c, h
    nop
    ld [de], a
    jr nz, jr_013_40A4

    ld bc, $1200
    or h
    ld d, c
    jr c, @+$03

    ld c, $BC
    ld c, e
    ld bc, $C00E
    ld c, e
    ld bc, $C40E
    ld c, e
    ld bc, $C80E
    ld c, e
    ld bc, $CC0E
    ld c, e
    ld bc, $D00E
    ld c, e
    ld bc, $D40E
    ld c, e
    ld bc, $D80E
    ld c, e
    ld bc, $DC0E
    ld c, e
    ld bc, $E00E
    ld c, e
    ld bc, $A80E
    ld c, e
    ld bc, $AC0E
    ld c, e
    ld bc, $B00E
    ld c, e
    ld bc, $B40E
    ld c, e
    ld bc, $B80E
    ld c, e
    ld bc, $E40E
    ld c, e
    ld bc, $E80E
    ld c, e
    ld bc, $EC0E
    ld c, e

jr_013_40A4:
    ld bc, $F00E
    ld c, e
    ld bc, $F40E
    ld c, e
    ld bc, $F80E
    ld c, e
    ld bc, $FC0E
    ld c, e
    ld bc, $000E
    ld c, h
    ld bc, $040E
    ld c, h
    ld bc, $080E
    ld c, h
    ld bc, $0C0E
    ld c, h
    ld bc, $100E
    ld c, h
    ld bc, $140E
    ld c, h
    ld bc, $180E
    ld c, h
    ld bc, $1C0E
    ld c, h
    ld bc, $200E
    ld c, h
    ld bc, $240E
    ld c, h
    ld bc, $280E
    ld c, h
    ld bc, $2C0E
    ld c, h
    ld bc, $300E
    ld c, h
    ld bc, $340E
    ld c, h
    ld bc, $380E
    ld c, h
    ld bc, $3C0E

jr_013_40F3:
    ld c, h
    ld bc, $400E
    ld c, h
    ld bc, $440E
    ld c, h
    ld bc, $480E

jr_013_40FF:
    ld c, h
    ld bc, $4C0E
    ld c, h
    ld bc, $500E
    ld c, h
    ld bc, $540E
    ld c, h
    ld bc, $580E
    ld c, h
    ld bc, $5C0E
    ld c, h
    ld bc, $600E
    ld c, h
    ld bc, $640E
    ld c, h
    ld bc, $680E
    ld c, h
    ld bc, $6C0E
    ld c, h
    ld bc, $700E
    ld c, h
    ld bc, $740E
    ld c, h
    ld bc, $780E
    ld c, h
    ld bc, $7C0E
    ld c, h
    ld bc, $800E
    ld c, h
    ld bc, $840E
    ld c, h
    inc bc
    nop
    jr @-$61

    ld e, a
    nop
    jr jr_013_40F3

    ld e, a
    nop
    jr jr_013_41BD

    ld e, a
    inc bc
    nop
    jr @-$3D

    ld e, a
    nop
    jr jr_013_40FF

    ld h, c
    nop
    jr jr_013_41C6

    ld h, d
    ld [bc], a
    nop
    ld c, $C3
    ld c, d
    nop
    ld c, $C3
    ld c, d
    rlca
    nop
    ld [$7AF8], sp
    nop
    ld [$7AFC], sp
    nop
    ld [$7B00], sp
    nop
    ld [$7B04], sp
    nop
    ld [$7B08], sp
    nop
    ld [$7B0C], sp
    nop
    ld [$7B13], sp
    ld a, [bc]
    nop
    ld [$7B1A], sp
    nop
    ld [$7C1F], sp
    nop
    ld [$7DE2], sp
    nop
    ld [$7CEA], sp
    ld bc, $BC08
    ld a, [hl]
    ld bc, $DA08
    ld a, [hl]
    ld bc, $1508
    ld a, a
    ld bc, $4A08
    ld a, a
    ld bc, $5F08
    ld a, a
    ld bc, $7D08
    ld a, a
    jr nz, jr_013_41A7

jr_013_41A7:
    rla
    xor h
    ld h, b
    nop
    rla
    daa
    ld h, d
    nop
    rla
    add hl, sp
    ld h, d
    nop
    rla
    ld c, e
    ld h, d
    nop
    rla
    ld e, l
    ld h, d
    nop
    rla
    ld l, a

jr_013_41BD:
    ld h, d
    nop
    rla
    add c
    ld h, d
    nop
    rla
    sub e
    ld h, d

jr_013_41C6:
    nop
    rla
    and l
    ld h, d
    nop
    rla
    or a
    ld h, d
    nop
    rla
    jp c, $0062

    rla
    db $FD
    ld h, d
    nop
    rla
    rrca
    ld h, e
    nop
    rla
    ld hl, $0063
    rla
    inc sp
    ld h, e
    nop
    rla
    ld d, [hl]
    ld h, e
    nop
    rla
    ld l, b
    ld h, e
    nop
    rla
    adc e
    ld h, e
    nop
    rla
    xor [hl]
    ld h, e
    nop
    rla
    ret nz

    ld h, e
    nop
    rla
    jp nc, $0063

    rla
    push af
    ld h, e
    nop
    rla
    rlca
    ld h, h
    nop
    rla
    ld a, [hl+]
    ld h, h
    nop
    rla
    ld c, l
    ld h, h
    nop
    rla
    ld e, a
    ld h, h
    nop
    rla
    ld [hl], c
    ld h, h
    nop
    rla
    sub h
    ld h, h
    nop
    rla
    and [hl]
    ld h, h
    nop
    rla
    ret


    ld h, h
    nop
    rla
    db $DB
    ld h, h
    nop
    rla
    rst $38
    ld h, h
    inc c
    nop
    rla
    ld bc, $0066
    rla
    ld d, l
    ld l, c
    nop
    rla
    add hl, bc
    ld l, c
    nop
    rla
    ld de, $0069
    rla
    add hl, de
    ld l, c
    nop
    rla
    ld hl, $0069
    rla
    add hl, hl
    ld l, c
    nop
    rla
    dec [hl]
    ld l, c
    nop
    rla
    ld b, c
    ld l, c
    nop
    rla
    ld c, l
    ld l, c
    nop
    rla
    ret


    ld h, l
    nop
    rla
    xor $79
    inc b
    nop
    rla
    ret nz

    ld l, d
    nop
    rla
    ret nc

    ld l, d
    nop
    rla
    ldh [rOCPS], a
    nop
    rla
    ldh a, [rOCPS]
    dec e
    nop
    rla
    ldh [$6D], a
    nop
    rla
    rst $38
    ld l, l
    nop
    rla
    ld [hl+], a
    ld l, [hl]
    nop
    rla
    inc [hl]
    ld l, [hl]
    nop
    rla
    ld b, [hl]
    ld l, [hl]
    nop
    rla
    ld e, b
    ld l, [hl]
    nop
    rla
    ld l, d
    ld l, [hl]
    nop
    rla
    ld a, h
    ld l, [hl]
    nop
    rla
    adc [hl]
    ld l, [hl]
    nop
    rla
    or c
    ld l, [hl]
    nop
    rla
    call nc, $006E
    rla
    and $6E
    nop
    rla
    ld hl, sp+$6E
    nop
    rla
    dec de
    ld l, a
    nop
    rla
    ld a, $6F
    nop
    rla
    ld h, c
    ld l, a
    nop
    rla
    ld [hl], e
    ld l, a
    nop
    rla
    sub [hl]
    ld l, a
    nop
    rla
    xor b
    ld l, a
    nop
    rla
    cp d
    ld l, a
    nop
    rla
    db $DD
    ld l, a
    nop
    rla
    nop
    ld [hl], b
    nop
    rla
    ld [de], a
    ld [hl], b
    nop
    rla
    inc h
    ld [hl], b
    nop
    rla
    dec h
    ld [hl], b
    nop
    rla
    scf
    ld [hl], b
    nop
    rla
    ld c, c
    ld [hl], b
    nop
    rla
    ld c, d
    ld [hl], b
    nop
    rla
    ld e, h
    ld [hl], b
    rrca
    nop
    rla
    add hl, hl
    ld [hl], h
    nop
    rla
    ld c, d
    ld [hl], h
    nop
    rla
    add l
    ld [hl], h
    nop
    rla
    sub e
    ld [hl], h
    nop
    rla
    cp b
    ld [hl], h
    nop
    rla
    ld b, c
    ld [hl], l
    nop
    rla
    ret nc

    ld [hl], l
    nop
    rla
    ld e, h
    halt
    nop
    rla
    ld l, h
    halt
    nop
    rla
    ld a, h
    halt
    nop
    rla
    adc h
    halt
    nop
    rla
    jp nz, $0076

    rla
    dec b
    ld [hl], a
    nop
    rla
    ld a, [hl-]
    ld [hl], a
    nop
    rla
    ld l, a
    ld [hl], a
    ld hl, $1000
    ld l, c
    ld l, [hl]
    nop
    db $10
    ld a, e
    ld l, [hl]
    nop
    db $10
    sbc [hl]
    ld l, [hl]
    nop
    db $10
    pop bc
    ld l, [hl]
    nop
    db $10
    db $D3
    ld l, [hl]
    nop
    db $10
    push hl
    ld l, [hl]
    nop
    db $10
    rst $30
    ld l, [hl]
    nop
    db $10
    add hl, bc
    ld l, a
    nop
    db $10
    dec de
    ld l, a
    nop
    db $10
    ld a, $6F
    nop
    db $10
    ld h, c
    ld l, a
    nop
    db $10
    ld [hl], e
    ld l, a
    nop
    db $10
    sub [hl]
    ld l, a
    nop
    db $10
    cp c
    ld l, a
    nop
    db $10
    bit 5, a
    nop
    db $10
    db $DD
    ld l, a
    nop
    db $10
    rst $28
    ld l, a
    nop
    db $10
    ld [de], a
    ld [hl], b

jr_013_4363:
    nop
    db $10
    dec [hl]
    ld [hl], b
    nop
    db $10
    ld e, b
    ld [hl], b
    nop
    db $10
    ld a, e
    ld [hl], b
    nop
    db $10
    adc l
    ld [hl], b
    nop
    db $10
    or b
    ld [hl], b
    nop
    db $10
    jp nz, $0070

    db $10
    push hl
    ld [hl], b
    nop

jr_013_4380:
    db $10
    rst $30
    ld [hl], b
    nop
    db $10
    ld a, [de]
    ld [hl], c
    nop
    db $10
    inc l
    ld [hl], c
    nop
    db $10
    ld c, a
    ld [hl], c
    nop
    db $10
    jp z, $0072

    db $10
    call c, $0072
    db $10
    xor $72
    nop
    db $10

jr_013_439D:
    db $10
    ld [hl], e
    rlca
    nop
    add hl, bc
    push hl

jr_013_43A3:
    ld h, [hl]
    nop
    add hl, bc
    jp hl


    ld h, [hl]
    nop
    add hl, bc
    db $ED
    ld h, [hl]
    nop
    add hl, bc
    pop af
    ld h, [hl]
    nop
    add hl, bc
    push af
    ld h, [hl]
    nop
    add hl, bc
    ld sp, hl
    ld h, [hl]
    nop
    add hl, bc

jr_013_43BA:
    nop
    ld h, a
    ld [$0900], sp
    rlca

jr_013_43C0:
    ld h, a
    nop
    add hl, bc
    ld c, d
    ld l, b
    ld bc, $8B09
    ld l, c
    ld bc, $A009
    ld l, c
    ld bc, $B509
    ld l, c
    ld bc, $D809
    ld l, c
    ld bc, $ED09
    ld l, c
    ld bc, $0B09
    ld l, d

jr_013_43DD:
    add hl, bc
    nop
    jr jr_013_4363

jr_013_43E1:
    ld l, e
    nop
    jr jr_013_4380

    ld l, e
    nop
    jr jr_013_439D

    ld l, e
    nop
    jr jr_013_43BA

    ld l, e
    nop
    jr @-$18

    ld l, e
    nop
    jr @+$01

    ld l, e
    nop
    jr @+$1A

jr_013_43F9:
    ld l, h

jr_013_43FA:
    nop
    jr jr_013_442E

jr_013_43FD:
    ld l, h

jr_013_43FE:
    nop
    jr jr_013_444B

    ld l, h
    dec bc
    nop
    jr jr_013_4482

    ld [hl], b
    nop
    jr @-$03

    ld [hl], c
    nop
    jr jr_013_4486

    ld [hl], e
    nop
    jr jr_013_43A3

    ld [hl], e
    nop
    jr jr_013_43C0

jr_013_4416:
    ld [hl], e

jr_013_4417:
    nop
    jr jr_013_43DD

jr_013_441A:
    ld [hl], e
    nop
    jr jr_013_43FA

    ld [hl], e
    nop
    jr jr_013_4417

    ld [hl], e
    nop
    jr jr_013_4434

    ld [hl], h
    nop
    jr jr_013_4451

    ld [hl], h
    nop
    jr jr_013_446E

jr_013_442E:
    ld [hl], h
    dec bc
    nop
    jr jr_013_4476

jr_013_4433:
    ld [hl], a

jr_013_4434:
    nop
    jr jr_013_43F9

jr_013_4437:
    ld a, b
    nop
    jr jr_013_4416

    ld a, b
    nop
    jr jr_013_4433

    ld a, b
    nop
    jr jr_013_4450

    ld a, c
    nop
    jr jr_013_446D

    ld a, c
    nop
    jr jr_013_448A

jr_013_444B:
    ld a, c
    nop
    jr jr_013_44A7

jr_013_444F:
    ld a, c

jr_013_4450:
    nop

jr_013_4451:
    jr jr_013_44C4

    ld a, c
    nop
    jr jr_013_43E1

    ld a, c
    nop
    jr jr_013_43FE

    ld a, c
    ld a, [bc]
    nop
    jr jr_013_44CB

    ld a, h
    nop
    jr @-$14

    ld a, l
    nop
    jr @+$05

    ld a, [hl]
    nop
    jr @+$1E

jr_013_446C:
    ld a, [hl]

jr_013_446D:
    nop

jr_013_446E:
    jr jr_013_44A5

    ld a, [hl]
    nop
    jr jr_013_44C2

    ld a, [hl]
    nop

jr_013_4476:
    jr jr_013_44DF

    ld a, [hl]
    nop
    jr jr_013_43FD

    ld a, [hl]
    nop
    jr jr_013_441A

    ld a, [hl]
    nop

jr_013_4482:
    jr jr_013_4437

    ld a, [hl]
    add hl, bc

jr_013_4486:
    nop
    jr jr_013_44AF

jr_013_4489:
    ld h, [hl]

jr_013_448A:
    nop
    jr @-$59

    ld h, a
    nop
    jr jr_013_444F

    ld h, a
    nop
    jr jr_013_446C

    ld h, a
    nop
    jr jr_013_4489

    ld h, a
    nop
    jr jr_013_44A6

    ld l, b
    nop
    jr jr_013_44C3

    ld l, b
    nop
    jr jr_013_44E0

jr_013_44A5:
    ld l, b

jr_013_44A6:
    nop

jr_013_44A7:
    jr jr_013_44FD

    ld l, b
    rlca
    nop
    db $10
    add d
    ld h, a

jr_013_44AF:
    nop
    db $10
    add [hl]
    ld h, a
    nop
    db $10
    adc d
    ld h, a
    nop
    db $10
    adc [hl]
    ld h, a
    nop
    db $10
    sub d
    ld h, a
    nop
    db $10
    sub [hl]

jr_013_44C2:
    ld h, a

jr_013_44C3:
    nop

jr_013_44C4:
    db $10
    sbc l
    ld h, a
    ld [$1000], sp
    and h

jr_013_44CB:
    ld h, a
    nop
    db $10
    xor h
    ld l, c
    ld bc, $BD10
    ld l, d
    ld bc, $D210
    ld l, d
    ld bc, $E710
    ld l, d
    ld bc, $1110

jr_013_44DF:
    ld l, e

jr_013_44E0:
    ld bc, $2610
    ld l, e
    ld bc, $3B10
    ld l, e
    ld bc, $1600
    inc de
    ld b, d
    inc b
    nop
    ld d, $8F
    ld b, e
    nop
    ld d, $AC
    ld b, e
    nop
    ld d, $CC
    ld b, e
    nop
    ld d, $EC

jr_013_44FD:
    ld b, e
    inc bc
    nop
    ld d, $71
    ld c, b
    nop
    ld d, $ED
    ld c, c
    nop
    ld d, $49
    ld c, b
    ld c, $00
    ld d, $69
    ld c, e
    nop
    ld d, $AF
    ld c, e
    nop
    ld d, $F0
    ld c, e
    nop
    ld d, $31
    ld c, h
    nop
    ld d, $6E
    ld c, h
    nop
    ld d, $AF
    ld c, h
    nop
    ld d, $EC
    ld c, h
    nop
    ld d, $3C
    ld c, l
    nop
    ld d, $90
    ld c, l
    nop
    ld d, $E0
    ld c, l
    nop
    ld d, $0A
    ld c, [hl]
    nop
    ld d, $34
    ld c, [hl]
    nop
    ld d, $5E
    ld c, [hl]
    nop
    ld d, $7D
    ld c, [hl]
    inc bc
    nop
    ld d, $CD
    ld d, d
    nop
    ld d, $A5
    ld d, d
    nop
    ld d, $A5
    ld d, d
    add hl, bc
    nop
    ld d, $49
    ld d, h
    nop
    ld d, $6A
    ld d, h
    nop
    ld d, $8B
    ld d, h
    nop
    ld d, $AC
    ld d, h
    nop
    ld d, $CD
    ld d, h
    nop
    ld d, $EE
    ld d, h
    nop
    ld d, $0F
    ld d, l
    nop
    ld d, $30
    ld d, l
    nop
    ld d, $51
    ld d, l
    inc bc
    nop
    ld d, $68
    ld e, d
    nop
    ld d, $40
    ld e, d
    nop
    ld d, $40
    ld e, d
    dec b
    nop
    ld d, $5A
    ld e, h
    nop
    ld d, $3D
    ld e, l
    nop
    ld d, $20
    ld e, [hl]
    nop
    ld d, $1B
    ld e, a
    nop
    ld d, $57
    ld h, b
    inc c
    nop
    ld d, $FE
    ld h, e
    nop
    ld d, $D8
    ld l, c
    nop
    ld d, $D6
    ld h, e
    nop
    ld d, $86
    ld l, h
    nop
    ld d, $A0
    ld l, h
    nop
    ld d, $BA
    ld l, h
    nop
    ld d, $D4
    ld l, h
    nop
    ld d, $EE
    ld l, h
    nop
    ld d, $19
    ld l, l
    nop
    ld d, $2E
    ld l, l
    nop
    ld d, $27
    ld l, [hl]
    nop
    ld d, $3A
    ld l, [hl]
    inc c
    nop
    ld d, $A7
    ld h, [hl]
    nop
    ld d, $ED
    ld h, [hl]
    nop
    ld d, $33
    ld h, a
    nop
    ld d, $79
    ld h, a
    nop
    ld d, $89
    ld h, a
    nop
    ld d, $C6
    ld h, a
    nop
    ld d, $D6
    ld h, a
    nop
    ld d, $06
    ld l, b
    nop
    ld d, $43
    ld l, b
    nop
    ld d, $80
    ld l, b
    nop
    ld d, $D3
    ld l, b
    nop
    ld d, $B9
    ld l, c
    rlca
    nop
    inc c
    xor e
    ld a, b
    nop
    inc c
    xor a
    ld a, b
    nop
    inc c
    or e
    ld a, b
    nop
    inc c
    or a
    ld a, b
    nop
    inc c
    cp e
    ld a, b
    nop
    inc c
    cp a
    ld a, b
    nop
    inc c
    add $78
    ld a, [bc]
    nop
    inc c
    call $0078
    inc c
    cp l
    ld a, c
    nop
    inc c
    add [hl]
    ld a, d
    nop
    inc c
    pop af
    ld a, b
    ld bc, $520C
    ld a, e
    ld bc, $670C
    ld a, e
    ld bc, $7C0C
    ld a, e
    ld bc, $910C
    ld a, e
    ld bc, $A60C
    ld a, e
    ld bc, $BB0C
    ld a, e
    ld bc, $0A00
    sub a
    ld b, d
    ld bc, $0A00
    ld d, l
    ld b, [hl]
    ld bc, $0A00
    adc $49
    inc b
    nop
    ld a, [bc]
    add hl, sp
    ld c, [hl]
    nop
    ld a, [bc]
    jr c, jr_013_46A9

    nop
    ld a, [bc]
    ld [hl], l
    ld d, c
    nop
    ld a, [bc]
    cpl
    ld c, [hl]
    rla
    nop
    ld a, [bc]
    ld h, b
    ld d, l
    nop
    ld a, [bc]
    ld a, e
    ld d, l
    nop
    ld a, [bc]
    sub [hl]
    ld d, l
    nop
    ld a, [bc]
    or c
    ld d, l
    nop
    ld a, [bc]
    call z, $0055
    ld a, [bc]
    rst $20
    ld d, l
    nop
    ld a, [bc]
    ld [bc], a
    ld d, [hl]
    nop
    ld a, [bc]
    dec e
    ld d, [hl]
    nop
    ld a, [bc]
    jr c, @+$58

    nop
    ld a, [bc]
    ld d, e
    ld d, [hl]
    nop
    ld a, [bc]
    ld l, [hl]
    ld d, [hl]
    nop
    ld a, [bc]
    adc c
    ld d, [hl]
    nop
    ld a, [bc]
    and h
    ld d, [hl]
    nop
    ld a, [bc]
    cp a
    ld d, [hl]
    nop
    ld a, [bc]
    jp c, $0056

    ld a, [bc]
    push af
    ld d, [hl]
    nop
    ld a, [bc]
    db $10
    ld d, a
    nop
    ld a, [bc]
    dec hl
    ld d, a

jr_013_46A9:
    nop
    ld a, [bc]
    ld b, [hl]
    ld d, a
    nop
    ld a, [bc]
    ld h, c
    ld d, a
    nop
    ld a, [bc]
    ld e, [hl]
    ld d, d
    nop
    ld a, [bc]
    ld a, h
    ld d, a
    nop
    ld a, [bc]
    ld d, [hl]
    ld d, l
    inc b
    nop
    ld a, [bc]
    ld d, c
    ld c, h
    nop
    ld a, [bc]
    ld h, c
    ld c, h
    nop
    ld a, [bc]
    ld [hl], c
    ld c, h
    nop
    ld a, [bc]
    add c
    ld c, h
    ld bc, $1401
    and a
    ld a, c
    ld bc, $1402
    xor c
    ld a, e
    rlca
    nop
    ld d, $D9
    ld a, h
    nop
    ld d, $DD
    ld a, h
    nop
    ld d, $E1
    ld a, h
    nop
    ld d, $E5
    ld a, h
    nop
    ld d, $E9
    ld a, h
    nop
    ld d, $ED
    ld a, h
    nop
    ld d, $F4
    ld a, h
    rlca
    nop
    ld d, $FB
    ld a, h
    ld bc, $A616
    ld a, l
    ld bc, $C416
    ld a, l
    ld bc, $D916
    ld a, l
    ld bc, $EE16
    ld a, l
    ld bc, $0316
    ld a, [hl]
    ld bc, $1816
    ld a, [hl]
    inc d
    nop
    inc c
    jr nc, @+$4F

    nop
    inc c
    ld b, d
    ld c, l
    nop
    inc c
    ld d, h
    ld c, l
    nop
    inc c
    ld h, [hl]
    ld c, l
    nop
    inc c
    adc c
    ld c, l
    nop
    inc c
    xor h
    ld c, l
    nop
    inc c
    rst $08
    ld c, l
    nop
    inc c
    ld a, [c]
    ld c, l
    nop
    inc c
    dec d
    ld c, [hl]
    nop
    inc c
    jr c, jr_013_4789

    nop
    inc c
    ld e, e
    ld c, [hl]
    nop
    inc c
    ld a, [hl]
    ld c, [hl]
    nop
    inc c
    and c
    ld c, [hl]
    nop
    inc c
    call nz, $004E
    inc c
    rst $20
    ld c, [hl]
    nop
    inc c
    ld a, [bc]
    ld c, a
    nop
    inc c
    dec l
    ld c, a
    nop
    inc c
    ld d, b
    ld c, a
    nop
    inc c
    ld [hl], e
    ld c, a
    nop
    inc c
    add l
    ld c, a
    ld de, $0C00
    jp nc, $0055

    inc c
    sbc h
    ld d, d
    nop
    inc c
    rra
    ld d, [hl]
    nop
    inc c
    ei
    ld d, l
    nop
    inc c
    db $E4
    ld d, l
    nop
    inc c
    ld b, e
    ld d, [hl]
    nop
    inc c
    ld h, a
    ld d, [hl]
    nop
    inc c
    ld [hl], c
    ld d, d
    nop
    inc c
    sub a
    ld d, [hl]
    nop

jr_013_4789:
    inc c
    ld b, a
    ld d, a
    nop
    inc c
    ld h, e
    ld d, a
    nop
    inc c
    ld a, d
    ld d, a
    nop
    inc c
    sub [hl]
    ld d, a
    nop
    inc c
    xor b
    ld d, a
    nop
    inc c
    dec [hl]
    ld e, c
    nop
    inc c
    cp d
    ld d, a
    nop
    inc c
    ld d, h
    ld e, c
    ld a, [bc]
    nop
    inc c
    jp hl


    ld e, h
    nop
    inc c
    ei
    ld e, h
    nop
    inc c
    dec c
    ld e, l
    nop
    inc c
    rra
    ld e, l
    nop
    inc c
    ld sp, $005D
    inc c
    ld b, e
    ld e, l
    nop
    inc c
    ld d, l
    ld e, l
    nop
    inc c
    ld h, a
    ld e, l
    nop
    inc c
    ld a, c
    ld e, l
    nop
    inc c
    adc e
    ld e, l
    dec de
    nop
    inc c
    ld b, c
    ld h, d
    nop
    inc c
    cp h
    ld h, e
    nop
    inc c
    adc $63
    nop
    inc c
    ldh [$63], a
    nop
    inc c
    inc bc
    ld h, h
    nop
    inc c
    dec d
    ld h, h
    nop
    inc c
    daa
    ld h, h
    nop
    inc c
    add hl, sp
    ld h, h
    nop
    inc c
    ld e, h
    ld h, h
    nop
    inc c
    ld l, [hl]
    ld h, h
    nop
    inc c
    add b
    ld h, h
    nop
    inc c
    sub d
    ld h, h
    nop
    inc c
    or l
    ld h, h
    nop
    inc c
    rst $00
    ld h, h
    nop
    inc c
    ld [$0064], a
    inc c
    dec c
    ld h, l
    nop
    inc c
    jr nc, @+$67

    nop
    inc c
    ld b, d
    ld h, l
    nop
    inc c
    ld d, h
    ld h, l
    nop
    inc c
    ld h, [hl]
    ld h, l
    nop
    inc c
    ld a, b
    ld h, l
    nop
    inc c
    sbc e
    ld h, l
    nop
    inc c
    cp [hl]
    ld h, l
    nop
    inc c
    ret nc

    ld h, l
    nop
    inc c
    ld [c], a
    ld h, l
    nop
    inc c
    db $F4
    ld h, l
    nop
    inc c
    rla
    ld h, [hl]
    ld [bc], a
    nop
    inc c
    ld d, a
    ld h, a
    nop
    inc c
    ld [hl], a
    ld h, a
    rlca
    nop
    rrca
    db $E4
    ld c, l
    nop
    rrca
    add sp, $4D
    nop
    rrca
    db $EC
    ld c, l
    nop
    rrca
    ldh a, [rKEY1]
    nop
    rrca
    db $F4
    ld c, l
    nop
    rrca
    ld hl, sp+$4D
    nop
    rrca
    rst $38
    ld c, l
    add hl, bc
    nop
    rrca
    ld b, d
    ld c, a
    nop
    rrca
    rst $08
    ld c, a
    nop
    rrca
    ld b, $4E
    ld bc, $CA0F
    ld d, b
    ld bc, $DF0F
    ld d, b
    ld bc, $F40F
    ld d, b
    ld bc, $090F
    ld d, c
    ld bc, $1E0F
    ld d, c
    ld bc, $330F
    ld d, c
    ld bc, $0F00
    db $EC
    ld l, e
    ld bc, $0F00
    ld h, h
    ld l, a
    dec b
    nop
    rrca
    or l
    ld [hl], d
    nop
    rrca
    call nc, $0072
    rrca
    di
    ld [hl], d
    nop
    rrca
    ld [hl+], a
    ld [hl], e
    nop
    rrca
    ld d, c
    ld [hl], e
    ld [bc], a
    nop
    rrca
    ld e, c
    ld [hl], a
    nop
    rrca
    sbc $78
    ld bc, $0F00
    rst $38
    ld a, h
    ld [bc], a
    nop
    rrca
    and l
    ld a, [hl]
    nop
    rrca
    xor c
    ld a, [hl]
    dec bc
    nop
    rla
    rra
    ld b, a
    nop
    rla
    ld a, $47
    nop
    rla
    ld e, l
    ld b, a
    nop
    rla
    ld a, h
    ld b, a
    nop
    rla
    nop
    ld b, a
    nop
    rla
    add d
    ld b, d
    nop
    rla
    db $FC
    ld b, e
    nop
    rla
    xor h
    ld b, [hl]
    nop
    rla
    ret z

    ld b, [hl]
    nop
    rla
    db $E4
    ld b, [hl]
    nop
    rla
    adc b
    ld b, [hl]
    ld [bc], a
    nop
    rla
    halt
    ld b, l
    nop
    rla
    sbc [hl]
    ld b, l
    ld [bc], a
    nop
    rla
    jp c, $0045

    rla
    ld l, d
    ld b, d
    dec c
    nop
    rla
    and e
    ld c, c
    nop
    rla
    inc de
    ld c, d
    nop
    rla
    ld [hl-], a
    ld c, d
    nop
    rla
    ld d, c
    ld c, d
    nop
    rla
    ld [hl], b
    ld c, d
    nop
    rla
    adc a
    ld c, d
    nop
    rla
    xor [hl]
    ld c, d
    nop
    rla
    call $004A
    rla
    inc de
    ld c, e
    nop
    rla
    adc l
    ld c, h
    nop
    rla
    cp a
    ld c, c
    nop
    rla
    db $DB
    ld c, c
    nop
    rla
    rst $30
    ld c, c
    ld bc, $1700
    cp b
    ld c, h
    dec b
    nop
    rla
    adc b
    ld c, [hl]
    nop
    rla
    rst $38
    ld d, c
    nop
    rla
    dec de
    ld d, d
    nop
    rla
    ld [c], a
    ld d, c
    nop
    rla
    scf
    ld d, d
    ld b, $00
    rla
    ld [bc], a
    ld d, b
    nop
    rla
    inc sp
    ld d, b
    nop
    rla
    ld h, h
    ld d, b
    nop
    rla
    sub l
    ld d, b
    nop
    rla
    add $50
    nop
    rla
    db $FD
    ld d, b
    ld bc, $1700
    inc [hl]
    ld d, c
    ld bc, $1700
    ld [hl], c
    ld d, e
    rlca
    nop
    rla
    db $EB
    ld d, h
    nop
    rla
    add hl, de
    ld d, l
    nop
    rla
    ld b, a
    ld d, l
    nop
    rla
    ld [hl], l
    ld d, l
    nop
    rla
    and l
    ld d, l
    nop
    rla
    db $D3
    ld d, l
    nop
    rla
    ld bc, $0156
    nop
    rla
    cpl
    ld d, [hl]
    rlca
    nop
    rla
    ld l, b
    ld e, b
    nop
    rla
    ld d, $5C
    nop
    rla
    inc sp
    ld e, h
    nop
    rla
    push bc
    ld e, e
    nop
    rla
    ldh [$5B], a
    nop
    rla
    ei
    ld e, e
    nop
    rla
    xor b
    ld e, e
    ld b, $00
    rla
    ld [c], a
    ld e, c
    nop
    rla
    ld a, [c]
    ld e, c
    nop
    rla
    ld [bc], a
    ld e, d
    nop
    rla
    ld [de], a
    ld e, d
    nop
    rla
    ld a, l
    ld e, d
    nop
    rla
    and l
    ld e, d
    ld bc, $1700
    call $075A
    nop
    rrca
    add hl, de
    ld h, l
    nop
    rrca
    dec e
    ld h, l
    nop
    rrca
    ld hl, $0065
    rrca
    dec h
    ld h, l
    nop
    rrca
    add hl, hl
    ld h, l
    nop
    rrca
    dec l
    ld h, l
    nop
    rrca
    inc [hl]
    ld h, l
    dec c
    nop
    rrca
    dec sp
    ld h, l
    nop
    rrca
    sub c
    ld h, l
    nop
    rrca
    call c, $0065
    rrca
    dec l
    ld h, [hl]
    nop
    rrca
    ld c, c
    ld h, [hl]
    nop
    rrca
    ld b, [hl]
    ld h, a
    nop
    rrca
    ld a, b
    ld l, b
    ld bc, $BD0F
    ld l, b
    ld bc, $D20F
    ld l, b
    ld bc, $E70F
    ld l, b
    ld bc, $FC0F
    ld l, b
    ld bc, $110F
    ld l, c
    ld bc, $260F
    ld l, c
    nop
    ld [$1A00], sp
    ld a, [bc]
    ld c, h
    nop
    ld a, [de]
    ld c, $4C
    nop
    ld a, [de]
    dec h
    ld c, h
    nop
    ld a, [de]
    inc a
    ld c, h
    nop
    ld a, [de]
    ld d, e
    ld c, h
    nop
    ld a, [de]
    or e
    ld h, e
    nop
    ld a, [de]
    push de
    ld e, l
    nop
    ld a, [de]
    ld c, [hl]
    ld e, b
    ld [de], a
    nop
    ld a, [de]
    ld [hl], l
    ld c, l
    nop
    ld a, [de]
    add $4D
    nop
    ld a, [de]
    inc d
    ld c, [hl]
    nop
    ld a, [de]
    ld c, h
    ld c, [hl]
    nop
    ld a, [de]
    add d
    ld c, [hl]
    nop
    ld a, [de]
    or [hl]
    ld c, [hl]
    nop
    ld a, [de]
    rst $20
    ld c, [hl]
    nop
    ld a, [de]
    ld b, l
    ld c, a
    nop
    ld a, [de]
    sub b
    ld c, a
    nop
    ld a, [de]
    ret


    ld c, a
    nop
    ld a, [de]
    ld a, [bc]
    ld d, b
    nop
    ld a, [de]
    ld h, h
    ld c, h
    ld bc, $631A
    ld d, b
    ld bc, $781A
    ld d, b
    ld bc, $8D1A
    ld d, b
    ld bc, $A21A
    ld d, b
    ld bc, $B71A
    ld d, b
    ld bc, $B71A
    ld d, b
    ld [$1A00], sp
    ld a, [bc]
    ld d, e
    nop
    ld a, [de]
    ld c, $53
    nop
    ld a, [de]
    dec h
    ld d, e
    nop
    ld a, [de]
    inc a
    ld d, e
    nop
    ld a, [de]
    ld d, e
    ld d, e
    nop
    ld a, [de]
    ld l, d
    ld d, e
    nop
    ld a, [de]
    cp $5E
    nop
    ld a, [de]
    adc c
    ld [hl], h
    stop
    ld a, [de]
    ld l, a
    ld d, e
    nop
    ld a, [de]
    xor e
    ld d, e
    nop
    ld a, [de]
    or $53
    nop
    ld a, [de]
    ld b, h
    ld d, h
    nop
    ld a, [de]
    sub c
    ld d, h
    nop
    ld a, [de]
    ret


    ld d, h
    nop
    ld a, [de]
    add hl, bc
    ld d, l
    nop
    ld a, [de]
    ld d, d
    ld d, l
    nop
    ld a, [de]
    cp l
    ld d, l
    nop
    ld a, [de]
    ld c, $56
    ld bc, $A51A
    ld d, [hl]
    ld bc, $BA1A
    ld d, [hl]
    ld bc, $CF1A
    ld d, [hl]
    ld bc, $E41A
    ld d, [hl]
    ld bc, $F91A
    ld d, [hl]
    ld bc, $141A
    ld d, a
    dec b
    nop
    ld a, [de]
    di
    ld l, c
    nop
    ld a, [de]
    rst $30
    ld l, c
    nop
    ld a, [de]
    ei
    ld l, c
    nop
    ld a, [de]
    rst $38
    ld l, c
    nop
    ld a, [de]
    inc bc
    ld l, d
    ld bc, $1A00
    sbc b
    ld l, c
    inc b
    nop
    ld a, [de]
    rra
    ld h, a
    nop
    ld a, [de]
    ld d, h
    ld h, a
    nop
    ld a, [de]
    ld l, h
    ld h, a
    nop
    ld a, [de]
    add l
    ld h, a
    ld bc, $1A00
    rst $30
    ld e, [hl]
    inc b
    nop
    ld a, [de]
    and h
    ld h, a
    nop
    ld a, [de]
    push bc
    ld h, a
    nop
    ld a, [de]
    rst $28
    ld h, a
    nop
    ld a, [de]
    ld hl, $0168
    nop
    ld a, [de]
    sbc a
    ld l, c
    inc b
    nop
    ld a, [de]
    sbc $68
    nop
    ld a, [de]
    nop
    ld l, c
    nop
    ld a, [de]
    jr z, jr_013_4BA8

    nop
    ld a, [de]
    dec a
    ld l, c
    ld bc, $1A00
    add d
    ld [hl], h
    inc b
    nop
    ld a, [de]
    ccf
    ld l, b
    nop
    ld a, [de]
    ld d, d
    ld l, b
    nop
    ld a, [de]
    ld [hl], l
    ld l, b
    nop
    ld a, [de]
    and d
    ld l, b
    dec b
    nop
    ld a, [de]
    inc de
    ld e, [hl]
    inc bc
    ld a, [de]
    ld a, [de]
    ld e, [hl]
    nop
    ld a, [de]
    ld c, d
    ld e, [hl]
    inc b
    ld a, [de]
    ld c, d
    ld e, [hl]
    inc bc
    ld a, [de]
    ld d, e
    ld e, [hl]
    ld [bc], a
    ld bc, $9D1A
    ld e, [hl]
    nop
    ld a, [de]
    ld e, b
    ld e, [hl]
    rlca
    nop
    ld c, $CD
    ld a, h
    nop
    ld c, $D1
    ld a, h
    nop
    ld c, $D5
    ld a, h
    nop
    ld c, $D9
    ld a, h
    nop
    ld c, $DD
    ld a, h
    nop
    ld c, $E1
    ld a, h
    nop
    ld c, $E8
    ld a, h
    rlca
    nop
    ld c, $EF
    ld a, h
    ld bc, $5B0E
    ld a, [hl]
    ld bc, $700E
    ld a, [hl]
    ld bc, $850E
    ld a, [hl]
    ld bc, $9A0E

jr_013_4BA8:
    ld a, [hl]
    ld bc, $AF0E
    ld a, [hl]
    ld bc, $CD0E
    ld a, [hl]
    dec b
    nop
    dec d
    ld [hl], b
    ld h, b
    nop
    dec d
    ld [$0061], a
    dec d
    rst $38
    ld h, c
    nop
    dec d
    inc d
    ld h, d
    nop
    dec d
    add hl, hl
    ld h, d
    inc b
    nop
    dec d
    xor a
    ld h, e
    nop
    dec d
    add hl, hl
    ld h, l
    nop
    dec d
    ld a, $65
    nop
    dec d
    ld d, e
    ld h, l
    rlca
    nop
    dec d
    add hl, bc
    ld h, a
    nop
    dec d
    add e
    ld l, b
    nop
    dec d
    sbc b
    ld l, b
    nop
    dec d
    xor l
    ld l, b
    nop
    dec d
    jp nz, $0068

    dec d
    rst $10
    ld l, b
    nop
    dec d
    db $EC
    ld l, b
    inc bc
    nop
    dec d
    di
    ld l, c
    nop
    dec d
    pop af
    ld l, h
    nop
    dec d
    adc $69
    inc b
    nop
    dec d
    dec hl
    ld l, l
    nop
    dec d
    dec sp
    ld l, l
    nop
    dec d
    ld c, e
    ld l, l
    nop
    dec d
    ld e, e
    ld l, l
    ld bc, $1500
    ld l, e
    ld l, l
    ld [bc], a
    nop
    dec d
    pop hl
    ld l, [hl]
    nop
    dec d
    cp h
    ld l, [hl]
    ld bc, $1500
    call c, $0672
    nop
    dec d
    xor [hl]
    ld [hl], c
    nop
    dec d
    call c, $0071
    dec d
    ld a, [bc]
    ld [hl], d
    nop
    dec d
    jr c, jr_013_4CA8

    nop
    dec d
    ld h, [hl]
    ld [hl], d
    nop
    dec d
    sub h
    ld [hl], d
    rlca
    nop
    add hl, bc
    ld a, [bc]
    ld d, a
    nop
    add hl, bc
    ld c, $57
    nop
    add hl, bc
    ld [de], a
    ld d, a
    nop
    add hl, bc
    ld d, $57
    nop
    add hl, bc
    ld a, [de]
    ld d, a
    nop
    add hl, bc
    ld e, $57
    nop
    add hl, bc
    dec h
    ld d, a
    ld a, [bc]
    nop
    add hl, bc
    call c, $0054
    add hl, bc
    ld c, e
    ld d, [hl]
    nop
    add hl, bc
    and h
    ld d, h
    nop
    add hl, bc
    sbc a
    ld d, l
    ld bc, $2C09
    ld d, a
    ld bc, $4109
    ld d, a
    ld bc, $5609
    ld d, a
    ld bc, $6B09
    ld d, a
    ld bc, $8009
    ld d, a
    ld bc, $9509
    ld d, a
    dec c
    nop
    dec d
    sbc h
    ld b, d
    nop
    dec d
    xor [hl]
    ld b, d
    nop
    dec d
    pop de
    ld b, d
    nop
    dec d
    db $E3
    ld b, d
    nop
    dec d
    push af
    ld b, d
    nop
    dec d
    rlca
    ld b, e
    nop
    dec d
    add hl, de
    ld b, e
    nop
    dec d
    dec hl
    ld b, e
    nop
    dec d
    dec a

jr_013_4CA8:
    ld b, e
    nop
    dec d
    ld c, a
    ld b, e
    nop
    dec d
    ld h, c
    ld b, e
    nop
    dec d
    db $DB
    ld b, h
    nop
    dec d
    db $ED
    ld b, h
    dec d
    nop
    dec d
    ld bc, $0046
    dec d
    inc h
    ld b, [hl]
    nop
    dec d
    ld b, a
    ld b, [hl]
    nop
    dec d
    ld l, d
    ld b, [hl]
    nop
    dec d
    ld a, h
    ld b, [hl]
    nop
    dec d
    adc [hl]
    ld b, [hl]
    nop
    dec d
    and b
    ld b, [hl]
    nop
    dec d
    or d
    ld b, [hl]
    nop
    dec d
    call nz, $0046
    dec d
    sub $46
    nop
    dec d
    ld [de], a
    ld b, a
    nop
    dec d
    inc h
    ld b, a
    nop
    dec d
    ld [hl], $47
    nop
    dec d
    ld c, b
    ld b, a
    nop
    dec d
    ld c, c
    ld b, a
    nop
    dec d
    ld c, d
    ld b, a
    nop
    dec d
    ld c, e
    ld b, a
    nop
    dec d
    ld c, h
    ld b, a
    nop
    dec d
    ld e, [hl]
    ld b, a
    nop
    dec d
    ret c

    ld c, b
    nop
    dec d
    reti


    ld c, b
    dec c
    nop
    dec d
    call c, $004B
    dec d
    adc e
    ld c, l
    nop
    dec d
    sbc l
    ld c, l
    nop
    dec d
    xor a
    ld c, l
    nop
    dec d
    pop bc
    ld c, l
    nop
    dec d
    db $D3
    ld c, l
    nop
    dec d
    push hl
    ld c, l
    nop
    dec d
    rst $30
    ld c, l
    nop
    dec d
    add hl, bc
    ld c, [hl]
    nop
    dec d
    inc l
    ld c, [hl]
    nop
    dec d
    ld c, a
    ld c, [hl]
    nop
    dec d
    ld [hl], d
    ld c, [hl]
    nop
    dec d
    sub l
    ld c, [hl]
    dec e
    nop
    dec d
    ld b, e
    ld d, c
    nop
    dec d
    cp l
    ld d, d
    nop
    dec d
    push bc
    ld d, d
    nop
    dec d
    rst $10
    ld d, d
    nop
    dec d
    ld a, [$0052]
    dec d
    dec e
    ld d, e
    nop
    dec d
    cpl
    ld d, e
    nop
    dec d
    ld b, c
    ld d, e
    nop
    dec d
    ld h, h
    ld d, e
    nop
    dec d
    add a
    ld d, e
    nop
    dec d
    sbc c
    ld d, e
    nop
    dec d
    cp h
    ld d, e
    nop
    dec d
    adc $53
    nop
    dec d
    ldh [rHDMA3], a
    nop
    dec d
    ld a, [c]
    ld d, e
    nop
    dec d
    ld a, [de]
    ld d, h
    nop
    dec d
    inc l
    ld d, h
    nop
    dec d
    ld a, $54
    nop
    dec d
    ld d, b
    ld d, h
    nop
    dec d
    ld [hl], e
    ld d, h
    nop
    dec d
    sub [hl]
    ld d, h
    nop
    dec d
    xor b
    ld d, h
    nop
    dec d
    cp d
    ld d, h
    nop
    dec d
    call z, $0054
    dec d
    rst $28
    ld d, h
    nop
    dec d
    ld [de], a
    ld d, l
    nop
    dec d
    inc h
    ld d, l
    nop
    dec d
    xor c
    ld d, [hl]
    nop
    dec d
    pop bc
    ld d, d
    dec e
    nop
    dec d
    ld c, b
    ld e, d
    nop
    dec d
    jp nz, $005B

    dec d
    call nc, $005B
    dec d
    and $5B
    nop
    dec d
    ld hl, sp+$5B
    nop
    dec d
    ld a, [bc]
    ld e, h
    nop
    dec d
    inc e
    ld e, h
    nop
    dec d
    ccf
    ld e, h
    nop
    dec d
    ld d, c
    ld e, h
    nop
    dec d
    ld h, e
    ld e, h
    nop
    dec d
    add [hl]
    ld e, h
    nop
    dec d
    sbc b
    ld e, h
    nop
    dec d
    cp e
    ld e, h
    nop
    dec d
    sbc $5C
    nop
    dec d
    ld bc, $005D
    dec d
    inc h
    ld e, l
    nop
    dec d
    ld b, a
    ld e, l
    nop
    dec d
    ld e, c
    ld e, l
    nop
    dec d
    ld l, e
    ld e, l
    nop
    dec d
    ld a, l
    ld e, l
    nop
    dec d
    adc a
    ld e, l
    nop
    dec d
    and c
    ld e, l
    nop
    dec d
    or e
    ld e, l
    nop
    dec d
    push bc
    ld e, l
    nop
    dec d
    rst $10
    ld e, l
    nop
    dec d
    jp hl


    ld e, l
    nop
    dec d
    ei
    ld e, l
    nop
    dec d
    dec c
    ld e, [hl]
    nop
    dec d
    jr nc, jr_013_4E8B

    rlca
    nop
    add hl, bc
    push bc
    ld a, d
    nop
    add hl, bc
    ret


    ld a, d
    nop
    add hl, bc
    call $007A
    add hl, bc
    pop de
    ld a, d
    nop
    add hl, bc
    push de
    ld a, d
    nop
    add hl, bc
    reti


    ld a, d
    nop
    add hl, bc
    ldh [$7A], a
    ld de, $0900
    rst $20
    ld a, d
    nop
    add hl, bc
    ld [hl-], a
    ld a, e
    nop
    add hl, bc
    and l
    ld a, e
    nop
    add hl, bc
    rst $30
    ld a, e
    nop
    add hl, bc
    ld c, d
    ld a, h
    nop
    add hl, bc
    add l
    ld a, h
    nop
    add hl, bc
    or e
    ld a, h
    nop
    add hl, bc
    ld a, [bc]
    ld a, l
    nop
    add hl, bc
    ld l, l
    ld a, l
    nop
    add hl, bc
    db $D3
    ld a, l
    nop
    add hl, bc
    ld b, c
    ld a, [hl]
    ld bc, $7909
    ld a, a
    ld bc, $8E09
    ld a, a
    ld bc, $AC09
    ld a, a
    ld bc, $C109
    ld a, a
    ld bc, $D609
    ld a, a

jr_013_4E8B:
    ld bc, $EB09
    ld a, a
    ld bc, $0A00
    add hl, sp
    ld e, l
    ld [bc], a
    nop
    ld a, [bc]
    rra
    ld h, c
    nop
    ld a, [bc]
    sbc d
    ld h, d
    ld bc, $0A00
    ret nc

    ld h, l
    ld bc, $0A00
    ld e, e
    ld l, c
    ld bc, $0A00
    sub c
    ld l, l
    dec b
    ld e, c
    cpl
    ld a, b
    ld a, e
    ld l, $C4
    ld h, d
    daa
    jp z, $2A63

    nop
    ld b, b
    dec l
    dec b
    ld e, c
    cpl
    ld a, b
    ld a, e
    ld l, $C4
    ld h, d
    daa
    sub e
    ld [hl], l
    dec hl
    add hl, de
    ld l, d
    dec l
    dec b
    ld e, c
    cpl
    ld a, b
    ld a, e
    ld l, $C4
    ld h, d
    daa
    or e
    ld c, e
    inc l
    pop de
    ld h, h
    dec l
    dec b
    ld e, c
    cpl
    ld a, b
    ld a, e
    ld l, $C4
    ld h, d
    daa
    cp d
    ld d, l
    dec hl
    xor e
    ld l, d
    inc l
    dec b
    ld e, c
    cpl
    ld a, b
    ld a, e
    ld l, $C4
    ld h, d
    daa
    xor e
    ld d, [hl]
    inc l
    db $E4
    ld a, c
    dec l
    ld b, l
    ld c, b
    cpl
    ld h, l
    ld h, d
    cpl
    nop
    ld d, l
    dec h
    and h
    ld d, c
    add hl, hl
    ld [hl], a
    ld l, d
    dec hl
    ld b, l
    ld b, e
    cpl
    ei
    ld e, [hl]
    cpl
    ld a, e
    ld a, l
    dec hl
    ld d, h
    ld a, l
    dec l
    ld c, a
    ld b, b
    cpl
    push bc
    ld d, l
    cpl
    dec c
    ld a, e
    ld l, $F0
    ld e, a
    inc h
    dec a
    ld h, c
    cpl
    sbc e

jr_013_4F22:
    ld h, c
    cpl
    add l
    ld e, e
    cpl
    ld l, a
    ld a, b
    ld l, $E1
    ld e, e
    dec h
    ld e, h
    ld e, l
    ld l, $6F
    ld e, a
    cpl
    dec b
    ld e, c
    cpl
    inc b
    ld b, d
    cpl
    ld e, [hl]
    ld l, c
    dec h
    jp nz, $2B61

    ld c, l
    ld e, a
    dec l
    dec b
    ld e, c
    cpl
    inc b
    ld b, d
    cpl
    ld e, [hl]
    ld l, c
    dec h
    ld h, b
    ld l, e
    dec l
    ld c, l
    ld e, a
    dec l
    push bc
    ld e, c

jr_013_4F53:
    cpl
    ret z

    ld l, c
    cpl

Jump_013_4F57:
    adc b
    ld b, [hl]
    ld h, $DA

jr_013_4F5B:
    ld b, e
    ld a, [hl+]
    ld hl, sp+$7F
    daa
    add l
    ld e, b

Call_013_4F62:
Jump_013_4F62:
    cpl
    jp $2F41


    push hl
    ld e, c
    jr z, jr_013_4F53

    ld e, l
    dec l
    add l
    ld b, l
    ld l, $85
    ld e, b
    cpl

Jump_013_4F72:
    jp $2F41


    push hl
    ld e, c
    jr z, @+$29

    ld [hl], c
    ld a, [hl+]
    inc c
    ld e, l
    ld a, [hl+]
    add l
    ld e, b
    cpl
    jp $2F41


    push hl
    ld e, c
    jr z, jr_013_4FF3

    ld c, [hl]
    ld l, $47
    ld l, l
    ld l, $85
    ld e, b
    cpl
    jp $2F41


    push hl
    ld e, c
    jr z, @+$60

    ld l, b
    daa
    and a
    ld l, b
    jr z, jr_013_4F22

    ld e, b
    cpl
    jp $2F41


    push hl
    ld e, c
    jr z, jr_013_5024

    ld h, a
    dec l
    nop
    ld e, a
    ld l, $85
    ld e, b
    cpl
    jp $2F41


    push hl
    ld e, c
    jr z, jr_013_4F5B

    ld e, c
    ld a, [hl+]
    jp nc, $2D56

    add l
    ld e, b
    cpl
    jp $2F41


    push hl
    ld e, c
    jr z, jr_013_4FDE

    ld h, l
    ld l, $4D
    ld e, a
    dec l
    add l
    ld d, a
    cpl
    dec [hl]
    ld e, a
    cpl
    jp c, $284F

    ld d, l
    ld l, [hl]
    inc l
    rst $08
    ld [hl], d
    dec l
    add l
    ld d, a
    cpl
    dec [hl]
    ld e, a
    cpl

jr_013_4FDE:
    jp c, $284F

    and h
    ld b, c
    dec l
    ld h, d
    ld h, c
    ld l, $85
    ld d, a
    cpl
    dec [hl]
    ld e, a
    cpl
    jp c, $284F

    db $F4
    ld d, e
    dec l

jr_013_4FF3:
    call z, $2E65
    add l
    ld d, a
    cpl
    dec [hl]
    ld e, a
    cpl
    jp c, $284F

    ld [hl], d
    ld [hl], l
    inc l
    add b
    ld l, a
    ld l, $85
    ld d, a
    cpl
    dec [hl]
    ld e, a
    cpl
    jp c, $284F

    dec d
    ld e, e
    dec l
    ld b, [hl]
    ld d, b
    ld l, $85
    ld d, a
    cpl
    dec [hl]
    ld e, a
    cpl
    jp c, $284F

    ld a, [hl]
    ld c, h
    dec hl
    ld h, l
    ld d, l
    dec l
    add l

jr_013_5024:
    ld d, a
    cpl
    dec [hl]
    ld e, a
    cpl
    jp c, $284F

    ld a, [hl]
    ld h, [hl]
    ld l, $4D
    ld e, a
    dec l
    add l
    ld e, c
    cpl
    ld a, e
    ld b, c
    cpl
    ld a, [de]
    ld e, l
    daa
    sbc c
    ld [hl], c
    dec l
    sub a
    ld d, [hl]
    ld l, $85
    ld e, c
    cpl
    ld a, e
    ld b, c
    cpl
    ld a, [de]
    ld e, l
    daa
    or b
    ld h, b
    dec l
    ld d, d
    ld e, b
    ld l, $85
    ld e, c
    cpl
    ld a, e
    ld b, c
    cpl
    ld a, [de]
    ld e, l
    daa
    jr nc, jr_013_50D7

    dec l
    daa
    ld h, d
    ld l, $85
    ld e, c
    cpl
    ld a, e
    ld b, c
    cpl
    ld a, [de]
    ld e, l

Jump_013_5067:
    daa
    halt
    ld a, [hl]
    dec l
    ld h, [hl]
    ld h, h
    ld l, $85
    ld e, c
    cpl
    ld a, e
    ld b, c
    cpl
    ld a, [de]
    ld e, l
    daa
    add sp, $72
    dec hl
    ld [c], a
    ld a, l
    ld a, [hl+]
    add l
    ld e, c
    cpl
    ld a, e
    ld b, c
    cpl
    ld a, [de]
    ld e, l
    daa
    xor [hl]
    ld [hl], e
    inc l
    sub l
    ld b, [hl]
    ld l, $85
    ld e, c
    cpl
    ld a, e
    ld b, c
    cpl
    ld a, [de]
    ld e, l
    daa
    call c, $2E5A
    ld c, l
    ld e, a
    dec l
    push bc
    ld d, h
    cpl
    inc c
    ld [hl], b
    ld l, $68
    ld e, c
    ld h, $84
    ld c, e
    ld a, [hl+]
    ld e, $50
    inc l
    push bc
    ld d, h
    cpl
    inc c
    ld [hl], b
    ld l, $68
    ld e, c
    ld h, $D5
    ld e, b
    inc l
    jr jr_013_5103

    dec l
    push bc
    ld d, h
    cpl
    inc c
    ld [hl], b
    ld l, $68
    ld e, c
    ld h, $E8
    ld h, [hl]
    inc l
    dec bc
    ld a, e
    dec l
    push bc
    ld d, h
    cpl
    inc c
    ld [hl], b
    ld l, $68
    ld e, c
    ld h, $00
    ld b, b
    inc l
    ld a, $58
    dec l

jr_013_50D7:
    push bc
    ld d, h
    cpl
    inc c
    ld [hl], b
    ld l, $68
    ld e, c
    ld h, $89
    ld e, h
    ld l, $4D
    ld e, a
    dec l
    push bc
    ld d, h
    cpl
    inc c
    ld [hl], b
    ld l, $68
    ld e, c
    ld h, $ED
    ld l, l
    daa
    push hl
    ld d, l
    add hl, hl
    push bc
    ld d, h
    cpl
    inc c
    ld [hl], b
    ld l, $68
    ld e, c
    ld h, $FD
    ld e, d
    inc l
    ld h, [hl]
    halt

jr_013_5103:
    dec l
    dec b
    ld d, [hl]
    cpl
    or $61
    cpl
    db $DD
    ld c, h
    ld h, $9C
    ld a, [hl]
    ld l, $D9
    ld a, a
    jr z, jr_013_5119

    ld d, [hl]
    cpl
    or $61
    cpl

jr_013_5119:
    db $DD
    ld c, h
    ld h, $E9
    ld c, l
    inc l
    jp nc, $2E54

    ld b, l
    ld b, h
    cpl
    xor d
    ld l, c
    cpl
    nop
    ld b, b
    add hl, hl
    inc l
    ld e, c
    ld l, $61
    ld a, a
    inc e
    add l
    ld d, a
    cpl
    dec [hl]
    ld e, a
    cpl
    jp c, $284F

    ld [hl], d
    ld [hl], l
    inc l
    add b
    ld l, a
    ld l, $85
    ld c, d
    cpl
    jp z, $2F61

    and c
    ld h, d
    dec h
    ld l, e
    ld h, b
    ld a, [hl+]
    db $EC
    ld a, b
    inc l
    add l
    ld e, b
    cpl
    jp $2F41


    push hl
    ld e, c
    jr z, @+$6D

    ld c, [hl]
    ld l, $47
    ld l, l
    ld l, $85
    ld e, l
    cpl
    and l
    ld a, a
    ld l, $00
    ld b, [hl]
    daa
    sub e
    ld [hl], b
    ld l, $B6
    ld a, h
    ld l, $85
    ld e, l
    cpl
    and l
    ld a, a
    ld l, $00
    ld b, [hl]
    daa
    dec l
    ld h, a
    ld l, $98
    ld a, a
    dec l
    add l
    ld e, l
    cpl
    and l
    ld a, a
    ld l, $00
    ld b, [hl]
    daa
    ld l, [hl]
    ld h, a
    inc h
    and l
    ld a, l
    ld h, $85
    ld e, l
    cpl
    and l
    ld a, a
    ld l, $00
    ld b, [hl]
    daa
    nop
    ld a, [hl]
    inc l
    inc b
    ld e, d
    ld l, $85
    ld e, l
    cpl
    and l
    ld a, a
    ld l, $00
    ld b, [hl]
    daa
    rst $38
    ld h, d
    inc l
    and c
    ld a, d
    ld l, $85
    ld e, l
    cpl
    and l
    ld a, a
    ld l, $00
    ld b, [hl]
    daa
    ld [hl], d
    ld b, d
    inc l
    rst $20
    ld l, l
    dec l
    add l
    ld e, l
    cpl
    and l
    ld a, a
    ld l, $00
    ld b, [hl]
    daa
    ld e, c
    ld c, a
    ld l, $4D
    ld e, a
    dec l
    push bc
    ld e, l
    cpl
    db $FD
    ld [hl], a
    ld l, $48
    ld c, l
    add hl, hl
    ld e, $4E
    dec l
    or l
    ld d, l
    ld l, $C5
    ld e, l
    cpl
    db $FD
    ld [hl], a
    ld l, $48
    ld c, l
    add hl, hl
    sbc e
    ld h, b
    ld l, $20
    ld l, h
    ld l, $C5
    ld e, l
    cpl
    db $FD
    ld [hl], a
    ld l, $48
    ld c, l
    add hl, hl
    inc [hl]
    ld b, a
    inc l
    and b
    ld c, d
    ld l, $C5
    ld e, l
    cpl
    db $FD
    ld [hl], a
    ld l, $48
    ld c, l
    add hl, hl
    ld a, [bc]
    ld a, [hl]
    add hl, hl
    ld a, h
    ld c, l
    ld l, $C5
    ld e, l
    cpl
    db $FD
    ld [hl], a
    ld l, $48
    ld c, l
    add hl, hl
    db $EC
    ld d, e
    ld l, $58
    ld l, d
    ld l, $85
    ld e, h
    cpl
    rla
    ld h, b
    cpl
    add $5E
    dec hl
    or c
    halt
    jr z, jr_013_5249

jr_013_521F:
    ld h, [hl]
    dec l
    push bc
    ld e, l
    cpl
    db $FD
    ld [hl], a
    ld l, $48
    ld c, l
    add hl, hl
    ld hl, $257D
    ld a, [hl+]
    ld h, [hl]
    dec l
    push bc
    ld e, l
    cpl
    db $FD
    ld [hl], a
    ld l, $48
    ld c, l
    add hl, hl
    ld e, $52
    ld l, $4D
    ld e, a
    dec l
    ld b, l
    ld c, b
    cpl
    ld h, l
    ld h, d
    cpl
    nop
    ld d, l
    dec h
    scf

jr_013_5249:
    ld a, b
    dec hl
    ld c, l
    ld e, a
    dec l
    add l
    ld c, d
    cpl
    jp z, $2F61

    and c
    ld h, d
    dec h
    db $DD
    ld l, l
    ld a, [hl+]
    ld c, l
    ld e, a
    dec l
    add l
    ld e, e
    cpl
    ld l, a
    ld a, b
    ld l, $E1
    ld e, e
    dec h
    nop
    ld e, b
    inc h
    ld c, l
    ld e, a
    dec l
    add l
    ld d, a
    cpl
    dec [hl]
    ld e, a
    cpl

Jump_013_5272:
    jp c, $284F

    ld h, [hl]
    ld [hl], h
    ld a, [hl+]
    ld b, l
    ld b, e
    dec l
    push bc
    ld e, l
    cpl
    db $FD
    ld [hl], a
    ld l, $48
    ld c, l
    add hl, hl
    inc sp
    ld d, c
    ld l, $05
    ld e, d
    cpl
    add l
    ld b, [hl]
    cpl
    xor c
    ld e, a
    cpl
    nop
    ld b, b
    jr z, @-$74

    ld e, a
    ld h, $DF
    ld h, e
    jr z, jr_013_521F

    ld b, [hl]
    cpl
    xor c
    ld e, a
    cpl

jr_013_529F:
    nop
    ld b, b
    jr z, jr_013_52A3

jr_013_52A3:
    ld b, b
    inc e
    ld d, e
    ld h, h
    inc e
    add l
    ld b, [hl]
    cpl
    xor c
    ld e, a
    cpl
    nop
    ld b, b
    jr z, jr_013_5315

    ld c, l
    inc e
    ld e, l
    ld e, d
    inc e
    add l
    ld b, [hl]
    cpl
    xor c
    ld e, a
    cpl
    nop
    ld b, b
    jr z, jr_013_52C1

jr_013_52C1:
    ld b, b
    ld a, [hl+]
    ld c, a
    ld l, l
    dec hl
    add l
    ld b, [hl]
    cpl
    xor c
    ld e, a
    cpl
    nop
    ld b, b
    jr z, jr_013_52A3

    ld a, b
    daa
    dec bc
    ld e, d
    add hl, hl
    add l
    ld b, [hl]
    cpl
    xor c
    ld e, a
    cpl
    nop
    ld b, b
    jr z, jr_013_529F

    ld d, d
    ld a, [hl+]
    ld a, d
    ld b, [hl]
    dec l
    add l
    ld b, [hl]
    cpl
    xor c
    ld e, a
    cpl
    nop
    ld b, b
    jr z, jr_013_5324

    ld [hl], l

jr_013_52EF:
    dec l
    ld c, l
    ld e, a
    dec l
    push bc
    ld c, c
    cpl
    ld c, d
    ld h, b
    cpl
    sbc h
    ld h, l
    ld h, $67
    ld c, c
    dec hl
    ld [hl], c
    ld h, e
    dec l
    push bc
    ld c, c
    cpl
    ld c, d
    ld h, b
    cpl
    sbc h
    ld h, l
    ld h, $47
    ld b, [hl]
    dec hl
    add hl, bc
    ld c, b
    dec l
    push bc
    ld e, l
    cpl
    db $FD

jr_013_5315:
    ld [hl], a
    ld l, $48
    ld c, l
    add hl, hl
    ccf
    ld a, [hl]
    daa
    ld [hl-], a
    ld b, c
    cpl
    ld b, l
    ld e, d
    cpl
    ld b, b

jr_013_5324:
    ld h, d
    cpl
    jp nc, $274B

    di
    ld l, [hl]
    ld l, $85
    ld e, [hl]
    cpl
    ld b, l
    ld e, d
    cpl
    ld b, b
    ld h, d
    cpl
    jp nc, $274B

    ld h, [hl]
    ld l, [hl]
    ld l, $C0
    ld e, [hl]
    cpl
    add l
    ld e, h
    cpl
    rla
    ld h, b
    cpl
    add $5E
    dec hl
    or c
    halt
    jr z, jr_013_52EF

    ld l, h
    dec l
    add l
    ld c, d
    cpl
    jp z, $2F61

    and c
    ld h, d
    dec h
    rst $20
    ld [hl], c
    inc l
    nop
    ld b, b
    ld l, $85
    ld c, d
    cpl
    jp z, $2F61

    and c
    ld h, d
    dec h
    xor b
    ld h, e
    ld l, $3E
    ld a, [hl]
    ld l, $85
    ld c, d
    cpl
    jp z, $2F61

    and c
    ld h, d
    dec h
    ld [hl], e
    ld b, h
    ld l, $79
    ld l, b
    ld l, $85
    ld c, d
    cpl
    jp z, $2F61

    and c
    ld h, d
    dec h
    cp [hl]
    ld l, [hl]
    inc h
    ld sp, hl
    ld l, a
    dec h
    add l
    ld c, d
    cpl
    jp z, $2F61

    and c
    ld h, d
    dec h
    add a
    ld b, h
    add hl, hl
    jp c, $2B7A

    add l
    ld c, d
    cpl
    jp z, $2F61

    and c
    ld h, d
    dec h
    ld l, e
    ld h, b
    ld a, [hl+]
    db $EC
    ld a, b
    inc l
    add l
    ld c, d
    cpl
    jp z, $2F61

    and c
    ld h, d
    dec h
    cp h
    ld a, b
    dec l
    ld c, l
    ld e, a
    dec l
    ld b, l
    ld b, h
    cpl
    xor d
    ld l, c
    cpl
    nop
    ld b, b
    add hl, hl
    inc l
    ld e, c
    ld l, $61
    ld a, a
    inc e
    ld b, l
    ld b, h
    cpl
    xor d
    ld l, c
    cpl
    nop
    ld b, b
    add hl, hl
    pop hl
    ld a, b
    ld l, $F6
    ld a, [hl]
    ld l, $45
    ld b, h
    cpl
    xor d
    ld l, c
    cpl
    nop
    ld b, b
    add hl, hl
    or e
    ld e, e
    ld l, $1C
    ld a, l
    ld l, $45
    ld b, h
    cpl
    xor d
    ld l, c
    cpl
    nop
    ld b, b
    add hl, hl
    db $E4
    ld e, [hl]
    jr z, jr_013_5465

    ld d, a
    ld l, $45
    ld b, h
    cpl
    xor d
    ld l, c
    cpl
    nop
    ld b, b
    add hl, hl
    ld [hl], $77
    inc l
    cpl
    ld e, [hl]
    ld l, $45
    ld b, h
    cpl
    xor d
    ld l, c
    cpl
    nop
    ld b, b

jr_013_5409:
    add hl, hl
    jr z, @+$69

    ld a, [hl+]
    add c
    ld d, h
    inc l
    ld b, l
    ld b, h
    cpl
    xor d
    ld l, c
    cpl
    nop
    ld b, b
    add hl, hl
    rst $08
    ld e, a
    ld l, $4D
    ld e, a
    dec l
    dec b
    ld d, c
    cpl
    adc e

jr_013_5423:
    ld [hl], a
    ld l, $10
    ld [hl], d
    jr z, jr_013_546A

    ld b, d
    ld l, $05
    ld d, e
    ld l, $05
    ld d, c
    cpl
    adc e
    ld [hl], a
    ld l, $10
    ld [hl], d
    jr z, jr_013_5459

    ld b, c
    ld l, $E8
    ld h, d
    ld l, $05

jr_013_543E:
    ld d, c
    cpl
    adc e
    ld [hl], a
    ld l, $10
    ld [hl], d
    jr z, jr_013_5499

    ld a, h
    inc l
    ld h, e
    ld [hl], b
    dec l
    push bc
    ld d, b
    cpl
    adc e
    ld [hl], a
    ld l, $10
    ld [hl], d
    jr z, jr_013_54A8

    ld a, h
    inc l
    ld h, e

jr_013_5459:
    ld [hl], b
    dec l
    dec b
    ld d, c
    cpl
    adc e
    ld [hl], a
    ld l, $10
    ld [hl], d
    jr z, @-$1D

jr_013_5465:
    ld b, h
    dec l
    inc bc
    ld [hl], h
    dec l

jr_013_546A:
    dec b
    ld d, c
    cpl
    adc e
    ld [hl], a
    ld l, $10
    ld [hl], d
    jr z, jr_013_5409

    ld c, e
    ld l, $BD
    ld l, c
    ld l, $05
    ld d, c
    cpl
    adc e
    ld [hl], a
    ld l, $10
    ld [hl], d
    jr z, jr_013_543E

    ld a, d
    ld a, [hl+]
    sbc [hl]
    ld c, h
    dec l
    dec b
    ld d, c
    cpl
    adc e
    ld [hl], a
    ld l, $10
    ld [hl], d
    jr z, jr_013_5423

    ld [hl], a
    dec l
    ld c, l
    ld e, a
    dec l
    ld hl, sp+$00

jr_013_5499:
    nop
    daa
    ld hl, sp-$08
    nop
    rlca
    nop
    nop
    ld bc, $0027
    ld hl, sp+$01
    rlca
    add b

jr_013_54A8:
    nop
    nop
    inc bc
    daa
    nop
    ld hl, sp+$03
    rlca
    ld hl, sp+$00
    ld [bc], a
    daa
    ld hl, sp-$08
    ld [bc], a
    rlca
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
    ld c, a
    rst $38
    nop
    nop
    xor b
    ld d, h
    nop
    ld c, c
    db $DB
    ld d, h
    ld c, a
    rst $38
    nop
    nop
    sub a
    ld d, h
    nop
    ld c, c
    push hl
    ld d, h
    ld c, a
    rst $38
    nop
    nop
    cp c
    ld d, h
    nop
    ld c, c
    rst $28
    ld d, h
    ld c, a
    rst $38
    nop
    nop
    jp z, $0054

    ld c, c
    ld sp, hl
    ld d, h
    ld c, a
    rst $38
    nop
    rst $38
    xor b
    ld d, h
    nop
    ld c, c
    inc bc
    ld d, l
    ld c, a
    rst $38
    nop
    cp $A8
    ld d, h
    nop
    ld c, c
    dec c
    ld d, l
    ld c, a
    rst $38
    nop
    db $FD
    xor b
    ld d, h
    nop
    ld c, c
    rla
    ld d, l
    ld c, a
    rst $38
    nop
    db $FC
    xor b
    ld d, h
    nop
    ld c, c
    ld hl, $4F55
    rst $38
    nop
    ld bc, $5497
    nop
    ld c, c
    dec hl
    ld d, l
    ld c, a
    rst $38
    nop
    ld [bc], a
    sub a
    ld d, h
    nop
    ld c, c
    dec [hl]
    ld d, l
    ld c, a
    rst $38
    nop
    inc bc
    sub a
    ld d, h
    nop
    ld c, c
    ccf
    ld d, l
    ld c, a
    rst $38
    nop
    inc b
    sub a
    ld d, h
    nop
    ld c, c
    ld c, c
    ld d, l
    ld c, a
    rst $38
    ld bc, $B900
    ld d, h
    nop
    ld c, c
    ld d, e
    ld d, l
    ld c, a
    rst $38
    ld [bc], a
    nop
    cp c
    ld d, h
    nop
    ld c, c
    ld e, l
    ld d, l
    ld c, a
    rst $38
    inc bc
    nop
    cp c
    ld d, h
    nop
    ld c, c
    ld h, a
    ld d, l
    ld c, a
    rst $38
    inc b
    nop
    cp c
    ld d, h
    nop
    ld c, c
    ld [hl], c
    ld d, l
    ld c, a
    rst $38
    rst $38
    nop
    jp z, $0054

    ld c, c
    ld a, e
    ld d, l
    ld c, a
    rst $38
    cp $00
    jp z, $0054

    ld c, c
    add l
    ld d, l
    ld c, a
    rst $38
    db $FD
    nop
    jp z, $0054

    ld c, c
    adc a
    ld d, l
    ld c, a
    rst $38
    db $FC
    nop
    jp z, $0054

    ld c, c
    sbc c
    ld d, l
    ld c, [hl]
    inc bc
    inc de
    nop
    nop
    pop bc
    ld d, l
    inc de
    inc bc
    nop
    cp d
    ld d, l
    inc de
    ld [bc], a
    nop
    rst $08
    ld d, l
    inc de
    ld bc, $C800
    ld d, l
    rst $38
    inc d
    inc de
    push hl
    ld d, h
    ld h, l
    ld bc, $1412
    inc de
    db $DB
    ld d, h
    ld h, l
    ld bc, $1412
    inc de
    ld sp, hl
    ld d, h
    ld h, l
    ld bc, $1412
    inc de
    rst $28
    ld d, h
    ld h, l
    ld bc, $0012
    nop
    dec b
    dec b
    nop
    ld hl, sp+$04
    dec b
    ld hl, sp+$00
    inc bc
    ld bc, $F8F8
    ld [bc], a
    ld bc, $00F0
    ld bc, $F001
    ld hl, sp+$00
    ld bc, $0080
    ld hl, sp+$05
    dec h
    nop
    nop
    inc b
    dec h
    ld hl, sp-$08
    inc bc
    ld hl, $00F8
    ld [bc], a
    ld hl, $F8F0
    ld bc, $F021
    nop
    nop
    ld hl, $0080
    cp $09
    dec b
    ld hl, sp-$03
    ld [$F001], sp
    nop
    rlca
    ld bc, $F8F0
    ld b, $01
    add b
    nop
    ei
    add hl, bc
    dec h
    ld hl, sp-$04
    ld [$F021], sp
    ld hl, sp+$07
    ld hl, $00F0
    ld b, $21
    add b
    nop
    nop
    dec c
    dec b
    nop
    ld hl, sp+$0C
    dec b
    pop af
    ld hl, sp+$0E
    ld hl, $00F1
    ld c, $01
    ld hl, sp+$00
    dec bc
    ld bc, $F8F8
    ld a, [bc]
    ld bc, $0080
    ld sp, hl
    db $10
    dec h
    nop
    nop
    db $10
    dec b
    ld hl, sp-$08
    rrca
    ld hl, $00F8
    rrca
    ld bc, $F8F0
    ld c, $21
    ldh a, [rP1]
    ld c, $01
    add b
    nop
    ld hl, sp+$0D
    dec h
    nop
    nop
    inc c
    dec h
    pop af
    ld hl, sp+$0E
    ld hl, $00F1
    ld c, $01
    ld hl, sp-$08
    dec bc
    ld hl, $00F8
    ld a, [bc]
    ld hl, $F880
    nop
    ld [de], a
    ld bc, $F8F8
    ld de, $0001
    db $FC
    inc de
    dec b
    pop af
    ld hl, sp+$14
    ld hl, $00F1
    inc d
    ld bc, $F880
    ld hl, sp+$15
    ld hl, $00F8
    dec d
    ld bc, $F800
    ld d, $25
    nop
    nop
    ld d, $05
    ldh a, [$F8]
    inc d
    ld hl, $00F0
    inc d
    ld bc, $F880
    nop
    ld [de], a
    ld bc, $F8F8
    ld de, $0001
    db $FC
    inc de
    dec h
    pop af
    ld hl, sp+$14
    ld hl, $00F1
    inc d
    ld bc, $0080
    nop
    inc e
    dec b
    nop
    ld hl, sp+$1B
    dec b
    ld hl, sp+$00
    ld a, [de]
    ld bc, $F8F8
    add hl, de
    ld bc, $00F1
    jr jr_013_56CD

    pop af

jr_013_56CD:
    ld hl, sp+$17
    ld bc, $0080
    nop
    rra
    dec b
    nop
    ld hl, sp+$1E
    dec b
    ld hl, sp-$03
    dec e
    ld bc, $00F0
    jr @+$03

    ldh a, [$F8]
    rla
    ld bc, $0080
    nop
    inc hl
    dec b
    nop
    ld hl, sp+$22
    dec b
    ld hl, sp+$00
    ld hl, $F801
    ld hl, sp+$20
    ld bc, $00F1
    jr jr_013_56FB

    pop af

jr_013_56FB:
    ld hl, sp+$17
    ld bc, $0080
    ld hl, sp+$1C
    dec h
    nop
    nop
    dec de
    dec h
    ld hl, sp-$08
    ld a, [de]
    ld hl, $00F8
    add hl, de
    ld hl, $F8F1
    jr jr_013_5734

    pop af
    nop
    rla
    ld hl, $0080
    ld hl, sp+$1F
    dec h
    nop
    nop
    ld e, $25
    ld hl, sp-$05
    dec e
    ld hl, $F8F0
    jr @+$23

    ldh a, [rP1]
    rla
    ld hl, $0080
    ld hl, sp+$23
    dec h
    nop
    nop
    ld [hl+], a

jr_013_5734:
    dec h
    ld hl, sp-$08
    ld hl, $F821
    nop
    jr nz, jr_013_575E

    pop af
    ld hl, sp+$18
    ld hl, $00F1
    rla
    ld hl, $5080
    ld [$0008], sp
    rst $38
    ld [hl], l
    ld d, [hl]
    adc d
    ld d, [hl]
    and e
    ld d, [hl]
    adc d
    ld d, [hl]
    ld c, c
    ld b, [hl]
    ld d, a
    ld d, b
    ld [$0008], sp
    ld bc, $562A
    ld b, e

jr_013_575E:
    ld d, [hl]
    ld e, h
    ld d, [hl]
    ld b, e
    ld d, [hl]
    ld c, c
    ld d, [hl]
    ld d, a
    ld d, b
    ld [$FF08], sp
    nop
    rst $38
    ld d, [hl]
    jr jr_013_57C6

    dec l
    ld d, a
    jr jr_013_57CA

    ld c, c
    ld h, [hl]
    ld d, a
    ld d, b
    ld [$0108], sp
    nop
    cp b
    ld d, [hl]
    pop de
    ld d, [hl]
    and $56
    pop de
    ld d, [hl]
    ld c, c
    halt
    ld d, a
    ld d, b
    ld [$0008], sp
    cp $75
    ld d, [hl]
    adc d
    ld d, [hl]
    and e
    ld d, [hl]
    adc d
    ld d, [hl]
    ld c, c
    add [hl]
    ld d, a
    ld d, b
    ld [$0008], sp
    ld [bc], a
    ld a, [hl+]
    ld d, [hl]
    ld b, e
    ld d, [hl]
    ld e, h
    ld d, [hl]
    ld b, e
    ld d, [hl]
    ld c, c
    sub [hl]
    ld d, a
    ld d, b
    ld [$FE08], sp
    nop
    rst $38
    ld d, [hl]
    jr jr_013_5806

    dec l
    ld d, a
    jr jr_013_580A

    ld c, c
    and [hl]
    ld d, a
    ld d, b
    ld [$0208], sp
    nop
    cp b
    ld d, [hl]
    pop de
    ld d, [hl]
    and $56
    pop de
    ld d, [hl]
    ld c, c
    or [hl]
    ld d, a

jr_013_57C6:
    ld c, a
    rst $38
    nop
    nop

jr_013_57CA:
    adc d
    ld d, [hl]
    nop
    ld c, c
    add $57
    ld c, a
    rst $38
    nop
    nop
    ld b, e
    ld d, [hl]
    nop
    ld c, c
    ret nc

    ld d, a
    ld c, a
    rst $38
    nop
    nop
    jr jr_013_5837

    nop
    ld c, c
    jp c, Jump_013_4F57

    rst $38
    nop
    nop
    pop de
    ld d, [hl]
    nop
    ld c, c
    db $E4
    ld d, a
    ld c, a
    rst $38
    nop
    nop
    add hl, de
    ld d, [hl]
    nop
    ld c, c
    xor $57
    ld c, a
    rst $38
    nop
    nop
    ld [$0056], sp
    ld c, c
    ld hl, sp+$57
    ld c, a
    rst $38
    nop
    nop

jr_013_5806:
    rst $28
    ld d, l
    nop
    ld c, c

jr_013_580A:
    ld [bc], a
    ld e, b
    ld c, a
    rst $38
    nop
    nop
    sub $55
    nop
    ld c, c
    inc c
    ld e, b
    ld c, [hl]
    inc bc
    inc de
    nop
    nop
    dec l
    ld e, b
    inc de
    inc bc
    nop
    inc [hl]
    ld e, b
    inc de
    ld [bc], a
    nop
    ld b, d
    ld e, b
    inc de
    ld bc, $3B00
    ld e, b
    rst $38
    inc d
    inc de
    add $57
    ld h, l
    ld bc, $1412
    inc de
    ret nc

jr_013_5837:
    ld d, a
    ld h, l
    ld bc, $1412
    inc de
    jp c, Jump_013_6557

    ld bc, $1412
    inc de
    db $E4
    ld d, a
    ld h, l
    ld bc, $F012
    ld sp, hl
    ld [bc], a
    ld b, $00
    nop
    ld b, $02
    nop
    ld hl, sp+$05
    ld [bc], a
    ld hl, sp+$00
    inc b
    ld bc, $F8F8
    inc bc
    ld bc, $00F0
    ld bc, $F001
    ld hl, sp+$00
    ld bc, $F080
    rst $38
    ld [bc], a
    ld h, $00
    ld hl, sp+$06
    ld [hl+], a
    nop
    nop
    dec b
    ld [hl+], a
    ld hl, sp-$08
    inc b
    ld hl, $00F8
    inc bc
    ld hl, $F8F0
    ld bc, $F021
    nop
    nop
    ld hl, $0080
    nop
    dec c
    ld [bc], a
    nop
    ld hl, sp+$0C
    ld [bc], a
    ld hl, sp+$00
    dec bc
    ld bc, $F8F8
    ld a, [bc]
    ld bc, $FCF1
    add hl, bc
    ld b, $F0
    nop
    ld [$F001], sp
    ld hl, sp+$07
    ld bc, $0080
    ld hl, sp+$0D
    ld [hl+], a
    nop
    nop
    inc c
    ld [hl+], a
    ld hl, sp-$08
    dec bc
    ld hl, $00F8
    ld a, [bc]
    ld hl, $FCF1
    add hl, bc
    ld h, $F0
    ld hl, sp+$08
    ld hl, $00F0
    rlca
    ld hl, $F280
    ld bc, $0613
    ld a, [c]
    ld a, [$0613]
    pop af
    ld hl, sp+$12
    ld hl, $00F1
    ld [de], a
    ld bc, $0000
    ld de, $0002
    ld hl, sp+$10
    ld [bc], a
    ld hl, sp+$00
    rrca
    ld bc, $F8F8
    ld c, $01
    add b
    pop af
    ld bc, $0613
    pop af
    ld a, [$0613]
    nop
    ld sp, hl
    dec d
    ld [hl+], a
    nop
    nop
    dec d
    ld [bc], a
    ld hl, sp-$08
    inc d
    ld hl, $00F8
    inc d
    ld bc, $F8F0
    ld [de], a
    ld hl, $00F0
    ld [de], a
    ld bc, $F280
    ld bc, $0613
    ld a, [c]
    ld a, [$0613]
    pop af
    ld hl, sp+$12
    ld hl, $00F1
    ld [de], a
    ld bc, $F900
    ld de, $0022
    ld bc, $2210
    ld hl, sp-$08
    rrca
    ld hl, $00F8
    ld c, $21
    add b
    di
    ld a, [$261E]
    di
    cp $1E
    ld b, $F1
    ld hl, sp+$1B
    ld hl, $00F1
    dec de
    ld bc, $0100
    ld a, [de]
    ld [bc], a
    nop
    ld sp, hl
    add hl, de
    ld [bc], a
    ld hl, sp+$00
    rla
    ld bc, $F8F8
    ld d, $01
    add b
    ld a, [c]
    ld a, [$261E]
    ld a, [c]
    cp $1E
    ld b, $00
    nop
    dec e
    ld [bc], a
    nop
    ld sp, hl
    dec e
    ld [hl+], a
    ld hl, sp+$00
    inc e
    ld bc, $F8F8
    inc e
    ld hl, $00F0
    dec de
    ld bc, $F8F0
    dec de
    ld hl, $F380
    cp $1E
    ld b, $F3
    ld a, [$261E]
    pop af
    ld hl, sp+$1B
    ld hl, $00F1
    dec de
    ld bc, $F800
    ld a, [de]
    ld [hl+], a
    nop
    nop
    add hl, de
    ld [hl+], a
    ld hl, sp-$08
    rla
    ld hl, $00F8
    ld d, $21
    add b
    pop af
    ld sp, hl
    rra
    ld b, $00
    nop
    dec h
    ld [bc], a
    nop
    ld hl, sp+$24
    ld [bc], a
    ld hl, sp+$00
    inc hl
    ld bc, $F8F8
    ld [hl+], a
    ld bc, $00F1
    ld hl, $F101
    ld hl, sp+$20
    ld bc, $F080
    ld sp, hl
    rra
    ld b, $00
    nop
    jr z, @+$04

    nop
    ld hl, sp+$27
    ld [bc], a
    ld hl, sp-$04
    ld h, $01
    ldh a, [rP1]
    ld hl, $F001
    ld hl, sp+$20
    ld bc, $F180
    ld sp, hl
    rra
    ld b, $00
    nop
    inc l
    ld [bc], a
    nop
    ld hl, sp+$2B
    ld [bc], a
    ld hl, sp+$00
    ld a, [hl+]
    ld bc, $F8F8
    add hl, hl
    ld bc, $00F1
    ld hl, $F101
    ld hl, sp+$20
    ld bc, $F180
    rst $38
    rra
    ld h, $00
    ld hl, sp+$25
    ld [hl+], a
    nop
    nop
    inc h
    ld [hl+], a
    ld hl, sp-$08
    inc hl
    ld hl, $00F8
    ld [hl+], a
    ld hl, $F8F1
    ld hl, $F121
    nop
    jr nz, jr_013_5A13

    add b
    ldh a, [rIE]
    rra
    ld h, $00
    ld hl, sp+$28
    ld [hl+], a
    nop
    nop
    daa
    ld [hl+], a
    ld hl, sp-$04
    ld h, $21
    ldh a, [$F8]
    ld hl, $F021
    nop
    jr nz, @+$23

    add b
    pop af
    rst $38
    rra
    ld h, $00
    ld hl, sp+$2C

jr_013_5A13:
    ld [hl+], a
    nop
    nop
    dec hl
    ld [hl+], a
    ld hl, sp-$08
    ld a, [hl+]
    ld hl, $00F8
    add hl, hl
    ld hl, $F8F1
    ld hl, $F121
    nop
    jr nz, jr_013_5A49

    add b
    ld d, b
    ld [$0008], sp
    rst $38
    jr nz, jr_013_5A89

    ld b, c
    ld e, c
    ld h, d
    ld e, c
    ld b, c
    ld e, c
    ld c, c
    add hl, hl
    ld e, d
    ld d, b
    ld [$0008], sp
    ld bc, $58BD
    sbc $58
    rst $38
    ld e, b
    sbc $58
    ld c, c
    add hl, sp
    ld e, d

jr_013_5A49:
    ld d, b
    ld [$FF08], sp
    nop
    sub $59
    di
    ld e, c
    inc c
    ld e, d
    di
    ld e, c
    ld c, c
    ld c, c
    ld e, d
    ld d, b
    ld [$0108], sp
    nop
    add e
    ld e, c
    and b
    ld e, c
    cp c
    ld e, c
    and b
    ld e, c
    ld c, c
    ld e, c
    ld e, d
    ld d, b
    ld [$0008], sp
    cp $20
    ld e, c
    ld b, c
    ld e, c
    ld h, d
    ld e, c
    ld b, c
    ld e, c
    ld c, c
    ld l, c
    ld e, d
    ld d, b
    ld [$0008], sp
    ld [bc], a
    cp l
    ld e, b
    sbc $58
    rst $38
    ld e, b
    sbc $58
    ld c, c
    ld a, c
    ld e, d

jr_013_5A89:
    ld d, b
    ld [$FE08], sp
    nop
    sub $59
    di
    ld e, c
    inc c
    ld e, d
    di
    ld e, c
    ld c, c
    adc c
    ld e, d
    ld d, b
    ld [$0208], sp
    nop
    add e
    ld e, c
    and b
    ld e, c
    cp c
    ld e, c
    and b
    ld e, c
    ld c, c
    sbc c
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    ld b, c
    ld e, c
    nop
    ld c, c
    xor c
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    sbc $58
    nop
    ld c, c
    or e
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    di
    ld e, c
    nop
    ld c, c
    cp l
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    and b
    ld e, c
    nop
    ld c, c
    rst $00
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    and b
    ld e, b
    nop
    ld c, c
    pop de
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    add e
    ld e, b
    nop
    ld c, c
    db $DB
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    ld h, [hl]
    ld e, b
    nop
    ld c, c
    push hl
    ld e, d
    ld c, a
    rst $38
    nop
    nop
    ld c, c
    ld e, b
    nop
    ld c, c
    rst $28
    ld e, d
    ld c, [hl]
    inc bc
    inc de
    nop
    nop
    db $10
    ld e, e
    inc de
    inc bc
    nop
    rla
    ld e, e
    inc de
    ld [bc], a
    nop
    dec h
    ld e, e
    inc de
    ld bc, $1E00
    ld e, e
    rst $38
    inc d
    inc de
    xor c
    ld e, d
    ld h, l
    ld bc, $1412
    inc de
    or e
    ld e, d
    ld h, l
    ld bc, $1412
    inc de
    cp l
    ld e, d
    ld h, l
    ld bc, $1412
    inc de
    rst $00
    ld e, d
    ld h, l
    ld bc, $EC12
    rst $30
    inc [hl]
    ld [bc], a
    nop
    nop
    add hl, de
    jr nz, jr_013_5B35

jr_013_5B35:
    ld hl, sp+$19
    nop
    ldh a, [rP1]
    dec bc
    rlca
    ldh a, [$F8]
    ld a, [bc]
    rlca
    ldh a, [$F0]
    add hl, bc
    rlca
    ld hl, sp-$08
    inc d
    nop
    add sp, $08
    inc bc
    rlca
    add sp, $00
    ld [bc], a
    rlca
    add sp, -$08
    ld bc, $E807
    ldh a, [rP1]
    rlca
    add b
    db $EB
    rst $30
    inc [hl]
    ld [bc], a
    nop
    nop
    ld a, [de]
    jr nz, jr_013_5B62

jr_013_5B62:
    ld hl, sp+$1A
    nop
    rst $20
    nop
    ld b, $00
    rst $20
    ld hl, sp+$05
    rlca
    rst $20
    ldh a, [rDIV]
    nop
    rst $28
    ldh a, [$0C]
    rlca
    rst $30
    ld hl, sp+$15
    nop
    rst $28
    ld [$070F], sp
    rst $28
    nop
    ld c, $07
    rst $28
    ld hl, sp+$0D
    rlca
    add b
    ld [$34F7], a
    ld [bc], a
    nop
    nop
    dec de
    jr nz, jr_013_5B8F

jr_013_5B8F:
    ld hl, sp+$1B
    nop
    or $00
    rra
    rlca
    and $F0
    inc b
    nop
    and $00
    ld [$E607], sp
    ld hl, sp+$07
    rlca
    or $F8
    ld d, $00
    xor $08
    inc de
    rlca
    xor $00
    ld [de], a
    rlca
    xor $F8
    ld de, $EE07
    ldh a, [rNR10]
    nop
    add b
    db $EC
    ld bc, $2234
    nop

jr_013_5BBC:
    nop
    add hl, de
    jr nz, jr_013_5BC0

jr_013_5BC0:
    ld hl, sp+$19
    nop
    ldh a, [$F8]
    dec bc
    daa
    ldh a, [rP1]
    ld a, [bc]
    daa
    ldh a, [$08]
    add hl, bc
    daa
    ld hl, sp+$00
    inc d
    jr nz, jr_013_5BBC

    ldh a, [$03]
    daa
    add sp, -$08
    ld [bc], a
    daa
    add sp, $00
    ld bc, $E827
    ld [$2700], sp
    add b
    db $EB
    ld bc, $2234
    nop
    nop
    ld a, [de]
    jr nz, jr_013_5BED

jr_013_5BED:
    ld hl, sp+$1A
    nop
    rst $20
    ld hl, sp+$06
    jr nz, @-$17

    nop
    dec b
    daa
    rst $20
    ld [$2004], sp
    rst $28
    ld [$270C], sp
    rst $30
    nop
    dec d
    jr nz, @-$0F

    ldh a, [rIF]
    daa
    rst $28
    ld hl, sp+$0E
    daa

jr_013_5C0C:
    rst $28
    nop
    dec c
    daa
    add b
    ld [$3401], a
    ld [hl+], a
    nop
    nop
    dec de
    jr nz, jr_013_5C1A

jr_013_5C1A:
    ld hl, sp+$1B
    nop
    or $F8
    rra
    daa
    and $08
    inc b
    jr nz, jr_013_5C0C

    ld hl, sp+$08
    daa
    and $00
    rlca
    daa
    or $00
    ld d, $20
    xor $F0
    inc de
    daa
    xor $F8
    ld [de], a
    daa
    xor $00
    ld de, $EE27
    ld [$2010], sp
    add b
    ld hl, sp-$08
    inc hl
    nop
    ldh a, [$F0]
    rra
    rlca
    add sp, $00
    ld e, $07
    add sp, -$08
    dec e
    rlca
    add sp, -$10
    inc e
    nop
    ldh a, [$08]
    ld [hl+], a
    rlca
    ldh a, [rP1]
    ld hl, $F007
    ld hl, sp+$20
    rlca
    nop
    nop
    ld a, [de]
    jr nz, jr_013_5C67

jr_013_5C67:
    ld hl, sp+$1A
    nop
    add b
    ld hl, sp-$08
    ld a, [hl+]
    nop
    nop
    nop
    ld a, [de]
    jr nz, jr_013_5C74

jr_013_5C74:
    ld hl, sp+$1A
    nop
    ldh a, [$08]
    add hl, hl
    rlca
    ldh a, [rP1]
    jr z, @+$09

    ldh a, [$F8]
    daa
    rlca
    ldh a, [$F0]
    ld h, $07
    add sp, $00
    dec h
    rlca
    add sp, -$08

jr_013_5C8D:
    inc h
    rlca
    add b
    nop
    nop
    dec de
    jr nz, jr_013_5C95

jr_013_5C95:
    ld hl, sp+$1B
    nop
    ld hl, sp-$08
    cpl
    jr nz, jr_013_5C8D

    ld [$002F], sp
    ldh a, [rP1]
    ld l, $07
    ldh a, [$F8]
    dec l
    rlca
    add sp, $00
    inc l
    rlca
    add sp, -$08
    dec hl
    rlca
    add b
    db $ED
    db $FC
    jr nc, jr_013_5CBC

    add b
    db $ED
    inc b
    ld [hl-], a
    daa
    push af
    db $FC

jr_013_5CBC:
    ld sp, $E547
    db $FC

jr_013_5CC0:
    ld sp, $ED07
    db $FC
    inc sp
    rlca
    db $ED
    push af
    ld [hl-], a
    rlca
    add b
    ld hl, sp+$00
    inc hl
    jr nz, jr_013_5CC0

jr_013_5CD0:
    ld [$271F], sp
    add sp, -$08
    ld e, $27
    add sp, $00
    dec e
    daa
    add sp, $08
    inc e
    jr nz, jr_013_5CD0

    ldh a, [rNR43]
    daa
    ldh a, [$F8]
    ld hl, $F027
    nop
    jr nz, jr_013_5D12

    nop
    nop
    ld a, [de]
    jr nz, jr_013_5CF0

jr_013_5CF0:
    ld hl, sp+$1A
    nop
    add b
    ld hl, sp+$00
    ld a, [hl+]
    jr nz, jr_013_5CF9

jr_013_5CF9:
    nop
    ld a, [de]
    jr nz, jr_013_5CFD

jr_013_5CFD:
    ld hl, sp+$1A
    nop
    ldh a, [$F0]
    add hl, hl
    daa
    ldh a, [$F8]
    jr z, jr_013_5D2F

    ldh a, [rP1]
    daa
    daa
    ldh a, [$08]
    ld h, $27
    add sp, -$08

jr_013_5D12:
    dec h
    daa
    add sp, $00
    inc h
    daa
    add b
    nop

jr_013_5D1A:
    nop
    dec de
    jr nz, jr_013_5D1E

jr_013_5D1E:
    ld hl, sp+$1B
    nop
    ld hl, sp+$00
    cpl
    nop
    ldh a, [$F0]
    cpl
    jr nz, jr_013_5D1A

    ld hl, sp+$2E
    daa
    ldh a, [rP1]

jr_013_5D2F:
    dec l
    daa
    add sp, -$08
    inc l
    daa
    add sp, $00
    dec hl
    daa
    add b
    xor $FC
    jr nc, jr_013_5D45

    add b
    db $ED
    inc b
    ld [hl-], a
    daa
    push af
    db $FC

jr_013_5D45:
    ld sp, $E547
    db $FC
    ld sp, $ED07
    db $FC
    inc sp
    rlca
    db $ED
    push af
    ld [hl-], a
    rlca
    add b
    ld d, b
    ld [$0108], sp
    nop
    or a
    ld e, e
    db $E4
    ld e, e
    ld de, $E45C
    ld e, e
    ld c, c
    ld d, h
    ld e, l
    ld d, b
    ld [$0008], sp
    rst $38
    or a
    ld e, e
    db $E4
    ld e, e
    ld de, $E45C
    ld e, e
    ld c, c
    ld h, h
    ld e, l
    ld d, b
    ld [$FF08], sp
    nop
    inc l
    ld e, e
    ld e, c
    ld e, e
    add [hl]
    ld e, e
    ld e, c
    ld e, e
    ld c, c
    ld [hl], h
    ld e, l
    ld d, b
    ld [$0008], sp
    ld bc, $5B2C
    ld e, c
    ld e, e
    add [hl]
    ld e, e
    ld e, c
    ld e, e
    ld c, c
    add h
    ld e, l
    ld c, a
    inc c
    nop
    nop
    or [hl]
    ld e, h
    nop
    ld c, a
    ld b, $00
    nop
    or c
    ld e, h
    nop
    ld c, a
    ld b, $00
    nop
    sub b
    ld e, h
    nop
    ld c, a
    ld b, $00
    nop
    ld l, e
    ld e, h
    nop
    ld c, a
    ld b, $00
    nop
    ld b, d
    ld e, h
    nop
    ld c, a
    ld [$0000], sp
    add [hl]
    ld e, e
    nop
    ld c, c
    sub h
    ld e, l
    ld c, a
    ld b, $00
    nop
    ld b, d
    ld e, h
    nop
    ld c, a
    ld b, $00
    nop
    ld l, e
    ld e, h
    nop
    ld c, a
    ld b, $00
    nop
    sub b
    ld e, h
    nop
    ld c, a
    ld b, $00
    nop
    or c
    ld e, h
    nop
    ld c, a
    inc c
    nop
    nop
    or [hl]
    ld e, h
    nop
    ld c, c
    pop bc
    ld e, l
    ld c, a
    inc d
    nop
    nop
    or c
    ld e, h
    nop
    ld c, a
    inc d
    nop
    nop
    or [hl]
    ld e, h
    nop
    ld c, c
    rst $20
    ld e, l
    ld c, a
    inc d
    nop
    nop
    or [hl]
    ld e, h
    nop
    ld c, a
    inc d
    nop
    nop
    or c
    ld e, h
    nop
    ld c, c
    ld hl, sp+$5D
    ld d, b
    ld [$0008], sp
    nop
    or a
    ld e, e
    db $E4
    ld e, e
    ld de, $E45C
    ld e, e
    ld c, c
    add hl, bc
    ld e, [hl]
    ld d, b
    ld [$0008], sp
    nop
    inc l
    ld e, e
    ld e, c
    ld e, e
    add [hl]
    ld e, e
    ld e, c
    ld e, e
    ld c, c
    add hl, de
    ld e, [hl]
    nop
    nop
    rlca
    dec b
    nop
    ld hl, sp+$06
    dec b
    ld hl, sp+$00
    dec b
    ld bc, $F8F8
    inc b
    ld bc, $00F0
    ld bc, $F001
    ld hl, sp+$00
    nop
    add b
    ldh a, [rP1]
    inc bc
    ld bc, $F8F0
    ld [bc], a
    ld bc, $F800
    rlca
    dec h
    nop
    nop
    ld b, $25
    ld hl, sp-$08
    dec b
    ld hl, $00F8
    inc b
    ld hl, $0080
    nop
    dec c
    dec b
    nop
    ld hl, sp+$0C
    dec b
    ld hl, sp+$00
    dec bc
    ld bc, $F8F8
    ld a, [bc]
    ld bc, $00F0
    add hl, bc
    ld bc, $F8F0
    ld [$8000], sp
    nop
    ld hl, sp+$0D
    dec h
    nop
    nop
    inc c
    dec h
    ld hl, sp-$08
    dec bc
    ld hl, $00F8
    ld a, [bc]
    ld hl, $F8F0
    add hl, bc
    ld hl, $00F0
    ld [$8020], sp
    nop
    nop
    inc de
    dec b
    nop
    ld hl, sp+$12
    dec b
    ld hl, sp+$00
    ld de, $F801
    ld hl, sp+$10
    ld bc, $00F1
    rrca
    ld bc, $F8F1
    ld c, $01
    add b
    nop
    ld sp, hl
    dec d
    dec h
    nop
    nop
    dec d
    dec b
    ld hl, sp-$08
    inc d
    ld hl, $00F8
    inc d
    ld bc, $00F0
    rrca
    ld bc, $F8F0
    ld c, $00
    add b
    ld hl, sp+$00
    ld l, $01
    ld hl, sp-$08
    dec l
    ld bc, $F8F1
    ld c, $00
    nop
    ld hl, sp+$13
    dec h
    nop
    nop
    ld [de], a
    dec h
    pop af
    nop
    rrca
    ld bc, $0080
    ld bc, $051A
    nop
    ld sp, hl
    add hl, de
    dec b
    ld hl, sp+$00
    jr @+$03

    ld hl, sp-$08
    rla
    ld bc, $F8F1
    ld d, $20
    pop af
    nop
    ld d, $00
    add b
    nop
    nop
    dec e
    dec b
    nop
    ld sp, hl
    dec e
    dec h
    ld hl, sp+$00
    inc e
    ld bc, $F8F8
    dec de
    ld bc, $00F0
    ld d, $00
    ldh a, [$F8]
    ld d, $20
    add b
    nop
    ld hl, sp+$1A
    dec h
    nop
    nop
    add hl, de
    dec h
    ld hl, sp-$08
    jr jr_013_5F37

    ld hl, sp+$00
    rla
    ld hl, $F8F1
    ld d, $20
    pop af
    nop
    ld d, $00
    add b
    nop
    nop
    inc hl
    dec b
    nop
    ld hl, sp+$22
    dec b
    ld hl, sp+$00
    ld hl, $F801
    ld hl, sp+$20
    ld bc, $00F1
    rra
    nop

jr_013_5F37:
    pop af
    ld hl, sp+$1E
    nop
    add b
    nop
    nop
    daa
    dec b
    nop
    ld hl, sp+$26
    dec b
    ld hl, sp+$00
    dec h
    ld bc, $F8F8
    inc h
    ld bc, $00F0
    rra
    nop
    ldh a, [$F8]
    ld e, $00
    add b
    nop
    nop
    dec hl
    dec b
    nop
    ld hl, sp+$2A
    dec b
    ld hl, sp+$00
    add hl, hl
    ld bc, $F8F8
    jr z, jr_013_5F66

    pop af

jr_013_5F66:
    nop
    rra
    nop
    pop af
    ld hl, sp+$1E
    nop
    add b
    pop af
    ld hl, sp+$2C
    ld bc, $00F1
    ld e, $20
    nop
    ld hl, sp+$23
    dec h
    nop
    nop
    ld [hl+], a
    dec h
    ld hl, sp-$08
    ld hl, $F821
    nop
    jr nz, jr_013_5FA7

    add b
    ldh a, [$F8]
    inc l
    ld bc, $00F0
    ld e, $20
    nop
    ld hl, sp+$27
    dec h
    nop
    nop
    ld h, $25
    ld hl, sp-$08
    dec h
    ld hl, $00F8
    inc h
    ld hl, $F180
    nop
    ld e, $20
    pop af
    ld hl, sp+$2C

jr_013_5FA7:
    ld bc, $F800
    dec hl
    dec h
    nop
    nop
    ld a, [hl+]
    dec h
    ld hl, sp-$08
    add hl, hl
    ld hl, $00F8
    jr z, jr_013_5FD9

    add b
    ld d, b
    ld [$0008], sp
    rst $38
    ret c

    ld e, [hl]
    pop af
    ld e, [hl]
    ld a, [bc]
    ld e, a
    pop af
    ld e, [hl]
    ld c, c
    cp c
    ld e, a
    ld d, b
    ld [$0008], sp
    ld bc, $5E8D
    and [hl]
    ld e, [hl]
    cp a
    ld e, [hl]
    and [hl]
    ld e, [hl]
    ld c, c
    ret


    ld e, a

jr_013_5FD9:
    ld d, b
    ld [$FF08], sp
    nop
    ld l, [hl]
    ld e, a
    add a
    ld e, a
    and b
    ld e, a
    add a
    ld e, a
    ld c, c
    reti


    ld e, a
    ld d, b
    ld [$0108], sp
    nop
    inc hl
    ld e, a
    inc a
    ld e, a
    ld d, l
    ld e, a
    inc a
    ld e, a
    ld c, c
    jp hl


    ld e, a
    ld d, b
    ld [$0008], sp
    cp $D8
    ld e, [hl]
    pop af
    ld e, [hl]
    ld a, [bc]
    ld e, a
    pop af
    ld e, [hl]
    ld c, c
    ld sp, hl
    ld e, a
    ld d, b
    ld [$0008], sp
    ld [bc], a
    adc l
    ld e, [hl]
    and [hl]
    ld e, [hl]
    cp a
    ld e, [hl]
    and [hl]
    ld e, [hl]
    ld c, c
    add hl, bc
    ld h, b
    ld d, b
    ld [$FE08], sp
    nop
    ld l, [hl]
    ld e, a
    add a
    ld e, a
    and b
    ld e, a
    add a
    ld e, a
    ld c, c
    add hl, de
    ld h, b
    ld d, b
    ld [$0208], sp
    nop
    inc hl
    ld e, a
    inc a
    ld e, a
    ld d, l
    ld e, a
    inc a
    ld e, a
    ld c, c
    add hl, hl
    ld h, b
    ld c, a
    rst $38
    nop
    nop
    pop af
    ld e, [hl]
    nop
    ld c, c
    add hl, sp
    ld h, b
    ld c, a
    rst $38
    nop
    nop
    and [hl]
    ld e, [hl]
    nop
    ld c, c
    ld b, e
    ld h, b
    ld c, a
    rst $38
    nop
    nop
    add a
    ld e, a
    nop
    ld c, c
    ld c, l
    ld h, b
    ld c, a
    rst $38
    nop
    nop
    inc a
    ld e, a
    nop
    ld c, c
    ld d, a
    ld h, b
    ld c, a
    rst $38
    nop
    nop
    ld [hl], h
    ld e, [hl]
    nop
    ld c, c
    ld h, c
    ld h, b
    ld c, a
    rst $38
    nop
    nop
    ld e, e
    ld e, [hl]
    nop
    ld c, c
    ld l, e
    ld h, b
    ld c, a
    rst $38
    nop
    nop
    ld b, d
    ld e, [hl]
    nop
    ld c, c
    ld [hl], l
    ld h, b
    ld c, a
    rst $38
    nop
    nop
    add hl, hl
    ld e, [hl]
    nop
    ld c, c
    ld a, a
    ld h, b
    ld c, [hl]
    inc bc
    inc de
    nop
    nop
    and b
    ld h, b
    inc de
    inc bc
    nop
    and a
    ld h, b
    inc de
    ld [bc], a
    nop
    or l
    ld h, b
    inc de
    ld bc, $AE00
    ld h, b
    rst $38
    inc d
    inc de
    add hl, sp
    ld h, b
    ld h, l
    ld bc, $1412
    inc de
    ld b, e
    ld h, b
    ld h, l
    ld bc, $1412
    inc de
    ld c, l
    ld h, b
    ld h, l
    ld bc, $1412
    inc de
    ld d, a
    ld h, b
    ld h, l
    ld bc, $0012
    nop
    dec b
    ld bc, $F800
    inc b
    ld bc, $00F8
    inc bc
    ld bc, $F8F8
    ld [bc], a
    ld bc, $00F0
    ld bc, $F001
    ld hl, sp+$00
    ld bc, $0080
    ld hl, sp+$05
    ld hl, $0000
    inc b
    ld hl, $F8F8
    inc bc
    ld hl, $00F8
    ld [bc], a
    ld hl, $F8F0
    ld bc, $F021
    nop
    nop
    ld hl, $0080
    cp $0A
    ld bc, $00F8
    add hl, bc
    ld bc, $F8F8
    ld [$F001], sp
    nop
    rlca
    ld bc, $F8F0
    ld b, $01
    add b
    nop
    ei
    ld a, [bc]
    ld hl, $F9F8
    add hl, bc
    ld hl, $01F8
    ld [$F021], sp
    ld sp, hl
    rlca
    ld hl, $01F0
    ld b, $21
    add b
    nop
    db $FC
    rrca
    ld bc, $00F8
    ld c, $01
    ld hl, sp-$08
    dec c
    ld bc, $00F1
    inc c
    ld bc, $F8F1
    dec bc
    ld bc, $0080
    ld sp, hl
    ld de, $0021
    nop
    ld de, $F801
    ld hl, sp+$10
    ld hl, $00F8
    db $10
    ld bc, $00F0
    inc c
    ld bc, $F8F0
    dec bc
    ld bc, $0080
    db $FC
    rrca
    ld hl, $F8F8
    ld c, $21
    ld hl, sp+$00
    dec c
    ld hl, $00F1
    inc c
    ld bc, $F8F1
    dec bc
    ld bc, $F880
    nop
    dec d
    ld bc, $F8F8
    inc d
    ld bc, $FC00
    ld d, $01
    pop af
    nop
    inc de
    ld bc, $F8F1
    ld [de], a
    ld bc, $F880
    nop
    rla
    ld bc, $F8F8
    jr z, jr_013_6179

    nop

jr_013_6179:
    ld sp, hl
    jr @+$23

    nop
    nop
    jr @+$03

    ldh a, [rP1]
    inc de
    ld bc, $F8F0
    ld [de], a
    ld bc, $F880
    nop
    daa
    ld bc, $F8F8
    ld h, $01
    nop
    db $FD
    ld d, $21
    pop af
    nop
    inc de
    ld bc, $F8F1
    ld [de], a
    ld bc, $0080
    nop
    ld e, $01
    nop
    ld hl, sp+$1D
    ld bc, $00F8
    inc e
    ld bc, $F8F8
    dec de
    ld bc, $00F1
    ld a, [de]
    ld bc, $F8F1
    add hl, de
    ld bc, $0080
    cp $21
    ld bc, $00F8
    jr nz, @+$03

    ld hl, sp-$08
    rra
    ld bc, $00F0
    ld a, [de]
    ld bc, $F8F0
    add hl, de
    ld bc, $0080
    nop
    dec h
    ld bc, $F800
    inc h
    ld bc, $00F8
    inc hl
    ld bc, $F8F8
    ld [hl+], a
    ld bc, $00F1
    ld a, [de]
    ld bc, $F8F1
    add hl, de
    ld bc, $0080
    ld hl, sp+$1E
    ld hl, $0000
    dec e
    ld hl, $F8F8
    inc e
    ld hl, $00F8
    dec de
    ld hl, $F8F1
    ld a, [de]
    ld hl, $00F1
    add hl, de
    ld hl, $0080
    ld a, [$2121]
    ld hl, sp-$08
    jr nz, @+$23

    ld hl, sp+$00
    rra
    ld hl, $F8F0
    ld a, [de]
    ld hl, $00F0
    add hl, de
    ld hl, $0080
    ld hl, sp+$25
    ld hl, $0000
    inc h
    ld hl, $F8F8
    inc hl
    ld hl, $00F8
    ld [hl+], a
    ld hl, $F8F1
    ld a, [de]
    ld hl, $00F1
    add hl, de
    ld hl, $5080
    ld [$0008], sp
    rst $38
    ld e, e
    ld h, c
    ld [hl], b
    ld h, c
    adc c
    ld h, c
    ld [hl], b
    ld h, c
    ld c, c
    inc l
    ld h, d
    ld d, b
    ld [$0008], sp
    ld bc, $6118
    dec l
    ld h, c
    ld b, [hl]
    ld h, c
    dec l
    ld h, c
    ld c, c
    inc a
    ld h, d
    ld d, b
    ld [$FF08], sp
    nop
    push hl
    ld h, c
    cp $61
    inc de
    ld h, d
    cp $61
    ld c, c
    ld c, h
    ld h, d
    ld d, b
    ld [$0108], sp
    nop
    sbc [hl]
    ld h, c
    or a
    ld h, c
    call z, $B761
    ld h, c
    ld c, c
    ld e, h
    ld h, d
    ld d, b
    ld [$0008], sp
    cp $5B
    ld h, c
    ld [hl], b
    ld h, c
    adc c
    ld h, c
    ld [hl], b
    ld h, c
    ld c, c
    ld l, h
    ld h, d
    ld d, b
    ld [$0008], sp
    ld [bc], a
    jr jr_013_62E4

    dec l
    ld h, c
    ld b, [hl]
    ld h, c
    dec l
    ld h, c
    ld c, c
    ld a, h
    ld h, d
    ld d, b
    ld [$FE08], sp
    nop
    push hl
    ld h, c
    cp $61
    inc de
    ld h, d
    cp $61
    ld c, c
    adc h
    ld h, d
    ld d, b
    ld [$0208], sp
    nop
    sbc [hl]
    ld h, c
    or a
    ld h, c
    call z, $B761
    ld h, c
    ld c, c
    sbc h
    ld h, d
    ld c, a
    rst $38
    nop
    nop
    ld [hl], b
    ld h, c
    nop
    ld c, c
    xor h
    ld h, d
    ld c, a
    rst $38
    nop
    nop
    dec l
    ld h, c
    nop
    ld c, c
    or [hl]
    ld h, d
    ld c, a
    rst $38
    nop
    nop
    cp $61
    nop
    ld c, c
    ret nz

    ld h, d
    ld c, a
    rst $38
    nop
    nop
    or a
    ld h, c
    nop
    ld c, c
    jp z, Jump_013_4F62

    rst $38
    nop
    nop
    inc bc
    ld h, c
    nop
    ld c, c
    call nc, Call_013_4F62
    rst $38
    nop

jr_013_62E1:
    nop
    xor $60

jr_013_62E4:
    nop
    ld c, c
    sbc $62
    ld c, a
    rst $38
    nop
    nop
    push de
    ld h, b
    nop
    ld c, c
    add sp, $62
    ld c, a
    rst $38
    nop
    nop
    cp h
    ld h, b
    nop
    ld c, c
    ld a, [c]
    ld h, d
    ld c, [hl]
    inc bc
    inc de
    nop
    nop
    inc de
    ld h, e
    inc de
    inc bc
    nop
    ld a, [de]
    ld h, e
    inc de
    ld [bc], a
    nop
    jr z, @+$65

    inc de
    ld bc, $2100
    ld h, e
    rst $38
    inc d
    inc de
    xor h
    ld h, d
    ld h, l
    ld bc, $1412
    inc de
    or [hl]
    ld h, d
    ld h, l
    ld bc, $1412
    inc de
    ret nz

    ld h, d
    ld h, l
    ld bc, $1412
    inc de
    jp z, Jump_013_6562

    ld bc, $0012
    nop
    dec b
    inc b
    nop
    ld hl, sp+$04
    inc b
    ld hl, sp+$00
    inc bc
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    ldh a, [rP1]
    ld bc, $F000
    ld hl, sp+$00
    nop
    add b
    nop

jr_013_6349:
    ld hl, sp+$05
    inc h
    nop

jr_013_634D:
    nop
    inc b
    inc h
    ld hl, sp-$08
    inc bc
    jr nz, jr_013_634D

    nop
    ld [bc], a
    jr nz, jr_013_6349

    ld hl, sp+$01
    jr nz, jr_013_634D

    nop
    nop
    jr nz, jr_013_62E1

    nop
    nop
    dec bc
    inc b
    nop
    ld hl, sp+$0A
    inc b
    ld hl, sp+$00
    add hl, bc
    nop
    ld hl, sp-$08
    ld [$F000], sp
    nop
    rlca
    nop
    ldh a, [$F8]

jr_013_6377:
    ld b, $00
    add b
    nop
    ld hl, sp+$0B
    inc h
    nop

jr_013_637F:
    nop
    ld a, [bc]
    inc h
    ld hl, sp-$08
    add hl, bc
    jr nz, jr_013_637F

    nop
    ld [$F020], sp
    ld hl, sp+$07
    jr nz, jr_013_637F

    nop
    ld b, $20
    add b
    nop
    nop
    ld de, $0004
    ld hl, sp+$10
    inc b
    ld hl, sp+$00
    rrca
    nop
    ld hl, sp-$08
    ld c, $00
    pop af
    nop
    dec c
    nop
    pop af
    ld hl, sp+$0C
    nop
    add b
    nop
    ld sp, hl
    inc de
    inc h
    nop

jr_013_63B1:
    nop
    inc de
    inc b
    ld hl, sp-$08
    ld [de], a
    jr nz, jr_013_63B1

    nop
    ld [de], a
    nop
    ldh a, [rP1]
    dec c
    nop
    ldh a, [$F8]
    inc c
    nop
    add b
    nop
    ld hl, sp+$11
    inc h
    nop

jr_013_63CA:
    nop
    db $10
    inc h
    ld hl, sp-$08
    rrca
    jr nz, jr_013_63CA

    nop
    ld c, $20
    pop af
    nop
    dec c
    nop
    pop af
    ld hl, sp+$0C
    nop
    add b
    nop
    nop
    jr jr_013_63E6

    nop
    ld hl, sp+$17
    inc b

jr_013_63E6:
    ld hl, sp+$00
    ld d, $00
    ld hl, sp-$08
    dec d
    nop
    pop af
    nop
    inc d
    nop
    pop af
    ld hl, sp+$14
    jr nz, jr_013_6377

    nop
    ld sp, hl
    ld a, [de]
    inc h
    nop

jr_013_63FC:
    nop
    ld a, [de]
    inc b
    ld hl, sp-$08
    add hl, de
    jr nz, jr_013_63FC

    nop
    add hl, de
    nop
    ldh a, [$F8]
    inc d
    jr nz, jr_013_63FC

    nop

jr_013_640D:
    inc d
    nop
    add b
    nop
    ld sp, hl

jr_013_6412:
    jr jr_013_6438

    nop
    ld bc, $2417
    ld hl, sp-$08
    ld d, $20
    ld hl, sp+$00
    dec d
    jr nz, jr_013_6412

    nop
    inc d
    nop
    pop af
    ld hl, sp+$14
    jr nz, @-$7E

    nop
    nop
    jr nz, jr_013_6431

    nop
    ld hl, sp+$1F
    inc b

jr_013_6431:
    ld hl, sp+$00
    ld e, $00
    ld hl, sp-$08
    dec e

jr_013_6438:
    nop
    pop af
    nop
    inc e
    nop
    pop af
    ld hl, sp+$1B
    nop
    add b
    nop
    nop
    inc h
    inc b
    nop
    ld hl, sp+$23
    inc b
    ld hl, sp+$00
    ld [hl+], a
    nop
    ld hl, sp-$08
    ld hl, $F000
    nop
    inc e
    nop
    ldh a, [$F8]
    dec de
    nop
    add b
    nop
    nop
    jr z, jr_013_6463

    nop
    ld hl, sp+$27
    inc b

jr_013_6463:
    ld hl, sp+$00
    ld h, $00
    ld hl, sp-$08
    dec h
    nop
    pop af
    nop
    inc e
    nop
    pop af
    ld hl, sp+$1B
    nop
    add b
    nop
    ld hl, sp+$20
    inc h
    nop
    nop

jr_013_647A:
    rra
    inc h
    ld hl, sp-$08
    ld e, $20
    ld hl, sp+$00
    dec e
    jr nz, @-$0D

    ld hl, sp+$1C
    jr nz, jr_013_647A

    nop
    dec de
    jr nz, jr_013_640D

    nop
    ld hl, sp+$24
    inc h
    nop

jr_013_6492:
    nop
    inc hl
    inc h
    ld hl, sp-$08
    ld [hl+], a
    jr nz, jr_013_6492

    nop
    ld hl, $F020
    ld hl, sp+$1C
    jr nz, jr_013_6492

    nop
    dec de
    jr nz, @-$7E

    nop
    ld hl, sp+$28
    inc h
    nop
    nop

jr_013_64AC:
    daa
    inc h
    ld hl, sp-$08
    ld h, $20
    ld hl, sp+$00
    dec h
    jr nz, @-$0D

    ld hl, sp+$1C
    jr nz, jr_013_64AC

    nop
    dec de
    jr nz, @-$7E

    ld d, b
    ld [$0008], sp
    rst $38
    sbc $63
    rst $30
    ld h, e
    db $10
    ld h, h
    rst $30
    ld h, e
    ld c, c
    cp a
    ld h, h
    ld d, b
    ld [$0008], sp
    ld bc, $6393
    xor h
    ld h, e
    push bc
    ld h, e
    xor h
    ld h, e
    ld c, c
    rst $08
    ld h, h
    ld d, b
    ld [$FF08], sp
    nop
    ld [hl], h
    ld h, h
    adc l
    ld h, h
    and [hl]
    ld h, h
    adc l
    ld h, h
    ld c, c
    rst $18
    ld h, h
    ld d, b
    ld [$0108], sp
    nop
    add hl, hl
    ld h, h
    ld b, d
    ld h, h
    ld e, e
    ld h, h
    ld b, d
    ld h, h
    ld c, c
    rst $28
    ld h, h
    ld d, b
    ld [$0008], sp
    cp $DE
    ld h, e
    rst $30
    ld h, e
    db $10
    ld h, h
    rst $30
    ld h, e
    ld c, c
    rst $38
    ld h, h
    ld d, b
    ld [$0008], sp
    ld [bc], a
    sub e
    ld h, e
    xor h
    ld h, e
    push bc
    ld h, e
    xor h
    ld h, e
    ld c, c
    rrca
    ld h, l
    ld d, b
    ld [$FE08], sp
    nop
    ld [hl], h
    ld h, h
    adc l
    ld h, h
    and [hl]
    ld h, h
    adc l
    ld h, h
    ld c, c
    rra
    ld h, l
    ld d, b
    ld [$0208], sp
    nop
    add hl, hl
    ld h, h
    ld b, d
    ld h, h
    ld e, e
    ld h, h
    ld b, d
    ld h, h
    ld c, c
    cpl
    ld h, l
    ld c, a
    rst $38
    nop
    nop
    rst $30
    ld h, e
    nop
    ld c, c
    ccf
    ld h, l
    ld c, a
    rst $38
    nop
    nop
    xor h
    ld h, e
    nop
    ld c, c
    ld c, c
    ld h, l
    ld c, a
    rst $38
    nop
    nop

Jump_013_6557:
    adc l
    ld h, h
    nop
    ld c, c
    ld d, e
    ld h, l
    ld c, a
    rst $38
    nop
    nop
    ld b, d

Jump_013_6562:
    ld h, h
    nop
    ld c, c
    ld e, l
    ld h, l
    ld c, a
    rst $38
    nop
    nop
    ld a, d
    ld h, e
    nop
    ld c, c

Call_013_656F:
Jump_013_656F:
    ld h, a
    ld h, l
    ld c, a
    rst $38
    nop
    nop
    ld h, c
    ld h, e
    nop
    ld c, c
    ld [hl], c
    ld h, l
    ld c, a
    rst $38
    nop
    nop
    ld c, b
    ld h, e
    nop
    ld c, c
    ld a, e

jr_013_6584:
    ld h, l
    ld c, a
    rst $38
    nop
    nop
    cpl
    ld h, e
    nop
    ld c, c
    add l
    ld h, l
    ld c, [hl]
    inc bc
    inc de
    nop
    nop
    and [hl]
    ld h, l
    inc de
    inc bc
    nop
    xor l
    ld h, l
    inc de
    ld [bc], a
    nop
    cp e
    ld h, l
    inc de
    ld bc, $B400
    ld h, l
    rst $38
    inc d
    inc de
    ccf
    ld h, l
    ld h, l
    ld bc, $1412
    inc de
    ld c, c
    ld h, l
    ld h, l
    ld bc, $1412
    inc de
    ld d, e
    ld h, l
    ld h, l
    ld bc, $1412
    inc de
    ld e, l
    ld h, l
    ld h, l
    ld bc, $F112
    nop
    rlca
    ld b, $F1
    ld hl, sp+$06
    ld b, $00
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
    ld bc, $F000
    ld hl, sp+$00
    nop
    add b
    pop af
    ld hl, sp+$07
    ld h, $F1
    nop
    ld b, $26
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
    ld bc, $F020
    nop
    nop
    jr nz, jr_013_6584

    ld a, [c]
    ld [bc], a
    dec c
    ld b, $F2
    ld a, [$060C]
    nop
    cp $0B
    ld [bc], a
    ld hl, sp-$03
    ld a, [bc]
    ld [bc], a
    ldh a, [rP1]
    add hl, bc
    nop
    ldh a, [$F8]
    ld [$8000], sp
    ld a, [c]
    rst $30
    dec c
    ld h, $F2

jr_013_6622:
    rst $38
    inc c
    ld h, $00
    ei
    dec bc
    ld [hl+], a
    ld hl, sp-$04
    ld a, [bc]
    ld [hl+], a
    ldh a, [$F9]
    add hl, bc
    jr nz, jr_013_6622

    ld bc, $2008
    add b
    pop af
    ld hl, sp+$0F
    ld h, $F1
    nop
    rrca
    ld b, $00
    db $FC

jr_013_6640:
    inc de
    ld [bc], a
    ld hl, sp+$00
    ld de, $F802
    ld hl, sp+$10
    ld [bc], a
    pop af
    ld hl, sp+$0E
    jr nz, jr_013_6640

jr_013_664F:
    nop
    ld c, $00
    add b
    ldh a, [$F8]
    rrca
    ld h, $F0
    nop
    rrca
    ld b, $00
    ld hl, sp+$15
    ld [hl+], a
    nop
    nop
    dec d
    ld [bc], a
    ld hl, sp-$08
    inc d
    ld [hl+], a
    ld hl, sp+$00
    inc d
    ld [bc], a
    ldh a, [rP1]
    ld c, $00
    ldh a, [$F8]
    ld c, $20
    add b
    pop af
    ld hl, sp+$0F
    ld h, $F1
    nop
    rrca
    ld b, $00
    db $FC

jr_013_667E:
    inc de
    ld [hl+], a
    ld hl, sp-$08
    ld de, $F822
    nop
    db $10
    ld [hl+], a
    pop af
    ld hl, sp+$0E
    jr nz, jr_013_667E

    nop
    ld c, $00
    add b
    ld a, [c]
    ld hl, sp+$1A
    ld h, $F2
    nop
    ld a, [de]
    ld b, $F1
    ld hl, sp+$19
    jr nz, @-$0D

    nop
    add hl, de
    nop
    nop
    db $FC
    jr jr_013_66A7

    ld hl, sp+$00

jr_013_66A7:
    rla
    ld [bc], a
    ld hl, sp-$08
    ld d, $02
    add b
    pop af
    nop
    ld a, [de]
    ld b, $F1
    ld hl, sp+$1A
    ld h, $00
    ld hl, sp+$1C
    ld [hl+], a
    nop
    nop
    inc e
    ld [bc], a
    ld hl, sp-$08
    dec de
    ld [hl+], a
    ld hl, sp+$00
    dec de
    ld [bc], a
    ldh a, [rP1]
    add hl, de
    nop
    ldh a, [$F8]
    add hl, de

jr_013_66CD:
    jr nz, jr_013_664F

    ld a, [c]
    ld hl, sp+$1A
    ld h, $F2
    nop
    ld a, [de]
    ld b, $F1
    ld hl, sp+$19
    jr nz, jr_013_66CD

    nop
    add hl, de
    nop
    nop
    db $FC
    jr jr_013_6705

    ld hl, sp-$08
    rla
    ld [hl+], a
    ld hl, sp+$00
    ld d, $22
    add b
    pop af
    inc bc
    jr nz, jr_013_66F6

    pop af
    ei
    rra
    ld b, $00
    nop

jr_013_66F6:
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

jr_013_6705:
    nop
    ld e, $00
    pop af
    ld hl, sp+$1D
    nop
    add b
    ldh a, [$03]
    jr nz, jr_013_6717

    ldh a, [$FB]
    rra
    ld b, $00
    db $FC

jr_013_6717:
    ld h, $02
    ld hl, sp-$04
    dec h
    ld [bc], a
    ldh a, [rP1]
    ld e, $00
    ldh a, [$F8]
    dec e
    nop
    add b
    pop af
    inc bc
    jr nz, jr_013_6730

    pop af
    ei
    rra
    ld b, $00
    nop

jr_013_6730:
    ld a, [hl+]
    ld [bc], a
    nop
    ld hl, sp+$29
    ld [bc], a
    ld hl, sp+$00
    jr z, jr_013_673C

    ld hl, sp-$08

jr_013_673C:
    daa
    ld [bc], a
    pop af
    nop
    ld e, $00
    pop af
    ld hl, sp+$1D
    nop
    add b
    pop af
    push af
    jr nz, jr_013_6771

    pop af
    db $FD
    rra
    ld h, $00
    ld hl, sp+$24
    ld [hl+], a
    nop
    nop

jr_013_6755:
    inc hl
    ld [hl+], a
    ld hl, sp-$08
    ld [hl+], a
    ld [hl+], a
    ld hl, sp+$00
    ld hl, $F122
    ld hl, sp+$1E
    jr nz, jr_013_6755

    nop
    dec e
    jr nz, @-$7E

    ldh a, [$F5]
    jr nz, @+$28

    ldh a, [$FD]
    rra
    ld h, $00

jr_013_6771:
    db $FC
    ld h, $22
    ld hl, sp-$04
    dec h
    ld [hl+], a
    ldh a, [$F8]
    ld e, $20
    ldh a, [rP1]
    dec e
    jr nz, @-$7E

    pop af
    push af
    jr nz, jr_013_67AB

    pop af
    db $FD
    rra
    ld h, $00
    ld hl, sp+$2A
    ld [hl+], a
    nop
    nop

jr_013_678F:
    add hl, hl
    ld [hl+], a
    ld hl, sp-$08
    jr z, @+$24

    ld hl, sp+$00
    daa
    ld [hl+], a
    pop af
    ld hl, sp+$1E
    jr nz, jr_013_678F

    nop
    dec e
    jr nz, @-$7E

    ld d, b
    ld [$0008], sp
    rst $38
    sub c
    ld h, [hl]
    xor [hl]
    ld h, [hl]

jr_013_67AB:
    rst $08
    ld h, [hl]
    xor [hl]
    ld h, [hl]
    ld c, c
    and d
    ld h, a
    ld d, b
    ld [$0008], sp
    ld bc, $6636
    ld d, e
    ld h, [hl]
    ld [hl], h
    ld h, [hl]
    ld d, e
    ld h, [hl]
    ld c, c
    or d
    ld h, a
    ld d, b
    ld [$FF08], sp
    nop
    ld b, a
    ld h, a
    ld l, b
    ld h, a
    add c
    ld h, a
    ld l, b
    ld h, a
    ld c, c
    jp nz, Jump_013_5067

    ld [$0108], sp
    nop
    db $EC
    ld h, [hl]
    dec c
    ld h, a
    ld h, $67
    dec c
    ld h, a
    ld c, c
    jp nc, Jump_013_5067

    ld [$0008], sp
    cp $91
    ld h, [hl]
    xor [hl]
    ld h, [hl]
    rst $08
    ld h, [hl]
    xor [hl]
    ld h, [hl]
    ld c, c
    ld [c], a
    ld h, a
    ld d, b
    ld [$0008], sp
    ld [bc], a
    ld [hl], $66
    ld d, e
    ld h, [hl]
    ld [hl], h
    ld h, [hl]
    ld d, e
    ld h, [hl]
    ld c, c
    ld a, [c]
    ld h, a
    ld d, b
    ld [$FE08], sp
    nop
    ld b, a
    ld h, a
    ld l, b
    ld h, a
    add c
    ld h, a
    ld l, b
    ld h, a
    ld c, c
    ld [bc], a
    ld l, b
    ld d, b
    ld [$0208], sp
    nop
    db $EC
    ld h, [hl]
    dec c
    ld h, a
    ld h, $67
    dec c
    ld h, a
    ld c, c
    ld [de], a
    ld l, b
    ld c, a
    rst $38
    nop
    nop
    xor [hl]
    ld h, [hl]
    nop
    ld c, c
    ld [hl+], a
    ld l, b
    ld c, a
    rst $38
    nop
    nop
    ld d, e
    ld h, [hl]
    nop
    ld c, c
    inc l
    ld l, b
    ld c, a
    rst $38
    nop
    nop
    ld l, b
    ld h, a
    nop
    ld c, c
    ld [hl], $68
    ld c, a
    rst $38
    nop
    nop
    dec c
    ld h, a
    nop
    ld c, c
    ld b, b
    ld l, b
    ld c, a
    rst $38
    nop
    nop
    dec e
    ld h, [hl]
    nop
    ld c, c
    ld c, d
    ld l, b
    ld c, a
    rst $38
    nop
    nop
    inc b
    ld h, [hl]
    nop
    ld c, c
    ld d, h
    ld l, b
    ld c, a
    rst $38
    nop
    nop
    db $E3
    ld h, l
    nop
    ld c, c
    ld e, [hl]
    ld l, b
    ld c, a
    rst $38
    nop
    nop
    jp nz, $0065

    ld c, c
    ld l, b
    ld l, b
    ld c, [hl]
    inc bc
    inc de
    nop
    nop
    adc c
    ld l, b
    inc de
    inc bc
    nop
    sub b
    ld l, b
    inc de
    ld [bc], a
    nop
    sbc [hl]
    ld l, b
    inc de
    ld bc, $9700
    ld l, b
    rst $38
    inc d
    inc de
    ld [hl+], a
    ld l, b
    ld h, l
    ld bc, $1412
    inc de
    inc l
    ld l, b
    ld h, l
    ld bc, $1412
    inc de
    ld [hl], $68
    ld h, l
    ld bc, $1412
    inc de
    ld b, b
    ld l, b
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
    ld bc, $F001
    ld hl, sp+$00
    ld bc, $0080
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
    ld bc, $F021
    nop
    nop
    ld hl, $0080
    cp $09
    inc b
    ld hl, sp-$03
    ld [$F001], sp
    nop
    rlca
    ld bc, $F8F0
    ld b, $01
    add b
    nop
    ei
    add hl, bc
    inc h
    ld hl, sp-$04
    ld [$F021], sp
    ld sp, hl
    rlca
    ld hl, $01F0
    ld b, $21
    add b
    nop
    db $FC
    ld c, $04
    ld hl, sp+$00
    dec c
    ld bc, $F8F8
    inc c
    ld bc, $00F1
    dec bc
    ld bc, $F8F1
    ld a, [bc]
    ld bc, $0080
    nop
    db $10
    inc b
    nop
    ld sp, hl
    db $10
    inc h
    ld hl, sp-$08
    rrca
    ld hl, $00F8
    rrca
    ld bc, $00F0
    dec bc
    ld bc, $F8F0
    ld a, [bc]
    ld bc, $0080
    db $FC
    ld c, $24
    ld hl, sp-$08
    dec c
    ld hl, $00F8
    inc c

jr_013_6932:
    ld hl, $00F1
    dec bc
    ld bc, $F8F1
    ld a, [bc]
    ld bc, $F180
    ld hl, sp+$14
    jr nz, jr_013_6932

    nop
    inc d
    nop
    nop
    db $FD
    inc de
    inc b
    ld hl, sp+$00
    ld [de], a
    ld bc, $F8F8
    ld de, $8001
    nop
    nop
    ld d, $04
    ld hl, sp+$00
    dec d
    ld bc, $F900
    ld d, $24
    ld hl, sp-$08
    dec d

jr_013_6960:
    ld hl, $F8F0
    inc d
    jr nz, @-$0E

    nop
    inc d
    nop
    add b
    pop af
    ld hl, sp+$14
    jr nz, jr_013_6960

    nop
    inc d
    nop
    nop
    ei
    inc de
    inc h
    ld hl, sp-$08
    ld [de], a
    ld hl, $00F8
    ld de, $8021
    nop
    nop
    inc e
    inc b
    nop
    ld hl, sp+$1B
    inc b
    ld hl, sp+$00
    ld a, [de]
    ld bc, $F8F8
    add hl, de
    ld bc, $00F1
    jr jr_013_6994

    pop af

jr_013_6994:
    ld hl, sp+$17
    ld bc, $0080
    nop
    rra
    inc b
    nop
    ld hl, sp+$1E
    inc b
    ld hl, sp-$04
    dec e
    ld bc, $00F0
    jr @+$03

    ldh a, [$F8]
    rla
    ld bc, $0080
    nop
    inc hl
    inc b
    nop
    ld hl, sp+$22
    inc b
    ld hl, sp+$00
    ld hl, $F801
    ld hl, sp+$20
    ld bc, $00F1
    jr jr_013_69C2

    pop af

jr_013_69C2:
    ld hl, sp+$17
    ld bc, $0080
    ld hl, sp+$1C
    inc h
    nop
    nop
    dec de
    inc h
    ld hl, sp-$08
    ld a, [de]
    ld hl, $00F8
    add hl, de
    ld hl, $F8F1
    jr jr_013_69FB

    pop af
    nop
    rla
    ld hl, $0080
    ld hl, sp+$1F
    inc h
    nop
    nop
    ld e, $24
    ld hl, sp-$04
    dec e
    ld hl, $F8F0
    jr @+$23

    ldh a, [rP1]
    rla
    ld hl, $0080
    ld hl, sp+$23
    inc h
    nop
    nop
    ld [hl+], a

jr_013_69FB:
    inc h
    ld hl, sp-$08
    ld hl, $F821
    nop
    jr nz, @+$23

    pop af
    ld hl, sp+$18
    ld hl, $00F1
    rla
    ld hl, $5080
    ld [$0008], sp
    rst $38
    inc a
    ld l, c
    ld d, c
    ld l, c
    ld l, d
    ld l, c
    ld d, c
    ld l, c
    ld c, c
    dec c
    ld l, d
    ld d, b
    ld [$0008], sp
    ld bc, $68F9
    ld c, $69
    daa
    ld l, c
    ld c, $69
    ld c, c
    dec e
    ld l, d
    ld d, b
    ld [$FF08], sp
    nop
    add $69
    rst $18
    ld l, c
    db $F4
    ld l, c
    rst $18
    ld l, c
    ld c, c
    dec l
    ld l, d
    ld d, b
    ld [$0108], sp
    nop
    ld a, a
    ld l, c
    sbc b
    ld l, c
    xor l
    ld l, c
    sbc b
    ld l, c
    ld c, c
    dec a
    ld l, d
    ld d, b
    ld [$0008], sp
    cp $3C
    ld l, c
    ld d, c
    ld l, c
    ld l, d
    ld l, c
    ld d, c
    ld l, c
    ld c, c
    ld c, l
    ld l, d
    ld d, b
    ld [$0008], sp
    ld [bc], a
    ld sp, hl
    ld l, b
    ld c, $69
    daa
    ld l, c
    ld c, $69
    ld c, c
    ld e, l
    ld l, d
    ld d, b
    ld [$FE08], sp
    nop
    add $69
    rst $18
    ld l, c
    db $F4
    ld l, c
    rst $18
    ld l, c
    ld c, c
    ld l, l
    ld l, d
    ld d, b
    ld [$0208], sp
    nop
    ld a, a
    ld l, c
    sbc b
    ld l, c
    xor l
    ld l, c
    sbc b
    ld l, c
    ld c, c
    ld a, l
    ld l, d
    ld c, a
    rst $38
    nop
    nop
    ld d, c
    ld l, c
    nop
    ld c, c
    adc l
    ld l, d
    ld c, a
    rst $38
    nop
    nop
    ld c, $69
    nop
    ld c, c
    sub a
    ld l, d
    ld c, a
    rst $38
    nop
    nop
    rst $18
    ld l, c
    nop
    ld c, c
    and c
    ld l, d
    ld c, a
    rst $38
    nop
    nop
    sbc b
    ld l, c
    nop
    ld c, c
    xor e
    ld l, d
    ld c, a
    rst $38
    nop
    nop
    add sp, $68
    nop
    ld c, c
    or l
    ld l, d
    ld c, a
    rst $38
    nop
    nop
    rst $10
    ld l, b
    nop
    ld c, c
    cp a
    ld l, d
    ld c, a
    rst $38
    nop
    nop
    cp [hl]
    ld l, b
    nop
    ld c, c
    ret


    ld l, d
    ld c, a
    rst $38
    nop
    nop
    and l
    ld l, b
    nop
    ld c, c
    db $D3
    ld l, d
    ld c, [hl]
    inc bc
    inc de
    nop
    nop
    db $F4
    ld l, d
    inc de
    inc bc
    nop
    ei
    ld l, d
    inc de
    ld [bc], a
    nop
    add hl, bc
    ld l, e
    inc de
    ld bc, $0200
    ld l, e
    rst $38
    inc d
    inc de
    adc l
    ld l, d
    ld h, l
    ld bc, $1412
    inc de
    sub a
    ld l, d
    ld h, l
    ld bc, $1412
    inc de
    and c
    ld l, d
    ld h, l
    ld bc, $1412
    inc de
    xor e
    ld l, d
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
    ld de, $0006
    ld hl, sp+$10
    ld b, $F8
    nop
    rrca
    ld bc, $F8F8
    ld c, $01
    pop af
    nop
    dec c
    ld bc, $F8F1
    inc c
    ld bc, $0080
    nop
    inc de
    ld b, $00
    ld sp, hl
    inc de
    ld h, $F8
    nop
    ld [de], a
    ld bc, $F8F8
    ld [de], a
    ld hl, $00F0
    dec c
    ld bc, $F8F0
    inc c
    ld bc, $0080
    ld hl, sp+$11
    ld h, $00
    nop
    db $10
    ld h, $F8
    ld hl, sp+$0F
    ld hl, $00F8
    ld c, $21
    pop af
    nop
    dec c
    ld bc, $F8F1
    inc c
    ld bc, $F880
    nop
    dec d
    ld bc, $F8F8
    inc d
    ld bc, $0100
    rla
    ld b, $00
    ld sp, hl
    ld d, $06
    pop af
    nop
    add hl, de
    ld bc, $F8F1
    jr jr_013_6BD8

    add b

jr_013_6BD8:
    nop
    ld sp, hl
    dec de
    ld h, $00
    nop
    dec de
    ld b, $F8
    ld hl, sp+$1A
    ld hl, $00F8
    ld a, [de]
    ld bc, $00F0
    add hl, de
    ld bc, $F8F0
    jr jr_013_6BF1

    add b

jr_013_6BF1:
    ld hl, sp-$08
    dec d
    ld hl, $00F8
    inc d
    ld hl, $F800
    rla
    ld h, $00
    nop
    ld d, $26
    pop af
    nop
    add hl, de
    ld bc, $F8F1
    jr jr_013_6C0A

    add b

jr_013_6C0A:
    nop
    nop
    ld hl, $0006
    ld hl, sp+$20
    ld b, $F8
    nop
    rra
    ld bc, $F8F8
    ld e, $01
    pop af
    nop
    dec e
    ld bc, $F8F1
    inc e
    ld bc, $0080
    nop
    dec h
    ld b, $00
    ld hl, sp+$24
    ld b, $F0
    nop
    dec e
    ld bc, $F8F0
    inc e
    ld bc, $00F8
    inc hl
    ld bc, $F8F8
    ld [hl+], a
    ld bc, $0080
    nop
    add hl, hl
    ld b, $00
    ld hl, sp+$28
    ld b, $F8
    nop
    daa
    ld bc, $F8F8
    ld h, $01
    pop af
    nop
    dec e
    ld bc, $F8F1
    inc e
    ld bc, $0080
    ld hl, sp+$21
    ld h, $00
    nop
    jr nz, @+$28

    ld hl, sp-$08
    rra
    ld hl, $00F8
    ld e, $21
    pop af
    ld hl, sp+$1D
    ld hl, $00F1
    inc e
    ld hl, $0080
    ld hl, sp+$25
    ld h, $00
    nop
    inc h
    ld h, $F0
    ld hl, sp+$1D
    ld hl, $00F0
    inc e
    ld hl, $F8F8
    inc hl
    ld hl, $00F8
    ld [hl+], a
    ld hl, $0080
    ld hl, sp+$29
    ld h, $00
    nop
    jr z, @+$28

    ld hl, sp-$08
    daa
    ld hl, $00F8
    ld h, $21
    pop af
    ld hl, sp+$1D
    ld hl, $00F1
    inc e
    ld hl, $5080
    ld [$0008], sp
    rst $38
    cp a
    ld l, e
    ret c

    ld l, e
    pop af
    ld l, e
    ret c

    ld l, e
    ld c, c
    and b
    ld l, h
    ld d, b
    ld [$0008], sp
    ld bc, $6B74
    adc l
    ld l, e
    and [hl]
    ld l, e
    adc l
    ld l, e
    ld c, c
    or b
    ld l, h
    ld d, b
    ld [$FF08], sp
    nop
    ld d, l
    ld l, h
    ld l, [hl]
    ld l, h
    add a
    ld l, h
    ld l, [hl]
    ld l, h
    ld c, c
    ret nz

    ld l, h
    ld d, b
    ld [$0108], sp
    nop
    ld a, [bc]
    ld l, h
    inc hl
    ld l, h
    inc a
    ld l, h
    inc hl
    ld l, h
    ld c, c
    ret nc

    ld l, h
    ld d, b
    ld [$0008], sp
    cp $BF
    ld l, e
    ret c

    ld l, e
    pop af
    ld l, e
    ret c

    ld l, e
    ld c, c
    ldh [$6C], a
    ld d, b
    ld [$0008], sp
    ld [bc], a
    ld [hl], h
    ld l, e
    adc l
    ld l, e
    and [hl]
    ld l, e
    adc l
    ld l, e
    ld c, c
    ldh a, [$6C]
    ld d, b
    ld [$FE08], sp
    nop
    ld d, l
    ld l, h
    ld l, [hl]
    ld l, h
    add a
    ld l, h
    ld l, [hl]
    ld l, h
    ld c, c
    nop
    ld l, l
    ld d, b
    ld [$0208], sp
    nop
    ld a, [bc]
    ld l, h
    inc hl
    ld l, h
    inc a
    ld l, h
    inc hl
    ld l, h
    ld c, c
    db $10
    ld l, l
    ld c, a
    rst $38
    nop
    nop
    ret c

    ld l, e
    nop
    ld c, c
    jr nz, jr_013_6D97

    ld c, a
    rst $38
    nop
    nop
    adc l
    ld l, e
    nop
    ld c, c
    ld a, [hl+]
    ld l, l
    ld c, a
    rst $38
    nop
    nop
    ld l, [hl]
    ld l, h
    nop
    ld c, c
    inc [hl]
    ld l, l
    ld c, a
    rst $38
    nop
    nop
    inc hl
    ld l, h
    nop
    ld c, c
    ld a, $6D
    ld c, a
    rst $38
    nop
    nop
    ld e, e
    ld l, e
    nop
    ld c, c
    ld c, b
    ld l, l
    ld c, a
    rst $38
    nop
    nop
    ld b, d
    ld l, e
    nop
    ld c, c
    ld d, d
    ld l, l
    ld c, a
    rst $38
    nop
    nop
    add hl, hl
    ld l, e
    nop
    ld c, c
    ld e, h
    ld l, l
    ld c, a
    rst $38
    nop
    nop
    db $10
    ld l, e
    nop
    ld c, c
    ld h, [hl]
    ld l, l
    ld c, [hl]
    inc bc
    inc de
    nop
    nop
    add a
    ld l, l
    inc de
    inc bc
    nop
    sub d
    ld l, l
    inc de
    ld [bc], a
    nop
    xor b
    ld l, l
    inc de
    ld bc, $9D00
    ld l, l
    rst $38
    inc d
    inc de
    jr nz, jr_013_6DF8

    ld h, l
    ld bc, $31B3
    rst $00
    nop
    ld [de], a
    inc d
    inc de
    ld a, [hl+]
    ld l, l
    ld h, l

jr_013_6D97:
    ld bc, $31B3
    rst $00
    nop
    ld [de], a
    inc d
    inc de
    inc [hl]
    ld l, l
    ld h, l
    ld bc, $31B3
    rst $00
    nop
    ld [de], a
    inc d
    inc de
    ld a, $6D
    ld h, l
    ld bc, $31B3
    rst $00
    nop
    ld [de], a
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
    ldh a, [rP1]
    ld bc, $F003
    ld hl, sp+$00
    inc bc
    add b
    nop
    ld hl, sp+$05
    inc hl
    nop
    nop
    inc b
    inc hl
    ld hl, sp-$08
    inc bc
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
    dec bc
    inc bc
    nop
    ld hl, sp+$0A
    inc bc
    ld hl, sp+$00
    add hl, bc
    inc bc
    ld hl, sp-$08
    ld [$F003], sp
    nop
    rlca

jr_013_6DF8:
    inc bc
    ldh a, [$F8]
    ld b, $03
    add b
    nop
    ld hl, sp+$0B
    inc hl
    nop
    nop
    ld a, [bc]
    inc hl
    ld hl, sp-$08
    add hl, bc
    inc hl
    ld hl, sp+$00
    ld [$F023], sp
    ld hl, sp+$07
    inc hl
    ldh a, [rP1]
    ld b, $23
    add b
    nop
    nop
    rrca
    inc bc
    nop
    ld hl, sp+$0E
    inc bc
    pop af
    nop
    ld de, $F103
    ld hl, sp+$10
    inc bc
    ld hl, sp+$00
    dec c
    inc bc
    ld hl, sp-$08
    inc c
    inc bc
    add b
    nop
    nop
    inc de
    inc bc
    nop
    ld hl, sp+$13
    inc hl
    ld hl, sp-$08
    ld [de], a
    inc hl
    ld hl, sp+$00
    ld [de], a
    inc bc
    ldh a, [rP1]
    ld de, $F003
    ld hl, sp+$10
    inc bc
    add b
    nop
    ld hl, sp+$0F
    inc hl
    nop
    nop
    ld c, $23
    pop af
    ld hl, sp+$11
    inc hl
    pop af
    nop
    db $10
    inc hl
    ld hl, sp-$08
    dec c
    inc hl
    ld hl, sp+$00
    inc c
    inc hl
    add b
    ld hl, sp+$00
    dec d
    inc bc
    ld hl, sp-$08
    inc d
    inc bc
    nop
    rst $38
    rla
    inc bc
    nop
    ld hl, sp+$16
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
    ld sp, hl
    dec de
    inc hl
    nop
    rst $38
    dec de
    inc bc
    ld hl, sp+$00
    ld a, [de]
    inc bc
    ld hl, sp-$08
    ld a, [de]
    inc hl
    ldh a, [rP1]
    add hl, de
    inc bc
    ldh a, [$F8]
    jr jr_013_6E96

    add b
    ld hl, sp-$08

jr_013_6E96:
    dec d
    inc hl
    ld hl, sp+$00
    inc d
    inc hl
    nop
    ld sp, hl
    rla
    inc hl
    nop
    nop
    ld d, $23
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
    ld hl, $0003
    ld hl, sp+$20
    inc bc
    ld hl, sp+$00
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
    inc bc
    nop
    ld hl, sp+$24
    inc bc
    ld hl, sp+$00
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
    pop af
    nop
    dec e
    inc bc
    pop af
    ld hl, sp+$1C
    inc bc
    nop
    nop
    add hl, hl
    inc bc
    nop
    ld hl, sp+$28
    inc bc
    ld hl, sp+$00
    daa
    inc bc
    ld hl, sp-$08
    ld h, $03
    add b
    nop
    ld hl, sp+$21
    inc hl
    nop
    nop
    jr nz, jr_013_6F23

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
    inc hl
    nop
    nop
    inc h
    inc hl
    ld hl, sp-$08
    inc hl
    inc hl
    ld hl, sp+$00
    ld [hl+], a
    inc hl
    ldh a, [$F8]

jr_013_6F23:
    dec e
    inc hl
    ldh a, [rP1]
    inc e
    inc hl
    add b
    pop af
    ld hl, sp+$1D
    inc hl
    pop af
    nop
    inc e
    inc hl
    nop
    ld hl, sp+$29
    inc hl
    nop
    nop
    jr z, jr_013_6F5D

    ld hl, sp-$08
    daa
    inc hl
    ld hl, sp+$00
    ld h, $23
    add b
    ld d, b
    ld [$0008], sp
    rst $38
    ld h, d
    ld l, [hl]
    ld a, e
    ld l, [hl]
    sub h
    ld l, [hl]
    ld a, e
    ld l, [hl]
    ld c, c
    ld b, e
    ld l, a
    ld d, b
    ld [$0008], sp
    ld bc, $6E17
    jr nc, jr_013_6FCA

    ld c, c

jr_013_6F5D:
    ld l, [hl]
    jr nc, jr_013_6FCE

    ld c, c
    ld d, e
    ld l, a
    ld d, b
    ld [$FF08], sp
    nop
    ld hl, sp+$6E
    ld de, $2A6F
    ld l, a
    ld de, $496F
    ld h, e
    ld l, a
    ld d, b
    ld [$0108], sp
    nop
    xor l
    ld l, [hl]
    add $6E
    rst $18
    ld l, [hl]
    add $6E
    ld c, c
    ld [hl], e
    ld l, a
    ld d, b
    ld [$0008], sp
    cp $62
    ld l, [hl]
    ld a, e
    ld l, [hl]
    sub h
    ld l, [hl]
    ld a, e
    ld l, [hl]
    ld c, c
    add e
    ld l, a
    ld d, b
    ld [$0008], sp
    ld [bc], a
    rla
    ld l, [hl]
    jr nc, jr_013_700A

    ld c, c
    ld l, [hl]
    jr nc, jr_013_700E

    ld c, c
    sub e
    ld l, a
    ld d, b
    ld [$FE08], sp
    nop
    ld hl, sp+$6E
    ld de, $2A6F
    ld l, a
    ld de, $496F
    and e
    ld l, a
    ld d, b
    ld [$0208], sp
    nop
    xor l
    ld l, [hl]
    add $6E
    rst $18
    ld l, [hl]
    add $6E
    ld c, c
    or e
    ld l, a
    ld c, a
    rst $38
    nop
    nop
    ld a, e
    ld l, [hl]
    nop

jr_013_6FCA:
    ld c, c
    jp $4F6F


jr_013_6FCE:
    rst $38
    nop
    nop
    jr nc, jr_013_7041

    nop
    ld c, c
    call $4F6F
    rst $38
    nop
    nop
    ld de, $006F
    ld c, c
    rst $10
    ld l, a
    ld c, a
    rst $38
    nop
    nop
    add $6E
    nop
    ld c, c
    pop hl
    ld l, a
    ld c, a
    rst $38
    nop
    nop
    cp $6D
    nop
    ld c, c
    db $EB
    ld l, a
    ld c, a
    rst $38
    nop
    nop
    push hl
    ld l, l
    nop
    ld c, c
    push af
    ld l, a
    ld c, a
    rst $38
    nop
    nop
    call z, $006D
    ld c, c
    rst $38
    ld l, a
    ld c, a

jr_013_700A:
    rst $38
    nop
    nop
    or e

jr_013_700E:
    ld l, l
    nop
    ld c, c
    add hl, bc
    ld [hl], b
    ld c, [hl]
    inc bc
    inc de
    nop
    nop
    ld a, [hl+]
    ld [hl], b
    inc de
    inc bc
    nop
    ld sp, $1370
    ld [bc], a
    nop
    ccf
    ld [hl], b
    inc de
    ld bc, $3800
    ld [hl], b
    rst $38
    inc d
    inc de
    jp Jump_013_656F


    ld bc, $1412
    inc de
    call Call_013_656F
    ld bc, $1412
    inc de
    rst $10
    ld l, a
    ld h, l
    ld bc, $1412
    inc de

jr_013_7041:
    pop hl
    ld l, a
    ld h, l
    ld bc, $0012
    ld [bc], a
    dec b
    ld bc, $FA00
    inc b
    ld bc, $00F8
    inc bc
    ld bc, $F8F8
    ld [bc], a
    ld bc, $00F0
    ld bc, $F001
    ld hl, sp+$00
    ld bc, $0080
    cp $06
    ld bc, $F600
    dec b
    ld hl, $F8F8
    inc bc
    ld hl, $00F8
    ld [bc], a
    ld hl, $F8F0
    ld bc, $F021
    nop
    nop
    ld hl, $0080
    cp $0B
    ld bc, $00F8
    ld a, [bc]
    ld bc, $F8F8
    add hl, bc
    ld bc, $00F0
    ld [$F001], sp
    ld hl, sp+$07
    ld bc, $0080
    ei
    inc c
    ld bc, $F9F8
    ld a, [bc]
    ld hl, $01F8
    add hl, bc
    ld hl, $F9F0
    ld [$F021], sp
    ld bc, $2107
    add b
    nop
    db $FC
    ld de, $F801
    nop
    db $10
    ld bc, $F8F8
    rrca
    ld bc, $00F1
    ld c, $01
    pop af
    ld hl, sp+$0D
    ld bc, $0080
    nop
    inc d
    ld bc, $F800
    inc de
    ld bc, $F8F8
    ld [de], a
    ld hl, $00F8
    ld [de], a
    ld bc, $00F0
    ld c, $01
    ldh a, [$F8]
    dec c
    ld bc, $0080
    db $FC
    dec d
    ld bc, $F8F8
    db $10
    ld hl, $00F8
    rrca
    ld hl, $00F1
    ld c, $01
    pop af
    ld hl, sp+$0D
    ld bc, $0080
    db $FC
    add hl, de
    ld bc, $00F8
    jr @+$03

    ld hl, sp-$08
    rla
    ld bc, $F8F1
    ld d, $21
    pop af
    nop
    ld d, $01
    add b
    nop
    nop
    inc e
    ld bc, $F800
    dec de
    ld bc, $F8F8
    ld a, [de]
    ld hl, $00F8
    ld a, [de]
    ld bc, $F8F0
    ld d, $21
    ldh a, [rP1]
    ld d, $01
    add b
    nop
    db $FC
    dec e
    ld bc, $F8F8
    jr @+$23

    ld hl, sp+$00
    rla
    ld hl, $F8F1
    ld d, $21
    pop af
    nop
    ld d, $01
    add b
    nop
    nop
    inc hl
    ld bc, $F800
    ld [hl+], a
    ld bc, $00F8
    ld hl, $F801
    ld hl, sp+$20
    ld bc, $00F1
    rra
    ld bc, $F8F1
    ld e, $01
    add b
    nop
    cp $26
    ld bc, $00F8
    dec h
    ld bc, $F8F8
    inc h
    ld bc, $00F0
    rra
    ld bc, $F8F0
    ld e, $01
    add b
    nop
    nop
    ld a, [hl+]
    ld bc, $F800
    add hl, hl
    ld bc, $00F8
    jr z, @+$03

    ld hl, sp-$08
    daa
    ld bc, $00F1
    rra
    ld bc, $F8F1
    ld e, $01
    add b
    nop
    nop
    cpl
    ld bc, $F800
    ld l, $01
    ld hl, sp-$08
    ld hl, $F821
    nop
    jr nz, jr_013_71A0

    pop af
    ld hl, sp+$1F
    ld hl, $00F1
    ld e, $21
    add b
    nop
    ld sp, hl
    dec l
    ld bc, $F8F8
    dec h
    ld hl, $00F8
    inc h
    ld hl, $F8F0
    rra
    ld hl, $00F0
    ld e, $21
    add b
    nop
    nop
    inc l

jr_013_71A0:
    ld bc, $F800
    dec hl
    ld bc, $F8F8
    jr z, jr_013_71CA

    ld hl, sp+$00
    daa
    ld hl, $F8F1
    rra
    ld hl, $00F1
    ld e, $21
    add b
    ld d, b
    ld [$0008], sp
    rst $38
    push hl
    ld [hl], b
    ld a, [$1370]
    ld [hl], c
    ld a, [$4970]
    or [hl]
    ld [hl], c
    ld d, b
    ld [$0008], sp

jr_013_71CA:
    ld bc, $70A2
    or a
    ld [hl], b
    ret nc

    ld [hl], b
    or a
    ld [hl], b
    ld c, c
    add $71
    ld d, b
    ld [$FF08], sp
    nop
    ld l, a
    ld [hl], c
    adc b
    ld [hl], c
    sbc l
    ld [hl], c
    adc b
    ld [hl], c
    ld c, c
    sub $71
    ld d, b
    ld [$0108], sp
    nop
    jr z, jr_013_725E

    ld b, c
    ld [hl], c
    ld d, [hl]
    ld [hl], c
    ld b, c
    ld [hl], c
    ld c, c
    and $71
    ld d, b
    ld [$0008], sp
    cp $E5
    ld [hl], b
    ld a, [$1370]
    ld [hl], c
    ld a, [$4970]
    or $71
    ld d, b
    ld [$0008], sp
    ld [bc], a
    and d
    ld [hl], b
    or a
    ld [hl], b
    ret nc

    ld [hl], b
    or a
    ld [hl], b
    ld c, c
    ld b, $72
    ld d, b
    ld [$FE08], sp
    nop
    ld l, a
    ld [hl], c
    adc b
    ld [hl], c
    sbc l
    ld [hl], c
    adc b
    ld [hl], c
    ld c, c
    ld d, $72
    ld d, b
    ld [$0208], sp
    nop
    jr z, jr_013_729E

    ld b, c
    ld [hl], c
    ld d, [hl]
    ld [hl], c
    ld b, c
    ld [hl], c
    ld c, c
    ld h, $72
    ld c, a
    rst $38
    nop
    nop
    ld a, [$0070]
    ld c, c
    ld [hl], $72
    ld c, a
    rst $38
    nop
    nop
    or a
    ld [hl], b
    nop
    ld c, c
    ld b, b
    ld [hl], d
    ld c, a
    rst $38
    nop
    nop
    adc b
    ld [hl], c
    nop
    ld c, c
    ld c, d
    ld [hl], d
    ld c, a
    rst $38
    nop
    nop
    ld b, c
    ld [hl], c
    nop
    ld c, c
    ld d, h
    ld [hl], d

jr_013_725E:
    ld c, a
    rst $38
    nop
    nop
    adc l
    ld [hl], b
    nop
    ld c, c
    ld e, [hl]
    ld [hl], d
    ld c, a
    rst $38
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    ld c, c
    ld l, b
    ld [hl], d
    ld c, a
    rst $38
    nop
    nop
    ld e, a
    ld [hl], b
    nop
    ld c, c
    ld [hl], d
    ld [hl], d
    ld c, a
    rst $38
    nop
    nop
    ld b, [hl]
    ld [hl], b
    nop
    ld c, c
    ld a, h
    ld [hl], d
    ld c, [hl]
    inc bc
    inc de
    nop
    nop
    sbc l
    ld [hl], d
    inc de
    inc bc
    nop
    and h
    ld [hl], d
    inc de
    ld [bc], a
    nop
    or d
    ld [hl], d
    inc de
    ld bc, $AB00
    ld [hl], d
    rst $38
    inc d

jr_013_729E:
    inc de
    ld [hl], $72
    ld h, l
    ld bc, $1412
    inc de
    ld b, b
    ld [hl], d
    ld h, l
    ld bc, $1412
    inc de
    ld c, d
    ld [hl], d
    ld h, l
    ld bc, $1412
    inc de
    ld d, h
    ld [hl], d
    ld h, l
    ld bc, $0012
    db $FC
    nop
    rlca
    add b
    nop
    db $FC
    nop
    ld [bc], a
    add b
    nop
    db $FC
    nop
    inc bc
    add b
    nop
    db $FC
    nop
    inc b
    add b
    nop
    db $FC
    nop
    ld b, $80
    ld c, a
    ld h, b
    nop
    nop
    cp c
    ld [hl], d
    nop
    ld d, b
    ld c, $02
    nop
    nop
    cp [hl]
    ld [hl], d
    jp $C872


    ld [hl], d
    call $C872
    ld [hl], d
    jp $BE72


    ld [hl], d
    ld c, c
    jp nc, Jump_013_4F72

    ld h, b
    nop
    db $FD
    cp c
    ld [hl], d
    nop
    ld c, c
    rst $28
    ld [hl], d
    ld c, a
    ld a, [bc]
    db $FC
    nop
    cp c
    ld [hl], d
    ld [bc], a
    db $FD
    nop
    cp c
    ld [hl], d
    ld [bc], a
    db $FD
    ld bc, $72B9
    ld [bc], a
    cp $01
    cp c
    ld [hl], d
    ld [bc], a
    rst $38
    ld bc, $72B9
    ld [bc], a
    rst $38
    ld [bc], a
    cp c
    ld [hl], d
    ld [bc], a
    nop
    inc bc
    cp c
    ld [hl], d
    ld [bc], a
    rst $38
    cp $B9
    ld [hl], d
    ld [bc], a
    rst $38
    rst $38
    cp c
    ld [hl], d
    ld [bc], a
    rst $38
    ld bc, $72B9
    ld [bc], a
    rst $38
    ld [bc], a
    cp c
    ld [hl], d
    ld [bc], a
    rst $38
    inc bc
    cp c
    ld [hl], d
    nop
    ld c, c
    jp nc, Jump_013_5272

    ld h, b
    nop
    nop
    cp c
    ld [hl], d
    ld [bc], a
    nop
    nop
    cp [hl]
    ld [hl], d
    ld [bc], a
    nop
    nop
    jp $0272


    nop
    nop
    ret z

    ld [hl], d
    ld [bc], a
    nop
    nop
    call $0272
    nop
    nop
    ret z

    ld [hl], d
    ld [bc], a
    nop
    nop
    jp $0272


    nop
    nop
    cp [hl]
    ld [hl], d
    nop
    ld c, c
    ld a, [hl-]
    ld [hl], e
    nop
    nop
    add hl, bc
    dec b
    nop

jr_013_736C:
    ld hl, sp+$08
    dec b
    ld hl, sp-$10
    rlca
    jr nz, jr_013_736C

    ld [$0007], sp
    ld hl, sp-$08
    ld b, $20
    ld hl, sp+$00
    ld b, $00
    ld hl, sp-$08
    dec b

jr_013_7382:
    daa
    ld hl, sp+$00
    dec b
    rlca
    ld a, [c]
    add sp, $04
    jr nz, @-$0E

jr_013_738C:
    ldh a, [$03]
    jr nz, jr_013_7382

    db $10
    inc b
    nop
    ldh a, [$08]
    inc bc
    nop
    ldh a, [$F8]
    ld [bc], a
    jr nz, jr_013_738C

    nop
    ld [bc], a
    nop
    ldh a, [rP1]
    ld bc, $F007
    ld hl, sp+$00
    rlca
    add b
    nop
    nop
    add hl, bc
    dec b
    nop
    ld hl, sp+$08
    dec b
    ld hl, sp-$10
    ld de, $F820
    ld hl, sp+$10
    jr nz, @-$06

    ld [$0011], sp
    ld hl, sp+$00
    stop
    ld hl, sp-$08
    rrca
    daa
    ld hl, sp+$00
    rrca
    rlca
    push af
    add sp, $0E
    jr nz, @-$0E

jr_013_73CD:
    ldh a, [$0D]
    jr nz, @-$0A

    db $10
    ld c, $00
    ldh a, [$08]
    dec c
    nop
    ldh a, [$F8]
    inc c
    jr nz, jr_013_73CD

    nop
    inc c
    nop
    ldh a, [rP1]
    dec bc
    rlca
    ldh a, [$F8]
    ld a, [bc]
    rlca
    add b
    nop
    nop
    add hl, bc
    dec b
    nop

jr_013_73EE:
    ld hl, sp+$08
    dec b
    ld hl, sp-$18
    add hl, de
    jr nz, jr_013_73EE

jr_013_73F6:
    ldh a, [rNR23]
    jr nz, @-$06

    ld hl, sp+$17
    jr nz, jr_013_73F6

jr_013_73FE:
    db $10
    add hl, de
    nop
    ld hl, sp+$08
    jr jr_013_7405

jr_013_7405:
    ld hl, sp+$00
    rla
    nop
    ldh a, [$F0]
    dec d
    jr nz, jr_013_73FE

    ld hl, sp+$14
    jr nz, @-$0E

    ld [$0015], sp
    ldh a, [rP1]
    inc d
    nop
    ld hl, sp+$00
    ld d, $07
    ld hl, sp-$08
    ld d, $27
    ldh a, [rP1]
    inc de
    rlca
    ldh a, [$F8]

jr_013_7427:
    ld [de], a
    rlca
    add b
    ld hl, sp-$10
    rlca

jr_013_742D:
    jr nz, jr_013_7427

    ld [$0007], sp
    ld a, [c]
    add sp, $04
    jr nz, jr_013_7427

    ldh a, [$03]
    jr nz, jr_013_742D

    db $10
    inc b
    nop
    ldh a, [$08]
    inc bc
    nop
    ld hl, sp-$08
    inc e
    daa
    ld hl, sp+$00
    inc e
    rlca
    ld hl, sp-$08
    ld e, $20
    ld hl, sp+$00
    ld e, $00
    ldh a, [rP1]
    dec e
    jr nz, @-$0E

    ld hl, sp+$1D
    nop
    nop
    nop
    jr nz, @+$07

    nop
    ld hl, sp+$1F
    dec b
    ldh a, [rP1]
    dec de
    rlca
    ldh a, [$F8]

jr_013_7468:
    ld a, [de]
    rlca
    add b
    ld hl, sp-$10
    ld de, $F820
    ld [$0011], sp
    push af
    add sp, $0E
    jr nz, jr_013_7468

    ldh a, [$0D]
    jr nz, @-$09

    db $10
    ld c, $00
    ldh a, [$08]
    dec c
    nop
    ld hl, sp-$08
    dec h
    jr nz, @-$06

    nop
    dec h
    nop
    ld hl, sp-$08
    inc h
    daa
    ld hl, sp+$00
    inc h
    rlca
    ldh a, [$F8]
    inc hl
    nop
    ldh a, [rP1]
    inc hl
    jr nz, @-$0E

    nop
    ld [hl+], a
    rlca
    ldh a, [$F8]

jr_013_74A1:
    ld hl, $0007
    nop
    jr nz, jr_013_74AC

    nop
    ld hl, sp+$1F
    dec b
    add b

jr_013_74AC:
    ldh a, [$F0]
    dec d
    jr nz, jr_013_74A1

jr_013_74B1:
    ld [$0015], sp
    ld hl, sp-$18
    add hl, de
    jr nz, jr_013_74B1

    ldh a, [rNR23]
    jr nz, @-$06

    db $10
    add hl, de
    nop
    ld hl, sp+$08
    jr jr_013_74C4

jr_013_74C4:
    nop
    nop
    jr nz, @+$07

    nop

jr_013_74C9:
    ld hl, sp+$1F
    dec b
    ld hl, sp-$08
    add hl, hl
    jr nz, jr_013_74C9

    nop
    add hl, hl
    nop
    ldh a, [$F8]
    jr z, @+$22

    ldh a, [rP1]
    jr z, jr_013_74DC

jr_013_74DC:
    ldh a, [rP1]
    daa
    rlca
    ldh a, [$F8]
    ld h, $07
    add b
    ldh a, [$08]
    cpl
    nop
    ld hl, sp+$08
    dec [hl]
    nop
    ld hl, sp+$00
    inc [hl]
    nop
    ld hl, sp-$08
    inc sp
    nop
    ld hl, sp-$10
    jr nc, jr_013_74F9

jr_013_74F9:
    ld hl, sp+$00
    ld [hl-], a
    rlca
    ld hl, sp-$08
    ld sp, $0007
    nop
    scf
    dec b
    nop
    ld hl, sp+$36
    dec b
    ldh a, [rP1]
    ld l, $00
    ldh a, [$F0]
    ld a, [hl+]
    nop
    ldh a, [$F8]
    dec l
    nop
    ldh a, [rP1]
    inc l
    rlca
    ldh a, [$F8]
    dec hl
    rlca
    add b
    ldh a, [$F0]
    jr c, jr_013_7522

jr_013_7522:
    ld hl, sp+$08
    ccf
    nop
    ldh a, [$08]
    ld a, $00
    ld hl, sp-$10
    dec sp
    nop
    ldh a, [$F8]
    add hl, sp
    rlca
    ldh a, [$F8]
    ld a, [hl-]
    nop
    ld hl, sp-$08
    dec a
    nop
    ld hl, sp-$08
    inc a
    rlca
    ld hl, sp+$00
    inc [hl]
    nop
    ld hl, sp+$00
    ld [hl-], a
    rlca
    nop
    nop
    scf
    dec b
    nop
    ld hl, sp+$36
    dec b
    ldh a, [rP1]
    ld l, $00
    ldh a, [rP1]
    inc l
    rlca
    add b
    ld hl, sp+$08
    ld b, a
    nop
    ldh a, [$08]
    ld b, [hl]
    nop
    ld hl, sp-$08
    ld b, l
    nop
    ld hl, sp-$10
    ld b, e
    nop
    ldh a, [$F8]
    ld b, d
    nop
    ldh a, [$F8]
    ld b, c
    rlca
    ldh a, [$F0]
    ld b, b
    nop
    ld hl, sp-$08
    ld b, h
    rlca
    ld hl, sp+$00
    inc [hl]
    nop
    ld hl, sp+$00
    ld [hl-], a
    rlca
    nop
    nop
    scf
    dec b
    nop
    ld hl, sp+$36
    dec b
    ldh a, [rP1]
    ld l, $00
    ldh a, [rP1]

jr_013_758D:
    inc l
    rlca
    add b
    ldh a, [$F0]
    cpl
    jr nz, jr_013_758D

jr_013_7595:
    ldh a, [$35]
    jr nz, @-$06

jr_013_7599:
    ld hl, sp+$34
    jr nz, jr_013_7595

    nop
    inc sp
    jr nz, jr_013_7599

    ld [$2030], sp
    ld hl, sp-$08
    ld [hl-], a
    daa
    ld hl, sp+$00
    ld sp, $0027

jr_013_75AD:
    ld hl, sp+$37
    dec h
    nop

jr_013_75B1:
    nop
    ld [hl], $25
    ldh a, [$F8]
    ld l, $20
    ldh a, [$08]
    ld a, [hl+]
    jr nz, jr_013_75AD

    nop
    dec l
    jr nz, jr_013_75B1

    ld hl, sp+$2C
    daa
    ldh a, [rP1]
    dec hl
    daa
    add b
    ldh a, [$08]
    jr c, @+$22

    ld hl, sp-$10
    ccf
    jr nz, @-$0E

    ldh a, [$3E]
    jr nz, @-$06

    ld [$203B], sp
    ldh a, [rP1]
    add hl, sp
    daa
    ldh a, [rP1]
    ld a, [hl-]
    jr nz, @-$06

    nop
    dec a
    jr nz, @-$06

jr_013_75E6:
    nop
    inc a
    daa
    ld hl, sp-$08
    inc [hl]
    jr nz, jr_013_75E6

    ld hl, sp+$32
    daa
    nop
    ld hl, sp+$37
    dec h
    nop
    nop

jr_013_75F7:
    ld [hl], $25
    ldh a, [$F8]
    ld l, $20
    ldh a, [$F8]
    inc l
    daa
    add b
    ld hl, sp-$10
    ld b, a
    jr nz, jr_013_75F7

jr_013_7607:
    ldh a, [rDMA]
    jr nz, @-$06

    nop
    ld b, l
    jr nz, jr_013_7607

    ld [$2043], sp
    ldh a, [rP1]
    ld b, d
    jr nz, jr_013_7607

jr_013_7617:
    nop
    ld b, c
    daa
    ldh a, [$08]
    ld b, b
    jr nz, jr_013_7617

jr_013_761F:
    nop
    ld b, h
    daa
    ld hl, sp-$08
    inc [hl]
    jr nz, jr_013_761F

    ld hl, sp+$32
    daa
    nop
    ld hl, sp+$37
    dec h
    nop
    nop
    ld [hl], $25
    ldh a, [$F8]
    ld l, $20
    ldh a, [$F8]
    inc l
    daa
    add b
    nop
    ld hl, sp+$08
    nop
    push af
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    rlca
    nop
    ldh a, [$F8]
    ld b, $00
    nop
    nop
    dec b
    rlca
    nop
    ld hl, sp+$04
    rlca
    ld hl, sp+$00
    inc bc
    rlca
    ld hl, sp-$08
    ld [bc], a
    rlca
    ldh a, [rP1]
    ld bc, $F007
    ld hl, sp+$00
    rlca
    add b
    nop

jr_013_7665:
    nop
    ld [$F520], sp
    ld hl, sp+$09
    jr nz, jr_013_7665

    nop
    rlca
    jr nz, @-$0E

    nop
    ld b, $20
    nop
    ld hl, sp+$05
    daa
    nop
    nop
    inc b
    daa
    ld hl, sp-$08
    inc bc
    daa
    ld hl, sp+$00
    ld [bc], a
    daa
    ldh a, [$F8]
    ld bc, $F027
    nop
    nop
    daa
    add b
    push af
    nop
    ld d, $00
    push af
    ld hl, sp+$15
    nop
    ldh a, [$F8]
    ld a, [bc]
    rlca
    db $FD
    nop
    jr jr_013_769D

jr_013_769D:
    db $FD
    ld hl, sp+$17
    nop
    nop
    nop
    ld c, $07
    nop
    ld hl, sp+$0D
    rlca
    pop af
    nop
    db $10
    rlca
    ld hl, sp+$00
    inc c
    rlca
    ld hl, sp-$08

jr_013_76B3:
    dec bc
    rlca
    add b
    db $FC
    ld hl, sp+$08
    nop
    db $F4
    ld hl, sp+$19
    jr nz, jr_013_76B3

    nop
    add hl, de
    nop
    db $FC
    nop
    dec de
    nop
    db $FC
    ld hl, sp+$1A
    nop
    ld hl, sp-$08
    ld de, $F827
    nop
    ld de, $F007
    ld hl, sp+$0F
    rlca
    ldh a, [rP1]
    db $10
    rlca
    nop
    nop

jr_013_76DC:
    inc de

jr_013_76DD:
    rlca
    nop
    ld hl, sp+$12
    rlca
    add b
    push af
    ld hl, sp+$16
    jr nz, jr_013_76DD

    nop
    dec d
    jr nz, jr_013_76DC

    nop
    inc d
    rlca
    pop af
    ld hl, sp+$0F
    rlca
    db $FD
    ld hl, sp+$18
    jr nz, @-$01

    nop
    rla
    jr nz, jr_013_76FC

jr_013_76FC:
    ld hl, sp+$0E
    daa
    nop
    nop
    dec c
    daa
    ld hl, sp-$08
    inc c
    daa
    ld hl, sp+$00
    dec bc
    daa
    add b
    db $FC
    nop
    inc l
    nop
    db $FC
    ld hl, sp+$2B
    nop
    db $F4
    nop
    ld a, [hl+]
    nop
    db $F4
    ld hl, sp+$29
    nop
    nop
    nop
    ld hl, $0007
    ld hl, sp+$20
    rlca
    ld hl, sp+$00
    rra
    rlca
    ld hl, sp-$08
    ld e, $07
    ldh a, [rP1]
    dec e
    rlca
    ldh a, [$F8]
    inc e
    rlca
    add b
    db $FC

jr_013_7736:
    nop
    ld l, $00
    db $F4

jr_013_773A:
    ld hl, sp+$2D
    jr nz, jr_013_773A

    ld hl, sp+$2E
    jr nz, jr_013_7736

    nop
    dec l
    nop
    nop
    nop
    ld h, $07
    nop
    ld hl, sp+$25
    rlca
    ld hl, sp-$08
    inc h
    daa
    ld hl, sp+$00
    inc h
    rlca
    ldh a, [rP1]
    inc hl
    rlca
    ldh a, [$F8]

jr_013_775B:
    ld [hl+], a
    rlca
    add b
    db $FC

jr_013_775F:
    ld hl, sp+$2C
    jr nz, jr_013_775F

    nop
    dec hl
    jr nz, jr_013_775B

jr_013_7767:
    ld hl, sp+$2A
    jr nz, jr_013_775F

    nop
    add hl, hl
    jr nz, jr_013_7767

    ld hl, sp+$1F
    daa
    ld hl, sp+$00
    ld e, $27
    nop
    ld hl, sp+$21
    daa
    nop
    nop
    jr nz, jr_013_77A5

    ldh a, [rP1]
    jr z, jr_013_7789

    ldh a, [$F8]
    daa
    rlca
    add b
    ld sp, hl
    ei

jr_013_7789:
    ld b, d
    nop
    pop af
    ei
    ld b, c
    nop
    db $FD
    di
    ld b, b
    nop
    push af
    di
    ccf
    nop
    push af
    cp $43
    nop
    ld sp, hl
    ldh a, [$2F]
    nop
    ld bc, $30F0
    nop
    nop
    nop

jr_013_77A5:
    ld [hl], $07
    nop
    ld hl, sp+$35
    rlca
    ld hl, sp+$00
    inc [hl]
    rlca
    ld hl, sp-$08
    inc sp
    rlca
    pop af
    nop
    ld [hl-], a
    rlca
    pop af
    ld hl, sp+$31
    rlca
    add b
    ld hl, sp-$05
    ld b, d
    nop
    ldh a, [$FB]
    ld b, c
    nop
    db $FC
    di
    ld b, b
    nop
    db $F4
    di
    ccf
    nop
    push af
    cp $44
    nop
    ld hl, sp-$10
    cpl
    nop
    nop
    ldh a, [$30]
    nop
    ldh a, [rP1]
    ld [hl-], a
    rlca
    ldh a, [$F8]
    ld sp, $F807
    nop
    jr c, jr_013_77EB

    ld hl, sp-$08
    scf
    rlca
    nop
    nop
    ld a, [hl-]

jr_013_77EB:
    rlca
    nop
    ld hl, sp+$39
    rlca
    add b
    push af
    di
    ccf
    nop
    ld sp, hl
    ei
    ld b, d
    nop
    pop af
    ei
    ld b, c
    nop
    db $FD
    di
    ld b, b
    nop
    push af
    db $FD
    ld b, l
    nop
    ld sp, hl
    ldh a, [$2F]
    nop
    ld bc, $30F0
    nop
    nop
    nop
    ld a, $07
    nop
    ld hl, sp+$3D
    rlca
    ld hl, sp+$00
    inc a
    rlca
    ld hl, sp-$08
    dec sp

jr_013_781C:
    rlca
    pop af
    nop
    ld [hl-], a
    rlca
    pop af
    ld hl, sp+$31
    rlca
    add b
    ld sp, hl
    db $FD

jr_013_7828:
    ld b, d
    jr nz, jr_013_781C

    db $FD

jr_013_782C:
    ld b, c
    jr nz, jr_013_782C

    dec b
    ld b, b
    jr nz, jr_013_7828

    dec b
    ccf
    jr nz, jr_013_782C

    ld a, [$2043]
    ld sp, hl
    ld [$202F], sp
    ld bc, $3008
    jr nz, jr_013_7843

jr_013_7843:
    ld hl, sp+$36
    daa
    nop
    nop
    dec [hl]
    daa
    ld hl, sp-$08
    inc [hl]
    daa
    ld hl, sp+$00
    inc sp
    daa
    pop af
    ld hl, sp+$32
    daa
    pop af
    nop

jr_013_7858:
    ld sp, $8027
    db $F4
    dec b
    ccf
    jr nz, jr_013_7858

    db $FD

jr_013_7861:
    ld b, d
    jr nz, @-$0E

jr_013_7864:
    db $FD
    ld b, c
    jr nz, jr_013_7864

    dec b
    ld b, b
    jr nz, jr_013_7861

    ld a, [$2044]
    ld hl, sp+$08
    cpl
    jr nz, jr_013_7874

jr_013_7874:
    ld [$2030], sp
    ldh a, [$F8]
    ld [hl-], a
    daa
    ldh a, [rP1]
    ld sp, $F827
    ld hl, sp+$38
    daa
    ld hl, sp+$00
    scf

jr_013_7886:
    daa
    nop
    ld hl, sp+$3A
    daa
    nop
    nop
    add hl, sp
    daa
    add b
    ld sp, hl
    db $FD

jr_013_7892:
    ld b, d
    jr nz, jr_013_7886

    db $FD

jr_013_7896:
    ld b, c
    jr nz, jr_013_7896

    dec b
    ld b, b
    jr nz, jr_013_7892

    dec b

jr_013_789E:
    ccf
    jr nz, jr_013_7896

    ei
    ld b, l
    jr nz, jr_013_789E

    ld [$202F], sp
    ld bc, $3008
    jr nz, jr_013_78AD

jr_013_78AD:
    ld hl, sp+$3E
    daa
    nop
    nop
    dec a
    daa
    ld hl, sp-$08
    inc a
    daa
    ld hl, sp+$00
    dec sp
    daa
    pop af
    ld hl, sp+$32
    daa
    pop af
    nop
    ld sp, $8027
    ld c, a
    ld [$FE00], sp
    ld a, [hl+]
    ld [hl], h
    nop
    ld c, a
    ld [$FE00], sp
    ld l, e
    ld [hl], h
    nop
    ld c, a
    ld [$FE00], sp
    xor h
    ld [hl], h
    nop
    ld c, a
    ld [$FE00], sp
    ld l, e
    ld [hl], h
    nop
    ld c, a
    ld [$FE00], sp
    ld a, [hl+]
    ld [hl], h
    nop
    ld c, c
    push bc
    ld a, b
    ld c, a
    ld [$FE00], sp
    ld h, a
    ld [hl], e
    nop
    ld c, a
    ld [$FE00], sp
    xor b
    ld [hl], e
    nop
    ld c, a
    ld [$FE00], sp
    jp hl


    ld [hl], e
    nop
    ld c, a
    ld [$FE00], sp
    xor b
    ld [hl], e
    nop
    ld c, a
    ld [$FE00], sp
    ld h, a
    ld [hl], e
    nop
    ld c, c
    db $EB
    ld a, b
    ld c, a
    ld [$0200], sp
    ld h, a
    ld [hl], e
    nop
    ld c, a
    ld [$0200], sp
    xor b
    ld [hl], e
    nop
    ld c, a
    ld [$0200], sp
    jp hl


    ld [hl], e
    nop
    ld c, a
    ld [$0200], sp
    xor b
    ld [hl], e
    nop
    ld c, a
    ld [$0200], sp
    ld h, a
    ld [hl], e
    nop
    ld c, c
    ld de, $4F79
    ld [$0002], sp
    push hl
    ld [hl], h
    nop
    ld c, a
    ld [$0002], sp
    ld e, $75
    nop
    ld c, a
    ld [$0002], sp
    ld d, a
    ld [hl], l
    nop
    ld c, a
    ld [$0002], sp
    ld e, $75
    nop
    ld c, a
    ld [$0002], sp
    push hl
    ld [hl], h
    nop
    ld c, c
    scf
    ld a, c
    ld c, a
    inc b
    cp $00
    sub b
    ld [hl], l
    nop
    ld c, a
    inc b
    cp $00
    ret


    ld [hl], l
    nop
    ld c, a
    inc b
    cp $00
    ld [bc], a
    halt
    nop
    ld c, a
    inc b
    cp $00
    ret


    ld [hl], l
    nop
    ld c, a
    inc b
    cp $00
    sub b
    ld [hl], l
    nop
    ld c, c
    ld e, l
    ld a, c
    ld c, a
    ld [de], a
    nop
    rst $38
    ld h, a
    ld [hl], e
    nop
    ld c, a
    add hl, bc
    nop
    cp $A8
    ld [hl], e
    nop
    ld c, a
    add hl, bc
    nop
    cp $E9
    ld [hl], e
    nop
    ld c, a
    inc c
    nop
    rst $38
    xor b
    ld [hl], e
    nop
    ld c, a
    ld [de], a
    nop
    rst $38
    ld h, a
    ld [hl], e
    nop
    ld c, a
    add hl, bc
    nop
    cp $A8
    ld [hl], e
    nop
    ld c, a
    add hl, bc
    nop
    cp $E9
    ld [hl], e
    nop
    ld c, a
    inc c
    nop
    rst $38
    xor b
    ld [hl], e
    nop
    ld c, a
    ld [de], a
    rst $38
    cp $67
    ld [hl], e
    nop
    ld c, a
    add hl, bc
    rst $38
    rst $38
    xor b
    ld [hl], e
    nop
    ld c, a
    add hl, bc
    rst $38
    nop
    jp hl


    ld [hl], e
    nop
    ld c, a
    inc c
    rst $38
    ld bc, $73A8
    nop
    ld c, a
    ld [de], a
    nop
    ld bc, $7367
    nop
    ld c, a
    add hl, bc
    nop
    nop
    xor b
    ld [hl], e
    nop
    ld c, a
    add hl, bc
    nop
    nop
    jp hl


    ld [hl], e
    nop
    ld c, a
    inc c
    nop
    nop
    xor b
    ld [hl], e
    nop
    ld c, a
    ld [de], a
    nop
    nop
    ld h, a
    ld [hl], e
    nop
    ld c, c
    sbc $79
    ld d, b
    ld [$0008], sp
    rst $38
    inc c
    ld [hl], a
    dec [hl]
    ld [hl], a
    ld e, [hl]
    ld [hl], a
    dec [hl]
    ld [hl], a
    ld c, c
    db $FD
    ld a, c
    ld d, b
    ld [$0008], sp
    ld bc, $768D
    or [hl]
    halt
    db $E3
    halt
    or [hl]
    halt
    ld c, c
    dec c
    ld a, d
    ld d, b
    ld [$FF08], sp
    nop
    ld h, $78
    ld e, e
    ld a, b
    sub b
    ld a, b
    ld e, e
    ld a, b
    ld c, c
    dec e
    ld a, d
    ld d, b
    ld [$0108], sp
    nop
    add a
    ld [hl], a
    cp h
    ld [hl], a
    pop af
    ld [hl], a
    cp h
    ld [hl], a
    ld c, c
    dec l
    ld a, d
    ld d, b
    ld [$0008], sp
    cp $0C
    ld [hl], a
    dec [hl]
    ld [hl], a
    ld e, [hl]
    ld [hl], a
    dec [hl]
    ld [hl], a
    ld c, c
    dec a
    ld a, d
    ld d, b
    ld [$0008], sp
    ld [bc], a
    adc l
    halt
    or [hl]
    halt
    db $E3
    halt
    or [hl]
    halt
    ld c, c
    ld c, l
    ld a, d
    ld d, b
    ld [$FE08], sp
    nop
    ld h, $78
    ld e, e
    ld a, b
    sub b
    ld a, b
    ld e, e
    ld a, b
    ld c, c
    ld e, l
    ld a, d
    ld d, b
    ld [$0208], sp
    nop
    add a
    ld [hl], a
    cp h
    ld [hl], a
    pop af
    ld [hl], a
    cp h
    ld [hl], a
    ld c, c
    ld l, l
    ld a, d
    ld c, a
    rst $38
    nop
    nop
    dec [hl]
    ld [hl], a
    nop
    ld c, c
    ld a, l
    ld a, d
    ld c, a
    rst $38
    nop
    nop
    or [hl]
    halt
    nop
    ld c, c
    add a
    ld a, d
    ld c, a
    rst $38
    nop
    nop
    ld e, e
    ld a, b
    nop
    ld c, c
    sub c
    ld a, d
    ld c, a
    rst $38
    nop
    nop
    cp h
    ld [hl], a
    nop
    ld c, c
    sbc e
    ld a, d
    ld c, a
    rst $38
    nop
    nop
    ld h, h
    halt
    nop
    ld c, c
    and l
    ld a, d
    ld c, a
    rst $38
    nop
    nop
    dec sp
    halt
    nop
    ld c, c
    xor a
    ld a, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
