; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    jp Jump_000_015B


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_08::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_10::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_18::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_20::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_28::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_30::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_38::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

VBlankInterrupt::
    jp Jump_000_2C7E


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

LCDCInterrupt::
    jp Jump_000_2C75


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

TimerOverflowInterrupt::
    jp Jump_000_2C1D


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SerialTransferCompleteInterrupt::
    reti


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

JoypadTransitionInterrupt::
    reti


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Boot::
    nop
    jp Jump_000_0150


HeaderLogo::
    db $CE, $ED, $66, $66, $CC, $0D, $00, $0B, $03, $73, $00, $83, $00, $0C, $00, $0D
    db $00, $08, $11, $1F, $88, $89, $00, $0E, $DC, $CC, $6E, $E6, $DD, $DD, $D9, $99
    db $BB, $BB, $67, $63, $6E, $0E, $EC, $CC, $DD, $DC, $99, $9F, $BB, $B9, $33, $3E

HeaderTitle::
    db "MAGI-KEEPER"

HeaderManufacturerCode::
    db "BKQE"

HeaderCGBFlag::
    db $C0

HeaderNewLicenseeCode::
    db $36, $54

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $1B

HeaderROMSize::
    db $05

HeaderRAMSize::
    db $03

HeaderDestinationCode::
    db $01

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $1C

HeaderGlobalChecksum::
    db $A8, $CB

Jump_000_0150:
    and a
    cp $11
    ld a, $00
    jr nz, jr_000_0158

    inc a

jr_000_0158:
    ld [$FFFE], a

Jump_000_015B:
    ld sp, $CEF5
    call Call_000_07F9
    ld a, [$FFFE]
    and a
    jp z, $024E

    xor a
    ld [$FF56], a
    ld [$0000], a
    ld [$3000], a
    ld a, $BF
    ld [$FF06], a
    ld a, $04
    ld [$FF07], a
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $5A78
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $5AD2
    jp Jump_000_0195


Jump_000_0195:
    ld hl, $C000
    ld bc, $0DF5
    ld a, $00
    ld e, a
    call Call_000_07E8
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $587D
    call Call_000_0863
    xor a
    ld [$C731], a
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $40B8
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $19
    ldh [$A8], a
    ld a, $12
    ld [$FFA9], a
    ld a, $47
    ld [$FFAA], a
    jp Jump_000_22D6


    jr nz, jr_000_0226

    ld h, c
    ld h, a
    ld l, c
    jr nz, jr_000_022C

    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_000_0205

    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, @+$53

    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_000_025D

    ld [hl], e
    jr nz, jr_000_024A

    ld [hl], b
    ld h, l
    ld h, e
    ld l, c
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_000_026E

    ld h, c
    ld h, h
    ld h, l
    ld h, [hl]

jr_000_0205:
    ld l, a
    ld [hl], d
    jr nz, jr_000_027E

    ld [hl], e
    ld h, l
    jr nz, jr_000_0284

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_000_0273

    jr nz, @+$49

    ld h, c
    ld l, l
    ld h, l
    jr nz, @+$44

    ld l, a
    ld a, c
    ld a, [de]
    ld d, d
    inc e
    jr nz, jr_000_0263

    ld l, a
    ld l, h
    ld l, a
    ld [hl], d
    jr nz, jr_000_027A

jr_000_0226:
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, @+$5B

jr_000_022C:
    ld l, a
    ld [hl], l
    ld h, c
    ld l, l
    ld h, l
    ld b, d
    ld l, a
    ld a, c
    jr nz, jr_000_0279

    ld l, a
    ld l, h
    ld l, a
    ld [hl], d
    jr nz, @+$22

    ld d, h
    ld l, a
    jr nz, @+$52

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_000_0299

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_000_0291

jr_000_024A:
    ld h, c
    ld l, l
    ld h, l
    ld l, $CD
    ld d, h
    ld [bc], a

Jump_000_0251:
    jp Jump_000_0251


    ld a, $06
    ld a, a
    ld [$C95B], a
    ld [$2000], a

jr_000_025D:
    ld a, $00
    ld hl, $8860

jr_000_0262:
    push af

jr_000_0263:
    push hl
    ld hl, $01D7
    ld c, a
    ld b, $00
    add hl, bc
    ld c, [hl]
    ld b, $10

jr_000_026E:
    call Call_000_0500
    ld a, $01

jr_000_0273:
    ld [$C6EF], a
    ld bc, $4000

jr_000_0279:
    add hl, bc

jr_000_027A:
    ld a, h
    ld [$C6EC], a

jr_000_027E:
    ld a, l
    ld [$C6EB], a
    pop de
    ld a, d

jr_000_0284:
    ld [$C6EE], a
    ld a, e
    ld [$C6ED], a
    push de
    ld e, $06
    ld hl, $2BB7

jr_000_0291:
    call Call_000_07A9
    pop hl
    ld bc, $0010
    add hl, bc

jr_000_0299:
    pop af
    inc a
    cp $6B
    jr nz, jr_000_0262

    ld b, $0D
    ld a, $86
    ld hl, $9C24
    call Call_000_02F1
    ld b, $0F
    ld a, $93
    ld hl, $9C83
    call Call_000_02F1
    ld b, $11
    ld a, $A2
    ld hl, $9CE2
    call Call_000_02F1
    ld b, $0E
    ld a, $B3
    ld hl, $9D44
    call Call_000_02F1
    ld b, $13
    ld a, $C1
    ld hl, $9DA1
    call Call_000_02F1
    ld b, $09
    ld a, $D4
    ld hl, $9E06
    call Call_000_02F1
    xor a
    ld [$FF0F], a
    ld [$FFA5], a
    ld a, $03
    ld [$FFFF], a
    ld a, $E1
    ld [$FF40], a
    xor a
    ld [$FFFF], a
    ret


Call_000_02F1:
jr_000_02F1:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_000_02F1

    ret


Jump_000_02F7:
    ldh a, [$AF]
    inc a
    ldh [$AF], a
    ld a, [$C955]
    bit 3, a
    jr z, jr_000_0333

    ld a, [$C955]
    bit 0, a
    jr nz, jr_000_0333

    ld a, [$C732]
    cp $01
    jr z, jr_000_0333

    ld a, [$C731]
    cp $01
    jr z, jr_000_0333

    ld a, [$C735]
    cp $01
    jr z, jr_000_0333

    ld a, $01
    ld [$C733], a
    ld [$C734], a
    ld [$C731], a
    ld bc, $C72B
    ld hl, $C71F
    call Call_000_1903

jr_000_0333:
    call Call_000_08F7
    jp Jump_000_02F7


    adc c
    pop bc
    and h
    pop bc
    cp a
    pop bc
    jp c, $F5C1

    pop bc
    db $10
    jp nz, $C22B

    ld b, [hl]
    jp nz, $C261

    ld a, h
    jp nz, $C297

    or d
    jp nz, $C2CD

    add sp, -$3E
    inc bc
    jp $C31E


    add hl, sp
    jp $C354


    ld l, a
    jp $C38A


    and l
    jp $C3C0


    db $DB
    jp $C3F6


    ld de, $2CC4
    call nz, $C447
    ld h, d
    call nz, $C47D
    sbc b
    call nz, $C4B3
    adc $C4
    jp hl


    call nz, $C504
    rra
    push bc
    ld a, [hl-]
    push bc
    ld d, l
    push bc
    ld [hl], b
    push bc
    adc e
    push bc
    and [hl]
    push bc
    pop bc
    push bc
    call c, $F7C5
    push bc
    ld [de], a
    add $2D
    add $48
    add $63
    add $7E
    add $99
    add $B4
    add $AF
    ld h, a
    ld l, a
    ld [$C953], a
    ld a, e
    and a
    jr z, jr_000_03B4

    cp c
    jr c, jr_000_03B6

    ld a, d
    cp b
    jr c, jr_000_03B6

    ld a, $20
    ld [$C953], a
    ret


jr_000_03B4:
    cp d
    ret z

jr_000_03B6:
    srl b
    rr c
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    add hl, bc

jr_000_03CB:
    ld a, h
    cp d
    jr nz, jr_000_03D1

    ld a, l
    cp e

jr_000_03D1:
    jr nc, jr_000_03DD

    add hl, bc
    ld a, [$C953]
    inc a
    ld [$C953], a
    jr jr_000_03CB

jr_000_03DD:
    ld a, [$C953]
    ret


    ld a, c
    and a
    ret z

    cp $29
    jr nc, jr_000_040E

    cp $02
    jr nc, jr_000_03EF

    ld a, $01
    ret


jr_000_03EF:
    cp $05
    jr nc, jr_000_03F6

    ld a, $02
    ret


jr_000_03F6:
    cp $0B
    jr nc, jr_000_03FD

    ld a, $03
    ret


jr_000_03FD:
    cp $13
    jr nc, jr_000_0404

    ld a, $04
    ret


jr_000_0404:
    cp $1D
    jr nc, jr_000_040B

    ld a, $05
    ret


jr_000_040B:
    ld a, $06
    ret


jr_000_040E:
    cp $37
    jr nc, jr_000_0415

    ld a, $07
    ret


jr_000_0415:
    cp $47
    jr nc, jr_000_041C

    ld a, $08
    ret


jr_000_041C:
    cp $59
    jr nc, jr_000_0423

    ld a, $09
    ret


jr_000_0423:
    cp $6D
    jr nc, jr_000_042A

    ld a, $0A
    ret


jr_000_042A:
    cp $83
    jr nc, jr_000_0431

    ld a, $0B
    ret


jr_000_0431:
    cp $9B
    jr nc, jr_000_0438

    ld a, $0C
    ret


jr_000_0438:
    cp $B5
    jr nc, jr_000_043F

    ld a, $0D
    ret


jr_000_043F:
    cp $D0
    jr nc, jr_000_0446

    ld a, $0E
    ret


jr_000_0446:
    cp $EE
    jr nc, jr_000_044D

    ld a, $0F
    ret


jr_000_044D:
    ld a, $10
    ret


Call_000_0450:
    xor a
    ld [$C952], a
    ld [$C951], a
    ld [$C950], a
    ld a, d
    and $03
    jr z, jr_000_0498

    cp $03
    jr nz, jr_000_0474

    ld a, $07
    ld [$C952], a
    ld a, $06
    ld [$C951], a
    ld a, $08
    ld [$C950], a
    jr jr_000_0498

jr_000_0474:
    cp $02
    jr nz, jr_000_0489

    ld a, $05
    ld [$C952], a
    ld a, $01
    ld [$C951], a
    ld a, $02
    ld [$C950], a
    jr jr_000_0498

jr_000_0489:
    ld a, $02
    ld [$C952], a
    ld a, $05
    ld [$C951], a
    ld a, $06
    ld [$C950], a

jr_000_0498:
    ld a, [$C952]
    ld b, a
    ld a, e
    ld c, a

jr_000_049E:
    sub $64
    jr c, jr_000_04A6

    inc b
    ld c, a
    jr jr_000_049E

jr_000_04A6:
    ld a, b
    ld [$C952], a
    ld a, [$C951]
    ld b, a
    ld a, c

jr_000_04AF:
    sub $0A
    jr c, jr_000_04B7

    inc b
    ld c, a
    jr jr_000_04AF

jr_000_04B7:
    ld a, b
    ld [$C951], a
    ld a, [$C950]
    add c
    ld [$C950], a
    sub $0A
    jr c, jr_000_04D0

    ld [$C950], a
    ld a, [$C951]
    inc a
    ld [$C951], a

jr_000_04D0:
    ld a, [$C951]
    sub $0A
    jr c, jr_000_04E1

    ld [$C951], a
    ld a, [$C952]
    inc a
    ld [$C952], a

jr_000_04E1:
    ret


    ld hl, $0000
    ld a, c

jr_000_04E6:
    sub b
    jr c, jr_000_04EC

    inc h
    jr jr_000_04E6

jr_000_04EC:
    add b
    ld l, a
    ret


    ld c, a
    ld b, $00
    ld a, c
    cpl
    ld c, a
    ld a, b
    cpl
    ld b, a
    inc bc
    xor a

jr_000_04FA:
    add hl, bc
    ret nc

    inc a
    jr jr_000_04FA

    ret


Call_000_0500:
    ld e, b
    ld hl, $0000
    ld d, $00
    bit 0, c
    jr z, jr_000_050B

    add hl, de

jr_000_050B:
    sla e
    rl d
    bit 1, c
    jr z, jr_000_0514

    add hl, de

jr_000_0514:
    sla e
    rl d
    bit 2, c
    jr z, jr_000_051D

    add hl, de

jr_000_051D:
    sla e
    rl d
    bit 3, c
    jr z, jr_000_0526

    add hl, de

jr_000_0526:
    sla e
    rl d
    bit 4, c
    jr z, jr_000_052F

    add hl, de

jr_000_052F:
    sla e
    rl d
    bit 5, c
    jr z, jr_000_0538

    add hl, de

jr_000_0538:
    sla e
    rl d
    bit 6, c
    jr z, jr_000_0541

    add hl, de

jr_000_0541:
    sla e
    rl d
    bit 7, c
    ret z

    add hl, de
    ret


    ld h, $00
    ld d, h
    ld a, l
    and a
    ret z

    ld e, a
    ld a, b
    and a
    ret z

    dec b
    jr nz, jr_000_0559

    xor a
    ret


jr_000_0559:
    add hl, de
    dec b
    jr nz, jr_000_0559

    sla h
    sla h
    sla h
    srl l
    srl l
    srl l
    srl l
    srl l
    ld a, h
    add l
    ret


    ld a, [$FF04]
    rra
    bit 0, a
    jr nz, jr_000_057A

    swap a

jr_000_057A:
    and $3F
    inc a

jr_000_057D:
    dec a
    jr nz, jr_000_057D

    ld a, [$FF04]
    and c
    ret


Call_000_0585:
    ldh a, [rDIV]
    swap a
    sra a
    ld e, a
    ldh a, [rDIV]
    add e
    and $07
    dec a
    dec a
    dec a
    ld e, a
    ldh a, [$B0]
    add e
    ldh [$B0], a
    ret


Call_000_059B:
    ld de, $0004
    ld a, $28
    ld b, a
    ld hl, $C000
    ld a, $FF

jr_000_05A6:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_000_05A6

    ld a, $28
    ld b, a
    ld hl, $FE00
    ld a, $FF

jr_000_05B3:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_000_05B3

    ret


Call_000_05B9:
    ldh a, [$97]
    ldh [$98], a
    ld a, $FF
    ldh [$97], a
    ld a, [$C882]
    add $FE
    ld c, a
    ld a, [$FF91]
    ld d, a
    sub c
    bit 7, a
    ret nz

    add $F2
    bit 7, a
    ret z

    ld a, [$C883]
    add $FE
    ld c, a
    ld a, [$FF92]
    ld e, a
    sub c
    bit 7, a
    ret nz

    add $F3
    bit 7, a
    ret z

    ld a, [$C958]
    ld c, a
    ld a, d
    add a
    add a
    add a
    add a
    ld b, $08
    add b
    ld b, a
    ld a, [$FF8F]
    add b
    sub c
    ld d, a
    ldh [$96], a
    ld a, [$C957]
    ld c, a
    ld a, e
    add a
    add a
    add a
    add a
    ld b, $10
    add b
    ld b, a
    ld a, [$FF90]
    add b
    sub c
    ld e, a
    ldh [$97], a

Jump_000_0611:
    ld b, $C0
    ld a, [$C74B]
    ld c, a

jr_000_0617:
    ld a, [hl+]
    cp $80
    jr z, jr_000_062E

    add e
    ld [bc], a
    inc c
    ld a, [hl+]
    add d
    ld [bc], a
    inc c
    ldh a, [$95]
    add [hl]
    inc hl
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    jr jr_000_0617

jr_000_062E:
    ld a, c
    ld [$C74B], a
    ret


    ld h, $C0
    ld a, [$C74B]
    ld l, a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, l
    ld [$C74B], a
    ret


Call_000_0646:
    ldh a, [$97]
    ldh [$98], a
    ld a, $FF
    ldh [$97], a
    ld a, [$FF91]
    ld d, a
    ldh [$96], a
    ld a, [$FF92]
    ld e, a
    jp Jump_000_0611


Call_000_065B:
    ld a, [$C74C]
    ld b, a
    ld a, [$C74B]
    sub b
    jr nc, jr_000_067C

    cpl
    inc a
    srl a
    srl a
    ld e, a
    ld bc, $0004
    ld h, $C0
    ld a, [$C74B]
    ld l, a
    ld a, $FF

jr_000_0677:
    ld [hl], a
    add hl, bc
    dec e
    jr nz, jr_000_0677

jr_000_067C:
    ld a, [$C74B]
    ld [$C74C], a
    ld a, $00
    ld [$C74B], a
    ret


Call_000_0688:
    ld a, [$C94F]
    call $4320
    ret


    ld a, $07
    call $4307
    ld a, $0F
    ld [$C94F], a
    call $4320
    ld a, $0F
    ld [$C94E], a
    call $4339
    ret


    ret


    xor a
    ld [$C941], a
    ld [$C947], a
    call $57A0
    ld a, [$C943]
    call $5702
    call Call_000_0688
    ret


    ld a, [$C94C]
    ld e, a
    ld a, [$C94B]
    inc a
    ld [$C94B], a
    cp e
    jp nz, Jump_000_06DB

    xor a
    ld [$C94B], a
    ld a, [$C94F]
    and a
    jp z, Jump_000_06DF

    dec a
    jp z, Jump_000_06DF

    ld [$C94F], a

Jump_000_06DB:
    call Call_000_0688
    ret


Jump_000_06DF:
    ld a, $FF
    ld [$C943], a
    xor a
    ld [$C94F], a
    ld [$C94D], a
    ld a, $01
    ld [$C94C], a
    call Call_000_0688
    call $57A0
    ret


    ld a, [$C94C]
    ld e, a
    ld a, [$C94B]
    inc a
    ld [$C94B], a
    cp e
    jp nz, Jump_000_0716

    xor a
    ld [$C94B], a
    ld a, [$C94F]
    inc a
    cp $0F
    jp z, Jump_000_071A

    ld [$C94F], a

Jump_000_0716:
    call Call_000_0688
    ret


Jump_000_071A:
    ld [$C94F], a
    xor a
    ld [$C94D], a
    ld a, $01
    ld [$C94C], a
    call Call_000_0688
    ret


    call Call_000_0688
    xor a
    ld [$C94D], a
    ret


    ld a, $FF
    ld [$C943], a
    call $57A0
    ret


    call $5798
    ret


    call $57CF
    ret


    ld a, [$C944]
    ld b, $0F
    ld c, $01
    call $4F44
    ld a, $FF
    ld [$C944], a
    ret


    ld a, [$C945]
    ld b, $0F
    ld c, $01
    call $4F44
    ld a, $FF
    ld [$C945], a
    ret


    ld a, $30
    ld [$C95B], a
    ld [$2000], a
    call $5798
    ld c, $52
    ld hl, $C8EC
    ld a, $30
    ld [$C95B], a
    ld [$2000], a
    call $57E0
    ld a, [$C948]
    call $5702
    ret


    call $5759
    jr nz, jr_000_07A8

    ld [$C947], a
    ld c, $52
    ld hl, $C8EC
    ld a, $30
    ld [$C95B], a
    ld [$2000], a
    call $57EE
    ld a, $30
    ld [$C95B], a
    ld [$2000], a
    call $57CF

jr_000_07A8:
    ret


Call_000_07A9:
    ld a, [$C95B]
    push af
    ld a, e
    ld [$C95B], a
    ld [$2000], a
    call Call_000_07BF
    pop af
    ld [$C95B], a
    ld [$2000], a
    ret


Call_000_07BF:
    jp hl


jr_000_07C0:
    ld a, [hl]
    add e
    cp d
    jr c, jr_000_07C6

    ld a, d

jr_000_07C6:
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_07C0

    ret


jr_000_07CD:
    ld a, [hl]
    and e
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_07CD

    ret


Call_000_07D6:
jr_000_07D6:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_07D6

    ret


jr_000_07DF:
    ld a, [hl]
    or e
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_07DF

    ret


Call_000_07E8:
jr_000_07E8:
    ld a, e
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_07E8

    ret


jr_000_07F0:
    ld a, [hl]
    xor e
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_07F0

    ret


Call_000_07F9:
    xor a
    ld [$C959], a
    ld a, [$FF40]
    bit 7, a
    ret z

    xor a
    ld [$FF0F], a
    ld [$FFFF], a

jr_000_080A:
    ld a, [$FF44]
    cp $91
    jr nz, jr_000_080A

    xor a
    ld [$FF40], a
    ld [$FF0F], a
    ld [$FFFF], a
    ei
    call Call_000_2C61
    ret


Call_000_0820:
    ld a, [$C959]
    and a
    ret nz

    ld a, $40
    ld [$FF41], a
    xor a
    ld [$FF0F], a
    ld [$FFA5], a
    ld a, $03
    ld [$FFFF], a
    ld a, $E3
    ld [$FF40], a
    ld [$C959], a
    ei
    ret


    ld a, [$C959]
    and a
    jr nz, jr_000_085B

    ld a, [$C6EA]
    ld [$C95B], a
    ld [$2000], a
    ld a, [$C6E9]
    ld h, a
    ld a, [$C6E8]
    ld l, a
    call Call_000_07BF
    ret


jr_000_085B:
    ld a, $06
    ldh [$A5], a
    call Call_000_09DC
    ret


Call_000_0863:
    ld a, $05
    ld [$C95B], a
    ld [$2000], a
    call $47AF
    ld a, $FF
    ld [$C6DE], a
    ld a, $FF
    ld [$C6E2], a
    xor a
    xor a
    ld [$C6EA], a
    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ld a, $B7
    ld [$C6E6], a
    ld a, $2C
    ld [$C6E7], a
    ld a, $25
    ld [$FFA0], a
    ld a, $2D
    ld [$FFA1], a
    ld a, $00
    ld [$C74B], a
    ld [$C74C], a
    call Call_000_059B
    ld hl, $244D
    ld e, $00
    call Call_000_07A9
    ld a, $01
    ld [$C95B], a
    ld [$2000], a
    call $40D3
    xor a
    ld [$C954], a
    ld [$C955], a
    ld [$C956], a
    ld a, $00
    ld [$C9EB], a
    ld a, $00
    ld [$C9EC], a
    ld hl, $CA1C
    ld a, $19
    ld [hl+], a
    ld a, $E9
    ld [hl+], a
    ld a, $46
    ld [hl+], a
    xor a
    ld [$C95A], a
    ld [$C95B], a
    ld [$C188], a
    ld [$C6D8], a
    ld [$CCC3], a
    ld [$C6F7], a
    ld a, $03
    ld [$C6F3], a
    ld hl, $FFB1
    ld [hl+], a
    ld [hl+], a
    ret


Call_000_08F7:
    ld a, [$C95A]
    push af
    ld a, [$C95B]
    push af
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $4D1E
    call $51C1
    xor a
    ld [$C866], a
    ld [$C867], a
    call Call_000_2B53
    ld hl, $C70A
    call Call_000_2B96
    call Call_000_0AA7
    call Call_000_2B78
    ld hl, $C711
    call Call_000_2B96
    call Call_000_0AA7
    call Call_000_2B78
    ld hl, $C718
    call Call_000_2B96
    call Call_000_0AA7
    call Call_000_2B78
    ld hl, $C71F
    call Call_000_2B96
    call Call_000_0AA7
    call Call_000_2B78
    ld a, [$C6F2]
    and a
    jr z, jr_000_0956

    xor a
    ld hl, $C9CC
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_000_0965

jr_000_0956:
    ld hl, $C9CC
    ld a, [$C954]
    ld [hl+], a
    ld a, [$C955]
    ld [hl+], a
    ld a, [$C956]
    ld [hl+], a

jr_000_0965:
    ld hl, $FFB1
    ld a, [hl+]
    ld [hl-], a
    xor a
    ld [hl], a
    ld a, $01
    ld [$C95B], a
    ld [$2000], a
    call $407D
    call Call_000_065B
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $58C0
    ld a, $07
    ldh [$A5], a
    call Call_000_09DC
    pop af
    ld [$C95B], a
    ld [$2000], a
    pop af
    ld [$C95A], a
    ld [$FF70], a
    ret


Call_000_099B:
    ld a, [$C95A]
    push af
    ld a, [$C95B]
    push af
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $4D1E
    call $51C1
    xor a
    ld [$C866], a
    ld [$C867], a
    call Call_000_065B
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $58C0
    ld a, $07
    ldh [$A5], a
    call Call_000_09DC
    pop af
    ld [$C95B], a
    ld [$2000], a
    pop af
    ld [$C95A], a
    ld [$FF70], a
    ret


Call_000_09DC:
    ldh a, [$A5]
    set 7, a
    ldh [$A5], a
    halt
    nop

jr_000_09E4:
    ldh a, [$A5]
    bit 7, a
    jr nz, jr_000_09E4

    ret


Call_000_09EB:
Jump_000_09EB:
    ld a, [hl]
    bit 6, a
    jr nz, jr_000_09FA

    bit 7, a
    jr nz, jr_000_09F7

    jp Jump_000_0A04


jr_000_09F7:
    jp Jump_000_0A24


jr_000_09FA:
    bit 7, a
    jr nz, jr_000_0A01

    jp Jump_000_0A13


jr_000_0A01:
    jp Jump_000_0A33


Jump_000_0A04:
    ld a, [hl+]
    and $3F
    and a
    ret z

    ld c, a

jr_000_0A0A:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_0A0A

    jp Jump_000_09EB


Jump_000_0A13:
    ld a, [hl+]
    and $3F
    ld b, a
    ld a, [hl+]
    ld c, a

jr_000_0A19:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, jr_000_0A19

    jp Jump_000_09EB


Jump_000_0A24:
    ld a, [hl+]
    and $3F
    and a
    ret z

    ld c, a
    ld a, [hl+]

jr_000_0A2B:
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_0A2B

    jp Jump_000_09EB


Jump_000_0A33:
    ld a, [hl+]
    and $3F
    ld b, a
    ld a, [hl+]
    ld c, a

jr_000_0A39:
    ld a, [hl]
    ld [de], a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, jr_000_0A39

    inc hl
    jp Jump_000_09EB


    ld a, $13
    ld [$C95B], a
    ld [$2000], a
    ld a, [hl+]
    ld e, a
    ld a, $01
    ld [$C95B], a
    ld [$2000], a
    ld a, e
    ret


    ld a, $13
    ld [$C95B], a
    ld [$2000], a
    ld a, [hl+]
    ld [$C718], a
    ld a, [hl+]
    ld [$C719], a
    ld a, [hl+]
    ld [$C71A], a
    ld a, $01
    ld [$C95B], a
    ld [$2000], a
    ret


    ld a, $13
    ld [$C95B], a
    ld [$2000], a
    ld a, [hl+]
    ld e, a
    ld a, $01
    ld [$C95B], a
    ld [$2000], a
    ld a, e
    ret


    ld a, $13
    ld [$C95B], a
    ld [$2000], a
    ld a, [hl+]
    ld [$C718], a
    ld a, [hl+]
    ld [$C719], a
    ld a, [hl+]
    ld [$C71A], a
    ld a, $01
    ld [$C95B], a
    ld [$2000], a
    ret


Call_000_0AA7:
    ld a, [$C95B]
    push af
    ldh a, [$A8]
    bit 7, a
    jr z, jr_000_0AB3

    ld a, $01

jr_000_0AB3:
    ld a, a
    ld [$C95B], a
    ld [$2000], a
    ld hl, $FFA9
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, [$FFAC]
    ld h, a
    ld a, [$FFAB]
    ld l, a
    call Call_000_07BF
    pop af
    ld [$C95B], a
    ld [$2000], a
    ret


Jump_000_0AD3:
    ld a, [bc]
    inc bc
    add a
    ld e, a
    ld d, $00
    rl d
    ld hl, $FFA9
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $42AC
    add hl, de
    ld a, $01
    ld [$C95B], a
    ld [$2000], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$FFA8]
    ld [$C95B], a
    ld [$2000], a
    ld a, h
    ld [$FFAC], a
    ld a, l
    ld [$FFAB], a
    jp hl


Call_000_0B02:
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ret


Call_000_0B0C:
Jump_000_0B0C:
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, $D3
    ld [hl+], a
    ld a, $0A
    ld [hl+], a
    inc hl
    inc hl
    ret


Call_000_0B1E:
    inc hl
    inc hl
    inc hl
    ld a, $31
    ld [hl+], a
    ld a, $15
    ld [hl+], a
    inc hl
    inc hl
    ret


Call_000_0B2A:
    inc hl
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    jp Jump_000_0B0C


Call_000_0B49:
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, $D3
    ld [hl+], a
    ld [hl], $0A
    inc hl
    inc hl
    inc hl
    ret


    ld a, $01
    ld [$C95B], a
    ld [$2000], a
    jp $441A


    ld a, [bc]
    inc bc
    ld [$C9C4], a
    ld a, [bc]
    inc bc
    ld [$C9C5], a
    jp Jump_000_0AD3


    ld a, [bc]
    inc bc
    ld l, a
    ld a, [$C18E]
    sub l
    ld l, a
    ld a, [bc]
    inc bc
    add l
    ld [$C9C4], a
    ld a, [bc]
    inc bc
    ld l, a
    ld a, [$C18F]
    sub l
    ld l, a
    ld a, [bc]
    inc bc
    add l
    ld [$C9C5], a
    jp Jump_000_0AD3


    call Call_000_0E7A

Jump_000_0B92:
    ld de, $0005
    add hl, de
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [hl+]
    add e
    ld e, a
    ld a, [bc]
    inc bc
    add d
    ld d, a
    push de
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    inc bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [bc]
    inc bc
    ld [hl], a
    ld a, $03
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [bc]
    inc bc
    ld [hl], a
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    pop de
    ld a, $01
    ld [$C95B], a
    ld [$2000], a
    jp $4626


    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    jp Jump_000_0AD3


    call Call_000_0E7A

Jump_000_0BEC:
    ld de, $0007
    add hl, de
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    inc bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, $06
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [bc]
    inc bc
    ld [hl], a
    ld a, $04
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [bc]
    inc bc
    ld [hl], a
    jp Jump_000_0AD3


    call Call_000_0E7A
    call Call_000_0B2A
    call Call_000_0B1E
    call Call_000_0B02
    jp Jump_000_0AD3


    call Call_000_0E7A
    ld de, $0003
    add hl, de
    push hl
    call Call_000_0E7A
    ld de, $0005
    add hl, de
    pop de
    ld a, $08
    ld [de], a
    inc de
    ld a, $08
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    jp Jump_000_0AD3


    call Call_000_0E7A
    inc hl
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    jp Jump_000_0AD3


    call Call_000_0E7A
    jp Jump_000_0E88


    call Call_000_0E7A
    ld de, $000A
    add hl, de
    ld a, [bc]
    inc bc
    ld [hl+], a
    call Call_000_0B49
    inc hl
    inc hl
    inc hl
    ld a, $31
    ld [hl+], a
    ld [hl], $15
    jp Jump_000_0AD3


    call Call_000_0E7A
    ld de, $0009
    add hl, de
    ld a, [bc]
    ld [hl+], a
    inc bc
    jp Jump_000_0AD3


    call Call_000_0E7A
    bit 6, [hl]
    jr nz, jr_000_0C9D

    push bc
    ld b, h
    ld c, l
    ld a, $01
    ld [$C95B], a
    ld [$2000], a
    call $403D
    ld a, [$FFA8]
    ld [$C95B], a
    ld [$2000], a
    pop bc

jr_000_0C9D:
    res 7, [hl]
    jp Jump_000_0AD3


    call Call_000_0E7A
    set 7, [hl]
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    ld hl, $FF8C
    jp Jump_000_0B92


    ld hl, $FF8C
    jp Jump_000_0BEC


    call Call_000_0E7A
    ld de, $0005
    add hl, de
    ld a, $08
    ldh [$8F], a
    ld a, $08
    ldh [$90], a
    ld a, [$FF9D]
    ldh [$91], a
    ld a, [$FF9C]
    ldh [$92], a
    ld a, [$FF9E]
    ldh [$93], a
    ld a, [$FF9F]
    ldh [$94], a
    jp Jump_000_0AD3


    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    inc bc
    ld a, d
    ld [$C187], a
    ld a, e
    ld [$C186], a
    jp Jump_000_0AD3


    ld a, $70
    ldh [$8D], a
    ld a, $6E
    ldh [$8E], a
    ld a, $0E
    ldh [$AB], a
    ld a, $0D
    ldh [$AC], a
    ret


    ld a, $01
    ld [$C95B], a
    ld [$2000], a
    jp $444D


    ld hl, $C190
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ldh a, [$94]
    ld h, a
    ldh a, [$93]
    ld l, a
    ld a, l
    cp e
    jr nz, jr_000_0D2D

    ld a, h
    cp d
    jr z, jr_000_0D53

jr_000_0D2D:
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld e, [hl]
    ld a, [bc]
    inc bc
    cp e
    jr nz, jr_000_0D53

    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $F8
    ldh [$8D], a
    ld a, $4A
    ldh [$8E], a
    ret


jr_000_0D53:
    ld a, $FD
    ldh [$AB], a
    ld a, $0C
    ldh [$AC], a
    ret


    ld a, $03
    ld [$C188], a
    ld a, $20
    ld [$C18A], a
    ld a, $64
    ld [$C18B], a
    jp Jump_000_1531


    ld a, [bc]
    inc bc
    ld [$FF8D], a
    ld a, [bc]
    inc bc
    ld [$FF8E], a
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    ld a, [$FF8B]
    ld h, a
    ld a, [$FF8A]
    ld l, a
    ld de, $0011
    add hl, de
    ld a, [bc]
    inc bc
    ld [hl+], a
    call Call_000_0B49
    jp Jump_000_0AD3


jr_000_0DA0:
    ld a, [$FF8B]
    ld h, a
    ld a, [$FF8A]
    ld l, a
    ld de, $0011
    add hl, de
    ld a, [bc]
    inc bc
    and a
    jp z, Jump_000_0AD3

    ld [hl+], a
    call Call_000_0B49
    ld a, [bc]
    inc bc
    and a
    jr z, jr_000_0DA0

    ldh [$AD], a
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $CF
    ld [$FFAB], a
    ld a, $0D
    ld [$FFAC], a
    ldh a, [$AD]
    dec a
    jr z, jr_000_0DD7

    ldh [$AD], a
    ret


jr_000_0DD7:
    ld a, $A0
    ld [$FFAB], a
    ld a, $0D
    ld [$FFAC], a
    ret


jr_000_0DE2:
    ld a, [$FF8B]
    ld h, a
    ld a, [$FF8A]
    ld l, a
    ld de, $0011
    add hl, de
    ld a, [bc]
    inc bc
    and a
    jp z, Jump_000_0AD3

    ld [hl+], a
    call Call_000_0B49
    ld a, [bc]
    inc bc
    and a
    jp nz, Jump_000_0E02

    inc bc
    inc bc
    jr jr_000_0DE2

Jump_000_0E02:
    ldh [$AD], a
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $16
    ld [$FFAB], a
    ld a, $0E
    ld [$FFAC], a
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [$C866]
    add l
    ld [$C866], a
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [$C867]
    add l
    ld [$C867], a
    ldh a, [$AD]
    dec a
    jr z, jr_000_0E32

    ldh [$AD], a
    ret


jr_000_0E32:
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $E2
    ld [$FFAB], a
    ld a, $0D
    ld [$FFAC], a
    ret


    ld hl, $FF8C
    jp Jump_000_0E88


    ld a, [bc]
    inc bc
    ldh [$95], a
    jp Jump_000_0AD3


    ldh a, [$8C]
    set 7, a
    ldh [$8C], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    ld a, [$FF94]
    ld h, a
    ld a, [$FF93]
    ld l, a
    ld a, $03
    ld [$C95A], a
    ldh [rSVBK], a
    ld e, [hl]
    ld a, [bc]
    cp e
    ret nz

    inc bc
    jp Jump_000_0AD3


Call_000_0E7A:
    ld a, [bc]
    inc bc
    add a
    ld e, a
    ld d, $00
    ld hl, $0339
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Jump_000_0E88:
    ld de, $0003
    add hl, de
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
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    jp Jump_000_0AD3


    call Call_000_0E7A
    ld de, $0018
    add hl, de
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, $31
    ld [hl+], a
    ld [hl], $15
    jp Jump_000_0AD3


    ld a, [$FF8B]
    ld h, a
    ld a, [$FF8A]
    ld l, a
    ld de, $0018
    add hl, de
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    jp Jump_000_0AD3


    ld hl, $C1A4
    ld de, $000A
    add hl, de
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, $D3
    ld [hl+], a
    ld [hl], $0A
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $31
    ld [hl+], a
    ld [hl], $15
    dec bc
    dec bc
    dec bc
    ld a, [$FF8B]
    ld h, a
    ld a, [$FF8A]
    ld l, a
    ld de, $000A
    add hl, de
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    jp Jump_000_0AD3


    ld hl, $C1A4
    ld de, $000A
    add hl, de
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [$FF8B]
    ld h, a
    ld a, [$FF8A]
    ld l, a
    ld de, $000A
    add hl, de
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld [$FFA9], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld [$FFAA], a
    ld a, $D3
    ld [hl+], a
    ld [hl], $0A
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $31
    ld [hl+], a
    ld [hl], $15
    jp Jump_000_0AD3


    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ret


    ld a, [bc]
    inc bc
    ld [$C944], a
    jp Jump_000_0AD3


    ld a, [bc]
    inc bc
    ld [$C945], a
    jp Jump_000_0AD3


    ld a, $02
    ld [$C942], a
    jp Jump_000_0AD3


    ld a, $04
    ld [$C942], a
    jp Jump_000_0AD3


    ld a, [bc]
    inc bc
    push de
    ld a, a
    ld e, a
    ld a, [$C943]
    cp e
    jr z, jr_000_0F85

    ld a, e
    ld [$C943], a
    ld a, $01
    ld [$C941], a

jr_000_0F85:
    xor a
    ld [$C94D], a
    ld a, $0F
    ld [$C94F], a
    pop de
    jp Jump_000_0AD3


    ld a, [bc]
    inc bc
    swap a
    and $0F
    inc a
    ld [$C94C], a
    xor a
    ld [$C94B], a
    ld a, $01
    ld [$C94D], a
    jp Jump_000_0AD3


    ld a, [bc]
    inc bc
    swap a
    and $0F
    inc a
    ld [$C94C], a
    xor a
    ld [$C94B], a
    ld [$C94F], a
    ld a, $02
    ld [$C94D], a
    jp Jump_000_0AD3


    ld a, [bc]
    inc bc
    and $0F
    ld [$C94F], a
    xor a
    ld [$C94B], a
    ld [$C94C], a
    ld a, $04
    ld [$C94D], a
    jp Jump_000_0AD3


    ld a, [bc]
    inc bc
    ld e, a
    ld a, [$C947]
    and a
    jr nz, @+$0C

    ld a, $02
    ld [$C947], a
    ld a, e
    ld [$C948], a
    jp Jump_000_0AD3


    ld a, $01
    ld [$C942], a
    jp Jump_000_0AD3


    ld a, [$C18E]
    ld [$C9C4], a
    ld a, [$C18F]
    ld [$C9C5], a
    ld a, $07
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [bc]
    inc bc
    ld [$CA07], a
    ld a, [bc]
    inc bc
    ld [$D391], a
    cp $6C
    jr z, jr_000_1018

    xor a
    jr jr_000_101A

jr_000_1018:
    ld a, $01

jr_000_101A:
    ld [$D0D3], a
    ld a, [bc]
    inc bc
    ld [$D36D], a
    ld hl, $C70A
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    xor a
    ld [$D0D7], a
    ld a, $D3
    ld [$C70D], a
    ld a, $0A
    ld [$C70E], a
    ld a, b
    ldh [$AA], a
    ld a, c
    ldh [$A9], a
    ld a, $88
    ldh [$AB], a
    ld a, $10
    ldh [$AC], a
    ld a, $18
    ldh [$A6], a
    ld a, $C7
    ldh [$A7], a
    call Call_000_2B78
    ld a, $04
    ld [$C95B], a
    ld [$2000], a
    jp $415D


    ld a, $04
    call Call_000_114F
    jp $4023


    ld a, $68
    ldh [$AB], a
    ld a, $10
    ldh [$AC], a
    xor a
    ld [$D3C2], a
    ret


    ld a, $04
    call Call_000_114F
    jp $4054


    jp $40C0


    ld a, $01
    call Call_000_114F
    jp $40C1


    xor a
    ld [$D3C2], a
    ld a, $95
    ldh [$AB], a
    ld a, $10
    ldh [$AC], a
    ret


    ld a, [$D3C2]
    and a
    ret z

    jp Jump_000_0AD3


    ld a, $02
    call Call_000_114F
    jp $40EE


    ld a, $04
    call Call_000_114F
    xor a
    ld [$D396], a
    jp $41A4


    ld a, $05
    call Call_000_114F
    jp $41A4


    ld a, $04
    call Call_000_114F
    jp $420C


    ld a, [bc]
    ld [$C863], a
    inc bc
    ld a, [bc]
    ld [$C864], a
    inc bc
    ld a, [$C943]
    ld [$C946], a
    ld a, [bc]
    inc bc
    push bc
    cp $FF
    jr z, jr_000_10F4

    push de
    ld a, a
    ld e, a
    ld a, [$C943]
    cp e
    jr z, jr_000_10EA

    ld a, e
    ld [$C943], a
    ld a, $01
    ld [$C941], a

jr_000_10EA:
    xor a
    ld [$C94D], a
    ld a, $0F
    ld [$C94F], a
    pop de

jr_000_10F4:
    pop bc
    ld a, b
    ldh [$AA], a
    ld a, c
    ldh [$A9], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    jp $5873


    ld a, $07
    ld [$C95A], a
    ldh [rSVBK], a
    ld hl, $D3CD
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
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    jp Jump_000_0AD3


    ld a, $01
    ld [$C6D8], a
    ld a, $FF
    ld [$C6D7], a
    ld hl, $C6DB
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld hl, $C6D9
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    jp Jump_000_0AD3


Call_000_114F:
    ld l, c
    ld h, b
    ld de, $D392
    ld c, a
    ld b, $00
    ld a, $07
    ld [$C95A], a
    ldh [rSVBK], a
    call Call_000_07D6
    ld a, h
    ldh [$AA], a
    ld a, l
    ldh [$A9], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, $02
    ld [$C95B], a
    ld [$2000], a
    ret


    ld a, $30
    ld [$CA0D], a
    ld a, $60
    ld [$CA11], a
    ld a, $41
    ld [$CA12], a
    jp Jump_000_1308


    ld a, [$CA07]
    ld e, a
    push de
    ld a, [bc]
    ld [$CA07], a
    inc bc
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ld a, $04
    ld [$C95B], a
    ld [$2000], a
    call $4190
    pop de
    ld a, e
    ld [$CA07], a
    ret


    ld a, [bc]
    ld [$C9FD], a
    inc bc
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    xor a
    ld [$C9FE], a
    ld a, $04
    ld [$C95B], a
    ld [$2000], a
    call $4190
    ret


    ld a, [bc]
    ld [$CA07], a
    inc bc
    ld a, [bc]
    ld [$CA05], a
    inc bc
    ld a, [bc]
    ld [$CA06], a
    inc bc
    ld a, $01
    ld [$C9EB], a
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $0A
    ld [$FFA6], a
    ld a, $C7
    ld [$FFA7], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    call Call_000_2B78
    call Call_000_07F9
    call Call_000_2C61
    call Call_000_2B17
    ld a, $04
    ld [$C95B], a
    ld [$2000], a
    call $4190
    call Call_000_20AC
    call Call_000_0820

jr_000_122B:
    ld a, $04
    ld [$C95B], a
    ld [$2000], a
    call $4190
    call $4190
    jr jr_000_122B

    ld a, $01
    ldh [$AE], a
    xor a
    ldh [$AD], a
    ld a, $55
    ld [$FFAB], a
    ld a, $12
    ld [$FFAC], a
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ret


    ld a, [bc]
    ld [$CA0B], a
    inc bc
    ld a, [bc]
    ld [$CA09], a
    inc bc
    ld a, [bc]
    ld [$CA0A], a
    inc bc
    ld a, $04
    ld [$C95B], a
    ld [$2000], a
    call $4190
    ret


    ld a, $01
    ld [$C709], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    ld a, $30
    ld [$CA0D], a
    ld a, $90
    ld [$CA11], a
    ld a, $41
    ld [$CA12], a
    jr jr_000_1308

    ld a, $24
    ld [$CA0D], a
    ld a, $90
    ld [$CA11], a
    ld a, $41
    ld [$CA12], a
    jr jr_000_1308

    ld a, [bc]
    inc bc
    ld [$CA0B], a
    ld a, [bc]
    inc bc
    ld [$CA0A], a
    ld a, [bc]
    inc bc
    ldh [$AD], a
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $C2
    ld [$FFAB], a
    ld a, $12
    ld [$FFAC], a
    ldh a, [$AD]
    and a
    jp z, Jump_000_0AD3

    dec a
    ldh [$AD], a
    ld a, $04
    ld [$C95B], a
    ld [$2000], a
    call $4190
    ret


    ld a, $54
    ld [$CA0D], a
    ld a, $90
    ld [$CA11], a
    ld a, $41
    ld [$CA12], a
    jr jr_000_1308

    ld a, $A8
    ld [$CA0D], a
    ld a, $90
    ld [$CA11], a
    ld a, $41
    ld [$CA12], a
    jr jr_000_1308

    ld a, $1D
    ld [$CA0D], a
    ld a, $90
    ld [$CA11], a
    ld a, $41
    ld [$CA12], a

Jump_000_1308:
jr_000_1308:
    xor a
    ld [$CA0C], a
    ld [$CA0F], a
    ld [$CA10], a
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    ld a, $08
    ld [$CA17], a
    ld a, $90
    ld [$CA13], a
    ld a, $41
    ld [$CA14], a
    jr jr_000_1345

    ld a, $10
    ld [$CA17], a
    ld a, $90
    ld [$CA13], a
    ld a, $41
    ld [$CA14], a

jr_000_1345:
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ld a, $04
    ld [$C95B], a
    ld [$2000], a
    call $415F
    ret


    sub c
    inc de
    and [hl]
    inc de
    or b
    inc de
    cp d
    inc de
    call nz, $CD13
    inc de
    db $D3
    inc de
    jp c, $E413

    inc de
    db $F4
    inc de
    rlca
    inc d
    ld d, $14
    jr nz, jr_000_1391

    ld a, [hl+]
    inc d
    cpl
    inc d
    inc [hl]
    inc d
    ld b, a
    inc d
    ld e, d
    inc d
    ld l, e
    inc d
    ld a, h
    inc d
    adc l
    inc d
    sbc [hl]
    inc d
    and a
    inc d

jr_000_1391:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [hl]
    ld e, a
    ld a, [bc]
    inc bc
    and e
    jr z, jr_000_13A2

    ld de, $FFFF
    ret


jr_000_13A2:
    ld de, $0000
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, [hl]
    ld d, $00
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ret


    ld a, [$C189]
    cpl
    and $03
    ld e, a
    ld d, $00
    ret


    ld a, [$A026]
    ld e, a
    ld a, [$A027]
    ld d, a
    ret


    ld a, [bc]
    inc bc
    ld e, a
    ld d, $00
    ret


    ld a, [bc]
    inc bc
    ld e, a
    ld a, [bc]
    inc bc
    ld d, a
    ret


    call Call_000_14BD
    ld a, e
    and l
    ld e, a
    ld a, d
    and h
    ld d, a
    ret


    call Call_000_14BD
    ld a, e
    or d
    ld de, $0000
    ret z

    ld a, l
    or h
    ret z

    ld de, $FFFF
    ret


    call Call_000_14BD
    ld a, e
    or l
    jr nz, jr_000_1403

    ld a, d
    or h
    jr nz, jr_000_1403

    ld de, $0000
    ret


jr_000_1403:
    ld de, $FFFF
    ret


    call Call_000_14C6
    ld a, d
    or e
    jr z, jr_000_1412

    ld de, $0000
    ret


jr_000_1412:
    ld de, $FFFF
    ret


    call Call_000_14BD
    ld a, e
    add l
    ld e, a
    ld a, d
    adc h
    ld d, a
    ret


    call Call_000_14BD
    ld a, l
    sub e
    ld e, a
    ld a, h
    sbc d
    ld d, a
    ret


    call Call_000_14C6
    inc de
    ret


    call Call_000_14C6
    dec de
    ret


    call Call_000_14BD
    ld a, e
    cp l
    jr nz, jr_000_1443

    ld a, d
    cp h
    jr nz, jr_000_1443

    ld de, $FFFF
    ret


jr_000_1443:
    ld de, $0000
    ret


    call Call_000_14BD
    ld a, e
    cp l
    jr nz, jr_000_1456

    ld a, d
    cp h
    jr nz, jr_000_1456

    ld de, $0000
    ret


jr_000_1456:
    ld de, $FFFF
    ret


    call Call_000_14BD
    ld a, e
    sub l
    ld a, d
    sbc h
    jr nc, jr_000_1467

    ld de, $FFFF
    ret


jr_000_1467:
    ld de, $0000
    ret


    call Call_000_14BD
    ld a, l
    sub e
    ld a, h
    sbc d
    jr nc, jr_000_1478

    ld de, $0000
    ret


jr_000_1478:
    ld de, $FFFF
    ret


    call Call_000_14BD
    ld a, l
    sub e
    ld a, h
    sbc d
    jr nc, jr_000_1489

    ld de, $FFFF
    ret


jr_000_1489:
    ld de, $0000
    ret


    call Call_000_14BD
    ld a, e
    sub l
    ld a, d
    sbc h
    jr nc, jr_000_149A

    ld de, $0000
    ret


jr_000_149A:
    ld de, $FFFF
    ret


    ld a, [$FF04]
    and $0F
    ld e, a
    ld d, $00
    ret


    ld a, [$C95A]
    push af
    ld a, [bc]
    ld [$C95A], a
    ldh [rSVBK], a
    inc bc
    call Call_000_14C6
    pop af
    ld [$C95A], a
    ld [$FF70], a
    ret


Call_000_14BD:
    call Call_000_14C6
    push de
    call Call_000_14C6
    pop hl
    ret


Call_000_14C6:
    ld a, [bc]
    inc bc
    add a
    ld e, a
    ld d, $00
    ld hl, $1363
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, [bc]
    inc bc
    ldh [$AD], a
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $EA
    ld [$FFAB], a
    ld a, $14
    ld [$FFAC], a
    ldh a, [$AD]
    and a
    jp z, Jump_000_0AD3

    dec a
    ldh [$AD], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, $01
    ld [$C95B], a
    ld [$2000], a
    call Call_000_0585
    and $0F
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ldh [$AD], a
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $20
    ld [$FFAB], a
    ld a, $15
    ld [$FFAC], a
    ldh a, [$AF]
    and $03
    cp $03
    ret nz

    ldh a, [$AD]
    and a
    jp z, Jump_000_0AD3

    dec a
    ldh [$AD], a
    ret


Jump_000_1531:
    ld a, $01
    ld [$C6F8], a
    ld a, $00
    ldh [$A9], a
    ld a, $00
    ldh [$AA], a
    ld a, $31
    ldh [$AB], a
    ld a, $15
    ldh [$AC], a
    ret


    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    call Call_000_14C6
    xor a
    ld [$0000], a
    ld a, e
    or d
    jr z, jr_000_1571

    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $93
    ld [$FFAB], a
    ld a, $15
    ld [$FFAC], a
    ret


jr_000_1571:
    inc bc
    inc bc
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


    ld a, [$C959]
    and a
    jp z, Jump_000_15A9

    inc bc
    inc bc
    jp Jump_000_0AD3


Jump_000_1593:
    ld a, [bc]
    ld e, a
    ld [$FFA8], a
    inc bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld b, a
    ld c, l
    ld a, e
    ld [$C95B], a
    ld [$2000], a
    jp Jump_000_0AD3


Jump_000_15A9:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld b, a
    ld c, l
    jp Jump_000_0AD3


    ld a, [bc]
    inc bc
    ld l, a
    call Call_000_0585
    and $0F

jr_000_15BA:
    cp l
    jr c, jr_000_15C0

    sub l
    jr jr_000_15BA

jr_000_15C0:
    ld l, a
    add a
    add l
    ld l, a
    ld h, $00
    add hl, bc
    ld c, l
    ld b, h
    jp Jump_000_1593


    ld a, b
    ldh [$AC], a
    ld a, c
    ldh [$AB], a
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ret


    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    call Call_000_14C6
    xor a
    ld [$0000], a
    jr jr_000_15F5

jr_000_15F0:
    inc bc
    inc bc

jr_000_15F2:
    inc bc
    inc bc
    pop hl

jr_000_15F5:
    ld a, [bc]
    ld l, a
    inc bc
    cp $FF
    jr nz, jr_000_15FF

    jp Jump_000_0AD3


jr_000_15FF:
    push hl
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, e
    sub l
    ld a, d
    sbc h
    jr nc, jr_000_160E

    jr jr_000_15F0

jr_000_160E:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, l
    sub e
    ld a, h
    sbc d
    jr nc, jr_000_161C

    jr jr_000_15F2

jr_000_161C:
    pop hl
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld b, a
    ld c, e
    ld a, l
    ld [$FFA8], a
    ld a, l
    ld [$C95B], a
    ld [$2000], a
    jp Jump_000_0AD3


    ld a, [bc]
    ldh [$A8], a
    inc bc
    ld a, [bc]
    ldh [$A9], a
    inc bc
    ld a, [bc]
    ldh [$AA], a
    ld a, $01
    ld [$C6F8], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    call Call_000_14C6
    xor a
    ld [$0000], a
    jr jr_000_1664

jr_000_1661:
    inc bc

jr_000_1662:
    inc bc
    inc bc

jr_000_1664:
    ld a, [bc]
    ld l, a
    inc bc
    cp $FF
    jr nz, jr_000_166E

    jp Jump_000_0AD3


jr_000_166E:
    ld a, [bc]
    inc bc
    cp e
    jr nz, jr_000_1661

    ld a, [bc]
    inc bc
    cp d
    jr nz, jr_000_1662

    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld b, a
    ld c, e
    ld a, l
    ld [$FFA8], a
    ld a, l
    ld [$C95B], a
    ld [$2000], a
    jp Jump_000_0AD3


    ld a, [bc]
    inc bc
    and a
    jp z, Jump_000_0AD3

    ldh [$AD], a
    ld hl, $FFA9
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, $A4
    ld [$FFAB], a
    ld a, $16
    ld [$FFAC], a
    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$C6D2], a
    ld a, [hl+]
    ld [$C6D3], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld c, l
    ld b, h
    ld l, e
    ld h, d
    ldh a, [$AD]
    dec a
    jr z, jr_000_16C1

    ldh [$AD], a
    call Call_000_05B9
    ret


jr_000_16C1:
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    call Call_000_05B9
    ld a, $8C
    ld [$FFAB], a
    ld a, $16
    ld [$FFAC], a
    ret


    ld a, [bc]
    inc bc
    and a
    jp z, Jump_000_0AD3

    ldh [$AD], a
    ld hl, $FFA9
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, $EF
    ld [$FFAB], a
    ld a, $16
    ld [$FFAC], a
    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$C6D2], a
    ld a, [hl+]
    ld [$C6D3], a
    ldh a, [$AD]
    dec a
    jr z, jr_000_1701

    ldh [$AD], a
    ret


jr_000_1701:
    ld a, h
    ld [$FFAA], a
    ld a, l
    ld [$FFA9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    xor a
    ldh [$AE], a
    inc bc
    ld a, [bc]
    dec bc
    ldh [$AD], a
    ld a, $26
    ld [$FFAB], a
    ld a, $17
    ld [$FFAC], a
    ld h, b
    ld l, c
    inc hl
    inc hl
    ld a, [hl+]
    ld [$C6D2], a
    ld a, [hl+]
    ld [$C6D3], a
    ldh a, [$AE]
    ld e, a
    ld d, $00
    add hl, de
    ldh a, [$AD]
    dec a
    jr z, jr_000_1741

    ldh [$AD], a
    jr jr_000_1768

jr_000_1741:
    ld a, [bc]
    inc bc
    ld e, a
    ldh a, [$AE]
    inc a
    inc a
    cp e
    jr z, jr_000_1752

    ldh [$AE], a
    ld a, [bc]
    ldh [$AD], a
    jr jr_000_1768

jr_000_1752:
    ld b, h
    ld c, l
    inc bc
    inc bc
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a

jr_000_1768:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_05B9
    ret


    ld a, [bc]
    inc bc
    and a
    jp z, Jump_000_0AD3

    ldh [$AD], a
    ld hl, $FFA9
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, $87
    ld [$FFAB], a
    ld a, $17
    ld [$FFAC], a
    xor a
    ld [$C6D2], a
    ld [$C6D3], a
    ld h, b
    ld l, c
    ld a, [hl+]
    ld b, a
    ldh a, [$91]
    add b
    ldh [$91], a
    ld a, [hl+]
    ld b, a
    ldh a, [$92]
    add b
    ldh [$92], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld c, l
    ld b, h
    ld l, e
    ld h, d
    ldh a, [$AD]
    dec a
    jr z, jr_000_17B1

    ldh [$AD], a
    call Call_000_0646
    ret


jr_000_17B1:
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    call Call_000_0646
    ld a, $6F
    ld [$FFAB], a
    ld a, $17
    ld [$FFAC], a
    ret


    ld a, [bc]
    inc bc
    ld l, a
    ld a, [bc]
    inc bc
    ld h, a
    inc hl
    ld a, $99
    ld [hl+], a
    ld a, $69
    ld [hl+], a
    inc hl
    inc hl
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    inc hl
    inc hl
    ld a, [bc]
    inc bc
    ld [hl+], a
    call Call_000_0B0C
    call Call_000_0B1E
    jp Jump_000_0AD3


    jp Jump_000_0AD3


    ld hl, $C6F9
    ld a, $01
    ld [hl+], a
    ld a, $FF
    ld [hl+], a
    ld a, [bc]
    inc bc
    dec a
    ld [hl+], a
    jp Jump_000_0AD3


    ld a, [$C6FC]
    and a
    ret nz

    ld a, $FF
    ld [$C6FC], a
    jp Jump_000_0AD3


    ld a, [$C6FE]
    and a
    ret nz

    ld a, $FF
    ld [$C6FE], a
    jp Jump_000_0AD3


    ld a, [$C700]
    and a
    ret nz

    ld a, $FF
    ld [$C700], a
    jp Jump_000_0AD3


    ld a, [$C6FC]
    and a
    ret nz

    ld a, [bc]
    inc bc
    ld [$C6FC], a
    jp Jump_000_0AD3


    ld a, [$C6FE]
    and a
    ret nz

    ld a, [bc]
    inc bc
    ld [$C6FE], a
    jp Jump_000_0AD3


    ld a, [$C700]
    and a
    ret nz

    ld a, [bc]
    inc bc
    ld [$C700], a
    jp Jump_000_0AD3


    ld hl, $C70A
    jp Jump_000_18CC


    ld hl, $C711
    jp Jump_000_18CC


    ld a, [$C6F2]
    cp $01
    ret z

    ld hl, $C71F
    jp Jump_000_18CC


    ld a, [bc]
    ld e, a
    ld a, [$C6FB]
    cp e
    ret c

    inc bc
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld hl, $C6F9
    inc [hl]
    ld a, $82
    ld [$FFAB], a
    ld a, $18
    ld [$FFAC], a
    ret


    ld hl, $C6FA
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [hl-]
    and a
    jr z, jr_000_1895

    cp e
    ret c

    ld a, $01
    ld [hl+], a
    ld a, $FF
    ld [hl+], a
    ret


jr_000_1895:
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    ld a, [$C6FD]
    jp Jump_000_18DE


    ld a, [$C6FF]
    jp Jump_000_18DE


    ld a, [$C701]
    jp Jump_000_18DE


    ld a, [$C6FD]
    jp Jump_000_18EB


    ld a, [$C6FF]
    jp Jump_000_18EB


    ld a, [$C701]
    jp Jump_000_18EB


Jump_000_18CC:
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, $D3
    ld [hl+], a
    ld a, $0A
    ld [hl+], a
    jp Jump_000_0AD3


Jump_000_18DE:
    and a
    ret z

    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


Jump_000_18EB:
    ld d, a
    ld a, [bc]
    cp d
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


Call_000_1903:
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, $D3
    ld [hl+], a
    ld a, $0A
    ld [hl+], a
    ret


    jp Jump_000_0AD3


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [$C95B]
    push af
    ld a, [bc]
    ld [$C95B], a
    ld [$2000], a
    inc bc
    push bc
    ld c, l
    ld b, h
    call Call_000_2F82
    pop bc
    pop af
    ld [$C95B], a
    ld [$2000], a
    jp Jump_000_0AD3


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, $13
    ld [$C95B], a
    ld [$2000], a
    ld a, [hl+]
    ld [$C6E1], a
    ld a, h
    ld [$C6E0], a
    ld a, l
    ld [$C6DF], a
    ld a, [$FFA8]
    ld [$C95B], a
    ld [$2000], a
    jp Jump_000_0AD3


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [$C95B]
    push af
    ld a, [bc]
    ld [$C95B], a
    ld [$2000], a
    inc bc
    push bc
    ld c, l
    ld b, h
    call Call_000_3083
    pop bc
    pop af
    ld [$C95B], a
    ld [$2000], a
    jp Jump_000_0AD3


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [$C95B]
    push af
    ld a, [bc]
    ld [$C95B], a
    ld [$2000], a
    inc bc
    push bc
    ld c, l
    ld b, h
    call Call_000_3157
    pop bc
    pop af
    ld [$C95B], a
    ld [$2000], a
    jp Jump_000_0AD3


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [$C95B]
    push af
    ld a, [bc]
    ld [$C95B], a
    ld [$2000], a
    inc bc
    push bc
    ld c, l
    ld b, h
    call Call_000_31A5
    pop bc
    pop af
    ld [$C95B], a
    ld [$2000], a
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [$C95B]
    push af
    ld a, [bc]
    ld [$C95B], a
    ld [$2000], a
    inc bc
    push bc
    ld c, l
    ld b, h
    call Call_000_304A
    pop bc
    pop af
    ld [$C95B], a
    ld [$2000], a
    jp Jump_000_0AD3


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [$C95B]
    push af
    ld a, [bc]
    ld [$C95B], a
    ld [$2000], a
    inc bc
    push bc
    ld c, l
    ld b, h
    call Call_000_321A
    pop bc
    pop af
    ld [$C95B], a
    ld [$2000], a
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [$C95B]
    push af
    ld a, [bc]
    ld [$C95B], a
    ld [$2000], a
    inc bc
    push bc
    ld c, l
    ld b, h
    call Call_000_3072
    pop bc
    pop af
    ld [$C95B], a
    ld [$2000], a
    jp Jump_000_0AD3


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push bc
    call Call_000_2F05
    ld a, [$FFA8]
    ld [$C95B], a
    ld [$2000], a
    pop bc
    jp Jump_000_0AD3


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [$C95B]
    push af
    ld a, [bc]
    ld [$C95B], a
    ld [$2000], a
    inc bc
    push bc
    ld c, l
    ld b, h
    call Call_000_322E
    pop bc
    pop af
    ld [$C95B], a
    ld [$2000], a
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [$C95B]
    push af
    ld a, [bc]
    ld [$C95B], a
    ld [$2000], a
    inc bc
    push bc
    ld c, l
    ld b, h
    call Call_000_3131
    pop bc
    pop af
    ld [$C95B], a
    ld [$2000], a
    jp Jump_000_0AD3


    ld a, [bc]
    inc bc
    ldh [$AD], a
    ld a, [bc]
    ld [$C6EA], a
    inc bc
    ld a, [bc]
    ld [$C6EB], a
    inc bc
    ld a, [bc]
    ld [$C6EC], a
    inc bc
    ld a, [bc]
    ld [$C6ED], a
    inc bc
    ld a, [bc]
    ld [$C6EE], a
    inc bc
    ld a, [bc]
    ld [$C6EF], a
    inc bc
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $B9
    ld [$FFAB], a
    ld a, $1A
    ld [$FFAC], a
    ld a, $B7
    ld [$C6E8], a
    ld a, $2B
    ld [$C6E9], a
    ldh a, [$AD]
    dec a
    jr z, jr_000_1ACB

    ldh [$AD], a
    ret


jr_000_1ACB:
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, $13
    ld [$C95B], a
    ld [$2000], a
    ld a, [hl+]
    ld [$C6E5], a
    ld a, h
    ld [$C6E4], a
    ld a, l
    ld [$C6E3], a
    ld a, [$FFA8]
    ld [$C95B], a
    ld [$2000], a
    jp Jump_000_0AD3


Call_000_1AFC:
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    call Call_000_1B0C
    call Call_000_1B12
    dec bc
    ret


Call_000_1B0C:
    ld a, [bc]
    and $3F
    ldh [$AE], a
    ret


Call_000_1B12:
    ld a, [bc]
    and $C0
    swap a
    rra
    rra
    inc a
    ldh [$AD], a
    inc bc
    ret


Call_000_1B1E:
    ld a, [bc]
    inc bc
    ld [$C9FF], a
    ld a, [bc]
    inc bc
    ld [$CA00], a
    bit 7, a
    ret z

    ld a, [$CA08]
    ld [$C9FF], a
    ld a, [$CA09]
    ld [$CA00], a
    ret


Call_000_1B38:
    ld a, [bc]
    ld [$C9FD], a
    inc bc
    ret


Call_000_1B3E:
    call Call_000_1B38
    call Call_000_1B1E
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ret


Jump_000_1B4D:
    ld a, $07
    ld [$C6EA], a
    ld a, $AC
    ld [$C6E8], a
    ld a, $45
    ld [$C6E9], a
    ldh a, [$AE]
    dec a
    jr z, jr_000_1B64

    ldh [$AE], a
    ret


jr_000_1B64:
    ld a, [$C6F3]
    cp $03
    jr z, jr_000_1B73

    ld [$C6F2], a
    ld a, $03
    ld [$C6F3], a

jr_000_1B73:
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    ld a, $93
    ld [$FFAB], a
    ld a, $1B
    ld [$FFAC], a
    call Call_000_1AFC
    ldh a, [$AD]
    dec a
    ldh [$AD], a
    ret nz

    call Call_000_1B12
    call Call_000_1B1E
    ld a, $01
    ld [$CA01], a
    push bc
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $5AEB
    pop bc
    jp Jump_000_1B4D


    ld a, $C1
    ld [$FFAB], a
    ld a, $1B
    ld [$FFAC], a
    call Call_000_1AFC
    ldh a, [$AD]
    dec a
    ldh [$AD], a
    ret nz

    call Call_000_1B12
    ld a, $01
    ld [$CA01], a
    push bc
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $5AEB
    pop bc
    jp Jump_000_1B4D


    call Call_000_1B3E
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $4887
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    call Call_000_1B3E
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $486E
    ld a, $07
    ld [$C6EA], a
    ld a, $AC
    ld [$C6E8], a
    ld a, $45
    ld [$C6E9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    ld a, $2D
    ld [$FFAB], a
    ld a, $1C
    ld [$FFAC], a
    call Call_000_1AFC
    ldh a, [$AD]
    dec a
    ldh [$AD], a
    ret nz

    call Call_000_1B12
    ld a, [bc]
    inc bc
    ld [$C9FE], a
    push bc
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $41A2
    pop bc
    jp Jump_000_1B4D


    ld a, $58
    ld [$FFAB], a
    ld a, $1C
    ld [$FFAC], a
    call Call_000_1AFC
    ldh a, [$AD]
    dec a
    ldh [$AD], a
    ret nz

    call Call_000_1B12
    call Call_000_1B1E
    ld a, [bc]
    inc bc
    ld [$C9FE], a
    ld a, $01
    ld [$CA01], a
    push bc
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $4202
    pop bc
    jp Jump_000_1B4D


    ld a, $8B
    ld [$FFAB], a
    ld a, $1C
    ld [$FFAC], a
    call Call_000_1AFC
    ldh a, [$AD]
    dec a
    ldh [$AD], a
    ret nz

    call Call_000_1B12
    ld a, [bc]
    inc bc
    ld [$C9FE], a
    ld a, $01
    ld [$CA01], a
    push bc
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $41F4
    pop bc
    jp Jump_000_1B4D


    ld a, [bc]
    inc bc
    ld [$C9FA], a
    ld a, [bc]
    inc bc
    ld [$C9FB], a
    ld a, [bc]
    inc bc
    ld [$C9FC], a
    ld a, [bc]
    inc bc
    ld [$C9FE], a
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $00
    ld [$C95B], a
    ld [$2000], a
    call Call_000_32BE
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    ld a, $ED
    ld [$FFAB], a
    ld a, $1C
    ld [$FFAC], a
    call Call_000_1AFC
    ldh a, [$AD]
    dec a
    ldh [$AD], a
    ret nz

    call Call_000_1B12
    ld a, [bc]
    inc bc
    ld [$C9FD], a
    ld a, [bc]
    inc bc
    ld [$C9FE], a
    push bc
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $431A
    pop bc
    jp Jump_000_1B4D


    ld a, [bc]
    ld [$C9FE], a
    inc bc
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $436A
    ld a, $07
    ld [$C6EA], a
    ld a, $AC
    ld [$C6E8], a
    ld a, $45
    ld [$C6E9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    ld a, [$C6F2]
    ld [$C6F3], a
    ld a, $01
    ld [$C6F2], a
    ld a, $5A
    ld [$FFAB], a
    ld a, $1D
    ld [$FFAC], a
    call Call_000_1AFC
    ldh a, [$AD]
    dec a
    ldh [$AD], a
    ret nz

    call Call_000_1B12
    call Call_000_1B38
    ld a, [bc]
    ld [$C9FE], a
    inc bc
    push bc
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $48A7
    pop bc
    jp Jump_000_1B4D


    ld a, [$C6F2]
    ld [$C6F3], a
    ld a, $01
    ld [$C6F2], a
    ld a, $93
    ld [$FFAB], a
    ld a, $1D
    ld [$FFAC], a
    call Call_000_1AFC
    ldh a, [$AD]
    dec a
    ldh [$AD], a
    ret nz

    call Call_000_1B12
    call Call_000_1B38
    ld a, $01
    ld [$CA01], a
    push bc
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $48D4
    pop bc
    jp Jump_000_1B4D


    ld a, [$C6F2]
    ld [$C6F3], a
    ld a, $01
    ld [$C6F2], a
    ld a, $CC
    ld [$FFAB], a
    ld a, $1D
    ld [$FFAC], a
    call Call_000_1AFC
    ldh a, [$AD]
    dec a
    ldh [$AD], a
    ret nz

    call Call_000_1B12
    call Call_000_1B38
    call Call_000_1B1E
    ld a, $01
    ld [$CA01], a
    push bc
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $4934
    pop bc
    jp Jump_000_1B4D


    ld a, [bc]
    inc bc
    ld [$C9FA], a
    ld a, [bc]
    inc bc
    ld [$C9FB], a
    ld a, [bc]
    inc bc
    ld [$C9FC], a
    call Call_000_1B38
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $4843
    ld a, [$C95B]
    push af
    ld a, [$C9FC]
    ld [$C95B], a
    ld [$2000], a
    ld a, [$CA00]
    ld h, a
    ld a, [$C9FF]
    ld l, a
    ld a, [$C9FB]
    ld b, a
    ld a, [$C9FA]
    ld c, a
    ld e, $00
    ld a, [$C9FE]
    call Call_000_3124
    pop af
    ld [$C95B], a
    ld [$2000], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    call Call_000_1B38
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $4855
    ld a, $07
    ld [$C6EA], a
    ld a, $AC
    ld [$C6E8], a
    ld a, $45
    ld [$C6E9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    call Call_000_1B38
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $4913
    ld a, $07
    ld [$C6EA], a
    ld a, $AC
    ld [$C6E8], a
    ld a, $45
    ld [$C6E9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    ld a, [$C865]
    ld h, a
    ld l, $02
    ld a, [bc]
    ld d, a
    ld a, $01
    ld [$C95B], a
    ld [$2000], a
    jp $4596


Jump_000_1EBF:
    ld l, $FB
    ld a, l
    add e
    ld [$C882], a
    ld a, l
    add d
    ld [$C883], a
    jp Jump_000_0AD3


    ld l, $FB
    ld a, [bc]
    inc bc
    add l
    ldh [$AD], a
    ld a, [bc]
    inc bc
    add l
    ldh [$AE], a
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $AC
    ld [$FFAB], a
    ld a, $1E
    ld [$FFAC], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld de, $0005
    add hl, de
    ld e, $FB
    ld a, [hl+]
    ld d, a
    cp $05
    ld a, $00
    jr c, jr_000_1F03

    ld a, d
    add e

jr_000_1F03:
    ld [$FFAD], a
    ld a, [hl+]
    ld d, a
    cp $05
    ld a, $00
    jr c, jr_000_1F10

    ld a, d
    add e

jr_000_1F10:
    ld [$FFAE], a
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $AC
    ld [$FFAB], a
    ld a, $1E
    ld [$FFAC], a
    ret


    ld a, [$C733]
    cp $01
    jr z, jr_000_1F6A

    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    inc bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [bc]
    inc bc
    ld [hl], a
    ld a, $03
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [bc]
    inc bc
    ld [hl], a
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ld a, $01
    ld [$C95B], a
    ld [$2000], a
    jp $4626


jr_000_1F6A:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    jp Jump_000_0AD3


    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    inc bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push de
    ld a, $06
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [bc]
    ld e, a
    inc bc
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld [hl], e
    ld a, $04
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [bc]
    ld e, a
    inc bc
    ld a, $03
    ld [$C95A], a
    ldh [rSVBK], a
    ld [hl], e
    pop de
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ld a, $01
    ld [$C95B], a
    ld [$2000], a
    jp $4626


    ld a, [$C18E]
    ld e, a
    ld a, [$C18F]
    ld d, a
    ld a, $08
    ld [$C880], a
    ld a, $08
    ld [$C881], a
    jp Jump_000_1EBF


    ld a, [bc]
    inc bc
    and a
    jp z, Jump_000_0AD3

    ldh [$AD], a
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $F1
    ld [$FFAB], a
    ld a, $1F
    ld [$FFAC], a
    ld a, [bc]
    inc bc
    ld l, a
    ld a, [$C866]
    add l
    ld [$C866], a
    ld a, [bc]
    inc bc
    ld l, a
    ld a, [$C867]
    add l
    ld [$C867], a
    ldh a, [$AD]
    dec a
    jr z, jr_000_200D

    ldh [$AD], a
    ret


jr_000_200D:
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $D7
    ld [$FFAB], a
    ld a, $1F
    ld [$FFAC], a
    ret


    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    inc bc
    ld a, $08
    ld [$C880], a
    ld [$C881], a
    jp Jump_000_1EBF


    ld a, $9D
    ld [$FFAB], a
    ld a, $44
    ld [$FFAC], a

Jump_000_203B:
    ld hl, $C702
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    inc bc
    ldh [$AD], a
    ldh [$AE], a
    ld a, [bc]
    inc bc
    ld [$C708], a
    ld hl, $C704
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
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld hl, $FFA8
    set 7, [hl]
    ret


    ld a, $5C
    ld [$FFAB], a
    ld a, $45
    ld [$FFAC], a
    jp Jump_000_203B


    ld a, [bc]
    inc bc
    ld e, a
    ld a, $01
    ld [$C95B], a
    ld [$2000], a
    jp $45F5


Call_000_2087:
    ld l, c
    ld h, b
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld de, $D000
    ld a, $06
    ld [$C95A], a
    ldh [rSVBK], a
    call Call_000_07D6
    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, h
    ldh [$AA], a
    ld a, l
    ldh [$A9], a
    ret


Call_000_20AC:
    ld a, [$C95B]
    push af
    xor a
    ld [$C709], a

jr_000_20B4:
    ld hl, $C70A
    call Call_000_2B96
    call Call_000_0AA7
    call Call_000_2B78
    ld a, [$C6EA]
    ld [$C95B], a
    ld [$2000], a
    ld a, [$C6E9]
    ld h, a
    ld a, [$C6E8]
    ld l, a
    call Call_000_07BF
    ld a, [$C709]
    and a
    jr z, jr_000_20B4

    pop af
    ld [$C95B], a
    ld [$2000], a
    ret


    call Call_000_07F9
    call Call_000_2C61
    ld a, $0A
    ld [$FFA6], a
    ld a, $C7
    ld [$FFA7], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    call Call_000_2B78
    call Call_000_0863
    call Call_000_2B17
    ld a, $00
    ld [$C719], a
    ld a, $00
    ld [$C71A], a
    ld a, $31
    ld [$C71B], a
    ld a, $15
    ld [$C71C], a
    ld sp, $CEF5
    call Call_000_20AC
    ld a, $20
    ld [$C86A], a
    ld [$C86B], a
    ld [$C868], a
    ld [$C869], a
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $4956
    ld sp, $CEF5
    call Call_000_0820
    jp Jump_000_02F7


    ld hl, $CA19
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    push bc
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $6024
    ld a, [$FFA8]
    ld [$C95B], a
    ld [$2000], a
    pop bc
    jp Jump_000_0AD3


    ld hl, $CA19
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    push bc
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $60C8
    ld a, [$FFA8]
    ld [$C95B], a
    ld [$2000], a
    pop bc
    jp Jump_000_0AD3


Jump_000_218B:
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$A015]
    ld [$C9C4], a
    ld a, [$A016]
    ld [$C9C5], a
    ld a, [$A012]
    ld e, a
    ld a, [$A013]
    ld l, a
    ld a, [$A014]
    ld h, a
    xor a
    ld [$0000], a
    ld a, h
    or l
    jr z, jr_000_21C3

    ld a, e
    ldh [$A8], a
    ld a, a
    ld [$C95B], a
    ld [$2000], a
    ld c, l
    ld b, h

jr_000_21C3:
    jp Jump_000_0AD3


    push bc
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $40B8
    pop bc
    jp Jump_000_218B


    push bc
    ld a, $03
    ld [$C95B], a
    ld [$2000], a
    call $43D1
    pop bc
    ld a, [$FFA8]
    ld [$C95B], a
    ld [$2000], a
    jp Jump_000_0AD3


    dec bc
    dec bc
    dec bc
    call Call_000_2087
    ld a, $03
    ld [$C95B], a
    ld [$2000], a
    call $43D2
    ret


    push bc
    ld a, $03
    ld [$C95B], a
    ld [$2000], a
    call $43D7
    pop bc
    ld a, [$FFA8]
    ld [$C95B], a
    ld [$2000], a
    jp Jump_000_0AD3


    ld a, $04
    ld [$C95B], a
    ld [$2000], a
    call $415B
    ld a, [$FFA8]
    ld [$C95B], a
    ld [$2000], a
    ld a, [$CD3C]
    and a
    jp nz, Jump_000_1593

    inc bc
    inc bc
    inc bc
    push bc
    call Call_000_2087
    ld a, $04
    ld [$C95B], a
    ld [$2000], a
    call $415B
    pop bc
    ld a, [$CD66]
    and a
    ret nz

    ld a, [$FFA8]
    ld [$C95B], a
    ld [$2000], a
    jp Jump_000_1593


    dec bc
    dec bc
    dec bc
    call Call_000_2087
    ld a, $03
    ld [$C95B], a
    ld [$2000], a
    call $43D9
    ret


    call Call_000_2087
    ld a, $03
    ld [$C95B], a
    ld [$2000], a
    call $43D8
    ret


    ld a, $D3
    ldh [$AB], a
    ld a, $0A
    ldh [$AC], a
    ld a, [bc]
    inc bc
    and a
    ld a, b
    ldh [$AA], a
    ld a, c
    ldh [$A9], a
    ld a, $01
    ld [$C95B], a
    ld [$2000], a
    jp z, $4681

    jp $46A9


    ld a, $0A
    ld [$0000], a
    ld a, $00
    add $00
    ld [$4000], a
    ld a, [$C18E]
    ld [$A015], a
    ld a, [$C18F]
    ld [$A016], a
    ld a, $00
    add $01
    ld [$4000], a
    ld a, [bc]
    inc bc
    and a
    jr z, jr_000_22BD

jr_000_22BD:
    push bc
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $410E
    ld a, [$FFA8]
    ld [$C95B], a
    ld [$2000], a
    pop bc
    jp Jump_000_0AD3


Jump_000_22D6:
    call Call_000_07F9
    call Call_000_2C61
    ld a, $0A
    ld [$FFA6], a
    ld a, $C7
    ld [$FFA7], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    call Call_000_2B78
    xor a
    ld [$CCC2], a
    call Call_000_0863
    call Call_000_2B17
    ld a, $00
    ld [$C719], a
    ld a, $00
    ld [$C71A], a
    ld a, $31
    ld [$C71B], a
    ld a, $15
    ld [$C71C], a
    ld sp, $CEF5
    call Call_000_20AC
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $4A8C
    ld sp, $CEF5
    ld a, $01
    ld [$C6F7], a
    call Call_000_0820
    jp Jump_000_02F7


    ld a, $01
    ld [$C709], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


    ld hl, $CA1C
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    jp Jump_000_0AD3


    xor a
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$C18E]
    ld [$A015], a
    ld a, [$C18F]
    ld [$A016], a
    ld a, [bc]
    inc bc
    ld [$A012], a
    ld a, [bc]
    inc bc
    ld [$A013], a
    ld a, [bc]
    inc bc
    ld [$A014], a
    xor a
    ld [$0000], a
    jp Jump_000_0AD3


    ld hl, $C72B
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    jp Jump_000_0AD3


    push bc

jr_000_238A:
    ld hl, $C738
    ld a, [$C737]

jr_000_2390:
    dec a
    cp $00
    jr z, jr_000_2398

    inc hl
    jr jr_000_2390

jr_000_2398:
    ld a, [$C955]
    ld d, $00
    bit 6, a
    jr nz, jr_000_23C4

    inc d
    bit 4, a
    jr nz, jr_000_23C4

    inc d
    bit 7, a
    jr nz, jr_000_23C4

    inc d
    bit 5, a
    jr nz, jr_000_23C4

    inc d
    bit 0, a
    jr nz, jr_000_23C4

    inc d
    bit 1, a
    jr nz, jr_000_23C4

    inc d
    bit 2, a
    jr nz, jr_000_23C4

    call Call_000_099B
    jr jr_000_238A

jr_000_23C4:
    ld a, [hl]
    cp d
    jr z, jr_000_23D5

jr_000_23C8:
    xor a
    ld [$C747], a
    inc a
    ld [$C737], a
    call Call_000_099B
    jr jr_000_238A

jr_000_23D5:
    ld a, [$C737]
    ld e, a
    ld a, [$C736]
    cp e
    jr c, jr_000_23C8

    jr z, jr_000_23EB

    ld a, e
    inc a
    ld [$C737], a
    call Call_000_099B
    jr jr_000_238A

jr_000_23EB:
    ld a, $01
    ld [$C747], a
    pop bc
    jp Jump_000_0AD3


    ld a, [bc]
    inc bc
    ld [$C736], a
    ld hl, $C738
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
    xor a
    ld [$C747], a
    inc a
    ld [$C737], a
    ld a, [$FFA8]
    ld [$C95B], a
    ld [$2000], a
    jp Jump_000_0AD3


    push bc
    ld a, $01
    ld [$C95B], a
    ld [$2000], a
    call $40D3
    ld a, [$FFA8]
    ld [$C95B], a
    ld [$2000], a
    pop bc
    jp Jump_000_0AD3


    xor a
    ld [$C6F0], a
    ld [$C6F2], a
    ld a, $07
    ld [$C6F4], a
    ld [$FF4B], a
    ld a, $90
    ld [$C6F5], a
    ld [$FF4A], a
    ld a, $06
    ld [$C95B], a
    ld [$2000], a
    ld a, $01
    ld [$FF4F], a
    ld hl, $50B0
    ld de, $8800
    ld bc, $0060
    call Call_000_07D6
    ld hl, $9C00
    ld bc, $00A0
    ld a, $8F
    ld e, a
    call Call_000_07E8
    xor a
    ld [$FF4F], a
    ld hl, $9C00
    ld bc, $00A0
    ld a, $80
    ld e, a
    call Call_000_07E8
    ret


    and h
    cp l
    ld b, b
    adc d
    ret nc

    adc e
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push bc
    call Call_000_2EA1
    pop bc
    xor a
    ld [$0000], a
    jp Jump_000_0AD3


    ld a, [$C6F2]
    cp $02
    jp nz, Jump_000_0AD3

    ld a, $01
    ld [$C6EA], a
    ld a, $05
    ld [$C6E8], a
    ld a, $47
    ld [$C6E9], a
    ld a, $62
    ld [$FFAB], a
    ld a, $27
    ld [$FFAC], a
    ret


    xor a
    ld [$C734], a
    ld [$C735], a
    ld hl, $FFA8
    set 7, [hl]
    ld a, $D5
    ld [$FFAB], a
    ld a, $48
    ld [$FFAC], a
    ret


    call Call_000_2742
    ld a, $01
    ld [$C6EA], a
    ld a, $05
    ld [$C6E8], a
    ld a, $47
    ld [$C6E9], a
    ld a, $14
    ld [$FFAB], a
    ld a, $25
    ld [$FFAC], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    and $F0
    ld [$C6EB], a
    ld a, [hl+]
    ld [$C6EC], a
    ld a, h
    ld [$FFAA], a
    ld a, l
    ld [$FFA9], a
    ld a, e
    and $0F
    ld [$C6EA], a
    ld hl, $249C
    ld a, [$C6F0]
    add a
    ld c, a
    xor a
    ld b, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    ld [$C6EE], a
    ld a, l
    ld [$C6ED], a
    ld a, $1A
    ld [$FFAD], a
    ld a, $01
    ld [$C6EF], a
    ld a, $5A
    ld [$FFAB], a
    ld a, $25
    ld [$FFAC], a
    ret


    ld a, [$FFAD]
    dec a
    jr z, jr_000_256E

    ld [$FFAD], a
    ld a, $B7
    ld [$C6E8], a
    ld a, $2B
    ld [$C6E9], a
    ret


jr_000_256E:
    ld a, $01
    ld [$C6EA], a
    ld a, $FC
    ld [$C6E8], a
    ld a, $47
    ld [$C6E9], a
    ld a, $62
    ld [$FFAB], a
    ld a, $27
    ld [$FFAC], a
    ret


    call Call_000_2742
    ld a, [bc]
    ld e, a
    inc bc
    ld hl, $FFA9
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, $01
    ld hl, $CCDF
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, e
    dec a
    ld hl, $CCE0

jr_000_25A3:
    ld [hl+], a
    dec a
    jr nz, jr_000_25A3

    ld a, $03
    ld [$CCD1], a
    ld a, $F1
    ld [$CCC6], a
    ld a, [$C95A]
    ld [$CCD5], a
    ld bc, $CCDF
    ld hl, $CCD3
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld bc, $4277
    ld hl, $CCCD
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld bc, $4277
    ld hl, $CCCF
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, $00
    ld [$CD9E], a
    ld a, $01
    ld [$CCD6], a
    ld a, $01
    ld [$CCD7], a
    ld hl, $414A
    ld e, $03
    call Call_000_07A9
    ld a, $FF
    ld [$CCC4], a
    ld a, $F7
    ldh [$AB], a
    ld a, $25
    ldh [$AC], a
    ret


    push bc
    ld hl, $412E
    ld e, $03
    call Call_000_07A9
    ld a, [$CCC4]
    ld l, a
    cp $FF
    pop bc
    ret z

    ld a, l
    add l
    add l
    ld l, a
    ld h, $00
    add hl, bc
    xor a
    ld [$C734], a
    ld [$C735], a
    ld a, h
    ld [$FFAA], a
    ld a, l
    ld [$FFA9], a
    ld a, $93
    ld [$FFAB], a
    ld a, $15
    ld [$FFAC], a
    ret


    ld hl, $FFA8
    set 7, [hl]
    ld a, $68
    ld [$FFAB], a
    ld a, $49
    ld [$FFAC], a
    ret


    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push bc
    call Call_000_2EC5
    pop bc
    xor a
    ld [$0000], a
    jp Jump_000_0AD3


    call Call_000_2742
    ld a, b
    ld [$C95F], a
    ld a, c
    ld [$C95E], a
    ld a, $BF
    ld [$C95C], a
    ld a, $2D
    ld [$C95D], a
    ld a, $77
    ld [$FFAB], a
    ld a, $26
    ld [$FFAC], a
    ret


    ld hl, $C95C
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_07BF
    ld a, d
    and a
    ret z

    ld a, $65
    ld [$C962], a
    ld a, $9C
    ld [$C963], a
    ld a, [$C95E]
    ldh [$A9], a
    ld a, [$C95F]
    ldh [$AA], a
    ld a, d
    cp $FD
    jr nz, jr_000_26A7

    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ret


jr_000_26A7:
    cp $FF
    jr nz, jr_000_26B7

    ld a, $57
    ld [$FFAB], a
    ld a, $26
    ld [$FFAC], a
    jr jr_000_26C9

jr_000_26B7:
    ld a, $B7
    ld [$FFAB], a
    ld a, $26
    ld [$FFAC], a
    ld a, [$C954]
    and $01
    jr nz, jr_000_26C9

    ret


jr_000_26C9:
    ld a, [$C6F1]
    and a
    jr z, jr_000_26DE

    dec a
    ld [$C6F1], a
    ld a, $57
    ld [$FFAB], a
    ld a, $26
    ld [$FFAC], a
    ret


jr_000_26DE:
    ld a, $F8
    ld [$FFAB], a
    ld a, $26
    ld [$FFAC], a
    ld a, $01
    ld [$C6EA], a
    ld a, $5A
    ld [$C6E8], a
    ld a, $48
    ld [$C6E9], a
    ret


    ld a, $12
    ld [$FFAB], a
    ld a, $27
    ld [$FFAC], a
    ld a, $01
    ld [$C6EA], a
    ld a, $72
    ld [$C6E8], a
    ld a, $48
    ld [$C6E9], a
    ret


    ld a, $1D
    ld [$FFAB], a
    ld a, $27
    ld [$FFAC], a
    ret


    ld a, $28
    ld [$FFAB], a
    ld a, $27
    ld [$FFAC], a
    ret


    ld a, $57
    ld [$FFAB], a
    ld a, $26
    ld [$FFAC], a
    ld a, $01
    ld [$C6EA], a
    ld a, $93
    ld [$C6E8], a
    ld a, $48
    ld [$C6E9], a
    ret


Call_000_2742:
    ld a, [$C6F2]
    cp $02
    jr z, jr_000_275C

    dec bc
    ld a, b
    ldh [$AA], a
    ld a, c
    ldh [$A9], a
    ld a, $29
    ld [$FFAB], a
    ld a, $26
    ld [$FFAC], a
    pop af
    ret


jr_000_275C:
    ret


    ld a, $02
    ld [$C6F2], a
    ld a, $01
    ld [$C6F1], a
    ld a, $6C
    ld [$C960], a
    ld a, $C9
    ld [$C961], a
    ld a, $01
    ld [$C6EF], a
    ld a, $60
    ld [$C6ED], a
    ld [$C964], a
    ld a, $88
    ld [$C6EE], a
    ld [$C965], a
    ld a, $25
    ld [$C962], a
    ld a, $9C
    ld [$C963], a
    ld a, $86
    ld [$C967], a
    ld [$C969], a
    ld a, $8F
    ld [$C968], a
    ld a, $A4
    ld [$C96A], a
    jp Jump_000_0AD3


    ld hl, $0009
    call Call_000_296E
    ld a, [$C959]
    and a
    jr nz, jr_000_27B9

    ld a, b
    and c
    jp z, Jump_000_290D

    jp Jump_000_28EB


jr_000_27B9:
    ld a, b
    and c
    jp z, Jump_000_28DF

    jp Jump_000_2901


    ld hl, $0009
    call Call_000_296E
    ld a, [$C959]
    and a
    jr nz, jr_000_27E4

    ld a, b
    and c
    ld a, $31
    ldh [$AB], a
    ld a, $15
    ldh [$AC], a
    jp z, Jump_000_290D

    ld de, $0003
    add hl, de
    ld a, [hl+]
    ld e, a
    inc hl
    jp Jump_000_2922


jr_000_27E4:
    ld a, b
    and c
    jp z, Jump_000_28DF

    jp Jump_000_2901


    ld hl, $0009
    call Call_000_296E
    ld a, [$C959]
    and a
    jr nz, jr_000_2800

    ld a, b
    and c
    jp z, Jump_000_1531

    jp Jump_000_28D6


jr_000_2800:
    ld a, b
    and c
    jp z, Jump_000_28CA

    ld b, h
    ld c, l
    jp Jump_000_1593


    ld hl, $0009
    call Call_000_296E
    ld a, [$C959]
    and a
    jr nz, jr_000_2826

    ld a, b
    and c
    jp z, Jump_000_1531

    ld a, $31
    ldh [$AB], a
    ld a, $15
    ldh [$AC], a
    jp Jump_000_28D6


jr_000_2826:
    ld a, b
    and c
    jp z, Jump_000_28CA

    ld b, h
    ld c, l
    jp Jump_000_1593


    ld hl, $0007
    call Call_000_296E
    ld a, [$C959]
    and a
    jr nz, jr_000_2850

    inc hl
    inc hl
    ld a, b
    and c
    jp z, Jump_000_1531

    ld a, $31
    ldh [$AB], a
    ld a, $15
    ldh [$AC], a
    ld e, $FF
    jp Jump_000_2922


jr_000_2850:
    ld a, b
    and c
    jp nz, Jump_000_28AE

    push bc
    push de
    ld a, $11
    ld [$C944], a
    ld a, [hl+]
    ld [$CA19], a
    ld a, [hl+]
    ld [$CA1A], a
    ld a, $01
    ld [$CA1B], a
    push hl
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $6024
    ld a, [$FFA8]
    ld [$C95B], a
    ld [$2000], a
    pop hl
    ld a, $6C
    ld [$C960], a
    ld a, $C9
    ld [$C961], a
    ld a, [$CA1A]
    and a
    jr z, jr_000_28BB

    ld a, $19
    ldh [$A8], a
    ld a, $EB
    ldh [$A9], a
    ld a, $46
    ldh [$AA], a
    pop de
    pop bc
    ld a, $0A
    ld [$0000], a
    ld a, b
    or c
    ld [de], a
    xor a
    ld [$0000], a
    ld e, $FF
    jp Jump_000_2922


Jump_000_28AE:
    ld a, $19
    ldh [$A8], a
    ld a, $EC
    ldh [$A9], a
    ld a, $46
    ldh [$AA], a
    ret


jr_000_28BB:
    pop af
    pop af
    ld a, $19
    ldh [$A8], a
    ld a, $ED
    ldh [$A9], a
    ld a, $46
    ldh [$AA], a
    ret


Jump_000_28CA:
    ld a, $0A
    ld [$0000], a
    ld a, b
    or c
    ld [de], a
    xor a
    ld [$0000], a

Jump_000_28D6:
    ld de, $0003
    add hl, de
    ld a, [hl+]
    ld e, a
    jp Jump_000_2922


Jump_000_28DF:
    ld a, $0A
    ld [$0000], a
    ld a, b
    or c
    ld [de], a
    xor a
    ld [$0000], a

Jump_000_28EB:
    ld a, [hl+]
    ld [$FFA8], a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, [hl+]
    ld e, a
    inc hl
    jp Jump_000_2922


Jump_000_2901:
    ld a, $0A
    ld [$0000], a
    ld a, b
    xor c
    ld [de], a
    xor a
    ld [$0000], a

Jump_000_290D:
    ld de, $0004
    add hl, de
    ld a, [hl+]
    ld e, a
    inc hl
    inc hl
    ld a, h
    ld [$FFAA], a
    ld a, l
    ld [$FFA9], a
    dec hl
    dec hl
    jp Jump_000_2922


Jump_000_2922:
    ld a, $03
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld [hl], e
    ld a, [$C959]
    and a
    ret z

    ld a, [$C9BF]
    ld e, a
    ld a, [$C9C0]
    ld d, a
    ld a, [$C9C2]
    ld h, a
    ld a, [$C9C1]
    ld l, a
    ld c, [hl]
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $4C7C
    ld a, d
    ld [$C8EB], a
    ld a, e
    ld [$C8EA], a
    ld a, h
    ld [$C8E9], a
    ld a, l
    ld [$C8E8], a
    ld a, $07
    ld [$C6EA], a
    ld a, $CA
    ld [$C6E8], a
    ld a, $4C
    ld [$C6E9], a
    ret


Call_000_296E:
    add hl, bc
    ld a, h
    ld [$FFAA], a
    ld a, l
    ld [$FFA9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld l, c
    ld h, b
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    ld c, a
    ld a, [hl+]
    ld b, a
    xor a
    ld [$0000], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [bc]
    ld e, a
    inc bc
    push hl
    push de
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    call Call_000_14C6
    ld a, e
    or d
    pop de
    pop hl
    jr z, jr_000_29C6

    ld a, [hl]
    or e
    ld [hl], a
    xor a
    ld [$0000], a
    jp Jump_000_0AD3


jr_000_29C6:
    ld a, e
    cpl
    ld e, [hl]
    and e
    ld [hl], a
    xor a
    ld [$0000], a
    jp Jump_000_0AD3


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push hl
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    call Call_000_14C6
    pop hl
    ld [hl], e
    xor a
    ld [$0000], a
    jp Jump_000_0AD3


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push hl
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    call Call_000_14C6
    pop hl
    ld a, e
    ld [hl+], a
    ld [hl], d
    xor a
    ld [$0000], a
    jp Jump_000_0AD3


    call $40F2
    jp Jump_000_0AD3


    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    inc bc
    ld hl, $A026
    ld a, e
    ld [hl+], a
    ld [hl], d
    xor a
    ld [$0000], a
    ld a, b
    ld [$FFAA], a
    ld a, c
    ld [$FFA9], a
    ld a, $D3
    ld [$FFAB], a
    ld a, $0A
    ld [$FFAC], a
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $4123
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [bc]
    inc bc
    ld a, a
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [bc]
    ld [hl], a
    inc bc
    jp Jump_000_0AD3


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [bc]
    inc bc
    ld a, a
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    jp Jump_000_0AD3


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [bc]
    ld [hl], a
    inc bc
    xor a
    ld [$0000], a
    jp Jump_000_0AD3


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    xor a
    ld [$0000], a
    jp Jump_000_0AD3


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [bc]
    ld e, a
    inc bc
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [hl]
    and e
    ld [hl], a
    xor a
    ld [$0000], a
    jp Jump_000_0AD3


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [bc]
    ld e, a
    inc bc
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [hl]
    or e
    ld [hl], a
    xor a
    ld [$0000], a
    jp Jump_000_0AD3


    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    inc bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [hl]
    ld [de], a
    xor a
    ld [$0000], a
    jp Jump_000_0AD3


Call_000_2B17:
    ld a, $00
    ld [$C712], a
    ld a, $00
    ld [$C713], a
    ld a, $31
    ld [$C714], a
    ld a, $15
    ld [$C715], a
    ld a, $00
    ld [$C720], a
    ld a, $00
    ld [$C721], a
    ld a, $31
    ld [$C722], a
    ld a, $15
    ld [$C723], a
    xor a
    ld [$C6FA], a
    ld [$C6F9], a
    ld [$C6FB], a
    ld [$C6FC], a
    ld [$C6FE], a
    ld [$C700], a
    ret


Call_000_2B53:
    ld hl, $C6F9
    ld a, [hl+]
    add [hl]
    jr nc, jr_000_2B62

    ld a, [$C6FB]
    inc a
    ld [$C6FB], a
    xor a

jr_000_2B62:
    ld [hl-], a
    xor a
    ld [hl], a
    ld hl, $C6FC
    ld a, [hl+]
    ld [hl-], a
    xor a
    ld [hl+], a
    inc hl
    ld a, [hl+]
    ld [hl-], a
    xor a
    ld [hl+], a
    inc hl
    ld a, [hl+]
    ld [hl-], a
    xor a
    ld [hl+], a
    inc hl
    ret


Call_000_2B78:
    ld a, [$FFA7]
    ld h, a
    ld a, [$FFA6]
    ld l, a
    ldh a, [$A8]
    ld [hl+], a
    ldh a, [$A9]
    ld [hl+], a
    ldh a, [$AA]
    ld [hl+], a
    ldh a, [$AB]
    ld [hl+], a
    ldh a, [$AC]
    ld [hl+], a
    ldh a, [$AD]
    ld [hl+], a
    ldh a, [$AE]
    ld [hl+], a
    ret


Call_000_2B96:
    ld a, h
    ld [$FFA7], a
    ld a, l
    ld [$FFA6], a
    ld a, [hl+]
    ldh [$A8], a
    ld a, [hl+]
    ldh [$A9], a
    ld c, a
    ld a, [hl+]
    ldh [$AA], a
    ld b, a
    ld a, [hl+]
    ldh [$AB], a
    ld a, [hl+]
    ldh [$AC], a
    ld a, [hl+]
    ldh [$AD], a
    ld a, [hl+]
    ldh [$AE], a
    ret


    ret


Call_000_2BB7:
    ld hl, $C6ED
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $C6EB
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$C6EF]
    ld [$FF4F], a
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
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, h
    ld [$C6EC], a
    ld a, l
    ld [$C6EB], a
    ld hl, $C6ED
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


Jump_000_2C1D:
    push af
    push bc
    push de
    push hl
    ld a, [$C95B]
    push af
    ld a, [$C95A]
    push af
    ld a, $30
    ld [$C95B], a
    ld [$2000], a
    ld a, $01
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [$C93F]
    ld h, a
    ld a, [$C93E]
    ld l, a
    call Call_000_07BF
    ld a, $30
    ld [$C95B], a
    ld [$2000], a
    call $4356
    pop af
    ld [$C95A], a
    ld [$FF70], a
    pop af
    ld [$C95B], a
    ld [$2000], a
    pop hl
    pop de
    pop bc
    pop af
    reti


Call_000_2C61:
    ld a, $80
    ld [$FF06], a
    ld a, $04
    ld [$FF07], a
    xor a
    ld [$FF0F], a
    ld a, $04
    ld [$FFFF], a
    ret


Jump_000_2C75:
    push af
    push hl
    ldh a, [$A0]
    ld l, a
    ldh a, [$A1]
    ld h, a
    jp hl


Jump_000_2C7E:
    push af
    push bc
    push de
    push hl
    ld a, [$C95A]
    push af
    ld a, [$C95B]
    push af
    ld a, [$C6E7]
    ld h, a
    ld a, [$C6E6]
    ld l, a
    call Call_000_07BF
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $5A28
    xor a
    ldh [$A5], a
    ei
    pop af
    ld [$C95B], a
    ld [$2000], a
    pop af
    ld [$C95A], a
    ld [$FF70], a
    pop hl
    pop de
    pop bc
    pop af
    reti


    ldh a, [$A5]
    bit 0, a
    jr z, jr_000_2CD0

    ld a, $E3
    ld [$FF40], a
    call $FF80
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $4B46

jr_000_2CD0:
    ldh a, [$A5]
    bit 1, a
    jr z, jr_000_2CEA

    ld a, [$C6EA]
    ld [$C95B], a
    ld [$2000], a
    ld a, [$C6E9]
    ld h, a
    ld a, [$C6E8]
    ld l, a
    call Call_000_07BF

jr_000_2CEA:
    ld a, $30
    ld [$C95B], a
    ld [$2000], a
    ld a, $01
    ld [$C95A], a
    ldh [rSVBK], a
    ldh a, [$A5]
    bit 2, a
    jr z, jr_000_2D0A

    ld a, [$C93F]
    ld h, a
    ld a, [$C93E]
    ld l, a
    call Call_000_07BF

jr_000_2D0A:
    ld a, $30
    ld [$C95B], a
    ld [$2000], a
    call $4356
    ret


    ldh a, [$A2]
    ldh [rLCDC], a
    ldh a, [$A3]
    ldh [rSCX], a
    ldh a, [$A4]
    ldh [rSCY], a
    pop hl
    pop af
    reti


    pop hl
    pop af
    reti


    ld a, $E1
    ldh [rLCDC], a
    pop hl
    pop af
    reti


    ld a, $E3
    ldh [rLCDC], a
    pop hl
    pop af
    reti


    ld a, [$C963]
    ld h, a
    ld a, [$C962]
    ld l, a
    ld a, $01
    ld [$FF4F], a
    ld a, [$C968]
    ld [hl], a
    xor a
    ld [$FF4F], a
    ld a, [$C967]
    ld [hl+], a
    inc a
    ld [$C967], a
    ld a, h
    ld [$C963], a
    ld a, l
    ld [$C962], a
    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


    ld a, [$C969]
    ld e, a
    ld a, [$C96A]
    ld d, a
    ld a, [$C968]
    ld b, a
    ld hl, $C962
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, e

jr_000_2D79:
    ld a, $01
    ld [$FF4F], a
    ld a, b
    ld [hl], a
    xor a
    ld [$FF4F], a
    ld a, c
    ld [hl+], a
    inc c
    ld a, c
    cp d
    jr nz, jr_000_2D79

    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


    call Call_000_2BB7
    ld a, [$C963]
    ld h, a
    ld a, [$C962]
    ld l, a
    ld a, $01
    ld [$FF4F], a
    ld a, [$C968]
    ld [hl], a
    xor a
    ld [$FF4F], a
    ld a, [$C967]
    ld [hl+], a
    inc a
    ld [$C967], a
    ld a, h
    ld [$C963], a
    ld a, l
    ld [$C962], a
    ret


    call Call_000_2EE9
    call Call_000_2E52
    ld a, d
    and a
    ret nz

    call Call_000_2E36
    ld a, $96
    ld [$C6E8], a
    ld a, $2D
    ld [$C6E9], a
    ld a, $02
    ld [$C96B], a
    ld a, $E4
    ld [$C95C], a
    ld a, $2D
    ld [$C95D], a
    ld a, [$C96B]
    dec a
    ld [$C96B], a
    jr nz, jr_000_2DF7

    ld a, $BF
    ld [$C95C], a
    ld a, $2D
    ld [$C95D], a

jr_000_2DF7:
    ld d, $00
    ret


    jp Jump_000_2E29


    ld a, [$C96A]
    ld d, a
    ld a, [$C967]
    cp d
    jr z, jr_000_2E1C

    inc a
    ld [$C967], a
    call Call_000_2E52
    call Call_000_2E36
    ld a, $B7
    ld [$C6E8], a
    ld a, $2B
    ld [$C6E9], a
    ret


jr_000_2E1C:
    ld a, $66
    ld [$C6E8], a
    ld a, $2D
    ld [$C6E9], a
    jp Jump_000_2E29


Jump_000_2E29:
    ld a, $29
    ld [$C95C], a
    ld a, $2E
    ld [$C95D], a
    ld d, $00
    ret


Call_000_2E36:
    swap e
    ld a, e
    and $F0
    ld c, a
    ld a, e
    and $0F
    ld b, a
    ld hl, $4000
    add hl, bc
    ld a, h
    ld [$C6EC], a
    ld a, l
    ld [$C6EB], a
    ld a, $06
    ld [$C6EA], a
    ret


Call_000_2E52:
Jump_000_2E52:
jr_000_2E52:
    ld hl, $C95E
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, a
    ld e, a
    ld a, h
    ld [$C95F], a
    ld a, l
    ld [$C95E], a
    ld a, d
    add $09
    jr c, jr_000_2E6B

    ld d, $00
    ret


jr_000_2E6B:
    ld a, d
    cp $FC
    jr nz, jr_000_2E82

    ld b, h
    ld c, l
    ld hl, $C960
    ld a, [hl+]
    ld [$C95E], a
    ld a, [hl]
    ld [$C95F], a
    ld a, b
    ld [hl-], a
    ld [hl], c
    jr jr_000_2E52

jr_000_2E82:
    cp $FB
    ret nz

    ld hl, $C960
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $FF

jr_000_2E8D:
    dec e
    jp z, Jump_000_015B

    ld a, [hl+]
    cp $FC
    jr nz, jr_000_2E8D

    ld a, h
    ld [$C961], a
    ld a, l
    ld [$C960], a
    jp Jump_000_2E52


Call_000_2EA1:
    ld e, [hl]
    ld d, $00
    call Call_000_0450
    ld hl, $C952
    ld bc, $C96C
    ld d, $03

jr_000_2EAF:
    ld a, [hl-]
    add $30
    ld [bc], a
    inc bc
    dec d
    jr nz, jr_000_2EAF

    ld a, $FC
    ld [bc], a
    ld a, $6C
    ld [$C960], a
    ld a, $C9
    ld [$C961], a
    ret


Call_000_2EC5:
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_000_0450
    ld hl, $C952
    ld bc, $C96C
    ld d, $03

jr_000_2ED3:
    ld a, [hl-]
    add $30
    ld [bc], a
    inc bc
    dec d
    jr nz, jr_000_2ED3

    ld a, $FC
    ld [bc], a
    ld a, $6C
    ld [$C960], a
    ld a, $C9
    ld [$C961], a
    ret


Call_000_2EE9:
    ld a, [$C967]
    ld d, a
    ld a, [$C96A]
    cp d
    ret nz

    ld a, [$C969]
    ld [$C967], a
    ld a, [$C964]
    ld [$C6ED], a
    ld a, [$C965]
    ld [$C6EE], a
    ret


Call_000_2F05:
    push hl
    call Call_000_2B78
    ld a, $13
    ld [$C95B], a
    ld [$2000], a
    pop hl
    ld a, [hl+]
    ld [$C9BC], a
    and a
    jp z, Jump_000_2F7B

    ld c, a
    ld a, h
    ld [$C9BE], a
    ld a, l
    ld [$C9BD], a

jr_000_2F23:
    ld a, $13
    ld [$C95B], a
    ld [$2000], a
    ld a, [hl+]
    cp $01
    jr nz, jr_000_2F75

    ld a, [hl+]
    ld [$C718], a
    ld a, [hl+]
    ld [$C719], a
    ld a, [hl+]
    ld [$C71A], a
    ld a, $D3
    ld [$C71B], a
    ld a, $0A
    ld [$C71C], a
    push hl
    push bc

jr_000_2F48:
    ld hl, $C718
    call Call_000_2B96
    call Call_000_0AA7
    call Call_000_2B78
    ld a, [$C6EA]
    ld [$C95B], a
    ld [$2000], a
    ld a, [$C6E9]
    ld h, a
    ld a, [$C6E8]
    ld l, a
    call Call_000_07BF
    ld a, [$C71A]
    and a
    jr nz, jr_000_2F48

    pop bc
    pop hl
    dec c
    jr nz, jr_000_2F23

    jr jr_000_2F7B

jr_000_2F75:
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_000_2F23

Jump_000_2F7B:
jr_000_2F7B:
    ld hl, $C70A
    call Call_000_2B96
    ret


Call_000_2F82:
    ld h, b
    ld l, c
    ld a, $01
    ld [$FF4F], a
    ld de, $9800
    call Call_000_09EB
    xor a
    ld [$FF4F], a
    ld de, $9800
    call Call_000_09EB
    ret


Call_000_2F9A:
    push hl
    push de
    xor a
    ld [$FF4F], a
    call Call_000_2FAE
    pop de
    pop hl
    ld a, $01
    ld [$FF4F], a
    call Call_000_2FAE
    ret


Call_000_2FAE:
jr_000_2FAE:
    push de

jr_000_2FAF:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec e
    jr nz, jr_000_2FAF

    pop de
    ld a, $20
    sub e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec d
    jr nz, jr_000_2FAE

    ret


Call_000_2FC3:
    push hl
    push de
    xor a
    ld [$FF4F], a
    call Call_000_2FD7
    pop de
    pop hl
    ld a, $01
    ld [$FF4F], a
    call Call_000_2FD7
    ret


Call_000_2FD7:
jr_000_2FD7:
    push de
    ld a, e
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a

jr_000_2FDF:
    dec bc
    ld a, [bc]
    ld [hl+], a
    dec e
    jr nz, jr_000_2FDF

    pop de
    ld a, e
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, $20
    sub e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec d
    jr nz, jr_000_2FD7

    ret


Call_000_2FFA:
    push hl
    push de
    push bc
    ld b, d
    ld c, e
    call Call_000_0500
    ld de, $D000
    add hl, de
    ld d, h
    ld e, l
    pop hl
    call Call_000_09EB
    ld de, $D000
    call Call_000_09EB
    ld bc, $D000
    pop de
    pop hl
    ret


    ld a, [$C95A]
    push af
    ld a, $06
    ld [$C95A], a
    ldh [rSVBK], a
    call Call_000_2FFA
    call Call_000_2F9A
    pop af
    ld [$C95A], a
    ld [$FF70], a
    ret


    ld a, [$C95A]
    push af
    ld a, $06
    ld [$C95A], a
    ldh [rSVBK], a
    call Call_000_2FFA
    call Call_000_2FC3
    pop af
    ld [$C95A], a
    ld [$FF70], a
    ret


Call_000_304A:
    ld a, [$C95A]
    push af
    ld a, $05
    ld [$C95A], a
    ldh [rSVBK], a
    ld h, b
    ld l, c
    xor a
    ld [$C6D2], a
    ld [$C6D3], a
    ld a, [hl+]
    ld [$C6CF], a

Jump_000_3062:
    inc hl
    inc hl
    ld de, $D000
    call Call_000_09EB
    pop af
    ld [$C95A], a
    ld [$FF70], a
    ret


Call_000_3072:
    ld a, [$C95A]
    push af
    ld a, $06
    ld [$C95A], a
    ldh [rSVBK], a
    ld h, b
    ld l, c
    inc hl
    jp Jump_000_3062


Call_000_3083:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [$C95B]
    push af
    ld a, [bc]
    ld [$C95B], a
    ld [$2000], a
    inc bc
    push bc
    ld c, l
    ld b, h
    call Call_000_3131
    pop bc
    pop af
    ld [$C95B], a
    ld [$2000], a
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [$C95B]
    push af
    ld a, [bc]
    ld [$C95B], a
    ld [$2000], a
    inc bc
    push bc
    ld c, l
    ld b, h
    call Call_000_322E
    pop bc
    pop af
    ld [$C95B], a
    ld [$2000], a
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [$C95B]
    push af
    ld a, [bc]
    ld [$C95B], a
    ld [$2000], a
    inc bc
    push bc
    ld c, l
    ld b, h
    call Call_000_3187
    pop bc
    pop af
    ld [$C95B], a
    ld [$2000], a
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [$C95B]
    push af
    ld a, [bc]
    ld [$C95B], a
    ld [$2000], a
    inc bc
    push bc
    ld c, l
    ld b, h
    call Call_000_31A5
    pop bc
    pop af
    ld [$C95B], a
    ld [$2000], a
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [$C95B]
    push af
    ld a, [bc]
    ld [$C95B], a
    ld [$2000], a
    inc bc
    push bc
    ld c, l
    ld b, h
    call Call_000_304A
    pop bc
    pop af
    ld [$C95B], a
    ld [$2000], a
    ret


Call_000_3124:
    ld d, a
    ld a, e
    add a
    ld e, a
    ld a, d
    ld d, $00
    add hl, de
    ld e, a
    call Call_000_317D
    ret


Call_000_3131:
    ld hl, $C74E
    ld e, $00
    ld a, $20
    call Call_000_3124
    ld a, $07
    ld [$C9FD], a
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $4855
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $4496
    ret


Call_000_3157:
    ld hl, $C78E
    ld e, $00
    ld a, $20
    call Call_000_3124
    ld a, $87
    ld [$C9FD], a
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $4855
    ld a, $07
    ld [$C95B], a
    ld [$2000], a
    call $4521
    ret


Call_000_317D:
jr_000_317D:
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec e
    jr nz, jr_000_317D

    ret


Call_000_3187:
    ld h, b
    ld l, c
    ld a, [$C95A]
    push af
    ld a, $02
    ld [$C95A], a
    ldh [rSVBK], a
    ld de, $D000
    ld bc, $1000
    call Call_000_09EB
    pop af
    ld [$C95A], a
    ld [$FF70], a
    ret


Call_000_31A5:
    ld a, [$C95A]
    push af
    ld a, $03
    ld [$C95A], a
    ldh [rSVBK], a
    ld h, b
    ld l, c
    xor a
    ld [$C882], a
    ld [$C883], a
    ld [$C880], a
    ld [$C881], a
    ld [$C88D], a
    ld [$C8B5], a
    ld [$C88C], a
    ld [$C8B4], a
    ld [$C866], a
    ld [$C867], a
    ld a, $44
    ld [$C865], a
    ld a, [hl+]
    ld [$C86A], a
    ld a, [hl+]
    ld [$C86C], a
    ld a, [hl+]
    ld [$C86D], a
    ld a, [hl+]
    ld [$C868], a
    ld a, [hl+]
    ld [$C869], a
    add $0A
    ld [$C86B], a
    inc hl
    inc hl
    ld de, $D000
    call Call_000_09EB
    pop af
    ld [$C95A], a
    ld [$FF70], a
    ld hl, $C86E
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, [$C86A]
    ld b, a
    ld c, $08
    ld de, $0000

jr_000_320D:
    ld a, b
    add e
    ld e, a
    ld [hl+], a
    ld a, $00
    adc d
    ld d, a
    ld [hl+], a
    dec c
    jr nz, jr_000_320D

    ret


Call_000_321A:
    ld a, [$C95A]
    push af
    ld a, $04
    ld [$C95A], a
    ldh [rSVBK], a
    ld h, b
    ld l, c
    ld de, $0005
    add hl, de
    jp Jump_000_3062


Call_000_322E:
    xor a
    ld [$FF4F], a
    ld a, [bc]
    inc bc
    and a
    jr z, jr_000_3240

    ld d, a

jr_000_3238:
    push de
    call Call_000_3253
    pop de
    dec d
    jr nz, jr_000_3238

jr_000_3240:
    ld a, $01
    ld [$FF4F], a
    ld a, [bc]
    inc bc
    and a
    ret z

    ld d, a

jr_000_324A:
    push de
    call Call_000_3253
    pop de
    dec d
    jr nz, jr_000_324A

    ret


Call_000_3253:
    ld a, [$C95B]
    push af
    push bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push hl
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    inc bc
    ld a, [bc]
    ld a, a
    ld [$C95B], a
    ld [$2000], a
    pop bc

jr_000_3274:
    push de
    push hl
    push bc

jr_000_3277:
    ld d, $02

jr_000_3279:
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    dec d
    jr nz, jr_000_3279

    dec e
    jr nz, jr_000_3277

    pop bc
    pop hl
    pop de
    inc h
    bit 4, e
    jr nz, jr_000_32A9

    dec h
    ld a, e
    swap a
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a

jr_000_32A9:
    inc b
    dec d
    jr nz, jr_000_3274

    pop hl
    ld bc, $0007
    add hl, bc
    ld c, l
    ld b, h
    pop af
    ld [$C95B], a
    ld [$2000], a
    ret


    ret


    ret


Call_000_32BE:
    ret


    ret


    ld a, [$C9E4]
    ld e, a
    ld a, [$C9E6]
    add e
    ld [$C9E6], a
    ldh [rSCX], a
    ld a, $B8
    ldh [rSCY], a
    ld a, $68
    ldh [rLYC], a
    ld a, $E0
    ldh [$A0], a
    ld a, $32
    ldh [$A1], a
    pop hl
    pop af
    reti


    ld a, [$C9E5]
    ld e, a
    ld a, [$C9E7]
    add e
    ld [$C9E7], a
    ldh [rSCX], a
    ld a, $B8
    ldh [rSCY], a
    pop hl
    pop af
    reti


    ldh a, [$A5]
    bit 0, a
    jr z, jr_000_3311

    ld a, $E3
    ld [$FF40], a
    call $FF80
    ld a, $A7
    ldh [rWX], a
    xor a
    ldh [rSCX], a
    ld a, $48
    ldh [rSCY], a
    ld a, $47
    ldh [rLYC], a

jr_000_3311:
    ldh a, [$A5]
    bit 1, a
    jr z, jr_000_3328

    ld a, [$C6EA]
    ld [$2000], a
    ld a, [$C6E9]
    ld h, a
    ld a, [$C6E8]
    ld l, a
    call Call_000_07BF

jr_000_3328:
    ld a, $30
    ld [$C95B], a
    ld [$2000], a
    ld a, $01
    ld [$C95A], a
    ldh [rSVBK], a
    ldh a, [$A5]
    bit 2, a
    jr z, jr_000_3348

    ld a, [$C93F]
    ld h, a
    ld a, [$C93E]
    ld l, a
    call Call_000_07BF

jr_000_3348:
    ld a, $30
    ld [$C95B], a
    ld [$2000], a
    call $4356
    ld a, $C0
    ldh [$A0], a
    ld a, $32
    ldh [$A1], a
    ret


    ret


    ld a, [$C95B]
    push af
    ld a, $06
    ld [$C95B], a
    ld [$2000], a
    call Call_000_2BB7
    pop af
    ld [$C95B], a
    ld [$2000], a
    ret


    ld hl, $9C05
    ld d, $07
    ld b, $80

jr_000_337B:
    ld a, b
    add [hl]
    ld [hl+], a
    dec d
    jr nz, jr_000_337B

    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


    xor a
    ld [$FF4F], a
    ld a, [$C95A]
    push af
    ld a, $07
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [$D0A0]
    and a
    jr z, jr_000_33A5

    ld a, $0D
    jr jr_000_33A7

jr_000_33A5:
    ld a, $80

jr_000_33A7:
    ld hl, $9C60
    ld [hl], a
    ld a, $01
    ld [$FF4F], a
    ld a, $4F
    ld [hl], a
    xor a
    ld [$FF4F], a
    ld a, [$D0A1]
    and a
    jr z, jr_000_33C1

    ld a, $0D
    jr jr_000_33C3

jr_000_33C1:
    ld a, $80

jr_000_33C3:
    ld hl, $9C73
    ld [hl], a
    pop af
    ld [$C95A], a
    ld [$FF70], a
    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


    ld b, h
    ld h, l
    ld h, [hl]
    ld h, l
    ld l, [hl]
    ld h, h
    inc c
    dec c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3AB0:
Jump_000_3AB0:
    push af
    ld a, [$DF01]
    ld c, a
    pop af
    ld [c], a
    ld [$2100], a
    ret


jr_000_3ABB:
    dec a
    ld [$DF7D], a
    ret


    ld a, [$DF74]
    bit 6, a
    ret z

    ld a, [$DF08]
    ldh [rTIMA], a
    ldh [rTMA], a
    ld a, [$DF7D]
    and a
    jr nz, jr_000_3ABB

    ld hl, $DF78
    ld a, [hl]
    sub $01
    ld [hl+], a
    ld c, a
    ld a, [hl]
    sbc $00
    ld [hl], a
    or c
    jr z, jr_000_3B4B

    ld a, [$DF75]
    call Call_000_3AB0
    ld hl, $DF76
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $30
    xor a
    ldh [rNR30], a
    ld a, [hl+]
    ld b, a
    and $F0
    cp $70
    jr z, jr_000_3B59

    ld a, b
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a

jr_000_3B2A:
    ld a, $80
    ldh [rNR30], a
    ld a, [$DF14]
    or $80
    ldh [rNR34], a
    and $7F
    ldh [rNR34], a
    ld a, l
    ld b, h
    ld hl, $DF76
    ld [hl+], a
    ld [hl], b
    bit 7, b
    jr z, jr_000_3B4A

    ld [hl], $40
    ld hl, $DF75
    inc [hl]

jr_000_3B4A:
    ret


jr_000_3B4B:
    call Call_000_3B7C
    ld a, [$DF7B]
    ld l, a
    ld a, [$DF7C]
    ld h, a
    or l
    ret z

    jp hl


jr_000_3B59:
    ld a, [hl+]
    ld [$DF7D], a
    ld bc, $000E
    add hl, bc
    ld c, l
    ld b, h
    ld hl, $FF30
    ld a, $88
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
    ld [hl], a
    ld l, c
    ld h, b
    jr jr_000_3B2A

Call_000_3B7C:
    ld hl, $DF74
    res 6, [hl]
    xor a
    ld [$DF9F], a
    ldh a, [rIE]
    and $1B
    ldh [rIE], a
    ldh a, [rIF]
    and $1B
    ldh [rIF], a
    xor a
    ldh [rNR30], a
    ldh [rTAC], a
    ld a, $80
    ldh [rNR30], a
    ldh a, [rNR51]
    and $BB
    ldh [rNR51], a
    ret


    push bc
    ld a, [$DF75]
    call Call_000_3AB0
    call Call_000_3C32
    ld a, [$DF00]
    call Call_000_3AB0
    pop bc
    ret


    push bc
    ld a, [$DF75]
    call Call_000_3AB0
    ld a, [hl]
    and $F0
    cp $70
    jr nz, jr_000_3BE0

    inc hl
    ld a, [hl+]
    ld [$DF7D], a
    xor a
    ldh [rNR30], a
    ld a, $88
    ld c, $10
    push hl
    ld hl, $FF30

jr_000_3BD1:
    ld [hl+], a
    dec c
    jr nz, jr_000_3BD1

    ld a, $80
    ldh [rNR30], a
    ld bc, $000E
    pop hl
    add hl, bc
    jr jr_000_3BE7

jr_000_3BE0:
    xor a
    ld [$DF7D], a
    call Call_000_3C32

jr_000_3BE7:
    ld a, [$DF00]
    call Call_000_3AB0
    pop bc
    ret


    push bc
    ld a, [$DF75]
    call Call_000_3AB0
    ld a, [hl]
    and $F0
    cp $70
    jr nz, jr_000_3C1C

    inc hl
    ld a, [hl+]
    ld [$DF7D], a
    xor a
    ldh [rNR30], a
    ld a, $88
    ld c, $10
    push hl
    ld hl, $FF30

jr_000_3C0D:
    ld [hl+], a
    dec c
    jr nz, jr_000_3C0D

    ld a, $80
    ldh [rNR30], a
    ld bc, $000E
    pop hl
    add hl, bc
    jr jr_000_3C1F

jr_000_3C1C:
    call Call_000_3C32

jr_000_3C1F:
    ld a, [$DF14]
    or $80
    ldh [rNR34], a
    and $7F
    ldh [rNR34], a
    ld a, [$DF00]
    call Call_000_3AB0
    pop bc
    ret


Call_000_3C32:
    ld c, $30
    xor a
    ldh [rNR30], a
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    ld a, $80
    ldh [rNR30], a
    ret


    call Call_000_3C75
    ld a, [$DF00]
    ld [$2100], a
    ret


Call_000_3C75:
    ld a, [$DF75]
    ld [$2100], a
    ld e, $00
    ld hl, $DF76
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_3C83:
    ld a, [hl]
    ld d, a
    and $F0
    cp $70
    ld a, d
    jr z, jr_000_3CE0

    ld d, $20

jr_000_3C8E:
    bit 0, d
    jr nz, jr_000_3C96

    nop
    nop
    jr jr_000_3C99

jr_000_3C96:
    inc hl
    swap a

jr_000_3C99:
    and $F0
    cp e
    ld e, a
    jr z, jr_000_3CAB

    ldh [rNR12], a
    ldh [rNR22], a
    ld a, $87
    ldh [rNR14], a
    ldh [rNR24], a
    jr jr_000_3CB7

jr_000_3CAB:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_3CB7:
    ld a, $14

jr_000_3CB9:
    dec a
    jr nz, jr_000_3CB9

    dec d
    ld a, [hl]
    jr nz, jr_000_3C8E

jr_000_3CC0:
    bit 7, h
    jr z, jr_000_3CD0

    ld h, $40
    ld a, [$DF75]
    inc a
    ld [$DF75], a
    ld [$2100], a

jr_000_3CD0:
    push bc
    call Call_000_3D2A
    ld a, [$DFFE]
    and b
    pop bc
    ret nz

    dec bc
    ld a, b
    or c
    jr nz, jr_000_3C83

    ret


jr_000_3CE0:
    inc hl
    ld a, [hl+]
    ld [$DF7D], a
    push bc
    ld bc, $000E
    add hl, bc
    pop bc

jr_000_3CEB:
    ld a, $77
    ld d, $20

jr_000_3CEF:
    bit 0, d
    jr nz, jr_000_3CF5

    jr jr_000_3CF7

jr_000_3CF5:
    swap a

jr_000_3CF7:
    and $F0
    cp e
    ld e, a
    jr z, jr_000_3D09

    ldh [rNR12], a
    ldh [rNR22], a
    ld a, $87
    ldh [rNR14], a
    ldh [rNR24], a
    jr jr_000_3D15

jr_000_3D09:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_3D15:
    ld a, $14

jr_000_3D17:
    dec a
    jr nz, jr_000_3D17

    dec d
    ld a, $77
    jr nz, jr_000_3CEF

    ld a, [$DF7D]
    dec a
    ld [$DF7D], a
    jr nz, jr_000_3CEB

    jr jr_000_3CC0

Call_000_3D2A:
    ld c, $00
    ld a, $10
    ld [c], a
    nop
    nop
    nop
    nop
    nop
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    and $0F
    cpl
    ld b, a
    ld a, $30
    ld [c], a
    ret


    ld a, [$DFA9]
    call Call_000_3AB0
    ld a, [$DFA7]
    ld l, a
    ld a, [$DFA8]
    ld h, a
    ld bc, $0004
    add hl, bc
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld a, [$DF00]
    jp Jump_000_3AB0


    ld a, [$DFA9]
    call Call_000_3AB0
    ld a, [$DFA7]
    ld l, a
    ld a, [$DFA8]
    ld h, a
    push hl
    ld bc, $FF7C
    add hl, bc
    ld a, [hl+]
    ld [$DFAD], a
    ld a, [hl+]
    ld [$DFAE], a
    ld a, [hl+]
    ld [$DFAF], a
    ld a, [hl+]
    ld [$DFB0], a
    ld a, l
    ld [$DFB1], a
    ld a, h
    ld [$DFB2], a
    pop hl
    ld a, [hl+]
    ld b, a
    ld a, [hl-]
    ld c, a
    ld e, l
    ld d, h
    add hl, bc
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    or b
    jr z, jr_000_3DB1

    push hl
    ld l, e
    ld h, d
    add hl, bc
    ld a, l
    ld [$DFB3], a
    ld a, h
    ld [$DFB4], a
    ld hl, $DFA6
    set 0, [hl]
    pop hl

jr_000_3DB1:
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    or b
    jr z, jr_000_3DCA

    push hl
    ld l, e
    ld h, d
    add hl, bc
    ld a, l
    ld [$DFB5], a
    ld a, h
    ld [$DFB6], a
    ld hl, $DFA6
    set 1, [hl]
    pop hl

jr_000_3DCA:
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    or b
    jr z, jr_000_3DE3

    push hl
    ld l, e
    ld h, d
    add hl, bc
    ld a, l
    ld [$DFB7], a
    ld a, h
    ld [$DFB8], a
    ld hl, $DFA6
    set 2, [hl]
    pop hl

jr_000_3DE3:
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    or b
    jr z, jr_000_3DFC

    push hl
    ld l, e
    ld h, d
    add hl, bc
    ld a, l
    ld [$DFB9], a
    ld a, h
    ld [$DFBA], a
    pop hl
    ld hl, $DFA6
    set 3, [hl]

jr_000_3DFC:
    ld hl, $DFB3
    ld de, $DFC1
    xor a

jr_000_3E03:
    ld [$DFF9], a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    or c
    jr z, jr_000_3E29

    ld a, [bc]
    inc bc
    ld [de], a
    dec de
    ld a, [bc]
    ld [de], a
    inc de
    inc bc
    ld a, [bc]
    ld [$DFFA], a
    ld bc, $DFBB
    ld a, [$DFF9]
    add c
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ld a, [$DFFA]
    ld [bc], a

jr_000_3E29:
    inc de
    inc de
    inc de
    ld a, [$DFF9]
    inc a
    cp $04
    jr nz, jr_000_3E03

    ld a, [$DF00]
    jp Jump_000_3AB0


    sla a
    ld e, a
    ld d, $00
    ld a, [$DFA9]
    call Call_000_3AB0
    ld hl, $DFB3
    add hl, de
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0003
    add hl, bc
    pop bc
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld hl, $DFBB
    srl e
    add hl, de
    ld [hl], a
    ld a, e
    sla e
    add e
    ld e, a
    ld hl, $DFC0
    add hl, de
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld a, [$DF00]
    jp Jump_000_3AB0


    sla a
    ld e, a
    ld d, $00
    ld a, [$DFA9]
    call Call_000_3AB0
    ld hl, $DFB3
    add hl, de
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0003
    add hl, bc
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    push bc
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    push de
    ld a, e
    srl a
    add e
    ld e, a
    ld hl, $DFC0
    add hl, de
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    pop de
    ld a, [$DFA7]
    ld l, a
    ld a, [$DFA8]
    ld h, a
    ld a, [hl+]
    ld b, a
    ld a, [hl-]
    ld c, a
    push hl
    add hl, bc
    add hl, de
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    pop hl
    add hl, bc
    pop bc
    add hl, bc
    pop bc
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    inc hl
    inc hl
    ld a, [hl]
    ld hl, $DFBB
    srl e
    add hl, de
    ld [hl], a
    ld a, [$DF00]
    jp Jump_000_3AB0


    sla a
    ld e, a
    ld d, $00
    push de
    ld b, $00
    sla c
    ld a, [$DFA9]
    push bc
    call Call_000_3AB0
    pop bc
    ld a, [$DFA7]
    ld l, a
    ld a, [$DFA8]
    ld h, a
    inc hl
    inc hl
    ld a, [hl+]
    ld d, a
    ld a, [hl-]
    ld e, a
    dec hl
    dec hl
    push hl
    add hl, de
    add hl, bc
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    pop bc
    add hl, bc
    ld c, l
    ld b, h
    pop de
    ld hl, $DFCB
    add hl, de
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, [$DF00]
    jp Jump_000_3AB0


    sla a
    ld e, a
    ld d, $00
    ld a, [$DFA9]
    call Call_000_3AB0
    xor a
    ld [$DFFA], a
    ld hl, $DFCB
    add hl, de
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    inc hl
    swap a
    and $0F
    ld e, a
    ld a, [hl+]
    ld d, a
    bit 7, a
    jr z, jr_000_3F57

    cp $FF
    jr z, jr_000_3F45

jr_000_3F36:
    and $7F
    ld d, a
    ld a, e
    and a
    jr z, jr_000_3F4E

    ld a, [hl+]
    or $80
    ld [$DFFA], a
    jr jr_000_3F57

jr_000_3F45:
    ld d, a
    ld a, e
    cp $0F
    ld a, d
    jr nz, jr_000_3F36

    jr jr_000_3F66

jr_000_3F4E:
    ld a, d
    or $80
    ld d, a
    ld [$DFFA], a
    jr jr_000_3F66

jr_000_3F57:
    ld a, [hl+]
    bit 7, a
    jr z, jr_000_3F63

    and $7F
    ld b, a
    ld a, [hl+]
    ld c, a
    jr jr_000_3F66

jr_000_3F63:
    ld c, a
    ld b, $00

jr_000_3F66:
    ld a, h
    ld [$DFFC], a
    ld a, l
    pop hl
    ld [hl+], a
    ld a, [$DFFC]
    ld [hl], a
    ld a, [$DF00]
    push bc
    call Call_000_3AB0
    pop bc
    ld a, [$DFFA]
    ret


    sla a
    ld e, a
    ld d, $00
    ld a, [$DFA9]
    call Call_000_3AB0
    ld hl, $DFCB
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld hl, $DFD5
    push de
    ld a, e
    srl a
    add e
    ld e, a
    add hl, de
    pop de
    ld a, [hl]
    add c
    ld [hl+], a
    push af
    ld a, b
    and $0F
    ld c, a
    pop af
    ld a, [hl]
    adc c
    ld [hl], a
    ld a, [$DF00]
    jp Jump_000_3AB0


    push de
    push hl
    push bc
    ld e, a
    ld d, $00
    ld hl, $DFB1
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, [$DFA9]
    call Call_000_3AB0
    ld e, [hl]
    ld a, [$DF00]
    call Call_000_3AB0
    ld a, e
    pop bc
    pop hl
    pop de
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
