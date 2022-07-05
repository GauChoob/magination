; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02b", ROMX[$4000], BANK[$2b]

jr_02B_4000:
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    adc b
    nop
    inc bc
    ld a, [hl]
    ld a, a
    ld [hl], a
    adc e
    nop
    ld [bc], a
    ld a, [hl]
    ld a, a
    adc e
    nop
    dec b
    add a
    adc b
    adc c
    adc [hl]
    adc a
    add d
    nop
    ld c, $3B
    inc a
    dec a
    ld c, c
    ld a, h
    nop
    add a
    adc b
    adc c
    nop
    adc [hl]
    adc a
    dec sp
    ld c, c
    adc b
    nop
    jr jr_02B_4047

    sub a
    sbc b
    sbc c
    jr jr_02B_4041

    ld a, d
    ld a, e
    ld c, e
    ld c, h
    ld c, l
    ld a, l
    adc h
    db $18, $97
    sbc b
    sbc c
    jr jr_02B_407D

jr_02B_4041:
    dec a
    ld c, e
    nop
    ld a, h
    ld l, d
    add l

jr_02B_4047:
    nop
    add hl, de
    inc a
    db $28, $A7
    xor b
    xor c
    jr z, jr_02B_405B

    adc d
    adc e
    nop
    ld e, h
    ld e, l
    adc l
    nop
    jr z, jr_02B_4000

    xor b
    xor c

jr_02B_405B:
    jr z, jr_02B_40A9

    ld c, l
    inc a
    dec a
    adc h
    ld c, b
    add e
    nop
    dec b
    ld a, [hl]
    ld a, a
    ld c, h
    ld c, l
    inc c
    add e
    ld [$0101], sp
    adc e
    ld [$0D07], sp
    ld e, h
    ld e, l
    ld c, h
    ld c, l
    ld a, [hl]
    ld a, a
    add e
    nop
    dec b
    adc [hl]
    adc a

jr_02B_407D:
    ld e, h
    ld e, l
    ld b, d
    adc a
    ld bc, $0B08
    ld l, h
    ld l, l
    ld e, h
    ld e, l
    adc [hl]
    adc a
    ld l, d
    add d
    nop
    dec b
    ld a, h
    nop
    ld l, h
    ld l, l
    ld c, $84
    ld bc, $0F02
    dec de
    add h
    inc e
    ld [bc], a
    dec e
    ld c, $84
    ld bc, $0D0F
    ld c, b
    ld l, h
    ld l, l
    nop
    ld a, d
    ld a, e
    ld a, h
    nop

jr_02B_40A9:
    adc h
    ld c, c
    nop
    ld a, l
    dec hl
    ld b, d
    add d
    ld bc, $0B09
    dec hl
    ld a, [hl]
    ld a, a
    ld c, e
    adc h
    nop
    dec sp
    dec hl
    add l
    ld bc, $0883
    dec bc
    dec c
    adc d
    adc e
    adc h
    ld a, [hl]
    ld a, a
    dec sp
    nop
    adc l
    ld l, d
    ld c, $82
    ld bc, $0B04
    nop
    adc [hl]
    adc a
    add d
    nop
    inc bc
    ld a, [hl-]
    ld c, e
    ld e, e
    adc c
    ld bc, $0D0A
    nop
    ld a, l
    adc [hl]
    adc a
    ld c, e
    ld a, [hl]
    ld a, a
    nop
    dec hl
    add d
    ld bc, $0F07
    add a
    adc b
    adc c
    dec sp
    ld a, l
    ld c, d
    add d
    nop
    ld bc, $892B
    ld bc, $0D02
    adc l
    add d
    ld [$0D05], sp
    adc [hl]
    adc a
    ld l, b
    ld l, c
    add d
    ld bc, $180A
    sub a
    sbc b
    sbc c
    jr @-$71

    nop
    ld a, h
    nop
    dec sp
    adc c
    ld bc, $0B02
    dec sp
    add e
    ld bc, $0804
    dec c
    ld [hl], a
    dec sp
    add d
    ld bc, $280B
    and a
    xor b
    xor c
    jr z, jr_02B_4126

    ld a, [hl-]
    adc h
    nop
    ld c, e

jr_02B_4126:
    dec hl
    adc b
    ld bc, $0B02
    ld c, e
    add l
    ld bc, $0D02
    ld c, e
    add d
    ld bc, $0884
    inc bc
    ld bc, $4A0B
    add d
    nop
    ld [bc], a
    ld a, [hl]
    ld a, a
    adc c
    ld bc, $0801
    add h
    ld bc, $0904
    rrca
    nop
    dec hl
    add [hl]
    ld bc, $0B08
    inc a
    dec a
    nop
    adc [hl]
    adc a
    dec hl
    ld c, $85
    add hl, bc
    add e
    ld bc, $0982
    rlca
    ld bc, $1B0B
    dec e
    ccf
    ld c, e
    dec de
    add l
    ld bc, $0B03
    ld c, h
    ld c, l
    add e
    nop
    ld [bc], a
    ld a, [hl-]
    dec de
    add h
    inc e
    ld [bc], a
    dec e
    ld c, $82
    add hl, bc
    dec bc
    inc e
    dec e
    ld b, d
    dec bc
    ld a, a
    nop
    ld c, h
    ld c, l
    ld c, e
    dec hl
    ld c, $84
    ld bc, $0882
    inc b
    dec c
    ld a, h
    nop
    ld c, d
    add d
    nop
    dec b
    ld l, d
    nop
    ld a, [hl]
    ld a, a
    dec de
    add d
    inc e
    ld [$7C00], sp
    ld b, d
    dec bc
    adc a
    nop
    ld e, h
    ld e, l

jr_02B_419C:
    add d
    nop
    ld [bc], a
    dec hl
    ld b, d
    add d
    ld bc, $0982
    dec bc
    ld bc, $8C0B
    ld a, [hl]
    ld a, a
    nop
    ld a, l
    ld a, d
    ld a, e
    adc [hl]
    adc a
    add e
    nop
    inc h
    ld c, c
    adc h
    ld b, d
    dec bc
    nop
    dec sp
    ld l, h
    ld l, l
    nop
    ld a, [hl]
    ld a, a
    ld b, d
    dec bc
    dec de
    inc e
    dec e
    ld b, d
    dec bc
    nop
    adc [hl]
    adc a
    nop
    adc l

jr_02B_41CB:
    adc d
    adc e
    nop

jr_02B_41CE:
    inc a
    dec a
    ld a, h
    nop
    ld a, h
    nop
    ld b, d
    ld bc, $4B0D
    add e
    nop
    add hl, bc
    adc [hl]
    adc a
    ld b, d
    dec bc
    ld a, l
    ld a, [hl]
    ld a, a
    ld b, d
    dec bc
    add d
    nop
    ld de, $8887
    adc c
    inc c
    dec c
    ld c, b
    ld c, h
    ld c, l
    adc h
    nop
    adc h
    nop
    ld b, d
    ld bc, $7A0B
    ld a, e
    add h
    nop
    ld de, $0B42
    adc l
    adc [hl]
    adc a
    ld b, d
    dec bc
    nop
    jr jr_02B_419C

    sbc b
    sbc c
    jr jr_02B_424B

    dec c
    ld e, h
    ld e, l
    add d
    nop
    dec c
    ld a, d
    ld a, e
    ld b, d
    ld bc, $8A0B
    adc e
    nop
    add a
    adc b
    adc c
    ld c, $0B
    add e
    nop
    ld de, $0B42
    nop
    jr z, jr_02B_41CB

    xor b
    xor c
    jr z, jr_02B_426A

    ld b, e
    ld l, h
    ld l, l
    nop
    ld a, d
    adc d
    adc e
    ld b, d
    add d
    ld bc, $0D08
    ld a, d
    jr jr_02B_41CE

    sbc b
    sbc c
    jr jr_02B_4246

    add e
    nop
    ld [bc], a
    ld b, d
    ld bc, $0886
    add d
    ld bc, $0D04

jr_02B_4246:
    ld a, [hl-]
    nop
    adc d
    add d
    nop

jr_02B_424B:
    rrca
    dec de
    dec e
    ld b, d
    ld bc, $280D
    and a
    xor b
    xor c
    jr z, jr_02B_4262

    inc a
    dec a
    nop
    ld c, $84
    add hl, bc
    add l
    ld bc, $0B02
    ld c, d

jr_02B_4262:
    add d
    nop
    dec b
    ld a, d
    ld a, e
    ld a, h
    nop
    ld b, d

jr_02B_426A:
    add d
    ld bc, $0885
    dec b
    dec bc
    ld c, h
    ld c, l
    ld l, d
    dec de
    add e
    inc e
    ld [bc], a
    dec e
    ld b, d
    add h
    ld bc, $0F09
    inc a
    dec a
    nop
    adc d
    adc e
    adc h
    nop
    ld b, d
    add a
    ld bc, $0B04
    ld e, h
    ld e, l
    ld a, l
    add d
    nop
    inc b
    adc l
    inc a
    dec a
    ld b, d
    add e
    ld bc, $0F04
    dec hl
    ld c, h
    ld c, l
    add e
    nop
    dec b
    ld a, d
    ld a, e
    dec de
    dec e
    ld c, $85
    ld bc, $0B0A
    ld l, h
    ld l, l
    adc l
    ld a, [hl]
    ld a, a
    nop
    ld c, h
    ld c, l
    ld c, $82
    add hl, bc
    dec b
    rrca
    dec hl
    ld e, e
    ld e, h
    ld e, l
    add e
    nop
    ld b, $8A
    adc e
    ld a, [hl]
    ld a, a
    dec hl
    ld c, $83
    ld bc, $0F02
    dec hl
    add d
    nop
    rlca
    ld a, [hl-]
    adc [hl]
    adc a
    nop
    ld e, h
    ld e, l
    dec de
    add d
    inc e
    ld b, $1D
    ld a, [hl-]
    nop
    ld l, h
    ld l, l
    ld a, d
    add h
    nop
    dec c
    adc [hl]
    adc a
    nop
    dec hl
    ld c, $09
    rrca
    dec hl
    ld l, d
    ld a, [hl]
    ld a, a
    ld c, d
    ld a, h
    add d
    nop
    rlca
    ld l, h
    ld l, l
    nop
    ld a, [hl]
    ld a, a
    nop
    ld c, d
    add e
    nop
    ld bc, $868A
    nop
    dec bc
    ld a, [hl]
    cpl
    dec de
    inc e
    dec e
    ld a, d
    ld a, e
    adc [hl]
    adc a
    nop
    adc h
    add e
    nop
    add hl, bc
    ld e, e
    nop
    adc [hl]
    adc a
    nop
    ld a, d
    ld a, e
    nop
    ld a, [hl-]
    add a
    nop
    ld [bc], a
    adc [hl]
    adc a
    add e
    nop
    ld [bc], a
    adc d
    adc e
    adc h
    nop
    inc b
    adc d
    adc e
    nop
    ld c, d
    adc b
    nop
    nop
    jr z, jr_02B_438E

    ld bc, $141D
    or b
    inc b
    sub e
    ld a, [hl+]
    inc bc
    cp l
    cp [hl]
    cp a
    adc b
    ld a, [hl+]
    ld [$7D08], sp
    ld e, a
    ld a, [de]
    dec de
    call $CFCE
    sub l
    ld a, [hl+]
    inc bc
    cp l
    cp [hl]
    cp a
    add a
    ld a, [hl+]
    ld a, [bc]
    adc e
    ld a, l
    dec c
    ld l, a
    ld c, $0F
    db $DD
    sbc $DF
    adc e
    sub h
    ld a, [hl+]
    inc bc
    cp l
    cp [hl]
    cp a
    adc b
    ld a, [hl+]
    ld a, [bc]
    add hl, hl
    dec e
    ld a, h
    ld e, $3D
    db $ED
    ld a, c
    rst $28
    dec de
    adc e
    sub c
    ld a, [hl+]
    add d
    adc e
    inc bc
    call $CFCE
    add a
    ld a, [hl+]
    ld b, $8A
    add hl, hl
    dec e
    ld e, $8C
    ld e, $82
    ld a, h
    inc bc
    dec a
    rrca
    dec de
    sub b
    ld a, [hl+]
    rlca
    adc d
    add hl, de
    ld e, a
    db $DD
    sbc $DF
    ld a, d
    add l
    ld a, [hl+]
    rlca
    adc d
    ld a, l
    add hl, hl
    inc a
    ld l, h
    adc c
    adc h
    add d

jr_02B_438E:
    ld l, $03
    cpl
    dec sp
    adc a
    sub b
    ld a, [hl+]
    add hl, bc
    add hl, hl
    dec c
    ld l, a
    db $ED
    ld a, c
    rst $28
    dec de
    inc c
    adc e
    add e
    ld a, [hl+]
    inc b
    add hl, de
    ld a, [de]
    inc a
    ld c, l
    add d
    ld l, $05
    cpl
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    ld a, d
    sub c
    ld a, [hl+]
    ld [$1D29], sp
    dec a
    ld l, e
    inc a
    ld a, h
    rrca
    dec hl
    add e
    ld a, [hl+]
    dec b
    ld [$3E1A], sp
    xor e
    dec hl
    add d
    ld a, [hl-]
    ld [bc], a
    adc e
    adc c
    adc [hl]
    ld a, [hl+]
    inc b
    sbc d
    sbc e
    sbc h
    ld a, [hl+]
    add d
    adc e
    inc b
    add hl, hl
    dec e
    adc h
    ld a, h
    add d
    ld e, $0B
    rra
    dec hl
    ld a, d
    ld a, [hl+]
    ld [$3E19], sp
    inc a
    ld c, l
    dec hl
    adc c
    sub c
    ld a, [hl+]
    ld d, $BD
    cp [hl]
    cp a
    adc e
    ld [$3C7D], sp
    ld l, h
    ld c, d
    ld e, h
    ld e, $4D
    cpl
    dec sp
    ld a, [hl+]
    ld [$7E7D], sp
    xor e
    ld l, $2F
    dec sp
    sub d
    ld a, [hl+]
    ld b, $BD
    cp [hl]
    cp a
    ld a, [hl+]
    ld a, l
    inc a
    add d
    adc h
    dec b
    cp e
    adc h
    xor e
    cpl
    dec sp
    add d
    ld a, [hl+]
    ld b, $8B
    adc l
    inc a
    rra
    ld a, [hl-]
    adc e
    sub d
    ld a, [hl+]
    dec d
    adc e
    cp l
    cp [hl]
    cp a
    ld a, [hl+]
    adc l
    xor e
    cpl
    dec sp
    add hl, sp
    dec l
    xor e
    dec sp
    sbc d
    sbc e
    sbc h
    add hl, de
    adc l
    xor e
    cpl
    sbc a
    sub c
    ld a, [hl+]
    rla
    adc e
    ld a, [hl+]
    ld a, [hl+]
    cp l
    cp [hl]
    cp a
    adc e
    adc l
    xor e
    ld a, a
    adc c
    adc e
    ld a, l
    xor e
    ld a, [hl+]
    call $CFCE
    adc l
    inc a
    ld c, l
    adc a
    adc e
    add [hl]
    ld a, [hl+]
    inc b
    adc d
    add hl, de
    dec de
    ld a, d
    add e
    ld a, [hl+]
    ld bc, $847B
    ld a, [hl+]
    add hl, de
    ld a, d
    adc e
    call $CFCE
    ld [$AB7D], sp
    adc a
    ld a, [hl+]
    adc d
    ld a, l
    xor e
    add hl, de
    db $DD
    sbc $DF
    ld a, e
    xor e
    cpl
    sbc a
    ld a, [hl+]
    sbc d
    sbc e
    sbc h
    add d
    ld a, [hl+]
    dec b
    adc e
    ld [$0F0D], sp
    dec de
    add [hl]
    ld a, [hl+]
    dec de
    adc c
    ld a, e
    add hl, de
    inc c
    db $DD
    sbc $DF
    ld a, l
    inc a
    dec a
    adc a
    adc e
    ld a, [hl+]
    ld a, l
    xor e
    dec c
    db $ED
    ld a, c
    rst $28
    inc a
    ld c, l
    ld a, a
    inc c
    ld a, [hl+]
    cp l
    cp [hl]
    cp a
    add d
    ld a, [hl+]
    dec de
    ld [$3C19], sp
    dec a
    rrca
    ld a, [hl+]
    ld a, e
    ld a, [hl+]
    adc c
    ld a, [hl+]
    ld a, d
    ld [$0D19], sp
    ld a, a
    db $ED
    ld a, c
    rst $28
    ld a, [hl]
    ld e, h
    ld l, h
    adc a
    ld a, [hl+]
    adc d
    add hl, hl
    xor e
    inc a
    add d
    ld a, h
    inc b
    cp e
    ld c, l
    cpl
    sbc a
    add d
    ld a, [hl+]
    rlca
    cp l
    cp [hl]
    cp a
    ld a, [hl+]
    adc c
    add hl, de
    dec c
    add d
    ld e, $0A
    ld a, h
    ld a, [hl+]
    ld a, [hl+]
    ld a, d
    ld a, [hl+]
    adc c
    ld a, e
    add hl, de
    dec c
    inc a
    add e
    ld a, h
    add hl, bc
    dec a
    ld c, $5C
    ld c, l
    dec de
    ld a, e
    ld [$4C29], sp
    add d
    ld e, $03
    ld l, h
    ld e, e
    rra
    add d
    dec hl
    add d
    ld a, [hl+]
    inc bc
    cp l
    cp [hl]
    cp a
    add d
    ld a, [hl+]
    ld [bc], a
    add hl, hl
    dec e
    add e
    ld e, $86
    ld a, [de]
    inc b
    dec c
    inc a
    ld c, c
    ld e, h
    add l
    ld e, $06
    rra
    dec hl
    inc c
    ld [$1D29], sp
    add e
    ld e, $04
    ld a, h
    rra
    dec hl
    adc e
    add d
    ld a, [hl+]
    rlca
    cp l
    cp [hl]
    cp a
    ld a, [hl+]
    adc e
    adc l
    inc a
    add e
    ld e, $86
    ld c, $03
    inc a
    ld e, $7C
    add e
    ld e, $05
    adc h
    ld e, $1E
    rra
    dec hl
    add d
    ld a, [hl+]
    ld [bc], a
    add hl, hl
    dec e
    add d
    ld e, $82
    adc h
    ld [bc], a
    dec a
    dec de
    add e
    ld a, [hl+]
    inc bc
    cp l
    cp [hl]
    cp a
    add d
    ld a, [hl+]
    dec b
    adc l
    ld e, h
    ld e, $4D
    ld l, $89
    ld e, $0C
    adc h
    ld e, $6C
    ld c, e
    ld e, h
    ld c, l
    cpl
    dec sp
    adc e
    ld a, [hl+]
    add hl, sp
    dec l
    add d
    ld l, $11
    cpl
    adc l
    xor e
    rrca
    dec de
    ld a, [hl+]
    adc e
    call $CFCE
    ld a, [hl+]
    ld a, l
    adc e
    xor e
    ld l, $2F
    ld a, [hl-]
    add [hl]
    ld l, $0B
    ld c, h
    ld e, $6C
    ld c, d
    ld e, h
    ld e, $7C
    ld l, h
    ld e, l
    adc a
    ld a, e
    add d
    ld a, [hl+]
    ld [bc], a
    adc e
    add hl, sp
    add d
    ld a, [hl-]
    ld de, $8D8B
    ld e, h
    rra
    dec hl
    ld [$DD19], sp
    sbc $DF
    adc e
    adc l
    xor d
    ld c, l
    ld a, [hl-]
    dec sp
    adc e
    add [hl]
    ld a, [hl-]
    inc b
    dec l
    ld c, h
    ld e, $7C
    add e
    ld e, $03
    ld l, h
    ld l, l
    adc a
    add [hl]
    ld a, [hl+]
    db $10
    adc d
    adc e
    add hl, hl
    dec e
    rra
    dec hl
    ld [$ED0D], sp
    ld a, c
    rst $28
    dec de
    adc l
    xor e
    ld a, a
    adc d
    add d
    ld a, [hl+]
    ld [bc], a
    ld a, e
    adc c
    add d
    ld a, [hl+]
    dec b
    adc d
    ld a, e
    add hl, sp
    dec l
    ld c, h
    add h
    ld e, $03
    ld l, h
    cpl
    dec sp
    adc b
    ld a, [hl+]
    ld b, $29
    dec e
    rra
    dec de
    add hl, de
    dec e
    add d
    ld a, h
    dec b
    dec a
    rrca
    ld a, [hl]
    xor e
    adc a
    add l
    ld a, [hl+]
    add d
    ld a, e
    dec b
    ld a, [hl+]
    adc c
    ld a, e
    add hl, sp
    dec l
    add h
    ld l, $03
    cpl
    dec sp
    adc e
    add a
    ld a, [hl+]
    inc b
    adc d
    add hl, hl
    dec e
    dec a
    add d
    ld c, $01
    inc a
    add e
    ld e, $82
    ld a, h
    inc bc
    ld c, l
    adc a
    adc e
    add e
    ld a, [hl+]
    ld [bc], a
    adc d
    ld a, e
    add d
    ld a, [hl+]
    inc b
    adc d
    ld a, [hl+]
    adc d
    add hl, sp
    add h
    ld a, [hl-]
    ld [bc], a
    adc d
    adc e
    adc c
    ld a, [hl+]
    add d
    add hl, sp
    dec b
    dec l
    adc h
    ld l, h
    ld e, c
    ld e, h
    add d
    ld e, $04
    ld c, l
    cpl
    dec hl
    adc e
    adc h
    ld a, [hl+]
    inc b
    adc e
    ld a, [hl+]
    ld a, [hl+]
    adc e
    adc h
    ld a, [hl+]
    dec b
    ld a, e
    add hl, sp
    dec l
    ld c, h
    adc h
    add e
    ld e, $03
    rra
    dec hl
    adc e
    sbc [hl]
    ld a, [hl+]
    ld a, [bc]
    ld a, e
    add hl, sp
    add hl, sp
    dec l
    ld c, h
    ld e, $4D
    cpl
    dec sp
    ld a, d
    and b
    ld a, [hl+]
    rlca
    ld a, e
    add hl, sp
    dec l
    ld l, $2F
    dec sp
    ld a, e
    and d
    ld a, [hl+]
    dec b
    ld a, e
    add hl, sp
    ld a, [hl-]
    dec sp
    ld a, d
    ret nz

    ld d, [hl]
    ld a, [hl+]
    nop
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    sub b
    dec d
    ld bc, $833E
    dec h
    ld bc, $983F
    dec d
    ld [bc], a
    ld a, $26
    add e
    jr z, jr_02B_4662

    inc h
    dec h
    dec h
    ccf

jr_02B_4662:
    sub h
    dec d
    rlca
    ld a, $26
    add hl, hl
    rlca
    ld [$2709], sp
    add d
    jr z, jr_02B_4671

    inc h
    ccf

jr_02B_4671:
    adc h

jr_02B_4672:
    dec d
    ld b, $3E
    dec h
    dec h
    ccf
    dec d
    dec d
    dec c
    ld a, $26
    add hl, hl
    rlca
    pop af
    jr jr_02B_4672

    ld [$5409], sp
    daa
    inc h
    ccf
    adc d
    dec d
    ld [bc], a
    ld a, $26
    add d
    jr z, jr_02B_4698

    inc h
    ccf
    ld a, $26
    add hl, hl
    ld d, h
    daa
    pop hl

jr_02B_4698:
    add e
    jr jr_02B_46A0

    add hl, de
    ld d, h
    ld [$1417], a

jr_02B_46A0:
    add a
    dec d
    dec b
    ld a, $25
    dec h
    ld h, $29
    add d
    ld d, h
    dec b
    rla
    inc d
    ld d, $19
    ld [$5482], a
    add hl, bc
    rla
    ld a, l
    ld a, [hl]
    ld a, a
    add hl, de
    ld d, h
    rlca
    inc b
    ld c, a
    add [hl]
    dec d
    ld [bc], a
    ld a, $26
    add d
    jr z, @+$04

    add hl, hl
    ld [$5482], a
    inc b
    rla
    inc d
    ld d, $19
    add d
    ld d, h
    add hl, bc
    rlca
    pop af
    adc l
    adc [hl]
    adc a
    ldh a, [$08]
    inc b
    adc c
    add d
    dec h
    ld bc, $843F
    dec d
    ld [bc], a
    ld d, $19
    add l
    ld d, h
    ld [$0407], sp
    ld c, a
    ld d, $19
    ld d, h
    ld [$8517], a
    jr @+$05

    ld a, b
    adc c
    ld h, $82
    jr z, jr_02B_46F8

    inc h
    ccf

jr_02B_46F8:
    add e
    dec d
    dec b
    ld d, $19
    ld d, h
    inc [hl]
    dec [hl]
    add d
    ld d, h
    dec b
    daa
    inc h
    ccf
    ld d, $19
    add d
    ld d, h
    ld [bc], a
    daa
    pop hl
    add e
    jr jr_02B_4719

    ld a, b
    adc c
    ld h, $29
    ld a, [bc]
    inc c
    daa
    inc h
    ccf

jr_02B_4719:
    add d
    dec d
    dec b
    ld c, [hl]
    ld b, $09
    ld b, h
    ld b, l
    add e
    ld d, h
    dec b
    rla
    inc d
    ld c, [hl]
    ld b, $09
    add d
    ld d, h
    ld a, [bc]
    daa
    jr z, @-$66

    ld a, b
    adc c
    ld h, $29
    ld a, [bc]
    ld [hl], h
    ld bc, $0283
    add e
    dec d
    inc bc
    ld c, [hl]
    ld b, $09
    add e
    ld d, h
    ld b, $EA
    rla
    inc d
    dec d
    ld c, [hl]
    ld b, $84
    ld [$040B], sp
    adc c
    ld h, $29
    ld [$001A], a
    ld d, e
    ld bc, $0302
    add h
    dec d
    ld [bc], a
    ld c, [hl]
    ld b, $84
    ld [$0402], sp
    ld c, a
    add d
    dec d
    ld bc, $844E
    dec b
    dec bc
    ld c, a
    ld c, [hl]
    ld b, $09
    ld a, [bc]
    ld [hl], h
    nop
    ld d, e
    ld de, $507C
    add l
    dec d
    ld bc, $844E
    dec b
    inc bc
    ld c, a
    dec d
    ld a, $84
    dec h
    rlca
    ccf
    dec d
    dec d
    ld a, $26
    add hl, hl
    ld a, [de]
    add d
    nop
    inc b
    ld de, $3221
    inc de
    add [hl]
    dec d
    rlca
    ld a, $25
    dec h
    ccf
    dec d
    ld a, $26
    add h
    jr z, jr_02B_47A0

    inc h
    ccf
    ld a, $26
    add hl, hl
    ld a, [bc]
    ld [hl], h

jr_02B_47A0:
    add d
    nop
    inc b
    ld b, d
    ld b, e
    ld hl, $8523
    dec d
    ld [bc], a
    ld a, $26
    add d
    jr z, jr_02B_47B4

    inc h
    ccf
    ld d, $19
    dec c

jr_02B_47B4:
    add d
    ld c, $09
    rrca
    rla
    inc d
    ld d, $19
    ld a, [bc]
    sbc l
    sbc [hl]
    sbc a
    add d
    nop
    inc bc
    ld d, e
    xor l
    ld a, h
    add d
    dec d
    dec b
    ld a, $25
    dec h
    ld h, $29
    add d
    ld d, h
    jr jr_02B_47E9

    inc d
    ld d, $19
    dec e
    jr c, jr_02B_4811

    rra
    rla
    inc d
    ld d, $19
    ld a, [de]
    xor l
    xor [hl]
    xor a
    xor l
    nop
    ld de, $AD7C
    dec d
    ld a, $26

jr_02B_47E9:
    add d
    jr z, jr_02B_47FF

    add hl, hl
    ld a, [bc]
    dec bc
    inc c
    rla
    inc d
    ld d, $19
    dec e
    ld c, b
    ld c, c
    rra
    rla
    inc d
    ld d, $19
    ld a, [de]
    xor l
    rst $28

jr_02B_47FF:
    add e
    xor l
    rlca
    ld hl, $AD32
    dec d
    ld d, $19
    ld a, [bc]
    add d
    dec bc
    ld [$9C9B], sp
    inc e
    rla
    inc d

jr_02B_4811:
    ld d, $19
    dec l
    add d
    ld l, $06
    cpl
    rla
    inc d
    ld d, $19
    ld a, [hl+]
    add l
    dec hl
    rlca
    sub h
    ld b, d
    ld b, e
    dec d
    ld d, $19
    ld a, [de]
    add d
    xor h
    rlca
    xor e
    xor h
    inc e
    daa
    inc h
    ld a, c
    ld b, $84
    ld [$0404], sp
    ld c, a
    ld c, [hl]
    ld b, $85
    ld [$0909], sp
    ld a, [hl+]
    sub h
    ld d, e
    dec d
    ld d, $19
    ld a, [de]
    ld bc, $0282
    ld b, $03
    ld h, h
    inc c
    rla
    inc d
    ld c, [hl]
    add h
    dec b
    inc b
    ld c, a
    dec d
    dec d
    ld c, [hl]
    add l
    dec b
    add hl, bc
    ld b, $09
    ld a, [de]
    ld d, e
    dec d
    ld d, $19
    ld a, [de]
    ld de, $7C82
    rlca
    ld d, b
    xor h
    inc e
    rla
    inc d
    dec d
    ld a, $8A
    dec h
    inc d
    ccf
    dec d
    ld d, $19
    ld a, [hl+]
    ld d, e
    dec d
    ld d, $19
    ld a, [de]
    ld hl, $7C32
    ld d, b
    xor h
    inc e
    rla
    inc d
    ld a, $26
    adc d
    jr z, jr_02B_4898

    inc h
    ccf
    ld c, [hl]
    ld b, $09
    ld d, e
    dec d
    ld d, $19
    ld a, [hl+]
    sub h
    ld hl, $1332
    xor h
    inc e
    rla
    inc d
    ld d, $19

jr_02B_4898:
    adc b
    ld d, h
    ld d, $EA
    ld d, h
    daa
    inc h
    ccf
    ld d, $19
    ld d, e
    dec d
    ld d, $19
    ld d, h
    ld a, [de]
    xor h
    ld hl, $8441
    inc l
    rla
    inc d
    ld d, $19
    add d
    ld d, h
    inc bc
    cp l
    cp [hl]
    cp a
    add l
    ld d, h
    dec bc
    ld [$1417], a
    ld d, $19
    ld d, e
    dec d
    ld c, [hl]
    ld b, $09
    ld a, [de]
    add d
    xor h
    inc c
    add h
    inc l
    rlca
    inc b
    ld c, a
    ld c, [hl]
    ld b, $09
    ld d, h
    cp l
    adc $BF
    add d
    ld d, h
    ld bc, $8307
    ld [$0405], sp
    ld c, a
    ld d, $19
    ld d, e
    add d
    dec d
    inc bc
    ld d, $19
    ld a, [de]
    add d
    xor h
    inc b
    inc e
    rlca
    inc b
    ld c, a
    add d
    dec d
    inc bc
    ld c, [hl]
    ld b, $09
    add h
    ld d, h
    ld [bc], a
    rlca
    inc b
    add e
    dec b
    rrca
    ld c, a
    ld a, $26
    add hl, hl
    ld d, e
    dec d
    ld a, $26
    add hl, hl
    ld a, [de]
    db $ED
    xor h
    inc e
    daa
    inc h
    add d
    dec h
    inc b
    ccf
    dec d
    ld c, [hl]
    ld b, $84
    ld [$0403], sp
    ld c, a
    ld a, $83
    dec h
    add hl, bc
    ld h, $29
    ld a, [bc]
    ld d, e
    dec d
    ld d, $19
    ld a, [bc]
    ld [hl], h
    add d
    xor h
    inc bc
    ld h, h
    inc c
    daa
    add d
    jr z, jr_02B_4930

    inc h
    ccf
    dec d
    ld c, [hl]

jr_02B_4930:
    add h
    dec b
    inc bc
    ld c, a
    ld a, $26
    add e
    jr z, @+$0B

    add hl, hl
    ld a, [bc]
    ld [hl], h
    ld d, e
    ld a, $26
    add hl, hl
    ld a, [de]
    ld bc, $0282
    ld [$6403], sp
    dec bc
    inc c
    ld [$2427], a
    ccf
    add l
    dec d
    ld a, [bc]
    ld a, $26
    add hl, hl
    ld [$54EC], a
    ld a, [bc]
    ld [hl], h
    ld bc, $8463
    ld [bc], a
    inc b
    ld h, e
    ld a, h
    xor h
    ld h, b
    sub h
    ld [bc], a
    ld [bc], a
    ld h, e
    xor h
    nop
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    dec b
    ld bc, $0302
    nop
    ld a, h
    add [hl]
    nop
    ld [bc], a
    ld a, h
    ld bc, $0282
    inc b
    inc bc
    nop
    ld d, b
    dec l
    add [hl]
    ld e, $0A
    ld l, $53
    nop
    ld a, h
    nop
    ld [de], a
    ld a, h
    inc de
    nop
    ld sp, $2285
    ld a, [bc]
    ld [hl-], a
    nop
    ld de, $7C12
    inc de
    ld a, h
    inc de
    inc c
    dec l
    add h
    ld l, $04
    cpl
    ld a, [bc]
    ld de, $827C
    nop
    dec b
    ld [de], a
    ld b, b
    inc hl
    ld sp, $8541
    nop
    inc bc
    ld b, d
    ld b, e
    ld hl, $2282
    inc b
    inc hl
    ld b, b
    ld b, c
    inc e
    add [hl]
    ld d, h
    inc b
    ld a, [de]
    ld b, d
    ld b, e
    nop
    add d
    ld a, h
    inc bc
    ld d, b
    ld b, b
    ld b, c
    add a
    nop
    ld bc, $8353
    nop
    inc b
    ld a, h
    ld d, b
    add h
    inc l
    add [hl]
    ld d, h
    ld b, $1A
    add sp, $53
    ld a, h
    nop
    ld [de], a
    add d
    ld d, b
    add e
    nop
    inc bc
    ld d, [hl]
    ld d, a
    ld e, b
    add d
    nop
    inc bc
    ld d, e
    nop
    ld a, h
    add d
    nop
    ld [bc], a
    ld d, b
    inc e
    add [hl]
    ld d, h
    rlca
    ld a, [bc]
    ld [hl], h
    ld bc, $0063
    ld a, h
    ld [de], a
    add d
    ld d, b
    add e
    nop
    inc bc
    ld h, [hl]
    ld h, a
    ld l, b
    add d
    nop
    ld bc, $8453
    nop
    ld [de], a
    ld d, b
    inc e
    ld e, c
    ld e, d
    ld e, e
    ld d, h
    ld a, [bc]
    dec bc
    ld [hl], h
    ld bc, $0163
    ld [bc], a
    inc bc
    ld [hl-], a
    inc de
    ld h, b
    inc bc
    add a
    nop
    jr jr_02B_4A6C

    nop
    nop
    ld a, h
    nop
    ld d, b
    inc e
    ld l, c
    ld l, d
    ld l, e
    ld d, h
    ld a, [de]
    db $EB
    ld bc, $7C63
    ld d, e
    nop
    ld a, h
    ld hl, $1241
    ld h, b
    inc bc
    add l
    nop
    inc bc
    ld bc, $7C63
    add e
    nop
    ld [bc], a
    ld d, b
    inc e
    add h
    ld d, h
    ld b, $2A
    sub h
    ld d, e
    ld a, h
    ld bc, $8263
    nop
    add d
    ld [de], a
    inc bc
    nop
    ld a, h
    ld h, b
    add l
    ld [bc], a
    ld bc, $8463
    nop
    inc b
    ld a, h
    ld d, b
    ld h, h
    inc c
    add h
    ld d, h
    rlca
    ld a, [de]
    ld d, e
    nop
    ld d, e
    ld bc, $0302
    adc [hl]
    ld [hl+], a
    dec b
    ld [hl-], a
    nop
    ld h, b
    inc bc
    ld h, h
    add h
    dec bc
    rlca

jr_02B_4A6C:
    ld [hl], h
    ld d, e
    ld a, h
    ld d, e
    ld de, $137C
    add d
    dec d
    ld bc, $843E
    dec h
    inc c
    ccf
    ld c, [hl]
    ld b, $09
    ld a, [hl+]
    dec hl
    sub h
    ld b, d
    ld [hl-], a
    nop
    ld h, b
    inc bc
    add h
    nop
    ld a, [bc]
    ld bc, $0063
    ld de, $2221
    inc hl
    dec d
    ld a, $26
    add h
    jr z, jr_02B_4AA2

    inc h
    ccf
    ld c, [hl]
    ld b, $08
    add hl, bc
    ld a, [hl+]
    sub h
    ld b, d
    ld [hl-], a
    ld a, h
    ld h, b

jr_02B_4AA2:
    add h
    ld [bc], a
    add hl, de
    ld h, e
    nop
    nop
    ld hl, $0043
    ld bc, $1615
    add hl, de
    ld [hl], c
    cp e
    cp h
    ld d, h
    daa
    inc h
    ccf
    ld c, [hl]
    dec b
    ld b, $09
    ld a, [hl+]
    sub h
    ld b, d
    ld [hl-], a
    add d
    nop
    inc b
    ld a, h
    nop
    nop
    ld a, h
    add e
    nop
    ld d, $53
    ld a, h
    ld de, $1615
    add hl, de
    add c
    set 1, h
    ld d, h
    ld [$2427], a
    dec h
    ccf
    ld c, [hl]
    ld b, $09
    ld a, [hl+]
    sub h
    ld b, d
    ld [hl-], a
    add a
    nop
    ld a, [bc]
    ld a, h
    ld de, $2100
    dec d
    ld d, $19
    sub c
    db $DB
    call c, $5483
    ld c, $27
    jr z, jr_02B_4B15

    ccf
    ld c, [hl]
    ld b, $09
    ld a, [hl+]
    sub h
    ld b, d
    ld b, e
    nop
    ld a, d
    ld a, e
    add d
    ld a, h
    add d
    nop
    ld b, $21
    ld [hl+], a
    ld [hl-], a
    ld a, $26
    add hl, hl
    add e
    ld d, h
    ld c, $07
    ld [$0908], sp
    ld d, h
    daa
    inc h
    ccf
    ld c, [hl]
    ld b, $09

jr_02B_4B15:
    ld a, [hl+]
    sub h
    ld d, e
    add d
    nop
    ld [bc], a
    adc e
    adc h
    add e
    nop
    ld a, [bc]
    jp $21C4


    ld d, $19
    ld d, h
    ld [$0754], a
    inc b
    add d
    dec b
    dec c
    ld b, $09
    ld d, h
    daa
    inc h
    ccf
    ld d, $19
    ld d, h
    ld a, [de]
    ld de, $317C
    add e
    ld [hl+], a
    db $10
    ld [hl-], a
    ld [de], a
    db $D3
    call nc, $167C
    add hl, de
    ld a, [bc]
    inc c
    ld d, h
    rla
    inc d
    ld [hl], $37
    ld d, $19
    add d
    ld d, h
    inc h
    rla
    inc d
    ld c, [hl]
    ld b, $09
    ld a, [de]
    ld hl, $4122
    add h
    dec hl
    sub h
    ld b, d
    ld b, e
    db $E3
    db $E4
    nop
    ld d, $19
    ld a, [de]
    ld h, h
    inc c
    rla
    inc d
    ld b, [hl]
    ld b, a
    ld c, [hl]
    ld b, $09
    ld [$1417], a
    dec d
    ld d, $19
    ld a, [hl+]
    add e
    dec hl
    db $10
    inc l
    ld d, h
    ld a, [hl+]
    sub h
    ld de, $F4F3
    nop
    ld d, $19
    ld a, [de]
    nop
    inc e
    daa
    inc h
    ccf
    add d
    dec d
    ld a, [bc]
    ld c, [hl]
    ld b, $08
    inc b
    ld c, a
    dec d
    ld d, $19
    ld d, h
    ld [$5485], a
    dec c
    ld a, [de]
    ld hl, $3222
    ld a, h
    ld d, $19
    ld a, [hl+]
    dec hl
    inc l
    ld d, h
    rla
    inc d
    add e
    dec d
    inc bc
    ld c, [hl]
    dec b
    ld c, a
    add d
    dec d
    ld [bc], a
    ld d, $19
    add a
    ld d, h
    ld [$001A], sp
    nop
    ld hl, $4E43
    ld b, $09
    add e
    ld d, h
    inc bc
    rla
    inc d
    ld a, $85
    dec h
    inc b
    ccf
    dec d
    ld c, [hl]
    ld b, $82
    ld [$0902], sp
    ld [$5483], a
    ld [$2B2A], sp
    sub h
    nop
    ld de, $4E15
    ld b, $83
    ld [$0403], sp
    adc c
    ld h, $85
    jr z, jr_02B_4BE4

    inc h
    ccf
    dec d
    ld c, [hl]

jr_02B_4BE4:
    add d
    dec b
    ld [bc], a
    ld b, $09
    add d
    ld d, h
    ld b, $07
    ld [$2A09], sp
    sub h
    ld hl, $1582
    ld bc, $834E
    dec b
    dec b
    ld c, a
    ld d, $19
    ld d, h
    ld a, [bc]
    add d
    dec bc
    add hl, bc
    inc c
    rla
    inc d
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld c, [hl]
    ld b, $82
    ld [$0406], sp
    dec b
    ld b, $09
    ld a, [de]
    ld a, [c]
    add a
    dec d
    rrca
    ld c, [hl]
    ld b, $09
    ld a, [hl+]
    sub h
    dec de
    inc e
    rla
    inc d
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    dec d
    ld c, [hl]
    add d
    dec b
    ld b, $4F
    dec d
    ld d, $19
    ld a, [hl+]
    dec hl
    adc b
    dec d
    ld [$064E], sp
    add hl, bc
    ld a, [de]
    dec de
    inc e
    daa
    inc h
    adc b
    dec h
    ld b, $3F
    dec d
    ld d, $19
    ld [$8807], a
    dec d
    ld [$263E], sp
    add hl, hl
    ld a, [hl+]
    sub h
    ld h, h
    inc c
    daa
    adc b
    jr z, jr_02B_4C56

    inc h
    ccf
    ld c, [hl]
    ld b, $08
    inc b

jr_02B_4C56:
    adc b
    dec d
    rlca
    ld c, [hl]
    ld b, $09
    db $EC
    ld a, [hl+]
    dec hl
    inc l
    adc c
    ld d, h
    ld b, $17
    inc d
    dec d
    ld c, [hl]
    dec b
    ld c, a
    adc c
    dec d
    ld [bc], a
    ld c, [hl]
    ld b, $8D
    ld [$0402], sp
    ld c, a
    adc [hl]
    dec d
    ld bc, $8D4E
    dec b
    ld bc, $854F
    dec d
    nop
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    add h
    ld e, c
    add d
    rrca
    sub c
    ld e, c
    ld bc, $8627
    ld l, $85
    ld e, c
    inc b
    rrca
    ld c, $0E
    rrca
    add e
    ld e, c
    ld b, $27
    ld l, $2E
    sub [hl]
    sub a
    sbc b
    add h
    ld e, c
    ld [bc], a
    daa
    cpl
    add [hl]
    ld a, $02
    ld e, c
    daa
    add e
    ld l, $03
    ld h, $0E
    ld c, $82
    rrca
    inc bc
    ld e, c
    daa
    cpl
    add d
    ld a, $04
    and [hl]
    and a
    xor b
    dec e
    add e
    ld e, c
    ld a, [bc]
    rra
    ccf
    adc [hl]
    ld l, d
    ld c, l
    ld e, [hl]
    ld c, a
    adc [hl]
    daa
    cpl
    add e
    ld a, $0F
    dec l
    ld h, $59
    rra
    ld e, c
    rrca
    rra
    ccf
    add hl, hl
    sbc e
    or [hl]
    or a
    cp b
    dec l
    ld h, $83
    ld e, c
    ld [bc], a
    rrca
    ld c, l
    add d
    ld e, [hl]
    dec b
    ld l, [hl]
    ld e, [hl]
    add hl, hl
    cpl
    ccf
    add e
    ld e, c
    dec b
    dec a
    dec l
    ld l, $2F
    ld e, c
    add d
    rra
    ld [$4D8E], sp
    ld e, [hl]
    ld c, a
    ld c, l
    ld c, a
    dec a
    dec e
    add e
    ld e, c
    ld bc, $860D
    ld c, $01
    ccf
    add h
    ld l, $05
    ld e, c
    dec a
    ld a, $3F
    ld e, c
    add d
    rra
    ld bc, $834D
    ld e, [hl]
    add d
    ld e, a
    ld [bc], a
    adc [hl]
    dec e
    add e
    ld e, c
    inc b
    dec e
    ld e, c
    ld e, c
    ld e, $83
    ld e, c
    ld bc, $842F
    ld a, $01
    dec l
    add h
    ld l, $09
    cpl
    rra
    ld l, l
    ld e, [hl]
    ld l, a
    ld e, [hl]
    ld e, a
    ld l, a
    dec c
    add h
    ld e, c
    ld bc, $852D
    ld l, $02
    ld h, $3F
    add h
    ld e, c
    ld bc, $843D
    ld a, $08
    ccf
    ld e, c
    rrca
    adc [hl]
    adc h
    ld l, l
    ld e, [hl]
    dec c
    add l
    ld e, c
    ld bc, $853D
    ld a, $08
    dec l
    ld e, c
    ld e, c
    xor d
    sub [hl]
    sub a
    sbc b
    ld h, $86
    ld e, c
    add h
    ld c, $85
    ld e, c
    rrca
    daa
    ld l, $2E
    sub [hl]
    sub a
    sbc b
    ld e, c
    dec a
    ld e, c
    rra
    cp d
    and [hl]
    and a
    xor b
    dec l
    add d
    ld l, $01
    ld h, $8B
    ld e, c
    ld [bc], a
    daa
    cpl
    add d
    ld a, $04
    and [hl]
    and a
    xor b
    dec e
    add d
    ld e, c
    ld b, $1F
    add hl, hl
    or [hl]
    or a
    cp b
    dec a
    add d
    ld a, $04
    dec l
    ld h, $59
    ld [hl], a
    adc b
    ld e, c
    ld [$3F1F], sp
    adc [hl]
    ld l, d
    or [hl]
    or a
    cp b
    dec e
    add d
    ld e, c
    ld bc, $831F
    adc [hl]
    add hl, bc
    ld c, l
    ld e, [hl]
    ld l, l
    ld e, c
    dec a
    dec e
    ld a, b
    add a
    halt
    add a
    ld e, c
    ld [$8E1F], sp
    ld c, l
    ld c, a
    ld c, l
    ld e, [hl]
    ld e, c
    dec e
    add d
    ld e, c
    inc bc
    rra
    ld a, e
    ld c, l
    add e
    ld e, [hl]
    ld [$7B6F], sp
    dec c
    ld l, b
    ld l, c
    sbc $DD
    ld h, [hl]
    add [hl]
    ld e, c
    ld [bc], a
    rra
    ld c, l
    add h
    ld e, [hl]
    ld bc, $830D
    ld e, c
    ld a, [bc]
    rra
    adc [hl]
    ld e, l
    ld e, [hl]
    ld l, a
    adc [hl]
    dec c
    ld c, $59
    ld a, b
    add e
    sbc $01
    halt
    add e
    ld [hl], a
    add h
    ld e, c
    ld [bc], a
    rrca
    ld l, l
    add d
    ld e, [hl]
    ld [bc], a
    ld l, a
    dec e
    add h
    ld e, c
    add hl, bc
    rrca
    adc [hl]
    ld l, l
    ld e, [hl]
    adc [hl]
    dec e
    ld e, c
    ld a, b
    xor a
    add e
    sbc $01
    xor l
    add e
    add a
    ld bc, $8376
    ld e, c
    rlca
    rra
    ld e, c
    sbc e
    ld e, [hl]
    ld c, a
    dec l
    ld h, $84
    ld e, c
    rlca
    rrca
    add hl, hl
    adc [hl]
    dec c
    ld e, c
    ld a, b
    xor a
    add d
    sbc $01
    ld b, a
    add [hl]
    sbc $01
    halt
    add e
    ld e, c
    rlca
    rrca
    ld e, c
    ld l, l
    ld l, a
    dec a
    dec e
    dec c
    add h
    ld e, c
    dec b
    rrca
    ld c, $59
    ld l, b
    cp a
    add d
    sbc $03
    ld d, [hl]
    ld e, c
    ld e, b
    add l

jr_02B_4E34:
    sbc $02
    ld h, l
    ld h, [hl]
    add e
    ld e, c
    inc bc
    rrca
    adc [hl]
    ld e, c
    add d
    dec c
    add l
    ld e, c
    ld bc, $831F
    ld e, c
    inc bc
    ld e, b
    ld b, a
    ld d, [hl]
    add e
    ld e, c
    ld bc, $8458
    sbc $01
    ld d, [hl]
    add l
    ld e, c
    add d
    ld c, $02
    ld e, c
    dec e
    add h
    ld e, c
    ld [bc], a
    daa
    cpl
    adc d
    ld e, c
    ld a, [bc]
    ld e, b
    sbc $DE
    ld h, l
    ld h, [hl]
    ld e, c
    xor d
    sub [hl]
    sub a
    sbc b
    add e
    ld e, c
    ld bc, $831D
    ld e, c
    inc b
    daa
    cpl
    ccf
    daa
    add [hl]
    ld l, $11
    sub [hl]
    sub a
    sbc b
    ld e, c
    ld e, b
    ld b, a
    ld d, [hl]
    ld e, c
    rra
    cp d
    and [hl]
    and a
    xor b
    dec l
    ld h, $59
    dec e
    add e
    ld e, c
    inc b
    rra
    ccf
    ld l, $2F
    add e
    ld a, $09
    add hl, bc
    ld a, $3E
    and [hl]
    and a
    xor b
    dec e
    ld e, c
    ld d, a
    add d
    ld e, c
    add hl, bc
    rra
    adc h
    or [hl]
    ld a, [hl]
    cp b
    dec a
    dec e
    ld e, c
    dec e
    add e
    ld e, c
    add d
    rra
    inc bc
    ld a, $3F
    jr z, jr_02B_4E34

    adc [hl]
    rlca
    add hl, de
    adc [hl]
    ld a, d
    or [hl]
    ld a, [hl]
    cp b
    dec e
    add h
    ld e, c
    add hl, bc
    rra
    ld e, c
    ld c, l
    ld e, [hl]
    ld c, a
    adc [hl]
    dec e
    ld e, c
    dec e
    add e
    ld e, c
    add d
    rra
    inc bc
    jr z, jr_02B_4F49

    ld c, l
    add d
    ld c, [hl]
    add d
    ld c, a
    dec b
    sbc e
    ld c, l
    ld l, a
    adc [hl]
    dec l
    add h
    ld e, c
    ld [$062F], sp
    ld e, [hl]
    ld c, l
    ld e, [hl]
    ld c, a
    dec l
    dec c
    add h
    ld e, c
    add d
    rra
    ld [bc], a
    adc [hl]
    ld c, l
    add h
    ld e, [hl]
    ld [bc], a
    ld l, l
    ld c, [hl]
    add d
    ld c, a
    inc bc
    ld e, d
    dec a
    dec e
    add d
    ld e, c
    inc b
    rra
    ccf
    ld d, $6D
    add d
    ld e, [hl]
    inc bc
    ld e, a
    dec a
    dec e
    add h
    ld e, c
    add d
    rra
    ld [$6D8E], sp
    ld e, a
    ld l, a
    ld l, l
    ld e, [hl]
    ld l, a
    ld l, l
    add d
    ld e, [hl]
    inc bc
    ld c, a
    adc [hl]
    dec e
    add d
    ld e, c
    inc b
    rra
    adc [hl]
    ld l, d
    ld c, l
    add d
    ld e, [hl]
    inc bc
    ld l, a
    ld a, [hl+]
    dec e
    add h
    ld e, c
    add d
    rra
    ld [$5F8E], sp
    ld e, a
    ld a, e
    ld c, l
    ld l, [hl]
    ld e, d
    ld c, l
    add d
    ld l, [hl]
    ld [bc], a
    ld l, a
    dec c
    add e
    ld e, c
    add hl, bc
    rra
    adc [hl]
    ld c, l
    ld e, [hl]
    ld l, a
    add hl, hl
    adc [hl]
    add hl, hl
    dec e
    add h
    ld e, c
    add d
    rra
    inc bc
    adc [hl]
    ld e, a
    ld l, a

jr_02B_4F49:
    add d
    adc [hl]
    inc bc
    adc l
    ld l, [hl]
    ld l, a
    add d
    adc [hl]
    ld [bc], a
    sbc h
    dec e
    add h
    ld e, c
    inc b
    rrca
    ld l, l
    ld l, a
    sbc e
    add d
    adc [hl]
    ld bc, $850D
    ld e, c
    add d
    rra
    add d
    adc [hl]
    ld [bc], a
    dec c
    rrca
    add h
    adc [hl]
    inc bc
    dec c
    ld c, $0E
    add l
    ld e, c
    ld bc, $850D
    ld c, $86
    ld e, c
    add d
    rra
    add d
    adc [hl]
    ld [bc], a
    dec e
    ld e, c
    add h
    ld c, $84
    ld e, c
    ld bc, $830D
    ld c, $8C
    ld e, c
    add d
    rra
    add d
    adc [hl]
    ld bc, $871D
    ld e, c
    ld [bc], a
    dec c
    ld c, $8E
    ld e, c
    nop
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    adc b
    ld e, e
    dec b
    ldh [$D1], a
    pop de
    jp $86B3


    ld e, e
    ld b, $0B
    dec de
    adc d
    adc e
    adc h
    ld l, $83
    dec a
    ld bc, $890E
    ld e, e
    dec b
    ldh a, [$E0]
    pop hl
    db $E3
    db $E4
    add [hl]
    ld e, e
    ld a, [bc]
    dec de
    inc e
    sbc d
    sbc e
    sbc h
    ld a, d
    rla
    jr jr_02B_4FDE

    ld a, [hl+]
    adc d
    ld e, e
    inc b
    ldh a, [$F1]
    di
    db $F4
    add [hl]
    ld e, e
    ld b, $2B
    dec l
    xor d
    xor e
    ld l, d
    rla
    add d
    jr z, jr_02B_4FDB

    add hl, hl
    ld a, [hl+]

jr_02B_4FDB:
    add h
    ld e, e
    ld [bc], a

jr_02B_4FDE:
    dec bc
    inc c
    add e
    dec c
    ld [bc], a
    ld c, $0F
    add a
    ld e, e
    dec b
    inc c
    sbc b
    dec a
    ld a, d
    rla
    add d
    jr jr_02B_4FF5

    jp z, $2828

    add hl, hl
    ld a, [hl+]

jr_02B_4FF5:
    add e
    ld e, e
    dec bc
    dec bc
    inc c
    ld l, $8A
    adc e
    adc h
    ld l, $0E
    rrca
    ld e, e
    rlca
    add h
    ld [$7A02], sp
    rla
    add d
    jr @+$04

    jp z, $84B9

    jr c, jr_02B_5013

    add hl, sp
    ld a, [hl+]
    ld e, e

jr_02B_5013:
    add e
    ld [$7B05], sp
    dec l
    sbc d
    sbc e
    sbc h
    add d
    ld l, $03
    rra
    rlca
    rla
    add l
    jr @+$03

    res 0, e
    jr c, jr_02B_5029

    add hl, sp

jr_02B_5029:
    add h
    ld c, b
    inc bc
    ld c, c
    ld e, c
    ld e, e
    add e
    jr jr_02B_5037

    add hl, de
    ld a, e
    xor d
    xor e
    xor h

jr_02B_5037:
    add d
    dec a
    inc bc
    ld a, d
    rla
    res 0, l
    jr c, jr_02B_5041

    add hl, sp

jr_02B_5041:
    add e
    ld c, b
    ld [bc], a
    ld c, c
    ld [bc], a
    add e
    ld e, b
    inc bc
    ld e, c
    ld c, a
    ld e, e
    add d
    jr c, jr_02B_5051

    cp d
    ret


jr_02B_5051:
    add a
    jr jr_02B_5056

    srl c

jr_02B_5056:
    add l
    ld c, b
    ld [bc], a
    ld c, c
    ld [bc], a
    add d
    ld e, b
    ld [bc], a
    ld e, c
    ld c, a
    add [hl]
    ld e, e
    add d
    ld c, b
    ld [bc], a
    scf
    cp d
    add [hl]
    jr z, jr_02B_506D

    cp c
    add hl, sp
    ld c, c

jr_02B_506D:
    add l
    ld e, b
    ld [bc], a
    ld e, c
    ld c, a
    adc d
    ld e, e
    add d
    ld e, b
    ld [bc], a
    ld b, a
    daa
    add [hl]
    jr z, jr_02B_5081

    add hl, hl
    ld c, c
    ld e, d
    ld e, e
    inc c

jr_02B_5081:
    add e
    dec c
    inc b
    ld c, $07
    ld [$8509], sp
    ld e, e
    inc bc
    rlca
    ld [$8208], sp
    ld e, e

jr_02B_5090:
    inc bc

jr_02B_5091:
    ld h, $37
    cp d
    add l
    jr z, jr_02B_5099

    add hl, hl
    ld a, [hl+]

jr_02B_5099:
    add d
    ld e, e
    dec bc
    dec hl
    adc d
    adc e
    adc h

jr_02B_50A0:
    ld l, c
    rla
    jr jr_02B_50BD

    add hl, bc
    ld e, e
    rlca
    add d
    ld [$1703], sp
    jr jr_02B_50C5

    add d
    ld e, e
    inc b
    ld b, [hl]
    ld b, a
    scf
    cp d
    add h
    jr z, jr_02B_50C1

    add hl, hl
    ld a, [hl+]
    ld e, e
    dec de
    ld l, $9A

jr_02B_50BD:
    sbc e
    sbc h
    ld a, d
    daa

jr_02B_50C1:
    add d
    jr z, @+$05

    add hl, de

jr_02B_50C5:
    ld [$8217], sp
    jr jr_02B_50CD

    jp z, $2828

jr_02B_50CD:
    add d

jr_02B_50CE:
    ld e, e
    ld [de], a
    ld c, e
    ld d, a
    ld b, a
    scf
    jr c, jr_02B_5090

    jr z, jr_02B_5091

    add hl, sp
    ld a, [hl+]
    ld e, e
    dec hl
    ld l, $AA
    xor e
    ld l, d
    rla
    jp z, $2883

    ld [bc], a
    jr jr_02B_5090

    add e
    jr c, jr_02B_50FC

    cp d
    jr z, jr_02B_50A0

    or h
    ld e, e
    ld c, e
    ld d, a
    ld b, a
    ld c, b
    scf
    jr z, jr_02B_511F

    ld c, c
    ld c, d
    ld e, e
    dec sp
    ld a, d
    rla

jr_02B_50FC:
    add d
    jr @+$03

    jp z, $2883

    ld [bc], a
    cp c
    add hl, sp
    add h
    ld c, b
    inc de
    scf
    jr z, jr_02B_50CE

    call nz, Call_02B_5BB4
    ld c, e
    ld d, a
    inc bc
    ld b, a
    scf
    cp d
    add hl, de
    ld a, [de]

jr_02B_5116:
    ld e, e
    ld c, e
    ld c, h
    scf
    cp d
    add l
    jr z, jr_02B_5120

    add hl, hl

jr_02B_511F:
    ld c, c

jr_02B_5120:
    add h
    ld e, b
    ld [bc], a
    ld b, a
    scf
    add d
    jp nc, $C401

    add e
    ld e, e
    ld b, $4B
    ld c, h
    ld b, a
    daa
    add hl, hl
    ld a, [hl+]
    add d
    ld e, e
    inc bc
    ld c, e
    ld b, a
    scf
    add d
    jr c, jr_02B_5140

    cp d
    jr z, @+$2A

    add hl, hl
    ld a, [hl+]

jr_02B_5140:
    add h
    ld e, e
    ld [bc], a
    ld d, a
    ld b, a
    add d
    jp nc, $E40A

    dec bc
    inc c
    dec c
    rra
    rrca
    ld h, $27
    add hl, hl
    ld a, [hl+]
    add e
    ld e, e
    ld [bc], a
    ld d, a
    ld b, a
    add d
    ld c, b
    dec b
    scf
    jr z, jr_02B_5116

    add hl, sp
    ld a, [hl+]
    add h
    ld e, e
    ld c, $4B
    ld d, a
    jp nc, $F4E4

    dec de
    adc d
    adc e
    adc h
    rra
    ld h, $27
    add hl, hl
    ld a, [hl+]
    add e
    ld e, e
    dec de
    ld c, e
    ld d, a
    ld e, b
    inc bc
    ld b, a
    daa
    add hl, hl
    ld c, c
    ld c, d
    or b
    or c
    or d

jr_02B_517F:
    or e
    or h
    ld c, e
    db $E4
    db $F4
    ld e, e
    dec hl
    sbc d
    sbc e
    sbc h
    ld l, $7A
    daa
    add hl, hl
    ld a, [hl+]
    add [hl]
    ld e, e
    dec c
    ld d, [hl]
    ld [bc], a
    daa
    add hl, hl
    ld e, c
    ld e, d
    ret nz

    pop bc
    jp nz, $C4C3

    ld e, e
    db $F4
    add d
    ld e, e
    add hl, bc
    dec sp
    xor d
    xor e
    xor h
    ld a, d
    rla
    jr z, jr_02B_51D2

    ld a, [hl+]
    add e
    ld e, e
    rrca
    dec bc
    inc c

jr_02B_51AF:
    dec c
    ld c, $57
    scf
    jr z, jr_02B_51CE

    ld a, [de]
    ret nc

    pop de
    jp nc, $C3D3

    call nz, Call_02B_5B83
    ld [bc], a
    rlca
    rla
    add e
    jr jr_02B_51C9

    jr z, jr_02B_517F

    jr z, @+$1B

    add hl, bc

jr_02B_51C9:
    add d
    ld e, e
    ld a, [bc]
    dec de
    adc d

jr_02B_51CE:
    adc e
    adc h
    ld c, $47

jr_02B_51D2:
    daa
    add hl, hl
    ld a, [hl+]
    ldh [$85], a

jr_02B_51D7:
    jp nc, Jump_02B_5B82

    inc bc
    ld d, $17
    jp z, $2884

    ld de, $3739
    ret


    add hl, de
    add hl, bc
    rlca
    adc b
    sbc d
    sbc e
    sbc h
    ld l, c
    ld [bc], a
    daa
    add hl, hl
    ld a, [hl+]
    ldh a, [$E0]
    add d
    pop hl
    ld [bc], a
    db $E3
    db $E4
    add d
    ld e, e
    ld [bc], a
    ld h, $27
    add h
    jr z, jr_02B_5204

    add hl, hl
    ld c, c
    ld b, a
    scf
    ret


jr_02B_5204:
    add d
    jr @+$0D

    add hl, de
    ld l, e
    xor e
    xor h
    ld a, d
    rla
    jr z, jr_02B_5238

    ld a, [hl-]
    ld e, e
    ldh a, [$82]
    pop af
    ld [bc], a
    di
    db $F4
    add d
    ld e, e
    inc b
    ld h, $27
    jr z, jr_02B_51D7

    add d
    jr c, jr_02B_5226

    add hl, sp
    ld a, [hl+]
    ld d, a
    ld b, a
    scf

jr_02B_5226:
    add e
    jr c, jr_02B_522A

    cp b

jr_02B_522A:
    add e
    jr jr_02B_51AF

    jr z, jr_02B_5231

    add hl, hl
    ld a, [hl-]

jr_02B_5231:
    adc b
    ld e, e
    inc b
    ld [hl], $37
    jr c, jr_02B_5271

jr_02B_5238:
    add d
    ld c, b
    dec b
    ld c, c
    ld c, d
    ld d, [hl]
    ld d, a
    ld b, a
    add e
    ld c, b
    ld [bc], a
    scf
    cp d
    add e
    jr z, jr_02B_524B

    cp c
    add hl, sp
    ld a, [hl-]

jr_02B_524B:
    adc b
    ld e, e
    dec bc
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld [bc], a
    ld e, b
    ld e, c
    ld c, a
    ld e, e
    ld c, e
    ld d, a
    add d
    ld e, b
    inc bc
    inc bc
    ld b, a
    daa
    add e
    jr z, jr_02B_5265

    add hl, hl
    ld c, c
    ld c, d

jr_02B_5265:
    adc b
    ld e, e
    dec b
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    adc b
    ld e, e
    inc bc
    ld c, e

jr_02B_5271:
    ld d, a
    scf
    add e
    jr c, jr_02B_5279

    add hl, sp
    ld e, c
    ld e, d

jr_02B_5279:
    adc l
    ld e, e
    dec b
    or b
    or c
    or d
    or e
    or h
    add h
    ld e, e
    ld [bc], a
    ld c, e
    ld b, a
    add e
    ld c, b
    ld [bc], a
    ld c, c
    ld c, a
    adc l
    ld e, e
    rlca
    or b
    or c
    pop bc
    jp nz, $C4C3

    or h
    add h
    ld e, e
    ld bc, $8357
    ld e, b
    ld bc, $8D59
    ld e, e
    ld [bc], a
    or b
    or c
    add d
    pop de
    add e
    jp nc, $C402

    or h
    sub b
    ld e, e
    nop
    rrca
    jp z, $9008

    ret nz

    add l
    ld bc, $0003
    pop bc
    nop
    add l
    ld bc, $C082
    add h
    and b
    ld bc, $8301
    nop
    ld bc, $8401
    and b
    add d
    ret nz

    add h
    and b
    add l
    ld bc, $A084
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    add h
    and b
    add l
    ret nz

    add h
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add [hl]
    ret nz

    add e
    and b
    add h
    ret nz

    add d
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    add e
    and b
    add e
    ret nz

    ld bc, $83A0
    ret nz

    add e
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add [hl]
    ret nz

    add l
    and b
    add [hl]
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    add d
    and b
    add h
    ret nz

    ld bc, $84A0
    ret nz

    add d
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    add h
    and b
    add h
    ret nz

    add e
    and b
    add h
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add [hl]
    ret nz

    add e
    and b
    add l
    ret nz

    ld bc, $82A0
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add h
    ret nz

    add d
    and b
    add [hl]
    ret nz

    add e
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add e
    ret nz

    dec bc
    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    and b
    add e
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    dec c
    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add [hl]
    ret nz

    add l
    and b
    add [hl]
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    add d
    and b
    add h
    ret nz

    ld bc, $84A0
    ret nz

    add d
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    add h
    and b
    add h
    ret nz

    add e
    and b
    add h
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add [hl]
    ret nz

    add e
    and b
    add l
    ret nz

    ld bc, $82A0
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add e
    ret nz

    dec bc
    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    ld bc, $01C0
    add e
    ret nz

    adc c
    and b
    inc b
    ld bc, $0100
    and b
    add d
    ret nz

    adc c
    and b
    inc b
    ld bc, $0100
    and b
    add d
    ret nz

    adc c
    and b
    inc b
    ld bc, $0100
    and b
    add d
    ret nz

    adc c
    and b
    add e
    ld bc, $A001
    add d
    ret nz

    adc c
    and b
    inc b
    ld bc, $0100
    and b
    add d
    ret nz

    adc c
    and b
    add e
    ld bc, $A001
    add d
    ret nz

    adc c
    and b
    inc b
    ld bc, $0100
    and b
    add d
    ret nz

    adc c
    and b
    inc b
    ld bc, $0100
    and b
    add d
    ret nz

    adc c
    and b
    inc b
    ld bc, $0100
    and b
    add d
    ret nz

    adc c
    and b
    inc b
    ld bc, $0100
    and b
    add h
    ret nz

    add d
    and b
    add [hl]
    ret nz

    add d
    ld bc, $A001
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    add d
    and b
    add e
    ret nz

    add h
    and b
    add d
    ret nz

    add d
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    add d
    ret nz

    adc l
    and b
    adc e
    ret nz

    add h
    and b
    add d
    ret nz

    add e
    ld bc, $A286
    add h
    and b
    add d
    ret nz

    add d
    nop
    ld bc, $8701
    and d
    add e
    and b
    add d
    ret nz

    add d
    nop
    ld bc, $8801
    and d
    add d
    and b
    add d
    ret nz

    add e
    ld bc, $A289
    ld bc, $90A0
    ret nz

    nop
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    sbc a
    db $FD
    inc bc
    inc e
    ld l, a
    dec l
    add e
    ld l, a
    ld [bc], a
    ld e, $1C
    adc a
    ld a, c
    ld bc, $833D
    ld l, [hl]

jr_02B_55D2:
    rlca
    jr jr_02B_55D2

    db $FD
    ld e, a
    db $FD
    ld e, [hl]
    rst $38
    add d
    db $FD
    inc b
    ld e, [hl]
    ld e, a
    ld c, l
    ld [hl], b
    add e
    db $FD
    inc b
    jp nz, $E4D3

    ld c, h
    add [hl]
    ld c, l
    ld [bc], a
    ld c, [hl]
    or l
    add d
    db $FD
    rlca
    ld e, a
    db $FD
    db $FD
    ld e, a
    db $FD
    ld e, [hl]
    ld e, a
    add d
    db $FD
    inc b
    ld e, [hl]
    cpl
    nop
    ld [hl], b
    add e
    db $FD
    inc bc
    db $D3
    db $E4
    db $F4
    adc b
    nop
    ld b, $70
    db $FD
    db $FD
    ld e, a
    db $FD
    db $FD
    ld a, [bc]
    ld e, a
    db $FD
    ld e, [hl]

jr_02B_5611:
    rst $30
    jr jr_02B_5611

    ld e, [hl]
    cpl
    nop
    ldh [$83], a
    db $FD
    ld [$5A93], sp
    inc bc
    dec bc
    ld h, $5C
    ld a, [hl+]
    rrca
    add e
    nop
    ld b, $E0
    db $FD
    db $FD
    ld e, a
    db $FD
    db $FD
    dec bc
    ld e, a
    db $FD
    add hl, hl

jr_02B_5630:
    db $FD
    jr z, jr_02B_5630

jr_02B_5633:
    ld e, [hl]
    cpl
    nop
    ld c, e
    ldh [$82], a
    add c
    add hl, bc
    db $E4
    ld d, $0C
    ld l, [hl]
    rst $38
    db $FD
    daa
    dec c
    rra
    add d
    nop
    inc b
    ldh a, [$E0]
    add $5F
    add d
    db $FD
    inc bc
    ld e, a
    db $FD
    add hl, hl
    add e
    db $FD
    ld [bc], a
    dec sp
    cpl
    add d
    nop
    rlca
    ld c, e
    ld c, h
    ld c, [hl]
    ld c, a
    nop
    dec hl
    ld e, a
    add e
    db $FD
    ld [bc], a
    rst $30
    cpl
    add e
    nop
    inc bc
    ld c, e
    ld c, h
    ld e, [hl]
    add d
    db $FD
    ld [$FD5F], sp
    add hl, hl
    db $FD
    add hl, hl
    add h
    ldh a, [$3A]
    add a
    nop
    ld [bc], a
    dec hl
    ld e, a
    add d
    db $FD
    inc bc
    scf
    inc e
    cpl
    add h
    nop
    ld [bc], a
    inc bc
    dec hl
    add d
    db $FD
    inc bc
    ld e, a
    db $FD
    add hl, hl
    add d
    db $FD
    add d
    nop
    ld bc, $873A
    nop
    ld [bc], a
    dec hl
    rst $30
    add e
    db $FD
    ld [bc], a
    rst $30
    cpl
    add l
    nop
    dec bc
    dec hl
    db $FD
    db $FD
    ld e, a
    db $FD
    add hl, hl
    db $FD
    add hl, hl
    or h
    or b
    ld a, [hl-]
    add a
    nop
    ld [bc], a
    dec sp
    jr z, jr_02B_5633

    ld [c], a
    ld [bc], a
    daa
    ccf
    add l
    nop
    dec bc
    dec hl
    db $FD
    db $FD
    ld e, a
    db $FD
    add hl, hl
    db $FD
    daa
    jr c, jr_02B_56D8

    cpl
    add a
    nop
    ld [bc], a
    ld c, e
    ld c, h
    add e
    ld c, l
    ld [$4F4E], sp
    or b
    or c
    or e
    or h
    nop
    dec hl
    add d
    db $FD
    inc bc
    ld e, a
    db $FD
    add hl, hl

jr_02B_56D8:
    add d
    db $FD
    inc bc
    ldh a, [$5E]
    cpl
    add l
    nop
    inc b
    or b
    or c
    or e
    or h
    add l
    nop
    ld b, $C0
    pop bc
    jp $00C4


    dec hl
    add d
    db $FD
    dec bc
    ld e, a
    db $FD
    add hl, hl
    db $FD
    ld a, [hl-]
    nop
    dec hl
    ld e, a
    or d
    or e
    or h
    add d
    nop
    inc b
    ret nz

    pop bc
    jp $85C4


    nop
    ld b, $E0
    pop hl
    db $E3
    db $E4
    nop
    dec hl
    add d
    db $FD
    inc bc
    ld e, a
    db $FD
    add hl, hl
    add d
    db $FD
    inc bc
    nop
    dec hl
    ld e, a
    add d
    db $FD
    rlca
    or e
    or h
    nop
    ldh [$E1], a
    db $E3
    db $E4
    add l
    nop
    ld b, $4B
    ld c, h
    ld c, [hl]
    ld c, a
    nop
    dec hl
    add d
    db $FD
    ld [$FD5F], sp
    add hl, hl
    db $FD
    ld a, [hl-]
    nop
    dec hl
    ld e, a
    add d
    db $FD
    dec c
    jp $00B3


    ld c, e
    ld c, h
    ld c, [hl]
    ld c, a
    nop
    or b
    or c
    or d
    or e
    or h
    add h
    nop
    ld b, $2B
    db $FD
    db $FD
    ld e, a
    db $FD
    add hl, hl
    add d
    db $FD
    inc bc
    nop
    dec hl
    ld e, a
    add e
    db $FD
    ld bc, $86D4
    nop
    ld bc, $83B1
    db $FD
    ld bc, $84B3
    nop
    dec bc
    dec hl
    db $FD
    db $FD
    ld e, a
    db $FD
    add hl, hl
    db $FD
    ld a, [hl-]
    nop
    dec hl
    ld e, a
    add e
    ld [c], a
    ld bc, $83E4
    nop
    inc b
    or b
    or c
    or d
    pop bc
    add e
    db $FD
    ld bc, $83D4
    nop
    ld [bc], a
    ld d, $2B
    add d
    db $FD
    inc bc
    ld e, a
    db $FD
    add hl, hl
    add d
    db $FD
    inc bc
    nop
    dec hl
    ld e, a
    add d
    ld c, l
    ld [bc], a
    ld c, [hl]
    ld c, a
    add e
    nop
    inc b
    or c
    db $FD
    db $FD
    jp nc, $FD83

    ld b, $E4
    nop
    nop
    ld d, $02
    dec hl
    add d
    db $FD
    add hl, bc
    ld e, a
    db $FD
    add hl, hl
    db $FD
    ld a, [hl-]
    nop
    dec hl
    cpl
    add hl, bc
    add [hl]
    nop
    ld bc, $84E0
    db $FD
    ld [$E4D3], sp
    db $F4
    nop
    or b
    or c
    or d
    ld e, [hl]
    add d
    db $FD
    inc c
    ld e, a
    db $FD
    daa
    db $FD
    daa
    ld a, [de]
    dec a
    ccf
    nop
    or b
    push hl
    or h
    add e
    nop
    ld [bc], a
    ld c, e
    ldh [$82], a
    db $FD
    ld b, $D2
    sub e
    ld c, a
    nop
    or b
    or c
    add d
    db $FD
    inc b
    dec l
    db $FD
    db $FD
    ld e, a
    add l
    db $FD
    rlca
    db $E4
    db $F4
    nop
    ret nz

    db $FD
    call nz, $83B4
    nop
    ld [bc], a
    ld c, e
    ldh [$82], a
    db $FD
    ld [$00E4], sp
    nop
    ret nz

    pop bc
    db $FD

jr_02B_57FB:
    ld [hl], c
    ld e, [hl]
    add d
    db $FD
    rlca
    ld e, a
    db $FD
    db $FD
    rla
    db $FD
    jr jr_02B_57FB

    add d
    nop
    inc b
    ldh [$FD], a
    db $FD
    sub $83
    nop
    dec b
    ld [bc], a
    ld c, e
    ld c, h
    ld c, [hl]
    ld c, a
    add d
    nop
    dec b
    ret nc

    jp nz, Jump_02B_71FD

    ld e, [hl]
    add d
    db $FD
    ld bc, $845F
    db $FD
    ld bc, $833A
    nop
    inc b
    ld d, [hl]
    ldh [$E4], a
    ld e, d
    adc d
    nop
    dec b
    ldh [$E2], a
    jp nz, Jump_02B_5E71

    add d
    db $FD
    ld bc, $842D
    add hl, de
    ld [bc], a
    jr z, @-$4A

    add e
    nop
    ld b, $56
    ld e, d
    or b
    or c
    or e
    or h
    add a
    nop
    dec b
    ld d, [hl]
    ld d, a
    ld [hl], b
    ld [hl], c
    dec hl
    add d
    db $FD
    ld bc, $855F
    db $FD
    ld bc, $85C4
    nop
    ld [$C1C0], sp
    jp $00C4


    or b
    push hl
    or h
    add h
    nop
    inc b
    or c
    pop bc
    ld [hl], c
    ld e, [hl]
    add d
    db $FD
    ld bc, $855F
    db $FD
    ld bc, $85D4
    nop
    ld [$E1E0], sp
    db $E3
    db $E4
    nop
    ret nz

    db $FD
    or e
    add h
    nop
    ld b, $D0
    db $FD
    db $FD
    dec l
    db $FD
    db $FD
    ld bc, $855F
    db $FD
    ld bc, $85D4
    nop
    ld [$4C4B], sp
    ld c, [hl]
    ld c, a
    nop
    ret nc

    db $FD
    call nc, $0084
    ld b, $E0
    ld [c], a
    ld [c], a
    ld e, [hl]
    db $FD
    db $FD
    ld bc, $855F
    db $FD
    ld [bc], a
    add $B4
    adc c
    nop
    inc bc
    ret nc

    db $FD
    call nc, $0084
    inc b
    ld c, e
    ld c, h
    ld c, l
    ld e, [hl]
    add d
    db $FD
    ld bc, $862C
    ld l, [hl]
    adc d
    dec c
    inc bc
    ld l, [hl]
    dec l
    ld l, [hl]
    add a
    dec c
    ld bc, $9F2E
    db $FD
    nop
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
    ld [$0000], sp
    nop
    ld [de], a
    inc c
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
    nop
    ld [hl+], a
    ld b, l
    ld [hl+], a
    ld d, h
    inc hl
    ld h, h
    inc de
    jr nz, jr_02B_5901

    ld [hl+], a
    ld de, $1102
    ld [bc], a
    ld de, $0110
    inc b
    ld a, [bc]
    adc d
    inc b
    adc d
    inc b
    adc b
    inc b
    nop
    inc b
    nop

jr_02B_5901:
    inc b
    nop
    nop
    nop
    nop
    rst $18
    jr nc, jr_02B_5947

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
    rrca
    nop
    jr nc, jr_02B_591B

    ld d, c

jr_02B_591B:
    dec sp
    ld d, d
    dec sp
    ld [hl-], a
    ld bc, $0001
    ld [bc], a
    ld bc, $0100
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
    sbc a
    ld h, b
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
    ei

jr_02B_5947:
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
    ld a, [$F507]
    ld a, [$F12E]
    db $FD
    ld [bc], a
    jp z, $3777

    rst $28
    ld sp, hl
    rlca
    xor [hl]
    pop de
    xor l
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
    ld sp, hl
    ld b, $A6
    ld hl, sp+$00
    ldh a, [$C7]
    nop
    jp c, $2167

    xor $E6
    nop
    adc b
    ret nc

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
    ld [hl], l
    adc e
    sbc a
    ldh [$EC], a
    rst $30
    ld d, e
    xor $BF
    ld b, b
    ld [hl], h
    adc a
    xor a
    ld e, a
    ld e, a
    ldh [rSC], a
    nop
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
    ld l, b
    db $10
    sub b
    ld [$6880], sp
    ld c, b
    or h
    ld h, $D8
    ld a, [$FF04]
    nop
    ld c, $F1
    push af
    ei
    or [hl]
    ei
    adc b
    ld [hl], a
    ld a, a
    add b
    ld c, [hl]
    pop af
    or l
    ld a, e
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
    nop
    nop
    nop
    nop
    jr jr_02B_5A0C

jr_02B_5A0C:
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
    nop
    nop
    nop
    nop
    ld h, h
    jr jr_02B_5A35

    ld b, $06
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld e, $00
    jr c, jr_02B_5A2E

jr_02B_5A2E:
    jr nz, jr_02B_5A30

jr_02B_5A30:
    nop
    nop
    nop
    nop
    nop

jr_02B_5A35:
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
    jr nz, jr_02B_5A4B

    nop
    nop
    ld [bc], a
    nop

jr_02B_5A4B:
    ld [bc], a
    ld [bc], a
    ld bc, $0108
    jr jr_02B_5A72

    db $10
    jr z, jr_02B_5A69

    jr z, jr_02B_5A57

jr_02B_5A57:
    nop

jr_02B_5A58:
    ld b, b
    db $10
    jr nz, jr_02B_5A6C

jr_02B_5A5C:
    jr nc, jr_02B_5A66

    jr nc, jr_02B_5A6C

    ld a, [hl+]
    inc d
    ld [hl+], a
    inc e
    ld [hl-], a
    inc c

jr_02B_5A66:
    nop
    nop
    nop

jr_02B_5A69:
    nop
    nop
    nop

jr_02B_5A6C:
    nop
    nop
    nop
    nop
    nop
    nop

jr_02B_5A72:
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld a, [hl+]
    inc d
    dec b
    ld a, [de]
    dec d
    ld a, [bc]
    ld a, [bc]
    dec b
    rlca
    nop
    dec b
    nop
    ld [bc], a
    nop
    nop
    nop
    ld d, $08
    ld e, $00
    ld [$8400], sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld e, b
    nop
    sub h
    ld bc, $00BA
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_02B_5A58

    db $F4
    nop
    jr z, jr_02B_5A5C

    or h
    ld c, b
    db $F4
    ld [$40BE], sp
    xor [hl]
    ld d, b
    sbc [hl]
    ld h, b
    ld d, a
    nop
    cp h
    ld [bc], a
    db $FD
    ld [bc], a
    rst $30
    add hl, bc
    sub [hl]
    ld l, l
    sub a
    ld l, d
    cp c
    ld b, a
    or c
    ld c, a
    ld l, d
    add b
    dec a
    ld b, b
    cp a
    ld b, b
    ld l, a
    sub b
    jp hl


    or [hl]
    jp hl


    ld d, [hl]
    sbc l
    ld [c], a
    adc l
    ld a, [c]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02B_5B82:
    nop

Call_02B_5B83:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02B_5BB4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc b
    inc bc
    ld b, $01
    ld a, [bc]
    dec b
    ld a, [bc]
    dec b
    ld c, $01
    rrca
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    inc bc
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
    inc bc
    db $FC
    rlca
    ld hl, sp-$01
    ld bc, $0103
    inc bc
    ld bc, $0639
    ld [hl], a
    ld c, $DF
    ld h, $AF
    ld [hl], b
    cp h
    ld [hl], e
    ei
    ld [hl], a
    ei
    ld b, a
    rst $28
    rla
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    rst $18
    inc sp
    or a
    ld a, e
    rst $38
    ld a, b
    db $FD
    ld [hl], d
    ei
    and [hl]
    rst $30
    xor [hl]
    rst $38
    ld c, [hl]
    ld a, a
    ld h, $00
    nop
    ld bc, $0100
    nop
    ld bc, $0200
    ld bc, $0102
    ld [bc], a
    ld bc, $0001
    rst $38
    ld [de], a
    ld a, a
    adc h
    ccf
    jp $E017


    ld hl, $40C0
    add b
    add b
    nop
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
    rla
    add hl, bc
    inc de
    dec c
    daa
    add hl, de
    daa
    add hl, de
    daa
    add hl, de
    daa
    add hl, de
    dec hl
    ld de, $0013
    ld bc, $0100
    nop
    nop
    nop
    rst $18
    inc sp
    or a
    ld a, e
    rst $38
    ld a, b
    db $FD
    ld [hl], d
    ei
    and [hl]
    rst $30
    xor [hl]
    rst $38
    ld c, [hl]
    rst $38
    ld h, $7F
    ld [de], a
    ccf
    inc c
    ccf
    inc bc
    cpl
    db $10
    dec h
    jr jr_02B_5CA5

    jr jr_02B_5CA7

    jr @+$26

    jr jr_02B_5C9B

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
    inc h
    jr jr_02B_5CBD

    jr jr_02B_5CBF

jr_02B_5C9B:
    jr jr_02B_5CC2

    jr jr_02B_5CCE

    db $10
    add hl, sp
    ld b, $77
    ld c, $FF

jr_02B_5CA5:
    ld c, $01

jr_02B_5CA7:
    nop
    ld bc, $1300
    nop
    dec hl
    ld de, $1927
    daa
    add hl, de
    daa
    add hl, de
    daa
    add hl, de
    rst $18
    ld h, $AF
    ld [hl], b
    db $F4
    ld a, e
    ei

jr_02B_5CBD:
    ld [hl], a
    rst $38

jr_02B_5CBF:
    ld b, a
    rst $28
    rla

jr_02B_5CC2:
    rst $10
    dec sp
    cp a
    ld a, e
    inc de
    dec c
    rla
    add hl, bc
    rrca
    nop
    rlca
    nop

jr_02B_5CCE:
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    ld a, b
    db $FD
    ld [hl], d
    ei
    and [hl]
    rst $30
    xor [hl]
    rst $38
    ld c, [hl]
    rst $38
    ld h, $7F
    ld [de], a
    ccf
    inc c
    inc bc
    ld bc, $01FF
    rlca
    ld hl, sp+$03
    db $FC
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0102
    ld [bc], a
    ld bc, $0001
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ld hl, $1FC0
    ldh [$39], a
    add $77
    adc [hl]
    rst $38
    ld c, $00
    nop
    ld bc, $0300
    nop
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $78BF
    db $FD
    ld [hl], d
    ei
    and [hl]
    rst $30
    xor [hl]
    rst $38
    ld c, [hl]
    ld a, a
    ld h, $7F
    ld [de], a
    ccf
    inc c
    nop
    nop
    nop
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
    inc h
    jr jr_02B_5D6D

    jr jr_02B_5D6F

    jr jr_02B_5D71

    jr jr_02B_5D73

    jr jr_02B_5D85

    ld [$00FC], sp
    db $FC
    nop
    ld b, c
    ld a, $23
    inc e
    rla
    ld [$010F], sp
    rlca
    ld [bc], a
    rrca
    ld [bc], a
    ld c, $05
    rra
    dec b
    rst $30
    ld [$5DEA], sp
    rst $38
    sbc l
    cp a

jr_02B_5D6D:
    ld b, b
    ld e, b

jr_02B_5D6F:
    rst $20
    rst $30

jr_02B_5D71:
    rst $28
    rst $38

jr_02B_5D73:
    rst $08
    rst $38
    rrca
    inc a
    ret nz

jr_02B_5D78:
    sbc $E8

jr_02B_5D7A:
    rst $38
    db $E4
    rst $30
    ld c, d
    ld l, e
    sbc l
    cp a
    db $DD
    db $FD
    adc $EF

jr_02B_5D85:
    jp nc, $041F

    rrca
    inc b
    rrca
    ld [bc], a
    rlca
    ld [bc], a
    rrca
    ld bc, $0817
    inc hl
    inc e
    ld b, c
    ld a, $9F
    ld h, a
    ld a, a
    ldh [$F2], a
    call $DDEF
    rst $38
    dec e
    rst $38
    sbc l
    rst $38
    ld c, b
    rst $38
    jr nc, jr_02B_5D7A

    cp h
    rst $38
    inc a
    ld a, a
    sbc l
    cp a
    db $DD
    rst $38
    jp nz, $E4FF

    cp $C8
    db $FC
    jr nc, jr_02B_5D78

    cp [hl]
    db $FD
    add d
    and $18
    ld hl, sp+$00
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc [hl]
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
    nop
    nop
    nop
    nop
    ld a, a
    rrca
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

jr_02B_5DE2:
    nop
    nop
    nop
    nop
    db $FC
    ret nz

    db $FC
    nop
    inc [hl]
    ld [$1824], sp
    inc h
    jr jr_02B_5E15

    jr jr_02B_5E17

    jr jr_02B_5E19

    jr jr_02B_5E1F

    db $10
    jr z, jr_02B_5E0A

    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02B_5E0A:
    nop
    nop
    rra
    nop
    jr nz, jr_02B_5E2F

    db $10
    rrca
    rrca
    nop
    ccf

jr_02B_5E15:
    nop
    nop

jr_02B_5E17:
    nop
    nop

jr_02B_5E19:
    nop
    nop
    nop
    nop
    nop
    ret nz

jr_02B_5E1F:
    nop
    jr nz, jr_02B_5DE2

    ld [hl], b
    add b
    ld hl, sp+$00
    nop
    nop
    ld bc, $FF00
    nop
    rlca
    ld sp, hl
    rrca

jr_02B_5E2F:
    ld a, [c]
    rst $38
    ld [bc], a
    ld c, $05
    rra
    dec b
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    inc b
    rrca
    inc b
    rst $38
    ld [bc], a
    rrca
    ld a, [c]
    rlca
    ld sp, hl
    rst $38
    nop
    ld bc, $0000
    nop
    ld a, a
    rrca
    rra
    nop
    rlca
    nop
    ld [$1007], sp
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    db $FC
    ret nz

    ld hl, sp+$00
    cp b
    ld b, b
    db $10
    ldh [$60], a
    add b
    add b

Jump_02B_5E71:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    add b
    ld [bc], a
    rrca
    rra
    add d
    xor $34
    ld h, a
    ld l, b
    ld [hl], a
    ld a, b
    ld h, l
    ld h, [hl]
    ld [hl], l
    halt
    jr nz, jr_02B_5EF9

    jr nc, @+$33

    jr nz, jr_02B_5EFD

    jr nc, jr_02B_5F0F

    nop
    ld bc, $1110
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    nop
    inc b
    db $10
    inc d
    dec b
    inc bc
    dec d
    inc de
    ld c, d
    ld c, e
    ld e, d
    ld e, e
    ld c, h
    ld c, l
    ld e, h
    ld e, l
    ld b, b
    ld b, c
    ld d, b

jr_02B_5EF9:
    ld d, c
    ld b, d
    ld b, e
    ld d, d

jr_02B_5EFD:
    ld d, e
    ld b, c
    ld b, b
    ld d, c
    ld d, b
    adc b
    add b
    add [hl]
    xor $02
    jr nz, jr_02B_5F2A

    add d
    xor $2E
    jr nz, jr_02B_5F2F

    ld [hl+], a

jr_02B_5F0F:
    inc hl
    ld [hl-], a
    inc sp
    inc hl
    ld [hl+], a
    inc sp
    ld [hl-], a
    ld b, $07
    ld d, $17
    ld [$1809], sp
    add hl, de
    ld b, $0C
    ld d, $17
    dec c
    add hl, bc
    jr @+$1B

    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp

jr_02B_5F2A:
    inc l
    dec l
    inc a
    dec a
    ld b, h

jr_02B_5F2F:
    ld b, l
    ld d, h
    ld d, l
    ld b, [hl]
    ld b, a
    ld d, [hl]
    ld d, a
    ld b, l
    ld b, h
    ld d, l
    ld d, h
    adc h
    add b

jr_02B_5F3C:
    ld c, $30
    ld sp, $2322
    ld sp, $2330
    ld [hl+], a
    nop
    inc bc
    db $10
    inc de
    inc e
    dec e
    add d
    cp $02
    dec e
    inc e
    add e
    cp $02
    ld c, $FE
    add d
    ld e, $1B
    cp $0E
    cp $0A
    dec bc
    ld a, [de]
    dec de
    ld l, $2F
    ld a, $3F
    cpl
    ld l, $3F
    ld a, $50
    ld d, c
    ld b, b
    ld b, c
    ld d, d

jr_02B_5F6C:
    ld d, e
    ld b, d
    ld b, e
    ld d, c
    ld d, b
    ld b, c
    ld b, b
    sub h

jr_02B_5F74:
    add b
    inc b
    dec bc
    ld a, [bc]
    dec de
    ld a, [de]
    adc b
    add b
    jr jr_02B_5F6C

    ld h, b
    xor $70
    ld h, c
    ld h, d
    ld [hl], c
    ld [hl], d
    cp $25
    inc [hl]
    dec [hl]
    ld h, $27
    ld [hl], $37
    daa
    ld h, $37
    ld [hl], $25
    cp $35
    inc [hl]
    add h
    rst $28
    add h
    cp $A0
    add b
    ld [bc], a
    xor $63
    add d
    xor $02
    ld h, h
    ld [hl], e
    add d
    xor $13
    inc [hl]
    dec [hl]
    cp $25
    ld [hl], $37
    ld h, $27
    scf
    ld [hl], $27
    ld h, $35
    inc [hl]
    dec h
    cp $28
    add hl, hl
    jr c, jr_02B_5F3C

jr_02B_5FBA:
    add hl, sp
    inc bc
    jr c, @+$2B

    jr z, jr_02B_5F74

    add b
    dec b
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    rst $28
    add d
    ld c, a
    add d
    ld c, [hl]
    inc bc
    rst $28

jr_02B_5FCD:
    ld e, a
    ld e, [hl]
    add h
    add b
    ld [$4EEE], sp
    xor $5E
    ld c, [hl]
    xor $5E
    xor $AC
    add b
    add d
    ld c, a
    ld b, $EF
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld e, [hl]
    rst $28
    add e
    xor $09
    ld a, h
    xor $6E
    ld a, l
    ld a, [hl]
    ld l, [hl]
    xor $7E
    ld a, l
    add d
    xor $02
    ld a, h
    xor $B0
    add b
    db $10
    xor $09
    jr jr_02B_6016

    ld a, [bc]
    dec bc
    ld a, [de]
    dec de
    dec bc
    ld a, [bc]
    dec de
    ld a, [de]
    add hl, bc
    xor $19
    jr jr_02B_5FBA

    add b
    db $10
    jr z, jr_02B_6037

    jr c, jr_02B_6049

    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    dec hl
    ld a, [hl+]

jr_02B_6016:
    dec sp
    ld a, [hl-]
    add hl, hl
    jr z, jr_02B_6054

    jr c, jr_02B_5FCD

    add b
    db $10
    ld c, b
    ld c, c
    ld e, b
    ld e, c
    ld c, d
    ld c, e
    ld e, d
    ld e, e
    ld c, e
    ld c, d
    ld e, e
    ld e, d

jr_02B_602B:
    ld c, c
    ld c, b
    ld e, c
    ld e, b
    or b
    add b
    db $10
    ld l, b
    ld l, c
    ld a, b
    ld a, c
    ld l, d

jr_02B_6037:
    ld l, e
    ld a, d
    ld a, e
    ld l, e
    ld l, d
    ld a, e
    ld a, d
    ld l, c
    ld l, b
    ld a, c
    ld a, b
    or b
    add b
    inc b
    nop
    ld bc, $1110

jr_02B_6049:
    add d
    xor $12
    ld [de], a
    inc de
    xor $05
    inc d
    dec d
    ld b, $07

jr_02B_6054:
    ld d, $17
    rlca
    ld b, $17

jr_02B_6059:
    ld d, $05
    xor $15
    inc d
    add d
    xor $06
    inc de
    ld [de], a
    ld bc, $1100
    db $10
    and b
    add b
    jr nz, jr_02B_6059

    ld hl, $2030
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    inc h
    dec h
    inc [hl]
    dec [hl]
    ld h, $27
    ld [hl], $37
    daa
    ld h, $37
    ld [hl], $25
    inc h
    dec [hl]
    inc [hl]
    inc hl
    ld [hl+], a
    inc sp
    ld [hl-], a
    ld hl, $31EE
    jr nc, jr_02B_602B

    add b
    jr nz, jr_02B_60CE

    ld b, c
    ld d, b
    ld d, c
    ld b, d
    ld b, e
    ld d, d
    ld d, e
    inc bc
    inc b
    ld d, h
    ld d, l
    ld b, [hl]
    ld b, a
    ld d, [hl]
    ld d, a
    ld b, a
    ld b, [hl]
    ld d, a
    ld d, [hl]
    ld b, l
    ld b, h
    ld d, l
    ld d, h
    ld b, e
    ld b, d
    ld d, e
    ld d, d
    ld b, c
    ld b, b
    ld d, c
    ld d, b
    and b
    add b
    jr nz, jr_02B_6111

    ld h, c
    ld [hl], b
    ld [hl], c
    ld h, d
    ld h, e
    ld [hl], d
    ld [hl], e
    ld h, h
    ld h, l
    ld [hl], h
    ld [hl], l
    ld h, [hl]
    ld h, a
    halt
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld [hl], a
    halt
    ld h, l
    ld h, h
    ld [hl], l
    ld [hl], h
    ld h, e
    ld h, d
    ld [hl], e
    ld [hl], d
    ld h, c
    ld h, b

jr_02B_60CE:
    ld [hl], c
    ld [hl], b
    sbc b
    add b
    add d
    db $EC
    add d
    db $FC
    add d
    db $ED
    add d
    db $FD
    adc b
    nop
    add d
    ld bc, $0982
    adc b
    ld b, $82
    nop
    add d
    inc bc
    add d
    nop
    add d
    inc bc
    sub b
    nop
    adc b
    ld [bc], a
    adc b
    ld b, $84
    ld h, $88
    nop
    add [hl]
    add hl, bc
    add d
    nop
    add d
    add hl, bc
    add d
    nop
    add h
    inc bc
    add h
    inc hl
    sub b
    ld bc, $0288
    adc b
    ld b, $84
    ld h, $8C
    nop
    add h
    inc bc
    add h
    inc hl
    add h
    nop
    add d

jr_02B_6111:
    ld b, d
    add d
    ld a, [bc]
    add d
    ld h, d
    add d
    ld a, [hl+]
    ld [$020A], sp
    ld a, [bc]
    ld [bc], a
    ld h, d
    ld l, d
    ld h, d
    ld l, d
    add h
    ld bc, $0284
    add h
    ld [hl+], a
    adc b
    ld b, [hl]
    add h
    ld h, [hl]
    sub h
    nop
    add h
    ld hl, $0088
    inc bc
    ld c, $06
    ld c, $85
    ld b, $01
    ld a, [bc]
    add a
    inc b
    add l
    inc h
    inc bc
    ld a, [hl+]
    inc h
    inc h
    add h
    inc c
    add h
    ld a, [bc]
    and b
    nop
    ld [bc], a
    ld c, $06
    add d
    ld c, $82
    ld b, $82
    ld c, $82
    ld b, h
    ld bc, $854A
    ld b, h
    add a
    ld h, h
    ld bc, $846A
    inc b
    add h
    ld h, h
    or h
    nop
    add h
    inc b
    ld [bc], a
    inc c
    inc b
    add d
    ld h, h
    ld [bc], a
    inc b
    inc c
    add d
    inc h
    add h
    ld b, $84
    adc [hl]
    add h
    xor [hl]
    add h
    ld h, $A4
    nop
    add h
    inc b
    inc b
    inc h
    inc b
    inc c
    ld h, h
    add d
    inc h
    ld [bc], a
    inc b
    inc c
    adc b
    adc [hl]
    adc b
    xor [hl]
    or b
    nop
    adc b
    adc [hl]
    adc b
    xor [hl]
    or b
    nop
    adc b
    ld c, $88
    ld l, $B0
    nop
    adc b
    ld c, $88
    ld l, $B0
    nop
    adc b
    ld c, $88
    ld l, $B0
    nop
    sub b
    ld c, $90
    ld l, $A0
    nop
    sub b
    ld c, $90
    ld l, $A0
    nop
    sub b
    ld c, $90
    ld l, $A0
    nop
    sub b
    ld c, $90
    ld l, $98
    nop
    ld [$2D0D], sp
    dec c
    dec l
    dec c
    dec l
    dec c
    dec l
    nop
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    adc b
    ld e, e
    dec b
    ldh [$D1], a
    pop de
    jp $86B3


    ld e, e
    ld b, $0B
    dec de
    adc d
    adc e
    adc h
    ld l, $83
    dec a
    ld bc, $890E
    ld e, e
    dec b
    ldh a, [$E0]
    pop hl
    db $E3
    db $E4
    add [hl]
    ld e, e
    ld a, [bc]
    dec de
    inc e
    sbc d
    sbc e
    sbc h
    ld a, d
    rla
    jr jr_02B_620B

    ld a, [hl+]
    adc d
    ld e, e
    inc b
    ldh a, [$F1]
    di
    db $F4
    add [hl]
    ld e, e
    ld b, $2B
    dec l
    xor d
    xor e
    ld l, d
    rla
    add d
    jr z, jr_02B_6208

    add hl, hl
    ld a, [hl+]

jr_02B_6208:
    add h
    ld e, e
    ld [bc], a

jr_02B_620B:
    dec bc
    inc c
    add e
    dec c
    ld [bc], a
    ld c, $0F
    adc c
    ld e, e
    inc bc
    dec sp
    ld a, d
    rla
    add d
    jr @-$7B

    jr z, jr_02B_621F

    add hl, hl
    ld a, [hl+]

jr_02B_621F:
    add e
    ld e, e
    add hl, bc
    dec bc
    inc c
    ld l, $8A
    adc e
    adc h
    ld l, $0E
    rrca
    adc b
    ld e, e
    inc bc
    ld c, e
    ld h, $37
    add l
    jr c, jr_02B_6237

    add hl, sp
    ld a, [hl+]
    ld e, e

jr_02B_6237:
    add e
    ld [$7B05], sp
    dec l
    sbc d
    sbc e
    sbc h
    add d
    ld l, $01
    rra
    adc c
    ld e, e
    ld [bc], a
    ld b, [hl]
    ld b, a
    add l
    ld c, b
    inc bc
    ld c, c
    ld e, c
    ld e, e
    add e
    jr jr_02B_6256

    add hl, de
    ld a, e
    xor d
    xor e
    xor h

jr_02B_6256:
    add d
    dec a
    ld [bc], a

jr_02B_6259:
    ld a, d
    add hl, bc
    adc c
    ld e, e
    ld bc, $8557
    ld e, b
    inc bc
    ld e, c
    ld c, a
    ld e, e
    add d
    jr c, jr_02B_626A

    cp d
    ret


jr_02B_626A:
    add a
    jr jr_02B_626F

    add hl, de
    ld a, [de]

jr_02B_626F:
    sub c
    ld e, e
    add d
    ld c, b
    ld [bc], a
    scf
    cp d
    add [hl]
    jr z, jr_02B_627C

    cp c
    add hl, sp
    ld a, [hl+]

jr_02B_627C:
    sub c
    ld e, e
    add d
    ld e, b
    ld [bc], a
    ld b, a
    daa
    add [hl]
    jr z, jr_02B_628B

    add hl, hl
    ld c, c
    ld e, c
    ld e, e
    inc c

jr_02B_628B:
    add e
    dec c
    inc b
    ld c, $07
    ld [$8509], sp
    ld e, e
    inc bc
    rlca
    ld [$8208], sp
    ld e, e
    inc bc
    ld h, $37
    cp d
    add l
    jr z, jr_02B_62A3

    add hl, hl
    ld a, [hl+]

jr_02B_62A3:
    add d
    ld e, e
    add hl, bc
    dec hl
    adc d
    adc e
    adc h

jr_02B_62AA:
    ld l, c
    rla
    jr jr_02B_62C7

    add hl, bc
    add e
    ld e, e
    ld [bc], a
    ld d, $17
    add d
    jr @-$7C

    ld e, e
    inc b
    ld b, [hl]
    ld b, a
    scf
    cp d
    add h
    jr z, jr_02B_62CA

    add hl, hl
    ld a, [hl+]
    ld e, e
    dec de
    ld l, $9A
    sbc e

jr_02B_62C7:
    sbc h
    ld a, d
    daa

jr_02B_62CA:
    add d
    jr z, jr_02B_62CF

    add hl, de
    ld a, [de]

jr_02B_62CF:
    add d
    ld e, e
    ld [bc], a
    ld h, $27
    add d
    jr z, jr_02B_6259

    ld e, e
    inc b
    ld c, e
    ld d, a
    ld b, a
    scf
    add h
    jr c, @+$0C

    add hl, sp
    ld a, [hl+]
    ld e, e
    dec hl
    ld l, $AA
    xor e
    ld l, d
    rla
    jp z, $2882

    ld [bc], a
    add hl, hl
    ld a, [hl+]
    add d
    ld e, e
    ld a, [bc]
    ld h, $37
    cp d
    jr z, jr_02B_62AA

    or h
    ld e, e
    ld c, e
    ld d, a
    ld b, a
    add h
    ld c, b
    ld b, $49
    ld c, d
    ld e, e
    dec sp
    ld a, d
    rla
    add d
    jr @+$03

    jp z, $2883

    ld [bc], a
    add hl, hl
    ld a, [hl+]
    add d
    ld e, e
    ld a, [bc]
    ld b, [hl]
    ld b, a
    scf
    cp d
    jp $B4C4


    ld e, e
    ld d, [hl]
    ld d, a
    add h
    ld e, b
    rlca
    ld e, c
    ld e, d
    ld e, e
    ld c, e
    ld c, h
    scf
    cp d
    add l
    jr z, jr_02B_632A

    add hl, hl
    ld a, [hl+]

jr_02B_632A:
    add d
    ld e, e
    inc b
    ld d, [hl]
    ld d, a
    ld b, a
    scf
    add d
    jp nc, $C401

    adc e
    ld e, e
    inc bc
    ld c, e
    ld b, a
    scf
    add d
    jr c, jr_02B_6343

    cp d
    jr z, @+$2A

    add hl, hl
    ld a, [hl+]

jr_02B_6343:
    add e
    ld e, e
    inc bc
    ld d, [hl]
    ld d, a
    ld b, a
    add d
    jp nc, $E409

    dec bc
    inc c
    dec c
    rra
    rrca
    rlca
    ld [$8409], sp
    ld e, e
    ld [bc], a
    ld d, a
    ld b, a
    add d
    ld c, b
    dec b
    scf
    jr c, jr_02B_6398

    add hl, sp
    ld c, d
    add h
    ld e, e
    ld c, $4B
    ld d, a
    jp nc, $F4E4

    dec de
    adc d
    adc e
    adc h
    rra
    ld h, $17
    add hl, de
    ld a, [de]
    add e
    ld e, e
    dec b
    ld c, e
    ld d, a
    ld e, b
    inc bc
    ld b, a
    add d
    ld c, b
    inc d
    ld c, c
    ld e, d
    or b
    or c
    or d
    or e
    or h
    ld c, e
    db $E4
    db $F4
    ld e, e
    dec hl
    sbc d
    sbc e
    sbc h
    ld l, $7A
    daa
    add hl, hl
    ld a, [hl+]
    add [hl]
    ld e, e
    ld [bc], a
    ld d, [hl]
    ld d, a
    add d

jr_02B_6398:
    ld e, b
    add hl, bc
    ld e, c
    ld e, e
    ret nz

    pop bc
    jp nz, $C4C3

    ld e, e
    db $F4
    add d
    ld e, e
    add hl, bc
    dec sp
    xor d
    xor e
    xor h
    ld a, d
    rla
    jp z, $2A29

    add e
    ld e, e
    dec b
    dec bc
    inc c
    dec c
    ld c, $0F
    add h
    ld e, e
    ld b, $D0
    pop de
    jp nc, $C3D3

    call nz, Call_02B_5B83
    ld [bc], a
    rlca
    rla
    add e
    jr jr_02B_63CC

    jp z, $39B9

    ld a, [hl+]

jr_02B_63CC:
    add e
    ld e, e
    ld b, $1B
    adc d
    adc e
    adc h
    ld c, $0F

jr_02B_63D5:
    add e
    ld e, e
    ld bc, $85E0

jr_02B_63DA:
    jp nc, Jump_02B_5B82

    inc bc
    ld d, $17
    jp z, $2883

    ld [de], a
    cp c
    add hl, sp
    ld c, c
    ld c, d
    ld e, e
    rlca
    ld [$9A88], sp
    sbc e
    sbc h
    ld l, c
    ld [bc], a
    ld [$5B09], sp
    ldh a, [$E0]
    add d
    pop hl
    ld [bc], a
    db $E3
    db $E4
    add d
    ld e, e
    ld [bc], a
    ld h, $27
    add h
    jr z, @+$14

    add hl, hl
    ld c, c
    ld c, d
    ld e, d
    ld d, $17
    jr jr_02B_6424

    ld l, e
    xor e
    xor h
    ld a, d
    rla
    jr jr_02B_642B

    ld a, [de]
    ld e, e
    ldh a, [$82]
    pop af
    ld [bc], a
    di
    db $F4
    add d
    ld e, e
    inc b
    ld h, $27
    jr z, jr_02B_63DA

    add d
    jr c, jr_02B_6426

jr_02B_6424:
    add hl, sp
    ld a, [hl+]

jr_02B_6426:
    add d
    ld e, e
    dec b
    ld h, $37

jr_02B_642B:
    jr c, jr_02B_63D5

    cp b
    add e
    jr jr_02B_6435

    jp z, $2928

    ld a, [hl-]

jr_02B_6435:
    adc b
    ld e, e
    inc b
    ld [hl], $37
    jr c, jr_02B_6475

    add d
    ld c, b
    ld [bc], a
    ld c, c
    ld c, d
    add d
    ld e, e
    ld [bc], a
    ld b, [hl]
    ld b, a
    add d
    ld c, b
    ld [bc], a
    scf
    cp d
    add e
    jr z, jr_02B_6451

    cp c
    add hl, sp
    ld a, [hl-]

jr_02B_6451:
    adc b
    ld e, e
    ld [$4746], sp
    ld c, b
    ld c, c
    ld [bc], a
    ld e, b
    ld e, c
    ld c, a
    add d
    ld e, e
    ld b, $56
    ld d, a
    ld e, b
    inc bc
    ld b, a
    daa
    add e
    jr z, jr_02B_646B

    add hl, hl
    ld c, c
    ld c, d

jr_02B_646B:
    adc b
    ld e, e
    dec b
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    adc b
    ld e, e

jr_02B_6475:
    inc bc
    ld c, e
    ld d, a
    scf
    add e
    jr c, jr_02B_647F

    add hl, sp
    ld e, c
    ld e, d

jr_02B_647F:
    adc l
    ld e, e
    dec b
    or b
    or c
    or d
    or e
    or h
    add h
    ld e, e
    ld [bc], a
    ld c, e
    ld b, a
    add e
    ld c, b
    ld [bc], a
    ld c, c
    ld c, a
    adc l
    ld e, e
    rlca
    or b
    or c
    pop bc
    jp nz, $C4C3

    or h
    add h
    ld e, e
    ld bc, $8357
    ld e, b
    ld bc, $8D59
    ld e, e
    ld [bc], a
    or b
    or c
    add d
    pop de
    add e
    jp nc, $C402

    or h
    sub b
    ld e, e
    nop
    rrca
    add a
    nop
    inc b
    adc h
    jp z, $9008

    ld [$AB85], sp
    inc bc
    db $FD
    cp [hl]
    db $FD
    add l
    xor e
    add d
    ld [$AB85], sp
    add e
    db $FD
    add l
    xor e
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB84], sp
    add l
    ld [$AB84], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add [hl]
    ld [$AB83], sp
    add h
    ld [$AB82], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB83], sp
    add e
    ld [$AB01], sp
    add e
    ld [$AB83], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add [hl]
    ld [$AB85], sp
    add [hl]
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB82], sp
    add h
    ld [$AB01], sp
    add h
    ld [$AB82], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB84], sp
    add h
    ld [$AB83], sp
    add h
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add [hl]
    ld [$AB83], sp
    add l
    ld [$AB01], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add h
    ld [$AB82], sp
    add [hl]
    ld [$AB83], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add e
    ld [$AB0B], sp
    ld [$08AB], sp
    xor e
    ld [$08AB], sp
    xor e
    ld [$83AB], sp
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB0D], sp
    ld [$08AB], sp
    xor e
    ld [$08AB], sp
    xor e
    ld [$08AB], sp
    xor e
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add [hl]
    ld [$AB85], sp
    add [hl]
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB82], sp
    add h
    ld [$AB01], sp
    add h
    ld [$AB82], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB84], sp
    add h
    ld [$AB83], sp
    add h
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add [hl]
    ld [$AB83], sp
    add l
    ld [$AB01], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add e
    ld [$AB0B], sp
    ld [$08AB], sp
    xor e
    ld [$08AB], sp
    xor e
    ld [$83AB], sp
    ld [$AB8A], sp
    ld bc, $82FD
    xor e
    add d
    ld [$AB8A], sp
    ld bc, $82FD
    xor e
    add d
    ld [$AB8A], sp
    ld bc, $82FD
    xor e
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8A], sp
    ld bc, $82FD
    xor e
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8A], sp
    ld bc, $82FD
    xor e
    add d
    ld [$AB8A], sp
    ld bc, $82FD
    xor e
    add d
    ld [$AB8A], sp
    ld bc, $82FD
    xor e
    add d
    ld [$AB8A], sp
    ld bc, $82FD
    xor e
    add h
    ld [$AB82], sp
    add [hl]
    ld [$AB83], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB82], sp
    add e
    ld [$AB84], sp
    add d
    ld [$AB82], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$AB8D], sp
    adc e
    ld [$AB84], sp
    add d
    ld [$AB8D], sp
    add d
    ld [$FD82], sp
    adc e
    xor e
    add d
    ld [$FD82], sp
    adc e
    xor e
    add d
    ld [$AB8D], sp
    sub b
    ld [$1E00], sp
    ld c, $01
    inc de
    inc d
    add h
    inc bc
    and e
    nop
    ld bc, $9199
    nop
    ld bc, $8999
    nop
    rlca
    ld [$A90A], sp
    dec bc
    inc c
    dec c
    rrca
    adc d
    nop
    ld b, $08
    add hl, bc
    ld a, [bc]
    xor c
    dec bc
    rrca
    add [hl]
    nop
    inc c
    ld c, h
    jr jr_02B_67DC

    cp c
    dec de
    inc e
    dec e
    rra
    inc c
    dec c
    ld a, [bc]
    rrca
    add l
    nop
    dec bc
    ld c, h
    jr jr_02B_67EA

    ld a, [de]
    cp c
    dec de
    rra
    ld a, l
    ld a, c
    ld a, d
    ld a, e
    add d
    nop
    inc e

jr_02B_67DC:
    ld e, h
    jr z, jr_02B_6809

    ld [hl], h
    dec hl
    inc l
    dec l
    cpl
    inc e
    dec e
    ld a, [de]
    rra
    rrca
    nop

jr_02B_67EA:
    halt
    ld [hl], a
    ld a, b
    ld e, h
    jr z, jr_02B_6819

    ld a, [hl+]
    ld [hl], h
    dec hl
    cpl
    ld e, l
    adc c
    adc d
    adc e
    add d
    nop
    inc bc
    ld l, h
    ld a, [hl]
    ld b, $84
    ld [hl], h
    dec d
    sub $2C
    dec l
    ld a, [hl+]
    cpl
    rra
    ld c, l
    add [hl]

jr_02B_6809:
    add a
    adc b
    ld c, h
    ld a, [hl]
    ld [hl], h
    ld d, [hl]
    ld [hl], h
    ld d, [hl]
    ld a, a
    ld l, l
    nop
    sbc d
    sbc e
    add d
    nop
    inc bc

jr_02B_6819:
    ld a, h
    ld l, [hl]
    ld d, $84
    ld [hl], h
    inc c
    ld c, e
    inc a
    dec a
    ld e, c
    sub $2F
    ld c, l
    sub [hl]
    sub a
    sbc b
    ld e, h
    ld l, [hl]
    add e

Jump_02B_682C:
    ld [hl], h
    dec b
    daa
    ld l, a
    ld a, l
    nop
    xor d
    add e
    nop
    inc b
    ld e, b
    ld c, b
    ld h, l
    ld b, [hl]
    add e
    ld [hl], h
    ld bc, $835D
    nop
    ld [$7F59], sp
    ld e, l
    and [hl]
    and a
    nop
    ld [$826E], sp
    ld [hl], h
    ld b, $55
    scf
    ld l, a
    ld e, l
    nop
    cp d
    add h
    nop
    inc bc
    ld e, b
    ld c, d
    ld c, d
    add d
    ld [hl], h
    ld [bc], a
    ld c, e
    ld e, e
    add e
    nop
    inc bc
    ld e, h
    ld l, a
    ld l, l
    add d
    nop
    inc b
    ld [$6E18], sp
    ld c, d
    add e
    ld [hl], h
    inc b
    ld l, a
    ld l, l
    ret


    jp z, $0084

    dec b
    ld l, h
    ld l, [hl]
    ld c, d
    ld e, d
    dec sp
    add h
    nop
    ld [$6C99], sp
    ldh a, [$7D]
    nop
    ld [$2818], sp
    add d
    ld c, d
    add e
    ld [hl], h
    ld [bc], a
    ld l, a
    rrca
    add [hl]
    nop
    inc b
    ld [$4A6E], sp
    ld e, l
    add e
    nop
    inc d
    ld [$A90A], sp
    dec bc
    ldh a, [rIF]
    ld [$2818], sp
    jr c, jr_02B_68EB

    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    ld c, b
    ld l, a
    rra
    inc c
    add hl, bc
    ld a, [bc]
    add d
    nop
    dec b
    ld e, h
    jr jr_02B_691D

    ld l, a
    ld l, l
    add d
    nop

jr_02B_68B3:
    dec bc
    ld l, h
    jr jr_02B_68D1

    cp c
    dec de
    ldh a, [$1F]
    jr @+$2A

    jr c, jr_02B_6919

    add h
    nop
    ld b, $4C
    ld c, d
    cpl
    inc e
    add hl, de
    ld a, [de]
    add d
    nop
    dec b
    ld l, h
    jr z, jr_02B_68B3

    ld l, a
    rrca
    add d

jr_02B_68D1:
    nop
    ld a, [bc]
    ld e, h
    jr z, jr_02B_6900

    ld [hl], h
    dec hl
    ld c, d
    cpl
    jr z, jr_02B_6914

    ld c, e
    add l
    nop
    ld b, $5C
    ld l, [hl]
    sub $2C
    ld l, $2A
    add d
    nop
    add hl, bc
    ld e, h
    ld a, [hl]

jr_02B_68EB:
    ld c, d
    ld l, a
    rra
    ld c, l
    nop
    ld a, h
    ld a, [hl]
    add h
    ld [hl], h
    add d
    ld c, d
    ld bc, $835A
    nop
    rlca
    ld a, c
    ld a, d
    ld a, e
    ld c, h
    ld l, [hl]

jr_02B_6900:
    ld [hl], h
    ld c, d
    add d
    ld [hl], h
    add e
    nop
    ld [$4A59], sp
    and $2F
    ld e, l
    nop
    ld e, b
    ld c, b
    add h
    ld [hl], h
    ld [bc], a
    ld c, d
    ld c, e

jr_02B_6914:
    add h
    nop
    rlca
    adc c
    adc d

jr_02B_6919:
    adc e
    ld e, h
    ld l, [hl]
    ld [hl], h

jr_02B_691D:
    ld b, h
    add d
    ld [hl], h
    inc b
    halt
    ld [hl], a
    ld a, b
    ld e, h
    add d
    ld c, d
    ld [bc], a
    ld a, a
    ld l, l
    add d
    nop
    ld [bc], a
    ld e, b
    ld e, c
    add d
    ld [hl], h
    add d
    ld c, d
    ld bc, $850F
    nop
    inc b
    sbc d
    sbc e
    ld l, h
    ld l, [hl]
    add d
    ld [hl], h
    add hl, bc
    ld d, [hl]
    ld [hl], h
    add [hl]
    add a
    adc b
    ld e, h
    ld l, [hl]
    ld c, d
    ld e, d
    add h
    nop
    dec b
    ld e, b
    add hl, sp
    ld e, c
    ld c, d
    ld l, a
    add d
    rrca
    add h
    nop
    dec b
    xor d
    nop
    ld a, h
    ld l, [hl]
    ld d, a
    add e
    ld [hl], h
    rlca
    sub [hl]
    sub a
    sbc b
    ld a, h
    ld l, [hl]

jr_02B_6962:
    ld c, d
    rrca
    add d
    nop
    ld bc, $8499
    nop
    inc b
    ld l, [hl]
    ld l, a
    rra
    rrca
    add h
    nop
    inc b
    cp d
    nop
    ld e, b
    ld c, b
    add h
    ld [hl], h
    inc c
    and [hl]
    and a
    nop
    ld [$6F6E], sp
    rra
    inc c
    dec c
    xor c
    ld c, $0F
    add d
    nop
    add hl, bc
    ld e, c
    and $2F
    rra
    rrca
    nop
    sbc c
    ret


    jp z, $0082

    ld [bc], a
    ld e, b
    ld e, c
    add e
    ld [hl], h
    dec c
    ld [$0A0A], sp
    jr jr_02B_6A0C

    and $2F
    inc e
    dec e
    cp c
    ld e, $1F
    rrca
    add d
    nop
    add hl, bc
    ld c, b
    adc a
    cpl
    rra
    dec c
    xor c
    dec c
    ld a, [bc]
    rrca
    add d
    nop
    dec b
    ld e, b
    inc a
    dec a
    ld a, $18
    add d
    ld a, [de]
    dec bc
    jr z, @-$19

    ld c, d
    sub $2C
    dec l
    ld c, d
    ld l, $2F
    rra
    rrca
    add d
    nop
    ld [$8F59], sp
    cpl
    dec e
    cp c
    dec e
    ld a, [de]
    rra
    add [hl]
    nop
    inc b
    jr z, jr_02B_6A02

    ld a, [hl+]
    jr c, jr_02B_6962

    ld c, d
    inc b
    ccf
    cpl
    rra
    rrca
    add d
    nop
    ld [$8F48], sp
    dec l
    ld [hl], h
    dec l
    ld a, [hl+]
    cpl
    ld c, l
    add l
    nop
    ld bc, $8838
    ld c, d
    ld a, [bc]
    ld h, l
    ld c, d
    ld c, d
    ccf
    cpl
    rra
    ld c, l
    nop
    ld a, h
    ld l, [hl]
    add h
    ld [hl], h
    rlca
    ld a, a
    ld e, l

jr_02B_6A02:
    nop
    ld a, c
    ld a, d
    ld a, e
    nop
    adc d
    ld c, d
    ld b, $46
    ld c, d

jr_02B_6A0C:
    ld c, d
    ccf
    cpl
    ld e, l
    add d
    nop
    ld bc, $8448
    ld [hl], h
    rlca
    ld l, a
    ld l, l
    nop
    adc c
    adc d
    adc e
    nop
    add d
    ld c, d
    rlca
    ld c, e
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld e, c
    ld b, h
    add e
    ld c, d
    inc b
    ld d, h
    ld c, d
    ld a, a
    ld l, l
    add d
    nop
    ld [bc], a
    ld a, h
    ld l, [hl]
    add e
    ld [hl], h
    ld a, [bc]
    ld l, a
    ld a, l
    nop
    halt
    ld [hl], a
    ld a, b
    nop
    add hl, sp
    ld a, [hl-]
    ld e, e
    add h
    nop
    add hl, bc
    ld l, c
    ld a, [hl-]
    ld e, c
    ld e, d
    dec sp
    inc a
    dec a
    ld a, $7D
    add d
    nop
    ld [bc], a
    ld e, b
    ld e, c
    add e
    ld [hl], h
    ld b, $4B
    ld e, e
    nop
    add [hl]
    add a
    adc b
    adc d
    nop
    ld [bc], a
    ld l, c
    ld l, d
    adc b
    nop
    dec b
    ld e, b
    add hl, sp
    ld a, [hl-]
    dec sp
    ld e, e
    add d
    nop
    inc bc
    sub [hl]
    sub a
    sbc b
    sbc e
    nop
    ld [bc], a
    and [hl]
    and a
    ret nz

    ld b, l
    nop
    nop
    dec l
    jp hl


    rlca
    ret nz

    ld e, h
    ld [$00AA], sp
    add e
    ld [$0085], sp
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0608], sp
    nop
    ld [$0008], sp
    ld [$8908], sp
    nop
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0408], sp
    nop
    ld [$0008], sp
    add l
    ld [$0085], sp
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0608], sp
    nop
    ld [$0008], sp
    ld [$8908], sp
    nop
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0408], sp
    nop
    ld [$0008], sp
    add l
    ld [$0085], sp
    add d
    ret nz

    ld b, $00
    pop bc
    pop bc
    nop
    jp nz, $06C2

    nop
    jp $00C3


    call nz, $89C4
    nop
    add d
    reti


    ld b, $00
    jp c, $00DA

    db $DB
    db $DB
    ld b, $00
    call c, $00DC
    db $DD
    db $DD
    add e
    ld [$00AA], sp
    add e
    ld [$00AA], sp
    add e
    ld [$00AA], sp
    add e
    ld [$0085], sp
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0608], sp
    nop
    ld [$0008], sp
    ld [$8908], sp
    nop
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0408], sp
    nop
    ld [$0008], sp
    add l
    ld [$0085], sp
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0608], sp
    nop
    ld [$0008], sp
    ld [$8908], sp
    nop
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0408], sp
    nop
    ld [$0008], sp
    add l
    ld [$0085], sp
    add d
    push bc
    ld b, $00
    add $C6
    nop
    rst $00
    rst $00
    ld b, $00
    ret z

    ret z

    nop
    ret


    ret


    adc c
    nop
    add d
    sbc $06
    nop
    rst $18
    rst $18
    nop
    ldh [$E0], a
    ld b, $00
    pop hl
    pop hl
    nop
    ld [c], a
    ld [c], a
    add e
    ld [$00AA], sp
    add e
    ld [$00AA], sp
    add e
    ld [$00AA], sp
    add e
    ld [$0085], sp
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0608], sp
    nop
    ld [$0008], sp
    ld [$8908], sp
    nop
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0408], sp
    nop
    ld [$0008], sp
    add l
    ld [$0085], sp
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0608], sp
    nop
    ld [$0008], sp
    ld [$8908], sp
    nop
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0408], sp
    nop
    ld [$0008], sp
    add l
    ld [$0085], sp
    add d
    jp z, $0006

    set 1, e
    nop
    call z, $06CC
    nop
    call $00CD
    adc $CE
    adc c
    nop
    add d
    db $E3
    ld b, $00
    db $E4
    db $E4
    nop
    push hl
    push hl
    ld b, $00
    and $E6
    nop
    rst $20
    rst $20
    add e
    ld [$00AA], sp
    add e
    ld [$00AA], sp
    add e
    ld [$00AA], sp
    add e
    ld [$0085], sp
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0608], sp
    nop
    ld [$0008], sp
    ld [$8908], sp
    nop
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0408], sp
    nop
    ld [$0008], sp
    add l
    ld [$0085], sp
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0608], sp
    nop
    ld [$0008], sp
    ld [$8908], sp
    nop
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0408], sp
    nop
    ld [$0008], sp
    add l
    ld [$0085], sp
    add d
    rst $08
    ld b, $00
    ret nc

    ret nc

    nop
    pop de
    pop de
    ld b, $00
    jp nc, $00D2

    db $D3
    db $D3
    adc c
    nop
    add d
    add sp, $06
    nop
    jp hl


    jp hl


    nop
    ld [$06EA], a
    nop
    db $EB
    db $EB
    nop
    db $EC
    db $EC
    add e
    ld [$00AA], sp
    add e
    ld [$00AA], sp
    add e
    ld [$00AA], sp
    add e
    ld [$0085], sp
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0608], sp
    nop
    ld [$0008], sp
    ld [$8908], sp
    nop
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0408], sp
    nop
    ld [$0008], sp
    add l
    ld [$0085], sp
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0608], sp
    nop
    ld [$0008], sp
    ld [$8908], sp
    nop
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0408], sp
    nop
    ld [$0008], sp
    add l
    ld [$0085], sp
    add d
    call nc, $0006
    push de
    push de
    nop
    sub $D6
    ld b, $00
    rst $10
    rst $10
    nop
    ret c

    ret c

    adc c
    nop
    add d
    db $ED
    ld b, $00
    xor $EE
    nop
    rst $28
    rst $28
    ld b, $00
    ldh a, [$F0]
    nop
    pop af
    pop af
    add e
    ld [$00AA], sp
    add e
    ld [$00AA], sp
    add e
    ld [$00AA], sp
    add e
    ld [$00A5], sp
    add e
    ld [$0082], sp
    add e
    ld [$00A5], sp
    add e
    ld [$0082], sp
    add e
    ld [$0095], sp
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0608], sp
    nop
    ld [$0008], sp
    ld [$8208], sp
    nop
    add e
    ld [$0082], sp
    add e
    ld [$0095], sp
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0608], sp
    nop
    ld [$0008], sp
    ld [$8208], sp
    nop
    add e
    ld [$0082], sp
    add e
    ld [$0095], sp
    add d
    ld a, [c]
    ld b, $00
    di
    di
    nop
    db $F4
    db $F4
    ld b, $00
    push af
    push af
    nop
    or $F6
    add d
    nop
    add e
    rst $30
    add d
    nop
    add e
    ld [$00AA], sp
    add e
    ld [$00AA], sp
    add e
    ld [$00AA], sp
    ret nz

    or l
    ld [$2000], sp
    nop
    inc b
    add l
    ld [$2088], sp
    add l
    ld [$2089], sp
    add [hl]
    ld [$0083], sp
    add d
    ld bc, $A685
    inc bc
    ld [$0101], sp
    add e
    nop
    add d
    ld bc, $A683

jr_02B_6D6C:
    ld bc, $8308
    and d
    add d
    ld bc, $0083
    add d
    ld [$0003], sp

jr_02B_6D78:
    ld b, d
    nop
    add d
    ld bc, $A685
    ld b, $08
    ld bc, $0001
    ld b, l
    nop
    add d
    ld bc, $A283
    ld bc, $8308
    and d
    add d
    ld bc, $0003
    ld b, h
    nop
    add d
    ld [$0083], sp
    add d
    ld bc, $A685
    inc bc
    ld [$0101], sp
    add e
    nop

jr_02B_6DA1:
    add d
    ld bc, $A283
    ld bc, $8308
    and d
    add d
    ld bc, $0083
    add d
    ld [$0185], sp
    add l
    and [hl]

jr_02B_6DB3:
    ld bc, $8708
    ld bc, $A382
    ld [bc], a
    and h
    ld [$A283], sp
    add d
    ld bc, $8083
    ld [bc], a
    ld [$8520], sp

jr_02B_6DC6:
    ld bc, $A485
    ld bc, $8708
    ld bc, $A483

jr_02B_6DCF:
    ld bc, $8308
    and d
    add l
    ld bc, $0802
    jr nz, @-$77

jr_02B_6DD9:
    and d
    add e
    and h
    ld bc, $8420

jr_02B_6DDF:
    and b
    inc bc
    and c
    jr nz, @+$22

    add e
    and h
    add [hl]
    jr nz, jr_02B_6D6C

    ld bc, $2002

jr_02B_6DEC:
    ld [$A287], sp
    add e
    and h
    add d
    jr nz, jr_02B_6D78

    and b
    ld bc, $8420
    and h
    add h
    and [hl]
    add d
    jr nz, @+$08

    and h
    and l

jr_02B_6E00:
    and l
    jr nz, jr_02B_6E0B

    ld [$2086], sp
    add e
    and h
    add d
    jr nz, @-$7A

jr_02B_6E0B:
    and b
    inc bc
    jr nz, jr_02B_6DB3

    and l

jr_02B_6E10:
    adc e
    and [hl]
    ld [bc], a
    jr nz, @+$0A

    add h
    nop
    add e
    jr nz, @-$7B

    and h
    add e
    jr nz, jr_02B_6DA1

    and b
    inc bc
    jr nz, jr_02B_6DC6

    and l
    adc e
    and [hl]
    inc b
    jr nz, jr_02B_6E30

    nop
    add b
    add e
    nop
    add d
    jr nz, jr_02B_6DB3

    and h

jr_02B_6E30:
    ld [bc], a
    ld bc, $8320
    ld bc, $0804
    ld bc, $A5A4
    add [hl]
    and [hl]
    ld [bc], a
    jr nz, jr_02B_6DDF

    add d
    and a
    inc b
    jr nz, jr_02B_6E4C

    nop
    add b
    add e
    nop
    add d
    jr nz, jr_02B_6DCF

    and h

jr_02B_6E4C:
    ld [bc], a
    ld bc, $8508
    ld bc, $A601
    adc b
    jr nz, jr_02B_6DD9

    ld bc, $2002
    ld [$0086], sp
    ld bc, $8420

jr_02B_6E5F:
    and d
    add d
    ld bc, $0083
    add d

jr_02B_6E65:
    ld bc, $A602
    jr nz, jr_02B_6DEC

    and d
    ld bc, $83A3

jr_02B_6E6E:
    jr nz, @+$03

    ld [$0183], sp
    add d
    ld [$0082], sp
    ld bc, $8308
    nop
    add e
    jr nz, jr_02B_6E00

    and d
    add d
    ld bc, $0083
    ld bc, $8301

jr_02B_6E86:
    jr nz, @-$7C

    and d
    inc bc
    and e
    and h
    jr nz, jr_02B_6E10

    ld bc, $0083

jr_02B_6E91:
    add d
    ld [$0002], sp
    ret nz

    add e
    nop
    inc bc
    ld bc, $0808
    add e
    jr nz, @-$7C

    ld bc, $0083
    add d
    ld bc, $A284
    add d
    and h

jr_02B_6EA8:
    ld b, $20
    ld bc, $0001
    ld b, b
    nop
    add d
    ld [$0083], sp
    add h

jr_02B_6EB4:
    ld bc, $0883
    add d
    jr nz, @+$03

    ld [$0185], sp

jr_02B_6EBD:
    add d
    and d
    dec b
    and b
    jr nz, jr_02B_6E65

    and e
    and d
    add d
    ld bc, $0083
    add d
    ld [$0187], sp

jr_02B_6ECD:
    add d
    and [hl]
    add h
    ld [$0183], sp
    ld [bc], a
    ld [$8201], sp
    and d
    ld [bc], a
    and b
    jr nz, jr_02B_6E5F

    and d
    add l
    ld bc, $0889
    add h
    and a
    ld [bc], a
    ld [$8320], sp
    and b
    add [hl]
    jr nz, jr_02B_6E6E

    and d
    ld [bc], a
    ld bc, $8308
    ld bc, $2088
    add d
    ld [$A784], sp
    ld bc, $8320
    and b

jr_02B_6EFB:
    ld [bc], a
    and [hl]
    jr nz, @-$7C

    and [hl]
    add a
    jr nz, jr_02B_6E86

    and h
    add l
    jr nz, jr_02B_6F09

    and d
    and e

jr_02B_6F09:
    add d
    jr nz, jr_02B_6E91

    ld [$2001], sp
    add h

jr_02B_6F10:
    and b
    ld bc, $8820
    and [hl]
    ld [bc], a
    jr nz, jr_02B_6EBD

    add d
    and h
    add h
    jr nz, jr_02B_6F1F

    and c
    and d

jr_02B_6F1F:
    add d
    and e
    add e

jr_02B_6F22:
    jr nz, jr_02B_6EA8

    ld [$A084], sp
    ld bc, $8920
    and [hl]
    inc bc
    and l
    and h
    and h
    add d
    jr nz, jr_02B_6EB4

    and d
    add d
    and c
    add d
    and e
    add e
    and d
    inc b
    and c
    and d

jr_02B_6F3C:
    and c
    and d
    add e
    and b
    add d
    jr nz, jr_02B_6ECD

    and [hl]
    add d
    and h
    add d
    jr nz, jr_02B_6F4A

    and b

jr_02B_6F4A:
    add e
    and c
    add d
    and e
    add e
    and d
    inc bc
    and c
    and b
    and a
    add h
    and b
    inc bc
    and [hl]
    jr nz, @+$22

    add l
    and l
    add h
    and [hl]
    add d
    and h
    add d
    jr nz, @-$7C

    and b
    add d
    and c
    add d
    and d
    dec b
    and e
    and d
    and d
    and c
    and b
    add a
    ld bc, $A684
    ld [bc], a
    and l
    and [hl]
    add e
    jr nz, jr_02B_6EFB

    ld [$2082], sp
    add e
    and b
    add e
    jr nz, jr_02B_6F82

    and d
    and c

jr_02B_6F82:
    add d
    jr nz, jr_02B_6F86

    and b

jr_02B_6F86:
    add a
    ld bc, $A684
    add l
    jr nz, jr_02B_6F10

    ld [$2082], sp
    add e
    ld bc, $2088
    add d
    ld bc, $0083
    add d
    ld bc, $A684
    add d
    jr nz, jr_02B_6F22

    ld [$0183], sp
    ld [bc], a
    jr nz, @+$0A

    add e
    ld bc, $0801
    adc b
    jr nz, @+$07

    ld [$4600], sp
    nop
    ld bc, $2082
    add d
    and a
    ld bc, $83A0
    jr nz, jr_02B_6F3C

    ld [$0183], sp
    add d
    ld [$0083], sp
    add d
    ld bc, $A686
    ld [bc], a
    ld bc, $8308
    nop
    add d
    ld bc, $A601
    add e
    and a
    add e
    and [hl]
    add d
    ld bc, $0083
    add d
    ld [$0003], sp
    ld b, c
    nop
    add d
    ld bc, $A686
    ld [bc], a
    ld bc, $8508
    ld bc, $A682
    add e
    and a
    add d
    and [hl]
    add d
    ld bc, $0003
    ld b, e
    nop
    add d
    ld [$0083], sp
    add d
    ld bc, $A687
    ld bc, $8508
    ld bc, $A687
    add d
    ld bc, $0082
    add e
    ld [$0083], sp
    add d
    ld bc, $A687
    ld bc, $8C08
    and [hl]
    add d
    ld bc, $0083
    add [hl]
    ld [$2088], sp
    ld bc, $8D08
    jr nz, @-$79

    ld [$1E00], sp
    ld c, $01
    inc de
    inc d
    add h
    inc bc
    sub e
    nop
    rlca
    ld [$0D0C], sp
    ld c, $0D
    ld c, $0F
    adc d
    nop
    rlca
    ld [$0C0D], sp
    ld c, $0C
    dec c
    rrca
    add [hl]
    nop
    ld [$1C18], sp
    dec e
    ld e, $1D
    ld e, $1F
    rrca
    add a
    nop
    ld a, [bc]
    ld [$184D], sp
    dec e
    inc e
    ld e, $1C
    dec e
    rra
    rrca
    add h
    nop
    inc c
    ld [$2C28], sp
    dec l
    ld l, $2D
    ld l, $2F
    rra
    inc c
    dec c
    ld c, $83
    nop
    dec de
    ld [hl], l
    jr jr_02B_70C3

    jr z, @+$2F

    inc l
    ld l, $2C
    dec l
    cpl
    rra
    rrca
    nop
    ld [$184D], sp
    jr c, jr_02B_70B1

    dec a
    ld a, $3D
    ld a, $3F
    cpl
    inc e
    dec e
    ld e, $83
    nop
    ld de, $2875
    ld l, l
    jr c, jr_02B_70C3

    inc a
    ld a, $3C
    dec a
    ccf
    cpl
    rra
    inc c
    jr @+$5F

    jr z, jr_02B_70FD

    add e
    ld bc, $9C07
    ld bc, $3F4C
    inc l
    dec l
    ld l, $83
    nop
    ld b, $54
    jr c, jr_02B_70E0

    ld c, e
    and b
    and d
    add e
    ld bc, $4C08
    ccf
    cpl
    inc e
    jr z, jr_02B_711B

    jr c, jr_02B_712B

    add d

jr_02B_70B1:
    ld bc, $9D08
    xor h
    add l
    ld bc, $3C4C
    dec a
    ld a, $83
    nop
    db $10
    ld h, h
    ld l, e
    and b
    and c
    and h

jr_02B_70C3:
    or d
    ld bc, $858E
    ld bc, $3F4C
    inc l
    jr c, @+$40

    ld c, e
    add d
    ld bc, $2309
    ld e, a
    nop
    sub l
    sub [hl]
    sbc b
    sbc d
    sbc e
    sbc h
    add e
    nop
    inc d
    ld [hl], h
    ld e, e
    ret nz

jr_02B_70E0:
    sub h
    pop af
    or d
    sbc l
    sbc [hl]
    sub l
    sub [hl]
    ld bc, $3C4C
    ld c, e
    ld bc, $A1A0
    and d
    ld e, h
    ld e, a
    add d
    nop
    dec b
    and a
    xor b
    xor d
    xor e
    xor h
    add e
    nop
    dec c
    add h

jr_02B_70FD:
    add l
    sub a
    ret nz

    sub h
    or d
    ld e, a
    nop
    and l
    and [hl]
    add l
    sbc e
    sbc h
    add d
    ld bc, $B005
    or c
    or d
    ld e, h
    ld l, a
    adc e
    nop
    ld b, $A6
    and a
    add l
    or b
    or d
    ld l, a
    add e

jr_02B_711B:
    nop
    ld a, [bc]
    sub l

jr_02B_711E:
    xor e
    xor h
    sub [hl]
    sbc d
    ret nz

    pop bc
    jp nz, $8F8E

    adc l
    nop
    inc b
    ld e, a

jr_02B_712B:
    or b
    or d
    ld a, a
    add [hl]
    nop
    ld b, $A6
    xor d
    xor e
    xor h
    xor b
    sbc [hl]
    adc [hl]
    nop
    inc b
    ld l, a
    or b
    or d
    adc a
    sbc d
    nop
    inc b
    ld a, a
    or b
    or d
    rrca
    add d
    nop
    add hl, bc
    ld [$0D0C], sp
    ld c, $0C
    dec c
    ld c, $0D
    rrca
    adc a
    nop
    inc d
    ld [$B2B0], sp
    rra
    ld c, $0C
    jr jr_02B_7178

    dec e
    ld e, $1C
    dec e
    ld e, $1D
    rra
    inc c
    dec c
    ld c, $4D
    rrca
    adc c
    nop
    ld d, $08
    jr jr_02B_711E

    or d
    cpl
    ld e, $1C
    jr z, jr_02B_71A0

    dec l
    ld l, $2C
    dec l

jr_02B_7178:
    ld l, $2D
    cpl
    inc e
    dec e
    ld e, $5D
    rra
    ld e, a
    add [hl]
    nop
    jr jr_02B_718D

    ld c, l
    jr jr_02B_71B0

    ret nz

    jp nz, $2E3F

    inc l

jr_02B_718D:
    jr c, jr_02B_71CB

    dec a
    ld a, $3C
    dec a
    ld a, $3D
    ccf
    inc l
    dec l
    ld l, $6D
    cpl
    ld l, a
    add l
    nop
    db $10
    ld d, h

jr_02B_71A0:
    jr jr_02B_71FF

    jr z, @+$3A

    ld a, e
    ld bc, $3E4C
    inc a
    ld c, e
    ld bc, $9B9C
    sbc h
    sbc e
    add d

jr_02B_71B0:
    ld bc, $4F03
    inc a
    dec a
    add d
    ld a, $02
    ccf
    ld a, a
    add l
    nop
    dec b
    ld h, h
    jr z, jr_02B_722D

    jr c, jr_02B_720D

    add h
    ld bc, $9B08
    sbc h
    sbc l
    xor h
    xor e
    xor h

jr_02B_71CB:
    xor e
    add l
    add [hl]
    ld bc, $6C02
    adc a
    add l
    nop
    inc b
    ld [hl], h
    jr c, jr_02B_7216

    ld c, e
    add h
    ld bc, $9D04
    xor e
    xor h
    xor l
    add h
    nop
    add hl, bc
    sub l
    sub [hl]
    sbc e
    sbc h
    sbc e
    sbc h
    sbc e
    sbc l
    sbc [hl]
    add l
    nop
    ld [bc], a
    add h
    ld l, e
    add e
    ld bc, $9804
    sbc c
    adc [hl]
    xor l
    adc b
    nop
    rlca
    and [hl]
    xor e

Jump_02B_71FD:
    xor h
    xor e

jr_02B_71FF:
    xor h
    xor e
    xor l
    add [hl]
    nop
    ld [bc], a
    sub l
    sub [hl]
    add d
    ld bc, $8E03
    xor b
    xor c

jr_02B_720D:
    sbc b
    nop
    ld b, $08
    ld bc, $0F01
    nop
    nop

jr_02B_7216:
    dec b
    ld [$0D0C], sp
    ld c, l
    rrca
    add a
    nop
    dec b
    ld [$0C0D], sp
    add hl, bc
    rrca
    add a
    nop
    jr jr_02B_7240

    ld e, e
    ld e, h
    rra
    inc c
    ld d, h

jr_02B_722D:
    jr jr_02B_724B

    dec e
    ld e, l
    rra
    inc c
    dec c
    ld c, $0C
    dec c
    ld c, $0D
    jr jr_02B_7258

    inc e
    add hl, de
    rra
    ld e, a
    add l

jr_02B_7240:
    nop
    add hl, de
    ld d, h
    jr z, jr_02B_72A0

    ld e, h
    cpl
    inc e
    ld h, h
    jr z, jr_02B_7277

jr_02B_724B:
    dec l
    ld l, l
    cpl
    inc e
    dec e
    ld e, $1C
    dec e
    ld e, $1D
    jr z, jr_02B_7284

    inc l

jr_02B_7258:
    add hl, hl
    cpl
    ld l, a
    add l
    nop
    add hl, de
    ld h, h
    jr c, @+$7D

    ld a, h
    ccf
    inc l
    ld [hl], h
    jr c, @+$3E

    dec a
    add hl, sp
    ccf
    inc l
    dec l
    ld l, $2C
    dec l
    ld l, $2D
    jr c, jr_02B_72B0

    inc a
    add hl, sp
    ccf
    ld a, a

jr_02B_7277:
    add l
    nop
    ld [bc], a
    ld [hl], h
    ld l, e
    add d
    ld bc, $4C15
    inc a
    add hl, sp
    ld c, e
    and b

jr_02B_7284:
    and c
    and d
    ld c, h
    inc a
    dec a
    ld a, $3C
    dec a
    ld a, $3D
    ld c, e
    and b
    and c
    and d
    ld l, h
    adc a
    add l
    nop
    dec bc
    sub l
    add l
    sbc d
    sbc e
    sbc h
    sbc e
    sbc d
    sbc e
    ret nz

jr_02B_72A0:
    pop bc
    jp nz, $0183

    inc bc
    sbc d
    sbc e
    sbc h
    add d
    sbc e
    ld b, $01
    or b
    or c
    or d
    adc [hl]

jr_02B_72B0:
    sbc [hl]
    add [hl]
    nop
    db $10
    sub l
    xor d
    xor e
    xor h
    xor e
    xor d
    xor e
    add l
    sbc d
    sbc e
    sbc h
    sbc e
    adc [hl]
    xor d
    xor e
    xor h
    add d
    xor e
    dec b
    add l
    ret nz

    pop bc
    jp nz, $8E5F

    nop
    ld b, $95
    xor d
    xor e
    xor h
    xor e
    sbc [hl]
    add l
    nop
    dec b
    ld d, h
    ld e, e
    ld bc, $6F5C
    sbc c
    nop
    dec b
    ld h, h
    ld e, e
    ld bc, $7F5C
    adc e
    nop
    nop
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    and l
    ld c, d
    ld bc, $8305
    ld b, $01
    ld l, [hl]
    add e
    ld b, $06
    ld l, [hl]
    ld b, $06
    ld l, [hl]
    ld b, $06
    ld [bc], a
    ei
    cpl
    adc [hl]
    ld c, d
    inc bc
    dec d
    ld d, $6E
    add e
    ld d, $01
    ld l, [hl]
    add e
    ld d, $01
    ld l, [hl]
    add e
    ld d, $04
    ei
    ccf
    ld c, d
    dec b
    add e
    ld l, [hl]
    ld bc, $8807
    ld c, d
    ld bc, $8315
    ld d, $01
    ld l, [hl]
    add e
    ld d, $01
    ld l, [hl]
    add e
    ld d, $06
    ld l, [hl]
    ld sp, hl
    ei
    rra
    ld c, d
    dec d
    add e
    ld d, $01
    rla
    adc b
    ld c, d
    inc bc
    dec d
    ld d, $6E
    add e
    ld d, $01
    ld l, [hl]
    add e
    ld d, $01
    ld l, [hl]
    add e
    ld d, $04
    ei
    cpl
    ld c, d
    dec d
    add e
    rst $38
    ld bc, $8817
    ld c, d
    ld bc, $8325
    ld h, $01
    ld l, [hl]
    add e
    ld h, $06
    ld l, [hl]
    ld h, $26
    ld l, [hl]
    ld h, $26
    inc b
    ei
    ccf
    ld c, d
    dec h
    add e
    ld h, $01
    daa
    adc b
    ld c, d
    ld bc, $8E35
    ld [hl], $03
    scf
    ld c, d
    dec [hl]
    add e
    ld [hl], $01
    scf
    adc h
    ld c, d
    ld [bc], a
    inc sp
    inc [hl]
    add h
    ld c, d
    inc b
    dec b
    ld b, $06
    rlca
    add [hl]
    ld c, d
    ld [bc], a
    inc sp
    rlca
    adc h
    ld c, d
    ld [bc], a
    dec d
    sbc c
    add h
    ld b, $05
    sbc d
    adc c
    ld h, $A9
    rlca
    add l
    ld c, d
    ld [bc], a
    dec d
    rla
    adc h
    ld c, d
    ld bc, $8325
    ld h, $08
    adc d
    ld d, $89
    daa
    ld [hl], $25
    xor c
    rlca
    add h
    ld c, d
    ld [bc], a
    dec d
    rla
    adc h
    ld c, d
    ld bc, $8335
    ld [hl], $09
    dec d
    adc c
    daa
    scf
    ld c, d
    dec [hl]
    dec h
    xor c
    rlca
    add d
    ld c, d
    inc bc
    inc sp
    sbc d
    rla
    sub b
    ld c, d
    inc bc
    dec d
    rla
    scf
    add e
    ld c, d
    inc bc
    dec [hl]
    dec h
    ld b, d
    add d
    ld c, d
    inc bc
    dec d
    adc c
    ld b, d
    add l
    ld c, d
    inc bc
    dec b
    ld b, $07
    add [hl]
    ld c, d
    inc b
    dec b
    ld b, $9A
    rla
    add l
    ld c, d
    ld [bc], a
    dec [hl]
    scf
    add d
    ld c, d
    ld [bc], a
    dec d
    rla
    add [hl]
    ld c, d
    inc bc
    dec d
    rst $38
    rla
    add [hl]
    ld c, d
    ld b, $15
    ld d, $16
    rla
    ld c, d
    ld c, d
    ld [bc], a
    rst $38
    inc [hl]
    add l
    ld c, d
    inc bc
    dec h
    xor c
    inc [hl]
    add l
    ld c, d
    inc bc
    dec d
    ld d, $17
    add [hl]
    ld c, d
    inc b
    dec h
    ld h, $8A
    rla
    add d
    ld c, d
    ld [bc], a
    inc d
    inc h
    add [hl]
    ld c, d
    ld [bc], a
    dec d
    rla
    add d
    ld c, d
    add hl, bc
    inc sp
    rlca
    ld c, d
    dec h
    add e
    daa
    ld c, d
    dec b
    inc [hl]
    add e
    ld c, d
    inc b
    dec [hl]
    ld [hl], $15
    rla
    add d
    ld c, d
    add d
    ld [hl], $86
    ld c, d
    ld [bc], a
    dec d
    rla
    add d
    ld c, d
    inc c
    rst $38
    rla
    ld c, d
    dec [hl]
    ei
    scf
    ld c, d
    dec d
    rst $38
    ld c, d
    inc sp
    rst $38
    add d
    ld c, d
    ld [bc], a
    dec d
    sbc c
    add h
    ld b, $08
    rlca
    ld c, d
    dec b
    ld b, $07
    ld c, d
    rst $38
    rla
    add d
    ld c, d
    ld [bc], a
    ld b, c
    daa
    add d
    ld c, d
    dec bc
    ld [hl], $4A
    ld c, d
    dec h
    ld b, d
    ld c, d
    dec d
    rla
    ld c, d
    inc sp
    cp c
    add h
    ld h, $07
    inc h
    ld [hl], $4A
    dec d
    ld d, $17
    ld c, d
    add d
    ld [hl], $82
    ld c, d
    ld [bc], a
    dec [hl]
    scf
    add l
    ld c, d
    ld [$3735], sp
    ld c, d
    dec d
    rla
    ld c, d
    dec d
    rla
    add l
    ld [hl], $82
    ld c, d
    dec b
    dec d
    adc c
    ld [hl-], a
    ld [de], a
    inc [hl]
    adc l
    ld c, d
    rlca
    dec d
    rla
    ld c, d
    dec d
    rla
    ld c, d
    inc sp
    add e
    ld b, $04
    inc [hl]
    ld c, d
    dec d
    rla
    add e
    ld [hl], $8D
    ld c, d
    rlca
    dec d
    sbc c
    ld b, $9A
    sbc c
    ld b, $B9
    add e
    ld h, $04
    daa
    ld c, d
    dec d
    rla
    sub b
    ld c, d
    ld bc, $8325
    ld h, $03
    db $ED
    ld h, $27
    add e
    ld [hl], $08
    scf
    ld c, d
    dec d
    rla
    ld c, d
    dec b
    ld b, $07
    adc h
    ld c, d
    ld bc, $8535
    ld [hl], $03
    scf
    ld c, d
    dec b
    add e
    ld b, $06
    sbc d
    rla
    ld c, d
    dec d
    rst $38
    rla
    add e
    ld c, d
    ld [$5E05], sp
    ld e, a
    ld c, $1E
    ld l, $5E
    ld e, a
    add e
    ld c, $08
    ld e, [hl]
    ld e, a
    rrca
    ld c, $2F
    inc sp
    sbc d
    rst $28
    add e
    ld d, $05
    daa
    ld c, d
    dec d
    ld d, $17
    add e
    ld c, d
    ld bc, $8315
    ld d, $02
    ei
    ld a, $83
    ld d, $01
    ei
    add h
    ld d, $04
    adc c
    ccf
    dec d
    adc c
    add e
    ld h, $07
    daa
    scf
    ld l, [hl]
    sbc d
    rst $38
    sbc c
    ld l, [hl]
    add d
    ld c, d
    inc b
    ld e, $16
    ld d, $0E
    add e
    ld d, $02
    ei
    rra
    add e
    ld d, $06
    ei
    ld c, $17
    ld c, d
    dec d
    ld hl, sp-$7D
    ld [hl], $07
    scf
    ld c, d
    ld a, [hl]
    adc d
    ld d, $89
    ld a, [hl]
    add d
    ld c, d
    inc bc
    dec d
    ld d, $FB
    add d
    ld d, $01
    ld e, $88
    ld d, $05
    rla
    ld c, d
    dec h
    ld [hl], h
    rlca
    add h
    ld c, d
    dec b
    ld [hl], $15
    rst $38
    rla
    ld [hl], $82
    ld c, d
    ld bc, $860E
    ld d, $06
    ld c, $16
    ld d, $FB
    ld d, $16
    ld b, $2E
    rla
    ld c, d
    dec [hl]
    ld hl, sp+$17
    add l
    ld c, d
    inc bc
    dec h
    ld h, $27
    add e
    ld c, d
    inc bc
    dec h
    ld h, $1F
    add e
    ld h, $01
    ei
    add [hl]
    ld h, $02
    ld a, $27
    add d
    ld c, d
    ld [bc], a
    ld b, c
    daa
    add l
    ld c, d
    inc bc
    dec [hl]
    ld [hl], $37
    add e
    ld c, d
    ld bc, $8D35
    ld [hl], $05
    scf
    ld c, d
    ld c, d
    dec [hl]
    scf
    adc c
    ld c, d
    nop
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    sbc a
    db $FD
    ld bc, $851C
    ld l, a
    sub l
    dec a
    inc b
    ld e, $FD
    db $FD
    ld e, a
    add l
    db $FD
    ld b, $93
    ld c, l

jr_02B_75AC:
    ld c, l
    ld c, [hl]
    ldh [$D1], a
    add d
    add b
    ld [bc], a
    sub e
    sub d
    add d
    add b
    dec b
    db $D3
    pop de
    db $D3
    db $E4
    ld c, h
    add h
    ld c, l
    inc b
    ld e, [hl]
    db $FD
    db $FD
    ld e, a
    add l
    db $FD
    ld a, [bc]
    call nc, $0202
    nop
    ld c, e
    ldh [$E1], a
    ld [c], a
    db $E4
    ldh [$82], a
    pop hl
    inc b
    db $E4
    ldh [$E4], a
    ld c, a
    add e
    nop
    add d
    inc bc
    inc b
    dec hl
    db $FD
    db $FD
    ld e, a
    add l
    db $FD
    ld [bc], a
    call nc, $8303
    nop
    dec bc
    ld c, e
    ld c, h
    ld c, [hl]
    ld c, a
    ld c, e
    ld c, h
    ld c, [hl]
    ld c, a
    ld c, e
    ld c, a
    push af
    add h
    nop
    ld [bc], a
    ld [bc], a
    dec hl
    add d
    db $FD
    ld bc, $855F
    db $FD
    ld bc, $93D4
    nop
    ld [bc], a
    ld [bc], a
    dec hl
    add d
    db $FD
    ld bc, $855F
    db $E3
    inc b
    jp nc, $B3B2

    or h
    add h
    nop
    ld [bc], a
    or b
    or c
    add d
    or d
    ld [bc], a
    or e
    or h
    add d
    nop
    ld [bc], a
    or b
    ret nz

    add e
    or d
    dec b
    dec hl
    db $FD
    db $FD
    ld e, a
    jr c, jr_02B_75AC

    ld c, l
    ld [bc], a
    ld c, [hl]
    ld [hl], b
    add d
    db $FD
    ld bc, $84B3
    nop
    ld [bc], a
    ret nz

    pop bc
    add d
    jp nz, $C302

    call nz, $0082
    ld bc, $84C0
    db $FD
    ld b, $5E
    db $FD
    db $FD
    ld e, a
    or e
    or h
    add e
    nop
    inc b
    ldh [$FD], a
    db $FD
    db $E4
    add h
    nop
    ld bc, $84D0
    jp nc, $D404

    nop
    nop
    ret nc

    add h
    db $FD
    ld b, $5E
    db $FD
    db $FD
    ld e, a
    jp $83C4


    nop
    inc b
    ldh a, [$E0]
    db $E4
    db $F4
    add h
    nop
    ld [bc], a
    ldh [$E1], a
    add d
    ld [c], a
    ld [bc], a
    db $E3
    db $E4
    add d
    nop
    ld bc, $84E0
    db $FD
    ld b, $5E
    db $FD
    db $FD
    ld e, a
    jp nc, $8BD4

    nop
    ld [bc], a
    ld c, e
    ld c, h
    add d
    ld c, l
    ld [bc], a
    ld c, [hl]
    ld c, a
    add d
    nop
    ld [bc], a
    ldh a, [$E0]
    add e
    ld [c], a
    ld b, $5E
    db $FD
    db $FD
    ld e, a
    jp nc, $94D4

    nop
    ld [bc], a
    ld c, e
    ld c, h
    add d
    ld c, l
    ld b, $5E
    db $FD
    db $FD
    ld e, a
    db $E3
    db $E4
    add e
    nop
    add hl, bc
    or b
    ret nz

    call nz, $08B4
    add hl, bc
    nop
    or b
    or c
    add e
    or d
    ld [bc], a
    or e
    or h
    add a
    nop
    ld b, $2B
    db $FD
    db $FD
    ld e, a
    ld c, [hl]
    ld c, a
    add e
    nop
    inc b
    ret nz

    db $FD
    ld [hl], c
    rla
    add e
    dec c
    ld bc, $8518
    db $FD
    ld bc, $8317
    dec c
    ld bc, $831F
    nop
    inc b
    dec hl
    db $FD
    db $FD
    ld e, a
    add l
    nop
    ld [$C2E0], sp
    ld [hl], c
    ld e, [hl]
    ld h, [hl]
    ld h, a
    dec e
    ld e, $85
    ld l, [hl]
    add hl, bc
    inc e
    dec a
    dec a
    inc l
    cpl
    nop
    or b
    or c
    ld e, [hl]
    add d
    db $FD
    inc bc
    ld e, a
    or e
    or h
    add e
    nop
    ld b, $F0
    sub d
    ld [hl], c
    ld e, [hl]
    halt
    ld [hl], a
    add d
    dec e
    ld b, $2E
    jr z, @+$01

    daa
    inc l
    cpl
    add d
    nop
    ld b, $2B
    cpl
    nop
    ret nz

    pop bc
    ld e, [hl]
    add d
    db $FD
    inc b
    ld e, a
    db $FD
    call nz, $83B4
    nop
    inc bc
    ldh [$FD], a
    daa
    add e
    dec a
    ld [bc], a
    inc l
    rst $30
    add e
    db $FD
    ld [bc], a
    rst $30
    ld e, $82
    dec c
    ld b, $1C
    cpl
    nop
    ret nc

    jp nc, $825E

    db $FD
    inc b
    ld e, a
    db $FD
    db $FD
    sub $83
    nop
    ld [bc], a
    ld c, e
    ld c, h
    add e
    ld c, l
    rlca
    ld c, [hl]

jr_02B_7743:
    dec sp
    jr z, jr_02B_7743

    db $D3
    ld [c], a
    daa
    add h
    dec a
    dec b
    ccf
    nop
    ldh [$E1], a
    ld e, [hl]
    add d
    db $FD
    inc b
    ld e, a
    ld [c], a
    db $E4
    db $F4
    add h
    nop
    add l
    ld [bc], a
    rlca
    ld c, e
    ld c, c
    ldh [$E4], a
    ld c, a
    ld c, e
    ld c, h
    add d
    ld c, l
    ld b, $4E
    ld c, a
    nop
    ld c, e
    ld c, h
    ld e, [hl]
    add d
    db $FD
    inc bc
    ld e, a
    ld c, [hl]
    ld c, a
    adc h
    nop
    ld [bc], a
    ld c, e
    ld c, a
    adc c
    nop
    ld [bc], a
    ld d, $2B
    add d
    db $FD
    ld bc, $8F2F
    nop
    inc bc
    or b
    push hl
    or h
    add h

jr_02B_7788:
    nop
    dec b

jr_02B_778A:
    or b
    or c
    or e
    or h
    dec hl
    add d
    db $FD
    ld bc, $881D
    ld a, [de]
    ld [bc], a
    ld c, $09
    add l
    nop
    inc bc
    ret nz

    db $FD
    call nz, $0084
    dec b
    ret nz

    db $FD
    db $FD
    call nz, $825E
    db $FD
    ld bc, $885F
    db $FD
    ld [bc], a
    add hl, hl
    inc bc
    add l
    nop

jr_02B_77B1:
    inc bc
    ret nc

    db $FD
    call nc, $0084
    dec b
    ret nc

    db $FD
    db $FD
    sub e
    ld e, [hl]
    add d
    db $FD
    ld bc, $865F
    db $FD
    ld de, $FD18
    add hl, hl
    inc bc
    ld [bc], a
    nop
    or b
    push hl
    or h
    ret nc

    db $FD
    call nc, $B1B0
    or e
    or h
    ret nc

    add d
    jp nc, $9302

    ld e, [hl]
    add d
    db $FD
    ld [bc], a
    dec e
    ld a, b
    add h
    add hl, de
    ld b, $38
    db $FD
    db $FD
    ld l, b
    dec c
    dec c
    ld [$181A], sp
    db $FD
    or d
    jp $C1FD


    and d
    add d
    db $FD
    ld [bc], a
    add b
    pop bc
    add d
    jp nc, $9302

    ld e, [hl]
    add d
    db $FD
    ld [bc], a
    dec e
    jr z, jr_02B_7788

    db $FD
    inc bc
    daa
    rst $30
    jr z, jr_02B_778A

    db $FD
    ld bc, $83D1
    jp nc, $D301

    add a
    db $FD
    ld b, $5E
    db $FD

jr_02B_7813:
    db $FD
    ld e, a
    db $FD
    db $FD
    ld [bc], a
    rla
    jr jr_02B_77B1

    db $FD
    ld b, $5E
    db $FD
    db $FD
    ld e, a
    db $FD
    db $FD
    ld bc, $9729
    db $FD
    ld b, $5E
    db $FD
    db $FD
    inc l
    ld l, [hl]
    ld l, [hl]
    ld bc, $971D
    ld l, [hl]
    ld bc, $9F2E
    db $FD
    nop
    ld e, $0E
    ld bc, $0E13
    ret nc

    ld [bc], a
    ld d, $8B
    ld l, h
    ld a, a
    ld e, [hl]
    ld e, a
    ld [bc], a
    inc bc
    ld bc, $5D5C
    ld e, a
    ld [bc], a
    inc d
    ld b, [hl]
    ld b, a
    db $10
    ld [bc], a
    nop
    ld bc, $0402
    ld bc, $7782
    ld b, $12
    ld [hl], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [hl], a
    ld [de], a
    ld l, $2F
    ld c, a
    db $10
    ld b, d
    ld b, e
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    inc d
    ld [de], a
    inc h
    ld d, [hl]
    ld d, a
    jr nz, @+$14

    db $10
    add d
    or h
    rlca
    inc d
    inc hl
    ld hl, sp+$22
    and l
    dec b
    dec [hl]
    add e
    dec d
    ld [de], a
    ld e, l
    ld e, [hl]
    ld e, a
    jr nz, jr_02B_78D5

    ld d, e
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    inc h
    ld [hl-], a
    inc [hl]
    ld h, [hl]
    ld h, a
    jr nc, jr_02B_78C0

    jr nz, jr_02B_7813

    call nz, $2405
    ld [hl-], a
    ld [hl-], a
    and l
    or l
    add d
    dec b
    rrca
    daa
    dec [hl]
    dec d
    ccf
    ld a, e
    inc a
    jr nc, @+$64

    ld h, e
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    inc [hl]
    ld b, h
    add e
    dec d
    add d
    ld b, l
    ld b, $30
    ld sp, $3432
    ld [hl], $27
    add d
    or l
    add h
    dec b
    dec b
    dec [hl]
    ld c, a
    ld a, e
    ld e, h
    ret nz

    adc e

jr_02B_78C0:
    dec d
    ld bc, $8736
    dec b
    ld [bc], a
    or l
    push bc
    add l
    db $EC
    inc b
    ld e, a
    ld a, e
    ld c, [hl]
    ret nz

    add e
    dec d
    ld b, $58
    dec d
    dec d

jr_02B_78D5:
    ld e, c
    dec d
    dec d
    ld [bc], a
    ld [hl], $27
    add d
    dec b
    ld b, $CD
    dec b
    dec b
    adc $05
    dec b
    ld a, [bc]
    push bc
    jr c, jr_02B_78EA

    inc bc
    inc b

jr_02B_78EA:
    ld bc, $4D02
    ld c, [hl]
    cp h
    add d
    db $EC
    ld b, $75
    halt
    ld l, b
    ld b, $07
    ld l, c
    add e
    db $EC
    ld c, $75
    halt
    db $EC
    ld l, b
    ld b, $07
    ld l, c
    ld [hl], l
    halt
    ld bc, $B211
    or e
    inc d
    add d
    ld [hl-], a
    inc bc
    ld l, d
    cp h
    xor [hl]
    add d
    nop
    rlca
    add l
    add [hl]
    db $DD
    ld b, $07
    sbc $45
    add d
    sub h
    ld d, $85
    add [hl]
    sub h
    db $DD
    ld b, $07
    sbc $85
    add [hl]
    ld de, $4221
    ld b, e
    inc h
    sub a
    ld a, e
    rrca
    dec bc
    cp h
    jr nz, jr_02B_7953

    ret nz

    adc e
    dec d
    ld bc, $8344
    dec d
    ld de, $2736
    and [hl]
    ld sp, $5352
    inc [hl]
    sbc d
    xor a
    rra
    ld c, a
    dec de
    jr nc, jr_02B_7978

    ret nz

    ld [hl], $35
    adc l
    dec d
    inc bc
    ld d, $05
    or [hl]
    add d
    dec d
    dec c

jr_02B_7953:
    ld [hl], $B1
    ld c, [hl]
    xor h
    dec c
    rrca
    dec bc
    ld c, l
    nop
    ret nz

    ld d, $05
    dec [hl]
    add d
    dec d
    ld bc, $84F5
    di
    dec b
    or $15
    dec d
    ld [hl], $27
    add d
    dec b
    dec b
    or [hl]
    dec d
    dec d
    ld d, $B1
    add d
    cp h
    add e
    ld [hl], h

jr_02B_7978:
    ld b, $96
    db $10
    ret nz

    ld h, $37
    dec h
    add d
    dec d
    ld bc, $84B0
    dec b
    ld b, $B1
    dec d
    dec d
    ld d, $05
    dec b
    ld [$C6B1], sp
    ld [hl], $27
    dec b
    or c
    cp h
    dec a
    add e
    dec b
    inc bc
    or [hl]
    and [hl]
    sub d
    add l
    dec d
    ld bc, $84B0
    dec b
    inc bc
    or c
    dec d
    ld [hl], $83
    dec b
    ld [bc], a
    or c
    add hl, sp
    add h
    db $EC
    ld [bc], a
    cp h
    ld c, l
    add e
    add h
    add d
    or [hl]
    add [hl]
    dec d
    ld [bc], a
    or b
    rst $30
    add e
    dec b
    inc bc
    or c
    dec d
    ld d, $83
    dec b
    inc bc
    or c
    ld a, e
    ld c, e
    add d
    ld a, e
    inc bc
    inc b
    cp a
    cp h
    add e
    db $EC
    ld b, $C6
    or [hl]
    dec d
    ld [hl], $27
    dec [hl]
    add d
    dec d
    rlca
    add b
    add h
    add d
    add e
    add h
    add c
    ld [hl], $84
    dec b
    ld c, $B1
    inc bc
    ld l, e
    ld bc, $1402
    dec bc
    cp h
    ccf
    nop
    inc bc
    add hl, sp
    add $36
    add e
    dec b
    ld [$3527], sp
    add l
    add [hl]
    or b
    or c
    add l
    add [hl]
    add l
    dec b
    ld [bc], a
    ld [hl], e
    push af
    add d
    db $E3
    rlca
    db $E4
    inc d
    ld c, a
    dec de
    ld c, a
    ret nc

    add e
    add h
    add h
    ld bc, $8C82
    dec b
    ld bc, $8483
    add h
    add hl, bc
    add d
    pop af
    inc d
    ld e, a
    dec de
    ld c, a
    ldh [$B1], a
    sub a
    add e
    call nc, $B001
    adc h
    dec b
    dec c
    or c
    sub a
    sub a
    call nc, $B097
    pop af
    inc [hl]
    ld c, [hl]
    cp h
    ld e, a
    ldh a, [$B1]
    add h
    call nc, $B002
    adc $82
    add h
    ld bc, $8482
    dec b
    ld b, $83
    add h
    add h
    call $97B1
    add e
    call nc, $B008
    pop af
    ld c, [hl]
    cp h
    ld a, [bc]
    nop
    ldh a, [$B1]
    add e
    call nc, $9706
    or b
    pop af
    ld [bc], a
    inc bc
    or b
    add h
    dec b
    dec b
    or c
    inc bc
    ld bc, $B1F0
    add e
    call nc, $970F
    or b
    pop af
    ld a, $0A
    inc c
    xor h
    ldh a, [$B1]
    sub a
    call nc, $9A97
    or b
    pop af
    add d
    ld [hl], a
    ld bc, $84B0
    dec b
    ld b, $B1
    add a
    ld [hl], a
    ldh a, [$B1]
    sub a
    add e
    call nc, $B008
    pop af
    nop
    ld c, h
    inc e
    dec a
    ldh a, [$73]
    add h
    ld [hl], h
    ld [bc], a
    ld [hl], d
    pop af
    add d
    db $EC
    ld bc, $8458
    dec b
    dec b
    ld e, c
    db $EC
    db $EC
    ldh a, [$73]
    add h
    ld [hl], h
    rlca
    ld [hl], d
    pop af
    inc a
    inc c
    dec c
    ccf
    ld a, [c]
    add [hl]
    di
    dec b
    db $F4
    ld c, e
    ld a, e
    ldh a, [rTMA]
    add d
    ld c, b
    dec b
    rlca
    pop af
    ld a, e
    sbc e
    ld a, [c]
    add [hl]
    di
    ld de, $4CF4
    inc e
    adc e
    rrca
    ccf
    ld bc, $3C02
    ld l, [hl]
    ccf
    ld bc, $5B02

jr_02B_7AC4:
    ld a, e
    ldh a, [rTMA]
    add d
    ld c, b
    rrca
    rlca
    pop af

jr_02B_7ACC:
    inc a
    inc c
    rrca
    ccf
    ld bc, $4B2B
    ld bc, $3C02
    inc c
    dec c
    adc e
    nop
    ld b, b
    nop
    dec b
    ret nz

    ld b, c
    ld [$018D], sp
    inc bc
    and l
    and [hl]
    and [hl]
    sub c
    ld bc, $A503
    and [hl]
    and [hl]
    add l
    ld bc, $0801
    sub h
    ld bc, $0882
    adc h
    ld bc, $A482
    inc bc
    and l
    and [hl]
    and c
    adc a
    ld bc, $A482
    inc bc
    and l
    and [hl]
    and c
    add h
    ld bc, $0801
    adc b
    ld bc, $0087
    add l
    ld bc, $0882
    add [hl]
    ld bc, $A503
    and [hl]
    and [hl]
    add e
    ld bc, $A405
    and e
    jr nz, jr_02B_7AC4

    and b
    adc a
    ld bc, $A405
    and e
    jr nz, jr_02B_7ACC

    and b
    add h
    ld bc, $0801
    add l
    ld bc, $0803
    ld bc, $8701
    nop
    add l
    ld bc, $0882
    add l
    ld bc, $A482
    ld [$A6A5], sp
    and a
    ld bc, $A308
    and d
    and c
    add d
    and b
    adc a
    ld bc, $A303
    and d
    and c
    add d
    and b
    add h
    ld bc, $0801
    add e
    ld bc, $0884
    add d
    ld bc, $0083
    inc bc
    ld b, h
    nop
    nop
    add l
    ld bc, $0882
    add l
    ld bc, $A408
    and e
    jr nz, @-$57

    and b
    ld bc, $0108
    add d
    and d
    inc bc
    and c
    ld bc, $8208
    ld bc, $0086
    add h
    ld bc, $0803
    ld bc, $8201
    and d
    inc bc
    and c
    ld bc, $8308
    ld bc, $0801
    add l
    ld bc, $0801
    add h
    ld bc, $0085
    add l
    ld bc, $0882
    add e
    nop
    add d
    ld bc, $A303
    and d
    and c
    add d
    and b
    adc c
    ld [$0101], sp
    add [hl]
    nop
    add e
    ld bc, $088A
    add d
    ld bc, $0801
    add l
    ld bc, $0801
    add l
    ld bc, $0084
    add l
    ld bc, $0882
    add e
    nop
    add e
    ld bc, $A282
    inc b
    and c
    ld bc, $0801
    add l
    ld bc, $0803
    ld bc, $8301
    nop
    inc bc
    ld b, d
    nop
    nop
    add h
    ld bc, $0801
    add [hl]
    ld bc, $0885
    add e
    ld bc, $0803
    ld bc, $8B08
    ld bc, $0803
    ld bc, $8201
    ld [$0083], sp
    add d
    ld bc, $0801
    add l
    ld bc, $0801
    add l
    ld bc, $0803
    ld bc, $8601
    nop
    add h
    ld bc, $0801
    adc l
    ld bc, $0891
    rlca
    ld bc, $0808
    nop
    ld b, b
    nop
    ld bc, $0889
    add h
    ld bc, $0801
    adc h
    ld bc, $0801
    add e
    ld bc, $0086
    add l
    ld bc, $0803
    ld bc, $8B08
    ld bc, $0803
    ld bc, $8201
    ld [$0083], sp
    add d
    ld bc, $0801
    add l
    ld bc, $0801
    add l
    ld bc, $0801
    add a
    ld bc, $0801
    add h
    ld bc, $0801
    add e
    ld bc, $0087
    ld [bc], a
    ld bc, $8208
    ld bc, $0801
    add [hl]
    ld bc, $0083
    add e
    ld bc, $0886
    add e
    nop
    add d
    ld bc, $0801
    adc d
    ld bc, $0891
    ld bc, $8401
    nop
    inc bc
    ld b, e
    nop
    nop
    add [hl]
    ld [$0184], sp
    add l
    nop
    add e
    ld bc, $0803
    ld bc, $8201
    ld [$0185], sp
    ld bc, $8B08
    ld bc, $0801
    add e
    and l
    add h
    and [hl]
    ld [bc], a
    ld [$83A5], sp
    and a
    ld bc, $8308
    ld bc, $0087
    ld [bc], a
    ld bc, $8208
    ld bc, $0801
    add l
    ld bc, $0085
    add [hl]
    ld bc, $0882
    add l
    ld bc, $0801
    adc e
    ld bc, $0801
    add h

jr_02B_7C99:
    and l
    add l
    and [hl]
    add d
    and a
    ld [bc], a
    and b
    ld [$0184], sp
    add [hl]
    nop
    add h
    ld bc, $0801
    add l
    ld bc, $0085
    add [hl]
    ld bc, $0882
    add d
    and l
    ld b, $01
    and a
    and a
    ld [$0101], sp
    add a
    nop
    add d
    ld bc, $0802
    and h
    add l
    and l
    add d
    and [hl]
    add e
    and a
    ld [bc], a
    and b
    ld [$018E], sp
    ld b, $08
    ld bc, $A5A4
    and [hl]
    ld bc, $0082
    ld bc, $8345
    nop
    add l
    ld bc, $0882
    dec b
    and l
    and h
    and l
    and [hl]
    and a
    add e
    ld bc, $0087
    add d
    ld bc, $0802
    and h
    add d
    and e
    add d
    and d
    inc bc
    jr nz, jr_02B_7C99

    and [hl]
    add d
    and a
    add d
    and b
    dec b
    ld [$A401], sp
    and l
    and [hl]
    adc d
    ld bc, $0806
    ld bc, $20A3
    and a
    ld bc, $0087
    add h
    ld bc, $0882
    inc b
    ld bc, $20A3
    and a
    add h
    ld bc, $0085
    ld [bc], a
    ld b, c
    nop
    add d
    ld bc, $0801
    add e
    and e
    add d
    and d
    add a
    and c
    dec b
    ld [$A301], sp
    jr nz, @-$57

    adc d
    ld bc, $0806
    ld bc, $A1A2
    and b
    ld bc, $0087
    add h
    ld bc, $0882
    dec b
    and e
    and d
    and c
    and b
    and c
    add e
    ld bc, $0087
    add d
    ld bc, $0801
    add e
    and e
    add h
    and d
    add l
    and c
    dec b
    ld [$A201], sp
    and c
    and b
    adc d
    ld bc, $0801
    add [hl]
    ld bc, $0086
    add h
    ld bc, $0882
    add d
    and e
    inc b
    ld bc, $A1A1
    ld [$018B], sp
    ld bc, $8308
    and e
    add l
    and d
    add h
    and c
    ld bc, $8E08
    ld bc, $0801
    sub b
    ld bc, $41C0
    ld [$8400], sp
    ld e, e
    add h
    rst $38
    add hl, de
    ld [hl+], a
    inc hl
    ld h, $25
    inc hl
    ld [hl+], a
    dec h
    inc h
    jr z, jr_02B_7DB3

    ld a, [hl+]
    dec hl
    ld a, [de]
    cp $1B
    inc e
    cp $1A
    inc e
    dec de
    add hl, hl
    jr z, @+$2D

    ld a, [hl+]
    ld [de], a
    add h
    cp $07
    ld [de], a
    cp $FE
    rrca
    db $10
    ld de, $8212
    inc de
    add d
    inc d
    dec b
    db $10
    rrca
    ld [de], a
    ld de, $825B
    ld c, $03
    rrca
    inc c
    inc c

jr_02B_7DB3:
    add d
    rst $38
    inc b
    ld c, $5B
    rrca
    ld c, $89
    cp $05
    daa
    cp $FE
    daa
    ld h, $82
    cp $10
    inc l
    dec l
    ld d, $17
    dec e
    ld e, $1F
    ld l, $1E
    dec e
    ld l, $1F
    dec l
    inc l
    rla
    ld d, $82
    cp $01
    ld [de], a
    add h
    cp $05
    ld [de], a
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    add h
    cp $07
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec c
    rst $38
    dec c
    add [hl]
    rst $38
    ld b, $0D
    rst $38
    dec c

jr_02B_7DF1:
    jr nz, jr_02B_7DF1

    ld hl, $FE82
    dec c

jr_02B_7DF7:
    jr nz, jr_02B_7DF7

    ld hl, $20FE
    cp $21

jr_02B_7DFE:
    jr nz, jr_02B_7DFE

    ld hl, $18FE
    add hl, de
    add d
    cp $02
    jr nc, @+$31

    add d
    cp $02
    cpl
    jr nc, @-$7C

    cp $02
    add hl, de
    jr @-$7C

    cp $84

jr_02B_7E16:
    ld e, e
    add h
    rrca
    inc b
    ld de, $0F12
    db $10
    add d
    inc d
    add d
    inc de
    ld [$1112], sp
    db $10
    rrca
    ld c, $0F
    ld e, e
    ld c, $82
    rst $38
    add d
    inc c
    inc bc
    rrca
    ld c, $0E
    add h
    ld e, e
    dec b
    ld sp, $5B5B
    ld [hl-], a
    inc sp
    add d
    ld e, e
    ld bc, $8334
    ld e, e
    ld [bc], a
    dec a
    inc sp
    add d
    ld e, e
    ld [bc], a
    ld a, $37
    sub h
    cp $0C
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld b, b
    ld b, c
    ld b, h
    ld b, l
    ld b, d
    ld b, e
    ld b, [hl]
    ld b, a
    add h
    dec d
    inc b
    nop
    ld bc, $0302
    add h
    dec b
    add e
    ld e, e
    dec b
    dec sp
    ld e, e
    ld e, e
    inc sp
    inc a
    add d
    ld e, e
    ld [bc], a
    scf
    ld e, e
    and b
    cp $0C
    ld c, b
    ld c, c
    ld c, h
    ld c, l
    ld c, d
    ld c, e
    ld c, [hl]
    ccf
    cp $04
    cp $06
    add d
    dec b
    add d
    rlca
    inc b
    inc b
    cp $06
    cp $83
    ld e, e
    dec b
    dec [hl]
    ld e, e
    ld e, e
    ld [hl], $37
    add d
    ld e, e
    ld [bc], a
    inc [hl]
    jr c, jr_02B_7E16

    ld e, e
    ld [bc], a
    add hl, sp
    ld a, [hl-]
    xor b
    cp $02
    ld [$8609], sp
    cp $83
    ld e, e
    dec b
    ld c, a
    ld e, e
    ld e, e
    scf
    ld d, b
    add e
    ld e, e
    dec b
    dec a
    ld e, e
    ld e, e
    inc sp

jr_02B_7EAE:
    ld a, $82
    ld e, e
    ld [bc], a
    scf
    ld e, e
    jp nz, $FE2C

    add d
    ldh [$82], a
    pop hl
    add d
    ldh a, [$82]
    pop af
    inc c
    di
    ld a, [c]
    db $E4
    db $F4
    db $E3
    ld [c], a
    db $E4
    db $F4
    ld c, h
    ld c, l
    ld e, h
    ld e, l
    sub b
    cp $08
    db $E3
    ld [c], a
    db $E4
    db $F4
    di
    ld a, [c]

jr_02B_7ED5:
    db $E4
    db $F4
    add h
    cp $8C
    ld e, e
    add h
    cp $84
    ld l, c
    add h
    ld l, b
    add d
    dec c
    ld [bc], a
    jr z, @+$0F

    add h
    dec l
    add l
    dec c
    inc b
    ld l, b
    dec c
    dec c
    ld l, b
    add a
    dec l
    ld bc, $8408
    ld l, b
    inc b
    jr z, jr_02B_7F60

    ld l, b
    add hl, bc
    add h
    ld [$2802], sp
    ld [$2882], sp
    inc b
    add hl, hl
    jr z, jr_02B_7F2D

    ld l, c
    add l
    add hl, bc
    add d
    ld l, b
    ld [bc], a
    add hl, hl
    ld l, c
    add d
    add hl, hl
    adc c
    ld l, b
    inc bc
    ld [$6868], sp
    add d
    jr z, @-$7C

    ld l, b
    adc b
    dec c
    adc b
    dec l
    add d
    ld l, b
    ld bc, $8548
    ld l, b
    add d
    ld [$4882], sp
    add h
    ld l, b
    add d
    jr z, jr_02B_7EAE

    ld l, b

jr_02B_7F2D:
    inc bc
    add hl, bc
    ld l, b
    add hl, bc
    add [hl]
    ld l, b
    ld b, $29
    ld l, b
    add hl, hl
    dec c
    ld l, b
    ld [$6882], sp
    dec bc
    dec c
    ld l, b
    ld [$2D68], sp
    ld l, b
    jr z, jr_02B_7F72

    ld l, b
    jr z, @+$6A

    add d
    ld [$6882], sp
    add d
    ld [$6882], sp
    add d
    jr z, jr_02B_7ED5

    ld l, b
    add d
    jr z, @-$7C

    ld l, b
    add l
    ld l, c
    inc bc
    ld c, c
    add hl, hl
    add hl, bc
    add d
    ld c, b

jr_02B_7F60:
    dec b
    ld c, c
    ld c, b
    ld c, b
    ld l, b
    ld c, b
    add h
    ld l, b
    dec b
    ld l, c
    ld c, c
    ld c, c
    ld l, c
    ld c, c
    add d
    ld l, b
    add d
    ld c, c

jr_02B_7F72:
    add a
    ld l, c
    dec b
    inc c
    ld l, c
    ld l, c
    inc l
    inc c
    add d
    ld l, c
    ld bc, $830C
    ld l, c
    add d
    inc c
    add d
    ld l, c
    add d
    inc c
    sub h
    ld l, b
    adc h
    add hl, bc
    inc b
    ld l, c
    ld c, c
    add hl, hl
    add hl, bc
    add l
    ld a, [bc]
    inc bc
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    add e
    ld l, c
    inc bc
    inc c
    ld l, c
    ld l, c
    add d
    inc c
    add d
    ld l, c
    ld [bc], a
    inc c
    ld l, c
    and b
    ld l, b
    adc b
    add hl, bc
    inc c
    ld l, b
    ld [$0868], sp
    ld a, [bc]
    ld a, [hl+]
    dec bc
    dec hl
    jr z, @+$6A

    jr z, @+$6A

    add e
    ld l, c
    inc bc
    inc c
    ld l, c
    ld l, c
    add d
    inc c
    add d
    ld l, c
    add d
    inc c
    add d
    ld l, c
    add d
    inc c
    xor b
    ld l, b
    add d
    ld [$6886], sp
    add e
    ld l, c
    inc bc
    inc c
    ld l, c
    ld l, c
    add d
    inc c
    add e
    ld l, c
    inc bc
    inc c
    ld l, c
    ld l, c
    add d
    inc c
    add d
    ld l, c
    ld [bc], a
    inc c
    ld l, c
    jp nz, Jump_02B_682C

    rlca
    inc c
    inc l
    inc c
    inc l
    inc c
    inc l
    inc c
    adc c
    inc l
    add h
    rlca
    sub b
    ld l, b
    adc b
    inc l
    add h
    ld l, b
    adc h
    ld l, c
    add h
    ld l, b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
