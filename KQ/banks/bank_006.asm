; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld [$0C08], sp
    inc c
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    inc c
    inc c
    ld [$0008], sp
    nop
    nop
    nop
    jr jr_006_40EC

    jr jr_006_40EE

    jr jr_006_40F0

    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    jr jr_006_40F6

    nop
    nop
    nop
    nop
    ld c, d
    inc a
    inc b
    ld a, [hl]
    ld b, d
    nop
    inc a
    ld b, [hl]
    inc c
    ld b, d

jr_006_40EC:
    inc a
    ld b, d

jr_006_40EE:
    inc c
    inc a

jr_006_40F0:
    nop
    nop
    nop
    nop
    inc e
    ld a, [hl]

jr_006_40F6:
    inc e
    ld a, [hl]
    ld b, d
    ld [$4A08], sp
    ld [$004A], sp
    nop
    nop
    nop
    ld a, h
    ld h, b
    ld h, [hl]
    ld e, h
    ld b, d
    ld [hl+], a
    ld b, b
    ld [hl+], a
    ld h, h
    ld [hl+], a
    ld [hl-], a
    inc e
    nop
    nop
    nop
    nop
    stop
    ld b, h
    db $10
    db $10
    jr c, jr_006_4151

    cp $10
    jr c, jr_006_4161

    db $10
    stop
    nop
    nop
    ld c, d
    inc a
    cp l
    ld e, [hl]
    ld e, a
    cp [hl]
    ld c, a
    cp [hl]
    ld h, l
    sbc [hl]
    sub d
    ld c, h
    inc l
    nop
    nop
    nop
    ld a, $7E
    ret nz

    ld a, $82
    ld a, h
    ld a, h
    add b
    nop
    db $FC
    ld a, [hl]
    cp [hl]
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    rlca
    ld [bc], a
    ld e, [hl]
    inc h
    ld a, h
    add d

jr_006_414A:
    ld c, h
    cp [hl]
    cp d
    ld e, h
    ld b, h
    jr c, jr_006_4151

jr_006_4151:
    nop
    ld a, [hl]
    inc a
    ld a, [hl]
    ld b, d
    inc a
    ld a, [hl]
    ld b, [hl]
    jr c, @+$7C

    halt
    ld h, [hl]
    ld a, [hl]
    ld a, [hl]
    inc a
    ld b, b

jr_006_4161:
    nop
    cp b
    ld b, b
    ld b, h
    cp b
    ld [hl-], a
    call z, $F608
    add b
    ld a, [hl]
    ld h, b
    ld e, $04
    ld [bc], a
    nop
    nop
    add d
    ld l, h
    db $10
    xor $5A
    inc h
    inc a
    ret nc

    jr nc, jr_006_414A

    ret z

    ld [hl], $46
    jr nc, jr_006_4181

jr_006_4181:
    nop
    inc h
    ld a, [bc]
    ld d, h
    ld l, $72
    inc l
    ld c, h
    ld a, [hl-]
    jr nc, @+$4E

    nop
    add b
    nop
    add b
    nop
    nop
    jr @+$1A

    inc h
    inc h
    ld e, d
    ld e, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    inc h
    inc h
    jr jr_006_41B8

    nop
    nop
    inc b
    inc b
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0404], sp
    nop
    nop
    ld a, $3C
    ld h, [hl]
    inc b
    ld a, $5C

jr_006_41B8:
    ld [de], a
    ld d, b
    inc b
    ld b, d
    jr c, jr_006_4214

    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    jr nz, jr_006_41E6

    jr nz, jr_006_41E8

    jr nz, jr_006_41EA

    jr nz, jr_006_41EC

    jr nz, jr_006_41EE

    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    dec bc
    rlca
    rla
    rrca
    cpl
    rra
    nop
    nop
    ld e, $1E
    dec l
    dec l

jr_006_41E6:
    dec hl
    dec hl

jr_006_41E8:
    dec l
    dec l

jr_006_41EA:
    xor e
    xor e

jr_006_41EC:
    and c
    pop hl

jr_006_41EE:
    ld e, [hl]
    ld e, [hl]
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
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
    jr nc, jr_006_4224

jr_006_4214:
    jr nc, jr_006_4246

    jr nc, jr_006_4248

    jr nc, jr_006_423A

    jr nz, jr_006_423C

    nop
    nop
    jr nz, jr_006_4240

    rst $38
    nop
    add b
    nop

jr_006_4224:
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop

jr_006_423A:
    add b
    nop

jr_006_423C:
    add b
    nop
    add b
    nop

jr_006_4240:
    rst $38
    nop
    add b
    nop
    add b
    nop

jr_006_4246:
    add b
    nop

jr_006_4248:
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    jr nc, jr_006_42A4

    jr nc, jr_006_4286

    jr nz, jr_006_4298

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38

Jump_006_4281:
    nop
    add b
    nop
    add b
    nop

jr_006_4286:
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop

jr_006_4298:
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop

jr_006_42A4:
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
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
    jr nc, jr_006_42FC

    jr nc, jr_006_42DE

    jr nz, jr_006_42F0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    inc a
    nop
    nop
    nop
    nop

jr_006_42DE:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    jr nc, jr_006_430D

    stop
    nop

jr_006_42F0:
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop

jr_006_42FC:
    add b
    nop
    add b
    nop
    nop
    nop
    inc e
    inc e
    ld [hl+], a
    ld [hl+], a
    ld h, $26
    ld a, [hl+]
    ld a, [hl+]
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a

jr_006_430D:
    ld [hl+], a
    inc e
    inc e
    nop
    nop
    ld [$1808], sp
    jr jr_006_433F

    jr z, jr_006_4321

    ld [$0808], sp
    ld [$1C08], sp
    inc e
    nop

jr_006_4321:
    nop
    inc e
    inc e
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc b
    inc b
    ld [$1008], sp
    db $10
    ld a, $3E
    nop
    nop
    inc e
    inc e
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    inc c
    inc c
    ld [bc], a
    ld [bc], a
    ld b, d
    ld b, d
    inc a

jr_006_433F:
    inc a
    nop
    nop
    inc b
    inc b
    inc c
    inc c
    inc d
    inc d
    inc h
    inc h
    ld a, [hl]
    ld a, [hl]
    inc b
    inc b
    inc c
    inc c
    nop
    nop
    ld [hl-], a
    ld [hl-], a
    inc l
    inc l
    jr nz, jr_006_4378

    inc a
    inc a
    ld [bc], a
    ld [bc], a
    ld b, d
    ld b, d
    inc a
    inc a
    nop
    nop
    inc c
    inc c
    db $10
    db $10
    jr nz, jr_006_4388

    inc l
    inc l
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    inc e
    inc e
    nop
    nop
    ld a, $3E
    ld b, d
    ld b, d
    inc b
    inc b

jr_006_4378:
    ld [$0808], sp
    ld [$1010], sp
    db $10
    stop
    nop
    inc e
    inc e
    ld [hl+], a
    ld [hl+], a
    inc e
    inc e

jr_006_4388:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    ld [hl+], a
    ld [hl+], a
    ld h, $26
    ld a, [de]
    ld a, [de]
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    jr jr_006_43B8

    nop
    nop
    nop
    nop
    ld [$1018], sp
    ld [$0000], sp
    ld [$1018], sp
    ld [$0000], sp
    ld b, $06
    ld c, $06
    ld c, $0C
    inc e
    inc c

jr_006_43B8:
    inc e
    jr @+$3A

    jr jr_006_43F5

    jr nc, jr_006_43EF

    jr nc, @+$01

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b

jr_006_43EF:
    nop
    nop
    nop
    ld a, $1C
    ld [hl+], a

jr_006_43F5:
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [$0008], sp
    nop
    db $10
    db $10
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld c, $0E
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $3E
    ld [hl+], a
    ld [hl+], a
    ld h, d
    ld h, d
    nop
    nop
    ld a, h
    ld a, h
    ld [hl+], a
    ld [hl+], a
    inc a
    inc a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, h
    ld a, h
    nop
    nop
    inc e
    inc e
    ld [hl+], a
    ld [hl+], a
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld [hl+], a
    ld [hl+], a
    inc e
    inc e
    nop
    nop
    ld a, b
    ld a, b
    inc h
    inc h
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, h
    ld a, h
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    jr nz, jr_006_4476

    jr c, jr_006_4490

    jr nz, jr_006_447A

    jr nz, jr_006_447C

    jr nz, jr_006_447E

    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    jr nz, jr_006_4486

    jr c, jr_006_44A0

    jr nz, jr_006_448A

    jr nz, jr_006_448C

    jr nz, jr_006_448E

    ld [hl], b
    ld [hl], b
    nop
    nop
    inc e
    inc e
    ld [hl+], a
    ld [hl+], a

jr_006_4476:
    ld b, b
    ld b, b
    ld b, b
    ld b, b

jr_006_447A:
    ld b, [hl]
    ld b, [hl]

jr_006_447C:
    ld [hl+], a
    ld [hl+], a

jr_006_447E:
    ld e, $1E
    nop
    nop
    ld h, d
    ld h, d
    ld [hl+], a
    ld [hl+], a

jr_006_4486:
    ld [hl+], a
    ld [hl+], a
    ld a, $3E

jr_006_448A:
    ld [hl+], a
    ld [hl+], a

jr_006_448C:
    ld [hl+], a
    ld [hl+], a

jr_006_448E:
    ld h, d
    ld h, d

jr_006_4490:
    nop
    nop
    inc a
    inc a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$3C3C], sp

jr_006_44A0:
    nop
    nop
    ld a, $3E
    inc b
    inc b
    inc b
    inc b
    inc h
    inc h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    jr c, jr_006_44E8

    nop
    nop
    ld h, d
    ld h, d
    inc h
    inc h
    jr z, jr_006_44E0

    inc a
    inc a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld h, d
    ld h, d
    nop
    nop
    jr c, jr_006_44FC

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, $3E
    nop
    nop
    ld h, d
    ld h, d
    ld [hl+], a
    ld [hl+], a
    ld [hl], $36
    ld a, [hl+]
    ld a, [hl+]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld h, d
    ld h, d

jr_006_44E0:
    nop
    nop
    ld h, d
    ld h, d
    ld [hl-], a
    ld [hl-], a
    ld a, [hl+]
    ld a, [hl+]

jr_006_44E8:
    ld h, $26
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld h, d
    ld h, d
    nop
    nop
    inc a
    inc a
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d

jr_006_44FC:
    ld b, d
    ld b, d
    inc a
    inc a
    nop
    nop
    ld a, h
    ld a, h
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc h
    inc h
    jr c, jr_006_4544

    jr nz, jr_006_452E

    ld [hl], b
    ld [hl], b
    nop
    nop
    inc a
    inc a
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld c, d
    ld c, d
    ld b, h
    ld b, h
    dec sp
    dec sp
    nop
    nop
    ld a, h
    ld a, h
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc h
    inc h
    jr c, jr_006_4564

    inc h
    inc h

jr_006_452E:
    ld h, d
    ld h, d
    nop
    nop
    ld e, $1E
    jr nz, jr_006_4556

    jr @+$1A

    inc b
    inc b
    ld [hl-], a
    ld [hl-], a
    ld b, d
    ld b, d
    inc a
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]

jr_006_4544:
    adc b
    adc b
    ld [$0808], sp
    ld [$0808], sp
    ld [$1808], sp
    jr jr_006_4551

jr_006_4551:
    nop
    ld h, d
    ld h, d
    ld [hl+], a
    ld [hl+], a

jr_006_4556:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc e
    inc e
    nop
    nop
    ld h, d
    ld h, d

jr_006_4564:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc d
    inc d
    inc d
    inc d
    ld [$0008], sp
    nop
    ld h, d
    ld h, d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [hl+]
    ld a, [hl+]
    ld [hl], $36
    ld h, d
    ld h, d
    nop
    nop
    ld h, d
    ld h, d
    ld [hl+], a
    ld [hl+], a
    inc d
    inc d
    ld [$1408], sp
    inc d
    ld [hl+], a
    ld [hl+], a
    ld h, d
    ld h, d
    nop
    nop
    ld h, d
    ld h, d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld h, $26
    ld a, [de]
    ld a, [de]
    ld b, d
    ld b, d
    inc a
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    add h
    add h
    ld [$1008], sp
    db $10
    jr nz, jr_006_45CC

    ld b, d
    ld b, d
    db $FC
    db $FC
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop

jr_006_45CC:
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    jr c, jr_006_464E

    inc b
    inc b
    inc a
    inc a
    ld b, h
    ld b, h
    ld a, $3E
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    jr nz, jr_006_4646

    inc l
    inc l
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, @+$3A

    ld b, h
    ld b, h
    ld b, b
    ld b, b
    ld b, d
    ld b, d
    inc a
    inc a
    nop
    nop
    nop
    nop
    inc c
    inc c
    inc b
    inc b

jr_006_4646:
    inc [hl]
    inc [hl]
    ld c, h
    ld c, h
    ld b, h
    ld b, h
    inc a
    inc a

jr_006_464E:
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_006_468E

    ld b, h
    ld b, h
    ld e, b
    ld e, b
    ld h, d
    ld h, d
    inc a
    inc a
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld [de], a
    ld [de], a
    jr c, jr_006_46A0

    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc a
    inc a
    add h
    add h
    ld a, b
    ld a, b
    nop
    nop
    ld h, b
    ld h, b
    jr nz, jr_006_46A6

    inc l
    inc l
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

jr_006_468E:
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    nop

jr_006_46A0:
    nop
    nop
    inc b
    inc b
    nop
    nop

jr_006_46A6:
    inc b
    inc b
    inc h
    inc h
    ld b, h
    ld b, h
    jr c, jr_006_46E6

    nop
    nop
    nop
    nop
    ld h, h
    ld h, h
    inc h
    inc h
    jr z, jr_006_46E0

    jr c, jr_006_46F2

    inc h
    inc h
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    nop
    jr jr_006_46DC

    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    db $F4
    db $F4
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d

jr_006_46DC:
    ld b, d
    ld b, d
    nop
    nop

jr_006_46E0:
    nop
    nop
    nop
    nop
    ld l, h
    ld l, h

jr_006_46E6:
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    nop

jr_006_46F2:
    nop
    nop
    inc a
    inc a
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, h
    ld e, h
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc a
    inc a
    jr nz, jr_006_472E

    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc a
    inc a
    inc b
    inc b
    ld b, $06
    nop
    nop
    nop
    nop
    ld l, h
    ld l, h
    ld [hl-], a
    ld [hl-], a
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_006_474E

jr_006_472E:
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1E
    jr nz, jr_006_4758

    inc e
    inc e
    ld b, d
    ld b, d
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3E
    ld c, b
    ld c, b
    ld [$0808], sp
    ld [$0808], sp

jr_006_474E:
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    ld b, h

jr_006_4758:
    ld b, h
    ld b, h
    ld c, h
    ld c, h
    inc [hl]
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc d
    inc d
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    jp nz, Jump_006_4AC2

    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    inc [hl]
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, d
    inc d
    inc d
    ld [$1408], sp
    inc d
    ld h, d
    ld h, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld e, $1E
    ld b, d
    ld b, d
    inc a
    inc a
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    adc b
    adc b
    db $10
    db $10
    ld [hl+], a
    ld [hl+], a
    ld a, h
    ld a, h
    nop
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop

Jump_006_4AC2:
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
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
    ld [hl+], a
    inc e
    ld e, l
    ld [hl+], a
    ld d, c
    ld h, $55
    ld a, [hl+]
    ld c, l
    ld [hl-], a
    ld d, l
    ld [hl+], a
    ld [hl+], a
    inc e
    inc e
    nop
    inc d
    ld [$1824], sp
    ld d, h
    jr z, jr_006_505B

    ld [$0814], sp
    inc d
    ld [$1C22], sp
    inc e
    nop
    ld [hl+], a
    inc e
    ld e, l
    ld [hl+], a
    ld d, l
    ld [hl+], a
    ld a, [hl+]
    inc b
    inc d
    ld [$1028], sp
    ld b, c
    ld a, $3E
    nop
    ld [hl+], a
    inc e
    ld e, l
    ld [hl+], a
    dec h
    ld [bc], a
    ld [de], a
    inc c
    dec c
    ld [bc], a
    and l
    ld b, d
    ld b, d
    inc a
    inc a
    nop
    ld a, [bc]
    inc b
    ld [de], a
    inc c
    ld a, [hl+]

jr_006_5055:
    inc d
    ld e, d
    inc h
    add c
    ld a, [hl]
    ld a, d

jr_006_505B:
    inc b
    ld [de], a
    inc c
    inc c
    nop
    ld c, l
    ld [hl-], a
    ld d, d
    inc l
    ld e, h
    jr nz, jr_006_50A9

    inc a
    dec a
    ld [bc], a
    and l
    ld b, d
    ld b, d
    inc a
    inc a
    nop
    ld [de], a
    inc c
    jr z, jr_006_5084

    ld d, b
    jr nz, jr_006_50C9

    inc l
    ld c, l
    ld [hl-], a
    ld d, l
    ld [hl+], a
    ld [hl+], a
    inc e
    inc e
    nop
    ld b, c
    ld a, $BD
    ld b, d

jr_006_5084:
    ld c, d
    inc b
    inc d
    ld [$0814], sp
    jr z, jr_006_509C

    jr z, jr_006_509E

    stop
    ld [hl+], a
    inc e
    ld d, l
    ld [hl+], a
    ld [hl+], a
    inc e
    ld e, l
    ld [hl+], a
    ld d, l
    ld [hl+], a
    ld d, l
    ld [hl+], a

jr_006_509C:
    ld [hl+], a
    inc e

jr_006_509E:
    inc e
    nop
    ld [hl+], a
    inc e
    ld e, l
    ld [hl+], a
    ld e, c
    ld h, $25
    ld a, [de]
    dec e

jr_006_50A9:
    ld [bc], a
    ld a, [bc]
    inc b
    inc h
    jr jr_006_50C7

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    ld d, h
    adc b
    ld l, b
    sub b
    ld c, b

jr_006_50C7:
    or b
    inc b

jr_006_50C9:
    ld hl, sp+$02
    db $FC
    add d
    ld a, h
    ld b, h
    jr c, jr_006_50F5

    jr jr_006_512B

    jr nz, jr_006_5055

    ld a, a
    add a
    ld a, b
    add h
    ld a, b
    add h
    ld a, b
    add h
    ld a, b
    ld c, b
    jr nc, jr_006_50E1

jr_006_50E1:
    rst $38
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
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a

jr_006_50F5:
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    ld d, l
    ld l, [hl]
    ld d, l
    sbc $53
    ld l, [hl]
    ld d, l
    and [hl]
    ld d, h
    ld [hl], $56
    add d
    ld d, d
    nop
    nop
    add $57
    ld b, b
    ld d, c
    ld e, e

jr_006_512B:
    ld d, c
    ld h, c
    ld d, c
    ld h, c
    ld d, c
    ld h, a
    ld d, c
    ld [hl], e
    ld d, c
    ld a, h
    ld d, c
    add d
    ld d, c
    sub c
    ld d, c
    sub a
    ld d, c
    sub a
    ld d, c
    ld l, l
    ld d, c
    ld h, b
    adc b
    ld [$51A9], sp
    dec b
    xor [hl]
    ld d, c
    dec b
    or e
    ld d, c
    dec b
    cp b
    ld d, c
    dec b
    cp l
    ld d, c
    dec b
    jp nz, $0151

    jp $0151


    call nz, $0A51
    ld b, b
    adc h
    ld bc, $527F
    ld a, [de]
    nop
    adc b
    ld bc, $51E3
    ld bc, $8800
    ld bc, $51EC
    ld bc, $8800
    ld bc, $51F5
    ld bc, $8C40
    ld [bc], a
    call c, $0451
    ldh [rHDMA1], a
    inc bc
    nop
    adc e
    ld bc, $520B
    inc b
    ld d, b
    adc e
    inc b
    call c, $0451
    ldh [rHDMA1], a
    inc bc
    ld a, [$0751]
    ld bc, $0152
    or b
    adc d
    ld bc, $5202
    add hl, bc
    or b
    adc d
    ld bc, $527F
    ld d, l
    ld b, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld a, c
    jr nz, jr_006_51C4

    jr nz, jr_006_51C6

    jr nz, jr_006_51C8

    jr nz, jr_006_51FE

    ld l, a
    ld l, [hl]
    ld a, c
    jr nz, jr_006_5202

    ld [hl], b
    ld h, l
    ld l, h
    ld l, h
    ld d, d
    ld l, c
    ld l, [hl]
    ld h, a
    ld [hl], e
    ld c, c
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], e
    ld b, a
    ld l, h
    ld a, c
    ld [hl], b
    ld l, b
    inc e
    ld [de], a

jr_006_51C4:
    jr nc, jr_006_51F7

jr_006_51C6:
    ld [hl-], a
    inc sp

jr_006_51C8:
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_006_5207

    ld de, $694C
    ld [hl], e
    ld [hl], h
    ld d, e
    ld h, c
    halt
    ld h, l
    jr nz, jr_006_51F9

    jr nz, jr_006_51FB

    jr nz, jr_006_5229

    halt
    ld l, h
    ld a, [hl-]
    ld b, l
    ld a, b
    ld [hl], b
    jr nz, jr_006_5255

    ld h, l
    ld l, h
    ld l, h
    ld b, d
    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_006_5262

    ld h, l
    ld l, l
    jr nz, jr_006_523E

    ld l, c
    ld [hl], e
    ld [hl], h
    jr nz, jr_006_526B

jr_006_51F7:
    ld h, l
    ld l, l

jr_006_51F9:
    jr nz, jr_006_523C

jr_006_51FB:
    ld h, d
    ld l, c
    ld l, h

jr_006_51FE:
    ld l, c
    ld [hl], h
    ld a, c
    dec de

jr_006_5202:
    ld b, c
    ld h, d
    ld l, c
    ld l, h
    ld l, c

jr_006_5207:
    ld [hl], h
    ld a, c
    jr nz, jr_006_522B

    ld b, d
    ld l, h
    ld h, c
    ld [hl], h
    ld d, a
    ld l, b
    ld l, c
    ld h, e
    ld l, b
    jr nz, jr_006_5288

    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_006_527F

    ld l, a
    jr nz, jr_006_5297

    ld l, a
    ld [hl], l
    ld [hl], a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_006_529A

    ld l, a
    jr nz, jr_006_528A

jr_006_5229:
    ld h, e
    ld [hl], h

jr_006_522B:
    jr nz, jr_006_529C

    ld l, [hl]
    ccf
    ld c, h
    halt
    ld l, h
    ld b, l
    ld e, b
    ld b, d
    ld [hl], l
    ld a, c
    ld d, e
    ld h, l
    ld l, h
    ld [de], a
    ld b, h

jr_006_523C:
    ld l, a
    ld l, [hl]

jr_006_523E:
    ld h, l
    ld a, b
    dec e
    ld c, c
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], e
    ld d, e
    ld [hl], b
    ld l, h
    ld d, d
    ld l, c
    ld h, e
    dec e
    ld b, h
    ld l, a
    ld l, [hl]
    ld h, l
    ld b, e
    ld l, b
    ld l, a
    ld l, a

jr_006_5255:
    ld [hl], e
    ld h, l
    jr nz, jr_006_52BA

    jr nz, jr_006_52AE

    ld l, a
    ld l, [hl]
    ld h, a
    ld b, c
    dec l
    ld d, e
    ld h, l

jr_006_5262:
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    ld [hl], e
    ld b, d
    dec l
    ld b, l
    ld a, b

jr_006_526B:
    ld l, c
    ld [hl], h
    ld [hl], e
    dec e
    ld d, h
    ld l, a
    ld l, [hl]
    ld a, c
    ld b, e
    ld l, a
    ld [hl], e
    ld [hl], h
    db $10
    ld de, $1D12
    ld c, h
    ld d, [hl]
    ld b, l
    ld e, b

jr_006_527F:
    ret


    ret


    ret


    add b
    add b
    add b
    add b
    add b
    add b

jr_006_5288:
    add b
    add b

jr_006_528A:
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b

jr_006_5297:
    add b
    add b
    add b

jr_006_529A:
    jr nc, jr_006_529C

jr_006_529C:
    ld bc, $3202
    jr nc, jr_006_52D1

    ld [hl-], a
    ld [bc], a
    ld bc, $3000
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b

jr_006_52AE:
    inc bc
    inc b
    dec b
    ld b, $07
    inc [hl]
    inc [hl]
    rlca
    ld b, $05
    inc b
    inc bc

jr_006_52BA:
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld [$0A09], sp
    dec bc
    dec [hl]
    scf
    scf
    dec [hl]
    dec bc
    ld a, [bc]
    add hl, bc
    ld [$8080], sp
    add b

jr_006_52D1:
    add b
    add b
    add b
    add b
    add b
    inc c
    dec c
    ld c, $0F
    jr c, jr_006_5316

    ld a, [hl-]
    jr c, jr_006_52EE

    ld c, $0D
    inc c
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    db $10
    ld de, $1312

jr_006_52EE:
    inc d
    dec d
    dec d
    inc d
    inc de
    ld [de], a
    ld de, $8010
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld d, $17
    jr jr_006_531B

    ld a, [de]
    dec de
    dec de
    ld a, [de]
    add hl, de
    jr jr_006_5320

    ld d, $80
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    inc e
    dec e
    ld e, $1F

jr_006_5316:
    jr nz, jr_006_5339

    ld hl, $2322

jr_006_531B:
    ld e, $1D
    inc e
    add b
    add b

jr_006_5320:
    add b
    add b
    add b
    add b
    add b
    add b
    jr nc, jr_006_5358

    inc h
    dec h
    ld h, $27
    daa
    jr z, jr_006_5358

    inc h
    jr nc, jr_006_5362

    add b
    add b
    add b
    add b
    add b
    add b
    add b

jr_006_5339:
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    dec sp
    inc a
    inc a
    dec sp
    dec a
    ld a, $3E
    dec a
    rlca
    ccf
    ccf
    rlca
    ld b, b
    ld b, c

jr_006_5358:
    ld b, d
    ld b, b
    ld b, e
    ld b, h
    ld b, l
    ld b, e
    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_006_5362:
    ld l, $2F
    cpl
    rrca
    rrca
    rrca
    rrca
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    rrca
    rrca

jr_006_537E:
    rrca
    rrca
    rrca
    cpl
    rrca
    cpl
    cpl
    cpl
    cpl
    cpl
    rrca
    rrca
    rrca
    rrca
    rrca
    cpl
    rrca
    cpl
    cpl
    cpl
    cpl
    cpl
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    cpl
    rrca
    rrca
    cpl
    cpl
    cpl
    cpl
    cpl
    rrca
    rrca
    rrca
    rrca
    cpl
    rrca
    rrca
    cpl
    cpl
    cpl
    rrca
    rrca
    cpl
    cpl
    rrca
    rrca
    cpl
    cpl
    rrca
    rrca
    cpl
    cpl
    rrca
    rrca
    rrca
    cpl
    rrca
    rrca
    rrca
    cpl
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    add h
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    add b
    add [hl]
    add a
    adc b
    adc c
    adc d
    add b
    add b
    add b
    add b
    rst $28
    ldh a, [$F1]
    add h
    add h
    or b
    or c
    or d
    or e
    or h
    add b
    dec l
    ld l, $2F
    jr nc, jr_006_537E

    add b
    add b
    add b
    add b
    ld a, [c]
    di
    db $F4
    add h
    add h
    or l
    or [hl]
    or a
    cp b
    cp c
    add b
    ld sp, $3332
    inc [hl]
    add b
    add b
    add b
    add b
    add b
    push af
    or $F7
    add h
    add h
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    cp a
    ret nz

    pop bc
    jp nz, $80C3

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    set 1, h

jr_006_5459:
    call $8080
    call nc, $D6D5
    add b
    add b
    db $DD
    sbc $DF
    add b
    add b
    and $E7
    add sp, -$7C
    add h
    adc $CF

jr_006_546D:
    ret nc

    add b
    add b
    rst $10
    ret c

    reti


    add b
    add b
    ldh [$E1], a
    ld [c], a
    add b
    add b
    jp hl


    ld [$84EB], a
    add h
    pop de
    jp nc, $80D3

    add b
    jp c, $DCDB

    add b

jr_006_5488:
    add b
    db $E3
    db $E4
    push hl
    add b
    add b
    db $EC
    db $ED
    xor $84
    add h
    add b
    add b

jr_006_5495:
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    sub $D7
    ret c

    reti


    add b
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    add b
    add b
    add b
    add h
    add h
    jp c, $DCDB

    db $DD
    add b
    dec l
    ld l, $2F
    jr nc, jr_006_5459

    add b
    add b
    ld sp, $3332
    inc [hl]
    add b
    add b
    add h
    add h
    sbc $DF
    ldh [$E1], a
    add b
    dec d
    ld d, $17
    jr jr_006_546D

    add b
    add b
    ld hl, $2322
    inc h
    add b
    add b
    add h
    add h
    ld [c], a
    db $E3
    db $E4
    push hl
    add b
    add hl, de
    ld a, [de]
    dec de
    inc e
    add b
    add b
    add b
    dec h
    ld h, $27
    jr z, jr_006_5488

    add b
    add h
    add h
    and $E7
    add sp, -$17
    add b
    dec e
    ld e, $1F
    jr nz, jr_006_5495

    add b
    add b
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    add b
    add b
    add h
    add h
    add b
    jp $FEFD


    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$8080], sp
    add b
    add b
    add h
    add h
    add b
    jp $0A09


    dec bc
    inc c
    dec c
    ld c, $0F
    db $10
    ld de, $1312
    inc d
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $8080

    add b
    add b
    add b
    sbc a
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $C4C3

    add h
    add h
    add b
    add b
    add b
    add b
    add b
    push bc
    add $C7
    ret z

    ret


    jp z, $CCCB

    call $CFCE
    ret nc

    pop de
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    jp nc, $D4D3

    push de
    sub $D7
    ret c

    reti


    jp c, $DCDB

    db $DD
    sbc $84
    add h
    add b
    add b
    add b
    add b
    add b
    rst $18
    ldh [$E1], a
    ld [c], a
    db $E3
    db $E4
    push hl
    and $E7
    add sp, -$17
    ld [$84EB], a
    add h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    ret z

    ret


    jp z, $CCCB

    call $80CE
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    rst $10
    ret c

    reti


    jp c, $DCDB

    db $DD
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    and $E7
    add sp, -$17
    ld [$ECEB], a
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add b
    add b
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $C4C3

    add b
    call nz, $80C5
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add $C7
    ret z

    ret


    jp z, $CCCB

    call $CFCE
    ret nc

    pop de
    jp nc, $C480

    push bc
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    call nc, $D6D5
    rst $10
    ret c

    reti


    jp c, $DCDB

    db $DD
    sbc $DF
    ldh [$80], a
    ldh [$E1], a
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld [c], a
    db $E3
    db $E4
    push hl
    and $E7
    add sp, -$17
    ld [$ECEB], a
    db $ED
    xor $80
    xor $EF
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ldh a, [$F1]
    ld a, [c]
    di
    db $F4
    push af
    or $F7
    ld hl, sp-$07
    ld a, [$FCFB]
    add b
    db $FC
    db $FD
    add b
    add b
    xor l
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    xor l
    add h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    ld a, d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    add b
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    ld a, d
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    add b
    add b
    add h

jr_006_5816:
    add h
    add b
    add b
    add b
    add b
    add b
    ld a, d
    push bc
    add $C7
    ret z

    ret


    jp z, $CCCB

    call $80CE
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    ld a, d
    jp nc, $D4D3

    push de
    sub $D7
    ret c

    reti


    jp c, $80DB

    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    ld a, d
    rst $18
    ldh [$E1], a
    ld [c], a
    db $E3
    db $E4
    push hl
    and $E7
    add sp, -$80
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add b
    ld a, a
    ld c, h
    add b
    add hl, de
    add b
    jr nc, jr_006_5816

    ld h, e
    add c
    ld b, a
    add e
    ld c, $87
    inc l

jr_006_589D:
    adc a
    nop
    rst $38
    add b
    nop
    nop
    nop
    ld l, $1F
    pop af
    rst $38
    jr c, @+$01

    ld [$04FF], sp
    rst $38
    ld bc, $02FE
    ld bc, $0100
    add b
    ld bc, $81C0
    ld h, b
    pop bc
    jr nc, jr_006_589D

    db $10
    pop af
    ld e, b
    adc a
    inc c
    sbc a
    ld e, $9F
    dec de
    sbc a
    ld de, $109F
    sbc a
    db $10
    sbc a
    add hl, de
    adc a
    ld [bc], a
    rst $38
    inc bc
    rst $38
    rrca
    db $FC
    dec [hl]
    ld a, [c]
    jp nz, $A1C1

    ret nz

    ret nc

    and b
    ld l, b
    sub b
    ld a, b
    pop af
    sbc b
    ld sp, hl
    add sp, $19
    ld hl, sp+$09
    ld hl, sp+$09
    ld a, d
    adc c
    or h
    ld d, c
    ld [$0D01], sp
    add a
    rlca
    add e
    ld [bc], a
    add c
    nop
    add b
    nop
    add b
    nop
    add b
    ld b, b
    add b
    add b
    ld a, a
    db $F4
    ld [$8478], sp
    cp h
    call nz, Call_006_78F8
    ld bc, $0200
    nop
    inc b
    nop
    nop
    rst $38
    ld [de], a
    ld bc, $0126
    ld c, h
    ld bc, $0198
    jr nc, jr_006_5919

    ld h, b

jr_006_5919:
    ld bc, $01C2
    ld bc, $8BFE
    ld [hl], a
    ld d, a
    adc [hl]
    inc bc
    add c
    cp l
    ld a, h
    ld a, e
    rst $20
    cp [hl]
    add hl, de
    rrca
    add h
    rlca
    add d
    db $FC

jr_006_592F:
    add e
    ld l, [hl]
    db $FC
    rst $18
    dec sp
    xor $9D
    rst $30
    ld c, h
    rst $38
    add $7B
    and $BF
    ld [hl], e
    ld bc, $0EFE
    ld bc, $0118
    or d
    add c
    db $E4
    add c
    ld c, b
    pop bc
    ldh a, [rSTAT]
    or b
    ld h, c
    inc bc
    add c
    add hl, bc
    add c
    ld bc, $1888
    adc b
    ld [$1898], sp
    sbc b
    dec e
    sub h
    rra
    sub h
    db $DB
    scf
    ld [hl], l
    sbc a
    ei

jr_006_5963:
    sbc a
    db $EC
    cp a
    db $D3
    ld a, h
    db $ED
    ld [hl], e
    db $DB
    ld h, h
    rst $10
    ld l, b
    ldh a, [$E1]
    jr nc, jr_006_5963

    ret c

    pop af
    jr nc, @-$05

    db $EC
    add hl, de
    ret z

    db $FD
    db $EC
    dec e
    db $F4
    dec c
    ld a, [de]
    sub a
    dec e
    adc e
    ld e, $8B
    inc a
    add a
    ld h, d
    add a
    ld c, e
    add c
    ld d, b
    add b
    add b
    ld a, a
    rst $10
    add sp, -$4C
    set 7, e
    add h
    cp $81
    cp e
    rst $00
    call nz, Call_006_7BFF
    ccf
    dec a
    adc $66
    db $FD
    push af
    ld c, $03
    cp $FF
    cp $07
    cp $FB
    cp $FE
    dec b
    rst $20
    jr jr_006_592F

    ld a, a
    ld b, b
    add b
    inc bc
    add c
    ld b, $83
    dec b
    add [hl]
    inc b
    add [hl]
    ld b, $87
    rlca
    add a
    nop
    rst $38
    nop
    nop
    cp $FF
    sbc e
    rlca
    ld a, $07
    ld a, [de]
    inc c
    call nc, $F438
    ld hl, sp+$01
    cp $02

jr_006_59D1:
    ld bc, $0180
    ld hl, sp-$03
    push af
    ld c, $3B
    ld b, $7F
    ld [bc], a
    cp e
    ld b, $02
    add a
    inc bc
    add e
    ld bc, $0381
    add c
    rlca
    add e
    adc a
    rlca
    cp h
    ld a, a
    ld b, b
    rst $38
    ld a, [de]
    db $FC
    rst $30
    rst $38
    ld [$07FF], sp
    rst $38
    db $E4
    rst $38
    rst $10
    ccf
    db $EB
    call c, $FF3F
    ld l, a
    ld e, $F3
    cp $0F
    cp $F5
    cp $06
    db $FD
    and $FD
    db $FC
    dec e
    db $F4
    db $ED
    add b
    rst $38
    add d
    db $FD
    push bc
    cp d
    cp $81
    cp a
    pop bc
    rst $38
    ld a, [hl]
    ld b, b
    add b
    add b
    ld a, a
    ld h, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    cp a
    ldh [$9F], a

jr_006_5A28:
    cp a

Call_006_5A29:
    ret nz

    rst $18
    ldh [rIE], a
    ld a, a
    inc e
    db $FD
    inc b
    db $FD
    inc b
    db $FD
    ld c, b
    cp l
    xor h
    ld e, c
    ret c

    ld sp, $E172
    pop hl
    sbc [hl]
    add b
    ld a, a
    ld e, c
    add b
    ld [hl-], a
    add b
    ld h, b
    add b
    ld b, a
    add b
    jr c, jr_006_59D1

    rst $00
    jr c, jr_006_5A28

    ld h, b
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld e, $FF
    rst $38
    nop
    rst $38
    nop
    ld bc, $02FE
    ld bc, $0100
    nop
    ld bc, $0100
    ldh a, [rSB]
    inc c
    pop af
    rst $30
    inc c
    add l
    ret nz

    db $E3
    ret nz

    xor l
    di
    sbc d
    rst $38
    add l
    cp $87
    db $FD
    ld b, a
    db $FD
    or a
    ld a, l
    rst $38
    nop
    rst $38
    nop
    di
    db $FC
    db $FC
    rrca
    rst $18
    rst $20
    db $FD
    ld a, $23
    ld a, $3D
    ld a, $FB
    ld b, $FF
    inc bc
    rst $30
    rrca
    ei
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    ld b, a
    cp $5B
    db $FC
    dec b
    adc [hl]
    ld [bc], a
    add a
    ld bc, $0083
    add b
    nop
    add b
    nop
    add b
    ld b, b
    add b
    add b
    ld a, a
    db $DB
    db $E4
    rst $38
    ld c, $FB
    pop af
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    rst $38
    ld h, b
    pop bc
    ld c, b
    pop bc
    ld d, d
    pop bc
    and [hl]
    add c
    ld c, h
    ld bc, $0198
    ld [hl-], a
    ld bc, $FE01
    add b
    ld a, a
    ld b, b
    add b
    rra
    adc [hl]
    inc sp
    sbc a
    ld [hl], c
    cp a
    pop hl
    ccf
    ret z

    ld a, a
    sub h
    rst $28
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    add c
    jp Jump_006_4281


    jp $FE01


    ld [bc], a
    ld bc, $71F8
    call z, $8EF9
    db $FD
    add a
    db $FC
    inc de
    cp $29
    rst $30
    cp d
    rst $08
    or l
    db $DB
    cp [hl]
    db $D3
    or [hl]
    db $DB
    ld e, d
    rst $38
    or [hl]
    ld l, a
    ld h, [hl]
    add e
    inc bc
    add c
    inc a
    rst $20
    inc a
    rst $38
    ld e, d
    rst $38
    cp l
    rst $20
    cp l
    rst $20
    db $DB
    cp l
    ld a, [hl]
    jp $FF3C


    ld e, l
    di
    xor l
    db $DB
    ld a, l
    bit 5, l
    db $DB
    ld e, d
    rst $38
    ld l, l
    or $66
    pop bc
    ret nz

    add c
    ld h, c
    or b
    ldh a, [$59]
    jp c, $D44B

    ld d, [hl]
    ret c

    db $10
    ld e, b
    adc b
    ld c, b
    add b
    add b
    ld a, a
    jp $3CFF


    rst $38
    ld a, [hl]
    nop
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
    add [hl]
    dec c
    rrca
    sbc d
    ld e, e
    jp nc, Jump_006_6A2B

    dec de
    ld [$111A], sp
    ld [de], a
    ld bc, $FE01
    nop
    nop
    jr c, @+$3E

    ld b, b
    ld b, b
    inc sp
    inc sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    add hl, bc
    nop
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    xor e
    xor e
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    dec de
    xor c
    xor c
    cp c
    cp c
    nop
    adc c
    nop
    cp c
    jr nz, jr_006_5BB0

    jr nz, jr_006_5BB2

    jr nz, jr_006_5BB4

    or b
    or b
    jr z, jr_006_5BC0

    jr z, jr_006_5BC2

    nop
    jr z, jr_006_5B9D

jr_006_5B9D:
    jr z, jr_006_5B9F

jr_006_5B9F:
    nop
    ld [hl], b
    ld [hl], b
    ld c, b
    ld c, b
    ld c, e
    ld c, e
    ld c, d
    ld c, d
    ld c, e
    ld c, e
    nop
    ld c, d
    nop
    ld [hl], e
    nop
    nop

jr_006_5BB0:
    jr jr_006_5BCA

jr_006_5BB2:
    db $10
    db $10

jr_006_5BB4:
    dec sp
    dec sp
    sub d
    sub d
    sub e
    sub e
    nop
    ld [de], a
    nop
    sub e
    nop
    nop

jr_006_5BC0:
    nop
    nop

jr_006_5BC2:
    nop
    nop
    ld sp, $AA31
    xor d
    xor e
    xor e

jr_006_5BCA:
    nop
    jr z, jr_006_5BCD

jr_006_5BCD:
    xor e
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    or b
    jr z, jr_006_5C00

    cp b
    cp b
    nop
    and b
    nop
    jr c, jr_006_5BDF

jr_006_5BDF:
    nop
    jr c, jr_006_5C1E

    ld b, b
    ld b, b
    inc sp
    inc sp
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    nop
    ld a, [bc]
    nop
    ld [hl], d
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    xor d
    xor d
    cp e
    cp e
    nop
    ld [hl+], a
    nop
    dec sp
    nop
    nop

jr_006_5C00:
    ld [$0808], sp
    ld [$0808], sp
    sbc b
    sbc b
    xor b
    xor b
    nop
    jr z, jr_006_5C0D

jr_006_5C0D:
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_5C1E:
    nop
    nop
    add hl, sp
    dec a
    ld b, c
    ld b, c
    ld sp, $0931
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    add hl, bc
    nop
    ld [hl], c
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    ld a, [hl+]
    ld c, d
    ld c, d
    adc d
    adc d
    nop
    ld c, d
    nop
    ld a, [hl+]
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    add b
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
    ld [hl], b
    ld [hl], b
    ld c, b
    ld c, b
    ld c, e
    ld c, e
    ld [hl], d
    ld [hl], d
    ld d, e
    ld d, e
    nop
    ld c, d
    nop
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    ld a, [de]
    and d
    and d
    cp d
    cp d
    nop
    ld a, [bc]
    nop
    or d
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    ld l, [hl]
    add h
    add h
    db $E4
    db $E4
    nop
    inc h
    nop
    call nz, RST_00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ld b, b
    ld b, b
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    nop
    ld b, d
    nop
    ld a, c
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    sbc d
    sbc d
    and d
    and d
    and e
    and e
    nop
    and d
    nop
    sbc d
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    add b
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
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, e
    ld b, e
    ld b, d
    ld b, d
    ld b, e
    ld b, e
    nop
    ld b, d
    nop
    ld a, e
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    dec hl
    xor d
    xor d
    xor e
    xor e
    nop
    ld a, [hl+]
    nop
    sbc e
    nop
    nop
    jr nz, jr_006_5D22

    jr nz, jr_006_5D24

    jr nz, jr_006_5D26

    and b
    and b
    and b
    and b
    nop
    jr nz, jr_006_5D0D

jr_006_5D0D:
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b

jr_006_5D22:
    ld b, b
    ld b, b

jr_006_5D24:
    ld b, d
    ld b, d

jr_006_5D26:
    ld [hl], c
    ld [hl], c
    ld b, c
    ld b, c
    nop
    ld b, d
    nop
    ld a, d
    nop
    nop
    nop
    nop
    nop
    nop
    or d
    or d
    dec hl
    dec hl
    ld a, [hl-]
    ld a, [hl-]
    nop
    and d
    nop
    and d
    nop
    nop
    nop
    nop
    nop
    nop
    or c
    or c
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    add hl, hl
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    or b
    jr z, jr_006_5D80

    jr c, jr_006_5D92

    nop
    jr nz, jr_006_5D5D

jr_006_5D5D:
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a

jr_006_5D6B:
    ld bc, $0305
    nop
    nop
    nop
    nop
    ld bc, $0B00
    inc b
    dec l
    ld e, $BE
    ld a, a
    pop af
    rst $38
    rst $00
    ld hl, sp+$0C
    inc bc

jr_006_5D80:
    ld d, [hl]
    add hl, sp
    ld a, [$1AFD]
    db $FD
    ld a, [bc]
    db $FD
    sub h
    ld a, e
    sub l
    ld a, e
    cp $03
    nop
    nop
    nop
    nop

jr_006_5D92:
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    ld [bc], a
    rlca
    inc de
    rrca
    inc l
    rra
    ld d, e
    inc a
    xor a
    ld [hl], b
    ld e, [hl]
    pop hl
    cp h
    jp $8679


    di
    inc c
    inc a
    ret nz

    rst $38
    nop
    rst $08
    jr nc, jr_006_5DE7

    pop bc
    ld l, c
    add [hl]
    db $D3
    inc c
    rst $00
    jr jr_006_5D6B

    add hl, de
    rra
    inc b
    db $E3
    ld bc, $00F9
    inc e
    ldh [$2E], a
    db $10
    sub a
    ld [$885F], sp
    cp a
    ld [$FF02], sp
    dec e
    cp $2F
    ldh a, [$F0]
    ld c, a
    nop
    ld a, a
    ld hl, $1E7F
    ld a, a
    ld hl, $0D7E
    ld b, $07
    inc c

jr_006_5DE2:
    dec de
    inc c
    ld c, $19
    inc [hl]

jr_006_5DE7:
    dec de
    dec de
    scf
    inc a
    inc sp
    daa
    jr c, jr_006_5DE2

    inc c
    rst $20
    jr @-$17

    jr jr_006_5E2C

    ret c

    rst $10
    ld hl, sp+$37
    ret c

    rst $20
    jr jr_006_5E28

    call c, $19A6
    xor [hl]
    add hl, de
    xor l
    jr @-$34

    inc e
    push de
    ld c, $EB
    rlca
    push af
    inc bc
    rst $38
    nop
    rst $38
    jr jr_006_5E8F

    ldh a, [rNR33]
    ldh [$F2], a
    ld bc, $0708
    inc bc
    rst $38
    rst $38
    rst $38
    add e
    ld a, h
    inc l
    inc sp
    dec hl
    scf
    inc l
    inc sp
    cpl
    jr nc, jr_006_5E53

    inc sp

jr_006_5E28:
    inc l
    scf
    cpl
    scf

jr_006_5E2C:
    dec sp
    scf
    di
    call z, $E61D
    ld a, [$0D07]
    di
    ld a, [de]
    db $FD
    ld h, a
    ld hl, sp-$64
    db $E3
    ld h, b
    sbc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    xor a
    ret nz

    ld d, e
    ldh [$B4], a
    ld a, b
    ld l, d
    sbc h
    db $FD
    nop
    db $FC
    nop
    db $FC

jr_006_5E53:
    nop
    cp $00
    cp $00
    db $FD
    nop
    cp $00
    dec a
    nop
    rla

jr_006_5E5F:
    jr c, jr_006_5E7F

    add hl, sp
    dec hl
    dec e
    ld a, $0D
    dec h
    ld e, $36
    rrca
    dec hl
    rla
    dec [hl]
    dec bc
    add c
    ld a, a
    ld [bc], a
    rst $38
    dec c
    cp $F6
    ld sp, hl
    jr jr_006_5E5F

    ldh a, [rIF]
    ld l, c
    sbc a
    xor a
    rst $18
    halt

jr_006_5E7F:
    adc a
    reti


    daa
    rrca
    ldh a, [rNR22]
    ld hl, sp+$28
    rst $30
    ld d, b
    rst $28
    and b
    rst $18
    ld b, b
    cp a
    add b

jr_006_5E8F:
    nop
    sub b
    ldh [$60], a
    rst $38
    sbc a
    ld a, a
    ldh [$1F], a
    ld a, a
    add b
    ld a, h
    add e
    ldh [$1F], a
    ld bc, $0000
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    and c
    ld e, [hl]
    ld b, b
    cp a
    push bc
    ld a, [hl-]
    ld l, e
    inc [hl]
    sub $E9
    dec l
    jp nc, $946A

    db $EC
    db $10
    inc l
    ret nc

    ld b, [hl]
    cp b
    ld a, [hl+]
    dec d
    dec [hl]
    ld a, [bc]
    cpl
    db $10
    ld [hl], $08
    ccf
    nop
    rla
    ld [$0C12], sp
    dec bc
    inc b
    sub $EF
    ld l, c
    or $B7
    ld a, b
    ret


    ld a, $74
    rrca
    sbc e
    rlca
    adc $01
    ld h, e
    nop
    add c
    ld a, a
    ld [bc], a
    rst $38
    add a
    cp $FD
    cp $7B
    db $FC
    ld a, $C1
    sbc a
    ldh [$67], a
    ld hl, sp-$40
    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    ld bc, $02FE
    db $FD
    dec b
    ld a, [$FA05]
    dec b
    ld a, [$FB04]
    ld b, $F9
    or e
    ld c, h
    ld e, c
    and [hl]
    and h
    ld b, e
    ld b, d
    add c
    add b
    ld bc, $0102
    add h
    inc bc
    ret


    add [hl]
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or c
    nop
    ret c

    nop
    ld c, h
    add b
    and e
    ld b, b
    jr z, jr_006_5F48

    inc e
    nop
    dec b
    ld [bc], a
    inc bc
    nop
    pop de
    ld a, $AC
    rra
    dec hl
    rlca
    ld [de], a
    ld bc, $00CC

jr_006_5F48:
    inc sp
    nop
    ld e, $00
    rst $00
    nop
    ldh [$1F], a
    ld a, b
    add a
    ld e, $E1
    rst $20
    ld hl, sp-$23
    ld a, $1B
    rlca
    and $01
    rst $38
    nop
    rlca
    ld hl, sp+$03
    db $FC
    ld bc, $80FE
    ld a, a
    ld hl, sp+$07
    cp a
    ret nz

    ld [hl], a
    ld hl, sp-$39
    ccf
    ld [hl], e
    call z, Call_006_7986
    call $DA32
    inc [hl]
    call z, $D830
    jr nc, @-$12

    jr jr_006_5FB3

    call z, $1FE0
    ret nz

    ccf
    add c
    ld a, [hl]
    ld a, [bc]
    push af
    inc b
    ei
    cp $01
    jp $353C


    adc $43
    cp h
    inc [hl]
    set 4, d
    dec e
    xor a
    ld de, $844B
    ld b, d
    add b
    ld b, e
    add b
    add c
    ld [bc], a
    pop af
    nop
    inc a
    nop
    rrca
    nop
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
    ccf
    nop
    adc a

jr_006_5FB3:
    nop
    pop hl
    nop
    ld a, h
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $08
    nop
    pop af
    nop
    rra
    nop
    pop bc
    nop
    db $FC
    nop
    rlca
    nop
    sbc e
    ld h, [hl]
    db $FD
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc b
    nop
    rst $38

jr_006_5FDD:
    nop
    ei
    ld b, $F9
    ld b, $FB
    inc b
    db $F4
    ld [$08F0], sp
    ldh [rNR10], a
    ret c

    jr nz, jr_006_5FDD

    nop
    add a
    nop
    ld a, [bc]
    inc b
    sub a
    ld [$112E], sp
    ld a, b
    nop
    jr nz, jr_006_5FFA

jr_006_5FFA:
    nop
    nop
    nop
    nop
    push bc
    ld a, [hl-]
    ld l, d
    dec [hl]
    push de
    ld [$D42B], a
    ld l, b
    sub a
    jp hl


    db $10
    inc l
    ret nc

    ld b, [hl]
    cp b
    and e
    ld e, h
    sub $AC
    db $EB
    rst $10
    or h
    db $EB
    or $E9
    scf
    ret z

    inc [hl]
    bit 4, d
    sbc l
    or e
    ld c, h
    ld e, c
    or [hl]
    cp h
    ld e, e
    halt
    sbc l
    ld e, $FD
    ld h, $19
    add h
    dec de
    ret


    sub [hl]
    call $9632
    ld l, l
    cpl
    sub $5D
    and a
    ld b, a

jr_006_6037:
    cp a
    ld c, c
    add [hl]
    ld hl, $93C6
    ld h, l
    ld [hl], e
    call z, Call_006_7986
    call $DB32
    inc [hl]
    ret z

    scf
    reti


    jr nc, jr_006_6037

    jr jr_006_6083

    call z, $33CE
    pop hl
    sbc [hl]
    di
    call z, $ECBB
    di
    db $EC
    dec sp
    call z, $D837
    ld l, h
    or e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_6078:
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_607E:
    and b
    ld b, b
    ld d, b
    and b
    xor b

jr_006_6083:
    ret nc

    ld d, h
    add sp, $2C
    ldh a, [$DA]
    db $E4
    ld h, l
    sbc d

jr_006_608C:
    add e
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld h, b
    add b
    or b
    ld b, b
    ld e, b
    and b
    jr z, jr_006_6078

    ldh a, [$E8]
    jr jr_006_608C

    ldh a, [$08]
    ld l, $71
    and b
    ld a, a
    ld h, d
    db $FC
    ld b, h
    ld hl, sp-$38
    ldh a, [$94]
    ldh [$28], a
    ret nz

    jr nc, jr_006_607E

    ld [$F0F0], sp
    ld [$0038], sp
    jr jr_006_60C6

jr_006_60C6:
    jr jr_006_60C8

jr_006_60C8:
    jr c, jr_006_60CA

jr_006_60CA:
    ld a, b
    nop
    ldh a, [rP1]
    db $10
    rrca
    rrca
    db $10
    inc e
    nop
    jr jr_006_60D6

jr_006_60D6:
    jr jr_006_60D8

jr_006_60D8:
    inc e
    nop
    ld e, $00
    rrca
    nop
    add hl, hl
    ret nz

    scf
    ret nz

    xor d
    ld b, b
    sub [hl]
    ld h, b
    ld c, d
    jr nc, jr_006_610B

    inc e
    sbc b
    rlca
    ld b, [hl]
    ld bc, $0080
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0280
    pop af
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
    add b

jr_006_610B:
    ld bc, $8F40
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    ld a, a
    inc bc
    db $FC
    rst $28
    ld [hl], b
    scf
    ld hl, sp-$25
    db $EC
    dec l
    or $16
    ei
    rst $28
    pop af
    inc sp
    call $3EC1
    add hl, de
    and $35
    jp z, $CC33

    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_006_61BA

    sub b
    or a
    ret z

    reti


    ld h, [hl]
    ld l, h
    or e
    or [hl]
    ld e, c
    ld e, [hl]
    xor c
    ld l, $D9
    cp $E9
    rla
    add sp, -$10
    nop
    ld l, $71
    and b
    ld a, a
    ld h, d
    db $FD
    ld b, a
    ld a, [$F4CE]
    sub d
    db $E4
    ld l, $C4
    ld [hl], $C4
    ld b, a
    add b
    sbc h

jr_006_6171:
    inc bc
    ccf
    ld bc, $0079
    ld e, b
    jr nz, jr_006_6171

    nop
    cp b
    ld b, b
    or h
    ld b, b
    ld [c], a
    ld bc, $00B9
    inc a
    add b
    xor $30
    ld a, [c]
    ld a, b
    cp e
    ld a, b
    ld e, c
    jr nc, jr_006_61BE

    nop
    ld l, $C4
    ld [hl], $C4
    xor d
    ld b, [hl]
    sub a
    ld h, d
    ld c, e
    ld sp, $1C23
    sbc c
    ld b, $46
    ld bc, $6298
    call nc, Call_006_5A29
    inc [hl]
    ld l, c
    ld e, $B0
    rrca
    call z, Call_006_7183
    ldh [$8E], a
    ld a, l
    add c
    nop
    ld b, e
    nop
    xor [hl]
    nop
    ld e, [hl]
    nop
    ld e, l
    and b
    or e
    ld b, c

jr_006_61BA:
    adc [hl]
    rlca
    ld [hl], c
    cp [hl]

jr_006_61BE:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_006_6A2B:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_006_7183:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_006_78F8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_006_7986:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_006_7BFF:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
