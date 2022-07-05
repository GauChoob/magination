; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    xor l
    sbc $EF
    cp [hl]
    db $DD
    cp d
    dec c
    ldh a, [rNR44]
    ld bc, $4567
    xor e
    adc c
    ld a, [c]
    call $EAAF
    nop
    ld b, b
    ld a, $0A
    ld [$0000], a
    ld a, [$A000]
    ld b, a
    and a
    jr z, jr_007_4025

    cp $02
    jp nz, Jump_007_4147

jr_007_4025:
    ld a, $02
    ld [$4000], a
    ld a, b
    ld [$A000], a
    ld d, a
    ld a, b
    xor $02
    ld e, a
    ld a, $06
    ld [$C95A], a
    ldh [rSVBK], a
    call Call_007_4042
    xor a
    ld [$0000], a
    ret


Call_007_4042:
    ld a, [$C749]
    cp $00
    jr nz, jr_007_4052

    ld bc, $A000
    call Call_007_406C
    inc e
    inc d
    ret


jr_007_4052:
    ld a, [$C74A]
    cp $00
    jr nz, jr_007_4062

    ld bc, $A000
    call Call_007_406C
    inc e
    inc d
    ret


jr_007_4062:
    ld bc, $A800
    call Call_007_406C
    inc e
    inc d
    ret


    ret


Call_007_406C:
    ld hl, $D000
    ld a, d
    ld [$4000], a

jr_007_4073:
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
    ld a, h
    cp $D8
    jr nz, jr_007_4073

    ld a, [$C749]
    cp $00
    jr nz, jr_007_409D

    ld a, [$C74A]
    cp $00
    jr z, jr_007_409D

    ld bc, $B000
    ld a, e
    ld [$4000], a
    dec bc
    dec hl
    jr jr_007_40A6

jr_007_409D:
    ld a, e
    ld [$4000], a
    ld bc, $A800
    dec bc
    dec hl

jr_007_40A6:
    ld a, [hl-]
    ld [bc], a
    dec bc
    ld a, [hl-]
    ld [bc], a
    dec bc
    ld a, [hl-]
    ld [bc], a
    dec bc
    ld a, [hl-]
    ld [bc], a
    dec bc
    ld a, h
    cp $CF
    jr nz, jr_007_40A6

    ret


    xor a
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld d, $10
    ld bc, $A002
    ld hl, $4000

jr_007_40C9:
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    cp e
    jp nz, Jump_007_4147

    inc bc
    dec d
    jr nz, jr_007_40C9

    ld d, $10
    ld bc, $A7F0
    dec hl

jr_007_40DA:
    ld a, [hl-]
    ld e, a
    ld a, [bc]
    cp e
    jp nz, Jump_007_4147

    inc bc
    dec d
    jr nz, jr_007_40DA

    ld a, $01
    ld [$C749], a
    ld a, $02
    ld [$A000], a
    jp $4010


    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld hl, $A026
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc de
    ld hl, $A026
    ld a, e
    ld [hl+], a
    ld [hl], d
    jp Jump_007_4123


    ld a, $0A
    ld [$0000], a
    xor a
    ld [$4000], a
    ld a, $00
    ld [$A000], a
    xor a
    ld [$C749], a
    jp $4010


Jump_007_4123:
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    xor a
    ld d, $7F
    ld hl, $A028

jr_007_4135:
    ld [hl+], a
    dec d
    jr nz, jr_007_4135

    ld d, $7F
    ld hl, $A127

jr_007_413E:
    ld [hl+], a
    dec d
    jr nz, jr_007_413E

    xor a
    ld [$0000], a
    ret


Jump_007_4147:
    ld a, $0A
    ld [$0000], a
    ld c, $04

jr_007_414E:
    push bc
    ld a, c
    dec a
    ld [$4000], a
    ld hl, $A000
    ld bc, $2000
    ld a, $00
    ld e, a
    call $07E8
    pop bc
    dec c
    jr nz, jr_007_414E

    xor a
    ld [$4000], a
    call Call_007_4178
    ld a, $02
    ld [$4000], a
    call Call_007_4178
    xor a
    ld [$0000], a
    ret


Call_007_4178:
    ld a, $19
    ld [$A012], a
    ld a, $12
    ld [$A013], a
    ld a, $47
    ld [$A014], a
    ld d, $10
    ld bc, $A002
    ld hl, $4000

jr_007_418F:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec d
    jr nz, jr_007_418F

    ld d, $10
    ld bc, $A7F0
    dec hl

jr_007_419B:
    ld a, [hl-]
    ld [bc], a
    inc bc
    dec d
    jr nz, jr_007_419B

    ret


    xor a
    ld [$C854], a
    ld a, [$C9FE]
    and a
    jr nz, jr_007_41D0

    ld hl, $C7CE
    ld e, $00
    ld a, $03
    call Call_007_45E9
    ld hl, $C7CE
    ld e, $01
    ld a, $03
    call Call_007_45E9
    ld hl, $C7CE
    ld e, $02
    ld a, $03
    call Call_007_45E9
    ld a, $01
    ld [$C854], a
    ret


jr_007_41D0:
    ld hl, $C7CE
    ld e, $03
    ld a, $03
    call Call_007_45E9
    ld hl, $C7CE
    ld e, $04
    ld a, $03
    call Call_007_45E9
    ld hl, $C7CE
    ld e, $05
    ld a, $03
    call Call_007_45E9
    ld a, $01
    ld [$C854], a
    ret


    ld a, [$C9FE]
    and a
    jr nz, jr_007_41FE

    call Call_007_43F4
    ret


jr_007_41FE:
    call Call_007_4444
    ret


    xor a
    ld [$C854], a
    ld a, [$CA01]
    ld [$C853], a
    ld a, [$CA00]
    ld d, a
    ld a, [$C9FF]
    ld e, a
    ld a, [$C9FE]
    and a
    jr nz, jr_007_4258

    ld hl, $C7D0
    ld bc, $0003
    call Call_007_471B
    ld hl, $C7D8
    ld bc, $0003
    call Call_007_471B
    ld hl, $C7E0
    ld bc, $0003
    call Call_007_471B
    ld a, [$CA06]
    and a
    jr z, jr_007_4241

    ld a, $01
    ld [$C854], a
    ret


jr_007_4241:
    ld a, [$CA00]
    ld d, a
    ld a, [$C9FF]
    ld e, a
    ld hl, $C7DE
    ld bc, $0001
    call Call_007_471B
    ld a, $01
    ld [$C854], a
    ret


jr_007_4258:
    ld hl, $C7E8
    ld bc, $0003
    call Call_007_471B
    ld hl, $C7F0
    ld bc, $0003
    call Call_007_471B
    ld hl, $C7F8
    ld bc, $0003
    call Call_007_471B
    ld a, [$CA07]
    and a
    jr z, jr_007_427F

    ld a, $01
    ld [$C854], a
    ret


jr_007_427F:
    ld a, [$CA00]
    ld d, a
    ld a, [$C9FF]
    ld e, a
    ld hl, $C7F6
    ld bc, $0001
    call Call_007_471B
    ld a, $01
    ld [$C854], a
    ret


    ld a, [$C95B]
    push af
    ld hl, $4190
    ld e, $04
    call $07A9
    ld bc, $0008
    add hl, bc
    ld b, $00
    ld a, [$C9FF]
    cp b
    jr z, jr_007_42C7

    cp $01
    jr nz, jr_007_42B6

    ld a, $18
    jr jr_007_42C7

jr_007_42B6:
    cp $02
    jr nz, jr_007_42BE

    ld a, $30
    jr z, jr_007_42C7

jr_007_42BE:
    cp $03
    jr nz, jr_007_42C6

    ld a, $48
    jr z, jr_007_42C7

jr_007_42C6:
    xor a

jr_007_42C7:
    ld c, a
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    add hl, bc
    ld b, h
    ld c, l
    ld a, c
    ld [$C9FA], a
    ld a, b
    ld [$C9FB], a
    pop hl
    inc hl
    ld a, [hl+]
    ld [$C9FC], a
    call $32BE
    pop af
    ld [$C95B], a
    ld [$2000], a
    ret


    xor a
    ld [$C854], a
    ld a, [$CA00]
    ld b, a
    ld a, [$C9FF]
    ld c, a
    ld a, [$C9FE]
    and a
    jr nz, jr_007_430A

    ld hl, $C7CE
    ld e, $01
    ld a, $02
    call Call_007_47AB
    ld a, $01
    ld [$C854], a
    ret


jr_007_430A:
    ld hl, $C7CE
    ld e, $0D
    ld a, $02
    call Call_007_47AB
    ld a, $01
    ld [$C854], a
    ret


    xor a
    ld [$C854], a
    ld a, [$C9FD]
    ld e, a
    ld a, [$C9FE]
    and a
    jr nz, jr_007_4349

    ld hl, $C7D0
    ld bc, $0003
    call Call_007_47BE
    ld hl, $C7D8
    ld bc, $0003
    call Call_007_47BE
    ld hl, $C7E0
    ld bc, $0003
    call Call_007_47BE
    ld a, $01
    ld [$C854], a
    ret


jr_007_4349:
    ld hl, $C7E8
    ld bc, $0003
    call Call_007_47BE
    ld hl, $C7F0
    ld bc, $0003
    call Call_007_47BE
    ld hl, $C7F8
    ld bc, $0003
    call Call_007_47BE
    ld a, $01
    ld [$C854], a
    ret


    xor a
    ld [$C854], a
    ld a, [$C9FD]
    ld e, a
    ld a, [$C9FE]
    and a
    jr nz, jr_007_43B6

    ld hl, $C7D0
    ld bc, $0003
    call Call_007_4808
    ld hl, $C7D8
    ld bc, $0003
    call Call_007_4808
    ld hl, $C7E0
    ld bc, $0003
    call Call_007_4808
    ld a, [$CA06]
    and a
    jr z, jr_007_439F

    ld a, $01
    ld [$C854], a
    ret


jr_007_439F:
    ld a, [$CA00]
    ld d, a
    ld a, [$C9FF]
    ld e, a
    ld hl, $C7DE
    ld bc, $0001
    call Call_007_4808
    ld a, $01
    ld [$C854], a
    ret


jr_007_43B6:
    ld hl, $C7E8
    ld bc, $0003
    call Call_007_4808
    ld hl, $C7F0
    ld bc, $0003
    call Call_007_4808
    ld hl, $C7F8
    ld bc, $0003
    call Call_007_4808
    ld a, [$CA07]
    and a
    jr z, jr_007_43DD

    ld a, $01
    ld [$C854], a
    ret


jr_007_43DD:
    ld a, [$CA00]
    ld d, a
    ld a, [$C9FF]
    ld e, a
    ld hl, $C7F6
    ld bc, $0001
    call Call_007_4808
    ld a, $01
    ld [$C854], a
    ret


Call_007_43F4:
    xor a
    ld [$C854], a
    ld a, [$CA01]
    ld [$C853], a
    ld hl, $C7D0
    ld bc, $C750
    ld a, $03
    ld [$C9F8], a
    call Call_007_48ED
    ld hl, $C7DA
    ld bc, $C75A
    ld a, $03
    ld [$C9F8], a
    call Call_007_48ED
    ld a, [$CA06]
    and a
    jr z, jr_007_4430

    ld hl, $C7DE
    ld bc, $C75E
    ld a, $04
    ld [$C9F8], a
    call Call_007_48ED
    jr jr_007_443E

jr_007_4430:
    ld hl, $C7E6
    ld bc, $C766
    ld a, $03
    ld [$C9F8], a
    call Call_007_48ED

jr_007_443E:
    ld a, $01
    ld [$C854], a
    ret


Call_007_4444:
    xor a
    ld [$C854], a
    ld a, [$CA01]
    ld [$C853], a
    ld hl, $C7E8
    ld bc, $C768
    ld a, $03
    ld [$C9F8], a
    call Call_007_48ED
    xor a
    ld [$C854], a
    ld hl, $C7F0
    ld bc, $C770
    ld a, $03
    ld [$C9F8], a
    call Call_007_48ED
    xor a
    ld [$C854], a
    ld a, [$CA07]
    and a
    jr nz, jr_007_4487

    ld hl, $C7F6
    ld bc, $C776
    ld a, $04
    ld [$C9F8], a
    call Call_007_48ED
    ret


jr_007_4487:
    ld hl, $C7F8
    ld bc, $C778
    ld a, $03
    ld [$C9F8], a
    call Call_007_48ED
    ret


Call_007_4496:
    ld hl, $C7CE
    ld a, $80
    ld [$FF68], a
    ld c, $69
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ret


Call_007_4521:
    ld hl, $C80E
    ld a, $80
    ld [$FF6A], a
    ld c, $6B
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ret


    call Call_007_4496
    call Call_007_4521
    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


Call_007_45BD:
    ld a, c
    srl b
    rr c
    srl b
    rr c
    ld d, b
    srl c
    srl c
    srl c
    ld e, c
    and $1F
    ret


Call_007_45D1:
    rlca
    rlca
    rlca
    ld c, a
    srl e
    rr c
    srl e
    rr c
    srl e
    rr c
    ld a, d
    add a
    add a
    add e
    and $7F
    ld b, a
    ret


Call_007_45E9:
    cp $04
    jr z, jr_007_4637

    cp $03
    jr z, jr_007_4611

    ld d, $00
    sla e
    sla e
    sla e
    add hl, de
    ld e, $06
    add hl, de
    push hl
    pop bc
    dec bc
    dec bc
    push bc
    ld a, [hl+]
    ld e, a
    ld a, [hl-]
    ld d, a
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    pop hl
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


jr_007_4611:
    ld d, $00
    sla e
    sla e
    sla e
    add hl, de
    ld e, $04
    add hl, de
    push hl
    pop bc
    dec bc
    dec bc
    ld a, [hl+]
    ld e, a
    ld a, [hl-]
    ld d, a
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    dec bc
    push hl
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    pop hl
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


jr_007_4637:
    ld d, $00
    sla e
    sla e
    sla e
    add hl, de
    ld e, $06
    add hl, de
    push hl
    pop bc
    dec bc
    dec bc
    push bc
    ld a, [hl+]
    ld e, a
    ld a, [hl-]
    ld d, a
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    dec bc
    pop hl
    dec hl
    dec hl
    push hl
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    dec bc
    dec bc
    dec bc
    pop hl
    dec hl
    dec hl
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl-]
    ld [bc], a
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


Call_007_466A:
jr_007_466A:
    push hl
    ld b, a
    ld a, [$C850]
    ld h, a
    ld a, [$C84F]
    ld l, a
    ld a, [$C84E]
    ld c, a
    ld a, b
    cp h
    jr z, jr_007_4685

    jr nc, jr_007_4683

    adc $00
    ld b, a
    jr jr_007_4685

jr_007_4683:
    dec a
    ld b, a

jr_007_4685:
    ld a, e
    cp l
    jr z, jr_007_4692

    jr nc, jr_007_4690

    adc $00
    ld e, a
    jr jr_007_4692

jr_007_4690:
    dec a
    ld e, a

jr_007_4692:
    ld a, d
    cp c
    jr z, jr_007_469F

    jr nc, jr_007_469D

    adc $00
    ld d, a
    jr jr_007_469F

jr_007_469D:
    dec a
    ld d, a

jr_007_469F:
    ld a, [$C853]
    dec a
    jr z, jr_007_46AC

    ld [$C853], a
    ld a, b
    pop hl
    jr jr_007_466A

jr_007_46AC:
    ld a, [$CA01]
    ld [$C853], a
    ld a, b
    pop hl
    ret


Call_007_46B5:
jr_007_46B5:
    or a
    jr z, jr_007_46B9

    dec a

jr_007_46B9:
    ld b, a
    xor a
    cp e
    jr z, jr_007_46BF

    dec e

jr_007_46BF:
    xor a
    cp d
    jr z, jr_007_46C4

    dec d

jr_007_46C4:
    ld a, [$C853]
    dec a
    jr z, jr_007_46D0

    ld [$C853], a
    ld a, b
    jr jr_007_46B5

jr_007_46D0:
    ld a, [$CA01]
    ld [$C853], a
    ld a, b
    ret


Call_007_46D8:
jr_007_46D8:
    cp $1F
    adc $00
    ld b, a
    ld a, e
    cp $1F
    adc $00
    ld e, a
    ld a, d
    cp $1F
    adc $00
    ld d, a
    ld a, [$C853]
    dec a
    jr z, jr_007_46F5

    ld [$C853], a
    ld a, b
    jr jr_007_46D8

jr_007_46F5:
    ld a, [$CA01]
    ld [$C853], a
    ld a, b
    ret


    call Call_007_45BD
    call Call_007_46B5
    call Call_007_45D1
    ret


    call Call_007_45BD
    call Call_007_466A
    call Call_007_45D1
    ret


    call Call_007_45BD
    call Call_007_46D8
    call Call_007_45D1
    ret


Call_007_471B:
    push de
    push hl
    ld a, d
    or $80
    cp $FF
    jr z, jr_007_4749

    and $7F
    cp $00
    jr z, jr_007_4759

jr_007_472A:
    push bc
    ld b, d
    ld c, e
    call Call_007_45BD
    ld [$C850], a
    ld a, e
    ld [$C84F], a
    ld a, d
    ld [$C84E], a
    pop bc
    ld hl, $4707
    ld a, l
    ld [$C851], a
    ld a, h
    ld [$C852], a
    jr jr_007_4767

jr_007_4749:
    cp e
    jr nz, jr_007_472A

    ld hl, $4711
    ld a, l
    ld [$C851], a
    ld a, h
    ld [$C852], a
    jr jr_007_4767

jr_007_4759:
    cp e
    jr nz, jr_007_472A

    ld hl, $46FD
    ld a, l
    ld [$C851], a
    ld a, h
    ld [$C852], a

jr_007_4767:
    pop hl

jr_007_4768:
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    ld b, a
    push hl
    ld a, [$C852]
    ld h, a
    ld a, [$C851]
    ld l, a
    call $07BF
    pop hl
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop bc
    dec bc
    ld a, c
    or b
    jr nz, jr_007_4768

    pop de
    ret


    ld a, [$C854]
    and a
    jr z, jr_007_47A0

    xor a
    ld [$C854], a
    ld a, $07
    ld [$C6EA], a
    ld a, $AC
    ld [$C6E8], a
    ld a, $45
    ld [$C6E9], a
    ret


jr_007_47A0:
    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


Call_007_47AB:
    ld d, $00
    sla e
    add hl, de
    ld de, $0008

jr_007_47B3:
    push af
    ld a, c
    ld [hl+], a
    ld [hl], b
    dec hl
    add hl, de
    pop af
    dec a
    jr nz, jr_007_47B3

    ret


Call_007_47BE:
jr_007_47BE:
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    ld b, a
    push hl
    push de
    ld a, e
    cp $01
    jr z, jr_007_47F2

    cp $02
    jr z, jr_007_47DE

    cp $03
    jr z, jr_007_47E9

    call Call_007_45BD
    ld b, a
    ld a, e
    ld e, d
    ld d, b
    call Call_007_45D1
    jr jr_007_47FB

jr_007_47DE:
    call Call_007_45BD
    ld b, e
    ld e, d
    ld d, b
    call Call_007_45D1
    jr jr_007_47FB

jr_007_47E9:
    call Call_007_45BD
    ld b, e
    ld e, a
    ld a, b
    call Call_007_45D1

jr_007_47F2:
    call Call_007_45BD
    ld b, a
    ld a, d
    ld d, b
    call Call_007_45D1

jr_007_47FB:
    pop de
    pop hl
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop bc
    dec bc
    ld a, c
    or b
    jr nz, jr_007_47BE

    ret


Call_007_4808:
jr_007_4808:
    ld a, [hl]
    cpl
    ld [hl+], a
    ld a, [hl]
    cpl
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_007_4808

    ret


Call_007_4814:
    ld hl, $C74E
    ld a, [$C9FD]
    swap a
    and $0F
    ld b, $00
    ld c, a
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    add hl, bc
    ret


Call_007_482F:
    ld a, [$C9FD]
    and $0F
    inc a
    ld d, $00
    ld e, a
    sla e
    rl d
    sla e
    rl d
    ld a, e
    ld e, d
    ret


    call Call_007_4814
    ld a, h
    ld [$CA00], a
    ld a, l
    ld [$C9FF], a
    call Call_007_482F
    ld [$C9FE], a
    ret


    xor a
    ld [$C854], a
    call Call_007_4814
    push hl
    ld bc, $0080
    add hl, bc
    pop bc
    call Call_007_482F
    call $3124
    ld a, $01
    ld [$C854], a
    ret


    xor a
    ld [$C854], a
    call Call_007_4814
    ld bc, $0080
    add hl, bc
    call Call_007_482F
    ld e, a
    ld a, [$CA00]
    ld b, a
    ld a, [$C9FF]
    ld c, a
    jr jr_007_489A

    xor a
    ld [$C854], a
    call Call_007_4814
    call Call_007_482F
    ld e, a
    ld a, [$CA00]
    ld b, a
    ld a, [$C9FF]
    ld c, a

jr_007_489A:
    ld a, c
    ld [hl+], a
    ld [hl], b
    inc hl
    dec e
    jr nz, jr_007_489A

    ld a, $01
    ld [$C854], a
    ret


    xor a
    ld [$C854], a
    call Call_007_4814
    ld bc, $0080
    add hl, bc
    ld a, [$C9FD]
    and $0F
    inc a
    ld [$C9FF], a

jr_007_48BB:
    push hl
    dec a
    ld e, a
    ld a, [$C9FE]
    call Call_007_45E9
    pop hl
    ld a, [$C9FF]
    dec a
    ld [$C9FF], a
    jr nz, jr_007_48BB

    ld a, $01
    ld [$C854], a
    ret


    xor a
    ld [$C854], a
    ld a, [$CA01]
    ld [$C853], a
    call Call_007_4814
    push hl
    ld bc, $0080
    add hl, bc
    pop bc
    call Call_007_482F
    ld [$C9F8], a

Call_007_48ED:
jr_007_48ED:
    push hl
    push bc
    ld a, [bc]
    inc bc
    ld e, a
    ld a, [bc]
    inc bc
    ld d, a
    ld bc, $0001
    call Call_007_471B
    pop bc
    inc bc
    inc bc
    pop hl
    inc hl
    inc hl
    ld a, [$C9F8]
    dec a
    jr z, jr_007_490C

    ld [$C9F8], a
    jr jr_007_48ED

jr_007_490C:
    ld a, $01
    ld [$C854], a
    ret


    ret


    xor a
    ld [$C854], a
    call Call_007_4814
    ld bc, $0080
    add hl, bc
    ld a, [$C9FD]
    and $0F
    inc a
    sla a
    sla a
    ld c, a
    ld b, $00
    call Call_007_4808
    ld a, $01
    ld [$C854], a
    ret


    xor a
    ld [$C854], a
    call Call_007_4814
    ld bc, $0080
    add hl, bc
    call Call_007_482F
    ld b, $00
    ld c, a
    ld a, [$CA00]
    ld d, a
    ld a, [$C9FF]
    ld e, a
    call Call_007_471B
    ld a, $01
    ld [$C854], a
    ret


Call_007_4956:
    ld e, $00
    ld a, [$C86A]
    cp $0A
    jr nz, jr_007_4963

    set 3, e
    jr jr_007_496D

jr_007_4963:
    ld d, a
    ld a, [$C882]
    and a
    jr z, jr_007_496D

    cp d
    jr c, jr_007_4980

jr_007_496D:
    xor a
    ld [$C882], a
    ld [$C880], a
    set 2, e
    ld a, [$C868]
    and a
    jr nz, jr_007_499A

    set 1, e
    jr jr_007_499A

jr_007_4980:
    ld d, a
    ld a, [$C868]
    ld l, a
    cp d
    jr z, jr_007_498A

    jr nc, jr_007_499A

jr_007_498A:
    set 1, e
    ld a, $0F
    ld [$C880], a
    ld a, l
    ld [$C882], a
    and a
    jr nz, jr_007_499A

    set 2, e

jr_007_499A:
    ld a, [$C869]
    add $0A
    cp $09
    jr nz, jr_007_49A7

    set 7, e
    jr jr_007_49B1

jr_007_49A7:
    ld d, a
    ld a, [$C883]
    and a
    jr z, jr_007_49B1

    cp d
    jr c, jr_007_49C4

jr_007_49B1:
    xor a
    ld [$C883], a
    ld [$C881], a
    set 6, e
    ld a, [$C869]
    and a
    jr nz, jr_007_49DE

    set 5, e
    jr jr_007_49DE

jr_007_49C4:
    ld d, a
    ld a, [$C869]
    ld l, a
    cp d
    jr z, jr_007_49CE

    jr nc, jr_007_49DE

jr_007_49CE:
    set 5, e
    ld a, $0F
    ld [$C881], a
    ld a, l
    ld [$C883], a
    and a
    jr nz, jr_007_49DE

    set 6, e

jr_007_49DE:
    ld a, e
    ld [$C865], a
    ld a, [$C882]
    add a
    add a
    add a
    add a
    ld b, a
    ld a, [$C880]
    add b
    ld [$C958], a
    ldh [rSCX], a
    ld a, [$C883]
    ld c, a
    add a
    add a
    add a
    add a
    ld b, a
    ld a, [$C881]
    add b
    ld [$C957], a
    ldh [rSCY], a
    ld a, [$C86A]
    ld b, a
    call $0500
    ld a, [$C882]
    add l
    ld [$C884], a
    ld a, $D0
    adc h
    ld [$C885], a
    ld a, [$C883]
    ld c, a
    ld b, $40
    call $0500
    ld a, h
    and $03
    add $98
    ld [$C887], a
    ld a, [$C882]
    add a
    and $1F
    add l
    ld [$C886], a
    ld a, [$C887]
    ld d, a
    ld a, [$C886]
    ld e, a
    ld hl, $0020
    ld a, [$C880]
    bit 3, a
    jr nz, jr_007_4A5E

    ld a, [$C881]
    bit 3, a
    jr nz, jr_007_4A4E

    ret


jr_007_4A4E:
    add hl, de
    ld a, h
    and $03
    add $98
    ld h, a
    ld a, h
    ld [$C887], a
    ld a, l
    ld [$C886], a
    ret


jr_007_4A5E:
    ld a, [$C881]
    bit 3, a
    jr nz, jr_007_4A72

    ld a, e
    inc a
    and $1F
    ld c, a
    ld a, e
    and $E0
    add c
    ld [$C886], a
    ret


jr_007_4A72:
    ld a, e
    inc a
    and $1F
    ld c, a
    ld a, e
    and $E0
    add c
    ld e, a
    add hl, de
    ld a, h
    and $03
    add $98
    ld h, a
    ld a, h
    ld [$C887], a
    ld a, l
    ld [$C886], a
    ret


    call Call_007_4956
    ld a, [$C885]
    ld h, a
    ld a, [$C884]
    ld l, a
    ld a, [$C882]
    ld d, a
    ld a, [$C883]
    ld e, a
    ld c, $0A

Jump_007_4AA1:
    push hl
    push de
    ld b, $0B

Jump_007_4AA5:
    push bc
    push de
    push hl
    ld a, $03
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [hl]
    ld c, a
    call Call_007_4C7C
    call Call_007_4CE4
    pop hl
    pop de
    pop bc
    inc d
    inc hl
    dec b
    jp nz, Jump_007_4AA5

    pop de
    inc e
    pop hl
    ld a, [$C86A]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec c
    jp nz, Jump_007_4AA1

    xor a
    ld [$FF4F], a
    ld a, a
    ld [$C95A], a
    ldh [rSVBK], a
    ret


    ld a, [$C8EB]
    ld d, a
    ld a, [$C8EA]
    ld e, a
    ld a, [$C8E9]
    ld h, a
    ld a, [$C8E8]
    ld l, a
    ld c, [hl]
    call Call_007_4C7C
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


    ld a, [$C8EB]
    ld d, a
    ld a, [$C8EA]
    ld e, a
    ld a, [$C8E9]
    ld h, a
    ld a, [$C8E8]
    ld l, a
    ld c, [hl]
    call Call_007_4C7C
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
    call $0840
    ret


    ld a, [$C958]
    ldh [rSCX], a
    ld a, [$C957]
    ldh [rSCY], a
    ld a, [$C8B5]
    and a
    jp z, Jump_007_4BEA

    and $01
    ldh [rVBK], a
    xor a
    ld [$C8B5], a
    ld hl, $C8C2
    ld bc, $C116
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c
    ld [de], a

Jump_007_4BEA:
    ld a, [$C88D]
    and a
    jp z, Jump_007_4C70

    and $01
    ldh [rVBK], a
    xor a
    ld [$C88D], a
    ld hl, $C89B
    ld a, [$C88B]
    ld d, a
    ld a, [$C88A]
    ld e, a
    ld bc, $C100
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a

Jump_007_4C70:
    xor a
    ldh [rVBK], a
    ld a, [$C865]
    and $EE
    ld [$C865], a
    ret


Call_007_4C7C:
    ld b, d
    ld a, e
    rrca
    rrca
    ld e, a
    and $03
    ld d, a
    ld a, e
    and $C0
    ld e, a
    ld a, b
    add a
    and $1F
    add e
    ld e, a
    ld a, $98
    adc d
    ld d, a
    ld a, c
    rlca
    rlca
    ld l, a
    and $03
    add $D0
    ld h, a
    ld a, l
    and $FC
    ld l, a
    ret


    ld a, [$C8EB]
    ld d, a
    ld a, [$C8EA]
    ld e, a
    ld a, [$C8E8]
    ld c, a
    call Call_007_4C7C
    ld a, d
    ld [$C8EB], a
    ld a, e
    ld [$C8EA], a
    ld a, h
    ld [$C8E9], a
    ld a, l
    ld [$C8E8], a
    ld a, $CA
    ld [$C6E8], a
    ld a, $4C
    ld [$C6E9], a
    ret


    ld a, [$C8EB]
    ld d, a
    ld a, [$C8EA]
    ld e, a
    ld a, [$C8E9]
    ld h, a
    ld a, [$C8E8]
    ld l, a
    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a

Call_007_4CE4:
    ld a, $02
    ld [$C95A], a
    ldh [rSVBK], a
    xor a
    ldh [rVBK], a
    ld b, a
    ld c, $1F
    push de
    push hl
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, c
    add e
    ld e, a
    ld a, b
    adc d
    ld d, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld a, $01
    ldh [rVBK], a
    pop hl
    pop de
    ld a, $04
    add h
    ld h, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, c
    add e
    ld e, a
    ld a, b
    adc d
    ld d, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    ld hl, $C8B4
    sra [hl]
    ld a, [$C865]
    bit 3, a
    jp nz, Jump_007_4F61

    ld a, [$C866]
    and a
    jp z, Jump_007_4F61

    ld e, a
    bit 7, e
    jp z, Jump_007_4DBF

    ld a, e
    cp $FC
    jr nc, jr_007_4D3F

    ld e, $FC

jr_007_4D3F:
    ld a, [$C865]
    bit 2, a
    jr z, jr_007_4D57

    ld a, [$C880]
    ld b, a
    add e
    bit 7, a
    jr z, jr_007_4D57

    ld a, b
    and a
    jp z, Jump_007_4F61

    cpl
    inc a
    ld e, a

jr_007_4D57:
    ld a, e
    ld hl, $C958
    add [hl]
    ld [hl], a
    ld a, [$C880]
    ld d, a
    add e
    ld e, a
    bit 7, a
    jr z, jr_007_4D69

    add $10

jr_007_4D69:
    ld [$C880], a
    xor d
    bit 3, a
    jp z, Jump_007_4F61

    bit 7, e
    ld hl, $C884
    jr z, jr_007_4D97

    push hl
    ld hl, $C882
    dec [hl]
    ld l, [hl]
    ld a, l
    and a
    ld c, $05
    jr z, jr_007_4D87

    ld c, $01

jr_007_4D87:
    ld hl, $C865
    ld a, [hl]
    and $F8
    add c
    ld [hl], a
    pop hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    dec de
    ld a, d
    ld [hl-], a
    ld [hl], e

jr_007_4D97:
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $C8B0
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, [$C886]
    ld e, a
    dec a
    and $1F
    ld d, a
    ld a, e
    and $E0
    add d
    ld [$C8B2], a
    ld hl, $C886
    ld [hl+], a
    ld a, [hl]
    ld [$C8B3], a
    ld a, $02
    ld [$C8B4], a
    jp Jump_007_4F61


Jump_007_4DBF:
    ld a, e
    cp $04
    jr c, jr_007_4DC6

    ld e, $04

jr_007_4DC6:
    ld a, [$C865]
    bit 1, a
    jr z, jr_007_4DDF

    ld a, [$C880]
    ld b, a
    add e
    bit 4, a
    jr z, jr_007_4DDF

    ld a, b
    cpl
    and $0F
    and a
    jp z, Jump_007_4F61

    ld e, a

jr_007_4DDF:
    ld a, e
    ld hl, $C958
    add [hl]
    ld [hl], a
    ld a, [$C880]
    ld d, a
    add e
    ld e, a
    and $0F
    ld [$C880], a
    xor d
    bit 3, a
    jp z, Jump_007_4F61

    bit 4, e
    ld hl, $C884
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    jr z, jr_007_4E1E

    ld hl, $C882
    inc [hl]
    ld l, [hl]
    ld a, [$C868]
    cp l
    ld d, $03
    jr z, jr_007_4E0F

    ld d, $01

jr_007_4E0F:
    ld hl, $C865
    ld a, [hl]
    and $F8
    add d
    ld [hl], a
    inc bc
    ld hl, $C884
    ld a, c
    ld [hl+], a
    ld [hl], b

jr_007_4E1E:
    ld hl, $000A
    add hl, bc
    ld a, h
    ld [$C8B1], a
    ld a, l
    ld [$C8B0], a
    ld a, [$C886]
    ld e, a
    inc a
    and $1F
    ld d, a
    ld a, e
    and $E0
    add d
    ld [$C886], a
    ld e, a
    add $14
    and $1F
    ld d, a
    ld a, e
    and $E0
    add d
    ld [$C8B2], a
    ld a, [$C887]
    ld [$C8B3], a
    ld a, $02
    ld [$C8B4], a
    jp Jump_007_4F61


Jump_007_4E54:
    ld [$C8B5], a
    ld d, $00
    ld a, [$C8B6]
    ld e, a
    ld a, $02
    ld [$C95A], a
    ldh [rSVBK], a
    ld bc, $C116
    ld a, [$C8B8]
    ld l, a
    xor a
    sla l
    adc d
    sla a
    sla l
    adc $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [$C8B7]
    bit 3, a
    jr nz, jr_007_4E83

    ld a, [hl]
    ld [bc], a
    inc bc

jr_007_4E83:
    inc hl
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C8B9]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C8BA]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C8BB]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C8BC]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C8BD]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C8BE]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C8BF]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C8C0]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C8C1]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ret


Jump_007_4F61:
    ld a, [$C8B4]
    and a
    ret z

    cp $02
    jp nz, Jump_007_4E54

    ld [$C8B5], a
    ld b, $00
    ld a, [$C86A]
    ld c, a
    ld a, [$C8B1]
    ld h, a
    ld a, [$C8B0]
    ld l, a
    ld a, $03
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [hl]
    ld [$C8B8], a
    add hl, bc
    ld a, [hl]
    ld [$C8B9], a
    add hl, bc
    ld a, [hl]
    ld [$C8BA], a
    add hl, bc
    ld a, [hl]
    ld [$C8BB], a
    add hl, bc
    ld a, [hl]
    ld [$C8BC], a
    add hl, bc
    ld a, [hl]
    ld [$C8BD], a
    add hl, bc
    ld a, [hl]
    ld [$C8BE], a
    add hl, bc
    ld a, [hl]
    ld [$C8BF], a
    add hl, bc
    ld a, [hl]
    ld [$C8C0], a
    add hl, bc
    ld a, [hl]
    ld [$C8C1], a
    add hl, bc
    ld de, $0000
    ld a, [$C880]
    bit 3, a
    jr z, jr_007_4FC1

    ld e, $01

jr_007_4FC1:
    ld a, e
    ld [$C8B6], a
    ld a, [$C881]
    ld [$C8B7], a
    ld a, $02
    ld [$C95A], a
    ldh [rSVBK], a
    ld bc, $C116
    ld a, [$C8B8]
    ld l, a
    xor a
    sla l
    adc d
    sla a
    sla l
    adc $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [$C8B7]
    bit 3, a
    jr nz, jr_007_4FF1

    ld a, [hl]
    ld [bc], a
    inc bc

jr_007_4FF1:
    inc hl
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C8B9]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C8BA]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C8BB]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C8BC]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C8BD]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C8BE]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C8BF]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C8C0]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C8C1]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld bc, $0020
    ld de, $0398
    ld a, [$C8B3]
    ld h, a
    ld a, [$C8B2]
    ld l, a
    ld a, l
    ld [$C8C2], a
    ld a, h
    and d
    add e
    ld h, a
    ld [$C8C3], a
    add hl, bc
    ld a, l
    ld [$C8C4], a
    ld a, h
    and d
    add e
    ld h, a
    ld [$C8C5], a
    add hl, bc
    ld a, l
    ld [$C8C6], a
    ld a, h
    and d
    add e
    ld h, a
    ld [$C8C7], a
    add hl, bc
    ld a, l
    ld [$C8C8], a
    ld a, h
    and d
    add e
    ld h, a
    ld [$C8C9], a
    add hl, bc
    ld a, l
    ld [$C8CA], a
    ld a, h
    and d
    add e
    ld h, a
    ld [$C8CB], a
    add hl, bc
    ld a, l
    ld [$C8CC], a
    ld a, h
    and d
    add e
    ld h, a
    ld [$C8CD], a
    add hl, bc
    ld a, l
    ld [$C8CE], a
    ld a, h
    and d
    add e
    ld h, a
    ld [$C8CF], a
    add hl, bc
    ld a, l
    ld [$C8D0], a
    ld a, h
    and d
    add e
    ld h, a
    ld [$C8D1], a
    add hl, bc
    ld a, l
    ld [$C8D2], a
    ld a, h
    and d
    add e
    ld h, a
    ld [$C8D3], a
    add hl, bc
    ld a, l
    ld [$C8D4], a
    ld a, h
    and d
    add e
    ld h, a
    ld [$C8D5], a
    add hl, bc
    ld a, l
    ld [$C8D6], a
    ld a, h
    and d
    add e
    ld h, a
    ld [$C8D7], a
    add hl, bc
    ld a, l
    ld [$C8D8], a
    ld a, h
    and d
    add e
    ld h, a
    ld [$C8D9], a
    add hl, bc
    ld a, l
    ld [$C8DA], a
    ld a, h
    and d
    add e
    ld h, a
    ld [$C8DB], a
    add hl, bc
    ld a, l
    ld [$C8DC], a
    ld a, h
    and d
    add e
    ld h, a
    ld [$C8DD], a
    add hl, bc
    ld a, l
    ld [$C8DE], a
    ld a, h
    and d
    add e
    ld h, a
    ld [$C8DF], a
    add hl, bc
    ld a, l
    ld [$C8E0], a
    ld a, h
    and d
    add e
    ld h, a
    ld [$C8E1], a
    add hl, bc
    ld a, l
    ld [$C8E2], a
    ld a, h
    and d
    add e
    ld h, a
    ld [$C8E3], a
    add hl, bc
    ld a, l
    ld [$C8E4], a
    ld a, h
    and d
    add e
    ld h, a
    ld [$C8E5], a
    add hl, bc
    ld a, l
    ld [$C8E6], a
    ld a, h
    and d
    add e
    ld h, a
    ld [$C8E7], a
    add hl, bc
    ret


    ld hl, $C88C
    sra [hl]
    ld a, [$C865]
    bit 7, a
    jp nz, Jump_007_543E

    ld a, [$C867]
    and a
    jp z, Jump_007_543E

    ld e, a
    bit 7, e
    jp z, Jump_007_5273

    ld a, e
    cp $FC
    jr nc, jr_007_51E2

    ld e, $FC

jr_007_51E2:
    ld a, [$C865]
    bit 6, a
    jr z, jr_007_51FA

    ld a, [$C881]
    ld b, a
    add e
    bit 7, a
    jr z, jr_007_51FA

    ld a, b
    and a
    jp z, Jump_007_543E

    cpl
    inc a
    ld e, a

jr_007_51FA:
    ld a, e
    ld hl, $C957
    add [hl]
    ld [hl], a
    ld a, [$C881]
    ld d, a
    add e
    ld e, a
    bit 7, a
    jr z, jr_007_520C

    add $10

jr_007_520C:
    ld [$C881], a
    xor d
    bit 3, a
    jp z, Jump_007_543E

    bit 7, e
    ld hl, $C884
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $C886
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    jr z, jr_007_524F

    push de
    ld hl, $C883
    dec [hl]
    ld l, [hl]
    ld a, l
    and a
    ld d, $50
    jr z, jr_007_5233

    ld d, $10

jr_007_5233:
    ld hl, $C865
    ld a, [hl]
    and $8F
    add d
    ld [hl], a
    ld a, [$C86A]
    cpl
    inc a
    ld l, a
    ld h, $FF
    add hl, bc
    ld a, l
    ld [$C884], a
    ld a, h
    ld [$C885], a
    ld c, l
    ld b, h
    pop de

jr_007_524F:
    ld hl, $C888
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $FFE0
    add hl, de
    ld a, l
    ld [$C886], a
    ld [$C88A], a
    ld a, h
    and $03
    add $98
    ld [$C887], a
    ld [$C88B], a
    ld a, $02
    ld [$C88C], a
    jp Jump_007_543E


Jump_007_5273:
    ld a, e
    cp $04
    jr c, jr_007_527A

    ld e, $04

jr_007_527A:
    ld a, [$C865]
    bit 5, a
    jr z, jr_007_5293

    ld a, [$C881]
    ld b, a
    add e
    bit 4, a
    jr z, jr_007_5293

    ld a, b
    cpl
    and $0F
    and a
    jp z, Jump_007_543E

    ld e, a

jr_007_5293:
    ld a, e
    ld hl, $C957
    add [hl]
    ld [hl], a
    ld a, [$C881]
    ld d, a
    add e
    ld e, a
    and $0F
    ld [$C881], a
    xor d
    bit 3, a
    jp z, Jump_007_543E

    bit 4, e
    ld hl, $C884
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $C886
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    jr z, jr_007_52E4

    push de
    ld hl, $C883
    inc [hl]
    ld l, [hl]
    ld a, [$C869]
    cp l
    ld d, $30
    jr z, jr_007_52CA

    ld d, $10

jr_007_52CA:
    ld hl, $C865
    ld a, [hl]
    and $8F
    add d
    ld [hl], a
    ld a, [$C86A]
    ld l, a
    ld h, $00
    add hl, bc
    ld a, h
    ld [$C885], a
    ld a, l
    ld [$C884], a
    ld c, l
    ld b, h
    pop de

jr_007_52E4:
    ld hl, $0020
    add hl, de
    ld a, h
    and $03
    add $98
    ld h, a
    ld a, h
    ld [$C887], a
    ld a, l
    ld [$C886], a
    ld e, l
    ld d, h
    ld a, [$C86D]
    ld h, a
    ld a, [$C86C]
    ld l, a
    add hl, bc
    ld a, h
    ld [$C889], a
    ld a, l
    ld [$C888], a
    ld hl, $0240
    add hl, de
    ld a, h
    and $03
    add $98
    ld h, a
    ld a, h
    ld [$C88B], a
    ld a, l
    ld [$C88A], a
    ld a, $02
    ld [$C88C], a
    jp Jump_007_543E


Jump_007_5323:
    ld [$C88D], a
    ld de, $0000
    ld a, [$C88F]
    ld e, a
    ld a, $02
    ld [$C95A], a
    ldh [rSVBK], a
    ld bc, $C100
    ld a, [$C890]
    ld l, a
    xor a
    sla l
    adc d
    sla a
    sla l
    adc $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [$C88E]
    bit 3, a
    jr nz, jr_007_5353

    ld a, [hl]
    ld [bc], a
    inc bc

jr_007_5353:
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C891]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C892]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C893]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C894]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C895]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C896]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C897]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C898]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C899]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C89A]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D4
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ret


Jump_007_543E:
    ld a, [$C88C]
    and a
    ret z

    cp $02
    jp nz, Jump_007_5323

    ld [$C88D], a
    ld a, [$C889]
    ld h, a
    ld a, [$C888]
    ld l, a
    ld a, $03
    ld [$C95A], a
    ldh [rSVBK], a
    ld a, [hl+]
    ld [$C890], a
    ld a, [hl+]
    ld [$C891], a
    ld a, [hl+]
    ld [$C892], a
    ld a, [hl+]
    ld [$C893], a
    ld a, [hl+]
    ld [$C894], a
    ld a, [hl+]
    ld [$C895], a
    ld a, [hl+]
    ld [$C896], a
    ld a, [hl+]
    ld [$C897], a
    ld a, [hl+]
    ld [$C898], a
    ld a, [hl+]
    ld [$C899], a
    ld a, [hl+]
    ld [$C89A], a
    ld de, $0000
    ld a, [$C881]
    bit 3, a
    jr z, jr_007_5492

    ld e, $02

jr_007_5492:
    ld a, e
    ld [$C88F], a
    ld a, [$C880]
    ld [$C88E], a
    ld a, $02
    ld [$C95A], a
    ldh [rSVBK], a
    ld bc, $C100
    ld a, [$C890]
    ld l, a
    xor a
    sla l
    adc d
    sla a
    sla l
    adc $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [$C88E]
    bit 3, a
    jr nz, jr_007_54C2

    ld a, [hl]
    ld [bc], a
    inc bc

jr_007_54C2:
    inc hl
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C891]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C892]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C893]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C894]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C895]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C896]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C897]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C898]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C899]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [$C89A]
    ld l, a
    xor a
    sla l
    adc d
    sla l
    rla
    add $D0
    ld h, a
    ld a, l
    add e
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    inc bc
    ld hl, $C89B
    ld d, $1F
    ld a, [$C88A]
    ld c, a
    and $E0
    ld e, a
    ld a, c
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ld [hl+], a
    inc a
    and d
    add e
    ret


    xor a
    ld [$FF4F], a
    ld hl, $C859
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$C861]
    ld [hl], a
    pop hl
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$C861]
    ld [hl], a
    pop hl
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$C861]
    ld [hl], a
    pop hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$C861]
    ld [hl], a
    ld a, $01
    ld [$FF4F], a
    ld hl, $C859
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$C862]
    ld [hl], a
    pop hl
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$C862]
    ld [hl], a
    pop hl
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$C862]
    ld [hl], a
    pop hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$C862]
    ld [hl], a
    ld a, $12
    ld [$C6E8], a
    ld a, $2C
    ld [$C6E9], a
    ret


Call_007_5678:
    ld a, l
    add c
    and $1F
    ld e, a
    ld a, l
    and $E0
    add e
    ld l, a
    ret


Call_007_5683:
    ld e, c
    xor a
    ld d, a
    ld a, $05

jr_007_5688:
    sla e
    rl d
    dec a
    jr nz, jr_007_5688

    add hl, de
    ld a, h
    and $03
    add $98
    ld h, a
    ret


Call_007_5697:
    push hl
    ld c, $01
    ld a, h
    ld [$C85A], a
    ld a, l
    ld [$C859], a
    call Call_007_5678
    ld a, h
    ld [$C85C], a
    ld a, l
    ld [$C85B], a
    pop hl
    call Call_007_5683
    ld a, h
    ld [$C85E], a
    ld a, l
    ld [$C85D], a
    call Call_007_5678
    ld a, h
    ld [$C860], a
    ld a, l
    ld [$C85F], a
    ld a, $07
    ld [$C6EA], a
    ld a, $0E
    ld [$C6E8], a
    ld a, $56
    ld [$C6E9], a
    call Call_007_58C0
    call $0840
    ret


Call_007_56DA:
    ld hl, $C85B
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $01
    call Call_007_5678
    call Call_007_5697
    ret


Call_007_56E9:
    ld hl, $C859
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $FE
    call Call_007_5678
    call Call_007_5697
    ret


Call_007_56F8:
    ld hl, $C85D
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $01
    call Call_007_5683
    call Call_007_5697
    ret


Call_007_5707:
    ld hl, $C859
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $FE
    call Call_007_5683
    call Call_007_5697
    ret


    ld a, $FF
    ld [$C861], a
    ld a, $8F
    ld [$C862], a
    ld hl, $C886
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_007_5697
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_5707
    call Call_007_5707
    call Call_007_5707
    call Call_007_5707
    call Call_007_5707
    call Call_007_5707
    call Call_007_5707
    call Call_007_5707
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_5707
    call Call_007_5707
    call Call_007_5707
    call Call_007_5707
    call Call_007_5707
    call Call_007_5707
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_5707
    call Call_007_5707
    call Call_007_5707
    call Call_007_5707
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56F8
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_56E9
    call Call_007_5707
    call Call_007_5707
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56DA
    call Call_007_56F8
    call Call_007_56E9
    call Call_007_56E9
    jp $22D6


    call $0840
    ld hl, $C863
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, $01
    ld [$FF70], a
    xor a
    ld [$C941], a
    ld [$C949], a
    ld [$C94A], a
    ld [$C942], a
    ld [$C948], a
    ld [$C947], a
    ld [$C94D], a
    ld [$C940], a
    ld a, $FF
    ld [$C944], a
    ld [$C945], a
    ld [$C943], a
    ld a, $81
    ld hl, $44EF
    ld e, $30
    call $07A9
    ld a, $55
    ld [$C940], a
    ld a, $8F
    ld [$C93E], a
    ld a, $06
    ld [$C93F], a
    ret


Call_007_58C0:
    ld a, [$C942]
    and a
    jr z, jr_007_591C

    ld a, [$C942]
    and $02
    jr z, jr_007_58E1

    xor a
    ld [$C942], a
    ld a, $FF
    ld [$C943], a
    ld a, $32
    ld [$C93E], a
    ld a, $07
    ld [$C93F], a
    ret


jr_007_58E1:
    ld a, [$C942]
    and $02
    jr z, jr_007_58F7

    xor a
    ld [$C942], a
    ld a, $3B
    ld [$C93E], a
    ld a, $07
    ld [$C93F], a
    ret


jr_007_58F7:
    ld a, [$C942]
    and $04
    jr z, jr_007_590D

    xor a
    ld [$C942], a
    ld a, $3F
    ld [$C93E], a
    ld a, $07
    ld [$C93F], a
    ret


jr_007_590D:
    xor a
    ld [$C942], a
    ld a, $32
    ld [$C93E], a
    ld a, $07
    ld [$C93F], a
    ret


jr_007_591C:
    ld a, [$C941]
    and a
    jr z, jr_007_592D

    ld a, $A6
    ld [$C93E], a
    ld a, $06
    ld [$C93F], a
    ret


jr_007_592D:
    ld a, [$C944]
    cp $FF
    jr z, jr_007_593F

    ld a, $43
    ld [$C93E], a
    ld a, $07
    ld [$C93F], a
    ret


jr_007_593F:
    ld a, [$C945]
    cp $FF
    jr z, jr_007_5951

    ld a, $53
    ld [$C93E], a
    ld a, $07
    ld [$C93F], a
    ret


jr_007_5951:
    ld a, [$C947]
    and a
    jr z, jr_007_597B

    bit 1, a
    jr z, jr_007_596A

    dec a
    ld [$C947], a
    ld a, $63
    ld [$C93E], a
    ld a, $07
    ld [$C93F], a
    ret


jr_007_596A:
    ld a, [$C94D]
    and a
    jr nz, jr_007_597B

    ld a, $85
    ld [$C93E], a
    ld a, $07
    ld [$C93F], a
    ret


jr_007_597B:
    ld a, [$C94D]
    and a
    jr z, jr_007_59B5

    ld a, [$C94D]
    and $01
    jr z, jr_007_5998

    ld a, $FF
    ld [$C943], a
    ld a, $BA
    ld [$C93E], a
    ld a, $06
    ld [$C93F], a
    ret


jr_007_5998:
    ld a, [$C94D]
    and $02
    jr z, jr_007_59AA

    ld a, $F7
    ld [$C93E], a
    ld a, $06
    ld [$C93F], a
    ret


jr_007_59AA:
    ld a, $2A
    ld [$C93E], a
    ld a, $07
    ld [$C93F], a
    ret


jr_007_59B5:
    ld a, $A5
    ld [$C93E], a
    ld a, $06
    ld [$C93F], a
    ret


    ld a, [$C955]
    bit 0, a
    jp z, Jump_007_59F3

    ld a, [$C949]
    inc a
    cp $29
    jr nz, jr_007_59D1

    xor a

jr_007_59D1:
    ld [$C949], a
    push de
    ld a, [$C949]
    ld e, a
    ld a, [$C943]
    cp e
    jr z, jr_007_59E8

    ld a, e
    ld [$C943], a
    ld a, $01
    ld [$C941], a

jr_007_59E8:
    xor a
    ld [$C94D], a
    ld a, $0F
    ld [$C94F], a
    pop de
    ret


Jump_007_59F3:
    ld a, [$C955]
    bit 3, a
    jp z, Jump_007_5A01

    ld a, $10
    ld [$C944], a
    ret


Jump_007_5A01:
    ld a, [$C955]
    bit 2, a
    jp z, Jump_007_5A0F

    ld a, $0F
    ld [$C944], a
    ret


Jump_007_5A0F:
    ld a, [$C955]
    bit 1, a
    ret z

    ld a, [$C94A]
    ld [$C944], a
    ld a, [$C94A]
    inc a
    cp $28
    jr nz, jr_007_5A24

    xor a

jr_007_5A24:
    ld [$C94A], a
    ret


    ld a, [$C954]
    ld d, a
    ld a, $20
    ld [$FF00], a
    ld a, [$FF00]
    ld a, [$FF00]
    cpl
    and $0F
    swap a
    ld b, a
    ld a, $10
    ld [$FF00], a
    ld a, [$FF00]
    ld a, [$FF00]
    ld a, [$FF00]
    ld a, [$FF00]
    ld a, [$FF00]
    ld a, [$FF00]
    cpl
    and $0F
    or b
    ld [$C954], a
    ld c, a
    and $0F
    cp $0F
    jr nz, jr_007_5A65

    jp $015B


jr_007_5A65:
    ld a, c
    xor d
    ld e, a
    and c
    ld [$C955], a
    ld a, c
    cpl
    and e
    ld [$C956], a
    ld a, $30
    ld [$FF00], a
    ret


    ld a, [$FF4D]
    bit 7, a
    ret nz

    ld a, $01
    ld [$FF4D], a
    ld a, [$FFFF]
    push af
    xor a
    ld [$FFFF], a
    ld a, $30
    ld [$FF00], a
    stop

jr_007_5A92:
    ld a, [$FF4D]
    bit 7, a
    jr z, jr_007_5A92

    xor a
    ld [$FF00], a
    ld [$FF0F], a
    pop af
    ld [$FFFF], a
    ret


    ld a, [$FF4D]
    bit 7, a
    ret z

    ld a, $01
    ld [$FF4D], a
    ld a, [$FFFF]
    push af
    xor a
    ld [$FFFF], a
    ld a, $30
    ld [$FF00], a
    stop

jr_007_5ABF:
    ld a, [$FF4D]
    bit 7, a
    jr nz, jr_007_5ABF

    xor a
    ld [$FF00], a
    ld [$FF0F], a
    pop af
    ld [$FFFF], a
    ret


    ld c, $80
    ld b, $0A
    ld hl, $5AE0

jr_007_5AD9:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_007_5AD9

    ret


    ld a, $C0
    ldh [rDMA], a
    ld a, $28

jr_007_5AE6:
    dec a
    jr nz, jr_007_5AE6

    ret


    ret


    ret


    ld l, h
    ld e, e
    ld a, l
    ld h, b
    ld c, l
    ld e, a
    push de
    ld e, a
    inc a
    ld h, b
    ld a, e
    ld h, b
    ld a, h
    ld h, b
    ld l, h
    ld e, e
    inc b
    ld h, c
    ld l, h
    ld e, a
    dec c
    ld h, b
    adc $60
    dec sp
    ld h, b
    dec sp
    ld h, b
    ld hl, $CDAC
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $CDAA
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ret


    ld hl, $CDAC
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $CDAA
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, $22

jr_007_5B29:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec d
    jr nz, jr_007_5B29

    ret


    ld a, [$CDA9]
    ld c, a
    ld b, $22
    call $0500
    ld bc, $5B6C
    add hl, bc
    ld a, [$CDAD]
    ld b, a
    ld a, [$CDAC]
    ld c, a
    ld d, $22

jr_007_5B47:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec d
    jr nz, jr_007_5B47

    ret


    ld a, [$CDA9]
    ld c, a
    ld b, $22
    call $0500
    ld bc, $5F73
    add hl, bc
    ld a, [$CDAD]
    ld b, a
    ld a, [$CDAC]
    ld c, a
    ld d, $22

jr_007_5B65:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec d
    jr nz, jr_007_5B65

    ret


    ld hl, $CDAC
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, [$CDAB]
    ld h, a
    ld a, [$CDAA]
    ld l, a
    ld d, $13

jr_007_5B7C:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec d
    jr nz, jr_007_5B7C

    ret


    ld a, [$CDA9]
    ld c, a
    ld b, $13
    call $0500
    ld bc, $5BA1
    add hl, bc
    ld a, [$CDAD]
    ld b, a
    ld a, [$CDAC]
    ld c, a
    ld d, $13

jr_007_5B9A:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec d
    jr nz, jr_007_5B9A

    ret


    ret


    ld hl, $D110
    ld bc, $000C
    ld e, $63
    ld a, $0A
    call $335C
    ret


    ld hl, $D110
    ld bc, $000E
    ld e, $63
    ld a, $0C
    call $335C
    ret


    ld hl, $D110
    ld bc, $000B
    ld e, $63
    ld a, $08
    call $335C
    ret


    ld hl, $D110
    ld bc, $000E
    ld e, $63
    ld a, $04
    call $335C
    ret


    ld hl, $D110
    ld bc, $000C
    ld e, $63
    ld a, $06
    call $335C
    ret


    ld hl, $D110
    ld bc, $000C
    ld e, $63
    ld a, $0F
    call $335C
    ld hl, $D110
    ld bc, $000B
    ld a, $0F
    call $335C
    ret


    ld hl, $D110
    ld bc, $000B
    ld e, $63
    ld a, $06
    call $335C
    ld hl, $D110
    ld bc, $000C
    ld e, $63
    ld a, $06
    call $335C
    ld hl, $D110
    ld bc, $0010
    ld e, $63
    ld a, $14
    call $335C
    ld hl, $D110
    ld bc, $000E
    ld a, $0A
    call $335C
    ld hl, $D110
    ld bc, $000F
    ld a, $0A
    call $335C
    ret


    ld hl, $D122
    ld a, $01
    or [hl]
    ld [hl], a
    ld hl, $D110
    ld bc, $000E
    ld e, $63
    ld a, $0F
    call $335C
    ld hl, $D110
    ld bc, $000D
    ld a, $19
    call $335C
    ret


    ld a, [$D119]
    ld h, a
    ld a, [$D11A]
    ld l, a
    ld c, $19
    ld b, $00
    add hl, bc
    ld a, h
    ld [$D119], a
    ld [$D117], a
    ld a, l
    ld [$D11A], a
    ld [$D118], a
    ld hl, $D110
    ld bc, $000B
    ld e, $63
    ld a, $19
    call $335C
    ld hl, $D110
    ld bc, $000E
    ld e, $63
    ld a, $19
    call $335C
    ld hl, $D110
    ld bc, $000C
    ld e, $63
    ld a, $19
    call $335C
    ld hl, $D110
    ld bc, $000D
    ld e, $63
    ld a, $19
    call $335C
    ld a, $08
    ld hl, $D125
    or [hl]
    ld [hl], a
    ld hl, $D126
    or [hl]
    ld [hl], a
    ld hl, $D111
    ld a, [hl]
    and $0F
    or $30
    ld [hl], a
    ret


    ld a, [$D119]
    ld h, a
    ld a, [$D11A]
    ld l, a
    ld c, $06
    ld b, $00
    add hl, bc
    ld a, h
    ld [$D119], a
    ld [$D117], a
    ld a, l
    ld [$D11A], a
    ld [$D118], a
    ret


    ld hl, $D122
    ld a, $02
    or [hl]
    ld [hl], a
    ld hl, $D110
    ld bc, $000C
    ld e, $63
    ld a, $0F
    call $335C
    ld hl, $D110
    ld bc, $000B
    ld e, $63
    ld a, $0F
    call $335C
    ld hl, $D110
    ld bc, $000E
    ld a, $0F
    call $335C
    ld hl, $D110
    ld bc, $000F
    ld a, $0F
    call $335C
    ret


    ld hl, $D122
    ld a, $01
    or [hl]
    ld [hl], a
    ld hl, $D123
    ld a, $20
    or [hl]
    ld [hl], a
    ret


    ld hl, $D106
    ld a, $02
    or [hl]
    ld [hl], a
    ret


    ld hl, $D110
    ld bc, $000E
    ld e, $63
    ld a, $05
    call $335C
    ret


    ld hl, $D110
    ld bc, $0010
    ld e, $63
    ld a, $0F
    call $335C
    ret


    ld a, [$D119]
    ld h, a
    ld a, [$D11A]
    ld l, a
    ld c, $04
    ld b, $00
    add hl, bc
    ld a, h
    ld [$D119], a
    ld [$D117], a
    ld a, l
    ld [$D11A], a
    ld [$D118], a
    ret


    ld hl, $D110
    ld bc, $000B
    ld e, $63
    ld a, $05
    call $335C
    ret


    ld hl, $D122
    ld a, $20
    or [hl]
    ld [hl], a
    ld hl, $D123
    ld a, $08
    or [hl]
    ld [hl], a
    ret


    ld hl, $D106
    ld a, $10
    or [hl]
    ld [hl], a
    ret


    ld hl, $D110
    ld bc, $000C
    ld e, $63
    ld a, $0A
    call $335C
    ret


    ld hl, $D110
    ld bc, $000B
    ld e, $63
    ld a, $0C
    call $335C
    ret


    ret


    ld hl, $D110
    ld bc, $000D
    ld e, $63
    ld a, $0A
    call $335C
    ld hl, $D110
    ld bc, $000C
    ld e, $63
    ld a, $05
    call $335C
    ld hl, $D110
    ld bc, $000B
    ld e, $63
    ld a, $0A
    call $335C
    ld hl, $D126
    ld a, $04
    or [hl]
    ld [hl], a
    ret


    ld hl, $D122
    ld a, $10
    or [hl]
    ld [hl], a
    ld a, [$D119]
    ld h, a
    ld a, [$D11A]
    ld l, a
    ld c, $0F
    ld b, $00
    add hl, bc
    ld a, h
    ld [$D119], a
    ld [$D117], a
    ld a, l
    ld [$D11A], a
    ld [$D118], a
    ld hl, $D110
    ld bc, $000E
    ld e, $63
    ld a, $0F
    call $335C
    ld hl, $D110
    ld bc, $000B
    ld a, $0F
    call $335C
    ret


    xor a
    ld [$D120], a
    ret


    ld hl, $D110
    ld bc, $000B
    ld e, $63
    ld a, $02
    call $335C
    ld hl, $D110
    ld bc, $000D
    ld e, $63
    ld a, $02
    call $335C
    ret


    ld hl, $D110
    ld bc, $000E
    ld e, $63
    ld a, $14
    call $335C
    ld hl, $D126
    ld a, $40
    or [hl]
    ld [hl], a
    ret


    ld hl, $D110
    ld bc, $000E
    ld e, $63
    ld a, $0F
    call $335C
    ret


    ld hl, $D122
    ld a, $08
    or [hl]
    ld [hl], a
    ld hl, $D123
    ld a, $01
    or [hl]
    ld [hl], a
    ret


    ld hl, $D106
    ld a, $04
    or [hl]
    ld [hl], a
    ret


    ld a, [$D119]
    ld h, a
    ld a, [$D11A]
    ld l, a
    ld c, $08
    ld b, $00
    add hl, bc
    ld a, h
    ld [$D119], a
    ld [$D117], a
    ld a, l
    ld [$D11A], a
    ld [$D118], a
    ret


    ld hl, $D126
    ld a, $01
    or [hl]
    ld [hl], a
    ret


    ld hl, $D122
    ld a, $04
    or [hl]
    ld [hl], a
    ld hl, $D123
    ld a, $02
    or [hl]
    ld [hl], a
    ret


    ld hl, $D106
    ld a, $01
    or [hl]
    ld [hl], a
    ret


    ld a, [$D119]
    ld h, a
    ld a, [$D11A]
    ld l, a
    ld c, $08
    ld b, $00
    add hl, bc
    ld a, h
    ld [$D119], a
    ld [$D117], a
    ld a, l
    ld [$D11A], a
    ld [$D118], a
    ld hl, $D124
    ld a, $FF
    or [hl]
    ld [hl], a
    ret


    ld hl, $D110
    ld bc, $000B
    ld e, $63
    ld a, $0F
    call $335C
    ret


    ld hl, $D122
    ld a, $10
    or [hl]
    ld [hl], a
    ld hl, $D123
    ld a, $04
    or [hl]
    ld [hl], a
    ret


    ld hl, $D106
    ld a, $08
    or [hl]
    ld [hl], a
    ret


    ld hl, $D110
    ld bc, $000B
    ld e, $63
    ld a, $08
    call $335C
    ret


    ld hl, $D122
    ld a, $08
    or [hl]
    ld [hl], a
    ld hl, $D126
    ld a, $04
    or [hl]
    ld [hl], a
    ld hl, $D110
    ld bc, $000E
    ld e, $63
    ld a, $05
    call $335C
    ld hl, $D110
    ld bc, $000B
    ld e, $63
    ld a, $05
    call $335C
    ld hl, $D110
    ld bc, $000C
    ld e, $63
    ld a, $05
    call $335C
    ld hl, $D110
    ld bc, $000D
    ld a, $05
    call $335C
    ret


    ld hl, $D110
    ld bc, $0010
    ld e, $63
    ld a, $05
    call $335C
    ret


    ld hl, $A019
    add hl, de
    push hl
    ld b, e
    ld c, $13
    call $0500
    ld bc, $5BA7
    add hl, bc
    ld bc, $000D
    ld de, $C96C
    call $07D6
    ld a, $FC
    ld [de], a
    pop hl
    jp Jump_007_60A0


    ld hl, $A019
    add hl, de
    jp Jump_007_6108


    ld a, $01
    ld [$D076], a
    ld a, [$CDB0]
    ld [$D077], a
    ld hl, $405C
    ld e, $05
    call $07A9
    ret


    ld a, $01
    ld [$D076], a
    call $0585
    ld c, a
    ld b, $1E
    call $04E2
    ld a, l
    add $0A
    ld [$D077], a
    ld hl, $405C
    ld e, $05
    call $07A9
    ld a, $01
    ld [$D071], a
    ld hl, $C71F
    ld a, [$CDC7]
    ld [hl+], a
    ld a, [$CDC8]
    ld [hl+], a
    ld a, [$CDC9]
    ld [hl+], a
    ld a, $D3
    ld [hl+], a
    ld a, $0A
    ld [hl+], a
    ld hl, $405C
    ld e, $05
    call $07A9
    ret


    ld hl, $405C
    ld e, $05
    call $07A9
    call $0585
    cp $E6
    ret nc

    ret


    ld hl, $A01A
    add hl, de
    push hl
    ld b, e
    ld c, $22
    call $0500
    ld bc, $5F7F
    add hl, bc
    ld bc, $000D
    ld de, $C96C
    call $07D6
    ld a, $FC
    ld [de], a
    ld bc, $FFEB
    add hl, bc
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [hl]
    pop hl
    ld [hl], a
    xor a
    ld [$0000], a
    ld a, $01
    ld [$CA1A], a
    ret


    ld hl, $A01A
    add hl, de
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    xor a
    ld [hl], a
    xor a
    ld [$0000], a
    ret


    ld hl, $5AEC

Jump_007_6027:
    ld a, [$CA19]
    add a
    ld e, a
    ld d, $00
    rlc d
    add hl, de
    ld a, [$CA1A]
    ld e, a
    ld d, $00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ret


    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$CA1B]
    ld e, a
    ld d, $00
    ld hl, $A229
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    add hl, de
    ld de, $FC19
    push hl
    add hl, de
    pop hl
    jr nc, jr_007_6061

    ld hl, $03E7

jr_007_6061:
    ld a, h
    ld [$A22A], a
    ld a, l
    ld [$A229], a
    xor a
    ld [$0000], a
    pop bc
    ld a, c
    cpl
    ld c, a
    ld a, b
    cpl
    ld b, a
    inc bc
    add hl, bc
    ld a, l
    ld [$CA1B], a
    ret


    ret


    ret


    ld hl, $A22C
    add hl, de
    push hl
    ld a, e
    ld [$CDA9], a
    ld hl, $C96C
    ld a, $11
    ld [hl+], a
    ld a, h
    ld [$CDAD], a
    ld a, l
    ld [$CDAC], a
    ld hl, $527F
    ld e, $06
    call $07A9
    ld a, $FC
    ld [bc], a
    pop hl

Jump_007_60A0:
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [hl]
    ld c, a
    ld a, [$CA1B]
    add c
    jr nc, jr_007_60BD

    ld a, $FF
    ld [hl], a
    xor a
    ld [$CA1A], a
    jr jr_007_60C3

jr_007_60BD:
    ld [hl], a
    ld a, $01
    ld [$CA1A], a

jr_007_60C3:
    xor a
    ld [$0000], a
    ret


    ld hl, $5AFA
    jp Jump_007_6027


    ld hl, $A22C
    add hl, de
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$CA1B]
    ld e, a
    ld d, $00
    ld a, e
    cpl
    ld e, a
    ld a, d
    cpl
    ld d, a
    inc de
    ld hl, $A229
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    jr nc, jr_007_60F7

    ld hl, $0000

jr_007_60F7:
    ld a, h
    ld [$A22A], a
    ld a, l
    ld [$A229], a
    xor a
    ld [$0000], a
    ret


    ld hl, $A22C
    add hl, de

Jump_007_6108:
    ld a, $00
    add $00
    ld [$4000], a
    ld a, $0A
    ld [$0000], a
    ld a, [$CA1B]
    ld c, a
    ld a, [hl]
    sub c
    jr nc, jr_007_611D

    xor a

jr_007_611D:
    ld [hl], a
    xor a
    ld [$0000], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
