; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02d", ROMX[$4000], BANK[$2d]

    inc hl
    ret


    inc b
    and h
    ld [$00A1], sp
    add d
    ld [$0001], sp
    sbc a
    ld [$0004], sp
    ld [$0008], sp
    sbc a
    ld [$0004], sp
    ld [$0008], sp
    sbc a
    ld [$0004], sp
    ld [$0008], sp
    sbc a
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0282], sp
    adc b
    ld [$0289], sp
    inc b
    ld [$0000], sp
    ret nz

    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0293], sp
    add d

Jump_02D_4040:
    ld [$0082], sp
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0293], sp
    add d
    ld [$0202], sp
    nop
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0290], sp
    add d
    nop
    add l
    ld [bc], a
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$028C], sp
    add [hl]
    nop
    add l
    ld [bc], a
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0284], sp
    ld bc, $9200
    ld [bc], a
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0297], sp
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0297], sp
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0292], sp
    ld bc, $8400
    ld [bc], a
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0290], sp
    add e
    nop
    add h
    ld [bc], a
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0291], sp
    add d
    nop
    add d
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$028B], sp
    add e
    nop
    add a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0282], sp
    add d
    nop
    add a
    ld [bc], a
    add e
    nop
    adc c
    ld [bc], a
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0201], sp
    add e
    nop
    adc b
    ld [bc], a
    add d
    nop
    adc c
    ld [bc], a
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0283], sp
    ld bc, $8800
    ld [bc], a
    ld bc, $8A00
    ld [bc], a
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0297], sp
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0297], sp
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0297], sp
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$028C], sp
    ld bc, $8A00
    ld [bc], a

Jump_02D_4141:
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0084], sp
    adc b
    ld [bc], a
    ld bc, $8A00
    ld [bc], a
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0084], sp
    adc l
    ld [bc], a
    ld bc, $8500
    ld [bc], a
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0084], sp
    sub e
    ld [bc], a
    add h
    ld [$0004], sp
    ld [$0008], sp
    add h
    ld [$0084], sp
    sub e
    ld [bc], a
    add h
    ld [$0004], sp
    ld [$0008], sp
    sbc a
    ld [$0004], sp
    ld [$0008], sp
    sbc a
    ld [$0004], sp
    ld [$0008], sp
    sbc a
    ld [$0004], sp
    ld [$0008], sp
    sbc a
    ld [$0003], sp
    ld [$A108], sp
    nop
    and h
    ld [$1400], sp
    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $9741
    ld [$3E28], sp
    dec l
    ld h, $67
    daa
    cpl
    add hl, hl
    dec e
    dec l
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    rrca
    ld h, a
    jr jr_02D_422A

    ld [$2D3D], sp
    ld l, $2F
    ccf
    db $FD
    dec l
    dec a
    dec e
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    rra
    ld h, a
    rrca
    ld h, a
    jr @+$69

    dec a
    ld a, $3F
    rlca
    ld h, a
    dec a
    dec e
    dec e
    ld e, $27
    ld l, $2E
    ld h, $67
    rra
    ld h, a
    rra
    ld h, a
    ld h, a
    ld a, [$6767]
    ld h, a
    rla
    ld h, a
    jr z, jr_02D_4211

    dec l
    ld l, $2F
    ld a, $3E
    dec l
    ld l, $2F
    ld h, a
    rra
    ld h, a
    jr z, jr_02D_422A

    add hl, hl
    add hl, bc
    ld h, a
    jr z, jr_02D_426D

    add hl, hl
    dec e
    dec a
    ld a, $3F
    ld h, a
    ld h, a
    dec a
    ld a, $3F
    ld h, a

jr_02D_4211:
    rra
    ld h, a
    ld a, [hl+]
    ld [$1967], sp
    ld h, a
    ld h, a
    ld h, a
    dec c
    dec l
    ld l, $67
    ld h, a
    daa
    ld l, $2E
    ld l, $67
    ld h, a
    rra
    ld h, a
    ld h, a
    jr jr_02D_4291

jr_02D_422A:
    jr z, jr_02D_4255

    dec c
    ld c, $67
    dec a
    ld a, $2E
    ld l, $2F
    ld a, $3E
    ld a, $1D
    ld h, a
    cpl
    ld h, a
    add hl, bc
    add hl, hl
    ld h, a
    ld a, [$1D67]
    ld h, a
    ld h, a

Call_02D_4243:
    daa
    cpl
    ld a, $3E
    ccf
    ld h, a
    db $FD
    ld h, a
    dec e
    ld h, a
    ccf
    ld h, a
    add hl, de
    inc l
    ld h, a
    jr z, jr_02D_427C

    dec l

jr_02D_4255:
    ld h, $67
    rra
    ccf
    add hl, hl
    add hl, hl
    ld h, a
    add hl, hl
    ld h, a
    add hl, hl
    dec e
    ld h, a
    rrca
    ld e, d
    ld h, a
    ld h, a
    ld h, a
    ld a, [$3D67]
    dec l
    ld h, $1F
    ld h, a

jr_02D_426D:
    ld h, a
    ld h, a
    ld a, [$6767]
    ld h, a
    dec l
    ld h, $67
    ld c, $0E
    rrca
    inc e
    rlca
    ld h, a

jr_02D_427C:
    add hl, hl
    dec a
    dec e
    rra
    add hl, hl
    ld h, a
    ld a, [de]
    add hl, hl
    jr z, @+$2B

    ld a, [de]
    dec a
    dec e
    daa
    ld l, $2E
    cpl
    rrca
    rla
    ld h, a
    ld c, l

jr_02D_4291:
    ld c, [hl]
    dec e
    rra
    ld e, d
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    dec e
    cpl
    ld a, $3E
    ccf
    rra
    jr z, jr_02D_42D0

    ld e, l
    ld l, a
    dec e
    rra
    add hl, bc
    ld h, a
    ld a, [hl+]
    add hl, hl
    add hl, hl
    dec hl
    jr z, jr_02D_42CA

    dec e
    ccf

jr_02D_42B2:
    ld l, $2E
    ld l, $2F
    rlca
    inc l
    ld h, a
    ld h, a
    dec e
    rra
    add hl, de
    ld h, a
    ld h, a
    ld c, l
    ld c, [hl]
    ld h, a
    ld h, a
    ld a, [$2F2D]
    ld a, $3E
    ld a, $3F

jr_02D_42CA:
    rla
    add hl, bc
    ld h, a
    ld h, a
    dec e
    rra

jr_02D_42D0:
    adc h
    ld a, e
    ld h, a
    ld e, l
    ld l, a
    ld h, a
    ld h, a
    ld h, a
    dec a
    ccf
    dec hl
    ld h, a
    ld h, a
    ld h, a
    ld e, d
    add hl, de
    ld c, [hl]
    ld c, a
    dec l
    cpl
    ld [$1A29], sp
    add hl, hl
    dec hl
    add hl, hl
    inc l
    ld h, a
    add hl, hl
    add hl, bc
    ld h, a
    ld a, [$9B67]
    ld h, a
    dec hl

jr_02D_42F4:
    ld l, l
    ld e, a
    dec a
    ccf
    jr jr_02D_42F4

    ld c, l
    ld c, [hl]
    ld c, a
    ld h, a
    ld h, a
    ld a, [$192C]
    ld h, a
    ld h, a
    ld a, [$6767]
    ld h, a
    ld h, a
    ld l, l
    ld e, a
    ld h, a
    add hl, hl
    ld h, a
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, a
    ld h, a
    ld h, a
    add hl, hl
    jr z, jr_02D_42B2

    ld h, a
    dec c
    ld c, $0E
    ld c, $0E
    rrca
    add hl, hl
    adc h
    ld h, a
    ld h, a
    ld l, l
    ld l, [hl]
    ld l, a
    ld h, a
    ld h, a
    ld a, [hl+]
    dec c
    dec c
    ld c, $0E
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    rrca
    jr z, jr_02D_435D

    add hl, hl
    inc l
    add hl, hl
    jr z, jr_02D_4354

    add hl, hl
    dec c
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $84
    inc bc
    or [hl]
    ld [$4185], sp
    adc a
    ld [$4182], sp
    ld [bc], a
    jp $8441


jr_02D_4354:
    ld [$4102], sp
    ld b, b
    add l
    nop
    ld bc, $8CC6

jr_02D_435D:
    ld [$4102], sp
    ld b, b
    add h
    nop
    inc b
    ld b, c
    ld [$4108], sp
    add a
    nop
    ld bc, $8BC6
    ld [$4101], sp
    add [hl]
    nop
    add e
    ld b, c
    add d
    nop
    add [hl]
    ld b, c
    adc h
    ld [$4101], sp
    adc d
    nop
    ld bc, $9241
    ld [$4101], sp
    add [hl]
    nop
    add h
    ld b, c
    sub h
    ld [$4101], sp
    add l
    nop
    ld bc, $9841
    ld [$4183], sp
    add d
    nop
    ld bc, $8E41
    ld [$4103], sp
    call nz, $8941
    ld [$4101], sp
    add e
    nop
    ld bc, $8341
    ld [$4183], sp
    inc bc
    jp nz, Jump_02D_4141

    add e
    ld [$4001], sp
    add e
    nop
    add e
    ld b, c
    add a
    ld [$4101], sp
    add e
    nop
    add e
    ld b, c
    add l
    nop
    inc b
    ld b, c
    ld [$4108], sp
    add a
    nop
    add e
    ld b, c
    add l
    ld [$4182], sp
    adc c
    nop
    inc b
    ld b, c
    ld [$4108], sp
    adc c
    nop
    add e
    ld b, c
    add l
    ld [$4183], sp
    add l
    nop
    ld bc, $8341
    ld [$4101], sp
    adc e
    nop
    add e
    ld b, c
    add [hl]
    ld [$4101], sp
    add h
    nop
    ld bc, $8441
    ld [$4101], sp
    add h
    nop
    add d
    ld b, c
    add l
    nop
    add e
    ld b, c
    add l
    ld [$4101], sp
    add h
    nop
    ld bc, $8541
    ld [$4104], sp
    ld b, b
    nop
    ld b, c
    add d
    ld [$4101], sp
    add [hl]
    nop
    add e
    ld b, c
    add h
    ld [$4101], sp
    add e
    nop
    ld bc, $8741
    ld [$4101], sp
    add h
    ld [$4182], sp
    add [hl]
    nop
    add e
    ld b, c
    add e
    ld [$4182], sp
    ld [bc], a
    nop
    ld b, c
    adc [hl]
    ld [$4183], sp
    add l
    nop
    add d
    ld b, c
    add e
    ld [$4103], sp
    nop
    ld b, c
    sub c
    ld [$4183], sp
    add h
    nop
    ld b, $41
    ld [$4108], sp
    nop
    ld b, c
    sub h
    ld [$4183], sp
    inc b
    nop
    ld b, c
    pop bc
    ld b, c
    add d
    nop
    ld bc, $8941
    ld [$4182], sp
    ld bc, $8308
    ld b, c
    ld [bc], a
    ret nz

    ld b, c
    add l
    ld [$4101], sp
    add l
    nop
    ld bc, $8841
    ld [$4102], sp
    ld b, b
    add d
    nop
    ld bc, $8540
    nop
    ld bc, $8441
    ld [$4101], sp
    add l
    nop
    ld bc, $8741
    ld [$4001], sp
    adc d
    nop
    ld bc, $8541
    ld [$4101], sp
    add h
    nop
    ld bc, $8641
    ld [$4101], sp
    adc e
    nop
    add a
    ld b, c
    add h
    nop
    ld bc, $8641
    ld [$4101], sp
    sub [hl]
    nop
    ld bc, $8641
    ld [$4101], sp
    adc e
    nop
    add l
    ld b, c
    add h
    nop
    inc bc
    ld b, b
    nop
    ld b, b
    add [hl]
    ld [$4101], sp
    adc e
    nop
    ld bc, $8441
    ld [$4101], sp
    add l
    nop
    ld bc, $8641
    ld [$4103], sp
    nop
    nop
    add d
    ld b, c
    add h
    nop
    add h
    ld b, c
    add l
    ld [$4186], sp
    add [hl]
    ld [$4105], sp
    nop
    nop
    ld b, c
    ld [$4184], sp
    sub [hl]
    ld [$C582], sp
    sbc b
    ld [$1900], sp
    pop hl
    nop
    ld c, $0F
    ld [hl], c
    ld [bc], a
    sbc d
    db $FD
    rla
    inc a
    ld a, l
    ld l, b
    ld l, c
    dec sp
    ld l, b
    ld l, c
    ld a, h
    ld l, d
    halt
    ld [hl], a
    ld a, h
    ld e, d
    ld c, b
    ld c, c
    ld e, b
    ld h, a
    dec sp
    ld l, b
    ld l, c
    ld e, d
    ld b, [hl]
    ld l, d
    add d
    db $FD
    ld bc, $844A
    db $FD
    adc d
    nop
    add e
    db $FD
    add h
    nop
    inc b
    inc a
    db $FD
    db $FD
    inc l
    add h
    db $FD
    add [hl]
    nop
    ld bc, $83FD
    nop
    add e
    db $FD
    add h
    nop
    inc b
    ld c, h
    db $FD
    db $FD
    inc a
    add h
    db $FD
    add e
    nop
    add d
    db $FD
    ld [bc], a
    nop
    dec hl
    add e
    nop
    inc bc
    dec de
    inc e
    dec e
    add h
    nop
    inc b
    ld e, h
    db $FD
    db $FD
    ld c, h
    add h
    db $FD
    add e
    nop
    add d
    db $FD
    adc h
    nop
    dec b
    ld l, h
    db $FD
    db $FD
    ld e, h
    dec de
    add d
    inc e
    inc bc
    dec e
    nop
    nop
    add e
    db $FD
    adc h
    nop
    inc b
    ld l, e
    db $FD
    db $FD
    ld l, h
    add [hl]
    nop
    add e
    db $FD
    adc h
    nop
    inc b
    inc a
    db $FD
    db $FD
    dec d
    add [hl]
    nop
    inc bc
    dec de
    inc e
    dec e
    adc h
    nop
    ld b, $4C
    db $FD
    db $FD
    dec h
    db $FD
    db $FD
    sub e
    nop
    ld b, $3C
    db $FD
    db $FD
    dec [hl]
    db $FD
    db $FD
    add h
    nop
    add d
    db $FD
    add h
    nop
    add d
    db $FD
    add l
    nop
    add d
    db $FD
    ld b, $4C
    db $FD
    db $FD
    ld b, l
    db $FD
    db $FD
    add h
    nop
    ld [bc], a
    dec de
    dec e
    add h
    nop
    add d
    db $FD
    add l
    nop
    add d
    db $FD
    ld b, $5C
    db $FD
    db $FD
    ccf
    db $FD
    db $FD
    adc d
    nop
    ld [bc], a
    dec de
    dec e
    add l
    nop
    add d
    db $FD
    ld b, $6C
    db $FD
    db $FD
    ld c, a
    db $FD
    db $FD
    add l
    nop
    ld bc, $8BFD
    nop
    add d
    db $FD
    ld b, $25
    db $FD
    db $FD
    ld e, a
    dec de
    dec e
    add l
    nop
    ld bc, $862B
    nop
    add d
    db $FD
    add e
    nop
    add d
    db $FD
    inc b
    dec [hl]
    db $FD
    db $FD
    ld l, a
    add h
    nop
    ld bc, $83FD
    nop
    ld bc, $85FD
    nop
    add d
    db $FD
    add e
    nop
    add d
    db $FD
    inc b
    ld b, l
    db $FD
    db $FD
    ccf
    add h
    nop
    ld bc, $832B
    nop
    ld bc, $852B
    nop
    ld [bc], a
    dec de
    dec e
    add e
    nop
    add d
    db $FD
    inc b
    ld e, e
    db $FD
    db $FD
    dec a
    sub e
    nop
    add d
    db $FD

jr_02D_4600:
    inc b
    jr nz, jr_02D_4600

    db $FD
    ld c, l
    add a
    nop
    add d
    db $FD
    adc d
    nop
    add d
    db $FD

jr_02D_460D:
    inc b
    jr nc, jr_02D_460D

    db $FD
    ld e, l
    add [hl]
    nop
    inc bc
    add hl, de
    dec de
    dec e
    adc d
    nop
    add d
    db $FD
    inc b
    ld b, b
    db $FD
    db $FD
    ld l, l
    add [hl]
    nop
    ld b, $29
    nop
    nop
    ld a, [de]
    nop
    nop
    add l
    db $FD
    add d
    nop
    add d
    db $FD
    inc b
    inc d
    db $FD
    db $FD
    ld l, c
    add l
    nop
    ld [bc], a
    add hl, de
    rst $10
    add d
    db $FD
    inc bc
    ld a, [hl+]
    ld a, [de]
    nop
    add l
    db $FD
    add d
    nop
    add d
    db $FD
    inc b
    inc h
    db $FD
    db $FD
    ld a, c
    add l
    nop
    ld bc, $8329
    db $FD
    inc bc
    reti


    ld a, [hl+]
    nop
    add l
    db $FD
    add d
    nop
    inc bc
    dec de
    inc e
    inc [hl]
    add d
    db $FD
    rla
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld l, e
    ld l, b
    ld a, [hl]
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld c, c
    ld l, b
    halt
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    sbc d
    db $FD
    nop
    ld e, $84
    inc bc
    sub e
    ld [$4683], sp
    sbc d
    ld [$4501], sp
    add e
    nop
    add [hl]
    ld b, l
    sub h
    ld [$4501], sp
    adc b
    nop
    ld bc, $8545
    ld [$0084], sp
    adc e
    ld [$4501], sp
    adc b
    nop
    ld bc, $8545
    ld [$0084], sp
    adc h
    ld [$4502], sp
    call nz, $0085
    ld bc, $8645
    ld [$0084], sp
    adc [hl]
    ld [$4501], sp
    add h
    nop
    ld bc, $8A45
    ld [$4482], sp
    adc l
    ld [$4584], sp
    adc d
    ld [$4404], sp
    nop
    nop
    ld b, h
    sbc d
    ld [$4401], sp
    add e
    nop
    ld bc, $9744
    ld [$4482], sp
    add l
    nop
    add d
    ld b, h
    add d
    ld b, l
    add d
    ld [$4585], sp
    adc c
    ld [$4483], sp
    add h
    nop
    ld bc, $8540
    nop
    inc b
    ld b, l
    ld [$4508], sp
    add e
    nop
    add e
    ld b, l
    add [hl]
    ld [$C501], sp
    adc l
    nop
    inc b
    ld b, l
    ld [$4508], sp
    add l
    nop
    ld bc, $8645
    ld [$C501], sp
    adc l
    nop
    inc b
    ld b, l
    ld [$4508], sp
    add [hl]
    nop
    ld bc, $8645
    ld [$4582], sp
    adc e
    nop
    ld b, $45
    ld [$4508], sp
    nop
    nop
    ld bc, $8342
    nop
    ld bc, $8845
    ld [$4501], sp
    adc c
    nop
    ld bc, $8345
    ld [$4501], sp
    add l
    nop
    ld bc, $8945
    ld [$4501], sp
    add [hl]
    nop
    inc bc
    ld b, c
    nop
    ret nz

    add h
    ld [$4582], sp
    ld bc, $84C1
    ld b, l
    adc d
    ld [$4501], sp
    add a
    nop
    ld bc, $8545
    ld [$4583], sp
    adc [hl]
    ld [$4583], sp
    add h
    nop
    ld bc, $9945
    ld [$4585], sp
    add [hl]
    ld [$4585], sp
    adc [hl]
    ld [$4585], sp
    add [hl]
    ld [$4501], sp
    add e
    nop
    add l
    ld b, l
    add h
    ld [$4583], sp
    add e
    ld [$4501], sp
    add e
    nop
    ld bc, $8645
    ld [$C201], sp
    add a
    nop
    ld bc, $8345
    ld [$4504], sp
    nop
    nop
    ld b, l
    add e
    ld [$C301], sp
    add e
    nop
    ld bc, $8445
    ld [$4583], sp
    add a
    nop
    ld bc, $8345
    ld [$0083], sp
    inc bc
    ld b, l
    ld [$8208], sp
    ld b, l
    add e
    nop
    add e
    ld b, l
    add d
    ld [$4501], sp
    adc c
    nop
    inc b
    ld b, l
    ld [$C608], sp
    add e
    nop
    inc b
    ld b, l
    ld [$4508], sp
    add [hl]
    nop
    inc b
    ld b, l
    ld [$4508], sp
    adc c
    nop
    inc b
    ld b, l
    ld [$C608], sp
    add e
    nop
    inc b
    ld b, l
    ld [$4508], sp
    add [hl]
    nop
    inc b
    ld b, l
    ld [$4508], sp
    add [hl]
    nop
    ld b, $43
    nop
    nop
    ld b, l
    ld [$0108], sp
    ld b, l
    add e
    nop
    ld b, $45
    ld [$4508], sp
    nop
    nop
    add d
    ld b, l
    add d
    nop
    inc bc
    ld b, l
    ld [$8608], sp
    ld b, l
    add e
    nop
    ld bc, $8445
    ld [$4506], sp
    nop
    nop
    ld b, l
    ld [$8808], sp
    ld b, l
    add a
    ld [$4584], sp
    add [hl]
    ld [$4583], sp
    ret nz

    ld d, l
    ld [$1E00], sp
    add h
    inc bc
    xor a
    ld [$0083], sp
    sbc d
    ld [$0087], sp
    sub [hl]
    ld [$0089], sp
    adc [hl]
    ld [$0082], sp
    add h
    ld [$0089], sp
    ld [bc], a
    ld b, l
    nop
    adc h
    ld [$0084], sp
    add d
    ld [$0002], sp
    ld b, a
    add e
    nop
    add e
    jp $0083


    adc d
    ld [$0083], sp
    ld bc, $8349
    nop
    add d
    ld [$0085], sp
    add e
    jp $0082


    adc d
    ld [$0087], sp
    add e
    ld [$0082], sp
    ld bc, $8646
    nop
    add e
    ld [$0082], sp
    add [hl]
    ld [$0082], sp
    add d
    call nz, $0083
    add e
    ld [$0088], sp
    add e
    ld [$0084], sp
    add [hl]
    ld [$0001], sp
    add d
    call nz, $0084
    add e
    ld [$0086], sp
    add e
    ld [$0083], sp
    adc c
    ld [$0084], sp
    ld [bc], a
    ld c, b
    nop
    add h
    ld [$0084], sp
    add e
    ld [$0002], sp
    ld b, e
    add d
    nop
    adc d
    ld [$0084], sp
    adc h
    ld [$0084], sp
    sbc d
    ld [$0084], sp
    sub c
    ld [$0084], sp
    add h
    ld [$0085], sp
    adc e
    ld [$0082], sp
    add e
    ld [$0082], sp
    add d
    push bc
    add d
    nop
    add d
    ld [$0083], sp
    ld bc, $83C2
    nop
    adc c
    ld [$0084], sp
    add d
    ld [$0001], sp
    add h
    push bc
    ld bc, $8200
    ld [$0083], sp
    ld bc, $83C2
    nop
    add [hl]
    ld [$0087], sp
    add d
    ld [$0001], sp
    add h
    push bc
    ld bc, $8200
    ld [$0087], sp
    add l
    ld [$0084], sp
    add d
    ret nz

    add d
    nop
    add d
    ld [$0082], sp
    add d
    push bc
    add d
    nop
    add d
    ld [$0088], sp
    add h
    ld [$0084], sp
    ld bc, $83C0
    nop
    add e
    ld [$0084], sp
    add h
    ld [$0088], sp
    add e
    ld [$0082], sp
    add h
    ld [$0083], sp
    sub b
    ld [$0082], sp
    add e
    ld [$0082], sp
    add h
    ld [$0083], sp
    sub c
    ld [$0001], sp
    add e
    ld [$0082], sp
    add h
    ld [$0083], sp
    add e
    ld [$008A], sp
    add h
    ld [$0001], sp
    add e
    ld [$0083], sp
    add e
    ld [$0083], sp
    add d
    ld [$0089], sp
    ld bc, $8241
    nop
    add e
    ld [$0001], sp
    add e
    ld [$0084], sp
    add d
    ld [$0083], sp
    add d
    ld [$0084], sp
    ld bc, $86C1
    nop
    ld [bc], a
    ld b, d
    nop
    add d
    ld [$0001], sp
    add h
    ld [$0087], sp
    add h
    ld [$0083], sp
    ld bc, $87C1
    nop
    add e
    ld [$0001], sp
    add h
    ld [$0086], sp
    add [hl]
    ld [$0086], sp
    add a
    ld [$0001], sp
    add h
    ld [$0082], sp
    ld bc, $83C6
    nop
    add a
    ld [$0084], sp
    add a
    ld [$0082], sp
    add e
    ld [$008A], sp
    adc e
    ld [$0086], sp
    add e
    ld [$0082], sp
    add h
    ld [$0083], sp
    ld [bc], a
    ld b, b
    nop
    adc c
    ld [$0003], sp
    ld b, h
    rst $00
    add e
    nop
    and b
    ld [$1E00], sp
    add h
    inc bc
    sbc h
    ld [$4001], sp
    sbc c
    ld [$4101], sp
    add e
    nop
    ld bc, $9640
    ld [$4103], sp
    call nz, $8441
    nop
    ld bc, $9340
    ld [$4082], sp
    ld bc, $8741
    nop
    ld bc, $8D40
    ld [$4086], sp
    adc d
    nop
    inc bc
    ld b, b
    ld [$8308], sp
    ld b, b
    add a
    ld [$4001], sp
    adc e
    nop
    add l
    ld b, b
    add d
    ld [$C501], sp
    add e
    nop
    add d
    ld b, c
    ld bc, $84C0
    ld b, c
    adc b
    nop
    add h
    ld b, b
    add a
    ld [$C501], sp
    adc h
    nop
    add [hl]
    ld b, b
    adc h
    ld [$4001], sp
    adc d
    nop
    ld bc, $9240
    ld [$4082], sp
    adc b
    nop
    ld bc, $8740
    ld [$4083], sp
    add l
    ld [$4082], sp
    add e
    ld [$4001], sp
    adc b
    nop
    ld bc, $8640
    ld [$4101], sp
    add e
    nop
    ld [bc], a
    ld b, b
    ld [$4083], sp
    add d
    nop
    inc bc
    add $08
    ld [$4082], sp
    add a
    nop
    ld bc, $8640
    ld [$4101], sp
    add h
    nop
    ld bc, $8540
    nop
    ld bc, $84C6
    ld [$4001], sp
    add [hl]
    nop
    ld bc, $8340
    ld [$4103], sp
    jp $8B41


    nop
    ld bc, $85C6
    ld [$4082], sp
    add e
    nop
    ld bc, $8340
    ld [$4101], sp
    adc c
    nop
    add h
    ld b, b
    ld [bc], a
    nop
    add $87
    ld [$4001], sp
    add e
    nop
    inc b
    ld b, b
    ld [$4008], sp
    adc b
    nop
    ld bc, $8440
    ld [$4002], sp
    add $88
    ld [$4004], sp
    nop
    nop
    ld b, b
    add e
    ld [$4001], sp
    add a
    nop
    ld bc, $8540
    ld [$C601], sp
    adc b
    ld [$4004], sp
    nop
    nop
    ld b, b
    add h
    ld [$4083], sp
    add h
    nop
    ld bc, $8E40
    ld [$4004], sp
    nop
    nop
    ld b, b
    add a
    ld [$4004], sp
    nop
    nop
    ld b, b
    adc a
    ld [$4004], sp
    nop
    nop
    ld b, b
    add a
    ld [$4004], sp
    nop
    nop
    ld b, b
    adc e
    ld [$4102], sp
    pop bc
    add d
    ld b, c
    add e
    nop
    ld bc, $8740
    ld [$4001], sp
    add e
    nop
    ld bc, $8940
    ld [$4001], sp
    adc b
    nop
    ld bc, $8740
    ld [$4004], sp
    nop
    nop
    ld b, b
    adc b
    ld [$4001], sp
    adc d
    nop
    add e
    ld b, b
    add h
    ld [$4004], sp
    nop
    nop
    ld b, b
    adc b
    ld [$4001], sp
    add [hl]
    nop
    add d
    ld b, b
    add l
    nop
    ld [bc], a
    ld b, c
    jp nz, $4182

    add e
    nop
    ld bc, $8840
    ld [$4001], sp
    add [hl]
    nop
    inc bc
    ld b, b
    ld [$8B40], sp
    nop
    ld bc, $8840
    ld [$4001], sp
    add e
    nop
    add e
    ld b, b
    add e
    ld [$4084], sp
    add a
    nop
    ld bc, $8840
    ld [$4084], sp
    adc d
    ld [$4001], sp
    add l
    nop
    ld bc, $9740
    ld [$4001], sp
    add l
    nop
    ld bc, $9840
    ld [$4085], sp
    ret nz

    ld b, h
    ld [$1900], sp
    ld [hl], c
    ld [bc], a
    sbc d
    nop
    sub a
    ld [$0082], sp
    ld bc, $8908
    ld [bc], a
    add e
    nop
    adc c
    ld [bc], a
    dec b
    ld [$0000], sp
    ld [$8802], sp
    ld [$0083], sp
    adc b
    ld [$0202], sp
    ld [$0082], sp
    inc bc
    ld [$0802], sp
    add h
    nop
    adc c
    ld [bc], a
    add h
    nop
    inc bc
    ld [$0802], sp
    add d
    nop
    inc bc
    ld [$0802], sp
    add e
    nop
    add d
    ld [bc], a
    ld bc, $8608
    ld [bc], a
    ld bc, $8408
    nop
    inc bc
    ld [$0802], sp
    add d
    nop
    inc bc
    ld [$0802], sp
    add h
    nop
    ld [bc], a
    ld [bc], a
    ld [$0286], sp
    ld [$0008], sp
    nop
    ld [bc], a
    nop
    ld [$0802], sp
    add d
    nop
    inc bc
    ld [$0802], sp
    sub c
    ld [bc], a
    inc bc
    ld [$0802], sp
    add d
    nop
    inc bc
    ld [$0802], sp
    sub c
    ld [bc], a
    inc bc
    ld [$0802], sp
    add d
    nop
    inc bc
    ld [$0802], sp
    add l
    ld [bc], a
    ld bc, $8600
    ld [bc], a
    ld bc, $8400
    ld [bc], a
    inc bc
    ld [$0802], sp
    add d
    nop
    inc bc
    ld [$0802], sp
    add d
    ld [bc], a
    dec b
    nop
    ld [bc], a
    nop
    ld [$8400], sp
    ld [bc], a
    inc bc
    nop
    ld [$8300], sp
    ld [bc], a
    inc bc
    ld [$0802], sp
    add d
    nop
    inc bc
    ld [$0802], sp
    add l
    ld [bc], a
    ld bc, $8600
    ld [bc], a
    ld [$0200], sp
    ld [bc], a
    ld [$0802], sp
    ld [bc], a
    ld [$0082], sp
    inc bc
    ld [$0802], sp
    adc c
    ld [bc], a
    ld bc, $8508
    ld [bc], a
    dec b
    ld [$0802], sp
    ld [bc], a
    ld [$0082], sp
    inc bc
    ld [$0802], sp
    adc c
    ld [bc], a
    ld bc, $8708
    ld [bc], a
    inc bc
    ld [$0802], sp
    add d
    nop
    inc bc
    ld [$0802], sp
    sub c
    ld [bc], a
    inc bc
    ld [$0802], sp
    add d
    nop
    inc bc
    ld [$0802], sp
    add d
    ld [bc], a
    inc b
    nop
    ld [bc], a
    ld [bc], a
    nop
    add [hl]
    ld [bc], a
    ld bc, $8400
    ld [bc], a
    inc bc
    ld [$0802], sp
    add d
    nop
    inc bc
    ld [$0802], sp
    add d
    ld [bc], a
    dec b
    ld [$0002], sp
    ld [$8400], sp
    ld [bc], a
    inc bc
    nop
    ld [$8300], sp
    ld [bc], a
    inc bc
    ld [$0802], sp
    add d
    nop
    inc bc
    ld [$0802], sp
    add l
    ld [bc], a
    ld bc, $8600
    ld [bc], a
    ld bc, $8400
    ld [bc], a
    inc bc
    ld [$0802], sp
    add d
    nop
    inc bc
    ld [$0802], sp
    add e
    nop
    adc c
    ld [bc], a
    ld [$0200], sp
    nop
    ld [bc], a
    nop
    ld [$0802], sp
    add d
    nop
    inc bc
    ld [$0802], sp
    add e
    nop
    adc e
    ld [bc], a
    add e
    nop
    inc bc
    ld [$0802], sp
    add d
    nop
    inc bc
    ld [$0802], sp
    add e
    nop
    add h
    ld [bc], a
    add e
    nop
    add h
    ld [bc], a
    add e
    nop
    inc bc
    ld [$0802], sp
    add d
    nop
    ld [bc], a
    ld [$8802], sp
    ld [$0083], sp
    adc b
    ld [$0202], sp
    ld [$0082], sp
    ld bc, $8808
    ld [bc], a
    dec b
    ld [$C000], sp
    nop
    ld [$0288], sp
    inc bc
    ld [$0000], sp
    sub a
    ld [$009D], sp
    nop
    ld e, $84
    inc bc
    ret nz

    ld b, h
    ld [$4502], sp
    nop
    sbc b
    ld [$4482], sp
    inc b
    pop bc
    ld c, d
    ld b, l
    nop
    add e
    ld c, d
    add h
    ld [$4605], sp
    ld c, d
    ret nz

    ld c, d
    ld b, a
    adc h
    ld [$4A01], sp
    adc b
    nop
    inc b
    ld c, d
    ld [$4A08], sp
    add l
    nop
    ld bc, $8B4A
    ld [$4A01], sp
    adc b
    nop
    inc b
    ld c, d
    ld [$4A08], sp
    add l
    nop
    ld bc, $8B4A
    ld [$4A01], sp
    add [hl]
    nop
    add d
    ld c, d
    add e
    ld [$4A01], sp
    add [hl]
    nop
    add h
    ld c, d
    add a
    ld [$4002], sp
    ld c, d
    add h
    nop
    ld bc, $864A
    ld [$4A01], sp
    adc c
    nop
    ld bc, $864A
    ld [$4A82], sp
    add e
    nop
    ld bc, $874A
    ld [$4A01], sp
    adc d
    nop
    inc bc
    ld c, d
    ld [$8208], sp
    ld c, d
    inc bc
    ld [$404A], sp
    add e
    ld c, d
    adc c
    ld [$4A01], sp
    adc d
    nop
    ld [bc], a
    ld c, d
    add $82
    nop
    add [hl]
    ld c, d
    ld bc, $8442
    ld [$4A01], sp
    add e
    ld [$4A01], sp
    adc d
    nop
    ld [bc], a
    ld c, d
    add $84
    nop
    add h
    ld c, d
    rlca
    ld b, d
    ld [$4AC2], sp
    ld b, e
    nop
    ld c, d
    add e
    ld [$4A01], sp
    adc c
    nop
    ld [bc], a
    ld c, d
    add $85
    nop
    add h
    ld c, d
    add l
    nop
    ld bc, $834A
    ld [$4A01], sp
    adc c
    nop
    ld [bc], a
    push bc
    add $85
    nop
    add h
    ld c, d
    add l
    nop
    ld bc, $844A
    ld [$4A01], sp
    adc b
    nop
    ld [bc], a
    push bc
    add $82
    nop
    add a
    ld c, d
    add l
    nop
    ld bc, $854A
    ld [$4A86], sp
    add d
    nop
    ld [bc], a
    push bc
    ld [$4A82], sp
    add e
    ld [$4A84], sp
    add l
    nop
    ld bc, $8B4A
    ld [$4A83], sp
    add a
    ld [$4A84], sp
    add h
    nop
    ld bc, $994A
    ld [$4A04], sp
    nop
    nop
    ld c, d
    adc b
    ld [$4A82], sp
    sub c
    ld [$4A82], sp
    adc b
    ld [$4A04], sp
    nop
    nop
    ld c, d
    sbc e
    ld [$4904], sp
    nop
    nop
    ld c, d
    sub [hl]
    ld [$4805], sp
    ld c, d
    call nz, $494A
    add d
    nop
    ld bc, $8E4A
    ld [$4101], sp
    add a
    ld [$4A01], sp
    add a
    nop
    ld bc, $894A
    ld [$4006], sp
    ld c, d
    jp $414A


    ld c, d
    add [hl]
    ld [$4A01], sp
    add a
    nop
    ld bc, $884A
    ld [$4A01], sp
    add [hl]
    nop
    ld bc, $864A
    ld [$4A01], sp
    add [hl]
    nop
    ld bc, $884A
    ld [$4A01], sp
    add [hl]
    nop
    ld bc, $864A
    ld [$4A01], sp
    add l
    nop
    ld bc, $894A
    ld [$4A01], sp
    add [hl]
    nop
    ld bc, $864A
    ld [$4A01], sp
    add h
    nop
    ld bc, $8A4A
    ld [$4A01], sp
    add l
    nop
    ld bc, $884A
    ld [$4A84], sp
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
    inc b
    add hl, de
    adc d
    ld a, [hl]
    adc e
    add h
    ld a, [hl]
    add d
    ld a, e
    ld [bc], a
    ld a, [hl]
    ld a, e
    add d
    ld a, [hl]
    inc bc
    adc c
    ld a, [hl]
    ld a, e
    add e
    ld a, [hl]
    inc b
    adc e
    ld a, [hl]
    ld a, [hl]
    adc e
    add e
    ld a, [hl]
    add e
    add d
    inc b
    adc l
    inc a
    db $FD
    cp $84
    db $FD
    ld bc, $86F1
    db $FD
    inc bc
    dec a
    ld e, c
    inc a
    adc b
    db $FD
    ld b, $3D
    sbc d
    sbc e
    sbc h
    adc l
    ld e, e
    add d
    cp $01
    ld e, b
    add h
    db $FD
    ld bc, $835B
    db $FD
    inc b
    pop af
    db $FD
    db $FD
    ld e, e
    add e
    db $FD
    ld bc, $85FE
    db $FD
    dec b
    ld l, h
    cp l
    cp [hl]
    cp a
    adc l
    add d
    db $FD
    ld bc, $88FE
    db $FD
    ld bc, $8658
    db $FD
    inc bc
    cp $58
    cp $84
    db $FD
    dec b
    ld l, h
    call $CFCE
    adc l
    add h
    db $FD
    ld bc, $8658
    db $FD
    ld bc, $875B
    db $FD
    inc bc
    cp $4A
    pop af
    add e
    db $FD
    dec b
    ld l, h
    db $DD
    sbc $DF
    adc c
    adc c
    db $FD
    add d
    cp $84
    db $FD
    ld bc, $84F1
    db $FD
    ld a, [bc]
    ld e, b
    db $FD
    db $FD
    pop af
    ld e, e
    ld l, h
    db $ED
    xor $EF
    adc l
    add [hl]
    db $FD
    ld bc, $83F1
    db $FD
    ld bc, $84FE
    db $FD
    ld bc, $8A5B
    db $FD
    add d
    ld a, h
    dec b
    dec hl
    adc e
    ld e, b
    db $FD
    pop af
    add e
    db $FD
    ld bc, $9359
    db $FD
    inc b
    ld e, e
    ld l, c
    adc e
    adc l
    adc c
    db $FD
    ld [bc], a
    ld e, e
    cp $85
    db $FD
    ld bc, $8AF1
    db $FD
    inc bc
    dec a
    adc c
    adc e
    add d
    db $FD
    ld bc, $865B
    db $FD
    ld bc, $86FE
    db $FD
    ld bc, $8B4A
    db $FD
    ld [bc], a
    dec hl
    adc d
    sub b
    db $FD
    ld bc, $8B59
    db $FD
    inc bc
    dec hl
    adc d
    ld c, h
    adc [hl]
    db $FD
    inc bc
    ld c, l
    ld e, e
    ld c, h
    adc c
    db $FD
    rlca
    ld c, l
    dec hl
    adc l
    ld c, c
    ld e, c
    ld c, d
    ld e, c
    add e
    ld c, d
    inc bc
    ld c, c
    ld c, d
    ld c, d
    add d
    ld e, e
    ld [bc], a
    ld c, d
    ld e, c
    add e
    ld c, d
    inc b
    ld e, c
    ld c, c
    ld c, d
    ld e, c
    add d
    ld c, d
    rlca
    ld e, c
    ld c, c
    ld e, c
    ld c, d
    ld e, e
    adc d
    adc l
    sbc h
    db $FD
    ld [bc], a
    dec hl
    adc d
    sbc h
    db $FD
    add d
    adc e
    sbc h
    db $FD
    ld [bc], a
    dec hl
    adc c
    sbc h
    db $FD
    ld [bc], a
    adc e
    adc d
    sbc h
    db $FD
    ld [bc], a
    adc c
    adc l
    sbc h
    db $FD
    ld [bc], a
    dec hl
    adc l
    sbc h
    db $FD
    ld [bc], a
    adc d
    adc l
    sbc h
    db $FD
    ld [bc], a
    adc c
    adc e
    sbc h
    db $FD
    ld [bc], a
    dec hl
    adc l
    sbc h
    db $FD
    ld [bc], a
    dec hl
    adc d
    sbc h
    db $FD
    ld [bc], a
    dec hl
    adc l
    sbc h
    db $FD
    ld [bc], a
    adc e
    adc l
    sbc h
    db $FD
    ld [bc], a
    dec hl
    adc e
    sbc h
    db $FD
    ld [bc], a
    dec hl
    adc c
    sbc h
    db $FD
    ld [bc], a
    adc e
    adc l
    sbc h
    db $FD
    inc b
    dec hl
    add hl, sp
    ld a, [hl-]
    adc c
    add d
    ld a, [hl-]
    rlca
    adc e
    ld a, e
    ld a, [hl-]
    ld a, e
    ld a, [hl-]
    adc e
    ld a, [hl-]
    add d
    ld a, e
    ld [bc], a
    adc c
    ld a, e
    add h
    ld a, [hl-]
    ld [bc], a
    adc d
    adc e
    add d
    ld a, [hl-]
    inc bc
    ld a, e
    ld a, [hl-]
    adc d
    add d
    ld a, [hl-]
    ld bc, $003B
    ld e, $84
    inc bc
    adc l
    ld [$C684], sp
    sbc c
    ld [$4001], sp
    add h
    nop
    ld bc, $9840
    ld [$4001], sp
    add h
    nop
    ld bc, $9840
    ld [$4001], sp
    add e
    nop
    ld bc, $9840
    ld [$4082], sp
    inc b
    nop
    ld b, c
    nop
    ld b, b
    sub a
    ld [$4001], sp
    add h
    nop
    ld bc, $9740
    ld [$4001], sp
    add e
    nop
    add d
    ld b, b
    sub l
    ld [$4002], sp
    jp $4082


    add e
    nop
    ld bc, $8540
    ld [$4001], sp
    adc a
    ld [$4001], sp
    add a
    nop
    ld bc, $8440
    ld [$4002], sp
    nop
    add d
    ld b, b
    ld [bc], a
    jp nz, $8B40

    ld [$4001], sp
    add a
    nop
    add l
    ld b, b
    add [hl]
    nop
    ld bc, $8A40
    ld [$4001], sp
    sub c
    nop
    ld bc, $8C40
    ld [$4001], sp
    add e
    nop
    adc c
    ld b, b
    ld bc, $8300
    ld b, b
    adc l
    ld [$4001], sp
    add e
    nop
    ld bc, $8740
    ld [$4003], sp
    nop
    ld b, b
    sub b
    ld [$4004], sp
    nop
    nop
    ld b, b
    add a
    ld [$4003], sp
    nop
    ld b, b
    sub c
    ld [$4003], sp
    nop
    ld b, b
    add a
    ld [$4002], sp
    nop
    add d
    ld b, b
    sub b
    ld [$4003], sp
    nop
    ld b, b
    add a
    ld [$4001], sp
    add e
    nop
    ld bc, $8F40
    ld [$4003], sp
    nop
    ld b, b
    adc b
    ld [$4003], sp
    nop
    nop
    add d
    ld b, b
    ld [bc], a
    pop bc
    ld b, b
    adc c
    ld [$4002], sp
    call nz, $4082
    ld [bc], a
    nop
    ld b, b
    adc b
    ld [$4001], sp
    add [hl]
    nop
    ld bc, $8740
    ld [$4001], sp
    add l
    nop
    ld bc, $8840
    ld [$4001], sp
    add e
    nop
    inc b
    ld b, c
    nop
    nop
    ld b, b
    add a
    ld [$4003], sp
    nop
    ld b, c
    add e
    nop
    ld bc, $8940
    ld [$4006], sp
    nop
    nop
    ld b, c
    nop
    ld b, b
    adc b
    ld [$4001], sp
    add h
    nop
    ld bc, $8A40
    ld [$4001], sp
    add e
    nop
    ld bc, $8A40
    ld [$4004], sp
    nop
    nop
    ld b, b
    adc e
    ld [$4003], sp
    nop
    nop
    adc l
    ld [$4082], sp
    adc h
    ld [$4004], sp
    nop
    nop
    ld b, b
    sbc c
    ld [$4004], sp
    nop
    nop
    ld b, b
    sub h
    ld [$4002], sp
    ret nz

    add h
    ld b, b
    add d
    nop
    ld bc, $8840
    ld [$4082], sp
    ld bc, $84C3
    ld b, b
    add l
    ld [$4001], sp
    add a
    nop
    ld bc, $8940
    ld [$4001], sp
    add [hl]
    nop
    ld bc, $8440
    ld [$4001], sp
    add l
    nop
    add d
    ld b, b
    adc d
    ld [$4001], sp
    add a
    nop
    add l
    ld b, b
    add e
    nop
    add d
    ld b, b
    adc h
    ld [$4001], sp
    adc a
    nop
    ld bc, $8D40
    ld [$4082], sp
    add e
    nop
    adc b
    ld b, b
    add e
    add $8E
    ld [$1E00], sp
    add h
    inc bc
    xor a
    ld [$0083], sp
    sbc d
    ld [$0087], sp
    sub [hl]
    ld [$0089], sp
    adc [hl]
    ld [$0082], sp
    add h
    ld [$0089], sp
    ld [bc], a
    ld b, l
    nop
    adc h
    ld [$0087], sp
    ld bc, $8347
    nop
    add e
    jp $0085


    adc b
    ld [$0083], sp
    ld bc, $8A49
    nop
    add e
    jp $0085


    add a
    ld [$0087], sp
    add e
    ld [$0082], sp
    ld bc, $8B46
    nop
    add [hl]
    ld [$0082], sp
    add d
    call nz, $0083
    add e
    ld [$008F], sp
    add [hl]
    ld [$0001], sp
    add d
    call nz, $0084
    add d
    ld [$008D], sp
    adc c
    ld [$0084], sp
    ld [bc], a
    ld c, b
    nop
    add e
    ld [$0089], sp
    ld bc, $8243
    nop
    adc d
    ld [$0084], sp
    add l
    ld [$0082], sp
    add l
    ld [$0084], sp
    sub e
    ld [$0082], sp
    add l
    ld [$0084], sp
    sub c
    ld [$0085], sp
    add e
    ld [$0085], sp
    adc e
    ld [$0082], sp
    add e
    ld [$0082], sp
    add d
    push bc
    add d
    nop
    add d
    ld [$0083], sp
    ld bc, $83C2
    nop
    adc c
    ld [$0084], sp
    add d
    ld [$0001], sp
    add h
    push bc
    ld bc, $8200
    ld [$0083], sp
    ld bc, $83C2
    nop
    add [hl]
    ld [$0087], sp
    add d
    ld [$0001], sp
    add h
    push bc
    ld bc, $8200
    ld [$0087], sp
    add l
    ld [$0084], sp
    add d
    ret nz

    add d
    nop
    add d
    ld [$0082], sp
    add d
    push bc
    add d
    nop
    add d
    ld [$0088], sp
    add h
    ld [$0084], sp
    ld bc, $83C0
    nop
    add e
    ld [$0084], sp
    add e
    ld [$0089], sp
    add e
    ld [$0082], sp
    add h
    ld [$0083], sp
    adc b
    ld [$0082], sp
    add [hl]
    ld [$0082], sp
    add e
    ld [$0082], sp
    add h
    ld [$0084], sp
    add a
    ld [$0082], sp
    add a
    ld [$0001], sp
    add e
    ld [$0082], sp
    add h
    ld [$0090], sp
    add h
    ld [$0001], sp
    add e
    ld [$0083], sp
    add e
    ld [$008E], sp
    ld bc, $8241
    nop
    add e
    ld [$0001], sp
    add h
    ld [$0083], sp
    add d
    ld [$0089], sp
    ld bc, $86C1
    nop
    ld [bc], a
    ld b, d
    nop
    add d
    ld [$0001], sp
    add h
    ld [$008E], sp
    ld bc, $87C1
    nop
    add e
    ld [$0001], sp
    add h
    ld [$0086], sp
    add l
    ld [$0087], sp
    add a
    ld [$0001], sp
    add h
    ld [$0082], sp
    ld bc, $83C6
    nop
    add [hl]
    ld [$0085], sp
    add a
    ld [$0082], sp
    add e
    ld [$008A], sp
    adc e
    ld [$0086], sp
    add e
    ld [$0082], sp
    add h
    ld [$0083], sp
    ld [bc], a
    ld b, b
    nop
    adc c
    ld [$0003], sp
    ld b, h
    rst $00
    add e
    nop
    and b
    ld [$1E00], sp
    add h
    inc bc
    adc h
    ld [$C582], sp
    sbc e
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
    sub c
    ld [$4003], sp
    ret nz

    ld b, b
    add l
    nop
    add d
    ld b, b
    add e
    nop
    ld bc, $8F40
    ld [$4001], sp
    adc l
    nop
    ld bc, $8F40
    ld [$4001], sp
    adc l
    nop
    ld bc, $8F40
    ld [$4001], sp
    add [hl]
    nop
    add h
    ld b, b
    add e
    nop
    inc bc
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
    ld bc, $8640
    ld [$C401], sp
    add h
    ld b, b
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
    ld bc, $8540
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
    add a
    ld b, b
    add d
    ld [$4082], sp
    dec b
    jp nz, Jump_02D_4040

    ld [$8440], sp
    nop
    ld bc, $8440
    ld [$4001], sp
    add h
    nop
    adc c
    ld b, b
    add l
    nop
    ld bc, $8540
    nop
    ld bc, $8440
    ld [$4001], sp
    sub [hl]
    nop
    add d
    ld b, b
    add l
    ld [$4001], sp
    sub l
    nop
    ld bc, $8740
    ld [$408E], sp
    add a
    nop
    ld bc, $9140
    ld [$4086], sp
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
    jp $8940


    nop
    ld bc, $8340
    ld [$4083], sp
    adc d
    ld [$4001], sp
    adc h
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
    add a
    ld b, b
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
    add l
    nop
    adc d
    ld b, b
    add h
    nop
    ld bc, $8940
    ld [$4001], sp
    sub e
    nop
    ld bc, $8940
    ld [$4001], sp
    sub d
    nop
    ld bc, $8B40
    ld [$408E], sp
    add h
    nop
    ld bc, $9940
    ld [$4004], sp
    add $C6
    ld b, b
    add l
    ld [$1000], sp
    sub b
    nop
    dec b
    dec c
    ld [hl], b
    ld bc, $6705
    rrca
    jr z, jr_02D_541D

    dec a
    add d
    ld a, $07
    ccf
    ld a, $3E
    dec a
    ld a, $2D
    ld h, $83
    ld h, a
    inc bc
    rra
    db $FD
    dec l
    adc b
    ld l, $03
    dec a
    dec l
    ld h, $82
    ld h, a
    inc bc
    rra
    ld h, a
    dec a

jr_02D_541D:
    adc b
    ld a, $09
    dec l
    dec a
    dec l
    ld h, $67
    rra
    sbc h
    ld h, a
    ld e, l
    add a
    ld h, a
    ld b, $3D
    dec e
    dec a
    dec l
    ld h, a
    rra
    add d
    ld h, a
    inc b
    ld l, l
    ld c, a
    ld a, d
    ld l, d
    add h
    ld h, a
    dec de
    ld a, [de]
    dec l
    ld l, $3D
    ld h, a
    rra
    ld h, a
    ld [$2B1C], sp
    add hl, hl
    ld a, [de]
    inc e
    add hl, hl
    jr z, jr_02D_5477

    add hl, hl
    dec a
    ld a, $2D
    daa
    cpl
    ld h, a
    jr @-$04

    ld h, a
    ld a, [$6788]
    inc bc
    dec a
    rra
    ccf
    add l
    ld h, a
    inc c
    ld a, d
    dec hl
    inc e
    add hl, hl
    inc e
    jr z, jr_02D_5493

    adc e
    dec c
    rra
    ld h, a
    sbc h
    add e
    ld h, a
    ld a, [bc]
    dec c
    rrca
    ld a, [$4D67]
    ld c, [hl]
    ld c, a
    ld a, e

jr_02D_5477:
    ld h, a
    dec e
    add d

jr_02D_547A:
    rrca
    ld c, $67
    ld c, l
    jr z, jr_02D_547A

    dec e
    ld h, a
    rrca
    ld h, a
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, a
    dec c
    ld h, a
    add d
    rra
    inc b
    ld a, [$0D5D]
    ld c, $82
    ld h, a

jr_02D_5493:
    ld [$671F], sp
    ld l, l
    ld l, [hl]
    ld l, a
    dec c
    ld h, a
    dec c
    add d
    rra
    ld [bc], a
    ld e, l
    dec c
    add d
    ld h, a
    inc b
    daa

jr_02D_54A5:
    ld l, $2F
    adc e
    add d
    ld h, a
    ld b, $0D
    ld h, a
    ld h, a
    dec e
    rra
    rra
    ld [bc], a
    ld e, l
    dec l
    add d
    ld l, $03
    cpl
    ld a, $3F
    add d
    ld h, a
    dec b
    ld a, [de]
    dec e
    ld h, a
    dec c
    ld h, a
    add d
    rra
    ld [bc], a
    ld l, l
    dec a
    add d
    ld a, $0A
    ccf
    ld l, a
    ld h, a
    sbc h
    ld a, [$2D28]
    ld h, $1D
    ld e, $82
    rra
    ld [bc], a
    ld c, a
    dec hl
    add d
    ld l, [hl]
    ld c, $2B
    ld h, a
    ld a, [de]
    jr z, jr_02D_54FD

    jr z, jr_02D_5520

    dec e
    dec l
    ld l, $1E
    rrca
    ld c, $0F
    add d
    ld h, a
    ld bc, $8609
    ld h, a
    dec c
    dec e
    dec a
    ld a, $2E
    cpl
    ld e, $1F
    ld h, a
    ld h, e
    add hl, de
    ld h, a
    ld a, [hl+]

jr_02D_54FD:
    ld a, [bc]
    add d
    ld [$2C0B], sp
    dec l
    ld h, $67
    ld a, $3F
    ld l, $2F
    ld h, a
    ld a, [$8229]

jr_02D_550D:
    ld h, a
    dec bc
    jr z, @+$1A

    jr jr_02D_550D

    dec a
    dec l
    ld h, $67
    cpl
    ld a, $3F
    add d
    ld h, a
    ld [bc], a
    ld a, [de]
    jr z, jr_02D_54A5

jr_02D_5520:
    ld h, a
    ld b, $28
    dec a
    dec e
    rra
    ccf
    ld a, [$6783]
    dec bc
    adc e
    rlca
    sbc h
    ld h, a
    ld a, e
    ld h, a
    ld a, [$0667]
    dec e
    rra
    add e
    ld h, a
    ld [$2808], sp
    ld h, a
    rla
    ld a, [de]
    inc e
    jr z, jr_02D_556D

    add d
    ld h, a
    inc b
    ld d, $1D
    rra
    ld a, e
    add d
    ld h, a
    ld [bc], a
    jr jr_02D_5579

    add a
    ld h, a
    rlca
    sbc h
    ld h, a
    dec e
    ld h, a
    rrca
    ld a, [de]
    add hl, hl
    add d
    jr z, jr_02D_5564

    ld a, [de]
    inc l
    ld a, [hl+]
    jr z, @+$1E

    jr z, jr_02D_558A

    inc l
    dec c
    ld h, a

jr_02D_5564:
    nop
    ld e, $84
    inc bc
    or l
    ld [$4186], sp
    adc a

jr_02D_556D:
    ld [$4182], sp
    inc bc
    jp Jump_02D_4141


    add h
    ld [$4101], sp
    add l

jr_02D_5579:
    nop
    ld bc, $8CC6
    ld [$4102], sp
    ld b, b
    add h
    nop
    ld bc, $8441
    ld [$4101], sp
    add l

jr_02D_558A:
    nop
    ld bc, $8BC6
    ld [$4101], sp
    add [hl]
    nop
    ld bc, $8441
    ld [$4187], sp
    adc e
    ld [$4101], sp
    add a
    nop
    ld bc, $9541
    ld [$4101], sp
    add [hl]
    nop
    ld bc, $9641
    ld [$4182], sp
    add h
    nop
    ld bc, $9841
    ld [$4186], sp
    adc a
    ld [$4102], sp
    call nz, $4182
    sub b
    ld [$4183], sp
    inc bc
    jp nz, Jump_02D_4141

    add e
    ld [$4001], sp
    add e
    nop
    add d
    ld b, c
    adc [hl]
    ld [$4101], sp
    add l
    nop
    inc b
    ld b, c
    ld [$4108], sp
    add [hl]
    nop
    ld bc, $8C41
    ld [$4101], sp
    add [hl]
    nop
    inc b
    ld b, c
    ld [$4108], sp
    add a
    nop
    ld bc, $8B41
    ld [$4101], sp
    add l
    nop
    ld bc, $8341
    ld [$4101], sp
    add l
    nop
    add d
    ld b, c
    adc l
    ld [$4101], sp
    add h
    nop
    ld bc, $8441
    ld [$4101], sp
    add h
    nop
    ld bc, $8E41
    ld [$4101], sp
    add h
    nop
    ld bc, $8541
    ld [$4104], sp
    ld b, b
    nop
    ld b, c
    sub b
    ld [$4101], sp
    add e
    nop
    ld bc, $8741
    ld [$4101], sp
    sub d
    ld [$4103], sp
    nop
    ld b, c
    sbc h
    ld [$4101], sp
    or [hl]
    ld [$4183], sp
    inc bc
    pop bc
    ld b, c
    ld b, c
    adc e
    ld [$4182], sp
    ld bc, $8308
    ld b, c
    inc bc
    ret nz

    ld b, c
    ld b, c
    add h
    ld [$4101], sp
    add h
    nop
    add d
    ld b, c
    adc b
    ld [$4102], sp
    ld b, b
    add d
    nop
    ld bc, $8540
    nop
    ld bc, $8441
    ld [$4101], sp
    add l
    nop
    ld bc, $8741
    ld [$4001], sp
    adc d
    nop
    ld bc, $8441
    ld [$4182], sp
    add h
    nop
    ld bc, $8641
    ld [$4101], sp
    adc e
    nop
    ld bc, $8341
    ld [$4183], sp
    add h
    nop
    ld bc, $8641
    ld [$4101], sp
    adc h
    nop
    inc b
    ld b, c
    ld [$4108], sp
    add [hl]
    nop
    ld bc, $8641
    ld [$4101], sp
    adc e
    nop
    ld bc, $8341
    ld [$4101], sp
    add h
    nop
    inc bc
    ld b, b
    nop
    ld b, b
    add [hl]
    ld [$4101], sp
    adc e
    nop
    ld bc, $8441
    ld [$4101], sp
    add l
    nop
    ld bc, $8641
    ld [$4103], sp
    nop
    nop
    add d
    ld b, c
    add h
    nop
    add e
    ld b, c
    add l
    ld [$4186], sp
    add a
    ld [$4105], sp
    nop
    nop
    ld b, c
    ld [$4184], sp

Jump_02D_56CB:
    sub [hl]
    ld [$C582], sp
    sbc b
    ld [$1E00], sp
    ld a, [de]
    inc b

Call_02D_56D5:
    cp d
    ld [$4201], sp
    adc h
    ld [$C382], sp
    add e
    ld [$4201], sp
    adc b
    ld [$4283], sp
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
    add a
    ld [$4201], sp
    add e
    nop
    ld bc, $8BC6
    ld [$4201], sp
    add h
    nop
    inc bc
    ld b, e
    nop
    ld b, d
    add l
    ld [$4201], sp
    add h
    nop
    ld bc, $8BC6
    ld [$4201], sp
    add [hl]
    nop
    ld bc, $8642
    ld [$4205], sp
    nop
    ld b, c
    nop
    add $8B
    ld [$4282], sp
    ld bc, $8343
    nop
    ld bc, $8842
    ld [$4203], sp
    ld b, c
    ld b, d
    add h
    ld [$C482], sp
    add e
    ld b, d
    add [hl]
    ld [$4283], sp
    adc a
    ld [$4201], sp
    add h
    nop
    ld bc, $9742
    ld [$4201], sp
    add [hl]
    nop
    ld bc, $9742
    ld [$4201], sp
    add h
    nop
    ld bc, $8B43
    ld [$4284], sp
    add d
    jp nz, $0887

    inc bc
    ld b, d
    nop
    ld b, b
    add d
    nop
    ld bc, $8A42
    ld [$4201], sp
    add [hl]
    nop
    ld bc, $8442
    ld [$0007], sp
    ld [$4208], sp
    nop
    ld b, b
    ld b, d
    adc d
    ld [$4201], sp
    add a
    nop
    ld bc, $8442
    ld [$0001], sp
    add e
    ld [$4282], sp
    adc h
    ld [$4201], sp
    add e
    nop
    dec b
    ld b, b
    nop
    ld b, e
    nop
    ld b, d
    add e
    ld [$0082], sp
    sub c
    ld [$4203], sp
    nop
    ld b, b
    add e
    nop
    ld bc, $8442
    ld [$0083], sp
    sub c
    ld [$4203], sp
    ld [$8300], sp
    ld b, d
    add [hl]
    ld [$0001], sp
    sub e
    ld [$4201], sp
    ret nz

    ld b, [hl]
    ld [$4203], sp
    ret nz

    ret nz

    sbc d
    ld [$4201], sp
    add e
    nop
    ld bc, $9842
    ld [$4201], sp
    add l
    nop
    ld bc, $8642
    ld [$4203], sp
    pop bc
    pop bc
    add e
    ld b, d
    adc e
    ld [$4203], sp
    nop
    ld b, e
    add h
    nop
    ld bc, $8442
    ld [$4201], sp
    add l
    nop
    ld bc, $8C42
    ld [$4201], sp
    add l
    nop
    ld bc, $8342
    ld [$4204], sp
    nop
    nop
    ld b, e
    add h
    nop
    ld bc, $8B42
    ld [$4201], sp
    add e
    nop
    add d
    ld b, c
    add l
    ld [$4201], sp
    add l
    nop
    ld bc, $8C40
    ld [$4201], sp
    add h
    nop
    ld bc, $8642
    ld [$4282], sp
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
    ld [$1E00], sp
    add h
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
    ld bc, $8A43
    ld [$4301], sp
    add h
    nop
    ld bc, $8643
    ld [$4303], sp
    nop
    ld b, c
    add l
    nop
    ld bc, $8843
    ld [$4201], sp
    add [hl]
    nop
    ld bc, $8542
    ld [$4303], sp
    nop
    ld b, c
    add h
    nop
    ld bc, $8943
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
    ld bc, $8943
    ld [$4201], sp
    add h
    nop
    inc bc
    ld b, c
    nop
    ld b, d
    add a
    ld [$4301], sp
    add e
    nop
    ld bc, $8B43
    ld [$4301], sp
    add h
    nop
    ld bc, $8943
    ld [$4383], sp
    adc l
    ld [$4304], sp
    nop
    nop
    ld b, e
    sub [hl]
    ld [$4201], sp
    add h
    ld [$4382], sp
    sub c
    ld [$4302], sp
    jp nz, $4382

    adc e
    ld [$4383], sp
    adc e
    ld [$4301], sp
    add h
    nop
    ld bc, $8943
    ld [$4301], sp
    add e
    nop
    ld bc, $89C6
    ld [$4301], sp
    add [hl]
    nop
    ld bc, $8743
    ld [$4201], sp
    add h
    nop
    ld bc, $8AC6
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
    add a
    ld [$4301], sp
    add e
    nop
    ld bc, $8843
    ld [$4201], sp
    add h
    nop
    ld bc, $83C6
    ld [$4201], sp
    adc b
    ld [$4383], sp
    adc c
    ld [$4201], sp
    add h
    nop
    ld bc, $83C6
    ld [$4201], sp
    sub l
    ld [$4301], sp
    add e
    nop
    ld bc, $9AC6
    ld [$4304], sp
    nop
    nop
    add $84
    ld [$4385], sp
    ld [bc], a
    ret nz

    ld b, e
    sub b
    ld [$4382], sp
    add d
    ld [$4203], sp
    ld b, e
    ld b, e
    add a
    nop
    ld bc, $8743
    ld [$4304], sp
    call nz, Call_02D_4243
    adc b
    ld [$008B], sp
    ld bc, $8543
    ld [$4301], sp
    add h
    nop
    ld bc, $8643
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
    add a
    ld [$4386], sp
    add h
    ld [$4301], sp
    add e
    nop
    ld bc, $9A43
    ld [$4383], sp
    ret nz

    ld h, c
    ld [$1E00], sp
    add h
    inc bc
    sub e
    ld [$4683], sp
    sbc d
    ld [$4501], sp
    add e
    nop
    add [hl]
    ld b, l
    sub h
    ld [$4501], sp
    adc b
    nop
    ld bc, $9445
    ld [$4501], sp
    adc b
    nop
    ld bc, $9445
    ld [$4582], sp
    add [hl]
    nop
    add d
    ld b, l
    sub [hl]
    ld [$4501], sp
    add l
    nop
    ld bc, $8A45
    ld [$4482], sp
    adc e
    ld [$4501], sp
    add e
    nop
    add d
    ld b, l
    adc d
    ld [$4404], sp
    nop
    nop
    ld b, h
    adc d
    ld [$4504], sp
    nop
    nop
    ld b, l
    adc h
    ld [$4401], sp
    add e
    nop
    ld bc, $8944
    ld [$4504], sp
    nop
    nop
    ld b, l
    adc d
    ld [$4482], sp
    add l
    nop
    add d
    ld b, h
    adc b
    ld b, l
    add d
    nop
    ld bc, $8845
    ld [$4482], sp
    add h
    nop
    ld bc, $8E40
    nop
    ld bc, $8745
    ld [$0096], sp
    ld bc, $8745
    ld [$008D], sp
    add h
    ld b, l
    add [hl]
    nop
    ld bc, $8645
    ld [$4582], sp
    adc e
    nop
    ld b, $45
    ld [$4508], sp
    nop
    nop
    ld bc, $8342
    nop
    ld bc, $8845
    ld [$4501], sp
    adc c
    nop
    ld bc, $8345
    ld [$4501], sp
    add l
    nop
    ld bc, $8945
    ld [$4501], sp
    add [hl]
    nop
    inc bc
    ld b, c
    nop
    nop
    add h
    ld [$4582], sp
    add e
    nop
    ld bc, $8B45
    ld [$4501], sp
    adc c
    nop
    add h
    ld [$4582], sp
    add d
    nop
    ld bc, $8C45
    ld [$4583], sp
    add h
    nop
    add d
    ld b, l
    add l
    ld [$4504], sp
    nop
    nop
    ld b, l
    adc a
    ld [$4584], sp
    add a
    ld [$4504], sp
    nop
    nop
    ld b, l
    adc a
    ld [$4585], sp
    add l
    ld [$4582], sp
    add e
    nop
    add l
    ld b, l
    add e
    ld [$4584], sp
    add d
    ld [$4582], sp
    add e
    nop
    ld bc, $8545
    ld [$4501], sp
    adc b
    nop
    ld bc, $8345
    ld [$4506], sp
    nop
    nop
    ld b, l
    ld [$0108], sp
    ld b, l
    add h
    nop
    ld [bc], a
    ld b, l
    ld [$4586], sp
    add a
    nop
    inc b
    ld b, l
    ld [$4508], sp
    add e
    nop
    inc bc
    ld b, l
    ld [$8208], sp
    ld b, l
    add e
    nop
    add d
    ld b, l
    adc l
    nop
    ld bc, $8345
    ld [$0083], sp
    add h
    ld b, l
    sub e
    nop
    ld bc, $8345
    ld [$008E], sp
    add e
    ld b, l
    add [hl]
    nop
    ld b, $43
    nop
    nop
    ld b, l
    ld [$0108], sp
    ld b, l
    adc c
    nop
    add d
    ld b, l
    add d
    nop
    ld bc, $8345
    ld [$4585], sp
    add e
    nop
    ld bc, $8445
    ld [$4503], sp
    nop
    nop
    add [hl]
    ld b, l
    add d
    ld [$4582], sp
    adc c
    ld [$4583], sp

jr_02D_5B0D:
    add [hl]
    ld [$4582], sp
    ret nz

    ld d, [hl]
    ld [$0E00], sp
    ld a, [hl]
    nop
    inc bc
    rrca
    ld e, [hl]
    ld bc, $DE83
    add d
    dec e
    add d
    adc [hl]
    add d
    rra
    ld [$282A], sp
    add hl, hl
    inc e
    dec c
    sbc $47
    sbc $82
    dec e
    add d
    adc [hl]
    add d
    rra
    ld [$5B8E], sp
    ld e, d
    adc [hl]
    dec e
    cp l
    adc [hl]
    cp [hl]
    add d
    dec e
    ld [bc], a
    adc [hl]
    ld e, $82
    rra
    ld a, [bc]
    adc [hl]
    ld [$8E28], sp
    dec e
    rrca
    adc [hl]
    dec c
    adc [hl]
    dec l
    add d
    ld l, $0C
    cpl
    rra
    adc [hl]
    jr jr_02D_5B82

    adc [hl]
    dec e
    rra
    adc [hl]
    dec e
    ld a, d
    dec a
    add d
    ld a, $0A
    ccf
    rra
    ld a, [$2808]
    ld l, e
    dec e
    rra
    adc [hl]
    dec l
    add l
    ld l, $09
    cpl
    ld c, a
    jr jr_02D_5B79

    adc [hl]
    dec e
    rra
    adc [hl]
    dec a
    add l
    ld a, $40

jr_02D_5B79:
    ld e, l
    ccf
    ld e, l
    ld a, [hl+]
    jr jr_02D_5B0D

    dec e
    rra
    ld l, d

jr_02D_5B82:
    ld c, l
    ld c, [hl]
    ld e, l
    adc a
    ld c, a
    adc [hl]
    ld a, [$4E5D]
    ld c, a
    ld a, [$1F1D]
    adc [hl]
    ld a, [bc]
    jr z, jr_02D_5BBC

    ld a, [hl+]
    dec hl
    ld [$6E0C], sp
    dec c
    rrca
    ld e, $1D
    rra
    adc [hl]
    ld l, l
    adc a
    ld c, [hl]
    ld e, [hl]
    ld e, l
    jr jr_02D_5BAE

    ld a, d
    dec e
    rra
    ld e, $1D
    rra
    adc [hl]
    add hl, hl
    ld a, [hl+]

jr_02D_5BAE:
    dec hl
    jr z, jr_02D_5C20

    jr z, jr_02D_5BCC

    ld a, e
    dec l
    cpl
    ld e, $1D
    rra
    adc e
    adc [hl]
    ld l, l

jr_02D_5BBC:
    ld l, a
    ld a, [$288E]
    ld [$3D4F], sp
    ccf
    ld c, l
    dec e
    rra
    ld c, a
    dec hl
    inc l
    jr z, jr_02D_5BF5

jr_02D_5BCC:
    adc [hl]
    add hl, bc
    jr jr_02D_5C2F

    ld c, [hl]
    ld c, a
    ld e, l
    dec e
    rra
    ld a, [$844F]
    adc [hl]
    ld c, $19
    add hl, hl
    inc e
    ld l, a
    add hl, bc
    ld l, a
    dec e
    rra
    jr z, jr_02D_5C0D

    ld a, [hl+]
    rlca
    add hl, bc
    ld a, [$8E82]
    rlca
    ld a, [de]
    adc [hl]
    add hl, de
    dec c
    adc [hl]
    rra
    dec bc
    add d
    jr z, jr_02D_5BFD

jr_02D_5BF5:
    rla
    jr jr_02D_5C20

    inc l
    adc [hl]
    inc e
    adc [hl]
    dec c

jr_02D_5BFD:
    add d
    adc [hl]
    inc bc
    rra
    adc [hl]
    ld l, l
    add d
    ld c, [hl]
    ld bc, $834F
    adc [hl]
    inc bc
    add hl, hl
    ld a, e
    dec e

jr_02D_5C0D:
    add e
    adc [hl]
    dec bc
    rrca
    add hl, hl
    add hl, hl
    jr z, jr_02D_5C3E

    jr z, jr_02D_5C43

    adc [hl]
    add hl, hl
    adc [hl]
    dec e
    add e
    adc [hl]
    inc bc
    rra
    rrca

jr_02D_5C20:
    ld a, [$4E82]
    ld b, $4F
    adc [hl]
    ld a, d
    rlca
    ld l, e
    dec e
    add d
    adc [hl]
    rla
    daa
    cpl

jr_02D_5C2F:
    rra
    ld a, e
    jr z, jr_02D_5C3B

    add hl, hl
    ld c, a
    ld b, $17
    adc [hl]
    dec l
    ld h, $8E

jr_02D_5C3B:
    cpl
    ccf
    rra

jr_02D_5C3E:
    adc [hl]
    jr z, jr_02D_5C59

    rlca
    ld c, [hl]

jr_02D_5C43:
    ld d, $82
    adc [hl]
    inc d
    dec a
    dec l
    ld h, $3F
    ld l, $2F
    adc [hl]
    ld a, [de]
    jr z, jr_02D_5C68

    ld l, l
    dec bc
    ld c, a
    sbc e
    jr z, jr_02D_5C94

    dec e
    cpl

jr_02D_5C59:
    ld a, $3F
    add l
    adc [hl]
    inc c
    jr z, jr_02D_5CBD

    ld c, a
    db $FD
    ld a, [hl+]
    dec e
    ccf
    ld a, [$9C8E]

jr_02D_5C68:
    ld [$820D], sp
    ld c, $07
    rrca
    ld l, l
    ld e, a
    ld c, a
    dec c
    adc [hl]
    ld h, a
    add e
    add hl, hl
    ld [bc], a
    jr @+$1F

    add e
    adc [hl]
    add e
    ld c, $82
    adc [hl]
    nop
    ld e, $84
    inc bc
    sub d
    ld [$4B88], sp
    sub [hl]
    ld [$0001], sp
    add [hl]
    ld c, e
    ld bc, $8900
    ld [$0085], sp
    adc b

jr_02D_5C94:
    ld [$0088], sp
    add [hl]
    ld [$4002], sp
    ld [$0087], sp
    add [hl]
    ld [$0089], sp
    ld bc, $85C5
    ld [$4001], sp
    add e
    nop
    add e
    ret nz

    sub c
    nop
    add [hl]
    ld [$4001], sp
    add e
    nop
    add e
    ret nz

    adc c
    nop
    add e
    pop bc
    add h
    nop
    adc c

jr_02D_5CBD:
    ld [$0087], sp
    add [hl]
    ld [$0001], sp
    add e
    pop bc
    add d
    nop
    ld bc, $8B48
    ld [$0085], sp
    add a
    ld [$0087], sp
    ld bc, $9641
    ld [$0087], sp
    ld bc, $9741
    ld [$0086], sp
    ld bc, $8F41
    ld [$0084], sp
    add l
    ld [$0085], sp
    ld bc, $8841
    ld [$0084], sp
    add h
    ld [$0084], sp
    add a
    ld [$0082], sp
    ld bc, $8741
    ld [$0006], sp
    ld [$4908], sp
    nop
    nop
    add l
    ld [$0083], sp
    add [hl]
    ld [$0083], sp
    ld bc, $8641
    ld [$0007], sp
    ld [$4908], sp
    nop
    ld b, [hl]
    nop
    add l
    ld [$0083], sp
    add l
    ld [$0083], sp
    ld bc, $8641
    ld [$0089], sp
    add h
    ld [$0083], sp
    add e
    ld [$C283], sp
    ld [bc], a
    nop
    ld b, c
    add [hl]
    ld [$008A], sp
    add h
    ld [$0083], sp
    add e
    ld [$C203], sp
    nop
    nop
    add [hl]
    ld [$0082], sp
    ld bc, $8345
    nop
    add d
    call nz, $0084
    add e
    ld [$0083], sp
    add e
    ld [$0083], sp
    add [hl]
    ld [$0085], sp
    add h
    call nz, $0084
    add e
    ld [$0082], sp
    add e
    ld [$0083], sp
    add [hl]
    ld [$0085], sp
    add h
    call nz, $0804
    nop
    ld b, a
    nop
    add e
    ld [$0089], sp
    ld bc, $844A
    ld [$0085], sp
    add [hl]
    ld [$0001], sp
    add h
    ld [$0082], sp
    ld bc, $8642
    nop
    add d
    ld c, d
    add e
    ld [$0086], sp
    adc d
    ld [$008B], sp
    add e
    ld [$0087], sp
    adc d
    ld [$0083], sp
    ld bc, $8743
    nop
    add h
    ld [$008B], sp
    add a
    ld [$0088], sp
    ld bc, $88C6
    ld [$0087], sp
    ld bc, $8408
    jp $0801


    add e
    nop
    add e
    ld [$0082], sp
    ld bc, $89C6
    ld [$0086], sp
    add l
    jp $0801


    add e
    nop
    add e
    ld [$0082], sp
    ld bc, $8AC6
    ld [$0086], sp
    add h
    jp $0801


    add e
    nop
    add e
    ld [$0003], sp
    ld b, h
    add $8A
    ld [$008F], sp
    add e
    ld [$0001], sp
    adc e
    ld [$0002], sp
    rst $00
    adc l
    nop
    sub b
    ld [$008D], sp
    and h
    ld [$1000], sp
    sub b
    nop
    dec b
    rrca
    sub b
    ld bc, $1F01
    add e
    ld a, $02
    dec l
    cpl
    add [hl]
    ld a, $0A
    dec l
    ld l, $2E
    ret z

    rra
    ld c, a
    ld c, [hl]
    ei
    dec a
    ccf
    add a
    ld c, [hl]
    dec c
    dec a
    ld a, $1D
    rra
    ld h, [hl]
    ld [$CDCF], a
    ld c, a
    jr z, jr_02D_5E88

    jr z, jr_02D_5E8A

    add e
    jr z, jr_02D_5E1C

    ld b, $4D
    dec e
    rra
    ld d, [hl]

jr_02D_5E1C:
    add d
    jr z, @+$03

    call c, $2885
    ld bc, $8376
    jr z, jr_02D_5E2B

    ld h, a
    dec e
    reti


    rrca

jr_02D_5E2B:
    add d
    jr z, jr_02D_5E3F

    db $EC
    jr z, jr_02D_5E8D

    rst $18
    rst $08
    rst $18
    adc $6C
    jr z, @+$5F

    ld h, a
    dec e
    ld e, $1F
    ld d, [hl]

jr_02D_5E3D:
    jr z, @-$1F

jr_02D_5E3F:
    add l
    jr z, jr_02D_5E4B

    sbc $7E
    ld a, a
    ld l, l
    ld d, a
    dec e
    ld e, $1F
    ld h, [hl]

jr_02D_5E4B:
    add d
    jr z, jr_02D_5E5C

    ld l, h
    rst $18
    rst $08
    ld [$DA28], a
    adc [hl]
    adc a
    jr z, jr_02D_5EAF

    dec e
    ld e, $1F
    ld d, [hl]

jr_02D_5E5C:
    add a
    jr z, @+$03

    adc $83
    jr z, jr_02D_5E68

    dec c
    ret c

    ld e, $1F

jr_02D_5E67:
    ld h, [hl]

jr_02D_5E68:
    add a
    jr z, jr_02D_5E70

    sbc $28
    dec c
    ld c, $D8

jr_02D_5E70:
    add d
    ld e, $02
    reti


    rrca
    add e
    jr z, jr_02D_5E7F

    jp c, $CFCF

    ld e, [hl]
    ld e, a
    ld h, a
    dec e

jr_02D_5E7F:
    add l
    ld e, $0B
    cpl
    ld h, [hl]
    jr z, jr_02D_5EE3

    jr z, jr_02D_5E67

jr_02D_5E88:
    jr z, jr_02D_5EF8

jr_02D_5E8A:
    ld l, a
    ld d, a
    dec l

jr_02D_5E8D:
    add d
    ld l, $07
    ret z

    ld e, $1F
    ccf
    ld [$6DDF], a
    add h
    jr z, jr_02D_5E9D

    db $DB
    ld h, a
    dec a

jr_02D_5E9D:
    add d
    ld a, $04
    dec e
    ld e, $1F
    ld c, a
    add h
    jr z, jr_02D_5EAD

    ld e, l
    jr z, jr_02D_5ED2

    db $EB
    jr z, jr_02D_5ED9

jr_02D_5EAD:
    add d
    ld c, [hl]

jr_02D_5EAF:
    ld a, [bc]
    dec e
    ld e, $1F
    ld d, [hl]
    jr z, jr_02D_5EC3

    rrca
    jr z, @+$6F

    jr z, jr_02D_5E3D

    rst $18
    dec b
    ld e, h
    rst $08
    ld [$1D76], a
    add d

jr_02D_5EC3:
    ld e, $82
    ld c, $03
    ld e, $1F
    ld h, [hl]
    add d
    jr z, jr_02D_5ECF

    ld e, [hl]
    ld e, a

jr_02D_5ECF:
    add e
    jr z, jr_02D_5ED4

jr_02D_5ED2:
    ld d, a
    dec e

jr_02D_5ED4:
    add l
    ld e, $0B
    rra
    ld d, [hl]

jr_02D_5ED9:
    rst $08
    jr z, @+$70

    ld l, a
    jr z, jr_02D_5F55

    jr z, jr_02D_5EEE

    ret c

    add l

jr_02D_5EE3:
    ld e, $02
    rra
    ld d, [hl]
    add e
    jr z, jr_02D_5EEF

    rst $18
    jr z, jr_02D_5F15

    ld h, a

jr_02D_5EEE:
    dec e

jr_02D_5EEF:
    add [hl]
    ld e, $0A
    rra
    ld d, [hl]
    halt
    jr z, jr_02D_5F04

    rrca

jr_02D_5EF8:
    jr z, @+$78

    ld d, a
    dec e
    add [hl]
    ld e, $0A
    rra
    ld d, [hl]
    jr z, jr_02D_5F5A

    dec l

jr_02D_5F04:
    cpl
    ld d, [hl]
    ld [hl], a
    ld d, a
    dec e
    add [hl]
    ld e, $0A
    rra
    ld d, [hl]
    ld [$3DCF], a
    ccf
    ld d, [hl]
    jr z, jr_02D_5F6C

jr_02D_5F15:
    dec e
    add [hl]
    ld e, $02
    rra
    ld d, [hl]
    add d
    jr z, jr_02D_5F24

    inc l
    dec hl
    jr z, @+$78

    ld d, a
    dec e

jr_02D_5F24:
    add [hl]
    ld e, $0A
    rra
    ld d, [hl]
    dec c
    ld c, $0F
    jr z, @+$78

    jr z, @+$59

    dec e
    add a
    ld e, $05
    ld c, $D8
    ld e, $D9
    rrca
    add d
    jr z, jr_02D_5F3E

    ld d, a
    dec e

jr_02D_5F3E:
    adc e
    ld e, $05
    rra
    ld d, [hl]
    rst $18
    ld d, a
    dec e
    adc h
    ld e, $83
    ld c, $82
    ld e, $00
    ld e, $84
    inc bc
    sbc h
    ld [$4001], sp
    sbc c

jr_02D_5F55:
    ld [$4101], sp
    add e
    nop

jr_02D_5F5A:
    ld bc, $9640
    ld [$4103], sp
    call nz, $8441
    nop
    ld bc, $9540
    ld [$4001], sp
    add a
    nop

jr_02D_5F6C:
    ld bc, $9540
    ld [$4001], sp
    add a
    nop
    inc bc
    ld b, b
    ld [$8208], sp
    ld b, b
    sub c
    ld [$4089], sp
    ld [bc], a
    ld [$83C5], sp
    nop
    add d
    ld b, c
    ld bc, $83C0
    ld b, c
    sub h
    ld [$C501], sp
    adc e
    nop
    ld bc, $9240
    ld [$4001], sp
    adc d
    nop
    ld bc, $9340
    ld [$4001], sp
    adc b
    nop
    add d
    ld b, b
    add [hl]
    ld [$4083], sp
    add l
    ld [$4083], sp
    add d
    ld [$4001], sp
    adc b
    nop
    ld bc, $8740
    ld [$0082], sp
    add d
    ld b, b
    add e
    ld [$4004], sp
    nop
    nop
    add $83
    ld [$4001], sp
    add a
    nop
    ld bc, $8640
    ld [$4101], sp
    add h
    nop
    ld b, $40
    ld [$4008], sp
    nop
    nop
    ld bc, $84C6
    ld [$4001], sp
    add [hl]
    nop
    ld bc, $8340
    ld [$4103], sp
    jp $8541


    nop
    ld b, $40
    ld [$4008], sp
    nop
    nop
    ld bc, $85C6
    ld [$4087], sp
    add h
    ld [$0087], sp
    ld bc, $8340
    ld [$4003], sp
    nop
    add $8F
    ld [$4001], sp
    add a
    nop
    ld bc, $8440
    ld [$4002], sp
    add $8F
    ld [$4001], sp
    add a
    nop
    ld bc, $8440
    ld [$4002], sp
    add $88
    ld [$4083], sp
    add l
    ld [$4083], sp
    add h
    nop
    ld bc, $8540
    ld [$4001], sp
    adc c
    ld [$0082], sp
    ld bc, $8740
    ld [$4084], sp
    adc [hl]
    ld [$4102], sp
    ld [$0082], sp
    ld bc, $9640
    ld [$4102], sp
    pop bc
    add d
    ld b, c
    add e
    nop
    ld bc, $9540
    ld [$4001], sp
    add a
    nop
    ld bc, $9440
    ld [$4001], sp
    add a
    nop
    add d
    ld b, b
    inc b
    ld [$4040], sp
    ld b, c
    add h
    ld [$4083], sp
    adc c
    ld [$4001], sp
    add [hl]
    nop
    add d
    ld b, b
    ld [bc], a
    ld [$8340], sp
    nop
    ld [bc], a
    ld b, c
    jp nz, $4182

    add e
    nop
    ld bc, $8840
    ld [$4001], sp
    add [hl]
    nop
    inc b
    ld b, b
    ld [$4008], sp
    adc d
    nop
    ld bc, $8840
    ld [$4001], sp
    add e
    nop
    add e
    ld b, b
    add e
    ld [$4084], sp
    add a
    nop
    ld bc, $8840
    ld [$4085], sp
    adc c
    ld [$4001], sp
    add l
    nop
    add d
    ld b, b
    sub [hl]
    ld [$4001], sp
    add l
    nop
    ld bc, $9840
    ld [$4085], sp
    ret nz

    ld b, h
    ld [$1400], sp
    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $3F09
    ld a, [de]
    dec de
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    add e
    ld e, h
    inc b
    ld e, l
    ld e, h
    ld e, h
    ld e, l
    add e
    ld e, h
    inc bc
    ld a, $2F
    ld b, l
    adc d
    ld b, [hl]
    ld a, [bc]
    ld b, a
    ld e, $4E
    ld c, a
    ld b, l
    ld b, [hl]
    ld b, a
    ld e, $3F
    ld d, l
    add d
    ld d, $02
    cp $89
    add [hl]
    ld h, $01
    xor c
    add e
    ld b, [hl]
    ld b, $9A
    cp $57
    rrca
    cpl
    ld d, l
    add d
    ld d, $02
    rst $38
    rla
    add [hl]
    ld [hl], $0E
    dec h
    ld h, $26
    adc d
    ld d, $FF
    ld d, a
    ld l, $3F
    ld h, l
    adc d
    adc c
    ld h, $27
    add [hl]
    ld c, d
    ld c, $35
    ld [hl], $36
    dec h
    adc d
    ld d, $57
    ld a, $4E
    ld c, a
    ld d, l
    rla
    ld [hl], $37
    adc c
    ld c, d
    add hl, bc
    dec [hl]
    dec h
    adc d
    ld d, a
    ld e, $2D
    cpl
    ld d, l
    rla
    adc h
    ld c, d
    ld [$1535], sp
    ld d, a
    ld l, $3D
    ccf
    ld d, l
    rla
    add l
    ld c, d
    inc bc
    inc sp
    ld b, $34
    add l
    ld c, d
    rlca
    dec d
    ld d, a
    ld a, $4E
    ld c, a
    dec d
    rla
    add l
    ld c, d
    inc bc
    inc d
    ld h, $27
    add h
    ld c, d
    inc b
    dec b
    cp c
    ld h, a
    ld l, $82
    ld e, $02
    ld h, l
    ld h, h
    add l
    ld c, d
    inc bc
    rst $38
    ld [hl], $37
    add h
    ld c, d
    add hl, bc
    dec h
    ld h, h
    ld e, $3E
    ld l, [hl]
    ld c, $1E
    ld d, e
    rlca
    add d
    ld c, d
    ld [bc], a
    dec b
    inc [hl]
    add d
    rst $38
    ld c, $33
    inc [hl]
    ld c, d
    rst $38
    ld c, d
    dec [hl]
    sub h
    ld b, a
    rrca
    ld l, [hl]
    ld c, [hl]
    ld c, a
    ld d, l
    rla
    add d
    ld c, d
    ld b, $25
    ld h, h
    ld c, d
    inc sp
    ld [hl+], a
    inc h
    add h
    ld c, d
    ld [$5715], sp
    ld l, $6E
    ld c, [hl]
    dec l
    ld d, l
    rla
    add d
    ld c, d
    inc bc
    dec [hl]
    ld [hl], $4A
    add e
    ld [hl], $84
    ld c, d
    ld [$5715], sp
    ld a, $6E
    dec l
    dec a
    ld d, c
    daa
    add [hl]
    ld c, d
    ld bc, $84FF
    ld c, d
    add hl, bc
    dec b
    cp c
    ld h, a
    ld e, $0F
    dec a
    ld b, l
    ld h, e
    scf
    adc d
    ld c, d
    dec bc
    dec b
    sbc d
    ld d, a
    ld c, [hl]
    ld c, a
    ld e, $45
    sbc d
    rla
    ld c, d
    dec b
    add h
    ld b, $01
    rlca
    add h
    ld c, d
    dec bc
    dec d
    cp $57
    inc l
    ld c, a
    ld l, $55
    cp $99
    ld b, $9A
    add h
    ld d, $02
    sbc c
    rlca
    add e
    ld c, d
    ld [$FF15], sp
    sbc c
    ld b, a
    ld e, $3E
    ld d, l
    rst $38
    add e
    ld d, $06
    adc c
    jp hl


    ld [$8AEB], a
    sbc c
    add e
    ld b, $07
    sbc d
    rst $38
    ld d, $57
    ld l, $1E
    ld h, l
    add h
    ld h, [hl]
    dec b
    cpl
    inc d
    ld sp, hl
    inc h
    ld e, $87
    ld h, [hl]
    ld d, $67
    ld a, $0F
    ld c, [hl]
    ld c, a
    ld e, $4E
    ld c, a
    ccf
    ld e, $4E
    ld c, a
    ld e, $4E
    ld c, a
    ld c, [hl]
    ld c, a
    rrca
    ld e, $4E
    ld c, a
    ld e, $00
    rst $38
    ccf
    rst $38
    ldh [rIE], a
    add b
    rst $38
    add b
    rst $38
    add b
    cp $C0
    cp $78
    ld hl, sp+$10
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    db $FD
    ld a, a
    rst $38
    ld a, a
    db $FD
    ld a, a
    rst $38
    ld a, a
    rst $38
    ldh a, [rIE]
    db $10
    rst $38
    adc b
    db $FC
    ld a, b
    ei
    ld [c], a
    rst $38
    ld b, a
    ei
    add c
    ei
    add e
    ei
    inc b
    adc a
    ld [hl], e
    sbc e
    ld [hl], a
    cp e
    ld [hl], a
    cp e
    ld [hl], a
    cp e
    ld [hl], a
    cp e
    ld [hl], a
    cp e
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    ei
    add e
    ld sp, hl
    add e
    ld sp, hl
    ld b, e
    ld a, [$FE63]
    ld a, a
    ld a, [$FBF3]
    ret


    ld sp, hl
    adc c
    cp e
    ld [hl], a
    cp e
    ld [hl], a
    cp a
    ld [hl], b
    cp a
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$0F
    ld hl, sp+$10
    ld hl, sp-$78
    db $FC
    ld a, h
    rst $38
    pop hl
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    ld a, b
    ld hl, sp-$71
    rst $38
    add hl, bc
    ld [$F0FC], sp
    rst $38
    pop bc
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    stop
    nop
    rst $38
    nop
    pop af
    ret nz

    ld hl, $FF21
    pop hl
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    or $7F
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    cp $FF
    nop
    rst $38
    cp $FF
    cp $AF
    cp $FF
    cp $77
    cp $FF
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, d
    rst $38
    or l
    rst $38
    ld [$B5FF], a
    rst $38
    ld [$FDFF], a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld d, [hl]
    rst $38
    xor l
    rst $38
    rst $10
    rst $38
    ld l, l
    rst $38
    or a
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld e, a
    cp $FF
    rst $38
    rst $38
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    ld [bc], a
    db $FD
    ld [bc], a
    db $FD
    ld a, [$FA0D]
    dec c
    ld a, [$02FD]
    db $FD
    ld a, [$FA0D]
    ld e, a
    rrca
    ld b, b
    nop
    ld e, a
    nop
    add sp, -$21
    ld e, a
    ld c, $4C
    ld c, h
    ld c, a
    ld b, $89
    add hl, bc
    ld a, [$02F0]
    nop
    ld a, [$3E00]
    ld hl, sp-$31
    dec sp
    inc b
    inc b
    ld e, $0C
    add hl, de
    jr @+$01

    ccf
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    ldh [$60], a
    ld a, a
    rrca
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, c
    rst $38
    ld h, e
    rst $38
    rra
    rst $38
    nop
    ld bc, $FE00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $84
    inc bc
    sub d
    ld [$4B88], sp
    sub [hl]
    ld [$0001], sp
    add [hl]
    ld c, e
    ld bc, $8900
    ld [$0085], sp
    adc b
    ld [$0088], sp
    add [hl]
    ld [$4002], sp
    ld [$0087], sp
    add [hl]
    ld [$0089], sp
    ld bc, $85C5
    ld [$4001], sp
    add e
    nop
    add e
    ret nz

    add d
    nop
    add [hl]
    ld [$0089], sp
    add [hl]
    ld [$4001], sp
    add e
    nop
    add e
    ret nz

    add d
    nop
    add [hl]
    ld [$0001], sp
    add e
    pop bc
    add h
    nop
    adc c
    ld [$0087], sp
    add [hl]
    ld [$0001], sp
    add e
    pop bc
    add d
    nop
    ld bc, $8B48
    ld [$0085], sp
    add a
    ld [$0087], sp
    ld bc, $9641
    ld [$0087], sp
    ld bc, $9741
    ld [$0086], sp
    ld bc, $8F41
    ld [$0084], sp
    add l
    ld [$0084], sp
    ld [bc], a
    ld [$8841], sp
    ld [$0084], sp
    add h
    ld [$0084], sp
    adc c
    ld [$4101], sp
    add a
    ld [$0006], sp
    ld [$4908], sp
    nop
    nop
    add l
    ld [$0083], sp
    adc c
    ld [$4101], sp
    add [hl]
    ld [$0007], sp
    ld [$4908], sp
    nop
    ld b, [hl]
    nop
    add l
    ld [$0083], sp
    adc b
    ld [$4101], sp
    add [hl]
    ld [$0089], sp
    add h
    ld [$0083], sp
    add e
    ld [$C283], sp
    ld [bc], a
    ld [$8641], sp
    ld [$008A], sp
    add h
    ld [$0083], sp
    add d
    ld [$C283], sp
    add a
    ld [$0082], sp
    ld bc, $8345
    nop
    add d
    call nz, $0084
    add e
    ld [$0083], sp
    adc h
    ld [$0085], sp
    add h
    call nz, $0084
    add e
    ld [$0082], sp
    add e
    ld [$0083], sp
    add [hl]
    ld [$0085], sp
    add h
    call nz, $0804
    nop
    ld b, a
    nop
    add e
    ld [$0089], sp
    ld bc, $844A
    ld [$0085], sp
    add [hl]
    ld [$0001], sp
    add h
    ld [$0082], sp
    ld bc, $8642
    nop
    add d
    ld c, d
    add e
    ld [$0085], sp
    adc e
    ld [$008B], sp
    add h
    ld [$0085], sp
    adc d
    ld [$0084], sp
    ld bc, $8743
    nop
    add h
    ld [$0083], sp
    add e
    ld [$0085], sp
    add a
    ld [$0088], sp
    adc c
    ld [$0087], sp
    ld bc, $8308
    jp $0882


    add h
    nop
    add d
    ld [$0082], sp
    ld bc, $89C6
    ld [$0086], sp
    add h
    jp $0888


    add d
    nop
    ld bc, $8AC6
    ld [$0086], sp
    add e
    jp $0888


    inc bc
    nop
    ld b, h
    add $8A
    ld [$008E], sp
    add h
    ld [$0001], sp
    adc e
    ld [$0002], sp
    rst $00
    adc l
    nop
    sub b
    ld [$008D], sp
    and h
    ld [$1900], sp
    ld [hl], c
    ld [bc], a
    sbc d
    nop
    sub a
    ld [$0082], sp
    ld bc, $8308
    ld [bc], a
    add e
    nop
    add e
    ld [bc], a
    ld bc, $8B08
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0283], sp
    add e
    nop
    add e
    ld [bc], a
    ld bc, $8B08
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0289], sp
    ld bc, $8508
    ld [bc], a
    ld bc, $8500
    ld [bc], a
    ld b, $08
    nop
    nop
    ld [$0002], sp
    add h
    ld [bc], a
    add e
    nop
    ld bc, $8408
    ld [bc], a
    add e
    nop
    add h
    ld [bc], a
    ld b, $08
    nop
    nop
    ld [$0002], sp
    add h
    ld [bc], a
    add e
    nop
    ld bc, $8308
    ld [bc], a
    add d
    nop
    inc bc
    ret nz

    nop
    nop
    add e
    ld [bc], a
    ld b, $08
    nop
    nop
    ld [$0202], sp
    ld bc, $8300
    ld [bc], a
    add e
    nop
    ld bc, $8408
    ld [bc], a
    add e
    nop
    add h
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0289], sp
    ld bc, $8508
    ld [bc], a
    ld bc, $8500
    ld [bc], a
    ld b, $08
    nop
    nop
    ld [$0202], sp
    ld bc, $8500
    ld [bc], a
    ld [bc], a
    nop
    ld [$028B], sp
    inc b
    ld [$0000], sp
    ld [$0083], sp
    add e
    ld [bc], a
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld [$028B], sp
    inc b
    ld [$0000], sp
    ld [$0285], sp
    adc c
    ld [$0287], sp
    dec b
    ld [$0000], sp
    ld [$8202], sp
    nop
    ld [bc], a
    ld [bc], a
    nop
    adc c
    ld [$0004], sp
    ld [bc], a
    ld [bc], a
    nop
    add e
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0285], sp
    adc c
    ld [$0285], sp
    inc bc
    nop
    ld [bc], a
    ld [$0082], sp
    ld bc, $8408
    ld [bc], a
    ld bc, $8900
    ld [$0285], sp
    add d
    nop
    ld b, $08
    nop
    nop
    ld [$0000], sp
    add d
    ld [bc], a
    ld bc, $8900
    ld [$0287], sp
    inc b
    ld [$0000], sp
    ld [$0287], sp
    add l
    ld [$0289], sp
    inc b
    ld [$0000], sp
    ld [$0288], sp
    add e
    ld [$0286], sp
    ld bc, $8300
    ld [bc], a
    ld b, $08
    nop
    nop
    ld [$0202], sp
    inc b
    nop
    ld [bc], a
    ld [bc], a
    nop
    adc e
    ld [bc], a
    ld bc, $8300
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0285], sp
    ld bc, $8F00
    ld [bc], a
    ld b, $08
    nop
    nop
    ld [$0000], sp
    adc l
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    add e
    nop
    ld b, $08
    nop
    nop
    ld [$0000], sp
    inc bc
    ld [bc], a
    nop
    nop
    add h
    ld [bc], a
    ld bc, $8800
    ld [bc], a
    add e
    nop
    ld b, $08
    nop
    nop
    ld [$0000], sp
    sub b
    ld [bc], a
    add e
    nop
    inc bc
    ld [$0000], sp
    sub a
    ld [$009D], sp
    nop
    jr z, @-$4E

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
    ld [$4205], sp
    ld b, c
    ld [$42C1], sp
    adc c
    ld [$4203], sp
    nop
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
    ld bc, $8942
    ld [$4282], sp
    sub [hl]
    ld [$4201], sp
    add [hl]
    nop
    ld bc, $A042
    ld [$4203], sp
    nop
    ld b, b
    add e
    nop
    ld bc, $A242
    ld [$4201], sp
    add e
    nop
    ld bc, $A442
    ld [$4283], sp
    ret nz

    ld e, a
    ld [$4284], sp
    sub l
    ld [$4282], sp
    ld [bc], a
    jp nz, $8B42

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
    add [hl]
    ld [$4201], sp
    add h
    nop
    ld bc, $8A42
    ld [$4204], sp
    nop
    nop
    push bc
    add a
    ld [$4201], sp
    add [hl]
    nop
    ld bc, $8541
    ld [$4201], sp
    add e
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
    push bc
    ld [$4286], sp
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
    add d
    push bc
    adc a
    nop
    inc b
    ld b, d
    ld [$4208], sp
    add l
    nop
    ld bc, $8A42
    ld [$4203], sp
    nop
    nop
    add d
    push bc
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
    adc h
    ld [$4283], sp
    ld bc, $88C5
    nop
    ld bc, $8440
    nop
    ld bc, $8641
    ld [$4282], sp
    sub d
    ld [$4286], sp
    add a
    nop
    ld bc, $8E41
    ld [$4282], sp
    ld [bc], a
    jp $8E42


jr_02D_6733:
    ld [$4201], sp
    add [hl]
    nop
    ld bc, $8D42
    ld [$4201], sp
    add h
    nop
    ld bc, $8E42
    ld [$4201], sp
    add h
    nop
    ld bc, $8D42
    ld [$4201], sp
    add [hl]
    nop
    ld bc, $8E42
    ld [$4284], sp
    adc [hl]
    ld [$4203], sp
    nop
    ld b, b
    add h
    nop
    ld bc, $A042
    ld [$4201], sp
    add [hl]
    nop
    ld bc, $A142
    ld [$4282], sp
    add e
    nop
    ld bc, $A442
    ld [$4203], sp
    nop
    ld b, d
    and [hl]
    ld [$4201], sp
    ret nz

    ld e, b
    ld [$1400], sp
    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $1E85
    ld bc, $882F
    ld a, $04
    dec l
    ld l, $2E
    ret z

    add h
    ld e, $05
    ret


    ld l, $2F
    ccf
    rst $18
    add l
    ld c, [hl]
    inc bc
    rst $08
    ld c, [hl]
    dec a
    add d
    ld a, $01
    dec e
    add h
    ld e, $09
    rra
    ld a, $3F
    rst $18
    db $DB
    jr z, @-$24

    rst $18
    ld e, h
    add e
    jr z, jr_02D_6733

    ld b, $02
    ld c, l
    dec l
    add d
    ld e, $0C
    ret


    ld l, $2F
    rst $18
    dec hl
    ld [$28EB], a
    ld a, [hl]
    ld a, a
    jr z, jr_02D_683B

    add l
    jr z, jr_02D_67D5

    dec a
    ret z

    ld e, $1F
    ld a, $3F
    rst $18
    jr z, jr_02D_6847

    jp c, $8E28

    adc a
    rst $08

jr_02D_67D5:
    add h
    jr z, jr_02D_67E2

    ld [hl], a
    jr z, jr_02D_6828

    dec e
    ld e, $1F
    ld c, [hl]
    ld c, a
    jr z, jr_02D_6858

jr_02D_67E2:
    add e
    jr z, jr_02D_67E7

    dec c
    rrca

jr_02D_67E7:
    add e
    jr z, jr_02D_67EB

    ld [hl], a

jr_02D_67EB:
    add e
    jr z, @+$09

    rst $08
    dec l
    ld e, $1F
    rst $18
    call c, $8276
    jr z, jr_02D_67FF

    dec c
    ld c, $D8
    reti


    rrca
    jr z, jr_02D_6875

jr_02D_67FF:
    add l

jr_02D_6800:
    jr z, jr_02D_6807

    dec a
    ret z

    ld e, $0F
    db $EC

jr_02D_6807:
    add d
    jr z, jr_02D_680C

    ld h, a
    dec e

jr_02D_680C:
    add e
    ld e, $0D
    reti


    rrca
    jr z, jr_02D_6820

    rrca
    jr z, jr_02D_6800

    rst $08
    rst $18
    dec e
    ret


    cpl
    ld h, [hl]
    add d
    jr z, jr_02D_6821

    ld d, a

jr_02D_6820:
    dec e

jr_02D_6821:
    add h
    ld e, $04
    reti


    ld c, $D8
    rra

jr_02D_6828:
    add e
    jr z, jr_02D_6834

    ei
    dec e
    rra
    ccf
    ld [$28DF], a
    ld d, a
    dec e

jr_02D_6834:
    add a
    ld e, $08
    reti


    rrca
    rst $18
    rst $08

jr_02D_683B:
    dec c
    ret c

    rra
    ld c, a
    add e
    jr z, jr_02D_6844

    ld h, a
    dec l

jr_02D_6844:
    add d
    ld l, $01

jr_02D_6847:
    ret z

    add l
    ld e, $0C
    reti


    ld c, $0E
    ret c

    ld e, $1F
    ld h, [hl]
    ld [$5DCF], a
    rst $08
    dec a
    add d

jr_02D_6858:
    ld a, $01
    dec l
    adc d
    ld e, $07
    rra
    ld d, [hl]
    ld a, [hl]
    ld a, a
    ld l, l
    jr z, jr_02D_6891

    add d
    ld c, [hl]
    ld [bc], a
    dec a
    ret z

    adc c
    ld e, $0D
    rra
    ld h, [hl]
    adc [hl]
    adc a
    ld l, h
    jr z, jr_02D_68D1

    rst $08

jr_02D_6875:
    jr z, @+$4F

    dec l
    ld l, $C8
    add a
    ld e, $02
    rra
    ld d, [hl]
    add h
    jr z, jr_02D_6883

    ld l, l

jr_02D_6883:
    add e
    jr z, jr_02D_6889

    dec a
    ld a, $1D

jr_02D_6889:
    add a
    ld e, $0D
    rra
    rst $18
    rst $18
    rst $08
    ld l, h

jr_02D_6891:
    ld e, [hl]
    ld e, a
    jr z, jr_02D_690C

    jr z, jr_02D_68C3

    ld c, [hl]
    dec e
    add a
    ld e, $03
    rra
    ld d, [hl]
    halt
    add d
    jr z, jr_02D_68A4

    ld l, [hl]
    ld l, a

jr_02D_68A4:
    add h
    jr z, jr_02D_68A9

    dec c
    ret c

jr_02D_68A9:
    add a
    ld e, $04
    rra
    ld d, [hl]
    jr z, @+$79

    add d
    jr z, jr_02D_68B4

    rst $08

jr_02D_68B4:
    add e
    jr z, jr_02D_68B9

    dec c
    ret c

jr_02D_68B9:
    adc b
    ld e, $03
    rra
    ld d, [hl]
    rst $18
    add l
    jr z, jr_02D_68C5

    dec c

jr_02D_68C3:
    ld c, $D8

jr_02D_68C5:
    adc d
    ld e, $87
    ld c, $01
    ret c

    adc e
    ld e, $00
    ld e, $84
    inc bc

jr_02D_68D1:
    ret nz

    ld d, b
    ld [$4085], sp
    adc h
    ld [$4085], sp
    add a
    ld [$4001], sp
    add l
    nop
    ld bc, $8940
    ld [$C102], sp
    ld b, b
    add l
    nop
    ld bc, $8540
    ld [$4001], sp
    add a
    nop
    add e
    ld b, b
    add l
    ld [$4001], sp
    adc b
    nop
    ld bc, $8340
    ld [$C002], sp
    ld b, b
    add h
    nop
    ld bc, $8540
    nop
    ld bc, $83C5
    ld [$4001], sp

jr_02D_690C:
    adc d
    nop
    add e
    ld b, b
    add l
    nop
    inc bc
    ld b, b
    ld [$8440], sp
    nop
    ld bc, $83C5
    ld [$4001], sp
    add [hl]
    nop
    add d
    ld b, b
    adc d
    nop
    inc bc
    ld b, b
    ld [$8408], sp
    ld b, b
    add h
    ld [$4001], sp
    add l
    nop
    inc b
    ld b, b
    ld [$4008], sp
    adc c
    nop
    ld bc, $8B40
    ld [$4082], sp
    add e
    nop
    ld bc, $8340
    ld [$4083], sp
    add [hl]
    nop
    ld bc, $8D40
    ld [$4004], sp
    nop
    nop
    ld b, b
    add [hl]
    ld [$4086], sp
    adc [hl]
    ld [$4004], sp
    nop
    nop
    ld b, b
    sbc d
    ld [$4004], sp
    nop
    nop
    ld b, b
    sbc d
    ld [$4004], sp
    nop
    nop
    ld b, b
    sbc d
    ld [$4004], sp
    nop
    nop
    ld b, b
    add e
    ld [$4087], sp
    sub b
    ld [$4003], sp
    nop
    nop
    add h
    ld b, b
    add a
    nop
    add h
    ld b, b
    ld bc, $8BC4
    ld [$4001], sp
    sub d
    nop
    ld bc, $8840
    ld [$C202], sp
    ld b, b
    adc b
    nop
    add h
    ld b, b
    adc b
    nop
    ld bc, $8640
    ld [$4001], sp
    add a
    nop
    add e
    ld b, b
    add h
    ld [$4001], sp
    add a
    nop
    ld bc, $8540
    ld [$4001], sp
    add a
    nop
    ld bc, $8840
    ld [$4087], sp
    add [hl]
    ld [$4001], sp
    add h
    nop
    add e
    ld b, b
    sub a
    ld [$4004], sp
    nop
    nop
    ld b, b
    sbc d
    ld [$4004], sp
    nop
    nop
    ld b, b
    sbc d
    ld [$4004], sp
    nop
    nop
    ld b, b
    add e
    ld [$4082], sp
    ld bc, $89C3
    ld [$4083], sp
    adc b
    ld [$4003], sp
    nop
    nop
    add h
    ld b, b
    add e
    nop
    adc c
    ld b, b
    add e
    nop
    ld bc, $8640
    ld [$4001], sp
    sub a
    nop
    ld bc, $8540
    ld [$4001], sp
    sub a
    nop
    ld bc, $8640
    ld [$4087], sp
    add [hl]
    nop
    add l
    ld b, b
    add h
    nop
    ld bc, $8E40
    ld [$4086], sp
    add l
    ld [$4001], sp
    add e
    nop
    ld bc, $9A40
    ld [$C683], sp
    add l
    ld [$1E00], sp
    add h
    inc bc
    sbc a
    nop
    sbc h
    ld [$0082], sp
    ld bc, $8508
    nop
    sub l
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0085], sp
    sub l
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0085], sp
    sub l
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0085], sp
    sub l
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$029A], sp
    inc b
    ld [$0000], sp
    ld [$0286], sp
    add d
    nop
    adc [hl]
    ld [bc], a
    add h
    nop
    inc b
    ld [$0000], sp
    ld [$0286], sp
    add d
    nop
    adc [hl]
    ld [bc], a
    add h
    nop
    inc b
    ld [$0000], sp
    ld [$0296], sp
    add h
    nop
    inc b
    ld [$0000], sp
    ld [$029A], sp
    inc b
    ld [$0000], sp
    ld [$029A], sp
    inc b
    ld [$0000], sp
    ld [$029A], sp
    inc b
    ld [$0000], sp
    ld [$0286], sp
    ld [bc], a
    nop
    ld [bc], a
    add l
    ld [$0085], sp
    add l
    ld [$0283], sp
    inc b
    ld [$0000], sp
    ld [$0288], sp
    adc a
    ld [$0283], sp
    inc b
    ld [$0000], sp
    ld [$0288], sp
    add a
    ld [$C001], sp
    add a
    ld [$0283], sp
    dec b
    ld [$0000], sp
    ld [$8600], sp
    ld [bc], a
    ld bc, $8600
    ld [$0083], sp
    add [hl]
    ld [$0283], sp
    ld b, $08
    nop
    nop
    ld [$0000], sp
    adc d
    ld [bc], a
    add d
    ld [$0003], sp
    ld [bc], a
    ld [bc], a
    add [hl]
    ld [$0283], sp
    inc b
    ld [$0000], sp
    ld [$029A], sp
    inc b
    ld [$0000], sp
    ld [$029A], sp
    inc b
    ld [$0000], sp
    ld [$029A], sp
    inc bc
    ld [$0000], sp
    adc d
    ld [$0287], sp
    ld bc, $8600
    ld [bc], a
    add d
    nop
    ld [bc], a
    ld [bc], a
    ld [$0082], sp
    ld bc, $8808
    nop
    ld bc, $8708
    ld [bc], a
    ld bc, $8600
    ld [bc], a
    add d
    nop
    ld [bc], a
    ld [bc], a
    ld [$0082], sp
    ld bc, $8608
    nop
    inc bc
    ld [$0800], sp
    add a
    ld [bc], a
    ld bc, $8900
    ld [bc], a
    inc bc
    ld [$0000], sp
    add a
    ld [$0082], sp
    add l
    ld [$0006], sp
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    add d
    nop
    add l
    ld [bc], a
    inc bc
    ld [$0000], sp
    add d
    ld [$0087], sp
    add e
    ld [$0083], sp
    add l
    ld [bc], a
    add a
    nop
    ld b, $08
    nop
    nop
    ld [$0000], sp
    add d
    ld [$0096], sp
    ld b, $08
    nop
    nop
    ld [$0000], sp
    ld bc, $9708
    nop
    inc bc
    ld [$0000], sp
    sbc h
    ld [$00A2], sp
    nop
    inc d
    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $0496
    dec b
    or b
    or c
    or d
    or e
    or h
    adc a
    inc b
    dec b
    ret nz

    pop bc
    jp nz, $C4C3

    adc a
    inc b
    dec b
    ret nc

    pop de
    jp nc, $D4D3

    add l
    inc b
    inc b
    rlca
    ld [$0908], sp
    add [hl]
    inc b
    dec b
    ldh [$E1], a
    ld [c], a
    db $E3
    db $E4
    add d
    inc b
    ld b, $07
    ld [$1708], sp
    jr jr_02D_6BAF

    inc bc
    add hl, de
    ld a, [de]
    rrca
    add h
    inc b

jr_02D_6B9D:
    ld [$F1F0], sp
    ld a, [c]
    di
    db $F4
    rlca
    ld [$8217], sp
    jr jr_02D_6BAF

    jp z, $2828

    ret


    add hl, de
    ld a, [de]

jr_02D_6BAF:
    add a
    inc b
    dec b
    rlca
    ld [$1817], sp
    jp z, $2886

    ld [bc], a
    add hl, hl
    ld a, [hl+]
    add l
    inc b
    dec b
    rlca
    ld [$1817], sp
    jp z, $2885

    dec b
    cp c
    jr c, jr_02D_6C02

    add hl, sp
    ld a, [hl-]
    add h
    inc b
    inc b
    ld d, $17
    jr jr_02D_6B9D

jr_02D_6BD3:
    add [hl]
    jr z, jr_02D_6BD8

    cp c
    add hl, sp

jr_02D_6BD8:
    add d
    ld c, b
    ld [bc], a
    ld c, c
    ld c, d
    add h
    inc b
    ld [bc], a
    ld h, $27
    adc b
    jr z, jr_02D_6BEB

    add hl, hl
    ld c, c
    ld [bc], a
    adc [hl]
    ld e, c
    ld e, d

jr_02D_6BEB:
    add h
    inc b
    ld [bc], a
    ld h, $37
    add e
    jr c, jr_02D_6BF4

    cp d

jr_02D_6BF4:
    add h
    jr z, jr_02D_6BFA

    ret


    add hl, de
    add hl, bc

jr_02D_6BFA:
    add a
    inc b
    ld [bc], a
    ld b, [hl]
    ld b, a
    add e
    ld c, b
    ld [bc], a

jr_02D_6C02:
    scf
    cp d
    add h
    jr z, jr_02D_6C0A

    ret


    add hl, de
    add hl, bc

jr_02D_6C0A:
    add h
    inc b
    inc b
    or e
    or h
    ld d, [hl]
    ld d, a
    add d
    ld e, b
    dec b
    inc bc
    ld b, a
    scf
    jr c, jr_02D_6BD3

    add e
    jr z, jr_02D_6C1F

    ret


    add hl, de
    rrca

jr_02D_6C1F:
    add e
    inc b
    inc b
    jp nz, $B3B2

    or h
    add d
    inc b
    ld b, $4B
    ld d, a
    ld b, a
    ld c, b
    scf
    cp d
    add e
    jr z, jr_02D_6C34

    add hl, hl
    ld a, [de]

jr_02D_6C34:
    add e
    inc b
    add d
    jp nz, $C303

    or e
    or h
    add d
    inc b
    ld b, $4B
    ld d, a
    inc bc
    ld b, a
    scf
    cp d
    add d
    jr z, jr_02D_6C4A

    add hl, hl
    ld a, [hl-]

jr_02D_6C4A:
    add e
    inc b
    add e
    jp nz, $C303

    or e
    or h
    add e
    inc b
    inc b
    ld c, e

jr_02D_6C56:
    ld d, a
    ld b, a
    scf
    add d
    jr c, jr_02D_6C5E

    add hl, sp
    ld a, [hl-]

jr_02D_6C5E:
    add e
    inc b
    add h
    jp nz, $C303

    or e
    or h
    add e
    inc b
    inc bc
    ld c, e
    ld d, a
    ld b, a
    add d
    ld c, b
    ld [bc], a
    ld c, c
    ld a, [hl-]
    add e
    inc b
    add l
    jp nz, $C303

    call nz, $83B4
    inc b
    ld [bc], a
    ld c, e
    ld d, a
    add e
    ld [bc], a
    inc b
    ld c, d
    inc b
    or b
    or c
    add [hl]
    jp nz, $C303

    call nz, $83B4
    inc b
    ld [$574B], sp
    ld e, b
    ld e, c
    ld e, d
    or b
    or c
    pop bc
    add a
    jp nz, $C303

    call nz, $86B4
    inc b
    inc b
    or b
    or c
    pop bc
    pop de
    nop
    jr z, jr_02D_6C56

    inc b
    sub c
    nop
    sub b
    ld [$0098], sp
    sub b
    ld [$0098], sp
    sub b
    ld [$0098], sp
    add e
    ld [$0084], sp
    ld bc, $8540
    nop
    add e
    ld [$0098], sp
    add e
    ld [$008A], sp
    add e
    ld [$0098], sp
    add e
    ld [$008A], sp
    add e
    ld [$0098], sp
    add e
    ld [$0086], sp
    add a
    ld [$0098], sp
    add e
    ld [$0086], sp
    add a
    ld [$0087], sp
    sub h
    ld [$0086], sp
    add a
    ld [$0087], sp
    sub h
    ld [$0086], sp
    add a
    ld [$0087], sp
    sub l
    ld [$0082], sp
    adc d
    ld [$0087], sp
    add l
    ld [$008C], sp
    add h
    ld [$0082], sp
    adc d
    ld [$0087], sp
    add l
    ld [$008C], sp
    add h
    ld [$0082], sp
    adc d
    ld [$0087], sp
    add l
    ld [$008C], sp
    add h
    ld [$0082], sp
    add h
    ld [$008D], sp
    add l
    ld [$008C], sp
    adc d
    ld [$008D], sp
    add l
    ld [$008C], sp
    adc d
    ld [$008D], sp
    add l
    ld [$0084], sp
    adc [hl]
    jp nz, $0001

    add e
    ld [$008D], sp
    ld bc, $88C0
    nop
    ld bc, $83C2
    nop
    ld bc, $88C4
    nop
    ld [bc], a
    jp nz, $8300

    ld [$008D], sp
    ld bc, $88C0
    nop
    ld bc, $83C2
    nop
    ld bc, $88C4
    nop
    ld [bc], a
    ld [$83C2], sp
    ld [$008D], sp
    ld bc, $88C0
    nop
    ld bc, $83C2
    nop
    ld [bc], a
    ld [$8400], sp
    ld [$0005], sp
    ld [$0800], sp
    jp nz, $0883

    adc l
    nop
    add l
    ld [$0002], sp
    ld [$0082], sp
    ld bc, $83C2
    nop
    adc b
    ld [$0083], sp
    add e
    ld [$008D], sp
    add l
    ld [$0002], sp
    ld [$0082], sp
    ld bc, $83C2
    nop
    adc b
    ld [$0083], sp
    add e
    ld [$008D], sp
    add l
    ld [$0084], sp
    ld bc, $8308
    nop
    add d
    ld [$4101], sp
    add l
    ld [$0083], sp
    add e
    ld [$008D], sp
    add l
    ld [$0084], sp
    ld bc, $8308
    nop
    ld [bc], a
    jp $89C1


    nop
    add e
    ld [$008D], sp
    add l
    ld [$0084], sp
    ld bc, $83C2
    nop
    ld [bc], a
    jp $89C1


    nop
    add e
    ld [$008D], sp
    sbc e
    ld [$008D], sp
    sbc e
    ld [$008D], sp
    sbc e
    ld [$008D], sp
    sbc e
    ld [$008D], sp
    sbc e
    ld [$0090], sp
    nop
    ld e, $84
    inc bc
    ret nz

    ld d, b
    ld [$4085], sp
    adc h
    ld [$4082], sp
    adc d
    ld [$4001], sp
    add l
    nop
    ld bc, $8940
    ld [$C102], sp
    ld b, b
    add d
    nop
    ld bc, $8840
    ld [$4001], sp
    add a
    nop
    add e
    ld b, b
    add l
    ld [$4001], sp
    add l
    nop
    ld bc, $8640
    ld [$C002], sp
    ld b, b
    add h
    nop
    ld bc, $8540
    nop
    ld bc, $83C5
    ld [$4001], sp
    add [hl]
    nop
    ld bc, $8540
    ld [$4001], sp
    add l
    nop
    inc bc
    ld b, b
    ld [$8440], sp
    nop
    ld bc, $83C5
    ld [$4001], sp
    add [hl]
    nop
    ld bc, $8440
    ld [$4001], sp
    add [hl]
    nop
    ld bc, $8240
    ld [$4084], sp
    add h
    ld [$4001], sp
    add l
    nop
    ld bc, $8540
    ld [$4001], sp
    add [hl]
    nop
    ld bc, $8B40
    ld [$4085], sp
    add [hl]
    ld [$4001], sp
    add [hl]
    nop
    ld bc, $9740
    ld [$4086], sp
    ret nz

    ld [hl], l
    ld [$4001], sp
    sub c
    ld [$4083], sp
    adc b
    ld [$4002], sp
    nop
    add h
    ld b, b
    ld [bc], a
    call nz, $8A40
    ld [$4001], sp
    add e
    nop
    ld bc, $8640
    ld [$4001], sp
    adc b
    nop
    ld bc, $8740
    ld [$C202], sp
    ld b, b
    add l
    nop
    ld bc, $8540
    ld [$4001], sp
    adc b
    nop
    ld bc, $8640
    ld [$4001], sp
    add a
    nop
    ld bc, $8640
    ld [$4001], sp
    add a
    nop
    ld bc, $8540
    ld [$4001], sp
    add a
    nop
    ld bc, $8840
    ld [$4087], sp
    add [hl]
    ld [$4001], sp
    add e
    nop
    add h
    ld b, b
    sub a
    ld [$4083], sp
    ret nz

    ld b, b
    ld [$4082], sp
    ld bc, $89C3
    ld [$4083], sp
    adc [hl]
    ld [$4001], sp
    add e
    nop
    add d
    ld b, b
    add [hl]
    ld [$4001], sp
    add e
    nop
    ld bc, $8C40
    ld [$4001], sp
    add [hl]
    nop
    ld bc, $8540
    ld [$4001], sp
    add e
    nop
    ld bc, $8C40
    ld [$4001], sp
    add a
    nop
    ld bc, $8440
    ld [$4001], sp
    add e
    nop
    ld bc, $8D40
    ld [$4001], sp
    add [hl]
    nop
    ld bc, $8440
    ld [$4001], sp
    add e
    nop
    ld bc, $8E40
    ld [$4086], sp
    add l
    ld [$4001], sp
    add e
    nop
    ld bc, $9A40
    ld [$C683], sp
    add l
    ld [$2800], sp
    ld b, b
    ld b, $AD
    nop
    rlca
    ld [$0800], sp
    nop
    ld [$0800], sp
    sbc [hl]
    nop
    add d
    ld [$0003], sp
    ld [$8300], sp
    ld [$0001], sp
    add h
    ld [$009C], sp
    dec b
    ld [$0800], sp
    nop
    ld [$0086], sp
    ld bc, $9C08
    nop
    ld b, $08
    nop
    ld [$0800], sp
    nop
    add a
    ld [$009A], sp
    add h
    ld [$0002], sp
    ld [$0084], sp
    ld bc, $A208
    nop
    inc bc
    ld [$0800], sp
    add d
    nop
    ld [bc], a
    ld [$8200], sp
    ld [$009A], sp
    add [hl]
    ld [$0003], sp
    ld [$8200], sp
    ld [$0002], sp
    ld [$009C], sp
    ld bc, $8508
    nop
    inc b
    ld [$0000], sp
    ld [$009E], sp
    ld [bc], a
    ld [$8600], sp
    ld [$0001], sp
    add h
    ld [$009B], sp
    ld bc, $8308
    nop
    inc bc
    ld [$08C3], sp
    and c
    nop
    add e
    ld [$0003], sp
    ld [$8700], sp
    ld [$009A], sp
    add d
    ld [$0002], sp
    ld [$0084], sp
    ld bc, $A008
    nop
    inc b
    ld [$0800], sp
    nop
    add h
    ld [$0001], sp
    add h
    ld [$009D], sp
    ld bc, $8308
    nop
    inc b
    ld [$0000], sp
    ld [$70C0], sp
    nop
    dec b
    ld [$0800], sp
    nop
    ld [$00A0], sp
    add d
    ld [$0005], sp
    ld [$0800], sp
    nop
    add a
    ld [$009B], sp
    dec b
    ld [$0800], sp
    nop
    ld [$00A3], sp
    inc b
    ld [$0800], sp
    nop
    adc c
    ld [$009B], sp
    add e
    ld [$0002], sp
    ld [$00A5], sp
    ld bc, $8308
    nop
    add a
    ld [$009A], sp
    add d
    ld [$0001], sp
    add l
    ld [$0082], sp
    inc bc
    ld [$08C3], sp
    and h
    nop
    add d
    ld [$009D], sp
    add h
    ld [$0004], sp
    ld [$0800], sp
    add d
    nop
    ld [bc], a
    ld [$8200], sp
    ld [$00A1], sp
    add d
    ld [$0002], sp
    ld [$009E], sp
    add a
    ld [$0082], sp
    ld [bc], a
    ld [$8200], sp
    ld [$009B], sp
    ld bc, $8508
    nop
    ld [bc], a
    ld [$8200], sp
    ld [$009E], sp
    rlca
    ld [$0800], sp
    nop
    ld [$0800], sp
    add d
    nop
    inc b
    ld [$0000], sp
    ld [$009B], sp
    ld b, $08
    nop
    ld [$0800], sp
    nop
    add d
    ld [$0003], sp
    ld [$8200], sp
    ld [$83C1], sp
    nop
    nop
    add hl, de
    ld [hl], c
    ld [bc], a
    sbc d
    nop
    sub a
    ld [$0082], sp
    ld bc, $8E08
    ld [bc], a
    add d
    ld [$C001], sp
    add h
    nop
    ld b, $08
    nop
    nop
    ld [$0000], sp
    add l
    ld [bc], a
    ld bc, $8600
    ld [bc], a
    inc b
    ld [$0800], sp
    nop
    add d
    ld [$0002], sp
    ld [$0082], sp
    inc bc
    ld [$0000], sp
    adc d
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld [$0084], sp
    inc bc
    ld [$0800], sp
    add d
    nop
    ld bc, $8408
    ld [bc], a
    ld bc, $8908
    ld [bc], a
    ld [$0008], sp
    nop
    ld [bc], a
    nop
    ld [$0800], sp
    add d
    nop
    ld bc, $8308
    ld [bc], a
    add l
    ld [$0288], sp
    add d
    ld [$0083], sp
    inc b
    ld [$0000], sp
    ld [$0284], sp
    add h
    ld [$0282], sp
    add d
    nop
    add h
    ld [bc], a
    add e
    nop
    inc bc
    ld [$0800], sp
    add d
    nop
    ld [bc], a
    ld [$8202], sp
    nop
    ld bc, $8402
    ld [$0282], sp
    add d
    nop
    add e
    ld [bc], a
    add [hl]
    nop
    dec b
    ld [$0000], sp
    ld [$8202], sp
    nop
    ld bc, $8402
    ld [$0282], sp
    add d
    nop
    add h
    ld [bc], a
    add [hl]
    ld [$0082], sp
    ld bc, $8408
    ld [bc], a
    add h
    ld [$0282], sp
    add d
    nop
    add h
    ld [bc], a
    add d
    nop
    ld bc, $8302
    ld [$0082], sp
    ld bc, $8408
    ld [bc], a
    add e
    ld [$0283], sp
    add d
    nop
    adc c
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0284], sp
    add d
    ld [$028F], sp
    inc b
    ld [$0000], sp
    ld [$0289], sp
    add e
    nop
    add a
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld [$0082], sp
    ld bc, $8508
    ld [bc], a
    ld bc, $8300
    ld [bc], a
    add e
    nop
    add h
    ld [bc], a
    add d
    nop
    add e
    ld [bc], a
    ld b, $08
    nop
    nop
    ld [$0002], sp
    adc [hl]
    ld [bc], a
    add d
    nop
    add e
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$028D], sp
    add d
    nop
    add [hl]
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0292], sp
    ld b, $00
    ld [bc], a
    ld [bc], a
    ld [$0000], sp
    ld bc, $9508
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0295], sp
    inc b
    ld [$0000], sp
    ld [$0095], sp
    inc b
    ld [$0000], sp
    ld [$0095], sp
    inc b
    ld [$0000], sp
    ld [$0095], sp
    inc bc
    ld [$0000], sp
    sub a
    ld [$009D], sp
    nop
    inc d
    or h
    nop
    add hl, bc
    rrca
    db $F4
    ld bc, $5C03
    ld e, l
    dec a
    add d
    ld c, $16
    inc l
    dec l
    ld e, l
    dec e
    adc [hl]
    adc a
    cp [hl]
    cp a
    cp [hl]
    cp a
    rst $28
    cp [hl]
    cp a
    xor $CF
    rst $28
    ld d, $FF
    ld c, [hl]
    ld c, a
    inc a
    dec a
    add d
    ld d, $02
    sbc [hl]
    sbc a
    add a
    ld d, $03
    rst $38
    rst $18
    rst $28
    add d
    ld d, $02
    sbc b
    dec a
    add h
    ld d, $03
    xor [hl]
    xor a
    ei
    add a
    ld d, $02
    rst $28
    adc $83
    ld d, $03
    ld a, [$1616]
    add d
    ld a, [$BE02]
    cp a
    add d
    ld d, $82
    ld a, [$1606]
    adc [hl]
    adc a
    rst $28
    xor $DE
    add h
    ld d, $03
    ld c, [hl]
    ld c, a
    ei
    adc b
    ld d, $06
    sbc [hl]
    sbc a
    xor [hl]
    xor a
    rrca
    ei
    add e
    ld d, $02
    ei
    rst $28
    adc c
    ld d, $07
    rst $28
    xor $BE
    cp a
    ld c, [hl]
    ld c, a
    cpl
    adc c
    ld d, $82
    ei
    add e
    ld d, $06
    cp b
    ld d, $CF
    ld c, d
    ld e, $3F
    adc c
    ld d, $03
    ld c, [hl]
    ld c, a
    ei
    add d
    ld d, $06
    ret z

    ld sp, hl
    rst $18
    ld c, d
    cpl
    dec l
    add a
    ld d, $03
    ld a, [$FB16]
    add h
    ld d, $06
    xor b
    ld d, $EE
    ld c, d
    ccf
    dec a
    add d
    ld a, [$1682]
    ld [bc], a
    ei
    ld d, $82
    ld a, [$1687]
    add d
    cpl
    ld [bc], a
    ld c, d
    cpl
    add l
    ld d, $02
    ld e, $FB
    adc c
    ld d, $82
    ccf
    inc bc
    ld c, d
    ccf
    rst $38
    add h
    ld d, $03
    ei
    ld e, $FB
    adc b
    ld d, $04
    inc l
    dec l
    ld c, d
    ld e, $8D
    ld d, $0C
    ld a, [$EFEE]
    inc a
    dec a
    ld c, d
    ld l, $8E
    adc a
    xor [hl]
    xor a
    adc $84
    ld d, $01
    ld a, [$1686]
    add hl, bc
    rst $38
    ld l, $4A
    ld a, $9E
    sbc a
    cp [hl]
    cp a
    sbc $8C
    ld d, $06
    ld a, $4A
    ld e, $2E
    xor [hl]
    xor a
    add d
    ld d, $01
    ld a, [$1686]
    inc bc
    ei
    ld e, $FB
    add d
    ld d, $07
    ld l, $4A
    ld c, d
    ld a, $BE
    cp a
    ld d, $82
    ld a, [$1604]
    adc [hl]
    adc a
    adc $87
    ld d, $03
    ld a, $4A
    ld c, d
    add d
    ld e, $85
    ld d, $03
    sbc [hl]
    sbc a
    sbc $87
    ld d, $01
    ld l, $83
    ld c, d
    dec b
    ld c, [hl]
    ld c, a
    ld e, $4E
    ld c, a
    add d
    ld e, $0A
    ld c, [hl]
    ld c, a
    ld e, $4E
    ld c, a
    ld e, $4E
    ld c, a
    ld e, $3E
    ret nz

    ld a, b
    ld c, d
    nop
    ld e, $84
    inc bc
    and d
    ld [$0001], sp
    add [hl]
    ld [$0092], sp
    add h
    ld [$0082], sp
    add h
    ld [$C802], sp
    ld [$0092], sp
    add h
    ld [$0082], sp
    add e
    ld [$0082], sp
    ld bc, $9208
    nop
    add h
    ld [$0082], sp
    add e
    ld [$0082], sp
    ld bc, $9208
    nop
    add h
    ld [$0082], sp
    add e
    ld [$0082], sp
    ld bc, $9208
    nop
    add e
    ld [$C704], sp
    nop
    nop
    add $84
    nop
    ld bc, $9208
    nop
    add d
    ld [$0082], sp
    ld [bc], a
    ld [$8300], sp
    ld [$0003], sp
    ld [$9208], sp
    nop
    add d
    ld [$0003], sp
    ld [$86C5], sp
    nop
    ld bc, $9208
    nop
    add d
    ld [$0089], sp
    ld bc, $9208
    nop
    add [hl]
    ld [$0001], sp
    add l
    ld [$0092], sp
    add d
    ld [$0085], sp
    ld [bc], a
    ld [$82C4], sp
    nop
    ld bc, $9208
    nop
    add [hl]
    ld [$0002], sp
    ld [$0083], sp
    ld bc, $9208
    nop
    add d
    ld [$0085], sp
    ld [bc], a
    ld [$82C3], sp
    nop
    ld bc, $9208
    nop
    add [hl]
    ld [$0002], sp
    ld [$0083], sp
    ld bc, $9208
    nop
    add d
    ld [$0085], sp
    ld [bc], a
    ld [$82C2], sp
    nop
    ld bc, $9208
    nop
    add [hl]
    ld [$0002], sp
    ld [$0083], sp
    ld bc, $9208
    nop
    add d
    ld [$0089], sp
    ld bc, $9208
    nop
    adc d
    ld [$0002], sp
    ld [$0092], sp
    add d
    ld [$0089], sp
    ld bc, $9208
    nop
    adc d
    ld [$0002], sp
    ld [$0092], sp
    add d
    ld [$0002], sp
    ld [$0083], sp
    dec b
    ld [$0800], sp
    nop
    ld [$0092], sp
    add d
    ld [$0002], sp
    ld [$0083], sp
    ld bc, $8308
    nop
    ld bc, $9208
    nop
    add d
    ld [$0084], sp
    ld [bc], a
    pop bc
    ld [$0083], sp
    ld bc, $9208
    nop
    add d
    ld [$C001], sp
    add e
    nop
    add d
    ld [$0083], sp
    ld bc, $9208
    nop
    add d
    ld [$0089], sp
    ld bc, $9208
    nop
    add d
    ld [$0082], sp
    adc b
    ld [$0092], sp
    add d
    ld [$0089], sp
    ld bc, $9208
    nop
    add d
    ld [$0089], sp
    ld bc, $9208
    nop
    sbc a
    ld [$1900], sp
    ld [hl], c
    ld [bc], a
    sbc d
    nop
    sub a
    ld [$0082], sp
    ld bc, $8408
    nop
    adc d
    ld [bc], a
    add e
    nop
    add h
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0084], sp
    add [hl]
    ld [bc], a
    ld bc, $8300
    ld [bc], a
    add e
    nop
    add h
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0084], sp
    add e
    ld [bc], a
    add d
    nop
    adc h
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0084], sp
    add e
    ld [bc], a
    add d
    nop
    adc h
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0286], sp
    add e
    nop
    adc h
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0286], sp
    add e
    nop
    adc h
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0295], sp
    ld b, $08
    nop
    nop
    ld [$0000], sp
    sub e
    ld [bc], a
    ld b, $08
    nop
    nop
    ld [$0000], sp
    add h
    ld [bc], a
    add d
    nop
    add h
    ld [bc], a
    add d
    nop
    add l
    ld [bc], a
    add d
    nop
    ld b, $08
    nop
    nop
    ld [$0000], sp
    adc d
    ld [bc], a
    add d
    nop
    add l
    ld [bc], a
    add d
    nop
    ld b, $08
    nop
    nop
    ld [$0000], sp
    sub c
    ld [bc], a
    add d
    nop
    ld b, $08
    nop
    nop
    ld [$0000], sp
    add l
    ld [bc], a
    ld bc, $8B00
    ld [bc], a
    add d
    nop
    inc b
    ld [$0000], sp
    ld [$028E], sp
    add d
    nop
    add e
    ld [bc], a
    add d
    nop
    inc b
    ld [$0000], sp
    ld [$0284], sp
    ld bc, $8300
    ld [bc], a
    ld bc, $8500
    ld [bc], a
    add d
    nop
    add e
    ld [bc], a
    add d
    nop
    inc b
    ld [$0000], sp
    ld [$0293], sp
    add d
    nop
    inc b
    ld [$0000], sp
    ld [$0293], sp
    add d
    nop
    inc b
    ld [$0000], sp
    ld [$0287], sp
    add d
    nop
    adc d
    ld [bc], a
    add d
    nop
    inc b
    ld [$0000], sp
    ld [$0286], sp
    ld bc, $8C08
    ld [bc], a
    add d
    nop
    inc b
    ld [$0000], sp
    ld [$0286], sp
    ld b, $08
    ld [bc], a
    ld [bc], a
    ld [$0202], sp
    add l
    nop
    add d
    ld [bc], a
    add d
    nop
    inc b
    ld [$0000], sp
    ld [$0285], sp
    add d
    ld [$0082], sp
    add d
    ld [$0201], sp
    add l
    nop
    add d
    ld [bc], a
    add d
    nop
    inc b
    ld [$0000], sp
    ld [$0285], sp
    ld bc, $8308
    nop
    inc bc
    ret nz

    ld [$8502], sp
    nop
    add h
    ld [bc], a
    inc bc
    ld [$0000], sp
    sub a
    ld [$009D], sp
    nop
    inc d
    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $7B86
    ld bc, $955C
    ld a, e
    inc bc
    ld e, h
    ld a, e
    ld e, h
    add e
    ld a, e
    inc b
    ld a, h
    ld a, e
    ld a, e
    ld e, h
    adc b
    ld a, e
    inc bc
    ld e, h
    ld a, e
    inc e
    add d
    ld a, e
    ld [$6C5C], sp
    ld a, h
    ld a, e
    ld a, h
    ld a, e
    inc e
    ld a, h
    add h
    ld a, e
    ld bc, $865C
    ld a, e
    ld bc, $876C
    ld a, e
    ld bc, $896C
    ld a, e
    ld bc, $845C
    ld a, e
    inc b
    ld a, l
    ld a, [hl]
    ld a, [hl]
    ld a, a
    add [hl]
    ld a, e
    inc bc
    inc e
    ld a, e
    ld l, h
    add d
    ld a, e
    ld a, [bc]
    ld l, h
    ld a, e
    ld a, e
    ld a, l
    ld a, [hl]
    sbc h
    sbc d
    adc [hl]
    adc a
    ld a, [hl-]
    adc d
    ld a, e
    ld b, $7D
    ld a, [hl]
    ld a, [hl]
    adc [hl]
    sbc d
    adc e
    add d
    sbc [hl]
    inc bc
    sbc a
    ld a, [hl-]
    ld e, h
    add d
    ld a, e
    ld [$7B6C], sp
    ld a, e
    ld e, h
    ld a, e
    ld a, l
    ld a, [hl]
    sbc h
    add e
    adc [hl]
    ld [bc], a
    adc e
    sbc a
    add d
    xor [hl]
    ld bc, $87AF
    ld a, e
    inc bc
    ld a, l
    ld a, [hl]
    sbc h
    add l
    adc [hl]
    ld [bc], a
    adc a
    xor a
    add d
    ld l, h
    add d
    ld a, e
    add hl, bc
    ld l, h
    ld a, e
    ld a, e
    ld e, h
    ld a, e
    ld a, l
    sbc h
    adc [hl]
    sbc d
    add h
    adc [hl]
    inc bc
    sbc d
    sbc e
    ld a, a
    add d
    ld a, e
    ld bc, $857C
    ld a, e
    ld [bc], a
    add hl, sp
    sbc l
    add e
    sbc [hl]
    ld [bc], a
    adc h
    and a
    add h
    adc [hl]
    ld [bc], a
    sbc e
    ld a, a
    add d
    ld a, e
    ld [bc], a
    ld l, h
    ld a, h
    add d
    ld a, e
    inc bc
    ld l, h
    ld a, e
    xor l
    add e
    xor [hl]
    inc b
    sbc l
    adc h
    adc [hl]
    sbc d
    add e
    adc [hl]
    dec b
    sbc e
    ld a, a
    ld a, e
    inc e
    ld e, h
    add e
    ld a, e
    ld bc, $845C
    ld a, e
    ld a, [bc]
    xor l
    sbc l
    sbc [hl]
    adc h
    sbc d
    adc [hl]
    sbc d
    adc [hl]
    adc a
    ld a, [hl-]
    add h
    ld a, e
    dec bc
    ld l, h
    ld a, e
    ld l, h
    ld a, e
    inc e
    ld a, h
    ld a, e
    xor l
    xor [hl]
    sbc l
    adc h
    add e
    adc [hl]
    ld [bc], a
    sbc e
    ld a, a
    adc l
    ld a, e
    ld [$9DAD], sp
    adc h
    sbc d
    adc [hl]
    sbc d
    adc a
    ld a, [hl-]
    adc d
    ld a, e
    dec b
    ld e, h
    ld a, e
    ld a, e
    xor l
    adc l
    add d
    adc [hl]
    inc bc
    adc e
    sbc a
    ld a, [hl-]
    adc b
    ld a, e
    rlca
    ld a, h
    ld a, e
    ld a, e
    ld l, h
    ld a, e
    add hl, sp
    sbc l
    add d
    sbc [hl]
    inc b
    sbc a
    xor a
    ld a, e
    ld a, h
    adc b
    ld a, e
    ld b, $6C
    ld a, e
    ld a, h
    ld a, e
    ld e, h
    xor l
    add d
    xor [hl]
    inc bc
    xor a
    ld a, e
    ld e, h
    adc h
    ld a, e
    ld bc, $846C
    ld a, e
    ld bc, $907C
    ld a, e
    inc bc
    ld e, h
    ld a, e
    ld a, h
    add l
    ld a, e
    nop
    dec l
    jp hl


    rlca
    add d
    nop
    adc e
    ld [$0001], sp
    sbc h
    ld [$0085], sp
    adc e
    ld [$D401], sp
    sbc h
    ld [$0084], sp
    add d
    ld [$00A6], sp
    add d
    ld [$0083], sp
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    ld bc, $A808
    nop
    ld bc, $8308
    nop
    add d
    ld [$00A6], sp
    add d
    ld [$0085], sp
    adc b
    ld [$D585], sp
    sbc d
    ld [$008D], sp
    add d
    ld [$0083], sp
    add d
    ld [$00A8], sp
    add h
    ld [$88C1], sp
    nop
    nop
    inc d
    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $008D
    ld [bc], a
    inc a
    dec a
    sub d
    nop
    ld [bc], a
    ld c, h
    ld c, l
    adc [hl]
    nop
    add hl, bc
    inc a
    dec a
    ld l, d
    nop
    ld e, h
    ld e, l
    cp [hl]
    cp a
    ld [$0088], a
    dec c
    cp [hl]
    cp a
    dec sp
    ld c, h
    ld c, l
    cp d
    cp e
    ld l, h
    ld l, l
    adc $CF
    ld l, $2F
    add l
    nop
    rrca
    inc a
    dec a
    adc $CF
    ld c, e
    ld e, h
    ld e, l
    jp z, $0CCB

    ld [$000D], sp
    ld a, $3F
    add l
    nop
    add hl, bc
    ld c, h
    ld c, l
    ld e, b
    ld a, [hl-]
    ld d, [hl]
    ld l, h
    ld l, l
    inc c
    ld [$0182], sp
    inc b
    add hl, bc
    rlca
    ld c, [hl]
    ld c, a
    add e
    nop
    rlca
    cp [hl]
    cp a
    ld e, h
    ld e, l
    ld c, c
    ld c, d
    inc c
    add d
    ld [$0182], sp
    ld b, $09
    rrca
    inc e
    dec e
    ld e, [hl]
    ld e, a
    add e
    nop
    ld b, $CE
    rst $08
    ld l, h
    ld l, l
    inc c
    ld [$0184], sp
    rlca
    dec bc
    inc e
    dec e
    cp d
    cp e
    ld l, [hl]
    ld l, a
    add d
    nop
    dec b
    cp d
    cp e
    ld e, b
    inc c
    ld [$0186], sp
    rlca
    dec bc
    ld e, b
    ld a, [hl-]
    jp z, Jump_02D_56CB

    dec sp
    add d
    nop
    inc b
    jp z, $06CB

    add hl, bc
    adc b
    ld bc, $0D06
    ld c, d
    ld c, c
    inc a
    dec a
    ld c, e
    add d
    nop
    dec b
    ld a, d
    ld a, e
    dec de
    inc e
    ld c, $82
    add hl, bc
    add [hl]
    ld bc, $0D04
    ld l, d
    ld c, h
    ld c, l
    add e
    nop
    dec b
    adc d
    adc e
    cp [hl]
    cp a
    dec de
    add d
    inc e
    ld [bc], a
    ld c, $09
    add l
    ld bc, $0D03
    ld e, h
    ld e, l
    add l
    nop
    ld [$CFCE], sp
    ld l, d
    ld c, c
    ld a, [hl-]
    dec de
    inc e
    ld c, $84
    ld bc, $0B03
    ld l, h
    ld l, l
    add l
    nop
    add hl, bc
    ld a, [hl-]
    ld a, d
    ld a, e
    nop
    ld c, d
    cp d
    cp e
    dec de
    ld a, [bc]
    add h
    ld bc, $0D03
    cp [hl]
    cp a
    add h
    nop
    ld a, [bc]
    ld c, d
    xor d
    xor e
    ld a, d
    ld a, e
    jp z, $3BCB

    ld c, $09
    add e
    ld bc, $0F03
    adc $CF
    add a
    nop
    ld [bc], a
    adc d
    adc e
    add d
    nop
    add hl, bc
    ld c, e
    dec de
    inc e
    ld c, $09
    rrca
    dec e
    nop
    dec sp
    adc l
    nop
    rlca
    ld d, [hl]
    dec de
    inc e
    dec e
    inc a
    dec a
    ld c, e
    adc h
    nop
    rlca
    ld e, b
    nop
    dec sp
    ld c, c
    nop
    ld c, h
    ld c, l
    adc a
    nop
    dec b
    ld c, e
    nop
    ld l, d
    ld e, h
    ld e, l
    sub d
    nop
    ld [bc], a
    ld l, h
    ld l, l
    adc c
    nop
    nop
    inc d
    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $0087
    dec b
    jp $C5C4


    nop
    ld b, a
    adc a
    nop
    ld b, $D3
    call nc, $00D5
    ld b, a
    or c
    adc a
    nop
    ld a, [bc]
    ld b, a
    ld b, h
    nop
    ld b, a
    ld d, [hl]
    nop
    db $E4
    push hl
    ld h, [hl]
    or c
    add e
    nop
    inc bc
    ret nz

    pop bc
    jp nz, $0084

    ld a, [bc]
    ld b, a
    nop
    ld [hl], e
    ld d, a
    ld h, d
    ld [hl], $F4
    push af
    ld [hl], e
    ld h, d
    add e
    nop
    inc b
    ret nc

    pop de
    jp nc, $8235

    nop
    ld b, $66
    ld d, a
    ld sp, $7356
    ld b, $83
    rlca
    inc bc
    ld [$B144], sp
    add e
    nop
    dec bc
    scf
    and $E7
    ld h, d
    ld [hl], e
    dec [hl]
    ld h, d
    ld b, c
    ld b, $07
    ld c, c
    add d
    rla
    dec b
    jr c, jr_02D_7945

    jp $C5C4


    add d
    nop
    ld b, $47
    or $F7
    ld d, [hl]
    ld [hl], $06
    add d
    rlca
    ld a, [bc]
    ld c, c
    rla
    rla
    jr c, jr_02D_7958

    jr z, jr_02D_7989

    db $D3
    call nc, $82D5
    nop
    ld b, $57
    dec [hl]
    nop
    ld b, $07
    ld c, c
    add e
    rla
    rlca
    ld e, [hl]
    jr c, @+$2A

jr_02D_7945:
    ld h, d
    db $E4
    push hl
    ld h, d
    add e
    nop
    dec b
    and c
    ld b, h
    ld b, $07
    ld c, c
    add e
    rla
    dec bc
    ld a, e
    rla
    rla
    ld c, b

jr_02D_7958:
    ld [$F435], sp
    push af
    jp $C5C4


    add d
    nop
    dec b
    ld h, [hl]
    ld h, $39
    rla
    ld e, [hl]
    add [hl]
    rla
    rlca
    ld c, b
    ld [$6673], sp
    db $D3
    call nc, $82D5
    nop
    inc bc
    ld sp, $2635
    add d
    daa
    ld bc, $8439
    rla
    ld b, $6D
    rla
    ld c, b
    ld [$7231], sp
    add h
    nop
    ld [$7341], sp

jr_02D_7989:
    ld h, d
    db $E4
    push hl
    ld h, $27
    add hl, sp
    add l
    rla
    inc bc
    jr jr_02D_79D5

    or c
    add [hl]
    nop
    rlca
    or e
    db $F4
    push af
    ld h, d
    dec [hl]
    ld h, $39
    add h
    rla
    inc bc
    ld c, b
    ld [$87A0], sp
    nop
    add hl, bc
    and c
    ld d, [hl]
    jp $C5C4


    ld h, $39
    rla
    ld e, e
    add d
    rla
    ld [bc], a
    jr jr_02D_7A1C

    adc c
    nop
    ld b, $D3
    call nc, Call_02D_56D5
    ld h, $39
    add e
    rla
    ld [bc], a
    jr jr_02D_79F5

    adc e
    nop
    inc b
    or e
    ld sp, $2635
    add e
    daa
    ld [bc], a
    jr z, jr_02D_7A11

    adc h
    nop
    ld [$6241], sp

jr_02D_79D5:
    ld h, [hl]
    ld b, l
    dec [hl]
    ld h, d
    and b
    ld [hl], d
    sub b
    nop
    inc bc
    ld d, [hl]
    inc [hl]
    ld [hl], d
    or d
    nop
    nop
    add hl, de
    ld [hl], c
    ld [bc], a
    sbc d
    nop
    sub a
    ld [$0082], sp
    ld [bc], a
    ld [$82C0], sp
    nop
    ld bc, $8308

jr_02D_79F5:
    nop
    add d
    ld [bc], a
    add e
    nop
    add a
    ld [bc], a
    add d
    nop
    inc b
    ld [$0000], sp
    ld [$0083], sp
    inc bc
    ld [$0000], sp
    add e
    ld [bc], a
    add e
    nop
    add a
    ld [bc], a
    add d
    nop

jr_02D_7A11:
    ld b, $08
    nop
    nop
    ld [$0000], sp
    add d
    ld [$0083], sp

jr_02D_7A1C:
    add d
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    nop
    adc c
    ld [bc], a
    rlca
    ld [$0000], sp
    ld [$0200], sp
    nop
    adc h
    ld [bc], a
    add d
    nop
    add h
    ld [bc], a
    rlca
    ld [$0000], sp
    ld [$0200], sp
    nop
    sub d
    ld [bc], a
    inc bc
    ld [$0000], sp
    add h
    ld [$0286], sp
    ld bc, $8B00
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0285], sp
    ld bc, $8D00
    ld [bc], a
    add d
    nop
    ld b, $08
    nop
    nop
    ld [$0802], sp
    add e
    ld [bc], a
    add d
    nop
    adc h
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld [$0082], sp
    inc bc
    ld [$0802], sp
    sub c
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld [$0082], sp
    add h
    ld [$0292], sp
    inc b
    ld [$0000], sp
    ld [$0083], sp
    adc a
    ld [bc], a
    add e
    nop
    ld b, $08
    nop
    nop
    ld [$0000], sp
    adc b
    ld [bc], a
    add d
    nop
    add a
    ld [bc], a
    add d
    nop
    inc b
    ld [$0000], sp
    ld [$0083], sp
    adc a
    ld [bc], a
    add e
    nop
    inc b
    ld [$0000], sp
    ld [$0295], sp
    ld b, $08
    nop
    nop
    ld [$0202], sp
    ld bc, $9200
    ld [bc], a
    rlca
    ld [$0000], sp
    ld [$0002], sp
    ld [bc], a
    add d
    nop
    adc d
    ld [bc], a
    ld bc, $8500
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$028F], sp
    ld bc, $8500
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0295], sp
    inc b
    ld [$0000], sp
    ld [$0083], sp
    add [hl]
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    nop
    adc c
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0083], sp
    add [hl]
    ld [bc], a
    add e
    nop
    add e
    ld [bc], a
    ld bc, $8300
    ld [bc], a
    add d
    nop
    inc b
    ld [$0000], sp
    ld [$0083], sp
    add [hl]
    ld [bc], a
    add e
    nop
    add a
    ld [bc], a
    add d
    nop
    inc bc
    ld [$0000], sp
    sub a
    ld [$009D], sp
    nop
    add hl, de
    ld [hl], c
    ld [bc], a
    sbc d
    nop
    sub a
    ld [$0082], sp
    ld bc, $8308
    nop
    sub d
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0083], sp
    add l
    ld [bc], a
    ld bc, $8C08
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0083], sp
    adc e
    ld [bc], a
    add l
    nop
    add d
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0284], sp
    ld bc, $8908
    ld [bc], a
    add l
    nop
    add d
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0284], sp
    ld bc, $8608
    ld [bc], a
    ld bc, $8908
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$028B], sp
    ld bc, $8908
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0286], sp
    add e
    nop
    adc h
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0286], sp
    add e
    nop
    adc h
    ld [bc], a
    dec b
    ld [$0000], sp
    ld [$8202], sp
    nop
    add e
    ld [bc], a
    add e
    nop
    adc d
    ld [bc], a
    inc bc
    ld [$0802], sp
    add d
    nop
    ld bc, $8D08
    ld [bc], a
    add e
    nop
    add e
    ld [bc], a
    inc bc
    ld [$0802], sp
    add d
    nop
    ld bc, $8D08
    ld [bc], a
    add e
    nop
    add l
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$028D], sp
    add e
    nop
    add l
    ld [bc], a
    dec b
    ld [$0000], sp
    ld [$8202], sp
    nop
    sub d
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0285], sp
    add h
    nop
    adc h
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0285], sp
    add h
    nop
    adc h
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0285], sp
    add h
    nop
    add d
    ld [bc], a
    inc b
    ld [$0202], sp
    ld [$0286], sp
    inc b
    ld [$0000], sp
    ld [$0285], sp
    add h
    nop
    add d
    ld [bc], a
    ld [bc], a
    ld [$8202], sp
    ld [$0002], sp
    ld [bc], a
    add d
    nop
    add d
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0283], sp
    ld bc, $8A08
    ld [bc], a
    add l
    nop
    add d
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0083], sp
    add d
    ld [$028A], sp
    add h
    nop
    add d
    ld [bc], a
    inc b
    ld [$0000], sp
    ld [$0084], sp
    adc e
    ld [bc], a
    add h
    nop
    add d
    ld [bc], a
    ld b, $08
    nop
    nop
    ld [$C000], sp
    add d
    nop
    sub c
    ld [bc], a
    inc bc
    ld [$0000], sp
    sub a
    ld [$009D], sp
    nop
    inc d
    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $4A95
    inc b
    inc sp
    ld b, $06
    inc [hl]
    adc c
    ld c, d
    dec b
    dec b
    ld b, $FF
    adc $07
    add d
    ld c, d
    inc b
    dec d
    ld d, $16
    rst $38
    adc c
    ld c, d
    dec b
    ld [hl], $15
    ld d, $DE
    rla
    add d
    ld c, d
    inc b
    rst $38
    ld d, $16
    rla
    adc c
    ld c, d
    dec b
    dec b
    sbc d
    rst $38
    ld d, $17
    add d
    ld c, d
    dec b
    dec h
    ld h, $8A
    sbc c
    inc [hl]
    adc b
    ld c, d
    ld [bc], a
    dec d
    adc c
    add d
    ld h, $08
    inc h
    ld c, d
    ld c, d
    dec [hl]
    ld [hl], $25
    ld h, $27
    adc b
    ld c, d
    ld [bc], a
    inc d
    inc h
    add e
    ld [hl], $84
    ld c, d
    inc bc
    dec [hl]
    ld [hl], $37
    adc b
    ld c, d
    add d
    ld [hl], $86
    ld c, d
    ld [bc], a
    ld c, $2F
    sub d
    ld c, d
    ld [bc], a
    db $FC
    ccf
    add l
    ld c, d
    inc bc
    ld l, $4E
    ld c, a
    adc d
    ld c, d
    ld [bc], a
    ld e, [hl]
    ld e, a
    add l
    ld c, d
    inc bc
    ld a, $FC
    ld c, $8A
    ld c, d
    add d
    ld [hl], $83
    ld c, d
    ld [bc], a
    ld b, e
    ld c, d
    add e
    ld [hl], $8F
    ld c, d
    ld bc, $8984
    ld c, d
    ld bc, $8343
    ld c, d
    ld [bc], a
    dec b
    inc [hl]
    add h
    ld c, d
    inc bc
    sub h
    ld b, $07
    add e
    ld c, d
    dec b
    ld b, e
    ld c, d
    ld c, d
    dec b
    ld d, h
    add e
    ld c, d
    ld [bc], a
    dec d
    ld sp, hl
    add d
    ld c, d
    dec b
    dec b
    ld b, $B9
    daa
    ld [hl], $83
    ld c, d
    ld b, $84
    ld c, d
    ld c, d
    dec d
    sbc c
    rlca
    add d
    ld c, d
    ld [bc], a
    dec h
    ld b, d
    add d
    ld c, d
    inc b
    dec d
    rst $38
    rla
    scf
    add h
    ld c, d
    ld b, $84
    ld c, d
    ld c, d
    rst $38
    ld h, $24
    add d
    ld c, d
    ld [bc], a
    dec [hl]
    scf
    add d
    ld c, d
    inc bc
    dec d
    ld d, $17
    add l
    ld c, d
    inc bc
    sub h
    rlca
    ld c, d
    add e
    ld [hl], $84
    ld c, d
    dec b
    dec b
    ld b, $9A
    ld d, $27
    add h
    ld c, d
    rlca
    dec b
    sbc d
    rla
    ld c, d
    rst $38
    ld b, $07
    add h
    ld c, d
    dec b
    dec d
    rst $38
    xor $17
    scf
    add e
    ld c, d
    ld [$9A05], sp
    rst $38
    sbc c
    ld b, $9A
    rla

jr_02D_7D30:
    ld [hl], $84
    ld c, d
    inc b
    dec h
    ld h, $26
    daa
    add e
    ld c, d
    ld [bc], a
    inc sp
    ld [hl+], a
    add d
    ld h, $04
    xor $26
    ld h, $27
    add l
    ld c, d
    inc b
    dec [hl]
    ld [hl], $36
    scf
    add e
    ld c, d
    add a
    ld [hl], $03
    scf
    ld c, d
    ld c, d
    nop
    inc d
    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $F401
    sub l
    db $FD
    ld bc, $8E0D
    ld c, $01
    rrca
    add e
    db $FD
    ld [bc], a
    dec c
    ld a, [bc]
    adc [hl]
    dec bc
    ld [bc], a
    inc c
    rrca
    add d
    db $FD
    inc b
    dec e
    ld a, [de]
    or l
    add hl, de
    adc d
    dec hl
    inc b
    jr jr_02D_7D30

    inc e
    rra
    add d
    db $FD
    inc b
    dec e
    ld a, [de]
    add hl, de
    inc l
    adc d
    ld l, $04
    ld a, [hl+]
    jr jr_02D_7DA6

    rra
    add d
    db $FD
    dec b
    dec e
    ld a, [de]
    inc e
    rra
    ldh a, [$86]
    db $FD
    rlca
    add hl, hl
    db $FD
    db $FD
    dec e
    ld a, [de]
    inc e
    rra
    add d
    db $FD
    inc b
    dec e
    ld a, [de]
    inc e
    rra
    adc d
    db $FD

jr_02D_7DA6:
    inc b
    dec e
    ld a, [de]
    inc e
    rra
    add d
    db $FD
    dec bc
    dec e
    ld a, [de]
    inc e
    rra
    db $FD
    ld sp, hl
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    add e
    db $FD
    inc b
    dec e
    ld a, [de]
    inc e
    rra
    add d
    db $FD
    inc b
    dec e
    ld a, [de]
    inc e
    rra
    add e
    db $FD
    ld bc, $853A
    db $FD
    dec b
    add hl, hl
    dec e
    ld a, [de]
    inc e
    rra
    add d
    db $FD
    dec bc
    dec e
    ld a, [de]
    inc e
    rra
    db $FD
    ld sp, hl
    jr nc, jr_02D_7E0F

    ld [hl-], a
    inc sp
    inc [hl]
    add e
    db $FD
    inc b
    dec e
    ld a, [de]
    inc e
    rra
    add d
    db $FD
    inc b
    dec e
    ld a, [de]
    inc e
    rra
    adc d
    db $FD
    inc b
    dec e
    ld a, [de]
    inc e
    rra
    add d
    db $FD
    ld a, [bc]
    dec e
    ld a, [de]
    inc e
    rra
    db $FD
    ld sp, hl
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    add h
    db $FD
    inc b
    dec e
    ld a, [de]
    inc e
    rra
    add d
    db $FD
    inc b
    dec e
    ld a, [de]

jr_02D_7E0F:
    inc e
    rra
    adc d
    db $FD
    inc b
    dec e
    ld a, [de]
    inc e
    rra
    add d
    db $FD
    inc b
    dec e
    ld a, [de]
    inc e
    rra
    add [hl]
    db $FD
    ld [$0E0D], sp
    rrca
    db $FD
    dec e
    ld a, [de]
    inc e
    rra
    add d
    db $FD
    dec b
    dec e
    ld a, [de]
    inc e
    rra
    ldh a, [$85]
    db $FD
    ld [$FD1D], sp
    rra
    db $FD
    dec e
    ld a, [de]
    inc e
    rra
    add d
    db $FD
    inc b
    dec e
    ld a, [de]
    add hl, bc
    inc c
    add [hl]
    ld c, $08
    ld a, [bc]
    dec bc
    inc c
    ld c, $0A
    ld [$1F1C], sp
    add d
    db $FD
    inc b
    dec e
    ld a, [de]
    or l
    add hl, bc
    add [hl]
    dec bc
    ld [$B508], sp
    add hl, bc
    dec bc
    ld [$1CB5], sp
    rra
    add d
    db $FD
    ld [bc], a
    dec l
    ld a, [hl+]
    adc [hl]
    dec hl
    ld [bc], a
    inc l
    cpl
    add e
    db $FD
    ld bc, $8E2D
    ld l, $01
    cpl
    sub [hl]
    db $FD
    nop
    inc d
    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $4A82
    ld bc, $8305
    ld b, $01
    rlca
    add [hl]
    ld c, d
    ld bc, $8305
    ld b, $01
    rlca
    add h
    ld c, d
    ld bc, $8325
    ld l, [hl]
    ld bc, $8627
    ld c, d
    ld bc, $8325
    ld l, [hl]
    ld bc, $8527
    ld c, d
    add e
    rst $38
    adc b
    ld c, d
    inc bc
    ld e, [hl]
    ld e, a
    adc $85
    ld c, d
    dec b
    dec b
    sbc d
    ld d, $99
    rlca
    add [hl]
    ld c, d
    inc b
    dec b
    ld b, $FF
    sbc $84
    ld c, d
    ld [bc], a
    dec b
    sbc d
    add e
    ld d, $02
    sbc c
    rlca
    add l
    ld c, d
    inc b
    dec d
    ld d, $16
    rla
    add h
    ld c, d
    ld [bc], a
    dec d
    db $ED
    add d
    ld h, $03
    adc d
    ld d, $17
    add l
    ld c, d
    inc b
    dec d
    ld d, $16
    rla
    add h
    ld c, d
    ld [bc], a
    dec h
    daa
    add d
    ld [hl], $03
    dec h
    ld h, $27
    add l
    ld c, d
    inc b
    dec h
    ld h, $26
    daa
    add h
    ld c, d
    rlca
    dec [hl]
    scf
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    add l
    ld c, d
    inc b
    dec [hl]
    ld [hl], $36
    scf
    add l
    ld c, d
    inc b
    ld l, $E7
    add sp, $2F
    adc b
    ld c, d
    ld bc, $870E
    ld c, d
    inc b
    ld a, $15
    ld b, h
    ccf
    adc b
    ld c, d
    dec b
    db $FC
    rra
    ld c, d
    ld c, $FC
    add e
    ld c, d
    inc b
    ei
    sbc d
    ld b, h
    ld e, $88
    ld c, d
    add d
    ld [hl], $03
    ld c, d
    ld [hl], $1E
    add e
    ld c, d
    inc b
    ei
    ld d, $44
    cpl
    adc h
    ld c, d
    ld bc, $8336
    ld c, d
    inc b
    ei
    ld d, $17
    ccf
    adc d
    ld c, d
    ld bc, $8543
    ld c, d
    ld b, $FB
    ld d, $17
    cpl
    ld c, d
    ld b, e
    add h
    ld c, d
    ld bc, $8333
    ld b, $03
    and l
    ld b, $34
    add e
    ld c, d
    ld b, $FB
    ld d, $17
    ccf
    ld c, d
    add h
    add h
    ld c, d
    rlca
    dec d
    ld e, [hl]
    ld e, a
    adc c
    ld h, $FF
    daa
    add e
    ld c, d
    ld b, $FB
    ld d, $17
    ld c, $4A
    add h
    add h
    ld c, d
    ld b, $15
    ld d, $16
    rla
    ld [hl], $36
    ld bc, $8337
    ld c, d
    inc bc
    dec h
    ld h, $32
    add d
    ld [de], a
    ld bc, $8452
    ld c, d
    inc b
    dec h
    ld h, $26
    daa
    add [hl]
    ld c, d
    ld bc, $8435
    ld [hl], $01
    scf
    add h
    ld c, d
    inc b
    dec [hl]
    ld [hl], $36
    scf
    xor h
    ld c, d
    nop
    db $10
    or b
    nop
    sub h
    ld [$C589], sp
    ld bc, $8600
    ld [$0082], sp
    ld bc, $8608
    call nz, $0001
    add e
    ld [$C906], sp
    nop
    ld [$0800], sp
    nop
    add [hl]
    jp $0884


    add d
    nop
    ld bc, $8208
    nop
    add [hl]
    ld [$0001], sp
    add l
    ld [$8002], sp
    ld [$C682], sp
    ld bc, $8300
    ld [$C283], sp
    ld bc, $8300
    ld [$0001], sp
    add h
    rst $00
    add e
    ld [$0001], sp
    add e
    pop bc
    add h
    ld [$0001], sp
    add h
    ret z

    add e
    ld [$C001], sp
    add e
    nop
    add a
    ld [$0001], sp
    add d
    ld [$0082], sp
    ld bc, $83C0
    nop
    adc e
    ld [$0002], sp
    ret nz

    add d
    nop
    sub h
    ld [$FF00], sp
