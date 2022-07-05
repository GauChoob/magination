; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

Call_001_4000:
    ld a, [$C188]
    cp $03
    ret nz

    xor a
    ld [$C188], a
    ld a, [$C175]
    ld h, a
    ld a, [$C174]
    ld l, a
    ld bc, $C1A4
    ld e, $1B

jr_001_4017:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec e
    jr nz, jr_001_4017

    ret


Call_001_401E:
    ld a, $01
    ld [$C188], a
    ldh a, [$8A]
    ld l, a
    ld [$C174], a
    ldh a, [$8B]
    ld h, a
    ld [$C175], a
    push hl
    ld bc, $C1A4
    ld e, $1B

jr_001_4035:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec e
    jr nz, jr_001_4035

    pop hl
    ret


    ld a, [bc]
    bit 7, a
    ret z

    ld a, [$C133]
    ld h, a
    ld a, [$C132]
    ld l, a
    ld a, $54
    cp l
    ret z

    ld a, $40
    ld [bc], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    ld a, h
    ld [$C133], a
    ld a, l
    ld [$C132], a
    ret


Call_001_4062:
    ld a, [$C133]
    ld b, a
    ld a, [$C132]
    ld c, a
    dec bc
    ld a, h
    ld [bc], a
    dec bc
    ld a, l
    ld [bc], a
    ld a, b
    ld [$C133], a
    ld a, c
    ld [$C132], a
    xor a
    inc hl
    ld [hl-], a
    ld [hl], a
    ret


    ld a, $FF
    ldh [$97], a
    ldh [$98], a
    ld de, $C154
    ld hl, $C154

jr_001_4089:
    inc hl
    ld a, [hl-]
    and a
    jr z, jr_001_40C8

    push de
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, h
    ld c, l
    ld a, [hl+]
    bit 7, a
    jr nz, jr_001_40BB

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $07BF
    pop hl
    pop de
    ldh a, [$97]
    ld b, a
    ldh a, [$98]
    sub b
    jr nc, jr_001_40C6

    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    dec de
    ld b, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl-]
    ld [de], a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl-], a
    jr jr_001_40C6

jr_001_40BB:
    res 6, a
    dec hl
    ld [hl], a
    pop hl
    pop de
    call Call_001_4062
    jr jr_001_40C8

jr_001_40C6:
    ld d, h
    ld e, l

jr_001_40C8:
    inc hl
    inc hl
    ld a, $74
    cp l
    jr nz, jr_001_4089

    call Call_001_4000
    ret


    ld b, $10
    xor a
    ld hl, $C154

jr_001_40D9:
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_001_40D9

    ld b, $10
    ld de, $C154
    ld hl, $C134

jr_001_40E6:
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    inc de
    inc de
    dec b
    jr nz, jr_001_40E6

    ld a, $34
    ld [$C132], a
    ld a, $C1
    ld [$C133], a
    ld hl, $C189
    ld de, $001B
    ld c, $31

jr_001_4101:
    set 7, [hl]
    res 6, [hl]
    add hl, de
    dec c
    jr nz, jr_001_4101

    ret


Call_001_410A:
    ldh a, [$8A]
    ld l, a
    ldh a, [$8B]
    ld h, a
    ldh a, [$8C]
    ld [hl+], a
    ldh a, [$8D]
    ld [hl+], a
    ldh a, [$8E]
    ld [hl+], a
    ldh a, [$8F]
    ld [hl+], a
    ldh a, [$90]
    ld [hl+], a
    ldh a, [$91]
    ld [hl+], a
    ldh a, [$92]
    ld [hl+], a
    ldh a, [$93]
    ld [hl+], a
    ldh a, [$94]
    ld [hl+], a
    ldh a, [$95]
    ld [hl+], a
    ret


Call_001_412F:
    ld h, b
    ld l, c
    ld a, l
    ldh [$8A], a
    ld a, h
    ldh [$8B], a
    ld a, [hl+]
    ldh [$8C], a
    ld a, [hl+]
    ldh [$8D], a
    ld a, [hl+]
    ldh [$8E], a
    ld a, [hl+]
    ldh [$8F], a
    ld a, [hl+]
    ldh [$90], a
    ld a, [hl+]
    ldh [$91], a
    ld a, [hl+]
    ldh [$92], a
    ld a, [hl+]
    ldh [$93], a
    ld a, [hl+]
    ldh [$94], a
    ld a, [hl+]
    ldh [$95], a
    xor a
    ld [$C6D2], a
    ld [$C6D3], a
    ret


    ld de, $0604
    inc bc
    add hl, bc
    db $10
    ld a, [bc]
    dec bc
    ld c, $0C
    ld [$0907], sp
    inc c
    inc bc
    inc b
    ld c, b
    ld e, $43
    ld c, b
    ld l, c
    inc [hl]
    ld [hl], b
    sub [hl]
    sub [hl]
    cp e
    ld b, e
    ld l, c
    ld b, e
    cp e
    inc a
    ld d, $48
    pop hl
    ld b, e
    ld c, b
    ld l, c
    ld c, b
    ld d, $70
    or h
    sub [hl]
    cp e
    ld c, b
    ld l, c
    jp $3CBB


    or h
    inc a
    jp nc, $36E1

    pop hl
    inc [hl]
    ld [hl], b
    or h
    inc [hl]
    cp $48
    ld [hl], $C3
    pop hl
    or h
    xor h
    jp nc, $FFE1

    pop hl
    and h
    ret nz

    or h
    and h
    cp $C8
    rst $38
    jp $FAE1


    ld a, [de]
    rst $00
    and a
    ret nz

    ld a, [$C6F2]
    cp $00
    ret nz

    ld a, $FF
    ld [$C6D7], a
    ld a, [$C6DB]
    ld [$C718], a
    ld a, [$C6DC]
    ld [$C719], a
    ld a, [$C6DD]
    ld [$C71A], a
    ld a, $D3
    ld [$C71B], a
    ld a, $0A
    ld [$C71C], a
    ret


Jump_001_41D8:
    ldh a, [$94]
    ld h, a
    ldh a, [$93]
    ld l, a
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [hl]
    cp $82
    ret nz

    ld a, [$C71A]
    and a
    ret nz

    ld a, [$C6D7]
    and a
    jp z, $41AB

    cp $FF
    jr z, jr_001_41FE

    dec a
    ld [$C6D7], a
    ret


jr_001_41FE:
    ld hl, $C6D9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $0585
    and $0F
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ld [$C6D7], a
    ret


    ld a, [$C6D8]
    and a
    ret z

    ldh a, [$AF]
    and $03
    cp $03
    ret nz

    jp Jump_001_41D8


    ld a, [$C6D8]
    and a
    ret z

    ldh a, [$AF]
    and $01
    ret nz

    jp Jump_001_41D8


Call_001_422E:
    ld a, [$C71A]
    and a
    ret nz

    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [$C6E1]
    ld e, a
    ld a, [$FF9F]
    ld h, a
    ld a, [$FF9E]
    ld l, a
    ld d, [hl]
    ld a, d
    and $C0
    cp $C0
    jr nz, jr_001_42A6

    ld a, d
    and $3F
    ld d, a
    cp e
    ret nc

    ld a, [$C6E0]
    ld h, a
    ld a, [$C6DF]
    ld l, a
    ld a, d
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call $0A45
    cp $01
    jr z, jr_001_427A

    cp $02
    jr z, jr_001_427D

    cp $03
    jr z, jr_001_4280

    cp $04
    jr z, jr_001_4283

    jr jr_001_4294

jr_001_427A:
    ld a, b
    jr jr_001_428D

jr_001_427D:
    ld a, b
    jr jr_001_4286

jr_001_4280:
    ld a, c
    jr jr_001_4286

jr_001_4283:
    ld a, c
    jr jr_001_428D

jr_001_4286:
    and a
    ret z

    bit 7, a
    jr z, jr_001_4294

    ret


jr_001_428D:
    and a
    ret z

    bit 7, a
    jr nz, jr_001_4294

    ret


jr_001_4294:
    ld a, d
    ld [$C6DE], a
    call $0A59
    ld a, $D3
    ld [$C71B], a
    ld a, $0A
    ld [$C71C], a
    ret


jr_001_42A6:
    ld a, $FF
    ld [$C6DE], a
    ret


    ld e, b
    dec bc
    ld h, e
    dec bc
    ld [hl], b
    dec bc
    adc a
    dec bc
    jp hl


    dec bc
    ld de, $200C
    inc c
    ld b, [hl]
    inc c
    ld d, e
    inc c
    ld e, c
    inc c
    ld [hl], c
    inc c
    ld a, [hl]
    inc c
    and d
    inc c
    cp d
    inc c
    ret nz

    inc c
    add $0C
    db $EC
    inc c
    db $FD
    inc c
    ld e, h
    dec c
    ld l, [hl]
    dec c
    adc e
    dec c
    and b
    dec c
    ld [c], a
    dec c
    ld b, l
    ld c, $4B
    ld c, $52
    ld c, $63
    ld c, $A1
    ld c, $B9
    ld c, $D1
    ld c, $51
    rrca
    ld e, c
    rrca
    ld h, c
    rrca
    ld l, c
    rrca
    ld [hl], c
    rrca
    rst $10
    rrca
    db $EC
    rrca
    pop bc
    rrca
    xor b
    rrca
    sub d
    rrca
    db $F4
    rrca
    ld h, b
    db $10
    ld l, b
    db $10
    ld [hl], l
    db $10
    ld a, l
    db $10
    add b
    db $10
    adc b
    db $10
    sbc l
    db $10
    and l
    db $10
    or c
    db $10
    cp c
    db $10
    pop bc
    db $10
    ld c, $11
    dec l
    ld de, $1178
    adc d
    ld de, $11B7
    dec h
    inc de
    ld [hl], $13
    sbc $11
    dec sp

jr_001_4325:
    ld [de], a
    add b
    ld [de], a
    sub c
    ld [de], a
    and d
    ld [de], a
    rst $10

jr_001_432D:
    ld [de], a
    add sp, $12
    ld sp, hl
    ld [de], a
    call nc, $F414

jr_001_4335:
    inc d
    ld sp, $4715
    dec d
    add a
    dec d
    sub e

jr_001_433D:
    dec d
    xor c
    dec d
    or d
    dec d
    call z, $DB15
    dec d
    ld sp, $4C16
    ld d, $8C
    ld d, $14
    rla
    rst $10
    ld d, $6F
    rla
    rst $00
    rla
    ld [$ED17], a
    rla
    db $FD
    rla
    ld a, [bc]
    jr @+$19

    jr @+$26

    jr jr_001_4392

    jr jr_001_43A1

    jr @+$4D

    jr jr_001_43B8

    jr @+$59

    jr @+$65

    jr @-$56

    jr @-$50

    jr jr_001_4325

    jr jr_001_432D

    jr jr_001_4335

    jr jr_001_433D

    jr jr_001_438F

    add hl, de
    add hl, sp
    add hl, de
    ld e, a
    add hl, de
    add d
    add hl, de
    and l
    add hl, de
    add sp, $19
    dec hl
    ld a, [de]
    ld b, d
    ld a, [de]
    add l
    ld a, [de]
    sub $1A
    add [hl]
    dec de
    or h

jr_001_438F:
    dec de
    rst $18
    dec de

jr_001_4392:
    ld hl, sp+$1B
    jr nz, @+$1E

    ld c, e
    inc e
    ld a, [hl]
    inc e
    xor [hl]
    inc e
    ldh [rNR32], a
    db $10
    dec e
    ld a, e

jr_001_43A1:
    dec e
    or h

jr_001_43A3:
    dec e
    ldh a, [rNR33]
    ld c, h
    ld e, $42
    dec e
    ld a, h
    ld e, $CE
    ld e, $ED
    ld e, $31
    jr nz, @+$6E

    jr nz, @+$28

    rra
    ld [hl], e
    rra

jr_001_43B8:
    jp nz, $D71F

    rra
    jr nz, jr_001_43DE

    ld a, c
    jr nz, jr_001_43A3

    jr nz, @+$43

    ld hl, $2166
    adc e
    ld hl, $21C6
    sub $21
    rst $28
    ld hl, $2201
    ld a, [de]
    ld [hl+], a
    ld e, c
    ld [hl+], a
    ld l, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    sbc c
    ld [hl+], a
    sub $22
    jr nc, jr_001_4401

jr_001_43DE:
    ld b, b
    inc hl
    ld c, a
    inc hl
    ld a, d
    inc hl
    db $F4
    inc hl
    adc c
    inc hl
    inc [hl]
    inc h
    and b
    inc h
    cp [hl]
    inc h
    ldh [rNR50], a
    rst $30
    inc h
    adc b
    dec h
    add hl, hl
    ld h, $39
    ld h, $57
    ld h, $A5
    daa
    pop bc
    daa
    db $EC
    daa
    ld a, [bc]

jr_001_4401:
    jr z, jr_001_4433

    jr z, jr_001_43A1

    add hl, hl
    jp nc, $F129

    add hl, hl
    ld [de], a
    ld a, [hl+]
    jr @+$2C

    ld d, d
    ld a, [hl+]
    ld h, [hl]
    ld a, [hl+]
    ld a, l
    ld a, [hl+]
    sbc c
    ld a, [hl+]
    cp b
    ld a, [hl+]
    rst $10
    ld a, [hl+]
    ld a, [$C9C4]
    ld [$C18E], a
    ld a, [$C9C5]
    ld [$C18F], a
    ld b, a
    ld a, [$C86A]
    ld c, a
    call $0500
    ld d, $D0
    ld a, [$C9C4]

jr_001_4433:
    ld e, a
    add hl, de
    ld a, h
    ld [$C191], a
    ld a, l
    ld [$C190], a
    ld a, $FF
    ld [$C6DE], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    ld a, [$FF04]
    and $0F
    ld b, a
    add a
    add b
    ld c, a
    ld b, $00
    ld hl, $6E40
    add hl, bc
    ld a, [hl+]
    ld b, a
    ld a, [$C883]
    add b
    ldh [$92], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, [$FF04]
    swap a
    and $0F
    ld c, a
    ld b, $00
    ld hl, $6E30
    add hl, bc
    ld b, [hl]
    ld a, [$C882]
    add b
    ldh [$91], a
    ld l, b
    ld h, $00
    add hl, de
    ld a, [$C885]
    ld d, a
    ld a, [$C884]
    ld e, a
    add hl, de
    ld a, h
    ld [$FF94], a
    ld a, l
    ld [$FF93], a
    ld a, $19
    ldh [$AB], a
    ld a, $0D
    ldh [$AC], a
    ret


    ld a, $01
    ld [$C732], a
    ld a, [$C703]
    ld d, a
    ld a, [$C702]
    ld e, a
    ld a, [$C705]
    ld h, a
    ld a, [$C704]
    ld l, a
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [de]
    ld [hl], a
    ld a, $03
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [de]
    ld [hl], a

Jump_001_44C4:
    push hl
    push de
    ld a, [$C748]
    cp $01
    jr z, jr_001_44E3

    ld a, $01
    ld [$C748], a
    ld a, [$C707]
    ld d, a
    ld a, [$C706]
    ld e, a
    call Call_001_4626
    and a
    jr z, jr_001_44E3

    pop bc
    pop bc
    ret


jr_001_44E3:
    xor a
    ld [$C748], a
    pop bc
    pop de
    ldh a, [$AD]
    dec a
    jr z, jr_001_4512

    ldh [$AD], a
    inc bc
    ld a, b
    ld [$C703], a
    ld a, c
    ld [$C702], a
    inc de
    ld a, d
    ld [$C705], a
    ld a, e
    ld [$C704], a
    ld hl, $C707
    inc [hl]
    ld a, [$C959]
    and a
    ret nz

    ldh a, [$AC]
    ld h, a
    ldh a, [$AB]
    ld l, a
    jp hl


jr_001_4512:
    ldh a, [$AE]
    ldh [$AD], a
    dec a
    ld l, a
    ld a, [$C707]
    sub l
    ld [$C707], a
    ld a, [$C86A]
    sub l
    ld l, a
    ld h, $00
    push hl
    add hl, bc
    ld a, h
    ld [$C703], a
    ld a, l
    ld [$C702], a
    pop hl
    add hl, de
    ld a, h
    ld [$C705], a
    ld a, l
    ld [$C704], a
    ld hl, $C706
    inc [hl]
    ld a, [$C708]
    dec a
    jr z, jr_001_4548

    ld [$C708], a
    ret


jr_001_4548:
    ld hl, $FFA8
    res 7, [hl]
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    xor a
    ld [$C732], a
    ret


    ld a, $01
    ld [$C732], a
    ld a, [$C703]
    ld d, a
    ld a, [$C702]
    ld e, a
    ld a, [$C705]
    ld h, a
    ld a, [$C704]
    ld l, a
    ld a, $06
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [de]
    ld c, a
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld [hl], c
    ld a, $04
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [de]
    ld c, a
    ld a, $03
    ld [$C95A], a
    ldh [rSVBK], a
    ld [hl], c
    jp Jump_001_44C4


    ldh a, [$AD]
    ld e, a
    ld a, [$C882]
    cp e
    jr c, jr_001_45AE

    jr nz, jr_001_45A4

jr_001_45A1:
    dec l
    jr jr_001_45BA

jr_001_45A4:
    bit 2, h
    jr nz, jr_001_45A1

    ld a, d
    cpl
    inc a
    ld e, a
    jr jr_001_45B3

jr_001_45AE:
    bit 1, h
    jr nz, jr_001_45A1

    ld e, d

jr_001_45B3:
    ld a, [$C866]
    add e
    ld [$C866], a

jr_001_45BA:
    ldh a, [$AE]
    ld e, a
    ld a, [$C883]
    cp e
    jr c, jr_001_45D2

    jr nz, jr_001_45C8

jr_001_45C5:
    dec l
    jr jr_001_45DE

jr_001_45C8:
    bit 6, h
    jr nz, jr_001_45C5

    ld a, d
    cpl
    inc a
    ld e, a
    jr jr_001_45D7

jr_001_45D2:
    bit 5, h
    jr nz, jr_001_45C5

    ld e, d

jr_001_45D7:
    ld a, [$C867]
    add e
    ld [$C867], a

jr_001_45DE:
    ld a, l
    and a
    ret nz

    inc bc
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    ld hl, $C131
    xor a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl], a
    cpl
    bit 0, e
    jr z, jr_001_4603

    ld [hl], a

jr_001_4603:
    inc hl
    bit 1, e
    jr z, jr_001_4609

    ld [hl], a

jr_001_4609:
    inc hl
    bit 2, e
    jr z, jr_001_460F

    ld [hl], a

jr_001_460F:
    inc hl
    bit 3, e
    jr z, jr_001_4615

    ld [hl], a

jr_001_4615:
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ret


Call_001_4626:
    ld a, [$C959]
    and a
    jr z, jr_001_4680

    ld a, [$C882]
    ld b, a
    ld a, d
    sub b
    ld b, a
    and $F0
    ld a, $00
    jr nz, jr_001_4680

    ld a, [$C883]
    ld c, a
    ld a, e
    sub c
    ld c, a
    and $F0
    ld a, $00
    jr nz, jr_001_4680

    push bc
    ld a, h
    ld [$C8E9], a
    ld a, l
    ld [$C8E8], a
    ld a, d
    ld [$C8EB], a
    ld a, e
    ld [$C8EA], a
    ld hl, $4ADB
    ld e, $07
    call $07A9
    pop bc
    ld a, b
    and a
    jr z, jr_001_4668

    cp $0A
    jr nz, jr_001_466E

jr_001_4668:
    ld a, [$C8B5]
    and a
    jr nz, jr_001_467E

jr_001_466E:
    ld a, c
    and a
    jr z, jr_001_4678

    cp $09
    ld a, $00
    jr nz, jr_001_4680

jr_001_4678:
    ld a, [$C88D]
    and a
    jr z, jr_001_4680

jr_001_467E:
    ld a, $01

jr_001_4680:
    ret


    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld hl, $A018
    ld bc, $0313
    ld e, $00
    call $07E8
    ld hl, $A01B
    ld bc, $000A
    ld a, $FF
    ld e, a
    call $07E8
    xor a
    ld [$0000], a
    ret


    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld hl, $A026
    ld bc, $0305
    ld e, $00
    call $07E8
    xor a
    ld [$0000], a
    ret


Call_001_46C5:
    ld a, $80
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_001_46D7:
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ret


    xor a
    ld [$FF4F], a
    ld hl, $9C25
    call Call_001_46C5
    ld hl, $9C65
    call Call_001_46C5
    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


    xor a
    ld [$FF4F], a
    ld hl, $9C05
    call Call_001_46C5
    ld hl, $9C45
    call Call_001_46C5
    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


    xor a
    ld [$FF4F], a
    ld hl, $9C85
    call Call_001_46C5
    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


    xor a
    ld [$FF4F], a
    ld bc, $001B
    ld hl, $9C00
    ld a, $80
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $01
    ld [$FF4F], a
    ld bc, $001B
    ld hl, $9C00
    ld a, $0F
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


    ret


    xor a
    ld [$FF4F], a
    ld hl, $9C93
    ld a, [$C6F6]
    bit 7, a
    jr nz, jr_001_47D5

    and $7F
    dec a
    jr nz, jr_001_47C4

    ld a, $94

jr_001_47C4:
    ld [$C6F6], a
    ld a, $80
    ld [hl], a
    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


jr_001_47D5:
    and $7F
    dec a
    jr nz, jr_001_47E1

    ld a, $14
    ld [$C6F6], a
    jr jr_001_47E6

jr_001_47E1:
    set 7, a
    ld [$C6F6], a

jr_001_47E6:
    ld a, $81
    ld [hl], a
    ld a, $01
    ld [$FF4F], a
    ld a, $EF
    ld [hl], a
    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


    xor a
    ld [$FF4F], a
    ld hl, $249A
    ld a, [$C6F0]
    ld c, a
    xor a
    ld b, a
    add hl, bc
    ld a, [hl]
    ld bc, $001B
    ld hl, $9C00
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    add hl, bc
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    add hl, bc
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    add hl, bc
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    add hl, bc
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    ld a, [$C6F0]
    inc a
    and $01
    ld [$C6F0], a
    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


    xor a
    ld [$FF4F], a
    ld hl, $9C45
    ld bc, $9C25
    call Call_001_46D7
    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


    xor a
    ld [$FF4F], a
    ld hl, $9C65
    ld bc, $9C45
    call Call_001_46D7
    ld hl, $9C85
    ld bc, $9C65
    call Call_001_46D7
    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


    xor a
    ld [$FF4F], a
    ld hl, $9C45
    ld bc, $9C25
    call Call_001_46D7
    ld hl, $9C65
    ld bc, $9C45
    call Call_001_46D7
    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


    ld a, [$C6F4]
    ldh [rWX], a
    ld a, [$C6F5]
    ldh [rWY], a
    ldh [rLYC], a
    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


    adc a
    adc a
    adc e
    add l
    ld a, a
    ld a, d
    ld [hl], l
    ld [hl], b
    ld l, h
    ld l, b
    ld a, [$C6F2]
    cp $00
    jp z, Jump_001_4958

    cp $01
    ret z

    ld a, $01
    ld [$C6F2], a
    ld a, $09
    ld [$FFAD], a
    ld a, $01
    ld [$C6EA], a
    ld a, $05
    ld [$C6E8], a
    ld a, $47
    ld [$C6E9], a
    ld a, $04
    ld [$FFAB], a
    ld a, $49
    ld [$FFAC], a
    ret


    ld a, [$FFAD]
    and a
    jp z, Jump_001_492A

    ld c, a
    dec a
    ld b, $00
    ld [$FFAD], a
    ld hl, $48CB
    add hl, bc
    ld a, [hl]
    ld [$C6F5], a
    ld a, $01
    ld [$C6EA], a
    ld a, $B4
    ld [$C6E8], a
    ld a, $48
    ld [$C6E9], a
    ret


Jump_001_492A:
    ld a, $90
    ld [$C6F5], a
    ld a, $01
    ld [$C6EA], a
    ld a, $B4
    ld [$C6E8], a
    ld a, $48
    ld [$C6E9], a
    ld a, $25
    ld [$FFA0], a
    ld a, $2D
    ld [$FFA1], a
    ld a, $53
    ld [$FFAB], a
    ld a, $49
    ld [$FFAC], a
    ret


    ld a, $00
    ld [$C6F2], a

Jump_001_4958:
    ld hl, $FFA8
    res 7, [hl]
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    ld a, [$C6F2]
    cp $02
    jp z, Jump_001_4A24

    cp $01
    ret z

    ld a, $01
    ld [$C6F2], a
    xor a
    ld [$FFAD], a
    ld a, $07
    ld [$C6F4], a
    ld a, $8F
    ldh [rLYC], a
    ld a, $01
    ld [$C6EA], a
    ld a, $50
    ld [$C6E8], a
    ld a, $47
    ld [$C6E9], a
    ld a, $A9
    ld [$FFAB], a
    ld a, $49
    ld [$FFAC], a
    ld a, $28
    ld [$FFA0], a
    ld a, $2D
    ld [$FFA1], a
    ret


    ld a, $01
    ld [$C6EA], a
    ld a, $05
    ld [$C6E8], a
    ld a, $47
    ld [$C6E9], a
    ld a, $C3
    ld [$FFAB], a
    ld a, $49
    ld [$FFAC], a
    ret


    ld a, $20
    ld [$C6E8], a
    ld a, $47
    ld [$C6E9], a
    ld a, $D8
    ld [$FFAB], a
    ld a, $49
    ld [$FFAC], a
    ret


    ld a, $3B
    ld [$C6E8], a
    ld a, $47
    ld [$C6E9], a
    ld a, $ED
    ld [$FFAB], a
    ld a, $49
    ld [$FFAC], a
    ret


    ld a, [$FFAD]
    cp $0A
    jp z, Jump_001_4A14

    ld e, a
    inc a
    ld d, $00
    ld [$FFAD], a
    ld hl, $48CB
    add hl, de
    ld a, [hl]
    ld [$C6F5], a
    ld a, $01
    ld [$C6EA], a
    ld a, $B4
    ld [$C6E8], a
    ld a, $48
    ld [$C6E9], a
    ret


Jump_001_4A14:
    ld hl, $FFA8
    res 7, [hl]
    ld a, $5D
    ld [$FFAB], a
    ld a, $27
    ld [$FFAC], a
    ret


Jump_001_4A24:
    ld hl, $FFA8
    res 7, [hl]
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


Call_001_4A34:
    ld a, [$C9CB]
    cp $00
    ret nz

    ld a, [$C71A]
    and a
    ret nz

    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [$C6D2]
    ld c, a
    ld a, [$C6D0]
    add c
    ld c, a
    ld a, [$C6D3]
    ld b, a
    ld a, [$C6D1]
    add b
    ld b, a
    or c
    ret z

    ld a, [$C6E5]
    ld e, a
    ld d, [hl]
    ld a, d
    and $20
    cp $20
    jr nz, jr_001_4ABF

    ld a, d
    cp $29
    jr nc, jr_001_4ABF

    ld a, d
    and $1F
    ld d, a
    cp e
    ret nc

    ld a, [$C6E4]
    ld h, a
    ld a, [$C6E3]
    ld l, a
    ld a, d
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call $0A45
    cp $01
    jr z, jr_001_4A97

    cp $02
    jr z, jr_001_4A9A

    cp $03
    jr z, jr_001_4A9D

    cp $04
    jr z, jr_001_4AA0

    jr jr_001_4AB1

jr_001_4A97:
    ld a, b
    jr jr_001_4AAA

jr_001_4A9A:
    ld a, b
    jr jr_001_4AA3

jr_001_4A9D:
    ld a, c
    jr jr_001_4AA3

jr_001_4AA0:
    ld a, c
    jr jr_001_4AAA

jr_001_4AA3:
    and a
    ret z

    bit 7, a
    jr z, jr_001_4AB1

    ret


jr_001_4AAA:
    and a
    ret z

    bit 7, a
    jr nz, jr_001_4AB1

    ret


jr_001_4AB1:
    call $0A8A
    ld a, $D3
    ld [$C71B], a
    ld a, $0A
    ld [$C71C], a
    ret


jr_001_4ABF:
    ret


Call_001_4AC0:
    ld a, [$C734]
    cp $01
    ret z

    ld a, $01
    ld [$C735], a
    ld a, [$C71A]
    and a
    ret nz

    ld a, [$C9BC]
    and a
    ret z

    ld e, a
    ld a, [$C9C3]
    add $C0
    cp e
    ret nc

    add a
    add a
    ld e, a
    ld d, $00
    ld hl, $C9BD
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    inc hl
    call $0A59
    ld a, $D3
    ld [$C71B], a
    ld a, $0A
    ld [$C71C], a
    ret


Call_001_4AF8:
    call Call_001_412F
    call $2B96
    call $0AA7
    call $2B78
    call $2B96
    call $0AA7
    call $2B78
    call Call_001_4B43
    ld hl, $42E8
    ld e, $05
    call $07A9
    call Call_001_410A
    ret


Call_001_4B1C:
    call Call_001_412F
    call $2B96
    call $0AA7
    call $2B78
    call $2B96
    call $0AA7
    call $2B78
    call Call_001_4B43
    ld hl, $42E8
    ld e, $05
    call $07A9
    call Call_001_4B62
    call Call_001_410A
    ret


Call_001_4B43:
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ldh a, [$8C]
    ld e, a
    bit 5, e
    jr z, jr_001_4B5C

    ld a, [$FF94]
    ld h, a
    ld a, [$FF93]
    ld l, a
    ld a, $00
    ld [hl], a

jr_001_4B5C:
    ld a, e
    res 5, a
    ldh [$8C], a
    ret


Call_001_4B62:
    ldh a, [$B2]
    bit 1, a
    ret z

    ld a, [$FF94]
    ld h, a
    ld a, [$FF93]
    ld l, a
    ld a, [hl]
    cp $00
    ret nz

    ld a, $08
    ld [hl], a
    ldh a, [$8C]
    set 5, a
    ldh [$8C], a
    ret


Call_001_4B7D:
    ld a, [$C6D2]
    ld e, a
    bit 7, a
    ldh a, [$96]
    jr z, jr_001_4B8F

    sub $54
    bit 7, a
    jr nz, jr_001_4B95

    jr jr_001_4B9C

jr_001_4B8F:
    sub $5C
    bit 7, a
    jr nz, jr_001_4B9C

jr_001_4B95:
    ld a, [$C866]
    add e
    ld [$C866], a

jr_001_4B9C:
    ld a, [$C6D3]
    ld e, a
    bit 7, a
    ldh a, [$97]
    jr z, jr_001_4BAD

    sub $58
    bit 7, a
    jr nz, jr_001_4BB2

    ret


jr_001_4BAD:
    sub $60
    bit 7, a
    ret nz

jr_001_4BB2:
    ld a, [$C867]
    add e
    ld [$C867], a
    ret


Jump_001_4BBA:
    ld a, $19
    ld [$C944], a
    ld a, b
    ld [$C8EB], a
    ld a, c
    ld [$C8EA], a
    ld a, h
    ld [$C8E9], a
    ld a, l
    ld [$C8E8], a
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, $00
    ld [hl], a
    ld a, $03
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, $FC
    ld [hl], a
    ld hl, $4B0F
    ld e, $07
    call $07A9
    jp Jump_001_6354


Jump_001_4BEE:
    ld a, c
    ld [$C9BF], a
    ld a, b
    ld [$C9C0], a
    ld a, h
    ld [$C9C2], a
    ld a, l
    ld [$C9C1], a
    ld a, e
    ld [$C9C3], a
    call Call_001_4AC0
    jp Jump_001_634D


Call_001_4C08:
Jump_001_4C08:
    call Call_001_4D4C
    ld a, [$C9CD]
    bit 0, a
    ret z

    pop af
    ldh a, [$B1]
    set 2, a
    ldh [$B1], a
    ld a, [hl]
    ld e, a
    cp $0B
    jr nz, jr_001_4C33

    ld a, [$C9CF]
    sub $02
    jp c, Jump_001_634D

    ld a, $B3
    ld [$FFA9], a
    ld a, $61
    ld [$FFAA], a
    jp Jump_001_4BBA


jr_001_4C33:
    cp $09
    jr nz, jr_001_4C4C

    ld a, [$C9CF]
    sub $01
    jp c, Jump_001_634D

    ld a, $67
    ld [$FFA9], a
    ld a, $61
    ld [$FFAA], a
    jp Jump_001_6354


jr_001_4C4C:
    and $E0
    jp z, Jump_001_634D

    bit 7, a
    jp nz, Jump_001_634D

    jp Jump_001_4BEE


Call_001_4C59:
Jump_001_4C59:
    call Call_001_4D6A
    ld a, [$C9CD]
    bit 0, a
    ret z

    pop af
    ldh a, [$B1]
    set 2, a
    ldh [$B1], a
    ld a, [hl]
    ld e, a
    cp $0B
    jr nz, jr_001_4C84

    ld a, [$C9CF]
    sub $02
    jp c, Jump_001_634D

    ld a, $D9
    ld [$FFA9], a
    ld a, $61
    ld [$FFAA], a
    jp Jump_001_4BBA


jr_001_4C84:
    cp $09
    jr nz, jr_001_4C9D

    ld a, [$C9CF]
    sub $01
    jp c, Jump_001_634D

    ld a, $F5
    ld [$FFA9], a
    ld a, $60
    ld [$FFAA], a
    jp Jump_001_6354


jr_001_4C9D:
    and $E0
    jp z, Jump_001_634D

    bit 7, a
    jp nz, Jump_001_634D

    jp Jump_001_4BEE


Call_001_4CAA:
Jump_001_4CAA:
    call Call_001_4D85
    ld a, [$C9CD]
    bit 0, a
    ret z

    pop af
    ldh a, [$B1]
    set 2, a
    ldh [$B1], a
    ld a, [hl]
    ld e, a
    cp $0B
    jr nz, jr_001_4CD5

    ld a, [$C9CF]
    sub $02
    jp c, Jump_001_634D

    ld a, $FF
    ld [$FFA9], a
    ld a, $61
    ld [$FFAA], a
    jp Jump_001_4BBA


jr_001_4CD5:
    cp $09
    jr nz, jr_001_4CEE

    ld a, [$C9CF]
    sub $01
    jp c, Jump_001_634D

    ld a, $1B
    ld [$FFA9], a
    ld a, $61
    ld [$FFAA], a
    jp Jump_001_6354


jr_001_4CEE:
    and $E0
    jp z, Jump_001_634D

    bit 7, a
    jp nz, Jump_001_634D

    jp Jump_001_4BEE


Call_001_4CFB:
Jump_001_4CFB:
    call Call_001_4DA0
    ld a, [$C9CD]
    bit 0, a
    ret z

    pop af
    ldh a, [$B1]
    set 2, a
    ldh [$B1], a
    ld a, [hl]
    ld e, a
    cp $0B
    jr nz, jr_001_4D26

    ld a, [$C9CF]
    sub $02
    jp c, Jump_001_634D

    ld a, $8D
    ld [$FFA9], a
    ld a, $61
    ld [$FFAA], a
    jp Jump_001_4BBA


jr_001_4D26:
    cp $09
    jr nz, jr_001_4D3F

    ld a, [$C9CF]
    sub $01
    jp c, Jump_001_634D

    ld a, $41
    ld [$FFA9], a
    ld a, $61
    ld [$FFAA], a
    jp Jump_001_6354


jr_001_4D3F:
    and $E0
    jp z, Jump_001_634D

    bit 7, a
    jp nz, Jump_001_634D

    jp Jump_001_4BEE


Call_001_4D4C:
    ldh a, [$9D]
    ld b, a
    ldh a, [$9C]
    inc a
    ld c, a
    ld a, [$C86A]
    ld e, a
    ld d, $00
    ld a, [$FF9F]
    ld h, a
    ld a, [$FF9E]
    ld l, a
    add hl, de
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ret


Call_001_4D6A:
    ldh a, [$9D]
    dec a
    ld b, a
    ldh a, [$9C]
    ld c, a
    ld de, $FFFF
    ld a, [$FF9F]
    ld h, a
    ld a, [$FF9E]
    ld l, a
    add hl, de
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ret


Call_001_4D85:
    ldh a, [$9D]
    inc a
    ld b, a
    ldh a, [$9C]
    ld c, a
    ld de, $0001
    ld a, [$FF9F]
    ld h, a
    ld a, [$FF9E]
    ld l, a
    add hl, de
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ret


Call_001_4DA0:
    ldh a, [$9D]
    ld b, a
    ldh a, [$9C]
    dec a
    ld c, a
    ld a, [$C86A]
    cpl
    inc a
    ld e, a
    ld d, $FF
    ld a, [$FF9F]
    ld h, a
    ld a, [$FF9E]
    ld l, a
    add hl, de
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ret


Call_001_4DC0:
    ldh a, [$91]
    ld b, a
    ldh a, [$92]
    inc a
    ld c, a
    ld a, [$C86A]
    ld e, a
    ld d, $00
    ld a, [$FF94]
    ld h, a
    ld a, [$FF93]
    ld l, a
    add hl, de
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ret


Call_001_4DDE:
    ldh a, [$91]
    dec a
    ld b, a
    ldh a, [$92]
    ld c, a
    ld de, $FFFF
    ld a, [$FF94]
    ld h, a
    ld a, [$FF93]
    ld l, a
    add hl, de
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ret


Call_001_4DF9:
    ldh a, [$91]
    inc a
    ld b, a
    ldh a, [$92]
    ld c, a
    ld de, $0001
    ld a, [$FF94]
    ld h, a
    ld a, [$FF93]
    ld l, a
    add hl, de
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ret


Call_001_4E14:
    ldh a, [$91]
    ld b, a
    ldh a, [$92]
    dec a
    ld c, a
    ld a, [$C86A]
    cpl
    inc a
    ld e, a
    ld d, $FF
    ld a, [$FF94]
    ld h, a
    ld a, [$FF93]
    ld l, a
    add hl, de
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ret


Jump_001_4E34:
    ld a, $0B
    ld [$C944], a
    pop af
    jp Jump_001_634D


Jump_001_4E3D:
    ld a, $17
    ld [$C944], a
    push bc
    ld a, d
    ld [$C8EB], a
    ld a, e
    ld [$C8EA], a
    ld a, d
    ld [$C9D2], a
    ld a, e
    ld [$C9D3], a
    ld a, h
    ld [$C8E9], a
    ld a, l
    ld [$C8E8], a
    ld a, h
    ld [$C9D5], a
    ld a, l
    ld [$C9D4], a
    ld a, $09
    ld [hl], a
    ld a, $03
    ld [$C95A], a
    ldh [rSVBK], a
    ld [hl], c
    ld hl, $4B0F
    ld e, $07
    call $07A9
    pop bc
    pop de
    pop hl
    ld a, d
    ld [$C8EB], a
    ld a, e
    ld [$C8EA], a
    ld a, h
    ld [$C8E9], a
    ld a, l
    ld [$C8E8], a
    ld a, h
    ld [$C9D1], a
    ld a, l
    ld [$C9D0], a
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, $81
    ld [hl], a
    ld a, $03
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, $FD
    ld [hl], a
    ld hl, $4B0F
    ld e, $07
    call $07A9
    ld hl, $FFB1
    set 3, [hl]
    jp Jump_001_634D


    call Call_001_6393
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_4B7D
    ld a, $34
    ldh [$8D], a
    ld a, $63
    ldh [$8E], a
    ld a, $03
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [$FF9F]
    ld h, a
    ld a, [$FF9E]
    ld l, a
    ld a, [$C86A]
    ld e, a
    ld d, $00
    add hl, de
    ld c, [hl]
    push hl
    add hl, de
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [hl]
    cp $81
    jp nz, Jump_001_4E34

    ldh a, [$9D]
    ld d, a
    ldh a, [$9C]
    inc a
    ld e, a
    push de
    inc e
    jp Jump_001_4E3D


    call Call_001_6393
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_4B7D
    ld a, $34
    ldh [$8D], a
    ld a, $63
    ldh [$8E], a
    ld a, $03
    ld [$C95A], a
    ldh [rSVBK], a
    ld hl, $FF93
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$FF9F]
    ld h, a
    ld a, [$FF9E]
    ld l, a
    dec hl
    ld c, [hl]
    push hl
    dec hl
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [hl]
    cp $81
    jp nz, Jump_001_4E34

    ldh a, [$9D]
    dec a
    ld d, a
    ldh a, [$9C]
    ld e, a
    push de
    dec d
    jp Jump_001_4E3D


    call Call_001_6393
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_4B7D
    ld a, $34
    ldh [$8D], a
    ld a, $63
    ldh [$8E], a
    ld a, $03
    ld [$C95A], a
    ldh [rSVBK], a
    ld hl, $FF93
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$FF9F]
    ld h, a
    ld a, [$FF9E]
    ld l, a
    inc hl
    ld c, [hl]
    push hl
    inc hl
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [hl]
    cp $81
    jp nz, Jump_001_4E34

    ldh a, [$9D]
    inc a
    ld d, a
    ldh a, [$9C]
    ld e, a
    push de
    inc d
    jp Jump_001_4E3D


    call Call_001_6393
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_4B7D
    ld a, $34
    ldh [$8D], a
    ld a, $63
    ldh [$8E], a
    ld a, $03
    ld [$C95A], a
    ldh [rSVBK], a
    ld hl, $FF93
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$FF9F]
    ld h, a
    ld a, [$FF9E]
    ld l, a
    ld a, [$C86A]
    cpl
    inc a
    ld e, a
    ld d, $FF
    add hl, de
    ld c, [hl]
    push hl
    add hl, de
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [hl]
    cp $81
    jp nz, Jump_001_4E34

    ldh a, [$9D]
    ld d, a
    ldh a, [$9C]
    dec a
    ld e, a
    push de
    dec e
    jp Jump_001_4E3D


Call_001_4FDD:
    xor a
    ld [$C12A], a
    cpl
    ld [$C12C], a
    ret


Call_001_4FE6:
    xor a
    ld [$C12C], a
    cpl
    ld [$C12A], a
    ret


Jump_001_4FEF:
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $02
    ldh [$8D], a
    ld a, $50
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 4, a
    jp nz, Jump_001_51A6

    bit 5, a
    jp nz, Jump_001_50FC

    bit 6, a
    jp nz, Jump_001_5250

    bit 7, a
    jp nz, Jump_001_5052

    call Call_001_64A0
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    jp Jump_001_634D


Jump_001_5030:
    ld a, $03
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $C9
    ldh [$A9], a
    ld a, $68
    ldh [$AA], a
    ld a, $71
    ldh [$8D], a
    ld a, $50
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393

Jump_001_5052:
    ld a, $03
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $DA
    ldh [$A9], a
    ld a, $68
    ldh [$AA], a
    ld a, $71
    ldh [$8D], a
    ld a, $50
    ldh [$8E], a
    jp Jump_001_634D


    ld a, $03
    ldh [$8C], a
    call Call_001_6393
    call Call_001_4FE6
    ld a, [$C9CD]
    bit 6, a
    jp nz, Jump_001_5250

    bit 5, a
    jp nz, Jump_001_50FC

    bit 4, a
    jp nz, Jump_001_51A6

    call Call_001_64A0
    ld a, [$C6D3]
    and a
    jp z, Jump_001_634D

    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    ld a, [$C6D3]
    and a
    jp nz, Jump_001_634D

    call Call_001_4DC0
    ld a, [hl]
    cp $0C
    jp z, Jump_001_59CB

    cp $02
    jp z, Jump_001_634D

    cp $00
    jp nz, Jump_001_50CD

    call Call_001_4FDD
    ld a, $AF
    ldh [$A9], a
    ld a, $66
    ldh [$AA], a
    jp Jump_001_6354


Jump_001_50CD:
    ld a, $08
    ld [$FFA9], a
    ld a, $6A
    ld [$FFAA], a
    jp Jump_001_4FEF


Jump_001_50DA:
    ld a, $01
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $E7
    ldh [$A9], a
    ld a, $67
    ldh [$AA], a
    ld a, $1B
    ldh [$8D], a
    ld a, $51
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393

Jump_001_50FC:
    ld a, $01
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $F8
    ldh [$A9], a
    ld a, $67
    ldh [$AA], a
    ld a, $1B
    ldh [$8D], a
    ld a, $51
    ldh [$8E], a
    jp Jump_001_634D


    ld a, $01
    ldh [$8C], a
    call Call_001_6393
    call Call_001_4FE6
    ld a, [$C9CD]
    bit 4, a
    jp nz, Jump_001_51A6

    bit 6, a
    jp nz, Jump_001_5250

    bit 7, a
    jp nz, Jump_001_5052

    call Call_001_64A0
    ld a, [$C6D2]
    and a
    jp z, Jump_001_634D

    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    ld a, [$C6D2]
    and a
    jp nz, Jump_001_634D

    call Call_001_4DDE
    ld a, [hl]
    cp $0C
    jp z, Jump_001_5A1D

    cp $02
    jp z, Jump_001_634D

    cp $00
    jp nz, Jump_001_5177

    call Call_001_4FDD
    ld a, $79
    ldh [$A9], a
    ld a, $66
    ldh [$AA], a
    jp Jump_001_6354


Jump_001_5177:
    ld a, $27
    ld [$FFA9], a
    ld a, $69
    ld [$FFAA], a
    jp Jump_001_4FEF


Jump_001_5184:
    ld a, $02
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $43
    ldh [$A9], a
    ld a, $68
    ldh [$AA], a
    ld a, $C5
    ldh [$8D], a
    ld a, $51
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393

Jump_001_51A6:
    ld a, $02
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $54
    ldh [$A9], a
    ld a, $68
    ldh [$AA], a
    ld a, $C5
    ldh [$8D], a
    ld a, $51
    ldh [$8E], a
    jp Jump_001_634D


    ld a, $02
    ldh [$8C], a
    call Call_001_6393
    call Call_001_4FE6
    ld a, [$C9CD]
    bit 5, a
    jp nz, Jump_001_50FC

    bit 7, a
    jp nz, Jump_001_5052

    bit 6, a
    jp nz, Jump_001_5250

    call Call_001_64A0
    ld a, [$C6D2]
    and a
    jp z, Jump_001_634D

    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    ld a, [$C6D2]
    and a
    jp nz, Jump_001_634D

    call Call_001_4DF9
    ld a, [hl]
    cp $0C
    jp z, Jump_001_5A46

    cp $02
    jp z, Jump_001_634D

    cp $00
    jp nz, Jump_001_5221

    call Call_001_4FDD
    ld a, $8B
    ldh [$A9], a
    ld a, $66
    ldh [$AA], a
    jp Jump_001_6354


Jump_001_5221:
    ld a, $72
    ld [$FFA9], a
    ld a, $69
    ld [$FFAA], a
    jp Jump_001_4FEF


Jump_001_522E:
    ld a, $00
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $6D
    ldh [$A9], a
    ld a, $68
    ldh [$AA], a
    ld a, $6F
    ldh [$8D], a
    ld a, $52
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393

Jump_001_5250:
    ld a, $00
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $7E
    ldh [$A9], a
    ld a, $68
    ldh [$AA], a
    ld a, $6F
    ldh [$8D], a
    ld a, $52
    ldh [$8E], a
    jp Jump_001_634D


    ld a, $00
    ldh [$8C], a
    call Call_001_6393
    call Call_001_4FE6
    ld a, [$C9CD]
    bit 7, a
    jp nz, Jump_001_5052

    bit 4, a
    jp nz, Jump_001_51A6

    bit 5, a
    jp nz, Jump_001_50FC

    call Call_001_64A0
    ld a, [$C6D3]
    and a
    jp z, Jump_001_634D

    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    ld a, [$C6D3]
    and a
    jp nz, Jump_001_634D

    call Call_001_4E14
    ld a, [hl]
    cp $0C
    jp z, Jump_001_59F4

    cp $02
    jp z, Jump_001_634D

    cp $00
    jp nz, Jump_001_52CB

    call Call_001_4FDD
    ld a, $9D
    ldh [$A9], a
    ld a, $66
    ldh [$AA], a
    jp Jump_001_6354


Jump_001_52CB:
    ld a, $BD
    ld [$FFA9], a
    ld a, $69
    ld [$FFAA], a
    jp Jump_001_4FEF


Call_001_52D8:
    ld a, [$C9CF]
    sub $04
    jp c, Jump_001_52FA

    ld c, $00
    ld a, [hl]
    ld b, a
    cp $02
    ret nz

    inc c
    add hl, de
    ld a, [hl]
    cp $02
    jr nz, jr_001_52F1

jr_001_52EE:
    inc c
    add hl, de
    ld a, [hl]

jr_001_52F1:
    cp $00
    ret z

    cp $82
    ret z

    ld c, $03
    ret


Jump_001_52FA:
    ld c, $00
    ld a, [hl]
    ld b, a
    cp $01
    jr z, jr_001_5305

    cp $02
    ret nz

jr_001_5305:
    inc c
    add hl, de
    ld a, [hl]
    cp $01
    jr z, jr_001_5310

    cp $02
    jr nz, jr_001_52F1

jr_001_5310:
    jr jr_001_52EE

Call_001_5312:
    ld a, [$C9CF]
    sub $05
    ret c

    call Call_001_52D8
    ld a, c
    and a
    ret z

    pop af
    dec c
    jp z, Jump_001_5326

    jp Jump_001_5030


Jump_001_5326:
    ld a, $E2
    ld [$FFA9], a
    ld a, $62
    ld [$FFAA], a
    jp Jump_001_6354


    ld a, $06
    ld [$FFA9], a
    ld a, $64
    ld [$FFAA], a
    jp Jump_001_6354


Call_001_5340:
    ld a, [$C9CF]
    sub $05
    ret c

    call Call_001_52D8
    ld a, c
    and a
    ret z

    pop af
    dec c
    jp z, Jump_001_5354

    jp Jump_001_50DA


Jump_001_5354:
    ld a, $25
    ld [$FFA9], a
    ld a, $62
    ld [$FFAA], a
    jp Jump_001_6354


    ld a, $21
    ld [$FFA9], a
    ld a, $63
    ld [$FFAA], a
    jp Jump_001_6354


Call_001_536E:
    ld a, [$C9CF]
    sub $05
    ret c

    call Call_001_52D8
    ld a, c
    and a
    ret z

    pop af
    dec c
    jp z, Jump_001_5382

    jp Jump_001_5184


Jump_001_5382:
    ld a, $64
    ld [$FFA9], a
    ld a, $62
    ld [$FFAA], a
    jp Jump_001_6354


    ld a, $6F
    ld [$FFA9], a
    ld a, $63
    ld [$FFAA], a
    jp Jump_001_6354


Call_001_539C:
    ld a, [$C9CF]
    sub $05
    ret c

    call Call_001_52D8
    ld a, c
    and a
    ret z

    pop af
    dec c
    jp z, Jump_001_53B0

    jp Jump_001_522E


Jump_001_53B0:
    ld a, $A3
    ld [$FFA9], a
    ld a, $62
    ld [$FFAA], a
    jp Jump_001_6354


    ld a, $BD
    ld [$FFA9], a
    ld a, $63
    ld [$FFAA], a
    jp Jump_001_6354


Jump_001_53CA:
    ld a, $03
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $4D
    ldh [$A9], a
    ld a, $5C
    ldh [$AA], a
    ld a, $E9
    ldh [$8D], a
    ld a, $53
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 7, a
    jp nz, Jump_001_5401

    ld a, $A1
    ld [$FFA9], a
    ld a, $5D
    ld [$FFAA], a
    jp Jump_001_640D


Jump_001_5401:
    bit 5, a
    jr z, jr_001_5408

    jp Jump_001_5468


jr_001_5408:
    bit 4, a
    jr z, jr_001_540F

    jp Jump_001_552E


jr_001_540F:
    ld a, [$C9CC]
    bit 1, a
    jp nz, Jump_001_5691

    ld hl, $4372
    ld e, $05
    call $07A9
    ld a, [$C9C6]
    cp $01
    jr nz, jr_001_544A

    ld a, [$C9C7]
    ld b, a
    ld a, [$C6D2]
    add b
    ld [$C6D2], a
    ld a, [$C9C8]
    ld b, a
    ld a, [$C6D3]
    add b
    ld [$C6D3], a
    xor a
    ld [$C9C6], a
    ld hl, $4372
    ld e, $05
    call $07A9
    jr jr_001_544D

jr_001_544A:
    call Call_001_422E

jr_001_544D:
    call Call_001_4B7D
    ld a, [$C6D3]
    and a
    jr z, jr_001_5456

jr_001_5456:
    ld a, [$C6D3]
    and a
    jr nz, jr_001_5465

    call Call_001_4C08
    call Call_001_5312
    call Call_001_5BF4

jr_001_5465:
    jp Jump_001_634D


Jump_001_5468:
    ld a, $01
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $6D
    ldh [$A9], a
    ld a, $5C
    ldh [$AA], a
    ld a, $87
    ldh [$8D], a
    ld a, $54
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 5, a
    jr nz, jr_001_549E

    ld a, $57
    ld [$FFA9], a
    ld a, $5E
    ld [$FFAA], a
    jp Jump_001_640D


jr_001_549E:
    ldh a, [$AF]
    and $01
    jp z, Jump_001_54C4

    ld a, [$C9CC]
    bit 6, a
    jr z, jr_001_54B3

    ld a, $FF
    ld [$C6D3], a
    jr jr_001_54BC

jr_001_54B3:
    bit 7, a
    jr z, jr_001_54BC

    ld a, $01
    ld [$C6D3], a

jr_001_54BC:
    ld a, [$C9CC]
    bit 1, a
    jp nz, Jump_001_5724

Jump_001_54C4:
    ld a, [hl]
    cp $AC
    jr z, jr_001_54D6

    cp $AD
    jr nz, jr_001_54DD

    ld a, [$C6D3]
    dec a
    ld [$C6D3], a
    jr jr_001_54DD

jr_001_54D6:
    ld a, [$C6D3]
    inc a
    ld [$C6D3], a

jr_001_54DD:
    ld hl, $4372
    ld e, $05
    call $07A9
    ld a, [$C9C6]
    cp $01
    jr nz, jr_001_5510

    ld a, [$C9C7]
    ld b, a
    ld a, [$C6D2]
    add b
    ld [$C6D2], a
    ld a, [$C9C8]
    ld b, a
    ld a, [$C6D3]
    add b
    ld [$C6D3], a
    xor a
    ld [$C9C6], a
    ld hl, $4372
    ld e, $05
    call $07A9
    jr jr_001_5513

jr_001_5510:
    call Call_001_422E

jr_001_5513:
    call Call_001_4B7D
    ld a, [$C6D2]
    and a
    jr z, jr_001_551C

jr_001_551C:
    ld a, [$C6D2]
    and a
    jr nz, jr_001_552B

    call Call_001_4C59
    call Call_001_5340
    call Call_001_5C0F

jr_001_552B:
    jp Jump_001_634D


Jump_001_552E:
    ld a, $02
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $8D
    ldh [$A9], a
    ld a, $5C
    ldh [$AA], a
    ld a, $4D
    ldh [$8D], a
    ld a, $55
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 4, a
    jr nz, jr_001_5564

    ld a, $74
    ld [$FFA9], a
    ld a, $5E
    ld [$FFAA], a
    jp Jump_001_640D


jr_001_5564:
    ldh a, [$AF]
    and $01
    jp z, Jump_001_558A

    ld a, [$C9CC]
    bit 6, a
    jr z, jr_001_5579

    ld a, $FF
    ld [$C6D3], a
    jr jr_001_5582

jr_001_5579:
    bit 7, a
    jr z, jr_001_5582

    ld a, $01
    ld [$C6D3], a

jr_001_5582:
    ld a, [$C9CC]
    bit 1, a
    jp nz, Jump_001_57DC

Jump_001_558A:
    ld a, [hl]
    cp $AC
    jr z, jr_001_559C

    cp $AD
    jr nz, jr_001_55A3

    ld a, [$C6D3]
    inc a
    ld [$C6D3], a
    jr jr_001_55A3

jr_001_559C:
    ld a, [$C6D3]
    dec a
    ld [$C6D3], a

jr_001_55A3:
    ld hl, $4372
    ld e, $05
    call $07A9
    ld a, [$C9C6]
    cp $01
    jr nz, jr_001_55D6

    ld a, [$C9C7]
    ld b, a
    ld a, [$C6D2]
    add b
    ld [$C6D2], a
    ld a, [$C9C8]
    ld b, a
    ld a, [$C6D3]
    add b
    ld [$C6D3], a
    xor a
    ld [$C9C6], a
    ld hl, $4372
    ld e, $05
    call $07A9
    jr jr_001_55D9

jr_001_55D6:
    call Call_001_422E

jr_001_55D9:
    call Call_001_4B7D
    ld a, [$C6D2]
    and a
    jr z, jr_001_55E2

jr_001_55E2:
    ld a, [$C6D2]
    and a
    jr nz, jr_001_55F1

    call Call_001_4CAA
    call Call_001_536E
    call Call_001_5C2A

jr_001_55F1:
    jp Jump_001_634D


Jump_001_55F4:
    ld a, $00
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $23
    ldh [$A9], a
    ld a, $5C
    ldh [$AA], a
    ld a, $13
    ldh [$8D], a
    ld a, $56
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 6, a
    jr nz, jr_001_562A

    ld a, $97
    ld [$FFA9], a
    ld a, $5D
    ld [$FFAA], a
    jp Jump_001_640D


jr_001_562A:
    bit 5, a
    jr z, jr_001_5631

    jp Jump_001_5468


jr_001_5631:
    bit 4, a
    jr z, jr_001_5638

    jp Jump_001_552E


jr_001_5638:
    ld a, [$C9CC]
    bit 1, a
    jp nz, Jump_001_5894

    ld hl, $4372
    ld e, $05
    call $07A9
    ld a, [$C9C6]
    cp $01
    jr nz, jr_001_5673

    ld a, [$C9C7]
    ld b, a
    ld a, [$C6D2]
    add b
    ld [$C6D2], a
    ld a, [$C9C8]
    ld b, a
    ld a, [$C6D3]
    add b
    ld [$C6D3], a
    xor a
    ld [$C9C6], a
    ld hl, $4372
    ld e, $05
    call $07A9
    jr jr_001_5676

jr_001_5673:
    call Call_001_422E

jr_001_5676:
    call Call_001_4B7D
    ld a, [$C6D3]
    and a
    jr z, jr_001_567F

jr_001_567F:
    ld a, [$C6D3]
    and a
    jr nz, jr_001_568E

    call Call_001_4CFB
    call Call_001_539C
    call Call_001_5C45

jr_001_568E:
    jp Jump_001_634D


Jump_001_5691:
    ld a, $03
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $0D
    ldh [$A9], a
    ld a, $5D
    ldh [$AA], a
    ld a, $B0
    ldh [$8D], a
    ld a, $56
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 7, a
    jr nz, jr_001_56C7

    ld a, $A1
    ld [$FFA9], a
    ld a, $5D
    ld [$FFAA], a
    jp Jump_001_640D


jr_001_56C7:
    bit 5, a
    jp nz, Jump_001_5724

    bit 4, a
    jp nz, Jump_001_57DC

    ld hl, $4372
    ld e, $05
    call $07A9
    ld a, [$C9C6]
    cp $01
    jr nz, jr_001_5704

    ld a, [$C9C7]
    ld b, a
    ld a, [$C6D2]
    add b
    ld [$C6D2], a
    ld a, [$C9C8]
    ld b, a
    ld a, [$C6D3]
    add b
    ld [$C6D3], a
    xor a
    ld [$C9C6], a
    ld hl, $4372
    ld e, $05
    call $07A9
    jr jr_001_5707

jr_001_5704:
    call Call_001_422E

jr_001_5707:
    call Call_001_4B7D
    ld a, [$C6D3]
    and a
    jr nz, jr_001_5719

    call Call_001_4C08
    call Call_001_5312
    call Call_001_5BF4

jr_001_5719:
    ld a, [$C9CC]
    bit 1, a
    jp z, Jump_001_53CA

    jp Jump_001_634D


Jump_001_5724:
    ld a, $01
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $27
    ldh [$A9], a
    ld a, $5D
    ldh [$AA], a
    ld a, $43
    ldh [$8D], a
    ld a, $57
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 5, a
    jr nz, jr_001_575A

    ld a, $57
    ld [$FFA9], a
    ld a, $5E
    ld [$FFAA], a
    jp Jump_001_640D


jr_001_575A:
    bit 6, a
    jr z, jr_001_5765

    ld a, $FF
    ld [$C6D3], a
    jr jr_001_576E

jr_001_5765:
    bit 7, a
    jr z, jr_001_576E

    ld a, $01
    ld [$C6D3], a

jr_001_576E:
    ld a, [hl]
    cp $AC
    jr z, jr_001_5781

    cp $AD
    jr nz, jr_001_5789

    ld a, [$C6D3]
    dec a
    dec a
    ld [$C6D3], a
    jr jr_001_5789

jr_001_5781:
    ld a, [$C6D3]
    inc a
    inc a
    ld [$C6D3], a

jr_001_5789:
    ld hl, $4372
    ld e, $05
    call $07A9
    ld a, [$C9C6]
    cp $01
    jr nz, jr_001_57BC

    ld a, [$C9C7]
    ld b, a
    ld a, [$C6D2]
    add b
    ld [$C6D2], a
    ld a, [$C9C8]
    ld b, a
    ld a, [$C6D3]
    add b
    ld [$C6D3], a
    xor a
    ld [$C9C6], a
    ld hl, $4372
    ld e, $05
    call $07A9
    jr jr_001_57BF

jr_001_57BC:
    call Call_001_422E

jr_001_57BF:
    call Call_001_4B7D
    ld a, [$C6D2]
    and a
    jr nz, jr_001_57D1

    call Call_001_4C59
    call Call_001_5340
    call Call_001_5C0F

jr_001_57D1:
    ld a, [$C9CC]
    bit 1, a
    jp z, Jump_001_5468

    jp Jump_001_634D


Jump_001_57DC:
    ld a, $02
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $41
    ldh [$A9], a
    ld a, $5D
    ldh [$AA], a
    ld a, $FB
    ldh [$8D], a
    ld a, $57
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 4, a
    jr nz, jr_001_5812

    ld a, $74
    ld [$FFA9], a
    ld a, $5E
    ld [$FFAA], a
    jp Jump_001_640D


jr_001_5812:
    bit 6, a
    jr z, jr_001_581D

    ld a, $FF
    ld [$C6D3], a
    jr jr_001_5826

jr_001_581D:
    bit 7, a
    jr z, jr_001_5826

    ld a, $01
    ld [$C6D3], a

jr_001_5826:
    ld a, [hl]
    cp $AC
    jr z, jr_001_5839

    cp $AD
    jr nz, jr_001_5841

    ld a, [$C6D3]
    inc a
    inc a
    ld [$C6D3], a
    jr jr_001_5841

jr_001_5839:
    ld a, [$C6D3]
    dec a
    dec a
    ld [$C6D3], a

jr_001_5841:
    ld hl, $4372
    ld e, $05
    call $07A9
    ld a, [$C9C6]
    cp $01
    jr nz, jr_001_5874

    ld a, [$C9C7]
    ld b, a
    ld a, [$C6D2]
    add b
    ld [$C6D2], a
    ld a, [$C9C8]
    ld b, a
    ld a, [$C6D3]
    add b
    ld [$C6D3], a
    xor a
    ld [$C9C6], a
    ld hl, $4372
    ld e, $05
    call $07A9
    jr jr_001_5877

jr_001_5874:
    call Call_001_422E

jr_001_5877:
    call Call_001_4B7D
    ld a, [$C6D2]
    and a
    jr nz, jr_001_5889

    call Call_001_4CAA
    call Call_001_536E
    call Call_001_5C2A

jr_001_5889:
    ld a, [$C9CC]
    bit 1, a
    jp z, Jump_001_552E

    jp Jump_001_634D


Jump_001_5894:
    ld a, $00
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $FD
    ldh [$A9], a
    ld a, $5C
    ldh [$AA], a
    ld a, $B3
    ldh [$8D], a
    ld a, $58
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 6, a
    jr nz, jr_001_58CA

    ld a, $97
    ld [$FFA9], a
    ld a, $5D
    ld [$FFAA], a
    jp Jump_001_640D


jr_001_58CA:
    bit 5, a
    jp nz, Jump_001_5724

    bit 4, a
    jp nz, Jump_001_57DC

    ld hl, $4372
    ld e, $05
    call $07A9
    ld a, [$C9C6]
    cp $01
    jr nz, jr_001_5907

    ld a, [$C9C7]
    ld b, a
    ld a, [$C6D2]
    add b
    ld [$C6D2], a
    ld a, [$C9C8]
    ld b, a
    ld a, [$C6D3]
    add b
    ld [$C6D3], a
    xor a
    ld [$C9C6], a
    ld hl, $4372
    ld e, $05
    call $07A9
    jr jr_001_590A

jr_001_5907:
    call Call_001_422E

jr_001_590A:
    call Call_001_4B7D
    ld a, [$C6D3]
    and a
    jr nz, jr_001_591C

    call Call_001_4CFB
    call Call_001_539C
    call Call_001_5C45

jr_001_591C:
    ld a, [$C9CC]
    bit 1, a
    jp z, Jump_001_55F4

    jp Jump_001_634D


    ld a, $19
    ld [$C944], a
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$A22A]
    dec a
    ld [$A22A], a
    xor a
    ld [$0000], a
    ld a, $23
    ld [$FFA9], a
    ld a, $5E
    ld [$FFAA], a
    jp Jump_001_6354


    ld a, $19
    ld [$C944], a
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$A22A]
    dec a
    ld [$A22A], a
    xor a
    ld [$0000], a
    ld a, $30
    ld [$FFA9], a
    ld a, $5E
    ld [$FFAA], a
    jp Jump_001_6354


    ld a, $19
    ld [$C944], a
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$A22A]
    dec a
    ld [$A22A], a
    xor a
    ld [$0000], a
    ld a, $3D
    ld [$FFA9], a
    ld a, $5E
    ld [$FFAA], a
    jp Jump_001_6354


    ld a, $19
    ld [$C944], a
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$A22A]
    dec a
    ld [$A22A], a
    xor a
    ld [$0000], a
    ld a, $4A
    ld [$FFA9], a
    ld a, $5E
    ld [$FFAA], a
    jp Jump_001_6354


Jump_001_59CB:
    ld a, $19
    ld [$C944], a
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$A22A]
    dec a
    ld [$A22A], a
    xor a
    ld [$0000], a
    ld a, $1A
    ld [$FFA9], a
    ld a, $69
    ld [$FFAA], a
    jp Jump_001_6354


Jump_001_59F4:
    ld a, $19
    ld [$C944], a
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$A22A]
    dec a
    ld [$A22A], a
    xor a
    ld [$0000], a
    ld a, $0D
    ld [$FFA9], a
    ld a, $69
    ld [$FFAA], a
    jp Jump_001_6354


Jump_001_5A1D:
    ld a, $19
    ld [$C944], a
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$A22A]
    dec a
    ld [$A22A], a
    xor a
    ld [$0000], a
    ld a, $F3
    ld [$FFA9], a
    ld a, $68
    ld [$FFAA], a
    jp Jump_001_6354


Jump_001_5A46:
    ld a, $19
    ld [$C944], a
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$A22A]
    dec a
    ld [$A22A], a
    xor a
    ld [$0000], a
    ld a, $00
    ld [$FFA9], a
    ld a, $69
    ld [$FFAA], a
    jp Jump_001_6354


    ld a, [hl]
    cp $0C
    jr nz, jr_001_5AC4

    pop af
    ld a, [$C9C9]
    jr nz, jr_001_5AEE

    ld a, $19
    ld [$C944], a
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$A019]
    bit 1, a
    jr z, jr_001_5AA2

    res 1, a
    ld [$A019], a
    xor a
    ld [$0000], a
    ld a, $20
    ld [$C9C9], a
    jr jr_001_5AEE

jr_001_5AA2:
    ld a, [$A22A]
    cp $00
    jp z, Jump_001_5B13

    dec a
    cp $00
    jp z, Jump_001_5B13

    ld [$A22A], a
    xor a
    ld [$0000], a
    ld a, $35
    ld [$FFA9], a
    ld a, $5F
    ld [$FFAA], a
    jp Jump_001_5BAD


jr_001_5AC4:
    ld a, [$C9C9]
    cp $00
    ret z

    dec a
    ld [$C9C9], a
    pop af
    ld a, $03
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $DE
    ldh [$A9], a
    ld a, $5F
    ldh [$AA], a
    ld a, $7F
    ldh [$8D], a
    ld a, $5C
    ldh [$8E], a
    jp Jump_001_634D


jr_001_5AEE:
    ld a, [$C9C9]
    dec a
    ld [$C9C9], a
    cp $00
    jr z, jr_001_5B06

    ld a, $05
    ld [$FFA9], a
    ld a, $5F
    ld [$FFAA], a
    jp Jump_001_5BAD


jr_001_5B06:
    ld a, $35
    ld [$FFA9], a
    ld a, $5F
    ld [$FFAA], a
    jp Jump_001_5BAD


Jump_001_5B13:
    ld a, $9C
    ld [$FFA9], a
    ld a, $5B
    ld [$FFAA], a
    jp Jump_001_5BAD


    ld a, $19
    ld [$C944], a
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$A22A]
    dec a
    ld [$A22A], a
    xor a
    ld [$0000], a
    ld a, $0D
    ld [$FFA9], a
    ld a, $69
    ld [$FFAA], a
    jp Jump_001_6354


    ld a, $19
    ld [$C944], a
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$A22A]
    dec a
    ld [$A22A], a
    xor a
    ld [$0000], a
    ld a, $F3
    ld [$FFA9], a
    ld a, $68
    ld [$FFAA], a
    jp Jump_001_6354


    ld a, $19
    ld [$C944], a
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$A22A]
    dec a
    ld [$A22A], a
    xor a
    ld [$0000], a
    ld a, $00
    ld [$FFA9], a
    ld a, $69
    ld [$FFAA], a
    jp Jump_001_6354


Call_001_5B9B:
    xor a
    ld [$C12A], a
    cpl
    ld [$C12B], a
    ret


Call_001_5BA4:
    xor a
    ld [$C12B], a
    cpl
    ld [$C12A], a
    ret


Jump_001_5BAD:
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $C0
    ldh [$8D], a
    ld a, $5B
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    call Call_001_5BA4
    ld a, [$C9CC]
    bit 4, a
    jp nz, Jump_001_5D7B

    bit 5, a
    jp nz, Jump_001_5CE6

    bit 6, a
    jp nz, Jump_001_5E10

    bit 7, a
    jp nz, Jump_001_5C60

    call Call_001_64A0
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    call Call_001_5E95
    jp Jump_001_634D


Call_001_5BF4:
    ld a, [hl]
    cp $01
    ret nz

    ld a, [$C9CF]
    sub $04
    ret c

    call Call_001_5BA4
    pop af
    ld a, $52
    ld [$FFA9], a
    ld a, $65
    ld [$FFAA], a
    jp Jump_001_6354


Call_001_5C0F:
    ld a, [hl]
    cp $01
    ret nz

    ld a, [$C9CF]
    sub $04
    ret c

    call Call_001_5BA4
    pop af
    ld a, $9F
    ld [$FFA9], a
    ld a, $64
    ld [$FFAA], a
    jp Jump_001_6354


Call_001_5C2A:
    ld a, [hl]
    cp $01
    ret nz

    ld a, [$C9CF]
    sub $04
    ret c

    call Call_001_5BA4
    pop af
    ld a, $D9
    ld [$FFA9], a
    ld a, $64
    ld [$FFAA], a
    jp Jump_001_6354


Call_001_5C45:
    ld a, [hl]
    cp $01
    ret nz

    ld a, [$C9CF]
    sub $04
    ret c

    call Call_001_5BA4
    pop af
    ld a, $13
    ld [$FFA9], a
    ld a, $65
    ld [$FFAA], a
    jp Jump_001_6354


Jump_001_5C60:
    ld a, $03
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $8C
    ldh [$A9], a
    ld a, $5F
    ldh [$AA], a
    ld a, $7F
    ldh [$8D], a
    ld a, $5C
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    call Call_001_5BA4
    ld a, [$C9CC]
    bit 7, a
    jp nz, Jump_001_5C9A

    ld a, $35
    ld [$FFA9], a
    ld a, $5F
    ld [$FFAA], a
    jp Jump_001_5BAD


Jump_001_5C9A:
    bit 5, a
    jr z, jr_001_5CA1

    jp Jump_001_5CE6


jr_001_5CA1:
    bit 4, a
    jr z, jr_001_5CA8

    jp Jump_001_5D7B


jr_001_5CA8:
    call Call_001_64A0
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    call Call_001_5E95
    call Call_001_4DC0
    ld a, [$FF90]
    cp $08
    jr c, jr_001_5CC9

    call Call_001_4A34

jr_001_5CC9:
    ld a, [$C6D3]
    and a
    jp nz, Jump_001_634D

    ld a, [hl]
    cp $00
    jp nz, Jump_001_634D

    call Call_001_5B9B
    ld a, $3A
    ld [$FFA9], a
    ld a, $66
    ld [$FFAA], a
    jp Jump_001_6354


Jump_001_5CE6:
    ld a, $01
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $A1
    ldh [$A9], a
    ld a, $5F
    ldh [$AA], a
    ld a, $05
    ldh [$8D], a
    ld a, $5D
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    call Call_001_5BA4
    ld a, [$C9CC]
    bit 5, a
    jr nz, jr_001_5D1F

    ld a, $11
    ld [$FFA9], a
    ld a, $5F
    ld [$FFAA], a
    jp Jump_001_5BAD


jr_001_5D1F:
    ldh a, [$AF]
    and $01
    jp z, Jump_001_5D3D

    ld a, [$C9CC]
    bit 6, a
    jr z, jr_001_5D34

    ld a, $FF
    ld [$C6D3], a
    jr jr_001_5D3D

jr_001_5D34:
    bit 7, a
    jr z, jr_001_5D3D

    ld a, $01
    ld [$C6D3], a

Jump_001_5D3D:
jr_001_5D3D:
    call Call_001_64A0
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    call Call_001_5E95
    call Call_001_4DDE
    ld a, [$FF8F]
    cp $09
    jr nc, jr_001_5D5E

    call Call_001_4A34

jr_001_5D5E:
    ld a, [$C6D3]
    and a
    jp nz, Jump_001_634D

    ld a, [hl]
    cp $00
    jp nz, Jump_001_634D

    call Call_001_5B9B
    ld a, $91
    ld [$FFA9], a
    ld a, $65
    ld [$FFAA], a
    jp Jump_001_6354


Jump_001_5D7B:
    ld a, $02
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $B5
    ldh [$A9], a
    ld a, $5F
    ldh [$AA], a
    ld a, $9A
    ldh [$8D], a
    ld a, $5D
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    call Call_001_5BA4
    ld a, [$C9CC]
    bit 4, a
    jr nz, jr_001_5DB4

    ld a, $1D
    ld [$FFA9], a
    ld a, $5F
    ld [$FFAA], a
    jp Jump_001_5BAD


jr_001_5DB4:
    ldh a, [$AF]
    and $01
    jp z, Jump_001_5DD2

    ld a, [$C9CC]
    bit 6, a
    jr z, jr_001_5DC9

    ld a, $FF
    ld [$C6D3], a
    jr jr_001_5DD2

jr_001_5DC9:
    bit 7, a
    jr z, jr_001_5DD2

    ld a, $01
    ld [$C6D3], a

Jump_001_5DD2:
jr_001_5DD2:
    call Call_001_64A0
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    call Call_001_5E95
    call Call_001_4DF9
    ld a, [$FF8F]
    cp $08
    jr c, jr_001_5DF3

    call Call_001_4A34

jr_001_5DF3:
    ld a, [$C6D3]
    and a
    jp nz, Jump_001_634D

    ld a, [hl]
    cp $00
    jp nz, Jump_001_634D

    call Call_001_5B9B
    ld a, $C6
    ld [$FFA9], a
    ld a, $65
    ld [$FFAA], a
    jp Jump_001_6354


Jump_001_5E10:
    ld a, $00
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $77
    ldh [$A9], a
    ld a, $5F
    ldh [$AA], a
    ld a, $2F
    ldh [$8D], a
    ld a, $5E
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    call Call_001_5BA4
    ld a, [$C9CC]
    bit 6, a
    jr nz, jr_001_5E49

    ld a, $29
    ld [$FFA9], a
    ld a, $5F
    ld [$FFAA], a
    jp Jump_001_5BAD


jr_001_5E49:
    bit 5, a
    jr z, jr_001_5E50

    jp Jump_001_5CE6


jr_001_5E50:
    bit 4, a
    jr z, jr_001_5E57

    jp Jump_001_5D7B


jr_001_5E57:
    call Call_001_64A0
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    call Call_001_5E95
    call Call_001_4E14
    ld a, [$FF90]
    cp $09
    jr nc, jr_001_5E78

    call Call_001_4A34

jr_001_5E78:
    ld a, [$C6D3]
    and a
    jp nz, Jump_001_634D

    ld a, [hl]
    cp $00
    jp nz, Jump_001_634D

    call Call_001_5B9B
    ld a, $FB
    ld [$FFA9], a
    ld a, $65
    ld [$FFAA], a
    jp Jump_001_6354


Call_001_5E95:
    ld a, [$C9CA]
    cp $A4
    jr nz, jr_001_5EAB

    call Call_001_4DC0
    ld a, [$FF90]
    cp $08
    ret c

    call Call_001_4A34
    jp Jump_001_5F64


jr_001_5EAB:
    cp $A0
    jr nz, jr_001_5EBE

    call Call_001_4E14
    ld a, [$FF90]
    cp $09
    ret nc

    call Call_001_4A34
    jp Jump_001_5F64


jr_001_5EBE:
    cp $A6
    jr nz, jr_001_5ED1

    call Call_001_4DDE
    ld a, [$FF8F]
    cp $09
    ret nc

    call Call_001_4A34
    jp Jump_001_5F64


jr_001_5ED1:
    cp $A2
    jr nz, jr_001_5EE4

    call Call_001_4DF9
    ld a, [$FF8F]
    cp $08
    ret c

    call Call_001_4A34
    jp Jump_001_5F64


jr_001_5EE4:
    cp $A5
    jr nz, jr_001_5F04

    ld a, [$FF8F]
    cp $08
    jr nc, jr_001_5EF5

    call Call_001_4DDE
    call Call_001_4A34

jr_001_5EF5:
    ld a, [$FF90]
    cp $08
    jr c, jr_001_5F64

    call Call_001_4DC0
    call Call_001_4A34
    jr jr_001_5F64

jr_001_5F04:
    cp $A3
    jr nz, jr_001_5F24

    ld a, [$FF8F]
    cp $08
    jr c, jr_001_5F15

    call Call_001_4DF9
    call Call_001_4A34

jr_001_5F15:
    ld a, [$FF90]
    cp $08
    jr c, jr_001_5F64

    call Call_001_4DC0
    call Call_001_4A34
    jr jr_001_5F64

jr_001_5F24:
    cp $A7
    jr nz, jr_001_5F44

    ld a, [$FF8F]
    cp $08
    jr nc, jr_001_5F35

    call Call_001_4DDE
    call Call_001_4A34

jr_001_5F35:
    ld a, [$FF90]
    cp $08
    jr nc, jr_001_5F64

    call Call_001_4E14
    call Call_001_4A34
    jr jr_001_5F64

jr_001_5F44:
    cp $A7
    jr nz, jr_001_5F64

    ld a, [$FF8F]
    cp $08
    jr c, jr_001_5F55

    call Call_001_4DF9
    call Call_001_4A34

jr_001_5F55:
    ld a, [$FF90]
    cp $08
    jr nc, jr_001_5F64

    call Call_001_4E14
    call Call_001_4A34
    jr jr_001_5F64

Jump_001_5F64:
jr_001_5F64:
    ret


Jump_001_5F65:
    ld a, $03
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $5C
    ldh [$A9], a
    ld a, $5B
    ldh [$AA], a
    ld a, $84
    ldh [$8D], a
    ld a, $5F
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ldh a, [$AF]
    and $01
    jr z, jr_001_5FAB

    ld a, [$C9CC]
    bit 7, a
    jp nz, Jump_001_5F98

    jp Jump_001_60D6


Jump_001_5F98:
    bit 5, a
    jr z, jr_001_5F9F

    jp Jump_001_5FBF


jr_001_5F9F:
    bit 4, a
    jr z, jr_001_5FA6

    jp Jump_001_601E


jr_001_5FA6:
    ld a, $01
    ld [$C6D3], a

jr_001_5FAB:
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    call Call_001_4C08
    jp Jump_001_634D


Jump_001_5FBF:
    ld a, $01
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $6C
    ldh [$A9], a
    ld a, $5B
    ldh [$AA], a
    ld a, $DE
    ldh [$8D], a
    ld a, $5F
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ldh a, [$AF]
    and $01
    jr z, jr_001_600A

    ld a, [$C9CC]
    bit 5, a
    jr nz, jr_001_5FF1

    jp Jump_001_60D6


jr_001_5FF1:
    ld e, $00
    bit 6, a
    jr z, jr_001_5FFB

    ld e, $FF
    jr jr_001_6001

jr_001_5FFB:
    bit 7, a
    jr z, jr_001_6001

    ld e, $01

jr_001_6001:
    ld a, $FF
    ld [$C6D2], a
    ld a, e
    ld [$C6D3], a

jr_001_600A:
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    call Call_001_4C59
    jp Jump_001_634D


Jump_001_601E:
    ld a, $02
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $8C
    ldh [$A9], a
    ld a, $5B
    ldh [$AA], a
    ld a, $3D
    ldh [$8D], a
    ld a, $60
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ldh a, [$AF]
    and $01
    jr z, jr_001_6069

    ld a, [$C9CC]
    bit 4, a
    jr nz, jr_001_6050

    jp Jump_001_60D6


jr_001_6050:
    ld e, $00
    bit 6, a
    jr z, jr_001_605A

    ld e, $FF
    jr jr_001_6060

jr_001_605A:
    bit 7, a
    jr z, jr_001_6060

    ld e, $01

jr_001_6060:
    ld a, $01
    ld [$C6D2], a
    ld a, e
    ld [$C6D3], a

jr_001_6069:
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    call Call_001_4CAA
    jp Jump_001_634D


Jump_001_607D:
    ld a, $00
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $4C
    ldh [$A9], a
    ld a, $5B
    ldh [$AA], a
    ld a, $9C
    ldh [$8D], a
    ld a, $60
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ldh a, [$AF]
    and $01
    jr z, jr_001_60C2

    ld a, [$C9CC]
    bit 6, a
    jr nz, jr_001_60AF

    jp Jump_001_60D6


jr_001_60AF:
    bit 5, a
    jr z, jr_001_60B6

    jp Jump_001_5FBF


jr_001_60B6:
    bit 4, a
    jr z, jr_001_60BD

    jp Jump_001_601E


jr_001_60BD:
    ld a, $FF
    ld [$C6D3], a

jr_001_60C2:
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    call Call_001_4CFB
    jp Jump_001_634D


Jump_001_60D6:
    ld a, $E1
    ldh [$8D], a
    ld a, $60
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 4, a
    jp nz, Jump_001_601E

    bit 5, a
    jp nz, Jump_001_5FBF

    bit 6, a
    jp nz, Jump_001_607D

    bit 7, a
    jp nz, Jump_001_5F65

    call Call_001_4B7D
    call Call_001_6479
    jp Jump_001_634D


    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$A227]
    ld [$C9CF], a
    xor a
    ld [$0000], a
    jp Jump_001_6130


Jump_001_611D:
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $30
    ldh [$8D], a
    ld a, $61
    ldh [$8E], a
    jp Jump_001_634D


Jump_001_6130:
    call Call_001_6393
    ld a, [$C9CC]
    bit 4, a
    jp nz, Jump_001_625E

    bit 5, a
    jp nz, Jump_001_61EB

    bit 6, a
    jp nz, Jump_001_62D1

    bit 7, a
    jp nz, Jump_001_6187

    call Call_001_64A0
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    ld a, [$C9CD]
    bit 0, a
    call nz, Call_001_6166
    jp Jump_001_634D


Call_001_6166:
    ldh a, [$8C]
    and $03
    cp $00
    jr z, jr_001_617A

    cp $03
    jr z, jr_001_617D

    cp $01
    jr z, jr_001_6180

    cp $02
    jr z, jr_001_6183

jr_001_617A:
    jp Jump_001_4CFB


jr_001_617D:
    jp Jump_001_4C08


jr_001_6180:
    jp Jump_001_4C59


jr_001_6183:
    jp Jump_001_4CAA


    ret


Jump_001_6187:
    ld a, $03
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $14
    ldh [$A8], a
    ld a, $34
    ldh [$A9], a
    ld a, $67
    ldh [$AA], a
    ld a, $AA
    ldh [$8D], a
    ld a, $61
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 7, a
    jp nz, Jump_001_61C2

    ld a, $B7
    ld [$FFA9], a
    ld a, $67
    ld [$FFAA], a
    jp Jump_001_611D


Jump_001_61C2:
    bit 5, a
    jr z, jr_001_61C9

    jp Jump_001_61EB


jr_001_61C9:
    bit 4, a
    jr z, jr_001_61D0

    jp Jump_001_625E


jr_001_61D0:
    call Call_001_64A0
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    ld a, [$C6D3]
    and a
    call z, Call_001_4C08
    jp Jump_001_634D


Jump_001_61EB:
    ld a, $01
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $14
    ldh [$A8], a
    ld a, $57
    ldh [$A9], a
    ld a, $67
    ldh [$AA], a
    ld a, $0E
    ldh [$8D], a
    ld a, $62
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 5, a
    jr nz, jr_001_6225

    ld a, $C7
    ld [$FFA9], a
    ld a, $67
    ld [$FFAA], a
    jp Jump_001_611D


jr_001_6225:
    ldh a, [$AF]
    and $01
    jp z, Jump_001_6243

    ld a, [$C9CC]
    bit 6, a
    jr z, jr_001_623A

    ld a, $FF
    ld [$C6D3], a
    jr jr_001_6243

jr_001_623A:
    bit 7, a
    jr z, jr_001_6243

    ld a, $01
    ld [$C6D3], a

Jump_001_6243:
jr_001_6243:
    call Call_001_64A0
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    ld a, [$C6D2]
    and a
    call z, Call_001_4C59
    jp Jump_001_634D


Jump_001_625E:
    ld a, $02
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $14
    ldh [$A8], a
    ld a, $84
    ldh [$A9], a
    ld a, $67
    ldh [$AA], a
    ld a, $81
    ldh [$8D], a
    ld a, $62
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 4, a
    jr nz, jr_001_6298

    ld a, $D7
    ld [$FFA9], a
    ld a, $67
    ld [$FFAA], a
    jp Jump_001_611D


jr_001_6298:
    ldh a, [$AF]
    and $01
    jp z, Jump_001_62B6

    ld a, [$C9CC]
    bit 6, a
    jr z, jr_001_62AD

    ld a, $FF
    ld [$C6D3], a
    jr jr_001_62B6

jr_001_62AD:
    bit 7, a
    jr z, jr_001_62B6

    ld a, $01
    ld [$C6D3], a

Jump_001_62B6:
jr_001_62B6:
    call Call_001_64A0
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    ld a, [$C6D2]
    and a
    call z, Call_001_4CAA
    jp Jump_001_634D


Jump_001_62D1:
    ld a, $00
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $14
    ldh [$A8], a
    ld a, $11
    ldh [$A9], a
    ld a, $67
    ldh [$AA], a
    ld a, $F4
    ldh [$8D], a
    ld a, $62
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 6, a
    jr nz, jr_001_630B

    ld a, $A7
    ld [$FFA9], a
    ld a, $67
    ld [$FFAA], a
    jp Jump_001_611D


jr_001_630B:
    bit 5, a
    jr z, jr_001_6312

    jp Jump_001_61EB


jr_001_6312:
    bit 4, a
    jr z, jr_001_6319

    jp Jump_001_625E


jr_001_6319:
    call Call_001_64A0
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    ld a, [$C6D3]
    and a
    call z, Call_001_4CFB
    jp Jump_001_634D


    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$A227]
    ld [$C9CF], a
    xor a
    ld [$0000], a
    jp Jump_001_6420


Jump_001_634D:
    call $2B78
    call Call_001_410A
    ret


Jump_001_6354:
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $67
    ldh [$8D], a
    ld a, $63
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_412F
    xor a
    ld [$C187], a
    call $2B96
    call $0AA7
    call $2B78
    ld hl, $42E8
    ld e, $05
    call $07A9
    call Call_001_4B7D
    ld a, [$C187]
    and a
    jr z, jr_001_638F

    ldh [$8E], a
    ld a, [$C186]
    ldh [$8D], a

jr_001_638F:
    call Call_001_410A
    ret


Call_001_6393:
    call Call_001_412F
    call $2B96
    call $0AA7
    ld hl, $FFB1
    set 1, [hl]
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld hl, $FF93
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$FF90]
    add $06
    cp $10
    jr nc, jr_001_63DD

    ld [$FF9A], a
    ld a, [$FF92]
    ld [$FF9C], a
    ld a, [$FF8F]
    ld [$FF9B], a
    ld a, [$FF91]
    ld [$FF9D], a
    ld a, [$FF94]
    ld h, a
    ld a, [$FF93]
    ld l, a
    ld a, h
    ld [$FF9F], a
    ld a, l
    ld [$FF9E], a
    ret


jr_001_63DD:
    and $0F
    ld [$FF9A], a
    ld a, [$FF92]
    inc a
    ld [$FF9C], a
    ld a, [$FF8F]
    ld [$FF9B], a
    ld a, [$FF91]
    ld [$FF9D], a
    ld a, [$FF94]
    ld h, a
    ld a, [$FF93]
    ld l, a
    ld a, [$C6CF]
    ld e, a
    ld d, $00
    add hl, de
    ld a, h
    ld [$FF9F], a
    ld a, l
    ld [$FF9E], a
    ret


Jump_001_640D:
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $20
    ldh [$8D], a
    ld a, $64
    ldh [$8E], a
    jp Jump_001_634D


Jump_001_6420:
    call Call_001_6393
    ld a, [$C9CC]
    bit 4, a
    jp nz, Jump_001_552E

    bit 5, a
    jp nz, Jump_001_5468

    bit 6, a
    jp nz, Jump_001_55F4

    bit 7, a
    jp nz, Jump_001_53CA

    ld a, [$C9C6]
    cp $01
    jr nz, jr_001_6465

    ld a, [$C9C7]
    ld b, a
    ld a, [$C6D2]
    add b
    ld [$C6D2], a
    ld a, [$C9C8]
    ld b, a
    ld a, [$C6D3]
    add b
    ld [$C6D3], a
    xor a
    ld [$C9C6], a
    ld hl, $4372
    ld e, $05
    call $07A9
    jr jr_001_6470

jr_001_6465:
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E

jr_001_6470:
    call Call_001_4B7D
    call Call_001_6479
    jp Jump_001_634D


Call_001_6479:
    ld a, [$C9CD]
    bit 0, a
    ret z

    ldh a, [$8C]
    and $03
    cp $00
    jr z, jr_001_6493

    cp $03
    jr z, jr_001_6496

    cp $01
    jr z, jr_001_6499

    cp $02
    jr z, jr_001_649C

jr_001_6493:
    jp Jump_001_4CFB


jr_001_6496:
    jp Jump_001_4C08


jr_001_6499:
    jp Jump_001_4C59


jr_001_649C:
    jp Jump_001_4CAA


    ret


Call_001_64A0:
    ld a, [$FF94]
    ld h, a
    ld a, [$FF93]
    ld l, a
    ld b, $A0
    ld a, [hl]
    cp b
    jr nz, jr_001_64B4

    ld e, $FD
    ld d, $00
    jr jr_001_64FE

jr_001_64B4:
    inc b
    cp b
    jr nz, jr_001_64BE

    ld e, $FE
    ld d, $02
    jr jr_001_64FE

jr_001_64BE:
    inc b
    cp b
    jr nz, jr_001_64C8

    ld e, $00
    ld d, $03
    jr jr_001_64FE

jr_001_64C8:
    inc b
    cp b
    jr nz, jr_001_64D2

    ld e, $02
    ld d, $02
    jr jr_001_64FE

jr_001_64D2:
    inc b
    cp b
    jr nz, jr_001_64DC

    ld e, $03
    ld d, $00
    jr jr_001_64FE

jr_001_64DC:
    inc b
    cp b
    jr nz, jr_001_64E6

    ld e, $02
    ld d, $FE
    jr jr_001_64FE

jr_001_64E6:
    inc b
    cp b
    jr nz, jr_001_64F0

    ld e, $00
    ld d, $FD
    jr jr_001_64FE

jr_001_64F0:
    inc b
    cp b
    jr nz, jr_001_64FA

    ld e, $FE
    ld d, $FE
    jr jr_001_64FE

jr_001_64FA:
    ld e, $00
    ld d, $00

jr_001_64FE:
    ld [$C9CA], a
    ld a, [$C6D2]
    add d
    ld [$C6D2], a
    ld a, [$C6D3]
    add e
    ld [$C6D3], a
    ret


    ld a, [$C9C6]
    cp $01
    ret nz

    ld a, [$C9C7]
    ld b, a
    ld a, [$C6D2]
    add b
    ld [$C6D2], a
    ld a, [$C9C8]
    ld b, a
    ld a, [$C6D3]
    add b
    ld [$C6D3], a
    xor a
    ld [$C9C6], a
    ret


    ld a, [$FF9F]
    ld h, a
    ld a, [$FF9E]
    ld l, a
    ld b, $A8
    ld a, [hl]
    cp b
    jr nz, jr_001_6545

    ld e, $FF
    ld d, $00
    jr jr_001_6567

jr_001_6545:
    inc b
    cp b
    jr nz, jr_001_654F

    ld e, $00
    ld d, $01
    jr jr_001_6567

jr_001_654F:
    inc b
    cp b
    jr nz, jr_001_6559

    ld e, $01
    ld d, $00
    jr jr_001_6567

jr_001_6559:
    inc b
    cp b
    jr nz, jr_001_6563

    ld e, $00
    ld d, $FF
    jr jr_001_6567

jr_001_6563:
    ld e, $00
    ld d, $00

jr_001_6567:
    ld a, [$C6D2]
    add d
    ld [$C6D2], a
    ld a, [$C6D3]
    add e
    ld [$C6D3], a
    ret


    call Call_001_4AF8
    ldh a, [$B2]
    bit 3, a
    ret z

    ldh a, [$94]
    ld d, a
    ldh a, [$93]
    ld e, a
    ld a, [$C9D0]
    cp e
    ret nz

    ld a, [$C9D1]
    cp d
    ret nz

    ldh a, [$8B]
    ld h, a
    ldh a, [$8A]
    ld l, a
    ld bc, $0005
    add hl, bc
    ld bc, $C9D2
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ret


Call_001_65A8:
    call Call_001_412F
    call $2B96
    call $0AA7
    call $2B78
    call $2B96
    call $0AA7
    call $2B78
    ld a, $00
    ldh [$97], a
    call Call_001_65D3
    ld hl, $42E8
    ld e, $05
    call $07A9
    call Call_001_666F
    call Call_001_410A
    ret


Call_001_65D3:
    ld a, [$C18E]
    ld h, a
    ld a, [$C18F]
    ld l, a
    ld a, [$FF91]
    cp h
    jr z, jr_001_661D

    dec a
    cp h
    jr z, jr_001_65E9

    inc a
    inc a
    cp h
    ret nz

jr_001_65E9:
    ld a, [$FF92]
    cp l
    ret nz

    ld a, [$FF91]
    dec a
    cp h
    jr z, jr_001_660B

    inc a
    inc a
    cp h
    ret nz

    ld a, [$FF8F]
    add $07
    cp $10
    ret c

    sub $0F
    ld b, a
    ld a, [$C18C]
    cp b
    ret nc

    jr jr_001_6657

jr_001_660B:
    ld a, [$FF8F]
    sub $07
    cp $F0
    ret c

    sub $F0
    ld b, a
    ld a, [$C18C]
    cp b
    ret c

    jr jr_001_6657

jr_001_661D:
    ld a, [$FF92]
    cp l
    jp z, Jump_001_6657

    dec a
    cp l
    jr z, jr_001_663E

    inc a
    inc a
    cp l
    ret nz

    ld a, [$FF90]
    add $03
    cp $10
    ret c

    sub $0F
    ld b, a
    ld a, [$C18D]
    cp b
    ret nc

    jr jr_001_664E

jr_001_663E:
    ld a, [$FF90]
    sub $0F
    cp $F0
    ret c

    sub $F0
    ld b, a
    ld a, [$C18D]
    cp b
    ret c

jr_001_664E:
    ld a, $01
    ld [$C9C6], a
    ld [$FF99], a
    ret


Jump_001_6657:
jr_001_6657:
    ld a, [$FF90]
    ld b, a
    ld a, [$C18D]
    cp b
    jr c, jr_001_6669

    jr z, jr_001_664E

    sub $02
    cp b
    jr c, jr_001_664E

    ret


jr_001_6669:
    add $09
    cp b
    jr nc, jr_001_664E

    ret


Call_001_666F:
    ld a, [$FF99]
    cp $01
    ret nz

    ld a, [$C6D2]
    ld [$C9C7], a
    ld a, [$C6D3]
    ld [$C9C8], a
    xor a
    ld [$FF99], a
    ret


    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [$FF94]
    ld h, a
    ld a, [$FF93]
    ld l, a
    ld a, [$C9D6]
    ld [hl], a
    ld a, e
    res 5, a
    ldh [$8C], a
    ret


    ldh a, [$B2]
    bit 1, a
    ret z

    ld a, [$FF94]
    ld h, a
    ld a, [$FF93]
    ld l, a
    ld a, [hl]
    cp $00
    ld a, [$FF8F]
    ld a, [$FF90]
    ld a, [$FF93]
    ld a, [$FF92]
    ld a, [$FF91]
    ld a, [$C6D2]
    cp $00
    jr z, jr_001_66CD

    sub $05
    jr c, jr_001_66CB

    jr jr_001_6706

jr_001_66CB:
    jr jr_001_6706

jr_001_66CD:
    ld a, [$C6D3]
    cp $00
    jr z, jr_001_66D6

    jr jr_001_6706

jr_001_66D6:
    ld a, [$C9D6]
    cp h
    jr nz, jr_001_66E4

    ld b, a
    ld a, [$C9D7]
    cp l
    jr z, jr_001_6706

    ld c, a

jr_001_66E4:
    ld a, [bc]
    ld a, [$C9D6]
    cp $A9
    jr nz, jr_001_66F0

    ld [hl], $AB
    jr jr_001_6706

jr_001_66F0:
    cp $AB
    jr nz, jr_001_66F8

    ld [hl], $A9
    jr jr_001_6706

jr_001_66F8:
    cp $A8
    jr nz, jr_001_6700

    ld [hl], $AA
    jr jr_001_6706

jr_001_6700:
    cp $AA
    jr nz, jr_001_6706

    ld [hl], $A8

jr_001_6706:
    ldh a, [$8C]
    set 5, a
    ldh [$8C], a
    ret


    ldh a, [$B2]
    bit 1, a
    ret z

    ld a, [$FF94]
    ld h, a
    ld a, [$FF93]
    ld l, a
    ld a, [hl]
    cp $00
    ret z

    ld a, [hl]
    ld [$C9D6], a
    ld a, $00
    ld [hl], a
    ldh a, [$8C]
    set 5, a
    ldh [$8C], a
    ret


    ld hl, $C738
    ld a, [$C737]

jr_001_6732:
    dec a
    cp $00
    jr z, jr_001_673A

    inc hl
    jr jr_001_6732

jr_001_673A:
    ld a, [$C955]
    ld d, $00
    bit 6, a
    jr nz, jr_001_6762

    inc d
    bit 4, a
    jr nz, jr_001_6762

    inc d
    bit 7, a
    jr nz, jr_001_6762

    inc d
    bit 5, a
    jr nz, jr_001_6762

    inc d
    bit 0, a
    jr nz, jr_001_6762

    inc d
    bit 1, a
    jr nz, jr_001_6762

    inc d
    bit 2, a
    jr nz, jr_001_6762

    ret


jr_001_6762:
    ld a, [hl]
    cp d
    jr z, jr_001_676F

jr_001_6766:
    xor a
    ld [$C747], a
    inc a
    ld [$C737], a
    ret


jr_001_676F:
    ld a, [$C737]
    ld e, a
    ld a, [$C736]
    cp e
    jr c, jr_001_6766

    jr z, jr_001_6781

    ld a, e
    inc a
    ld [$C737], a
    ret


jr_001_6781:
    ld a, $01
    ld [$C747], a
    ret


    call Call_001_4B1C
    call Call_001_67B9
    xor a
    cp b
    ret z

    ld a, [$C9D9]
    ld [$C9D8], a
    ld a, [$C9CB]
    cp $00
    ret nz

    ldh a, [$B2]
    bit 1, a
    ret z

    ld a, [$FF8B]
    ld h, a
    ld a, [$FF8A]
    ld l, a
    inc hl
    ld a, $4B
    ld [hl+], a
    ld a, $69
    ld [hl+], a
    ret


jr_001_67B1:
    ld b, $01
    ld a, $FF
    ld [$C9D9], a
    ret


Call_001_67B9:
    ld a, [$FF94]
    ld d, a
    ld a, [$FF93]
    ld e, a
    ld a, [$C18E]
    ld h, a
    ld a, [$C18F]
    ld l, a
    ld a, [$FF91]
    cp h
    jr z, jr_001_67D9

    ld a, [$FF92]
    cp l
    jp z, Jump_001_68A0

    ld b, $00
    ret


jr_001_67D9:
    ld h, l
    ld a, [$FF92]
    ld c, a
    cp h
    jr c, jr_001_6841

    jr z, jr_001_67B1

jr_001_67E3:
    ld a, $02
    ld [$C9D9], a
    ld a, [$C86A]
    ld b, a
    ld a, e
    sub b
    jr c, jr_001_67F3

    ld e, a
    jr jr_001_67F5

jr_001_67F3:
    dec d
    ld e, a

jr_001_67F5:
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld b, $00
    ld a, [de]
    cp $00
    jr z, jr_001_683A

    cp $08
    ret z

    cp $09
    ret z

    cp $0C
    ret z

    cp $C0
    ret z

    cp $C1
    ret z

    push hl
    ld hl, $C12E
    cp $04
    jr nz, jr_001_681E

    bit 1, [hl]
    jr nz, jr_001_6837

jr_001_681E:
    inc hl
    cp $05
    jr nz, jr_001_6827

    bit 1, [hl]
    jr nz, jr_001_6837

jr_001_6827:
    inc hl
    cp $06
    jr nz, jr_001_6830

    bit 1, [hl]
    jr nz, jr_001_6837

jr_001_6830:
    inc hl
    cp $07
    jr jr_001_6839

    bit 1, [hl]

jr_001_6837:
    pop hl
    ret


jr_001_6839:
    pop hl

jr_001_683A:
    inc b
    dec c
    ld a, c
    cp h
    ret z

    jr jr_001_67E3

Jump_001_6841:
jr_001_6841:
    ld a, $00
    ld [$C9D9], a
    ld a, [$C86A]
    ld b, a
    ld a, e
    add b
    jr c, jr_001_6851

    ld e, a
    jr jr_001_6853

jr_001_6851:
    inc d
    ld e, a

jr_001_6853:
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld b, $00
    ld a, [de]
    cp $00
    jr z, jr_001_6898

    cp $08
    ret z

    cp $09
    ret z

    cp $0C
    ret z

    cp $C0
    ret z

    cp $C1
    ret z

    push hl
    ld hl, $C12E
    cp $04
    jr nz, jr_001_687C

    bit 1, [hl]
    jr nz, jr_001_6895

jr_001_687C:
    inc hl
    cp $05
    jr nz, jr_001_6885

    bit 1, [hl]
    jr nz, jr_001_6895

jr_001_6885:
    inc hl
    cp $06
    jr nz, jr_001_688E

    bit 1, [hl]
    jr nz, jr_001_6895

jr_001_688E:
    inc hl
    cp $07
    jr jr_001_6897

    bit 1, [hl]

jr_001_6895:
    pop hl
    ret


jr_001_6897:
    pop hl

jr_001_6898:
    inc b
    inc c
    ld a, c
    cp h
    ret z

    jp Jump_001_6841


Jump_001_68A0:
    ld a, [$FF91]
    ld c, a
    cp h
    jr c, jr_001_68F9

jr_001_68A7:
    ld a, $03
    ld [$C9D9], a
    dec de
    dec c
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld b, $00
    ld a, [de]
    cp $00
    jr z, jr_001_68F3

    cp $08
    ret z

    cp $09
    ret z

    cp $0C
    ret z

    cp $C0
    ret z

    cp $C1
    ret z

    push hl
    ld hl, $C12E
    cp $04
    jr nz, jr_001_68D7

    bit 1, [hl]
    jr nz, jr_001_68F0

jr_001_68D7:
    inc hl
    cp $05
    jr nz, jr_001_68E0

    bit 1, [hl]
    jr nz, jr_001_68F0

jr_001_68E0:
    inc hl
    cp $06
    jr nz, jr_001_68E9

    bit 1, [hl]
    jr nz, jr_001_68F0

jr_001_68E9:
    inc hl
    cp $07
    jr jr_001_68F2

    bit 1, [hl]

jr_001_68F0:
    pop hl
    ret


jr_001_68F2:
    pop hl

jr_001_68F3:
    inc b
    ld a, c
    cp h
    ret z

    jr jr_001_68A7

jr_001_68F9:
    ld a, $01
    ld [$C9D9], a
    inc de
    inc c
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld b, $00
    ld a, [de]
    cp $00
    jr z, jr_001_6945

    cp $08
    ret z

    cp $09
    ret z

    cp $0C
    ret z

    cp $C0
    ret z

    cp $C1
    ret z

    push hl
    ld hl, $C12E
    cp $04
    jr nz, jr_001_6929

    bit 1, [hl]
    jr nz, jr_001_6942

jr_001_6929:
    inc hl
    cp $05
    jr nz, jr_001_6932

    bit 1, [hl]
    jr nz, jr_001_6942

jr_001_6932:
    inc hl
    cp $06
    jr nz, jr_001_693B

    bit 1, [hl]
    jr nz, jr_001_6942

jr_001_693B:
    inc hl
    cp $07
    jr jr_001_6944

    bit 1, [hl]

jr_001_6942:
    pop hl
    ret


jr_001_6944:
    pop hl

jr_001_6945:
    inc b
    ld a, c
    cp h
    ret z

    jr jr_001_68F9

    call Call_001_412F
    ld a, h
    ld [$FFA7], a
    ld a, l
    ld [$FFA6], a
    ld de, $000E
    add hl, de
    ld a, [hl+]
    ldh [$A8], a
    ld a, [hl+]
    ldh [$A9], a
    ld a, [hl+]
    ldh [$AA], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    call $0AA7
    call $2B78
    call $2B96
    call $0AA7
    call $2B78
    call Call_001_4B43
    ld hl, $42E8
    ld e, $05
    call $07A9
    ld a, $F8
    ldh [$8D], a
    ld a, $4A
    ldh [$8E], a
    call Call_001_410A
    ret


    call Call_001_4AF8
    ld a, $C8
    ldh [$97], a
    ret


    call Call_001_412F
    call $2B96
    call $0AA7
    call $2B78
    call $2B96
    call $0AA7
    call $2B78
    call Call_001_410A
    ret


Call_001_69B2:
    ld a, [$C955]
    bit 0, a
    ret z

    ld a, [hl]
    cp $00
    ret nz

    ld a, $01
    ld [$C12B], a
    xor a
    ld [$C12A], a
    ld a, h
    ld [$C191], a
    ld a, l
    ld [$C190], a
    ld hl, $C18E
    ld a, b
    ld [hl+], a
    ld [hl], c
    pop hl
    ld a, $19
    ldh [$A8], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $EF
    ldh [$A9], a
    ld a, $46
    ldh [$AA], a
    ld a, $B2
    ldh [$8D], a
    ld a, $6E
    ldh [$8E], a
    jp Jump_001_634D


Jump_001_69F3:
    ld a, $03
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $69
    ldh [$A9], a
    ld a, $73
    ldh [$AA], a
    ld a, $12
    ldh [$8D], a
    ld a, $6A
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 7, a
    jp nz, Jump_001_6A20

    jp Jump_001_6B7F


Jump_001_6A20:
    bit 5, a
    jr z, jr_001_6A27

    jp Jump_001_6A51


jr_001_6A27:
    bit 4, a
    jr z, jr_001_6A2E

    jp Jump_001_6AB4


jr_001_6A2E:
    ld a, $01
    ld [$C6D3], a
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    ld a, [$C6D3]
    and a
    jp nz, Jump_001_634D

Jump_001_6A48:
    call Call_001_4D4C
    call Call_001_69B2
    jp Jump_001_634D


Jump_001_6A51:
    ld a, $01
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $75
    ldh [$A9], a
    ld a, $73
    ldh [$AA], a
    ld a, $70
    ldh [$8D], a
    ld a, $6A
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 5, a
    jr nz, jr_001_6A7D

    jp Jump_001_6B7F


jr_001_6A7D:
    ld e, $00
    bit 6, a
    jr z, jr_001_6A87

    ld e, $FF
    jr jr_001_6A8D

jr_001_6A87:
    bit 7, a
    jr z, jr_001_6A8D

    ld e, $01

jr_001_6A8D:
    ld a, $FF
    ld [$C6D2], a
    ld a, e
    ld [$C6D3], a
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    ld a, [$C6D3]
    and a
    jp nz, Jump_001_634D

Jump_001_6AAB:
    call Call_001_4D6A
    call Call_001_69B2
    jp Jump_001_634D


Jump_001_6AB4:
    ld a, $02
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $81
    ldh [$A9], a
    ld a, $73
    ldh [$AA], a
    ld a, $D3
    ldh [$8D], a
    ld a, $6A
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 4, a
    jr nz, jr_001_6AE0

    jp Jump_001_6B7F


jr_001_6AE0:
    ld e, $00
    bit 6, a
    jr z, jr_001_6AEA

    ld e, $FF
    jr jr_001_6AF0

jr_001_6AEA:
    bit 7, a
    jr z, jr_001_6AF0

    ld e, $01

jr_001_6AF0:
    ld a, $01
    ld [$C6D2], a
    ld a, e
    ld [$C6D3], a
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    ld a, [$C6D3]
    and a
    jp nz, Jump_001_634D

Jump_001_6B0E:
    call Call_001_4D85
    call Call_001_69B2
    jp Jump_001_634D


Jump_001_6B17:
    ld a, $00
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $5D
    ldh [$A9], a
    ld a, $73
    ldh [$AA], a
    ld a, $36
    ldh [$8D], a
    ld a, $6B
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 6, a
    jr nz, jr_001_6B43

    jp Jump_001_6B7F


jr_001_6B43:
    bit 5, a
    jr z, jr_001_6B4A

    jp Jump_001_6A51


jr_001_6B4A:
    bit 4, a
    jr z, jr_001_6B51

    jp Jump_001_6AB4


jr_001_6B51:
    ld a, $FF
    ld [$C6D3], a
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    ld a, [$C6D3]
    and a
    jp nz, Jump_001_634D

Jump_001_6B6B:
    call Call_001_4DA0
    call Call_001_69B2
    jp Jump_001_634D


    xor a
    ld [$C12B], a
    ld a, $01
    ld [$C12A], a
    jr jr_001_6B8A

Jump_001_6B7F:
    ld a, $8A
    ldh [$8D], a
    ld a, $6B
    ldh [$8E], a
    jp Jump_001_634D


jr_001_6B8A:
    call Call_001_6393
    ld a, [$C9CC]
    bit 4, a
    jp nz, Jump_001_6AB4

    bit 5, a
    jp nz, Jump_001_6A51

    bit 6, a
    jp nz, Jump_001_6B17

    bit 7, a
    jp nz, Jump_001_69F3

    call Call_001_4B7D
    ldh a, [$8C]
    and $03
    cp $00
    jr z, jr_001_6BBB

    cp $03
    jr z, jr_001_6BBE

    cp $01
    jr z, jr_001_6BC1

    cp $02
    jr z, jr_001_6BC4

jr_001_6BBB:
    jp Jump_001_6B6B


jr_001_6BBE:
    jp Jump_001_6A48


jr_001_6BC1:
    jp Jump_001_6AAB


jr_001_6BC4:
    jp Jump_001_6B0E


    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$A227]
    ld [$C9CF], a
    xor a
    ld [$0000], a
    jp Jump_001_6BF3


Jump_001_6BE0:
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $F3
    ldh [$8D], a
    ld a, $6B
    ldh [$8E], a
    jp Jump_001_634D


Jump_001_6BF3:
    call Call_001_6393
    ld a, [$C9CC]
    bit 4, a
    jp nz, Jump_001_6D18

    bit 5, a
    jp nz, Jump_001_6CA8

    bit 6, a
    jp nz, Jump_001_6D88

    bit 7, a
    jp nz, Jump_001_6C47

    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    ld a, [$C9CD]
    bit 0, a
    call nz, Call_001_6C26
    jp Jump_001_634D


Call_001_6C26:
    ldh a, [$8C]
    and $03
    cp $00
    jr z, jr_001_6C3A

    cp $03
    jr z, jr_001_6C3D

    cp $01
    jr z, jr_001_6C40

    cp $02
    jr z, jr_001_6C43

jr_001_6C3A:
    jp Jump_001_4CFB


jr_001_6C3D:
    jp Jump_001_4C08


jr_001_6C40:
    jp Jump_001_4C59


jr_001_6C43:
    jp Jump_001_4CAA


    ret


Jump_001_6C47:
    ld a, $03
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $11
    ldh [$A8], a
    ld a, $E0
    ldh [$A9], a
    ld a, $73
    ldh [$AA], a
    ld a, $6A
    ldh [$8D], a
    ld a, $6C
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 7, a
    jp nz, Jump_001_6C82

    ld a, $99
    ld [$FFA9], a
    ld a, $73
    ld [$FFAA], a
    jp Jump_001_6BE0


Jump_001_6C82:
    bit 5, a
    jr z, jr_001_6C89

    jp Jump_001_6CA8


jr_001_6C89:
    bit 4, a
    jr z, jr_001_6C90

    jp Jump_001_6D18


jr_001_6C90:
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    ld a, [$C6D3]
    and a
    call z, Call_001_4C08
    jp Jump_001_634D


Jump_001_6CA8:
    ld a, $01
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $11
    ldh [$A8], a
    ld a, $03
    ldh [$A9], a
    ld a, $74
    ldh [$AA], a
    ld a, $CB
    ldh [$8D], a
    ld a, $6C
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 5, a
    jr nz, jr_001_6CE2

    ld a, $A5
    ld [$FFA9], a
    ld a, $73
    ld [$FFAA], a
    jp Jump_001_6BE0


jr_001_6CE2:
    ldh a, [$AF]
    and $01
    jp z, Jump_001_6D00

    ld a, [$C9CC]
    bit 6, a
    jr z, jr_001_6CF7

    ld a, $FF
    ld [$C6D3], a
    jr jr_001_6D00

jr_001_6CF7:
    bit 7, a
    jr z, jr_001_6D00

    ld a, $01
    ld [$C6D3], a

Jump_001_6D00:
jr_001_6D00:
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    ld a, [$C6D2]
    and a
    call z, Call_001_4C59
    jp Jump_001_634D


Jump_001_6D18:
    ld a, $02
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $11
    ldh [$A8], a
    ld a, $26
    ldh [$A9], a
    ld a, $74
    ldh [$AA], a
    ld a, $3B
    ldh [$8D], a
    ld a, $6D
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 4, a
    jr nz, jr_001_6D52

    ld a, $B1
    ld [$FFA9], a
    ld a, $73
    ld [$FFAA], a
    jp Jump_001_6BE0


jr_001_6D52:
    ldh a, [$AF]
    and $01
    jp z, Jump_001_6D70

    ld a, [$C9CC]
    bit 6, a
    jr z, jr_001_6D67

    ld a, $FF
    ld [$C6D3], a
    jr jr_001_6D70

jr_001_6D67:
    bit 7, a
    jr z, jr_001_6D70

    ld a, $01
    ld [$C6D3], a

Jump_001_6D70:
jr_001_6D70:
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    ld a, [$C6D2]
    and a
    call z, Call_001_4CAA
    jp Jump_001_634D


Jump_001_6D88:
    ld a, $00
    ldh [$8C], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $11
    ldh [$A8], a
    ld a, $BD
    ldh [$A9], a
    ld a, $73
    ldh [$AA], a
    ld a, $AB
    ldh [$8D], a
    ld a, $6D
    ldh [$8E], a
    jp Jump_001_634D


    call Call_001_6393
    ld a, [$C9CC]
    bit 6, a
    jr nz, jr_001_6DC2

    ld a, $8D
    ld [$FFA9], a
    ld a, $73
    ld [$FFAA], a
    jp Jump_001_6BE0


jr_001_6DC2:
    bit 5, a
    jr z, jr_001_6DC9

    jp Jump_001_6CA8


jr_001_6DC9:
    bit 4, a
    jr z, jr_001_6DD0

    jp Jump_001_6D18


jr_001_6DD0:
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    call Call_001_4B7D
    ld a, [$C6D3]
    and a
    call z, Call_001_4CFB
    jp Jump_001_634D


    call Call_001_65A8
    ret


    and a
    ret z

    ld a, [$C188]
    and a
    ret nz

    call Call_001_401E
    inc hl
    ld a, $83
    ld [hl+], a
    ld a, $6F
    ld [hl+], a
    ret


    call Call_001_412F
    xor a
    ld [$C187], a
    call $2B96
    call $0AA7
    call $2B78
    call $2B96
    call $0AA7
    call $2B78
    ld hl, $42E8
    ld e, $05
    call $07A9
    ld a, [$C187]
    and a
    jr z, jr_001_6E2C

    ldh [$8E], a
    ld a, [$C186]
    ldh [$8D], a

jr_001_6E2C:
    call Call_001_410A
    ret


    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    rlca
    ld [$0908], sp
    add hl, bc
    nop
    ld l, [hl]
    ret z

    nop
    ld l, [hl]
    ret z

    ld bc, $C870
    ld bc, $C870
    ld bc, $C870
    ld [bc], a
    ld [hl], d
    ret z

    ld [bc], a
    ld [hl], d
    ret z

    inc bc
    ld [hl], h
    ret z

    inc b
    halt
    ret z

    dec b
    ld a, b
    ret z

    ld b, $7A
    ret z

    ld b, $7A
    ret z

    rlca
    ld a, h
    ret z

    rlca
    ld a, h
    ret z

    ld [$C87E], sp
    ld [$C87E], sp
    call Call_001_412F
    call $2B96
    call $0AA7
    call $2B78
    ld hl, $42E8
    ld e, $05
    call $07A9
    call Call_001_410A
    ret


    call Call_001_4AF8
    call Call_001_4B7D
    ret


    call Call_001_4B1C
    call Call_001_6ECF
    and a
    ret z

    ld a, [$C188]
    and a
    ret nz

    ld a, [$C734]
    cp $01
    ret z

    ld a, $01
    ld [$C735], a
    call Call_001_401E
    inc hl
    ld a, $83
    ld [hl+], a
    ld a, $6F
    ld [hl+], a
    ret


    call Call_001_4B1C
    call Call_001_7038
    and a
    ret z

    ld a, $01
    ld [$C188], a
    ld a, [$FF8B]
    ld h, a
    ld a, [$FF8A]
    ld l, a
    inc hl
    ld a, $83
    ld [hl+], a
    ld a, $6F
    ld [hl+], a
    ret


Call_001_6ECF:
    ldh a, [$B2]
    bit 2, a
    jp z, Jump_001_6F81

    ld a, [$C188]
    cp $00
    jp nz, Jump_001_6F81

    ld a, [$C6F2]
    cp $00
    jp nz, Jump_001_6F81

    ld a, [$C71A]
    and a
    jp nz, Jump_001_6F81

    ld a, [$FF8B]
    ld h, a
    ld a, [$FF8A]
    ld l, a
    ld de, $0005
    add hl, de
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    ld hl, $C189
    add hl, de
    ld a, [hl+]
    ld d, a
    ld e, [hl]
    push bc
    ld h, d
    ld l, e
    ld a, c
    cpl
    ld c, a
    ld a, b
    cpl
    ld b, a
    inc bc
    add hl, bc
    ld a, h
    or l
    pop bc
    jr z, jr_001_6F7E

    ld a, [$C189]
    and $03
    cp $00
    jr z, jr_001_6F3A

    cp $01
    jr z, jr_001_6F50

    cp $02
    jr z, jr_001_6F68

    ld a, b
    cp d
    jr nz, jr_001_6F81

    add $00
    cp d
    jr c, jr_001_6F81

    ld a, c
    sub $02
    cp e
    jr nc, jr_001_6F81

    add $02
    cp e
    jr c, jr_001_6F81

    jr jr_001_6F7E

jr_001_6F3A:
    ld a, b
    cp d
    jr nz, jr_001_6F81

    add $00
    cp d
    jr c, jr_001_6F81

    ld a, c
    sub $01
    cp e
    jr nc, jr_001_6F81

    add $02
    cp e
    jr c, jr_001_6F81

    jr jr_001_6F7E

jr_001_6F50:
    ld a, b
    sub $01
    cp d
    jr nc, jr_001_6F81

    add $02
    cp d
    jr c, jr_001_6F81

    ld a, c
    add $01
    cp e
    jr c, jr_001_6F81

    sub $03
    cp e
    jr nc, jr_001_6F81

    jr jr_001_6F7E

jr_001_6F68:
    ld a, b
    sub $01
    cp d
    jr z, jr_001_6F73

    add $02
    cp d
    jr nz, jr_001_6F81

jr_001_6F73:
    ld a, c
    add $01
    cp e
    jr c, jr_001_6F81

    sub $03
    cp e
    jr nc, jr_001_6F81

jr_001_6F7E:
    ld a, $01
    ret


Jump_001_6F81:
jr_001_6F81:
    xor a
    ret


    call Call_001_412F
    ld a, h
    ld [$FFA7], a
    ld a, l
    ld [$FFA6], a
    ld de, $000E
    add hl, de
    ld a, [hl+]
    ldh [$A8], a
    ld a, [hl+]
    ldh [$A9], a
    ld a, [hl+]
    ldh [$AA], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    call $0AA7
    call $2B78
    call $2B96
    call $0AA7
    call $2B78
    call Call_001_4B43
    ld hl, $42E8
    ld e, $05
    call $07A9
    ld a, $F8
    ldh [$8D], a
    ld a, $4A
    ldh [$8E], a
    call Call_001_410A
    call Call_001_6FCC
    ret


Call_001_6FCC:
    xor a
    ldh [$B1], a
    ldh [$B2], a
    ld a, [$C189]
    and $03
    cp $00
    jr z, jr_001_6FE6

    cp $03
    jr z, jr_001_6FF2

    cp $01
    jr z, jr_001_6FFE

    cp $02
    jr z, jr_001_700A

jr_001_6FE6:
    ld a, $97
    ld [$C194], a
    ld a, $5D
    ld [$C195], a
    jr jr_001_7014

jr_001_6FF2:
    ld a, $A1
    ld [$C194], a
    ld a, $5D
    ld [$C195], a
    jr jr_001_7014

jr_001_6FFE:
    ld a, $AB
    ld [$C194], a
    ld a, $5D
    ld [$C195], a
    jr jr_001_7014

jr_001_700A:
    ld a, $B5
    ld [$C194], a
    ld a, $5D
    ld [$C195], a

jr_001_7014:
    ld a, $14
    ld [$C193], a
    ld a, $D3
    ld [$C196], a
    ld a, $0A
    ld [$C197], a
    ld a, $31
    ld [$C19D], a
    ld a, $15
    ld [$C19E], a
    ld a, $F8
    ld [$C18A], a
    ld a, $4A
    ld [$C18B], a
    ret


Call_001_7038:
    ldh a, [$B2]
    bit 2, a
    jp z, Jump_001_70C1

    ld a, [$C188]
    cp $00
    jp nz, Jump_001_70C1

    ld a, [$C6F2]
    cp $00
    jp nz, Jump_001_70C1

    ld a, [$C71A]
    and a
    jp nz, Jump_001_70C1

    ld a, [$FF8B]
    ld h, a
    ld a, [$FF8A]
    ld l, a
    ld de, $0005
    add hl, de
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    ld a, [$FF9D]
    ld d, a
    ld a, [$FF9C]
    ld e, a
    push bc
    ld h, d
    ld l, e
    ld a, c
    cpl
    ld c, a
    ld a, b
    cpl
    ld b, a
    inc bc
    add hl, bc
    ld a, h
    or l
    pop bc
    jp z, Jump_001_70BE

    ld a, [$C189]
    and $03
    cp $00
    jr z, jr_001_709D

    cp $01
    jr z, jr_001_70A8

    cp $02
    jr z, jr_001_70B3

    ld a, d
    cp b
    jp nz, Jump_001_70C1

    ld a, c
    dec a
    cp e
    jp nz, Jump_001_70C1

    jp Jump_001_70BE


jr_001_709D:
    ld a, d
    cp b
    jr nz, jr_001_70C1

    ld a, c
    inc a
    cp e
    jr nz, jr_001_70C1

    jr jr_001_70BE

jr_001_70A8:
    ld a, e
    cp c
    jr nz, jr_001_70C1

    ld a, b
    inc a
    cp d
    jr nz, jr_001_70C1

    jr jr_001_70BE

jr_001_70B3:
    ld a, e
    cp c
    jr nz, jr_001_70C1

    ld a, b
    dec a
    cp d
    jr nz, jr_001_70C1

    jr jr_001_70BE

Jump_001_70BE:
jr_001_70BE:
    ld a, $01
    ret


Jump_001_70C1:
jr_001_70C1:
    xor a
    ret


    call Call_001_412F
    ld hl, $4191
    ld e, $04
    call $07A9
    ld a, $DA
    ldh [$8D], a
    ld a, $70
    ldh [$8E], a
    call Call_001_410A
    ret


    call Call_001_412F
    call Call_001_410A
    ret


    call Call_001_4AF8
    ld a, [$C6F2]
    cp $00
    ret nz

    ldh a, [$B2]
    bit 1, a
    ret z

    ldh a, [$91]
    ld e, a
    ld a, [$FF9D]
    cp e
    ret nz

    ldh a, [$92]
    ld e, a
    ld a, [$FF9C]
    cp e
    ret nz

    ld a, [$C9CB]
    cp $00
    ret nz

    ld a, [$FF8B]
    ld h, a
    ld a, [$FF8A]
    ld l, a
    inc hl
    ld a, $83
    ld [hl+], a
    ld a, $6F
    ld [hl+], a
    ret


    call Call_001_412F
    call $2B96
    call $0AA7
    call $2B78
    call $2B96
    call $0AA7
    call $2B78
    ld hl, $4372
    ld e, $05
    call $07A9
    call Call_001_422E
    ld hl, $FFB1
    set 1, [hl]
    call Call_001_410A
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
