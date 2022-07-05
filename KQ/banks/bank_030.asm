; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $030", ROMX[$4000], BANK[$30]

Call_030_4000:
    ld b, $00

Call_030_4002:
    ld hl, $0000
    rrca
    jr nc, jr_030_4009

    add hl, bc

jr_030_4009:
    sla c
    rl b
    rrca
    jr nc, jr_030_4011

    add hl, bc

jr_030_4011:
    sla c
    rl b
    rrca
    jr nc, jr_030_4019

    add hl, bc

jr_030_4019:
    sla c
    rl b
    rrca
    jr nc, jr_030_4021

    add hl, bc

jr_030_4021:
    sla c
    rl b
    rrca
    jr nc, jr_030_4029

    add hl, bc

jr_030_4029:
    sla c
    rl b
    rrca
    jr nc, jr_030_4031

    add hl, bc

jr_030_4031:
    sla c
    rl b
    rrca
    jr nc, jr_030_4039

    add hl, bc

jr_030_4039:
    sla c
    rl b
    rrca
    ret nc

    add hl, bc
    ret


Call_030_4041:
    push de
    ld e, l
    ld d, h
    ld hl, $0000
    xor a
    ld [$DFF9], a
    ld [$DFFA], a
    ld [$DFFB], a
    ld [$DFFC], a
    ld a, $10

jr_030_4056:
    ld [$DFFD], a
    rr b
    rr c
    jr nc, jr_030_4088

    add hl, de
    push hl
    ld a, [$DFFB]
    ld l, a
    ld a, [$DFF9]
    adc l
    ld [$DFF9], a
    ld a, [$DFFC]
    ld l, a
    ld a, [$DFFA]
    adc l
    ld [$DFFA], a
    pop hl
    ld a, [$DFF9]
    adc $00
    ld [$DFF9], a
    ld a, [$DFFA]
    adc $00
    ld [$DFFA], a

jr_030_4088:
    sla e
    rl d
    ld a, [$DFFB]
    rla
    ld [$DFFB], a
    ld a, [$DFFC]
    rla
    ld [$DFFC], a
    ld a, [$DFFD]
    dec a
    jr nz, jr_030_4056

    ld a, [$DFF9]
    ld c, a
    ld a, [$DFFA]
    ld b, a
    pop de
    ret


Call_030_40AA:
    push de
    call Call_030_40B0
    pop de
    ret


Call_030_40B0:
    call Call_030_418D
    jr z, jr_030_411A

    ld a, b
    or c
    jr z, jr_030_4121

    ld a, l
    ld [$DFF9], a
    ld a, h
    ld [$DFFA], a
    ld a, c
    ld [$DFFB], a
    ld a, b
    ld [$DFFC], a
    ld e, $0F
    ld a, $01
    ld [$DFFD], a
    xor a
    ld [$DFFE], a
    ld a, [$DFF9]
    ld l, a
    ld a, [$DFFA]
    ld h, a
    ld a, [$DFFB]

jr_030_40DF:
    ld c, a
    ld a, [$DFFC]
    ld b, a
    call Call_030_418D
    jr c, jr_030_4128

    ld a, [$DFFB]
    sla a
    ld [$DFFB], a
    ld a, [$DFFC]
    rla
    ld [$DFFC], a
    ld a, [$DFFD]
    sla a
    ld [$DFFD], a
    ld a, [$DFFE]
    rla
    ld [$DFFE], a
    ld a, e
    dec a
    ld e, a
    bit 7, a
    jr z, jr_030_40DF

    ld hl, $0000
    ld a, [$DFF9]
    ld c, a
    ld a, [$DFFA]
    ld b, a
    ret


jr_030_411A:
    ld hl, $0001
    ld bc, $0000
    ret


jr_030_4121:
    ld hl, $0000
    ld bc, $0000
    ret


jr_030_4128:
    xor a
    ld e, a
    ld d, a

jr_030_412B:
    ld a, [$DFFE]
    srl a
    ld [$DFFE], a
    ld b, a
    ld a, [$DFFD]
    rra
    ld [$DFFD], a
    or b
    jr z, jr_030_4182

    ld a, [$DFFC]
    srl a
    ld [$DFFC], a
    ld a, [$DFFB]
    rra
    ld [$DFFB], a
    ld a, [$DFF9]
    ld l, a
    ld a, [$DFFA]
    ld h, a
    ld a, [$DFFB]
    ld c, a
    ld a, [$DFFC]
    ld b, a
    call Call_030_418D
    jr c, jr_030_412B

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a
    add hl, bc
    ld a, l
    ld [$DFF9], a
    ld a, h
    ld [$DFFA], a
    ld a, [$DFFD]
    ld l, a
    ld a, [$DFFE]
    ld h, a
    add hl, de
    ld e, l
    ld d, h
    jr jr_030_412B

jr_030_4182:
    ld l, e
    ld h, d
    ld a, [$DFF9]
    ld c, a
    ld a, [$DFFA]
    ld b, a
    ret


Call_030_418D:
    ld a, h
    cp b
    ret c

    jr z, jr_030_4195

    xor a
    inc a
    ret


jr_030_4195:
    ld a, l
    cp c
    ret


Call_030_4198:
    ld a, h
    cp d
    ret c

    jr z, jr_030_41A0

    xor a
    inc a
    ret


jr_030_41A0:
    ld a, l
    cp e
    ret


Call_030_41A3:
    ld a, [$DF03]
    rla
    jr c, jr_030_41AB

    xor $E9

jr_030_41AB:
    ld [$DF03], a
    ret


Call_030_41AF:
    call Call_030_41A3
    cp b
    ret c

jr_030_41B4:
    sub b
    cp b
    jr nc, jr_030_41B4

    ret


Call_030_41B9:
    push bc
    inc h
    dec h
    jr z, jr_030_41DB

    ld b, h
    call Call_030_41AF
    cp h
    ld h, a
    jr nc, jr_030_41D4

    ld a, [$DF03]
    rla
    jr c, jr_030_41CE

    xor $E9

jr_030_41CE:
    ld [$DF03], a
    ld l, a
    pop bc
    ret


jr_030_41D4:
    ld b, l
    call Call_030_41AF
    ld l, a
    pop bc
    ret


jr_030_41DB:
    inc l
    dec l
    jr nz, jr_030_41E1

    pop bc
    ret


jr_030_41E1:
    ld b, a
    call Call_030_41AF
    ld l, a
    pop bc
    ret


Call_030_41E8:
    xor a
    ld [$DFA6], a

Call_030_41EC:
    xor a
    ld [$DF74], a

jr_030_41F0:
    push af
    ld [$DF9C], a
    ld c, a
    ld b, $00
    xor a
    ld hl, $DF9D
    add hl, bc
    ld [hl], a
    sla c
    ld hl, $DF7E
    add hl, bc
    ld [hl+], a
    ld [hl], a
    call Call_030_48DD
    call Call_030_4710
    pop af
    inc a
    cp $04
    jr nz, jr_030_41F0

    ret


    xor a
    ld [$DF02], a
    call Call_030_41E8
    xor a
    ldh [rNR52], a
    ret


    di
    push af
    push hl
    ld a, [$DF04]
    cp $81
    jr nz, jr_030_423A

    ld hl, $FF4D
    bit 7, [hl]
    jr z, jr_030_423A

    call Call_030_4288
    pop hl
    pop af
    call Call_030_423C
    call Call_030_4288
    ret


jr_030_423A:
    pop hl
    pop af

Call_030_423C:
    di
    ld [$DF75], a
    ld a, l
    ld [$DF76], a
    ld a, h
    ld [$DF77], a
    ld a, e
    ld [$DFFE], a
    push bc
    call Call_030_41EC
    xor a
    ldh [rNR52], a
    ld a, $80
    ldh [rNR52], a
    ld a, $77
    ldh [rNR50], a
    ld a, $33
    ldh [rNR51], a
    ld a, $C0
    ldh [rNR11], a
    ldh [rNR21], a
    ld a, $F0
    ldh [rNR12], a
    ldh [rNR22], a
    ld a, $FF
    ldh [rNR13], a
    ldh [rNR23], a
    ld a, $87
    ldh [rNR14], a
    ldh [rNR24], a
    pop bc
    call $3C6B
    xor a
    ldh [rNR52], a
    ld a, $80
    ldh [rNR52], a
    ld a, $77
    ldh [rNR50], a
    ei
    ret


Call_030_4288:
    ld hl, $FF4D
    set 0, [hl]
    ldh a, [rIE]
    ld l, a
    xor a
    ldh [rIE], a
    ldh [rIF], a
    ld a, $30
    ldh [rP1], a
    stop
    nop
    ld a, l
    ldh [rIE], a
    ret


    push hl
    push af
    push bc
    push de
    xor a
    ld [$DF9F], a
    ld b, $FF
    ld c, $02
    ld hl, $0000
    inc a
    ld [$DFFE], a
    call Call_030_4E4D
    pop de
    ld hl, $DF7B
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop bc
    pop af
    pop hl
    ld [$DF75], a
    call $3BB3
    bit 7, h
    jr z, jr_030_42D3

    ld h, $40
    ld a, [$DF75]
    inc a
    ld [$DF75], a

jr_030_42D3:
    push hl
    call Call_030_4BD2
    ld a, $50
    ld [$DF74], a
    ld hl, $DF78
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld [hl], $00
    ld hl, $DF76
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, $FF
    ld c, $02
    call $50E6
    ld a, $0F
    ld [$DFF6], a
    ld hl, $DF0F
    set 5, [hl]
    ret


    ld hl, $DF74
    bit 4, [hl]
    ret z

    jp $3B7C


    push hl
    push bc
    cp $07
    jr nc, jr_030_430F

    ld a, $07

jr_030_430F:
    and $07
    ld b, a
    swap b
    or b
    ld hl, $FF24
    ld c, [hl]
    ld [hl], a
    ld a, c
    and $07
    pop bc
    pop hl
    ret


    push bc
    cp $0F
    jr c, jr_030_4327

    ld a, $0F

jr_030_4327:
    and $0F
    ld b, a
    ld a, [$DFF8]
    ld c, a
    and $F0
    or b
    ld [$DFF8], a
    ld a, c
    and $0F
    pop bc
    ret


    push bc
    cp $0F
    jr c, jr_030_4340

    ld a, $0F

jr_030_4340:
    and $0F
    swap a
    ld b, a
    ld a, [$DFF8]
    ld c, a
    and $0F
    or b
    ld [$DFF8], a
    ld a, c
    swap a
    and $0F
    pop bc
    ret


    ld a, [$DF02]
    cp $F5
    ret nz

    ld hl, $DF1D
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, [$DF74]
    bit 7, a
    call nz, $56CB
    call Call_030_5006
    call Call_030_53DE
    call Call_030_551E
    ld a, [$DF74]
    bit 0, a
    call nz, Call_030_43E0
    ld bc, $0003
    jr jr_030_43B3

jr_030_4384:
    ld hl, $DF09
    add hl, bc
    bit 5, [hl]
    jr z, jr_030_43B3

    res 5, [hl]
    set 6, [hl]
    push bc
    sla c
    ld d, $00
    ld e, c
    ld hl, $DF15
    add hl, de
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $DF1D
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld c, l
    ld b, h
    ld hl, $DF23
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    pop bc
    call Call_030_5184

jr_030_43B3:
    ld hl, $DF0D
    add hl, bc
    bit 5, [hl]
    jr z, jr_030_43CF

    res 5, [hl]
    ld hl, $DFF4
    add hl, bc
    ld a, [hl]
    ld hl, $DF70
    add hl, bc
    ld e, [hl]
    call Call_030_5632
    push bc
    call Call_030_5070
    pop bc

jr_030_43CF:
    dec c
    bit 7, c
    jr z, jr_030_4384

    ld a, [$DF04]
    bit 0, a
    call nz, Call_030_4524
    call Call_030_57FC
    ret


Call_030_43E0:
Jump_030_43E0:
    ld hl, $DF76
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $DF7B
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld b, h
    ld c, l
    bit 7, d
    jr nz, jr_030_4425

    ld a, [$DF7A]
    ld h, a
    ld l, $00
    call Call_030_418D
    jr nc, jr_030_441D

jr_030_43FE:
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a
    sla h
    add hl, bc
    ld b, h
    ld c, l
    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a
    ld hl, $DF76
    ld a, e
    ld [hl+], a
    ld [hl], d

jr_030_441D:
    ld hl, $DF7B
    ld a, c
    ld [hl+], a
    ld [hl], b
    jr jr_030_443C

jr_030_4425:
    ld a, [$DF78]
    ld l, a
    bit 7, b
    jr nz, jr_030_4431

    ld a, b
    cp l
    jr nc, jr_030_4436

jr_030_4431:
    ld h, l
    ld l, $00
    jr jr_030_43FE

jr_030_4436:
    ld hl, $DF7B
    ld a, c
    ld [hl+], a
    ld [hl], b

jr_030_443C:
    ld a, [$DF75]
    cp b
    jr nz, jr_030_444B

    ld a, [$DF7D]
    ld c, a
    ld a, [$DF31]
    cp c
    ret z

jr_030_444B:
    ld a, b
    ld [$DF75], a
    ld c, a
    ld d, $00
    srl a
    ld e, a
    ld a, $07
    sub e
    ld e, a
    ld hl, $4470
    add hl, de
    push hl
    xor a
    ldh [rNR30], a
    ld a, [$DF31]
    ld [$DF7D], a
    ld hl, $FF30
    ld [hl+], a
    ld b, a
    swap a
    or b
    ret


    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    bit 0, c
    jr z, jr_030_447E

    and $F0
    ld [hl+], a

jr_030_447E:
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $80
    ldh [rNR30], a
    xor a
    ldh [rNR31], a
    ld a, $20
    ldh [rNR32], a
    ld a, [$DF14]
    or $80
    ldh [rNR34], a
    and $7F
    ldh [rNR34], a
    ret


Call_030_449D:
    xor a
    ld hl, $FF24
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $80
    ld [hl], a
    ld c, $10
    ld a, $08
    ld [c], a
    ld a, $80
    inc c
    ld [c], a
    xor a
    inc c
    ld [c], a
    inc c
    ld [c], a
    ld a, $80
    inc c
    ld [c], a
    ld c, $16
    ld a, $80
    ld [c], a
    xor a
    inc c
    ld [c], a
    inc c
    ld [c], a
    ld a, $80
    inc c
    ld [c], a
    ld c, $1A
    xor a
    ld [c], a
    inc c
    ld [c], a
    inc c
    ld [c], a
    inc c
    ld [c], a
    ld a, $80
    inc c
    ld [c], a
    xor a
    ld hl, $FF30
    ld b, $10

jr_030_44DB:
    ld [hl+], a
    dec b
    jr nz, jr_030_44DB

    ld c, $20
    ld [c], a
    inc c
    ld [c], a
    inc c
    ld [c], a
    ld a, $80
    inc c
    ld [c], a
    ld a, $77
    ldh [rNR50], a
    ret


    push af
    ld hl, $DF00
    ld de, $00FF

jr_030_44F6:
    ld a, d
    or e
    jr z, jr_030_44FF

    xor a
    ld [hl+], a
    dec de
    jr jr_030_44F6

jr_030_44FF:
    ld a, c
    ld [$DF01], a
    call Call_030_449D
    ld a, $FF
    ld [$DF11], a
    pop af
    ld [$DF04], a
    ld a, $30
    ld [$DF00], a
    ld a, $DE
    ld [$DF03], a
    ld a, $FF
    ld [$DFF8], a
    ld a, $F5
    ld [$DF02], a
    ret


Call_030_4524:
    ld de, $0002
    ld hl, $DF07

jr_030_452A:
    ld a, [hl]
    and a
    jr z, jr_030_4536

    dec [hl]

jr_030_452F:
    dec hl
    dec e
    bit 7, e
    jr z, jr_030_452A

    ret


jr_030_4536:
    push hl
    ld hl, $DF09
    add hl, de
    bit 6, [hl]
    jr nz, jr_030_4542

    pop hl
    jr jr_030_452F

jr_030_4542:
    res 6, [hl]
    ld hl, $455A
    add hl, de
    ld c, [hl]
    ld b, $C0
    ld a, e
    cp $02
    jr nz, jr_030_4552

    ld b, $00

jr_030_4552:
    ld a, [c]
    and b
    ld [c], a
    pop hl
    ld [hl], $3C
    jr jr_030_452F

    ld de, $1B16
    ld a, [$DF9C]
    ld e, a
    ld d, $00
    ld hl, $DF9D
    add hl, de
    xor a
    ld [hl], a
    ld hl, $DFA1
    add hl, de
    ld [hl], a
    ld hl, $DF9A
    ld [hl+], a
    ld [hl], a
    ret


    inc bc
    ld hl, $DF9A
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


    ld a, [$DF9C]
    ld d, $00
    ld e, a
    sla e
    ld hl, $DF92
    add hl, de
    ld a, [hl+]
    or [hl]
    jr nz, jr_030_45AB

    push bc
    inc bc
    ld a, [bc]
    inc bc
    and a
    jr z, jr_030_45A5

    push hl
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [bc]
    ld l, a
    call Call_030_41B9
    inc hl
    ld b, l
    ld a, h
    pop hl
    ld [hl-], a
    ld [hl], b
    pop bc
    jr jr_030_45AB

jr_030_45A5:
    ld a, [bc]
    ld [hl-], a
    inc bc
    ld a, [bc]
    ld [hl], a
    pop bc

jr_030_45AB:
    ld a, [bc]
    and a
    jr z, jr_030_45CE

    ld hl, $DF0D
    srl e
    add hl, de
    sla e
    bit 7, [hl]
    jr z, jr_030_45CE

    ld hl, $DF93
    add hl, de
    xor a
    ld [hl-], a
    ld [hl], a

jr_030_45C2:
    ld hl, $DF9A
    ld a, [hl]
    add $04
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret


jr_030_45CE:
    ld hl, $DF92
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    dec de
    ld a, d
    ld [hl-], a
    ld [hl], e
    or e
    jr nz, jr_030_45E4

    ld hl, $0003
    add hl, bc
    ld a, [hl-]
    or [hl]
    jr nz, jr_030_45C2

jr_030_45E4:
    dec bc
    ld hl, $DF9A
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


    ld a, [$DF9C]
    ld e, a
    ld d, $00
    ld hl, $DF8E
    add hl, de
    ld a, [bc]
    and a
    jr z, jr_030_4609

    cp [hl]
    jr nz, jr_030_4609

    ld [hl], $00
    ld hl, $DF9A
    inc bc
    inc bc
    inc bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


jr_030_4609:
    inc [hl]
    inc bc
    ld l, c
    ld h, b
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    add hl, de
    ld a, l
    ld d, h
    ld hl, $DF9A
    ld [hl+], a
    ld [hl], d
    ret


Jump_030_461A:
    ld l, c
    ld h, b
    ld a, [hl+]
    ld e, [hl]
    ld d, a
    ld hl, $5A88
    add hl, de
    ld a, l
    ld d, h
    ld hl, $DF9A
    ld [hl+], a
    ld [hl], d
    ret


    ld hl, $5A79
    ld e, l
    ld d, h
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    push hl
    ld a, [bc]
    ld e, a
    ld d, $00
    sla e
    rl d
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    add hl, de
    ld a, [$DF9C]
    ld c, a
    call Call_030_54EC
    ld hl, $DF9A
    inc [hl]
    ret nz

    inc hl
    inc [hl]
    ret


Call_030_4652:
    ld a, [bc]
    ld e, a
    inc bc
    ld hl, $DF9A
    ld a, c
    ld [hl+], a
    ld [hl], b

Jump_030_465B:
    ld a, [$DF9C]
    ld c, a
    ld b, $00
    ld hl, $DF09
    add hl, bc
    bit 1, [hl]
    ld a, [$DFF8]
    jr z, jr_030_466E

    swap a

jr_030_466E:
    and $0F
    call Call_030_5632
    ld hl, $DFF4
    add hl, bc
    ld [hl], a
    ld hl, $DF0D
    add hl, bc
    set 5, [hl]
    ret


    call Call_030_4652
    ld hl, $DF70
    add hl, bc
    ld a, [hl]
    call Call_030_5632
    ld hl, $DF2F
    add hl, bc
    ld [hl], a
    ret


Call_030_4690:
    push af
    ld hl, sp+$01
    ld c, l
    ld b, h
    call Call_030_469A
    pop af
    ret


Call_030_469A:
    ld a, [$DF9C]
    ld e, a
    ld d, $00
    ld hl, $46DA
    add hl, de
    ld a, [hl]
    ld d, a
    ld hl, $DF11
    ld a, [hl]
    and d
    ld [hl], a
    push hl
    ld a, [bc]
    ld c, a
    ld b, d
    ld a, e
    add a
    add e
    add c
    ld e, a
    ld d, $00
    ld hl, $46DE
    add hl, de
    ld a, [hl]
    ld c, a
    pop hl
    or [hl]
    ld [hl], a
    ld a, [$DF9C]
    ld e, a
    ld hl, $DF09
    add hl, de
    bit 7, [hl]
    jr z, jr_030_46D2

    ldh a, [rNR51]
    and b
    or c
    ldh [rNR51], a

jr_030_46D2:
    ld hl, $DF9A
    inc [hl]
    ret nz

    inc hl
    inc [hl]
    ret


    xor $DD
    cp e
    ld [hl], a
    db $10
    ld de, $2001
    ld [hl+], a
    ld [bc], a
    ld b, b
    ld b, h
    inc b
    add b
    adc b
    ld [$5F0A], sp
    inc bc
    ld hl, $DF9A
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, [$DF9C]
    cp $02
    ld c, a
    ld a, e
    jp nc, $50E6

    cp $FF
    jp nz, $50E6

    ld b, $00
    ld hl, $DFF4
    add hl, bc
    ld a, [hl]
    srl a
    srl a
    jp $50E6


Call_030_4710:
    ld a, [$DF9C]
    ld c, a
    jp Jump_030_505C


    ld a, [$DF9C]
    cp $03
    jp z, Jump_030_47DB

    ld e, a
    ld d, $00
    ld hl, $DF09
    set 5, [hl]
    sla e
    ld l, c
    ld h, b
    ld a, [hl+]
    bit 7, a
    jr nz, jr_030_4769

    and a
    jr nz, jr_030_4746

    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    sub c
    ld b, a
    call Call_030_41AF
    add c
    ld c, [hl]
    ld hl, $DF16
    add hl, de
    ld [hl-], a
    ld [hl], c
    jp Jump_030_47DB


jr_030_4746:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    ld hl, $DF16
    add hl, de
    ld a, [hl]
    add c
    bit 7, a
    jr z, jr_030_4756

    xor a

jr_030_4756:
    ld c, a
    ld a, b
    add [hl]
    sub c
    ld b, a
    call Call_030_41AF
    sub [hl]
    pop hl
    ld c, [hl]
    ld hl, $DF24
    add hl, de
    ld [hl-], a
    ld [hl], c
    jr jr_030_47DB

jr_030_4769:
    and $7F
    jr nz, jr_030_4789

    ld a, [hl+]
    cpl
    inc a
    ld b, a
    ld c, $00
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    add hl, bc
    call Call_030_41B9
    ld a, b
    cpl
    inc a
    ld b, a
    add hl, bc
    ld a, l
    ld b, h
    ld hl, $DF15
    add hl, de
    ld [hl+], a
    ld [hl], b
    jr jr_030_47DB

jr_030_4789:
    ld a, [hl+]
    ld b, a
    ld c, $00
    push hl
    ld hl, $DF15
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    push bc
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    ld hl, $DF15
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    pop de
    ld c, e
    ld b, d
    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a
    add hl, de
    call Call_030_41B9
    add hl, bc
    ld c, l
    ld b, h
    ld a, [$DF9C]
    sla a
    ld e, a
    ld d, $00
    ld hl, $DF15
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a
    add hl, bc
    ld a, l
    ld b, h
    ld hl, $DF23
    add hl, de
    ld [hl+], a
    ld [hl], b

Jump_030_47DB:
jr_030_47DB:
    ld hl, $DF9A
    ld a, [hl]
    add $04
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret


    ld a, [$DF9C]
    cp $03
    jr z, jr_030_482E

    ld e, a
    ld d, $00
    ld hl, $DF09
    add hl, de
    set 5, [hl]
    ld l, c
    ld h, b
    ld a, [hl+]
    and a
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    jr nz, jr_030_480B

    sla e
    ld hl, $DF23
    add hl, de
    ld a, c
    ld [hl+], a
    ld [hl], b
    jr jr_030_482E

jr_030_480B:
    sla e
    ld hl, $DF23
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $DF15
    add hl, de
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    bit 7, a
    jr z, jr_030_4827

    add $54
    ld [hl], a
    jr jr_030_482E

jr_030_4827:
    cp $54
    jr c, jr_030_482E

    sub $54
    ld [hl], a

jr_030_482E:
    ld hl, $DF9A
    ld a, [hl]
    add $03
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret


    ld a, [bc]
    inc bc
    ld d, a
    ld a, [bc]
    inc bc
    ld e, a
    ld hl, $DF9A
    ld a, c
    ld [hl+], a
    ld [hl], b

Jump_030_4846:
    ld a, [$DF9C]
    cp $03
    ret z

    ld c, a
    ld b, $00
    ld hl, $DF09
    add hl, bc
    set 5, [hl]
    sla c
    ld hl, $DF15
    add hl, bc
    ld a, e
    sub [hl]
    inc hl
    ld e, a
    ld a, d
    sbc [hl]
    ld hl, $DF24
    add hl, bc
    ld [hl-], a
    ld [hl], e
    ret


    ld l, c
    ld h, b
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [$DF9C]
    cp $03
    jr nc, jr_030_487D

    or [hl]
    call Call_030_52D6

jr_030_487D:
    ld hl, $DF9A
    ld a, [hl]
    add $05
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret


    ld l, c
    ld h, b
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld b, a
    ld a, l
    ld [$DF9A], a
    ld a, h
    ld [$DF9B], a
    ld a, [$DF9C]
    ld c, a
    cp $03
    jp c, Jump_030_536D

    ret


    ld l, c
    ld h, b
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [$DF9C]
    cp $03
    jr nc, jr_030_48B8

    or [hl]
    call Call_030_539C

jr_030_48B8:
    ld hl, $DF9A
    ld a, [hl]
    add $05
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret


    ld a, [bc]
    inc bc
    ld e, a
    ld hl, $DF9A
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, e
    ldh [rNR43], a
    ret


    ld a, [bc]
    inc bc
    ld hl, $DF9A
    ld [hl], c
    inc hl
    ld [hl], b
    cp $FF
    jr nz, jr_030_48E0

Call_030_48DD:
Jump_030_48DD:
    ld a, [$DF9C]

jr_030_48E0:
    sla a
    ld e, a
    ld d, $00
    ld hl, $DF86
    add hl, de
    ld a, [hl+]
    ld c, a
    or [hl]
    jr z, jr_030_4900

    ld a, [hl]
    ld hl, $DF9B
    ld [hl-], a
    ld [hl], c
    ld hl, $DF7F
    add hl, de
    ld [hl-], a
    ld [hl], c
    ld hl, $DF92
    xor a
    ld [hl+], a
    ld [hl], a

jr_030_4900:
    srl e
    ld hl, $DF0D
    add hl, de
    ld a, [hl]
    or $80
    ld [hl], a
    ld c, a
    and $17
    ret z

    bit 4, a
    ret nz

    bit 2, a
    jr z, jr_030_491C

    ld a, b
    and $F0
    or $08
    ld [hl], a
    ret


jr_030_491C:
    ld a, c
    and $F0
    or $08
    ld [hl], a
    bit 0, c
    ld bc, $0001
    jr z, jr_030_492C

    ld bc, $0003

jr_030_492C:
    ld hl, $DF58
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld hl, $DF68
    add hl, de
    ld [hl+], a
    ld [hl], b
    ret


    ld a, [$DF9C]
    ld e, a
    ld d, $00
    ld hl, $DF0D
    add hl, de
    ld a, [hl]
    and $F0
    or $28
    ld [hl], a
    ld hl, $DF70
    add hl, de
    ld [hl], $0F
    sla e
    ld hl, $DF60
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], $0F
    ld l, c
    ld h, b
    ld a, [hl+]
    ld c, [hl]
    ld hl, $DF69
    add hl, de
    ld [hl-], a
    ld [hl], c
    ld hl, $DF9A
    ld a, [hl]
    add $02
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret


    ld a, [bc]
    ld e, a
    inc bc
    ld hl, $DF9A
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, [$DF9C]
    cp $02
    ret z

    ld c, e
    ld e, a
    ld d, $00
    ld hl, $DF0D
    add hl, de
    ld a, [hl]
    and $F0
    or $20
    ld [hl], a
    ld hl, $DF2F
    add hl, de
    ld a, [hl]
    swap a
    or c
    bit 3, a
    jr z, jr_030_49A2

    ld hl, $DFF4
    add hl, de
    ld [hl], $00

jr_030_49A2:
    ld hl, $49A9
    add hl, de
    ld c, [hl]
    ld [c], a
    ret


    ld [de], a
    rla
    nop
    ld hl, $6069
    ld a, [hl+]
    ld [$DF78], a
    ld [$DF7C], a
    xor a
    ld [$DF7B], a
    ld a, [hl+]
    ld [$DF7A], a
    ld a, [hl+]
    ld [$DF77], a
    ld a, [hl+]
    ld [$DF76], a
    ld a, l
    ld [$DF9A], a
    ld a, h
    ld [$DF9B], a
    ld a, $FF
    ld [$DF75], a
    ld [$DF7D], a
    call Call_030_49E8
    ld a, $01
    ld [$DF74], a
    call Call_030_43E0
    ld a, $FF
    ld c, $02
    jp $50E6


Call_030_49E8:
    xor a
    ldh [rNR30], a
    ld hl, $FF39
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $80
    ldh [rNR30], a
    ret


    ld a, [$DF74]
    bit 0, a
    jr z, jr_030_4A1E

    ld l, c
    ld h, b
    ld a, [hl+]
    ld [$DF78], a
    ld a, [hl+]
    ld [$DF7A], a
    ld a, [hl+]
    ld [$DF77], a
    ld a, [hl+]
    ld [$DF76], a
    ld a, l
    ld [$DF9A], a
    ld a, h
    ld [$DF9B], a
    jp Jump_030_43E0


jr_030_4A1E:
    ld hl, $DF9A
    ld a, [hl]
    add $04
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret


    ld a, [bc]
    inc bc
    ld hl, $DF9A
    ld [hl], c
    inc hl
    ld [hl], b

jr_030_4A32:
    ld [$DF7C], a
    xor a
    ld [$DF7B], a
    ld [$DF78], a
    ld [$DF77], a
    ld [$DF76], a
    ld a, $0F
    ld [$DF7A], a
    ld a, $FF
    ld [$DF75], a
    ld [$DF7D], a
    call Call_030_49E8
    ld a, $01
    ld [$DF74], a
    call Call_030_43E0
    ld a, $FF
    ld c, $02
    jp $50E6


    ld a, [$DFF6]
    jr jr_030_4A32

    ld l, c
    ld h, b
    ld a, [hl+]
    ld e, [hl]
    ld d, a
    ld hl, $5A88
    add hl, de
    ld c, l
    ld b, h
    ld a, [$DF9C]
    sla a
    ld e, a
    ld d, $00
    ld hl, $DF86
    add hl, de
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $DF9A
    ld a, [hl]
    add $02
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret


    ld a, [$DF9C]
    sla a
    ld e, a
    ld d, $00
    ld hl, $DF86
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_030_4A9C:
    ld a, [$DF9C]
    ld e, a
    ld d, $00
    cp $02
    jr nz, jr_030_4AAE

    ld a, [$DF74]
    and $FE
    ld [$DF74], a

jr_030_4AAE:
    ld hl, $DF09
    add hl, de
    ld a, [hl]
    and $E2
    or $20
    ld [hl], a
    ret


    call Call_030_4A9C
    ld a, e
    cp $03
    ret z

    sla e
    xor a
    ld hl, $DF1D
    add hl, de
    ld [hl+], a
    ld [hl], a
    ret


    ld a, [bc]
    inc bc
    ld e, a
    ld d, $00
    ld hl, $4AE1
    add hl, de
    ld a, [$DF33]
    or [hl]
    ld [$DF33], a
    ld hl, $DF9A
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


    ld bc, $0402
    ld [$2010], sp
    ld b, b
    add b
    and $07
    ld e, a
    ld d, $00
    ld hl, $4AE1
    add hl, de
    ld a, [$DF33]
    ld e, a
    and [hl]
    ret z

    ld a, [hl]
    cpl
    ld d, a
    ld a, e
    and d
    ld [$DF33], a
    ld a, $01
    and a
    ret


    ld a, [$DF9C]
    sla a
    ld e, a
    ld d, $00
    ld hl, $DF16
    add hl, de

jr_030_4B10:
    ld a, [bc]
    inc bc
    ld e, a
    ld a, [hl]
    cp e
    jp nc, Jump_030_461A

    inc bc
    inc bc
    ld hl, $DF9A
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


    ld a, [$DF9C]
    ld e, a
    ld d, $00
    ld hl, $DFF4
    add hl, de
    jr jr_030_4B10

    ld a, [bc]
    ld e, a
    inc bc
    call Call_030_41A3
    cp e
    jp nc, Jump_030_461A

    inc bc
    inc bc
    ld hl, $DF9A
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


    ld a, [$DF9C]
    cp $02
    jr nz, jr_030_4B5E

    xor a
    ld [$DF74], a
    ld a, [bc]
    call Call_030_515A
    bit 0, e
    jr nz, jr_030_4B6A

    call Call_030_4B7E
    call Call_030_4BA9
    ld hl, $DF74
    set 7, [hl]

jr_030_4B5E:
    ld hl, $DF9A
    ld a, [hl]
    add $01
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret


jr_030_4B6A:
    call Call_030_4B7E
    xor a
    ld [$DF7B], a
    ld [$DF7C], a
    call Call_030_4BD2
    ld hl, $DF74
    set 6, [hl]
    jr jr_030_4B5E

Call_030_4B7E:
    ld [$DF75], a
    call $3BB3
    bit 7, h
    jr z, jr_030_4B91

    ld h, $40
    ld a, [$DF75]
    inc a
    ld [$DF75], a

jr_030_4B91:
    push hl
    ld hl, $DF78
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld [hl], $00
    ld hl, $DF76
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, $FF
    ld c, $02
    jp $50E6


Call_030_4BA9:
    ld hl, $DF0B
    set 5, [hl]
    ld hl, $DF19
    ld a, [$DF04]
    cp $81
    jr nz, jr_030_4BC3

    ldh a, [rKEY1]
    bit 7, a
    jr z, jr_030_4BC3

    ld de, $2A7B
    jr jr_030_4BC6

jr_030_4BC3:
    ld de, $2A88

jr_030_4BC6:
    ld a, e
    sub [hl]
    inc hl
    ld e, a
    ld a, d
    sbc [hl]
    ld hl, $DF28
    ld [hl-], a
    ld [hl], e
    ret


Call_030_4BD2:
    ld hl, $DF0B
    set 5, [hl]
    ld hl, $DF19
    ld de, $47B4
    ld a, e
    sub [hl]
    inc hl
    ld e, a
    ld a, d
    sbc [hl]
    ld hl, $DF28
    ld [hl-], a
    ld [hl], e
    ld a, [$DF04]
    cp $81
    jr nz, jr_030_4BFD

    ldh a, [rKEY1]
    bit 7, a
    jr z, jr_030_4BFD

    ld a, $07
    ldh [rTAC], a
    ld a, $80
    jr jr_030_4C03

jr_030_4BFD:
    ld a, $06
    ldh [rTAC], a
    ld a, $00

jr_030_4C03:
    ld [$DF08], a
    ldh [rTIMA], a
    ldh [rTMA], a
    ldh a, [rIF]
    and $1B
    ldh [rIF], a
    ldh a, [rIE]
    or $04
    ldh [rIE], a
    ret


    ld a, [$DF9C]
    cp $02
    ret nz

    xor a
    ld [$DF74], a
    ld a, [$5A84]
    and a
    jr z, jr_030_4C46

    ld b, a
    ld a, [$DF1A]
    cp b
    ret nc

    ld c, a
    ld hl, $5A82
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $5A79
    add hl, de
    ld b, $00
    add hl, bc
    ld a, [$5A80]
    and a
    ret z

    ld b, a
    ld a, [hl]
    cp b
    jr c, jr_030_4C51

    ret


jr_030_4C46:
    ld a, [$5A80]
    and a
    ret z

    ld b, a
    ld a, [$DF1A]
    cp b
    ret nc

jr_030_4C51:
    call Call_030_515A
    bit 0, e
    jr nz, jr_030_4C65

    call Call_030_4B7E
    ld hl, $DF74
    set 7, [hl]
    call Call_030_4BA9
    jr jr_030_4C77

jr_030_4C65:
    call Call_030_4B7E
    xor a
    ld [$DF7B], a
    ld [$DF7C], a
    call Call_030_4BD2
    ld hl, $DF74
    set 6, [hl]

jr_030_4C77:
    ld a, $FF
    ld c, $02
    jp $50E6


    ld a, [bc]
    inc bc
    ld d, a
    ld a, [bc]
    inc bc
    ld e, a
    ld hl, $DF9A
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, [$DF9C]
    cp $03
    ret z

    ld c, a
    ld b, $00
    ld hl, $DF09
    add hl, bc
    set 5, [hl]
    ld hl, $DFE0
    add hl, bc
    ld a, d
    add [hl]
    ld d, a
    sla c
    ld hl, $DF15
    add hl, bc
    ld a, e
    sub [hl]
    inc hl
    ld e, a
    ld a, d
    sbc [hl]
    ld hl, $DF24
    add hl, bc
    ld [hl-], a
    ld [hl], e
    ret


    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    inc bc
    ld hl, $DF9A
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, [$DF9C]
    ld c, a
    ld b, $00
    ld hl, $DFE4
    add hl, bc
    ld a, d
    ld d, [hl]
    ld hl, $DF09
    add hl, bc
    bit 1, [hl]
    push af
    ld hl, $DF9D
    add hl, bc
    ld a, [hl]
    ld hl, $DFF4
    add hl, bc
    ld c, e
    ld b, a
    pop af
    ld e, [hl]
    jr z, jr_030_4CED

    call Call_030_4F15
    ret z

    ld hl, $DF09
    add hl, bc
    set 1, [hl]
    jr jr_030_4CF1

jr_030_4CED:
    call Call_030_4F1A
    ret z

jr_030_4CF1:
    ld a, [$DF9C]
    cp c
    ret nz

    sla c
    ld hl, $DF7E
    add hl, bc
    ld a, [hl+]
    ld e, [hl]
    ld hl, $DF9A
    ld [hl+], a
    ld [hl], e
    ret


    ld l, c
    ld h, b
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, l
    ld [$DF9A], a
    ld a, h
    ld [$DF9B], a
    ld a, [$DF9C]
    cp $03
    ret nc

    push de
    push bc
    ld e, a
    sla e
    ld d, $00
    ld hl, $DF15
    add hl, de
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    pop hl
    add hl, bc
    ld c, l
    ld b, h
    push bc
    ld hl, $DF29
    add hl, de
    ld a, [hl+]
    ld b, [hl]
    ld hl, $DF15
    add hl, de
    ld [hl+], a
    ld [hl], b
    pop bc
    pop de
    ld a, [$DF9C]
    jp Jump_030_52D6


    ld a, [$DF9C]
    ld e, a
    ld d, $00
    ld hl, $DF0D
    add hl, de
    ld a, [hl]
    and $F0
    or $31
    ld [hl], a
    xor a
    ld hl, $DF70
    add hl, de
    ld [hl], $00
    sla e
    ld hl, $DF60
    add hl, de
    ld [hl+], a
    ld [hl], a
    ld l, c
    ld h, b
    ld a, [hl+]
    ld c, [hl]
    ld hl, $DF69
    add hl, de
    ld [hl-], a
    ld [hl], c
    ld hl, $DF9A
    ld a, [hl]
    add $02
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret


    ld a, [$DF9C]
    ld e, a
    ld d, $00
    ld hl, $DF9D
    add hl, de
    ld a, [bc]
    inc bc
    and a
    ld a, [bc]
    jr nz, jr_030_4D99

    ld e, a
    ld a, [hl]
    bit 7, e
    jr nz, jr_030_4D95

    add e
    jr nc, jr_030_4D99

    ld a, $FF
    jr jr_030_4D99

jr_030_4D95:
    sub e
    jr nc, jr_030_4D99

    xor a

jr_030_4D99:
    ld [hl], a
    ld hl, $DF9A
    ld a, [hl]
    add $02
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret


    ld e, l
    ld b, l
    adc c
    ld c, b
    ld l, b
    ld c, b
    and e
    ld c, b
    ld a, h
    ld b, l
    db $EC
    ld b, l
    ld a, [de]
    ld b, [hl]
    ld a, [hl-]
    ld c, b
    rst $20
    ld b, a
    ld d, d
    ld b, [hl]
    sbc d
    ld b, [hl]
    rla
    ld b, a
    ld [$1046], a
    ld b, a
    ld [hl], h
    ld b, l
    dec hl
    ld b, [hl]
    call nz, $3D48
    ld c, c
    pop de
    ld c, b
    ld [hl], e
    ld c, c
    ld a, [hl]
    ld c, h
    inc b
    ld c, e
    dec l
    ld c, e
    ld hl, $664B
    ld c, d
    adc h
    ld c, d
    jp z, $044A

    ld c, l
    ld a, b
    ld c, l
    xor l
    ld c, c
    ld a, [$9C49]
    ld c, d
    cp c
    ld c, d
    ld b, b
    ld c, e
    rla
    ld c, h
    ld e, l
    ld b, l
    ld a, [hl+]
    ld c, d
    ld h, c
    ld c, d
    or e
    ld c, h
    ld b, e
    ld c, l
    ld a, a
    ld b, [hl]
    ld a, b
    ld c, l

Call_030_4DFA:
    ld e, a
    ld a, d
    ld [$DFFE], a
    ld d, $00
    sla e
    rl d
    ld hl, $5A88
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl-]
    ld d, a
    ld hl, $5A88
    add hl, de
    ld a, [hl]
    cp $0E
    jr nz, jr_030_4E4D

    inc hl
    ld a, [hl+]
    bit 4, a
    jr z, jr_030_4E45

    and $80
    ld e, a
    ld a, [$DFA6]
    bit 6, a
    jr nz, jr_030_4E34

    set 6, a
    ld d, a
    ld a, c
    and $01
    sla a
    swap a
    or d
    ld [$DFA6], a

jr_030_4E34:
    ld d, a
    swap a
    srl a
    and $01
    or e
    ld c, a
    ld a, d
    xor $20
    ld [$DFA6], a
    jr jr_030_4E4D

jr_030_4E45:
    cp $FF
    jr nz, jr_030_4E4C

    ld a, $80
    or c

jr_030_4E4C:
    ld c, a

Call_030_4E4D:
jr_030_4E4D:
    bit 7, c
    jp nz, Jump_030_4EDE

    ld a, c
    cp $02
    jr nz, jr_030_4E79

    ld a, [$DF9F]
    ld e, a
    ld a, b
    cp e
    jr c, jr_030_4E79

    ld a, [$DF74]
    bit 6, a
    jr z, jr_030_4E75

    xor a
    ldh [rTAC], a
    ldh a, [rIE]
    and $1B
    ldh [rIE], a
    ldh a, [rIF]
    and $1B
    ldh [rIF], a

jr_030_4E75:
    xor a
    ld [$DF74], a

jr_030_4E79:
    call Call_030_4EDE
    ret z

    ld hl, $DF70
    add hl, bc
    ld [hl], $0F
    ld hl, $DF09
    add hl, bc
    ld [hl], a
    ld hl, $DF0D
    add hl, bc
    ld [hl], a
    sla c
    ld a, c
    cp $06
    jr z, jr_030_4EBF

    ld a, [$DFFE]
    and a
    jr nz, jr_030_4EB2

    ld hl, $DF15
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $DF23
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld hl, $DF29
    add hl, bc
    ld a, e
    ld [hl+], a
    ld [hl], d

jr_030_4EB2:
    xor a
    ld hl, $DF1D
    add hl, bc
    ld [hl+], a
    ld [hl], a
    ld hl, $DF23
    add hl, bc
    ld [hl+], a
    ld [hl], a

jr_030_4EBF:
    xor a
    ld hl, $DF15
    add hl, bc
    ld [hl+], a
    ld [hl], a
    srl c
    ld hl, $4EDA
    add hl, bc
    ld a, [$DF11]
    or [hl]
    ld [$DF11], a
    push bc
    call Call_030_505C
    pop bc
    rlca
    ret


    ld de, $4422
    adc b

Call_030_4EDE:
Jump_030_4EDE:
    push hl
    ld a, b
    res 7, c
    ld b, $00
    ld hl, $DF9D
    add hl, bc
    cp [hl]
    jr nc, jr_030_4EEE

    pop hl
    xor a
    ret


jr_030_4EEE:
    ld [hl], a
    pop hl
    ld a, l
    ld d, h
    sla c
    ld hl, $DF7E
    add hl, bc
    ld [hl+], a
    ld [hl], d
    xor a
    ld hl, $DF86
    add hl, bc
    ld [hl+], a
    ld [hl], a
    ld hl, $DF92
    add hl, bc
    ld [hl+], a
    ld [hl], a
    srl c
    ld hl, $DF8E
    add hl, bc
    ld [hl], a
    ld hl, $DFA1
    add hl, bc
    ld [hl], a
    rlca
    ret


Call_030_4F15:
    push de
    ld d, $01
    jr jr_030_4F1E

Call_030_4F1A:
    push de
    ld b, $00
    ld d, b

jr_030_4F1E:
    call Call_030_4DFA
    pop de
    ret z

    ld hl, $DF09
    add hl, bc
    res 1, [hl]
    set 5, [hl]
    ld hl, $DF0D
    add hl, bc
    set 5, [hl]
    ld hl, $DFF4
    add hl, bc
    ld [hl], e
    ld hl, $DF16
    sla c
    add hl, bc
    ld a, d
    ld [hl-], a
    ld [hl], $00
    srl c
    rlca
    ret


    ld hl, $5A7D
    cp [hl]
    jp nc, Jump_030_4FD6

    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld hl, $5A7B
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld de, $5A79
    add hl, de
    push bc
    ld a, [hl+]
    ld b, [hl]
    inc hl
    ld c, $00
    ld d, $01
    push hl
    call Call_030_4DFA
    pop hl
    jr z, jr_030_4FD5

    ld a, [hl+]
    ld d, a
    ld e, [hl]
    ld hl, $DF09
    add hl, bc
    set 1, [hl]
    set 5, [hl]
    ld hl, $DF0D
    add hl, bc
    set 5, [hl]
    ld hl, $DF16
    sla c
    add hl, bc
    ld a, d
    ld [hl-], a
    ld [hl], $00
    srl c
    ld a, e
    pop de
    bit 7, d
    jr nz, jr_030_4F94

    ld a, d

jr_030_4F94:
    and $0F
    push de
    ld e, a
    ld a, [$DFF8]
    swap a
    and $0F
    call Call_030_5632
    pop de
    ld hl, $DFF4
    add hl, bc
    ld [hl], a
    push bc
    ld a, c
    ld [$DF9C], a
    ld a, e
    cp $FF
    call nz, Call_030_4690
    ld a, [$DFA5]

jr_030_4FB6:
    inc a
    jr z, jr_030_4FB6

    ld hl, $DFA1
    cp [hl]
    jr z, jr_030_4FB6

    inc hl
    cp [hl]
    jr z, jr_030_4FB6

    inc hl
    cp [hl]
    jr z, jr_030_4FB6

    inc hl
    cp [hl]
    jr z, jr_030_4FB6

    ld [$DFA5], a
    ld hl, $DFA1
    pop bc
    add hl, bc
    ld [hl], a
    ret


jr_030_4FD5:
    pop bc

Jump_030_4FD6:
    xor a
    ret


Call_030_4FD8:
    and a
    ret z

    ld hl, $DFA1
    ld c, $00
    ld b, a

jr_030_4FE0:
    ld a, [hl+]
    cp b
    jr z, jr_030_4FEB

    inc c
    bit 2, c
    jr z, jr_030_4FE0

    xor a
    ret


jr_030_4FEB:
    ld a, c
    ld [$DF9C], a
    rlca
    ret


    call Call_030_4FD8
    jp nz, Jump_030_48DD

    ret


    call Call_030_4FD8
    jp nz, Jump_030_4846

    ret


    call Call_030_4FD8
    jp nz, Jump_030_465B

    ret


Call_030_5006:
    ld de, $0000

jr_030_5009:
    ld hl, $DF7E
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_030_502A

    push de
    ld a, e
    srl a
    ld [$DF9C], a
    call Call_030_5032
    pop de
    ld hl, $DF7E
    add hl, de
    ld a, [$DF9A]
    ld [hl+], a
    ld a, [$DF9B]
    ld [hl], a

jr_030_502A:
    ld a, e
    cp $06
    ret z

    inc e
    inc e
    jr jr_030_5009

Call_030_5032:
jr_030_5032:
    ld a, [hl+]
    cp $04
    push af
    ld c, l
    ld b, h
    ld hl, $DF9A
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $4DA6
    sla a
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_030_505B
    pop af
    ret z

    ld hl, $DF9A
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr nz, jr_030_5032

    ret


Call_030_505B:
    jp hl


Call_030_505C:
Jump_030_505C:
    ld b, $00
    ld hl, $DF09
    add hl, bc
    res 7, [hl]
    ld hl, $5156
    add hl, bc
    ldh a, [rNR51]
    and [hl]
    ldh [rNR51], a
    xor a
    ld b, $01

Call_030_5070:
    ld e, a
    ld a, c
    cp $02
    ld a, e
    jr z, jr_030_50AE

    ld d, $00
    ld e, c
    ld hl, $DF2F
    add hl, de
    ld [hl], a
    ld c, a
    ld hl, $50DA
    add hl, de
    bit 0, b
    ld b, c
    ld c, [hl]
    jr nz, jr_030_5093

    ld a, [c]
    and $0F
    swap b
    or b
    ld [c], a
    jr jr_030_5097

jr_030_5093:
    ld a, b
    swap a
    ld [c], a

jr_030_5097:
    ld hl, $50DE
    add hl, de
    ld c, [hl]
    ld hl, $DF12
    add hl, de
    ld a, e
    cp $03
    jr z, jr_030_50AA

    ld a, $80
    or [hl]
    ld [c], a
    ret


jr_030_50AA:
    ld a, $80
    ld [c], a
    ret


jr_030_50AE:
    and $0C
    ld d, a
    ld a, [$DF31]
    and $0C
    cp d
    ld a, e
    ld [$DF31], a
    ret z

    ld e, c
    ld c, a
    ld d, $00
    ld a, [$DF74]
    bit 0, a
    ret nz

    ld b, $00
    srl c
    srl c
    ld hl, $50E2
    add hl, bc
    ld b, [hl]
    ldh a, [rNR32]
    and $9F
    or b
    ldh [rNR32], a
    jr jr_030_5097

    ld [de], a
    rla
    inc e
    ld hl, $1914
    ld e, $23
    nop
    ld h, b
    ld b, b
    jr nz, jr_030_5146

    ld b, $00
    ld a, c
    cp $03
    jp z, Jump_030_5137

    cp $02
    jr z, jr_030_5115

    ld a, e
    cp $04
    jr nc, jr_030_5104

    ld hl, $5151
    add hl, bc
    ld l, [hl]
    ld h, $FF
    rrc e
    rrc e
    ld [hl], e

jr_030_5104:
    ld hl, $DF12
    add hl, bc
    ld a, [hl]
    ld hl, $5153
    add hl, bc
    ld l, [hl]
    or $80
    ld h, $FF
    ld [hl], a
    jr jr_030_5137

jr_030_5115:
    ld a, e
    cp $FF
    jr z, jr_030_5125

    push bc
    call Call_030_515A
    ld [$DF75], a
    call $3BA1
    pop bc

jr_030_5125:
    ld d, c
    ld hl, $DF12
    add hl, bc
    ld a, [hl]
    ld hl, $5153
    add hl, bc
    ld c, [hl]
    or $80
    ld [c], a
    and $7F
    ld [c], a
    ld c, d

Jump_030_5137:
jr_030_5137:
    ld hl, $DF09
    add hl, bc
    set 7, [hl]
    ld hl, $5156
    add hl, bc
    ld b, [hl]
    ldh a, [rNR51]
    and b
    ld c, a

jr_030_5146:
    ld a, b
    cpl
    ld b, a
    ld a, [$DF11]
    and b
    or c
    ldh [rNR51], a
    ret


    ld de, $1416
    add hl, de
    ld e, $EE
    db $DD
    cp e
    ld [hl], a

Call_030_515A:
    ld hl, $5A7E
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $5A79
    add hl, de
    ld d, $00
    ld e, a
    sla e
    rl d
    ld c, e
    ld b, d
    sla e
    rl d
    add hl, de
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [$DF00]
    add [hl]
    pop hl
    ret


Call_030_5184:
    push bc
    ld a, h

jr_030_5186:
    bit 7, a
    jr z, jr_030_518E

    add $54
    jr jr_030_5186

jr_030_518E:
    cp $54
    jr c, jr_030_5196

    sub $54
    jr jr_030_518E

jr_030_5196:
    ld d, $00
    ld e, a
    ld a, l
    and a
    jr nz, jr_030_51B6

    sla e
    ld hl, $51D8
    add hl, de
    ld e, c
    ld a, [hl+]
    ld b, [hl]

jr_030_51A6:
    ld hl, $DF12
    add hl, de
    ld [hl], b
    ld hl, $51D3
    add hl, de
    ld c, [hl]
    ld [c], a
    inc c
    ld a, b
    ld [c], a
    pop bc
    ret


jr_030_51B6:
    ld hl, $5282
    add hl, de
    ld d, c
    ld c, [hl]
    call Call_030_4000
    ld c, h
    ld a, d
    ld b, $00
    ld d, b
    sla e
    ld hl, $51D8
    add hl, de
    ld e, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld b, h
    jr jr_030_51A6

    inc de
    jr @+$1F

    add d
    rlca
    add d
    rlca
    adc c
    rlca
    sub b
    rlca
    sub [hl]
    rlca
    sbc h
    rlca
    and d
    rlca
    and a
    rlca
    xor h
    rlca
    or c
    rlca
    or l
    rlca
    cp c
    rlca
    cp l
    rlca
    pop bc
    rlca
    call nz, $C807
    rlca
    rlc a
    adc $07
    pop de
    rlca
    db $D3
    rlca
    sub $07
    ret c

    rlca
    jp c, $DC07

    rlca
    sbc $07
    ldh [rTAC], a
    ld [c], a
    rlca
    db $E4
    rlca
    push hl
    rlca
    rst $20
    rlca
    add sp, $07
    jp hl


    rlca
    db $EB
    rlca
    db $EC
    rlca
    db $ED
    rlca
    xor $07
    rst $28
    rlca
    inc l
    nop
    sbc h
    nop
    ld b, $01
    ld l, d
    ld bc, $01C9
    ld [hl+], a
    ld [bc], a
    halt
    ld [bc], a
    add $02
    ld de, $5803
    inc bc
    sbc e
    inc bc
    jp c, $1603

    inc b
    ld c, [hl]
    inc b
    add e
    inc b
    or l
    inc b
    db $E4
    inc b
    ld de, $3B05
    dec b
    ld h, e
    dec b
    adc b
    dec b
    xor h
    dec b
    call $ED05
    dec b
    dec bc
    ld b, $27
    ld b, $41
    ld b, $5A
    ld b, $72
    ld b, $88
    ld b, $9D
    ld b, $B1
    ld b, $C4
    ld b, $D6
    ld b, $E6
    ld b, $F6
    ld b, $05
    rlca
    inc de
    rlca
    jr nz, jr_030_5275

    dec l
    rlca
    add hl, sp
    rlca
    ld b, h
    rlca
    ld c, [hl]

jr_030_5275:
    rlca
    ld e, b
    rlca
    ld h, d
    rlca
    ld l, e
    rlca
    ld [hl], e
    rlca
    ld a, e
    rlca
    ld a, e
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $05
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld bc, $0102
    ld bc, $0101
    ld bc, $6A70
    ld h, h
    ld e, a
    ld e, c
    ld d, h
    ld d, b
    ld c, e
    ld b, a
    ld b, e
    ccf
    inc a
    jr c, jr_030_52E9

    ld [hl-], a
    cpl
    dec l
    ld a, [hl+]
    jr z, @+$27

    inc h
    ld hl, $1E20
    inc e
    ld a, [de]
    add hl, de
    jr jr_030_52D9

    dec d
    inc d
    inc de
    ld [de], a
    db $10
    db $10
    rrca
    ld c, $0D
    dec c
    inc c
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0708], sp

Call_030_52D6:
Jump_030_52D6:
    sla a
    push af

jr_030_52D9:
    bit 1, a
    jr z, jr_030_52E2

    ld hl, $DF0A
    jr jr_030_52EE

jr_030_52E2:
    bit 2, a
    jr z, jr_030_52EB

    ld hl, $DF0B

jr_030_52E9:
    jr jr_030_52EE

jr_030_52EB:
    ld hl, $DF09

jr_030_52EE:
    res 0, [hl]
    res 2, [hl]
    res 3, [hl]
    res 4, [hl]
    ld hl, $DF3A
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop af
    ld d, $00
    ld e, a
    jr nc, jr_030_531C

    push bc
    ld hl, $DF15
    add hl, de
    ld a, c
    add [hl]
    ld c, a
    ld a, b
    inc hl
    adc [hl]
    ld hl, $DF47
    add hl, de
    ld [hl-], a
    ld [hl], c
    pop bc
    jr jr_030_532E

jr_030_531C:
    ld hl, $DF46
    add hl, de
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $DF15
    add hl, de
    ld a, c
    sub [hl]
    ld c, a
    ld a, b
    inc hl
    sbc [hl]
    ld b, a

jr_030_532E:
    ld hl, $DF3A
    add hl, de
    bit 7, b
    jr nz, jr_030_5340

    ld a, [hl+]
    push bc
    ld b, [hl]
    ld c, a
    pop hl
    call Call_030_40AA
    jr jr_030_535C

jr_030_5340:
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a
    ld a, [hl+]
    push bc
    ld b, [hl]
    ld c, a
    pop hl
    call Call_030_40AA
    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a

jr_030_535C:
    ld a, l
    ld b, h
    ld hl, $DF34
    add hl, de
    ld [hl+], a
    ld [hl], b
    srl e
    ld hl, $DF09
    add hl, de
    set 2, [hl]
    ret


Jump_030_536D:
    ld a, b
    ld b, $00
    sla c
    ld hl, $DF40
    add hl, bc
    ld [hl], a
    ld hl, $DF3A
    add hl, bc
    srl a
    jr nz, jr_030_5380

    inc a

jr_030_5380:
    ld [hl], a
    ld hl, $DF34
    add hl, bc
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $DF46
    add hl, bc
    xor a
    ld [hl+], a
    ld [hl], a
    srl c
    ld hl, $DF09
    add hl, bc
    ld a, [hl]
    and $E2
    or $01
    ld [hl], a
    ret


Call_030_539C:
    bit 7, a
    res 7, a
    push af
    push de
    ld hl, $DF09
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    jr nz, jr_030_53B1

    and $F2
    ld [hl], a
    jr jr_030_53B8

jr_030_53B1:
    and $EA
    ld [hl], a
    ld a, e
    add $03
    ld e, a

jr_030_53B8:
    sla e
    ld hl, $DF34
    add hl, de
    ld a, c
    ld [hl+], a
    ld [hl], b
    pop bc
    ld hl, $DF40
    add hl, de
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $DF4C
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    pop af
    ld e, a
    ld hl, $DF09
    add hl, de
    jr nz, jr_030_53DB

    set 3, [hl]
    ret


jr_030_53DB:
    set 4, [hl]
    ret


Call_030_53DE:
    ld bc, $0003
    ld hl, $DF0B

jr_030_53E4:
    bit 2, [hl]
    jr nz, jr_030_53FB

    bit 0, [hl]
    jr nz, jr_030_5438

    bit 3, [hl]
    jp nz, Jump_030_547D

Jump_030_53F1:
    bit 4, [hl]
    jp nz, Jump_030_5496

Jump_030_53F6:
jr_030_53F6:
    dec hl
    dec c
    jr nz, jr_030_53E4

    ret


jr_030_53FB:
    push bc
    push hl
    dec c
    sla c
    set 5, [hl]
    ld hl, $DF3B
    add hl, bc
    ld a, [hl-]
    or [hl]
    jr nz, jr_030_541C

    ld hl, $DF46
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    ld hl, $DF15
    add hl, bc
    ld [hl+], a
    ld [hl], d
    pop hl
    pop bc
    res 2, [hl]
    jr jr_030_53F6

jr_030_541C:
    dec [hl]
    ld a, [hl+]
    cp $FF
    jr nz, jr_030_5423

    dec [hl]

jr_030_5423:
    ld hl, $DF34
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $DF15
    add hl, bc
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    pop hl
    pop bc
    jr jr_030_53F6

jr_030_5438:
    push bc
    push hl
    set 5, [hl]
    dec c
    sla c
    ld hl, $DF34
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $DF46
    add hl, bc
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl-], a
    ld d, a
    ld a, [hl]
    ld hl, $DF1D
    add hl, bc
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    ld hl, $DF3A
    add hl, bc
    dec [hl]
    jr nz, jr_030_5478

    ld e, l
    ld d, h
    ld hl, $DF40
    add hl, bc
    ld a, [hl]
    ld [de], a
    ld hl, $DF34
    add hl, bc
    ld a, [hl]
    cpl
    add $01
    ld [hl+], a
    ld a, [hl]
    cpl
    adc $00
    ld [hl], a

jr_030_5478:
    pop hl
    pop bc
    jp Jump_030_53F6


Jump_030_547D:
    push bc
    push hl
    dec c
    sla c
    call Call_030_54B6
    ld hl, $DF1D
    add hl, bc
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    pop hl
    pop bc
    set 5, [hl]
    jp Jump_030_53F1


Jump_030_5496:
    push bc
    push hl
    ld a, c
    add $03
    sla a
    ld c, a
    call Call_030_54B6
    ld a, c
    sub $06
    ld c, a
    ld hl, $DF1D
    add hl, bc
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    pop hl
    pop bc
    set 5, [hl]
    jp Jump_030_53F6


Call_030_54B6:
    ld hl, $DF34
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $DF4C
    add hl, bc
    ld a, [hl]
    add e
    ld [hl+], a
    ld e, a
    ld a, [hl]
    adc d
    ld [hl], a
    ld d, a
    ld hl, $DF40
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    bit 7, h
    jr nz, jr_030_54E4

    call Call_030_4198
    ret nc

jr_030_54D8:
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld hl, $DF4D
    add hl, bc
    ld [hl-], a
    ld [hl], e
    ret


jr_030_54E4:
    dec hl
    call Call_030_4198
    ret c

    inc hl
    jr jr_030_54D8

Call_030_54EC:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld e, l
    ld d, h
    ld b, $00
    sla c
    ld hl, $DF58
    add hl, bc
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop de
    ld hl, $DF68
    add hl, bc
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $DF60
    xor a
    ld [hl+], a
    ld [hl], a
    srl c
    ld hl, $DF70
    add hl, bc
    ld [hl], a
    ld hl, $DF0D
    add hl, bc
    ld a, [hl]
    and $F0
    or $21
    ld [hl], a
    ret


Call_030_551E:
    ld de, $0004
    ld hl, $DF10

jr_030_5524:
    ld a, [hl]
    and $0B
    jr nz, jr_030_552E

Jump_030_5529:
jr_030_5529:
    dec hl
    dec e
    jr nz, jr_030_5524

    ret


jr_030_552E:
    push hl
    push de
    dec e
    sla e
    bit 1, a
    jr nz, jr_030_55AF

    bit 3, a
    jp nz, Jump_030_55F3

    ld hl, $DF61
    add hl, de
    ld a, [hl]
    cp $0F
    jr nc, jr_030_5569

jr_030_5545:
    ld hl, $DF68
    add hl, de
    ld a, [hl+]
    ld b, [hl]
    ld hl, $DF60
    add hl, de
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    srl e
    ld hl, $DF70
    add hl, de
    ld c, [hl]
    ld [hl], a
    cp c
    jr z, jr_030_5565

    pop de
    pop hl
    set 5, [hl]
    jr jr_030_5529

jr_030_5565:
    pop de
    pop hl
    jr jr_030_5529

jr_030_5569:
    ld a, $0F
    ld [hl-], a
    ld [hl], $00
    srl e
    ld hl, $DF70
    add hl, de
    ld a, [hl]
    ld [hl], $0F
    ld hl, $DF0D
    add hl, de
    cp $0F
    jr z, jr_030_5581

    set 5, [hl]

jr_030_5581:
    ld a, [hl]
    and $F0
    bit 4, a
    jr z, jr_030_558F

    res 4, a
    ld [hl], a
    pop de
    pop hl
    jr jr_030_5529

jr_030_558F:
    or $02
    ld [hl], a
    sla e
    ld hl, $DF58
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld b, [hl]
    ld hl, $DF68
    add hl, de
    ld [hl+], a
    ld [hl], b
    ld hl, $DF58
    add hl, de
    ld a, [hl]
    add $02
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a

jr_030_55AF:
    ld hl, $DF58
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    ld hl, $DF61
    add hl, de
    ld b, [hl]
    bit 7, b
    jr nz, jr_030_55C3

    cp b
    jr c, jr_030_5545

jr_030_55C3:
    ld [hl-], a
    ld [hl], $00
    ld c, a
    ld hl, $DF58
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld a, [hl+]
    ld b, [hl]
    ld hl, $DF68
    add hl, de
    ld [hl+], a
    ld [hl], b
    srl e
    ld hl, $DF70
    add hl, de
    ld a, [hl]
    ld [hl], c
    ld hl, $DF0D
    add hl, de
    cp c
    jr z, jr_030_55E8

    set 5, [hl]

jr_030_55E8:
    ld a, [hl]
    and $F0
    or $04
    ld [hl], a

jr_030_55EE:
    pop de
    pop hl
    jp Jump_030_5529


Jump_030_55F3:
    ld hl, $DF68
    add hl, de
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $DF60
    add hl, de
    ld a, [hl]
    add c
    ld [hl+], a
    ld c, a
    ld a, [hl]
    adc b
    ld [hl], a
    ld b, a
    srl e
    ld hl, $DF70
    add hl, de
    bit 7, a
    jr nz, jr_030_561F

    or c
    jr z, jr_030_561F

    ld a, [hl]
    ld [hl], b
    cp b
    jr z, jr_030_55EE

    pop de
    pop hl
    set 5, [hl]
    jp Jump_030_5529


jr_030_561F:
    ld c, [hl]
    ld [hl], $00
    pop de
    pop hl
    ld a, [hl]
    and $F0
    ld [hl], a
    ld a, c
    and a
    jp z, Jump_030_5529

    set 5, [hl]
    jp Jump_030_5529


Call_030_5632:
    swap a
    or e
    srl a
    ld e, a
    ld d, $00
    ld hl, $564B
    jr c, jr_030_5646

    add hl, de
    ld a, [hl]
    swap a
    and $0F
    ret


jr_030_5646:
    add hl, de
    ld a, [hl]
    and $0F
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1111
    ld de, $0000
    ld bc, $1111
    ld de, $2222
    nop
    ld bc, $1111
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc sp
    nop
    ld bc, $2211
    ld [hl+], a
    inc sp
    inc sp
    ld b, h
    nop
    ld de, $2212
    inc sp
    inc [hl]
    ld b, h
    ld d, l
    nop
    ld de, $2322
    inc [hl]
    ld b, h
    ld d, l
    ld h, [hl]
    nop
    ld de, $3322
    ld b, h
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld bc, $2312
    inc [hl]
    ld b, l
    ld d, [hl]
    ld [hl], a
    ld a, b
    ld bc, $2312
    ld b, h
    ld d, l
    ld h, a
    ld a, b
    adc c
    ld bc, $3312
    ld b, l
    ld d, [hl]
    ld [hl], a
    adc c
    sbc d
    ld bc, $3422
    ld b, l
    ld h, a
    ld a, b
    sbc d
    xor e
    ld bc, $3422
    ld d, [hl]
    ld h, a
    adc c
    xor d
    cp h
    ld bc, $3423
    ld d, [hl]
    ld a, b
    sbc d
    xor e
    call $2301
    ld b, l
    ld h, a
    ld a, b
    sbc d
    cp h
    sbc $01
    inc hl
    ld b, l
    ld h, a
    adc c
    xor e
    call $21EF
    ld a, b
    rst $18
    ld a, [hl]
    sub $01
    ld [hl+], a
    ld c, a
    ld a, [hl]
    sbc $00
    ld [hl], a
    or c
    jr z, jr_030_56F8

    ld hl, $DF76
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $3BEF
    bit 7, h
    jr z, jr_030_56F0

    ld h, $40
    ld a, [$DF75]
    inc a
    ld [$DF75], a

jr_030_56F0:
    ld a, l
    ld b, h
    ld hl, $DF76
    ld [hl+], a
    ld [hl], b
    ret


jr_030_56F8:
    ld hl, $DF74
    res 7, [hl]
    ld c, $02
    jp Jump_030_505C


    ld hl, $5A87
    cp [hl]
    ret nc

    ld d, $00
    ld e, a
    ld h, $00
    ld l, a
    sla l
    rl h
    add hl, de
    ld e, l
    ld d, h
    ld hl, $5A85
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $5A79
    add hl, bc
    add hl, de
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$DF00]
    add b
    ld bc, $0084
    add hl, bc
    ld [$DFA9], a
    ld a, h
    ld [$DFA8], a
    ld a, l
    ld [$DFA7], a
    xor a
    ld [$DFA6], a
    ld hl, $DFB3
    ld bc, $0045

jr_030_5741:
    xor a
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_030_5741

    call Call_030_577F
    call $3D65
    ld a, $E4
    ld [$DFAC], a
    ld hl, $DFA6
    set 7, [hl]
    ret


    ld a, [$DFA6]
    and $0F
    jr nz, jr_030_5768

    ld a, [$DFD3]
    and a
    jr nz, jr_030_5768

    xor a
    ret


jr_030_5768:
    ld a, $01
    ret


    ld a, c
    or b
    jr z, jr_030_577F

    ld hl, $DFAA
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_030_4041
    ld a, h
    ld hl, $DFAA
    ld [hl+], a
    ld [hl], c
    ret


Call_030_577F:
jr_030_577F:
    call $3D4A
    ld c, l
    ld b, h
    ld a, $66
    call Call_030_4002
    ld bc, $003C
    call Call_030_40AA
    ld a, l
    ld [$DFAA], a
    ld a, h
    ld [$DFAB], a
    ret


    ld hl, $DFA6
    bit 7, [hl]
    ret z

    set 4, [hl]
    ld hl, $DFA6
    res 7, [hl]
    ld hl, $DF09
    xor a

jr_030_57A9:
    bit 1, [hl]
    inc hl
    call z, Call_030_57B5
    inc a
    cp $04
    jr nz, jr_030_57A9

    ret


Call_030_57B5:
    push af
    push hl
    ld [$DF9C], a
    ld c, a
    ld b, $00
    sla c
    ld hl, $DF7E
    add hl, bc
    xor a
    ld [hl+], a
    ld [hl], a
    call Call_030_48DD
    call Call_030_4710
    pop hl
    pop af
    ret


    xor a
    ld hl, $DFA6
    bit 4, [hl]
    ret z

    res 4, [hl]
    set 7, [hl]
    ld a, $01
    ret


    ld a, $52
    ret


    ld a, $52
    cp c
    ret nz

    ld de, $DFA6

jr_030_57E7:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_030_57E7

    ret


    ld a, $52
    cp c
    ret nz

    ld de, $DFA6

jr_030_57F5:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_030_57F5

    ret


Call_030_57FC:
    ld a, [$DFA6]
    bit 7, a
    ret z

    ld a, [$DFAA]
    ld c, a
    ld a, [$DFAB]
    ld b, a
    call Call_030_58AF
    call Call_030_5921
    ld hl, $DFBF
    xor a

Jump_030_5814:
    ld [$DFF9], a
    ld de, $58A7
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    ld e, a
    ld a, [$DFA6]
    and e
    jr z, jr_030_5899

    ld a, [hl]
    sub c
    ld [hl+], a
    ld d, a
    ld a, [hl]
    sbc b
    ld [hl+], a
    ld e, a
    ld a, [hl]
    sbc $00
    ld [hl+], a
    bit 7, a
    jr nz, jr_030_583C

    or d
    or e
    jr nz, jr_030_589D

jr_030_583C:
    push hl
    push bc
    ld hl, $DFBB
    ld a, [$DFF9]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    cp $FE
    jr z, jr_030_5860

    cp $FF
    jr z, jr_030_587F

    ld c, a
    ld a, [$DFF9]
    call Call_030_596A
    ld a, [$DFF9]
    call $3E3A
    jr jr_030_5866

jr_030_5860:
    ld a, [$DFF9]
    call $3E78

jr_030_5866:
    pop bc
    pop hl
    ld d, h
    ld e, l
    dec de
    ld a, [de]
    bit 7, a
    jr nz, jr_030_583C

    and a
    jr nz, jr_030_589D

    dec de
    ld a, [de]
    and a
    jr nz, jr_030_589D

    dec de
    ld a, [de]
    and a
    jr nz, jr_030_589D

    jr jr_030_583C

jr_030_587F:
    ld a, [$DFF9]
    ld c, a
    ld b, $00
    ld hl, $58A7
    add hl, bc
    ld a, [hl]
    cpl
    ld b, a
    ld a, [$DFA6]
    and b
    ld [$DFA6], a
    jr jr_030_5895

jr_030_5895:
    pop bc
    pop hl
    jr jr_030_589D

jr_030_5899:
    ld de, $0003
    add hl, de

jr_030_589D:
    ld a, [$DFF9]
    inc a
    cp $04
    jp nz, Jump_030_5814

    ret


    ld bc, $0402
    ld [$2010], sp
    ld b, b
    add b

Call_030_58AF:
    xor a

jr_030_58B0:
    ld [$DFF9], a
    ld e, a
    ld d, $00
    ld hl, $58AB
    add hl, de
    ld a, [$DFD3]
    and [hl]
    jr z, jr_030_5918

    push bc
    ld a, e
    sla e
    add e
    ld e, a
    ld hl, $DFE8
    add hl, de
    ld a, [hl]
    sub c
    ld [hl+], a
    ld d, a
    ld a, [hl]
    sbc b
    ld [hl+], a
    ld e, a
    ld a, [hl]
    sbc $00
    ld [hl+], a
    bit 7, a
    jr nz, jr_030_58DE

    or d
    or e
    jr nz, jr_030_5917

jr_030_58DE:
    ld a, [$DFF9]
    ld e, a
    ld d, $00
    ld hl, $58AB
    add hl, de
    ld a, [hl]
    cpl
    ld c, a
    ld a, [$DFD3]
    and c
    ld [$DFD3], a
    ld a, [$DFAC]
    bit 1, e
    jr z, jr_030_58FB

    swap a

jr_030_58FB:
    bit 0, e
    jr z, jr_030_5903

    srl a
    srl a

jr_030_5903:
    and $03
    ld c, a
    ld b, $00
    ld hl, $DF09
    add hl, bc
    bit 1, [hl]
    jr nz, jr_030_5917

    ld a, c
    ld [$DF9C], a
    call Call_030_48DD

jr_030_5917:
    pop bc

jr_030_5918:
    ld a, [$DFF9]
    inc a
    cp $04
    jr nz, jr_030_58B0

    ret


Call_030_5921:
    xor a

jr_030_5922:
    ld [$DFF9], a
    ld e, a
    ld d, $00
    ld hl, $58A7
    add hl, de
    ld a, [$DFD3]
    and [hl]
    jr z, jr_030_5961

    push bc
    ld a, e
    sla e
    add e
    ld e, a
    ld hl, $DFD4
    add hl, de
    ld a, [hl]
    sub c
    ld [hl+], a
    ld d, a
    ld a, [hl]
    sbc b
    ld [hl+], a
    ld e, a
    ld a, [hl]
    sbc $00
    ld [hl+], a
    bit 7, a
    jr nz, jr_030_5950

    or d
    or e
    jr nz, jr_030_5960

jr_030_5950:
    ld a, [$DFF9]
    call Call_030_599D
    jr nz, jr_030_5960

    ld a, [$DFF9]
    call $3F7D
    jr jr_030_5950

jr_030_5960:
    pop bc

jr_030_5961:
    ld a, [$DFF9]
    inc a
    cp $04
    jr nz, jr_030_5922

    ret


Call_030_596A:
    ld [$DFFB], a
    ld hl, $58A7
    ld e, a
    ld d, $00
    add hl, de
    ld a, [$DFD3]
    or [hl]
    ld [$DFD3], a
    ld a, e
    sla e
    add e
    ld e, a
    ld hl, $DFD4
    add hl, de
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, [$DFFB]
    call $3ED4

jr_030_598E:
    ld a, [$DFFB]
    call $3F7D
    ld a, [$DFFB]
    call Call_030_599D
    jr z, jr_030_598E

    ret


Call_030_599D:
    ld c, a
    ld e, a
    sla e
    add e
    ld e, a
    ld d, $00
    ld hl, $DFD6
    add hl, de
    ld a, [hl-]
    bit 7, a
    jr nz, jr_030_59B5

    ld b, a
    ld a, [hl-]
    or b
    ld b, a
    ld a, [hl]
    or b
    ret nz

jr_030_59B5:
    ld b, $00
    push bc
    ld a, c
    call $3F0E
    bit 7, d
    jr z, jr_030_59EB

    bit 7, a
    jr nz, jr_030_59D5

    pop bc
    ld hl, $58A7
    add hl, bc
    ld a, [hl]
    cpl
    ld e, a
    ld a, [$DFD3]
    and e
    ld [$DFD3], a
    rlca
    ret


jr_030_59D5:
    and $7F
    cp $02
    jr nc, jr_030_59E0

    ld hl, $DFA6
    res 6, [hl]

jr_030_59E0:
    call $3FB0
    ld hl, $DFAD
    pop bc
    add hl, bc
    ld [hl], a
    xor a
    ret


jr_030_59EB:
    bit 7, a
    jr z, jr_030_5A06

    and $7F
    cp $02
    jr nc, jr_030_59FA

    ld hl, $DFA6
    res 6, [hl]

jr_030_59FA:
    call $3FB0
    pop hl
    push hl
    push bc
    ld bc, $DFAD
    add hl, bc
    ld [hl], a
    pop bc

jr_030_5A06:
    pop hl
    push bc
    ld c, l
    ld b, h
    ld a, e
    ld [$DFFD], a
    ld hl, $DFE4
    add hl, bc
    ld a, [hl]
    ld [hl], d
    ld hl, $DFE0
    add hl, bc
    ld [hl], a
    ld hl, $DFE8
    pop de
    push bc
    ld a, c
    sla c
    add c
    ld c, a
    add hl, bc
    xor a
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop bc
    ld hl, $58AB
    add hl, bc
    ld a, [$DFD3]
    or [hl]
    ld [$DFD3], a
    ld a, [$DFF8]
    and $0F
    ld e, a
    ld a, [$DFFD]
    call Call_030_5632
    ld e, a
    ld hl, $DFE4
    add hl, bc
    ld d, [hl]
    ld hl, $DFAD
    add hl, bc
    ld a, c
    ld [$DFFD], a
    ld a, [hl]
    call Call_030_4F1A
    ld a, [$DFFD]
    ld e, a
    ld d, $00
    ld hl, $5A75
    add hl, de
    ld a, [$DFAC]
    and [hl]
    bit 1, e
    jr z, jr_030_5A67

    swap c

jr_030_5A67:
    bit 0, e
    jr z, jr_030_5A6F

    sla c
    sla c

jr_030_5A6F:
    or c
    ld [$DFAC], a
    xor a
    ret


    db $FC
    di
    rst $08
    ccf
    ccf
    ld b, $51
    ld b, $28
    pop af
    ld b, $04
    nop
    dec a
    ld b, $01
    add hl, bc
    rlca
    add hl, hl
    ld h, h
    nop
    ld a, a
    nop
    sbc a
    nop
    or b
    nop
    ret


    nop
    add sp, $00
    dec bc
    ld bc, $0126
    ld b, b
    ld bc, $0156
    ld a, l
    ld bc, $0197
    xor a
    ld bc, $01C0
    pop de
    ld bc, $01EB
    add hl, bc
    ld [bc], a
    ld a, [de]
    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    adc b
    ld [bc], a
    and b
    ld [bc], a
    xor a
    ld [bc], a
    rst $08
    ld [bc], a
    jr nz, jr_030_5ABB

    ld b, h
    inc bc
    ld h, c

jr_030_5ABB:
    inc bc
    adc [hl]
    inc bc
    call nc, $2703
    inc b
    ld d, b
    inc b
    ld l, d
    inc b
    add d
    inc b
    xor c
    inc b
    or a
    inc b
    ld [$0004], a
    dec b
    ld de, $2605
    dec b
    ld [hl-], a
    dec b
    dec [hl]
    dec b
    ld e, c
    dec b
    ld l, c
    dec b
    ld a, c
    dec b
    sbc e
    dec b
    or b
    dec b
    call $D905
    dec b
    ei
    dec b
    ld hl, $2E06
    ld b, $0E
    inc bc
    add hl, hl
    nop
    add hl, bc
    inc c
    rst $38
    add hl, bc
    rrca
    db $10
    inc h
    inc b
    nop
    nop
    nop
    dec bc
    ld de, $DCFD
    inc b
    nop
    nop
    nop
    ld [$011A], sp
    nop
    ld c, $03
    add hl, hl
    nop
    add hl, bc
    inc c
    rst $38
    add hl, bc
    rrca
    ld de, $80FE
    db $10
    ld c, h
    inc b
    nop
    nop
    nop
    dec bc
    db $10
    ld d, h
    ld de, $80FE
    inc b
    nop
    nop
    nop
    dec bc
    ld a, [de]
    ld bc, $0E00
    add e
    add hl, bc
    ld bc, $0004
    nop
    nop
    ld [bc], a
    inc de
    ld bc, $0004
    nop
    nop
    ld [bc], a
    nop
    ld c, $03
    db $10
    ld [bc], a
    add hl, bc
    ld [bc], a
    inc c
    rst $38
    inc b
    nop
    nop
    ld bc, $092E
    ld [bc], a
    inc b
    nop
    nop
    ld [bc], a
    ld e, d
    dec b
    nop
    rst $38
    db $EC
    nop
    ld c, $00
    add hl, bc
    rrca
    inc c
    ld [bc], a
    rlca
    jr z, jr_030_5B5A

jr_030_5B5A:
    inc bc
    ld bc, $3C9F
    nop
    nop
    inc b
    nop
    nop
    nop
    rla
    ld de, $40FC
    inc b
    nop
    nop
    nop
    dec b
    ld a, [de]
    ld bc, $0E00
    inc bc
    inc c
    rst $38
    db $10
    inc b
    daa
    ld [bc], a
    inc h
    ld a, [bc]
    nop
    inc b
    nop
    nop
    nop
    ld [$FF11], sp
    jp nz, $020A

    inc b
    nop
    nop
    nop
    ld [$0010], sp
    stop
    ld a, [bc]
    ld bc, $011A
    nop
    ld c, $03
    db $10
    ld [bc], a
    daa
    nop
    ld a, $0C
    rst $38
    inc b
    nop
    nop
    nop
    or [hl]
    stop
    ld de, $B2FF
    inc b
    nop
    nop
    nop
    ld [hl-], a
    ld a, [de]
    ld bc, $0E00
    inc bc
    add hl, bc
    rrca
    inc c
    rst $38
    db $10
    ld d, a
    inc b
    nop
    nop
    nop
    jr c, jr_030_5BCC

    ld h, h
    ld de, $36FF
    inc b
    nop
    nop
    nop
    inc d
    ld a, [de]
    ld bc, $0E00
    inc bc
    add hl, bc
    rrca

jr_030_5BCC:
    inc c
    rst $38
    db $10
    ld d, h
    inc b
    nop
    nop
    nop
    ld h, $11
    db $FD
    call c, $0004
    nop
    nop
    ld [$0E00], sp
    inc bc
    daa
    nop
    jp z, $FF0C

    inc b
    nop
    nop
    nop
    ld [$6310], sp
    inc b
    nop
    nop
    nop
    ld c, $10
    inc hl
    inc b
    nop
    nop
    nop
    ld c, $10
    ld [bc], a
    ld de, $67FF
    inc b
    nop
    nop
    nop
    ld a, [de]
    ld a, [de]
    ld bc, $0E00
    inc bc
    add hl, bc
    rrca
    inc c
    rst $38
    db $10
    ld b, l
    inc b
    nop
    nop
    nop
    ld [$3210], sp
    ld de, $00FD
    inc b
    nop
    nop
    nop
    ld b, $1A
    ld bc, $0E00
    inc bc
    inc c
    rst $38
    add hl, bc
    ld [$1210], sp
    inc b
    nop
    nop
    nop
    inc c
    ld de, $00F1
    inc b
    nop
    nop
    nop
    ld [bc], a
    ld a, [de]
    ld bc, $0E00
    inc bc
    inc c
    rst $38
    db $10
    ld d, b
    ld de, $67FF
    inc b
    nop
    nop
    nop
    ld a, [de]
    ld a, [de]
    ld bc, $0E00
    inc bc
    inc c
    rst $38
    db $10
    ld d, b
    ld de, $67FF
    inc b
    nop
    nop
    nop
    ld a, [de]
    ld a, [de]
    ld bc, $0E00
    ld bc, $0C20
    ld [bc], a
    rlca
    inc a
    nop
    inc bc
    ld bc, $3C39
    nop
    add b
    ld de, $B2FF
    inc b
    nop
    nop
    nop
    ld [hl-], a
    jr nz, jr_030_5C8B

    ld bc, $0E00
    ld [bc], a
    jr nz, jr_030_5C78

    nop

jr_030_5C78:
    inc b
    dec c
    ld de, $B2FF
    dec e
    nop
    rrca
    nop
    ld h, b
    inc b
    nop
    nop
    nop
    jr nz, jr_030_5C8C

    nop
    nop
    nop

jr_030_5C8B:
    inc d

jr_030_5C8C:
    ld a, [de]
    ld bc, $0D1F
    nop
    ld c, $03
    db $10
    dec hl
    inc c
    rst $38
    ld de, $99FF
    inc b
    nop
    nop
    nop
    ld h, $1A
    ld bc, $0E00
    inc bc
    inc c
    rst $38
    db $10
    inc b
    inc b
    nop
    nop
    nop
    ld h, $11
    rst $38
    reti


    inc b
    nop
    nop
    nop
    inc d
    ld de, $D9FF
    db $10
    inc bc
    inc b
    nop
    nop
    nop
    ld h, d
    ld a, [de]
    ld bc, $0E00
    inc bc
    inc c
    rst $38
    db $10
    add d
    inc b
    nop
    nop
    nop
    ld [$020A], sp
    inc b
    nop
    nop
    nop
    ld [$000A], sp
    inc b
    nop
    nop
    nop
    ld [$010A], sp
    inc b
    nop
    nop
    nop
    ld [$FF11], sp
    and b
    ld a, [bc]
    ld [bc], a
    db $10
    ld l, d
    inc b
    nop
    nop
    nop
    ld b, $0A
    nop
    db $10
    ld l, d
    inc b
    nop
    nop
    nop
    ld b, $0A
    ld bc, $FF11
    ld [hl], $10
    ld l, $04
    nop
    nop
    nop
    ld [$FF11], sp
    ld h, a
    db $10
    cpl
    inc b
    nop
    nop
    nop
    ld a, [de]
    ld a, [de]
    ld bc, $0E00
    ld bc, $020C
    rlca
    ld c, h
    nop
    inc bc
    ld bc, $50A3
    inc sp
    nop
    ld de, $DCFD
    inc b
    nop
    nop
    nop
    ld [$011A], sp
    nop
    ld c, $03
    db $10
    ld a, h
    ld de, $B2FF
    inc c
    rst $38
    inc b
    nop
    nop
    nop
    ld [hl-], a
    nop
    ld c, $03
    add hl, bc
    rrca
    db $10
    sbc e
    inc c
    rst $38
    inc b
    nop
    nop
    nop
    ld c, $10
    ld a, h
    inc b
    nop
    nop
    nop
    inc d
    db $10
    ld [hl], h
    inc b
    ld bc, $0000
    ld a, $05
    nop
    rst $38
    pop hl
    nop
    ld c, $03
    daa
    rrca
    nop
    inc c
    rst $38
    stop
    inc b
    nop
    nop
    nop
    ld [bc], a
    db $10
    inc sp
    inc b
    nop
    nop
    nop
    inc bc
    stop
    inc b
    nop
    nop
    nop
    ld [bc], a
    db $10
    inc sp
    inc b
    nop
    nop
    nop
    inc bc
    stop
    inc b
    nop
    nop
    nop
    ld [bc], a
    db $10
    inc sp
    inc b
    nop
    nop
    nop
    inc bc
    stop
    inc b
    nop
    nop
    nop
    ld [bc], a
    db $10
    inc sp
    inc b
    nop
    nop
    nop
    inc bc
    db $10
    ld [hl+], a
    inc b
    nop
    nop
    nop
    dec b
    ld de, $40FC
    inc b
    nop
    nop
    nop
    dec b
    ld a, [de]
    ld bc, $0E00
    inc bc
    add hl, bc
    ld [$FF0C], sp
    daa
    ld [bc], a
    inc h
    db $10
    ld c, c
    inc b
    nop
    nop
    nop
    ld c, $10
    ld c, d
    inc b
    nop
    nop
    nop
    ld [$3810], sp
    ld de, $7CFF
    inc b
    nop
    nop
    nop
    ld e, $1A
    ld bc, $0E00
    ld [bc], a
    ld bc, $0300
    dec c
    dec e
    nop
    rrca
    ld [bc], a
    inc h
    inc b
    nop
    nop
    nop
    ld h, $11
    rst $38
    and b
    inc b
    nop
    nop
    nop
    add hl, hl
    ld a, [de]
    ld bc, $0D20
    nop
    ld c, $03
    inc c
    rst $38
    db $10
    ld l, l
    inc b
    nop
    nop
    nop
    ld a, [de]
    db $10
    ld l, [hl]
    inc b
    nop
    nop
    nop
    ld [$6D10], sp
    inc b
    nop
    nop
    nop
    ld a, [de]
    db $10
    ld l, l
    inc b
    nop
    nop
    nop
    ld [$6F10], sp
    ld de, $B2FF
    inc b
    nop
    nop
    nop
    ld [hl-], a
    ld a, [de]
    ld bc, $0E00
    db $10
    jr nz, jr_030_5E26

    ld [bc], a
    rlca
    ld e, b
    nop
    rrca
    nop
    ld bc, $0000
    ld [$0004], sp

jr_030_5E26:
    nop
    nop
    dec b
    rlca
    ld e, d
    cp $11
    cp $D9
    rlca
    ld e, b
    nop
    inc b
    nop
    nop
    nop
    dec b
    rlca
    ld e, d
    cp $11
    cp $D9
    rlca
    inc h
    nop
    inc b
    nop
    nop
    nop
    dec b
    rlca
    ld e, d
    cp $11
    cp $D9
    rlca
    ld e, b
    nop
    inc b
    nop
    nop
    nop
    dec b
    rlca
    ld e, d
    cp $11
    cp $D9
    ld a, [de]
    ld bc, $0E00
    inc bc
    daa
    ld [bc], a
    inc h
    db $10
    sub d
    inc c
    rst $38
    inc b
    nop
    nop
    nop
    ld a, [bc]
    db $10
    sbc d
    inc b
    nop
    nop
    nop
    ld [$9110], sp
    inc b
    nop
    nop
    nop
    ld c, $10
    add d
    inc b
    nop
    nop
    nop
    ld c, $10
    ld h, d
    inc b
    nop
    nop
    nop
    ld [$5310], sp
    inc b
    nop
    nop
    nop
    ld c, $10
    ld d, e
    inc b
    nop
    nop
    nop
    ld [$5210], sp
    inc b
    nop
    nop
    nop
    ld c, $10
    ld d, c
    inc b
    nop
    nop
    nop
    ld [$5010], sp
    ld de, $67FF
    inc b
    nop
    nop
    nop
    ld a, [de]
    ld a, [de]
    ld bc, $0E00
    inc bc
    db $10
    ld [hl], e
    daa
    nop
    jp z, $FF0C

    inc b
    nop
    nop
    nop
    ld [$6310], sp
    inc b
    nop
    nop
    nop
    ld c, $10
    ld d, e
    inc b
    nop
    nop
    nop
    ld c, $10
    ld [bc], a
    ld de, $67FF
    inc b
    nop
    nop
    nop
    ld a, [de]
    ld a, [de]
    ld bc, $0E00
    ld bc, $0C20
    ld [bc], a
    rlca
    ld c, h
    nop
    inc bc
    ld bc, $58CC
    inc sp
    nop
    ld de, $67FF
    inc b
    nop
    nop
    nop
    ld a, [de]
    jr nz, @+$1C

    ld bc, $0E00
    ld bc, $020C
    add hl, bc
    rrca
    ld bc, $0400
    ld [$0C07], sp
    nop
    ld de, $52FF
    inc b
    nop
    nop
    nop
    rla
    ld a, [de]
    ld bc, $0E00
    inc bc
    daa
    rrca
    nop
    inc c
    rst $38
    stop
    inc b
    nop
    nop
    nop
    dec b
    db $10
    inc sp
    inc b
    nop
    nop
    nop
    dec b
    db $10
    ld [hl+], a
    inc b
    nop
    nop
    nop
    dec b
    ld de, $40FC
    inc b
    nop
    nop
    nop
    dec b
    ld a, [de]
    ld bc, $0E00
    ld [bc], a
    add hl, bc
    rrca
    ld hl, $0400
    nop
    nop
    nop
    dec c
    ld a, [de]
    inc bc
    nop
    ld c, $03
    inc c
    rst $38
    daa
    ld [bc], a
    inc h
    db $10
    ld d, c
    inc b
    nop
    nop
    nop
    ld c, $10
    ld b, h
    inc b
    nop
    nop
    nop
    ld [$0227], sp
    inc h
    db $10
    ld d, c
    inc b
    nop
    nop
    nop
    ld c, $10
    ld b, h
    inc b
    nop
    nop
    nop
    ld [$5010], sp
    ld de, $7CFF
    inc b
    nop
    nop
    nop
    ld e, $1A
    ld bc, $0E00
    inc bc
    add hl, bc
    rrca
    daa
    inc bc
    ret nz

    db $10
    ld e, l
    inc c
    rst $38
    ld de, $10FF
    inc b
    nop
    nop
    nop
    ld de, $011A
    nop
    ld c, $03
    inc c
    rst $38
    db $10
    inc b
    ld de, $7CFF
    inc b
    nop
    nop
    nop
    ld e, $1A
    ld bc, $0E00
    nop
    jr nz, jr_030_5FA6

    rrca
    inc c
    ld [bc], a
    rlca
    ld b, b
    ld a, [bc]
    ld de, $52FF

jr_030_5FA6:
    inc b
    nop
    nop
    nop
    rla
    ld a, [de]
    ld bc, $0E00
    ld [bc], a
    ld hl, $0400
    nop
    nop
    nop
    dec c
    ld a, [de]
    inc bc
    nop
    ld a, [de]
    nop
    nop
    ld c, $00
    inc c
    inc bc
    inc bc
    rst $38
    jp nz, $00F4

    nop
    inc b
    nop
    nop
    nop
    ld [$0003], sp
    db $EC
    inc c
    nop
    nop
    inc b
    nop
    nop
    nop
    ld c, $11
    db $FD
    call c, $0004
    nop
    nop
    ld [$0020], sp
    ld c, $03
    inc c
    nop
    db $10
    ld hl, $0509
    inc de
    ld bc, $0004
    nop
    nop
    ld [bc], a
    nop
    ld c, $03
    inc c
    nop
    db $10
    adc b
    add hl, bc
    add hl, bc
    inc de
    ld bc, $0004
    nop
    nop
    ld [bc], a
    nop
    ld c, $00
    jr nz, jr_030_6011

    ld [bc], a
    ld bc, $1900
    ld [bc], a
    inc b
    nop
    nop
    nop
    ld [$0108], sp

jr_030_6011:
    nop
    rrca
    inc b
    ld bc, $0000
    nop
    jr nz, jr_030_602D

    ld bc, $0028
    inc b
    nop
    nop
    nop
    dec b
    nop
    ld c, $02
    inc c
    ld bc, $0F09
    ld bc, $0100
    inc de

jr_030_602D:
    inc b
    ld bc, $0000
    nop
    jr nz, @+$15

    ld bc, $0028
    nop
    ld c, $01
    jr nz, @+$0E

    inc bc
    ld bc, $1000
    ld [$0004], sp
    ld bc, $0E00
    ld [$0000], sp
    ld a, [bc]
    inc b
    ld bc, $0000
    nop
    jr nz, @+$15

    ld bc, $0028
    nop
    ld c, $02
    inc c
    inc bc
    add hl, bc
    rrca
    inc b
    ld bc, $0000
    nop
    nop
    ld c, $01
    jr nz, jr_030_6071

    ld [bc], a
    ld bc, $1900
    ld [bc], a
    inc b
    nop
    nop
    nop
    ld [$0108], sp

jr_030_6071:
    nop
    rrca
    inc b
    ld bc, $0000
    nop
    jr nz, @+$15

    ld bc, $0004
    nop
    nop
    dec b
    jr z, jr_030_6082

jr_030_6082:
    nop
    ld c, $03
    inc c
    nop
    db $10
    ld bc, $FF11
    jp nz, $020A

    inc b
    nop
    nop
    nop
    dec d
    ld a, [bc]
    nop
    db $10
    db $10
    inc b
    nop
    nop
    nop
    dec d
    ld a, [bc]
    ld bc, $0010
    ld de, $D6FF
    inc b
    ld bc, $0000
    nop
    nop
    ld c, $02
    inc c
    ld [bc], a
    rrca
    ld bc, HeaderLogo
    nop
    nop
    nop
    dec c
    nop
    nop
    nop
    inc b
    nop
    dec bc
    nop
    nop
    rrca
    ld h, a
    cp $07
    nop
    ld sp, hl
    ret nz

    inc bc
    add b
    rst $38
    rlca
    rst $00
    rst $38
    dec h
    ld a, [bc]
    inc a
    rrca
    inc h
    ld a, [bc]
    inc a
    rrca
    ld [hl+], a
    ld a, [bc]
    inc a
    rrca
    inc e
    ld a, [bc]
    inc a
    rrca
    dec de
    ld a, [bc]
    inc a
    rrca
    ld hl, $3C0A
    rrca
    ld a, [de]
    ld a, [bc]
    inc a
    rrca
    add hl, de
    ld a, [bc]
    inc a
    rrca
    jr jr_030_60F6

    inc a
    rrca
    rra
    ld a, [bc]
    inc a
    rrca
    dec e
    ld a, [bc]
    inc a
    rrca

jr_030_60F6:
    jr nz, @+$0D

    inc a
    rrca
    inc hl
    ld a, [bc]
    inc a
    rrca
    rla
    ld a, [bc]
    inc a
    rrca
    ld d, $0A
    inc a
    rrca
    dec d
    ld a, [bc]
    inc a
    rrca
    inc d
    ld a, [bc]
    inc a
    rrca
    inc de
    ld a, [bc]
    inc a
    rrca
    ld [de], a
    ld a, [bc]
    inc a
    rrca
    ld de, $3C0A
    rrca
    db $10
    ld a, [bc]
    inc a
    rrca
    rrca
    ld a, [bc]
    inc a
    rrca
    ld c, $0A
    inc a
    rrca
    inc c
    ld a, [bc]
    inc a
    rrca
    dec bc
    ld a, [bc]
    inc a
    rrca
    ld a, [bc]
    ld a, [bc]
    inc a
    rrca
    add hl, bc
    ld a, [bc]
    inc a
    rrca
    ld [$3C0A], sp
    rrca
    rlca
    ld a, [bc]
    inc a
    rrca
    dec b
    dec bc
    inc a
    rrca
    ld b, $0B
    inc a
    rrca
    inc b
    ld a, [bc]
    inc a
    rrca
    inc bc
    ld a, [bc]
    inc a
    rrca
    ld [bc], a
    ld a, [bc]
    inc a
    rrca
    ld e, $0A
    inc a
    rrca
    dec c
    ld a, [bc]
    inc a
    rrca
    dec c
    ld a, [bc]
    inc a
    rrca
    dec c
    ld a, [bc]
    inc a
    rrca
    ld bc, $3C0A
    rrca
    nop
    ld a, [bc]
    inc a
    rrca
    nop
    ld b, b
    inc c
    nop
    nop
    ld bc, $40C0
    ld bc, $0000
    ld bc, $40D0
    ld bc, $0000
    ld bc, $40E0
    ld bc, $0000
    ld bc, $D10C
    ld l, a
    ld a, [bc]
    ld l, l
    ld a, l
    ld b, $02
    ld a, a
    add hl, bc
    pop hl
    ld a, [hl]
    inc bc
    nop
    ld b, b
    ld [bc], a
    nop
    ld b, b
    inc bc
    jp z, $065E

    xor d
    ld d, [hl]
    inc b
    nop
    ld b, b
    dec bc
    ld b, c
    ld e, e
    inc c
    nop
    ld b, b
    inc b
    jp $095A


    rst $30
    ld h, l
    inc c
    db $D3
    ld h, d
    ld a, [bc]
    nop
    ld b, b
    add hl, bc
    nop
    ld b, b
    dec bc
    ld c, a
    ld l, b
    ld a, [bc]
    ld c, h
    ld d, b
    ld [$4000], sp
    dec bc
    or [hl]
    ld c, l
    dec bc
    nop
    ld b, b
    dec bc
    ld d, c
    ld [hl], l
    inc bc
    add $79
    ld a, [bc]
    cp d
    ld e, a
    ld a, [bc]
    call c, $026E
    ld a, [hl-]
    halt
    inc c
    ld d, d
    ld c, h
    add hl, bc
    adc e
    halt
    dec b
    ld h, b
    ld e, b
    inc c
    and b
    ld d, h
    inc c
    db $DD
    ld e, e
    dec b
    nop
    ld b, b
    ld [$55BD], sp
    ld [$6ABC], sp
    dec b
    add hl, de
    ld [hl], b
    add hl, bc
    ld a, [hl-]
    ld d, h
    inc b
    rrca
    ld [hl], l
    inc c
    inc bc
    ld l, l
    inc c
    inc b
    ld l, b
    ld b, $00
    ld b, b
    ld b, $E4
    ld l, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
