; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $026", ROMX[$4000], BANK[$26]

    ld b, b
    nop
    db $10
    ret nz

    ld b, c
    ret nz

    sbc h
    and [hl]
    add d
    and a
    add e
    and b
    ld bc, $8CC0
    and [hl]
    ld bc, $89C0
    and [hl]
    add e
    and a
    add e
    and b
    add d
    ret nz

    sbc h
    and [hl]
    add d
    and a
    add e
    and b
    ld bc, $84C0
    and l
    adc b
    and [hl]
    ld bc, $89C0
    and [hl]
    add h
    and a
    add d
    and b
    add d
    ret nz

    sub b
    and l
    ld bc, $8BC0
    and [hl]
    add d
    and a
    add e
    and b
    ld bc, $86C0
    and l
    add [hl]
    and [hl]
    ld bc, $84C0
    and [hl]
    ld bc, $84C0
    and [hl]
    add h
    and a
    add d
    and b
    add d
    ret nz

    sub b
    and l
    ld bc, $8BC0
    and [hl]
    add d
    and a
    add e
    and b
    ld bc, $86C0
    and h
    ld bc, $8AC0
    and [hl]
    ld bc, $84C0
    and [hl]
    add h
    and a
    add d
    and b
    add d
    ret nz

    add d
    and h
    add e
    and l
    ld bc, $8BC0
    and l
    add [hl]
    and [hl]
    add l
    ret nz

    add d
    and a
    add e
    and b
    ld bc, $86C0
    and h
    ld bc, $8AC0
    and [hl]
    ld bc, $84C0
    and [hl]
    ld bc, $83C0
    and a
    add d
    and b
    add d
    ret nz

    add d
    and h
    add d
    and l
    ld bc, $8CC0
    and l
    adc b
    and [hl]
    inc bc
    and a
    and b
    ret nz

    add l
    and b
    ld bc, $86C0
    and h
    ld bc, $8FC0
    and [hl]
    ld bc, $83C0
    and a
    add d
    and b
    add d
    ret nz

    add d
    and h
    add d
    and l
    ld bc, $87C0
    and l
    ld bc, $85C0
    and l
    add a
    and [hl]
    inc bc
    and a
    and b
    ret nz

    add l
    and b
    ld bc, $86C0
    and h
    ld bc, $8FC0
    and [hl]
    ld bc, $83C0
    and a
    add d
    and b
    add d
    ret nz

    add d
    and h
    adc c
    and l
    ld bc, $88C0
    and l
    add h
    and [hl]
    inc b
    and a
    and b
    and b
    ret nz

    add l
    and b
    ld bc, $86C0
    and h
    ld bc, $86C0
    and [hl]
    adc d
    ret nz

    add d
    and a
    add e
    and b
    add d
    ret nz

    add d
    and h
    sub h
    and l
    add e
    ret nz

    add d
    and b
    ld bc, $85C0
    and b
    inc bc
    ret nz

    and h
    and h
    add h
    and e
    adc b
    ret nz

    adc [hl]
    and b
    add d
    ret nz

    sub b
    and h
    add e
    ret nz

    add l
    and h
    inc b
    ret nz

    and b
    and b
    ret nz

    add l
    and b
    inc bc
    ret nz

    and h
    and h
    add h
    and e
    add [hl]
    and d
    ld bc, $8FC0
    and b
    add d
    ret nz

    sbc b
    and h
    inc b
    ret nz

    and b
    and b
    ret nz

    add l
    and b
    inc bc
    ret nz

    and h
    and h
    adc c
    and e
    add d
    ret nz

    adc a
    and b
    add d
    ret nz

    adc b
    and h
    ld bc, $8FC0
    and h
    inc b
    ret nz

    and b
    and b
    ret nz

    add l
    and b
    inc bc
    ret nz

    and h
    and h
    add h
    and d
    add e
    and e
    add d
    and h
    ld bc, $90C0
    and b
    add d
    ret nz

    adc c
    and h
    add d
    ret nz

    add h
    and h
    ld bc, $88C0
    and h
    inc b
    ret nz

    and b
    and b
    ret nz

    add l
    and a
    add a
    ret nz

    add l
    and h
    ld bc, $90C0
    and b
    add d
    ret nz

    adc d
    and h
    ld bc, $83C0
    and h
    add h
    ret nz

    add [hl]
    and h
    inc b
    ret nz

    and b
    and b
    ret nz

    add [hl]
    and a
    add [hl]
    and [hl]
    add h
    and l
    ld [bc], a
    and h
    ret nz

    sub b
    and b
    add d
    ret nz

    sub c
    and h
    ld bc, $86C0
    and h
    inc b
    ret nz

    and b
    and b
    ret nz

    sub b
    and [hl]
    ld [bc], a
    and h
    ret nz

    sub b
    and b
    add d
    ret nz

    sub c
    and h
    ld bc, $85C0
    and h
    add d
    ret nz

    add d
    and b
    ld bc, $90C0
    and [hl]
    ld [bc], a
    and h
    ret nz

    sub b
    and b
    add d
    ret nz

    sub b
    and h
    ld bc, $85C0
    and h
    add d
    ret nz

    add e
    and b
    add e
    ret nz

    adc c
    and [hl]
    add a
    ret nz

    sub b
    and b
    add d
    ret nz

    sub b
    and h
    ld bc, $85C0
    and h
    ld bc, $86C0
    and b
    adc e
    ret nz

    add l
    and d
    ld bc, $90C0
    and b
    add d
    ret nz

    add e
    and h
    ld [bc], a
    ret nz

    and h
    add d
    ret nz

    ld [bc], a
    and h
    ret nz

    add a
    and h
    ld bc, $84C0
    and h
    ld bc, $87C0
    and b
    add d
    ret nz

    ld [bc], a
    and b
    and c
    adc h
    and d
    ld bc, $8CC0
    and c
    add h
    and b
    add d
    ret nz

    add d
    and h
    add d
    ret nz

    sub c
    and h
    ld bc, $87C0
    and b
    inc b
    ret nz

    and b
    and b
    and c
    sbc b
    and d
    add l
    and c
    add d
    ret nz

    sub l
    and h
    ld bc, $86C0
    and b
    add d
    ret nz

    add d
    and b
    add h
    and c
    sub [hl]
    and d
    add h
    and c
    add d
    ret nz

    sub h
    and h
    ld bc, $87C0
    and b
    ld bc, $83C0
    and b
    add l
    and c
    sub a
    and d
    add d
    and c
    add d
    ret nz

    adc l
    and h
    ld bc, $85C0
    and h
    add d
    ret nz

    add a
    and b
    ld bc, $84C0
    and b
    add l
    and c
    sub a
    and d
    inc bc
    and c
    ret nz

    ret nz

    add h
    and h
    ld bc, $8DC0
    and h
    add d
    ret nz

    adc b
    and b
    ld bc, $85C0
    and b
    add h
    and c
    sbc d
    ret nz

    sub d
    and h
    ld bc, $89C0
    and b
    ld bc, $86C0
    and b
    add e
    and c
    ld bc, $94C0
    and [hl]
    add d
    and a
    inc bc
    and b
    ret nz

    ret nz

    adc c
    and h
    ld bc, $87C0
    and h
    add d
    ret nz

    add e
    and b
    ld bc, $85A3
    and b
    ld bc, $87C0
    and b
    add d
    and c
    ld bc, $93C0
    and [hl]
    add d
    and a
    add d
    and b
    add d
    ret nz

    sub c
    and h
    ld bc, $83C0
    and b
    add d
    and c
    ld bc, $84A3
    and b
    ld bc, $89C0
    and b
    ld bc, $93C0
    and [hl]
    add d
    and a
    add d
    and b
    add d
    ret nz

    sub c
    and h
    ld [$A0C0], sp
    and b
    and c
    and d
    and e
    and h
    and e
    add d
    and b
    add d
    ret nz

    adc c
    and b
    ld bc, $86C0
    and l
    adc l
    and [hl]
    add d
    and a
    add d
    and b
    add d
    ret nz

    sub c
    and h
    ld [bc], a
    ret nz

    and b
    add e
    and c
    ld [bc], a
    ret nz

    and l
    add e
    and [hl]
    ld bc, $8AC0
    and b
    ld bc, $86C0
    and l
    adc l
    and [hl]
    add d
    and a
    add d
    and b
    add d
    ret nz

    add l
    and h
    ld bc, $87C0
    and h
    ld bc, $83C0
    and h
    ld b, $C0
    and c
    and d
    and c
    and b
    and a
    add h
    and [hl]
    ld bc, $84C0
    and a
    add [hl]
    and [hl]
    ld bc, $86C0
    and l
    adc h
    and [hl]
    add e
    and a
    add d
    and b
    add d
    ret nz

    sub c
    and h
    ld bc, $83C0
    and c
    add [hl]
    and a
    ld bc, $8AC0
    and [hl]
    ld bc, $84C0
    and l
    adc [hl]
    and [hl]
    add d
    and a
    add e
    and b
    add d
    ret nz

    sub c
    and h
    ld bc, $84C0
    and b
    add l
    and a
    ld bc, $85C0
    and [hl]
    add l
    ld bc, $C001
    add h
    and l
    adc l
    and [hl]
    add d
    and a
    add h
    and b
    add d
    ret nz

    adc d
    and h
    ld bc, $86C0
    and h
    ld bc, $85C0
    and b
    add e
    and a
    ld [bc], a
    and b
    ret nz

    add l
    and [hl]
    ld bc, $8401
    nop
    ld bc, $83C0
    and l
    adc [hl]
    and [hl]
    add d
    and a
    add h
    and b
    add d
    ret nz

    sub c
    and h
    ld bc, $89C0
    and b
    add a
    ret nz

    add h
    nop
    ld bc, $83C0
    ld bc, $A68D
    add e
    and a
    add h
    and b
    add d
    ret nz

    sub d
    and h
    ld bc, $88C0
    and b
    ld [bc], a
    and e
    and h
    add e
    and l
    ld [bc], a
    and [hl]
    ld bc, $0084
    inc b
    ret nz

    pop bc
    nop
    ld bc, $A68D
    add d
    and a
    add l
    and b
    add d
    ret nz

    sub d
    and h
    ld bc, $88C0
    and b
    ld [bc], a
    and e
    and h
    add h
    and l
    ld bc, $8401
    nop
    inc b
    ret nz

    nop
    nop
    ld bc, $A68D
    add d
    and a
    add l
    and b
    add d
    ret nz

    adc a
    and h
    inc b
    ret nz

    and h
    and h
    ret nz

    adc b
    and b
    ld bc, $83A3
    and h
    add d
    and l
    sub [hl]
    ret nz

    add d
    and a
    add l
    and b
    add d
    ret nz

    add h
    and h
    ld bc, $84C0
    and h
    ld bc, $88C0
    and h
    ld bc, $88C0
    and b
    ld bc, $85A3
    and h
    inc b
    ret nz

    and b
    and b
    and c
    sub c
    and d
    add d
    ret nz

    add [hl]
    and b
    add d
    ret nz

    adc c
    and h
    ld bc, $88C0
    and h
    ld bc, $88C0
    and b
    add d
    and e
    add h
    and h
    inc bc
    ret nz

    and b
    and b
    add d
    and c
    sub c
    and d
    ld bc, $86C0
    and b
    add d
    ret nz

    add a
    and h
    add d
    ret nz

    adc c
    and h
    add l
    ret nz

    add h
    and b
    ld bc, $84A3
    and h
    ld [bc], a
    and l
    ret nz

    add e
    and b
    ld bc, $90A1
    and d
    ld [bc], a
    and e
    ret nz

    add [hl]
    and b
    add d
    ret nz

    add a
    and h
    ld bc, $8DC0
    and h
    ld [bc], a
    and e
    ret nz

    add h
    and b
    add d
    and e
    add h
    and l
    ld bc, $83C0
    and b
    add d
    and c
    adc l
    and d
    add e
    and e
    ld bc, $86C0
    and b
    add d
    ret nz

    adc [hl]
    and h
    ld bc, $86C0
    and h
    inc bc
    and e
    ret nz

    ret nz

    add d
    and b
    inc bc
    and e
    and h
    and e
    add h
    and l
    ld bc, $84C0
    and b
    add e
    and c
    adc d
    and d
    add d
    and e
    add d
    and h
    ld bc, $86C0
    and b
    add d
    ret nz

    add d
    and h
    ld bc, $91C0
    and h
    add e
    and e
    dec b
    ret nz

    and b
    and c
    and d
    and e
    add l
    and l
    ld bc, $86C0
    and b
    add e
    and c
    add l
    and d
    add h
    and e
    add e
    and h
    ld bc, $86C0
    and b
    add d
    ret nz

    sub d
    and h
    ld bc, $84C0
    and e
    ld bc, $83C0
    and c
    ld bc, $85C0
    and l
    ld bc, $88C0
    and b
    add d
    and c
    add e
    and d
    add e
    and e
    add l
    and h
    ld bc, $86C0
    and b
    add d
    ret nz

    adc a
    and h
    adc c
    and e
    inc bc
    ret nz

    and a
    and c
    add d
    and a
    add e
    and l
    ld [bc], a
    and h
    ret nz

    adc c
    and b
    add d
    and c
    add d
    and d
    ld bc, $87A3
    and h
    ld bc, $86C0
    and b
    add d
    ret nz

    adc e
    and h
    ld bc, $84C0
    and e
    ld bc, $87C0
    and e
    inc b
    ret nz

    and b
    and a
    and c
    add d
    and l
    add e
    and h
    ld bc, $8AC0
    and b
    ld [bc], a
    and c
    and d
    add d
    and e
    add a
    and h
    ld bc, $86C0
    and b
    add d
    ret nz

    add l
    and h
    ld bc, $83C0
    and h
    adc a
    and e
    dec b
    ret nz

    and b
    and b
    and a
    and l
    add h
    and h
    ld bc, $8AC0
    and b
    add d
    and c
    ld bc, $88A3
    and h
    ld bc, $86C0
    and b
    add d
    ret nz

    add l
    and h
    inc bc
    and e
    ret nz

    ret nz

    adc h
    and e
    ld bc, $83C0
    and e
    ld bc, $84C0
    and b
    add h
    and h
    ld bc, $8CC0
    and b
    ld bc, $88C0
    and h
    ld bc, $86C0
    and b
    add d
    ret nz

    add d
    and h
    ld bc, $95C0
    and e
    ld bc, $84C0
    and b
    add h
    and h
    ld bc, $8CC0
    and b
    ld bc, $88C0
    and h
    ld bc, $86C0
    and b
    add d
    ret nz

    sbc b
    and e
    ld bc, $84C0
    and b
    add h
    and h
    ld bc, $8CC0
    and b
    ld bc, $88C0
    and h
    ld bc, $86C0
    and b
    add d
    ret nz

    adc e
    and e
    ld bc, $85C0
    and e
    ld bc, $83C0
    and e
    inc b
    ret nz

    and e
    and e
    ret nz

    add h
    and b
    add h
    and h
    ld bc, $8CC0
    and b
    ld bc, $88C0
    and h
    ld bc, $86C0
    and b
    add d
    ret nz

    add [hl]
    and e
    ld bc, $85C0
    and e
    ld bc, $8CC0
    and e
    inc b
    ret nz

    and b
    and a
    and [hl]
    add d
    and l
    add d
    and h
    ld bc, $8CC0
    and b
    ld bc, $88C0
    and h
    ld bc, $86C0
    and b
    add d
    ret nz

    sub l
    and e
    add d
    ret nz

    add d
    and e
    add d
    ret nz

    add d
    and a
    ld [bc], a
    and [hl]
    and l
    add d
    and h
    ld bc, $8CC0
    and b
    ld bc, $87C0
    and h
    ld [bc], a
    and e
    ret nz

    add [hl]
    and b
    add d
    ret nz

    sbc d
    and e
    ld bc, $83C0
    and a
    inc b
    and [hl]
    and l
    and h
    ret nz

    adc h
    and b
    ld bc, $87C0
    and h
    inc bc
    and e
    and d
    and c
    add l
    and b
    add d
    ret nz

    adc e
    and e
    ld bc, $8EC0
    and e
    add d
    ret nz

    add d
    and a
    ld [bc], a
    and [hl]
    and h
    add d
    ret nz

    adc h
    and b
    ld bc, $86C0
    and h
    add d
    and e
    inc bc
    and d
    and c
    and c
    add h
    and b
    add d
    ret nz

    add l
    and e
    ld bc, $8DC0
    and e
    ld bc, $83C0
    and e
    ld bc, $83C0
    and e
    add [hl]
    ret nz

    adc l
    and c
    ld bc, $85C0
    and h
    add e
    and e
    add d
    and d
    ld bc, $84A1
    and b
    add d
    ret nz

    sub b
    and e
    inc bc
    ret nz

    and e
    and e
    adc l
    and d
    adc [hl]
    and c
    ld bc, $85C0
    and h
    ld bc, $84A3
    and d
    add e
    and c
    add d
    and b
    add d
    ret nz

    adc e
    and e
    sub [hl]
    and d
    adc l
    and c
    ld bc, $83C0
    and h
    add e
    and e
    add l
    and d
    add h
    and c
    add d
    ret nz

    adc c
    and e
    ld bc, $98C0
    and d
    adc h
    and c
    inc bc
    ret nz

    and h
    and h
    add e
    and e
    add a
    and d
    add e
    and c
    add d
    ret nz

    add a
    and e
    adc l
    and d
    ld bc, $99C0

jr_026_4657:
    and d
    inc bc
    ret nz

    and h
    and h
    add d
    and e
    adc b
    and d
    add e
    and c

jr_026_4662:
    add d
    ret nz

    add [hl]
    and e
    add a
    and d
    ld bc, $A0C0
    and d
    inc b
    ret nz

    and h
    and h
    and e
    adc d
    and d
    add d
    and c
    add d
    ret nz

    add e
    and e

jr_026_4679:
    xor e
    and d
    inc b
    ret nz

    and h
    and h
    and e
    adc e
    and d
    ld bc, $C0A1

jr_026_4685:
    ld b, c
    ret nz

    nop
    jr z, @+$46

    dec l
    ld b, h
    inc l
    inc sp
    inc h
    jr nz, jr_026_46B7

    ld sp, $2820
    dec l
    ld [hl+], a
    inc sp
    jr nz, jr_026_46CC

    jr z, jr_026_46D0

    jr z, jr_026_46CB

    inc h
    ld d, [hl]
    dec l
    ld d, [hl]
    ld c, e
    ld sp, $6256
    ld l, $21
    ld d, [hl]
    ccf
    inc [hl]
    ld [hl+], a
    jr z, @+$33

    inc h
    ld hl, $2224
    add d
    ld d, [hl]
    ld [bc], a
    inc sp
    inc h
    add d

jr_026_46B7:
    ld d, [hl]
    inc c
    ld hl, $4056
    dec l
    ld d, [hl]
    ld h, d
    ld h, $28
    ld d, [hl]
    ld c, a
    dec l
    inc h
    add d
    ld l, $82
    ld d, [hl]
    ld a, [bc]
    dec hl

jr_026_46CB:
    ld [hl-], a

jr_026_46CC:
    ld c, l
    jr c, @+$58

    ld c, [hl]

jr_026_46D0:
    jr nz, jr_026_46FF

    inc sp
    jr nz, jr_026_4657

    ld d, [hl]
    ld [bc], a
    ld sp, $822A
    ld d, [hl]
    ld [bc], a
    inc h
    jr c, jr_026_4662

    ld d, [hl]
    ld b, $70
    ld d, [hl]
    ld d, [hl]
    ld [hl], c
    ld d, [hl]
    ld d, [hl]
    inc b
    dec a
    ld d, [hl]
    ld d, [hl]
    jr c, @-$67

    ld d, [hl]
    ld [bc], a
    ccf
    inc h
    add d
    ld d, [hl]
    ld [bc], a
    ld [hl-], a
    jr z, jr_026_4679

    ld d, [hl]
    inc b
    ld h, $2D
    ld [hl], b
    ld [hl], c
    add d
    ld d, [hl]

jr_026_46FF:
    ld [bc], a
    ld c, l
    jr z, jr_026_4685

    ld d, [hl]
    ld [bc], a
    ld [hl+], a
    daa
    adc b
    ld d, [hl]
    ld [$2447], sp
    ld d, [hl]
    ld c, e
    jr nz, jr_026_4731

    ld sp, $822E
    ld d, [hl]
    ld [bc], a
    ld h, $31
    add d
    ld d, [hl]
    ld [bc], a
    jr nz, jr_026_4748

    add d
    ld d, [hl]
    ld [bc], a
    inc l
    inc h
    add d
    ld d, [hl]
    inc b
    ld sp, $4F56
    inc h
    add d
    ld d, [hl]
    ld [bc], a
    ld [hl-], a
    inc sp
    add d
    ld d, [hl]
    ld [bc], a
    inc h

jr_026_4731:
    ld sp, $5682
    ld bc, $8732
    ld d, [hl]
    ld b, $72
    ld h, e
    ld h, h
    ld h, l
    ld d, [hl]
    ld d, d
    add d
    ld d, [hl]
    ld [bc], a
    inc h
    ld sp, $5682
    ld [bc], a
    dec l

jr_026_4748:
    inc h
    add d
    ld d, [hl]
    ld bc, $8331
    ld d, [hl]
    inc c
    ld c, [hl]
    ld [hl+], a
    ld d, [hl]
    ccf
    inc h
    dec l
    inc h
    ld [hl-], a
    inc h
    ld d, [hl]
    jr z, jr_026_4782

    add d
    ld d, [hl]
    ld [bc], a
    dec l
    inc h
    add d
    ld d, [hl]
    ld bc, $8531
    ld d, [hl]
    rrca
    ld c, b
    jr z, jr_026_47C1

    ld c, c
    ld [hl+], a
    daa
    inc h
    jr z, jr_026_4791

    inc h
    inc l
    jr nz, @+$2D

    ld d, [hl]
    inc sp
    add l
    ld d, [hl]
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    add d
    ld d, [hl]
    ld [bc], a
    ld b, l

jr_026_4782:
    inc h
    add d
    ld d, [hl]
    add d
    ld sp, $5682
    ld c, $38
    ld d, [hl]
    ld c, [hl]
    ld [hl+], a
    ld d, [hl]
    ld h, d
    inc h

jr_026_4791:
    dec l
    ld d, [hl]
    ld c, e
    inc h
    ld d, [hl]
    inc [hl]
    add hl, sp
    add d
    ld d, [hl]
    ld [bc], a
    add hl, sp
    dec hl
    add d
    ld d, [hl]
    ld bc, $8B24
    ld d, [hl]
    ld [bc], a
    dec a
    ld sp, $5682
    ld [bc], a
    jr z, @+$22

    add d
    ld d, [hl]
    ld bc, $892D
    ld d, [hl]
    ld b, $6A
    ld l, e
    ld l, h
    ld l, l
    ld d, [hl]
    ld b, a
    add d
    ld d, [hl]
    ld [bc], a
    jr z, jr_026_47E9

    adc d
    ld d, [hl]
    ld [bc], a
    ld c, e

jr_026_47C1:
    ld sp, $5682
    ld [bc], a
    ld l, $26
    add d
    ld d, [hl]
    ld [bc], a
    ld sp, $8220
    ld d, [hl]
    add d

jr_026_47CF:
    inc l
    add d
    ld d, [hl]
    ld [bc], a
    inc h
    ld sp, $5682
    ld bc, $8432
    ld d, [hl]
    dec b
    inc a
    ld d, [hl]

jr_026_47DE:
    ld d, [hl]
    ld hl, $8220
    ld d, [hl]
    ld [bc], a
    inc l
    ld [hl-], a
    adc h
    ld d, [hl]
    ld [bc], a

jr_026_47E9:
    ld l, [hl]
    ld l, a
    add d
    ld d, [hl]
    ld [bc], a
    ld b, b
    ld sp, $5682
    ld [bc], a
    jr z, jr_026_481F

    sub b
    ld d, [hl]
    ld [$2042], sp
    ld d, [hl]
    inc a
    inc l
    inc h
    ld sp, $8C33
    ld d, [hl]
    ld [$2447], sp
    ld d, [hl]
    ld c, [hl]
    jr nz, @+$23

    inc sp
    ld l, $82
    ld d, [hl]
    ld [bc], a
    ld sp, $8938
    ld d, [hl]
    dec b
    ld b, e
    ld d, [hl]
    ld d, [hl]
    inc [hl]
    inc sp
    add d
    ld d, [hl]
    ld [bc], a
    ld [hl+], a
    daa
    add d
    ld d, [hl]

jr_026_481F:
    ld [bc], a
    jr z, jr_026_484F

    add d
    ld d, [hl]
    ld [bc], a
    ld [hl-], a
    ld l, $82
    ld d, [hl]
    ld bc, $832D
    ld d, [hl]
    inc d
    ld a, $27
    ld d, [hl]
    inc a
    jr nz, jr_026_4865

    dec l
    jr z, @+$22

    ld [hl+], a
    inc l
    jr nz, @+$35

    inc h
    inc sp
    jr z, jr_026_4870

    ld d, [hl]
    ld l, $2D
    add h
    ld d, [hl]
    ld [bc], a
    ccf
    inc h
    add d
    ld d, [hl]
    ld [bc], a

jr_026_484A:
    ld [hl-], a
    jr z, jr_026_47CF

    ld d, [hl]
    ld [bc], a

jr_026_484F:
    ld h, $2D
    add d
    ld d, [hl]
    ld [bc], a
    inc h
    ld sp, $5684
    ld [bc], a
    ld c, a
    jr z, jr_026_47DE

    ld d, [hl]
    ld bc, $912C
    ld d, [hl]
    rlca
    inc a
    inc [hl]
    ld d, [hl]

jr_026_4865:
    ld c, e
    ld hl, $3128
    add d
    ld l, $03
    ld d, [hl]
    ld h, $31
    add d

jr_026_4870:
    ld d, [hl]
    ld [bc], a
    jr nz, jr_026_48A0

    add d
    ld d, [hl]
    ld [bc], a
    inc l
    inc h
    add d
    ld d, [hl]
    ld de, $5631
    ld c, [hl]
    cpl
    ld d, [hl]
    ld c, a
    inc h
    ld [hl+], a
    daa
    jr nz, jr_026_48AF

    jr nz, jr_026_48B6

    ld a, [hl+]
    dec hl
    ld d, [hl]
    ld [hl-], a
    add d
    ld d, [hl]
    dec b
    ld b, d
    ld d, [hl]
    ld d, [hl]
    jr z, @+$2D

    add d
    ld d, [hl]

jr_026_4897:
    ld [bc], a
    dec hl
    inc h
    add d
    ld d, [hl]
    add d
    inc sp
    add d
    ld d, [hl]

jr_026_48A0:
    ld bc, $8724
    ld d, [hl]
    dec b
    ld b, d
    jr nz, jr_026_48FE

    ccf
    inc l
    add d
    inc h
    dec b
    ld [hl-], a
    ld d, [hl]

jr_026_48AF:
    ld d, [hl]
    jr z, jr_026_48D8

    add d
    ld d, [hl]
    ld [de], a
    dec l

jr_026_48B6:
    ld d, [hl]
    ld c, d
    ld sp, $4856
    jr z, @+$28

    jr nz, jr_026_48E5

jr_026_48BF:
    jr z, jr_026_48EE

    jr z, jr_026_48FD

    jr nz, jr_026_48F0

    ld c, c
    jr nz, jr_026_484A

    ld d, [hl]
    ld [bc], a
    inc sp
    jr z, jr_026_484F

    ld d, [hl]
    ld [bc], a
    ld l, $2D
    add d
    ld d, [hl]
    ld [bc], a
    ld b, [hl]
    inc h
    add d
    ld d, [hl]

jr_026_48D8:
    ld [bc], a
    inc h
    cpl
    add d
    ld d, [hl]
    ld [bc], a
    inc h
    ld sp, $5682
    ld bc, $8932

jr_026_48E5:
    ld d, [hl]
    ld b, $3C
    inc [hl]
    ld d, [hl]
    ld c, a
    ld hl, $8328

jr_026_48EE:
    ld l, $03

jr_026_48F0:
    ld d, [hl]
    dec hl
    ld [hl-], a
    adc b
    ld d, [hl]

jr_026_48F5:
    ld [bc], a
    ld c, a
    inc h
    add d
    ld d, [hl]
    ld [bc], a
    jr nz, jr_026_4929

jr_026_48FD:
    adc a

jr_026_48FE:
    ld d, [hl]
    dec b
    ld c, h
    ld d, [hl]
    ld d, [hl]
    inc [hl]
    inc h
    add d
    ld d, [hl]
    ld [bc], a
    ld [hl-], a
    inc sp
    adc [hl]
    ld d, [hl]
    ld [bc], a
    ld c, b
    inc [hl]

jr_026_490F:
    add d
    ld d, [hl]
    ld [bc], a
    ld [hl-], a
    jr c, jr_026_4897

    ld d, [hl]
    ld bc, $8753
    ld d, [hl]
    inc c
    ld b, b
    inc l
    ld d, [hl]
    ld b, d
    ld l, $31
    inc h
    ld l, $38
    ld d, [hl]
    ld sp, $8226
    ld d, [hl]

jr_026_4929:
    ld [bc], a
    inc h
    ld [hl-], a
    adc b
    ld d, [hl]
    ld [$3142], sp
    ld d, [hl]
    ld c, l
    inc h
    ld h, $28
    ld [hl+], a
    add d
    ld d, [hl]
    ld [bc], a
    daa
    jr nz, jr_026_48BF

    ld d, [hl]
    ld [bc], a
    ld sp, $8221
    ld d, [hl]
    ld [bc], a

jr_026_4944:
    ld [hl-], a
    ld l, $82
    ld d, [hl]
    inc b
    dec l
    ld d, [hl]
    ld b, c
    jr nz, @-$7C

    ld d, [hl]
    ld [bc], a
    ld [hl+], a
    inc sp

jr_026_4952:
    add d
    ld d, [hl]
    ld [bc], a
    ld l, $31
    add e
    ld d, [hl]
    inc de
    ld e, e
    ld d, [hl]
    ld d, [hl]
    ld c, [hl]
    inc sp
    ld d, [hl]
    ld c, b
    inc h
    cpl
    ld [hl+], a
    ld b, a
    daa
    inc h
    jr nz, jr_026_499D

    dec l
    ld d, [hl]
    ld h, $27
    add d
    ld d, [hl]
    ld [bc], a
    dec hl
    jr z, jr_026_48F5

    ld d, [hl]
    ld bc, $852D
    ld d, [hl]
    ld [bc], a
    ld d, c
    ld l, $82
    ld d, [hl]
    ld bc, $832D
    ld d, [hl]
    ld [bc], a
    ld c, d
    jr c, jr_026_490F

    ld d, [hl]
    inc c
    ld c, b
    inc [hl]
    ld d, [hl]
    ld a, $32
    jr z, jr_026_49BC

    inc l
    ld [hl+], a

jr_026_4990:
    ld d, [hl]
    cpl
    ld l, $82
    ld d, [hl]
    ld [bc], a
    ld [hl-], a
    inc h
    add d
    ld d, [hl]
    ld bc, $9521

jr_026_499D:
    ld d, [hl]
    ld [$2447], sp
    ld d, [hl]
    ld c, e
    jr nz, jr_026_49C6

    inc [hl]
    add hl, sp

jr_026_49A7:
    add d
    ld d, [hl]
    ld [bc], a
    add hl, sp
    dec hl
    add d
    ld d, [hl]
    ld bc, $8D24
    ld d, [hl]
    ld [bc], a
    dec a
    jr c, jr_026_4944

    ld d, [hl]
    ld [$2848], sp
    ld d, [hl]

jr_026_49BB:
    dec a

jr_026_49BC:
    ld a, [hl+]
    inc h
    dec hl

jr_026_49BF:
    ld l, $82
    ld d, [hl]
    ld [bc], a
    ld [hl+], a
    daa
    adc h

jr_026_49C6:
    ld d, [hl]
    ld [bc], a
    ccf
    inc h
    add d
    ld d, [hl]
    ld [bc], a
    ld [hl-], a
    jr z, jr_026_4952

    ld d, [hl]

jr_026_49D1:
    ld [bc], a
    ld h, $2D
    add d

jr_026_49D5:
    ld d, [hl]
    ld [bc], a
    inc h
    ld sp, $5683
    dec b
    ld c, e
    ld d, [hl]
    ld d, [hl]

jr_026_49DF:
    ld sp, $8224
    ld d, [hl]

jr_026_49E3:
    ld [bc], a
    ld [hl-], a
    inc h
    add d

jr_026_49E7:
    ld d, [hl]
    ld [bc], a
    dec l
    inc sp
    add d
    ld d, [hl]
    ld bc, $8332
    ld d, [hl]
    ld [bc], a

jr_026_49F2:
    ld h, $2D
    add d
    ld d, [hl]

jr_026_49F6:
    inc b
    ld b, b
    inc hl
    ld d, [hl]

jr_026_49FA:
    dec a
    add d
    ld d, [hl]
    ld [bc], a
    ld l, $2B
    add d

jr_026_4A01:
    ld d, [hl]
    ld [bc], a
    inc l
    inc h

jr_026_4A05:
    adc b
    ld d, [hl]
    sub l
    add hl, bc

jr_026_4A09:
    inc bc
    jr z, @+$0B

    jr z, jr_026_4990

    add hl, bc
    dec b
    jr z, jr_026_4A1B

    add hl, bc

jr_026_4A13:
    add hl, hl
    jr z, @-$78

    add hl, bc
    inc bc

jr_026_4A18:
    add hl, hl
    add hl, bc
    add hl, bc

jr_026_4A1B:
    add d

jr_026_4A1C:
    jr z, @-$7C

    add hl, bc
    add d
    jr z, @+$04

    add hl, hl
    jr z, jr_026_49A7

    add hl, bc
    ld bc, $8328
    add hl, bc
    ld bc, $8528
    add hl, bc
    add d
    jr z, @-$7A

    add hl, bc
    ld bc, $8528
    add hl, bc
    add d
    jr z, jr_026_49BB

    add hl, bc
    add d
    jr z, jr_026_49BF

    add hl, bc
    add e
    jr z, jr_026_4A47

    dec bc
    jr z, jr_026_4A6C

    dec bc

jr_026_4A45:
    jr z, @+$2A

jr_026_4A47:
    inc b
    add hl, bc
    jr z, @+$2A

jr_026_4A4B:
    add hl, bc
    sub a
    jr z, jr_026_49D1

    add hl, bc
    add d
    jr z, jr_026_49D5

    add hl, bc
    add d
    jr z, @-$7C

    add hl, bc
    add d
    dec bc
    add d
    jr z, jr_026_49DF

    add hl, bc
    add d
    jr z, jr_026_49E3

jr_026_4A61:
    add hl, bc
    adc b
    jr z, jr_026_49E7

    add hl, bc
    ld b, $28
    add hl, bc

jr_026_4A69:
    add hl, bc
    add hl, hl
    add hl, bc

jr_026_4A6C:
    add hl, bc

jr_026_4A6D:
    add d
    jr z, jr_026_49F2

    add hl, bc
    add d
    jr z, jr_026_49F6

    add hl, bc
    add d
    jr z, jr_026_49FA

    add hl, bc
    add d
    jr z, @+$04

jr_026_4A7C:
    add hl, bc
    jr z, jr_026_4A01

    add hl, bc

jr_026_4A80:
    add d
    jr z, jr_026_4A05

    add hl, bc

jr_026_4A84:
    add d
    jr z, jr_026_4A09

    add hl, bc

jr_026_4A88:
    add d
    jr z, jr_026_4A8C

    add hl, bc

jr_026_4A8C:
    add a
    jr z, jr_026_4A13

    dec bc

jr_026_4A90:
    ld [bc], a
    jr z, jr_026_4A9C

    add d
    jr z, jr_026_4A18

    add hl, bc
    add d
    jr z, jr_026_4A1C

    add hl, bc
    add d

jr_026_4A9C:
    jr z, jr_026_4A9F

    add hl, bc

jr_026_4A9F:
    add e

jr_026_4AA0:
    jr z, @-$7C

    add hl, bc
    ld bc, $8628
    add hl, bc
    inc bc

jr_026_4AA8:
    jr z, jr_026_4AB3

    add hl, bc
    add d

jr_026_4AAC:
    jr z, @-$7C

    add hl, bc
    add d

jr_026_4AB0:
    jr z, jr_026_4AB3

    add hl, bc

jr_026_4AB3:
    add l
    jr z, @-$7C

    add hl, bc
    ld bc, $8A28
    add hl, bc
    ld [bc], a
    jr z, jr_026_4AC7

    add l
    jr z, jr_026_4A45

    dec bc
    add d
    jr z, jr_026_4A47

    add hl, bc
    add d

jr_026_4AC7:
    jr z, jr_026_4A4B

    add hl, bc
    add d
    jr z, @+$04

    add hl, bc
    jr z, @-$7C

jr_026_4AD0:
    add hl, bc
    ld bc, $8328

jr_026_4AD4:
    add hl, bc
    ld b, $28
    add hl, bc

jr_026_4AD8:
    add hl, bc
    jr z, jr_026_4AE4

    add hl, bc
    add d
    jr z, jr_026_4A61

    add hl, bc

jr_026_4AE0:
    add d
    jr z, jr_026_4AE4

    add hl, bc

jr_026_4AE4:
    adc e
    jr z, jr_026_4A69

    add hl, bc
    add d
    jr z, jr_026_4A6D

    add hl, bc
    add d

jr_026_4AED:
    jr z, jr_026_4AF0

    add hl, bc

jr_026_4AF0:
    adc c

jr_026_4AF1:
    jr z, @-$7A

    dec bc
    ld [bc], a

jr_026_4AF5:
    jr z, jr_026_4B00

    add d
    jr z, jr_026_4A7C

    add hl, bc
    adc d
    jr z, jr_026_4A80

    add hl, bc
    add d

jr_026_4B00:
    jr z, jr_026_4A84

    add hl, bc
    add d
    jr z, jr_026_4A88

    add hl, bc
    add d
    jr z, jr_026_4A8C

    add hl, bc
    add d
    jr z, jr_026_4A90

    add hl, bc
    add d
    jr z, jr_026_4B13

    add hl, bc

jr_026_4B13:
    add h
    jr z, jr_026_4B1B

    add hl, hl

jr_026_4B17:
    jr z, @+$2A

    add hl, hl
    add hl, bc

jr_026_4B1B:
    add d
    jr z, jr_026_4AA0

jr_026_4B1E:
    add hl, bc
    adc h
    jr z, @-$7C

    ld b, $82
    jr z, jr_026_4AA8

    add hl, bc
    add d
    jr z, jr_026_4AAC

    add hl, bc
    sub b
    jr z, jr_026_4AB0

    add hl, bc
    ld [bc], a
    jr z, jr_026_4B5B

    add h
    add hl, bc
    adc h
    jr z, @-$7C

    add hl, bc
    ld b, $28
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add d
    jr z, @-$7C

    add hl, bc
    adc c

jr_026_4B44:
    jr z, jr_026_4B49

    add hl, hl
    jr z, jr_026_4B71

jr_026_4B49:
    add d
    add hl, bc

jr_026_4B4B:
    add d
    jr z, jr_026_4AD0

    add hl, bc
    add d
    jr z, jr_026_4AD4

    add hl, bc

jr_026_4B53:
    add d
    jr z, jr_026_4AD8

    add hl, bc

jr_026_4B57:
    add d
    jr z, jr_026_4B5B

    add hl, bc

jr_026_4B5B:
    add e
    jr z, jr_026_4AE0

    add hl, bc
    ld [bc], a
    jr z, jr_026_4B8B

    adc l
    add hl, bc
    inc bc
    jr z, jr_026_4B70

    add hl, bc
    add h
    jr z, jr_026_4AED

    add hl, bc
    add d
    jr z, jr_026_4AF1

    add hl, bc

jr_026_4B70:
    add d

jr_026_4B71:
    jr z, jr_026_4AF5

    add hl, bc
    add d
    jr z, @-$7C

    add hl, bc

jr_026_4B78:
    add h
    jr z, @-$7C

    add hl, bc

jr_026_4B7C:
    add d
    jr z, jr_026_4B80

    add hl, bc

jr_026_4B80:
    sub c
    jr z, jr_026_4B88

    add hl, hl
    add hl, bc
    jr z, @+$0B

    add hl, hl

jr_026_4B88:
    add h
    add hl, bc
    inc bc

jr_026_4B8B:
    jr z, jr_026_4B96

    add hl, bc
    add d
    jr z, jr_026_4B13

    add hl, bc
    add d
    jr z, jr_026_4B17

    add hl, bc

jr_026_4B96:
    add d
    jr z, @+$04

jr_026_4B99:
    add hl, bc
    jr z, jr_026_4B1E

    add hl, bc
    ld bc, $8A29
    add hl, bc
    dec b
    jr z, jr_026_4BAD

    jr z, jr_026_4BCF

    add hl, bc
    add d
    add hl, hl

jr_026_4BA9:
    add d
    add hl, bc
    add d
    add hl, hl

jr_026_4BAD:
    add d
    add hl, bc
    add d
    add hl, hl

jr_026_4BB1:
    add d
    add hl, bc
    add d
    add hl, hl
    ld bc, $8709
    add hl, hl
    add d

jr_026_4BBA:
    add hl, bc
    ld bc, $8529
    add hl, bc
    add d
    jr z, jr_026_4B44

    add hl, bc
    add d
    jr z, @+$04

    add hl, bc
    jr z, jr_026_4B4B

jr_026_4BC9:
    add hl, bc
    ld bc, $8D28
    add hl, bc
    add d

jr_026_4BCF:
    jr z, jr_026_4B53

    add hl, bc
    add d
    jr z, jr_026_4B57

    add hl, bc
    add d
    add hl, hl
    add d
    add hl, bc
    add d
    add hl, hl
    add d

jr_026_4BDD:
    add hl, bc
    add d
    add hl, hl
    add d
    add hl, bc
    add d
    add hl, hl
    ld bc, $8A09
    add hl, hl
    inc b
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, hl

jr_026_4BED:
    add h
    add hl, bc
    inc bc
    jr z, jr_026_4BFB

    add hl, bc
    adc b
    jr z, jr_026_4B78

    add hl, bc
    add d
    jr z, jr_026_4B7C

    add hl, bc

jr_026_4BFB:
    adc [hl]
    jr z, jr_026_4C00

    add hl, hl
    add hl, bc

jr_026_4C00:
    add d
    add hl, hl
    add d
    add hl, bc
    add d

jr_026_4C05:
    add hl, hl
    add d
    add hl, bc
    adc [hl]
    add hl, hl
    add d
    add hl, bc
    add d
    add hl, hl
    add d
    add hl, bc

jr_026_4C10:
    add d
    add hl, hl
    ld bc, $8709
    jr z, jr_026_4B99

    add hl, bc

jr_026_4C18:
    ld bc, $8628
    add hl, bc

jr_026_4C1C:
    inc bc
    jr z, jr_026_4C28

    add hl, bc
    add d
    jr z, @-$7C

    add hl, bc

jr_026_4C24:
    adc b
    jr z, jr_026_4BA9

    add hl, bc

jr_026_4C28:
    ld bc, $8528
    add hl, bc

jr_026_4C2C:
    add d
    jr z, jr_026_4BB1

    add hl, bc

jr_026_4C30:
    add d
    jr z, jr_026_4C35

    add hl, bc

jr_026_4C34:
    add hl, hl

jr_026_4C35:
    add d
    jr z, jr_026_4BBA

    add hl, bc
    add d
    jr z, @+$04

    add hl, bc
    jr z, @-$7C

    add hl, bc

jr_026_4C40:
    add d
    jr z, @-$7C

    add hl, bc

jr_026_4C44:
    add d
    jr z, jr_026_4BC9

    add hl, bc
    add e
    jr z, jr_026_4C4E

    add hl, bc

jr_026_4C4C:
    jr z, @+$2A

jr_026_4C4E:
    add d
    add hl, bc

jr_026_4C50:
    ld bc, $8A28
    add hl, bc
    inc bc
    jr z, jr_026_4C60

    add hl, bc
    add d
    jr z, jr_026_4BDD

    add hl, bc
    add d
    jr z, jr_026_4C60

    add hl, bc

jr_026_4C60:
    add l
    jr z, @-$7C

    add hl, bc
    add d
    jr z, jr_026_4C68

    add hl, bc

jr_026_4C68:
    add e
    jr z, jr_026_4BED

    add hl, bc
    adc d
    jr z, @-$7C

    add hl, bc
    ld bc, $8628
    add hl, bc
    inc bc

jr_026_4C75:
    jr z, jr_026_4C80

    add hl, bc
    add d
    jr z, @-$7C

    add hl, bc
    add d
    jr z, jr_026_4C80

    add hl, hl

jr_026_4C80:
    sub l
    jr z, jr_026_4C05

    add hl, bc
    ld b, $28
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add d
    jr z, jr_026_4C10

    add hl, bc
    add d
    jr z, jr_026_4C93

    add hl, bc

jr_026_4C93:
    adc l
    jr z, jr_026_4C18

    add hl, bc
    adc [hl]
    jr z, jr_026_4C1C

    add hl, bc
    ld bc, $8528
    add hl, bc
    add d
    jr z, jr_026_4C24

    add hl, bc
    adc h
    jr z, jr_026_4C28

    add hl, bc
    add d
    jr z, jr_026_4C2C

    add hl, bc
    add d
    jr z, jr_026_4C30

    add hl, bc
    add d
    jr z, jr_026_4C34

    add hl, bc
    add e
    jr z, jr_026_4CB9

    add hl, bc
    jr z, jr_026_4CE1

jr_026_4CB9:
    add d
    add hl, bc
    add d
    jr z, jr_026_4C40

    add hl, bc
    add d
    jr z, jr_026_4C44

    add hl, bc
    add d
    jr z, jr_026_4CC7

    add hl, bc

jr_026_4CC7:
    add e
    jr z, jr_026_4C4C

    add hl, bc
    add d
    jr z, jr_026_4C50

    add hl, bc
    ld [bc], a
    add hl, hl
    add hl, bc
    add d
    add hl, hl
    add d
    add hl, bc
    add d
    add hl, hl
    add d
    add hl, bc
    adc b
    jr z, jr_026_4CDD

jr_026_4CDD:
    add a
    xor $0D
    ld b, [hl]

jr_026_4CE1:
    ld b, a
    ld b, [hl]
    ld b, l
    dec d
    db $10
    ld de, $2120
    ld [de], a
    inc de
    ld [hl+], a
    inc hl
    add d
    xor $02
    rla
    jr z, jr_026_4C75

    xor $1E
    jr z, jr_026_4D0E

    inc de
    ld [de], a
    inc hl
    ld [hl+], a
    ld de, $2110
    jr nz, jr_026_4D07

    ld b, $17
    ld d, $02
    inc bc
    ld [de], a
    inc de

jr_026_4D07:
    inc b
    dec b
    inc d
    dec d
    dec b
    inc b
    dec d

jr_026_4D0E:
    inc d
    inc bc
    ld [bc], a
    inc de
    ld [de], a
    add h
    xor $28
    ld b, $07
    ld d, $17
    ld a, [hl-]
    dec sp
    ld c, d
    ld c, e
    ld b, a
    xor $28
    rla
    xor $47
    rla
    jr z, jr_026_4D57

    ld sp, $4140
    ld [hl-], a
    inc sp
    ld b, d
    ld b, e
    ld h, $35
    ld b, h
    ld b, l
    daa
    inc [hl]
    ld b, l
    dec d
    inc sp
    ld [hl-], a
    ld b, e
    ld b, d
    ld sp, $4130
    ld b, b
    add d
    xor $06
    jr z, jr_026_4D6A

    xor $74
    xor $77
    add d
    xor $0D
    ld l, [hl]
    ccf
    nop
    ld bc, $1110
    ld [hl], h
    xor $77
    xor $74
    xor $77

jr_026_4D57:
    add e
    xor $02
    daa
    jr z, jr_026_4CE1

    xor $1D
    daa
    inc [hl]
    ld b, l
    dec d
    ld h, $35
    ld b, h
    ld b, l
    ld bc, $4AEE

jr_026_4D6A:
    ld bc, $3736
    ld b, [hl]
    ld b, a
    jr c, jr_026_4DAA

    ld c, b
    jr jr_026_4DAD

    jr c, @+$1A

    ld c, b
    scf
    ld [hl], $47
    ld b, [hl]
    xor $82
    ld bc, $3A08
    ld [hl], $35
    ld b, [hl]
    ld b, l
    ccf
    ld l, [hl]
    ld c, a
    add d
    dec a
    inc de
    ld c, a
    ld c, l
    ld e, a
    jr nz, jr_026_4DB0

    ld a, $0F
    ld sp, $4132
    ld b, d
    inc sp
    inc [hl]
    ld b, e
    ld b, h
    dec [hl]
    ld [hl], $45
    ld b, [hl]
    adc b
    xor $06
    ld b, [hl]
    ld b, a
    xor $45
    xor $45
    add d
    xor $1B
    ld b, h

jr_026_4DAA:
    ld b, l
    ld b, [hl]
    ld b, a

jr_026_4DAD:
    rla
    jr z, jr_026_4DD6

jr_026_4DB0:
    dec [hl]
    ld b, l
    dec d
    xor $47
    xor $46
    ld b, a
    xor $45
    dec d
    ld b, a
    ld b, [hl]
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld h, l
    ld e, a
    ld c, l
    ld l, a
    add d
    ld e, l
    inc de
    ld l, a
    xor $EE
    ld c, [hl]
    rra
    ld e, [hl]
    cpl
    ld d, c
    ld d, d
    ld h, c
    ld h, d
    ld d, e
    ld d, h
    ld h, e
    ld h, h

jr_026_4DD6:
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    sub d
    xor $03
    ld b, a
    xor $45
    add e
    xor $12
    ld b, l
    jr z, @+$17

    daa
    rla
    xor $34
    ld b, l
    jr z, jr_026_4E04

    daa
    inc [hl]
    ld l, l
    ld [hl], c
    inc bc
    ld [bc], a
    ld bc, $8202
    ld c, d
    ld [bc], a
    ld [bc], a
    ld bc, $4A82
    add d
    ld [bc], a
    add d
    ld c, d
    ld [bc], a
    ld bc, $8200

jr_026_4E04:
    ld c, d
    add d
    ld bc, $4A82
    inc b
    ld [hl], c
    ld l, l
    ld [bc], a
    inc bc
    add e
    ld c, e
    inc c
    ld d, d
    ld d, e
    ld d, l
    ld d, h
    ld d, [hl]
    ld d, a
    ld e, c
    ld e, b
    ld e, d
    ld e, e
    ld bc, $895C
    xor $07
    ld [hl], h
    ld l, h
    ld [hl], a
    ld l, e
    ld l, a
    ld e, l
    ld a, $82
    dec a
    inc c
    ld a, $0E
    rrca
    dec a
    ld a, $0E
    rrca
    inc a
    ld l, h
    ld c, c
    inc a
    ld l, h
    add d
    inc a
    inc e
    ld c, c
    ld e, l
    ld l, a
    dec a
    ld a, $EE
    inc a
    xor $49
    xor $3C
    xor $49
    ld a, $3D
    rrca
    ld c, $50
    ld d, c
    ld bc, $4AEE
    ld c, $5A
    ld e, $0D
    ld c, d
    inc c
    add d
    ld c, d
    rlca
    dec c
    ld c, d
    inc c
    ld c, $4A
    ld e, $5A
    add h
    xor $07
    dec h
    ld h, c
    ld h, b
    ld h, d
    rrca
    ld c, $3F
    add d
    ld c, h
    dec b
    ccf
    xor $01
    ld c, h
    ccf
    add e
    xor $04
    ld c, c
    ld [hl], h
    xor $49
    add d
    xor $10
    ld [hl], h
    ld c, $0F
    ld c, h
    ccf
    inc a
    xor $49
    xor $3C
    xor $49
    xor $3F
    ld c, h
    ld bc, $EE82
    ld a, [bc]
    ld l, e
    xor $73
    ld l, d
    ld l, $72
    inc a
    ld l, $4A
    dec c
    add d
    ld c, d
    ld c, $2E
    ld c, d
    dec c
    ld l, $6A
    inc a
    ld [hl], d
    ld l, e
    xor $73
    xor $4E
    ld e, l
    ld l, a
    add d
    xor $82
    ld bc, $3A03
    ld [bc], a
    ld [bc], a
    add d
    ld a, [hl-]
    inc b
    ld bc, $3AEE
    ld bc, $EE87
    inc b
    ld d, b
    xor $EE
    ld d, b
    add l
    xor $02
    ld b, $09
    add d
    xor $82
    ld c, d
    dec c
    inc e
    ld c, d
    xor $4B
    xor $5B
    ld c, d
    ld c, h
    ld e, d
    ld e, h
    dec c
    ld c, d
    inc c
    add d
    ld c, d
    inc de
    dec c
    ld c, d
    inc c
    ld c, h
    ld c, d
    ld e, h
    ld e, d
    ld c, e
    xor $5B
    xor $7B
    xor $71
    ld [hl], b
    ld c, l
    ld a, [hl-]
    ld c, l
    ld a, [hl-]
    add h
    xor $04
    ld a, [hl-]
    ld c, l
    ld a, [hl-]
    ld c, l
    add h
    xor $0C
    add hl, bc
    ld [$1819], sp
    ld [$1809], sp
    add hl, de
    add hl, hl
    ld a, [hl+]
    scf
    jr c, @-$7B

    ld c, d
    inc bc
    inc e
    add hl, bc
    ld b, $86
    xor $07
    ld l, d
    ld l, h
    ld [hl], d
    inc a
    ld e, $4A
    dec c
    add d
    ld c, d
    rlca
    ld e, $4A
    dec c
    ld l, h
    ld l, d
    inc a
    ld [hl], d
    add h
    xor $08
    ld l, [hl]
    xor $6D
    ld e, a
    ld bc, $EE3A
    ld bc, $3A82
    add d
    ld [bc], a
    ld [$013A], sp
    ld bc, $0BEE
    ld a, [bc]
    dec de
    ld a, [de]
    add d
    xor $02
    ld h, a
    add hl, hl
    add d
    xor $06
    add hl, hl
    ld a, [hl+]
    ld a, [bc]
    dec bc
    ld a, [de]
    dec de
    add l
    xor $05
    ld c, c
    ld a, [hl+]
    ld e, c
    xor $76
    add d
    xor $07
    ld [hl], l
    jr nc, jr_026_4FC8

    ld b, b
    rra
    ld c, d
    cpl
    add d
    ld c, d
    ld [$4A1F], sp
    cpl
    jr nc, jr_026_4FD1

    ld b, b
    ld a, b
    halt
    add e
    xor $04
    ld h, e
    ld h, l
    ld h, h
    ld h, [hl]

jr_026_4F66:
    adc b
    xor $18
    dec c
    inc c
    dec e
    inc e
    dec hl
    xor $70
    add hl, sp
    jr c, jr_026_4FAA

    ld c, c
    xor $37
    jr c, jr_026_4F66

    ld c, c
    xor $2B
    add hl, sp
    ld [hl], b
    inc c
    dec c
    inc e
    dec e
    add h
    xor $04
    inc e
    ld c, d
    ld [hl+], a
    inc e
    add h
    xor $04
    dec sp
    inc e
    inc e
    ld [hl+], a
    add h
    xor $04
    ld h, a
    ld l, c
    ld l, b
    ld l, d
    add [hl]
    xor $02
    ld [hl], d
    ld [hl], h
    add h
    xor $04
    dec l
    inc l
    dec sp
    ld a, [hl-]
    add d
    xor $12
    ld h, a
    ld [hl], h
    ld c, b
    ld b, a
    ld e, b

jr_026_4FAA:
    ld d, a
    ld e, c
    ld h, a
    ld l, c
    ld h, b
    ld a, [hl+]
    ld e, c
    ld h, b
    ld l, c
    ld b, a
    ld c, b
    ld d, a
    ld e, b
    add d
    xor $0A
    ld [hl], h
    ld a, [hl+]
    inc l
    dec l
    ld a, [hl-]
    dec sp
    dec h
    inc h
    xor $25
    add h
    xor $03
    inc h

jr_026_4FC8:
    dec h
    dec h
    add l
    xor $04
    ld c, a
    ld h, $EE
    ld a, d

jr_026_4FD1:
    add h
    xor $02
    ld [hl], e
    ld [hl], l
    add d
    ld c, d
    add h
    xor $0B
    ld c, e
    ld c, d
    ld e, e
    ld e, d
    jr c, jr_026_5058

    ld c, c
    xor $68
    ld h, a

jr_026_4FE5:
    ld l, c
    add d
    ld h, b
    add d
    inc b
    inc de
    ld c, d
    inc b
    ld h, b
    ld c, d
    inc b
    ld a, [hl+]
    ld l, b
    ld h, b
    ld l, c
    ld [hl], a
    jr c, jr_026_4FE5

    ld c, c
    ld c, d
    ld c, e
    ld e, d
    ld e, e
    dec h
    ld [hl+], a
    add d
    xor $06
    dec b
    dec sp
    ld h, $05
    ld [hl+], a
    dec h
    add a
    xor $07
    ld a, c
    ld [hl], b
    ld a, b
    add hl, de
    ld a, [de]
    add hl, hl
    ld a, [hl+]
    add d
    dec de
    dec c
    dec hl
    inc l
    ld a, [de]
    add hl, de
    ld a, [hl+]
    add hl, hl
    ld l, e
    ld l, d
    ld [hl], e
    ld [hl], d
    ld e, c
    ld h, a
    ld l, c
    add d
    ld h, b
    add d

jr_026_5024:
    inc bc
    ld a, [de]
    ld c, d
    ld h, l
    ld h, [hl]
    ld [hl], c
    ld l, l
    ld c, d
    ld bc, $4D4A
    inc bc
    ld h, b
    ld c, d
    inc bc
    ld a, [hl+]
    ld e, c
    ld h, b
    ld l, c
    ld l, d
    ld l, e
    ld [hl], d

jr_026_503A:
    ld [hl], e
    dec h

jr_026_503C:
    inc hl
    xor $25
    dec sp
    add d
    dec b
    ld [bc], a

jr_026_5043:
    ld h, $23
    add d
    dec h
    add l
    xor $82
    ld [bc], a
    add d
    ld c, d

jr_026_504D:
    inc bc
    dec e
    xor $2D
    add [hl]
    xor $03
    dec e
    xor $2D
    add h

jr_026_5058:
    xor $12
    ld h, b

jr_026_505B:
    inc b
    ld bc, $454A
    ld b, [hl]
    ld d, l

jr_026_5061:
    ld d, [hl]
    daa
    jr z, @+$37

    ld [hl], $60
    ld l, c
    inc b
    ld h, b
    ld [bc], a
    inc b
    add d
    ld c, e
    inc b
    inc b
    ld h, b
    ld c, d
    ld bc, $7C82
    add d
    ld c, e
    ld [bc], a
    ld b, $07
    add d
    xor $02
    ld b, $09
    add d
    xor $82
    ld a, [bc]
    add d
    dec bc

jr_026_5085:
    ld [bc], a
    add hl, bc
    ld b, $82
    xor $02
    rlca
    ld b, $82
    xor $04
    ld a, [hl]

jr_026_5091:
    xor $3A
    ld a, a
    add d
    xor $82
    ld [hl], a
    inc b
    xor $7E

jr_026_509B:
    ld a, l
    ld a, [hl-]
    and b
    xor $87
    jr nz, jr_026_5024

    inc h
    inc bc
    inc b
    inc h
    inc h
    adc b
    inc b
    add d
    jr nz, @-$7C

jr_026_50AC:
    inc b
    add d
    jr nz, jr_026_503A

    inc h
    add h
    jr z, jr_026_503C

    ld [$2888], sp
    add h
    jr nz, @-$7A

    ld [$0584], sp
    ld [bc], a
    inc h
    jr nz, jr_026_5043

    inc h
    ld bc, $8F20
    inc b
    adc h
    inc h
    add d
    jr nz, jr_026_504D

    jr z, jr_026_50D1

    jr nz, @+$2A

    jr nz, jr_026_50F9

jr_026_50D1:
    add d
    jr nz, jr_026_505B

    ld [$2006], sp
    ld [$2820], sp
    jr nz, jr_026_5104

    add e
    jr nz, jr_026_5061

    ld [$2084], sp
    add h
    inc h

jr_026_50E4:
    add h
    inc b
    inc b
    dec h
    jr nz, jr_026_50EF

    dec h
    adc b
    inc b
    adc b
    inc h

jr_026_50EF:
    ld bc, $8320
    dec b
    adc b
    jr z, @-$6A

    ld [$2088], sp

jr_026_50F9:
    ld b, $24
    inc b
    jr nz, @+$06

    jr nz, jr_026_5104

    add d
    jr nz, jr_026_5085

    inc b

jr_026_5104:
    ld bc, $8524
    inc b
    add d
    inc h
    inc bc

jr_026_510B:
    jr nz, @+$06

    jr nz, jr_026_5091

    inc h
    ld bc, $8320
    inc h
    ld bc, $8804
    jr z, jr_026_509B

    ld [$2082], sp
    sub b
    ld [$2092], sp
    inc bc
    inc b
    jr nz, jr_026_5148

    add e
    jr nz, jr_026_50AC

    inc h
    inc bc
    jr nz, jr_026_514F

    inc b
    add h
    inc h
    add d
    jr z, jr_026_5133

    ld h, $25

jr_026_5133:
    add h
    dec b
    add h
    dec h
    add h
    dec b
    ld [bc], a
    dec h
    nop
    add e
    dec b
    inc bc
    dec h
    dec b
    dec b
    add d
    ld [$0502], sp
    ld b, $8D

jr_026_5148:
    dec b
    ld [bc], a
    ld h, l
    dec b
    adc c
    jr nz, jr_026_5153

jr_026_514F:
    jr z, jr_026_5151

jr_026_5151:
    jr z, jr_026_5153

jr_026_5153:
    add d
    jr z, @-$7C

    jr nz, @-$75

    nop
    rlca
    jr z, jr_026_515C

jr_026_515C:
    jr nz, jr_026_5166

jr_026_515E:
    jr nz, jr_026_5160

jr_026_5160:
    jr nz, jr_026_50E4

    ld [$0082], sp
    add l

jr_026_5166:
    jr nz, jr_026_516B

    nop
    jr nz, jr_026_516B

jr_026_516B:
    add h
    jr nz, @-$7C

jr_026_516E:
    dec b
    ld [bc], a
    ld h, l
    jr nz, @-$7A

    jr z, @+$05

    ld b, $05
    ld b, $82

jr_026_5179:
    dec b
    inc bc
    ld h, $05

jr_026_517D:
    ld h, $84
    ld [$2084], sp
    ld bc, $8308
    nop
    add h

jr_026_5187:
    jr nz, jr_026_510B

    nop
    ld [bc], a
    jr nz, jr_026_5192

    add d
    nop
    add h
    jr nz, jr_026_5195

jr_026_5192:
    ld [$0020], sp

jr_026_5195:
    add d
    jr nz, @+$03

    jr z, @-$79

    nop
    ld [bc], a
    jr nz, jr_026_519E

jr_026_519E:
    add a
    jr nz, jr_026_51A6

    dec h
    jr nz, jr_026_51C4

    jr z, jr_026_51C6

jr_026_51A6:
    add l
    jr z, @+$05

jr_026_51A9:
    ld b, $05

jr_026_51AB:
    ld b, $82

jr_026_51AD:
    dec b
    inc bc
    ld h, $25
    ld h, $85

jr_026_51B3:
    ld [$2003], sp
    ld [$8320], sp
    nop
    add d
    jr nz, @-$77

    dec b
    inc b
    dec h
    jr nz, @+$07

    dec h
    add a

jr_026_51C4:
    jr nz, jr_026_51CA

jr_026_51C6:
    jr z, @+$22

    jr nz, jr_026_51D2

jr_026_51CA:
    add l
    jr nz, jr_026_514F

    ld b, $82
    jr nz, jr_026_5153

    dec b

jr_026_51D2:
    dec b
    ld b, $05
    jr nz, jr_026_51FF

    jr nz, jr_026_515E

    jr z, @+$0A

    ld b, $05
    ld b, $05

jr_026_51DF:
    dec h
    ld h, $25
    ld h, $85
    ld [$2005], sp
    ld [$0020], sp
    jr nz, jr_026_516E

    nop
    inc b
    dec h
    dec b

jr_026_51F0:
    dec h
    dec b
    add h
    jr nz, jr_026_5179

    dec b

jr_026_51F6:
    add h
    jr nz, jr_026_517D

    jr z, @-$76

    ld [$2583], sp
    add e

jr_026_51FF:
    ld h, $86
    jr nz, jr_026_5187

    jr z, @+$0A

    ld b, $05
    ld b, $05
    dec h
    ld h, $25
    ld h, $84
    ld [$2084], sp
    ld [bc], a
    nop
    jr nz, @-$7C

    nop
    inc b
    ld b, l
    dec b
    jr nz, jr_026_5260

jr_026_521B:
    add d

jr_026_521C:
    dec b

jr_026_521D:
    add d
    ld b, l
    inc b
    dec b
    ld h, l
    ld h, l
    jr nz, jr_026_51A9

    jr z, jr_026_51A9

    jr nz, jr_026_51AB

    jr z, jr_026_51AD

    jr nz, jr_026_51B3

    ld [$2085], sp
    add e
    ld [$2002], sp
    jr z, @-$7C

    jr nz, @-$7A

    jr z, @+$0A

    ld b, $05
    ld b, $05
    dec h
    ld h, $05
    ld h, $85
    ld [$2083], sp
    add h
    nop
    adc b
    jr nz, @-$79

    jr z, @+$03

    jr nz, @-$79

    jr z, @+$08

    jr nz, jr_026_525B

    ld [$0820], sp
    jr nz, jr_026_51DF

    ld [$2084], sp

jr_026_525B:
    inc b
    ld b, $05
    jr z, jr_026_5266

jr_026_5260:
    add h
    jr nz, @+$06

    dec b
    ld h, $26

jr_026_5266:
    ld [$2084], sp
    add h
    nop
    add [hl]
    jr nz, jr_026_51F0

    ld bc, $2084
    add h
    jr z, jr_026_51F6

    jr nz, @-$74

    jr z, @-$76

    ld [$2082], sp
    add [hl]
    ld [$2882], sp
    ld [bc], a
    jr nz, jr_026_52AA

    add h
    jr nz, @-$7B

    ld [$2085], sp
    inc b
    nop
    jr z, jr_026_52AC

    nop
    add h
    jr nz, @-$7A

    dec b
    add h
    jr nz, jr_026_521B

    jr z, @+$03

    jr nz, jr_026_521D

    jr z, jr_026_521C

    ld h, $05
    dec h

jr_026_529D:
    ld b, $08
    dec b
    ld b, $86
    ld [$2001], sp
    add l
    ld [$2882], sp
    add d

jr_026_52AA:
    jr nz, jr_026_52B0

jr_026_52AC:
    ld b, $25
    jr z, jr_026_52B6

jr_026_52B0:
    add d
    ld [$2087], sp
    inc bc
    nop

jr_026_52B6:
    jr nz, jr_026_52B8

jr_026_52B8:
    add e
    ld bc, $0003
    ld bc, $8221
    nop
    add d
    ld hl, $2002
    ld hl, $2889
    add d
    ld h, $01
    dec h
    add h
    ld [$0502], sp
    dec h
    add d
    dec b
    inc b
    ld b, $08
    dec b
    ld b, $88
    ld [$2882], sp
    inc bc
    jr nz, jr_026_5306

    dec b
    add d
    ld h, $84
    ld [$2085], sp
    add h
    dec b
    inc bc
    ld bc, $0120
    add [hl]
    jr nz, jr_026_52F1

    ld hl, $2120

jr_026_52F1:
    add h
    jr nz, jr_026_52F6

    jr z, @+$28

jr_026_52F6:
    add d
    dec b
    adc d
    ld [$0604], sp
    ld [$0605], sp
    add d
    dec b
    inc b
    ld b, $08
    dec b
    dec h

jr_026_5306:
    add h
    dec b
    add d
    ld b, $82
    jr nz, jr_026_530F

    ld h, $06

jr_026_530F:
    add d
    jr nz, @+$08

    ld b, $26
    nop
    jr nz, @+$28

    ld b, $82
    jr nz, jr_026_529D

    ld h, $82
    jr nz, @+$06

    ld bc, $0520
    ld bc, $2082
    add d
    ld bc, $2004
    ld hl, $0521
    and b
    jr nz, jr_026_532F

jr_026_532F:
    ld b, b
    nop
    db $10
    ret nz

    ld b, c
    ret nz

    add d
    and b
    add d
    and c
    sub e
    and d
    ld bc, $A2C0
    and d
    ld bc, $8301
    nop
    add d
    ret nz

    add d
    and b
    add h
    and c
    sub c
    and d
    ld bc, $92C0
    and d
    ld bc, $8FC0
    and d
    inc b
    ld bc, $4000
    nop
    add d
    ret nz

    add [hl]
    and b
    add d
    and c
    adc a
    and d
    ld bc, $86C0
    and d
    ld bc, $97C0
    and d
    ld bc, $83C0
    and d
    ld bc, $8301
    nop
    add d
    ret nz

    add a
    and b
    add d
    and c
    sub l
    and d
    ld bc, $99C0
    and d
    ld [bc], a
    ret nz

    and d
    add h
    ld bc, $C082
    adc b
    and b
    add d
    and c
    sub h
    and d
    ld bc, $9BC0
    and d
    add h
    and h
    add d
    ret nz

    adc c
    and b
    add h
    and c
    add [hl]
    ret nz

    adc e
    and h
    ld bc, $87C0
    and d
    ld bc, $8FC0
    and d
    adc b
    and h
    add d
    ret nz

    adc l
    and b
    ld bc, $8AC0
    and h
    ld bc, $85C0
    and h
    ld bc, $9FC0
    and h
    add d
    ret nz

    adc l
    and b
    ld bc, $8AC0
    and h
    ld bc, $86C0
    and h
    ld bc, $95A6
    and l
    add a
    and h
    ld [bc], a
    ret nz

    and h
    add d
    ret nz

    adc l
    and a
    ld bc, $8AC0
    and h
    ld bc, $86C0
    and h
    add d
    and [hl]
    add e
    and l
    ld bc, $91C0
    and l
    adc b
    and h
    add d
    ret nz

    adc l
    and a
    ld bc, $88C0
    and h
    add e
    ret nz

    add e
    and h
    add [hl]
    and [hl]
    add d
    and l
    sub c
    and [hl]
    add d
    and l
    add a
    and h
    add d
    ret nz

    adc l
    and a
    ld bc, $8EC0
    and h
    sbc d
    and [hl]
    add d
    and l
    ld bc, $85C0
    and h
    add d
    ret nz

    adc l
    and [hl]
    ld bc, $85C0
    and h
    and h
    and [hl]
    add e
    and l
    add h
    and h
    add d
    ret nz

    adc e
    and [hl]
    add d
    ld bc, $0801
    add h
    ld bc, $A693
    ld bc, $92C0
    and [hl]
    add e
    and l
    add e
    and h
    add d
    ret nz

    adc e
    and [hl]
    ld bc, $8501
    nop
    ld bc, $A701
    and [hl]
    add d
    and l
    add e
    and h
    adc l
    ret nz

    ld bc, $8508
    nop
    ld bc, $8808
    ret nz

    and b
    and [hl]
    ld bc, $83A5
    and h
    adc l
    ret nz

    ld bc, $8508
    nop
    ld bc, $B908
    ret nz

    ld bc, $8508
    nop
    ld bc, $9101
    and d
    ld bc, $8FC0
    and d
    ld bc, $8AC0
    and d
    add d
    ret nz

    add d
    and b
    ld bc, $88A1
    and d
    ld bc, $8501
    nop
    ld bc, $8A01
    and d
    ld bc, $86C0
    and d
    ld bc, $85C0
    and d
    ld bc, $89C0
    and d
    ld bc, $8AC0
    and d
    add d
    ret nz

    add d
    and b
    add d
    and c
    add a
    and d
    add d
    ld bc, $0882
    add e
    ld bc, $A28A
    ld bc, $8CC0
    and d
    ld bc, $94C0
    and d
    add d
    ret nz

    add d
    and b
    adc b
    and c
    add e
    and h
    add d
    ret nz

    add h
    and b
    and c
    ret nz

    ld bc, $89A2
    and e
    add d
    ret nz

    add d
    and b
    ld bc, $87C0
    and c
    add e
    and h
    add d
    ret nz

    add h
    and b
    ld bc, $8AC0
    and [hl]
    ld bc, $92C0
    and [hl]
    add d
    and a
    add d
    ret nz

    add e
    and e
    add [hl]
    and h
    add d
    ret nz

    add d
    and b
    add a
    and c
    add h
    and h
    add d
    ret nz

    add h
    and b
    ld bc, $8AC0
    and [hl]
    ld bc, $92C0
    and [hl]
    add e
    and a
    ld bc, $83C0
    and e
    add [hl]
    and h
    add d
    ret nz

    add d
    and b
    add l
    and c
    add e
    and h
    add d
    ret nz

    inc bc
    and h
    ret nz

    ret nz

    add h
    and b
    ld bc, $8AC0
    and [hl]
    ld bc, $90C0
    and [hl]
    add l
    and a
    ld bc, $83C0
    and e
    add [hl]
    and h
    add d
    ret nz

    add h
    and b
    add e
    and c
    add [hl]
    and h
    add d
    ret nz

    add h
    and b
    ld bc, $8AC0
    and [hl]
    ld bc, $84C0
    and [hl]
    ld bc, $8BC0
    and [hl]
    add l
    and a
    add d
    ret nz

    add d
    and e
    add [hl]
    and h
    add d
    ret nz

    add l
    and b
    ld bc, $87A1
    and h
    ld bc, $85C0
    and b
    adc e
    and [hl]
    ld bc, $84C0
    and [hl]
    ld bc, $8BC0
    and [hl]
    ld bc, $85C0
    and a
    add h
    ret nz

    add l
    and h
    add d
    ret nz

    add d
    and b
    ld bc, $83C0
    and b
    add d
    ret nz

    add l
    and h
    ld bc, $85C0
    and b
    add l
    and [hl]
    ld bc, $8AC0
    and [hl]
    ld bc, $8BC0
    and [hl]
    ld bc, $88C0
    and a
    ld bc, $85C0
    and h
    add d
    ret nz

    add d
    and b
    ld bc, $84C0
    and b
    ld bc, $85A7
    and h
    ld bc, $85C0
    and b
    add l
    and [hl]
    ld bc, $8FC0
    and [hl]
    ld bc, $86C0
    and [hl]
    ld [bc], a
    ret nz

    and [hl]
    add a
    and a
    ld bc, $85C0
    and h
    add d
    ret nz

    add d
    and b
    ld bc, $84C0
    and b
    ld [bc], a
    and a
    and l
    add h
    and h
    ld bc, $85C0
    and b
    add l
    and [hl]
    ld bc, $8FC0
    and [hl]
    ld bc, $86C0
    and [hl]
    inc bc
    ret nz

    and [hl]
    and [hl]
    add [hl]
    and a
    ld bc, $85C0
    and h
    add d
    ret nz

    add d
    and b
    add d
    ret nz

    add e
    and b
    ld [bc], a
    and a
    and l
    add h
    and h
    ld bc, $85C0
    and b
    add l
    and [hl]
    ld bc, $8FC0
    and [hl]
    add d
    ret nz

    adc c
    and [hl]
    add l
    and a
    ld bc, $85C0
    and h
    add d
    ret nz

    add a
    and b
    ld [bc], a
    and a
    and l
    add h
    and h
    add d
    ret nz

    add h
    and b
    add l
    and [hl]
    ld bc, $90C0
    and [hl]
    ld bc, $8AC0
    and [hl]
    add h
    and a
    ld bc, $85C0
    and h
    add d
    ret nz

    add a
    and b
    ld [bc], a
    and a
    and l
    add l
    and h
    ld bc, $84C0
    and b
    sbc b
    ret nz

    adc b
    and [hl]
    ld bc, $84C0
    and a
    inc bc
    ret nz

    and l
    and l
    add e
    and h
    add d
    ret nz

    add a
    and b
    ld [bc], a
    and a
    and l
    add l
    and h
    ld bc, $84C0
    and b
    sub a
    and [hl]
    add d
    ret nz

    add a
    and [hl]
    ld bc, $85C0
    and a
    inc bc
    and [hl]
    and l
    and l
    add d
    and h
    add d
    ret nz

    add l
    and b
    ld b, $C0
    and b
    and a
    and l
    and h
    ret nz

    add e
    and h
    ld bc, $84C0
    and b
    ld [bc], a
    and [hl]
    ret nz

    adc e
    and [hl]
    ld bc, $8AC0
    and [hl]
    add d
    ret nz

    add [hl]
    and [hl]
    ld bc, $87C0
    and [hl]
    inc bc
    and l
    and h
    and h
    add d
    ret nz

    add a
    and b
    inc b
    and a
    and l
    and h
    ret nz

    add e
    and h
    ld bc, $84C0
    and b
    sbc c
    and [hl]
    add d
    ret nz

    add l
    and [hl]
    ld bc, $87C0
    and [hl]
    inc bc
    and l
    and h
    and h
    add d
    ret nz

    add a
    and b
    ld [bc], a
    and a
    and l
    add l
    and h
    dec b
    ret nz

    and b
    and b
    ret nz

    and b
    add a
    and [hl]
    ld bc, $8CC0
    and [hl]
    ld bc, $85C0
    and [hl]
    sub e
    ret nz

    add a
    and b
    ld [bc], a
    and a
    and l
    add l
    and h
    ld bc, $84C0
    and b
    and l
    and [hl]
    adc b
    ret nz

    add [hl]
    and b
    inc bc
    ret nz

    and a
    and l
    add l
    and h
    ld bc, $84C0
    and b
    and l
    and [hl]
    sub a
    ret nz

    add l
    and b
    adc [hl]
    ret nz

    adc c
    and [hl]
    ld bc, $8CC0
    and [hl]
    add [hl]
    and h
    sub c
    ret nz

    adc c
    ld [$C086], sp
    add e
    and e
    add e
    ret nz

    add d
    and [hl]
    ld bc, $8BC0
    and [hl]
    ld bc, $85C0
    and [hl]
    add [hl]
    and h
    sub e
    ret nz

    add a
    ld [$C086], sp
    add e
    and e
    ld [bc], a
    ret nz

    and d
    add d
    ret nz

    ld [bc], a
    and [hl]
    ret nz

    adc e
    and [hl]
    ld bc, $86C0
    and [hl]
    add l
    and h
    add d
    ret nz

    add l
    and b
    inc bc
    and a
    and [hl]
    and l
    adc b
    and h
    ld bc, $87C0
    ld [$C001], sp
    adc b
    and e
    inc bc
    ret nz

    and d
    and d
    add e
    ret nz

    adc d
    and [hl]
    add h
    ld bc, $A701
    add e
    and [hl]
    add l
    and h
    add d
    ret nz

    add l
    and b
    inc bc
    and a
    and [hl]
    and l
    adc b
    and h
    ld bc, $87C0
    ld [$C001], sp
    add [hl]
    and e
    add d
    and d
    ld bc, $84C0
    and d
    add d
    ret nz

    add [hl]
    and [hl]
    inc b
    ret nz

    and [hl]
    and [hl]
    ld bc, $0083
    ld [bc], a
    ret nz

    and a
    add h
    and [hl]
    add e
    and h
    add d
    ret nz

    ld [bc], a
    and b
    ret nz

    add e
    and b
    inc bc
    and a
    and [hl]
    and l
    adc b
    and h
    ld bc, $87C0
    ld [$C001], sp
    add l
    and e
    adc c
    and d
    add d
    ret nz

    adc b
    and [hl]
    dec b
    ld bc, $4100
    nop
    ret nz

    add d
    and a
    add e
    and [hl]
    add e
    and h
    add d
    ret nz

    add l
    and b
    inc bc
    and a
    and [hl]
    and l
    adc b
    and h
    ld bc, $87C0
    ld [$C001], sp
    add h
    and e
    add d
    and d
    ld bc, $88C0
    and d
    add h
    ret nz

    add l
    and [hl]
    ld bc, $8301
    nop
    ld bc, $83C0
    and a
    add d
    and [hl]
    add e
    and h
    add d
    ret nz

    add e
    and b
    dec b
    ret nz

    and b
    and a
    and [hl]
    and l
    add d
    and h
    ld bc, $85C0
    and h
    ld bc, $87C0
    ld [$C003], sp
    and e
    and e
    adc [hl]
    and d
    sub a
    ret nz

    add l
    and b
    inc bc
    and a
    ret nz

    and l
    add d
    and h
    ld bc, $85C0
    and h
    ld bc, $87C0
    ld [$C002], sp
    and e
    adc a
    and d
    ld bc, $88C0
    and d
    ld bc, $86C0
    and d
    add d
    and e
    add e
    and h
    add d
    ret nz

    add l
    and b
    inc bc
    and a
    and [hl]
    and l
    add d
    and h
    add d
    ret nz

    add h
    and h
    ld bc, $87C0
    ld [$C082], sp
    adc e
    and d
    ld bc, $8CC0
    and d
    ld bc, $87C0
    and d
    ld bc, $83A3
    and h
    add d
    ret nz

    add e
    and b
    inc b
    ret nz

    and b
    and a
    and [hl]
    add d
    and l
    add a
    and h
    ld bc, $88C0
    ld [$C083], sp
    add [hl]
    and d
    ld bc, $97C0
    and d
    add d
    and e
    add d
    and h
    add d
    ret nz

    add l
    and b
    inc b
    and a
    and [hl]
    and [hl]
    and l
    add a
    and h
    ld bc, $8AC0
    ld [$C082], sp
    sub c
    and d
    ld bc, $83C0
    and d
    add h
    and c
    add h
    and d
    ld bc, $83A3
    and h
    add d
    ret nz

    add l
    and b
    add d
    and a
    inc bc
    and [hl]
    and l
    and l
    add [hl]
    and h
    ld bc, $8BC0
    ld [$C083], sp
    add e
    and d
    ld bc, $8FC0
    and d
    add e
    and c
    ld [bc], a
    and b
    ret nz

    add h
    and d
    add e
    and h
    add d
    ret nz

    add [hl]
    and b
    inc b
    and a
    and [hl]
    and [hl]
    and l
    add [hl]
    and h
    ld bc, $8DC0
    ld [$C085], sp
    add [hl]
    and d
    ld bc, $88C0
    and d
    add d
    and c
    add d
    and b
    inc bc
    ret nz

    and d
    and d
    add d
    ret nz

    inc bc
    and l
    and h
    and h
    add e
    ret nz

    inc bc
    and b
    ret nz

    ret nz

    add d
    and b
    add d
    and a
    ld [bc], a
    and [hl]
    and l
    add [hl]
    and h
    ld bc, $91C0
    ld [$C083], sp
    adc l
    and d
    ld bc, $87A1
    and d
    ld b, $A4
    and l
    and l
    and h
    ret nz

    ret nz

    add a
    and b
    inc bc
    and a
    and [hl]
    and l
    add [hl]
    and h
    ld bc, $93C0
    ld [$C083], sp
    add l
    and d
    ld bc, $85C0
    and d
    ld bc, $87C0
    and d
    ld b, $A4
    and l
    and l
    and h
    ret nz

    ret nz

    add a
    and b
    inc bc
    and a
    and [hl]
    and l
    add [hl]
    and h
    ld bc, $95C0
    ld [$C084], sp
    add d
    and d
    ld bc, $8DC0
    and d
    inc b
    and h
    and l
    and [hl]
    and h
    add d
    ret nz

    add a
    and b
    ld [bc], a
    and a
    and [hl]
    add d
    and l
    add l
    and h
    ld bc, $98C0
    ld [$C08E], sp
    add l
    and h
    add h
    ret nz

    add a
    and b
    add d
    and a
    ld [bc], a
    and [hl]
    and l
    add h
    and h
    ld bc, $93C0
    ld [$4301], sp
    adc [hl]
    ld [$C085], sp
    add l
    and h
    add h
    ret nz

    add e
    and b
    ld bc, $84C0
    and b
    inc bc
    and a
    and [hl]
    and l
    add h
    and h
    ld bc, $A2C0
    ld [$C085], sp
    add d
    and e
    add e
    and h
    add h
    ret nz

    add h
    and b
    ld bc, $83C0
    and b
    inc bc
    and a
    and [hl]
    and l
    add h
    and h
    ld bc, $A6C0
    ld [$C003], sp
    and e
    and e
    add l
    ld bc, $C082
    add l
    and b
    rlca
    ret nz

    and b
    and b
    and a
    and [hl]
    and l
    and h
    add e
    ld bc, $C082
    and l
    ld [$C004], sp
    and e
    and e
    ld bc, $0084
    add d
    ret nz

    add [hl]
    and [hl]
    add l
    and a
    ld [bc], a
    and [hl]
    ld bc, $0083
    ld bc, $A5C0
    ld [$C005], sp
    and e
    and e
    ld bc, $8200
    pop bc
    inc bc
    nop
    ret nz

    ret nz

    adc h
    and [hl]
    dec b
    ld bc, $4200
    nop
    ret nz

    and l
    ld [$C005], sp
    and e
    and e
    ld bc, $8200
    pop bc
    inc bc
    nop
    ret nz

    ret nz

    adc h
    and [hl]
    ld bc, $8301
    nop
    ld bc, $A5C0
    ld [$C004], sp
    and e
    and e
    ld bc, $0084
    ret nz

    ld b, c
    ret nz

    nop
    sub b
    rst $28
    add d
    xor $02
    ld e, h
    ld e, e
    add d
    xor $32
    ld c, [hl]
    ld d, l
    ld b, a
    ld b, [hl]
    ld c, c
    ld c, b
    ld c, [hl]
    ld d, l
    ld d, b
    ld c, a
    rst $28
    ld l, l
    ld [hl], h
    ld [hl], l
    ld l, [hl]
    ld l, a
    halt
    ld [hl], a
    ld [hl], b
    ld [hl], c
    ld a, b
    ld a, c
    ld [hl], d
    ld [hl], e
    ld a, d
    ld a, e
    ld [hl], e
    ld [hl], d
    ld a, e
    ld a, d
    ld [hl], c
    ld [hl], b
    ld a, c
    ld a, b
    ld l, a
    ld l, [hl]
    ld [hl], a
    halt
    ld l, l
    rst $28
    ld [hl], l
    ld [hl], h
    ld c, d
    ld c, e
    rst $28
    ld c, l
    ld c, e
    ld c, d
    ld c, l
    rst $28
    add d
    ld c, e
    add d
    ld c, l
    add h
    rst $28
    jr nc, jr_026_5A0A

    ld e, l
    ld d, h
    ld e, a
    ld e, b
    ld d, a
    ld e, d
    ld e, c
    ld c, e
    ld c, d
    ld d, h
    ld c, h
    ld d, d
    ld d, c
    ld d, h
    ld d, e
    ld a, h
    ld a, l
    inc b
    dec b
    ld a, [hl]
    ld a, a
    ld b, $07
    nop
    ld bc, $0908
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    dec bc
    ld a, [bc]
    ld bc, $0900
    ld [$7E7F], sp
    rlca
    ld b, $7D
    ld a, h
    dec b
    inc b
    add d
    rst $28
    ld [bc], a
    add hl, de
    ld h, a
    add d
    rst $28
    ld [bc], a
    ld l, b
    ld h, a
    add d
    rst $28
    ld [bc], a
    ld h, a
    add hl, de
    add h
    rst $28
    ld [$564D], sp
    ld c, a
    ld d, b
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    add d
    xor $02
    ld c, l
    ld d, [hl]
    add d
    xor $08
    ld e, e
    ld e, h
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, c
    ld h, a
    ld l, b
    add d
    xor $02
    ld l, c
    ld l, d

jr_026_5A0A:
    add d
    xor $02
    ld l, e
    ld l, h
    add d
    xor $02
    ld l, h
    ld l, e
    add d
    xor $02
    ld l, d
    ld l, c
    add d
    xor $02
    ld l, b
    ld h, a
    add d
    xor $10
    ld h, l
    ld h, h
    ld h, c
    ld h, [hl]
    ld c, e
    ld b, d
    ld c, l
    ld b, b
    ld b, d
    ld b, e
    ld b, b
    ld b, c
    ld b, d
    ld c, e
    ld b, b
    ld c, l
    add h
    rst $28
    ld de, $5251
    ld d, e
    ld d, h
    ld c, d
    ld c, e
    ld c, h
    ld d, h
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, l
    ld e, [hl]
    ld e, a
    ld d, h
    ld h, e
    add e
    xor $1A
    ld a, [hl-]
    dec sp
    ld b, b
    ld b, c
    inc a
    dec a
    ld b, d
    ld b, e
    ld a, $3F
    ld b, h
    ld b, l
    ccf
    ld a, $45
    ld b, h
    dec a
    inc a
    ld b, e
    ld b, d
    dec sp
    ld a, [hl-]
    ld b, c
    ld b, b
    xor $63
    add d
    xor $08
    db $E4
    push af
    ei
    ld a, [$E4F5]
    rst $20
    or $82
    ldh [$82], a
    pop af
    add d
    ld [c], a
    add d
    di
    inc d
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld h, [hl]
    ld h, l
    ld l, b
    ld h, a
    ld h, d
    ld h, c
    ld h, h
    ld h, e
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    adc b
    xor $14
    ld b, a
    ld b, [hl]
    ld c, c
    ld c, b
    rst $28
    ld e, b
    ld e, c
    ld e, d
    ld d, c
    rst $28
    ld d, e
    ld d, d
    ld h, l
    ld h, h
    ld h, c
    ld h, [hl]
    ld h, l
    ld h, h
    ld h, d
    ld h, [hl]
    sub b
    rst $28
    ld bc, $8460
    xor $01
    ld h, b
    add h
    xor $01
    ld h, b
    add h
    xor $29
    ld h, b
    ld c, d
    ld c, e
    rst $28
    ld c, l
    ld c, h
    xor $4E
    ld c, a
    xor $4C
    ld c, a
    ld c, [hl]
    ld c, e
    ld c, d
    ld c, l
    rst $28
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, h
    ld e, e
    ld e, [hl]
    ld d, [hl]
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, d
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, c
    ld sp, hl
    push hl
    ei
    ld a, [$E4F5]
    rst $20
    or $82
    ldh [$82], a
    pop af
    add d
    ld [c], a
    add d
    di
    ld bc, $8460
    xor $01
    ld h, b
    add h
    xor $01
    ld h, b
    add h
    xor $01
    ld h, b
    add l
    rst $28
    inc b
    ld d, b
    rst $28
    rst $28
    ld d, b
    adc b
    rst $28
    ld a, [bc]
    ld e, b
    ld e, c
    ld e, d
    ld d, c
    rst $28
    ld d, e
    ld d, d
    ld e, a
    xor $60
    add d
    xor $03
    ld e, a
    xor $60
    sub b
    rst $28
    add h
    xor $82
    rst $28
    dec bc
    xor $EF
    rst $28
    rra
    rst $28
    ld [hl+], a
    ld e, $1D
    ld hl, $1C20
    add h
    rst $28
    ld d, $1C
    rst $28
    rst $28
    dec e
    ld e, $20
    ld hl, $EF1F
    ld [hl+], a
    rst $28
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, h
    ld e, e
    ld e, [hl]
    ld d, [hl]
    ld h, c
    xor $5F
    add d
    xor $03
    ld h, c
    xor $5F
    add d
    xor $0E
    jr c, jr_026_5B4C

    jr c, jr_026_5B45

    inc c
    dec bc
    inc bc
    ld [bc], a

jr_026_5B45:
    ld a, [bc]
    add hl, bc
    ld bc, $0800
    rlca
    add d

jr_026_5B4C:
    xor $03
    ld b, $EE
    xor $84
    rst $28
    ld a, [bc]
    ld h, $EF
    ld a, [hl+]
    dec h
    inc h
    add hl, hl
    jr z, jr_026_5B7F

    rst $28
    daa
    add d
    rst $28
    ld a, [bc]
    inc hl
    rst $28
    daa
    inc h
    dec h
    jr z, jr_026_5B91

    ld h, $EF
    ld a, [hl+]
    adc c
    rst $28
    ld bc, $8461
    xor $17
    ld h, c
    xor $EE
    rla
    ld d, $20
    rra
    dec d
    inc d
    ld e, $1D
    inc de
    ld [de], a

jr_026_5B7F:
    inc e
    dec de
    ld de, $1A10
    add hl, de
    rrca
    xor $18
    xor $88
    rst $28
    inc b
    inc l
    dec hl
    ld l, $2D
    add [hl]

jr_026_5B91:
    rst $28
    add d
    ld a, $04
    dec hl
    inc l
    dec l
    ld l, $84
    rst $28
    add e
    xor $03
    ld de, $EEEE
    add d
    db $10
    add d
    xor $02
    ld de, $82EE
    push hl
    ld d, $E6
    rst $20
    ld a, [hl+]
    add hl, hl
    inc sp
    ld [hl-], a
    jr z, jr_026_5BDA

    ld sp, $2630
    dec h
    cpl
    ld l, $24
    inc hl
    dec l
    inc l
    ld [hl+], a
    ld hl, $EE2B
    adc b
    rst $28
    inc b
    jr nc, jr_026_5BF5

    ld [hl-], a
    ld sp, $3E82
    add h
    ccf
    add d
    rst $28
    inc b
    cpl
    jr nc, jr_026_5C03

    ld [hl-], a
    add e
    xor $0D
    ld de, $1415
    add hl, de

jr_026_5BDA:
    jr jr_026_5BEE

    inc de
    ld d, $17
    inc d
    dec d
    jr @+$1B

    add d
    xor $04
    ld de, $39EE
    ld c, $82
    xor $02
    scf

jr_026_5BEE:
    ld [hl], $82
    xor $02
    dec [hl]
    inc [hl]
    add d

jr_026_5BF5:
    xor $88
    rst $28
    ld [$6163], sp
    xor $5F
    ld h, c
    ld h, e
    ld e, a
    xor $88
    rst $28

jr_026_5C03:
    rrca
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    dec e
    inc [hl]
    dec [hl]
    ld [hl], $EE
    dec de
    xor $1B
    ld a, [de]
    rst $28
    inc c
    add [hl]
    rst $28
    ld b, $1A
    rst $28
    inc c
    dec de
    xor $1B
    add h
    xor $0D
    ld b, $00
    ld bc, $0807
    ld [bc], a
    inc bc
    add hl, bc
    ld a, [bc]
    inc b
    ld c, $0B
    inc c
    add d
    xor $03
    dec c
    ld c, $68
    add h
    xor $03
    ld l, b
    xor $EE
    adc h
    rst $28
    ld b, $37
    jr c, jr_026_5C77

    ld a, [hl-]
    xor $11
    add d
    xor $04
    dec c
    rst $28
    dec d
    dec c
    add d
    rst $28
    add d
    ld c, $05
    rst $28
    dec c
    dec c
    dec d
    ld de, $EE84
    inc d
    rrca
    xor $18
    db $10
    ld de, $1A19
    ld [de], a
    inc de
    dec de
    inc e
    inc d
    dec d
    dec e
    ld e, $16
    rla
    rra
    jr nz, jr_026_5CCC

    add h
    xor $03
    ld h, e
    xor $EE
    add h
    ld h, c
    adc h
    rst $28
    add d
    ld a, [de]
    add d
    inc c

jr_026_5C77:
    ld [bc], a
    xor $11
    add d
    xor $82
    rrca
    add d
    xor $01
    ld de, $EE83
    add h
    dec de
    dec d
    ld hl, $EE22
    dec hl
    inc hl
    inc h
    inc l
    dec l
    dec h
    ld h, $2E
    cpl
    daa
    jr z, jr_026_5CC6

    ld sp, $2A29
    ld [hl-], a
    inc sp
    ld e, a
    add h
    xor $03
    ld e, a
    xor $EE
    add d
    ld h, c
    add d
    dec de
    inc bc
    db $10
    ld h, c
    db $10
    add d
    ld h, c
    inc de
    db $10
    ld h, c
    db $10
    ld h, c
    db $10
    dec de
    xor $10
    ld h, c
    xor $1B
    xor $1B
    db $10
    ld h, c
    dec de
    xor $61
    db $10
    add d
    dec de
    add d
    ld h, c
    add d
    rrca

jr_026_5CC6:
    add d
    db $10
    add d
    ld e, a
    add d
    ld h, b

jr_026_5CCC:
    add h
    rst $28
    ld [bc], a
    inc [hl]
    dec [hl]
    add d
    xor $02
    ld [hl], $37
    add d
    xor $02
    jr c, jr_026_5D14

    add d
    xor $08
    ld hl, sp-$07
    ld a, [$E8FB]
    jp hl


    ld [$82EB], a
    dec sp
    add d
    inc a
    add d
    dec sp
    add d
    inc a
    add d
    or $02
    db $F4
    push af
    add h
    xor $08
    ldh [$E1], a
    ldh a, [$F1]
    ld [c], a
    db $E3
    ld a, [c]
    di
    add h
    xor $82
    ld [hl], b
    add d
    ld l, a
    add h
    xor $90
    ld c, b
    add d
    ld l, b
    add d
    dec l
    add d
    ld l, b
    adc d
    dec l
    ld bc, $8F48
    ld [bc], a

jr_026_5D14:
    adc l
    ld [hl+], a
    inc bc
    ld c, b
    ld [hl+], a
    ld [hl+], a
    add d
    ld [bc], a
    ld [bc], a
    ld c, b
    ld [bc], a
    add e
    ld [hl+], a
    dec b
    ld l, b
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    add h
    ld c, b
    sub b
    dec l
    add d
    ld [bc], a
    add d
    ld a, [bc]
    add d
    ld [bc], a
    adc d
    ld a, [bc]
    adc b
    ld a, [hl+]
    add d
    ld [hl+], a
    add d
    ld a, [hl+]
    add d
    ld [hl+], a
    add d
    ld a, [hl+]
    add d
    ld c, b
    ld [bc], a
    ld c, d
    ld [bc], a
    add d
    ld c, b
    add d
    ld [bc], a
    add d
    ld c, b
    ld [bc], a
    ld [bc], a
    ld l, d
    add h
    ld c, b
    adc b
    dec c
    add d
    ld l, b
    add d
    dec c
    add d
    ld l, b
    add d
    dec c
    add [hl]
    ld [bc], a
    add d
    ld l, b
    add d
    ld [bc], a
    add d
    ld l, b
    add d
    ld [bc], a
    add d
    ld l, b
    add d
    ld [hl+], a
    add d
    ld l, b
    add d
    ld [hl+], a
    add d
    ld l, b
    add d
    ld [hl+], a
    add d
    ld l, b
    add h
    ld [hl+], a
    inc bc
    ld [bc], a
    ld c, d
    ld [bc], a
    add l
    ld c, d
    inc b
    ld l, d
    ld [hl+], a
    ld l, d
    ld [hl+], a
    add h
    ld c, b
    sub b
    dec c
    ld bc, $8302
    ld l, b
    adc h
    ld [bc], a
    adc h
    ld [hl+], a
    ld [bc], a
    ld l, b
    ld [hl+], a
    add d
    ld l, b
    add d
    dec c
    add [hl]
    dec l
    ld [$2D0D], sp
    dec c
    dec l
    dec c
    dec l
    dec c
    dec l
    adc b
    dec c
    adc b
    dec l
    ld [bc], a
    ld [bc], a
    nop
    add d
    ld [bc], a
    adc b
    ld l, b
    ld bc, $8320
    ld [hl+], a
    ld bc, $8348
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld c, b
    adc d
    ld [hl+], a
    sub b
    ld c, b
    ld bc, $840D
    ld l, b
    ld bc, $840D
    ld l, b
    ld bc, $840D
    ld l, b
    ld b, $0D
    ld [bc], a
    ld [bc], a
    ld c, b
    ld [bc], a
    ld [bc], a
    inc b
    ld l, b
    ld [bc], a
    ld [bc], a
    ld l, b
    add [hl]
    ld [hl+], a
    ld bc, $8448
    ld [bc], a
    add h
    ld [hl+], a
    adc b
    ld [bc], a
    ld [bc], a
    ld l, $0E
    add [hl]
    ld l, $09
    ld c, $2E
    ld c, $2E
    ld c, $2E
    ld c, $2E
    dec l
    add h
    ld l, b
    ld bc, $842D
    ld l, b
    ld bc, $842D
    ld l, b
    ld bc, $852D
    ld c, b
    inc b
    ld [bc], a
    ld c, b
    ld c, b
    ld [hl+], a
    adc b
    ld c, b
    add e
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld c, b
    add d
    ld [hl+], a
    inc bc
    ld [bc], a
    ld l, b
    ld [bc], a
    add d
    ld l, b
    inc bc
    ld [hl+], a
    ld l, b
    ld [hl+], a
    sub b
    ld c, b
    add h
    ld l, b
    add d
    ld c, b
    dec b
    ld l, b
    ld c, b
    ld c, b
    dec hl
    ld c, b
    add [hl]
    dec hl
    add h
    ld c, b
    inc bc
    dec bc
    ld c, b
    ld c, b
    add l
    dec bc
    inc bc
    ld c, b
    dec bc
    ld c, b
    add h
    ld [bc], a
    add h
    ld [hl+], a
    inc bc
    ld [bc], a
    ld l, b
    ld [bc], a
    add d

jr_026_5E2E:
    ld l, b
    inc bc
    ld [hl+], a
    ld l, b
    ld [hl+], a
    add d
    ld l, c
    inc bc
    ld b, c
    ld hl, $8B41
    ld hl, $6982
    inc bc
    ld hl, $6869
    add h
    ld c, b
    ld [bc], a
    dec hl
    ld c, b
    add [hl]
    dec hl
    ld [bc], a
    ld c, b
    dec hl
    add d
    ld c, b
    ld [bc], a
    dec bc
    ld c, b
    add [hl]
    dec bc
    ld [bc], a
    ld c, b
    dec bc
    adc c
    ld c, b
    ld bc, $8402
    ld l, b
    inc bc
    ld [hl+], a
    ld l, b
    ld l, b
    sub c
    ld hl, $6903
    ld hl, $8869
    ld c, b
    add h
    dec hl
    add [hl]
    ld c, b
    ld [bc], a
    ld l, $0E
    add h
    dec bc
    add h
    ld c, b
    add e
    ld l, b
    inc bc
    ld a, [hl+]
    ld l, b
    ld l, b
    add d
    ld a, [bc]
    add d
    ld l, b
    inc bc
    ld a, [bc]
    ld l, b
    daa
    add e
    rlca
    sub e
    ld hl, $6901
    adc b
    ld c, b
    add h
    dec hl
    ld b, $2E
    ld c, $0E
    ld l, $0E
    ld l, $82
    ld c, b
    add h
    dec bc
    add e
    ld l, b
    add l
    ld a, [hl+]
    adc b
    ld a, [bc]
    add d
    ld l, b
    inc b
    ld a, [bc]
    ld l, b
    ld [hl+], a
    ld b, b
    add d
    ld l, b
    add d
    ld [hl+], a
    add d
    ld l, b
    ld [bc], a
    ld [hl+], a
    jr nz, jr_026_5E2E

    ld l, b
    adc b
    ld c, b
    ld [$2202], sp
    ld l, b
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld l, b
    adc b
    ld c, b
    add h
    ld a, [bc]
    add h
    dec bc
    inc bc
    ld l, b
    ld a, [hl+]
    ld l, b
    add d
    ld a, [hl+]
    ld [bc], a
    ld c, b
    ld a, [hl+]
    add [hl]
    ld c, b
    ld [bc], a
    ld a, [bc]
    ld c, b
    add d
    ld a, [bc]
    inc bc
    ld l, b
    ld a, [bc]
    ld l, b
    add e
    ld l, c
    adc l
    ld bc, $6982
    add d
    ld bc, $0201
    add h
    ld l, b
    inc bc
    ld [bc], a
    ld l, b
    ld l, b
    adc h
    ld c, b
    add h
    dec bc
    ld [bc], a
    ld l, b
    ld l, d
    add d
    ld l, b
    inc b
    ld a, [hl+]
    ld c, b
    ld l, d
    ld a, [hl+]
    add d
    ld c, b
    add d
    ld a, [bc]
    inc bc
    ld c, b
    ld a, [bc]
    ld a, [bc]
    add d
    ld c, d
    add e
    ld l, b
    inc bc
    ld l, c
    ld bc, $9169
    ld bc, $0201
    add h
    ld l, b
    rlca
    ld [hl+], a
    ld l, b
    ld l, b
    ld [bc], a
    ld [hl+], a
    ld b, d
    ld h, d
    adc h
    ld c, b
    ld b, $2A
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld l, b
    ld l, d
    add d
    ld l, b
    add d
    ld a, [bc]
    add d
    ld l, b
    ld bc, $834A
    ld l, b
    inc b
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    add d
    ld bc, $6901
    sub c
    ld bc, $0201
    add h
    ld l, b
    ld e, $22
    ld l, b
    ld l, b
    ld [bc], a
    ld [hl+], a
    ld a, [bc]
    ld a, [hl+]
    ld c, d
    ld [hl+], a
    ld a, [bc]
    ld h, d
    ld [bc], a
    ld c, d
    ld b, d
    ld a, [bc]
    ld [bc], a
    ld c, d
    ld a, [bc]
    ld l, b
    ld c, d
    ld [hl+], a
    ld l, b
    ld a, [hl+]
    ld l, b
    ld a, [hl+]
    ld a, [bc]
    ld h, d
    ld a, [bc]
    ld l, b
    ld b, d
    add d
    ld a, [bc]
    inc bc
    ld a, [hl+]
    ld b, d
    ld h, d
    add h
    ld a, [bc]
    inc b
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    add h
    ld c, b
    ld [bc], a
    nop
    ld [bc], a
    add d
    ld l, b
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    add d
    ld l, b
    ld [bc], a
    nop
    ld [bc], a
    add d
    ld l, b
    adc b
    nop
    ld a, [bc]
    ld [$0828], sp
    jr z, jr_026_5F83

    ld l, $0E
    ld l, $07
    daa
    add d
    rlca
    add h
    ld l, b
    adc b
    rlca
    add h
    ld l, b
    inc b

jr_026_5F83:
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    add h
    ld l, b
    nop
    jr z, jr_026_5FF4

    ld bc, $1E1D
    ld b, b
    ld b, $89
    dec e
    add e
    ld c, [hl]
    add d
    ld c, a
    add d
    ld c, [hl]
    add d
    ld a, $03
    ld c, [hl]
    ld a, $4F
    add d
    ld c, [hl]
    ld bc, $834F
    ld c, [hl]
    inc bc
    ld a, $4E
    ld a, $85
    ld c, [hl]
    add a
    dec e
    ld [bc], a
    db $FD
    sbc d
    add h
    dec e
    adc b
    ld l, [hl]
    ld [bc], a
    ld c, a
    ld e, a
    sub d
    ld l, [hl]
    add l
    dec e
    inc bc
    sbc d
    adc [hl]
    adc a
    add d
    dec e
    ld [bc], a
    ld l, [hl]
    xor a
    add l
    ld a, e
    dec b
    ld c, d
    ld a, e
    add hl, de
    ld c, [hl]
    ld l, a
    add e
    ld a, e
    ld bc, $835C
    ld a, e
    inc bc
    ld e, h
    ld a, e
    ld a, e
    add d
    ld c, d
    add l
    ld a, e
    inc bc
    ld a, l
    ld a, [hl]
    ld d, $83
    dec e
    add d
    sbc [hl]
    inc bc
    sbc a
    dec e
    xor a
    add h
    ld a, e
    ld [$7B5C], sp
    add hl, bc
    ld c, [hl]
    dec hl
    add hl, de
    ld l, [hl]
    ld a, [hl-]
    add e
    ld a, e
    add e

jr_026_5FF4:
    ld c, d
    add e
    ld a, e
    dec b
    dec de
    ld c, [hl]
    ccf
    ld a, [bc]
    ld e, h
    add d
    ld a, e
    inc b
    dec de
    adc l
    adc [hl]
    adc a
    add e
    dec e
    inc b
    cp l
    cp [hl]
    cp a
    xor a
    add d
    ld a, e
    ld [bc], a
    ld c, d
    ld l, h
    add d
    ld a, e
    inc d
    ld e, h
    add hl, hl
    ld c, [hl]
    ccf
    dec hl
    ld a, e
    ld e, h
    ld a, e
    ld c, d
    dec de
    dec a
    ld c, [hl]
    ccf
    dec hl
    ld a, e
    add hl, de
    ld e, l
    ld c, [hl]
    ld e, a
    ld a, [bc]
    add d
    ld a, e
    db $10
    dec de
    dec e
    sbc l
    sbc [hl]
    sbc a
    ld l, [hl]
    dec e
    ld c, [hl]
    call $CFCE
    ld a, [hl+]
    ld a, e
    add hl, hl
    ccf
    ld a, [hl-]
    add e
    ld a, e
    ld [$1D09], sp
    dec e
    ccf
    dec hl
    ld c, d
    dec de
    dec a
    add h
    ld c, [hl]
    ld b, $3F
    dec hl
    ld a, e
    ld l, l
    ld e, [hl]
    ld l, a
    add d
    ld a, e
    ld [bc], a
    dec de
    ld c, [hl]
    add d
    dec e
    inc bc
    xor [hl]
    xor a
    add hl, bc
    add d
    ld c, [hl]
    ld [bc], a
    ld a, [de]
    ld e, h
    add e
    ld a, e
    inc bc
    dec de
    ld c, [hl]
    dec hl
    add e
    ld a, e
    inc b
    ld a, l
    ld a, [hl]
    ld d, $1D
    add h
    ld c, [hl]
    add h
    dec e
    ld [$3F4E], sp
    dec hl
    ld a, e
    ld l, [hl]
    ld a, [bc]
    ld a, e
    add hl, de
    add d
    ld c, [hl]
    dec b
    ld e, a
    ld l, a
    ld a, e
    ld e, h
    add hl, de
    add d
    ld c, [hl]
    dec b
    ld a, [de]
    ld a, e
    ld c, d
    dec de
    dec a
    add d
    ld c, [hl]
    add hl, bc
    ccf
    ld a, [de]
    ld a, e
    dec de
    adc l
    sbc d
    adc a
    dec e
    ld e, a
    add d
    ld l, [hl]
    add hl, bc
    dec e
    db $FD
    adc d
    adc [hl]
    db $FD
    dec e
    ld e, l
    ccf
    dec hl
    add e
    ld a, e
    inc b
    add hl, de
    ld e, [hl]
    ld l, [hl]
    ld l, a
    add d
    ld a, e
    rlca
    ld e, h
    add hl, hl
    ld c, l
    ld a, $1A
    add hl, hl
    dec a
    add l
    ld c, [hl]
    ld [$291A], sp
    ld c, [hl]
    sbc l
    sbc [hl]
    sbc a
    ld e, a
    ld l, a
    add d
    ld a, e
    ld [bc], a
    ld l, l
    sbc l
    add d
    sbc [hl]
    ld b, $9F
    ld l, [hl]
    ld l, [hl]
    ld e, l
    ccf
    dec hl
    add d
    ld a, e
    inc bc
    add hl, de
    ld l, [hl]
    ld a, [hl-]
    add h
    ld a, e
    ld c, $1B
    ld e, [hl]
    ld c, [hl]
    ld a, [de]
    ld a, e
    ld l, l
    ld l, [hl]
    ld c, [hl]
    ld e, a
    ld l, [hl]
    ld e, a
    ld a, [hl+]
    ld a, e
    ld l, l
    add d
    ld c, [hl]
    ld [bc], a
    ld e, a
    ld l, a
    add h
    ld a, e
    ld b, $AD
    xor [hl]
    xor [hl]
    xor a
    ld a, e
    ld a, e
    dec b
    ld l, l
    ld e, l
    ccf
    dec hl
    ld c, d
    add [hl]
    ld a, e
    dec b
    dec de
    ld c, [hl]
    ld c, l
    ccf
    dec hl
    add d
    ld a, e
    dec bc
    add hl, hl
    ld c, [hl]
    ld l, a
    add hl, sp
    ld l, [hl]
    ld a, [de]
    dec de
    dec a
    ld e, a
    ld l, [hl]
    ld l, a
    add d
    ld a, e
    ld bc, $895C
    ld a, e
    dec b
    ld l, l
    ld e, l
    ld c, [hl]
    ccf
    dec hl
    add e
    ld a, e
    inc c
    ld l, h
    add hl, hl
    ld e, l
    ld c, a
    ld e, [hl]
    ld c, [hl]
    ccf
    dec hl
    ld c, d
    add hl, hl
    ld l, [hl]
    ld a, [de]
    add d
    ld a, e
    inc b
    dec de
    dec a
    ld e, a
    ld l, a
    add h
    ld a, e
    add [hl]
    ld c, d
    add d
    ld a, e
    ld [$7B5C], sp
    ld a, e
    ld l, l
    ld e, l
    ld c, [hl]
    ccf
    dec hl
    add h
    ld a, e
    ld [bc], a
    ld l, l
    ld c, [hl]
    add d
    ccf
    dec b
    ld a, $4E
    ld e, a
    ld a, [hl+]
    ld e, h
    add d
    ld a, e
    inc b
    dec de
    dec a
    ld e, a
    ld l, a
    add e
    ld a, e
    ld [bc], a
    ld l, h
    dec de
    add l
    ld c, [hl]
    inc bc
    ccf
    dec hl
    ld c, d
    add h
    ld a, e
    dec b
    ld l, l
    ld l, [hl]
    ld e, l
    ccf
    dec hl
    add e
    ld a, e
    ld bc, $8419
    ld c, [hl]
    ld [bc], a
    ld e, a
    ld l, a
    add d
    ld a, e
    dec b
    dec de
    dec a
    ld c, [hl]
    ld e, a
    ld l, a
    add h
    ld a, e
    inc b
    dec de
    ld c, [hl]
    ld c, [hl]
    ld e, a
    add h
    ld l, [hl]
    inc b
    ld e, l
    ccf
    dec hl
    ld c, d
    add h
    ld a, e
    inc bc
    ld l, l
    ld e, l
    ccf
    add e
    ld a, e
    ld b, $19
    ld e, l
    ccf
    ld c, [hl]
    ld e, a
    ld l, a
    add d
    ld a, e
    dec b
    dec de
    dec a
    xor d
    ld l, [hl]
    ld l, a
    add e
    ld a, e
    ld b, $29
    dec a
    ld c, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    add d
    ld a, e
    rlca
    add hl, hl
    ld e, l
    ld l, [hl]
    ld e, l
    ld c, [hl]
    ccf
    dec hl
    add d
    ld a, e
    dec b
    ld e, h
    ld a, e
    ld l, l
    ld c, [hl]
    dec hl
    add d
    ld a, e
    dec b
    add hl, de
    ld e, l
    ld c, a
    ld a, $6F
    add d
    ld a, e
    dec b
    dec de
    dec a
    xor d
    adc a
    ld a, [de]
    add h
    ld a, e
    inc b
    dec de
    ld c, [hl]
    ld l, [hl]
    ld l, a
    add d
    ld a, e
    ld a, [bc]
    ld e, h
    ld a, e
    add hl, sp
    ld l, [hl]
    ld a, [hl-]
    ld l, l
    ld l, [hl]
    ld e, l
    ccf
    dec hl
    add h
    ld a, e
    inc bc
    ld e, l
    ccf
    dec hl
    add d
    ld a, e
    ld de, $4E6D
    ccf
    ld a, [de]
    ld a, e
    dec de
    dec a
    xor d
    sbc h
    adc a
    ld a, [de]
    ld a, e
    ld e, h
    ld a, e
    dec de
    dec a
    ld e, a
    add a
    ld a, e
    add d
    ld c, d
    add d
    ld a, e
    inc b
    ld l, l
    ld e, l
    ccf
    dec hl
    add e
    ld a, e
    inc c
    ld l, l
    ld c, [hl]
    ccf
    ld a, [hl+]
    ld a, e
    add hl, de
    ld e, [hl]
    ccf
    ld a, [de]
    ld e, h
    dec a
    sbc l
    add d
    sbc [hl]
    ld [bc], a
    sbc a
    ld a, [de]
    add d
    ld a, e
    ld b, $1B
    dec a
    ld e, a
    ld l, a
    ld a, e
    ld c, d
    add d
    ld a, e
    add d
    ld c, d
    inc b
    dec de
    ld c, [hl]
    ccf
    dec hl
    add d
    ld a, e
    inc b
    ld l, l
    ld e, l
    ccf
    dec hl
    add e
    ld a, e
    add d
    ld c, [hl]
    inc bc
    ld a, [hl+]
    ld a, e
    add hl, de
    add d
    ld c, [hl]
    inc b
    ld a, [de]
    add hl, hl
    ld c, [hl]
    ccf
    add d
    xor [hl]
    inc c
    xor a
    ld a, e
    ld a, e
    dec de
    dec a
    ld e, a
    ld l, a
    ld a, e
    dec de
    ld c, [hl]
    dec hl
    dec de
    add e
    ld c, [hl]
    rlca
    sbc [hl]
    db $FD
    ccf
    ld a, [hl+]
    ld e, h
    ld a, e
    ld l, l
    add d
    dec e
    inc c
    ld a, [hl+]
    ld a, e
    ld a, e
    ld e, l
    ld c, l
    ld a, [hl+]
    ld a, e
    add hl, de
    ccf
    ld c, [hl]
    ld a, [de]
    add hl, hl
    add d
    ld c, [hl]
    ld bc, $831A
    ld a, e
    ld b, $29
    dec a
    ld c, [hl]
    ld l, a
    ld e, h
    add hl, hl
    add d
    ld c, [hl]
    add d
    dec e
    add d
    xor [hl]
    dec bc
    xor h
    xor [hl]
    sbc l
    ld c, [hl]
    dec hl
    ld c, d
    ld a, e
    add hl, hl
    dec e
    ld a, [hl]
    ld a, a
    add d
    ld a, e
    add hl, bc
    ld l, l
    ld c, l
    ld a, [hl+]
    ld l, h
    add hl, de
    ld c, [hl]
    ld a, $1A
    add hl, hl
    add d
    ld c, [hl]
    ld [bc], a
    ld a, [de]
    ld e, h
    add d
    ld a, e
    rrca
    add hl, hl
    ld c, [hl]
    ld c, a
    dec hl
    ld c, d
    ld a, e
    ld l, l
    dec e
    db $FD
    adc a
    ld a, [hl-]
    ld a, e
    cp h
    add hl, hl
    dec e
    add d
    ld c, [hl]
    inc d
    ld e, a
    ld a, [hl+]
    add hl, hl
    dec e
    adc [hl]
    adc a
    ld a, e
    ld e, h
    add hl, hl
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    add hl, de
    ld c, a
    ccf
    ld a, [de]
    ld a, e
    ld l, l
    ld c, [hl]
    ld a, [de]
    add e
    ld a, e
    ld [bc], a
    add hl, hl
    ld c, a
    add d
    ld c, [hl]
    ld hl, $1A3F
    add hl, hl
    dec e
    sbc [hl]
    sbc a
    ld a, [hl-]
    ld a, e
    call z, $1D29
    ld c, [hl]
    ld l, [hl]
    ld l, a
    ld a, e
    add hl, hl
    dec e
    adc e
    inc b
    ld a, [hl+]
    ld a, e
    add hl, hl
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    add hl, de
    ld c, [hl]
    ld a, $1A
    ld e, h
    add hl, hl
    ld c, [hl]
    dec hl
    add e
    ld a, e
    jr z, jr_026_6302

    ld c, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld a, e
    add hl, hl
    ld c, [hl]
    xor [hl]
    xor a
    ld a, e
    ld e, h
    ld a, e
    add hl, hl
    dec e
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    ld c, d
    dec de
    dec e
    inc b
    xor a
    ld a, e
    ld e, h
    add hl, hl
    ld c, l
    ld a, [hl+]

jr_026_6302:
    ld a, e
    add hl, de
    ld e, [hl]
    ld c, [hl]
    ld a, [de]
    ld l, h
    add hl, hl
    ld c, [hl]
    ccf
    ld a, [de]
    ld e, h
    add hl, hl
    add d
    ld c, [hl]
    ld [bc], a
    ld l, a
    ld a, e
    add d
    ld c, d
    inc bc
    dec de
    ld c, [hl]
    dec hl
    add d
    ld a, e
    ld [$4A6C], sp
    dec de
    dec e
    ld e, a
    ld a, [hl+]
    add hl, hl
    ld c, [hl]
    add d
    dec e
    ld bc, $836F
    ld a, e
    dec b
    dec de
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    add hl, de
    add d
    ccf
    ld [$5C1A], sp
    dec de
    ld c, [hl]
    ld e, a
    ld a, [de]
    ld a, e
    add hl, hl
    add d
    ld c, [hl]
    ld [bc], a
    ld a, [de]
    add hl, hl
    add h
    ld c, [hl]
    inc b
    ccf
    ld a, [hl+]
    ld a, e
    add hl, hl
    add e
    dec e
    rlca
    ld l, a
    ld a, e
    ld a, e
    ld l, [hl]
    ld c, [hl]
    ld e, a
    ld a, [hl+]
    add e
    ld a, e
    add hl, bc
    dec a
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    add hl, de
    ld e, [hl]
    ld c, [hl]
    ld a, [de]
    add hl, hl
    add d
    ld c, [hl]
    ld bc, $836F
    ld a, e
    dec b
    ld l, l
    ld c, [hl]
    dec hl
    ld a, e
    ld l, l
    add e
    ld l, [hl]
    ld [bc], a
    ld c, [hl]
    dec hl
    add d
    ld a, e
    inc bc
    ld l, l
    ld l, [hl]
    ld l, a
    add d
    ld a, e
    inc b
    dec de
    ld c, [hl]
    ld e, a
    ld l, a
    add e
    ld a, e
    ld c, $1B
    ld c, [hl]
    ld e, a
    ld a, [hl+]
    ld a, e
    add hl, de
    ld e, [hl]
    ld c, [hl]
    ld a, [de]
    add hl, hl
    ld e, l
    ld c, [hl]
    ccf
    ld a, [de]
    add d
    ld a, e
    inc b
    add hl, hl
    ld e, l
    ccf
    dec hl
    add d
    ld c, d
    dec b
    ld a, e
    add hl, hl
    ld e, l
    ccf
    dec hl
    add l
    ld a, e
    inc b
    dec de
    ld c, [hl]
    ld e, a
    ld l, a
    add e
    ld a, e
    inc b
    dec de
    dec a
    ld e, a
    ld l, a
    add d
    ld a, e
    ld b, $1B
    ld e, [hl]
    ld c, [hl]
    ld a, [de]
    ld a, e
    ld l, l
    add d
    ld c, [hl]
    ld [bc], a
    ld a, [de]
    ld l, h
    add d
    ld a, e
    ld [bc], a
    ld l, l
    ld e, l
    add d
    ld c, [hl]
    rlca
    ccf
    ld a, [de]
    ld a, e
    ld l, l
    ld c, [hl]
    ccf
    dec hl
    add e
    ld c, d
    ld b, $1B
    ld c, [hl]
    ld e, a
    ld l, a
    ld a, e
    ld e, h
    add d
    ld a, e
    inc bc
    dec a
    ld e, a
    ld l, a
    add d
    ld a, e
    dec b
    add hl, de
    ld c, [hl]
    ccf
    ld c, [hl]
    ld a, [de]
    add d
    ld a, e
    inc bc
    ld e, l
    ld e, a
    dec hl
    add h
    ld a, e
    db $10
    ld l, l
    ld e, l
    ld c, [hl]
    ld l, a
    ld a, e
    add hl, hl
    ld e, l
    ld c, [hl]
    ld c, l
    ld c, [hl]
    ld c, l
    ld c, [hl]
    ld c, l
    ld c, [hl]
    ld e, a
    ld l, a
    add h
    ld a, e
    inc bc
    dec de
    ld e, a
    ld l, a
    add e
    ld a, e
    dec b
    add hl, de
    ld c, l
    ld e, l
    ccf
    dec hl
    add d
    ld a, e
    inc b
    ld l, l
    ld e, l
    ccf
    dec hl
    add h
    ld a, e
    ld b, $6D
    ld e, l
    ccf
    dec hl
    ld a, e
    ld l, l
    add h
    ld l, [hl]
    inc b
    ld e, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, a
    add e
    ld a, e
    dec b
    ld c, d
    dec de
    dec a
    ld e, a
    ld a, [hl+]
    add e
    ld a, e
    ld [bc], a
    add hl, de
    ld e, l
    add e
    ld c, [hl]
    ld b, $1A
    ld a, e
    ld a, e
    ld l, l
    ld e, l
    ccf
    add d
    ld a, e
    rlca
    ld e, h
    ld a, e
    ld a, e
    ld l, l
    ld e, l
    ccf
    ld a, [de]
    add e
    ld a, e
    inc b
    ld c, d
    add hl, hl
    ld l, [hl]
    ld a, [de]
    add e
    ld a, e
    ld b, $4A
    dec de
    dec e
    dec a
    ld e, a
    ld l, a
    add d
    ld a, e
    add d
    ld c, d
    ld b, $7B
    ld l, l
    ld c, [hl]
    ccf
    ld e, a
    ld a, [de]
    add e
    ld a, e
    inc bc
    ld l, l
    ld c, [hl]
    dec hl
    add l
    ld a, e
    ld [$4E6D], sp
    dec hl
    ld e, h
    ld a, e
    add hl, hl
    ld c, [hl]
    dec hl
    add e
    ld c, d
    rlca
    ld a, e
    ld a, l
    ld a, [hl]
    ld d, $1D
    ld c, [hl]
    ld l, a
    add d
    ld a, e
    ld a, [bc]
    dec de
    ld c, [hl]
    ld e, a
    ld a, [hl+]
    add hl, hl
    ccf
    ld c, [hl]
    ld l, a
    ld a, e
    ld e, h
    add d
    ld a, e
    inc b
    add hl, hl
    ld e, l
    ccf
    dec hl
    add h
    ld a, e
    inc b
    add hl, hl
    ld e, l
    ccf
    dec hl
    add d
    ld a, e
    ld [bc], a
    ld l, l
    ld e, l
    add d
    ld c, [hl]
    rrca
    dec e
    ld a, [de]
    adc l
    db $FD
    adc a
    dec e
    ld e, a
    ld a, [hl+]
    ld a, e
    dec de
    ld c, [hl]
    ld e, a
    ld l, a
    ld e, h
    add hl, hl
    add d
    ld c, [hl]
    ld bc, $851A
    ld a, e
    dec b
    ld l, l
    ld e, l
    ccf
    dec hl
    ld c, d
    add e
    ld a, e
    rlca
    ld l, l
    ld e, l
    ccf
    ld a, [de]
    ld e, h
    ld a, e
    ld l, l
    add d
    ld l, [hl]
    inc c
    ld l, a
    ld c, d
    sbc l
    sbc [hl]
    dec e
    ld e, a
    ld l, a
    ld e, h
    add hl, hl
    ld e, l
    ld e, a
    ld l, a
    add d
    ld a, e
    inc b
    add hl, hl
    dec e
    ld c, [hl]
    ld a, [de]
    add [hl]
    ld a, e
    dec b
    ld l, l
    ld c, [hl]
    ld c, [hl]
    ccf
    dec hl
    add e
    ld a, e
    inc bc
    ld l, l
    ld e, l
    ld a, [de]
    add d
    ld a, e
    add e
    ld c, d
    ld bc, $831B
    dec e
    ld [bc], a
    ld e, a
    ld l, a
    add d
    ld a, e
    inc bc
    dec de
    ld c, [hl]
    ld l, a
    add e
    ld a, e
    ld b, $1B
    dec e
    dec e
    dec hl
    ld c, d
    ld c, d
    add h
    ld a, e
    ld bc, $8429
    dec e
    add hl, bc
    ld a, [de]
    ld a, e
    ld a, e
    add hl, hl
    ld l, [hl]
    ld a, [de]
    ld a, e
    add hl, hl
    ld e, a
    add l
    ld c, [hl]
    ld [bc], a
    ld e, a
    ld l, a
    add d
    ld a, e
    inc b
    add hl, hl
    ld c, [hl]
    ld e, a
    ld a, [hl+]
    add d
    ld a, e
    ld bc, $8329
    dec e
    add e
    ld a, [hl]
    ld bc, $847F
    ld a, e
    dec b
    ld l, l
    adc l
    rst $38
    dec e
    dec hl
    add d
    ld c, d
    add e
    ld a, e
    inc bc
    ld e, h
    ld a, e
    ld l, l
    add l
    ld l, [hl]
    inc bc
    ld l, a
    ld a, e
    ld c, d

jr_026_6533:
    add d
    ld a, e
    ld [bc], a
    ld l, l
    ld l, a
    add e
    ld a, e
    ld bc, $8329
    dec e
    ld b, $AA
    adc [hl]
    adc [hl]
    adc a
    ld a, e
    ld a, e
    dec b
    ld e, h
    ld a, e
    ld a, e
    sbc l
    sbc [hl]
    add d
    dec e
    add d
    ld a, [hl]
    ld [bc], a
    ld a, a
    ld c, d
    add d
    ld a, e
    ld bc, $875C
    ld a, e
    inc b
    dec de
    ccf
    dec hl
    ld c, d
    add d
    ld a, e
    inc b
    ld e, h
    ld a, e
    ld a, e
    dec de
    add h
    dec e
    inc b
    rst $38
    xor d
    adc a
    dec hl
    add h
    ld c, d
    ld [bc], a
    xor l
    xor [hl]
    add e
    dec e
    inc b
    db $FD
    ld h, h
    ld a, [hl]
    ld a, a
    adc b
    ld c, d
    ld b, $1B
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ccf
    dec hl
    add e
    ld c, d
    ld bc, $961B
    dec e
    add d
    ld c, [hl]
    ld b, $5F
    ld e, l
    ld c, a
    ld e, a
    ld c, [hl]
    ld c, a
    add d
    ld c, [hl]
    dec b
    ld e, l
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld e, l
    add d
    ld c, [hl]
    add h
    dec e
    nop
    add h
    rst $28
    ld b, $45
    ld b, [hl]
    ld b, a
    ld a, $48
    ld c, c
    add d
    rst $28
    ld [$4546], sp
    ld a, $47
    ld c, [hl]
    ld [hl], $37
    jr c, jr_026_6533

    add hl, sp
    add d
    ld a, [hl-]
    dec b
    ld [hl], $4E
    jr c, jr_026_65F0

    ld d, h
    add d
    ld c, l
    inc bc
    ld c, [hl]
    ld c, a
    ld c, a
    add d
    rst $38
    dec b
    ld c, l
    ld d, h
    ld c, [hl]
    ld c, l
    ld d, h
    add d
    ld d, d
    inc bc
    ld d, e
    ld d, b
    ld d, b
    add d
    rst $28
    db $10
    ld d, d
    ld d, h
    ld d, e
    ld d, d
    ld d, h
    ld h, c
    ld d, [hl]
    ld d, a
    ld h, h
    ld d, l
    ld e, b
    ld e, c
    ld h, c
    ld d, h
    ld d, a
    ld d, [hl]
    add h
    rst $28
    inc b
    ld b, e
    rst $28
    ld b, h
    ld a, $85
    rst $28
    rlca
    ld b, e
    ld a, $44
    dec sp
    inc a

jr_026_65F0:
    dec sp
    inc a
    add h
    cp $07
    inc a
    dec sp
    inc a
    dec sp
    ld c, h
    rst $38
    ld c, h
    add [hl]
    rst $38
    ld b, $4C
    rst $38
    ld c, h
    ld d, c
    rst $28
    ld d, c
    add [hl]
    rst $28
    ld b, $51
    rst $28
    ld d, c
    ld e, d
    rst $28
    ld e, e
    add [hl]
    rst $28
    inc bc
    ld e, d
    rst $28
    ld e, e
    add h
    rst $28
    db $10
    ld b, d
    ccf
    rst $28
    ld b, c
    ld c, b
    ld c, c
    ld h, l
    ld h, [hl]
    ccf
    ld b, d
    ld b, c
    rst $28
    scf
    jr c, jr_026_6674

    ld [hl], $82
    ld a, [hl-]
    add d
    add hl, sp
    ld [$3738], sp
    ld [hl], $4E
    ld c, l
    ld c, [hl]
    ld d, h
    ld c, l
    add d
    rst $38
    add d
    ld c, a
    ld [$4D4E], sp
    ld c, l
    ld d, h
    ld d, d
    ld d, e
    ld d, h
    ld d, d
    add d
    rst $28
    add d
    ld d, b
    ld [$5253], sp
    ld d, d
    ld d, h
    ld e, h
    ld e, l
    ld d, h
    ld e, [hl]
    add d
    rst $28
    add d
    ld e, a
    inc b
    ld e, l
    ld e, h
    ld e, [hl]
    ld d, h
    add l
    rst $28

jr_026_6659:
    add d
    ld a, $05
    ccf
    ld a, $EF
    ccf
    ld a, $84
    rst $28
    jr jr_026_666D

    add hl, bc
    inc c
    dec c
    ld a, [bc]
    dec bc
    ld c, $0F
    ld e, [hl]

jr_026_666D:
    ld e, a
    ld h, d
    ld h, e
    ld h, b
    ld h, c
    ld h, h
    ld h, l

jr_026_6674:
    nop
    ld bc, $0302
    ld bc, $6200
    ld h, e
    add d
    ld d, h
    ld [bc], a
    ld c, d
    ld c, e
    add d
    ld d, h
    ld a, [bc]
    ld c, e
    ld c, d
    ld d, h
    ld c, l
    ld d, h
    ld c, h
    ld c, l
    ld d, h
    ld c, h
    ld d, h
    add e
    cp $2F

jr_026_6691:
    jr c, jr_026_6691

    cp $38
    cp $EF
    ld a, $EF
    ld b, b
    ccf
    ld b, d
    ld b, c
    rst $28
    ld b, d
    ccf
    rst $28
    ld b, c
    ld a, $EF
    ld b, b
    rst $28
    db $10
    ld de, $1454
    ld [de], a
    inc de
    dec d
    ld d, h
    ld h, [hl]
    ld h, a
    ld l, d
    ld l, e
    ld h, [hl]
    ld l, c
    ld l, h
    ld l, l
    inc b
    dec b
    ld b, $07
    dec b
    inc b
    rlca
    ld b, $4A
    ld c, e
    add d
    ld d, h
    ld [bc], a
    ld c, e
    ld c, d
    add e
    ld d, h
    add hl, bc
    ld c, h
    ld d, h
    ld c, l
    ld c, h
    ld d, h
    ld c, l
    ld d, h
    cp $38
    add d
    cp $01
    jr c, jr_026_6659

    cp $04
    rst $28
    ld b, e
    rst $28
    ld b, e
    adc b
    rst $28
    inc b
    ld b, e
    rst $28
    ld b, e
    rst $28
    add h
    ld d, h
    add h
    rst $28
    jr @+$18

    rla
    inc e
    dec e
    jr jr_026_6707

    ld e, $1F
    ld a, [de]
    dec de
    jr nz, jr_026_6715

    ld l, $2F
    inc [hl]
    dec [hl]
    jr nc, jr_026_672B

    ld [hl], $37
    ld [hl-], a
    ld d, h
    jr c, jr_026_6739

    add d
    cp $10
    ld c, c
    ld c, d
    cp $45

jr_026_6707:
    ld c, e
    ld c, h
    ld b, [hl]
    ld b, a
    ld c, l
    ld c, [hl]
    ld c, b
    cp $4F
    cp $EF
    ld a, $8A
    rst $28

jr_026_6715:
    ld bc, $843E
    rst $28
    ld bc, $8653
    rst $28
    jr z, jr_026_6741

    inc hl

jr_026_6720:
    jr z, jr_026_674B

    inc h
    dec h
    ld a, [hl+]
    dec hl

jr_026_6726:
    ld h, $27
    inc l
    dec l
    ld a, [hl-]

jr_026_672B:
    dec sp
    ld d, h
    ld b, c
    inc a
    dec a
    ld b, d
    ld b, e
    ld a, $3F
    ld b, h
    ld d, h
    ld d, b
    ld d, c
    ld d, a

jr_026_6739:
    ld e, b
    ld d, d
    ld d, e
    ld e, c
    ld e, d
    ld d, h
    ld d, l
    ld e, e

jr_026_6741:
    ld e, h
    ld d, [hl]
    cp $5D
    cp $84
    ld b, e
    ld [$8180], sp

jr_026_674B:
    sub b
    sub c
    add d
    add e
    sub d
    sub e
    add h
    rst $28
    ld bc, $8353
    rst $28
    add e
    ld d, h
    add [hl]
    add b
    ld [$8054], sp
    ld d, h
    rst $38
    ld [hl], $37

jr_026_6762:
    jr c, jr_026_6762

    add d
    jr c, jr_026_678C

    cp $6E
    ld l, a
    ld [hl], e
    ld [hl], h
    ld [hl], b
    ld [hl], c
    ld [hl], l
    halt
    ld [hl], d
    rst $28
    ld [hl], a
    ld a, b
    ld b, $07
    dec bc
    inc c
    ld [$0D09], sp
    ld c, $0A
    rst $38
    rrca

jr_026_677F:
    db $10
    rst $28
    ld b, e
    ld a, $43
    and b
    and c
    or b
    or c
    and d
    and e
    or d
    or e

jr_026_678C:
    add a
    rst $28
    ld [bc], a
    ld d, e
    ld d, h
    add [hl]
    add b
    ld bc, $8454
    add b
    dec b
    ld c, [hl]
    ld d, d
    ld d, d
    ld d, e
    jr c, jr_026_6720

    cp $01
    jr c, jr_026_6726

    rst $28
    inc bc
    ld a, c
    ld a, d
    ld a, e
    add l
    rst $28
    ld [de], a
    rst $38
    ld de, $1716
    ld [de], a
    inc de
    jr jr_026_67CB

    inc d
    dec d
    ld a, [de]
    dec de
    ld b, e
    rst $28
    ld b, e
    ld a, $C0
    pop bc
    add d
    ld d, h
    ld [bc], a
    jp nz, $82C3

    ld d, h
    add h
    add b
    add d
    rst $28
    ld bc, $8553
    rst $28

jr_026_67CB:
    add d
    ld d, h
    add d
    rst $28
    add d
    ld d, h
    add d
    rst $28
    add d
    rst $38
    ld [bc], a
    ld c, [hl]
    rst $38
    add l
    rst $28
    dec de
    ld a, h
    rst $28
    nop
    ld a, l
    ld a, [hl]
    ld bc, $7F02
    rst $28
    inc bc
    rst $28
    ld d, e
    inc e
    jr nz, @+$23

    dec e
    ld e, $22
    inc hl
    rra
    rst $28
    inc h
    dec h
    ccf
    ld b, d
    ld b, c
    ld d, e
    adc b
    add b
    sub h
    rst $28
    add h
    jr c, jr_026_677F

    add b
    add d
    rst $28
    add h
    add b
    ld [bc], a
    inc b
    dec b
    adc d
    rst $28
    inc b
    ld h, $27
    jr z, jr_026_6835

    add h
    rst $28
    dec bc
    rst $38
    ld c, [hl]
    add hl, sp
    scf
    add sp, -$17
    ld hl, sp-$07
    ld [$FAEF], a
    add e
    rst $28
    ld bc, $849C
    rst $28
    ld bc, $839F
    ld d, h
    add [hl]
    add b
    inc bc
    ld d, h
    add b
    ld d, h
    add h
    add b
    ld [bc], a

Jump_026_682D:
    cp $80
    add d
    cp $82
    add b
    add hl, bc
    inc a

jr_026_6835:
    dec sp
    add d
    add c
    sub d
    sub c
    add b
    ld d, h
    sub b
    add d
    ld d, h
    jr nz, jr_026_686B

    ld d, h
    ld l, $2B
    inc l
    cpl
    jr nc, jr_026_6875

    ld d, h
    ld sp, $3754
    jr c, jr_026_689C

    scf
    call nz, $D4C5
    push de
    add $C7
    sub $D7
    rst $28
    adc l
    sbc h
    sbc l
    adc [hl]
    rst $28
    sbc [hl]
    sbc a
    ld d, h
    add [hl]
    add b
    ld bc, $8C54
    add b
    add h
    rst $28
    ld [$A1A2], sp

jr_026_686B:
    or d
    or c
    and b
    ld d, h
    or b
    ld d, h
    add h
    rst $28
    inc b
    ld [hl-], a

jr_026_6875:
    inc sp
    inc [hl]
    dec [hl]
    adc b
    rst $28
    ld [de], a
    db $E4
    push hl

jr_026_687D:
    db $F4
    push af
    and $E7
    or $F7

jr_026_6883:
    xor h
    xor l
    cp h
    cp l
    xor [hl]
    xor a
    cp [hl]
    cp a
    ld d, h
    add b
    add d
    rst $28
    add d
    ld d, h
    add d
    rst $28
    add d
    ld d, h
    adc [hl]
    rst $28
    ld [bc], a
    jp nz, $82C1

    ld d, h

jr_026_689C:
    ld bc, $83C0
    ld d, h
    add h
    rst $28
    ld [$A5A4], sp
    or h
    or l
    and [hl]
    and a
    or [hl]
    or a
    add e
    rst $38
    dec b
    ld c, [hl]
    rst $38
    rst $38
    ld c, [hl]
    rst $38
    add h
    rst $28
    jr jr_026_6883

    call $DDDC
    adc $CF
    sbc $DF
    ld d, h
    ld [hl-], a
    add hl, sp
    jr c, jr_026_68F4

    jr nc, jr_026_68FC

    ld [hl], $2F
    ld l, $35
    inc [hl]
    xor d
    xor e
    cp d
    cp e
    add h
    add b
    ld a, [de]
    ret nc

    pop de
    ldh [$E1], a
    ret nc

    pop de
    ldh [$E1], a
    jp nc, $E2D3

    db $E3
    xor b
    xor c
    cp b
    cp c
    and h
    and l
    or h
    or l
    and [hl]
    and a
    or [hl]
    or a
    rst $38
    ld c, [hl]
    add d
    rst $38
    ld bc, $834E
    rst $38
    jr jr_026_687D

    adc e

jr_026_68F4:
    sbc d
    sbc e
    db $EC
    db $ED
    db $FC
    db $FD
    xor $EF

jr_026_68FC:
    cp $FF
    ccf
    ld a, $54
    ld b, h
    dec a
    inc a
    ld b, e
    ld b, d
    dec sp
    ld a, [hl-]
    ld b, c
    ld d, h
    and b
    rst $28
    add h
    ld c, d
    ld b, $0B
    inc c
    inc c
    ld l, h
    inc c
    inc c
    add d
    ld c, d
    dec b
    inc l
    dec hl
    ld c, h
    inc l
    add hl, bc
    add h
    ld [$2802], sp
    ld [$2882], sp
    inc bc
    add hl, hl
    jr z, jr_026_6950

    add [hl]
    add hl, bc
    add d
    ld [$2902], sp
    add hl, bc
    add d
    add hl, hl
    ld bc, $8509
    ld a, [bc]
    add d
    ld c, d
    ld [bc], a
    ld a, [hl+]
    add hl, bc
    add d
    ld a, [hl+]
    ld b, $09
    dec c
    dec c
    dec bc
    dec c
    dec c
    add d
    dec bc
    inc b
    dec l
    add hl, bc
    dec hl
    dec l
    add h
    ld c, d
    inc b
    inc l
    ld c, d
    inc c

jr_026_6950:
    inc l
    add l
    ld c, d
    add d
    inc c
    inc bc
    inc l
    ld [$8208], sp
    ld c, b
    add h
    ld [$2882], sp
    add d
    ld l, b
    inc bc
    add hl, bc
    ld [$8609], sp
    ld [$2906], sp
    ld [$0A29], sp
    ld c, d
    ld a, [bc]
    add [hl]
    ld c, d
    ld b, $2A
    ld c, d
    ld a, [hl+]
    dec c
    ld c, e
    dec c
    add [hl]
    ld c, e
    inc bc
    dec l
    ld c, e
    dec l
    add h
    ld c, d
    inc b
    dec hl
    inc l
    ld c, d
    dec hl
    add d
    ld c, h
    add d
    dec bc
    ld b, $0C
    dec bc
    dec bc
    ld c, d
    ld c, b
    ld c, b
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
    add hl, bc
    ld c, c
    add d
    ld [$4982], sp
    add e
    ld l, c
    inc b
    add hl, bc
    ld c, d
    ld c, d
    add hl, bc
    add l
    ld c, d
    add e
    ld l, d
    dec b
    add hl, bc
    dec c
    dec bc
    add hl, bc
    dec c
    add d
    ld c, e
    inc bc
    dec c
    dec l
    dec hl
    add d
    dec l
    ld bc, $8509
    ld c, d
    add e
    inc c
    ld [bc], a
    inc l
    ld c, d
    add d
    inc l
    add h
    ld c, d
    adc b
    ld b, $88
    nop
    add h
    dec b
    add d
    dec h
    add d
    dec c
    add [hl]
    add hl, bc
    add d
    add hl, hl
    add h
    add hl, bc
    inc b
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, bc
    add e
    ld [$6808], sp
    ld [$4808], sp
    ld [$0C4A], sp
    ld c, d
    add d
    inc c
    add d
    dec bc
    inc c
    ld c, d
    dec hl
    inc l
    ld c, d
    dec hl
    inc l
    ld c, d
    inc l
    ld c, d
    ld [bc], a
    ld b, $09
    add h
    ld b, $01
    add hl, bc
    add h
    nop
    ld bc, $8320
    nop
    add e
    dec b
    ld bc, $8303
    dec h
    inc bc
    inc hl
    ld c, c
    ld c, c
    add d
    add hl, bc
    add d
    ld l, c
    add e
    add hl, bc
    add hl, bc
    ld c, c
    add hl, bc
    ld c, c
    ld l, c
    add hl, bc
    ld l, c
    add hl, bc
    ld [$8628], sp
    ld [$4A04], sp
    inc c
    ld c, d
    inc c
    adc b
    ld c, d
    inc b
    inc l
    ld c, d
    inc l
    ld c, d
    add h
    add hl, bc
    add h
    ld c, d
    adc h
    inc bc
    adc c
    dec b
    inc bc
    add hl, bc
    dec b
    dec b
    add d
    ld [$0082], sp
    ld bc, $8808
    nop
    dec b
    ld [$0800], sp
    ld c, d
    ld c, h
    adc d
    ld c, d
    ld bc, $846C
    ld c, d
    ld bc, $862A
    ld c, d
    adc h
    inc bc
    add d
    dec b
    ld bc, $8809
    dec b
    ld bc, $8D09
    nop
    rlca
    ld [$0800], sp
    inc l
    inc c
    inc l
    inc c
    adc b
    ld [bc], a
    add h
    ld c, d
    ld bc, $830A
    ld c, d
    add e
    dec c
    add [hl]
    dec b
    inc bc
    dec c
    dec b
    dec c
    add l
    ld [$2803], sp
    ld c, b
    ld [$0489], sp
    inc bc
    ld c, d
    inc b
    inc bc
    adc c
    dec bc
    rlca
    ld [$0B0B], sp
    ld c, d

jr_026_6A85:
    inc c
    inc l
    inc c
    adc b
    ld [bc], a
    add a
    ld c, d
    ld [bc], a
    ld l, d
    dec c
    add [hl]
    dec b
    ld bc, $840D
    dec b
    ld bc, $8369
    ld a, [bc]
    add e
    ld [$6801], sp
    add h
    ld c, d
    add e
    inc b
    add l
    ld c, d
    ld bc, $8B08
    dec bc
    inc b
    inc l
    ld c, d
    inc l
    inc c
    add d
    ld [bc], a
    add d
    dec c
    add d
    ld [bc], a
    add d
    dec c
    inc b
    inc bc
    inc hl
    inc bc
    inc hl
    adc b
    ld c, d
    add d
    dec c
    add d
    ld c, d
    add d
    dec c
    add d
    ld c, d
    add d
    ld [$4902], sp
    ld [$4A85], sp
    inc bc
    inc b
    ld c, d
    inc c
    add d
    inc b
    add d
    inc c
    dec b
    inc b
    ld c, d
    inc c
    ld c, d
    ld a, [bc]
    adc b
    dec bc
    ld b, $4A
    dec bc
    dec bc
    inc c
    dec bc
    dec bc
    ld bc, $886A
    dec b
    sub h
    ld c, d
    inc b
    ld l, b
    ld c, b
    jr z, jr_026_6AF4

    add d
    inc bc
    add d
    ld c, d
    add h
    inc bc
    add d
    inc c

jr_026_6AF4:
    adc d
    ld c, d
    add h
    dec bc
    add h
    ld c, d
    inc b
    ld [$0829], sp
    jr z, jr_026_6A85

    inc bc
    ld [bc], a
    ld c, d
    inc bc
    add e
    ld c, d
    ld bc, $8402
    ld c, d
    ld bc, $8302
    dec bc
    add [hl]
    inc bc
    inc bc
    dec bc
    inc bc
    dec bc
    add h
    ld bc, $0802
    ld bc, $0882
    add d
    ld bc, $6882
    add l
    ld [hl+], a
    ld b, $0A
    ld [hl+], a
    ld a, [bc]
    add hl, bc
    ld c, $09
    add [hl]
    ld c, $03
    add hl, bc
    ld c, $09
    add d
    ld c, b
    ld [bc], a
    ld c, c
    ld c, b
    adc b
    inc bc
    ld bc, $844A
    ld [bc], a
    inc b
    ld c, d
    ld [bc], a
    ld [bc], a
    dec bc
    add [hl]
    inc bc
    ld bc, $840B
    inc bc
    adc b
    dec b
    add h
    ld c, d
    add l
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    dec c
    add h
    ld c, d
    add h
    ld c, $88
    ld c, d
    adc b
    inc bc
    adc b
    ld [bc], a
    ld [bc], a
    dec bc
    inc bc
    add d
    ld c, d
    add d
    dec bc
    add d
    ld c, d
    add d
    dec bc
    adc [hl]
    ld c, d
    add d
    ld [hl+], a
    add d
    dec c
    ld bc, $8322
    dec c
    add h
    ld c, d
    adc b
    ld [bc], a
    add e
    ld [$6905], sp
    ld [$4908], sp
    ld [$4A84], sp
    adc b
    ld [bc], a
    ld bc, $8B2B
    inc hl
    adc b
    inc bc
    add h
    ld [bc], a
    add h
    inc bc
    ld bc, $8306
    ld [bc], a
    adc h
    inc bc
    ld [bc], a
    ld [$8229], sp
    ld [$0901], sp
    add e
    ld [$0384], sp
    adc b
    ld [bc], a
    add d
    inc hl
    ld bc, $882B
    inc hl
    ld bc, $A02B
    ld c, e
    nop
    rlca
    nop
    inc e
    inc bc
    add hl, sp
    rlca
    ld l, e
    rla
    db $EB
    scf
    bit 6, a
    sbc d
    ld h, a
    or $0F
    ret nz

    nop
    ld hl, sp+$00
    ld c, h
    or b
    halt
    sbc b
    xor e
    call c, $CEB7
    pop de
    xor $D9
    and $00
    nop
    dec a
    nop
    ld h, a
    jr jr_026_6C15

    ld a, $46
    ccf
    ld d, [hl]
    ccf
    ld c, e
    scf
    ld e, c
    scf
    nop
    nop
    ldh [rP1], a
    ld d, b
    ldh [$A8], a
    ld [hl], b
    adc b
    jr nc, @-$2E

    nop
    ld h, b
    add b
    or b
    ret nz

    scf
    rrca
    ld l, $1F
    ld l, [hl]
    rra
    ld e, [hl]
    ccf
    ld e, l
    ld a, $42
    inc a
    inc a
    nop
    nop
    nop
    ld a, a
    ldh [$EC], a
    ld [hl], b
    or [hl]
    ld a, b
    ld e, e
    inc a
    sbc l
    ld a, $21
    ld e, $1E
    nop
    nop
    nop
    ld d, l
    dec sp
    call nc, $D83B
    dec a
    cp [hl]
    ld a, h
    sbc l
    ld a, [hl]
    pop bc
    ld a, $7F
    nop
    nop
    nop

jr_026_6C15:
    ret c

    ldh [$EC], a
    ldh a, [$74]
    ld hl, sp+$04
    ld hl, sp+$78
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    ld hl, $5C1E

jr_026_6C2A:
    ccf
    ld c, [hl]
    ccf
    ld b, a
    ccf
    ld h, e
    rra
    inc sp
    rrca
    add hl, sp
    rrca
    ld h, b
    nop
    ret nc

    jr nz, jr_026_6C2A

    jr nz, jr_026_6C98

    or b
    ld e, d
    cp h
    ld c, a
    cp [hl]
    daa
    sbc [hl]
    ld d, c
    adc [hl]
    add hl, sp
    rrca
    ld l, h
    dec de
    jp c, $F83D

    dec a
    or l
    ld a, b
    adc l
    ld [hl], b
    ld a, c
    nop
    nop
    nop
    sbc [hl]
    ret nz

    ret nz

    ldh [$E8], a

jr_026_6C5A:
    ldh a, [$F4]
    ld hl, sp+$7A

jr_026_6C5E:
    db $FC
    dec a
    cp $81
    ld a, [hl]
    ld a, [hl]
    nop
    inc de
    inc c
    dec l
    ld e, $2A
    rra
    ld a, l
    ld e, $56
    ccf
    ld c, e
    scf
    db $DB
    scf
    or l
    ld a, e
    add b
    nop
    ld hl, sp+$00
    and h
    jr jr_026_6CC8

    add b
    ldh a, [rLCDC]
    xor b
    ld [hl], b
    dec e
    cp [hl]
    and [hl]
    sbc a
    or l
    ld a, e
    or b
    ld a, e
    ld [hl], d
    ld sp, hl
    ld a, h
    ld sp, hl
    dec [hl]
    ld hl, sp-$73
    ld [hl], b
    ld a, b
    nop
    nop
    nop
    sbc c
    add $E6

jr_026_6C98:
    ret nz

    ret nc

    ldh [$74], a
    ld hl, sp+$3A
    db $FC
    sbc d
    ld a, h
    add d
    ld a, h
    db $FC
    nop
    nop
    nop
    rlca
    nop
    jr nc, @+$11

    ld c, a
    jr nc, jr_026_6C5E

    ld h, b
    xor $40
    db $ED
    ld b, b
    or [hl]
    ld h, b
    nop
    nop
    ret nz

    nop
    jr nc, @-$3E

    ret z

    jr nc, jr_026_6CE2

    jr jr_026_6C5A

    inc c
    dec c
    ld b, $0B
    ld b, $1B
    rlca
    inc e

jr_026_6CC8:
    inc bc
    dec de
    inc b
    inc e
    inc bc
    rla
    add hl, bc
    ld [hl-], a
    dec c
    ld l, e
    inc e
    call $E83E
    ldh a, [$E8]
    ldh a, [$28]
    ldh a, [$DC]
    jr nc, jr_026_6D02

    ret c

    and $F8
    di

jr_026_6CE2:
    db $FC
    ld [hl], l
    ld a, [$031D]
    dec [hl]
    dec bc
    dec a
    inc bc
    dec b
    ld [bc], a
    inc e
    inc bc
    ld h, $1B
    ld c, a
    ld [hl-], a
    ld a, [hl]
    inc bc
    and b
    ret nz

    ldh a, [$C0]
    ld hl, sp-$30
    call nc, $FEE8
    ldh [$F6], a
    ldh [$78], a

jr_026_6D02:
    ldh a, [$B4]
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    nop
    nop
    add hl, sp
    nop
    ld h, b
    rra
    ld b, b
    ccf
    ld b, c
    ccf
    ld c, e
    ccf
    ld b, a
    ccf
    ld c, e

jr_026_6D34:
    ccf
    nop
    nop
    adc $00
    nop
    rst $38
    nop
    rst $38
    adc $FF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld [hl], e
    nop
    nop
    rst $38
    nop
    rst $38
    ld [hl], e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, c
    nop
    nop
    nop
    ld d, c
    nop
    jr z, jr_026_6D5D

jr_026_6D5D:
    ld d, l
    jr z, jr_026_6DCD

    db $10
    ld d, l
    jr z, @+$57

    jr c, jr_026_6D34

    nop
    nop
    nop
    ld b, l
    nop
    and d
    nop
    ld d, l
    and d
    or [hl]
    ld b, c
    dec d
    ld [c], a
    ld d, l
    db $E3
    ld [hl], e
    nop
    nop
    nop
    inc b
    nop
    adc c
    inc bc
    ld d, d
    add [hl]
    ret nc

    dec b
    ld d, e
    add l
    ld d, e
    add l
    nop
    nop
    ccf
    nop
    ld h, b
    rra
    ld b, b
    ccf
    ld b, l
    ccf
    ld [bc], a
    ccf
    rlca
    ccf
    ld c, a
    ccf
    nop
    nop
    db $FC

jr_026_6D98:
    nop
    ld b, $F8
    ld [bc], a
    db $FC
    and d
    db $FC
    ld b, b
    db $FC
    ldh [$FC], a
    ld a, [c]
    db $FC
    ld l, b
    jr nc, jr_026_6E23

    inc e
    ld d, a
    cpl
    ld e, b
    daa
    ld l, a
    db $10
    ld h, b
    rra
    jr nc, jr_026_6DC2

    scf
    rrca
    rla
    ld c, $ED
    ld e, $FA
    db $FC
    inc c
    ldh a, [$F4]
    ld [$F00C], sp
    ld l, b

jr_026_6DC2:
    ldh a, [$98]
    ldh [$E7], a
    rra
    ld [hl], e
    rrca
    ld hl, $401F
    ccf

jr_026_6DCD:
    adc a
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    ld d, $F8
    db $EC
    ldh a, [$E8]
    ldh a, [$34]
    ld hl, sp-$3E
    inc a

jr_026_6DDF:
    db $FC
    ld [bc], a
    ld b, $00
    nop
    nop
    ld a, [bc]
    rlca
    inc d
    rrca
    dec l
    ld e, $59
    ld a, $7B
    inc a
    ld d, [hl]
    jr c, jr_026_6E3E

    jr nc, jr_026_6E2C

    nop
    sub [hl]
    ld a, b
    ld c, d
    inc a
    and [hl]
    jr jr_026_6D98

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
    ld bc, $0304
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec c
    inc bc
    ret nz

    add b
    and b
    ret nz

    jr nz, @-$3E

    and b
    ret nz

    jr nz, jr_026_6DDF

    and b
    ret nz

    and b
    ret nz

jr_026_6E23:
    and b
    ret nz

    ld b, a
    ccf
    ld c, e
    ccf
    ld b, l
    ccf
    ld h, b

jr_026_6E2C:
    rra
    add hl, sp
    ld b, $4E
    add hl, sp
    ld c, [hl]
    add hl, sp
    ld a, a
    add hl, sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, $CEFF

jr_026_6E3E:
    ld sp, $CE73
    ld [hl], e
    adc $FF
    adc $FF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc h
    rst $38
    ld [hl], e
    adc h
    sbc [hl]
    ld [hl], e
    sbc [hl]
    ld [hl], e
    rst $38
    ld [hl], e
    ld b, l
    jr c, @+$57

    jr c, @+$57

    jr c, jr_026_6EB1

    jr c, jr_026_6EB3

    jr c, jr_026_6EB5

jr_026_6E60:
    jr c, jr_026_6EA7

    jr c, @+$3A

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, a
    ccf
    ld c, a
    ccf
    rlca
    ccf
    rlca
    ccf
    ld c, a
    ccf
    ld c, a
    ccf
    ld c, a
    ccf
    rlca
    ccf
    ld a, [c]
    db $FC
    ld a, [c]
    db $FC
    ldh [$FC], a
    ldh [$FC], a
    ld a, [c]
    db $FC
    ld a, [c]
    db $FC
    ld a, [c]
    db $FC
    ldh [$FC], a
    jr jr_026_6EA7

jr_026_6EA7:
    inc h
    jr @+$5C

    inc a
    pop af
    ld a, $CE
    jr nc, jr_026_6F28

    nop

jr_026_6EB1:
    rlca
    nop

jr_026_6EB3:
    jr @+$09

jr_026_6EB5:
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_026_6EBD

jr_026_6EBD:
    ld b, h
    jr c, @-$24

    inc a
    ld h, [hl]
    jr jr_026_6E60

    nop
    scf
    rrca
    cpl
    rra
    ld l, [hl]
    rra
    ld [hl], b
    rrca
    inc e
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_026_6F26

    ld [$000F], sp
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a

jr_026_6EF0:
    inc bc
    ld bc, $0101
    ld bc, $0000
    inc bc
    ld bc, $0301
    dec b
    inc bc
    rlca
    inc bc
    dec bc
    rlca
    dec e
    rlca
    ld e, $2F
    jr jr_026_6F07

jr_026_6F07:
    inc h
    jr jr_026_6F64

    inc a
    adc a
    ld a, h
    ld [hl], e
    inc c
    ld e, $00
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a

jr_026_6F26:
    inc e
    ld e, d

jr_026_6F28:
    inc a
    ld h, [hl]
    jr jr_026_6F64

    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_026_6F39

jr_026_6F39:
    ld c, b
    jr nc, jr_026_6EF0

    ld a, b
    ld e, $F8
    and $18
    inc a
    nop
    nop
    nop
    inc e
    nop
    ld [hl+], a
    inc e
    dec l
    ld e, $33
    inc c
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    ld a, [bc]
    rlca
    dec d
    rrca
    db $10
    rrca
    ld c, $01
    inc bc
    nop
    nop
    nop
    nop

jr_026_6F64:
    nop
    rrca
    add $08
    ldh [rNR11], a
    ldh [$0E], a
    and $07
    pop hl
    ld [bc], a
    ret nz

    ld bc, $01C0
    add b
    ldh a, [$63]
    db $10
    rlca
    adc b
    rlca
    ld [hl], b
    ld h, a
    ldh [$87], a
    ld b, b
    inc bc
    add b
    inc bc
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $3F3F
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0180
    pop bc
    ld [bc], a
    jp nz, $E606

    ld c, $EC
    rrca
    ld [c], a
    inc de
    ldh [rNR11], a
    ldh [$80], a
    ld bc, $8380
    ld b, b
    ld b, e
    ld h, b
    ld h, a
    ld [hl], b
    scf
    ldh a, [rBGP]
    ret z

    rlca
    adc b
    rlca
    add hl, bc
    add hl, bc
    rra
    ld e, $32
    jr nz, @-$1C

    ld b, b
    pop bc
    add b
    ld h, b
    ld a, [hl]
    nop
    ld a, a
    nop
    rst $38
    ldh a, [$60]
    stop
    adc b
    nop
    ld a, a
    ld l, l
    pop hl
    add b
    nop
    db $FC
    nop
    rst $38
    nop
    rst $38
    rlca
    ld [$1708], sp
    rla
    cpl
    rrca
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$1708], sp
    rlca
    cpl
    rrca
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    ldh [rNR10], a
    db $10
    add sp, -$20
    db $F4
    ldh a, [$FA]
    ld hl, sp-$06
    ld hl, sp-$06
    ld hl, sp-$06
    ld hl, sp-$06
    rlca
    ld [$1708], sp
    rlca
    cpl
    rrca
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    ldh [rNR10], a
    db $10
    add sp, -$20
    db $F4
    ldh a, [$FA]
    ld hl, sp-$06
    ld hl, sp-$06
    ld hl, sp-$06
    ld hl, sp-$06
    rra
    ld e, a
    ld c, a
    cpl
    daa
    ld d, a
    ld d, b
    jr z, jr_026_70AD

    db $10
    db $10
    rrca
    rrca
    nop
    nop
    nop
    ld hl, sp-$06
    ld a, [c]
    db $F4
    db $E4
    ld [$140A], a
    db $F4
    ld [$F008], sp
    ldh a, [rP1]
    nop
    nop
    rra
    ld e, a
    ld c, a
    cpl
    daa
    ld d, a
    ld d, b
    jr z, jr_026_70CD

    db $10
    db $10
    rrca
    rrca
    nop
    nop
    nop
    ld hl, sp-$06
    ld a, [c]
    db $F4
    db $E4
    ld [$140A], a

jr_026_70AD:
    db $F4
    ld [$F008], sp
    ldh a, [rP1]
    nop
    nop
    rra
    ld e, a
    ld c, a
    cpl
    daa
    ld d, a
    ld d, b
    jr z, jr_026_70ED

    db $10
    db $10
    rrca
    rrca
    nop
    nop
    nop
    ld hl, sp-$06
    ld a, [c]
    db $F4
    db $E4
    ld [$140A], a

jr_026_70CD:
    db $F4
    ld [$F008], sp
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_026_70ED:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add e
    add e
    db $FD
    add c
    add a
    pop hl
    cp a
    add c
    rst $20
    adc c
    cp a
    pop bc
    pop bc
    rst $38
    sbc a
    sbc a
    db $E3
    add e
    db $FD
    add c
    rst $20
    sbc c
    rst $38
    sbc c
    rst $20
    add c
    db $FD
    add e
    add e
    rst $38
    rst $38
    rst $38
    jp $BDC3


    add c
    db $E3
    sbc l
    db $FD
    sbc a
    db $E3
    add c
    cp l
    jp $FFC3


    ld sp, hl
    ld sp, hl
    rst $00
    pop bc
    cp a
    add c
    rst $20
    sbc c
    rst $38
    sbc c
    rst $20
    add c
    cp a
    pop bc
    pop bc
    rst $38
    rst $38
    rst $38
    jp $BDC3


    add c
    rst $28
    sbc c
    rst $38
    add c
    pop hl
    sbc c
    cp a
    pop bc
    pop bc
    rst $38
    pop hl
    pop hl
    rst $18
    pop bc
    pop af
    rst $08
    or e
    add e
    rst $38
    add e
    or e
    rst $08
    rst $38
    rst $08
    rst $08
    rst $38
    pop bc
    pop bc
    cp a
    add c
    rst $20
    sbc c
    rst $38
    sbc c
    cp a
    pop bc
    add a
    sbc c
    db $FD
    add e
    add e
    rst $38
    sbc a
    sbc a
    db $E3
    add e
    db $FD
    add c
    rst $20
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    sbc c
    rst $38
    rst $20
    rst $20
    rst $38
    rst $20
    rst $20
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $20
    rst $38
    di
    di
    rst $38
    di
    di
    rst $30
    rst $38
    di
    cp a
    or e
    rst $08
    add e
    cp e
    rst $00
    rst $00
    rst $38
    sbc a
    sbc a
    ld sp, hl
    sbc c
    rst $30
    sub c
    db $ED
    add e
    ei
    add e
    db $ED
    sub c
    rst $30
    sbc c
    sbc c
    rst $38
    rst $00
    rst $00
    rst $38
    rst $00
    rst $18
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    sbc h
    sbc h
    db $E3
    add b
    rst $38
    add b
    db $EB
    sub h
    rst $30
    sbc h
    rst $38
    sbc h
    sbc h
    rst $38
    rst $38
    rst $38
    add e
    add e
    db $FD
    add c
    rst $20
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    sbc c
    rst $38
    rst $38
    rst $38
    jp $BDC3


    add c
    rst $20
    sbc c
    rst $38
    sbc c
    rst $20
    add c
    cp l
    jp $FFC3


    add e
    add e
    db $FD
    add c
    rst $20
    sbc c
    rst $38
    sbc c
    rst $20
    add c
    db $FD
    add e
    db $E3
    sbc a
    sbc a
    rst $38
    pop bc
    pop bc
    cp a
    add c
    rst $20
    sbc c
    rst $38
    sbc c
    rst $20
    add c
    cp a
    pop bc
    rst $00
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    rst $38
    sub e
    sub e
    db $ED
    add c
    di
    adc l
    db $ED
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    pop bc
    pop bc
    cp a
    add c
    pop hl
    add a
    cp l
    pop bc
    add a
    sbc c
    db $FD
    add e
    add e
    rst $38
    rst $08
    rst $08
    rst $38
    rst $08
    or c
    add c
    rst $38
    add c
    or c
    rst $08
    pop af
    pop bc
    rst $18
    pop hl
    pop hl
    rst $38
    rst $38
    rst $38
    sbc c
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $20
    add c
    cp a
    pop bc
    pop bc
    rst $38
    rst $38
    rst $38
    sbc c
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $20
    add c
    cp l
    jp $E7DB


    rst $20
    rst $38
    rst $38
    rst $38
    sbc h
    sbc h
    rst $38
    sbc h
    rst $30
    sub h
    db $EB
    add b
    rst $38
    add b
    db $E3
    sbc h
    sbc h
    rst $38
    rst $38
    rst $38
    sbc h
    sbc h
    db $EB
    adc b
    or [hl]
    pop bc
    db $DD
    db $E3
    rst $30
    ret


    db $EB
    sbc h
    sbc h
    rst $38
    sbc c
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $20
    add c
    cp a
    pop bc
    add a
    sbc c
    db $FD
    add e
    add e
    rst $38
    rst $38
    rst $38
    add c
    add c
    rst $38
    add c
    adc l
    di
    db $DB
    rst $00
    or c
    adc c
    rst $38
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    sbc a
    rst $38
    rst $20
    rst $20
    db $DB
    jp $81BD


    rst $20
    sbc c
    rst $20
    add c
    rst $38
    add c
    rst $20
    sbc c
    sbc c
    rst $38
    add e
    add e
    db $FD
    add c
    rst $20
    sub c
    db $FD
    add c
    rst $20
    add c
    rst $20
    sbc c
    db $FD
    add e
    add e
    rst $38
    jp $BDC3


    add c
    db $E3
    sbc l
    rst $38
    sbc a
    rst $38
    sbc a
    db $E3
    add c
    cp l
    jp $FFC3


    add e
    add e
    db $FD
    add c
    rst $20
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $20
    add c
    db $FD
    add e
    add e
    rst $38
    add c
    add c
    rst $38
    add c
    db $E3
    sbc e
    rst $38
    add e
    db $E3
    sbc a
    pop hl
    add c
    rst $38
    add c
    add c
    rst $38
    add c
    add c
    rst $38
    add c
    db $E3
    sbc e
    rst $38
    add e
    db $E3
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    sbc a
    rst $38
    jp $BDC3


    add c
    db $E3
    sbc l
    pop af
    sub c
    rst $38
    sub c
    rst $20
    adc c
    cp a
    pop bc
    pop bc
    rst $38
    sbc c
    sbc c
    rst $38
    sbc c
    rst $20
    add c
    rst $38
    add c
    rst $20
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    sbc c
    rst $38
    jp $FFC3


    jp $E7DB


    rst $38
    rst $20
    rst $38
    rst $20
    db $DB
    jp $C3FF


    jp $F0FF


    ldh a, [rIE]
    ldh a, [$F6]
    ld sp, hl
    rst $38
    ld sp, hl
    rst $18
    reti


    rst $20
    pop bc
    db $DD
    db $E3
    db $E3
    rst $38
    sbc c
    sbc c
    rst $30
    sub c
    db $ED
    add e
    ei
    add e
    db $ED
    sub c
    or $98
    ei
    sbc h
    sbc h
    rst $38
    sbc a
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    pop hl
    add c
    rst $38
    add c
    add c
    rst $38
    sbc h
    sbc h
    db $EB
    adc b
    rst $30
    add b
    rst $38
    add b
    db $EB
    sub h
    rst $30
    sbc h
    rst $38
    sbc h
    sbc h
    rst $38
    sbc c
    sbc c
    rst $28
    adc c
    rst $30
    add c
    rst $38
    add c
    rst $38
    add c
    rst $28
    sub c
    rst $30
    sbc c
    sbc c
    rst $38
    jp $BDC3


    add c
    rst $20
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $20
    add c
    cp l
    jp $FFC3


    add e
    add e
    db $FD
    add c
    rst $20
    sbc c
    rst $20
    add c
    db $FD
    add e
    db $E3
    sbc a
    rst $38
    sbc a
    sbc a
    rst $38
    jp $BDC3


    add c
    rst $20
    sbc c
    rst $38
    sbc c
    rst $30
    sub c
    db $ED
    add e
    or a
    ret


    ret


    rst $38
    add e
    add e
    db $FD
    add c
    rst $20
    adc c
    db $FD
    add e
    ei
    add a
    db $ED
    sub c
    rst $30
    sbc c
    sbc c
    rst $38
    pop bc
    pop bc
    cp a
    add c
    pop hl
    add a
    cp l
    pop bc
    rst $00
    ld sp, hl
    add a
    add c
    db $FD
    add e
    add e
    rst $38
    add c
    add c
    rst $38
    add c
    sbc c
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $20
    rst $38
    sbc c
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $20
    add c
    cp a
    pop bc
    pop bc
    rst $38
    sbc c
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $20
    add c
    cp l
    jp $E7DB


    rst $20
    rst $38
    sbc h
    sbc h
    rst $38
    sbc h
    rst $30
    sub h
    db $EB
    add b
    rst $38
    add b
    rst $30
    adc b
    db $EB
    sbc h
    sbc h
    rst $38
    sbc h
    sbc h
    db $EB
    adc b
    or [hl]
    pop bc
    db $DD
    db $E3
    or [hl]
    adc b
    db $EB
    sbc h
    rst $38
    sbc h
    sbc h
    rst $38
    sbc c
    sbc c
    rst $38
    sbc c
    rst $20
    add c
    cp l
    jp $E7DB


    rst $38
    rst $20
    rst $38
    rst $20
    rst $20
    rst $38
    add b
    add b
    rst $38
    add b
    add [hl]
    ld sp, hl
    call $B3C3
    adc a
    ldh [$90], a
    rst $38
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $18
    rst $00
    rst $38
    rst $00
    rst $18
    rst $20
    rst $38
    rst $20
    db $DB
    jp $C3FF


    jp $83FF


    add e
    db $FD
    add c
    add a
    pop hl
    db $DD
    jp $8FB3


    pop hl
    add c
    rst $38
    add c
    add c
    rst $38
    add e
    add e
    db $FD
    add c
    add a
    pop hl
    db $FD
    pop hl
    rst $20
    ld sp, hl
    add a
    add c
    db $FD
    add e
    add e
    rst $38
    pop af
    pop af
    rst $28
    pop hl
    rst $18
    pop bc
    or a
    adc c
    and $80
    rst $38
    add b
    add [hl]
    ld sp, hl
    ld sp, hl
    rst $38
    add c
    add c
    rst $38
    add c
    rst $20
    add a
    db $FD
    add c
    rst $38
    ld sp, hl
    add a
    add c
    db $FD
    add e
    add e
    rst $38
    pop hl
    pop hl
    rst $18
    pop bc
    or c
    adc a
    db $E3
    add e
    db $FD
    add c
    rst $20
    adc c
    cp l
    jp $FFC3


    add c
    add c
    rst $38
    add c
    rst $20
    pop hl
    reti


    rst $00
    or a
    adc a
    rst $28
    sbc a
    rst $38
    sbc a
    sbc a
    rst $38
    jp $BDC3


    add c
    rst $20
    adc c
    cp l
    jp $81E7


    rst $20
    sbc c
    cp l
    jp $FFC3


    jp $BDC3


    add c
    rst $20
    adc c
    cp a
    pop bc
    rst $00
    ld sp, hl
    rst $00
    pop bc
    cp l
    jp $FFC3


    pop bc
    pop bc
    cp [hl]
    add b
    db $E3
    sbc h
    rst $20
    add b
    ei
    add h
    di
    adc b
    cp [hl]
    pop bc
    pop bc
    rst $38
    rst $20
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $20
    rst $28
    rst $38
    rst $20
    rst $20
    rst $38
    db $DD
    pop bc
    rst $30
    pop bc
    call c, $BBC2
    add h
    xor $91
    and $88
    cp e
    call nz, $FFC4
    rst $10
    cp a
    xor a
    rst $38
    xor a
    ld e, a
    rst $08
    ccf
    sbc a
    ld a, a
    sbc a
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    db $FD
    db $FC
    db $FD
    db $FC
    ld sp, hl
    ld hl, sp-$06
    ld sp, hl
    ld a, [$F6F9]
    pop af
    db $F4
    di
    db $EC
    db $E3
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    jp hl


    rst $20
    pop de
    rst $08
    pop hl
    rst $18
    db $E3
    rst $18
    db $E3
    rst $38
    db $E3
    db $FD
    di
    db $FD
    pop af
    cp $DF
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $30
    rst $18
    rst $20
    rst $18
    xor a
    sbc a
    ld sp, hl
    rst $38
    cp $FE
    db $FD
    db $FC
    db $FC
    ei
    ld hl, sp-$01
    db $F4
    rst $38
    ld sp, hl
    rst $38
    push af
    rst $38
    ld c, a
    ccf
    rst $18
    ccf
    sbc a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $20
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp $FE
    cp $FE
    db $FD
    db $FC
    db $FD
    db $FC
    rst $10
    cp a
    add a
    rst $38
    cpl
    ld e, a
    rst $08
    ccf
    sbc a
    ld a, a
    sbc a
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    db $FD
    db $FC
    cp $FD
    ld a, [$FDF9]
    ld a, [$FFFC]
    ld a, [$F5FF]
    rst $38
    ei
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    db $FD
    rst $38
    db $FC
    rst $38
    ei
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    cp $FE
    cp $FF
    db $FC
    db $FD
    db $FC
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    jr jr_026_77CA

    daa
    jr c, jr_026_780A

    ld h, e
    ld d, e
    ld l, h
    and [hl]
    reti


jr_026_77B3:
    xor c
    sub $00
    nop
    ldh [$E0], a
    jr jr_026_77B3

    db $E4
    inc e
    ld a, [de]
    and $AA
    ld d, [hl]
    pop de
    cpl
    dec [hl]
    res 4, b
    rst $18
    xor d
    push de
    adc e

jr_026_77CA:
    db $F4
    call c, $D3E3
    db $EC
    and $F9
    ld hl, sp-$01
    rst $38
    rst $38
    dec [hl]
    set 2, l
    dec hl
    dec h
    db $DB
    dec bc
    rst $30
    sbc e
    ld h, a
    rst $20
    rra
    rra
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01FE
    cp $03
    db $FC
    rlca
    ld hl, sp-$27
    rst $38
    db $FC
    rst $38
    db $F4
    rst $38
    ret c

    rst $38
    db $F4
    rst $38
    jp hl


    rst $38
    ld hl, sp-$01
    db $F4
    rst $38
    inc bc
    db $FC
    inc bc
    db $FC
    dec b

jr_026_780A:
    ld a, [$FE01]
    ld [bc], a
    db $FD
    ld bc, $01FE
    cp $01
    cp $DC
    rst $38
    ld a, [c]
    rst $38
    ld a, b

jr_026_781A:
    ld a, a
    ld a, h
    ld a, a
    add hl, sp
    ccf
    inc e
    rra
    rlca
    rlca
    add b
    nop
    sbc e
    ld h, h
    dec [hl]
    jp z, $906F

    ld b, [hl]
    cp c
    dec c
    ld a, [c]
    ld [hl+], a
    db $DD
    jr jr_026_781A

    nop
    rst $38
    ld sp, hl
    ld b, $6C
    sub e
    or $09
    ld d, d
    xor l
    ret nc

    cpl
    call nz, $183B
    rst $20
    ret nz

    ccf
    sbc a
    add b
    sub [hl]
    add c
    adc $C0
    set 0, b
    rst $08
    ret nz

    sub $C0
    push de
    jp nz, $C0CF

    ld h, b
    sbc a
    ret z

    scf
    and b
    ld e, a
    ret nz

    ccf
    sub b
    ld l, a
    ld b, b
    cp a
    and b
    ld e, a
    ret nz

    ccf
    nop
    nop
    sub h
    nop
    rst $38
    nop
    ld l, [hl]
    sub c
    nop
    rst $38
    adc d
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    inc sp
    rrca
    ld h, l
    rra
    inc sp
    rrca
    ld h, a
    rra
    inc sp
    rrca
    ld [hl-], a
    rrca
    ld h, a
    rra
    ld h, e
    rra
    nop
    nop
    ld bc, $0200
    nop
    ld [bc], a
    ld bc, $030C
    db $10
    rlca
    ld a, [hl+]
    rlca
    ld h, c
    rra
    ld l, e
    rra
    adc l
    ccf
    sub a
    ld a, a
    ccf
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FE
    cp $FE
    db $FC
    db $FC
    db $FD
    db $FC
    ld sp, hl
    ld hl, sp-$0E
    ldh a, [$E6]
    pop hl
    rst $38
    rst $38
    cp $FE
    ld hl, sp-$08
    pop af
    ldh a, [$E2]
    ldh [$CB], a
    ret nz

    push bc
    ret nz

    sbc [hl]
    add c
    adc e
    add b
    dec e
    ld [bc], a
    ld l, a
    nop
    cp d
    dec b
    db $EC
    inc de
    jp nc, Jump_026_682D

    sub a
    ret nz

    ccf
    rst $38
    rst $38
    ccf
    ccf
    nop
    nop
    add $00
    cp c
    nop
    rst $28
    nop
    db $FD
    ld [bc], a
    sbc e
    ld b, b
    ld a, e
    add h
    push de
    ld a, [hl+]
    and d
    ld e, l
    ld [$40F7], sp
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $FF
    ei
    cp $F6
    rst $38
    db $FD
    cp $E9
    cp $A1
    db $FC
    ret nz

    jr z, jr_026_7906

jr_026_7906:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    nop
    rlca
    rlca
    ld bc, $0001
    nop
    ld a, h
    ld l, $FC
    ld b, $FC
    add [hl]
    db $FC
    ld c, $FC
    ld e, $FC
    xor [hl]
    ld hl, sp-$24
    ld a, h
    ld a, h
    nop
    or $00
    db $FD
    nop
    cp $00
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, l
    nop
    inc sp
    nop
    adc l
    nop
    daa
    nop
    ccf
    nop
    ld c, e
    nop
    cp a
    nop
    rst $28
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0410], sp
    ld [$0402], sp
    inc bc
    ld b, $01
    ld [bc], a
    ld bc, $0103
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $0201
    ld bc, $0103
    ld [bc], a
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    nop
    ret nz

    ld b, b
    inc bc
    dec b
    inc bc
    inc b
    rlca
    dec c
    rlca
    ld c, $07
    dec bc
    rrca
    ld e, $0F
    rra
    rrca
    rra
    ret nz

    ld [$88C0], sp
    ret nc

    ld c, b
    ret nc

    ret z

    sub b
    adc b
    sub b
    adc b
    or b
    adc b
    jr nc, jr_026_79AD

    rrca
    rra
    rra
    ccf
    ld e, $3E
    ld a, $7E
    ld a, $7E
    ld a, $7E
    ld a, $7E
    inc a
    inc a
    nop
    nop
    nop
    inc b
    nop
    ld [$1008], sp

jr_026_79AD:
    inc c
    db $10
    inc e
    inc [hl]
    inc e
    inc l
    jr c, @+$3A

    nop
    rst $10
    nop
    rst $20
    nop
    rst $28
    nop
    rst $18
    nop
    rst $28
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    add b
    nop
    ld h, b
    ld h, b
    ld [hl], b
    jr nc, @+$3A

    jr nc, @+$1A

    jr c, @+$2E

    jr @+$16

    inc e
    ld d, $00
    nop
    nop
    nop
    nop
    inc b
    nop
    inc b
    inc b
    ld [$0804], sp
    inc b
    ld [$100C], sp
    inc e
    ld b, $1C
    ld b, $1C
    ld b, $3C
    ld d, $38
    inc [hl]
    jr c, jr_026_7A1D

    jr c, jr_026_7A2F

    jr c, @+$3A

    inc c
    jr @+$0E

    inc d
    inc c
    inc e
    inc c
    jr jr_026_7A0A

    inc e
    inc c
    inc e
    inc e
    inc e
    ld [$0008], sp
    and a
    nop
    rst $00
    nop

jr_026_7A0A:
    rst $10
    nop
    adc a
    nop
    rst $18
    nop
    rst $28
    nop
    rst $38
    nop
    rst $18
    nop
    ei
    nop
    di
    nop
    rst $30
    nop
    ei

jr_026_7A1D:
    nop
    rst $38
    nop
    rst $30
    nop
    ei
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0003

jr_026_7A2F:
    rlca
    nop
    rlca
    nop
    rlca
    inc b
    nop
    ld b, b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    rrca
    ld [bc], a
    rrca
    nop
    rrca
    ld a, [bc]
    rrca
    inc c
    rlca
    dec b
    rlca
    ld b, $07
    dec b
    inc bc
    inc bc
    nop
    add b
    add b
    ret nz

    add b
    ld b, b
    add b
    ret nz

    add b
    ret nz

    ret nz

    ldh [$C0], a
    ld h, b
    ldh [$F0], a
    inc bc
    inc bc
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
    nop
    ldh a, [$B8]
    ldh a, [$F8]
    ld hl, sp-$04
    ld hl, sp-$04
    ld a, h
    ld a, [hl]
    ld a, h
    ld e, [hl]
    ld a, h
    halt
    ld a, h
    ld e, [hl]
    jr nc, jr_026_7AAF

    jr c, jr_026_7A9D

    jr jr_026_7AA7

    jr jr_026_7A99

    jr jr_026_7AAB

    ld [$0C0C], sp
    inc c
    nop
    nop
    nop
    rst $38
    nop
    di

jr_026_7A99:
    nop
    rst $30
    nop
    ei

jr_026_7A9D:
    nop
    rst $30
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    push bc

jr_026_7AA7:
    nop
    sub e
    nop
    rst $20

jr_026_7AAB:
    nop
    or l
    nop
    rst $28

jr_026_7AAF:
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    ld h, b
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b

jr_026_7ABD:
    nop
    ld h, b
    ld e, $60
    ld bc, $7E7F
    ld a, [hl]
    nop
    nop
    inc a
    nop
    ld b, d
    inc a
    jr jr_026_7B4B

    nop
    ld h, [hl]
    jr jr_026_7B37

    ld b, d
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    ld a, h
    nop
    add d
    db $FC
    ld a, b
    halt
    ld b, b
    ld a, $98
    or $40
    ld a, [hl]
    ld a, $3E
    ld b, $00
    jr c, jr_026_7AEF

    ld b, b
    ld a, $18
    ld a, [hl]
    nop
    ld h, [hl]

jr_026_7AEF:
    jr jr_026_7B57

    ld b, b
    ld a, [hl]
    ld a, $3E
    ld a, $00
    ld b, c
    ccf
    ld e, $7E
    nop
    ld h, b
    nop
    ld h, b
    ld e, $60
    ld b, c
    ld a, a
    ld a, $3E
    nop
    nop
    ld l, [hl]
    nop
    ld de, $0E6F
    ld a, [hl]
    db $10
    ld [hl], b
    nop
    ld h, b
    nop
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    inc a
    nop
    ld b, d
    inc a
    jr jr_026_7B8B

    nop
    ld a, [hl]
    ld e, $66
    ld b, c
    ld a, a
    ld a, $3E
    jr jr_026_7B27

jr_026_7B27:
    nop
    jr @+$1A

    stop
    jr jr_026_7B2E

jr_026_7B2E:
    jr jr_026_7B30

jr_026_7B30:
    jr jr_026_7B32

jr_026_7B32:
    jr @+$1A

    jr jr_026_7B66

    nop

jr_026_7B37:
    nop
    jr nc, jr_026_7B88

    jr nc, jr_026_7ABD

    rst $38
    ld c, [hl]
    ld a, [hl]
    ld c, $30
    ld hl, $1E3F
    ld e, $00
    nop
    ld a, $00
    ld b, c
    ccf

jr_026_7B4B:
    ld e, $66
    ld b, d
    ld a, h
    ld a, b
    ld [hl], $82
    cp $7C
    ld a, h
    ld a, $00

jr_026_7B57:
    ld b, c
    ccf
    ld e, $66
    ld b, d
    ld a, h
    jr c, jr_026_7B9D

    ld a, b
    ld b, $82
    cp $7C
    ld a, h
    nop

jr_026_7B66:
    nop
    ld h, [hl]
    nop
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    jr jr_026_7BD5

    ld b, d
    ld a, [hl]
    inc h
    inc a
    jr jr_026_7B8D

    ld a, $00
    ld b, c
    ccf
    ld e, $7E
    ld c, $60
    ld bc, $116F
    ld h, a
    ld b, c
    ld a, a
    ld a, $3E
    nop
    nop
    ld h, e

jr_026_7B88:
    nop
    inc e
    ld h, e

jr_026_7B8B:
    nop
    ld a, a

jr_026_7B8D:
    inc d
    ld a, a
    ld [$006B], sp
    ld h, e
    ld h, e
    ld h, e
    ldh a, [$FE]
    ldh a, [$FE]
    ldh a, [$F8]
    ldh [$E0], a

jr_026_7B9D:
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    rlca
    rra
    nop
    ccf
    nop
    ld a, b
    nop
    pop af
    nop
    ld hl, sp+$0B
    ld a, h
    rrca
    ld a, a
    rra
    ccf
    nop
    rst $38
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    add b
    ld [hl], b
    db $FD
    ld [c], a
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc b
    nop
    call nz, $99E6

jr_026_7BD5:
    ret nz

    ldh [rP1], a
    ld hl, sp+$00
    ld e, $02
    rrca
    add hl, bc
    rrca
    dec c
    rra
    dec c
    rra
    cpl
    rra
    rra
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rrca
    rra
    rrca
    ccf
    rra
    ccf
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld bc, $00BF
    inc bc
    ret nz

    call nz, $E8F0
    db $FC
    ld hl, sp-$01
    cp $FF
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld bc, $00FF
    ccf
    nop
    inc bc
    ret nz

    ld bc, $3F5D
    cp $FE
    cp $FE
    db $FC
    db $FC
    db $FC
    db $FC
    ld a, b
    ld hl, sp+$78
    ld hl, sp-$10

jr_026_7C24:
    ldh a, [rNR34]
    ld a, a
    inc e
    ld a, a
    jr c, jr_026_7C24

    ld a, $FE
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld bc, $807F
    rra
    ret nz

    rst $08
    ldh a, [$E3]
    ld hl, sp-$07
    ldh a, [$E0]
    db $FD
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ldh a, [$F0]
    ldh a, [$F0]
    ldh a, [$F0]
    ldh a, [$F0]
    ldh a, [$F0]
    ldh a, [$F8]
    ldh a, [$F8]
    ldh a, [$FC]
    pop af
    rst $38
    ldh a, [$F7]
    ld hl, sp-$05
    rst $38
    rst $38
    ld [hl], a
    rst $38
    ccf
    ld a, a
    rrca
    rrca
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
    ld hl, sp-$08
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
    ld a, $3E
    nop
    nop
    ld h, e
    nop
    db $10
    ld h, e
    ld [$0473], sp
    ld a, e
    db $10
    ld a, a
    ld [$046F], sp
    ld h, a
    ld h, e
    ld h, e
    nop
    nop
    ld h, e
    nop
    nop
    ld h, e
    ld [$1463], sp
    ld l, e
    nop
    ld a, a
    inc e
    ld a, a
    ld h, e
    ld h, e
    ld bc, $0201
    inc bc
    inc bc
    rlca
    dec b
    ld b, $05
    ld c, $0B
    ld c, $0E
    dec e
    ld d, $3D
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [$A0], a
    ld h, b
    ldh [$B0], a
    ld d, b
    ldh a, [$B0]
    ret c

    xor b
    ret c

    ld l, $39
    daa
    ld a, d
    ld b, e
    ld a, h
    ld h, c
    ld a, [hl]
    jr c, jr_026_7D5E

    ld c, $3F
    inc bc
    rrca
    nop
    inc bc
    ld e, b
    db $FC
    ld d, h
    xor $62
    cp $62
    cp $76
    cp $FC
    cp $F8
    db $FC
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_026_7D5E:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $10
    ret nz

    ld h, e
    ld [$009C], sp
    and h
    ld [$009C], sp
    and h
    ld [$0093], sp
    add e
    rst $00
    add [hl]
    nop
    and h
    ld [$0093], sp
    ld bc, $88C7
    nop
    and h
    ld [$0093], sp
    ld bc, $88C7
    nop
    and h
    ld [$009C], sp
    and h
    ld [$009C], sp
    and h
    ld [$009C], sp
    and h
    ld [$009C], sp
    and h
    ld [$009C], sp
    and h
    ld [$009C], sp
    and h
    ld [$009C], sp
    and h
    ld [$009C], sp
    and h
    ld [$009C], sp
    and h
    ld [$009C], sp
    and h
    ld [$009C], sp
    and h
    ld [$009C], sp
    xor h
    ld [$0094], sp
    xor h
    ld [$0094], sp
    sbc a
    ld [$0087], sp
    ld bc, $83CA
    nop
    add d
    ld [$0094], sp
    sbc a
    ld [$008B], sp
    add d
    ld [$0094], sp
    sbc a
    ld [$008B], sp
    add d
    ld [$0094], sp
    sbc a
    ld [$0002], sp
    ret


    adc b
    nop
    inc bc
    rrc b
    ld [$0094], sp
    sub a
    ld [$008E], sp
    inc bc
    ld [$0800], sp
    add d
    nop
    add d
    ld [$0094], sp
    sub a
    ld [$008E], sp
    inc bc
    ld [$0800], sp
    add d
    nop
    add d
    ld [$0094], sp
    sub a
    ld [$0083], sp
    adc h
    ld [$0001], sp
    add l
    ld [$0094], sp
    sub a
    ld [$0083], sp
    adc d
    ld [$0086], sp
    and b
    ld [$0086], sp
    add a
    ld [$0083], sp
    adc c
    ld [$0087], sp
    and b
    ld [$0082], sp
    ld bc, $83CE
    nop
    add a
    ld [$0083], sp
    adc c
    ld [$0087], sp
    and b
    ld [$0086], sp
    add a
    ld [$0083], sp
    adc c
    ld [$0083], sp
    ld bc, $8608
    nop
    sbc l
    ld [$0086], sp
    add a
    ld [$0083], sp
    add h
    ld [$C101], sp
    add h
    ld [$0082], sp
    add d
    ld [$0087], sp
    and b
    ld [$0082], sp
    add a
    ld [$0083], sp
    ld bc, $8A08
    nop
    ld bc, $8808
    nop
    sbc h
    ld [$0086], sp
    add a
    ld [$0083], sp
    ld bc, $9308
    nop
    sbc h
    ld [$0082], sp
    ld [bc], a
    ld [$8900], sp
    ld [$0083], sp
    ld bc, $8808
    nop
    add e
    ld [$0087], sp
    sbc l
    ld [$0082], sp
    ld bc, $8308
    nop
    add a
    ld [$0083], sp
    ld [bc], a
    ld [$8300], sp
    ld [$0082], sp
    add l
    ld [$0082], sp
    and d
    ld [$0082], sp
    add e
    ld [$0001], sp
    add a
    ld [$0083], sp
    adc b
    ld [$0003], sp
    ld [$8208], sp
    nop
    and e
    ld [$008B], sp
    ld bc, $8DD0
    nop
    add d
    ld [$CD02], sp
    nop
    and e
    ld [$008B], sp
    ld bc, $8DD0
    nop
    inc b
    call z, $0808
    nop
    and e
    ld [$008B], sp
    ld bc, $84D0
    nop
    ld [bc], a
    ld [$8700], sp
    ld [$0004], sp
    ld [$0008], sp
    or b
    ld [$0083], sp
    adc c
    ld [$0084], sp
    or b
    ld [$0083], sp
    adc c
    ld [$0001], sp
    or e
    ld [$0083], sp
    adc c
    ld [$0001], sp
    or e
    ld [$0083], sp
    cp l
    ld [$0083], sp
    cp l
    ld [$0083], sp
    cp l
    ld [$0083], sp
    or d
    ld [$0001], sp
    adc d
    ld [$C883], sp
    xor c
    ld [$008D], sp
    ld bc, $86C0
    ld [$0083], sp
    xor c
    ld [$0002], sp
    ret nz

    adc d
    ld [$0082], sp
    add [hl]
    ld [$0083], sp
    xor c
    ld [$0082], sp
    adc d
    ld [$0082], sp
    ld bc, $8808
    nop
    xor c
    ld [$0082], sp
    adc d
    ld [$0082], sp
    ld bc, $8808
    nop
    xor c
    ld [$0082], sp
    adc e
    ld [$C203], sp
    ld [$8608], sp
    nop
    xor d
    ld [$0082], sp
    adc d
    ld [$0083], sp
    ld bc, $8408
    nop
    xor h
    ld [$0082], sp
    adc d
    ld [$0083], sp
    ld bc, $8408
    nop
    xor h
    ld [$0082], sp
    ld [bc], a
    ld [$83CF], sp
    ld [$0084], sp
    ld bc, $8308
    nop
    add l
    ld [$C401], sp
    xor e
    ld [$0082], sp
    ld bc, $8808
    nop
    inc bc
    ld [$C600], sp
    add d
    nop
    ld bc, $84C5
    nop
    xor e
    ld [$0082], sp
    adc c
    ld [$0085], sp
    add h
    ld [$0001], sp
    xor e
    ld [$008A], sp
    ld bc, $85C3
    nop
    add h
    ld [$0001], sp
    xor e
    ld [$0082], sp
    sub d
    ld [$0001], sp
    xor e
    ld [$008C], sp
    ld bc, $89C4
    nop
    xor d
    ld [$008C], sp
    ld bc, $8808
    nop
    ret nz

    xor c
    ld [$FF00], sp
    rst $38
    rst $38
    rst $38
