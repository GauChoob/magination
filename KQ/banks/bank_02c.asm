; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02c", ROMX[$4000], BANK[$2c]

    ld e, $0E
    ld bc, $1413
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
    add hl, bc
    ld c, h
    jr jr_02C_4042

    cp c
    dec de
    inc e
    dec e
    rra
    ld l, l
    adc b
    nop
    dec bc
    ld c, h
    jr jr_02C_404D

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
    add hl, bc
    ld e, h
    jr z, jr_02C_406C

jr_02C_4042:
    ld [hl], h
    dec hl
    inc l
    dec l
    cpl
    ld c, l
    add l
    nop
    ld c, $76
    ld [hl], a

jr_02C_404D:
    ld a, b
    ld e, h
    jr z, jr_02C_407A

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
    ld [bc], a
    ld a, a
    ld e, l
    add l
    nop
    ld c, $86
    add a
    adc b
    ld c, h
    ld a, [hl]

jr_02C_406C:
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
    ld a, h
    ld l, [hl]

jr_02C_407A:
    ld d, $84
    ld [hl], h
    ld [bc], a
    ld c, e
    ld e, e
    add l
    nop
    dec b
    sub [hl]

Call_02C_4084:
    sub a
    sbc b
    ld e, h
    ld l, [hl]
    add e
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
    ld bc, $864D
    nop
    dec b
    and [hl]
    and a
    nop
    ld l, h
    ld l, [hl]
    add d
    ld [hl], h
    ld b, $55
    scf
    ld l, a
    ld l, l
    nop
    cp d
    add h
    nop
    ld [bc], a
    ld e, b
    ld e, c
    add e
    ld [hl], h
    ld [bc], a
    ld c, e
    ld e, e
    adc c
    nop
    inc bc
    ld e, b
    ld c, b
    ld c, d
    add e
    ld [hl], h
    inc b
    ld e, d
    ld e, e
    ret


    jp z, $0086

    inc bc
    add hl, sp
    ld a, [hl-]
    dec sp
    add h
    nop
    ld bc, $8799
    nop
    ld [bc], a
    ld e, b
    ld e, c
    add d
    ld [hl], h
    ld [bc], a
    ld e, d
    ld e, e
    adc [hl]
    nop
    ld b, $08
    ld a, [bc]
    xor c
    dec bc
    dec c
    rrca
    add l
    nop
    add hl, bc
    ld e, b
    add hl, sp
    ld a, [hl-]
    ld e, e
    ld [$0D0B], sp
    add hl, bc
    ld a, [bc]
    adc c
    nop
    ld [$186C], sp
    ld a, [de]
    cp c
    dec de
    dec e
    rra
    ld c, l
    add a
    nop
    ld b, $4C
    jr jr_02C_4118

    dec e
    add hl, de
    ld a, [de]
    adc c
    nop
    ld [$285C], sp
    ld a, [hl+]
    ld [hl], h
    dec hl
    dec l
    cpl
    ld e, l
    add a
    nop
    ld b, $5C
    jr z, jr_02C_413C

    dec l
    ld l, $2A
    adc c
    nop
    ld [bc], a
    ld a, h

jr_02C_4118:
    ld a, [hl]
    add h
    ld [hl], h
    ld [bc], a
    ld a, a
    ld l, l
    add h
    nop
    dec b
    ld a, c
    ld a, d
    ld a, e
    ld c, h
    ld a, [hl]
    add h
    ld [hl], h
    adc c
    nop
    ld [bc], a
    ld e, b
    ld c, b
    add h
    ld [hl], h
    ld [bc], a
    ld l, a
    ld a, l
    add h
    nop
    rlca
    adc c
    adc d
    adc e
    ld e, h
    ld l, [hl]
    ld [hl], h
    ld b, h

jr_02C_413C:
    add d
    ld [hl], h
    inc bc
    halt
    ld [hl], a
    ld a, b
    add a
    nop
    ld [bc], a
    ld e, b
    ld e, c
    add e
    ld [hl], h
    ld [bc], a

Jump_02C_414A:
    ld c, e
    ld e, e
    add l
    nop
    inc b
    sbc d
    sbc e
    ld l, h
    ld l, [hl]
    add d
    ld [hl], h
    dec b
    ld d, [hl]
    ld [hl], h
    add [hl]
    add a
    adc b
    adc b
    nop
    dec b

jr_02C_415E:
    ld e, b
    add hl, sp
    ld a, [hl-]
    dec sp
    ld e, e
    add [hl]
    nop
    dec b
    xor d
    nop
    ld a, h
    ld l, [hl]
    ld d, a
    add e
    ld [hl], h
    inc bc
    sub [hl]
    sub a
    sbc b
    add [hl]
    nop
    ld bc, $8C99
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
    ld [$0A09], sp
    dec bc
    inc c
    dec c
    xor c
    ld c, $0F
    adc b
    nop
    inc bc
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
    jr jr_02C_41B7

    ld a, [de]
    dec de
    inc e
    dec e
    cp c
    ld e, $1F
    rrca
    add l
    nop
    ld b, $08
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

jr_02C_41B7:
    add d
    ld a, [de]
    dec bc
    jr z, jr_02C_41E5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld c, d
    ld l, $2F
    rra
    rrca
    add e
    nop
    rlca
    ld l, h
    jr jr_02C_41E8

    cp c
    dec e
    ld a, [de]
    rra
    add [hl]
    nop
    inc b
    jr z, jr_02C_41FE

    ld a, [hl+]
    jr c, jr_02C_415E

    ld c, d
    inc b
    ccf
    cpl
    rra
    rrca
    add d
    nop
    ld [$285C], sp
    dec l
    ld [hl], h
    dec l

jr_02C_41E5:
    ld a, [hl+]
    cpl
    ld c, l

jr_02C_41E8:
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
    ld a, [hl]
    add h
    ld [hl], h
    rlca
    ld a, a
    ld e, l

jr_02C_41FE:
    nop
    ld a, c
    ld a, d
    ld a, e
    nop
    adc d
    ld c, d
    add hl, bc
    ld b, [hl]
    ld c, d
    ld c, d
    ccf
    cpl
    ld e, l
    nop
    ld e, b
    ld c, b
    add h
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

Call_02C_4243:
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
    ld e, $0E
    ld bc, $1413
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
    inc b
    ld [$0C0D], sp
    rrca
    adc c
    nop
    ld [$1C18], sp
    dec e
    ld e, $1D
    ld e, $1F
    rrca
    add a
    nop
    ld b, $08
    ld c, l
    jr jr_02C_42B9

    inc e
    rra
    adc b
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
    ld [$1875], sp
    ld e, l
    jr z, jr_02C_42E2

    inc l
    cpl
    ld e, a
    add l

jr_02C_42B9:
    nop
    ld c, $08
    ld c, l
    jr @+$3A

    inc a
    dec a
    ld a, $3D
    ld a, $3F
    cpl
    inc e
    dec e
    ld e, $83
    nop
    ld [$2875], sp
    ld l, l
    jr c, jr_02C_430E

    inc a
    ccf
    ld l, a
    add l
    nop
    inc b
    jr jr_02C_4336

    jr z, jr_02C_4346

    add e
    ld bc, $9C07
    ld bc, $3F4C

jr_02C_42E2:
    inc l
    dec l
    ld l, $83
    nop
    ld [$3854], sp
    ld a, $4B
    and b
    and d
    ld l, h
    ld a, a
    add h
    nop
    dec b
    ld d, h
    jr z, jr_02C_4363

    jr c, jr_02C_4373

    add d
    ld bc, $9D08
    xor h
    add l
    ld bc, $3C4C
    dec a
    ld a, $83
    nop
    ld [$6B64], sp
    and b
    and c
    and h
    or d
    ld e, h
    adc a

jr_02C_430E:
    add h
    nop
    inc b
    ld h, h
    jr c, jr_02C_4352

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
    inc bc
    ld [hl], h
    ld e, e
    ret nz

    add d
    pop bc
    inc bc
    jp nz, $9E9D

    add h
    nop
    ld [$6B74], sp
    ld bc, $A1A0
    and d

jr_02C_4336:
    ld e, h
    ld e, a
    add d
    nop
    dec b
    and [hl]
    xor b
    xor d
    xor e
    xor h
    add e
    nop
    rlca

Call_02C_4343:
Jump_02C_4343:
    add h
    add l
    sub a

jr_02C_4346:
    sbc b
    sbc d
    sbc l
    xor l

Jump_02C_434A:
    add l
    nop
    ld [$2784], sp
    ld bc, $B1B0

jr_02C_4352:
    or d
    ld e, h
    ld l, a
    adc e
    nop
    dec b
    and [hl]
    and a
    xor b
    xor c
    sbc [hl]
    add [hl]
    nop
    ld [$9695], sp
    sbc d

jr_02C_4363:
    ret nz

    pop bc
    jp nz, $8F8E

    adc a
    nop
    ld bc, $87AE
    nop
    ld b, $A6
    xor d
    xor e
    xor h

jr_02C_4373:
    xor b
    sbc [hl]
    xor l
    nop
    ld [bc], a
    ld [$890F], sp
    nop
    inc bc
    ld [$0F0D], sp
    adc a
    nop

Jump_02C_4382:
    dec b
    ld [$1F18], sp
    inc c
    rrca
    add [hl]
    nop
    add hl, bc
    ld d, h
    jr jr_02C_43AB

    rra
    inc c
    dec c
    ld c, $4D
    rrca
    adc c
    nop
    rlca
    ld [$2818], sp
    cpl
    inc e
    rra
    ld e, a
    add l
    nop
    ld a, [bc]
    ld h, h
    jr z, jr_02C_43D1

    cpl
    inc e
    dec e
    ld e, $5D
    rra
    ld e, a

jr_02C_43AB:
    add [hl]
    nop
    add hl, bc
    ld [$184D], sp
    jr z, jr_02C_43EB

    ccf
    inc l
    cpl
    ld l, a
    add l
    nop
    ld a, [bc]
    ld [hl], h
    jr c, jr_02C_43FA

    ccf
    inc l
    dec l
    ld l, $6D
    cpl
    ld l, a
    add l
    nop
    ld a, [bc]
    ld d, h
    jr jr_02C_4427

    jr z, jr_02C_4404

    ld c, e
    ld c, h
    inc a
    ccf
    ld a, a

jr_02C_43D1:
    add l
    nop
    ld b, $84
    ld c, e
    ld bc, $3C4F
    dec a
    add d
    ld a, $02
    ccf
    ld a, a
    add l
    nop
    dec b
    ld h, h
    jr z, jr_02C_4452

    jr c, jr_02C_4432

    add e
    ld bc, $6C02

jr_02C_43EB:
    adc a
    add l
    nop
    ld [bc], a
    sub l
    add l
    add [hl]
    ld bc, $4F02
    adc a
    add l
    nop
    inc b
    ld [hl], h

jr_02C_43FA:
    jr c, jr_02C_443A

    ld c, e
    add h
    ld bc, $9D01
    add a
    nop
    add hl, bc

jr_02C_4404:
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
    add d
    ld bc, $9705
    sbc b
    sbc c
    adc [hl]
    xor l
    adc b
    nop
    rlca
    and [hl]
    xor e
    xor h
    xor e
    xor h
    xor e
    xor l
    add [hl]
    nop
    rlca

jr_02C_4427:
    and [hl]
    sub [hl]
    sbc b
    adc [hl]
    and a
    xor b
    xor c
    sbc b
    nop
    inc bc
    and [hl]

jr_02C_4432:
    xor b
    sbc [hl]
    add e
    nop
    dec b
    ld [$0D0C], sp

jr_02C_443A:
    ld c, l
    rrca
    add a
    nop
    dec b
    ld [$0C0D], sp
    add hl, bc
    rrca
    adc h
    nop
    ld [$1854], sp
    inc e
    dec e
    ld e, l
    rra
    inc c
    rra
    add h
    nop
    rlca

jr_02C_4452:
    ld d, h
    jr jr_02C_4472

    inc e
    add hl, de
    rra
    ld e, a
    adc e
    nop
    add hl, bc
    ld h, h
    jr z, jr_02C_448B

    dec l
    ld l, l
    cpl
    inc e
    rra
    ld e, a
    add e
    nop
    rlca
    ld h, h
    jr z, jr_02C_4498

    inc l
    add hl, hl
    cpl
    ld l, a
    adc e
    nop
    add hl, bc

jr_02C_4472:
    ld [hl], h
    jr c, jr_02C_44B1

    dec a
    add hl, sp
    ccf
    inc l
    cpl
    ld l, a
    add e
    nop
    rlca
    ld [hl], h
    jr c, jr_02C_44BE

    inc a
    add hl, sp
    ccf
    ld a, a
    adc e
    nop
    add hl, bc
    add h
    ld l, e
    and b

jr_02C_448B:
    and c
    and d
    ld c, h
    inc a
    ccf
    ld a, a
    add e
    nop
    rlca
    add h
    ld l, e
    and b
    and c

jr_02C_4498:
    and d
    ld l, h
    adc a
    adc e
    nop
    dec b
    sub l
    sub [hl]
    ret nz

    pop bc
    jp nz, $0182

    ld [bc], a
    ld l, h
    adc a
    add h
    nop
    ld b, $96
    or b
    or c
    or d
    adc [hl]
    sbc [hl]

jr_02C_44B1:
    adc h
    nop
    ld [$8595], sp
    sbc d
    sbc e
    sbc h
    sbc e
    adc [hl]
    sbc [hl]
    add h
    nop

jr_02C_44BE:
    dec b

jr_02C_44BF:
    ld d, h
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
    ld h, h
    ld e, e
    ld bc, $6F5C
    sbc c
    nop
    dec b

jr_02C_44D8:
    ld [hl], h
    ld e, e
    ld bc, $7F5C
    adc e
    nop
    nop
    ld b, b
    ld b, b
    ld [bc], a
    dec [hl]
    ld [hl], $00
    db $10
    pop bc
    ld b, $38
    inc bc
    ld a, l
    ld a, [hl]
    ld a, a
    add a
    ld a, e
    inc b

jr_02C_44F1:
    xor h
    ld a, l
    ld a, [hl]
    ld a, a
    adc c
    ld a, e
    inc bc
    ld a, l
    ld a, [hl]
    ld a, a
    and [hl]
    jr c, jr_02C_4501

    adc l
    rst $38
    adc a

jr_02C_4501:
    add a
    ld a, e
    inc b
    cp h
    adc l
    adc d
    adc a
    adc c
    ld a, e

jr_02C_450A:
    inc bc
    adc l
    adc [hl]
    adc a
    and [hl]
    jr c, jr_02C_4515

    sbc l
    sbc [hl]
    sbc a
    ld a, e

jr_02C_4515:
    add [hl]
    ld l, d
    dec b
    call z, $9E9D
    sbc a
    ld a, e
    add a
    ld l, d
    inc b
    ld a, e
    sbc l
    sbc [hl]

jr_02C_4523:
    sbc a
    and [hl]
    jr c, jr_02C_452B

    xor l
    xor [hl]
    xor a
    dec c

jr_02C_452B:
    add [hl]
    ld c, $05
    rrca
    xor l
    xor [hl]
    xor a
    dec c
    add a
    ld c, $04
    rrca
    xor l
    xor [hl]
    xor a
    and [hl]
    jr c, jr_02C_44BF

    ld a, e
    dec c
    add hl, sp
    dec e
    ld b, a
    ld c, b
    ld b, a
    ld c, b
    ld b, a
    ld c, b
    rra
    ld a, [hl+]
    ld a, e
    add hl, sp
    dec e
    add a
    ld e, $02
    rra
    ld a, [hl+]
    add d
    ld a, e
    and [hl]
    jr c, jr_02C_44D8

    ld a, e
    dec c
    add hl, sp
    dec e
    ld d, a
    ld e, b
    ld d, a
    ld e, b
    ld d, a
    ld e, b
    rra
    ld a, [hl+]
    ld a, e
    add hl, sp
    dec e
    add a
    ld e, $02
    rra
    ld a, [hl+]
    add d
    ld a, e
    and [hl]
    jr c, jr_02C_44F1

    ld a, e
    dec c
    add hl, sp
    dec e
    ld b, a
    ld c, b
    ld b, a
    ld c, b
    ld b, a
    ld c, b
    rra
    ld a, [hl+]
    ld a, e
    add hl, sp
    dec e
    add a
    ld e, $02
    rra
    ld a, [hl+]
    add d
    ld a, e
    and [hl]
    jr c, jr_02C_450A

    ld a, e
    dec c
    add hl, sp
    dec e
    ld d, a
    ld e, b
    ld d, a
    ld e, b
    ld d, a
    ld e, b
    rra
    ld a, [hl+]
    ld a, e
    add hl, sp
    dec e
    add a
    ld e, $02
    rra
    ld a, [hl+]
    add d
    ld a, e
    and [hl]
    jr c, jr_02C_4523

    ld a, e
    dec c
    add hl, sp
    dec e
    ld b, a
    ld c, b
    ld b, a
    ld c, b
    ld b, a
    ld c, b
    rra
    ld a, [hl+]
    ld a, e
    add hl, sp
    dec e
    add a
    ld e, $02
    rra
    ld a, [hl+]
    add d
    ld a, e
    and [hl]
    jr c, @-$7C

    ld a, e
    dec c

jr_02C_45BC:
    add hl, sp
    dec e
    ld d, a
    ld e, b
    ld d, a
    ld e, b
    ld d, a
    ld e, b
    rra
    cp l
    cp [hl]
    cp a
    dec e
    add a
    ld e, $02
    rra
    ld a, [hl+]
    add d

jr_02C_45CF:
    ld a, e
    and [hl]
    jr c, @-$7C

    ld a, e
    ld [bc], a
    add hl, sp
    dec l
    add [hl]
    ld l, $05
    cpl
    call $CFCE
    dec l
    add a
    ld l, $02
    cpl
    ld a, [hl+]
    add d

jr_02C_45E5:
    ld a, e
    and [hl]
    jr c, jr_02C_45ED

    ld a, l
    ld a, [hl]
    ld a, a
    ld l, l

jr_02C_45ED:
    add [hl]
    ld l, [hl]
    dec b
    ld l, a
    ld a, l
    ld a, [hl]
    ld a, a
    ld l, l
    add a
    ld l, [hl]
    inc b
    ld l, a
    ld a, l
    ld a, [hl]

jr_02C_45FB:
    ld a, a
    and [hl]
    jr c, jr_02C_4602

    adc l
    adc [hl]
    adc a

jr_02C_4602:
    adc b
    ld a, e
    inc bc
    adc l
    adc [hl]
    adc a
    adc c
    ld a, e
    inc bc
    adc l
    adc d
    adc a
    and [hl]
    jr c, jr_02C_4614

jr_02C_4611:
    sbc l
    sbc [hl]
    sbc a

jr_02C_4614:
    adc b
    ld a, e
    inc bc
    sbc l
    sbc [hl]
    sbc a
    adc c
    ld a, e
    inc bc
    sbc l
    sbc [hl]
    sbc a
    and [hl]
    jr c, jr_02C_4627

    xor l
    xor [hl]
    xor a
    ld a, e

jr_02C_4627:
    add [hl]
    ld l, d
    dec b
    ld a, e
    xor l
    xor [hl]
    xor a
    ld a, e
    add a
    ld l, d
    inc b
    ld a, e
    xor l
    xor [hl]
    xor a
    and [hl]
    jr c, jr_02C_45BC

    ld a, e
    ld bc, $860D

jr_02C_463D:
    ld c, $05
    rrca
    cp l
    cp [hl]
    cp a
    dec c
    add a
    ld c, $01
    rrca
    add e
    ld a, e
    and [hl]
    jr c, jr_02C_45CF

    ld a, e
    ld [bc], a
    add hl, sp
    dec e
    add [hl]
    ld e, $05
    dec e
    call $CFCE
    dec e
    add a
    ld e, $02
    rra
    ld a, [hl+]
    add d
    ld a, e
    and [hl]
    jr c, jr_02C_45E5

    ld a, e
    ld [bc], a
    add hl, sp
    dec e
    add [hl]
    ld e, $05
    dec e
    db $DD
    sbc $DF
    dec e
    add a
    ld e, $02
    rra
    ld a, [hl+]
    add d
    ld a, e
    and [hl]
    jr c, jr_02C_45FB

    ld a, e
    ld [bc], a
    add hl, sp
    dec e
    add [hl]
    ld e, $05
    dec e
    ld a, [hl+]
    ld a, e
    add hl, sp
    dec e
    add a
    ld e, $02
    rra
    ld a, [hl+]
    add d
    ld a, e
    and [hl]
    jr c, jr_02C_4611

    ld a, e
    ld [bc], a
    add hl, sp
    dec e
    add [hl]
    ld e, $05
    dec e
    ld a, [hl+]
    ld a, e
    add hl, sp
    dec e
    add a
    ld e, $02
    rra
    ld a, [hl+]
    add d
    ld a, e
    and [hl]
    jr c, jr_02C_4627

    ld a, e
    ld [bc], a
    add hl, sp
    dec e
    add [hl]
    ld e, $05
    dec e
    ld a, [hl+]
    ld a, e
    add hl, sp
    dec e
    add a
    ld e, $02
    rra
    ld a, [hl+]
    add d
    ld a, e
    and [hl]
    jr c, jr_02C_463D

    ld a, e
    ld [bc], a
    add hl, sp
    dec e
    add [hl]
    ld e, $05
    dec e
    ld a, [hl+]
    ld a, e
    add hl, sp
    dec e
    add a
    ld e, $02
    rra
    ld a, [hl+]
    add d
    ld a, e
    and [hl]
    jr c, @-$7C

    ld a, e
    ld [bc], a
    add hl, sp
    dec l
    add [hl]
    ld l, $05
    cpl
    ld a, [hl+]
    ld a, e
    add hl, sp
    dec l
    add a
    ld l, $02
    cpl
    ld a, [hl+]
    add d
    ld a, e
    and [hl]
    jr c, jr_02C_46EB

    ld a, l
    ld a, [hl]
    ld a, a
    ld l, l

jr_02C_46EB:
    add [hl]
    ld l, [hl]
    dec b
    ld l, a
    ld a, l
    ld a, [hl]
    ld a, a
    ld l, l
    add a
    ld l, [hl]
    inc b
    ld l, a
    ld a, l
    ld a, [hl]
    ld a, a
    and [hl]
    jr c, jr_02C_4700

    adc l
    adc d
    adc a

jr_02C_4700:
    adc b
    ld a, e
    inc bc
    adc l
    ld h, [hl]
    adc a
    adc c
    ld a, e
    inc bc
    adc l
    rst $38
    adc a
    and [hl]
    jr c, jr_02C_4712

    sbc l
    sbc [hl]
    sbc a

jr_02C_4712:
    adc b
    ld a, e
    inc bc
    sbc l
    sbc [hl]
    sbc a
    adc c
    ld a, e
    inc bc
    sbc l
    sbc [hl]
    sbc a
    and [hl]
    jr c, jr_02C_4724

    xor l
    xor [hl]
    xor a

jr_02C_4724:
    adc b
    ld a, e
    inc bc
    xor l
    xor [hl]
    xor a
    adc c
    ld a, e
    inc bc
    xor l
    xor [hl]
    xor a
    ret z

    ld h, b
    jr c, jr_02C_4734

jr_02C_4734:
    ld a, [de]
    ld [$0F00], a
    db $10
    and h
    ld [bc], a
    ld d, $7D
    ld a, [hl]
    ld a, [de]
    ld a, [hl]
    ld a, a
    ld a, e
    adc c
    ld a, l
    ld a, [hl]

Call_02C_4745:
    ld a, [de]
    ld a, [hl]
    ld a, a
    call $CFCE
    ld e, d
    add hl, de
    ld a, [hl]
    ld a, [de]
    ld a, [hl]
    ld a, [de]
    ld a, [hl]
    add d
    ld a, [de]
    inc d
    ld a, [hl]
    ld a, a
    adc l
    inc a
    ld e, $3D
    adc a
    adc c
    ld a, e
    adc l
    inc a
    ld e, $3D
    adc a
    db $DD
    sbc $DF
    adc e
    adc l
    inc a
    add e
    ld e, $06
    cp $1E
    ld e, $3D
    adc a
    add hl, hl
    add e
    ld e, $04
    ld a, a
    pop af
    ld a, l
    ld hl, sp-$7E
    ld e, $08
    ld c, l
    adc a
    db $ED
    adc e
    rst $28
    ld [$4C8D], sp
    add e
    ld e, $01
    cp $83
    ld e, $02
    adc a
    adc l
    add h
    ld e, $03
    dec a
    ld c, d
    inc a
    add d
    ld e, $08
    pop af
    adc a
    ld a, e
    ld [$088B], sp
    ld a, [hl]
    pop af
    add e
    ld e, $0A
    ld l, d
    cp $FE
    ld e, e
    adc a
    add hl, hl
    ld e, $5B
    cp $F1
    add d
    ld e, $05
    cp $1E
    ld e, $3D
    adc a
    add h
    ld a, [hl]
    ld bc, $873C
    ld e, $03
    dec a
    adc a
    adc l
    adc d
    ld e, $02
    adc a
    ld hl, sp-$74
    ld e, $02
    adc a
    add hl, hl
    add e
    ld e, $02
    ld e, e
    ld c, h
    add l
    ld e, $04
    adc a
    sbc l
    adc l
    ld c, h
    adc c
    ld e, $04
    ld c, l
    adc a
    adc l
    ld c, h
    add d
    ld e, $02
    dec a
    ld c, d
    add h
    ld e, $07
    ld c, l
    xor a
    ld a, e
    sbc l
    sbc [hl]
    sbc l
    ld c, h
    add h
    ld e, $02
    pop af
    ld e, e
    add d
    ld c, d
    ld [bc], a
    adc a
    sbc l
    add d
    sbc [hl]
    dec b
    sbc l
    ld c, h
    ld e, $4D
    sbc a
    add d
    sbc [hl]
    inc bc
    xor a
    sbc a
    adc d
    add d
    adc e
    inc bc
    adc l
    pop af
    ld c, h
    add d
    ld e, $0A
    ld e, e
    ld c, d
    ld c, d
    ld c, c
    adc e
    adc a
    ld a, e
    sbc l
    adc c
    sbc l
    add e
    sbc [hl]
    dec bc
    sbc a
    adc d
    ld a, e
    adc e
    adc d
    ld e, d
    adc c
    ld a, e
    sbc l
    sbc [hl]
    sbc l
    add d
    ld e, $0A
    ld l, c
    ld e, $1E
    ld l, h
    ld hl, sp-$71
    ld e, d
    adc e
    ld e, d
    adc e
    add e
    ld e, d
    dec b
    adc e
    ld e, d
    sbc d
    sbc e
    sbc h
    add d
    ld e, d
    dec b
    adc c
    ld a, e
    adc e
    adc l
    ld c, h
    add d
    ld e, $02
    ld c, l
    sbc a
    add d
    sbc [hl]
    ld bc, $8589
    ld e, d
    add d
    adc e
    dec bc
    ld e, d
    adc c
    call $CFCE
    ld a, e
    ld [$897B], sp
    ld e, d
    sbc l
    add h
    sbc [hl]
    inc bc
    sbc a
    adc e
    adc e
    adc d
    ld e, d
    rlca
    db $DD
    sbc $DF
    adc c
    ld a, l
    ld a, [de]
    ld a, [hl]
    add d
    ld a, [de]
    add e
    ld a, [hl]
    dec b
    ld a, [de]
    ld a, [hl]
    ld a, [de]
    ld a, [hl]
    ld a, a
    adc b
    ld e, d
    rlca
    adc d
    db $ED
    ld a, e
    rst $28
    ld [$3C7D], sp
    add d
    ld e, $04
    dec a
    ld l, d
    ld hl, sp+$3C
    add e
    ld e, $02
    dec a
    dec hl
    add [hl]
    ld e, d
    ld c, $8A
    ld e, d
    ld e, d
    adc c
    ld e, d
    ld [$3C7D], sp
    ld e, $49
    ld e, e
    cp $4A
    ld c, e
    add l
    ld e, $01
    dec hl
    add a
    ld e, d
    add hl, bc
    xor $7B
    ld e, d
    adc d
    ld a, l
    inc a
    ld e, $49
    inc a
    adc c
    ld e, $01
    dec hl
    adc d
    ld e, d
    ld [bc], a
    ld a, e
    adc l
    add d
    ld e, $03
    ld c, d
    ld e, $69
    add d
    ld e, $02
    ld c, l
    pop af
    add h
    ld e, $01
    dec hl
    adc e
    ld e, d
    inc b
    adc l
    ld c, h
    ld e, $6B
    add e
    ld e, $03
    ld c, l
    ld l, e
    inc a
    add h
    ld e, $05
    dec hl
    ld e, d
    cp l
    cp [hl]
    cp a
    add [hl]
    ld e, d
    ld b, $7B
    sbc l
    sbc [hl]
    ld c, h
    ld e, $5B
    add d
    ld e, $02
    ld e, e
    inc a
    add l
    ld e, $05
    dec hl
    ld e, d
    call $CFCE
    add a
    ld e, d
    ld [$9D08], sp
    ld a, l
    ld e, $6A
    ld c, h
    ld c, l
    ld l, d
    add l
    ld e, $09
    ld c, l
    adc e
    ld e, d
    db $DD
    sbc $DF
    ld a, [de]
    dec de
    inc c
    add h
    ld e, d
    ld [$897B], sp
    add hl, hl
    ld e, $5B
    ld e, c
    ld l, d
    ld e, e
    add e
    cp $0B
    ld e, c
    ld c, d
    ld c, d
    dec hl
    ld [$EEED], sp
    rst $28
    ld c, $0F
    dec hl
    add l
    ld e, d
    ld [bc], a
    ld a, e
    add hl, hl
    add e
    ld e, $02
    pop af
    ld c, d
    add l
    ld e, $04
    dec a
    dec hl
    add hl, hl
    dec e
    add e
    ld e, $02
    rra
    dec hl
    add h
    ld e, d
    inc bc
    adc c
    ld e, d
    add hl, hl
    adc d
    ld e, $04
    ld c, l
    adc e
    add hl, hl
    dec l
    add e
    ld l, $02
    cpl
    dec sp
    add e
    ld e, d
    inc b
    ld a, e
    ld e, d
    ld e, d

Call_02C_494A:
    add hl, hl

Call_02C_494B:
    add e
    ld e, $03
    ld c, d
    ld e, $9F
    add l
    sbc [hl]
    ld [bc], a
    sbc a
    add hl, sp
    add l
    ld a, [hl-]
    add a
    ld e, d
    ld [bc], a
    add hl, hl
    ld c, h
    add e
    ld e, $05
    ld c, l
    adc a
    inc c
    ld a, e
    adc c
    adc a
    ld e, d
    ld [bc], a
    adc e
    sbc l
    add l
    sbc [hl]
    ld [bc], a
    sbc a
    adc c
    add d
    ld e, d
    inc bc
    ld a, e
    ld e, d
    ld e, d
    nop
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    adc h
    ld c, d
    ld b, $4B
    cp h
    ld d, [hl]
    ld d, a
    db $DD
    ld c, c
    sbc b
    ld c, d
    ld b, $4B
    cp h
    ld d, [hl]
    ld d, a
    db $DD
    ld c, c
    sub a
    ld c, d
    rlca
    ld e, d
    adc l
    ld d, l
    ld d, [hl]
    ld d, a
    bit 1, c
    sub [hl]
    ld c, d
    ld [$6A8D], sp
    ld c, b
    ld d, l
    ld d, $57
    add hl, sp
    cp d
    sub l
    ld c, d
    ld [$488B], sp
    ld a, d
    ld e, b
    ld d, l
    rst $28
    xor e
    ld c, c
    sub e
    ld c, d
    dec bc
    ld [hl], l
    halt
    ld [hl], a
    ld e, e
    ld a, h
    ld b, l
    ld b, a
    ld h, l
    xor e
    add hl, sp
    cp d
    add d
    ld c, d
    ld bc, $8F5A
    ld c, d
    dec bc
    adc e
    add l
    add [hl]
    add a
    ld l, e
    ld c, d
    ld d, l
    ld d, a
    add hl, sp
    ld a, [hl-]
    cp d
    add d
    ld c, d
    ld b, $38
    ld l, d
    adc h
    ld [hl], l
    halt
    ld [hl], a
    adc e
    ld c, d
    add hl, bc
    ld c, e
    sub l
    sub [hl]
    sub a
    ld a, e
    ld b, l
    sbc d
    ld d, a
    ld e, c
    add e
    ld e, d
    ld [$4838], sp
    ld a, d
    ld l, h
    add l
    add [hl]
    add a
    sbc e
    adc d
    ld c, d
    inc bc
    ld c, e
    ld c, d
    ld b, l
    add d
    ld b, [hl]
    rrca
    sbc d
    ld d, [hl]
    ld d, a
    ld l, c
    ld l, d
    sbc h
    ld l, d
    ld l, l
    ld a, h
    ld c, d
    adc b
    sub l
    sub [hl]
    sub a
    ld c, c
    adc d
    ld c, d
    inc bc
    ld c, e
    call c, $8355
    ld d, [hl]
    ld [$6789], sp
    ld a, c
    xor h
    ld a, d
    xor h
    ld a, h
    ld b, l
    add e
    ld b, [hl]
    inc bc
    and [hl]
    bit 1, c
    adc d
    ld c, d
    rlca
    ld c, e
    call c, Call_02C_5655
    adc c
    ld h, [hl]
    ld h, a
    add [hl]
    ld c, d
    ld bc, $8365
    ld h, [hl]
    inc bc
    xor e
    add hl, sp
    cp d
    adc d
    ld c, d
    ld b, $AA
    dec sp
    ld d, l
    adc c
    ld h, a
    add hl, sp
    add a
    ld a, [hl-]
    inc bc
    dec sp
    ld c, d
    add hl, sp
    add d
    ld a, [hl-]
    adc l
    ld c, d
    dec b
    ld c, e
    cp e
    ld h, a
    ld c, d
    ld c, c
    add a
    ld c, d
    inc b
    ld c, e
    ld c, d
    ld e, c
    ld e, d
    adc [hl]
    ld c, d
    dec b
    xor d
    dec sp
    jp z, Jump_02C_594A

    add a
    ld c, d
    dec b
    ld c, e
    ld c, d
    ld l, c
    ld l, d
    sbc e
    adc [hl]
    ld c, d
    dec b
    xor d
    dec sp
    ld c, d
    ld l, c
    sbc e
    add [hl]
    ld c, d
    ld [$4A4B], sp
    ld a, c
    ld a, d
    ld e, c
    ld [hl], l
    halt
    ld [hl], a
    adc c
    ld c, d
    rlca
    ld [hl], l
    halt
    ld [hl], a
    ld e, e
    ld c, d
    ld a, c
    ld c, c
    add [hl]
    ld c, d
    add hl, bc
    ld c, e
    call c, Call_02C_4745
    ld l, c
    add l
    add [hl]
    add a
    adc h
    add a
    ld c, d
    ld [$8538], sp
    add [hl]
    add a
    ld l, e
    ld c, d
    add hl, sp
    cp d
    add [hl]
    ld c, d
    ld a, [bc]
    xor d
    dec sp
    ld d, l
    ld d, a
    ld a, c
    sub l
    sub [hl]
    sub a
    ld l, h
    sbc e
    add l
    ld c, d
    ld [$488B], sp
    sub l
    sub [hl]

jr_02C_4AAA:
    sub a
    ld a, e
    ld c, d
    ld c, c
    adc b
    ld c, d
    add hl, bc
    ld c, e
    ld d, l
    ld d, a
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, d
    adc b
    ld c, c
    add l
    ld c, d
    inc bc
    ld c, e
    ld a, h
    ld b, l
    add d
    ld b, [hl]
    inc bc
    ld b, a
    ld c, d
    ld c, c
    adc b
    ld c, d
    add hl, bc
    ld c, e
    cp e
    adc d
    ld d, [hl]
    adc $57
    srl c
    cp d
    add l
    ld c, d
    ld [$3BAA], sp
    ld h, l
    xor $16
    ld d, a
    db $DD
    ld c, c
    adc b
    ld c, d
    rlca
    xor d
    dec sp
    ld d, l
    ld d, [hl]
    sbc $AB
    add hl, sp
    adc b
    ld c, d
    rlca
    ld c, e
    jp z, Jump_02C_6665

    xor e
    add hl, sp
    cp d
    adc c
    ld c, d
    dec b
    ld e, e
    ld h, l
    ld h, [hl]
    xor e
    add hl, sp
    adc c
    ld c, d
    ld bc, $84AA
    ld a, [hl-]
    adc d

Call_02C_4B00:
    ld c, d
    ld b, $38
    ld l, e
    ld c, d
    db $DD
    add hl, sp
    cp d
    sub d
    ld c, d
    inc bc
    ld [hl], l
    halt
    ld [hl], a
    add d
    ld e, d
    ld b, $38
    ld l, h
    ld a, e
    ld c, d
    bit 1, c
    add a
    ld c, d
    inc bc
    ld [hl], l
    halt
    ld [hl], a
    add e
    ld e, d
    add h
    ld c, d
    inc c
    cp d
    jr c, jr_02C_4AAA

    add [hl]
    add a
    sbc h
    ld l, d
    ld l, l
    ld e, b
    ld c, d
    srl c
    add a
    ld c, d
    ld [$858B], sp
    add [hl]
    add a
    ld l, d
    sbc h
    ld l, d
    adc h
    add h
    ld c, d
    dec bc
    ld c, b
    sub l
    sub [hl]
    sub a
    ld a, d
    xor h
    ld e, b
    ld c, d
    srl c
    cp d
    add a
    ld c, d
    add hl, bc
    ld c, e
    sub l
    sub [hl]
    sub a
    xor h
    ld a, d
    xor h
    ld l, h
    adc h
    add e
    ld e, d
    inc b
    ld a, h
    ld b, l
    ld b, [hl]
    ld b, a
    add e
    ld c, d
    inc bc
    srl c
    cp d
    adc b
    ld c, d
    inc bc
    ld c, e
    ld c, d
    ld b, l
    add h
    ld b, [hl]
    ld c, $88
    ld l, h
    ld l, d
    sbc h
    ld l, d
    dec sp
    cp h
    ld d, [hl]
    ld d, a
    ld c, d
    srl c
    ld a, [hl-]
    cp d
    adc c
    ld c, d
    inc bc
    ld c, e
    call c, $8355
    ld d, [hl]
    dec c
    adc c
    ld h, a
    adc b
    xor h
    ld a, d
    xor h
    ld c, e
    ld d, l
    ld d, [hl]
    ld d, a
    add hl, sp
    ld a, [hl-]
    cp d
    adc e
    ld c, d
    rlca
    ld c, e
    call c, Call_02C_5655
    adc c
    ld h, [hl]
    ld h, a
    add l
    ld c, d
    dec b
    ld c, e
    ld d, l
    ld d, [hl]
    cp l
    ld c, c
    adc l
    ld c, d
    ld b, $AA
    dec sp
    ld d, l
    adc c
    ld h, a
    add hl, sp
    add [hl]
    ld a, [hl-]
    dec b
    ld c, e
    cp h
    ld d, [hl]
    ld d, a
    ld c, c
    adc l
    ld c, d
    nop
    add hl, de
    pop hl
    nop
    ld c, $0F
    ld [hl], c
    ld [bc], a
    sbc d
    db $FD
    ld bc, $892D
    ld l, a
    ld bc, $8B2E
    dec a
    rlca
    dec l
    db $FD
    db $FD
    ld e, a
    or l
    add b
    jp $FD83


    rlca
    pop bc
    add b
    or [hl]
    add hl, hl
    db $E3
    db $E4
    ld c, h
    add e
    ld c, l
    ld b, $4E
    ldh [$E1], a
    ld [c], a
    db $E3
    ld e, [hl]
    add d
    db $FD
    ld [bc], a
    ld e, a
    ld [hl], b
    add d
    jp nc, $FD83

    add d
    jp nc, Jump_02C_7104

    add hl, hl
    ld c, [hl]
    ld c, a
    add d
    nop
    ld [$E5B0], sp
    or h
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld e, [hl]
    add d
    db $FD
    inc b
    ld e, a
    ld [hl], b
    jp nc, $82D3

    ld [c], a
    dec b
    pop de
    jp nc, $D3D2

    add hl, hl
    add e
    nop
    dec b
    or b
    ret nz

    db $FD
    call nz, $83B4
    nop
    ld a, [bc]
    dec hl
    db $FD
    db $FD
    ld e, a
    ld [hl], b
    db $FD
    ld [hl], c
    ld c, h
    ld c, [hl]
    ld [hl], b
    add e
    db $FD
    dec b
    add hl, hl
    nop
    nop
    or b
    ret nz

    add e
    db $FD
    ld [bc], a
    call nz, $82B4
    nop
    ld a, [bc]
    dec hl
    db $FD
    db $FD
    ld e, a
    ld [hl], b
    db $FD
    jp $00B4


    ret nc

    add e
    db $FD
    ld b, $29
    nop
    nop
    ret nz

    db $FD
    db $FD
    ld b, $FF
    db $FD
    db $FD
    call nz, RST_00
    ld a, [bc]
    dec hl
    db $FD
    db $FD
    ld e, a
    ld [hl], b
    jp $B3FD


    nop
    ret nc

    add e
    db $FD
    inc b
    add hl, hl
    nop
    nop
    ldh [$85], a
    db $FD
    inc b
    db $E4
    or b
    or c
    ld e, [hl]
    add d
    db $FD
    ld [bc], a
    ld e, a
    ld [hl], b
    add d
    jp nc, $D413

    nop
    ldh [$E2], a
    pop de
    jp $B329


    or h
    ld c, e
    ldh [$E2], a
    db $FD
    ld [c], a
    db $E4
    ld c, a
    ret nz

    pop bc
    ld e, [hl]
    add d
    db $FD
    rla
    ld e, a
    pop de
    db $D3
    db $FD
    call nc, Call_02C_4B00
    ld c, h
    ld [hl], b
    db $FD
    add hl, hl
    jp $00C4


    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    ret nc

    jp nc, $825E

    db $FD
    ld bc, $835F
    db $FD
    add hl, bc
    db $E4
    nop
    ld [hl], d
    db $FD
    pop bc
    db $D3
    add hl, hl
    pop de
    call nc, $0087
    inc bc
    ldh [$E1], a
    ld e, [hl]
    add d
    db $FD
    rlca
    ld e, a
    pop bc
    jp nc, Jump_02C_5AD4

    ld [hl], d
    rla
    add e
    ld l, [hl]
    ld b, $2D
    ld l, [hl]
    ld l, [hl]
    dec c
    jr jr_02C_4D33

    add d
    nop
    dec b
    or b
    or h
    ld c, e
    ld c, h
    ld e, [hl]
    add d
    db $FD
    ld [bc], a
    ld e, a
    ld [hl], b
    add d
    db $FD
    inc bc
    or c
    db $FD
    rst $30
    add a
    dec l
    ld [bc], a
    rst $30
    db $FD
    add d
    or d
    dec b
    db $FD
    or e
    or h
    nop
    dec hl
    add d
    db $FD
    rlca
    ld e, a
    ld [hl], b
    jp nc, Jump_02C_70D4

    db $D3
    ld e, [hl]
    add a
    dec l
    ld [bc], a
    ld e, a
    db $D3
    add e
    ld [c], a
    inc b
    pop de
    db $FD
    ld [hl], h
    ld e, [hl]
    add d
    db $FD
    rlca
    ld e, a
    pop de
    jp nc, Jump_02C_70D4

    db $FD
    ld e, [hl]
    add a
    dec l
    ld b, $5F
    ld l, l
    ld c, e
    ld c, h
    ld c, [hl]
    ldh [$82], a
    db $FD
    ld b, $2D
    db $FD
    db $FD
    ld e, a
    db $FD
    db $FD
    ld b, $E4
    ldh [$FD], a
    daa
    dec a
    inc l
    add e
    dec l
    inc bc
    ld l, $6F
    ccf
    add h
    nop
    inc b
    ld d, [hl]
    ldh [$E2], a
    ld e, [hl]
    add d
    db $FD
    rrca
    ld e, a
    db $E3
    db $E4
    ld e, d
    ld d, [hl]
    ld c, h
    ld c, l
    ld c, [hl]
    dec sp
    inc l
    dec l

jr_02C_4D33:
    ld l, $28
    ld c, [hl]
    ld c, a
    add d
    nop
    ld b, $B0
    push hl
    or h
    ld c, e
    ld c, h
    dec hl
    add d
    db $FD
    dec c
    ld e, a
    ld e, c
    ld e, d
    or b
    or h
    or b
    push hl
    or h
    ld d, [hl]
    dec sp
    rst $30
    ccf
    ld e, d
    add h
    nop
    inc bc
    ret nz

    db $FD
    call nz, $0082
    rlca
    dec hl
    db $FD
    db $FD
    cpl
    nop
    ld [hl], d
    db $FD
    add d
    add b
    ld b, $FD
    call nz, $5600
    ld c, c
    ld e, d
    add l
    nop
    inc bc
    ret nc

    db $FD
    call nc, $0082
    ld b, $2B
    db $FD
    db $FD
    ld e, a
    or d
    pop bc
    add e
    jp nc, $FD03

    call nc, $8609
    nop
    dec b
    or b
    or c
    pop bc
    jp nc, $82C3

    or d
    ld b, $5E
    db $FD
    db $FD
    ld e, a
    db $FD
    db $FD
    add e
    jp nc, $D306

    db $E4
    nop
    or b
    push hl
    or h

jr_02C_4D98:
    add e
    nop
    ld [bc], a
    or c
    db $FD
    add d
    jp nc, $FD83

    ld b, $2D
    db $FD
    db $FD
    ld e, a
    db $FD
    db $FD
    add hl, bc
    db $D3
    db $FD
    db $FD
    db $E4
    db $F4
    or b
    or c
    db $FD
    or e
    add e
    nop
    inc b
    ldh [$E1], a
    pop hl
    pop de
    add e
    db $FD
    ld b, $2D
    db $FD
    db $FD
    ld e, a
    db $FD
    db $FD
    add hl, bc
    sub e
    ld c, l
    ld c, [hl]
    ld c, a
    or b
    or c
    pop bc
    jp nz, $83D4

    nop
    inc b
    ld c, e
    ld c, h
    jr c, jr_02C_4D98

    add e
    db $FD
    inc b
    dec l
    db $FD
    db $FD
    dec l
    add e
    ld l, [hl]
    add e
    dec c
    add l
    ld l, [hl]
    add h
    dec c
    add [hl]
    ld l, [hl]
    ld bc, $9A2D
    db $FD
    nop
    inc d
    or h
    nop
    add hl, bc
    inc d
    ld e, b
    ld [bc], a
    add l
    nop
    add d
    ld hl, sp+$05
    nop
    ld hl, sp-$08
    xor d
    add d
    add d
    db $10
    ld [bc], a
    ld h, e
    ld h, h
    add h
    ld hl, sp-$77
    nop
    inc bc
    ld h, c
    cp d
    sub d
    add d
    db $10
    ld [bc], a
    ld [hl], e
    ld [hl], h
    add h
    ld hl, sp-$78
    nop
    inc b
    ld [hl], b
    ld [hl], c
    jp z, $82A2

    db $10
    ld [bc], a
    or d
    inc [hl]
    add h
    ld hl, sp+$04
    jp c, $D510

    sub $84
    nop
    inc bc
    add b
    sbc d
    jp c, $1082

    inc b
    add e
    add h
    scf
    sbc l
    add e
    ld hl, sp-$7E
    sub $82
    and $84
    nop
    inc bc
    sub b
    sub c
    ld [hl], d
    add d
    db $10
    inc b
    sub e
    add h
    ld hl, sp+$5C
    add e
    ld hl, sp-$7E
    and $02
    or $F7
    add h
    nop
    inc bc
    and b
    xor c
    add d
    add d
    db $10
    inc b
    sub e
    sub h
    xor l
    ld l, h
    add e
    ld hl, sp+$04
    ld a, h
    rst $30
    db $10
    and e
    add h
    nop
    inc bc
    ld hl, sp-$40
    or b
    add d
    db $10
    dec b
    and e
    and h
    cp l
    cp [hl]
    rra
    add d
    ld hl, sp-$78
    nop
    add d
    ld hl, sp+$02
    add c
    and d
    add d
    db $10
    ld b, $CC
    call $2FCE
    xor [hl]
    ld hl, sp-$78
    nop
    add d
    ld hl, sp+$02
    ret nz

    or b
    add e
    db $10
    dec b
    db $DD
    sbc $3F
    ld h, h
    ld h, l
    adc b
    nop
    add e
    ld hl, sp+$02
    and c
    add d
    add e
    db $10
    inc b
    ld c, l
    ld c, a
    ld [hl], h
    ld [hl], l
    adc b
    nop
    add e
    ld hl, sp+$02
    ret nz

    or b
    add h
    db $10
    inc b
    ld h, e
    add h
    add l
    rst $10
    add e
    db $10
    add h
    nop
    ld b, $48
    inc bc
    inc b
    ret nc

    add c
    ld h, d
    add e
    db $10
    inc b
    ld [hl], e
    sub h

jr_02C_4EB7:
    sub l
    and $82
    sub $01
    rst $10
    add h
    nop
    ld b, $34
    ld b, $07
    ld [$7291], sp
    add e
    db $10
    inc b
    or d
    xor [hl]
    and l
    push af
    add e
    and $84
    nop
    ld b, $F8
    ld d, $17
    jr jr_02C_4EB7

    add d
    add d
    db $10
    ld b, $63
    ld h, h
    ld h, l
    ld hl, sp+$10
    push hl
    add d
    and $02
    nop
    ld hl, sp-$7E
    nop
    add d
    ld hl, sp+$04
    daa
    ld hl, sp+$19
    sub d
    add d
    db $10
    ld [bc], a
    ld [hl], e
    ld [hl], h
    add d
    ld hl, sp+$05
    db $10
    push hl
    and $7B
    nop
    add d
    ld hl, sp+$07
    nop
    ld hl, sp+$5D
    ld d, a
    cp c
    add hl, hl
    and d
    add d
    db $10
    ld [bc], a
    or d
    jp nz, $F882

    ld b, $D5
    or $F6
    ld h, h
    nop
    ld hl, sp-$7E
    nop
    add d
    ld hl, sp+$08
    ld h, a
    ret


    add hl, sp
    sub d
    db $10
    add e
    ld h, h
    ld h, l
    add d
    ld hl, sp+$04
    rst $30
    db $10
    sub e
    ld [hl], h
    add [hl]
    nop
    rlca
    ld h, c
    reti


    ld c, c
    and d
    db $10
    sub e
    ld [hl], h
    add e
    ld hl, sp-$77
    nop
    inc bc
    ld [hl], b
    ld [hl], c
    jp hl


    add e
    db $10
    dec b
    or d
    add l
    ld b, $03
    inc b
    adc c
    nop
    inc bc
    add b
    add c
    add d
    add d
    db $10
    ld b, $83
    add h
    add l
    ld d, $38
    ld hl, sp-$7A
    nop
    ld b, $F8
    nop
    nop
    sub b
    sub c
    sub d
    add d
    db $10
    ld [bc], a
    sub e
    sbc h
    add h
    ld hl, sp+$03
    ld [hl], c
    sub $D7
    add d
    db $10
    ld [bc], a
    db $DD
    ld hl, sp-$7E
    nop
    inc bc
    and b
    and c
    and d
    add d
    db $10
    inc bc
    and e
    xor h
    xor l
    add e
    ld hl, sp+$03
    sub c
    and $E6
    add e
    sub $06
    ld hl, sp+$00
    nop
    ld hl, sp-$30
    or b
    add d
    db $10
    ld [$BC93], sp
    cp l
    ld h, h
    ld h, l
    ld hl, sp-$5F
    ld a, h
    add h
    and $07
    ld hl, sp+$00
    nop
    ld hl, sp+$00
    ld h, c
    ld h, d
    add d
    db $10
    rlca
    xor $CD
    ld [hl], h
    ld [hl], l
    ld hl, sp-$57
    ld h, c
    add h
    and $07
    ld hl, sp+$00
    nop
    ld hl, sp+$70
    ld [hl], c
    ld [hl], d
    add e
    db $10
    ld b, $DD
    add h

jr_02C_4FB3:
    add l
    inc bc
    ld [hl], b
    ld [hl], c
    add h
    and $07
    ld hl, sp+$00
    nop
    ld hl, sp-$70
    sub c
    add d
    add e
    db $10
    ld b, $63
    sub h
    inc bc
    scf
    ld [$8481], sp
    and $07
    ld hl, sp+$00
    nop
    ldh [$A0], a
    and c
    or b
    add e
    db $10
    dec b
    ld [hl], e
    and h
    rlca
    jr c, jr_02C_4FB3

    add d
    db $10
    ld [bc], a
    add e
    nop
    add d
    ld hl, sp-$7E
    nop
    dec b
    dec b
    ld hl, sp-$57
    ld h, c
    ld h, d
    add d
    db $10
    add hl, bc
    add e
    ld h, h
    inc [hl]
    dec [hl]
    and $D7
    db $10
    push de
    nop
    add d
    ld hl, sp+$07
    nop
    ld hl, sp+$38
    dec [hl]
    ld [hl], b
    ld [hl], c
    ld [hl], d
    add d
    db $10
    inc b
    sub e
    ld [hl], h
    ld [hl], l
    inc bc
    add d
    and $02
    sub $E6
    add h
    nop
    ld b, $F8
    dec b
    rlca
    ld [$B081], sp
    add d
    db $10
    inc b
    and e
    add h
    add l
    inc de
    nop
    jr z, jr_02C_5060

    ld b, $A9
    nop
    and [hl]
    ld [$0082], sp
    ld bc, $A108
    ld [bc], a
    add e
    nop
    inc b
    ld [$0000], sp
    ld [$02A1], sp
    add e
    nop
    inc b
    ld [$0000], sp
    ld [$02A1], sp
    add e
    nop
    inc b
    ld [$0000], sp
    ld [$0288], sp
    ld bc, $9108
    ld [bc], a
    ld bc, $8908
    ld [bc], a
    dec b
    ld [$0000], sp
    ld [$8302], sp
    nop
    add h
    ld [bc], a
    ld bc, $9108
    ld [bc], a
    ld bc, $8908
    ld [bc], a

jr_02C_5060:
    dec b
    ld [$0000], sp
    ld [$8302], sp
    nop
    add h
    ld [bc], a
    ld bc, $9B08
    ld [bc], a
    dec b
    ld [$0000], sp
    ld [$8302], sp
    nop
    adc c
    ld [bc], a
    adc e
    ld [$0285], sp
    ld bc, $8608
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$028D], sp
    add l
    ld [$C001], sp
    add l
    ld [$0285], sp
    ld bc, $8608
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$028D], sp
    add h
    ld [$0083], sp
    add h
    ld [$0285], sp
    ld bc, $8408
    ld [bc], a
    inc bc
    ld [$0802], sp
    add d
    nop
    ld bc, $8D08
    ld [bc], a
    add d
    ld [$0087], sp
    add d
    ld [$028A], sp
    inc bc
    ld [$0802], sp
    add d
    nop
    ld bc, $8508
    ld [bc], a
    ld bc, $8708
    ld [bc], a
    add d
    ld [$0287], sp
    add d
    ld [$028C], sp
    inc b
    ld [$0000], sp
    ld [$0285], sp
    ld bc, $8708
    ld [bc], a
    add d
    ld [$0001], sp
    add l
    ld [bc], a
    inc bc
    nop
    ld [$8C08], sp
    ld [bc], a
    ld b, $08
    nop
    nop
    ld [$0802], sp
    adc e
    ld [bc], a
    add d
    ld [$0287], sp
    add d
    ld [$028C], sp
    ld b, $08
    nop
    nop
    ld [$0802], sp
    and d
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0296], sp
    add d
    nop
    adc h
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$028A], sp
    add d
    nop
    add a
    ld [bc], a
    inc b
    ld [$0202], sp
    nop
    adc l
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0293], sp
    ld [bc], a
    ld [$8302], sp
    nop
    adc h
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$028A], sp
    add h
    nop
    add a
    ld [bc], a
    ld bc, $8700
    ld [bc], a
    add e
    nop
    add h
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0283], sp
    ld bc, $8608
    ld [bc], a
    add h
    nop
    adc a
    ld [bc], a
    add e
    nop
    add h
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0283], sp
    ld bc, $8608
    ld [bc], a
    add [hl]
    nop
    adc l
    ld [bc], a
    add e
    nop
    add h
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0283], sp
    ld bc, $8808
    ld [bc], a
    add h
    nop
    add a
    ld [bc], a
    ld bc, $8C08
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0297], sp
    ld bc, $8C08
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$02A4], sp
    inc b
    ld [$0000], sp
    ld [$02A4], sp
    inc b
    ld [$0000], sp
    ld [$02A4], sp
    inc b
    ld [$0000], sp
    ld [$0293], sp
    ld bc, $8500
    ld [bc], a
    ld bc, $8708
    ld [bc], a
    add d
    nop
    ld [bc], a
    ld [bc], a
    ld [$0082], sp
    ld bc, $8908
    ld [bc], a
    add e
    nop
    add a
    ld [bc], a
    ld bc, $8500
    ld [bc], a
    ld bc, $8708
    ld [bc], a
    add d
    nop
    ld [bc], a
    ld [bc], a
    ld [$0082], sp
    ld bc, $8908
    ld [bc], a
    add e
    nop
    adc l
    ld [bc], a
    ld bc, $8A08
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0284], sp
    add e
    nop
    add e
    ld [bc], a
    ld bc, $9900
    ld [bc], a
    ld b, $08
    nop
    nop
    ld [$0000], sp
    add e
    ld [bc], a
    ld bc, $8400
    ld [bc], a
    ld bc, $9300
    ld [bc], a
    ld bc, $8508
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0284], sp
    add e
    nop
    adc c
    ld [bc], a
    add l
    nop
    adc c
    ld [bc], a
    ld bc, $8508
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$028D], sp
    ld [bc], a
    ld [$8702], sp
    nop
    adc b
    ld [bc], a
    ld bc, $8508
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$028D], sp
    ld [bc], a
    ld [$8702], sp
    nop
    adc [hl]
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$028F], sp
    add a
    nop
    adc [hl]
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$028F], sp
    add a
    nop
    adc [hl]
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$028F], sp
    add a
    nop
    adc [hl]
    ld [bc], a
    inc bc
    ld [$0000], sp
    and [hl]
    ld [$00AC], sp
    nop
    ld e, $B0
    inc b
    sub l
    ld [$4301], sp
    add e
    add $01
    ld b, e
    sbc c
    ld [$4301], sp
    add e
    nop
    ld bc, $8C43
    ld [$4382], sp
    adc e
    ld [$4301], sp
    add e
    nop
    ld bc, $8B43
    ld [$4304], sp
    nop
    nop
    ld b, e
    adc d
    ld [$4304], sp
    nop
    nop
    ld b, e
    add a
    ld [$4382], sp
    inc bc
    call nz, Call_02C_4343
    add h
    nop
    ld bc, $8943
    ld [$4304], sp
    nop
    nop
    ld b, e
    add [hl]
    ld [$4301], sp
    adc d
    nop
    ld bc, $8843
    ld [$4304], sp
    nop
    nop
    ld b, e
    add l
    ld [$4301], sp
    adc e
    nop
    ld bc, $8843
    ld [$4304], sp
    nop
    nop
    ld b, e
    add l
    ld [$4301], sp
    adc e
    nop
    ld bc, $8843
    ld [$4304], sp
    nop
    nop
    ld b, e
    add l
    ld [$4301], sp
    adc e
    nop
    ld bc, $8843
    ld [$4304], sp
    nop
    nop
    ld b, e
    add l
    ld [$4304], sp
    nop
    nop
    ld b, b
    adc b
    nop
    ld bc, $8443
    ld [$4302], sp
    jp Jump_02C_4382


    add h
    nop
    ld bc, $8443
    ld [$4301], sp
    add a
    nop
    ld bc, $8440
    nop
    add h
    ld b, e
    adc c
    nop
    ld bc, $8343
    ld [$4306], sp
    nop
    nop
    ld b, b
    nop
    ld b, b
    sub h
    nop
    ld bc, $8443
    ld [$4301], sp
    add h
    nop
    add d
    ld b, b
    sub b
    nop
    inc bc
    ld b, d
    nop
    ld b, e
    add l
    ld [$4301], sp
    add l
    nop
    inc bc
    ld b, b
    nop
    ld b, b
    add d
    nop
    add h
    ld b, e
    add l
    nop
    ld bc, $8342
    nop
    ld bc, $8643
    ld [$4301], sp
    adc b
    nop
    ld bc, $8343
    ld [$4301], sp
    adc c
    nop
    ld bc, $8743
    ld [$4301], sp
    add [hl]
    nop
    ld bc, $8443
    ld [$4303], sp
    nop
    nop
    add d
    ld b, e
    add d
    nop
    ld bc, $8342
    nop
    ld bc, $8743
    ld [$4386], sp
    add l
    ld [$4303], sp
    nop
    nop
    add d
    ld b, e
    add l
    nop
    ld bc, $9343
    ld [$4303], sp
    nop
    nop
    add e
    ld b, e
    add e
    nop
    ld bc, $9443
    ld [$4306], sp
    nop
    nop
    ld b, e
    ld [$8308], sp
    ld b, e
    adc h
    ld [$4383], sp
    add l
    ld [$4301], sp
    add e
    nop
    ld bc, $8D43
    ld [$4302], sp
    pop bc
    add d
    ld b, e
    add e
    nop
    add [hl]
    ld b, e
    add e
    nop
    ld bc, $8C43
    ld [$4301], sp
    sub b
    nop
    add d
    ld b, e
    inc bc
    jp nz, Jump_02C_4343

    add a
    ld [$4301], sp
    adc [hl]
    nop
    ld bc, $8740
    nop
    ld bc, $8643
    ld [$4301], sp
    add [hl]
    nop
    ld bc, $8A41
    nop
    ld bc, $8540
    nop
    ld bc, $8543
    ld [$4301], sp
    add h
    nop
    ld bc, $8441
    nop
    add h
    ld b, e
    adc c
    nop
    ld bc, $8643
    ld [$4301], sp
    add l
    nop
    ld bc, $8341
    nop
    ld bc, $8343
    ld [$4301], sp
    add l
    nop
    add e
    ld b, e
    adc b
    ld [$4303], sp
    nop
    ld b, c
    add [hl]
    nop
    ld bc, $8443
    ld [$4385], sp
    adc h
    ld [$4301], sp
    add a
    nop
    ld bc, $9543
    ld [$4301], sp
    add e
    nop
    add d
    ld b, e
    add d
    nop
    ld bc, $9643
    ld [$4383], sp
    add d
    ld [$4303], sp
    nop
    nop
    adc d
    ld b, e
    sub d
    ld [$4301], sp
    adc e
    nop
    ld bc, $9143
    ld [$4301], sp
    adc h
    nop
    ld bc, $9043
    ld [$4301], sp
    add h
    nop
    inc b
    ld b, b
    nop
    nop
    ld b, b
    add l
    nop
    ld bc, $8C43
    ld [$4302], sp
    ret nz

    add d
    ld b, e
    adc b
    nop
    ld bc, $8540
    nop
    ld bc, $8A43
    ld [$4301], sp
    add [hl]
    nop
    inc bc
    ld b, b
    nop
    nop
    add d
    ld b, b
    adc b
    nop
    ld bc, $8843
    ld [$4301], sp
    adc b
    nop
    ld bc, $8640
    nop
    ld bc, $8440
    nop
    ld bc, $8843
    ld [$4303], sp
    nop
    ld b, b
    sub c
    nop
    ld bc, $8A43
    ld [$4301], sp
    add e
    nop
    ld bc, $8840
    nop
    add e
    ld b, e
    add d
    nop
    ld bc, $8C43
    ld [$438C], sp
    add d
    ld [$4304], sp
    nop
    nop
    ld b, e
    sbc e
    ld [$C582], sp
    add [hl]
    ld [$1E00], sp
    or b
    inc b
    sub [hl]
    ld [$C683], sp
    sbc d
    ld [$4301], sp
    add e
    nop
    ld bc, $8C43
    ld [$4382], sp
    adc e
    ld [$4301], sp
    add e
    nop
    ld bc, $8B43
    ld [$4304], sp
    nop
    nop
    ld b, e
    adc e
    ld [$4303], sp
    nop
    ld b, e
    add a
    ld [$4382], sp
    inc bc
    call nz, Call_02C_4343
    add h
    nop
    ld bc, $8B43
    ld [$4301], sp
    add a
    ld [$4301], sp
    adc d
    nop
    ld bc, $9143
    ld [$4301], sp
    adc e
    nop
    ld bc, $9143
    ld [$4301], sp
    adc e
    nop
    ld bc, $8943
    ld [$4382], sp
    add [hl]
    ld [$4301], sp
    adc e
    nop
    ld bc, $8843
    ld [$4304], sp
    nop
    nop
    ld b, e
    add l
    ld [$4304], sp
    nop
    nop
    ld b, b
    adc b
    nop
    ld bc, $8443
    ld [$4302], sp
    jp Jump_02C_4382


    add h
    nop
    ld bc, $8443
    ld [$4301], sp
    add a
    nop
    ld bc, $8340
    nop
    ld bc, $8343
    ld [$4301], sp
    adc c
    nop
    ld bc, $8343
    ld [$4306], sp
    nop
    nop
    ld b, b
    nop
    ld b, b
    add [hl]
    nop
    inc b
    ld b, e
    ld [$4308], sp
    adc d
    nop
    ld bc, $8443
    ld [$4301], sp
    add h
    nop
    add d
    ld b, b
    add l
    nop
    inc bc
    ld b, e
    ld [$8843], sp
    nop
    inc bc
    ld b, d
    nop
    ld b, e
    add l
    ld [$4301], sp
    add l
    nop
    inc bc
    ld b, b
    nop
    ld b, b
    add d
    nop
    inc b
    ld b, e
    ld [$4308], sp
    add l
    nop
    ld bc, $8342
    nop
    ld bc, $8643
    ld [$4301], sp
    adc b
    nop
    ld bc, $8443
    ld [$4383], sp
    add [hl]
    nop
    ld bc, $8743
    ld [$4301], sp
    add [hl]
    nop
    ld bc, $8843
    ld [$4304], sp
    nop
    nop
    ld b, d
    add e
    nop
    ld bc, $8743
    ld [$4386], sp
    adc c
    ld [$4301], sp
    add l
    nop
    ld bc, $9443
    ld [$4382], sp
    add d
    ld [$4301], sp
    add e
    nop
    ld bc, $9443
    ld [$4303], sp
    nop
    ld b, e
    add e
    ld [$4383], sp
    adc h
    ld [$4383], sp
    add l
    ld [$4301], sp
    add e
    nop
    ld bc, $8D43
    ld [$4302], sp
    pop bc
    add d
    ld b, e
    add e
    nop
    ld bc, $8443
    ld [$4301], sp
    add e
    nop
    ld bc, $8C43
    ld [$4301], sp
    adc b
    nop
    inc b
    ld b, e
    ld [$4308], sp
    add h
    nop
    add d
    ld b, e
    ld bc, $83C2
    ld b, e
    add [hl]
    ld [$4301], sp
    adc c
    nop
    inc bc
    ld b, e
    ld [$8243], sp
    nop
    ld bc, $8740
    nop
    ld bc, $8643
    ld [$4301], sp
    add [hl]
    nop
    ld b, $41
    nop
    nop
    ld b, e
    ld [$8543], sp
    nop
    ld bc, $8540
    nop
    ld bc, $8543
    ld [$4301], sp
    add h
    nop
    ld bc, $8441
    nop
    inc b
    ld b, e
    ld [$4308], sp
    adc c
    nop
    ld bc, $8643
    ld [$4301], sp
    add l
    nop
    inc b
    ld b, c
    nop
    nop
    ld b, e
    add h
    ld [$4301], sp
    add l
    nop
    add e
    ld b, e
    adc b
    ld [$4303], sp
    nop
    ld b, c
    add h
    nop
    ld bc, $8643
    ld [$4385], sp
    adc h
    ld [$4301], sp
    add h
    nop
    ld bc, $9843
    ld [$4301], sp
    add e
    nop
    ld bc, $9A43
    ld [$4383], sp
    add a
    ld [$4388], sp
    sub l
    ld [$4301], sp
    adc b
    nop
    ld bc, $9343
    ld [$4301], sp
    adc d
    nop
    ld bc, $9143
    ld [$4301], sp
    add e
    nop
    inc b
    ld b, b
    nop
    nop
    ld b, b
    add l

Call_02C_5655:
    nop
    ld bc, $8C43
    ld [$4302], sp
    ret nz

    add d
    ld b, e
    adc b
    nop
    ld bc, $8540
    nop
    ld bc, $8A43
    ld [$4301], sp
    adc c
    nop
    add d
    ld b, b
    adc b
    nop
    ld bc, $8843
    ld [$4301], sp
    adc a
    nop
    ld bc, $8440
    nop

jr_02C_567D:
    ld bc, $8843
    ld [$4303], sp
    nop
    ld b, b
    sub c
    nop
    ld bc, $8A43
    ld [$4301], sp
    add e
    nop
    ld bc, $8840
    nop
    add e
    ld b, e
    add d
    nop
    ld bc, $8C43
    ld [$438C], sp
    add d
    ld [$4304], sp
    nop
    nop
    ld b, e
    sbc e
    ld [$C582], sp
    add [hl]
    ld [$1900], sp
    pop hl
    nop
    ld c, $0F
    ld [hl], c
    ld [bc], a
    sbc d
    db $FD
    ld [bc], a
    inc e
    dec l
    add d
    dec a
    ld bc, $912D
    dec a
    dec b
    ld e, $FD
    db $FD
    ld e, a
    rst $38
    add d
    db $FD
    ld bc, $8339
    db $FD
    add d
    jp nc, $FD83

    inc bc
    db $D3
    db $E4
    ld c, h
    add d
    ld c, l
    ld [bc], a
    ld c, [hl]
    or l
    add d
    db $FD
    inc b
    ld e, [hl]
    db $FD
    db $FD
    ld e, a
    add e
    db $FD
    inc bc
    add hl, sp
    db $FD
    db $FD
    add e
    jp nc, $FD83

    ld [bc], a
    sub e
    ld c, a
    add h
    nop
    ld b, $E0
    db $FD
    db $FD
    ld e, [hl]
    db $FD
    db $FD
    dec b
    ld e, a
    db $FD
    db $FD
    rst $30
    jr z, jr_02C_567D

    db $FD
    add d
    ld [c], a
    dec c
    db $FD
    jp nc, $E4FD

    nop
    or c
    or d
    or e
    or h
    ld c, e
    ld c, h
    ld c, l
    ld e, [hl]
    add d
    db $FD
    dec b
    ld e, a
    db $FD
    pop bc
    db $FD
    db $D3
    add d
    db $E3
    add hl, bc
    db $E4
    ld c, a
    ld c, e
    ldh [$E2], a
    db $E4
    ld c, a
    nop
    ldh [$82], a
    db $FD
    ld bc, $83D6
    nop
    dec bc
    ld e, [hl]
    db $FD
    db $FD
    ld e, a
    db $FD
    ld [c], a
    db $FD
    db $E4
    ld c, h
    ld c, [hl]
    ld c, a
    add d
    nop
    inc bc
    ld c, e
    ld c, c
    ld c, a
    add d
    nop
    inc b
    ld c, e
    ldh [$E4], a
    ld c, a
    add e
    nop
    ld b, $2B
    db $FD
    db $FD
    dec l
    add hl, de
    add hl, de
    add hl, bc
    ccf
    ld c, a
    or b
    push hl
    or h
    nop
    or c
    db $FD
    or e
    add h
    nop
    rlca
    ld c, e
    ld c, a
    nop
    or b
    or c
    or d
    ld e, [hl]
    add d
    db $FD
    ld de, $4D5F
    ld c, [hl]
    ld c, a
    nop
    or c
    db $FD
    or e
    or h
    ldh [$E2], a
    db $E4
    nop
    or b
    or c
    or e
    or h
    add d
    nop
    ld b, $B1
    db $FD
    db $FD
    ld e, [hl]
    db $FD
    db $FD
    inc bc
    ld e, a
    nop
    ld a, a
    add d
    nop
    inc c
    ret nc

    db $FD
    db $FD
    call nz, Call_02C_494B
    ld c, a
    nop
    ret nz

    pop bc
    jp $82C4


    nop
    inc b
    ldh [$FD], a
    pop bc
    ld e, [hl]
    add d
    db $FD
    inc bc
    cpl
    ld d, $36
    add d
    nop
    inc b
    push bc
    ld [c], a
    db $E3
    db $E4
    add h
    nop
    inc b
    ldh [$E1], a
    db $E3
    db $E4
    add d
    nop
    inc b
    and $FD
    jp nc, $825E

    db $FD
    add hl, bc
    ld l, $19
    ld l, a
    ld c, $B4
    ld l, e
    ld l, h
    ld c, d
    ld c, a
    add h
    nop
    ld a, [bc]
    ld c, e
    ld c, h
    ld c, [hl]
    ld c, a
    nop
    or b
    or c
    jp nc, Jump_02C_5ED3

    add d
    db $FD
    ld bc, $835F
    db $FD
    ld bc, $85C4
    nop
    inc b
    ret nz

    or d
    or e
    or h
    add h
    nop
    ld bc, $83B1
    db $FD
    ld b, $5E
    db $FD
    db $FD
    ld e, a
    db $FD
    db $FD
    ld [bc], a
    pop bc
    call nc, $0085
    inc b
    ldh [$FD], a
    db $FD
    or e
    add h
    nop
    ld [bc], a
    ret nc

    jp $FD82


    inc b
    ld e, [hl]
    db $FD
    db $FD
    ld e, a
    add e
    db $FD
    ld [bc], a
    sub e
    or h
    add h
    nop
    inc b
    ld c, e
    ldh [$E2], a
    db $E4
    add h
    nop
    ld bc, $83E0
    db $FD
    dec b
    ld e, [hl]
    db $FD
    db $FD
    ld e, a
    sub d
    add d
    jp nc, $C303

    call nz, $84B4
    nop
    inc bc
    ld c, e
    ld c, c
    ld c, a
    add h
    nop
    ld [bc], a
    ldh a, [$E0]
    add d
    ld [c], a
    ld a, [bc]
    ld e, [hl]
    db $FD
    db $FD
    ld e, a
    sub d
    jp nc, $D2FD

    jp $88C4


    nop
    ld [$E5B0], sp
    or h
    nop
    ld c, e
    ld c, h
    ld c, l
    ld e, [hl]
    add d
    db $FD
    inc b
    ld e, a
    push bc
    db $FD
    ld [c], a
    add d
    db $FD
    ld bc, $88E4
    nop
    inc bc
    ret nz

    db $FD
    call nz, $0084
    dec b
    dec hl
    db $FD
    db $FD
    ld e, a
    ld d, a
    add e
    ld c, l
    ld [bc], a
    ld c, [hl]
    ld c, a
    adc b
    nop
    inc bc
    ret nc

    db $FD
    call nc, $0084
    ld b, $2B
    db $FD
    db $FD
    ld e, a
    or d
    or d
    ld [bc], a
    or e
    or h
    add h
    nop
    add hl, bc
    or b
    or c
    or d
    call nz, $00B4
    ret nc

    jp nc, $83D4

    nop
    ld [bc], a
    ld d, $2B
    add d
    db $FD
    ld bc, $835F
    db $FD
    ld bc, $84C4
    nop
    inc b
    or c
    db $FD
    jp nc, $82FD

    or d
    ld [$D2C1], sp
    call nc, $B000
    or c
    or d
    ld e, [hl]
    add d
    db $FD
    ld bc, $835F
    db $FD
    ld bc, $84D4
    nop
    ld bc, $83D0
    db $FD
    rlca
    db $D3
    ld [c], a
    ld [c], a
    db $FD
    db $E4
    nop
    or c
    add d
    db $FD
    inc b
    ld e, [hl]
    db $FD
    db $FD
    ld e, a
    add e
    db $FD
    ld bc, $84C3
    or d
    ld bc, $83C1
    db $FD
    rlca
    sub e
    ld c, h
    ld c, l
    ld c, [hl]
    ld e, d
    nop
    ret nc

    add d
    db $FD
    inc b
    ld e, [hl]
    db $FD
    db $FD
    inc l
    adc l
    ld l, [hl]
    add l
    dec c
    add e
    ld l, [hl]
    ld bc, $9A2E
    db $FD
    nop
    add hl, de
    pop hl
    nop
    ld c, $0F
    ld [hl], c
    ld [bc], a
    sbc d
    db $FD
    rla
    add hl, sp
    dec sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a

jr_02C_58E9:
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3C
    add d
    db $FD
    ld bc, $8939
    ld sp, $4983
    adc c
    ld sp, $390D
    db $FD
    db $FD
    ld c, l
    nop
    add hl, sp
    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $83
    ld c, c
    ld a, [bc]
    add hl, sp
    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    ld c, h
    add d
    db $FD
    inc bc
    ld e, l
    nop
    ld e, h
    add h
    db $FD
    add e
    inc de
    inc bc
    jr nc, jr_02C_5959

    ld [hl-], a
    add e
    inc de
    add h
    db $FD
    inc bc
    ld e, l
    nop
    ld e, h
    add d
    db $FD
    inc bc
    ld l, l
    nop
    ld l, h
    add e
    db $FD
    inc b
    ld [hl-], a
    halt
    ld [hl], a
    ld a, b
    add l
    nop
    ld bc, $849A
    db $FD
    inc bc
    ld l, l
    nop
    ld l, h
    add d
    db $FD

Jump_02C_594A:
    inc bc
    ld a, l
    nop
    ld a, h
    add h
    db $FD
    inc bc
    add [hl]
    add a
    adc b
    add l
    nop
    ld [$FDAA], sp

jr_02C_5959:
    db $FD
    ld sp, $7DFD
    nop
    ld a, h
    add d
    db $FD
    inc b
    ld c, l
    nop
    ld c, h
    jr nc, jr_02C_58E9

    ld sp, $3203
    nop
    jp z, $0086

    ld [$30CA], sp
    ld sp, $3200
    ld c, l
    nop
    ld c, h
    add d
    db $FD
    inc bc
    ld e, l
    nop
    ld e, h
    add l
    nop
    ld bc, $8621
    nop
    ld bc, $8421
    nop
    inc bc
    ld e, l
    nop
    ld e, h
    add d
    db $FD
    inc bc
    ld l, l
    nop
    ld l, h
    add d
    nop
    dec b
    ld hl, $2000
    db $FD
    ld [hl+], a
    add h
    nop

jr_02C_599B:
    inc bc
    jr nz, jr_02C_599B

    ld [hl+], a
    add e
    nop
    inc bc
    ld l, l
    nop
    ld l, h
    add d
    db $FD
    inc bc
    ld a, l
    nop
    ld a, h
    add d
    nop
    dec b
    db $FD
    nop
    db $FD
    or $FD
    add h
    nop
    inc bc
    db $FD
    or $FD
    add e
    nop
    inc bc
    ld a, l
    nop
    ld a, h
    add d
    db $FD
    inc bc
    ld c, l
    nop
    ld c, h
    add d
    nop
    dec b
    ld sp, $3000
    db $FD
    ld [hl-], a
    add h
    nop

jr_02C_59CF:
    add hl, bc
    jr nc, jr_02C_59CF

    ld [hl-], a
    halt
    ld [hl], a
    ld a, b
    ld c, l
    nop
    ld c, h
    add d
    db $FD
    inc bc
    ld e, l
    nop
    ld e, h
    add l
    nop
    rrca
    ld sp, $0000
    ld a, c
    ld a, d
    ld a, e
    nop
    ld sp, $8600
    add a
    adc b
    ld e, l
    nop
    ld e, h
    add d
    db $FD
    inc bc
    ld l, l
    nop
    ld l, h
    adc b
    nop
    inc bc
    adc c
    adc d
    adc e
    add h
    nop
    dec b
    and a
    nop
    ld l, l
    nop
    ld l, h
    add d
    db $FD
    ld b, $7D
    nop
    ld a, h
    sub [hl]
    nop
    ld hl, $0082
    ld bc, $8321
    nop
    ld b, $97
    nop
    nop
    ld hl, $0000
    dec b
    jp z, Jump_02C_7D00

    nop
    ld a, h
    add d
    db $FD
    inc bc
    ld c, l
    nop
    ld c, h
    add d
    nop
    dec b
    db $FD

jr_02C_5A2B:
    nop
    jr nz, jr_02C_5A2B

    ld [hl+], a
    add d
    nop
    dec b
    jp z, $2000

    db $FD
    ld [hl+], a
    add e
    nop
    inc bc
    ld c, l
    nop
    ld c, h
    add d
    db $FD
    inc bc
    ld e, l
    nop
    ld e, h
    add d
    nop
    dec b
    ld b, a
    nop
    db $FD
    or $FD
    add h
    nop
    inc bc
    db $FD
    or $FD
    add e
    nop
    inc bc
    ld e, l
    nop
    ld e, h
    add d
    db $FD
    ld a, [bc]
    ld l, l
    nop
    ld l, h
    jr nz, @+$23

    ld [hl+], a

jr_02C_5A60:
    nop
    jr nc, jr_02C_5A60

    ld [hl-], a
    add h
    nop

jr_02C_5A66:
    add hl, bc
    jr nc, jr_02C_5A66

    ld [hl-], a
    ld hl, $2100
    ld l, l
    nop
    ld l, h
    add d
    db $FD
    inc bc
    ld a, l
    nop
    ld a, h
    add e
    db $FD
    add d
    nop
    ld bc, $8631
    nop
    ld [$00FD], sp
    db $FD
    ld hl, $7DFD
    nop
    ld a, h
    add d
    db $FD
    inc bc
    ld c, l
    nop
    ld c, h
    add e
    db $FD
    add h
    nop
    inc bc
    jr nz, jr_02C_5AB5

    ld [hl+], a
    add d
    nop
    ld [bc], a
    ld sp, $8300
    db $FD
    inc bc
    ld c, l
    nop
    ld c, h
    add d
    db $FD
    inc bc
    ld e, l
    nop
    ld e, h
    add e
    db $FD
    add h
    nop
    add e
    db $FD
    add h
    nop
    add e
    db $FD
    inc bc
    ld e, l
    nop
    ld e, h
    add d

jr_02C_5AB5:
    db $FD
    ld a, [bc]
    ld l, l
    nop
    add hl, sp
    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $83
    db $FD
    ld a, [bc]
    add hl, sp
    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    ld l, h
    add d
    db $FD
    ld [bc], a
    ld a, l
    nop
    add a

Jump_02C_5AD4:
    ld sp, $3905
    db $FD
    ld hl, sp-$03
    add hl, sp
    add a
    ld sp, $0002
    ld a, h
    add d
    db $FD
    rla
    add hl, sp
    dec sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3C
    sbc d
    db $FD
    nop
    dec l
    sub l
    ld bc, $2322
    jp hl


    rlca
    add d
    nop
    jr z, @+$0A

    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0C
    dec c
    ld c, $09
    dec bc
    xor c
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $09
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $09
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $09
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0A
    dec bc
    inc c
    rrca
    add l
    nop
    jr z, jr_02C_5B4B

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1C
    dec e
    ld e, $19
    dec de
    cp c
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $19
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $19

jr_02C_5B4B:
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $19
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1A
    dec de
    inc e
    rra
    add h
    nop
    ld a, [hl+]
    ld c, h
    jr z, jr_02C_5B8A

    dec hl
    inc l
    dec l
    ld l, $2C
    dec l
    ld l, $29
    dec hl
    ld c, c
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $29
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $29
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $29
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2A
    dec hl
    inc l
    cpl
    ld c, l
    add e
    nop
    ld [bc], a

jr_02C_5B8A:
    ld e, h
    ld a, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld a, a
    ld e, l
    add e
    nop
    ld [bc], a
    ld l, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld l, l
    add e
    nop
    ld [bc], a
    ld a, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld a, l
    add e
    nop
    ld [bc], a
    ld c, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld c, l
    add e
    nop
    ld [bc], a
    ld e, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld e, l
    add e
    nop
    ld [bc], a
    ld l, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld l, l
    add e
    nop
    ld [bc], a
    ld a, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld a, l
    add e
    nop
    ld [bc], a
    ld c, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld c, l
    add e
    nop
    ld [bc], a
    ld e, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld e, l
    add e
    nop
    ld [bc], a
    ld l, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld l, l
    add e
    nop
    ld [bc], a
    ld a, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld a, l
    add e
    nop
    ld [bc], a
    ld c, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld c, l
    add e

Jump_02C_5C00:
    nop
    ld [bc], a
    ld e, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld e, l
    add e
    nop
    ld [bc], a
    ld l, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld l, l
    add e
    nop
    ld [bc], a
    ld a, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld a, l
    add e
    nop
    ld [bc], a
    ld c, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld c, l
    add e
    nop
    ld [bc], a
    ld e, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld e, l
    add e
    nop
    ld [bc], a
    ld l, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld l, l
    add e
    nop
    ld [bc], a
    ld a, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld a, l
    add e
    nop
    ld [bc], a
    ld c, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld c, l
    add e
    nop
    ld [bc], a
    ld e, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld e, l
    add e
    nop
    ld [bc], a
    ld l, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld l, l
    add e
    nop
    ld [bc], a
    ld a, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld a, l
    add e
    nop
    ld [bc], a
    ld c, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld c, l
    add e
    nop
    ld [bc], a
    ld e, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld e, l
    add e
    nop
    ld [bc], a
    ld l, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld l, l
    add e
    nop
    ld [bc], a
    ld a, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld a, l
    add e
    nop
    ld [bc], a
    ld c, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld c, l
    add e
    nop
    ld [bc], a
    ld e, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld e, l
    add e
    nop
    ld [bc], a
    ld l, h
    ld l, [hl]
    and [hl]
    ld c, c
    ld [bc], a
    ld l, a
    ld l, l
    add e
    nop
    ld [bc], a
    ld a, h
    ld e, c
    and [hl]
    ld c, c
    ld [bc], a
    ld c, e
    ld e, l
    add h
    nop
    add hl, bc
    ld l, c
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3A
    ld a, $48
    add h
    ld c, c
    dec de
    ld c, d
    ld c, e
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3A
    dec sp
    inc a
    dec a
    ld a, $39
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $39
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3B
    ld l, d
    adc l
    nop
    ld [bc], a
    ld e, b
    ld e, c
    add e
    ld c, c
    ld [bc], a
    ld e, d
    ld e, e
    and [hl]
    nop
    rlca
    ld l, b
    ld l, c
    add hl, sp
    ld a, [hl-]
    inc a
    ld l, d
    ld l, e
    pop bc
    adc e
    nop
    nop
    ldh [$E0], a
    rra
    rra
    ldh a, [$F0]
    inc c
    inc c
    di
    di
    jr nz, jr_02C_5D2B

    ld hl, $FE21
    cp $38
    jr c, @-$37

    rst $00
    inc h
    inc h
    jr c, jr_02C_5D4F

    rst $00
    rst $00
    add h
    add h
    inc c
    inc c
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ldh [rIE], a
    rrca
    rst $38
    di
    rst $38
    inc c
    rst $38
    rst $18

jr_02C_5D2B:
    rst $38
    sbc $FF
    ld bc, $C7FF
    rst $38
    jr c, @+$01

    db $DB
    rst $38
    rst $00
    rst $38
    jr c, @+$01

    ld a, e
    rst $38
    di
    rst $38
    nop
    nop
    nop
    ld bc, $0C01
    inc c
    ld e, $1E
    ccf
    ld a, $5F
    ld e, h
    rst $28
    db $EB
    ld e, a
    ld d, a

jr_02C_5D4F:
    pop bc
    pop bc
    sbc e
    sbc c
    ld a, a
    ld b, b
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    cp a
    rst $38
    call c, $D3FF
    nop
    rst $38
    nop
    cp $00
    di
    nop
    pop hl
    ld bc, $03C1
    and e
    inc b
    inc d
    ld [$00A8], sp
    ld a, $02
    ld h, [hl]
    ccf
    cp a
    add c
    add c
    rst $38
    rst $38
    ld b, b
    ld b, b
    inc hl
    inc hl
    inc l
    inc l
    ld [bc], a
    cp $02
    cp $01
    rst $38
    nop
    rst $38
    ld bc, $02FF
    cp $02
    cp $01
    rst $38
    inc bc
    ld bc, $0103
    ld bc, $0000
    nop
    ld bc, $0300
    ld bc, $0103
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
    ld b, b
    nop
    db $E4
    ld b, b
    xor $E4
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, e
    nop
    rst $30
    ld h, e
    rst $38
    rra
    rst $38
    ldh [$FB], a
    adc e
    ld a, a
    ld a, a
    di
    jp nc, $2121

    ld hl, $FE21
    cp $07
    rst $38
    ld [$0FF8], sp
    rst $28
    db $10
    ldh a, [rIF]
    rst $18
    inc b
    db $FC
    ld [bc], a
    sbc d
    rrca
    rrca
    ldh [rNR41], a
    rst $38
    rst $28
    ld hl, sp+$08
    db $FC
    db $FC
    di
    inc de
    ldh [$E0], a
    pop af
    pop de
    cp $02
    rlca
    nop
    rrca
    rlca
    rra
    db $10
    rra
    rrca
    cpl
    jr nz, @+$09

    inc bc
    ld h, a
    ld h, l
    rst $38
    ldh a, [$08]
    ld [$FCFC], sp
    inc bc
    inc bc
    rst $38
    rst $38
    pop bc
    pop bc
    jr nc, jr_02C_5E3B

    rrca
    rrca
    db $10
    db $10
    inc l
    inc l
    inc hl
    inc hl
    ld b, b
    ld b, b
    rst $38
    rst $38
    add c
    add c
    rst $38
    rst $38
    call nz, $84C4

jr_02C_5E1E:
    add h
    rst $38
    rst $30
    rst $38
    inc bc
    rst $38
    db $FC
    rst $38
    nop
    rst $38
    ld a, $FF
    rst $08
    rst $38
    ldh a, [rIE]
    rst $28
    rst $38
    db $D3
    rst $38
    call c, $BFFF
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop

jr_02C_5E3B:
    rst $38
    dec sp
    rst $38
    ld a, e
    ccf
    ld hl, $5E7F
    ld a, a
    ld e, a
    ccf
    inc l
    rrca
    inc bc
    ccf
    rrca
    ld a, a
    ld h, b
    rst $38
    rra
    rst $38
    rst $00
    rst $38

jr_02C_5E52:
    jr c, jr_02C_5E52

    jp c, $D6FE

    rst $20
    jr nz, jr_02C_5E1E

    ld b, h

jr_02C_5E5B:
    call z, $FFCC
    ld a, a
    ld e, $DE
    ld hl, $20A1
    and b
    inc de
    db $D3
    inc c
    db $FC
    jr nc, jr_02C_5E5B

    rra
    sbc a
    ldh [$E0], a
    rst $38
    rst $30
    cp $02
    ei
    ei
    rst $38
    rra
    pop af
    ld sp, $C8F8
    rst $38
    rst $30
    ldh a, [$E0]
    nop
    rst $38
    ld bc, $02FF
    cp $01
    rst $38
    nop
    rst $38
    ld [bc], a
    cp $04
    db $FC
    ld [bc], a
    cp $00
    nop
    ld bc, $0300
    ld bc, $0001
    nop
    nop
    inc bc
    ld bc, $0307
    inc bc
    ld bc, $FF00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    and h
    cp a
    ld a, [bc]
    dec de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    sub h
    sbc h
    nop
    rst $38
    nop
    rst $38
    nop
    pop af
    nop
    ldh [rSB], a
    di
    inc bc
    rst $38
    ccf
    rst $38
    ld h, c
    pop hl
    db $10
    sub b
    rra
    rst $38

Jump_02C_5ED3:
    nop
    jr nc, @+$01

    rst $38
    add e
    add e
    inc c
    inc c
    ldh a, [$F0]
    ld [$0008], sp
    nop
    nop
    nop
    ld c, $0E
    rra
    rra
    dec c
    inc c
    inc bc
    nop
    ccf
    nop
    ld a, a
    ld e, $7F
    ld l, a
    rra
    nop
    rst $08
    rst $08
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    di
    rst $38
    rrca
    rst $38
    rst $30
    nop
    nop
    nop

jr_02C_5F02:
    nop
    ld bc, $080E
    dec d
    nop
    ld [$1408], sp
    dec e
    jr nz, @+$2B

    ld d, [hl]
    nop
    nop
    ld h, c
    adc d
    rst $08
    jr nz, @-$3F

    ld b, b
    halt
    add hl, bc
    jp $993C


    ld h, [hl]
    or e

jr_02C_5F1E:
    ld c, h
    nop
    nop
    ret nc

    jr z, jr_02C_5F1E

    dec b
    ld e, a
    and b
    dec [hl]
    ld c, d
    ld de, $B0AE
    ld c, e
    ei
    inc b
    nop
    nop
    dec c
    ld [de], a
    cp a
    ld b, b
    ld a, [$8C05]
    ld b, e
    inc b
    cp d
    inc b
    jp hl


    adc h
    ld [hl], e
    scf
    ld c, b
    jr c, jr_02C_5F4A

    jr nc, jr_02C_5F92

    ld l, b
    inc bc
    ld c, e
    inc b
    ld b, [hl]

jr_02C_5F4A:
    add hl, de
    ld c, h
    ld [hl-], a
    ld l, h
    inc de
    ld [$8FB4], sp
    ld d, b
    ld e, b
    and h
    ldh a, [$08]
    ret nc

    dec hl
    jr c, jr_02C_5FA2

    ld e, $A1
    ld sp, $604A
    sbc a
    ldh a, [rIF]
    ld a, b
    add a
    daa
    ld e, b
    rra
    and b
    db $10
    ld l, d
    jr nz, jr_02C_5F4A

    ldh [$1F], a
    rrca
    ld h, b
    ld [$10D7], sp
    db $EC
    ldh a, [$09]
    jr nc, jr_02C_5F84

    jr jr_02C_5F02

    inc c
    ld d, e
    rrca
    ldh [rP1], a
    nop
    nop
    nop
    nop

jr_02C_5F84:
    nop
    stop
    ld a, [bc]
    nop
    dec h

jr_02C_5F8A:
    ld [bc], a
    ld [hl], d
    inc c
    nop
    nop
    ld [$9000], sp

jr_02C_5F92:
    nop
    ret nc

    nop
    ld h, b
    nop
    add d
    nop
    ld h, $00
    ld l, h
    nop
    jr nc, jr_02C_5F9F

jr_02C_5F9F:
    nop
    rst $38
    nop

jr_02C_5FA2:
    rst $38

jr_02C_5FA3:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld de, $00EE
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr nc, jr_02C_5F8A

    ldh a, [rIF]
    ldh a, [rIF]
    inc b
    ei
    ld b, $F9
    rrca
    ldh a, [rIF]
    ldh a, [$0D]
    ld a, [c]
    inc h
    db $DB
    ld [hl-], a
    call $C33C
    nop
    rst $38
    ld [$18F7], sp
    rst $20
    jr c, @-$37

    ld a, h
    add e
    db $EC
    inc de
    call c, $DC33
    inc sp
    rst $38
    nop
    rst $18
    jr nz, jr_02C_5FA3

    ld d, b
    sbc e
    ld h, h
    rst $08
    jr nc, @+$01

    nop
    rst $38
    ld b, b
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38

jr_02C_5FFE:
    nop
    inc de
    inc h
    rlca
    jr jr_02C_6012

    ld de, $221D
    inc sp
    ld c, h
    ld l, c
    ld d, $61
    ld e, $62
    add hl, de
    rrca
    ldh a, [$7C]

jr_02C_6012:
    add e
    ld l, $51
    ld h, a
    sbc b
    ret c

    inc hl
    adc h
    ld d, b
    rlca
    cp b
    inc c
    inc de
    rrca
    ldh a, [rSC]
    dec a
    ld b, $F9
    rrca
    ld [hl], b
    ld [hl], c
    adc [hl]
    jr nz, jr_02C_5FFE

    ret nz

    cpl
    ld b, b
    ccf
    ld a, [hl]
    add c
    rlca
    ld hl, sp+$0B
    db $F4
    dec a
    jp nz, $3FC0

    scf
    ret z

    inc e
    db $E3
    ld [$36F7], sp

jr_02C_6040:
    ld c, b
    ld h, d
    dec d
    ld sp, $664A
    add hl, de
    inc [hl]
    ld c, d
    ld a, $01
    ld sp, $204A
    rlca
    ld h, b

jr_02C_6050:
    sub a
    ldh [rNR33], a
    jr nc, @-$2F

    jr jr_02C_607E

    inc e
    ld h, e
    rrca
    or b
    ld [$90F7], sp
    ld l, a
    jr nc, jr_02C_60AE

    inc e
    ld [hl+], a
    inc de
    xor h
    add hl, sp
    add $4F
    and b
    adc b
    ld d, l
    sub b
    ld l, [hl]
    ld h, b
    sbc a
    jr jr_02C_6094

    jr nz, jr_02C_6040

    ret nz

    inc de
    ret nz

    cpl
    jr nz, jr_02C_6050

    inc de
    inc l
    inc e
    add e
    add hl, de

jr_02C_607E:
    ld b, [hl]
    nop
    nop
    ld b, b

jr_02C_6082:
    nop
    add h
    ld b, b
    sub b
    ld b, b
    ld h, b
    nop
    ld a, [bc]
    nop
    call z, $2030
    nop
    ld bc, $03FF
    ld a, a
    rlca

jr_02C_6094:
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    ld sp, $33CE
    call $857A
    ld a, c
    and [hl]
    ld e, b
    or a
    jr z, jr_02C_6082

    nop
    rst $38
    nop

jr_02C_60AE:
    rst $38
    ldh [$9F], a
    ld h, b
    sbc a
    ret z

    scf
    sub h
    ld l, e
    ld e, $E9
    ld e, $E5
    inc c
    di
    nop
    rst $38
    ld a, $C1
    dec sp
    call nz, $E61B
    dec e
    db $E3
    ld c, $F1
    inc bc
    db $FC
    nop
    rst $38
    nop
    rst $38
    cp b
    ld [hl], a
    xor b
    ld [hl], a
    ret nc

    ld l, a
    or b
    ld c, a
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc a
    ld h, b
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $28
    db $10
    rst $18
    inc l
    rst $20
    jr @+$01

    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    add b
    rst $28
    inc d
    di
    inc c
    rst $38
    nop
    rst $38
    nop
    ld bc, $0302
    inc b
    rlca
    ld [$413E], sp
    ld a, l
    inc bc
    ld b, [hl]
    cp c
    add c
    ld d, [hl]
    ld a, [$FF07]
    nop
    ldh [rNR31], a
    nop
    rst $08
    inc bc
    cp a
    ld c, $DE
    call c, $39FD
    ld a, [$6582]
    add b
    ld b, b
    ret nz

    jr nz, jr_02C_6184

    add b
    and b
    ret nc

    ld [hl], b
    add b
    or b
    ld b, b
    ld [hl], b
    add b
    ldh a, [$08]
    rst $38
    nop
    ld a, c
    nop
    inc sp
    ld b, b
    rlca
    jr nz, jr_02C_613F

    nop
    nop
    rlca
    nop
    nop
    nop
    nop

jr_02C_613F:
    or b
    ld c, a
    rst $38
    nop
    cp a
    ld b, b
    rst $30
    nop
    ld a, [c]
    nop
    ld a, d
    add b
    nop
    ld a, b
    nop
    nop
    rlca
    jr c, jr_02C_618D

    ld b, h
    ld b, a
    cp b
    and c
    ld l, [hl]
    call c, $B73D
    ld c, a
    call $F333
    inc c
    ldh a, [$08]
    ld hl, sp+$04
    db $FC
    ld [bc], a
    db $F4
    ld a, [bc]
    inc c
    ld a, [$F9F6]
    adc $F1

jr_02C_616D:
    rra
    and b
    nop
    nop
    nop
    ld [hl], b
    jr nz, jr_02C_616D

    db $10
    ld a, c
    ld bc, $0232
    ld bc, $1003
    ld bc, $0002
    nop
    nop
    nop
    nop

jr_02C_6184:
    nop
    ret nz

    jr nz, jr_02C_61A8

    ret nz

    ld h, b
    sub b
    ldh a, [rP1]

jr_02C_618D:
    ldh a, [rP1]
    nop
    nop
    nop
    inc c
    inc b
    ld e, $10
    ld a, $28
    ld a, [hl]
    nop
    ld a, h
    nop
    jr c, jr_02C_619E

jr_02C_619E:
    nop
    nop
    nop
    ld b, $0F
    nop
    ld b, $30
    ld a, b
    nop

jr_02C_61A8:
    jr nc, jr_02C_61AA

jr_02C_61AA:
    nop
    inc c
    ld e, $00
    inc c
    or a
    ld a, b
    call z, $B833
    rlca
    ld l, b

jr_02C_61B6:
    rra
    ld d, b
    ccf
    and l
    jr jr_02C_61B6

    ld bc, $6094
    db $E4
    dec de
    cp c
    add $57
    add sp, $03
    db $FC
    ld b, $F9
    rrca
    ldh a, [$34]
    jp $06E9


    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    rst $38
    add b
    rst $38
    sbc h
    rst $28
    xor b
    ld e, a
    ld d, e
    ccf
    ld h, $3F
    inc l
    inc de
    ld [de], a
    rrca
    ld [$00FF], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    nop

jr_02C_61F9:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $FD
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, l
    sbc d
    or e
    call z, $CCB3
    dec sp
    call nz, $CC33
    inc [hl]
    res 4, c
    ld d, a
    rst $20
    rra
    ld hl, sp+$04
    db $FC
    ld [bc], a
    cp $01
    jp $1D3C


    cp $71
    ld a, [$CCC3]
    rrca
    ld [hl], b
    cp $00
    db $FD
    nop
    cp [hl]
    nop

jr_02C_6235:
    ld [hl], b
    ld [$2040], sp
    nop
    add b
    nop
    nop
    nop
    nop
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    cp e
    ld b, b
    ld d, [hl]
    jr nz, jr_02C_626F

    jr nz, jr_02C_625F

    nop

jr_02C_625F:
    adc a
    ld d, b
    adc a
    ld [hl], b
    rst $08
    jr nz, jr_02C_6235

    jr nc, @-$2F

    jr nc, jr_02C_61F9

    ld [hl], b
    ld d, $60
    inc l
    nop

jr_02C_626F:
    nop
    ld bc, $0000
    jr @+$26

    inc l
    ld d, d
    ld a, $40
    inc e
    ld [hl+], a
    nop
    nop
    nop
    nop
    ldh [rNR10], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0200], sp
    nop
    daa
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    rra
    db $10
    rra
    ld de, $121F
    rra
    ld d, $09
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    sbc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc h
    rst $38
    ld l, h
    sbc a
    sub b
    ccf
    jr nz, jr_02C_6337

    jr z, jr_02C_6314

    or h
    nop
    add hl, bc
    ld de, $021C
    ccf
    db $FC
    ld d, l
    jr @+$1B

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1C
    dec e
    ld e, $1A

jr_02C_6314:
    dec de
    inc e
    dec e
    ld e, $1F
    ld c, l
    nop
    db $FC
    ld d, h
    jr z, @+$2B

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2C
    dec l
    ld l, $2A
    dec hl
    inc l
    dec l
    ld l, $2F
    ld e, a
    nop
    db $FC
    ld h, h
    jr c, jr_02C_636C

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_02C_6337:
    ld a, $3C
    dec a
    ld a, $3A
    dec sp
    inc a
    dec a
    ld a, $3F
    ld l, a
    ld h, a
    db $FC
    ld [hl], h
    ld l, e
    adc d
    ld bc, $C401
    add e
    ld bc, $6C06
    ld a, a
    dec h
    db $FC
    add h
    ld e, e
    add d
    ld bc, $A001
    add e
    and c
    ld b, $A2
    ld bc, $B301
    ld bc, $1001
    or a
    ld bc, $8F5C
    dec h
    db $FC
    ld d, h
    ld e, e
    ld bc, $A4A0

jr_02C_636C:
    or c
    rst $18
    pop af
    and e
    and d
    add h
    ld bc, $C710
    or [hl]
    ld e, h
    ld e, a
    dec h
    db $FC
    ld h, h
    ld e, e
    ld bc, $E5B0
    or c
    rst $28
    sub b
    sub c
    and e
    add e
    and c
    dec bc
    and d
    ld bc, $5CC6
    ld l, a
    dec h
    db $FC
    ld [hl], h
    ld e, e
    ld bc, $83C0
    pop bc
    inc bc
    sub h
    or c
    sub e
    add e
    pop bc
    ld b, $C2
    ld bc, $8E01
    dec h
    dec h
    inc bc
    db $FC
    add h
    ld e, e
    add l
    ld bc, $C00A
    pop bc
    jp nz, $9998

    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    add d
    dec h
    rlca
    db $FC
    ld d, h
    ld e, e
    ld bc, $BAB9
    cp e
    add d
    ld bc, $9C09
    sbc l
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    add d
    dec h
    dec bc
    db $FC
    ld h, h
    push bc
    or h
    ret


    jp z, $01CB

    sbc l
    xor h
    xor l
    add [hl]
    dec h
    ld b, $56
    ld d, a
    dec h
    ld d, l
    ld [hl], h
    ld e, e
    add e
    ld bc, $B403
    or [hl]
    ld l, a
    add d
    xor l
    ld b, $57
    dec h
    dec h
    ld [hl], l
    dec h
    dec h
    db $10
    ld h, [hl]
    ld h, a
    dec h
    ld h, a
    add h
    ld e, e
    and b
    and c
    and d
    ld bc, $7FC6
    ld [$0F4D], sp
    xor l
    add a
    dec h

Call_02C_6401:
    dec c
    db $FC
    ld d, h
    ld e, e
    or b
    sub c
    and e
    and d
    cp b
    rra
    jr jr_02C_646A

    rra
    ld e, a
    add a
    dec h
    dec c
    db $FC
    ld h, h
    ld e, e
    ret nz

    sub h
    ldh a, [$B2]
    ret z

    cpl
    jr z, jr_02C_648A

    cpl
    ld l, a
    add e
    dec h
    ld [bc], a
    ld d, [hl]
    ld d, a
    add d
    dec h
    dec c
    db $FC
    ld [hl], h
    ld e, e
    ld bc, $C1C0
    jp nz, $3FC4

    jr c, jr_02C_646D

    ccf
    ld a, a
    add e
    dec h
    ld [bc], a
    ld h, [hl]
    ld h, a
    add d
    dec h
    dec c
    db $FC
    add h
    ld e, e
    cp b
    cp c
    cp d
    ld bc, $4FB8
    ld c, b
    sbc b
    adc [hl]
    adc a
    add d
    dec h
    ld bc, $8475
    dec h
    inc c
    db $FC
    ld d, h
    ld e, e
    ret z

    ret


    jp z, $C801

    call nz, $A88E
    sbc [hl]
    adc b
    dec h
    inc bc
    db $FC
    ld h, h
    and b
    add h
    and c
    ld b, $A2
    ld bc, $0B1F
    rrca

jr_02C_646A:
    xor [hl]
    add [hl]
    dec h

jr_02C_646D:
    db $10
    ld d, l
    db $FC
    ld [hl], h
    or b
    or c
    add d
    or c
    ld a, [c]
    and e
    and d
    cpl
    dec de
    rra
    ld e, a
    xor [hl]
    ld d, l
    add d
    dec h
    ld b, $65
    dec h
    dec h
    ld [hl], l
    add h
    ret nz

    add e
    pop bc
    add hl, bc

jr_02C_648A:
    sub h
    or c
    or d
    ccf
    dec hl
    cpl
    ld l, a
    xor [hl]
    ld h, a
    add l
    dec h
    inc b
    db $FC
    ld d, h
    rst $30
    or l
    add d
    ld bc, $C008
    pop bc
    jp nz, $3B4C

    ccf
    ld a, a
    xor [hl]
    add d
    dec h
    inc de
    ld d, l
    dec h
    ld [hl], l
    dec h
    db $FC
    ld h, h
    ld e, e
    ld bc, $B4B6
    ld bc, $01B8
    or a
    or [hl]
    ld l, h
    adc a
    xor [hl]
    ld [hl], l
    add l
    dec h
    ld c, $FC
    ld [hl], h
    ld e, e
    push bc
    add $C5
    ld bc, $01C8
    rst $00
    add $5C
    ld d, a
    xor [hl]
    add [hl]
    dec h
    ld c, $FC
    add h
    add l
    sub a
    sbc b
    sbc c
    sub a
    sbc b
    sbc c
    sub a
    sbc b
    adc [hl]
    ld h, a
    xor [hl]
    add e
    dec h
    db $10
    ld h, a
    dec h
    dec h
    db $FC
    ld [hl], l
    sub l
    and a
    xor b
    xor c
    and a
    xor b
    xor c
    and a
    xor b
    sbc [hl]
    xor [hl]
    add a
    dec h
    ld bc, $8AFC
    nop
    ld bc, $8875
    dec h
    nop
    ld e, $84
    inc bc
    ret nz

    ld e, [hl]
    ld [$4302], sp
    pop bc
    add e
    ld b, e
    adc h
    ld [$4382], sp
    ld [bc], a
    jp $8843


    ld [$4301], sp
    add l
    nop
    add l
    ld b, e
    add [hl]
    ld [$4301], sp
    add h
    nop
    ld bc, $8643
    ld [$4303], sp
    nop
    ld b, c
    adc c
    nop
    ld bc, $8443
    ld [$4201], sp
    add [hl]
    nop
    ld bc, $8542
    ld [$4303], sp
    nop
    ld b, c
    add h
    nop
    add h
    ld b, e
    add d
    nop
    ld bc, $8343
    ld [$4201], sp
    add h
    nop
    inc bc
    ld b, c
    nop
    ld b, d
    add [hl]
    ld [$4303], sp
    nop
    ld b, c
    add e
    nop
    ld bc, $8343
    ld [$4303], sp
    nop
    ld b, e
    add e
    ld [$4201], sp
    add h
    nop
    inc bc
    ld b, c
    nop
    ld b, d
    add [hl]
    ld [$4301], sp
    add h
    nop
    ld bc, $8443
    ld [$4303], sp
    nop
    ld b, e
    add e
    ld [$4301], sp
    add [hl]
    nop
    ld bc, $8642
    ld [$4303], sp
    nop
    nop
    add d
    ld b, e
    add l
    ld [$4303], sp
    nop
    ld b, e
    add d
    ld [$4301], sp
    add a
    nop
    ld bc, $8643
    ld [$4304], sp
    nop
    nop
    ld b, e
    add [hl]
    ld [$4305], sp
    nop
    ld b, e
    ld [$8242], sp
    nop
    add l
    ld b, e
    ld [bc], a
    nop
    ld b, e
    add [hl]
    ld [$4304], sp
    nop
    nop
    ld b, e
    add h
    ld [$4304], sp
    jp nz, $0043

    add d
    ld b, e
    add d
    nop
    ld bc, $8443
    ld [$4302], sp
    nop
    add d
    ld b, e
    ld bc, $8442
    ld [$4304], sp
    nop
    nop
    ld b, e
    add e
    ld [$4301], sp
    add h
    nop
    inc b
    ld b, e
    nop
    nop
    ld b, e
    add [hl]
    ld [$0084], sp
    inc b
    add $08
    ld [$8343], sp
    nop
    inc b
    ld b, e
    ld [$4308], sp
    add a
    nop
    ld bc, $8643
    ld [$4201], sp
    add h
    nop
    ld bc, $83C6
    ld [$4304], sp
    nop
    nop
    ld b, e
    add e
    ld [$4301], sp
    add l
    nop
    ld bc, $8743
    ld [$4206], sp
    nop
    nop
    ld b, b
    nop
    add $83
    ld [$4201], sp
    add e
    nop
    ld bc, $8343
    ld [$4301], sp
    add h
    nop
    ld bc, $8743
    ld [$4201], sp
    add h
    nop
    ld bc, $83C6
    ld [$4204], sp
    nop
    nop
    ld b, e
    add l
    ld [$4382], sp
    add d
    nop
    ld bc, $8743
    ld [$4201], sp
    add h
    nop
    ld bc, $83C6
    ld [$4204], sp
    nop
    nop
    ld b, e
    add [hl]
    ld [$4304], sp
    nop
    nop
    ld b, e
    adc b
    ld [$4301], sp
    add e
    nop
    ld bc, $83C6
    ld [$4204], sp
    nop
    nop
    ld b, e
    add a
    ld [$4304], sp
    nop
    nop
    ld b, e
    adc b
    ld [$4304], sp
    nop
    nop
    add $83
    ld [$4303], sp
    nop

Jump_02C_6665:
    nop
    add e
    ld b, e
    ld [bc], a
    ret nz

    ld b, e
    add h
    ld [$4304], sp
    nop
    nop
    ld b, e
    adc b
    ld [$4382], sp
    add d
    ld [$4203], sp
    ld b, e
    ld b, e
    add a
    nop
    ld bc, $8443
    ld [$4307], sp
    nop
    nop
    ld b, e
    call nz, Call_02C_4243
    adc b
    ld [$008B], sp
    ld bc, $8443
    ld [$4301], sp
    add l
    nop
    add d
    ld b, e
    add l
    ld [$C501], sp
    adc h
    nop
    ld bc, $8343
    ld [$4301], sp
    add [hl]
    nop
    ld bc, $8543
    ld [$C501], sp
    adc c
    nop
    ld bc, $8341
    nop
    ld bc, $8343
    ld [$4301], sp
    add l
    nop
    ld bc, $8543
    ld [$C502], sp
    nop
    add [hl]
    ld b, e
    ld bc, $8640
    nop
    inc b
    ld b, e
    ld [$4308], sp
    add l
    nop
    ld bc, $8643
    ld [$4301], sp
    add [hl]
    ld [$4387], sp
    add h
    ld [$4301], sp
    add e
    nop
    ld bc, $9A43
    ld [$4383], sp
    ret nz

jr_02C_66E5:
    ld h, c
    ld [$1900], sp
    pop hl
    nop
    ld c, $0F
    ld [hl], c
    ld [bc], a
    sbc d
    db $FD
    rla
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $82
    db $FD
    ld bc, $834D
    db $FD
    sub d
    ld sp, $4C04
    db $FD
    db $FD
    ld e, l
    add e
    db $FD
    add h
    nop
    inc bc
    add [hl]
    add a
    adc b
    add h
    nop
    ld bc, $8320
    ld hl, $2206
    nop
    nop
    ld e, h
    db $FD
    db $FD
    ld bc, $836D
    db $FD
    add l
    nop
    ld bc, $85AA
    nop
    add l
    db $FD
    add d
    nop
    ld a, [bc]
    ld l, h
    db $FD
    db $FD
    ld a, l
    jr nc, jr_02C_6771

    ld [hl-], a
    halt
    ld [hl], a
    ld a, b
    add d
    nop
    ld bc, $85CA
    nop
    add l
    db $FD
    add d
    nop
    inc b
    ld a, h
    db $FD
    db $FD
    ld c, l
    add e
    nop
    inc bc
    add [hl]
    add a
    adc b
    add h
    nop
    dec b
    ld a, c
    ld a, d
    ld a, e
    nop
    jr nc, jr_02C_66E5

    ld sp, $3206
    nop
    nop
    ld c, h
    db $FD
    db $FD
    ld bc, $835D
    nop
    ld a, [bc]
    sub [hl]
    sub a

jr_02C_6771:
    sbc b
    jr nz, @+$23

    ld [hl+], a
    nop
    adc c
    adc d
    adc e
    adc b
    nop
    inc b
    ld e, h
    db $FD
    db $FD
    ld l, l
    add e
    nop
    inc bc
    and [hl]
    and a
    nop
    add e
    db $FD
    add d
    nop
    ld bc, $899A
    nop
    ld a, [bc]
    ld l, h
    db $FD
    db $FD
    ld a, l
    nop
    jr nz, jr_02C_67B8

    nop
    jp z, $8300

    db $FD
    add d
    nop
    ld bc, $89AA
    nop
    dec b
    ld a, h
    db $FD
    db $FD
    ld a, l
    nop
    add d
    db $FD
    add e
    nop
    add e
    db $FD
    add d
    nop
    dec b
    cp d
    nop
    jr nz, jr_02C_67D5

    ld [hl+], a
    add d
    nop
    inc b

jr_02C_67B8:
    ld a, c
    ld a, d
    ld a, e
    ld c, h
    add d
    db $FD
    inc b
    ld c, l
    nop
    jr nc, jr_02C_67F5

    add e
    nop
    inc bc
    jr nc, jr_02C_67F9

    ld [hl-], a
    add d
    nop
    ld [bc], a
    jp z, $8300

    db $FD
    add d
    nop
    inc b
    adc c
    adc d

jr_02C_67D5:
    adc e
    ld e, h
    add d
    db $FD
    ld bc, $8D5D
    nop
    add e
    db $FD
    add e
    nop
    inc bc
    sbc d
    nop
    ld l, h
    add d
    db $FD

jr_02C_67E7:
    inc b
    ld l, l
    nop
    jr nz, jr_02C_680E

    adc d
    nop
    add e
    db $FD
    add e
    nop
    inc bc
    xor d
    nop

jr_02C_67F5:
    ld a, h
    add d
    db $FD
    ld [bc], a

jr_02C_67F9:
    ld a, l
    nop
    add d
    db $FD
    add d
    nop
    inc b
    jr nz, jr_02C_6823

    ld hl, $8422
    nop
    inc bc
    jr nc, jr_02C_683A

    ld [hl-], a
    add e
    nop
    inc bc
    cp d

jr_02C_680E:
    nop
    ld c, h
    add d
    db $FD
    inc b
    ld c, l
    nop
    jr nc, jr_02C_6849

    add d
    nop
    add h
    db $FD
    adc d
    nop
    inc bc
    jp z, Jump_02C_5C00

    add d
    db $FD

jr_02C_6823:
    ld bc, $855D
    nop
    add h
    db $FD
    add l
    nop
    ld bc, $8621
    nop
    inc b
    ld l, h
    db $FD
    db $FD
    ld l, l
    add l
    nop
    add h
    db $FD
    ld a, [bc]
    nop

jr_02C_683A:
    halt
    ld [hl], a
    ld a, b
    jr nz, jr_02C_6878

    ld hl, $2100
    ld [hl+], a
    add d
    nop
    inc b
    ld a, h
    db $FD
    db $FD

jr_02C_6849:
    ld a, l
    add e
    nop
    ld [bc], a
    ld hl, $8400
    db $FD
    ld [$8600], sp
    add a
    adc b
    add hl, sp
    or $FD
    ld hl, $FD82
    add d
    nop
    dec b
    ld c, h
    db $FD
    db $FD
    ld c, l
    jr nz, jr_02C_67E7

    ld hl, $3903
    ld hl, $8230
    ld sp, $3206
    nop
    sub [hl]
    sub a
    sbc b
    ld sp, $FD85
    add d
    nop
    inc b

jr_02C_6878:
    ld e, h
    db $FD
    db $FD
    ld e, l
    add e
    db $FD
    ld [bc], a
    or $39
    add l
    nop

jr_02C_6883:
    ld [bc], a
    and [hl]
    and a
    add d
    nop
    ld bc, $8431
    db $FD
    add d
    nop
    inc b
    ld l, h
    db $FD
    db $FD
    ld l, l
    add h
    db $FD
    ld bc, $8631
    nop
    ld bc, $83CA
    nop
    add h
    db $FD
    add d
    nop
    ld b, $7C
    db $FD
    db $FD
    ld a, l
    db $FD
    ld hl, sp-$7E
    db $FD
    adc e
    ld hl, $3006
    ld sp, $3231
    ld hl, $1A21
    ld a, h
    db $FD
    db $FD
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $9A
    db $FD
    nop
    jr z, jr_02C_6883

    inc b
    and c
    ld [$4201], sp
    and l
    ld [$4204], sp
    ld b, c
    nop
    ld b, d
    and e
    ld [$4201], sp
    add h
    nop
    inc bc
    ld b, d
    call nz, $A042
    ld [$4201], sp
    add a
    nop
    ld bc, $9F42
    ld [$4204], sp
    nop
    nop
    ld [$0083], sp
    ld bc, $9342
    ld [$4204], sp
    ld b, c
    ld [$82C1], sp
    ld b, d
    add [hl]
    ld [$4201], sp
    add h
    nop
    add e
    ld b, d
    sub e
    ld [$4206], sp
    nop
    nop
    ld b, b
    nop
    nop
    ld bc, $8542
    ld [$4282], sp
    ld bc, $8300
    ld b, d
    sub [hl]
    ld [$4201], sp
    add [hl]
    nop
    ld bc, $8342
    ld [$4201], sp
    add e
    nop
    ld bc, $9742
    ld [$4204], sp
    nop
    nop
    ld b, b
    add e
    nop
    ld bc, $8442
    ld [$4202], sp
    nop
    add d
    ld b, d
    sub a
    ld [$4201], sp
    add [hl]
    nop
    ld bc, $8442
    ld [$4204], sp
    nop
    nop
    ld b, d
    sbc b
    ld [$4202], sp
    nop
    add h
    ld b, d
    ld [bc], a
    nop
    ld b, d
    add h
    ld [$4203], sp
    nop
    ld b, d
    sbc c
    ld [$4203], sp
    nop
    ld b, d
    add d
    ld [$4203], sp
    nop
    ld b, d
    add e
    ld [$4204], sp
    nop
    nop
    ld b, d
    sbc c
    ld [$4203], sp
    nop
    ld b, d
    add d
    ld [$4203], sp
    nop
    ld b, d
    add e
    ld [$4203], sp
    nop
    ld b, d
    adc c
    ld [$4283], sp
    adc l
    ld [$4206], sp
    nop
    nop
    ld b, d
    ld [$0208], sp
    ld b, d
    nop
    add d
    ld b, d
    ld [bc], a
    jp nz, $8242

    nop
    ld bc, $8842
    ld [$4204], sp
    nop
    nop
    ld b, d
    adc b
    ld [$4283], sp
    inc bc
    ret nz

    ld b, d
    ld b, d
    add d
    nop
    inc b
    ld b, d
    ld [$4208], sp
    add [hl]
    nop
    ld bc, $8942
    ld [$4204], sp
    nop
    nop
    add $87
    ld [$4201], sp
    adc b
    nop
    inc b
    ld b, d
    ld [$4208], sp
    add h
    nop
    inc bc
    ld b, b
    nop
    ld b, d
    adc b
    ld [$4201], sp
    add e
    nop
    ld [bc], a
    add $08
    add [hl]
    ld b, d
    ld [bc], a
    nop
    ld b, b
    add a
    nop
    inc b
    ld b, d
    ld [$4208], sp
    add [hl]
    nop
    ld bc, $8842
    ld [$4201], sp
    add e
    nop
    ld [bc], a
    add $C5
    adc a
    nop
    inc b
    ld b, d
    ld [$4208], sp
    add [hl]
    nop
    ld bc, $8842
    ld [$4201], sp
    add e
    nop
    ld [bc], a
    add $C5
    adc e
    nop
    inc b
    ld b, b
    nop
    nop
    ld b, d
    add h
    ld [$4203], sp
    nop
    nop
    add d
    ld b, d
    ld [bc], a
    nop
    ld b, d
    adc b
    ld [$4202], sp
    nop
    add d
    ld b, d
    ld [bc], a
    ld [$88C5], sp
    nop
    ld bc, $8440
    nop
    ld bc, $8641
    ld [$4282], sp
    ld [bc], a
    ld [$8242], sp
    nop
    ld bc, $8642
    ld [$4204], sp
    nop
    nop
    ld b, d
    add e
    ld [$4286], sp
    add a
    nop
    ld bc, $8941
    ld [$4205], sp
    nop
    nop
    ld b, d
    ld [$4282], sp
    ld b, $C3
    ld b, d
    ld [$0042], sp
    ld b, d
    adc d
    ld [$4201], sp
    add [hl]
    nop
    ld bc, $8942
    ld [$4203], sp
    nop
    nop
    add d
    ld b, d
    add h
    nop
    add d
    ld b, d
    ld [bc], a
    nop
    ld b, d
    adc e
    ld [$4201], sp
    add h
    nop
    ld bc, $8A42
    ld [$4201], sp
    adc e
    nop
    ld bc, $8C42
    ld [$4284], sp
    adc h
    ld [$4282], sp
    add d
    nop
    ld bc, $8440
    nop
    add d
    ld b, d
    sbc a
    ld [$4201], sp
    add [hl]
    nop
    ld bc, $A142
    ld [$4282], sp
    add e
    nop
    add d
    ld b, d
    and e
    ld [$4203], sp
    nop
    ld b, d
    and [hl]
    ld [$4201], sp
    ret nz

    ld e, b
    ld [$1E00], sp
    add h
    inc bc
    sbc a
    nop
    sbc h
    ld [$0082], sp
    inc b
    ld [$0800], sp
    pop bc
    add d
    nop
    add d
    ld [$0282], sp
    add e
    nop
    adc h
    ld [bc], a
    add d
    nop
    dec b
    ld [$0000], sp
    ld [$8200], sp
    ld [$0082], sp
    add d
    ld [$0282], sp
    add e
    nop
    adc h
    ld [bc], a
    add d
    nop
    dec b
    ld [$0000], sp
    ld [$8300], sp
    ld [$0003], sp
    ld [$8208], sp
    ld [bc], a
    add e
    nop
    add h
    ld [bc], a
    add e
    ld [$0285], sp
    add d
    nop
    add hl, bc
    ld [$0000], sp
    ld [$0800], sp
    nop
    ld [$8200], sp
    ld [$0287], sp
    add d
    ld [$C002], sp
    nop
    add e
    ld [$0285], sp
    ld b, $08
    nop
    nop
    ld [$0800], sp
    add e
    nop
    add d
    ld [$0287], sp
    add d
    ld [$0083], sp
    add d
    ld [$0285], sp
    ld [$0008], sp
    nop
    ld [$0800], sp
    nop
    ld [$0282], sp
    ld bc, $8708
    ld [bc], a
    add d
    ld [$0082], sp
    add e
    ld [$0285], sp
    ld b, $08
    nop
    nop
    ld [$0800], sp
    add d
    nop
    add d
    ld [bc], a
    ld bc, $8708
    ld [bc], a
    add d
    ld [$0083], sp
    add d
    ld [$0285], sp
    ld [$0008], sp
    nop
    ld [$0800], sp
    nop
    ld [$0282], sp
    ld bc, $8708
    ld [bc], a
    add d
    ld [$0283], sp
    add d
    ld [$0285], sp
    rlca
    ld [$0000], sp
    ld [$0800], sp
    nop
    add h
    ld [$0293], sp
    ld b, $08
    nop
    nop
    ld [$0800], sp
    add d
    nop
    inc bc
    ld [bc], a
    ld [$9308], sp
    ld [bc], a
    add hl, bc
    ld [$0000], sp
    ld [$0800], sp
    nop
    ld [$8202], sp
    ld [$0293], sp
    ld b, $08
    nop
    nop
    ld [$0800], sp
    add d
    nop
    inc bc
    ld [bc], a
    ld [$8208], sp
    nop
    sub c
    ld [bc], a
    add hl, bc
    ld [$0000], sp
    ld [$0800], sp
    nop
    ld [$8202], sp
    ld [$0082], sp
    sub c
    ld [bc], a
    ld b, $08
    nop
    nop
    ld [$0800], sp
    add d
    nop
    inc bc
    ld [bc], a
    ld [$8308], sp
    nop
    adc b
    ld [bc], a
    add e
    nop
    add l
    ld [bc], a
    add hl, bc
    ld [$0000], sp
    ld [$0800], sp
    nop
    ld [$8202], sp
    ld [$028B], sp
    add e
    nop
    add l
    ld [bc], a
    ld b, $08
    nop
    nop
    ld [$0800], sp
    add d
    nop
    inc bc
    ld [bc], a
    ld [$8808], sp
    ld [bc], a
    add d
    nop
    ld bc, $8302
    nop
    add l
    ld [bc], a
    add hl, bc
    ld [$0000], sp
    ld [$0800], sp
    nop
    ld [$8202], sp
    ld [$0288], sp
    add h
    nop
    add a
    ld [bc], a
    rlca
    ld [$0000], sp
    ld [$0800], sp
    nop
    add h
    ld [$0289], sp
    add d
    nop
    add [hl]
    ld [bc], a
    add d
    nop
    inc b
    ld [$0000], sp
    ld [$0085], sp
    add h
    ld [bc], a
    ld bc, $8700
    ld [bc], a
    add d
    nop
    add l
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld [$0082], sp
    ld b, $08
    nop
    nop
    ld [$0800], sp
    add h
    ld [bc], a
    add d
    nop
    adc l
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld [$0082], sp
    ld bc, $8408
    nop
    ld bc, $9508
    ld [bc], a
    inc bc
    ld [$0000], sp
    add [hl]
    ld [$0295], sp
    inc b
    ld [$0000], sp
    ld [$0085], sp
    sub l
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0085], sp
    adc h
    ld [bc], a
    ld bc, $8600
    ld [bc], a
    add d
    nop
    inc b
    ld [$0000], sp
    ld [$0085], sp
    adc h
    ld [bc], a
    ld bc, $8800
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0085], sp
    adc h
    ld [bc], a
    ld bc, $8800
    ld [bc], a
    inc bc
    ld [$0000], sp
    sbc h
    ld [$00A2], sp
    nop
    ld e, $84
    inc bc
    and a
    ld [$4A82], sp
    sbc e
    ld [$4503], sp
    nop
    ld c, d
    sub a
    ld [$4482], sp
    inc b
    pop bc
    ld c, d
    ld b, l
    nop
    add a
    ld c, d
    dec b
    ld b, [hl]
    ld c, d
    ret nz

    ld c, d
    ld b, a
    adc h
    ld [$4A01], sp
    sub c
    nop
    ld bc, $8B4A
    ld [$4A01], sp
    sub c
    nop
    ld bc, $8B4A
    ld [$4A01], sp
    add [hl]
    nop
    add [hl]
    ld c, d
    add [hl]
    nop
    add h
    ld c, d
    adc b
    ld [$4A01], sp
    add h
    nop
    ld bc, $864A
    ld [$4A01], sp
    adc c
    nop
    ld bc, $874A
    ld [$4A01], sp
    add h
    nop
    ld bc, $864A
    ld [$4A01], sp
    adc d
    nop
    inc bc
    ld c, d
    ld [$8208], sp
    ld c, d
    add e
    ld [$4A01], sp
    add e
    nop
    ld bc, $874A
    ld [$4A01], sp
    adc d
    nop
    ld [bc], a
    ld [$82C6], sp
    nop
    add d
    ld c, d
    ld [bc], a
    ld [$824A], sp
    nop
    ld bc, $8442
    ld [$4A01], sp
    add e
    ld [$4A01], sp
    adc d
    nop
    ld [bc], a
    ld [$84C6], sp
    nop
    add d
    ld c, d
    add d
    nop
    rlca
    ld b, d
    ld c, d
    jp nz, Jump_02C_434A

    nop
    ld c, d
    add e
    ld [$4A01], sp
    adc c
    nop
    ld [bc], a
    ld [$85C6], sp
    nop
    ld bc, $884A
    nop
    ld bc, $834A
    ld [$4A01], sp
    adc c
    nop
    ld [bc], a
    push bc
    add $85
    nop
    add d
    ld c, d
    add a
    nop
    ld bc, $844A
    ld [$4A01], sp
    adc b
    nop
    ld [bc], a
    push bc
    add $83
    nop
    add d
    ld c, d
    add d
    ld [$4A01], sp
    add [hl]
    nop
    add e
    ld c, d
    add e
    ld [$4A86], sp
    add d
    nop
    inc bc
    push bc
    ld [$824A], sp
    nop
    ld bc, $844A
    ld [$4A01], sp
    adc b
    nop
    ld bc, $884A
    ld [$4A82], sp
    add d
    ld [$4A04], sp
    nop
    nop
    ld c, d
    add l
    ld [$4A01], sp
    add a
    nop
    adc l
    ld [$4A04], sp
    nop
    nop
    ld c, d
    add l
    ld [$4A03], sp
    nop
    nop
    add d
    ld b, b
    inc b
    ld c, d
    nop
    nop
    ld c, d
    add h
    ld [$4A82], sp
    add [hl]
    ld [$4A01], sp
    add e
    nop
    ld bc, $844A
    ld [$4A06], sp
    nop
    nop
    ld b, b
    ld c, d
    ld c, d
    add d
    nop
    ld bc, $834A
    ld [$4A04], sp
    nop
    nop
    ld c, d
    add l
    ld [$4A01], sp
    add e
    nop
    ld bc, $844A
    ld [$4A06], sp
    nop
    nop
    ld b, b
    ld c, d
    ld c, d
    add d
    nop
    ld bc, $844A
    ld [$4904], sp
    nop
    nop
    ld c, d
    add h
    ld [$4A01], sp
    add e
    nop
    ld bc, $844A
    ld [$4A06], sp
    nop
    nop
    ld b, b
    ld c, d
    ld c, d
    add d
    nop
    ld b, $4A
    ld c, b
    ld c, d
    call nz, Call_02C_494A
    add d
    nop
    ld bc, $844A
    ld [$4A01], sp
    add h
    nop
    ld bc, $844A
    ld [$4103], sp
    nop
    ld b, b
    add d
    ld c, d
    adc e
    nop
    ld bc, $844A
    ld [$4A82], sp
    add e
    nop
    rlca
    ld b, b
    ld c, d
    jp Jump_02C_414A


    nop
    ld b, b
    add d
    ld c, d
    adc e
    nop

jr_02C_6E0A:
    ld bc, $854A
    ld [$4A01], sp
    adc c
    nop
    ld bc, $8740
    ld c, d
    add [hl]
    nop
    ld bc, $854A
    ld [$4A01], sp
    adc c
    nop
    ld bc, $864A
    ld [$4A01], sp
    add l
    nop
    ld bc, $874A
    ld [$4A82], sp
    add a
    nop
    ld bc, $864A
    ld [$4A01], sp
    add h
    nop
    ld bc, $8A4A
    ld [$4A01], sp
    add l
    nop
    ld bc, $874A
    ld [$4A85], sp
    adc h
    ld [$4A01], sp
    add e
    nop
    ld bc, $9A4A
    ld [$4A83], sp
    or c
    ld [$1E00], sp
    ld c, $01
    inc de
    inc d
    add h
    inc bc
    dec bc
    ld e, $1F
    ld e, $2F
    ld a, $2D
    ld h, $1E
    daa
    cpl
    ld [$6793], sp
    dec bc
    ld e, $1F
    rra
    ccf
    ld e, $3D
    dec e
    daa
    cpl
    ccf
    jr jr_02C_6E0A

    ld h, a
    dec bc
    ld l, $2F
    rra
    adc h
    ld e, $0D
    ld e, $1F
    ccf
    db $FD
    add hl, hl
    sub e
    ld h, a
    inc bc
    ld a, $3F
    rra
    add d
    ld e, $03
    dec e
    ld e, $1F
    add d
    ld e, $82
    dec e
    sub d
    ld h, a
    ld a, [bc]
    ld e, $27
    cpl
    ld e, $5B
    dec l
    ld l, $2F
    sbc e
    ld e, $82
    dec e
    sub d
    ld h, a
    inc bc
    daa
    cpl
    ccf
    add d
    ld e, $08
    dec a
    ld a, $3F
    ld e, $67
    dec e
    dec l
    ld h, $91
    ld h, a
    inc bc
    rra
    ccf
    ld a, [$1E82]
    ld [bc], a
    ld a, [$827B]
    ld e, $04
    ld h, a
    dec e
    dec a
    dec e
    sub c
    ld h, a
    dec c
    rra
    ld e, $7B
    inc l
    ld e, $1A
    add hl, hl
    inc l
    ld e, $09
    dec e
    ld h, a
    dec e
    sub c
    ld h, a
    ld b, $1F
    ld e, $1A
    ld a, [$5E5D]
    add h
    ld e, $03
    dec e
    ld h, a
    dec e
    sub c
    ld h, a
    ld bc, $831F
    ld e, $08
    ld l, l
    ld l, [hl]
    ld l, a
    ld e, e
    ld e, $7B
    dec e
    dec c
    sub d
    ld h, a
    rlca
    rra
    inc e
    add hl, hl
    jr z, @+$2E

    ld e, $28
    add d
    add hl, bc
    inc bc
    ld a, [hl+]
    dec e
    dec e
    sub d
    ld h, a
    ld [bc], a
    rra
    ld e, d
    add h
    ld e, $02
    add hl, bc
    ld a, [$1E82]
    add d
    dec e
    sub d
    ld h, a
    rlca
    rra
    ld a, [hl+]
    add hl, hl
    jr z, @+$2B

    ld e, $19
    add d
    ld e, $03
    sbc e
    dec e
    dec e
    sub d
    ld h, a
    ld bc, $851F
    ld e, $04
    rlca
    ld a, [$4F4E]
    add d
    dec e
    sub d
    ld h, a
    ld a, [bc]
    rra
    add hl, hl
    jr z, jr_02C_6F52

    inc l
    ld e, $17
    ld c, l
    ld e, [hl]
    ld e, a
    add d
    dec e
    sub d
    ld h, a
    inc bc
    rra
    ld e, $5A
    add e
    ld e, $07
    add hl, bc
    ld a, [$5F5E]
    dec e
    dec l
    ld h, $91
    ld h, a
    dec c
    rra

jr_02C_6F52:
    inc e
    ld a, [hl+]
    add hl, hl
    inc l

jr_02C_6F56:
    ld e, $19
    ld c, l
    ld e, [hl]
    ld e, a
    dec e
    dec a
    dec e
    sub c
    ld h, a
    inc bc
    rra
    ld e, $8C
    add h
    ld e, $06
    ld e, l
    ld e, [hl]
    ld l, a
    dec e
    ld h, a
    dec e
    sub c
    ld h, a
    inc b
    rra
    jr z, jr_02C_6F9B

    dec bc
    add e
    add hl, hl
    ld b, $0B
    inc l
    ld e, $1D
    ld h, a
    dec e
    sub c
    ld h, a
    ld [bc], a
    rra
    sbc e
    adc b
    ld e, $02
    dec e
    dec c
    sub d
    ld h, a
    dec b
    rra
    jr z, @+$09

    jr z, jr_02C_6FB9

    add d
    jr z, @+$08

    ld a, [de]
    ld [$1D1E], sp
    dec l
    ld h, $91
    ld h, a
    dec c

jr_02C_6F9B:
    rra
    ld e, $17
    ld l, d
    ld e, $7A
    rlca
    ld e, $18
    ld e, $1D
    dec a
    dec e
    sub c
    ld h, a
    inc bc
    rra
    ld e, $28
    add e
    ld e, $02
    rla
    ld e, d
    add d
    ld e, $03
    dec e
    ld h, a
    dec e

jr_02C_6FB9:
    sub c
    ld h, a
    ld bc, $841F
    ld e, $02
    ld a, [$8308]
    ld e, $03
    dec e
    ld h, a
    dec e
    sub c
    ld h, a
    ld [bc], a
    rra
    ld a, [$1E82]
    inc bc
    sbc e
    add hl, hl
    jr jr_02C_6F56

    ld e, $03
    ld e, e
    dec e
    dec c
    sub d
    ld h, a
    ld bc, $881F
    ld e, $02
    ld a, d
    dec c
    sub e
    ld h, a
    dec bc
    rra
    ld e, $1E
    ld a, [de]
    jr z, jr_02C_7014

    jr z, jr_02C_7016

    jr z, jr_02C_701B

    dec e
    sub e
    ld h, a
    ld bc, $841F
    ld e, $03
    ld c, l
    ld c, [hl]
    ld a, d
    add d
    ld e, $01
    dec e
    sub e
    ld h, a
    ld [bc], a
    cpl
    ld e, $82
    sbc e
    inc bc
    ld e, $5D
    ld l, a
    add e
    ld e, $01
    dec e
    sub e
    ld h, a
    inc bc
    ccf
    ld a, [hl+]
    dec bc
    add d

jr_02C_7014:
    add hl, hl
    add d

jr_02C_7016:
    dec hl
    add d
    jr z, jr_02C_701B

    dec c

jr_02C_701B:
    sub h
    ld h, a
    nop
    ld e, $1A
    inc b
    cp d
    ld [$4282], sp
    adc e
    ld [$C382], sp
    add e
    ld [$4201], sp
    adc c
    ld [$4282], sp
    ld [bc], a
    nop
    add $8A
    ld [$4203], sp
    nop
    nop
    add e
    ld b, d
    ld [bc], a
    nop
    ld b, d
    add [hl]
    ld [$4282], sp
    add e
    nop
    ld bc, $8BC6
    ld [$4201], sp
    add h
    nop
    ld [bc], a
    ld b, e
    nop
    add [hl]
    ld b, d
    add l
    nop
    ld bc, $8BC6
    ld [$4201], sp
    adc a
    nop
    inc bc
    ld b, c
    nop
    add $8C
    ld [$4202], sp
    ld b, e
    adc d
    nop
    add d
    ld b, d
    ld [bc], a
    nop
    ld b, c
    add d
    ld b, d
    add e
    ld [$C482], sp
    add d
    ld b, d
    add a
    ld [$4201], sp
    add e
    nop
    add e
    ld b, d
    ld bc, $8308
    ld b, d
    add a
    ld [$4201], sp
    add h
    nop
    add d
    ld b, d
    add [hl]
    ld [$4204], sp
    nop
    nop
    ld b, d
    adc h
    ld [$4201], sp
    add [hl]
    nop
    ld bc, $8742
    ld [$4204], sp
    nop
    nop
    ld b, d
    adc e
    ld [$4282], sp
    add h
    nop
    ld [bc], a
    ld b, e
    ld b, d
    add a
    ld [$4201], sp
    add e
    nop
    add e
    ld b, d
    add d
    jp nz, $0887

    inc bc
    ld b, d
    nop
    ld b, b
    add h
    nop
    ld bc, $8642
    ld [$4201], sp
    adc b
    nop
    ld bc, $8442
    ld [$0003], sp
    ld [$8208], sp
    ld b, d
    inc bc
    ld b, b
    ld b, d
    ld b, d
    add e
    nop
    add e
    ld b, d
    add d

Jump_02C_70D4:
    ld [$4201], sp
    adc b
    nop
    ld bc, $8442
    ld [$0001], sp
    add a
    ld [$4201], sp
    add l
    nop
    inc b
    ld b, d
    ld [$4208], sp
    add h
    nop
    inc bc
    ld b, b
    nop
    ld b, e
    add l
    ld [$0082], sp
    add a
    ld [$4282], sp
    add h
    nop
    inc bc
    ld b, d
    ld [$8208], sp
    ld b, d
    ld [bc], a
    nop
    ld b, b
    add d

Jump_02C_7104:
    nop
    ld bc, $8543
    ld [$0083], sp
    adc b
    ld [$4204], sp
    nop
    nop
    ld b, d
    add h
    ld [$4201], sp
    add e
    nop
    ld bc, $8842
    ld [$0001], sp
    adc b
    ld [$4204], sp
    nop
    nop
    ld b, d
    add h
    ld [$4204], sp
    nop
    nop
    ld b, d
    sub d
    ld [$4204], sp
    nop
    nop
    ld b, d
    add h
    ld [$4203], sp
    nop
    ld b, d
    sub e
    ld [$4204], sp
    nop
    nop
    ld b, d
    add h
    ld [$4203], sp
    nop
    ld b, d
    adc e
    ld [$4203], sp
    ret nz

    ret nz

    add l
    ld [$4204], sp
    nop
    nop
    ld b, d
    add h
    ld [$4203], sp
    nop
    ld b, d
    adc d
    ld [$4201], sp
    add e
    nop
    add h
    ld b, d
    ld [bc], a
    ld [$8242], sp
    nop
    ld bc, $8442
    ld [$4203], sp
    nop
    ld b, d
    adc c
    ld [$4201], sp
    adc b
    nop
    add d
    ld b, d
    add d
    nop
    inc bc
    ld b, d
    pop bc
    pop bc
    add e
    ld b, d
    ld [bc], a
    nop
    ld b, d
    adc c
    ld [$4203], sp
    nop
    ld b, e
    sub c
    nop
    ld bc, $8A42
    ld [$4201], sp
    add l
    nop
    add d
    ld b, d
    add l
    nop
    ld bc, $8443
    nop
    ld bc, $8B42
    ld [$4201], sp
    add e
    nop
    add d
    ld b, c
    ld [bc], a
    ld b, d
    ld [$4282], sp
    adc b
    nop
    ld bc, $8B42
    ld [$4201], sp
    add h
    nop
    ld bc, $8442
    ld [$4284], sp
    add h
    nop
    ld bc, $8A42
    ld [$4282], sp
    add e
    nop
    ld bc, $8942
    ld [$4204], sp
    nop
    nop
    ld b, d
    adc d
    ld [$C501], sp
    add l
    nop
    ld bc, $8A42
    ld [$4282], sp
    adc e
    ld [$C501], sp
    add h
    nop
    ld bc, $9942
    ld [$4284], sp
    ret nz

    xor a
    ld [$1500], sp
    cp l
    nop
    ld a, [bc]
    ld c, $F8
    ld bc, $0085
    add d
    ld [hl-], a
    ld c, $E4
    push hl
    ld b, h
    ld d, [hl]
    ld h, a
    ld b, h
    and c
    dec [hl]
    ld [c], a
    db $E3
    ld h, a
    nop
    ld b, a
    and c
    add d
    nop
    ld [$00B4], sp
    or h
    dec [hl]
    sub e
    db $F4
    push af
    ld b, $84
    rlca
    rlca
    ld [$F3F2], sp
    ld b, h
    dec [hl]
    ld d, a
    ld [hl-], a
    add e
    nop
    inc b
    ld [hl-], a
    nop
    ld b, h
    ld b, $82
    rlca
    ld b, $49
    rla
    ld e, b
    ld l, e
    rla
    ld c, b
    add e
    rlca
    dec b
    ld [$9356], sp
    nop
    or h
    add d
    nop
    add hl, bc
    ld b, h
    ld b, $49
    rla
    ld a, e
    ld l, d
    ld l, e
    ld l, b
    ld l, d
    add d
    ld l, e
    ld b, $58
    ld l, d
    rla
    ld c, b
    ld [$8344], sp
    nop
    rlca
    ld b, h
    ld d, [hl]
    ld d, $17
    ld e, b
    ld l, e
    ld l, d
    add e
    rla
    ld [$6A6D], sp
    ld l, b
    ld l, e
    ld l, d
    rla
    jr jr_02C_72AE

    add e
    nop
    dec b
    ld [c], a
    db $E3
    ld d, $59
    ld l, b
    adc c
    rla
    ld c, $6A
    rla
    jr jr_02C_72CE

    nop
    ld d, [hl]
    nop
    ld a, [c]
    di
    ld d, $69
    ld sp, hl
    rla
    cp $87
    rla
    inc b
    jp c, $187B

    and c
    add e
    nop
    inc bc
    dec [hl]
    ld h, e
    ld d, $82
    ld l, e
    ld [bc], a
    ld l, d
    ld hl, sp-$79
    rla
    dec c
    ld l, d
    ld l, e
    jr @-$6B

    nop
    ld [hl-], a
    jp $C5C4


    ld d, $6A
    ld sp, hl
    ld l, e

jr_02C_7293:
    adc b
    rla
    dec c
    ld l, e
    rla
    jr jr_02C_72CF

    nop
    ld h, e
    db $D3
    call nc, $16D5
    ld l, e
    rla
    ld l, d
    add e
    rla
    ld bc, $84FE
    rla
    ld a, [bc]
    ld l, e
    rla
    jr jr_02C_7304

jr_02C_72AE:
    nop
    ld b, h
    sub e
    scf
    ld d, [hl]
    ld d, $82
    rla
    inc b
    ld l, e
    rla
    ld l, d
    ld l, e
    add l
    rla
    ld de, $6B6A
    jr @-$5D

    ld [hl-], a
    db $E4
    push hl
    ld b, a
    ld h, a
    ld d, $6B
    rla

jr_02C_72CA:
    ld a, e
    jp hl


    cp $6D

jr_02C_72CE:
    ld l, d

jr_02C_72CF:
    add l
    rla
    ld [$186B], sp
    ld h, a
    and c
    db $F4
    push af
    ld d, a
    ld b, $82
    ld l, e
    add e
    rla
    ld b, $6B
    rla
    rla
    ld l, e
    rla
    rla
    rlca
    ld hl, sp+$17
    ld l, d
    jr @+$37

    sub e
    ld b, $82
    rlca
    inc bc
    ld c, c
    rla
    cp $83
    rla
    inc b
    ld e, d
    ld sp, hl
    ld l, l
    jp hl


    add h
    rla
    ld a, [bc]
    ld l, e
    jr jr_02C_7293

    ld b, h
    ld d, $59
    ld l, e

jr_02C_7304:
    ld a, e
    ld l, d
    ld l, e
    add h
    rla
    inc bc
    ld l, e
    ld e, d
    cp $84
    rla
    rlca
    ld e, b
    jr @-$5D

    ld h, e
    ld d, $69
    ld l, e
    adc l
    rla
    rlca
    ld a, e
    ld l, b
    jr jr_02C_7362

    sub e
    ld d, $6B
    add [hl]
    rla
    ld bc, $87F8
    rla
    ld [$6B6A], sp
    jr @-$6B

    ld d, [hl]
    ld d, $58
    ld l, d
    adc l
    rla
    ld a, [bc]
    ld l, e
    rla
    jr jr_02C_7369

    nop
    ld d, $68
    ld l, e
    ld l, d
    ld l, e
    add l
    rla
    ld bc, $856D
    rla
    inc bc
    ld l, d
    rla
    jr jr_02C_72CA

    and c
    ld [$6B16], sp
    ld a, e
    ld e, c
    ld e, b
    ld l, d
    ld l, e
    ld a, e
    add h
    rla
    rra
    ld l, e
    rla
    ld sp, hl
    ld l, e
    rla
    jr c, jr_02C_7384

    ld d, [hl]
    nop
    ld d, $17
    ld l, e
    ld l, c

jr_02C_7362:
    ld l, b
    ld a, [hl]
    ld l, d

jr_02C_7365:
    ld l, e
    ld l, d
    ld a, e
    ld l, e

jr_02C_7369:
    rla
    cp $17
    ld l, e
    rla
    jr c, jr_02C_7398

    ld h, a
    ld [c], a
    ld b, h
    ld h, $87
    daa
    jr @+$3B

    rla
    ld l, e
    rla
    ld l, e
    rla
    ld l, d
    rla
    jr jr_02C_7365

    push hl
    ld a, [c]
    ld [c], a

jr_02C_7384:
    db $E3
    sub e
    db $E4
    push hl
    ld d, [hl]
    ld h, a
    ld [c], a
    db $E3
    ld h, $6B
    ld e, b
    add e
    rla
    dec de
    ld e, b
    jr c, jr_02C_73BD

    db $F4
    push af
    and c

jr_02C_7398:
    ld a, [c]
    di
    ld [hl-], a
    db $F4
    push af
    ld [hl-], a
    ld b, h
    ld a, [c]
    di
    ld d, [hl]
    ld h, $68
    ld a, e
    ld l, d
    ld l, e
    ld l, b
    jr z, jr_02C_73DF

    sub e
    ld h, e
    ld b, h
    nop
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    adc h
    ld c, d
    ld b, $4B
    cp h
    ld d, [hl]
    ld d, a
    db $DD

jr_02C_73BD:
    ld c, c
    sbc b
    ld c, d
    ld b, $4B
    cp h
    ld d, [hl]
    ld d, a
    db $DD
    ld c, c
    sbc b
    ld c, d
    ld b, $8D
    ld d, l
    ld d, $57
    bit 1, c
    sub a
    ld c, d
    rlca
    adc e
    ld c, b
    ld d, l
    rst $28
    xor e
    add hl, sp
    cp d
    sub [hl]
    ld c, d
    rlca
    ld e, d
    ld c, e

jr_02C_73DF:
    ld e, b
    ld h, l
    xor e
    add hl, sp
    cp d
    sub e
    ld c, d
    ld a, [bc]
    ld [hl], l
    halt
    ld [hl], a
    ld e, e
    sbc h
    rst $10
    dec sp
    jp z, $BA39

    add e
    ld c, d
    ld bc, $8F5A
    ld c, d
    ld a, [bc]
    adc e
    add l
    add [hl]
    add a
    ld l, e
    ld a, d
    ld a, b
    reti


    ld a, [hl-]
    cp d
    add e
    ld c, d
    ld b, $38
    sbc h
    adc h
    ld [hl], l
    halt
    ld [hl], a
    adc e
    ld c, d
    ld [$954B], sp
    sub [hl]
    sub a
    ld a, e
    ld c, d
    ld a, l
    ld c, c
    add h
    ld c, d
    ld [$488B], sp
    ld a, d
    ld l, h
    add l
    add [hl]
    add a
    sbc e
    adc d
    ld c, d
    inc bc
    ld c, e
    ld c, d
    ld b, l
    add d
    ld b, [hl]
    inc bc
    ld b, a

jr_02C_742B:
    bit 1, c
    add h
    ld c, d
    ld [$7C4B], sp
    ld c, d
    ld a, l
    sub l
    sub [hl]
    sub a
    ld c, c
    adc d
    ld c, d
    inc bc
    ld c, e
    call c, $8255
    ld d, [hl]
    inc bc
    ld d, a
    add hl, sp
    cp d
    add h
    ld c, d
    ld [bc], a
    ld c, e
    ld b, l
    add e
    ld b, [hl]
    inc bc
    and [hl]
    bit 1, c
    adc d
    ld c, d
    rlca
    ld c, e
    call c, Call_02C_5655
    adc c
    xor e
    ld c, c
    add l
    ld c, d
    ld [bc], a
    ld c, e
    cp e
    add e
    ld h, [hl]
    inc bc
    xor e
    add hl, sp
    cp d
    adc d
    ld c, d
    rlca
    xor d
    dec sp
    cp e
    ld h, [hl]
    xor e
    add hl, sp
    cp d
    add [hl]
    ld c, d
    inc bc
    dec sp
    ld c, d
    add hl, sp
    add d
    ld a, [hl-]
    ld bc, $8CBA
    ld c, d
    ld bc, $83AA
    ld a, [hl-]
    ld bc, $87BA
    ld c, d
    inc bc
    xor d
    ld a, [hl-]
    cp d
    sbc l
    ld c, d
    add d
    ld e, d
    sbc e
    ld c, d
    rlca
    jr c, jr_02C_742B

    sbc h
    ld l, b
    ld [hl], l
    halt
    ld [hl], a
    adc c
    ld c, d
    inc bc
    ld [hl], l
    halt
    ld [hl], a
    adc d
    ld c, d
    ld [bc], a
    adc e
    ld c, b
    add d
    ld a, d
    dec b
    ld a, b
    add l
    add [hl]
    add a
    adc h
    add a
    ld c, d
    dec b
    jr c, @-$79

    add [hl]
    add a
    ld l, b
    adc c
    ld c, d
    ld a, [bc]
    ld c, e
    ld a, h
    ld b, l
    ld b, a
    ld a, l
    sub l
    sub [hl]
    sub a
    ld l, h
    sbc e
    add l
    ld c, d
    rlca
    adc e
    ld c, b
    sub l
    sub [hl]
    sub a
    ld a, b
    sbc e
    adc b
    ld c, d
    ld a, [bc]
    xor d
    dec sp
    ld d, l
    ld d, a
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, d
    adc b
    ld c, c
    add l
    ld c, d
    rlca
    ld c, e
    ld a, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld a, l
    ld c, c
    adc c
    ld c, d
    add hl, bc
    ld c, e
    cp e
    adc d
    ld d, [hl]
    adc $57
    srl c
    cp d
    add l
    ld c, d
    rlca
    xor d
    dec sp
    ld h, l
    xor $99
    ld b, a
    ld c, c
    adc c
    ld c, d
    rlca
    xor d
    dec sp
    cp e
    adc d
    sbc $AB
    add hl, sp
    adc b
    ld c, d
    ld b, $4B
    jp z, Jump_02C_6665

    xor e
    ld c, c
    adc d
    ld c, d
    dec b
    xor d
    dec sp
    cp e
    xor e
    add hl, sp
    adc c
    ld c, d
    ld b, $AA
    dec sp
    jp z, $39CB

    cp d
    adc e
    ld c, d
    inc b
    xor d
    ld a, [hl-]
    ld a, [hl-]
    cp d
    adc d
    ld c, d
    inc b
    xor d
    ld a, [hl-]
    ld a, [hl-]
    cp d
    add h
    ld c, d
    inc b
    ld [hl], l
    halt
    ld [hl], a
    ld e, d
    sbc c
    ld c, d
    ld b, $38
    add l
    add [hl]
    add a
    sbc h
    ld l, b
    sub a
    ld c, d
    ld [$488B], sp
    sub l
    sub [hl]
    sub a
    ld a, d
    ld a, b
    sbc e
    sub [hl]
    ld c, d
    ld [$7C4B], sp
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, d
    ld a, l
    ld c, c
    sub [hl]
    ld c, d
    ld [$3BAA], sp
    cp h
    ld d, [hl]
    ld d, a
    srl c
    cp d
    sub a
    ld c, d
    ld b, $4B
    ld d, l
    ld d, [hl]
    ld d, a
    add hl, sp
    cp d
    sbc b
    ld c, d
    dec b
    ld c, e
    ld d, l
    ld d, [hl]
    cp l
    ld c, c
    sbc c
    ld c, d
    dec b
    ld c, e
    cp h
    ld d, [hl]
    ld d, a
    ld c, c
    adc l
    ld c, d
    nop
    add hl, de
    pop hl
    nop
    ld c, $0F
    ld [hl], c
    ld [bc], a
    add l
    ld h, a
    ld [bc], a
    dec l
    ld h, $82
    ld h, a
    ld bc, $831F
    sbc $01
    dec e
    sub b
    ld h, a
    dec b
    dec a
    dec e
    ld h, a
    cpl
    rra
    add e
    sbc $01
    dec e
    sub c
    ld h, a
    inc b
    dec e
    rra
    ccf
    rra
    add e
    sbc $01
    dec e
    sub c
    ld h, a
    inc b
    dec e
    rra
    ld h, a
    rra
    add e
    sbc $01
    dec e
    adc a
    ld h, a
    ld b, $2E
    ld h, a
    dec l
    cpl
    ld h, a
    rra
    add e
    sbc $01
    dec e
    adc [hl]
    ld h, a
    ld [$3E1F], sp
    dec e
    dec a
    ccf
    daa
    cpl
    ld b, a
    add d
    sbc $03
    dec e
    ld e, $1E
    adc e
    ld h, a
    inc b
    daa
    cpl
    db $FD
    dec l
    add d
    ld l, $06
    cpl
    ccf
    ld h, a
    ld e, b
    sbc $1D
    add e
    ld e, $82
    ld h, a
    ld [bc], a
    dec c
    rrca
    add h
    ld h, a
    ld b, $27
    ld l, $2F
    ccf
    ld h, a
    dec a
    add d
    ld a, $02
    ccf
    add hl, hl
    add d
    ld h, a
    inc bc
    ld e, b
    dec l
    ld h, $82
    ld e, $82
    ld h, a
    ld [bc], a
    dec e
    rra
    add h
    ld h, a
    ld b, $2F
    ld a, $3F
    inc c
    ld c, l
    ld c, a
    add d
    ld h, a
    inc bc
    ld l, e
    ld h, a
    ld l, d
    add d
    ld h, a
    ld b, $3D
    dec e
    dec e
    ld e, $67
    ld h, a
    ld [bc], a
    dec l
    cpl
    add h

jr_02C_7614:
    ld h, a
    ld bc, $833F
    ld h, a
    ld [bc], a
    ld l, l
    ld e, [hl]
    add d
    add hl, hl
    inc bc
    jr z, jr_02C_764A

    ld h, a
    add d
    add hl, hl
    add d
    dec c
    add d
    ld e, $82
    ld h, a
    ld [bc], a
    dec a
    ccf
    add h
    ld h, a
    ld [bc], a
    rrca
    ld a, [de]
    add e
    add hl, hl
    add hl, bc
    ld l, [hl]
    ld a, [de]
    ld l, d
    ld a, [$6706]
    dec c
    ld c, $0D
    add e
    ld e, $89
    ld h, a
    ld [bc], a
    rrca
    sbc h
    add d
    ld h, a
    ld [$67FA], sp

jr_02C_764A:
    ld h, a
    ld a, [de]
    ld d, $67
    dec e
    dec c
    add e
    ld e, $8A
    ld h, a
    inc bc
    rra
    jr z, jr_02C_7660

    add d
    jr z, jr_02C_7660

    ld a, [$6767]
    ld h, $67

jr_02C_7660:
    add d
    dec e
    add d
    ld e, $8A
    ld h, a
    ld b, $27
    cpl
    dec bc
    jr jr_02C_7686

    dec bc
    add d
    add hl, hl
    inc bc
    jr z, jr_02C_769E

    ld h, a
    add d
    dec e
    ld bc, $8B1E
    ld h, a
    ld [bc], a
    rra
    ccf
    add d
    ld h, a
    ld [bc], a
    ld l, e
    ld h, a
    add d
    ld a, [$6783]
    add d

jr_02C_7686:
    dec e
    ld bc, $8B1E
    ld h, a
    dec b
    rra
    ld a, [de]
    add hl, bc
    ld a, [de]
    jr z, jr_02C_7614

    add hl, hl
    rlca
    jr z, jr_02C_76C2

    ld h, a
    dec c
    ld e, $1D
    ld e, $8C
    ld h, a
    dec b

jr_02C_769E:
    rrca
    add hl, de
    rlca
    ld h, a
    ld l, e
    add d
    ld h, a
    inc b
    ld l, d
    ld h, a
    dec e
    dec c
    add d
    ld e, $8C
    ld h, a
    add hl, bc
    rra
    jr z, jr_02C_76C9

jr_02C_76B2:
    jr z, jr_02C_76BB

    jr z, jr_02C_76DF

    inc l
    ld h, a
    add d
    dec e
    add d

jr_02C_76BB:
    ld e, $8C
    ld h, a
    dec b
    rra
    add hl, hl
    add hl, hl

jr_02C_76C2:
    dec hl
    rla
    add e
    ld h, a
    dec b
    sbc h
    dec e

jr_02C_76C9:
    dec l
    ld h, $1E
    adc e
    ld h, a
    inc b
    daa
    cpl
    ld [$8229], sp
    ld h, a
    ld bc, $8308
    ld h, a
    inc b
    dec e
    dec a
    dec e
    ld e, $8B

jr_02C_76DF:
    ld h, a
    ld c, $1F
    ccf
    jr jr_02C_76DF

    ld c, [hl]
    ld c, a
    jr jr_02C_7750

    ld a, [$1D67]
    ld h, a
    dec e
    ld e, $8B
    ld h, a
    rlca
    rra
    sbc e
    ld h, a
    ld [$4E6D], sp
    add hl, hl
    add e
    ld h, a
    inc b
    dec e
    ld h, a
    dec e
    ld e, $8B
    ld h, a
    inc b
    rra
    ld h, a
    ld a, [$8218]
    ld c, [hl]
    ld [$671A], sp
    ld [$1D67], sp
    dec c
    ld h, a
    ld e, $8B
    ld h, a
    ld bc, $831F
    ld h, a
    ld [bc], a
    ld l, l

jr_02C_771A:
    ld l, a
    add d
    ld h, a
    ld [bc], a
    jr jr_02C_771A

    add d
    dec e
    add d
    ld e, $8C
    ld h, a
    ld [$290F], sp
    add hl, hl
    inc e
    dec bc
    add hl, hl
    inc c
    jr z, jr_02C_76B2

    dec c
    add e
    ld e, $8B
    ld h, a
    nop
    add hl, de
    pop hl
    nop
    ld c, $0F
    ld [hl], c
    ld [bc], a
    adc [hl]
    nop
    dec b
    ld [hl], $07
    ld a, [bc]
    ld c, $1F
    sub h
    nop
    dec b
    rlca
    rla
    ld a, [de]
    ld e, $0E
    sub d
    nop
    ld a, [bc]

jr_02C_7750:
    rlca
    ld a, [bc]
    rla
    daa
    ld a, [hl+]
    ld l, $1E
    dec bc
    inc c
    ld c, $8F
    nop
    dec bc
    rla
    ld a, [de]
    daa
    jr c, @+$7A

    add hl, sp
    ld l, $1B
    inc e
    ld e, $0E
    adc l
    nop
    inc b
    ld d, $27
    ld a, [hl+]
    scf
    add e
    ld bc, $3906
    dec hl
    inc l
    ld l, $1E
    ld c, $8A
    nop
    inc b
    inc bc
    inc b
    ld h, $83
    add e
    ld bc, $7701
    add h
    ld bc, $7703
    ld l, $1E
    adc b
    nop
    ld b, $26
    rlca
    inc de
    inc d
    dec d
    ld c, e
    add a
    ld bc, $6905
    ld a, b
    ld a, $2E
    rrca
    add a
    nop
    ld b, $16
    rla
    inc hl
    inc h
    dec h
    daa
    add d
    ld bc, $6703
    ld a, b
    ld l, c
    add d
    ld bc, $5905
    ld l, h
    ld l, l
    add h
    rra
    add a
    nop
    inc c
    ld h, $27
    inc sp
    inc [hl]
    dec [hl]
    scf
    ld bc, $77A6
    ld bc, $5A67
    add d
    ld bc, $7C04
    ld a, l
    and e
    cpl
    add a
    nop
    dec c
    ld [hl], $83
    xor c
    cp e
    ld l, b
    ld [hl], a
    or [hl]
    adc e
    adc b
    adc c
    adc [hl]
    adc a
    ld a, c
    add e
    ld bc, $3C02
    ccf
    adc b
    nop
    inc bc

jr_02C_77DF:
    ld a, [hl-]
    cp c
    add a
    add d
    ld bc, $860C
    sbc e
    sbc b
    sbc c
    sbc [hl]
    sbc a
    ld [hl], a
    and [hl]
    ld h, a
    or [hl]
    inc a
    cpl
    adc b
    nop
    ld b, $4A
    and l
    sub a
    adc h
    adc l
    sub [hl]
    add [hl]
    ld bc, $6705
    adc e
    ld bc, $3F3C
    adc b
    nop
    ld b, $07
    and h
    or [hl]
    sbc h
    sbc l
    halt
    add a
    ld bc, $9B04
    ld bc, $3F3D
    add e
    nop
    ld c, $07
    inc c
    ld [$0A09], sp
    rla
    and h
    add a
    call $CE01
    halt
    add l
    ld [hl], a
    add l
    ld bc, $3C02
    rra
    add e
    nop
    ld de, $1707
    inc e
    jr @+$1B

    ld a, [de]
    daa
    adc d
    sub a
    db $DD
    add l
    sbc $76
    rst $08
    and [hl]
    ld bc, $8377
    ld bc, $3C02
    cpl
    add d
    nop
    add hl, bc
    rlca
    rla
    daa
    inc l
    jr z, jr_02C_77DF

    ld a, [hl+]
    scf
    sbc d
    add l
    ld bc, $DF04
    ld [hl], a
    ld bc, $8385
    ld bc, $3C07
    ccf
    nop
    ld b, $17
    daa
    scf
    add d
    ld bc, $990F
    ld bc, $8567
    ld bc, $ADB6
    add l
    ld bc, $AB59
    ld bc, $464C
    ld b, a
    add d
    ld c, b
    dec b
    ld c, l
    nop
    ld d, $27
    scf
    adc c
    ld bc, $BD07
    ld bc, $A601
    ld a, b
    inc a
    rrca
    add [hl]
    nop
    ld [bc], a
    ld h, $83
    add e
    ld bc, $780A
    ld h, a
    or [hl]
    ld c, c
    ld [hl], a
    ld c, c
    ld a, b
    cp e
    ld bc, $8278
    ld bc, $3C02
    rra
    add [hl]
    nop
    inc bc
    ld [hl], $3A
    ld h, a
    add d
    ld [hl], a
    rlca
    ld e, d
    xor h
    ld l, [hl]
    ld l, a
    adc h
    adc l
    ld h, [hl]
    add d
    ld bc, $6705
    ld bc, $484C
    cpl
    add a
    nop
    db $10
    ld c, d
    ld a, [hl-]
    cp e
    ld bc, $BCA6
    ld a, [hl]
    ld a, a
    sbc h
    sbc l
    ld [hl], a
    ld bc, $77A6
    inc a
    rrca
    adc d
    nop
    rlca
    ld c, d
    ld d, [hl]
    ld d, a
    ld e, b
    ld c, e
    ld e, d
    ld a, c
    add [hl]
    ld bc, $3C02
    rrca
    adc [hl]
    nop
    inc b
    ld e, e
    ld d, a
    ld d, [hl]
    ld a, [hl-]
    add l
    ld bc, $4C02
    rra
    sub c
    nop
    rlca
    ld c, d
    ld b, [hl]
    ld b, a
    ld c, b
    ld d, a
    ld e, b
    ld e, h
    xor c
    nop
    nop
    ld e, $84
    inc bc
    adc h
    ld [$C582], sp
    ld bc, $9A40
    ld [$4001], sp
    add e
    nop
    ld bc, $9940
    ld [$4001], sp
    add h
    nop
    ld bc, $9940
    ld [$4001], sp
    add h
    nop
    inc bc
    ld b, b
    ld [$8308], sp
    ld b, b
    sub b
    ld [$4082], sp
    ld [bc], a
    ret nz

    ld b, b
    add h
    nop
    add e
    ld b, b
    add e
    nop
    ld bc, $8F40
    ld [$4001], sp
    add a
    nop
    add e
    ld b, b
    add e
    nop
    ld bc, $8F40
    ld [$4001], sp
    add a
    nop
    add e
    ld b, b
    add e
    nop
    ld bc, $8F40
    ld [$4001], sp
    add [hl]
    nop
    ld bc, $8340
    ld [$4006], sp
    nop
    nop
    ld b, b
    pop bc
    ld b, b
    adc h
    ld [$4001], sp
    add [hl]
    nop
    ld bc, $8440
    ld [$4001], sp
    add l
    nop
    ld bc, $8B40
    ld [$4001], sp
    add [hl]
    nop
    ld bc, $8440
    ld [$4001], sp
    add l
    nop
    ld bc, $8540
    ld [$4002], sp
    call nz, Call_02C_4084
    add [hl]
    nop
    ld bc, $8540
    ld [$4001], sp
    add l
    nop
    ld bc, $8440
    ld [$4001], sp
    add h
    nop
    add d
    ld b, b
    add [hl]
    nop
    ld bc, $8540
    ld [$4001], sp
    add h
    nop
    add d
    ld b, b
    add h
    ld [$4001], sp
    add h
    nop
    add d
    ld b, b
    add l
    nop
    ld bc, $8740
    ld [$4001], sp
    add h
    nop
    ld bc, $8440
    ld [$4001], sp
    add h
    nop
    adc e
    ld b, b
    ld bc, $84C2
    ld b, b
    add h
    nop
    ld bc, $8440
    ld [$4001], sp
    add h
    nop
    ld bc, $8740
    ld [$4001], sp
    add l
    nop
    add e
    ld b, b
    add e
    nop
    ld bc, $8440
    ld [$4001], sp
    add h
    nop
    ld bc, $8740
    ld [$4001], sp
    add l
    nop
    add [hl]
    ld b, b
    add l
    ld [$4001], sp
    add h
    nop
    ld bc, $8740
    ld [$4001], sp
    add [hl]
    nop
    ld bc, $8A40
    ld [$4084], sp
    adc c
    ld [$4001], sp
    add l
    nop
    ld bc, $9340
    ld [$4085], sp
    add l
    nop
    ld bc, $9240
    ld [$4001], sp
    add e
    nop
    add d
    ld b, b
    add l
    nop
    ld bc, $9240
    ld [$4001], sp
    add e
    nop
    add d
    ld b, b
    add l
    nop
    ld bc, $9040
    ld [$4003], sp
    jp $8340


    nop
    add d
    ld b, b
    add h
    nop
    ld bc, $8340
    ld [$4083], sp
    adc d
    ld [$4001], sp
    add [hl]
    nop
    add e
    ld b, b
    add e
    nop
    inc b
    ld b, b
    ld [$4008], sp
    add e
    nop
    ld bc, $8940
    ld [$4001], sp
    add l
    nop
    ld bc, $8340
    ld [$4083], sp
    add e
    ld [$4001], sp
    add e
    nop
    ld bc, $8940
    ld [$4001], sp
    add h
    nop
    ld bc, $8940
    ld [$4001], sp
    add h
    nop
    ld bc, $8840
    ld [$4001], sp
    add h
    nop
    ld bc, $8940
    ld [$4001], sp
    add h
    nop
    ld bc, $8940
    ld [$4001], sp
    add h
    nop
    ld bc, $8940
    ld [$4001], sp
    add h
    nop
    ld bc, $8940
    ld [$4001], sp
    add e
    nop
    ld bc, $8A40
    ld [$4001], sp
    add e
    nop
    ld bc, $8B40
    ld [$4083], sp
    adc e
    ld [$4001], sp
    add e
    nop
    ld bc, $9A40
    ld [$C682], sp
    add [hl]
    ld [$2800], sp
    ld l, b
    ld bc, $1E1D
    ld b, b
    ld b, $AA
    nop
    add e
    ld c, d
    rlca
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    add h
    ld c, d
    sbc d
    nop
    ld c, $3D
    ld a, $4A
    ld b, h
    ld c, d
    inc a
    dec a
    ld a, $4A
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, d
    sbc d
    nop
    ld b, $4A
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    add [hl]
    ld c, d
    ld [bc], a
    ld b, h
    ld c, d
    sbc d
    nop
    ld c, $4A
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3C
    sbc d
    nop
    ld b, $39
    ld a, [hl-]
    dec sp
    inc a
    ld c, d
    ld b, h
    add h
    ld c, d
    ld bc, $8344
    ld c, d
    sbc d
    nop
    add l
    ld c, d
    inc bc
    ld b, h
    ld c, d
    ld b, h
    add d
    ld c, d
    inc b
    ld b, h
    ld c, d
    dec sp
    inc a
    sbc d
    nop
    ld c, $39
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $4A
    ld b, h
    ld c, d
    dec sp
    inc a
    ld c, d
    ld b, h
    ld c, d
    sbc d
    nop
    ld [bc], a
    ld c, d
    ld b, h
    add l
    ld c, d
    inc b
    ld b, h
    ld c, d
    ld c, d
    ld b, h
    add e
    ld c, d
    sbc d
    nop
    ld c, $4A
    ld b, h
    ld c, d
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $4A
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    sbc d
    nop
    ld [bc], a
    ld c, d
    ld b, h
    add e
    ld c, d
    inc bc
    ld b, h
    rst $30
    ld b, h
    add [hl]
    ld c, d
    sbc d
    nop
    ld c, $4A
    inc a
    dec a
    ld a, $4A
    ld b, h
    ld c, d
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3C
    sbc d
    nop
    inc b
    dec a
    ld a, $4A
    ld b, h
    add h
    ld c, d
    ld bc, $8544
    ld c, d
    sbc d
    nop
    ld c, $4A
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, d
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    sbc d
    nop
    add e
    ld c, d
    ld bc, $8344
    ld c, d
    inc b
    ld b, h
    ld c, d
    ld c, d
    ld b, h
    add e
    ld c, d
    ret nz

    ld l, d
    nop
    add e
    ld c, d
    dec b
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    add [hl]
    ld c, d
    sbc d
    nop
    ld c, $39
    ld a, [hl-]
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3C
    sbc d
    nop
    ld b, $4A
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    adc b
    ld c, d
    sbc d
    nop
    ld c, $4A
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3C
    dec a
    ld a, $9A
    nop
    ld b, $4A
    add hl, sp
    ld a, [hl-]
    dec sp
    ld c, d
    ld b, h
    adc b
    ld c, d
    sbc d
    nop
    add e
    ld c, d
    ld bc, $8344
    ld c, d
    rlca
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3C
    sbc d
    nop
    ld [$3C3B], sp
    ld c, d
    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    add d
    ld c, d
    inc b
    ld b, h
    rst $30
    ld b, h
    ld c, d
    sbc d
    nop
    adc c
    ld c, d
    ld [bc], a
    dec a
    ld a, $83
    ld c, d
    sbc d
    nop
    ld [$3A39], sp
    dec sp
    inc a
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    add d
    ld c, d
    inc b
    ld b, h
    ld c, d
    dec a
    ld a, $9A
    nop
    add a
    ld c, d
    inc b
    dec a
    ld a, $4A
    ld b, h
    add e
    ld c, d
    sbc d
    nop
    ld [$394A], sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3C
    add d
    ld c, d
    inc b
    ld b, h
    ld c, d
    dec a
    ld a, $9A
    nop
    ld [bc], a
    ld c, d
    ld b, h
    add l
    ld c, d
    inc b
    ld b, h
    ld c, d
    dec a
    ld a, $83
    ld c, d
    sbc d
    nop
    ld [$444A], sp
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    add d
    ld c, d
    inc b
    ld b, h
    ld c, d
    ld c, d
    ld b, h
    sbc d
    nop
    ld c, $4A
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    dec a
    ld a, $4A
    ld b, h
    ld c, d
    dec a
    ld a, $C1
    add a
    nop
    nop
    add hl, de
    pop hl
    nop
    ld c, $0F
    ld [hl], c
    ld [bc], a
    sbc d
    db $FD
    rla
    ld l, e
    ld de, $6613
    ld l, d
    ld c, b
    ld c, c
    ld e, d
    ld c, b
    ld c, c
    cp l
    ld l, c
    cp a
    ld b, [hl]
    ld e, d
    ld l, $BD
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    add d
    db $FD
    ld bc, $8E3D
    nop
    inc bc
    ld a, $68
    reti


    add h
    db $FD
    ld b, $58
    db $FD
    db $FD
    ld c, l
    db $FD
    db $FD
    add l
    nop
    ld bc, $86FD
    nop
    ld [$FD4C], sp
    ld e, b
    db $FD
    adc b
    adc c
    db $FD
    ccf
    add d
    db $FD
    inc bc
    ld e, l
    db $FD
    db $FD
    add l
    nop
    ld bc, $842B
    nop
    inc bc
    db $FD
    nop
    ld e, h
    add h
    db $FD
    inc bc
    ld a, [de]
    db $FD
    ld c, a
    add d
    db $FD
    inc bc
    ld l, l
    dec de
    dec e
    add d
    nop
    ld bc, $8710
    nop
    inc bc
    dec hl
    nop
    ld l, h
    add d
    db $FD
    dec b
    nop
    db $FD
    ld a, [hl+]
    db $FD
    ld e, a
    add d
    db $FD
    ld bc, $8368
    nop
    dec b
    ld d, a
    ld a, h
    ld a, l
    ld b, [hl]
    ld b, a
    add a
    nop
    inc bc
    dec de
    ld l, d
    rst $10
    add e
    db $FD
    inc b
    ld l, a
    db $FD
    db $FD
    ld a, [hl-]
    add h
    nop
    inc b
    inc a
    dec a
    ld a, [hl]
    ld a, a
    add d
    nop
    add d
    db $FD
    add h
    nop
    add e
    db $FD
    inc bc
    ld l, e
    db $FD
    dec h
    add d
    db $FD
    ld [bc], a
    ld c, d
    nop
    add d
    db $FD
    dec b
    nop
    ld c, h
    ld c, l
    ld a, $3F
    add d
    nop
    add d
    db $FD

Jump_02C_7D00:
    add e
    nop
    add [hl]
    db $FD
    dec b
    dec [hl]
    db $FD
    db $FD
    inc de
    nop
    add d
    db $FD
    dec b
    nop
    ld e, h
    ld e, l
    ld c, [hl]
    ld c, a
    add d
    nop
    add d
    db $FD
    add e
    nop
    rlca
    dec de
    ld e, d
    adc b
    adc c
    dec sp
    rla
    ld l, e
    add d
    db $FD
    add hl, bc
    inc hl
    nop
    dec de
    dec e
    nop
    ld l, h
    ld l, l
    ld e, [hl]
    ld e, a
    add d
    nop
    add d
    db $FD
    add h
    nop
    add d
    db $FD
    inc b
    nop
    ld c, e
    daa
    ccf
    add d
    db $FD
    ld bc, $843D
    nop
    inc b
    inc [hl]
    inc de
    ld l, [hl]
    ld l, a
    add d
    nop
    add d
    db $FD
    add h
    nop
    ld [bc], a
    dec de
    dec e
    add e
    nop
    inc b
    ld c, a
    db $FD
    db $FD
    ld c, l
    add h
    nop
    ld [bc], a
    ld [hl+], a
    inc hl
    add h
    nop
    ld [bc], a
    dec de
    dec e
    adc c
    nop
    inc b
    ld e, a
    db $FD
    db $FD
    ld e, l
    adc c
    nop
    add e
    db $FD
    add a
    nop
    inc bc
    db $FD
    nop
    ld l, a
    add d
    db $FD
    ld bc, $856D
    nop
    ld bc, $83FD
    nop
    add e
    db $FD
    add h
    nop
    add d
    db $FD
    inc b
    nop
    dec hl
    nop
    ld l, b
    add d
    db $FD
    inc bc
    ld e, d
    nop
    db $FD
    add e
    nop
    ld bc, $832B
    nop
    inc bc
    dec de
    inc e
    dec e
    add h
    nop
    add d
    db $FD
    add e
    nop
    ld b, $6B
    db $FD
    db $FD
    ld a, [hl-]
    nop
    dec hl

jr_02C_7DA1:
    adc e
    nop
    add d
    db $FD
    inc bc
    nop
    dec de
    dec e
    add e
    nop
    inc b
    ccf
    db $FD
    db $FD
    dec a
    adc l
    nop
    ld [bc], a
    dec de
    dec e
    add e
    nop
    ld b, $FD
    nop
    nop
    ld c, a
    db $FD
    db $FD
    ld bc, $924D
    nop
    ld b, $2B
    nop
    nop
    ld e, a
    db $FD
    db $FD
    ld bc, $955D
    nop
    inc b
    ld l, a
    db $FD
    db $FD
    ld l, l
    sub l
    db $FD
    inc b
    ccf
    db $FD
    db $FD
    ld a, [hl-]
    sub l
    db $FD
    inc b
    ld c, a
    db $FD
    db $FD
    ld c, d
    sub l
    db $FD
    ld a, [de]
    ld e, a
    db $FD
    db $FD
    ld a, d
    ld a, e
    ld e, c
    ld a, l
    ld a, [hl]
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld l, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    xor a
    sbc d
    db $FD
    nop
    rla
    rst $08
    nop
    inc c
    ld [$019E], sp
    inc b
    ld d, l
    ld [$180B], sp
    add d
    dec de
    ld bc, $896F
    nop
    dec bc
    ld [hl], h
    jr @+$4F

    jr @+$2A

    or b
    call nc, $1854
    dec de
    jr z, jr_02C_7DA1

    dec hl
    ld bc, $852F
    nop
    inc bc
    dec c
    nop
    nop
    add d
    ld [$2809], sp
    ld e, l
    jr z, jr_02C_7E67

    ret nz

    sub h
    ld h, h
    jr z, jr_02C_7E5F

    add e
    dec sp
    ld [de], a
    ccf
    ld e, a
    nop
    dec c
    ld c, $18
    dec e
    rra
    ld c, $0A
    jr @+$5B

    inc [hl]
    jr c, @+$4A

    cp c
    ret nz

    ld [hl], h
    add d
    dec sp
    add e
    ld bc, $6C24
    ld l, a
    jr jr_02C_7E6F

    ld e, $28
    dec l
    cpl
    ld e, $1A
    jr z, @+$6D

    or a
    or e
    push bc
    ret


    cp b

jr_02C_7E5F:
    add h
    cp b
    ld bc, $01C4
    push bc
    ld e, h
    cpl

jr_02C_7E67:
    jr z, @+$2F

    ld l, $38
    dec a
    ccf
    ld l, $2A

jr_02C_7E6F:
    jr c, @+$7D

    rst $00
    add d
    ld bc, $C515
    ret z

    ld d, h
    ret z

    ld bc, $01C5
    call nz, $3F7C
    jr c, @+$3F

    ld a, $48
    ld bc, $A04F
    adc c
    and c
    and d
    call nz, $0182
    inc b
    call nz, Call_02C_6401
    push bc
    add d
    ld bc, $B405
    ld bc, $C401
    ld c, e
    add h
    ld bc, $A006
    and h
    and $F3
    and e
    and d
    add e
    ld bc, $B403
    ld h, [hl]
    add l
    add d
    ld bc, $C505
    ld bc, $C5B4
    or a
    add d
    ld bc, $C508
    ld bc, $B1B0
    db $F4
    add e
    di
    or d
    add d
    ld bc, $C504
    ld bc, $7666
    add [hl]
    ld bc, $C70B
    ld bc, $BDBC
    ld bc, $B1B0
    ldh [$F5], a
    sub e
    jp nz, $0182

    inc b
    or h
    cp e
    nop
    ld d, h
    add d
    or e
    rrca
    call nz, $C3B5
    ld bc, $01C3
    call z, $01CD
    ret nz

    pop bc
    sub h
    db $F4
    or d
    cp e
    add d
    ld bc, $C415
    rlc b
    ld h, h
    ld e, e
    call nz, $B701
    or l
    ld bc, $01C5
    call nz, $C3C5
    call nz, $C0B4
    pop bc
    jp nz, $82CB

    ld bc, $C51E
    or h
    nop
    ld [hl], h
    ld e, e
    ld bc, $C7C3
    jp $B401


    ld bc, $B5B4
    ld bc, $01B5
    or h
    call nz, $01C5
    push bc
    or h
    push bc
    and b
    nop
    add h
    ld e, e
    or e
    or [hl]
    add d
    push bc
    ld [bc], a
    ld bc, $83C4
    ld bc, $C522
    cp b
    or h
    cp h
    cp l
    ld bc, $B4BA
    ld bc, $A4A0
    nop
    sub l
    add l
    ld bc, $B3C6
    and b
    and d
    push bc
    call nz, $01C5
    or h
    ret z

    cp d
    call z, $B4CD
    jp z, $A001

    and h
    db $F4
    add d
    nop
    rlca
    sub l
    sub [hl]
    ld bc, $B0C5
    adc h
    and d
    add l
    ld bc, $CA06
    ld bc, $A001
    and c
    and c
    inc bc
    and h
    db $E3
    db $DD
    add d
    nop
    rlca
    ld h, [hl]
    ld d, h
    ld bc, $C0C4
    pop bc
    jp nz, $0184

    ld a, [bc]
    or h
    ld bc, $A001
    and h
    sub $D4
    or c
    call c, $83ED
    nop
    db $10
    ld h, h
    ld e, e
    push bc
    or e
    cp h
    cp l
    or e
    cp d
    ld bc, $01C4
    and b
    and c
    and h
    or c
    and $82
    or c
    ld [bc], a
    db $EC
    or c
    add e
    nop
    ld [bc], a
    ld [hl], h
    ld e, e
    add d
    ld bc, $CC0B
    call $CA01
    push bc
    or l
    and b
    and h
    push af
    or c
    push de
    add d
    or c
    inc bc
    ld a, [c]
    or c
    ldh [rP1], a
    ld [hl-], a
    jp nz, $2701

    jr z, @-$3A

    add hl, bc
    ld bc, $846A
    ld l, e
    ld bc, $826A
    ld [hl], a
    xor d
    nop
    ld [bc], a
    ld a, b
    ld e, c
    add e
    ld a, c
    inc bc
    ld a, d
    jr z, @+$79

    xor d
    nop
    add d
    cp d
    add e
    xor e
    add e
    jr z, @-$54

    nop
    ld bc, $82BA
    xor e
    add d
    jr z, @-$7C

    xor e
    ld bc, $AA58
    nop
    dec b
    xor e
    cp h
    cp d
    xor e
    ld e, b
    add d
    ld a, c
    ld bc, $AA7A
    nop
    add d
    xor e
    inc bc
    cp h
    ld e, b
    ld a, d
    add e
    ld l, e
    xor d
    nop
    add e
    xor e
    ld bc, $846A
    ld l, e
    ret z

    sub a
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
