; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02e", ROMX[$4000], BANK[$2e]

    dec d

Jump_02E_4001:
    ld hl, sp+$01
    sbc a
    ld [$0084], sp
    adc [hl]
    ld [$0084], sp
    add d
    ld [$0085], sp
    adc c
    ld [$0082], sp
    adc c
    ld [$0082], sp
    add a
    ld [$0082], sp
    add e
    ld [$8183], sp
    ld bc, $8400
    ld [$0082], sp
    add [hl]
    ld [$0003], sp
    ld [$8908], sp
    add c
    inc bc
    ld [$0000], sp
    add [hl]
    ld [$0005], sp
    ld [$81C4], sp
    add hl, bc
    add a
    add c
    inc bc
    ret nz

    ld [$8600], sp
    ld [$0001], sp
    add h
    ld [$8187], sp
    add d
    ld [$0001], sp
    add [hl]
    ld [$0004], sp
    ld [$08C1], sp
    adc b
    add c
    inc bc
    ld [$0000], sp
    add [hl]
    ld [$0004], sp
    ld [$0881], sp
    add e
    add c
    ld bc, $8409
    add c
    inc bc
    ld [$0000], sp
    add [hl]
    ld [$0082], sp
    inc bc
    add c
    ld [$8281], sp
    ld [$8185], sp
    add d
    ld [$0001], sp
    add [hl]
    ld [$0008], sp
    ld [$0881], sp
    add c
    add hl, bc
    nop
    ld [$8185], sp
    ld [bc], a
    ld [$8800], sp
    ld [$8183], sp
    ld b, $08
    add c
    add c
    ld [$8181], sp
    inc b
    ld [$0881], sp
    nop
    add d
    ld [$0085], sp
    ld bc, $8309
    add c
    inc bc
    ld [$00C2], sp
    add l
    add c
    ld [bc], a
    ld [$8200], sp
    ld [$0001], sp
    add l
    ld [$8184], sp
    add d
    ld [$0901], sp
    add h
    add c
    ld [bc], a
    ld [$8200], sp
    ld [$0002], sp
    ld [$818E], sp
    add d
    ld [$0005], sp
    ld [$0008], sp
    ld [$8186], sp
    ld bc, $8708
    add c
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$8D08], sp
    add c
    inc bc
    ld [$0000], sp
    add d
    ld [$0001], sp
    add h
    ld [$8185], sp
    ld bc, $8500
    add c
    inc bc
    ld [$0000], sp
    add d
    ld [$0001], sp
    add a
    ld [$8184], sp
    inc b
    ld [$C381], sp
    ld [$0082], sp
    add e
    ld [$0082], sp
    adc c
    ld [$8104], sp
    add hl, bc
    add c
    ld [$0082], sp
    add l
    ld [$0089], sp
    dec b
    ld [$0881], sp
    add c
    ld [$0082], sp
    adc a
    ld [$8183], sp
    ld [bc], a
    ld [$9900], sp
    ld [$1600], sp
    add $00
    dec bc
    dec b
    ld c, d
    ld bc, $FD8E
    rla
    dec d
    ld a, b
    db $ED
    xor $EF
    sub a
    sbc b
    sbc c
    db $FD
    dec d
    ld e, h
    ld e, l
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    halt
    add a
    adc b
    adc c
    ld h, a
    dec h
    add h
    db $FD
    dec b
    and a
    xor b
    xor c
    db $FD
    dec h
    add e
    db $FD
    inc bc
    ld a, c
    db $FD
    rst $10
    add [hl]
    db $FD
    inc b
    dec [hl]
    db $FD
    ld a, h
    ld a, l
    add e
    db $FD
    rlca
    dec sp
    db $FD
    dec [hl]
    db $FD
    ld a, [de]
    ld e, e
    cp $86
    db $FD
    inc bc
    adc b
    reti


    ld b, l
    add h
    db $FD
    ld a, [bc]
    cp [hl]
    cp a
    ld c, e
    db $FD
    ld b, l
    db $FD
    ld a, [hl+]
    rra
    db $FD
    ld a, a
    add d
    db $FD
    ld bc, $833B
    db $FD
    inc b
    ld a, $3F
    ld a, d
    ld a, e
    add h
    db $FD
    dec b
    ld l, [hl]
    db $FD
    ld a, d
    db $FD
    ld e, d
    add d
    db $FD
    inc b
    dec d
    db $FD
    ld e, a
    add hl, de
    add e
    db $FD
    dec c
    ld c, [hl]
    ld c, a
    db $FD
    ld [hl], a
    db $FD
    cp [hl]
    cp a
    db $FD
    ld h, [hl]
    db $FD
    adc d
    db $FD
    inc a
    add d
    db $FD
    inc b
    dec h
    db $FD
    db $FD
    add hl, hl
    add e
    db $FD
    ld [bc], a
    ld e, [hl]
    ld e, a
    add [hl]
    db $FD
    dec b
    ld h, a
    db $FD
    sbc a
    db $FD
    ld c, h
    add d
    db $FD
    ld bc, $8335
    db $FD
    dec d
    ld e, e
    db $FD
    db $FD
    ld l, [hl]
    ld l, a
    ld e, b
    db $FD
    ld a, b
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    db $FD
    sbc d
    db $FD
    ld e, h
    ld [hl], a
    db $FD
    ld b, l
    rra
    ld l, e
    add d
    db $FD
    dec b
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    adc d
    add l
    db $FD
    inc bc
    ld l, $FD
    adc a
    add e
    db $FD
    ld bc, $83FE
    db $FD
    rrca
    cp $FD
    sbc h
    sbc l
    sbc [hl]
    adc a
    rst $10
    ccf
    db $FD
    cp d
    cp e
    db $FD
    ld a, $FD
    ld a, h
    add e
    db $FD
    ld bc, $8356
    db $FD
    ld [$BBBA], sp
    cp h
    cp l
    ld a, [hl-]
    inc a
    db $FD
    ld c, a
    add h
    db $FD
    inc d
    ld c, [hl]
    db $FD
    xor a
    db $FD
    cp d
    cp e
    cp h
    cp l
    ld a, [hl]
    ld a, a
    jp z, $CCCB

    call Call_02E_4C4A
    db $FD
    ld e, a
    ld a, d
    ld a, e
    add d
    db $FD
    inc bc
    ld e, [hl]
    db $FD
    cp a
    sub e
    db $FD
    inc de
    ld l, [hl]
    db $FD
    rst $08
    ld e, l
    ld e, [hl]
    ld e, a
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ld e, a
    ld e, b
    ld h, [hl]
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    add e
    db $FD
    ld bc, $912E
    db $FD
    dec b
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    nop
    inc d
    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $3B15
    ld c, h
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    inc a
    dec a
    ld a, $3F
    ld c, [hl]
    ld c, a
    ld c, h
    inc a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld c, a
    ld l, $4B
    sub d
    db $FD
    jr jr_02E_42A0

    ld e, d
    db $FD
    reti


    ld l, e
    ld l, c
    db $FD
    cp d
    cp e
    cp h
    ld e, d
    sbc a
    cp [hl]
    cp a
    db $FD
    dec sp
    inc a
    dec a
    ld e, e
    db $FD
    ld c, [hl]
    dec l
    ld l, e
    dec a
    adc [hl]
    db $FD
    ld b, $8F
    db $FD
    ld e, [hl]
    dec a
    db $FD
    ld c, l
    adc [hl]
    db $FD
    ld b, $9F
    db $FD
    dec d
    ld c, l
    db $FD
    ld e, l
    add d
    db $FD
    ld bc, $83D7
    db $FD
    ld bc, $83D7
    db $FD
    ld bc, $83D7
    db $FD
    ld b, $D7
    db $FD
    dec h
    ld e, l
    db $FD
    ld l, l

jr_02E_42A0:
    sub b
    db $FD
    inc b
    dec [hl]
    ld l, l
    db $FD
    ld b, [hl]
    sub b
    db $FD
    inc b
    ld b, l
    ld c, c
    db $FD
    dec a
    sub b
    db $FD
    inc b
    ld l, $2D
    db $FD
    ld c, l
    add d
    db $FD
    ld bc, $83D7
    db $FD
    ld bc, $83D7
    cp $01
    rst $10
    add e
    db $FD
    ld b, $D7
    db $FD
    ld a, $3D
    db $FD
    ld e, l
    add [hl]
    db $FD
    ld bc, $83FE
    db $FD
    ld bc, $85FE
    db $FD
    inc b
    ld c, [hl]
    ld c, l
    db $FD
    ld l, l
    add [hl]
    db $FD
    ld bc, $83FE
    db $FD
    ld bc, $85FE
    db $FD
    inc b
    ld e, [hl]
    ld e, l
    db $FD
    dec d
    add [hl]
    db $FD
    ld bc, $83FE
    db $FD
    ld bc, $85FE
    db $FD
    inc b
    ld l, [hl]
    inc hl
    db $FD
    dec h
    add d
    db $FD
    ld bc, $83D7
    db $FD
    ld bc, $83D7
    cp $01
    rst $10
    add e
    db $FD
    ld b, $D7
    db $FD
    ld d, a
    ld l, $FD
    dec [hl]
    add [hl]
    db $FD
    ld bc, $87FE
    db $FD
    ld b, $CA
    db $FD
    ld c, e
    ld a, $FD
    ld b, l
    add [hl]
    db $FD
    ld bc, $89FE
    db $FD
    inc b
    ld l, $4E
    db $FD
    ld a, b
    add [hl]
    db $FD
    ld bc, $87FE
    db $FD
    jr jr_02E_433D

    db $FD
    ld a, $5E
    db $FD
    ld c, h
    ld c, l
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ld l, b
    db $FD
    ld e, h
    ld e, l
    ld e, [hl]

jr_02E_433D:
    ld e, a
    ld a, c
    ld hl, $4EFD
    ld l, [hl]
    sub d
    db $FD
    dec d
    ld e, [hl]
    ld c, e
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ld l, [hl]
    nop
    ld a, [de]
    ld [$0F00], a
    db $10
    and h
    ld [bc], a
    sbc e
    add d
    add e
    db $FD
    add h
    add d
    add e
    db $FD
    add [hl]
    add d
    add h
    db $FD
    ld bc, $83FE
    db $FD
    add d
    add d
    add e
    db $FD
    inc b
    add d
    xor b
    add d
    cp [hl]
    add e
    db $FD
    add [hl]
    add d
    add h
    db $FD
    ld bc, $83FE
    db $FD
    add d
    add d
    add l
    db $FD
    ld bc, $8382
    db $FD
    ld bc, $86A8
    add d
    ld bc, $83A8
    db $FD
    inc bc
    add d
    cp $FE
    add e
    add d
    inc b
    db $FD
    add d
    cp $A8
    add d
    db $FD
    ld bc, $83FE
    db $FD
    add l
    add d
    add a
    db $FD
    add h
    add d
    adc d
    db $FD
    ld [bc], a
    add d
    cp [hl]
    adc d
    db $FD
    inc b
    add d
    db $FD
    db $FD
    add d
    add e
    db $FD
    ld bc, $8682
    db $FD
    add e
    add d
    adc c
    db $FD
    inc b
    add d
    db $FD
    db $FD
    add d
    add h
    db $FD
    ld bc, $8582
    db $FD
    add l
    add d
    add l
    db $FD
    inc bc
    xor b
    add d
    add d
    add d
    db $FD
    add h
    add d
    add e
    db $FD
    adc c
    add d
    ld bc, $83A8
    db $FD
    add h
    add d
    ld bc, $93FD
    add d
    add d
    db $FD
    ld b, $82
    db $FD
    db $FD
    add d
    db $FD
    db $FD
    sub d
    add d
    add h
    db $FD
    add d
    add d
    add d
    db $FD
    sbc b
    add d
    add d
    db $FD
    xor b
    add d
    add h
    db $FD
    ld [bc], a
    add d
    cp [hl]
    add e
    db $FD
    sub b
    add d
    add d
    db $FD
    add d
    add d
    inc bc
    cp $82
    add d
    add e
    db $FD
    adc a
    add d
    add d
    db $FD
    ld bc, $8882
    db $FD
    adc a
    add d
    add d
    db $FD
    inc bc
    add d
    db $FD
    add d
    add e
    db $FD
    inc bc
    xor b
    db $FD
    db $FD
    adc a
    add d
    add d
    db $FD
    ld bc, $8482
    db $FD
    ld bc, $8382
    db $FD
    sub b
    add d
    add d
    db $FD
    inc b
    add d
    db $FD
    db $FD
    add d
    add h
    db $FD
    sub c
    add d
    ld [bc], a
    db $FD
    add d
    add d
    db $FD
    ld bc, $8482
    db $FD
    sub c
    add d
    ld bc, $84FD
    add d
    add e
    cp $92
    add d
    add e
    db $FD
    ld [bc], a
    xor b
    add d
    add h
    db $FD
    add l
    add d
    inc bc
    add a
    db $FD
    db $FD
    adc c
    add d
    adc c
    db $FD
    sub c
    add d
    add e
    db $FD
    ld [bc], a
    add d
    db $FD
    sub l
    add d
    add l
    db $FD
    and c
    add d
    nop
    ld de, $0099
    ld b, $06
    db $10
    ld bc, $E604
    rst $20
    ld h, e
    ld d, $82
    rla
    ld [bc], a
    ld e, c
    ld e, b
    add e
    rla
    inc bc
    ld e, b
    rla
    ld e, c
    add e
    rla
    rrca
    or $F7
    ld d, d
    ld d, $59
    ld l, e
    ld l, c
    ld l, b
    ld a, d
    ld l, e
    ld sp, hl
    ld l, b
    ld e, d
    ld l, c
    ld l, e
    add d
    rla
    rrca
    ld b, h
    ld b, [hl]
    ld b, $49
    ld l, c
    ld sp, hl
    ld l, l
    db $FD
    cp $FD
    ld l, l
    ld l, e
    ld e, c
    ld l, e
    ld e, b
    add d
    rla
    rlca
    add c
    ld b, $49
    ld e, b
    ld e, d
    ld a, d
    ld e, d
    add d
    cp $06
    db $FD
    cp $7A
    ld l, c
    jp c, $8268

    rla
    dec b
    ld b, $49
    ld a, d
    ld l, b
    ld l, e
    add d
    rla
    add e
    db $FD
    dec bc
    rla
    ld l, e
    ld a, d
    rla
    ld a, d
    ld e, c
    rla
    ld c, c
    rla
    ld l, e
    ld l, l
    add e
    rla
    ld [bc], a
    jp hl


    ld hl, sp-$7B
    rla
    ld [bc], a
    ld l, e
    ld l, c
    add d
    rla
    inc b
    ld e, b
    ld a, d
    ld sp, hl
    ld l, e
    add e
    rla
    inc bc
    cp $17
    ld l, e
    add h
    rla
    inc b
    ld a, d
    rla
    ld l, e
    ld l, b
    add d
    ld l, e
    ld [bc], a
    ld a, d
    ld l, e
    adc c
    rla
    dec b
    ld l, e
    rla
    ld h, $F9
    ld l, l
    add d
    rla
    ld [bc], a
    ld hl, sp-$02
    add e
    rla
    ld [bc], a
    cp $F8
    add d
    rla
    add hl, bc
    ld a, d
    ld e, d
    rla
    ld b, h
    ld d, $17
    ld l, e
    rla
    jp hl


    add d
    rla
    ld bc, $86FE
    rla
    ld b, $6D
    ld l, e
    ld d, [hl]
    ld d, $17
    ld a, d
    add e
    rla
    inc b
    ld sp, hl
    rla
    rla
    ld a, d
    add e
    rla
    ld c, $6B
    ld sp, hl
    ld e, c
    ld b, l
    ld d, $17
    ld l, e
    rla
    cp $17
    cp $6D
    rla
    ld l, e
    add e
    rla
    rlca
    ld e, d
    ld l, e
    ld l, c
    ld h, e
    ld d, $17
    ld a, d
    add e
    rla
    inc b
    ld l, e
    ld a, d
    ld l, e
    ld hl, sp-$7D
    rla
    rrca
    ld l, e
    rla
    ld e, b
    ld h, c
    ld d, $17
    ld e, d
    ld l, e
    ld a, d
    ld l, e
    rla
    ld l, e
    ld e, d
    ld l, e
    cp $82
    rla
    add d
    cp $03
    ld l, b
    ld [bc], a
    ld h, $88
    daa
    ld bc, $8539
    rla
    ld c, $7A
    and e
    ld d, [hl]
    ld h, e
    add b
    ld h, c
    ld [bc], a
    ld d, [hl]
    ld h, e
    sub d
    ld b, l
    ld h, $6B
    ld e, d
    add d
    ld l, e
    ld [bc], a
    ld e, d
    ld l, e
    nop
    db $10
    sub b
    ld bc, $0891
    add d
    nop
    ld bc, $82C0
    ld [$CC86], sp
    ld bc, $8400
    ld [$0001], sp
    add e
    ld [$0001], sp
    add [hl]
    call $CE01
    add d
    call $0882
    dec b
    nop
    db $DB
    reti


    ld [$86D1], sp
    rst $08
    ld bc, $82D0
    rst $08
    add e
    ld [$DB04], sp
    reti


    ld [$86D1], sp
    ld [$CB03], sp
    ld [$8300], sp
    ld [$DB04], sp
    reti


Jump_02E_45C2:
    ld [$84D1], sp
    nop
    add h
    ld [$0001], sp
    add e
    ld [$DB03], sp
    reti


    ret c

    add h
    ld [$0001], sp
    add e
    ld [$0082], sp
    add e
    ld [$DC04], sp
    jp c, $00DF

    add h
    jp nc, $0801

    add e
    nop
    add h
    ld [$0004], sp
    sub $D7
    call nc, $D384
    ld [bc], a
    ld [$8700], sp
    ld [$D903], sp
    ret c

    push de
    add l
    ld [$0001], sp
    add a
    ld [$0082], sp
    inc b
    ld [$08C1], sp
    jp nz, $0882

    ld bc, $8A00
    ld [$C106], sp
    nop
    jp nz, $0800

    nop
    add [hl]
    ld [$0084], sp
    dec b
    pop bc
    ld [$00C2], sp
    ld [$0084], sp
    add e
    ld [$0082], sp
    add d
    ld [$C103], sp
    ld [$85C2], sp
    ld [$0001], sp
    add a
    ld [$C103], sp
    nop
    jp nz, $0882

    inc b
    push bc
    ret z

    add $00
    add a
    ld [$C103], sp
    ld [$8200], sp
    ld [$C503], sp
    ret z

    add $88
    ld [$0008], sp
    db $DD
    sbc $DD
    ld [$C8C5], sp
    add $88
    ld [$C303], sp
    nop
    call nz, $0882
    inc bc
    push bc
    ret z

    add $88
    ld [$C303], sp
    nop
    call nz, $0882
    inc bc
    ret


    nop
    jp z, $0888

    ld bc, $84C3
    ld [$C503], sp
    rst $00
    add $88
    ld [$C301], sp
    add h
    nop
    inc bc
    push bc
    rst $00
    add $88
    ld [$C301], sp
    add e
    ld [$0004], sp
    push bc
    rst $00
    add $8D
    ld [$C503], sp
    rst $00
    add $8D
    ld [$0003], sp
    ld [$9200], sp
    ld [$1E00], sp
    add h
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
    ld [$4005], sp
    nop
    ld b, c
    nop
    ld b, b
    sbc c
    ld [$4004], sp
    nop
    nop
    ld b, b
    sbc d
    ld [$4003], sp
    nop
    ld b, b
    sbc c
    ld [$4004], sp
    ld [$4008], sp
    sub a
    ld [$C305], sp
    ld b, b
    ld b, b
    nop
    ld b, b
    sbc b
    ld [$4001], sp
    add l
    nop
    ld bc, $8540
    ld [$4084], sp
    ld [bc], a
    jp nz, $8B40

    ld [$4001], sp
    add l
    nop
    ld bc, $8540
    ld [$4001], sp
    add [hl]
    nop
    ld bc, $8A40
    ld [$4001], sp
    add l
    nop
    ld bc, $8540
    ld [$4001], sp
    add l
    nop
    ld bc, $8C40
    ld [$4001], sp
    add e
    nop
    ld bc, $8740
    ld [$4085], sp
    adc [hl]
    ld [$4083], sp
    ret nz

    ld h, h
    ld [$4082], sp
    sbc e
    ld [$4003], sp
    nop
    nop
    add d
    ld b, b
    ld [bc], a
    pop bc
    ld b, b
    adc c
    ld [$4003], sp
    call nz, $8B40
    ld [$4001], sp
    add [hl]
    nop
    ld bc, $8740
    ld [$4001], sp
    add e
    nop
    ld bc, $8A40
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
    add d
    nop
    ld bc, $8A40
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
    ld bc, $8B40
    ld [$4004], sp
    nop
    nop
    ld b, b
    adc d
    ld [$4004], sp
    nop
    nop
    ld b, b
    adc l
    ld [$4082], sp
    adc h
    ld [$4082], sp
    ret nz

    ld b, c
    ld [$4002], sp
    ret nz

    add d
    ld b, b
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
    ld bc, $9940
    ld [$4001], sp
    add e
    nop
    ld bc, $9A40
    ld [$C683], sp
    adc [hl]
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    rst $38
    ret nz

    ret nz

    add b
    sub h
    adc e
    cp b
    sub a
    and a
    cp a
    xor a
    cp a
    xor a
    cp a
    cp a
    add b
    and c
    cp l
    xor h
    cp h
    xor a
    cp a
    and b
    cp a
    ret nz

    add b
    rst $38
    ret nz

    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ret nz

    pop bc
    add c
    sub a
    adc e
    add c
    add c
    add c
    add b
    add b
    add b
    adc a
    add a
    rst $38
    cp $FF
    inc bc
    inc bc
    ld bc, $A1D1
    ld bc, $7101
    ld h, c
    ld sp, hl
    ld [hl], c
    cp c
    ld sp, hl
    sbc h
    adc h
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc h
    sbc a
    adc a
    rst $08
    add a
    rst $38
    ret nz

    rst $38
    ld a, a
    sbc c
    ld sp, hl
    ld [hl], l
    ld h, c
    cpl
    dec h
    ld h, l
    ld h, c
    pop hl
    pop bc
    jp $FF81


    inc bc
    rst $38
    cp $FF
    ld a, a
    rst $38
    ret nz

    add $87
    adc h
    adc h
    adc h
    adc h
    add [hl]
    add a
    sub b
    sub b
    add b
    add b
    rst $38
    cp $FF
    inc bc
    ld b, e
    ld b, c
    ld de, $0111
    ld bc, $0101
    ld bc, $0909
    add hl, bc
    add b
    add b
    sbc a
    adc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sub b
    ret nc

    sub b
    rst $38
    ret nz

    rst $38
    ld a, a
    add hl, bc
    add hl, bc
    ret


    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    add hl, bc
    dec bc
    add hl, bc
    rst $38
    inc bc
    rst $38
    cp $F3
    di
    db $FC
    db $FC
    cp $FE
    cp $FE
    rst $38
    rst $38
    cp $FE
    cp $FE
    db $FC
    db $FC
    rst $08
    rst $08
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cp a
    ccf
    ccf
    cp a
    cp a
    cp a
    ld hl, sp-$08
    db $E3
    ld [c], a
    call nz, $9FC3
    add b
    and d
    sbc h
    ld b, l
    ld a, b
    ld b, d
    add hl, sp
    inc c
    ld [hl], a
    rra
    rra
    add a
    rlca
    dec de
    db $E3
    dec h
    add hl, sp
    pop bc
    cp l
    ld b, b
    sbc [hl]
    ld [hl+], a
    call z, $E41A
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    and $E1
    rst $08
    rst $10
    sbc b
    xor b
    ld [hl], b
    db $10
    jr nz, jr_02E_4930

    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    ld h, a
    add a
    di
    db $EB
    add hl, de
    dec d
    ld c, $08
    inc b
    ld [bc], a
    rst $38

Jump_02E_4901:
    rst $38
    rst $38
    add b
    ldh [$A0], a
    ldh a, [$B0]
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    and b
    and b
    rst $38
    and b
    or b
    rst $28
    and b
    rst $38
    cp a
    ldh [$BF], a
    ldh [$BF], a
    ldh [$FA], a
    ld hl, sp-$10
    db $F4
    db $F4
    ldh a, [$E8]
    add sp, -$04
    db $FC
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02E_4930:
    ccf
    ccf
    ld e, a
    ld e, a
    sbc a
    rst $18
    ld e, a
    ccf
    cpl
    rrca
    sub a
    add a
    add a
    sub a
    rst $10
    rst $00
    ld b, h
    ld [hl], e
    nop
    scf
    ld d, b
    ld b, a
    ld h, [hl]
    ld b, l
    cp c
    xor b
    rst $18
    call nc, $D1DF
    rst $28

jr_02E_494F:
    db $EC
    ld [bc], a
    db $F4
    ld a, [bc]
    db $F4
    ld a, [bc]
    ldh a, [$36]
    jp nz, $25ED

    ei
    inc bc
    ei
    ld c, e
    rst $30
    or a
    jr nz, jr_02E_49A2

    ld h, b
    nop
    ld d, b
    jr nz, jr_02E_494F

    ret nc

    cp e
    or a
    cp a
    xor b
    rst $18
    pop de
    rst $28
    db $EC
    inc b
    ld [bc], a
    ld b, $00
    ld a, [bc]
    inc b
    rla
    dec bc
    db $DD
    jp hl


    db $FD
    dec l
    ei
    ld c, e
    rst $30
    or a
    cp a
    rst $38
    cp a
    rst $38
    ret nz

    cp a
    rst $38
    rst $38
    and e
    and d
    db $E3
    and e
    ldh [$A0], a
    rst $38
    rst $38
    rst $38
    and b
    rst $38
    and b
    and b
    and b
    rst $38
    rst $38
    and e
    and d
    db $E3
    and e
    ldh [$A0], a
    rst $38
    rst $38
    nop
    nop

jr_02E_49A2:
    nop
    nop
    inc a
    nop
    ld a, d
    inc a
    db $FD
    ld h, [hl]
    rst $20
    ld a, [de]
    ld b, e
    inc a
    ld h, [hl]
    jr jr_02E_4A2F

    nop
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    inc a
    cp l
    ld e, d
    rst $38
    inc a
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld h, [hl]
    jr jr_02E_4A41

    nop
    rst $38
    ld a, [hl]
    rst $38
    ld a, d
    ei
    inc [hl]
    rst $38
    jr c, jr_02E_4A4B

    nop
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    rst $38
    halt
    halt
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld a, [hl]
    inc a
    rst $38
    ld l, [hl]
    rst $38
    ld a, [hl]
    ld a, a
    inc a
    ld a, [hl]
    jr jr_02E_4A7F

    inc h
    rst $38
    ld e, d
    rst $38
    ld h, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    inc a
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    inc h
    rst $38
    jr @+$01

    ld h, [hl]
    rst $38
    ld a, h
    rst $38
    jr c, jr_02E_4A9B

    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    inc [hl]
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

jr_02E_4A2F:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    ld l, a
    ld a, $F7
    ld a, b
    ld a, c
    ld [hl], $31
    ld c, $31

jr_02E_4A41:
    ld c, $7E
    db $10
    db $FC
    jr c, @+$01

    inc l
    cp [hl]
    ld e, l
    ld a, a

jr_02E_4A4B:
    jr jr_02E_4A89

    nop
    ld a, [hl]
    nop
    rst $38
    ld b, d
    cp $2C
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
    ld a, [hl]
    nop
    db $FC
    ld e, b
    ld a, [hl]
    inc [hl]
    ld a, [hl]
    inc d
    halt
    jr z, @+$80

    jr nc, @+$3E

    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, [hl]
    inc a
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02E_4A7F:
    nop
    ld sp, $7E0E
    nop
    db $FC

jr_02E_4A85:
    jr z, jr_02E_4A85

    inc e
    ld a, l

jr_02E_4A89:
    or d
    cp $18
    inc a
    nop
    ld a, [hl]
    nop
    rst $38
    ld b, d
    rst $38
    inc [hl]
    halt
    nop
    nop
    nop
    nop
    nop
    nop

jr_02E_4A9B:
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    and h
    ld [bc], a
    sbc e
    ld [$8183], sp
    add h
    ld [$8183], sp
    add [hl]
    ld [$8184], sp
    ld bc, $8309
    add c
    add d
    ld [$8183], sp
    add e
    ld [$C301], sp
    add e
    add c
    add [hl]
    ld [$8184], sp
    ld bc, $8309
    add c
    add d
    ld [$8185], sp
    ld bc, $8308
    add c
    adc b
    ld [$8183], sp
    inc bc
    ld [$0909], sp
    add e
    ld [$8104], sp
    ld [$0809], sp
    add d
    add c
    ld bc, $8309
    add c
    add l
    ld [$8189], sp
    add d
    ld [$818A], sp
    ld [bc], a
    ld [$8CC1], sp
    add c
    add d
    ld [$8183], sp
    ld bc, $8608
    add c
    add e
    ld [$818B], sp
    add d
    ld [$8184], sp
    ld bc, $8508
    add c
    add l
    ld [$8185], sp
    adc c
    ld [$8183], sp
    adc d
    ld [$8183], sp
    sbc b
    ld [$8182], sp
    ld bc, $8308
    add c
    ld bc, $93C0
    ld [$8184], sp
    ret nz

    ld b, [hl]
    ld [$8184], sp
    ld [bc], a
    ld [$85C2], sp
    add c
    adc [hl]
    ld [$8182], sp
    add d
    ld [$0903], sp
    ld [$8508], sp
    add c
    adc l
    ld [$8182], sp
    ld bc, $8A08
    add c
    adc l
    ld [$8182], sp
    inc bc
    ld [$0881], sp
    add e
    add c
    ld bc, $8408
    add c
    adc l
    ld [$8182], sp
    ld bc, $8408
    add c
    ld bc, $8508
    add c
    adc [hl]
    ld [$8182], sp
    inc b
    ld [$8181], sp
    ld [$8186], sp
    adc a

jr_02E_4B61:
    ld [$8102], sp
    ld [$8182], sp
    ld bc, $8608
    add c
    adc a
    ld [$8101], sp
    add h
    ld [$0983], sp
    add [hl]
    ld [$C401], sp
    adc e
    ld [$8183], sp
    add d
    ld [$8186], sp
    add e
    ld [$0083], sp
    adc c
    ld [$818B], sp
    adc a
    ld [$8183], sp
    ld [bc], a
    ld [$9581], sp
    ld [$8185], sp
    and c
    ld [$0D00], sp
    ld [hl], l
    nop
    ld [bc], a
    ld a, [bc]
    inc b
    ld bc, $7A0E
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, h
    ld h, a
    ld a, d
    ld a, c
    ld [hl], $48
    ld c, c
    ld a, [hl-]
    adc d
    db $FD
    db $10
    ld l, $2F
    ld c, d
    db $FD
    jp c, Jump_02E_6BFD

    db $FD
    cp d
    cp e
    cp h
    ld de, $3EFD
    ccf
    ld [hl], a
    add h
    db $FD
    dec e
    dec sp
    db $FD
    ld [bc], a
    db $FD
    ld hl, $4ED9
    ld c, a
    ld a, d
    ld a, e
    inc bc
    ld e, e
    inc bc
    ld c, e

jr_02E_4BCF:
    inc bc
    jr jr_02E_4BCF

    ld sp, $5E16
    ld e, a
    adc d
    adc e
    db $FD
    ld [bc], a
    db $FD
    ld [bc], a
    db $FD
    jr z, jr_02E_4B61

    db $FD
    inc c
    ld [hl], $6E
    ld l, a
    cp h
    ld l, e
    ld a, [hl-]
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    dec sp
    inc l
    add e
    db $FD
    inc bc
    inc d
    inc a
    db $FD
    add l
    ld [$FD03], sp
    inc a
    ld a, c
    add d
    db $FD
    rrca
    inc h
    ld c, h
    db $FD
    add a
    adc b
    adc c
    dec sp
    ld e, e
    inc bc
    ld c, h
    adc b
    adc c
    db $FD
    inc [hl]
    ld e, h
    add d
    db $FD
    dec bc
    ld [$4BFD], sp
    db $FD
    ld b, [hl]
    ld e, h
    db $FD
    ld [bc], a
    db $FD
    jr nz, jr_02E_4C85

    add d
    db $FD
    ld bc, $8419
    db $FD
    ld c, $6C
    inc bc
    ld l, e
    db $FD
    jr nc, @+$41

    jp c, $29FD

    db $FD
    ld a, [hl]
    ld a, a
    db $FD
    ld c, h
    add e
    db $FD
    ld [bc], a
    ld b, b
    ld c, a
    add d
    db $FD
    ld bc, $8830
    db $FD
    rrca
    ld hl, $FD3A
    ld l, e
    ld b, b
    inc a
    dec a
    ld a, $3F
    ld a, c
    ld a, [de]
    ld a, [hl-]
    ld a, [hl]
    ld sp, $884A

Call_02E_4C4A:
    db $FD
    dec bc
    ld a, [hl+]
    ld c, d
    adc [hl]
    ld de, $FD3B
    ld e, [hl]
    ld e, a
    inc bc
    adc b
    adc c
    add e
    db $FD
    inc b
    ld c, c
    ld h, $15
    ld c, e
    add a
    db $FD
    ld c, $19
    db $FD
    db $FD
    ld [hl], $25
    ld e, l
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ld e, e
    add hl, hl
    add d
    db $FD
    inc b
    ld l, e
    dec [hl]
    ld l, l
    ld b, $89
    db $FD
    rrca
    xor l
    ld b, l
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld l, d
    ld a, d
    ld a, e
    ld a, h

jr_02E_4C85:
    ld a, l
    ld a, [hl]
    ld a, a
    nop
    ld a, [de]
    and h
    ld [bc], a
    sbc e
    ld [$8183], sp
    add h
    ld [$8183], sp
    add [hl]
    ld [$8184], sp
    ld bc, $8309
    add c
    add d
    ld [$8183], sp
    add e
    ld [$C301], sp
    add e
    add c
    add [hl]
    ld [$8184], sp
    ld bc, $8309
    add c
    add d
    ld [$8185], sp
    ld bc, $8308
    add c
    adc b
    ld [$8183], sp
    inc bc
    ld [$0909], sp
    add e
    ld [$8104], sp
    ld [$0809], sp
    add d
    add c
    ld bc, $8309
    add c
    add l
    ld [$8189], sp
    add d
    ld [$818A], sp
    ld [bc], a
    ld [$8CC1], sp
    add c
    add d
    ld [$8183], sp
    ld bc, $8608
    add c
    add e
    ld [$818B], sp
    add d
    ld [$8184], sp
    ld bc, $8508
    add c
    add l
    ld [$8185], sp
    adc c
    ld [$8183], sp
    adc d
    ld [$8183], sp
    sbc b
    ld [$8182], sp
    ld bc, $8308
    add c
    ld bc, $93C0
    ld [$8184], sp
    ret nz

    ld b, [hl]
    ld [$8184], sp
    ld [bc], a
    ld [$85C2], sp
    add c
    adc [hl]
    ld [$8182], sp
    add d
    ld [$0903], sp
    ld [$8508], sp
    add c
    adc l
    ld [$8182], sp
    ld bc, $8A08
    add c
    adc l
    ld [$8182], sp
    inc bc
    ld [$0881], sp
    add e
    add c
    ld bc, $8408
    add c
    adc l
    ld [$8182], sp
    ld bc, $8408
    add c
    ld bc, $8508
    add c
    adc [hl]
    ld [$8182], sp
    inc b
    ld [$8181], sp
    ld [$8186], sp
    adc a
    ld [$8102], sp
    ld [$8182], sp
    ld bc, $8608
    add c
    adc a
    ld [$8101], sp
    add h
    ld [$0983], sp
    sub d
    ld [$8183], sp
    add d
    ld [$8186], sp
    add e
    ld [$C403], sp
    nop
    nop
    adc c
    ld [$818B], sp
    adc a
    ld [$8183], sp
    ld [bc], a
    ld [$9581], sp
    ld [$8185], sp
    and c
    ld [$1E00], sp
    halt
    ld [bc], a
    sbc a
    ld [$818C], sp
    ld bc, $8508
    add c
    ld [bc], a
    ld [$8AC1], sp
    ld [$818C], sp
    ld bc, $8708
    add c
    adc d
    ld [$8185], sp
    ld bc, $8609
    add c
    ld bc, $8508
    add c
    adc h
    ld [$8184], sp
    add e
    add hl, bc
    add l
    add c
    ld bc, $8508
    add c
    adc h
    ld [$8184], sp
    ld [bc], a
    add hl, bc
    add c
    add e
    ld [$8183], sp
    ld bc, $8408
    add c
    adc l
    ld [$8185], sp
    add e
    ld [$8184], sp
    ld bc, $8508
    add c
    adc h
    ld [$8185], sp
    add e
    ld [$8184], sp
    ld b, $08
    add c
    add c
    add hl, bc
    add c
    add c
    adc l
    ld [$8184], sp
    add e
    ld [$8186], sp
    inc b
    add hl, bc
    add c
    add hl, bc
    add c
    adc h
    ld [$8185], sp
    add e
    ld [$8187], sp
    inc bc
    add hl, bc
    add c
    add c
    adc h
    ld [$8186], sp
    sbc b
    ld [$8187], sp
    inc bc
    add hl, bc
    add c
    add c
    sub h
    ld [$8187], sp
    inc bc
    add hl, bc
    add c
    add c
    sub h
    ld [$8183], sp
    ld bc, $8409
    add c
    sbc e
    ld [$8183], sp
    sub e
    ld [$C003], sp
    ld [$8308], sp
    add c
    ld bc, $8408
    add c
    add h
    ld [$8183], sp
    add d
    ld [$8185], sp
    ld bc, $8508
    add c
    add d
    ld [$8182], sp
    ld bc, $8409
    add c
    add h
    ld [$8184], sp
    add d
    ld [$8104], sp
    ld [$0881], sp
    add e
    add c
    inc b
    ld [$0881], sp
    add c
    add d
    ld [$8105], sp
    add hl, bc
    add hl, bc
    add c
    add hl, bc
    adc e
    add c
    ld bc, $8508
    add c
    ld b, $08
    add c
    ld [$0881], sp
    add c
    add d
    ld [$8182], sp
    ld bc, $9309
    add c
    ld bc, $8508
    add c
    adc d
    ld [$818E], sp
    ld bc, $8508
    add c
    sbc a
    ld [$1700], sp
    rst $08
    nop
    inc c
    inc bc
    dec hl
    ld bc, $1F01
    add [hl]
    ld a, $03
    ccf
    ld [$893D], a
    ld a, $01
    dec l
    add e
    ld e, $02
    rra
    ld c, a
    add l
    ld c, [hl]

jr_02E_4E85:
    inc bc
    dec hl
    call c, $8906
    ld c, [hl]
    rlca
    dec a
    dec l
    ld l, $C8
    rra
    ld d, [hl]
    ld [hl], a
    add e
    jr z, jr_02E_4E99

    ld e, l
    jr z, jr_02E_4E85

jr_02E_4E99:
    add d
    jr z, jr_02E_4EA0

    dec c
    ld c, $0E
    rrca

jr_02E_4EA0:
    add h
    jr z, jr_02E_4EB0

    ld c, l
    dec a
    ld a, $1D
    reti


    ld c, $0F
    jr z, jr_02E_4EB9

    rrca
    ld l, l
    jr z, jr_02E_4F27

jr_02E_4EB0:
    add d
    jr z, jr_02E_4EB9

    dec e
    ld e, $1E
    reti


    rrca
    halt

jr_02E_4EB9:
    add e
    jr z, jr_02E_4EBF

    ld b, $4E
    dec e

jr_02E_4EBF:
    add d
    ld e, $05
    reti


    ld c, $D8
    reti


    rrca
    add d
    jr z, jr_02E_4ECD

    halt
    dec c
    ret c

jr_02E_4ECD:
    add e
    ld e, $08
    rra
    jr z, jr_02E_4EFB

    ld [hl], a
    halt
    jr z, @+$5E

    dec e
    add [hl]
    ld e, $01
    reti


    add e
    ld c, $01
    ret c

    add h
    ld e, $01
    rra
    add h
    jr z, jr_02E_4EED

    halt
    ld h, a
    dec e
    ret


    ld l, $C8

jr_02E_4EED:
    adc h
    ld e, $02
    reti


    rrca
    add h
    jr z, jr_02E_4EFA

    ld h, a
    dec e
    cpl
    ld a, $2D

jr_02E_4EFA:
    adc h

jr_02E_4EFB:
    ld e, $03
    ld l, $2F
    ld e, l
    add d
    rst $18
    rlca
    jr z, jr_02E_4F12

    ld e, $3F
    ld c, [hl]
    dec a
    dec l
    adc d
    ld l, $04
    cpl
    ld a, $3F
    ld l, l
    add d

jr_02E_4F12:
    jr z, @+$06

    ld h, a
    dec bc
    inc c
    adc $82
    rst $18
    ld bc, $8A3D
    ld a, $03
    ccf
    rst $18
    ld l, h
    add d
    jr z, jr_02E_4F2D

    ld a, [hl]
    ld a, a

jr_02E_4F27:
    dec de
    inc e
    sbc $FB
    jr z, jr_02E_4F59

jr_02E_4F2D:
    adc b
    ld c, [hl]
    add d
    rst $08
    ld bc, $832B
    jr z, jr_02E_4F3C

    jp c, $8F8E

    dec hl
    inc l
    rrca

jr_02E_4F3C:
    add e
    jr z, jr_02E_4F40

    ld [hl], a

jr_02E_4F40:
    add l
    jr z, @+$03

    ld [$2886], a
    inc bc
    call $DCDF
    add e
    jr z, jr_02E_4F4E

    reti


jr_02E_4F4E:
    adc a
    ld c, $07
    rrca
    db $DD
    ld [$DBEC], a
    jp c, $00DF

jr_02E_4F59:
    inc d
    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $00A0
    dec b
    ld [$0D0C], sp
    ld c, $0F
    adc l
    nop
    ld [$0908], sp
    jr jr_02E_4F8B

    dec e
    ld e, $1F
    ld e, a
    adc c
    nop
    dec bc
    ld [$0B0A], sp
    jr jr_02E_4F94

    jr z, jr_02E_4FA9

    dec l
    ld l, $2F
    ld l, a
    add a
    nop
    dec c
    ld [$180E], sp
    ld a, [de]
    dec de
    jr z, jr_02E_4FB4

jr_02E_4F8B:
    jr c, jr_02E_4FC9

    dec a
    ld a, $3F
    ld a, a
    add l
    nop
    rrca

jr_02E_4F94:
    ld [$1809], sp
    ld e, $28
    ld a, [hl+]
    dec hl
    jr c, jr_02E_4FD6

    ld c, e
    ld bc, $9B9A
    adc [hl]
    sbc [hl]
    add h
    nop
    add hl, bc
    ld d, h
    jr @+$1B

jr_02E_4FA9:
    jr z, jr_02E_4FD9

    jr c, jr_02E_4FE7

    dec sp
    ld c, e
    add d
    ld bc, $8E04
    xor d

jr_02E_4FB4:
    xor e
    sbc [hl]
    add l
    nop
    ld b, $64
    jr z, jr_02E_4FE5

    jr c, jr_02E_4FFC

    ld c, e
    add e
    ld bc, $A003
    and d
    rrca
    adc b
    nop
    ld b, $74

jr_02E_4FC9:
    jr c, @+$3B

    ld c, e
    ld bc, $83A0
    and c
    dec b
    ld a, [$1FB2]
    dec c
    rrca

jr_02E_4FD6:
    add [hl]
    nop
    ld [bc], a

jr_02E_4FD9:
    add h
    ld l, e
    add e
    ld bc, $B00A
    ldh a, [$93]
    pop bc
    sub h
    or d
    cpl

jr_02E_4FE5:
    dec e
    rra

jr_02E_4FE7:
    rrca
    add [hl]
    nop
    rrca
    add l
    sbc d
    sbc e
    sbc h
    ret nz

    pop bc
    jp nz, $B001

    or d
    ccf
    dec l
    cpl
    rra
    ld e, a
    add [hl]
    nop

jr_02E_4FFC:
    dec b
    xor d
    xor e
    xor h
    add l
    sbc e
    add d
    ld bc, $B007
    or d
    ld c, h
    dec a
    ccf
    cpl
    ld l, a
    adc d
    nop
    ld a, [bc]
    xor e
    sub [hl]
    ld bc, $F9C0
    and d
    ld bc, $3F4C
    ld a, a
    adc e
    nop
    add hl, bc
    sub l
    add l
    ld bc, $F9C0
    and c
    and d
    ld l, h
    adc a
    adc h
    nop
    ld [$8595], sp
    ld bc, $C1C0
    jp nz, $8F7C

    adc l
    nop
    rlca
    sub l
    sub [hl]
    sub a
    sbc b
    sbc h
    adc [hl]
    sbc [hl]
    adc [hl]
    nop
    dec b
    sub l
    and a
    xor b
    xor h
    sbc [hl]
    ret nz

    ld b, [hl]
    nop
    nop
    ld c, $5E
    ld bc, $0897
    add h
    nop
    add d
    ld [$0001], sp
    add a
    ld [$0006], sp
    ld [$0008], sp
    ld [$0108], sp
    nop
    add a
    ld [$0006], sp
    ld [$0008], sp
    ld [$0108], sp
    nop
    add a
    ld [$C806], sp
    ld [$0008], sp
    ld [$0108], sp
    nop
    add a
    ld [$0006], sp
    ld [$0008], sp
    ld [$0108], sp
    nop
    add a
    ld [$0006], sp
    ld [$0008], sp
    ld [$8708], sp
    nop
    ld bc, $83C6
    nop
    inc b
    rst $00
    ld [$0008], sp
    add a
    ld [$0006], sp
    ld [$0008], sp
    ld [$8608], sp
    nop
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$0108], sp
    nop
    add h
    ld [$0006], sp
    ld [$0008], sp
    ld [$0308], sp
    nop
    ld [$8408], sp
    nop
    ld [bc], a
    call nz, $8200
    ld [$0006], sp
    ld [$0008], sp
    ld [$0108], sp
    nop
    add h
    ld [$0003], sp
    ld [$8408], sp
    nop
    add d
    ld [$C501], sp
    add l
    nop
    add e
    ld [$0003], sp
    ld [$8700], sp
    ld [$C305], sp
    nop
    nop
    ld [$8B00], sp
    ld [$0003], sp
    ld [$8400], sp
    ld [$0088], sp
    ld [bc], a
    ld [$8B00], sp
    ld [$0003], sp
    ld [$8600], sp
    ld [$C201], sp
    add l
    nop
    ld [bc], a
    ld [$8600], sp
    ld [$0001], sp
    add e
    ld [$0004], sp
    ld [$0008], sp
    add [hl]
    ld [$0001], sp
    add e
    ld [$0002], sp
    ld [$0082], sp
    add [hl]
    ld [$0001], sp
    add e
    ld [$0002], sp
    ld [$0082], sp
    add [hl]
    ld [$0085], sp
    inc b
    ld [$0000], sp
    ret nz

    add e
    ld [$C103], sp
    nop
    nop
    add l
    ld [$0083], sp
    sub b
    ld [$1400], sp
    or h
    nop
    add hl, bc
    inc d
    ld e, b
    ld [bc], a
    add d
    ld a, [hl+]
    inc bc
    cp l
    cp [hl]
    cp a
    sub c
    ld a, [hl+]
    inc bc
    call $CFCE
    sub c
    ld a, [hl+]
    inc bc
    db $DD
    sbc $DF
    adc a
    ld a, [hl+]
    rlca
    ld [$ED7A], sp
    xor $EF
    dec de
    inc c
    adc l
    ld a, [hl+]
    ld [bc], a
    add hl, hl
    dec c
    add e
    ld e, $02
    rrca
    dec hl
    adc l
    ld a, [hl+]
    ld [bc], a
    adc c
    dec e
    add e
    ld e, $02
    rra
    ld a, d
    adc l
    ld a, [hl+]
    ld [bc], a
    add hl, hl
    dec e
    add e
    ld e, $02
    rra
    adc c
    adc l
    ld a, [hl+]
    ld [bc], a
    adc c
    dec e
    add e
    ld e, $02
    rra
    ld a, e
    adc l
    ld a, [hl+]
    ld [bc], a
    ld a, d
    dec e
    add e
    ld e, $02
    rra
    adc c
    adc l
    ld a, [hl+]
    ld [bc], a
    ld a, e
    dec e
    add e
    ld e, $02
    rra
    dec hl
    adc l
    ld a, [hl+]
    ld [bc], a
    sbc l
    dec l
    add e
    ld l, $02
    cpl
    sbc a
    adc [hl]
    ld a, [hl+]
    add d
    ld a, [hl-]
    inc bc
    sbc [hl]
    ld a, [hl-]
    sbc [hl]
    ret nz

    ld e, c
    ld a, [hl+]
    inc bc
    cp l
    cp [hl]
    cp a
    sub c
    ld a, [hl+]
    inc bc
    call $CFCE
    sub c
    ld a, [hl+]
    inc bc
    db $DD
    sbc $DF
    adc l
    ld a, [hl+]
    ld [$7D08], sp
    ld a, [hl]
    adc c
    db $ED
    xor $EF
    inc c
    adc h
    ld a, [hl+]
    ld [bc], a
    add hl, hl
    dec c
    add d
    ld c, $04
    adc c
    ld e, $0F
    adc a
    adc e
    ld a, [hl+]
    inc bc
    ld [$1D7D], sp
    add h
    ld e, $02
    rra
    adc d
    adc e
    ld a, [hl+]
    ld [bc], a
    add hl, hl
    dec c
    add d
    ld e, $83
    ld l, $02
    cpl
    sbc a
    adc e
    ld a, [hl+]
    ld a, [bc]
    ld a, d
    dec e
    ld e, $1F
    ld a, e
    sbc [hl]
    adc d
    sbc [hl]
    ld a, a
    adc c
    adc d
    ld a, [hl+]
    inc bc
    ld a, e
    dec e
    ld e, $85
    ld c, $02
    rrca
    adc a
    adc d
    ld a, [hl+]
    ld [bc], a
    add hl, hl
    dec l
    add [hl]
    ld e, $02
    rra
    ld a, e
    adc e
    ld a, [hl+]
    ld bc, $869D
    ld l, $02
    cpl
    sbc a
    adc e
    ld a, [hl+]
    ld [$9E9D], sp
    adc d
    sbc [hl]
    ld a, e
    adc d
    sbc [hl]
    sbc a
    cp l
    ld a, [hl+]
    nop
    inc d
    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $8EB4
    inc b
    ld a, e
    adc [hl]
    adc [hl]
    adc e
    adc a
    adc [hl]
    ld b, $8B
    ld [$1A19], sp
    dec de
    inc c
    adc b
    adc [hl]
    ld bc, $837A
    adc [hl]
    ld [$087B], sp
    add hl, de
    ld a, [de]
    dec c
    ld c, $0F
    dec de
    adc d
    adc [hl]
    ld a, [bc]
    ld [$1A19], sp
    ld e, a
    dec c
    ld c, $3C
    ld e, $1F
    dec hl
    add [hl]
    adc [hl]
    ld c, $7B
    adc c
    ld [$1A19], sp
    dec c
    ld c, $6F
    inc a
    ld e, $4D
    ld l, $2F
    dec sp
    add l
    adc [hl]
    rrca
    ld a, d
    ld [$5F19], sp
    dec c
    ld c, $3C
    ld e, $7C
    ld e, $6C
    cpl
    ld a, [hl-]
    dec sp
    adc e
    add l
    adc [hl]
    dec b
    ld [$0D19], sp
    ld l, a
    inc a
    add l
    ld e, $06
    ld l, h
    dec de
    adc e
    adc c
    adc [hl]
    ld a, e
    add h
    adc [hl]
    inc b
    add hl, hl
    dec c
    inc a
    ld a, h
    add [hl]
    ld e, $05
    ld l, h
    rrca
    dec de
    inc c
    adc e
    add l
    adc [hl]
    ld [bc], a
    add hl, sp
    dec l
    add e
    ld l, $01
    ld c, h
    add l
    ld e, $04
    dec a
    rrca
    dec de
    inc c
    add l
    adc [hl]
    ld [bc], a
    adc e
    add hl, sp
    add e
    ld a, [hl-]
    inc bc
    dec l
    ld l, $4C
    add h
    ld e, $04
    dec a
    rrca
    dec de
    inc c
    add l
    adc [hl]
    ld [bc], a
    ld a, e
    adc c
    add d
    adc e
    inc b
    adc [hl]
    ld a, [hl-]
    dec l
    ld c, h
    add e
    ld e, $04
    adc h
    dec a
    ld e, l
    ld a, a
    adc c
    adc [hl]
    inc c
    ld a, d
    adc e
    add hl, sp
    dec l
    ld c, h
    ld e, $6C
    ld e, e
    xor e
    ld l, l
    adc a
    adc c
    add a
    adc [hl]
    ld b, $89
    adc [hl]
    adc [hl]
    ld a, d
    add hl, sp
    dec e
    add d
    ld e, $04
    ld a, h
    ld c, l
    cpl
    dec sp
    adc h
    adc [hl]
    ld [bc], a
    add hl, sp
    dec l
    add e
    ld l, $03
    cpl
    dec sp
    adc e
    adc l
    adc [hl]
    ld bc, $8339
    ld a, [hl-]
    ld [bc], a
    dec sp
    ld a, e
    adc a
    adc [hl]
    inc bc
    ld a, e
    adc [hl]
    adc c
    xor l
    adc [hl]
    nop
    inc d
    sub b
    ld bc, $0895
    sub d
    add c
    add d
    ld [$8102], sp
    ret nz

    add d
    ld [$8101], sp
    add a
    ld [$8101], sp
    add h
    ld [$8101], sp
    add h
    ld [$818E], sp
    ld [bc], a
    ld [$8281], sp
    ld [$8102], sp
    ld [$818E], sp
    ld [bc], a
    ld [$8281], sp
    ld [$8102], sp
    ld [$8182], sp
    ld bc, $8308
    add c
    ld bc, $8308
    add c
    ld bc, $8308
    add c
    ld [bc], a
    ld [$8281], sp
    ld [$8102], sp
    ld [$8190], sp
    add d
    ld [$8102], sp
    ld [$8190], sp
    add d
    ld [$8102], sp
    ld [$8190], sp
    add d
    ld [$8102], sp
    ld [$8182], sp
    ld bc, $8308
    add c
    ld bc, $8308
    add hl, bc
    ld bc, $8308
    add c
    ld [bc], a
    ld [$8281], sp
    ld [$8102], sp
    ld [$8186], sp
    ld bc, $8309
    add c
    ld bc, $8509
    add c
    add d
    ld [$8102], sp
    ld [$8186], sp
    ld bc, $8309
    add c
    ld bc, $8509
    add c
    add d
    ld [$8102], sp
    ld [$8186], sp
    ld bc, $8309
    add c
    ld bc, $8509
    add c
    add d
    ld [$8102], sp
    ld [$8182], sp
    ld bc, $8308
    add c
    ld bc, $8308
    add hl, bc
    ld bc, $8308
    add c
    ld [bc], a
    ld [$8281], sp
    ld [$8102], sp
    ld [$8186], sp
    ld bc, $8709
    add c
    ld [bc], a
    ld [$8281], sp
    ld [$8102], sp
    ld [$8186], sp
    ld bc, $8909
    add c
    add d
    ld [$8102], sp
    ld [$8186], sp
    ld bc, $8709
    add c
    ld [bc], a
    ld [$8281], sp
    ld [$8101], sp
    adc c
    ld [$8101], sp
    add [hl]
    ld [$8101], sp
    add d
    ld [$8192], sp
    sub l
    ld [$0F00], sp
    add a
    nop
    inc b
    dec b
    pop hl
    nop
    ld b, $7D
    ld a, [hl]
    adc d
    ld a, e
    ld a, [hl]
    adc d
    add d
    ld a, [hl]
    add hl, bc
    ld a, e
    ld a, [hl]
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, a
    adc l
    inc a
    add [hl]
    db $FD
    db $10
    dec a
    ld e, c
    inc a
    db $FD
    dec a
    adc d
    ld a, a
    adc d
    db $FD
    ld c, c
    adc d
    ld e, e
    db $FD
    ld e, c
    db $FD
    ld c, d
    add d
    db $FD
    ld a, [bc]
    ld e, e
    db $FD
    adc c
    adc a
    ld a, l
    ld c, h
    db $FD
    dec a
    ld l, d
    ld c, h
    add [hl]
    db $FD
    dec c
    ld c, l
    adc d
    ld a, a
    ld a, l
    ld c, c
    adc e
    db $FD
    adc d
    ld l, d
    ld c, d
    ld e, e
    ld l, e
    db $FD
    add d
    adc e
    dec b
    adc c
    ld a, e
    adc d
    ld a, l
    inc a
    add e
    db $FD
    inc bc
    dec a
    adc e
    inc a
    add e
    db $FD
    rrca
    dec a
    ld e, e
    adc c
    adc a
    ld a, l
    db $FD
    ld l, e
    db $FD
    adc c
    db $FD
    adc e
    db $FD
    ld c, c
    adc e
    ld c, e
    add d
    db $FD
    inc bc
    dec a
    adc a
    add hl, hl
    add l
    db $FD
    inc b
    ld c, d
    db $FD
    ld e, c
    inc a
    add d
    db $FD
    inc b
    ld c, e
    db $FD
    ld a, a
    ld a, l
    add e
    db $FD
    ld c, $4A
    db $FD
    adc e
    db $FD
    ld l, d
    db $FD
    ld e, c
    ld a, d
    adc e
    db $FD
    adc a
    add hl, hl
    db $FD
    ld e, a
    add e
    db $FD
    inc bc
    ld e, c
    db $FD
    ld e, c
    add l
    db $FD
    inc b
    adc d
    add hl, hl
    db $FD
    ld l, a
    add e
    db $FD
    dec b
    ld c, d
    ld c, h
    ld l, d
    db $FD
    adc e
    add e
    db $FD
    inc bc
    ld a, a
    adc d
    ld c, h
    add e
    db $FD
    dec b
    ld c, l
    adc e
    adc e
    ld c, d
    ld c, h
    add d
    db $FD
    ld [bc], a
    ld e, c
    db $FD
    add d
    adc d
    add d
    adc c
    ld [$FD8B], sp
    ld e, c
    inc a
    dec a
    ld e, c
    ld c, d
    ld e, e
    add e
    db $FD
    inc bc
    adc a
    add hl, hl
    ld e, h
    add l
    db $FD
    inc b
    ld c, l
    ld l, e
    rst $30
    inc a
    add d
    db $FD
    rlca
    ld c, l
    adc a
    add hl, sp
    ld a, [hl-]
    adc e
    ld a, [hl-]
    adc d
    add d
    adc e
    add d
    ld a, [hl-]
    add d
    adc d
    add e
    ld a, [hl-]
    ld bc, $009F
    inc d
    ld e, b
    ld [bc], a
    adc e
    ld [$C184], sp
    sub b
    ld [$0084], sp
    sub b
    ld [$0083], sp
    add [hl]
    ld [$0082], sp
    add d
    jp nz, $0886

    add h
    nop
    add [hl]
    ld [$C284], sp
    add [hl]
    ld [$0084], sp
    add [hl]
    ld [$C283], sp
    ld bc, $8600
    ld [$0084], sp
    add [hl]
    ld [$C201], sp
    add e
    nop
    add a
    ld [$0083], sp
    sub c
    ld [$0084], sp
    sub c
    ld [$0084], sp
    sub b
    ld [$0086], sp
    adc a
    ld [$0085], sp
    add d
    ld [$C201], sp
    add e
    nop
    adc c
    ld [$0085], sp
    add d
    ld [$C284], sp
    adc c
    ld [$0084], sp
    add e
    ld [$0001], sp
    add e
    jp nz, $0889

    add h
    nop
    add e
    ld [$0001], sp
    add e
    jp nz, $0889

    add h
    nop
    add e
    ld [$0001], sp
    add e
    jp nz, $0889

    add e
    nop
    add h
    ld [$C283], sp
    adc d
    ld [$0083], sp
    add h
    ld [$0083], sp
    adc c
    ld [$0084], sp
    adc a
    ld [$0084], sp
    sub b
    ld [$0084], sp
    sub b
    ld [$0084], sp
    add l
    ld [$C283], sp
    add e
    nop
    add l
    ld [$0084], sp
    add l
    ld [$C286], sp
    add [hl]
    ld [$0083], sp
    add l
    ld [$C286], sp
    add [hl]
    ld [$0084], sp
    add h
    ld [$C286], sp
    add [hl]
    ld [$0085], sp
    add e
    ld [$C286], sp
    add [hl]
    ld [$0085], sp
    add e
    ld [$C286], sp
    add a
    ld [$0084], sp
    add e
    ld [$C201], sp
    add e
    nop
    adc c
    ld [$0084], sp
    add e
    ld [$C282], sp
    ld [bc], a
    nop
    jp nz, $0889

    add h
    nop
    add e
    ld [$C284], sp
    adc d
    ld [$C083], sp
    add e
    ld [$1E00], sp
    add h
    inc bc
    sbc a
    ld [$8182], sp
    ld bc, $8409
    add c
    ld bc, $8708
    add c
    ld bc, $8A08
    add c
    add l
    ld [$0982], sp
    add l
    add c
    ld bc, $8308
    add c
    inc b
    ld [$8181], sp
    ld [$8183], sp
    ld bc, $8609
    add c
    add h
    ld [$8182], sp
    ld bc, $8F09
    add c
    inc bc
    add hl, bc
    add c
    add hl, bc
    add l
    add c
    add h
    ld [$818B], sp
    ld bc, $8708
    add c
    inc bc
    add hl, bc
    ld [$8408], sp
    add c
    add h
    ld [$8189], sp
    add d
    add hl, bc
    add h
    add c
    ld bc, $8708
    add c
    add d
    ld [$8103], sp
    ld [$82C0], sp
    ld [$8186], sp
    ld bc, $8308
    add c
    ld bc, $8409
    add c
    ld bc, $8C08
    add c
    add d
    ld [$8182], sp
    ld bc, $8308
    add c
    ld bc, $9308
    add c
    add h
    ld [$8189], sp
    ld [bc], a
    ld [$8509], sp
    add c
    ld bc, $8B08
    add c
    add d
    ld [$8182], sp
    ld bc, $8608
    add c
    ld bc, $8609
    add c
    ld bc, $8B08
    add c
    add d
    ld [$8190], sp
    ld bc, $8B08
    add c
    add d
    ld [$8190], sp
    ld bc, $8B08
    add c
    and b
    ld [$819C], sp
    add d
    ld [$819C], sp
    add d
    ld [$819C], sp
    add d
    ld [$819C], sp
    add d
    ld [$819C], sp
    add d
    ld [$819C], sp
    add d
    ld [$819C], sp
    add d
    ld [$819C], sp
    add d
    ld [$819C], sp
    add d
    ld [$819C], sp
    add d
    ld [$819C], sp
    add d
    ld [$819C], sp
    add d
    ld [$819C], sp
    add d
    ld [$819C], sp
    add d
    ld [$819C], sp
    add d
    ld [$819C], sp
    sbc a
    ld [$1400], sp
    db $F4
    ld bc, $0895
    ld [bc], a
    add c
    ld b, b
    add h
    ld [$8182], sp
    add d
    ld [$8187], sp
    inc bc
    ld b, c
    ld [$8208], sp
    add c
    add d
    ld [$8184], sp
    add e
    ld [$8187], sp
    add d
    ld [$8183], sp
    inc bc
    add hl, bc
    add c
    add c
    add d
    add hl, bc
    add d
    ld [$8182], sp
    add d
    add hl, bc
    ld bc, $8581
    ld [$8184], sp
    add e
    ld [$8188], sp
    add [hl]
    ld [$8183], sp
    add d
    ld [$8189], sp
    add a
    ld [$8189], sp
    add d
    ld [$8183], sp
    inc b
    ld [$0881], sp
    nop
    add d
    ld [$8189], sp
    add e
    ld [$8182], sp
    inc b
    ld [$08C0], sp
    nop
    add d
    ld [$8187], sp
    inc bc
    add hl, bc
    add c
    ld [$8184], sp
    inc b
    ld [$0881], sp
    nop
    add d
    ld [$0982], sp
    add d
    add c
    ld [bc], a
    ld [$8281], sp
    add hl, bc
    add a
    add c
    add d
    ld [$0002], sp
    ld [$8185], sp
    add d
    ld [$8189], sp
    add d
    ld [$0003], sp
    ld [$8442], sp
    add c
    add e
    ld [$8188], sp
    add d
    ld [$0002], sp
    ld [$818D], sp
    ld bc, $8409
    ld [$0001], sp
    add [hl]
    ld [$8184], sp
    ld bc, $8609
    add c
    inc bc
    ld b, e
    ld [$8600], sp
    ld [$818C], sp
    ld [bc], a
    ld [$8400], sp
    ld [$8182], sp
    ld bc, $8609
    add c
    add e
    ld [$8182], sp
    inc bc
    ld [$0000], sp
    add e
    ld [$8104], sp
    add hl, bc
    add hl, bc
    add c
    add e
    ld [$8187], sp
    inc bc
    ld [$0000], sp
    add d
    ld [$8185], sp
    add h
    ld [$8186], sp
    ld bc, $8308
    nop
    sub c
    ld [$7BC0], sp
    nop
    nop
    ld [hl-], a
    call nz, $9709
    ld [$C082], sp
    sub d
    ld [$C182], sp
    ret nz

    or d
    ld [$C001], sp
    sub e
    ld [$C101], sp
    sbc h
    ld [$0083], sp
    adc a
    ld [$0002], sp
    ld [$0084], sp
    sbc d
    ld [$0083], sp
    adc a
    ld [$0002], sp
    ld [$0084], sp
    adc l
    ld [$0085], sp
    sbc d
    ld [$0085], sp
    adc [hl]
    ld [$0085], sp
    xor [hl]
    ld [$0082], sp
    pop bc
    dec [hl]
    ld [$0001], sp
    add l
    call $CE01
    and l
    ld [$CC84], sp
    inc bc
    nop
    ld [$85C9], sp
    nop
    ld bc, $A4CF
    ld [$0001], sp
    add h
    rlc e
    ret z

    ld [$85CA], sp
    ret nc

    ld bc, $A200
    ld [$0003], sp
    add $C4
    add h
    add $03
    rst $00
    add $DB
    xor d
    ld [$C201], sp
    add e
    nop
    add d
    ld [$0002], sp
    ret


    add d
    ld [$D901], sp
    add h
    nop
    and e
    ld [$C301], sp
    add h
    push bc
    ld b, $00
    ld [$08C9], sp
    nop
    reti


    add d
    ld [$0082], sp
    and d
    ld [$0002], sp
    jp nz, $0083

    inc b
    ld [$00D1], sp
    ld [$0082], sp
    ld [bc], a
    reti


    ld [$0083], sp
    and e
    ld [$C203], sp
    ld [$8200], sp
    ld [$D201], sp
    add h
    call nc, $D803
    nop
    ld [$0082], sp
    and e
    ld [$C201], sp
    add h
    ld [$D301], sp
    add h
    push de
    dec b
    rst $10
    nop
    ld [$DA00], sp
    and e
    ld [$C201], sp
    add l
    ld [$0005], sp
    ld [$0800], sp
    sub $B1
    ld [$0001], sp
    jp nz, $08C1

    add d
    nop
    or b
    ld [$0082], sp
    pop bc
    call nc, RST_08
    inc d
    sub b
    ld bc, $0895
    adc h
    nop
    add e
    ld [$0083], sp
    add d
    ld [$0083], sp
    ld bc, $8C40
    nop
    ld [bc], a
    ld b, d
    nop
    add d
    ld [$0083], sp
    ld [bc], a
    ld b, c
    nop
    add [hl]
    jp nz, $0085

    ld [bc], a
    ld b, e
    nop
    add d
    ld [$0085], sp
    adc c
    jp nz, $0084

    add e
    ld [$0082], sp
    adc h
    jp nz, $0083

    add e
    ld [$0082], sp
    adc l
    jp nz, $0082

    add e
    ld [$0082], sp
    add l
    jp nz, $0083

    add l
    jp nz, $0082

    add e
    ld [$0082], sp
    add l
    jp nz, $0083

    add h
    jp nz, $0083

    add e
    ld [$0082], sp
    add l
    jp nz, Jump_02E_4901

    add [hl]
    jp nz, $0082

    add l
    ld [$0082], sp
    add d
    jp nz, $0082

    ld [bc], a
    ld c, d
    ld c, e
    add d
    nop
    ld [bc], a
    jp nz, $824C

    jp nz, $0082

    add h
    ld [$0082], sp
    add d
    jp nz, $0082

    ld bc, $83C2
    nop
    add h
    jp nz, $0082

    add h
    ld [$0082], sp
    adc h
    jp nz, $0082

    add h
    ld [$0082], sp
    add [hl]
    jp nz, $4D01

    add h
    jp nz, $0083

    add e
    ld [$0082], sp
    adc e
    jp nz, $0083

    add e
    ld [$0083], sp
    ld bc, $86C2
    nop
    add h
    jp nz, $0003

    ld b, [hl]
    nop
    add e
    ld [$0002], sp
    ld b, h
    adc c
    nop
    add e
    jp nz, $0002

    ld b, a
    add d
    nop
    add d
    ld [$0002], sp
    ld b, l
    add h
    nop
    add e
    ld [$0086], sp
    ld bc, $8248
    nop
    add d
    ld [$0085], sp
    dec b
    ld [$C000], sp
    nop
    ld [$0088], sp
    sub l
    ld [$0C00], sp
    ld l, h
    nop
    ld bc, $E409
    nop
    add e
    nop
    dec b
    rlca
    ld b, e
    ld b, h
    ld b, l
    rrca
    add h
    nop
    add d
    add hl, bc
    add d
    ld a, [bc]
    inc b
    ld d, e
    ld d, h
    ld d, l
    rra
    add h
    nop
    add d
    add hl, de
    add d
    ld a, [de]
    inc b
    ld h, e
    ld h, h
    ld h, l
    ld c, $84
    nop
    ld [bc], a
    sub l
    add hl, hl
    add d
    ld a, [hl+]
    jr jr_02E_59CD

    ld [hl], h
    ld [hl], l
    ld e, $0B
    inc c
    ld c, $00
    sbc c
    ld bc, $8A49
    ld a, b
    ld h, a
    halt
    ld l, $1B
    inc e
    ld e, $0F
    ld [hl], a
    ld bc, $9A87
    add e
    ld bc, $3908
    dec hl
    inc l
    ld l, $1F
    ld h, [hl]
    ld bc, $8497
    ld bc, $7606
    ld h, a
    ld bc, $2F84
    ld a, b
    add [hl]
    ld bc, $7806
    ld bc, $3C01
    ccf
    halt
    add d
    ld bc, $6C04
    ld l, l
    ld h, a
    ld a, b
    add e
    ld bc, $3C07
    rrca
    ld h, a
    or [hl]
    ld a, b
    ld a, h
    ld a, l
    add l
    ld bc, $3C03
    rra
    ld e, d
    adc c
    ld bc, $3C03
    cpl
    ld [hl], a
    add [hl]
    ld bc, $7906
    ld bc, $6A01
    ccf
    ld h, [hl]
    add h
    ld bc, $C908
    jp z, $0169

    ld e, c
    ld a, d
    rrca
    ld a, b
    add d
    ld bc, $690B
    ld h, a
    ld a, h
    ld a, l
    ld h, a
    ld l, b
    ld c, c
    inc a
    rra
    halt
    ld a, b

jr_02E_59CD:
    add d
    ld bc, $6801
    add h
    ld bc, $7904
    inc a
    cpl
    ld a, c
    add [hl]
    ld bc, $6907
    ld bc, $3C01
    ccf
    add l
    halt
    add l
    ld bc, $850D
    ld bc, $3C01
    rrca
    ld [hl], a
    ld bc, $6F6E
    ld bc, $016B
    ld a, c
    add d
    ld bc, $3D0E
    rra
    ld h, [hl]
    ld a, c
    ld a, [hl]
    ld a, a
    ld l, c
    ld a, e
    halt
    ld e, d
    ld c, c
    ld c, h
    ld c, l
    cpl
    nop
    rla
    sbc [hl]
    ld bc, $08B1
    add e
    nop
    adc e
    ld [$0002], sp
    ret nz

    add l
    ld [$C102], sp
    jp $C183


    ld bc, $8A00
    ld [$0001], sp
    add a
    ld [$C405], sp
    ld [$0800], sp
    jp nz, $0885

    ld bc, $8400
    ld [$0004], sp
    ld [$00D9], sp
    add h
    ld [$C405], sp
    ld [$0800], sp
    jp nz, $0882

    add d
    call z, $CB04
    call $00CC
    add d
    ld [$0004], sp
    ld [$D8D7], sp
    add h
    ld [$C406], sp
    nop
    ld [$C200], sp
    ld [$CA83], sp
    inc b
    nop
    adc $D0
    rst $08
    add d
    ld [$DB05], sp
    nop
    call nc, $D6D5
    add e
    ld [$C404], sp
    nop
    ld [$8300], sp
    ld [$0082], sp
    inc b
    ld [$00D1], sp
    jp nc, $0883

    inc bc
    db $D3
    rst $10
    ret c

    add h
    ld [$0001], sp
    add l
    push bc
    ld [bc], a
    ld [$8200], sp
    ld [$D103], sp
    nop
    jp nc, $0882

    inc b
    nop
    db $D3
    rst $10
    ret c

    adc c
    ld [$0003], sp
    ld [$8200], sp
    ld [$D109], sp
    nop
    jp nc, $0800

    nop
    ld [$D8D7], sp
    adc c
    ld [$8003], sp
    ld [$8500], sp
    ld [$0083], sp
    inc bc
    ld [$DA00], sp
    adc c
    ld [$0003], sp
    ld [$9400], sp
    ld [$8002], sp
    ld [$0082], sp
    ld bc, $91C8
    ld [$0082], sp
    add e
    ld [$0001], sp
    sub c
    ld [$0002], sp
    ld [$C983], sp
    inc bc
    rst $00
    ret


    nop
    adc a
    ld [$0085], sp
    ld [bc], a
    add $00
    sub l
    ld [$C601], sp
    and d
    ld [$1400], sp
    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $4AA2
    add d
    ld e, d
    sub b
    ld c, d
    dec b
    ld e, d
    jr c, jr_02E_5B57

    sbc h
    adc h
    adc c
    ld c, d
    add l
    ld e, d
    rlca
    jr c, jr_02E_5B60

    ld l, l
    xor h
    ld a, d
    ld l, c
    ld c, c
    add a
    ld c, d
    dec c
    jr c, jr_02E_5B6A

    ld l, d
    sbc h
    ld l, d
    sbc h
    ld c, b
    xor h
    ld e, b
    ld b, l
    ld b, a
    ld a, c
    ld c, c
    add [hl]
    ld c, d
    dec b
    jr c, @+$4A

    ld a, d
    xor h
    ld a, d
    add d
    xor h
    rlca
    ld e, b
    ld b, l
    ld b, [hl]
    cp c
    xor e
    add hl, sp
    cp d
    add l

Call_02E_5B1E:
    ld c, d
    inc b
    jr c, jr_02E_5B8F

    ld e, b
    ld b, l
    add d
    ld b, [hl]
    ld [$4A47], sp
    ld b, l
    cp c
    ld h, [hl]
    xor e
    add hl, sp
    cp d
    add l
    ld c, d
    dec b
    ld c, e
    ld c, b
    ld e, b
    ld b, l
    sbc d
    add d
    ld d, $07
    sbc c
    ld b, [hl]
    ld d, $57
    add hl, sp
    ld a, [hl-]
    cp d
    add [hl]
    ld c, d
    inc b
    ld c, e
    ld e, b
    ld c, d
    ld d, l
    add [hl]
    ld d, $03
    ld d, a
    adc h
    ld e, d
    add a
    ld c, d
    dec b
    xor d
    dec sp
    jp z, $8A65

    add l

jr_02E_5B57:
    ld d, $04
    ld d, a
    ld l, c
    ld l, d
    ld l, b
    add a
    ld c, d
    inc b

jr_02E_5B60:
    xor d
    ld a, [hl-]
    dec sp
    cp e
    add e
    ld h, [hl]
    ld b, $8A
    ld d, $57

jr_02E_5B6A:
    ld a, c
    xor h
    ld a, b
    adc c
    ld c, d
    ld bc, $83AA
    ld a, [hl-]
    ld [$BB3B], sp
    adc d
    sbc c
    ld b, a
    ld c, d
    adc b
    adc h
    adc h
    ld c, d
    add hl, bc
    xor d
    dec sp
    ld d, l
    ld d, $99
    ld b, [hl]
    ld b, a
    ld a, b
    ld c, c
    adc h
    ld c, d
    inc bc
    ld c, e
    cp e
    adc d
    add d

jr_02E_5B8F:
    ld d, $03
    ld d, a
    ld a, l
    ld c, c
    adc h
    ld c, d
    ld [$3BAA], sp
    cp e
    adc d
    adc c
    xor e
    add hl, sp
    cp d
    adc l
    ld c, d
    ld b, $AA
    dec sp
    cp e
    xor e
    add hl, sp
    cp d
    adc a
    ld c, d
    inc b
    xor d
    ld a, [hl-]
    ld a, [hl-]
    cp d
    ret nz

    ld b, b
    ld c, d
    nop
    rrca
    add a
    nop
    inc b
    dec b
    pop hl
    nop
    dec b
    rla
    jr jr_02E_5BD7

    daa
    scf
    add h
    ld bc, $8904
    adc [hl]
    adc a
    adc b
    add d
    ld bc, $2706
    jr z, jr_02E_5BF6

    scf
    ld bc, $835A
    ld bc, $990D
    sbc [hl]
    sbc a
    sbc b

jr_02E_5BD7:
    cp e
    ld bc, $0138
    ld l, h
    ld l, l
    ld [hl], a
    ld bc, $8367
    ld bc, $6924
    ld bc, $0166
    xor b
    ld l, e
    ld bc, $7D7C
    ld l, d
    ld bc, $8D8C
    add a
    adc b
    ld h, a
    ld bc, $8676

jr_02E_5BF6:
    cp b
    ld a, e
    ld a, c
    ld e, d
    ld l, c
    ld a, d
    ld h, a
    sbc h
    sbc l
    sub a
    sbc b
    ld e, d
    ld bc, $9685
    ld bc, $8967
    ld bc, $7609
    ld bc, $0167
    xor d
    ld bc, $5A69
    ld a, b
    add l
    ld bc, $7806
    ld bc, $7701
    add a
    cp d
    add e
    ld bc, $7905
    ld bc, $A667
    ld l, c
    add h
    ld bc, $7808
    sub a
    adc c
    ld a, [hl-]
    ld bc, $8767
    ld h, [hl]
    adc c
    ld bc, $9909
    ld c, d
    ld c, e
    ld bc, $7697
    ld a, b
    ld h, [hl]
    ld l, c
    add h
    ld bc, $690C
    ld e, c
    ld bc, $064A
    dec sp
    ld bc, $5D85
    ld bc, $A666
    add e
    ld bc, $5908
    adc b
    ld bc, $1600
    dec sp
    add a
    ld l, c
    add a
    ld bc, $6808
    sbc b
    ld l, e
    nop
    ld h, $3B
    sub a
    ld [hl], a
    add e
    ld bc, $7701
    add e
    ld bc, $B60F
    ld bc, $007B
    ld [hl], $3A
    ld bc, $0178
    and [hl]
    ld a, b
    ld h, [hl]
    adc [hl]
    adc a
    xor b
    add e
    ld bc, $0007
    ld c, d
    ld c, d
    ld a, [hl-]
    ld bc, $6676
    add d
    ld bc, $9E03
    sbc a
    cp b
    add e
    ld bc, $1400
    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $00B4
    dec b
    ld [$0B0A], sp
    add hl, bc
    rrca
    adc l
    nop
    ld [$0A08], sp
    jr jr_02E_5CB9

    dec de
    add hl, de
    rra
    ld c, l
    adc c
    nop
    dec bc
    ld [$090A], sp
    jr @+$1C

    jr z, @+$2C

    dec hl
    ld l, $2F
    ld e, l
    add a
    nop
    ld [$0B08], sp
    jr jr_02E_5CD2

    add hl, de

jr_02E_5CB9:
    jr z, jr_02E_5CE5

    push de
    add e
    ld c, d
    ld [bc], a
    ld a, a
    ld c, l
    add l
    nop
    ld [$0A08], sp
    jr jr_02E_5CE3

    jr z, jr_02E_5CF4

    add hl, hl
    push de
    add h
    ld c, d
    inc bc
    ld c, e
    ld a, $5D

jr_02E_5CD2:
    add h
    nop
    ld b, $5C
    jr jr_02E_5CF2

    jr z, jr_02E_5D08

    push de
    add e
    ld c, d
    inc b
    ld d, l
    ld c, d
    ld c, e
    dec a
    add d

jr_02E_5CE3:
    ld e, e
    add l

jr_02E_5CE5:
    nop
    ld b, $6C
    jr z, jr_02E_5D14

    push de
    ld c, d
    ld h, l
    add l
    ld c, d
    ld [bc], a

jr_02E_5CF0:
    rrca
    ld e, e

jr_02E_5CF2:
    add a
    nop

jr_02E_5CF4:
    rlca
    ld a, h
    ld a, [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    ld c, d
    ld d, l
    add e
    ld c, d
    inc b
    ld l, a
    rra
    add hl, bc
    rrca
    add [hl]
    nop
    inc bc
    ld e, b
    ld a, [hl-]

jr_02E_5D08:
    ld c, b
    add a
    ld c, d
    dec b
    and $2F
    add hl, de
    rra
    rrca
    add a
    nop
    inc b

jr_02E_5D14:
    ld e, b
    ld a, [hl-]
    dec sp
    ld e, c
    add l
    ld c, d
    dec b
    add $29
    cpl
    rra
    ld c, l
    adc c
    nop
    inc bc
    ld e, b
    dec sp
    ld e, c
    add d
    ld c, d
    ld b, $65
    ld c, d
    ld c, d
    sub $2F
    ld e, l
    adc e
    nop
    ld [bc], a
    ld e, b
    ld c, b
    add e
    ld c, d
    inc b
    ld h, l
    ld c, d
    ld a, a
    ld c, l
    adc h
    nop
    ld [bc], a
    ld a, h
    ld l, [hl]
    add h
    ld c, d
    ld [bc], a
    ld l, a
    ld e, l
    adc h
    nop
    inc bc
    ld e, b
    add hl, sp
    ld c, b
    add e
    ld c, d
    ld [bc], a
    ld c, e
    ld e, e
    adc [hl]
    nop
    dec b
    ld e, b
    inc a
    dec a
    ld a, $5B
    ret nz

    ld b, [hl]
    nop
    nop
    rrca
    add a
    nop
    inc b
    dec b
    pop hl
    nop
    rlca
    ld a, h
    ld a, l
    rrca
    dec bc
    ld l, d
    inc b
    jr z, jr_02E_5CF0

    ld h, [hl]
    inc b
    add hl, hl
    add b
    add c
    db $FD
    add d
    adc e
    dec b
    sbc [hl]
    ld c, $0F
    dec bc
    ld e, b
    add h
    inc h
    inc b
    db $FD
    sub b
    sub c
    add d
    add h
    adc e
    inc b
    rra
    ld c, a
    ld l, c
    inc b
    add [hl]
    db $FD
    ld bc, $8358
    adc e
    ld b, $6C
    cpl
    ld c, a
    ld a, c
    nop
    ld [bc], a
    add l
    db $FD

jr_02E_5D97:
    ld a, [bc]
    ld l, b
    dec e
    dec e
    ld l, h
    cpl
    ld a, a
    ld e, a
    ld a, c
    nop
    ld [bc], a
    add l
    db $FD
    ld a, [bc]
    ld h, $2D
    dec l
    ld a, a
    ld e, [hl]
    ld e, a
    ld a, [hl+]
    ld a, c
    nop
    ld [bc], a
    add h
    db $FD
    ld [bc], a
    jr nz, jr_02E_5E0A

    add d
    ld e, l
    ld b, $5F
    ld c, e
    ld a, e
    ld a, [hl-]
    add hl, sp
    inc d
    add l
    db $FD
    inc bc
    jr nz, jr_02E_5E29

    ld a, [hl+]
    add d
    ld a, e
    dec b
    ld l, e
    ld h, a
    ld d, $77
    ld [bc], a
    add l
    db $FD
    ld a, [bc]
    jr nz, jr_02E_5E26

    ld a, e
    ld h, a
    ld d, [hl]
    ld b, $17
    ld [hl], a
    inc d
    db $10
    add l
    db $FD
    ld [$5626], sp
    ld d, $15
    rla
    ld [hl], a
    ld [hl], h
    inc d
    add d
    db $10
    add l
    db $FD
    rlca
    ld [hl], $67
    ld a, e
    ld h, a
    ld [hl], a
    add e
    ld [hl+], a
    add e
    db $10
    add [hl]
    db $FD
    dec b
    ld [hl], $9C
    sbc h
    ld a, c
    ld [bc], a
    add e
    db $10
    add [hl]
    ld [de], a
    ld b, $FD
    ld e, b
    dec c
    rrca
    dec bc
    inc b
    add d
    db $10
    ld bc, $8603
    add l

jr_02E_5E0A:
    add hl, bc
    inc b
    ld l, b
    adc e
    sbc [hl]
    rrca
    dec bc
    ld e, b
    inc bc
    jr c, jr_02E_5D97

    ld d, a
    ld b, $07
    ld h, [hl]
    ld c, d
    ld d, a
    ld b, a
    inc b
    add d
    adc e
    dec b
    rra
    ld c, a
    ld l, c
    jr c, @+$58

    add d

jr_02E_5E26:
    rlca
    ld b, $08

jr_02E_5E29:
    ld h, a
    ld e, d
    ld h, a
    ld d, a
    ld b, a
    nop
    add hl, de
    ld [hl], c
    ld [bc], a
    ret nz

    ld b, c
    ld [$0083], sp
    sub [hl]
    ld [$0003], sp
    ld [$9400], sp
    ld [$D883], sp
    ld bc, $8300
    sub $91
    ld [$0001], sp
    add e
    reti


    ld bc, $8308
    push de
    ld bc, $9100
    ld [$DA83], sp
    ld bc, $8300
    rst $10
    adc a
    ld [$C003], sp
    ld [$8208], sp
    nop
    add e
    ld [$0082], sp
    adc [hl]
    ld [$0085], sp
    add l
    ld [$0082], sp
    adc h
    ld [$0082], sp
    adc d
    ld [$0084], sp
    sbc b
    ld [$0001], sp
    adc a
    ld [$C885], sp
    dec b
    nop
    ld [$D408], sp
    nop
    adc a
    ld [$CA85], sp
    inc b
    ret


    nop
    ld [$93D4], sp
    ld [$DC82], sp
    inc b
    call z, $00CB
    db $DB
    sub e
    ld [$0006], sp
    ld [$CECF], sp
    call $8600
    ld [$0003], sp
    jp nz, $8208

    nop
    ld bc, $8508
    nop
    add d
    ld [$0006], sp
    ld [$D2D3], sp
    pop de
    ret nc

    add l
    ld [$0082], sp
    inc bc
    jp nz, RST_08

    add d
    ld [$0001], sp
    add e
    ld [$0004], sp
    ld [$0008], sp
    adc c
    ld [$C183], sp
    ld bc, $8600
    jp $0803


    nop
    nop
    add d
    ld [$0001], sp
    adc b
    ld [$0084], sp
    adc b
    ld [$0003], sp
    ld [$82C7], sp
    nop
    sub e
    ld [$0082], sp
    ld [bc], a
    ld [$95C7], sp
    ld [$0004], sp
    ld [$C708], sp
    sub d
    ld [$C485], sp
    ld [bc], a
    add $00
    sub e
    ld [$C584], sp
    ld bc, $BC00
    ld [$1400], sp
    sub b
    ld bc, $089B
    add d
    nop
    dec b
    ldh [rP1], a
    nop
    ld [$8D00], sp
    ld [$0001], sp
    add e
    ld [$DF03], sp
    db $DD
    rst $08
    add e
    nop
    add a
    ld [$0006], sp
    ld [$0008], sp
    ld [$0408], sp
    nop
    call nc, $D0D5
    add e
    call nc, $0887
    add d
    nop
    ld [bc], a
    ld [$8300], sp
    ld [$D603], sp
    rst $10
    pop de
    add e
    sub $01
    nop
    add e
    ld [$0005], sp
    jp z, $CBCA

    call z, $CA82
    add d
    ld [$0004], sp
    ret c

    reti


    jp nc, $D883

    add [hl]
    ld [$0003], sp
    call $85CE
    ld [$DA03], sp
    db $DB
    db $D3
    add e
    jp c, $0001

    add l
    ld [$0003], sp
    call $86CE
    ld [$0004], sp
    ld [$0008], sp
    add [hl]
    ld [$0004], sp
    rst $00
    ret z

    ret


    adc c
    ld [$0083], sp
    ld bc, $85DC
    ld [$CD02], sp
    adc $8F
    ld [$0083], sp
    ld [bc], a
    call $8FCE
    ld [$0001], sp
    sub e
    ld [$0001], sp
    add e
    ld [$0084], sp
    adc h
    ld [$0001], sp
    add e
    ld [$0003], sp
    ld [$8208], sp
    nop
    adc e
    ld [$0085], sp
    ld [bc], a
    ld [$8200], sp
    add $91
    ld [$C101], sp
    add e
    push bc
    ld bc, $8900
    ld [$0084], sp
    add d
    ld [$C204], sp
    call nz, $00C4
    adc d
    ld [$C084], sp
    inc bc
    nop
    ld [$82C3], sp
    nop
    adc e
    ld [$0002], sp
    ld [$0082], sp
    inc bc
    sbc $00
    jp $08A0


    nop
    inc d
    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $00B4
    dec b
    rlca
    dec bc
    inc c
    dec c
    ld c, $8D
    nop
    ld [$0B07], sp
    rla
    dec de
    inc e
    dec e
    ld e, $0F
    adc c
    nop
    dec bc
    rlca
    inc c
    dec c
    rla
    dec de
    daa
    dec hl
    inc l
    dec l
    ld l, $1F
    add a
    nop
    add hl, bc
    rlca
    dec c
    rla
    inc e
    dec e
    daa
    dec hl
    scf
    ld h, a
    add d
    ld bc, $8402
    cpl
    add l
    nop
    ld [$0B07], sp
    rla
    dec e
    daa
    inc l
    dec l
    scf
    add h
    ld bc, $3D03
    ld b, a
    ld c, l
    add h
    nop
    rlca
    ld b, $17
    dec de
    daa
    dec l
    scf
    ld e, d
    add h
    ld bc, $3D02
    ld c, b
    add a
    nop
    inc b
    ld d, $27
    dec hl
    scf
    add [hl]
    ld bc, $3C02
    ld c, $88
    nop
    inc bc
    ld h, $83
    cp e
    add a
    ld bc, $3C03
    ld e, $0E
    add a
    nop
    inc bc
    ld c, d
    ld b, [hl]
    ld a, [hl-]
    add d
    ld bc, $AB01
    add h
    ld bc, $C704
    ld l, $1E
    ld c, $88
    nop
    inc b
    ld c, d
    ld b, a
    ld c, b
    ld c, e
    add l
    ld bc, $3904
    ld l, $1E
    ld c, $8A
    nop
    dec b
    ld c, d
    ld b, [hl]
    ld a, [hl-]
    ld bc, $8266
    ld bc, $3904
    ld l, $1E
    rrca
    adc e
    nop
    ld [bc], a
    ld c, d
    ld c, e
    add h
    ld bc, $3903
    ld l, $1F
    adc h
    nop
    inc b
    ld c, d
    ld c, e
    ld bc, $8278
    ld bc, $8402
    cpl
    adc l
    nop
    ld [bc], a
    ld c, d
    ld a, [hl-]
    add e
    ld bc, $3D02
    ld c, l
    adc [hl]
    nop
    dec b
    ld c, d
    ld d, [hl]
    ld d, a
    ld e, b
    ld c, l
    ret nz

    ld b, [hl]
    nop
    nop
    rrca
    add a
    nop
    inc b
    dec b
    pop hl
    nop
    dec bc
    add hl, de
    ld a, [hl]
    ld a, [hl]
    adc e
    ld a, [hl]
    adc e
    ld a, d
    ld a, [hl]
    adc e
    ld a, [hl]
    adc e
    add e
    ld a, [hl]
    ld b, $7F
    adc l
    inc a
    dec a
    ld l, d
    inc a
    adc b
    db $FD
    inc bc
    dec a
    adc a
    adc e
    add d
    db $FD
    ld bc, $83FE
    db $FD
    ld bc, $86FE
    db $FD
    add d
    ld a, d
    add d
    cp $83
    db $FD
    inc bc
    cp $58
    cp $85
    db $FD
    ld [bc], a
    adc a
    ld a, e
    add [hl]
    db $FD
    ld bc, $86FE
    db $FD
    ld [bc], a
    ld a, e
    adc l
    add d
    db $FD
    inc bc
    ld c, l
    pop af
    ld c, h
    add e
    db $FD
    ld [bc], a
    ld c, l
    pop af
    add e
    db $FD
    rlca
    adc e
    ld a, e
    ld e, b
    ld c, c
    adc l
    ld c, e
    ld l, d
    add e
    db $FD
    ld [bc], a
    ld c, e
    inc a
    add e
    db $FD
    rlca
    adc a
    adc l
    ld e, b
    ld l, d
    ld e, c
    dec a
    pop af
    adc b
    db $FD
    ld [$8B7B], sp
    ld e, b
    ld e, c
    inc a
    db $FD
    ld e, c
    ld c, h
    add a
    db $FD
    inc b
    adc a
    adc l
    ld e, b
    ld l, d
    add d
    db $FD
    dec b
    ld l, d
    ld e, e
    ld l, d
    ld c, e
    pop af
    add h
    db $FD
    inc b
    ld a, d
    ld a, e
    ld e, b
    adc l
    add d
    db $FD
    ld [bc], a
    pop af
    inc a
    add a
    db $FD
    ld [bc], a
    ld a, e
    ld a, d
    add h
    db $FD
    ld [bc], a
    ld e, c
    ld c, h
    add h
    db $FD
    dec b
    ld c, d
    db $FD
    db $FD
    adc e
    adc c
    add h
    db $FD
    ld [bc], a
    dec a
    ld c, d
    add h
    db $FD
    ld b, $F1
    db $FD
    db $FD
    ld a, d
    ld a, e
    ld c, h
    add [hl]
    db $FD
    ld [bc], a
    ld c, d
    ld c, h
    add e
    db $FD
    inc c
    ld c, l
    adc a
    adc c
    ld a, e
    sbc [hl]
    ld a, e
    adc c
    sbc l
    xor l
    rst $30
    xor a
    sbc a
    add h
    sbc [hl]
    ld bc, $007B
    inc d
    sub b
    ld bc, $0895
    ld bc, $8600
    ld [$C101], sp
    adc h
    ld [$0003], sp
    ld [$8400], sp
    ld [$0001], sp
    adc h
    ld [$0082], sp
    ld bc, $83CA
    nop
    ld [bc], a
    ld [$8C00], sp
    ld [$0001], sp
    add h
    ld [$0003], sp
    ld [$8C00], sp
    ld [$0005], sp
    ld [$0008], sp
    ld [$0083], sp
    adc h
    ld [$0082], sp
    ld [bc], a
    ld [$9000], sp
    ld [$0006], sp
    ld [$0008], sp
    ret


    nop
    adc b
    ld [$0003], sp
    ret nz

    nop
    add e
    ld [$0004], sp
    ld [$0008], sp
    adc c
    ld [$0003], sp
    ld [$8400], sp
    ld [$0084], sp
    ld [bc], a
    ret z

    nop
    add h
    ld [$0083], sp
    ld bc, $83C7
    nop
    adc b
    ld [$0001], sp
    add l
    ld [$0001], sp
    adc l
    ld [$0083], sp
    add d
    ld [$0088], sp
    adc b
    ld [$0082], sp
    add e
    ld [$0001], sp
    adc [hl]
    ld [$0082], sp
    add e
    ld [$0086], sp
    ld bc, $88C6
    ld [$0082], sp
    add d
    ld [$0088], sp
    add e
    ld [$0084], sp
    inc bc
    ld [$0000], sp
    adc c
    ld [$0005], sp
    ld [$0008], sp
    jp nz, $0083

    inc bc
    ld [$0000], sp
    add e
    ld [$C401], sp
    add l
    nop
    inc bc
    push bc
    ld [$8208], sp
    nop
    ld bc, $87C3
    nop
    ld bc, $8708
    nop
    add d
    ld [$0082], sp
    add a
    ld [$0088], sp
    sub [hl]
    ld [$1400], sp
    sub b
    ld bc, $C295
    add h
    nop
    adc c
    jp nz, $0082

    inc bc
    ld b, d
    ld [$8200], sp
    jp nz, $0083

    ld bc, $8A41
    jp nz, $0082

    ld [bc], a
    ld [$8200], sp
    jp nz, Jump_02E_4001

    add e
    nop
    adc c
    jp nz, $0082

    inc bc
    ld b, e
    nop
    nop
    add d
    jp nz, $0085

    adc b
    jp nz, $0085

    add h
    jp nz, $0083

    adc b
    jp nz, $0082

    sbc d
    jp nz, $0882

    sub d
    jp nz, $0882

    add l
    jp nz, $0883

    adc d
    jp nz, $0882

    add l
    jp nz, $0883

    adc a
    jp nz, $0001

    sub e
    jp nz, $0001

    adc c
    jp nz, $0001

    add e
    jp nz, $0082

    add h
    jp nz, $0083

    add e
    jp nz, $0003

    jp nz, $82C2

    nop
    add e
    jp nz, $0002

    ret nz

    add d
    jp nz, $0084

    add h
    jp nz, $0003

    jp nz, $83C2

    nop
    add d
    jp nz, $0082

    add d
    jp nz, $0003

    ld b, a
    nop
    add l
    jp nz, $0006

    jp nz, Jump_02E_45C2

    nop
    nop
    add [hl]
    jp nz, $0083

    add l
    jp nz, $0082

    adc b
    jp nz, $0085

    add h
    jp nz, $0083

    ld [bc], a
    jp nz, $8244

    nop
    add h
    jp nz, $0004

    ld c, b
    ld [$8400], sp
    jp nz, $0082

    ld bc, $8446
    nop
    add l
    jp nz, $0084

    add e
    jp nz, $0084

    ld bc, $8308
    nop
    sub [hl]
    jp nz, $1600

    ld c, d
    ld bc, $08A5
    add h
    add c
    ld [bc], a
    ld [$83C1], sp
    ld [$8183], sp
    inc bc
    ld [$0881], sp
    add [hl]
    add c
    ld [bc], a
    ld [$8281], sp
    ld [$8183], sp
    add e
    ld [$8101], sp
    add e
    ld [$8186], sp
    inc bc
    ld [$08C0], sp
    add h
    add c
    add l
    ld [$8102], sp
    ld [$8182], sp
    inc b
    ld [$8181], sp
    ld [$8183], sp
    add h
    ld [$8184], sp
    add e
    ld [$8102], sp
    ld [$8182], sp
    ld [bc], a
    ld [$8281], sp
    ld [$8183], sp
    add d
    ld [$8103], sp
    ld [$8281], sp
    ld [$8101], sp
    add e
    ld [$8102], sp
    ld [$8182], sp
    inc b
    ld [$8181], sp
    ld [$8183], sp
    add d
    ld [$8186], sp
    add e
    ld [$8102], sp
    ld [$8182], sp
    ld bc, $8308
    add c
    inc bc
    ld [$8181], sp
    add e
    ld [$8101], sp
    add a
    ld [$8107], sp
    ld [$8108], sp
    ld [$0881], sp
    add d
    add c
    add l
    ld [$8185], sp
    add e
    ld [$8183], sp
    ld bc, $8309
    add c
    ld [bc], a
    add hl, bc
    add c
    add [hl]
    ld [$8104], sp
    ld [$8108], sp
    add e
    ld [$8183], sp
    ld bc, $8308
    add c
    add [hl]
    ld [$8102], sp
    ld [$8184], sp
    add e
    ld [$8101], sp
    adc h
    ld [$8101], sp
    add e
    ld [$8182], sp
    add e
    ld [$8193], sp
    sub e
    ld [$8183], sp
    sub a
    ld [$0E00], sp
    ld a, [hl]
    nop
    inc bc
    inc b
    call nz, $0600
    ld b, $6B
    ld l, d
    ld e, b
    rla
    ld e, c
    add l
    rla
    inc c
    ld c, b
    ld [$6B84], sp
    ld sp, hl
    rla
    ld l, b
    ld l, e
    ld l, c
    ld l, e
    rla
    ld l, e
    add e
    rla
    db $10
    ld c, b
    ld [$E96A], sp
    rla
    db $FD
    cp $17
    ld l, d
    ld l, e
    ld l, l
    ld l, e
    ld l, d
    rla
    ld e, c
    ld c, b
    add d
    ld l, e
    add d
    db $FD
    inc bc
    cp $17
    ld l, e
    add d
    rla
    inc b
    cp $6D
    ld l, e
    ld l, c
    add d
    ld l, e
    inc b
    ld l, d
    ld l, e
    ld l, d
    db $FD
    add h
    rla
    rlca
    cp $FD
    db $FD
    ld l, e
    ld e, b
    ld h, $6B
    adc d
    rla
    rlca
    ld sp, hl
    ld l, b
    ld b, h
    ld d, $7B
    ld l, e
    db $FD
    adc b
    rla
    ld b, $6B
    sub e
    ld d, $58
    ld l, d
    db $FD
    add h
    rla
    ld bc, $83F8
    rla
    ld [$357B], sp
    ld d, $68
    ld l, e
    ld sp, hl
    db $FD
    cp $86
    rla
    add hl, bc
    adc d
    ld d, d
    ld d, $6F
    ld l, d
    ld l, e
    ld l, d
    ld l, e
    ld l, l
    add d
    ld l, e
    add e
    rla
    dec bc
    ld l, e
    ld d, [hl]
    ld d, $7B
    ld l, e
    ld e, b
    ld l, a
    ld l, d
    ld l, e
    ld l, l
    ld hl, sp-$7E
    rla
    ld a, [bc]
    ld l, e
    rla
    ld [bc], a
    ld d, $6A
    ld l, e
    ld l, b
    ld a, e
    ld l, e
    adc l
    add d
    ld l, e
    add d
    rla
    inc b
    ld a, e
    rla
    or e
    ld h, $86
    daa
    ld [bc], a
    ld l, e
    jp c, $1782

    inc c
    ld hl, sp+$38
    add c
    or e
    ld d, [hl]
    dec [hl]
    ld [bc], a
    sub e
    ld b, h
    ld h, e
    ld h, $27
    add d
    ld l, e
    ld [bc], a
    daa
    jr z, jr_02E_6466

jr_02E_6466:
    inc d
    sub b
    ld bc, $C297
    add e
    ld [$C288], sp
    add e
    ld [$C286], sp
    inc bc
    ld b, b
    ld b, c
    ld b, d
    adc b
    jp nz, $0883

    add l
    jp nz, $0085

    add [hl]
    jp nz, $0082

    ld [bc], a
    ld b, e
    ld [$C284], sp
    add a
    nop
    add l
    jp nz, $0084

    add h
    jp nz, $0002

    ld [$0085], sp
    add l
    jp nz, $0084

    add h
    jp nz, $0082

    add d
    jp nz, $0083

    add l
    jp nz, $0084

    add [hl]
    jp nz, $0882

    sub c
    jp nz, $0804

    ret nz

    ret nz

    ld [$C288], sp
    ld bc, $8708
    jp nz, $0804

    nop
    nop
    ld [$C288], sp
    add d
    ld [$C203], sp
    ld [$8308], sp
    jp nz, $0804

    nop
    nop
    ld [$C28C], sp
    ld bc, $8308
    jp nz, $0804

    nop
    nop
    ld [$C290], sp
    inc b

jr_02E_64D8:
    ld [$0000], sp
    ld [$C28A], sp
    ld bc, $8500
    jp nz, $0806

    nop
    nop
    ld [$00C2], sp
    add h
    jp nz, $0087

    add e
    jp nz, $0806

    nop
    nop
    ld [$00C2], sp
    add h
    jp nz, $0003

    ld [$8208], sp
    nop
    ld [bc], a
    ld b, h
    nop
    add e
    jp nz, $0806

    nop
    nop
    ld [$00C2], sp
    add h
    jp nz, $0084

    add [hl]
    jp nz, $0086

    add h
    jp nz, $0084

    ret nz

    ld b, b
    jp nz, $1400

    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $49C0
    ld l, e
    add d
    ld [$6B90], sp
    ld [bc], a
    adc b
    rla
    add d
    jr jr_02E_652F

jr_02E_652E:
    add hl, de

jr_02E_652F:
    adc h
    ld l, e
    add hl, bc
    ld [$1788], sp
    jr jr_02E_655F

    jp c, $2877

    add hl, de
    adc c
    ld l, e
    ld [bc], a
    ld c, e
    rla
    add d
    jr jr_02E_6549

    ld [hl], a
    jr z, jr_02E_656E

    inc b
    jr c, jr_02E_6581

jr_02E_6549:
    ld [bc], a
    add hl, sp
    ld a, [hl-]
    add [hl]
    ld l, e
    inc bc
    adc b
    rla
    jr jr_02E_64D8

    jr z, jr_02E_6557

    inc b
    add hl, sp

jr_02E_6557:
    add d
    ld c, b
    ld bc, $8649
    ld l, e
    inc b
    rla

jr_02E_655F:
    jr jr_02E_652E

    halt
    add h
    jr z, jr_02E_6568

    ld [hl], a
    add hl, hl
    ld a, [hl+]

jr_02E_6568:
    adc b
    ld l, e
    inc b
    ld b, a
    scf
    dec b

jr_02E_656E:
    db $DD
    add a
    jr z, jr_02E_6574

    add hl, de
    ld a, [de]

jr_02E_6574:
    adc b
    ld l, e
    ld [bc], a
    ld b, a
    scf
    add d
    jr c, jr_02E_657D

    dec b

jr_02E_657D:
    add [hl]
    jr z, jr_02E_6582

    add hl, de

jr_02E_6581:
    ld a, [de]

jr_02E_6582:
    adc b
    ld l, e
    ld b, $47
    ld c, b
    ld c, b
    scf
    jr c, jr_02E_65C3

    ld [bc], a
    dec b
    halt
    add e
    jr z, jr_02E_6593

    add hl, de
    ld a, [de]

jr_02E_6593:
    adc d
    ld l, e
    ld b, $47
    ld c, b
    ld c, b
    scf
    dec b
    jp c, $2882

    ld [bc], a
    add hl, hl
    ld a, [hl+]
    adc l
    ld l, e
    ld [$2726], sp
    jr z, @+$80

    ld a, a
    jr z, @+$1B

    ld a, [de]
    adc h
    ld l, e
    ld [$3736], sp
    dec b
    adc [hl]
    adc a
    halt
    add hl, hl
    ld a, [hl+]
    adc l
    ld l, e
    ld [bc], a
    ld [hl], $37
    add e
    jr c, jr_02E_65C1

    add hl, sp
    ld a, [hl-]

jr_02E_65C1:
    adc [hl]
    ld l, e

jr_02E_65C3:
    ld bc, $8347
    ld c, b
    ld bc, $BF49
    ld l, e
    nop
    db $10
    ld [hl], b
    ld bc, $0892
    ld bc, $8FC0
    ld [$0001], sp
    adc a
    ld [$008A], sp
    add [hl]
    ld [$008A], sp
    add [hl]
    ld [$0001], sp
    adc a
    ld [$0005], sp
    ld [$00C9], sp
    rst $00
    adc b
    nop
    add e
    ld [$0086], sp
    add [hl]
    ld [$0001], sp
    add d
    ld [$0085], sp
    add d
    ld [$C601], sp
    add [hl]
    nop
    add e
    ld [$0082], sp
    ld [bc], a
    ld [$83C8], sp
    ld [$0085], sp
    add h
    ld [$CA02], sp
    nop
    add l
    ld [$0084], sp
    add l
    ld [$0001], sp
    add [hl]
    ld [$0083], sp
    add [hl]
    ld [$0001], sp
    add [hl]
    ld [$0082], sp
    add a
    ld [$0001], sp
    add h
    ld [$0083], sp
    ld bc, $87C5
    ld [$0002], sp
    ld [$0082], sp
    ld [bc], a
    ld [$8C00], sp
    ld [$0082], sp
    ld bc, $8608
    nop
    add a
    ld [$0082], sp
    ld [bc], a
    ld [$8C00], sp
    ld [$0003], sp
    jp nz, $8208

    nop
    add e
    ld [$C401], sp
    add a
    ld [$0082], sp
    add d
    ld [$0085], sp
    add l
    ld [$C101], sp
    add h
    nop
    ld bc, $8408
    nop
    ld [bc], a
    jp $8300


    ld [$0083], sp
    add d
    ld [$0001], sp
    add l
    ld [$0082], sp
    add e
    ld [$0083], sp
    add d
    ld [$0089], sp
    sub c
    ld [$1400], sp
    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $4AC0
    sbc $82
    ld b, a
    sub b
    sbc $02
    ld b, a
    cp l
    add d
    ld d, a
    ld bc, $8CBE
    sbc $82
    ld b, a
    ld b, $BD
    adc h
    ld c, l
    ld e, [hl]
    ld l, a
    ld a, b
    adc d
    sbc $02
    rst $08
    ld d, [hl]
    add d
    ld d, a
    ld b, $4F
    adc h
    ld e, [hl]
    ld a, b
    add a
    xor a
    add a
    sbc $82
    rst $08
    add hl, bc
    cp l
    ld d, a
    ld c, [hl]
    ld c, a
    or a
    ld l, l
    adc a
    sbc a
    xor a
    adc b
    sbc $06
    cp l
    ld d, a
    ld d, a
    ld a, [hl]
    ld e, [hl]
    ld e, [hl]
    dec b
    ld c, a
    ld a, e
    ld c, l
    ld l, b
    cp a
    adc c
    sbc $06
    halt
    sbc [hl]
    sbc e
    ld a, e
    ld l, l
    ld e, [hl]
    add d
    ld e, a
    add d
    ld l, a
    ld bc, $89BE
    sbc $02
    xor l
    call $1E82
    ld [$6D5B], sp
    ld l, a
    ld l, d
    ld e, e
    adc h
    adc a
    cp [hl]
    adc c
    sbc $01
    xor l
    add e
    xor [hl]
    ld [$1ECD], sp
    ld e, $6D
    ld e, [hl]
    ld l, l
    ld c, a
    cp [hl]
    adc h
    sbc $03
    xor l
    xor [hl]
    call $1E82
    inc b
    or a
    ld c, [hl]
    ld l, b
    cp a
    adc l
    sbc $04
    rst $18
    ld h, [hl]
    ld a, e
    or a
    add d
    ld e, [hl]
    ld bc, $8EBE
    sbc $07
    call $285B
    ld l, l
    ld a, e

jr_02E_6717:
    ld l, b
    cp a
    adc l
    sbc $06
    xor l
    call Call_02E_5B1E
    ld e, $78
    adc a
    sbc $01
    xor l
    add e
    xor [hl]
    ld bc, $BFAF
    sbc $00
    db $10
    sub b
    nop
    dec b
    ld bc, $00B0
    inc d
    ld h, a
    ld d, a
    jr @-$47

    call z, $B3CD
    ret


    jp z, $CCCB

    call $C6C5
    cp c
    or e
    ld [$284D], sp
    rst $00
    adc d
    ld bc, $C906
    ld bc, $5D18
    jr c, jr_02E_6717

    add d
    ld bc, $C501
    add a
    ld bc, $C508
    ld bc, $6D28
    ld c, b
    call nz, $C501
    add a
    ld bc, $B407
    jp $38B3


    ld l, d
    ld bc, $82C5
    ld bc, $B40E
    jp $C5B4


    jp $01B4


    push bc
    cp [hl]
    cp a
    ld c, b
    push bc
    ld bc, $83B4
    ld bc, $BC03
    cp l
    push bc
    add h
    ld bc, $CE03
    rst $08
    push bc
    add l
    ld bc, $B403
    call z, $84CD
    ld bc, $C504
    or e
    and b
    call nz, $0185
    inc bc
    push bc
    call nz, $83C5
    ld bc, $A00B
    adc c
    and c
    and h
    and d
    or h
    call nz, $01B4
    or a
    jp $0184


    inc bc
    and b
    and h
    rst $20
    add d
    or c
    ld [$A1A3], sp
    and d
    jp $C7B4


    or e
    push bc
    add e
    ld bc, $B003
    ld a, [c]
    di
    add d
    or c
    inc bc
    add d
    di
    and e
    add e
    and c
    rlca
    and d
    or e
    push bc
    or h
    push bc
    adc d
    pop af
    add d
    or c
    ld bc, $0082
    ld b, b
    ld b, b
    ld [bc], a
    dec [hl]
    ld [hl], $00
    db $10
    jp nz, Jump_02E_7BA5

    inc bc
    ld a, [hl+]
    ld a, e
    add hl, hl
    cp l
    ld a, e
    inc bc
    db $DD
    sbc $DF
    pop bc
    dec l
    ld a, e
    inc bc
    ld a, [hl+]
    ld a, e
    add hl, hl
    cp l
    ld a, e
    inc bc
    db $DD
    sbc $DF
    ret nz

    ld c, a
    ld a, e
    inc bc
    ld a, [hl+]
    ld a, e
    add hl, hl
    cp l
    ld a, e
    inc bc
    db $DD
    sbc $DF
    cp l
    ld a, e
    inc bc
    cp l
    cp [hl]
    cp a
    cp l
    ld a, e
    inc bc
    call $CFCE
    ret nz

    or c
    ld a, e
    inc bc
    ld a, [hl+]
    ld a, e
    add hl, hl
    cp l
    ld a, e
    inc bc
    db $DD
    sbc $DF
    ret nz

    ld h, [hl]
    ld a, e
    inc bc
    ld a, [hl+]
    ld a, e
    add hl, hl
    cp l
    ld a, e
    inc bc
    db $DD
    sbc $DF
    pop bc
    ld a, [bc]
    ld a, e
    inc bc
    ld a, [hl+]
    ld a, e
    add hl, hl
    cp l
    ld a, e
    inc bc
    db $DD
    sbc $DF
    pop bc
    inc e
    ld a, e
    inc bc
    ld a, [hl+]
    ld a, e
    add hl, hl
    xor e
    ld a, e
    inc bc
    ld a, [hl+]
    ld a, e
    add hl, hl
    adc a
    ld a, e
    inc bc
    db $DD
    sbc $DF
    xor e
    ld a, e
    inc bc
    db $DD
    sbc $DF
    ret nz

    xor c
    ld a, e
    inc bc
    ld a, [hl+]
    ld a, e
    add hl, hl
    cp l
    ld a, e
    inc bc
    db $DD
    sbc $DF
    cp l
    ld a, e
    inc bc
    cp l
    cp [hl]
    cp a
    cp l
    ld a, e
    inc bc
    call $CFCE
    jp nz, Jump_02E_7B5A

    inc bc
    ld a, [hl+]
    ld a, e
    add hl, hl
    cp l
    ld a, e
    inc bc
    db $DD
    sbc $DF
    jp nz, Jump_02E_7B16

    nop
    ld de, $0110
    sbc e
    ld [$C501], sp
    adc e
    ld [$C606], sp
    nop
    add c
    add hl, bc
    add c
    nop
    adc l
    ld [$0982], sp
    ld [bc], a
    add c
    add hl, bc
    add d
    ld [$C001], sp
    adc b
    ld [$8186], sp
    add d
    ld [$8101], sp
    add [hl]
    ld [$0001], sp
    add h
    add c
    ld bc, $8508
    add c
    add [hl]
    ld [$C202], sp
    ld [$8183], sp
    inc bc
    add hl, bc
    add c
    ld [$8184], sp
    adc b
    ld [$8189], sp
    add e
    ld [$C302], sp
    nop
    add d
    add c
    ld [bc], a
    ld [$8309], sp
    add c
    ld [bc], a
    add hl, bc
    ld [$8182], sp
    add h
    ld [$8182], sp
    ld bc, $8408
    add c
    ld bc, $8609
    add c
    inc bc
    nop
    ld [$8208], sp
    add c
    ld bc, $8308
    add c
    inc b
    pop bc
    add c
    add c
    ld [$8183], sp
    ld [bc], a
    ld [$82C4], sp
    ld [$8182], sp
    ld [$8108], sp
    add hl, bc
    add c
    add hl, bc
    nop
    add c
    ld [$8183], sp
    add h
    ld [$8182], sp
    ld bc, $8308
    add c
    add h
    ld [$8183], sp
    ld [bc], a
    ld [$8281], sp
    ld [$8182], sp
    add h
    ld [$8101], sp
    add e
    ld [$0903], sp
    add c
    add c
    add d
    add hl, bc
    add d
    ld [$818F], sp
    sub d
    ld [$7F00], sp
    nop
    ret nz

    nop
    add b
    ccf
    adc e
    ld l, e
    sub a
    ld b, a
    cp a
    ld e, b
    cp a

jr_02E_692A:
    ld d, b
    cp a
    ld d, b
    add b
    ld b, b
    cp l
    ld e, [hl]
    cp h
    ld d, e
    cp a
    ld d, b
    cp a
    ld e, a
    add b
    ccf
    ret nz

    nop
    ld a, a
    nop
    ld a, a
    nop
    ret nz

    nop
    add c
    ld a, $8B
    ld l, b
    add c
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, a
    add a
    ld [hl], b
    cp $00
    inc bc
    nop
    ld bc, $A1FC
    ld l, $01
    cp $61
    adc [hl]
    ld [hl], c
    ld b, $F9
    ld b, [hl]
    adc h
    ld h, b
    sbc b
    ld h, b
    sbc b
    ld h, b
    sbc h
    ld h, h
    adc a
    ld h, b
    add a
    jr nc, jr_02E_692A

    nop
    ld a, a
    nop
    ld sp, hl
    ld h, [hl]
    ld h, c
    ld a, [bc]
    dec h
    db $10
    ld h, c
    ld a, [de]
    pop bc
    ld e, $81
    inc a
    inc bc
    nop
    cp $00
    ld a, a
    nop
    ret nz

    nop
    add a
    ld a, $8C
    ld a, a
    adc h
    ld a, a
    add a
    ld a, [hl]
    sub b
    ld a, a
    add b
    ld a, a
    cp $00
    inc bc
    nop
    ld b, c
    cp h
    ld de, $01EE
    cp $01
    cp $09
    cp $09
    or $80
    ld a, a
    adc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sub b
    ld h, b
    sub b
    cpl
    ret nz

    nop
    ld a, a
    nop
    add hl, bc
    or $F9
    ld [hl], $F9
    ld b, $F9
    ld b, $09
    ld b, $09
    db $F4
    inc bc
    nop
    cp $00
    dec c
    inc b
    ld bc, $088E
    adc d
    nop
    add e
    ld [$0005], sp
    ld [$0800], sp
    nop
    add h
    ld [$0001], sp
    add e
    ld [$0084], sp
    ld bc, $8308
    nop
    ld [bc], a
    ld [$84C0], sp
    ld [$0007], sp
    ld [$0800], sp
    nop
    ld [$8600], sp
    ld [$0085], sp
    inc bc
    ld [$0000], sp
    adc h
    ld [$0083], sp
    add d
    ld [$0087], sp
    add d
    ld [$0082], sp
    add d
    ld [$0001], sp
    add l
    ld [$0001], sp
    add e
    ld [$0003], sp
    ld [$8408], sp
    nop
    ld [bc], a
    ld [$8200], sp
    ld [$0083], sp
    add d
    ld [$0082], sp
    ld bc, $8408
    nop
    inc b
    ld [$0800], sp
    nop
    add e
    ld [$0003], sp
    ld [$8200], sp
    ld [$0002], sp
    ld [$0083], sp
    add d
    ld [$0082], sp
    ld bc, $8808
    nop
    add d
    ld [$0001], sp
    adc h
    ld [$0088], sp
    add l
    ld [$0006], sp
    ld [$0008], sp
    ld [$8308], sp
    nop
    add h
    ld [$0087], sp
    inc bc
    ld [$0000], sp
    adc e
    ld [$0082], sp
    add e
    ld [$008A], sp
    adc a
    ld [$0F00], sp
    pop hl
    nop
    sub b
    ld [$0088], sp
    ld bc, $8308
    nop
    add e
    ld [$0001], sp
    add e
    ld [$0004], sp
    ld [$0800], sp
    add d
    nop
    ld [bc], a
    ld [$8300], sp
    ld [$0083], sp
    ld bc, $8808
    nop
    add l
    ld [$0001], sp
    add l
    ld [$0001], sp
    add [hl]
    ld [$0085], sp
    ld bc, $8508
    nop
    add h
    ld [$0007], sp
    ld [$0800], sp
    nop
    ld [$8300], sp
    ld [$0083], sp
    add d
    ld [$0085], sp
    inc bc
    ld [$0800], sp
    add e
    nop
    ld [bc], a
    ld [$8200], sp
    ld [$0083], sp
    ld b, $08
    nop
    ld [$0800], sp
    nop
    add e
    ld [$0005], sp
    ld [$0008], sp
    ld [$0083], sp
    inc bc
    ld [$0800], sp
    add l
    nop
    add d
    ld [$0002], sp
    ld [$0083], sp
    dec b
    ld [$0800], sp
    nop
    ld [$0083], sp
    add d
    ld [$0085], sp
    add e
    ld [$0083], sp
    ld [bc], a
    ld [$8500], sp
    ld [$0002], sp
    ld [$0082], sp
    add e
    ld [$0083], sp
    add d
    ld [$0087], sp
    ld [bc], a
    ld [$84C0], sp
    nop
    sub b
    ld [$0B00], sp
    sbc d
    nop
    ld [bc], a
    ld [$8AD3], sp
    ld [$0082], sp
    ld [bc], a
    ld [$8200], sp
    jp nc, $D103

    jp nc, $82CD

    ld [$0082], sp
    ld [bc], a
    ld [$82C5], sp
    nop
    inc bc
    ret


    nop
    res 0, l
    ld [$C506], sp
    nop
    nop
    ret


    nop
    res 0, e
    ld [$C303], sp
    jp nz, $82C4

    jp $0003


    ld [$83CB], sp
    ld [$0003], sp
    pop bc
    push bc
    add d
    nop
    add d
    ld [$C001], sp
    add h
    ld [$C102], sp
    push bc
    add d
    nop
    inc bc
    adc $08
    res 0, d
    ld [$0004], sp
    ld [$C600], sp
    add d
    ret nc

    inc bc
    rst $08
    ret nc

    call z, $0882
    ld b, $00
    ld [$C508], sp
    nop
    nop
    inc bc
    adc $00
    res 0, d
    ld [$0082], sp
    ld [bc], a
    ld [$82C5], sp
    nop
    inc bc
    adc $00
    res 0, d
    ld [$0082], sp
    ld [bc], a
    ld [$82C5], sp
    nop
    inc bc
    adc $00
    res 0, d
    ld [$0082], sp
    ld [bc], a
    ld [$82C7], sp
    ret z

    inc bc
    nop
    ld [$82CA], sp
    ld [$0082], sp
    add [hl]
    ld [$0001], sp
    adc h
    ld [$1400], sp
    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $1C95
    inc bc
    reti


    db $FD
    inc e
    adc e
    db $FD
    add [hl]
    inc e
    add d
    db $FD
    ld bc, $8B1C
    db $FD
    add [hl]
    inc e
    add d
    db $FD
    ld bc, $8B1C
    db $FD
    add [hl]
    inc e
    add d
    db $FD
    ld bc, $831C
    db $FD
    ld bc, $871C
    db $FD
    add [hl]
    inc e
    add d
    db $FD
    ld bc, $8B1C
    db $FD
    add [hl]
    inc e
    add d
    db $FD
    ld bc, $8B1C
    db $FD
    add [hl]
    inc e
    adc [hl]
    db $FD
    add [hl]
    inc e
    adc b
    db $FD
    ld bc, $891C
    db $FD
    add d
    inc e
    sub d
    db $FD
    sub b
    inc e
    add h
    db $FD
    add d
    inc e
    sub d
    db $FD
    add d
    inc e
    sub d
    db $FD
    add d
    inc e
    add d
    db $FD
    add h
    inc e
    adc c
    db $FD
    ld bc, $821C
    db $FD
    add d
    inc e
    add d
    db $FD
    add h
    inc e
    add d
    db $FD
    ld bc, $891C
    db $FD
    add d
    inc e
    add d
    db $FD

Jump_02E_6BFD:
    add h
    inc e
    adc h
    db $FD
    add d
    inc e
    add d
    db $FD
    add h
    inc e
    add [hl]
    db $FD
    ld bc, $851C
    db $FD
    add d
    inc e
    add d
    db $FD
    add h
    inc e
    adc h
    db $FD
    add d
    inc e
    add d
    db $FD
    add h
    inc e
    adc h
    db $FD
    sub l
    inc e
    nop
    rrca
    pop hl
    nop
    sub b
    ld [$8182], sp
    ld bc, $8A08
    add c
    add d
    ld [$8182], sp
    ld bc, $8309
    add c
    ld bc, $8609
    add c
    add d
    ld [$0982], sp
    add e
    add c
    inc bc
    add hl, bc
    add c
    add hl, bc
    add l
    add c
    add d
    ld [$8186], sp
    ld bc, $8609
    add c
    add d
    ld [$8183], sp
    ld bc, $8508
    add c
    ld bc, $8308
    add c
    add d
    ld [$8101], sp
    add h
    ld [$8183], sp
    ld bc, $8408
    add c
    add d
    ld [$8105], sp
    ld [$8108], sp
    ld [$8188], sp
    add d
    ld [$8102], sp
    ld [$8182], sp
    ld bc, $8808
    add c
    add d
    ld [$8102], sp
    ld [$8182], sp
    add l
    ld [$8184], sp
    add d
    ld [$8102], sp
    ld [$8182], sp
    ld bc, $8808
    add c
    add d
    ld [$8184], sp
    ld bc, $8508
    add c
    inc bc
    ld [$8181], sp
    add d
    ld [$8185], sp
    ld bc, $8408
    add c
    inc bc
    ld [$8181], sp
    add d
    ld [$8187], sp
    ld bc, $8508
    add c
    adc b
    ld [$C001], sp
    add a
    ld [$1400], sp
    sub b
    ld bc, $0895
    inc bc
    ret nz

    nop
    ld [$008B], sp
    add [hl]
    ld [$0082], sp
    ld bc, $8B08
    nop
    add [hl]
    ld [$0082], sp
    ld bc, $8B08
    nop
    add [hl]
    ld [$0082], sp
    ld bc, $8308
    nop
    ld bc, $8708
    nop
    add [hl]
    ld [$0082], sp
    ld bc, $8B08
    nop
    add [hl]
    ld [$0082], sp
    ld bc, $8B08
    nop
    add [hl]
    ld [$008E], sp
    add [hl]
    ld [$0088], sp
    ld bc, $8908
    nop
    add d
    ld [$0092], sp
    sub b
    ld [$0084], sp
    add d
    ld [$0092], sp
    add d
    ld [$0092], sp
    add d
    ld [$0082], sp
    add h
    ld [$0089], sp
    ld bc, $8208
    nop
    add d
    ld [$0082], sp
    add h
    ld [$0082], sp
    ld bc, $8908
    nop
    add d
    ld [$0082], sp
    add h
    ld [$008C], sp
    add d
    ld [$0082], sp
    add h
    ld [$0086], sp
    ld bc, $8508
    nop
    add d
    ld [$0082], sp
    add h
    ld [$008C], sp
    add d
    ld [$0082], sp
    add h
    ld [$008C], sp
    sub l
    ld [$1700], sp
    dec hl
    ld bc, $0898
    add d
    nop
    inc bc
    jp nz, $C400

    add d
    nop
    inc bc
    ld [$C600], sp
    add l
    nop
    inc bc
    jp z, $00CB

    add l
    ld [$C382], sp
    ld [$C3C1], sp
    add b
    ld [$0800], sp
    nop
    add $84
    ld [$C705], sp
    ret


    ret z

    rst $00
    nop
    add [hl]
    ld [$0001], sp
    add e
    ld [$C583], sp
    ld bc, $8500
    ld [$CC06], sp
    call $D4D5
    push de
    nop
    adc b
    ld [$0083], sp
    add [hl]
    ld [$CA05], sp
    rlc b
    sub $00
    sub d
    ld [$0004], sp
    adc $D2
    db $D3
    add d
    jp nc, $0892

    inc bc
    nop
    rst $08
    ret nc

    add d
    rst $08
    sub l
    ld [$0001], sp
    sub h
    ld [$0083], sp
    sub e
    ld [$0082], sp
    add d
    ld [$DC82], sp
    ld [bc], a
    ld [$84C0], sp
    db $DB
    ld bc, $8500
    ret c

    add d
    ld [$0084], sp
    add e
    ld [$0082], sp
    ld bc, $8408
    pop de
    ld bc, $8400
    reti


    ld bc, $8608
    nop
    add e
    ld [$0083], sp
    sub a
    ld [$1400], sp
    or h
    nop
    add hl, bc
    ld a, [bc]
    sub b
    ld bc, $4A82
    ld bc, $8305
    ld b, $01
    rlca
    adc a
    ld c, d
    ld bc, $8325
    ld l, [hl]
    ld bc, $8727
    ld c, d
    add e
    db $FC
    add [hl]
    ld c, d
    add e
    rst $38
    adc b
    ld c, d
    inc bc
    ld e, [hl]
    ld e, a
    ld e, $85
    ld c, d
    ld bc, $8305
    ld d, $01
    rlca
    add [hl]
    ld c, d
    inc b
    dec b
    ld b, $FF
    rlca
    add h
    ld c, d
    ld [bc], a
    dec b
    sbc d
    add e
    ld d, $01
    sbc c
    add [hl]
    ld b, $04
    sbc d
    rst $08
    ld d, $17
    add h
    ld c, d
    ld [bc], a
    dec d
    db $ED
    add d
    ld h, $01
    adc d
    adc b
    ld d, $03
    rst $18
    ld d, $17
    add h
    ld c, d
    ld [bc], a
    dec h
    daa
    add d
    ld [hl], $01
    dec h
    adc d
    ld h, $01
    daa
    add h
    ld c, d
    ld [bc], a
    dec [hl]
    scf
    add d
    ld c, d
    ld bc, $8A35
    ld [hl], $01
    scf
    add e
    ld c, d
    ld b, $24
    ld h, h
    adc d
    ld [de], a
    inc [hl]
    ld h, h
    adc [hl]
    nop
    add e
    add h
    inc bc
    ld [hl], $84
    add h
    adc [hl]
    nop
    ld b, $94
    and l
    and l
    nop
    add h
    ld b, h
    sub d
    nop
    ld bc, $C0A5
    or [hl]
    nop
    nop
    inc c
    ld l, h
    nop
    ld bc, $9002
    nop
    add l
    ld a, a
    add [hl]
    ld [hl], l
    add l
    ld a, a
    ld [$0854], sp
    ld [$082A], sp
    dec hl
    ld [$8453], sp
    ld a, a
    ld [$0C54], sp
    jr jr_02E_6EBD

    jr jr_02E_6EC0

    inc h
    ld d, e
    add h
    ld a, a
    inc b
    ld d, h
    inc e
    adc a
    ld b, b
    add d
    adc a
    ld [bc], a
    inc [hl]
    ld d, e
    add d
    ld a, a
    add e
    ld [hl], l
    ld b, $7E
    adc a
    adc a
    ld a, h
    ld h, l
    ld h, l
    add d
    ld a, a
    inc bc
    ld d, h
    ld [$822A], sp
    ld [$8F04], sp
    jr z, jr_02E_6ED3

    ld d, e
    add e
    ld a, a
    dec b
    ld d, h
    daa
    ld a, [hl-]
    jr jr_02E_6EDF

    add d
    adc a
    ld [bc], a
    add hl, sp
    ld d, e
    add e
    ld a, a
    dec b
    ld d, h
    scf

jr_02E_6EBD:
    ld b, b
    adc a
    inc a

jr_02E_6EC0:
    add e
    adc a
    ld bc, $8353
    ld a, a
    ld bc, $8554
    adc a
    inc bc
    ld h, a
    ld d, c
    ld d, e
    add e
    ld a, a
    add hl, bc
    ld d, h
    adc a

jr_02E_6ED3:
    adc a
    ld c, l
    ld c, [hl]
    ld c, a
    ld h, [hl]
    ld h, c
    ld d, e
    add e
    ld a, a
    add hl, bc
    ld d, h
    adc a

jr_02E_6EDF:
    adc a
    ld l, l
    ld l, [hl]
    ld l, a
    halt
    ld [hl], c
    ld d, e
    add h
    ld a, a
    add d
    ld h, l
    inc bc
    ld h, h
    ld b, d
    ld h, e
    add d
    ld h, l
    add e
    ld a, a
    nop
    inc c
    ld l, h
    nop
    ld bc, $9002
    nop
    add l
    ld a, a
    add [hl]
    ld [hl], l
    add l
    ld a, a
    ld [$0854], sp
    ld [$082A], sp
    dec hl
    ld [$8453], sp
    ld a, a
    ld [$0C54], sp
    jr jr_02E_6F4A

    jr jr_02E_6F4D

    inc h
    ld d, e
    add h
    ld a, a
    inc b
    ld d, h
    inc e
    adc a
    ld b, b
    add d
    adc a
    ld [bc], a
    inc [hl]
    ld d, e
    add d
    ld a, a
    add e
    ld [hl], l
    ld b, $7E
    adc a
    adc a
    ld a, h
    ld h, l
    ld h, l
    add d
    ld a, a
    inc bc
    ld d, h
    ld [$822A], sp
    ld [$8F82], sp
    ld [bc], a
    add hl, hl
    ld d, e
    add e
    ld a, a
    dec b
    ld d, h
    daa
    ld a, [hl-]
    jr jr_02E_6F6C

    add d
    adc a
    ld [bc], a
    add hl, sp
    ld d, e
    add e
    ld a, a
    dec b
    ld d, h
    scf

jr_02E_6F4A:
    ld b, b
    adc a
    inc a

jr_02E_6F4D:
    add e
    adc a
    ld bc, $8353
    ld a, a
    ld bc, $8554
    adc a
    inc bc
    ld h, a
    ld d, c
    ld d, e
    add e
    ld a, a
    add hl, bc
    ld d, h
    adc a
    adc a
    ld c, l
    ld c, [hl]
    ld c, a
    ld h, [hl]
    ld h, c
    ld d, e
    add e
    ld a, a
    add hl, bc
    ld d, h
    adc a

jr_02E_6F6C:
    adc a
    ld l, l
    ld l, [hl]
    ld l, a
    halt
    ld [hl], c
    ld d, e
    add h
    ld a, a
    add d
    ld h, l
    inc bc
    ld h, h
    ld b, d
    ld h, e
    add d
    ld h, l
    add e
    ld a, a
    nop
    add hl, de
    ld [hl], c
    ld [bc], a
    ret nz

    sbc d
    ld [$C001], sp
    add l
    ld [$0082], sp
    sub c
    ld [$0001], sp
    add l
    ld [$0083], sp
    sub b
    ld [$0089], sp
    adc l
    ld [$0085], sp
    add h
    ld [$0001], sp
    sub e
    ld [$0006], sp
    ld [$C800], sp
    ld [$9000], sp
    ld [$0083], sp
    inc bc
    ret


    nop
    nop
    add d

jr_02E_6FB2:
    ld [$0001], sp
    sub h
    ld [$C701], sp
    add h
    nop
    sbc b
    ld [$0001], sp
    sub b
    ld [$0084], sp
    ld [bc], a
    add $C5
    add e
    nop
    sub a
    ld [$0001], sp
    sub e
    ld [$0086], sp
    sbc b
    ld [$0001], sp
    sub l
    ld [$0084], sp
    sub e
    ld [$0082], sp
    ld bc, $8308
    nop
    sub d
    ld [$C207], sp
    nop
    nop
    ld [$C400], sp
    nop
    sub b
    ld [$0082], sp
    inc b
    ld [$0000], sp
    ld [$0083], sp
    sub b
    ld [$0003], sp
    pop bc
    ld [$0082], sp
    inc b
    ld [$0800], sp
    nop
    sub b
    ld [$0087], sp
    ld [bc], a
    ld [$A8C3], sp
    ld [$0800], sp
    nop
    sub b
    nop
    ld a, b
    db $10
    ld [$0022], sp
    add b
    push hl
    ld d, h
    db $10
    dec b
    jr z, jr_02E_701C

jr_02E_701C:
    adc [hl]
    dec b
    ld c, h
    ld [bc], a
    ld [bc], a
    cpl
    jr nz, jr_02E_6FB2

    ld b, l
    ld c, h
    ld [bc], a
    ld [bc], a
    cpl
    ld b, b
    adc [hl]
    ld b, l
    ld c, a
    inc b
    ld bc, $402F
    adc a
    add l
    ld c, [hl]
    inc b
    ld bc, $802F
    adc [hl]
    push bc
    ld c, [hl]
    inc b
    ld bc, $802F
    adc a
    add l
    ld c, e
    inc b
    ld bc, $0B2F
    nop
    sub b
    nop
    ld c, b
    db $10
    ld [$E023], sp
    adc [hl]
    ld b, l
    ld e, e
    ld [bc], a
    ld [bc], a
    cpl
    nop
    adc [hl]
    adc e
    ld h, a
    ld [bc], a
    ld bc, $202F
    adc [hl]
    dec bc
    ld l, b
    ld [bc], a
    ld bc, $402F
    adc [hl]
    ld b, l
    ld d, b
    inc b
    ld bc, $802F
    adc [hl]
    add l
    ld d, b
    inc b
    ld bc, $002F
    adc a
    ld l, e
    ld l, b
    ld [bc], a
    ld bc, $202F
    adc a
    dec hl
    ld l, b
    ld [bc], a
    ld bc, $402F
    adc a
    ld b, l
    ld d, c
    inc b
    ld bc, $802F
    adc a
    push bc
    ld d, c
    inc b
    ld bc, $002F
    add b
    nop
    ld h, b
    db $10
    ld [$0F20], sp
    add a
    nop
    inc b
    nop
    sub [hl]
    nop
    rra
    ret c

    di
    add d
    ld a, [c]
    rst $20
    add d
    sbc $82
    reti


    xor $F1
    add d
    db $DD
    rst $20
    and d
    add sp, -$4F
    push af
    or c
    db $EB
    or c
    xor $F2
    jp hl


    or c
    ld a, [c]
    or c
    db $ED
    push af
    and e
    di
    adc l
    or c
    add d
    db $DB
    adc l
    or c
    ld [bc], a
    ld [$8D82], a
    or c
    dec l
    di
    ld [$80B1], a
    ld a, [c]
    pop de
    db $EB
    db $F4
    or c
    db $EB
    add e
    db $EB
    pop de
    or c
    pop de
    db $DD
    db $E3
    db $DB
    db $DD
    add e
    call nc, $E392
    sub c
    add c
    db $DD
    call c, $F780
    ldh [$ED], a
    db $DB
    sub c
    db $ED
    call c, $DCEB
    add e
    rst $10
    call c, $ECED
    push af
    db $EB
    add e
    add d
    ld [$D91D], a
    db $DD
    db $EC
    rst $10
    db $EC
    rst $18
    rst $20
    sub c
    reti


    rst $18
    pop af
    jp nc, $DBD7

    or c
    jp hl


    db $ED
    ld [$91E7], a
    rst $28
    db $DB
    ld [$EFE9], a
    ldh [$DB], a
    rst $20
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
    inc e
    inc de
    db $10
    rrca
    ld sp, $232F
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    ldh [rNR41], a
    jr c, @-$36

    jr @-$1E

    db $EC
    db $F4
    db $FC
    stop
    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
    rra
    db $10
    dec de
    inc b
    scf
    inc l
    daa
    jr jr_02E_7145

jr_02E_7145:
    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
    inc e
    inc de

jr_02E_714E:
    db $10
    rrca
    jr nc, jr_02E_7181

    inc hl
    rra
    inc hl
    inc e
    inc hl
    inc e
    ld sp, $301E
    cpl
    inc e
    rrca
    rra
    inc de
    rlca
    inc b
    nop
    nop
    db $FC
    nop
    db $FC
    nop
    db $EC
    db $10
    inc e
    db $F4
    jr c, jr_02E_714E

    ld hl, sp-$38
    ldh [rNR41], a
    nop
    nop
    daa
    jr jr_02E_719A

    inc e
    jr nc, jr_02E_7199

    jr nc, @+$31

    inc e
    rrca
    rra
    inc de
    rrca

jr_02E_7181:
    inc c
    nop
    nop
    daa
    inc e
    daa
    jr jr_02E_71C0

    jr jr_02E_71C6

    inc l
    rra
    inc b
    rra
    db $10

jr_02E_7190:
    rlca
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02E_7199:
    nop

jr_02E_719A:
    rlca
    inc b
    inc e
    inc de
    db $10
    rrca
    ld sp, $232F
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    ldh [rNR41], a
    jr c, @-$36

    jr jr_02E_7190

    db $EC
    db $F4
    db $FC
    stop
    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
    rra
    db $10
    dec de
    inc b

jr_02E_71C0:
    scf
    inc l
    daa
    jr jr_02E_71C5

jr_02E_71C5:
    nop

jr_02E_71C6:
    nop
    nop
    nop
    nop
    rlca
    inc b
    inc e
    inc de

jr_02E_71CE:
    db $10
    rrca
    jr nc, jr_02E_7201

    inc hl
    rra
    inc hl
    inc e
    inc hl
    inc e
    ld sp, $301E
    cpl
    inc e
    rrca
    rra
    inc de
    rlca
    inc b
    nop
    nop
    db $FC
    nop
    db $FC
    nop
    db $EC
    db $10
    inc e
    db $F4
    jr c, jr_02E_71CE

    ld hl, sp-$38
    ldh [rNR41], a

jr_02E_71F2:
    nop
    nop
    daa
    jr jr_02E_721A

    inc e
    jr nc, jr_02E_7219

    jr nc, @+$31

    inc e
    rrca
    rra
    inc de
    rrca

jr_02E_7201:
    inc c
    nop
    nop
    daa
    inc e
    daa
    jr @+$39

    jr jr_02E_7246

    inc l

jr_02E_720C:
    rra
    inc b
    rra
    db $10
    rlca
    inc b
    nop
    nop
    nop
    nop
    rlca
    inc b
    inc e

jr_02E_7219:
    inc de

jr_02E_721A:
    db $10
    rrca
    ld sp, $232F
    ld e, $23
    inc e
    inc hl
    inc e
    nop
    nop
    ldh [rNR41], a
    jr c, jr_02E_71F2

    jr jr_02E_720C

    db $EC
    db $F4
    db $FC
    db $10
    db $FC
    nop
    db $FC
    nop
    nop
    nop
    rlca
    inc b
    rra
    db $10
    dec de
    inc b
    scf
    inc l
    daa
    jr jr_02E_7268

    jr jr_02E_7266

    inc e
    nop
    nop

jr_02E_7246:
    rlca
    inc b
    inc e
    inc de
    db $10
    rrca
    jr nc, jr_02E_727D

    inc hl
    rra
    daa
    inc e
    daa
    jr @+$33

    ld e, $30
    cpl
    inc a
    cpl
    rra
    inc de
    dec de
    inc e
    inc c
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    db $EC
    db $10

jr_02E_7266:
    inc e
    db $F4

jr_02E_7268:
    inc a
    db $E4
    ld hl, sp-$38
    ret c

    jr c, jr_02E_729F

    ldh a, [rLCDC]
    ret nz

    nop
    nop
    jr nc, jr_02E_7295

    jr nc, jr_02E_72A7

    inc a
    cpl
    rra
    inc de
    dec de

jr_02E_727D:
    inc e
    inc c
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    scf
    jr jr_02E_72C2

    inc l
    ccf
    inc h
    rra
    db $10
    dec de
    inc e
    inc c
    rrca

jr_02E_7290:
    ld [bc], a
    inc bc
    nop
    nop
    nop

jr_02E_7295:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10

jr_02E_729F:
    rrca
    ld de, $230F
    ld e, $00
    nop
    nop

jr_02E_72A7:
    nop
    nop
    nop
    ret nz

    nop
    jr nc, @-$3E

    jr jr_02E_7290

    add sp, -$10
    db $FC
    stop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    dec de
    inc b
    rla
    inc c

jr_02E_72C2:
    daa
    jr jr_02E_72C5

jr_02E_72C5:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc

jr_02E_72CE:
    db $10
    rrca
    db $10
    rrca
    inc hl
    rra
    inc hl
    inc e
    inc hl
    inc e
    ld sp, $101E
    rrca

jr_02E_72DC:
    inc e
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    db $FC
    nop
    db $FC
    nop
    db $EC
    db $10
    jr jr_02E_72DC

    jr c, jr_02E_72CE

    ldh a, [$C0]
    ret nz

    nop
    nop
    nop
    daa
    jr jr_02E_731A

    inc e
    jr nc, jr_02E_7319

    db $10
    rrca
    inc e
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    daa
    inc e
    daa
    jr @+$39

    jr jr_02E_7326

    inc c
    rra
    inc b
    rrca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca

jr_02E_7319:
    inc bc

jr_02E_731A:
    rra
    rrca
    ld e, $0F

jr_02E_731E:
    dec a
    ld e, $3F
    inc e
    ccf
    inc e
    nop
    nop

jr_02E_7326:
    ret nz

    nop
    ldh a, [$C0]
    ld hl, sp-$20
    jr jr_02E_731E

    db $EC
    db $10
    db $FC
    nop
    db $FC
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    rra
    inc b
    dec de
    inc c
    ccf
    jr jr_02E_7380

    jr jr_02E_7382

    inc e
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    rra
    rrca
    rra
    rrca
    inc a
    rra
    dec sp
    inc e
    ccf
    jr jr_02E_7384

    ld e, $3F
    rrca
    inc sp
    rrca
    inc e
    inc bc
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    db $FC
    db $10
    db $EC
    ldh a, [$DC]
    ldh [$38], a
    ret nz

    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    cpl
    rra
    ccf
    rrca
    inc sp
    rrca
    inc e
    inc bc
    rra
    nop
    rrca
    nop

jr_02E_7380:
    inc bc
    nop

jr_02E_7382:
    nop
    nop

jr_02E_7384:
    cpl
    jr jr_02E_73BE

    inc c
    dec sp
    inc b
    rra
    nop

jr_02E_738C:
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    ld de, $230F
    ld e, $23
    inc e
    inc hl
    inc e
    nop
    nop
    ret nz

    nop
    jr nc, @-$3E

    jr jr_02E_738C

    add sp, -$10
    db $FC
    db $10
    db $FC
    nop
    db $FC
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    dec de
    inc b
    rla
    inc c

jr_02E_73BE:
    daa
    jr @+$29

    jr jr_02E_73E6

    inc e
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    inc hl
    rra
    daa
    inc e
    daa
    jr @+$33

    ld e, $30
    rrca
    inc a
    rrca
    rra
    inc bc
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    db $EC
    db $10

jr_02E_73E6:
    inc e
    ldh a, [$3C]
    ldh [$F8], a
    ret nz

    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    jr nc, jr_02E_7415

    jr nc, jr_02E_7407

    inc a
    rrca
    rra
    inc bc
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    scf
    jr @+$3D

jr_02E_7407:
    inc c
    ccf
    inc b
    rra
    nop

jr_02E_740C:
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    nop

jr_02E_7415:
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    ld de, $230F
    ld e, $23
    inc e
    inc hl
    inc e
    nop
    nop
    ret nz

    nop
    jr nc, @-$3E

    jr jr_02E_740C

    add sp, -$10
    db $FC
    db $10
    db $FC
    nop
    db $FC
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    dec de
    inc b
    rla
    inc c
    daa
    jr @+$29

    jr jr_02E_7466

    inc e
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    inc hl
    rra
    daa
    inc e
    daa
    jr @+$33

    ld e, $30
    rrca
    inc a
    rrca
    rra
    inc bc
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    db $EC
    db $10

jr_02E_7466:
    inc e
    ldh a, [$3C]
    ldh [$F8], a
    ret nz

    ld hl, sp+$00

jr_02E_746E:
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    jr nc, jr_02E_7495

    jr nc, jr_02E_7487

    inc a
    rrca
    rra
    inc bc
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    scf
    jr jr_02E_74C2

jr_02E_7487:
    inc c
    ccf
    inc b
    rra
    nop
    rra
    nop
    rrca
    nop

jr_02E_7490:
    inc bc
    nop
    nop
    nop
    nop

jr_02E_7495:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    ld de, $230F
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_02E_746E

    jr jr_02E_7490

    add sp, -$10
    db $FC
    stop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    dec de
    inc b
    rla
    inc c

jr_02E_74C2:
    daa
    jr jr_02E_74C5

jr_02E_74C5:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc

jr_02E_74CE:
    db $10
    rrca
    db $10
    rrca
    inc hl
    rra
    inc hl
    inc e
    inc hl
    inc e
    ld sp, $101E
    rrca

jr_02E_74DC:
    inc e
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    db $FC
    nop
    db $FC
    nop
    db $EC
    db $10
    jr jr_02E_74DC

    jr c, jr_02E_74CE

    ldh a, [$C0]
    ret nz

    nop
    nop
    nop
    daa
    jr jr_02E_751A

    inc e
    jr nc, jr_02E_7519

    db $10
    rrca
    inc e
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    daa
    inc e
    daa
    jr jr_02E_7540

    jr jr_02E_7526

    inc c
    rra
    inc b
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

jr_02E_7519:
    nop

jr_02E_751A:
    inc bc
    nop
    rrca
    inc bc
    rra
    rrca
    ld e, $0F

jr_02E_7522:
    dec a
    ld e, $00
    nop

jr_02E_7526:
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [$C0]
    ld hl, sp-$20
    jr jr_02E_7522

    db $EC
    stop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    rra
    inc b

jr_02E_7540:
    dec de
    inc c
    ccf
    jr jr_02E_7545

jr_02E_7545:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    rra
    rrca
    rra
    rrca
    inc a
    rra
    ccf
    inc e
    ccf
    inc e
    cpl
    ld e, $1F
    rrca
    inc de
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    db $FC
    nop
    db $FC
    nop
    db $FC
    db $10
    add sp, -$10
    ret c

    ldh [$30], a
    ret nz

    ret nz

    nop

jr_02E_7572:
    nop
    nop
    ccf
    jr jr_02E_75B6

    inc e
    cpl
    rra
    rra
    rrca
    inc de
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    dec sp
    inc e
    ccf
    jr jr_02E_75B8

    jr jr_02E_75A2

    inc c

jr_02E_758C:
    dec de
    inc b
    rrca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
    inc e
    inc de
    db $10
    rrca
    ld sp, $232F
    ld e, $23
    inc e

jr_02E_75A2:
    inc hl
    inc e
    nop
    nop
    ldh [rNR41], a
    jr c, jr_02E_7572

    jr jr_02E_758C

    db $EC
    db $F4
    db $FC
    db $10
    db $FC
    nop
    db $FC
    nop
    nop
    nop

jr_02E_75B6:
    rlca
    inc b

jr_02E_75B8:
    rra
    db $10
    dec de
    inc b
    scf
    inc l
    daa
    jr jr_02E_75E8

    jr jr_02E_75E6

    inc e
    nop
    nop
    rlca
    inc b
    inc e
    inc de
    db $10
    rrca
    jr nc, jr_02E_75FD

    inc hl
    rra
    daa
    inc e
    daa
    jr @+$33

    ld e, $30
    cpl
    inc a
    cpl
    rra
    inc de
    dec de
    inc e
    inc c
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    db $EC
    db $10

jr_02E_75E6:
    inc e
    db $F4

jr_02E_75E8:
    inc a
    db $E4
    ld hl, sp-$38
    ret c

    jr c, jr_02E_761F

    ldh a, [rLCDC]
    ret nz

    nop
    nop
    jr nc, jr_02E_7615

    jr nc, jr_02E_7627

    inc a
    cpl
    rra
    inc de
    dec de

jr_02E_75FD:
    inc e
    inc c
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    scf
    jr jr_02E_7642

    inc l
    ccf
    inc h
    rra
    db $10
    dec de
    inc e
    inc c
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    nop

jr_02E_7615:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    rra

jr_02E_761F:
    rrca
    ld e, $0F

jr_02E_7622:
    dec a
    ld e, $00
    nop
    nop

jr_02E_7627:
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [$C0]
    ld hl, sp-$20
    jr jr_02E_7622

    db $EC
    stop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    rra
    inc b
    dec de
    inc c

jr_02E_7642:
    ccf
    jr jr_02E_7645

jr_02E_7645:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    rra
    rrca
    rra
    rrca
    inc a
    rra
    ccf
    inc e
    ccf
    inc e
    cpl
    ld e, $1F
    rrca
    inc de
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    db $FC
    nop
    db $FC
    nop
    db $FC
    db $10
    add sp, -$10
    ret c

    ldh [$30], a
    ret nz

    ret nz

    nop
    nop
    nop
    ccf
    jr jr_02E_76B6

    inc e
    cpl
    rra
    rra
    rrca
    inc de
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    dec sp
    inc e
    ccf
    jr jr_02E_76B8

    jr jr_02E_76A2

    inc c
    dec de
    inc b
    rrca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    rra
    rrca
    ld e, $0F

jr_02E_769E:
    dec a
    ld e, $3F
    inc e

jr_02E_76A2:
    ccf
    inc e
    nop
    nop
    ret nz

    nop
    ldh a, [$C0]
    ld hl, sp-$20
    jr jr_02E_769E

    db $EC
    db $10
    db $FC
    nop
    db $FC
    nop
    nop
    nop

jr_02E_76B6:
    inc bc
    nop

jr_02E_76B8:
    rrca
    nop
    rra
    inc b
    dec de
    inc c
    ccf
    jr jr_02E_7700

    jr jr_02E_7702

    inc e
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    rra
    rrca
    rra
    rrca
    inc a
    rra
    dec sp
    inc e
    ccf
    jr jr_02E_7704

    ld e, $3F
    rrca
    inc sp
    rrca
    inc e
    inc bc
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    db $FC
    db $10
    db $EC
    ldh a, [$DC]
    ldh [$38], a
    ret nz

    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    cpl
    rra
    ccf
    rrca
    inc sp
    rrca
    inc e
    inc bc
    rra
    nop
    rrca
    nop

jr_02E_7700:
    inc bc
    nop

jr_02E_7702:
    nop
    nop

jr_02E_7704:
    cpl
    jr jr_02E_773E

    inc c
    dec sp
    inc b
    rra
    nop
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    inc c
    ld l, h
    nop
    ld bc, $9002
    nop
    ld [bc], a
    add d
    or a
    adc e
    add d
    add d
    db $FD
    ld bc, $83F7
    db $FD
    ld bc, $85C2
    add d
    add d
    db $FD
    ld b, $FE
    db $FD
    db $FD
    cp $92
    db $FD
    add h
    add d
    add d
    cp $83
    db $FD
    ld [bc], a
    cp $FD
    add l
    add d

jr_02E_773E:
    add e
    db $FD
    ld bc, $86A8
    db $FD
    add d
    add d
    inc bc
    sub d
    db $FD
    jp nz, $FD87

    add d
    add d
    ld [bc], a
    jp nz, $8682

    db $FD
    ld bc, $83FE
    add d
    ld bc, $83C2
    db $FD
    inc bc
    jp nz, $C2F7

    add d
    db $FD
    ld b, $A8
    add d
    add d
    sub d
    db $FD
    db $FD
    inc bc
    add d
    db $FD
    add d
    add d
    db $FD
    ld [bc], a
    cp $FD
    add [hl]
    add d
    ld b, $FD
    rst $30
    db $FD
    cp $C2
    cp $86

jr_02E_777B:
    add d
    ld [bc], a
    db $FD
    add d
    add d
    db $FD
    ld [bc], a
    cp $FD
    add [hl]
    add d
    ld bc, $86B7
    add d
    nop
    inc b
    nop
    sub b
    nop
    ld l, b
    db $10
    ld [$001E], sp
    add b
    push hl
    ld d, h
    db $10
    dec b
    jr z, jr_02E_777B

    adc [hl]
    add l
    ld d, d
    ld [bc], a
    ld [bc], a
    cpl
    nop
    add [hl]
    nop
    ld a, b
    db $10
    ld [$0C23], sp
    ldh [$8E], a
    ld b, l
    ld e, e
    ld [bc], a
    ld [bc], a
    cpl
    nop
    adc [hl]
    db $EB
    ld l, b
    ld [bc], a
    ld bc, $202F
    adc [hl]
    dec bc
    ld h, l
    ld [bc], a
    ld bc, $402F
    adc [hl]
    add l
    ld d, h
    inc b
    ld bc, $802F
    adc [hl]
    dec b
    ld b, e
    inc b
    ld bc, $002F
    sub b
    nop
    ld c, b
    db $10
    ld [$001D], sp
    add b
    nop
    ld h, b
    db $10
    ld [$0020], sp
    adc a
    ld l, e
    ld h, h
    ld [bc], a
    ld bc, $202F
    adc a
    ld c, e
    ld h, h
    ld [bc], a
    ld bc, $402F
    adc a
    ld b, l
    ld e, b
    inc b
    ld bc, $802F
    adc a
    ld b, l
    ld d, a
    inc b
    ld bc, $C02F
    adc [hl]
    dec b
    ld d, h
    ld [bc], a
    ld [bc], a
    cpl
    ld bc, $9000
    add $58
    db $10
    inc bc
    dec hl
    rrca
    nop
    sub b
    nop
    ld a, b
    db $10
    ld [$E023], sp
    adc [hl]
    add l
    ld b, h
    ld [bc], a
    ld [bc], a
    cpl
    nop
    add b
    nop
    ld h, b
    db $10
    ld [$0020], sp
    adc [hl]
    ld c, e
    ld h, [hl]
    ld bc, $2F02
    db $10
    adc a
    dec hl
    ld h, [hl]
    ld [bc], a
    ld bc, $102F
    adc [hl]
    adc e
    ld h, [hl]
    ld [bc], a
    ld bc, $302F
    adc a
    xor e
    ld h, [hl]
    ld [bc], a
    ld bc, $302F
    adc [hl]
    ld l, e
    ld h, [hl]
    ld [bc], a
    ld bc, $502F
    adc [hl]
    add l
    ld b, a
    inc b
    ld bc, $502F
    adc a
    dec b
    ld e, h
    inc b
    ld bc, $902F
    adc [hl]
    push bc
    ld e, h
    inc b
    ld bc, $D02F
    adc [hl]
    dec bc
    ld h, a
    ld bc, $2F02
    sub b
    adc a
    dec b
    ld e, l
    inc b
    ld bc, $002F
    adc l
    ld b, l
    ld b, a
    inc b
    ld bc, $402F
    adc l
    dec b
    ld c, b
    inc b
    ld bc, $042F
    nop
    sub b
    inc de
    halt
    db $10
    inc b
    add hl, hl
    nop
    sub h
    rst $38
    ld e, h
    db $10
    ld [bc], a
    inc l
    nop
    sub [hl]
    rst $38
    ld h, b
    db $10
    ld [bc], a
    inc l
    nop
    adc h
    inc de
    ld e, [hl]
    db $10
    inc b
    add hl, hl
    inc c
    nop
    sub b
    nop
    ld d, b
    db $10
    ld [$C01E], sp
    adc [hl]
    sbc $7D
    inc bc
    ld [bc], a
    ld l, $E0
    adc [hl]
    add l
    ld b, h
    ld [bc], a
    ld [bc], a
    cpl
    nop
    adc [hl]
    ld c, e
    ld l, c
    ld [bc], a
    ld bc, $202F
    adc [hl]
    adc e
    ld l, b
    ld [bc], a
    ld bc, $402F
    adc [hl]
    push bc
    ld b, e
    inc b
    ld bc, $802F
    adc [hl]
    push bc
    ld b, l
    inc b
    ld bc, $002F
    adc a
    xor e
    ld h, l
    ld [bc], a
    ld bc, $202F
    adc a
    db $EB
    ld h, l
    ld [bc], a
    ld bc, $402F
    adc a
    push bc
    ld b, h
    inc b
    ld bc, $802F
    adc a
    add l
    ld b, d
    inc b
    ld bc, $002F
    add b
    nop
    ld h, b
    db $10
    ld [$0B20], sp
    ld h, e
    nop
    nop
    nop
    ld l, [hl]
    nop
    jr jr_02E_78F0

    inc e
    jr @+$1B

    ld a, [de]
    inc e
    dec e

jr_02E_78F0:
    ld a, [de]
    dec c
    ld e, h
    nop
    ld d, $93
    jr z, @+$2B

    ld a, [hl+]
    inc l
    dec l
    sub h
    ld e, $0E
    nop
    ld h, $3B
    add l
    ld bc, $C706
    ld l, $1E
    ccf
    ld [hl], $3B
    add d
    ld bc, $6901
    add e
    ld bc, $3E07
    ld l, $1F
    ld b, $3B
    ld bc, $8567
    ld bc, $8404
    rra
    ld d, $3B
    add d
    ld bc, $5D01
    add h
    ld bc, $A304
    cpl
    ld h, $3B
    add [hl]
    ld bc, $6905
    inc a
    ccf
    ld [hl], $3B
    add [hl]
    ld bc, $6705
    inc a
    cpl
    ld [hl], $3B
    add d
    ld bc, $4C02
    ld a, [hl-]
    add e
    ld bc, $3C0C
    cpl
    ld c, d
    ld b, a
    ld b, [hl]
    ld b, a
    ld e, h
    ld c, d
    ld d, [hl]
    ld d, a
    ld b, a
    ld e, b
    adc b
    nop
    nop
    rst $38
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    sbc a
    ld a, a
    xor a
    ld e, a
    xor a
    ld e, a
    adc a
    ld a, a
    rrca
    rst $38
    rlca
    rst $38
    ld h, e
    sbc a
    sub c
    rrca
    add h
    dec de
    ld a, [bc]
    pop af
    ld d, d
    and c
    or b
    ld bc, $19A4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    adc a
    ld a, a
    rla
    ld l, a
    scf
    ld c, a
    adc d
    dec d
    nop
    rst $38
    ld [de], a
    and c
    nop
    pop hl
    ld b, b
    or c
    and b
    ld a, [de]
    sub h
    ld a, [bc]
    add c
    inc c
    dec de
    ld h, a
    dec de
    ld h, a
    dec de
    ld h, a
    dec de
    ld h, a
    dec hl
    ld [hl], a
    or a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    add d
    add hl, de
    ld b, l
    or e
    dec bc
    rst $00
    inc hl
    rra
    dec bc
    rst $30
    ld e, e
    rst $20
    db $DB
    rst $20
    db $DB
    rst $20
    db $DB
    rst $20
    rst $10
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    sbc a
    ld a, a
    xor a
    ld e, a
    xor a
    ld e, a
    adc a
    ld a, a
    rrca
    rst $38
    rlca
    rst $38
    ld h, e
    sbc a
    sub c
    rrca
    add h
    dec de
    ld a, [bc]
    pop af
    ld d, d
    and c
    or b
    ld bc, $19A4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    adc a
    ld a, a
    rla
    ld l, a
    scf
    ld c, a
    adc d
    dec d
    nop
    rst $38
    ld [de], a
    and c
    nop
    pop hl
    ld b, b
    or c
    and b
    ld a, [de]
    sub h
    ld a, [bc]
    add c
    inc c
    dec de
    ld h, a
    dec de
    ld h, a
    dec de
    ld h, a
    dec de
    ld h, a
    dec hl
    ld [hl], a
    or a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    add d
    add hl, de
    ld b, l
    or e
    dec bc
    rst $00
    inc hl
    rra
    dec bc
    rst $30
    ld e, e
    rst $20
    db $DB
    rst $20
    db $DB
    rst $20
    db $DB
    rst $20
    rst $10
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    nop
    db $10
    jp nz, $00A5

    add e
    and b
    cp l
    nop
    add e
    and b
    pop bc
    dec l
    nop
    add e
    and b
    cp l
    nop
    add e
    and b
    ret nz

    ld c, a
    nop
    add e
    and b
    cp l
    nop
    add e
    and b
    cp l
    nop
    add e
    ld [$00BD], sp
    add e
    ld [$B1C0], sp
    nop
    add e
    and h
    cp l
    nop
    add e
    and h
    ret nz

    ld h, [hl]
    nop
    add e
    and b
    cp l
    nop
    add e
    and b
    pop bc
    ld a, [bc]
    nop
    add e
    and b
    cp l
    nop
    add e
    and b
    pop bc
    inc e
    nop
    add e
    and h
    xor e
    nop
    add e
    and b
    adc a
    nop
    add e
    and h
    xor e
    nop
    add e
    and b
    ret nz

    xor c
    nop
    add e
    and b
    cp l
    nop
    add e
    and b
    cp l
    nop
    add e
    ld [$00BD], sp
    add e
    ld [$5AC2], sp
    nop
    add e
    and h
    cp l
    nop
    add e
    and h
    jp nz, $0019

    nop
    inc d
    inc e
    ld [bc], a
    ret nz

    sbc $08
    add h
    nop
    sub b
    ld [$0085], sp
    adc a
    ld [$0085], sp
    adc a
    ld [$0085], sp
    add e
    ld [$C101], sp
    adc e
    ld [$0085], sp
    add e
    ld [$0001], sp
    adc e
    ld [$0001], sp
    add e
    ld [$0002], sp
    ld [$0083], sp
    adc e
    ld [$0001], sp
    add e
    ld [$0001], sp
    adc a
    ld [$0087], sp
    adc l
    ld [$0084], sp
    ld bc, $8208
    nop
    adc l
    ld [$0087], sp
    adc l
    ld [$C002], sp
    ld [$0088], sp
    adc d
    ld [$0083], sp
    inc b
    ld [$0800], sp
    nop
    add d
    ld [$0001], sp
    adc d
    ld [$0001], sp
    add e
    ld [$0003], sp
    ld [$8200], sp
    ld [$0001], sp
    adc d
    ld [$008A], sp
    or b
    ld [$0200], sp
    nop
    sub b
    nop
    ld b, b
    db $10
    ld [$0023], sp

Jump_02E_7B16:
    adc b
    nop
    ld [hl], b
    db $10
    ld [$0D22], sp
    nop

jr_02E_7B1E:
    sub b
    nop
    ld l, b
    db $10
    ld [$0022], sp
    adc [hl]
    ld c, e
    ld l, c
    ld [bc], a
    ld bc, $202F
    adc [hl]
    adc e

jr_02E_7B2E:
    ld l, b
    ld [bc], a
    ld bc, $402F
    adc [hl]
    push bc
    ld b, e
    inc b
    ld bc, $802F
    adc [hl]
    push bc
    ld b, l
    inc b
    ld bc, $002F
    adc a
    xor e
    ld h, l
    ld [bc], a
    ld bc, $202F
    adc a
    db $EB
    ld h, l
    ld [bc], a
    ld bc, $402F
    adc a
    push bc
    ld b, h
    inc b
    ld bc, $E02F
    adc [hl]
    add l
    ld b, h
    ld [bc], a

Jump_02E_7B5A:
    ld [bc], a
    cpl
    ret nz

    adc [hl]
    bit 4, l
    ld [bc], a
    ld bc, $C02F
    adc a

jr_02E_7B65:
    dec bc
    ld h, [hl]
    ld [bc], a
    ld bc, $802F
    adc a
    add l
    ld b, d
    inc b
    ld bc, $002F
    add b
    nop
    ld h, b
    db $10
    ld [$0520], sp
    nop
    sub b
    nop
    ld h, b
    db $10
    ld [$001D], sp
    add b
    push hl
    ld d, h
    db $10
    dec b
    jr z, jr_02E_7B88

jr_02E_7B88:
    adc [hl]
    dec b
    ld c, h
    ld [bc], a
    ld [bc], a
    cpl
    jr nz, jr_02E_7B1E

    ld b, l
    ld c, h
    ld [bc], a
    ld [bc], a
    cpl
    ld b, b
    adc a
    dec e
    ld l, c
    ld a, [bc]
    ld bc, $0A2E
    jr nz, jr_02E_7B2E

    ld b, l
    ld c, a
    inc b
    ld bc, $202F

Jump_02E_7BA5:
    adc [hl]
    add l
    ld c, [hl]
    inc b
    ld bc, $602F
    adc [hl]
    adc e
    ld h, e
    ld bc, $2F02
    nop
    add b
    nop
    ld h, b
    db $10
    ld [$0020], sp
    sub b
    nop
    ld a, b
    db $10
    ld [$E01D], sp
    adc [hl]
    add l
    ld b, h
    ld [bc], a
    ld [bc], a
    cpl
    ld [hl], b
    adc [hl]
    add l
    ld c, a
    inc b
    ld bc, $002F
    adc [hl]
    add l
    ld c, l
    ld [bc], a
    ld [bc], a
    cpl
    jr nz, jr_02E_7B65

    dec b
    ld c, a
    ld [bc], a
    ld [bc], a
    cpl
    or b
    adc [hl]
    ld b, l
    ld c, l
    ld [bc], a
    ld [bc], a
    cpl
    dec bc
    ld h, e
    nop
    nop
    inc b
    sbc d
    nop
    inc bc
    and l
    and [hl]
    xor b
    adc c
    add d
    add d
    db $FD
    ld bc, $8682
    db $FD
    add d
    add d
    add d
    db $FD
    ld bc, $8682
    db $FD
    add l
    add d
    add [hl]
    db $FD
    add e
    add d
    add [hl]
    db $FD
    ld [bc], a
    add d
    db $FD
    add e
    add d
    add l
    db $FD
    add d
    add d
    ld bc, $84BE
    add d
    add l
    db $FD
    ld [bc], a
    add d
    db $FD
    add d
    add d
    ld [bc], a
    db $FD
    add d
    add a
    db $FD
    add d
    add d
    ld bc, $82FD
    add d
    add [hl]
    db $FD
    add d
    add d
    add d
    db $FD
    ld bc, $8682
    db $FD
    add d
    add d
    add d
    db $FD
    ld bc, $8682
    db $FD
    add d
    add d
    add d
    db $FD
    ld bc, $8482
    db $FD
    ld [bc], a
    add d
    db $FD
    add d
    add d
    add d
    db $FD
    add [hl]
    add d
    ld bc, $8CFD
    add d
    nop
    inc c
    sub b
    nop
    ld [bc], a
    ld [$8BC0], sp
    ld [$8182], sp
    ld bc, $8400
    add c
    add l
    ld [$8182], sp
    ld b, $09
    add c
    add c
    add hl, bc
    nop
    add c
    add h
    ld [$0982], sp
    add e
    add c
    ld [bc], a
    add hl, bc
    add c
    add l
    ld [$8183], sp
    ld bc, $8608
    add c
    add d
    ld [$0001], sp
    adc c
    add c
    add d
    ld [$8102], sp
    ld [$8186], sp
    ld bc, $8309
    ld [$8185], sp
    ld bc, $8300
    add c
    add e
    ld [$0006], sp
    add c
    add c
    ld [$0800], sp
    add d
    add c
    ld [bc], a
    add hl, bc
    add c
    add [hl]
    ld [$8106], sp
    ld [$0981], sp
    add c
    add hl, bc
    add [hl]
    ld [$8102], sp
    ld [$8182], sp
    ld [bc], a
    add hl, bc
    add c
    add [hl]
    ld [$C101], sp
    add [hl]
    ld [$0F00], sp
    sub [hl]
    nop
    sub b
    ld [$000B], sp
    ld [$0800], sp
    nop
    ld [$08D2], sp
    nop
    ld [$8400], sp
    ld [$C282], sp
    dec bc
    call $CEC2
    jp nz, $C2CF

    ret nc

    jp nz, $C2D1

    nop
    add d
    ld [$C182], sp
    dec bc
    ret z

    pop bc
    ret


    pop bc
    jp z, $CBC1

    pop bc
    call z, $00C1
    add d
    ld [$C082], sp
    dec bc
    jp $C4C0


    ret nz

    push bc
    ret nz

    add $C0
    rst $00
    ret nz

    nop
    add d
    ld [$0001], sp
    add l
    ld [$0001], sp
    add h
    ld [$0001], sp
    add h
    ld [$0085], sp
    ld bc, $8308
    nop
    ld [bc], a
    ld [$83D3], sp
    ld [$008B], sp
    ld [bc], a
    ld [$8200], sp
    ld [$008D], sp
    sub b
    ld [$0F00], sp
    pop hl
    nop
    xor c
    ld [$0001], sp
    adc [hl]
    ld [$C601], sp
    adc [hl]
    ld [$C601], sp
    add h
    ld [$0001], sp
    adc b
    jp nz, $0802

    add $87
    ld [$C184], sp
    inc b
    nop
    ld [$C6C5], sp
    add a
    ld [$0001], sp
    add e
    ld [$C304], sp
    call nz, $C6C5
    adc b
    ld [$0007], sp
    rst $00
    rst $00
    ret z

    ret


    jp z, $82CB

    rst $00
    adc c
    ld [$C304], sp
    call nz, $C6C5
    adc b
    ld [$C002], sp
    nop
    add d
    ld [$C403], sp
    push bc
    add $88
    ld [$0084], sp
    inc bc
    call nz, $C6C5
    adc b
    ld [$0083], sp
    inc b
    ld [$0000], sp
    add $88
    ld [$0001], sp
    sbc b
    ld [$0000], sp
    nop
    ld l, b
    rla
    ld d, b
    cpl
    ld b, b
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    nop
    ld e, a
    nop
    nop
    ld e, a
    ld l, a
    ld e, a
    ld a, a
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    nop
    ld e, a
    nop
    nop
    nop
    ld a, a
    rra
    ld b, b
    rrca
    ld b, b
    nop
    ld b, b
    ld b, b
    ld b, b
    nop
    ld b, b
    ld b, b
    ld b, b
    and b
    ld a, a
    ld l, b
    rst $38
    add b
    ld a, a
    ld a, a
    nop
    ccf
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    nop
    ld e, a
    nop
    ld e, a
    ld e, a
    nop
    nop
    nop
    nop
    ld bc, $401C
    rra
    ld b, b
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ccf
    ld a, a
    nop
    nop
    nop
    ld bc, $401C
    rra
    ld b, b
    nop
    nop
    nop
    nop
    ld l, b
    rla
    ld d, b
    cpl
    ld b, b
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    nop
    ld e, a
    nop
    nop
    ld e, a
    ld l, a
    ld e, a
    ld a, a
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    nop
    ld e, a
    nop
    nop
    nop
    ld a, a
    rra
    ld b, b
    rrca
    ld b, b
    nop
    ld b, b
    ld b, b
    ld b, b
    nop
    ld b, b
    ld b, b
    ld b, b
    and b
    ld a, a
    ld l, b
    rst $38
    add b
    ld a, a
    ld a, a
    nop
    ccf
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    nop
    ld e, a
    nop
    ld e, a
    ld e, a
    nop
    nop
    nop
    nop
    ld bc, $401C
    rra
    ld b, b
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ccf
    ld a, a
    nop
    nop
    nop
    ld bc, $401C
    rra
    ld b, b
    nop
    nop
    ld c, $C4
    nop
    adc a
    ld [$C102], sp
    add c
    adc h
    ld [$8183], sp
    ld [bc], a
    add hl, bc
    add c
    add d
    ld [$0001], sp
    add a
    ld [$8182], sp
    inc bc
    add hl, bc
    add c
    ld [$8182], sp
    ld [bc], a
    add hl, bc
    nop
    add a
    ld [$8185], sp
    ld bc, $8209
    add c
    add h
    ld [$818A], sp
    ld bc, $85C3
    ld [$8189], sp
    add l
    ld [$8185], sp
    ld bc, $8308
    add c
    add l
    ld [$C203], sp
    add c
    add hl, bc
    add [hl]
    add c
    adc b
    ld [$0001], sp
    add d
    ld [$8183], sp
    adc e
    ld [$8182], sp
    adc d
    ld [$8102], sp
    ld [$8182], sp
    adc e
    ld [$C001], sp
    add d
    add c
    sub b
    ld [$0C00], sp
    ld l, h
    nop
    ld bc, $7800
    nop
    ld [$3A2A], sp
    dec sp
    inc a
    ld a, [hl-]
    ld h, [hl]
    and [hl]
    or h
    add h
    jr nz, jr_02E_7ECB

    ld a, [hl-]
    ld b, $07
    ld [$762E], sp
    jr nz, @-$3A

    adc l
    dec e
    ld l, $1B
    ld [de], a
    ld d, $17
    jr @+$40

    add [hl]
    or [hl]
    call nc, $EB9F
    ld a, $2B
    dec h
    ld h, $27
    ld [hl], a

jr_02E_7ECB:
    add d
    ld a, b
    ld b, $C6
    db $ED
    db $EC
    ld [$3B1D], a
    add e
    ld a, b
    add l
    db $10
    inc b
    call c, $11DB
    dec h
    adc c
    db $10
    inc bc
    ld a, c
    ld hl, $8A36
    db $10
    add d
    ld a, b
    sub h
    db $10
    inc b
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    adc b
    db $10
    inc b
    ld h, b
    ld b, h
    ld b, l
    ld [hl-], a
    nop
    dec bc
    ld l, [hl]
    nop
    adc c
    ld [$D205], sp
    ld [$D108], sp
    db $D3
    add l
    rst $00
    ld [bc], a
    ld [$8200], sp
    ld [$0002], sp
    jp $0085


    ld [bc], a
    ld [$8200], sp
    ld [$0004], sp
    jp $0800


    add h
    nop
    add e
    ld [$0004], sp
    jp $D008


    add l
    ret z

    add d
    ld [$C604], sp
    jp nz, $C9CF

    add h
    jp z, $0883

    inc bc
    push bc
    pop bc
    adc $84
    rlc d
    ld [$8200], sp
    ld [$C403], sp
    ret nz

    call $CC84
    ld [bc], a
    ld [$8200], sp
    ld [$0003], sp
    jp $82D4


    ld [$0084], sp
    adc h
    ld [$2000], sp
    jr nz, jr_02E_7F52

    dec d

jr_02E_7F52:
    ld d, $00
    inc b
    ret nz

    ld c, e
    ld a, e
    ld bc, $8AAB
    ld a, e
    ld bc, $94AB
    ld a, e
    ld bc, $8AAB
    ld a, e
    ld bc, $94AB
    ld a, e
    ld bc, $8AAB
    ld a, e
    ld bc, $C0AB
    sub a
    ld a, e
    inc bc
    cp l
    cp [hl]
    cp a
    sbc l
    ld a, e
    inc bc
    call $CFCE
    ret nz

    db $EB
    ld a, e
    inc bc
    cp l
    cp [hl]
    cp a
    sbc l
    ld a, e
    inc bc
    call $CFCE
    xor e
    ld a, e
    inc bc
    db $DD
    sbc $DF
    ret nz

    adc a
    ld a, e
    inc bc
    db $DD
    sbc $DF
    ret nz

    ld l, [hl]
    ld a, e
    ld bc, $9FAB
    ld a, e
    ld bc, $9FAB
    ld a, e
    ld bc, $B2AB
    ld a, e
    nop
    ld bc, $9000
    nop
    ld l, b
    db $10
    ld [$0B21], sp
    nop
    sub b
    nop
    ld [hl], b
    db $10
    ld [$0021], sp
    adc [hl]
    ld l, e
    ld h, l
    ld [bc], a
    ld bc, $202F
    adc [hl]
    dec hl
    ld h, l
    ld [bc], a
    ld bc, $402F
    adc [hl]
    add l
    ld c, c
    inc b
    ld bc, $802F
    adc [hl]
    ld b, l
    ld c, c
    inc b
    ld bc, $002F
    adc a
    dec hl
    ld h, a
    ld [bc], a
    ld bc, $202F
    adc a
    ld c, e
    ld h, a
    ld [bc], a
    ld bc, $402F
    adc a
    ld b, l
    ld c, d
    inc b
    ld bc, $802F
    adc a
    push bc
    ld c, d
    inc b
    ld bc, $E02F
    adc [hl]
    ld b, l
    ld e, e
    ld [bc], a
    ld [bc], a
    cpl
    nop
    add b
    nop
    ld h, b
    db $10
    ld [$FF20], sp
    rst $38
    rst $38
    rst $38
    rst $38
