SECTION "ROM Bank $026", ROMX[$4000], BANK[$26]

INCLUDE "assets/credits/credits.asm"


    ld b, b                                       ; $6603: $40
    db $10                                        ; $6604: $10
    dec de                                        ; $6605: $1B
    dec d                                         ; $6606: $15
    add hl, bc                                    ; $6607: $09
    ld de, $1626                                  ; $6608: $11 $26 $16
    ld l, c                                       ; $660B: $69
    ld b, d                                       ; $660C: $42
    dec de                                        ; $660D: $1B
    rra                                           ; $660E: $1F
    ld a, [bc]                                    ; $660F: $0A
    nop                                           ; $6610: $00
    dec b                                         ; $6611: $05
    rlca                                          ; $6612: $07
    nop                                           ; $6613: $00
    ld l, e                                       ; $6614: $6B
    ld c, d                                       ; $6615: $4A
    add hl, bc                                    ; $6616: $09
    nop                                           ; $6617: $00
    ld h, $0C                                     ; $6618: $26 $0C
    ld l, c                                       ; $661A: $69
    ld b, $11                                     ; $661B: $06 $11
    nop                                           ; $661D: $00
    add hl, bc                                    ; $661E: $09
    ld de, $AB20                                  ; $661F: $11 $20 $AB
    ld d, b                                       ; $6622: $50
    ld b, d                                       ; $6623: $42
    sub e                                         ; $6624: $93
    ld h, l                                       ; $6625: $65
    jr c, jr_026_666C                             ; $6626: $38 $44

    ld c, a                                       ; $6628: $4F
    ld h, h                                       ; $6629: $64
    ld a, [c]                                     ; $662A: $F2
    ld b, h                                       ; $662B: $44
    ld l, c                                       ; $662C: $69
    rst $30                                       ; $662D: $F7
    ld b, h                                       ; $662E: $44
    ld h, [hl]                                    ; $662F: $66
    ret nz                                        ; $6630: $C0

    ld e, h                                       ; $6631: $5C
    ld hl, $0005                                  ; $6632: $21 $05 $00
    add c                                         ; $6635: $81
    ld e, l                                       ; $6636: $5D
    dec b                                         ; $6637: $05
    ld a, [bc]                                    ; $6638: $0A

jr_026_6639:
    ld [hl], e                                    ; $6639: $73
    ret nc                                        ; $663A: $D0

    nop                                           ; $663B: $00
    jr nz, jr_026_6639                            ; $663C: $20 $FB

    ld d, b                                       ; $663E: $50
    ld [hl+], a                                   ; $663F: $22
    dec b                                         ; $6640: $05
    ld b, b                                       ; $6641: $40
    dec b                                         ; $6642: $05
    ld [bc], a                                    ; $6643: $02
    and h                                         ; $6644: $A4
    ld h, l                                       ; $6645: $65
    ld bc, $3805                                  ; $6646: $01 $05 $38
    ret nc                                        ; $6649: $D0

    nop                                           ; $664A: $00
    ld h, $2A                                     ; $664B: $26 $2A
    ld l, b                                       ; $664D: $68
    ld h, $52                                     ; $664E: $26 $52
    ld l, b                                       ; $6650: $68
    dec b                                         ; $6651: $05
    inc bc                                        ; $6652: $03
    and h                                         ; $6653: $A4
    ld h, l                                       ; $6654: $65
    ld bc, $2D04                                  ; $6655: $01 $04 $2D
    ret nc                                        ; $6658: $D0

    nop                                           ; $6659: $00
    ld h, $37                                     ; $665A: $26 $37
    ld l, b                                       ; $665C: $68
    ld h, $90                                     ; $665D: $26 $90
    ld l, b                                       ; $665F: $68
    dec b                                         ; $6660: $05
    inc b                                         ; $6661: $04
    and h                                         ; $6662: $A4
    ld h, l                                       ; $6663: $65
    ld bc, $2203                                  ; $6664: $01 $03 $22
    ret nc                                        ; $6667: $D0

    nop                                           ; $6668: $00
    ld h, $44                                     ; $6669: $26 $44
    ld l, b                                       ; $666B: $68

jr_026_666C:
    ld h, $CE                                     ; $666C: $26 $CE
    ld l, b                                       ; $666E: $68
    dec b                                         ; $666F: $05
    dec b                                         ; $6670: $05
    ld l, e                                       ; $6671: $6B
    ld c, d                                       ; $6672: $4A
    ld [bc], a                                    ; $6673: $02
    rlca                                          ; $6674: $07
    ld c, a                                       ; $6675: $4F
    ret nc                                        ; $6676: $D0

    jr nz, jr_026_669B                            ; $6677: $20 $22

    inc b                                         ; $6679: $04
    ld b, b                                       ; $667A: $40
    ld [hl+], a                                   ; $667B: $22
    inc b                                         ; $667C: $04
    ld b, b                                       ; $667D: $40
    dec b                                         ; $667E: $05
    ld b, $6B                                     ; $667F: $06 $6B
    ld c, d                                       ; $6681: $4A
    inc b                                         ; $6682: $04
    rlca                                          ; $6683: $07
    ld d, c                                       ; $6684: $51
    ret nc                                        ; $6685: $D0

    jr nz, jr_026_66AA                            ; $6686: $20 $22

    inc b                                         ; $6688: $04
    ld b, b                                       ; $6689: $40
    ld [hl+], a                                   ; $668A: $22
    inc b                                         ; $668B: $04
    ld b, b                                       ; $668C: $40
    dec b                                         ; $668D: $05
    rlca                                          ; $668E: $07
    ld l, e                                       ; $668F: $6B
    ld c, d                                       ; $6690: $4A
    ld b, $07                                     ; $6691: $06 $07
    ld d, e                                       ; $6693: $53
    ret nc                                        ; $6694: $D0

    jr nz, jr_026_66B9                            ; $6695: $20 $22

    inc b                                         ; $6697: $04
    ld b, b                                       ; $6698: $40
    ld [hl+], a                                   ; $6699: $22
    inc b                                         ; $669A: $04

jr_026_669B:
    ld b, b                                       ; $669B: $40
    dec b                                         ; $669C: $05
    ld [$4A6B], sp                                ; $669D: $08 $6B $4A
    ld [$5507], sp                                ; $66A0: $08 $07 $55

jr_026_66A3:
    ret nc                                        ; $66A3: $D0

    jr nz, jr_026_66C8                            ; $66A4: $20 $22

    inc b                                         ; $66A6: $04
    ld b, b                                       ; $66A7: $40
    ld [hl+], a                                   ; $66A8: $22
    inc b                                         ; $66A9: $04

jr_026_66AA:
    ld b, b                                       ; $66AA: $40
    dec b                                         ; $66AB: $05
    ld de, $4A6B                                  ; $66AC: $11 $6B $4A
    nop                                           ; $66AF: $00
    nop                                           ; $66B0: $00
    nop                                           ; $66B1: $00
    ret nc                                        ; $66B2: $D0

    nop                                           ; $66B3: $00
    ld [hl+], a                                   ; $66B4: $22
    inc b                                         ; $66B5: $04
    ld b, b                                       ; $66B6: $40
    ld [hl+], a                                   ; $66B7: $22
    inc b                                         ; $66B8: $04

jr_026_66B9:
    ld b, b                                       ; $66B9: $40
    dec b                                         ; $66BA: $05
    ld [de], a                                    ; $66BB: $12
    ld l, e                                       ; $66BC: $6B
    ld c, d                                       ; $66BD: $4A
    nop                                           ; $66BE: $00
    nop                                           ; $66BF: $00
    nop                                           ; $66C0: $00
    ret nc                                        ; $66C1: $D0

    nop                                           ; $66C2: $00
    ld h, $44                                     ; $66C3: $26 $44
    ld h, a                                       ; $66C5: $67
    ld [hl+], a                                   ; $66C6: $22
    inc b                                         ; $66C7: $04

jr_026_66C8:
    ld b, b                                       ; $66C8: $40
    dec b                                         ; $66C9: $05
    inc de                                        ; $66CA: $13
    ld l, e                                       ; $66CB: $6B
    ld c, d                                       ; $66CC: $4A
    nop                                           ; $66CD: $00
    nop                                           ; $66CE: $00
    nop                                           ; $66CF: $00
    ret nc                                        ; $66D0: $D0

    ld b, b                                       ; $66D1: $40
    ld [hl+], a                                   ; $66D2: $22
    inc b                                         ; $66D3: $04
    ld b, b                                       ; $66D4: $40
    ld [hl+], a                                   ; $66D5: $22
    inc b                                         ; $66D6: $04
    ld b, b                                       ; $66D7: $40
    dec bc                                        ; $66D8: $0B
    ld de, $120B                                  ; $66D9: $11 $0B $12
    dec bc                                        ; $66DC: $0B
    inc de                                        ; $66DD: $13
    ld l, e                                       ; $66DE: $6B
    ld [$600D], sp                                ; $66DF: $08 $0D $60
    ld b, a                                       ; $66E2: $47
    nop                                           ; $66E3: $00
    add h                                         ; $66E4: $84
    nop                                           ; $66E5: $00
    ld l, e                                       ; $66E6: $6B
    dec b                                         ; $66E7: $05
    daa                                           ; $66E8: $27
    ld [hl], b                                    ; $66E9: $70
    ld d, [hl]                                    ; $66EA: $56
    nop                                           ; $66EB: $00
    add b                                         ; $66EC: $80
    nop                                           ; $66ED: $00
    ld l, e                                       ; $66EE: $6B
    ld b, $27                                     ; $66EF: $06 $27
    ret nz                                        ; $66F1: $C0

    ld d, [hl]                                    ; $66F2: $56
    ld d, b                                       ; $66F3: $50
    add b                                         ; $66F4: $80
    nop                                           ; $66F5: $00
    dec bc                                        ; $66F6: $0B
    nop                                           ; $66F7: $00
    dec bc                                        ; $66F8: $0B
    ld [bc], a                                    ; $66F9: $02
    dec bc                                        ; $66FA: $0B
    inc bc                                        ; $66FB: $03
    dec bc                                        ; $66FC: $0B
    inc b                                         ; $66FD: $04
    dec bc                                        ; $66FE: $0B
    dec b                                         ; $66FF: $05
    dec bc                                        ; $6700: $0B
    ld b, $0B                                     ; $6701: $06 $0B
    rlca                                          ; $6703: $07
    dec bc                                        ; $6704: $0B
    ld [$8200], sp                                ; $6705: $08 $00 $82
    ld l, a                                       ; $6708: $6F
    rrca                                          ; $6709: $0F
    rst $38                                       ; $670A: $FF
    ld a, a                                       ; $670B: $7F
    rra                                           ; $670C: $1F
    jr nz, jr_026_66A3                            ; $670D: $20 $94

    halt                                          ; $670F: $76
    jr nz, jr_026_6721                            ; $6710: $20 $0F

    ld e, e                                       ; $6712: $5B
    ld h, $17                                     ; $6713: $26 $17
    ld h, a                                       ; $6715: $67
    ld b, d                                       ; $6716: $42
    ld b, b                                       ; $6717: $40
    rst $38                                       ; $6718: $FF
    ld b, b                                       ; $6719: $40
    rst $38                                       ; $671A: $FF
    ld b, b                                       ; $671B: $40
    rst $38                                       ; $671C: $FF
    ld b, b                                       ; $671D: $40
    rst $38                                       ; $671E: $FF
    ld b, b                                       ; $671F: $40
    rst $38                                       ; $6720: $FF

jr_026_6721:
    ld b, b                                       ; $6721: $40
    rst $38                                       ; $6722: $FF
    ld b, b                                       ; $6723: $40
    rst $38                                       ; $6724: $FF
    ld b, b                                       ; $6725: $40
    rst $38                                       ; $6726: $FF
    rra                                           ; $6727: $1F
    ld bc, $549F                                  ; $6728: $01 $9F $54
    ld c, c                                       ; $672B: $49
    ld c, l                                       ; $672C: $4D
    ld b, l                                       ; $672D: $45
    daa                                           ; $672E: $27
    ld d, e                                       ; $672F: $53
    jr nz, jr_026_6787                            ; $6730: $20 $55

    ld d, b                                       ; $6732: $50
    ld hl, $FDFE                                  ; $6733: $21 $FE $FD
    sbc d                                         ; $6736: $9A
    ld b, b                                       ; $6737: $40

jr_026_6738:
    ld [$0F6E], sp                                ; $6738: $08 $6E $0F
    rst $38                                       ; $673B: $FF
    ld a, a                                       ; $673C: $7F
    halt                                          ; $673D: $76
    jr nz, @+$11                                  ; $673E: $20 $0F

    ld b, l                                       ; $6740: $45
    inc e                                         ; $6741: $1C
    ld [bc], a                                    ; $6742: $02
    ld [hl], h                                    ; $6743: $74
    ld b, b                                       ; $6744: $40
    ld d, b                                       ; $6745: $50
    ld b, a                                       ; $6746: $47
    ld [$6026], sp                                ; $6747: $08 $26 $60
    ld h, a                                       ; $674A: $67
    ld h, $74                                     ; $674B: $26 $74
    ld h, a                                       ; $674D: $67
    ld h, $88                                     ; $674E: $26 $88
    ld h, a                                       ; $6750: $67
    ld h, $9C                                     ; $6751: $26 $9C
    ld h, a                                       ; $6753: $67
    ld h, $B0                                     ; $6754: $26 $B0
    ld h, a                                       ; $6756: $67
    ld h, $B0                                     ; $6757: $26 $B0
    ld h, a                                       ; $6759: $67
    ld h, $B0                                     ; $675A: $26 $B0
    ld h, a                                       ; $675C: $67
    ld h, $B0                                     ; $675D: $26 $B0
    ld h, a                                       ; $675F: $67
    dec b                                         ; $6760: $05
    inc de                                        ; $6761: $13
    and h                                         ; $6762: $A4
    ld h, l                                       ; $6763: $65
    ld [bc], a                                    ; $6764: $02
    ld [bc], a                                    ; $6765: $02
    jr jr_026_6738                                ; $6766: $18 $D0

    ld b, b                                       ; $6768: $40
    ld de, $718E                                  ; $6769: $11 $8E $71
    ld h, $C2                                     ; $676C: $26 $C2
    ld h, a                                       ; $676E: $67
    ld b, b                                       ; $676F: $40
    jr nc, jr_026_67B8                            ; $6770: $30 $46

    ld b, h                                       ; $6772: $44
    ld h, a                                       ; $6773: $67
    dec b                                         ; $6774: $05
    inc de                                        ; $6775: $13
    and h                                         ; $6776: $A4
    ld h, l                                       ; $6777: $65
    inc b                                         ; $6778: $04
    ld [bc], a                                    ; $6779: $02
    ld a, [de]                                    ; $677A: $1A
    ret nc                                        ; $677B: $D0

    ld b, b                                       ; $677C: $40
    ld de, $718E                                  ; $677D: $11 $8E $71
    ld h, $C2                                     ; $6780: $26 $C2
    ld h, a                                       ; $6782: $67
    ld b, b                                       ; $6783: $40
    jr nc, jr_026_67CC                            ; $6784: $30 $46

    ld b, h                                       ; $6786: $44

jr_026_6787:
    ld h, a                                       ; $6787: $67
    dec b                                         ; $6788: $05
    inc de                                        ; $6789: $13
    and h                                         ; $678A: $A4
    ld h, l                                       ; $678B: $65
    ld b, $02                                     ; $678C: $06 $02
    inc e                                         ; $678E: $1C
    ret nc                                        ; $678F: $D0

    ld b, b                                       ; $6790: $40
    ld de, $718E                                  ; $6791: $11 $8E $71
    ld h, $C2                                     ; $6794: $26 $C2
    ld h, a                                       ; $6796: $67
    ld b, b                                       ; $6797: $40
    jr nc, jr_026_67E0                            ; $6798: $30 $46

    ld b, h                                       ; $679A: $44
    ld h, a                                       ; $679B: $67
    dec b                                         ; $679C: $05
    inc de                                        ; $679D: $13
    and h                                         ; $679E: $A4
    ld h, l                                       ; $679F: $65
    ld [$1E02], sp                                ; $67A0: $08 $02 $1E
    ret nc                                        ; $67A3: $D0

    ld b, b                                       ; $67A4: $40
    ld de, $718E                                  ; $67A5: $11 $8E $71
    ld h, $C2                                     ; $67A8: $26 $C2
    ld h, a                                       ; $67AA: $67
    ld b, b                                       ; $67AB: $40
    jr nc, jr_026_67F4                            ; $67AC: $30 $46

    ld b, h                                       ; $67AE: $44
    ld h, a                                       ; $67AF: $67
    dec b                                         ; $67B0: $05
    inc de                                        ; $67B1: $13
    ld l, e                                       ; $67B2: $6B
    ld c, d                                       ; $67B3: $4A
    nop                                           ; $67B4: $00
    nop                                           ; $67B5: $00
    nop                                           ; $67B6: $00
    ret nc                                        ; $67B7: $D0

jr_026_67B8:
    ld b, b                                       ; $67B8: $40
    ld [hl+], a                                   ; $67B9: $22
    inc b                                         ; $67BA: $04
    ld b, b                                       ; $67BB: $40
    ld [hl+], a                                   ; $67BC: $22
    inc b                                         ; $67BD: $04
    ld b, b                                       ; $67BE: $40
    ld b, [hl]                                    ; $67BF: $46
    ld b, h                                       ; $67C0: $44
    ld h, a                                       ; $67C1: $67
    dec b                                         ; $67C2: $05
    nop                                           ; $67C3: $00
    ld l, e                                       ; $67C4: $6B
    ld c, d                                       ; $67C5: $4A
    nop                                           ; $67C6: $00
    nop                                           ; $67C7: $00
    nop                                           ; $67C8: $00
    ret nc                                        ; $67C9: $D0

    nop                                           ; $67CA: $00
    ld [hl+], a                                   ; $67CB: $22

jr_026_67CC:
    inc b                                         ; $67CC: $04
    ld b, b                                       ; $67CD: $40
    ld [hl+], a                                   ; $67CE: $22
    dec b                                         ; $67CF: $05
    ld b, b                                       ; $67D0: $40
    inc d                                         ; $67D1: $14
    ld de, $718E                                  ; $67D2: $11 $8E $71
    add hl, bc                                    ; $67D5: $09
    ld [de], a                                    ; $67D6: $12
    ld [hl+], a                                   ; $67D7: $22
    inc b                                         ; $67D8: $04
    ld b, b                                       ; $67D9: $40
    ld e, d                                       ; $67DA: $5A
    ld h, $DF                                     ; $67DB: $26 $DF
    ld h, a                                       ; $67DD: $67
    ld b, d                                       ; $67DE: $42
    add hl, bc                                    ; $67DF: $09

jr_026_67E0:
    ld de, $1626                                  ; $67E0: $11 $26 $16
    ld l, c                                       ; $67E3: $69
    and [hl]                                      ; $67E4: $A6
    or b                                          ; $67E5: $B0
    and d                                         ; $67E6: $A2
    dec bc                                        ; $67E7: $0B
    ld bc, $A2B0                                  ; $67E8: $01 $B0 $A2
    dec b                                         ; $67EB: $05
    dec b                                         ; $67EC: $05
    add e                                         ; $67ED: $83
    ld [bc], a                                    ; $67EE: $02
    ld [bc], a                                    ; $67EF: $02
    nop                                           ; $67F0: $00
    nop                                           ; $67F1: $00
    add e                                         ; $67F2: $83
    ld [bc], a                                    ; $67F3: $02

jr_026_67F4:
    cp $02                                        ; $67F4: $FE $02
    nop                                           ; $67F6: $00
    add e                                         ; $67F7: $83
    ld [bc], a                                    ; $67F8: $02
    cp $00                                        ; $67F9: $FE $00
    nop                                           ; $67FB: $00
    add e                                         ; $67FC: $83
    ld [bc], a                                    ; $67FD: $02
    ld [bc], a                                    ; $67FE: $02
    cp $00                                        ; $67FF: $FE $00
    add e                                         ; $6801: $83
    ld bc, $0200                                  ; $6802: $01 $00 $02
    nop                                           ; $6805: $00
    add e                                         ; $6806: $83
    ld bc, $0002                                  ; $6807: $01 $02 $00
    nop                                           ; $680A: $00
    add e                                         ; $680B: $83
    ld bc, $FE00                                  ; $680C: $01 $00 $FE
    nop                                           ; $680F: $00
    add e                                         ; $6810: $83
    ld bc, $00FE                                  ; $6811: $01 $FE $00
    nop                                           ; $6814: $00
    dec b                                         ; $6815: $05
    inc de                                        ; $6816: $13
    ld l, e                                       ; $6817: $6B
    ld c, d                                       ; $6818: $4A
    nop                                           ; $6819: $00
    nop                                           ; $681A: $00
    nop                                           ; $681B: $00
    ret nc                                        ; $681C: $D0

    ld b, b                                       ; $681D: $40
    ld [hl+], a                                   ; $681E: $22
    inc b                                         ; $681F: $04
    ld b, b                                       ; $6820: $40
    ld [hl+], a                                   ; $6821: $22
    inc b                                         ; $6822: $04
    ld b, b                                       ; $6823: $40
    add hl, bc                                    ; $6824: $09
    ld [de], a                                    ; $6825: $12
    ld h, $44                                     ; $6826: $26 $44
    ld h, a                                       ; $6828: $67
    ld b, d                                       ; $6829: $42
    dec d                                         ; $682A: $15
    ld de, $70D3                                  ; $682B: $11 $D3 $70
    add b                                         ; $682E: $80
    ld de, $70F1                                  ; $682F: $11 $F1 $70
    add b                                         ; $6832: $80
    nop                                           ; $6833: $00
    ld b, [hl]                                    ; $6834: $46
    ld a, [hl+]                                   ; $6835: $2A
    ld l, b                                       ; $6836: $68
    dec d                                         ; $6837: $15
    ld de, $70DD                                  ; $6838: $11 $DD $70
    ld b, b                                       ; $683B: $40
    ld de, $70FB                                  ; $683C: $11 $FB $70
    ld b, b                                       ; $683F: $40
    nop                                           ; $6840: $00
    ld b, [hl]                                    ; $6841: $46
    scf                                           ; $6842: $37
    ld l, b                                       ; $6843: $68
    dec d                                         ; $6844: $15
    ld de, $70E7                                  ; $6845: $11 $E7 $70
    ld a, [hl+]                                   ; $6848: $2A
    ld de, $7105                                  ; $6849: $11 $05 $71
    ld a, [hl+]                                   ; $684C: $2A
    nop                                           ; $684D: $00
    ld b, [hl]                                    ; $684E: $46
    ld b, h                                       ; $684F: $44
    ld l, b                                       ; $6850: $68
    ld b, d                                       ; $6851: $42
    dec b                                         ; $6852: $05
    nop                                           ; $6853: $00
    ld l, e                                       ; $6854: $6B
    ld c, d                                       ; $6855: $4A
    nop                                           ; $6856: $00
    nop                                           ; $6857: $00
    nop                                           ; $6858: $00
    ret nc                                        ; $6859: $D0

    nop                                           ; $685A: $00
    ld [hl+], a                                   ; $685B: $22
    inc b                                         ; $685C: $04
    ld b, b                                       ; $685D: $40
    ld [hl+], a                                   ; $685E: $22
    dec b                                         ; $685F: $05
    ld b, b                                       ; $6860: $40
    ld b, b                                       ; $6861: $40
    ld [$151B], sp                                ; $6862: $08 $1B $15
    inc d                                         ; $6865: $14
    ld de, $710F                                  ; $6866: $11 $0F $71
    ld b, b                                       ; $6869: $40
    jr jr_026_68C6                                ; $686A: $18 $5A

    ld h, $70                                     ; $686C: $26 $70
    ld l, b                                       ; $686E: $68
    ld b, d                                       ; $686F: $42
    add hl, bc                                    ; $6870: $09
    ld de, $1626                                  ; $6871: $11 $26 $16
    ld l, c                                       ; $6874: $69
    ld b, b                                       ; $6875: $40
    ld a, [bc]                                    ; $6876: $0A
    and [hl]                                      ; $6877: $A6
    or b                                          ; $6878: $B0
    and d                                         ; $6879: $A2
    dec bc                                        ; $687A: $0B
    ld bc, $A2B0                                  ; $687B: $01 $B0 $A2
    dec b                                         ; $687E: $05
    ld bc, $0205                                  ; $687F: $01 $05 $02
    and h                                         ; $6882: $A4
    ld h, l                                       ; $6883: $65
    ld bc, $3805                                  ; $6884: $01 $05 $38
    ret nc                                        ; $6887: $D0

    nop                                           ; $6888: $00
    ld h, $2A                                     ; $6889: $26 $2A
    ld l, b                                       ; $688B: $68
    ld h, $52                                     ; $688C: $26 $52
    ld l, b                                       ; $688E: $68
    ld b, d                                       ; $688F: $42
    dec b                                         ; $6890: $05
    nop                                           ; $6891: $00
    ld l, e                                       ; $6892: $6B
    ld c, d                                       ; $6893: $4A
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    nop                                           ; $6896: $00
    ret nc                                        ; $6897: $D0

    nop                                           ; $6898: $00
    ld [hl+], a                                   ; $6899: $22
    inc b                                         ; $689A: $04
    ld b, b                                       ; $689B: $40
    ld [hl+], a                                   ; $689C: $22
    dec b                                         ; $689D: $05
    ld b, b                                       ; $689E: $40
    ld b, b                                       ; $689F: $40
    ld [$151B], sp                                ; $68A0: $08 $1B $15
    inc d                                         ; $68A3: $14
    ld de, $710F                                  ; $68A4: $11 $0F $71
    ld b, b                                       ; $68A7: $40
    jr jr_026_6904                                ; $68A8: $18 $5A

    ld h, $AE                                     ; $68AA: $26 $AE
    ld l, b                                       ; $68AC: $68
    ld b, d                                       ; $68AD: $42
    add hl, bc                                    ; $68AE: $09
    ld de, $1626                                  ; $68AF: $11 $26 $16
    ld l, c                                       ; $68B2: $69
    ld b, b                                       ; $68B3: $40
    ld a, [bc]                                    ; $68B4: $0A
    and [hl]                                      ; $68B5: $A6
    or b                                          ; $68B6: $B0
    and d                                         ; $68B7: $A2
    dec bc                                        ; $68B8: $0B
    ld bc, $A2B0                                  ; $68B9: $01 $B0 $A2
    dec b                                         ; $68BC: $05
    ld [bc], a                                    ; $68BD: $02
    dec b                                         ; $68BE: $05
    inc bc                                        ; $68BF: $03
    and h                                         ; $68C0: $A4
    ld h, l                                       ; $68C1: $65
    ld bc, $2D04                                  ; $68C2: $01 $04 $2D
    ret nc                                        ; $68C5: $D0

jr_026_68C6:
    nop                                           ; $68C6: $00
    ld h, $37                                     ; $68C7: $26 $37
    ld l, b                                       ; $68C9: $68
    ld h, $90                                     ; $68CA: $26 $90
    ld l, b                                       ; $68CC: $68
    ld b, d                                       ; $68CD: $42
    dec b                                         ; $68CE: $05

jr_026_68CF:
    nop                                           ; $68CF: $00
    ld l, e                                       ; $68D0: $6B
    ld c, d                                       ; $68D1: $4A
    nop                                           ; $68D2: $00
    nop                                           ; $68D3: $00
    nop                                           ; $68D4: $00
    ret nc                                        ; $68D5: $D0

    nop                                           ; $68D6: $00
    ld [hl+], a                                   ; $68D7: $22
    inc b                                         ; $68D8: $04
    ld b, b                                       ; $68D9: $40
    ld [hl+], a                                   ; $68DA: $22
    dec b                                         ; $68DB: $05
    ld b, b                                       ; $68DC: $40
    ld b, b                                       ; $68DD: $40
    ld [$151B], sp                                ; $68DE: $08 $1B $15
    inc d                                         ; $68E1: $14
    ld de, $710F                                  ; $68E2: $11 $0F $71
    ld b, b                                       ; $68E5: $40
    jr jr_026_6942                                ; $68E6: $18 $5A

    ld h, $EC                                     ; $68E8: $26 $EC
    ld l, b                                       ; $68EA: $68
    ld b, d                                       ; $68EB: $42
    add hl, bc                                    ; $68EC: $09
    ld de, $1626                                  ; $68ED: $11 $26 $16
    ld l, c                                       ; $68F0: $69
    ld b, b                                       ; $68F1: $40
    ld a, [bc]                                    ; $68F2: $0A
    and [hl]                                      ; $68F3: $A6
    or b                                          ; $68F4: $B0
    and d                                         ; $68F5: $A2
    dec bc                                        ; $68F6: $0B
    ld bc, $A2B0                                  ; $68F7: $01 $B0 $A2
    dec b                                         ; $68FA: $05
    inc bc                                        ; $68FB: $03
    dec b                                         ; $68FC: $05
    inc b                                         ; $68FD: $04
    and h                                         ; $68FE: $A4
    ld h, l                                       ; $68FF: $65
    ld bc, $2203                                  ; $6900: $01 $03 $22
    ret nc                                        ; $6903: $D0

jr_026_6904:
    nop                                           ; $6904: $00
    ld h, $44                                     ; $6905: $26 $44
    ld l, b                                       ; $6907: $68
    ld h, $CE                                     ; $6908: $26 $CE
    ld l, b                                       ; $690A: $68
    ld b, d                                       ; $690B: $42
    dec d                                         ; $690C: $15
    ld de, $70B5                                  ; $690D: $11 $B5 $70
    inc c                                         ; $6910: $0C
    nop                                           ; $6911: $00
    inc de                                        ; $6912: $13
    rst $10                                       ; $6913: $D7
    ld h, l                                       ; $6914: $65
    ld b, d                                       ; $6915: $42
    inc d                                         ; $6916: $14

jr_026_6917:
    jr nz, @-$53                                  ; $6917: $20 $AB

    ld d, b                                       ; $6919: $50
    ld a, [bc]                                    ; $691A: $0A
    nop                                           ; $691B: $00
    nop                                           ; $691C: $00
    ld b, $00                                     ; $691D: $06 $00
    ld de, $0009                                  ; $691F: $11 $09 $00
    jr nz, jr_026_68CF                            ; $6922: $20 $AB

    ld d, b                                       ; $6924: $50
    rlca                                          ; $6925: $07
    nop                                           ; $6926: $00
    add c                                         ; $6927: $81
    ld e, l                                       ; $6928: $5D
    inc d                                         ; $6929: $14
    ld [hl+], a                                   ; $692A: $22
    inc b                                         ; $692B: $04
    ld b, b                                       ; $692C: $40
    ld b, d                                       ; $692D: $42
    ld [bc], a                                    ; $692E: $02
    rla                                           ; $692F: $17
    nop                                           ; $6930: $00
    ld a, [bc]                                    ; $6931: $0A
    rlca                                          ; $6932: $07
    ld b, l                                       ; $6933: $45
    dec h                                         ; $6934: $25
    ld e, h                                       ; $6935: $5C
    ld [hl], l                                    ; $6936: $75
    ld bc, $3108                                  ; $6937: $01 $08 $31
    dec b                                         ; $693A: $05
    nop                                           ; $693B: $00
    db $ED                                        ; $693C: $ED
    ld d, b                                       ; $693D: $50
    dec b                                         ; $693E: $05
    dec b                                         ; $693F: $05
    ld c, e                                       ; $6940: $4B
    ret nc                                        ; $6941: $D0

jr_026_6942:
    nop                                           ; $6942: $00
    jr nz, jr_026_697D                            ; $6943: $20 $38

    ld e, h                                       ; $6945: $5C
    ld [hl+], a                                   ; $6946: $22
    dec b                                         ; $6947: $05
    ld b, b                                       ; $6948: $40
    ld b, l                                       ; $6949: $45
    rla                                           ; $694A: $17
    or [hl]                                       ; $694B: $B6
    ld [hl], c                                    ; $694C: $71
    ld bc, $3306                                  ; $694D: $01 $06 $33
    rlca                                          ; $6950: $07
    nop                                           ; $6951: $00
    ld l, e                                       ; $6952: $6B
    ld c, d                                       ; $6953: $4A
    add hl, bc                                    ; $6954: $09
    nop                                           ; $6955: $00
    jr nz, jr_026_6917                            ; $6956: $20 $BF

    ld d, b                                       ; $6958: $50
    ld l, [hl]                                    ; $6959: $6E
    rrca                                          ; $695A: $0F
    rst $38                                       ; $695B: $FF
    ld a, a                                       ; $695C: $7F

jr_026_695D:
    halt                                          ; $695D: $76
    jr nz, @+$11                                  ; $695E: $20 $0F

    ld b, l                                       ; $6960: $45
    dec d                                         ; $6961: $15
    ld [hl], $6C                                  ; $6962: $36 $6C
    ld b, e                                       ; $6964: $43
    rrca                                          ; $6965: $0F
    inc b                                         ; $6966: $04
    dec b                                         ; $6967: $05
    dec d                                         ; $6968: $15
    ld h, $96                                     ; $6969: $26 $96
    ld l, c                                       ; $696B: $69
    ld b, e                                       ; $696C: $43
    ld [$040F], sp                                ; $696D: $08 $0F $04
    dec b                                         ; $6970: $05
    jr jr_026_697D                                ; $6971: $18 $0A

    nop                                           ; $6973: $00
    xor l                                         ; $6974: $AD
    and c                                         ; $6975: $A1
    ld bc, $B026                                  ; $6976: $01 $26 $B0
    ld [hl], h                                    ; $6979: $74
    sbc e                                         ; $697A: $9B
    ld a, b                                       ; $697B: $78
    ld [hl], b                                    ; $697C: $70

jr_026_697D:
    sbc a                                         ; $697D: $9F
    ld c, b                                       ; $697E: $48

Call_026_697F:
    ld l, l                                       ; $697F: $6D
    ld l, l                                       ; $6980: $6D
    ld l, $2E                                     ; $6981: $2E $2E
    jr nz, @+$4B                                  ; $6983: $20 $49

    ld [hl], h                                    ; $6985: $74
    rst $38                                       ; $6986: $FF
    ld [hl], a                                    ; $6987: $77
    ld l, a                                       ; $6988: $6F
    ld l, [hl]                                    ; $6989: $6E
    daa                                           ; $698A: $27
    ld [hl], h                                    ; $698B: $74
    jr nz, jr_026_69FD                            ; $698C: $20 $6F

    ld [hl], b                                    ; $698E: $70
    ld h, l                                       ; $698F: $65
    ld l, [hl]                                    ; $6990: $6E
    ld l, $FE                                     ; $6991: $2E $FE
    db $FD                                        ; $6993: $FD
    sbc d                                         ; $6994: $9A
    ld b, d                                       ; $6995: $42
    rlca                                          ; $6996: $07
    nop                                           ; $6997: $00

jr_026_6998:
    ld l, e                                       ; $6998: $6B
    ld c, d                                       ; $6999: $4A
    add hl, bc                                    ; $699A: $09
    nop                                           ; $699B: $00
    jr nz, jr_026_695D                            ; $699C: $20 $BF

    ld d, b                                       ; $699E: $50
    sbc e                                         ; $699F: $9B
    ld a, b                                       ; $69A0: $78
    ld [hl], b                                    ; $69A1: $70
    sbc a                                         ; $69A2: $9F
    ld d, a                                       ; $69A3: $57
    ld h, l                                       ; $69A4: $65
    ld l, h                                       ; $69A5: $6C
    ld l, h                                       ; $69A6: $6C
    inc l                                         ; $69A7: $2C
    jr nz, jr_026_6A1E                            ; $69A8: $20 $74

    ld l, b                                       ; $69AA: $68
    ld l, c                                       ; $69AB: $69
    ld [hl], e                                    ; $69AC: $73
    jr nz, @+$6B                                  ; $69AD: $20 $69

    ld [hl], e                                    ; $69AF: $73
    rst $38                                       ; $69B0: $FF
    ld l, c                                       ; $69B1: $69
    ld [hl], h                                    ; $69B2: $74
    ld l, $2E                                     ; $69B3: $2E $2E
    ld l, $FE                                     ; $69B5: $2E $FE
    ld c, c                                       ; $69B7: $49
    daa                                           ; $69B8: $27
    ld l, l                                       ; $69B9: $6D
    jr nz, @+$69                                  ; $69BA: $20 $67

    ld l, a                                       ; $69BC: $6F
    ld l, c                                       ; $69BD: $69
    ld l, [hl]                                    ; $69BE: $6E
    ld h, a                                       ; $69BF: $67
    jr nz, jr_026_6A2A                            ; $69C0: $20 $68

    ld l, a                                       ; $69C2: $6F
    ld l, l                                       ; $69C3: $6D
    ld h, l                                       ; $69C4: $65
    ld l, $FE                                     ; $69C5: $2E $FE
    db $FD                                        ; $69C7: $FD
    sbc d                                         ; $69C8: $9A
    ld b, b                                       ; $69C9: $40
    ld h, b                                       ; $69CA: $60
    add hl, bc                                    ; $69CB: $09
    nop                                           ; $69CC: $00
    jr nz, jr_026_6998                            ; $69CD: $20 $C9

    ld d, b                                       ; $69CF: $50
    sbc e                                         ; $69D0: $9B
    ld a, b                                       ; $69D1: $78
    ld [hl], b                                    ; $69D2: $70
    sbc a                                         ; $69D3: $9F
    ld d, a                                       ; $69D4: $57
    ld l, b                                       ; $69D5: $68
    ld a, c                                       ; $69D6: $79
    jr nz, @+$63                                  ; $69D7: $20 $61

    ld l, l                                       ; $69D9: $6D
    jr nz, jr_026_6A25                            ; $69DA: $20 $49

    jr nz, jr_026_6A51                            ; $69DC: $20 $73

jr_026_69DE:
    ld l, a                                       ; $69DE: $6F
    rst $38                                       ; $69DF: $FF
    ld h, d                                       ; $69E0: $62
    ld [hl], l                                    ; $69E1: $75
    ld l, l                                       ; $69E2: $6D
    ld l, l                                       ; $69E3: $6D
    ld h, l                                       ; $69E4: $65
    ld h, h                                       ; $69E5: $64
    jr nz, jr_026_6A57                            ; $69E6: $20 $6F

    ld [hl], l                                    ; $69E8: $75
    ld [hl], h                                    ; $69E9: $74
    cp $61                                        ; $69EA: $FE $61
    ld h, d                                       ; $69EC: $62
    ld l, a                                       ; $69ED: $6F
    ld [hl], l                                    ; $69EE: $75
    ld [hl], h                                    ; $69EF: $74
    jr nz, @+$76                                  ; $69F0: $20 $74

    ld l, b                                       ; $69F2: $68
    ld l, c                                       ; $69F3: $69
    ld [hl], e                                    ; $69F4: $73
    ccf                                           ; $69F5: $3F
    cp $54                                        ; $69F6: $FE $54
    ld l, b                                       ; $69F8: $68
    ld l, c                                       ; $69F9: $69
    ld [hl], e                                    ; $69FA: $73
    jr nz, @+$6B                                  ; $69FB: $20 $69

jr_026_69FD:
    ld [hl], e                                    ; $69FD: $73
    jr nz, @+$79                                  ; $69FE: $20 $77

    ld l, b                                       ; $6A00: $68
    ld h, c                                       ; $6A01: $61
    ld [hl], h                                    ; $6A02: $74
    rst $38                                       ; $6A03: $FF
    ld c, c                                       ; $6A04: $49
    jr nz, jr_026_6A7E                            ; $6A05: $20 $77

    ld h, c                                       ; $6A07: $61
    ld l, [hl]                                    ; $6A08: $6E
    ld [hl], h                                    ; $6A09: $74
    ld h, l                                       ; $6A0A: $65
    ld h, h                                       ; $6A0B: $64
    jr nz, jr_026_6A6F                            ; $6A0C: $20 $61

    ld l, h                                       ; $6A0E: $6C
    ld l, h                                       ; $6A0F: $6C
    cp $61                                        ; $6A10: $FE $61
    ld l, h                                       ; $6A12: $6C
    ld l, a                                       ; $6A13: $6F
    ld l, [hl]                                    ; $6A14: $6E
    ld h, a                                       ; $6A15: $67
    inc l                                         ; $6A16: $2C
    jr nz, jr_026_6A90                            ; $6A17: $20 $77

    ld h, c                                       ; $6A19: $61
    ld [hl], e                                    ; $6A1A: $73
    ld l, [hl]                                    ; $6A1B: $6E
    daa                                           ; $6A1C: $27
    ld [hl], h                                    ; $6A1D: $74

jr_026_6A1E:
    rst $38                                       ; $6A1E: $FF
    ld l, c                                       ; $6A1F: $69
    ld [hl], h                                    ; $6A20: $74
    ccf                                           ; $6A21: $3F
    cp $FD                                        ; $6A22: $FE $FD
    sbc d                                         ; $6A24: $9A

jr_026_6A25:
    add hl, bc                                    ; $6A25: $09
    nop                                           ; $6A26: $00
    jr nz, jr_026_69DE                            ; $6A27: $20 $B5

    ld d, b                                       ; $6A29: $50

jr_026_6A2A:
    sbc e                                         ; $6A2A: $9B
    ld a, b                                       ; $6A2B: $78
    ld [hl], b                                    ; $6A2C: $70
    sbc a                                         ; $6A2D: $9F

jr_026_6A2E:
    ld d, e                                       ; $6A2E: $53
    ld [hl], l                                    ; $6A2F: $75
    ld [hl], d                                    ; $6A30: $72
    ld h, l                                       ; $6A31: $65
    inc l                                         ; $6A32: $2C
    jr nz, jr_026_6AA2                            ; $6A33: $20 $6D

    ld h, c                                       ; $6A35: $61
    ld a, c                                       ; $6A36: $79
    ld h, d                                       ; $6A37: $62
    ld h, l                                       ; $6A38: $65
    jr nz, jr_026_6AA4                            ; $6A39: $20 $69

    ld [hl], h                                    ; $6A3B: $74
    rst $38                                       ; $6A3C: $FF
    ld [hl], a                                    ; $6A3D: $77
    ld h, c                                       ; $6A3E: $61
    ld [hl], e                                    ; $6A3F: $73
    jr nz, jr_026_6AA8                            ; $6A40: $20 $66

    ld [hl], l                                    ; $6A42: $75
    ld l, [hl]                                    ; $6A43: $6E
    jr nz, @+$72                                  ; $6A44: $20 $70

    ld l, h                                       ; $6A46: $6C
    ld h, c                                       ; $6A47: $61
    ld a, c                                       ; $6A48: $79
    ld l, c                                       ; $6A49: $69
    ld l, [hl]                                    ; $6A4A: $6E
    ld h, a                                       ; $6A4B: $67
    cp $68                                        ; $6A4C: $FE $68
    ld h, l                                       ; $6A4E: $65
    ld [hl], d                                    ; $6A4F: $72
    ld l, a                                       ; $6A50: $6F

jr_026_6A51:
    jr nz, jr_026_6AB4                            ; $6A51: $20 $61

    ld l, [hl]                                    ; $6A53: $6E
    ld h, h                                       ; $6A54: $64
    jr nz, jr_026_6AB8                            ; $6A55: $20 $61

jr_026_6A57:
    ld l, h                                       ; $6A57: $6C
    ld l, h                                       ; $6A58: $6C
    rst $38                                       ; $6A59: $FF
    ld [hl], h                                    ; $6A5A: $74
    ld l, b                                       ; $6A5B: $68
    ld h, c                                       ; $6A5C: $61
    ld [hl], h                                    ; $6A5D: $74
    inc l                                         ; $6A5E: $2C
    jr nz, jr_026_6AC3                            ; $6A5F: $20 $62

    ld [hl], l                                    ; $6A61: $75
    ld [hl], h                                    ; $6A62: $74
    ld l, $2E                                     ; $6A63: $2E $2E
    ld l, $FE                                     ; $6A65: $2E $FE
    db $FD                                        ; $6A67: $FD
    sbc d                                         ; $6A68: $9A
    ld b, b                                       ; $6A69: $40
    ld h, b                                       ; $6A6A: $60
    add hl, bc                                    ; $6A6B: $09
    nop                                           ; $6A6C: $00
    jr nz, jr_026_6A2E                            ; $6A6D: $20 $BF

jr_026_6A6F:
    ld d, b                                       ; $6A6F: $50
    sbc e                                         ; $6A70: $9B
    ld a, b                                       ; $6A71: $78
    ld [hl], b                                    ; $6A72: $70
    sbc a                                         ; $6A73: $9F
    ld l, $2E                                     ; $6A74: $2E $2E
    ld l, $69                                     ; $6A76: $2E $69
    ld [hl], h                                    ; $6A78: $74
    daa                                           ; $6A79: $27
    ld [hl], e                                    ; $6A7A: $73
    jr nz, jr_026_6ADF                            ; $6A7B: $20 $62

    ld h, l                                       ; $6A7D: $65

jr_026_6A7E:
    ld [hl], h                                    ; $6A7E: $74
    ld [hl], h                                    ; $6A7F: $74
    ld h, l                                       ; $6A80: $65
    ld [hl], d                                    ; $6A81: $72
    rst $38                                       ; $6A82: $FF
    ld l, c                                       ; $6A83: $69
    ld h, [hl]                                    ; $6A84: $66
    jr nz, jr_026_6AD0                            ; $6A85: $20 $49

    jr nz, jr_026_6AF5                            ; $6A87: $20 $6C

    ld h, l                                       ; $6A89: $65
    ld h, c                                       ; $6A8A: $61
    halt                                          ; $6A8B: $76
    ld h, l                                       ; $6A8C: $65
    ld l, $FE                                     ; $6A8D: $2E $FE
    ld b, c                                       ; $6A8F: $41

jr_026_6A90:
    ld h, [hl]                                    ; $6A90: $66
    ld [hl], h                                    ; $6A91: $74
    ld h, l                                       ; $6A92: $65
    ld [hl], d                                    ; $6A93: $72
    jr nz, jr_026_6AF7                            ; $6A94: $20 $61

    ld l, h                                       ; $6A96: $6C
    ld l, h                                       ; $6A97: $6C
    inc l                                         ; $6A98: $2C
    jr nz, jr_026_6AE2                            ; $6A99: $20 $47

    ld l, c                                       ; $6A9B: $69
    ld h, c                                       ; $6A9C: $61
    rst $38                                       ; $6A9D: $FF
    ld [hl], e                                    ; $6A9E: $73
    ld h, c                                       ; $6A9F: $61
    ld l, c                                       ; $6AA0: $69
    ld h, h                                       ; $6AA1: $64

jr_026_6AA2:
    jr nz, jr_026_6AED                            ; $6AA2: $20 $49

jr_026_6AA4:
    jr nz, jr_026_6B1D                            ; $6AA4: $20 $77

    ld h, c                                       ; $6AA6: $61
    ld [hl], e                                    ; $6AA7: $73

jr_026_6AA8:
    jr nz, jr_026_6B1E                            ; $6AA8: $20 $74

    ld l, b                                       ; $6AAA: $68
    ld h, l                                       ; $6AAB: $65
    cp $63                                        ; $6AAC: $FE $63
    ld h, c                                       ; $6AAE: $61
    ld [hl], l                                    ; $6AAF: $75
    ld [hl], e                                    ; $6AB0: $73
    ld h, l                                       ; $6AB1: $65
    jr nz, @+$71                                  ; $6AB2: $20 $6F

jr_026_6AB4:
    ld h, [hl]                                    ; $6AB4: $66
    jr nz, jr_026_6B18                            ; $6AB5: $20 $61

    ld l, h                                       ; $6AB7: $6C

jr_026_6AB8:
    ld l, h                                       ; $6AB8: $6C
    rst $38                                       ; $6AB9: $FF
    ld [hl], h                                    ; $6ABA: $74
    ld l, b                                       ; $6ABB: $68
    ld l, a                                       ; $6ABC: $6F
    ld [hl], e                                    ; $6ABD: $73
    ld h, l                                       ; $6ABE: $65
    jr nz, jr_026_6B31                            ; $6ABF: $20 $70

    ld [hl], d                                    ; $6AC1: $72
    ld l, a                                       ; $6AC2: $6F

jr_026_6AC3:
    ld h, d                                       ; $6AC3: $62
    ld l, h                                       ; $6AC4: $6C
    ld h, l                                       ; $6AC5: $65
    ld l, l                                       ; $6AC6: $6D
    ld [hl], e                                    ; $6AC7: $73
    ld l, $FE                                     ; $6AC8: $2E $FE
    ld l, $2E                                     ; $6ACA: $2E $2E
    ld l, $2E                                     ; $6ACC: $2E $2E
    ld l, $2E                                     ; $6ACE: $2E $2E

jr_026_6AD0:
    ld l, $2E                                     ; $6AD0: $2E $2E
    ld l, $FE                                     ; $6AD2: $2E $FE
    ld c, c                                       ; $6AD4: $49
    ld [hl], h                                    ; $6AD5: $74
    daa                                           ; $6AD6: $27
    ld [hl], e                                    ; $6AD7: $73
    jr nz, jr_026_6B4E                            ; $6AD8: $20 $74

    ld l, b                                       ; $6ADA: $68
    ld h, l                                       ; $6ADB: $65
    rst $38                                       ; $6ADC: $FF
    ld [hl], d                                    ; $6ADD: $72
    ld l, c                                       ; $6ADE: $69

jr_026_6ADF:
    ld h, a                                       ; $6ADF: $67
    ld l, b                                       ; $6AE0: $68
    ld [hl], h                                    ; $6AE1: $74

jr_026_6AE2:
    jr nz, @+$76                                  ; $6AE2: $20 $74

    ld l, b                                       ; $6AE4: $68
    ld l, c                                       ; $6AE5: $69
    ld l, [hl]                                    ; $6AE6: $6E
    ld h, a                                       ; $6AE7: $67
    cp $74                                        ; $6AE8: $FE $74
    ld l, a                                       ; $6AEA: $6F
    jr nz, jr_026_6B51                            ; $6AEB: $20 $64

jr_026_6AED:
    ld l, a                                       ; $6AED: $6F
    ld l, $FE                                     ; $6AEE: $2E $FE
    db $FD                                        ; $6AF0: $FD
    sbc d                                         ; $6AF1: $9A
    sbc e                                         ; $6AF2: $9B
    ld a, b                                       ; $6AF3: $78
    ld [hl], b                                    ; $6AF4: $70

jr_026_6AF5:
    sbc a                                         ; $6AF5: $9F
    ld c, h                                       ; $6AF6: $4C

jr_026_6AF7:
    ld h, l                                       ; $6AF7: $65
    ld [hl], h                                    ; $6AF8: $74
    daa                                           ; $6AF9: $27
    ld [hl], e                                    ; $6AFA: $73
    jr nz, jr_026_6B70                            ; $6AFB: $20 $73

    ld h, l                                       ; $6AFD: $65
    ld h, l                                       ; $6AFE: $65
    ld l, $2E                                     ; $6AFF: $2E $2E
    ld l, $20                                     ; $6B01: $2E $20
    ld l, c                                       ; $6B03: $69
    ld h, [hl]                                    ; $6B04: $66
    cp $49                                        ; $6B05: $FE $49
    jr nz, jr_026_6B73                            ; $6B07: $20 $6A

    ld [hl], l                                    ; $6B09: $75
    ld [hl], e                                    ; $6B0A: $73
    ld [hl], h                                    ; $6B0B: $74
    jr nz, @+$72                                  ; $6B0C: $20 $70

    ld [hl], l                                    ; $6B0E: $75
    ld [hl], h                                    ; $6B0F: $74
    jr nz, jr_026_6B86                            ; $6B10: $20 $74

    ld l, b                                       ; $6B12: $68
    ld h, l                                       ; $6B13: $65
    rst $38                                       ; $6B14: $FF
    ld b, a                                       ; $6B15: $47
    ld l, h                                       ; $6B16: $6C
    ld a, c                                       ; $6B17: $79

jr_026_6B18:
    ld [hl], b                                    ; $6B18: $70
    ld l, b                                       ; $6B19: $68
    jr nz, jr_026_6B90                            ; $6B1A: $20 $74

    ld l, b                                       ; $6B1C: $68

jr_026_6B1D:
    ld h, l                                       ; $6B1D: $65

jr_026_6B1E:
    ld [hl], d                                    ; $6B1E: $72
    ld h, l                                       ; $6B1F: $65
    ld l, $2E                                     ; $6B20: $2E $2E
    ld l, $FE                                     ; $6B22: $2E $FE
    ld [hl], e                                    ; $6B24: $73
    ld l, a                                       ; $6B25: $6F
    ld l, l                                       ; $6B26: $6D
    ld h, l                                       ; $6B27: $65
    ld [hl], h                                    ; $6B28: $74
    ld l, b                                       ; $6B29: $68
    ld l, c                                       ; $6B2A: $69
    ld l, [hl]                                    ; $6B2B: $6E
    ld h, a                                       ; $6B2C: $67
    rst $38                                       ; $6B2D: $FF
    ld [hl], e                                    ; $6B2E: $73
    ld l, b                                       ; $6B2F: $68
    ld l, a                                       ; $6B30: $6F

jr_026_6B31:
    ld [hl], l                                    ; $6B31: $75
    ld l, h                                       ; $6B32: $6C
    ld h, h                                       ; $6B33: $64
    jr nz, jr_026_6B9E                            ; $6B34: $20 $68

    ld h, c                                       ; $6B36: $61
    ld [hl], b                                    ; $6B37: $70
    ld [hl], b                                    ; $6B38: $70
    ld h, l                                       ; $6B39: $65
    ld l, [hl]                                    ; $6B3A: $6E
    ld l, $FE                                     ; $6B3B: $2E $FE
    db $FD                                        ; $6B3D: $FD
    sbc d                                         ; $6B3E: $9A
    ld b, l                                       ; $6B3F: $45
    ld h, $01                                     ; $6B40: $26 $01
    ld [hl], h                                    ; $6B42: $74
    sbc e                                         ; $6B43: $9B
    xor c                                         ; $6B44: $A9
    ld c, a                                       ; $6B45: $4F
    sbc a                                         ; $6B46: $9F
    ld b, [hl]                                    ; $6B47: $46
    ld c, c                                       ; $6B48: $49
    ld c, [hl]                                    ; $6B49: $4E
    ld b, c                                       ; $6B4A: $41
    ld c, h                                       ; $6B4B: $4C
    ld c, h                                       ; $6B4C: $4C
    ld e, c                                       ; $6B4D: $59

jr_026_6B4E:
    ld hl, $46FF                                  ; $6B4E: $21 $FF $46

jr_026_6B51:
    ld l, c                                       ; $6B51: $69
    ld l, [hl]                                    ; $6B52: $6E
    ld h, c                                       ; $6B53: $61
    ld l, h                                       ; $6B54: $6C
    ld l, h                                       ; $6B55: $6C
    ld a, c                                       ; $6B56: $79
    jr nz, jr_026_6BA2                            ; $6B57: $20 $49

    jr nz, jr_026_6BBC                            ; $6B59: $20 $61

    ld l, l                                       ; $6B5B: $6D
    cp $72                                        ; $6B5C: $FE $72
    ld l, c                                       ; $6B5E: $69
    ld h, h                                       ; $6B5F: $64
    jr nz, jr_026_6BD1                            ; $6B60: $20 $6F

    ld h, [hl]                                    ; $6B62: $66
    jr nz, jr_026_6BD9                            ; $6B63: $20 $74

    ld l, b                                       ; $6B65: $68
    ld h, c                                       ; $6B66: $61
    ld [hl], h                                    ; $6B67: $74
    rst $38                                       ; $6B68: $FF
    ld l, c                                       ; $6B69: $69
    ld l, [hl]                                    ; $6B6A: $6E
    ld h, e                                       ; $6B6B: $63
    ld l, a                                       ; $6B6C: $6F
    ld l, l                                       ; $6B6D: $6D
    ld [hl], b                                    ; $6B6E: $70
    ld h, c                                       ; $6B6F: $61

jr_026_6B70:
    ld [hl], d                                    ; $6B70: $72
    ld h, c                                       ; $6B71: $61
    ld h, d                                       ; $6B72: $62

jr_026_6B73:
    ld l, h                                       ; $6B73: $6C
    ld h, l                                       ; $6B74: $65
    cp $63                                        ; $6B75: $FE $63
    ld [hl], d                                    ; $6B77: $72
    ld h, l                                       ; $6B78: $65
    ld [hl], h                                    ; $6B79: $74
    ld l, c                                       ; $6B7A: $69
    ld l, [hl]                                    ; $6B7B: $6E
    ld hl, $4E20                                  ; $6B7C: $21 $20 $4E
    ld l, a                                       ; $6B7F: $6F
    jr nz, jr_026_6BEF                            ; $6B80: $20 $6D

    ld l, a                                       ; $6B82: $6F
    ld [hl], d                                    ; $6B83: $72
    ld h, l                                       ; $6B84: $65
    rst $38                                       ; $6B85: $FF

jr_026_6B86:
    ld l, l                                       ; $6B86: $6D
    ld h, l                                       ; $6B87: $65
    ld [hl], e                                    ; $6B88: $73
    ld [hl], e                                    ; $6B89: $73
    ld l, c                                       ; $6B8A: $69
    ld l, [hl]                                    ; $6B8B: $6E
    ld h, a                                       ; $6B8C: $67
    jr nz, jr_026_6C06                            ; $6B8D: $20 $77

    ld l, c                                       ; $6B8F: $69

jr_026_6B90:
    ld [hl], h                                    ; $6B90: $74
    ld l, b                                       ; $6B91: $68
    jr nz, jr_026_6C01                            ; $6B92: $20 $6D

    ld a, c                                       ; $6B94: $79
    cp $63                                        ; $6B95: $FE $63
    ld h, c                                       ; $6B97: $61
    ld [hl], d                                    ; $6B98: $72
    ld h, l                                       ; $6B99: $65
    ld h, [hl]                                    ; $6B9A: $66
    ld [hl], l                                    ; $6B9B: $75
    ld l, h                                       ; $6B9C: $6C
    ld l, h                                       ; $6B9D: $6C

jr_026_6B9E:
    ld a, c                                       ; $6B9E: $79
    dec l                                         ; $6B9F: $2D
    ld l, h                                       ; $6BA0: $6C
    ld h, c                                       ; $6BA1: $61

jr_026_6BA2:
    ld l, c                                       ; $6BA2: $69
    ld h, h                                       ; $6BA3: $64
    rst $38                                       ; $6BA4: $FF
    ld [hl], b                                    ; $6BA5: $70
    ld l, h                                       ; $6BA6: $6C
    ld h, c                                       ; $6BA7: $61
    ld l, [hl]                                    ; $6BA8: $6E
    ld [hl], e                                    ; $6BA9: $73
    ld hl, $4E20                                  ; $6BAA: $21 $20 $4E
    ld l, a                                       ; $6BAD: $6F
    jr nz, jr_026_6C1D                            ; $6BAE: $20 $6D

    ld l, a                                       ; $6BB0: $6F
    ld [hl], d                                    ; $6BB1: $72
    ld h, l                                       ; $6BB2: $65
    cp $6F                                        ; $6BB3: $FE $6F
    ld h, [hl]                                    ; $6BB5: $66
    jr nz, jr_026_6C2C                            ; $6BB6: $20 $74

    ld l, b                                       ; $6BB8: $68
    ld h, c                                       ; $6BB9: $61
    ld [hl], h                                    ; $6BBA: $74
    rst $38                                       ; $6BBB: $FF

jr_026_6BBC:
    ld h, a                                       ; $6BBC: $67
    ld l, c                                       ; $6BBD: $69
    ld h, a                                       ; $6BBE: $67
    ld h, c                                       ; $6BBF: $61
    ld l, [hl]                                    ; $6BC0: $6E
    ld [hl], h                                    ; $6BC1: $74
    ld l, c                                       ; $6BC2: $69
    ld h, e                                       ; $6BC3: $63
    jr nz, jr_026_6C2B                            ; $6BC4: $20 $65

    ld h, a                                       ; $6BC6: $67
    ld l, a                                       ; $6BC7: $6F
    ld hl, $41FE                                  ; $6BC8: $21 $FE $41
    ld l, [hl]                                    ; $6BCB: $6E
    ld h, h                                       ; $6BCC: $64
    jr nz, jr_026_6C3C                            ; $6BCD: $20 $6D

    ld l, a                                       ; $6BCF: $6F
    ld [hl], e                                    ; $6BD0: $73

jr_026_6BD1:
    ld [hl], h                                    ; $6BD1: $74
    jr nz, jr_026_6C43                            ; $6BD2: $20 $6F

    ld h, [hl]                                    ; $6BD4: $66
    rst $38                                       ; $6BD5: $FF
    ld h, c                                       ; $6BD6: $61
    ld l, h                                       ; $6BD7: $6C
    ld l, h                                       ; $6BD8: $6C

jr_026_6BD9:
    inc l                                         ; $6BD9: $2C
    jr nz, jr_026_6C4A                            ; $6BDA: $20 $6E

    ld l, a                                       ; $6BDC: $6F
    jr nz, @+$6F                                  ; $6BDD: $20 $6D

    ld l, a                                       ; $6BDF: $6F
    ld [hl], d                                    ; $6BE0: $72
    ld h, l                                       ; $6BE1: $65
    cp $27                                        ; $6BE2: $FE $27
    ld d, e                                       ; $6BE4: $53
    ld l, b                                       ; $6BE5: $68
    ld h, c                                       ; $6BE6: $61
    ld h, h                                       ; $6BE7: $64
    ld h, h                                       ; $6BE8: $64
    ld [hl], l                                    ; $6BE9: $75
    ld [hl], b                                    ; $6BEA: $70
    jr nz, @+$5C                                  ; $6BEB: $20 $5A

    ld h, l                                       ; $6BED: $65
    ld [hl], h                                    ; $6BEE: $74

jr_026_6BEF:
    ld hl, $FE27                                  ; $6BEF: $21 $27 $FE
    ld c, b                                       ; $6BF2: $48
    ld b, c                                       ; $6BF3: $41
    jr nz, jr_026_6C3E                            ; $6BF4: $20 $48

    ld b, c                                       ; $6BF6: $41
    jr nz, jr_026_6C41                            ; $6BF7: $20 $48

    ld b, c                                       ; $6BF9: $41
    ld hl, $5720                                  ; $6BFA: $21 $20 $57
    ld c, b                                       ; $6BFD: $48
    ld c, a                                       ; $6BFE: $4F
    daa                                           ; $6BFF: $27
    ld d, e                                       ; $6C00: $53

jr_026_6C01:
    rst $38                                       ; $6C01: $FF
    ld c, c                                       ; $6C02: $49
    ld c, [hl]                                    ; $6C03: $4E
    jr nz, jr_026_6C49                            ; $6C04: $20 $43

jr_026_6C06:
    ld c, b                                       ; $6C06: $48
    ld b, c                                       ; $6C07: $41
    ld d, d                                       ; $6C08: $52
    ld b, a                                       ; $6C09: $47
    ld b, l                                       ; $6C0A: $45
    jr nz, jr_026_6C5B                            ; $6C0B: $20 $4E

    ld c, a                                       ; $6C0D: $4F
    ld d, a                                       ; $6C0E: $57
    inc l                                         ; $6C0F: $2C
    cp $59                                        ; $6C10: $FE $59
    ld c, a                                       ; $6C12: $4F
    ld d, l                                       ; $6C13: $55
    jr nz, jr_026_6C57                            ; $6C14: $20 $41

    ld c, [hl]                                    ; $6C16: $4E
    ld c, [hl]                                    ; $6C17: $4E
    ld c, a                                       ; $6C18: $4F
    ld e, c                                       ; $6C19: $59
    ld c, c                                       ; $6C1A: $49
    ld c, [hl]                                    ; $6C1B: $4E
    ld b, a                                       ; $6C1C: $47

jr_026_6C1D:
    rst $38                                       ; $6C1D: $FF
    ld c, c                                       ; $6C1E: $49
    ld c, l                                       ; $6C1F: $4D
    ld b, d                                       ; $6C20: $42
    ld b, l                                       ; $6C21: $45
    ld b, e                                       ; $6C22: $43
    ld c, c                                       ; $6C23: $49
    ld c, h                                       ; $6C24: $4C
    ld b, l                                       ; $6C25: $45
    ccf                                           ; $6C26: $3F
    ld hl, $FE21                                  ; $6C27: $21 $21 $FE
    db $FD                                        ; $6C2A: $FD

jr_026_6C2B:
    sbc d                                         ; $6C2B: $9A

jr_026_6C2C:
    ld e, b                                       ; $6C2C: $58
    inc bc                                        ; $6C2D: $03
    ld b, d                                       ; $6C2E: $42
    sbc e                                         ; $6C2F: $9B
    ld c, b                                       ; $6C30: $48
    ld b, [hl]                                    ; $6C31: $46
    sbc a                                         ; $6C32: $9F
    ld d, h                                       ; $6C33: $54
    ld l, a                                       ; $6C34: $6F
    ld l, [hl]                                    ; $6C35: $6E
    ld a, c                                       ; $6C36: $79
    ld hl, $4120                                  ; $6C37: $21 $20 $41
    ld [hl], d                                    ; $6C3A: $72
    ld h, l                                       ; $6C3B: $65

jr_026_6C3C:
    jr nz, @+$7B                                  ; $6C3C: $20 $79

jr_026_6C3E:
    ld l, a                                       ; $6C3E: $6F
    ld [hl], l                                    ; $6C3F: $75
    rst $38                                       ; $6C40: $FF

jr_026_6C41:
    ld l, a                                       ; $6C41: $6F
    ld l, e                                       ; $6C42: $6B

jr_026_6C43:
    ld h, c                                       ; $6C43: $61
    ld a, c                                       ; $6C44: $79
    ccf                                           ; $6C45: $3F
    jr nz, jr_026_6C9C                            ; $6C46: $20 $54

    ld h, c                                       ; $6C48: $61

jr_026_6C49:
    ld l, e                                       ; $6C49: $6B

jr_026_6C4A:
    ld h, l                                       ; $6C4A: $65
    jr nz, jr_026_6CC1                            ; $6C4B: $20 $74

    ld l, b                                       ; $6C4D: $68
    ld l, c                                       ; $6C4E: $69
    ld [hl], e                                    ; $6C4F: $73
    cp $74                                        ; $6C50: $FE $74
    ld l, a                                       ; $6C52: $6F
    jr nz, jr_026_6CC7                            ; $6C53: $20 $72

    ld h, l                                       ; $6C55: $65
    ld [hl], e                                    ; $6C56: $73

jr_026_6C57:
    ld [hl], h                                    ; $6C57: $74
    ld l, a                                       ; $6C58: $6F
    ld [hl], d                                    ; $6C59: $72
    ld h, l                                       ; $6C5A: $65

jr_026_6C5B:
    jr nz, jr_026_6CD6                            ; $6C5B: $20 $79

    ld l, a                                       ; $6C5D: $6F
    ld [hl], l                                    ; $6C5E: $75
    ld [hl], d                                    ; $6C5F: $72
    rst $38                                       ; $6C60: $FF
    ld [hl], e                                    ; $6C61: $73
    ld [hl], h                                    ; $6C62: $74
    ld [hl], d                                    ; $6C63: $72
    ld h, l                                       ; $6C64: $65
    ld l, [hl]                                    ; $6C65: $6E
    ld h, a                                       ; $6C66: $67
    ld [hl], h                                    ; $6C67: $74
    ld l, b                                       ; $6C68: $68
    ld hl, $FDFE                                  ; $6C69: $21 $FE $FD
    sbc d                                         ; $6C6C: $9A
    ld e, b                                       ; $6C6D: $58
    inc b                                         ; $6C6E: $04
    ld b, d                                       ; $6C6F: $42
    sbc e                                         ; $6C70: $9B
    xor c                                         ; $6C71: $A9
    ld c, a                                       ; $6C72: $4F
    sbc a                                         ; $6C73: $9F
    ld c, [hl]                                    ; $6C74: $4E
    ld l, a                                       ; $6C75: $6F
    ld [hl], a                                    ; $6C76: $77
    inc l                                         ; $6C77: $2C
    jr nz, @+$4B                                  ; $6C78: $20 $49

    jr nz, jr_026_6CDF                            ; $6C7A: $20 $63

    ld h, c                                       ; $6C7C: $61
    ld l, [hl]                                    ; $6C7D: $6E
    jr nz, jr_026_6CE7                            ; $6C7E: $20 $67

    ld h, l                                       ; $6C80: $65
    ld [hl], h                                    ; $6C81: $74
    rst $38                                       ; $6C82: $FF
    ld [hl], h                                    ; $6C83: $74
    ld l, b                                       ; $6C84: $68
    ld h, l                                       ; $6C85: $65
    cp $61                                        ; $6C86: $FE $61
    ld [hl], b                                    ; $6C88: $70
    ld [hl], b                                    ; $6C89: $70
    ld [hl], d                                    ; $6C8A: $72
    ld h, l                                       ; $6C8B: $65
    ld h, e                                       ; $6C8C: $63
    ld l, c                                       ; $6C8D: $69
    ld h, c                                       ; $6C8E: $61
    ld [hl], h                                    ; $6C8F: $74
    ld l, c                                       ; $6C90: $69
    ld l, a                                       ; $6C91: $6F
    ld l, [hl]                                    ; $6C92: $6E
    jr nz, jr_026_6CDE                            ; $6C93: $20 $49

    rst $38                                       ; $6C95: $FF
    ld h, h                                       ; $6C96: $64
    ld h, l                                       ; $6C97: $65
    ld [hl], e                                    ; $6C98: $73
    ld h, l                                       ; $6C99: $65
    ld [hl], d                                    ; $6C9A: $72
    halt                                          ; $6C9B: $76

jr_026_6C9C:
    ld h, l                                       ; $6C9C: $65
    jr nz, jr_026_6D05                            ; $6C9D: $20 $66

    ld [hl], d                                    ; $6C9F: $72
    ld l, a                                       ; $6CA0: $6F
    ld l, l                                       ; $6CA1: $6D
    cp $4D                                        ; $6CA2: $FE $4D
    ld l, a                                       ; $6CA4: $6F
    ld [hl], d                                    ; $6CA5: $72
    ld h, c                                       ; $6CA6: $61
    ld h, a                                       ; $6CA7: $67
    ld l, $20                                     ; $6CA8: $2E $20
    ld c, b                                       ; $6CAA: $48
    ld h, l                                       ; $6CAB: $65
    daa                                           ; $6CAC: $27
    ld l, h                                       ; $6CAD: $6C
    ld l, h                                       ; $6CAE: $6C
    rst $38                                       ; $6CAF: $FF
    ld [hl], a                                    ; $6CB0: $77
    ld l, a                                       ; $6CB1: $6F
    ld l, [hl]                                    ; $6CB2: $6E
    ld h, h                                       ; $6CB3: $64
    ld h, l                                       ; $6CB4: $65
    ld [hl], d                                    ; $6CB5: $72
    jr nz, jr_026_6D2F                            ; $6CB6: $20 $77

    ld l, b                                       ; $6CB8: $68
    ld a, c                                       ; $6CB9: $79
    jr nz, jr_026_6D24                            ; $6CBA: $20 $68

    ld h, l                                       ; $6CBC: $65
    cp $65                                        ; $6CBD: $FE $65
    halt                                          ; $6CBF: $76
    ld h, l                                       ; $6CC0: $65

jr_026_6CC1:
    ld [hl], d                                    ; $6CC1: $72
    jr nz, @+$75                                  ; $6CC2: $20 $73

    ld [hl], l                                    ; $6CC4: $75
    ld [hl], b                                    ; $6CC5: $70
    ld [hl], b                                    ; $6CC6: $70

jr_026_6CC7:
    ld [hl], d                                    ; $6CC7: $72
    ld h, l                                       ; $6CC8: $65
    ld [hl], e                                    ; $6CC9: $73
    ld [hl], e                                    ; $6CCA: $73
    ld h, l                                       ; $6CCB: $65
    ld h, h                                       ; $6CCC: $64
    rst $38                                       ; $6CCD: $FF
    ld l, l                                       ; $6CCE: $6D
    ld h, l                                       ; $6CCF: $65
    jr nz, jr_026_6D47                            ; $6CD0: $20 $75

    ld l, [hl]                                    ; $6CD2: $6E
    ld h, h                                       ; $6CD3: $64
    ld h, l                                       ; $6CD4: $65
    ld [hl], d                                    ; $6CD5: $72

jr_026_6CD6:
    jr nz, jr_026_6D4C                            ; $6CD6: $20 $74

    ld l, b                                       ; $6CD8: $68
    ld h, c                                       ; $6CD9: $61
    ld [hl], h                                    ; $6CDA: $74
    cp $69                                        ; $6CDB: $FE $69
    ld h, a                                       ; $6CDD: $67

jr_026_6CDE:
    ld l, [hl]                                    ; $6CDE: $6E

jr_026_6CDF:
    ld l, a                                       ; $6CDF: $6F
    ld [hl], d                                    ; $6CE0: $72
    ld h, c                                       ; $6CE1: $61
    ld l, l                                       ; $6CE2: $6D
    ld [hl], l                                    ; $6CE3: $75
    ld [hl], e                                    ; $6CE4: $73
    ld l, $FF                                     ; $6CE5: $2E $FF

jr_026_6CE7:
    ld d, h                                       ; $6CE7: $54
    ld h, c                                       ; $6CE8: $61
    ld [hl], e                                    ; $6CE9: $73
    ld [hl], h                                    ; $6CEA: $74
    ld h, l                                       ; $6CEB: $65
    jr nz, jr_026_6D62                            ; $6CEC: $20 $74

    ld l, b                                       ; $6CEE: $68
    ld h, l                                       ; $6CEF: $65
    jr nz, jr_026_6D58                            ; $6CF0: $20 $66

    ld [hl], l                                    ; $6CF2: $75
    ld l, h                                       ; $6CF3: $6C
    ld l, h                                       ; $6CF4: $6C
    cp $70                                        ; $6CF5: $FE $70
    ld l, a                                       ; $6CF7: $6F
    ld [hl], a                                    ; $6CF8: $77
    ld h, l                                       ; $6CF9: $65
    ld [hl], d                                    ; $6CFA: $72
    jr nz, jr_026_6D6C                            ; $6CFB: $20 $6F

    ld h, [hl]                                    ; $6CFD: $66
    jr nz, jr_026_6D6D                            ; $6CFE: $20 $6D

    ld a, c                                       ; $6D00: $79
    rst $38                                       ; $6D01: $FF
    ld [hl], a                                    ; $6D02: $77
    ld [hl], d                                    ; $6D03: $72
    ld h, c                                       ; $6D04: $61

jr_026_6D05:
    ld [hl], h                                    ; $6D05: $74
    ld l, b                                       ; $6D06: $68
    ld hl, $FE21                                  ; $6D07: $21 $21 $FE
    db $FD                                        ; $6D0A: $FD
    sbc d                                         ; $6D0B: $9A
    ld e, b                                       ; $6D0C: $58
    dec b                                         ; $6D0D: $05
    ld b, d                                       ; $6D0E: $42
    sbc e                                         ; $6D0F: $9B
    xor c                                         ; $6D10: $A9
    ld c, a                                       ; $6D11: $4F
    sbc a                                         ; $6D12: $9F
    ld c, c                                       ; $6D13: $49
    dec l                                         ; $6D14: $2D
    ld c, c                                       ; $6D15: $49
    ld l, l                                       ; $6D16: $6D
    ld [hl], b                                    ; $6D17: $70
    ld l, a                                       ; $6D18: $6F
    ld [hl], e                                    ; $6D19: $73
    ld [hl], e                                    ; $6D1A: $73
    ld l, c                                       ; $6D1B: $69
    ld h, d                                       ; $6D1C: $62
    ld l, h                                       ; $6D1D: $6C
    ld h, l                                       ; $6D1E: $65
    ld hl, $4920                                  ; $6D1F: $21 $20 $49
    rst $38                                       ; $6D22: $FF
    ld h, c                                       ; $6D23: $61

jr_026_6D24:
    ld l, l                                       ; $6D24: $6D
    ld l, $2E                                     ; $6D25: $2E $2E
    ld l, $20                                     ; $6D27: $2E $20
    ld l, [hl]                                    ; $6D29: $6E
    ld l, a                                       ; $6D2A: $6F
    ld [hl], h                                    ; $6D2B: $74
    jr nz, @+$63                                  ; $6D2C: $20 $61

    ld [hl], e                                    ; $6D2E: $73

jr_026_6D2F:
    cp $77                                        ; $6D2F: $FE $77
    ld h, l                                       ; $6D31: $65
    ld h, c                                       ; $6D32: $61
    ld l, e                                       ; $6D33: $6B
    ld l, $2E                                     ; $6D34: $2E $2E
    ld l, $20                                     ; $6D36: $2E $20
    ld h, c                                       ; $6D38: $61
    ld [hl], e                                    ; $6D39: $73
    jr nz, @+$76                                  ; $6D3A: $20 $74

    ld l, b                                       ; $6D3C: $68
    ld h, c                                       ; $6D3D: $61
    ld [hl], h                                    ; $6D3E: $74
    rst $38                                       ; $6D3F: $FF
    ld [hl], b                                    ; $6D40: $70
    ld h, c                                       ; $6D41: $61
    ld [hl], h                                    ; $6D42: $74
    ld l, b                                       ; $6D43: $68
    ld h, l                                       ; $6D44: $65
    ld [hl], h                                    ; $6D45: $74
    ld l, c                                       ; $6D46: $69

jr_026_6D47:
    ld h, e                                       ; $6D47: $63
    ld l, $2E                                     ; $6D48: $2E $2E
    ld l, $FE                                     ; $6D4A: $2E $FE

jr_026_6D4C:
    ld h, c                                       ; $6D4C: $61
    ld l, b                                       ; $6D4D: $68
    ld l, b                                       ; $6D4E: $68
    ld l, b                                       ; $6D4F: $68
    ld l, b                                       ; $6D50: $68
    ld hl, $2121                                  ; $6D51: $21 $21 $21
    cp $FD                                        ; $6D54: $FE $FD
    sbc d                                         ; $6D56: $9A
    ld e, b                                       ; $6D57: $58

jr_026_6D58:
    ld b, $42                                     ; $6D58: $06 $42
    sbc e                                         ; $6D5A: $9B
    ld c, b                                       ; $6D5B: $48
    ld b, [hl]                                    ; $6D5C: $46
    sbc a                                         ; $6D5D: $9F
    ld d, h                                       ; $6D5E: $54
    ld l, a                                       ; $6D5F: $6F
    ld l, [hl]                                    ; $6D60: $6E
    ld a, c                                       ; $6D61: $79

jr_026_6D62:
    ld hl, $4120                                  ; $6D62: $21 $20 $41
    ld [hl], d                                    ; $6D65: $72
    ld h, l                                       ; $6D66: $65
    jr nz, @+$7B                                  ; $6D67: $20 $79

    ld l, a                                       ; $6D69: $6F
    ld [hl], l                                    ; $6D6A: $75
    rst $38                                       ; $6D6B: $FF

jr_026_6D6C:
    ld l, b                                       ; $6D6C: $68

jr_026_6D6D:
    ld [hl], l                                    ; $6D6D: $75
    ld [hl], d                                    ; $6D6E: $72
    ld [hl], h                                    ; $6D6F: $74
    ccf                                           ; $6D70: $3F
    cp $FD                                        ; $6D71: $FE $FD
    sbc e                                         ; $6D73: $9B
    ld a, b                                       ; $6D74: $78
    ld [hl], b                                    ; $6D75: $70
    sbc a                                         ; $6D76: $9F
    ld c, c                                       ; $6D77: $49
    daa                                           ; $6D78: $27
    ld l, l                                       ; $6D79: $6D
    jr nz, @+$68                                  ; $6D7A: $20 $66

    ld l, c                                       ; $6D7C: $69
    ld l, [hl]                                    ; $6D7D: $6E
    ld h, l                                       ; $6D7E: $65
    inc l                                         ; $6D7F: $2C
    rst $38                                       ; $6D80: $FF
    ld b, l                                       ; $6D81: $45
    ld l, c                                       ; $6D82: $69
    ld h, h                                       ; $6D83: $64
    ld l, a                                       ; $6D84: $6F
    ld l, [hl]                                    ; $6D85: $6E
    ld l, $20                                     ; $6D86: $2E $20
    ld c, d                                       ; $6D88: $4A
    ld [hl], l                                    ; $6D89: $75
    ld [hl], e                                    ; $6D8A: $73
    ld [hl], h                                    ; $6D8B: $74
    jr nz, jr_026_6DEF                            ; $6D8C: $20 $61

    cp $6C                                        ; $6D8E: $FE $6C
    ld l, c                                       ; $6D90: $69
    ld [hl], h                                    ; $6D91: $74
    ld [hl], h                                    ; $6D92: $74
    ld l, h                                       ; $6D93: $6C
    ld h, l                                       ; $6D94: $65
    jr nz, jr_026_6E0E                            ; $6D95: $20 $77

    ld l, c                                       ; $6D97: $69
    ld l, [hl]                                    ; $6D98: $6E
    ld h, h                                       ; $6D99: $64
    ld h, l                                       ; $6D9A: $65
    ld h, h                                       ; $6D9B: $64
    ld l, $FE                                     ; $6D9C: $2E $FE
    db $FD                                        ; $6D9E: $FD
    sbc e                                         ; $6D9F: $9B
    ld c, b                                       ; $6DA0: $48
    ld b, [hl]                                    ; $6DA1: $46
    sbc a                                         ; $6DA2: $9F
    ld d, h                                       ; $6DA3: $54
    ld l, b                                       ; $6DA4: $68
    ld h, c                                       ; $6DA5: $61
    ld [hl], h                                    ; $6DA6: $74
    daa                                           ; $6DA7: $27
    ld [hl], e                                    ; $6DA8: $73
    jr nz, jr_026_6E12                            ; $6DA9: $20 $67

    ld l, a                                       ; $6DAB: $6F
    ld l, a                                       ; $6DAC: $6F
    ld h, h                                       ; $6DAD: $64
    dec l                                         ; $6DAE: $2D
    cp $FD                                        ; $6DAF: $FE $FD
    sbc d                                         ; $6DB1: $9A
    ld e, b                                       ; $6DB2: $58
    rlca                                          ; $6DB3: $07
    ld b, d                                       ; $6DB4: $42
    sbc e                                         ; $6DB5: $9B
    ld a, b                                       ; $6DB6: $78
    ld [hl], b                                    ; $6DB7: $70
    sbc a                                         ; $6DB8: $9F
    ld hl, $2121                                  ; $6DB9: $21 $21 $21
    ld hl, $FDFE                                  ; $6DBC: $21 $FE $FD
    sbc e                                         ; $6DBF: $9B
    cp c                                          ; $6DC0: $B9
    ld e, l                                       ; $6DC1: $5D
    sbc a                                         ; $6DC2: $9F
    ld c, c                                       ; $6DC3: $49
    jr nz, jr_026_6E27                            ; $6DC4: $20 $61

    ld [hl], b                                    ; $6DC6: $70
    ld l, a                                       ; $6DC7: $6F
    ld l, h                                       ; $6DC8: $6C
    ld l, a                                       ; $6DC9: $6F
    ld h, a                                       ; $6DCA: $67
    ld l, c                                       ; $6DCB: $69
    ld a, d                                       ; $6DCC: $7A
    ld h, l                                       ; $6DCD: $65
    jr nz, jr_026_6E36                            ; $6DCE: $20 $66

    ld l, a                                       ; $6DD0: $6F
    ld [hl], d                                    ; $6DD1: $72
    rst $38                                       ; $6DD2: $FF
    ld [hl], e                                    ; $6DD3: $73
    ld [hl], h                                    ; $6DD4: $74
    ld h, c                                       ; $6DD5: $61
    ld [hl], d                                    ; $6DD6: $72
    ld [hl], h                                    ; $6DD7: $74
    ld l, h                                       ; $6DD8: $6C
    ld l, c                                       ; $6DD9: $69
    ld l, [hl]                                    ; $6DDA: $6E
    ld h, a                                       ; $6DDB: $67
    jr nz, jr_026_6E57                            ; $6DDC: $20 $79

    ld l, a                                       ; $6DDE: $6F
    ld [hl], l                                    ; $6DDF: $75
    inc l                                         ; $6DE0: $2C
    cp $47                                        ; $6DE1: $FE $47
    ld [hl], d                                    ; $6DE3: $72
    ld h, l                                       ; $6DE4: $65
    ld h, c                                       ; $6DE5: $61
    ld [hl], h                                    ; $6DE6: $74
    jr nz, jr_026_6E36                            ; $6DE7: $20 $4D

    ld h, c                                       ; $6DE9: $61
    ld h, a                                       ; $6DEA: $67
    ld [hl], l                                    ; $6DEB: $75
    ld [hl], e                                    ; $6DEC: $73
    ld l, $FF                                     ; $6DED: $2E $FF

jr_026_6DEF:
    ld d, h                                       ; $6DEF: $54
    ld l, b                                       ; $6DF0: $68
    ld l, c                                       ; $6DF1: $69
    ld [hl], e                                    ; $6DF2: $73
    jr nz, @+$6B                                  ; $6DF3: $20 $69

    ld [hl], e                                    ; $6DF5: $73
    cp $70                                        ; $6DF6: $FE $70
    ld [hl], d                                    ; $6DF8: $72
    ld l, a                                       ; $6DF9: $6F
    ld h, d                                       ; $6DFA: $62
    ld h, c                                       ; $6DFB: $61
    ld h, d                                       ; $6DFC: $62
    ld l, h                                       ; $6DFD: $6C
    ld a, c                                       ; $6DFE: $79
    rst $38                                       ; $6DFF: $FF
    ld [hl], e                                    ; $6E00: $73
    ld l, a                                       ; $6E01: $6F
    ld l, l                                       ; $6E02: $6D
    ld h, l                                       ; $6E03: $65
    ld [hl], h                                    ; $6E04: $74
    ld l, b                                       ; $6E05: $68
    ld l, c                                       ; $6E06: $69
    ld l, [hl]                                    ; $6E07: $6E
    ld h, a                                       ; $6E08: $67
    jr nz, jr_026_6E7A                            ; $6E09: $20 $6F

    ld h, [hl]                                    ; $6E0B: $66
    jr nz, jr_026_6E6F                            ; $6E0C: $20 $61

jr_026_6E0E:
    cp $73                                        ; $6E0E: $FE $73
    ld [hl], l                                    ; $6E10: $75
    ld [hl], d                                    ; $6E11: $72

jr_026_6E12:
    ld [hl], b                                    ; $6E12: $70
    ld [hl], d                                    ; $6E13: $72
    ld l, c                                       ; $6E14: $69
    ld [hl], e                                    ; $6E15: $73
    ld h, l                                       ; $6E16: $65
    jr nz, jr_026_6E8D                            ; $6E17: $20 $74

    ld l, a                                       ; $6E19: $6F
    rst $38                                       ; $6E1A: $FF
    ld a, c                                       ; $6E1B: $79
    ld l, a                                       ; $6E1C: $6F
    ld [hl], l                                    ; $6E1D: $75
    ld l, $FE                                     ; $6E1E: $2E $FE
    db $FD                                        ; $6E20: $FD
    ld e, b                                       ; $6E21: $58
    ld [bc], a                                    ; $6E22: $02
    sbc e                                         ; $6E23: $9B
    ld a, b                                       ; $6E24: $78
    ld [hl], b                                    ; $6E25: $70
    sbc a                                         ; $6E26: $9F

jr_026_6E27:
    ld c, d                                       ; $6E27: $4A
    ld [hl], l                                    ; $6E28: $75
    ld [hl], e                                    ; $6E29: $73
    ld [hl], h                                    ; $6E2A: $74
    ld l, $2E                                     ; $6E2B: $2E $2E
    ld l, $20                                     ; $6E2D: $2E $20
    ld [hl], a                                    ; $6E2F: $77
    ld l, b                                       ; $6E30: $68
    ld l, a                                       ; $6E31: $6F
    jr nz, jr_026_6E95                            ; $6E32: $20 $61

    ld [hl], d                                    ; $6E34: $72
    ld h, l                                       ; $6E35: $65

jr_026_6E36:
    rst $38                                       ; $6E36: $FF
    ld a, c                                       ; $6E37: $79
    ld l, a                                       ; $6E38: $6F
    ld [hl], l                                    ; $6E39: $75
    ccf                                           ; $6E3A: $3F
    jr nz, jr_026_6E94                            ; $6E3B: $20 $57

    ld l, b                                       ; $6E3D: $68
    ld h, c                                       ; $6E3E: $61
    ld [hl], h                                    ; $6E3F: $74
    jr nz, jr_026_6EA6                            ; $6E40: $20 $64

    ld l, c                                       ; $6E42: $69
    ld h, h                                       ; $6E43: $64
    cp $79                                        ; $6E44: $FE $79
    ld l, a                                       ; $6E46: $6F
    ld [hl], l                                    ; $6E47: $75
    jr nz, jr_026_6EAE                            ; $6E48: $20 $64

    ld l, a                                       ; $6E4A: $6F
    jr nz, jr_026_6EC1                            ; $6E4B: $20 $74

    ld l, a                                       ; $6E4D: $6F
    rst $38                                       ; $6E4E: $FF
    ld b, l                                       ; $6E4F: $45
    ld l, c                                       ; $6E50: $69
    ld h, h                                       ; $6E51: $64
    ld l, a                                       ; $6E52: $6F
    ld l, [hl]                                    ; $6E53: $6E
    ccf                                           ; $6E54: $3F
    cp $FD                                        ; $6E55: $FE $FD

jr_026_6E57:
    sbc e                                         ; $6E57: $9B
    cp c                                          ; $6E58: $B9
    ld e, l                                       ; $6E59: $5D
    sbc a                                         ; $6E5A: $9F
    ld d, a                                       ; $6E5B: $57
    ld h, l                                       ; $6E5C: $65
    jr nz, jr_026_6EC0                            ; $6E5D: $20 $61

    ld [hl], d                                    ; $6E5F: $72
    ld h, l                                       ; $6E60: $65
    rst $38                                       ; $6E61: $FF
    ld b, c                                       ; $6E62: $41
    ld [hl], d                                    ; $6E63: $72
    ld h, h                                       ; $6E64: $64
    ld h, l                                       ; $6E65: $65
    ld [hl], d                                    ; $6E66: $72
    ld l, c                                       ; $6E67: $69
    ld h, c                                       ; $6E68: $61
    ld l, h                                       ; $6E69: $6C
    ld [hl], e                                    ; $6E6A: $73
    inc l                                         ; $6E6B: $2C
    cp $70                                        ; $6E6C: $FE $70
    ld h, l                                       ; $6E6E: $65

jr_026_6E6F:
    ld l, a                                       ; $6E6F: $6F
    ld [hl], b                                    ; $6E70: $70
    ld l, h                                       ; $6E71: $6C
    ld h, l                                       ; $6E72: $65
    jr nz, @+$71                                  ; $6E73: $20 $6F

    ld h, [hl]                                    ; $6E75: $66
    jr nz, @+$76                                  ; $6E76: $20 $74

    ld l, b                                       ; $6E78: $68
    ld h, l                                       ; $6E79: $65

jr_026_6E7A:
    rst $38                                       ; $6E7A: $FF
    ld [hl], e                                    ; $6E7B: $73
    ld l, e                                       ; $6E7C: $6B
    ld a, c                                       ; $6E7D: $79
    ld l, $20                                     ; $6E7E: $2E $20
    ld b, [hl]                                    ; $6E80: $46
    ld l, a                                       ; $6E81: $6F
    ld [hl], d                                    ; $6E82: $72
    cp $63                                        ; $6E83: $FE $63
    ld h, l                                       ; $6E85: $65
    ld l, [hl]                                    ; $6E86: $6E
    ld [hl], h                                    ; $6E87: $74
    ld [hl], l                                    ; $6E88: $75
    ld [hl], d                                    ; $6E89: $72
    ld l, c                                       ; $6E8A: $69
    ld h, l                                       ; $6E8B: $65
    ld [hl], e                                    ; $6E8C: $73

jr_026_6E8D:
    jr nz, jr_026_6F06                            ; $6E8D: $20 $77

    ld h, l                                       ; $6E8F: $65
    rst $38                                       ; $6E90: $FF
    ld l, b                                       ; $6E91: $68
    ld h, c                                       ; $6E92: $61
    halt                                          ; $6E93: $76

jr_026_6E94:
    ld h, l                                       ; $6E94: $65

jr_026_6E95:
    jr nz, jr_026_6F00                            ; $6E95: $20 $69

    ld [hl], e                                    ; $6E97: $73
    ld l, a                                       ; $6E98: $6F
    ld l, h                                       ; $6E99: $6C
    ld h, c                                       ; $6E9A: $61
    ld [hl], h                                    ; $6E9B: $74
    ld h, l                                       ; $6E9C: $65
    ld h, h                                       ; $6E9D: $64
    cp $6F                                        ; $6E9E: $FE $6F
    ld [hl], l                                    ; $6EA0: $75
    ld [hl], d                                    ; $6EA1: $72
    ld [hl], e                                    ; $6EA2: $73
    ld h, l                                       ; $6EA3: $65
    ld l, h                                       ; $6EA4: $6C
    halt                                          ; $6EA5: $76

jr_026_6EA6:
    ld h, l                                       ; $6EA6: $65
    ld [hl], e                                    ; $6EA7: $73
    jr nz, @+$68                                  ; $6EA8: $20 $66

    ld [hl], d                                    ; $6EAA: $72
    ld l, a                                       ; $6EAB: $6F
    ld l, l                                       ; $6EAC: $6D
    rst $38                                       ; $6EAD: $FF

jr_026_6EAE:
    ld [hl], h                                    ; $6EAE: $74
    ld l, b                                       ; $6EAF: $68
    ld h, l                                       ; $6EB0: $65
    jr nz, jr_026_6F22                            ; $6EB1: $20 $6F

    ld [hl], h                                    ; $6EB3: $74
    ld l, b                                       ; $6EB4: $68
    ld h, l                                       ; $6EB5: $65
    ld [hl], d                                    ; $6EB6: $72
    cp $63                                        ; $6EB7: $FE $63
    ld l, a                                       ; $6EB9: $6F
    ld [hl], l                                    ; $6EBA: $75
    ld l, [hl]                                    ; $6EBB: $6E
    ld [hl], h                                    ; $6EBC: $74
    ld [hl], d                                    ; $6EBD: $72
    ld l, c                                       ; $6EBE: $69
    ld h, l                                       ; $6EBF: $65

jr_026_6EC0:
    ld [hl], e                                    ; $6EC0: $73

jr_026_6EC1:
    jr nz, jr_026_6F32                            ; $6EC1: $20 $6F

    ld h, [hl]                                    ; $6EC3: $66
    rst $38                                       ; $6EC4: $FF
    ld c, l                                       ; $6EC5: $4D
    ld h, c                                       ; $6EC6: $61
    ld h, a                                       ; $6EC7: $67
    ld l, c                                       ; $6EC8: $69
    dec l                                         ; $6EC9: $2D
    ld c, [hl]                                    ; $6ECA: $4E
    ld h, c                                       ; $6ECB: $61
    ld [hl], h                                    ; $6ECC: $74
    ld l, c                                       ; $6ECD: $69
    ld l, a                                       ; $6ECE: $6F
    ld l, [hl]                                    ; $6ECF: $6E
    inc l                                         ; $6ED0: $2C
    cp $62                                        ; $6ED1: $FE $62
    ld [hl], l                                    ; $6ED3: $75
    ld [hl], h                                    ; $6ED4: $74
    jr nz, jr_026_6F4B                            ; $6ED5: $20 $74

    ld l, b                                       ; $6ED7: $68
    ld h, l                                       ; $6ED8: $65
    rst $38                                       ; $6ED9: $FF
    ld [hl], e                                    ; $6EDA: $73
    ld l, c                                       ; $6EDB: $69
    ld [hl], h                                    ; $6EDC: $74
    ld [hl], l                                    ; $6EDD: $75
    ld h, c                                       ; $6EDE: $61
    ld [hl], h                                    ; $6EDF: $74
    ld l, c                                       ; $6EE0: $69
    ld l, a                                       ; $6EE1: $6F
    ld l, [hl]                                    ; $6EE2: $6E
    jr nz, @+$7B                                  ; $6EE3: $20 $79

    ld l, a                                       ; $6EE5: $6F
    ld [hl], l                                    ; $6EE6: $75
    cp $61                                        ; $6EE7: $FE $61
    ld [hl], d                                    ; $6EE9: $72
    ld h, l                                       ; $6EEA: $65
    jr nz, jr_026_6F56                            ; $6EEB: $20 $69

    ld l, [hl]                                    ; $6EED: $6E
    halt                                          ; $6EEE: $76
    ld l, a                                       ; $6EEF: $6F
    ld l, h                                       ; $6EF0: $6C
    halt                                          ; $6EF1: $76
    ld h, l                                       ; $6EF2: $65
    ld h, h                                       ; $6EF3: $64
    jr nz, jr_026_6F5F                            ; $6EF4: $20 $69

    ld l, [hl]                                    ; $6EF6: $6E
    rst $38                                       ; $6EF7: $FF
    ld l, c                                       ; $6EF8: $69
    ld [hl], e                                    ; $6EF9: $73
    jr nz, @+$75                                  ; $6EFA: $20 $73

    ld l, a                                       ; $6EFC: $6F
    ld l, l                                       ; $6EFD: $6D
    ld h, l                                       ; $6EFE: $65
    ld [hl], h                                    ; $6EFF: $74

jr_026_6F00:
    ld l, b                                       ; $6F00: $68
    ld l, c                                       ; $6F01: $69
    ld l, [hl]                                    ; $6F02: $6E
    ld h, a                                       ; $6F03: $67
    jr nz, jr_026_6F7D                            ; $6F04: $20 $77

jr_026_6F06:
    ld h, l                                       ; $6F06: $65
    cp $68                                        ; $6F07: $FE $68
    ld h, c                                       ; $6F09: $61
    halt                                          ; $6F0A: $76
    ld h, l                                       ; $6F0B: $65
    ld l, [hl]                                    ; $6F0C: $6E
    daa                                           ; $6F0D: $27
    ld [hl], h                                    ; $6F0E: $74
    jr nz, jr_026_6F73                            ; $6F0F: $20 $62

    ld h, l                                       ; $6F11: $65
    ld h, l                                       ; $6F12: $65
    ld l, [hl]                                    ; $6F13: $6E
    rst $38                                       ; $6F14: $FF
    ld h, c                                       ; $6F15: $61
    ld h, d                                       ; $6F16: $62
    ld l, h                                       ; $6F17: $6C
    ld h, l                                       ; $6F18: $65
    jr nz, jr_026_6F8F                            ; $6F19: $20 $74

    ld l, a                                       ; $6F1B: $6F
    jr nz, jr_026_6F87                            ; $6F1C: $20 $69

    ld h, a                                       ; $6F1E: $67
    ld l, [hl]                                    ; $6F1F: $6E
    ld l, a                                       ; $6F20: $6F
    ld [hl], d                                    ; $6F21: $72

jr_026_6F22:
    ld h, l                                       ; $6F22: $65
    ld l, $FE                                     ; $6F23: $2E $FE
    ld b, c                                       ; $6F25: $41
    ld [hl], e                                    ; $6F26: $73
    jr nz, jr_026_6F8F                            ; $6F27: $20 $66

    ld l, a                                       ; $6F29: $6F
    ld [hl], d                                    ; $6F2A: $72
    jr nz, jr_026_6FA6                            ; $6F2B: $20 $79

    ld l, a                                       ; $6F2D: $6F
    ld [hl], l                                    ; $6F2E: $75
    ld [hl], d                                    ; $6F2F: $72
    rst $38                                       ; $6F30: $FF
    ld h, [hl]                                    ; $6F31: $66

jr_026_6F32:
    ld [hl], d                                    ; $6F32: $72
    ld l, c                                       ; $6F33: $69
    ld h, l                                       ; $6F34: $65
    ld l, [hl]                                    ; $6F35: $6E
    ld h, h                                       ; $6F36: $64
    jr nz, jr_026_6F7E                            ; $6F37: $20 $45

    ld l, c                                       ; $6F39: $69
    ld h, h                                       ; $6F3A: $64
    ld l, a                                       ; $6F3B: $6F
    ld l, [hl]                                    ; $6F3C: $6E
    inc l                                         ; $6F3D: $2C
    cp $77                                        ; $6F3E: $FE $77
    ld h, l                                       ; $6F40: $65
    jr nz, jr_026_6FB0                            ; $6F41: $20 $6D

    ld h, l                                       ; $6F43: $65
    ld [hl], d                                    ; $6F44: $72
    ld h, l                                       ; $6F45: $65
    ld l, h                                       ; $6F46: $6C
    ld a, c                                       ; $6F47: $79
    jr nz, jr_026_6FAE                            ; $6F48: $20 $64

    ld h, l                                       ; $6F4A: $65

jr_026_6F4B:
    ld h, c                                       ; $6F4B: $61
    ld l, h                                       ; $6F4C: $6C
    ld [hl], h                                    ; $6F4D: $74
    rst $38                                       ; $6F4E: $FF
    ld l, b                                       ; $6F4F: $68
    ld l, c                                       ; $6F50: $69
    ld l, l                                       ; $6F51: $6D
    jr nz, jr_026_6FB5                            ; $6F52: $20 $61

    jr nz, jr_026_6FBE                            ; $6F54: $20 $68

jr_026_6F56:
    ld h, c                                       ; $6F56: $61
    ld [hl], d                                    ; $6F57: $72
    ld l, l                                       ; $6F58: $6D
    ld l, h                                       ; $6F59: $6C
    ld h, l                                       ; $6F5A: $65
    ld [hl], e                                    ; $6F5B: $73
    ld [hl], e                                    ; $6F5C: $73
    cp $62                                        ; $6F5D: $FE $62

jr_026_6F5F:
    ld l, h                                       ; $6F5F: $6C
    ld l, a                                       ; $6F60: $6F
    ld [hl], a                                    ; $6F61: $77
    ld l, $20                                     ; $6F62: $2E $20
    ld c, b                                       ; $6F64: $48
    ld h, l                                       ; $6F65: $65
    jr nz, jr_026_6FDF                            ; $6F66: $20 $77

    ld l, c                                       ; $6F68: $69
    ld l, h                                       ; $6F69: $6C
    ld l, h                                       ; $6F6A: $6C
    rst $38                                       ; $6F6B: $FF
    ld h, d                                       ; $6F6C: $62
    ld h, l                                       ; $6F6D: $65
    jr nz, jr_026_6FD6                            ; $6F6E: $20 $66

    ld l, c                                       ; $6F70: $69
    ld l, [hl]                                    ; $6F71: $6E
    ld h, l                                       ; $6F72: $65

jr_026_6F73:
    ld l, $FE                                     ; $6F73: $2E $FE
    db $FD                                        ; $6F75: $FD
    ld e, b                                       ; $6F76: $58
    inc bc                                        ; $6F77: $03
    sbc e                                         ; $6F78: $9B
    ld a, b                                       ; $6F79: $78
    ld [hl], b                                    ; $6F7A: $70
    sbc a                                         ; $6F7B: $9F
    ld d, a                                       ; $6F7C: $57

jr_026_6F7D:
    ld h, c                                       ; $6F7D: $61

jr_026_6F7E:
    ld l, c                                       ; $6F7E: $69
    ld [hl], h                                    ; $6F7F: $74
    jr nz, jr_026_6FE3                            ; $6F80: $20 $61

    jr nz, jr_026_6FF1                            ; $6F82: $20 $6D

    ld l, c                                       ; $6F84: $69
    ld l, [hl]                                    ; $6F85: $6E
    ld [hl], l                                    ; $6F86: $75

jr_026_6F87:
    ld [hl], h                                    ; $6F87: $74
    ld h, l                                       ; $6F88: $65
    inc l                                         ; $6F89: $2C
    cp $49                                        ; $6F8A: $FE $49
    jr nz, jr_026_7000                            ; $6F8C: $20 $72

    ld h, l                                       ; $6F8E: $65

jr_026_6F8F:
    ld h, e                                       ; $6F8F: $63
    ld l, a                                       ; $6F90: $6F
    ld h, a                                       ; $6F91: $67
    ld l, [hl]                                    ; $6F92: $6E
    ld l, c                                       ; $6F93: $69
    ld a, d                                       ; $6F94: $7A
    ld h, l                                       ; $6F95: $65
    rst $38                                       ; $6F96: $FF
    ld [hl], h                                    ; $6F97: $74
    ld l, b                                       ; $6F98: $68
    ld h, c                                       ; $6F99: $61
    ld [hl], h                                    ; $6F9A: $74
    jr nz, jr_026_7013                            ; $6F9B: $20 $76

    ld l, a                                       ; $6F9D: $6F
    ld l, c                                       ; $6F9E: $69
    ld h, e                                       ; $6F9F: $63
    ld h, l                                       ; $6FA0: $65
    ld l, $2E                                     ; $6FA1: $2E $2E
    ld l, $FE                                     ; $6FA3: $2E $FE
    db $FD                                        ; $6FA5: $FD

jr_026_6FA6:
    sbc e                                         ; $6FA6: $9B
    cp c                                          ; $6FA7: $B9
    ld e, l                                       ; $6FA8: $5D
    sbc a                                         ; $6FA9: $9F
    ld e, c                                       ; $6FAA: $59
    ld h, l                                       ; $6FAB: $65
    ld [hl], e                                    ; $6FAC: $73
    inc l                                         ; $6FAD: $2C

jr_026_6FAE:
    jr nz, @+$6B                                  ; $6FAE: $20 $69

jr_026_6FB0:
    ld [hl], h                                    ; $6FB0: $74
    jr nz, jr_026_702A                            ; $6FB1: $20 $77

    ld h, c                                       ; $6FB3: $61
    ld [hl], e                                    ; $6FB4: $73

jr_026_6FB5:
    jr nz, jr_026_7000                            ; $6FB5: $20 $49

    rst $38                                       ; $6FB7: $FF
    ld [hl], a                                    ; $6FB8: $77
    ld l, b                                       ; $6FB9: $68
    ld l, a                                       ; $6FBA: $6F
    jr nz, jr_026_7025                            ; $6FBB: $20 $68

    ld h, l                                       ; $6FBD: $65

jr_026_6FBE:
    ld l, h                                       ; $6FBE: $6C
    ld [hl], b                                    ; $6FBF: $70
    ld h, l                                       ; $6FC0: $65
    ld h, h                                       ; $6FC1: $64
    jr nz, jr_026_703D                            ; $6FC2: $20 $79

    ld l, a                                       ; $6FC4: $6F
    ld [hl], l                                    ; $6FC5: $75
    cp $6F                                        ; $6FC6: $FE $6F
    ld [hl], l                                    ; $6FC8: $75
    ld [hl], h                                    ; $6FC9: $74
    jr nz, jr_026_703B                            ; $6FCA: $20 $6F

    ld h, [hl]                                    ; $6FCC: $66
    jr nz, jr_026_7043                            ; $6FCD: $20 $74

    ld l, b                                       ; $6FCF: $68
    ld h, l                                       ; $6FD0: $65
    rst $38                                       ; $6FD1: $FF
    ld d, e                                       ; $6FD2: $53
    ld l, b                                       ; $6FD3: $68
    ld h, c                                       ; $6FD4: $61
    ld h, h                                       ; $6FD5: $64

jr_026_6FD6:
    ld l, a                                       ; $6FD6: $6F
    ld [hl], a                                    ; $6FD7: $77
    ld l, b                                       ; $6FD8: $68
    ld l, a                                       ; $6FD9: $6F
    ld l, h                                       ; $6FDA: $6C
    ld h, h                                       ; $6FDB: $64
    ld l, $FE                                     ; $6FDC: $2E $FE
    ld d, l                                       ; $6FDE: $55

jr_026_6FDF:
    ld l, [hl]                                    ; $6FDF: $6E
    ld h, [hl]                                    ; $6FE0: $66
    ld l, a                                       ; $6FE1: $6F
    ld [hl], d                                    ; $6FE2: $72

jr_026_6FE3:
    ld [hl], h                                    ; $6FE3: $74
    ld [hl], l                                    ; $6FE4: $75
    ld l, [hl]                                    ; $6FE5: $6E
    ld h, c                                       ; $6FE6: $61
    ld [hl], h                                    ; $6FE7: $74
    ld h, l                                       ; $6FE8: $65
    ld l, h                                       ; $6FE9: $6C
    ld a, c                                       ; $6FEA: $79
    jr nz, jr_026_7036                            ; $6FEB: $20 $49

    rst $38                                       ; $6FED: $FF
    ld [hl], a                                    ; $6FEE: $77
    ld h, c                                       ; $6FEF: $61
    ld [hl], e                                    ; $6FF0: $73

jr_026_6FF1:
    jr nz, jr_026_7066                            ; $6FF1: $20 $73

    ld l, c                                       ; $6FF3: $69
    ld h, h                                       ; $6FF4: $64
    ld h, l                                       ; $6FF5: $65
    ld [hl], h                                    ; $6FF6: $74
    ld [hl], d                                    ; $6FF7: $72
    ld h, c                                       ; $6FF8: $61
    ld h, e                                       ; $6FF9: $63
    ld l, e                                       ; $6FFA: $6B
    ld h, l                                       ; $6FFB: $65
    ld h, h                                       ; $6FFC: $64
    cp $74                                        ; $6FFD: $FE $74
    ld l, b                                       ; $6FFF: $68

jr_026_7000:
    ld h, l                                       ; $7000: $65
    ld [hl], d                                    ; $7001: $72
    ld h, l                                       ; $7002: $65
    jr nz, jr_026_7078                            ; $7003: $20 $73

    ld l, a                                       ; $7005: $6F
    jr nz, jr_026_7051                            ; $7006: $20 $49

    jr nz, jr_026_7072                            ; $7008: $20 $68

    ld h, c                                       ; $700A: $61
    ld h, h                                       ; $700B: $64
    rst $38                                       ; $700C: $FF
    ld [hl], h                                    ; $700D: $74
    ld l, a                                       ; $700E: $6F
    jr nz, jr_026_7081                            ; $700F: $20 $70

    ld l, h                                       ; $7011: $6C
    ld h, c                                       ; $7012: $61

jr_026_7013:
    ld h, e                                       ; $7013: $63
    ld h, l                                       ; $7014: $65
    jr nz, jr_026_7084                            ; $7015: $20 $6D

    ld a, c                                       ; $7017: $79
    cp $66                                        ; $7018: $FE $66
    ld h, c                                       ; $701A: $61
    ld l, c                                       ; $701B: $69
    ld [hl], h                                    ; $701C: $74
    ld l, b                                       ; $701D: $68
    jr nz, @+$6B                                  ; $701E: $20 $69

    ld l, [hl]                                    ; $7020: $6E
    jr nz, jr_026_709C                            ; $7021: $20 $79

    ld l, a                                       ; $7023: $6F
    ld [hl], l                                    ; $7024: $75

jr_026_7025:
    rst $38                                       ; $7025: $FF
    ld [hl], h                                    ; $7026: $74
    ld l, b                                       ; $7027: $68
    ld h, c                                       ; $7028: $61
    ld [hl], h                                    ; $7029: $74

jr_026_702A:
    jr nz, jr_026_70A5                            ; $702A: $20 $79

    ld l, a                                       ; $702C: $6F
    ld [hl], l                                    ; $702D: $75
    jr nz, @+$6F                                  ; $702E: $20 $6D

    ld l, c                                       ; $7030: $69
    ld h, a                                       ; $7031: $67
    ld l, b                                       ; $7032: $68
    ld [hl], h                                    ; $7033: $74
    cp $65                                        ; $7034: $FE $65

jr_026_7036:
    ld [hl], e                                    ; $7036: $73
    ld h, e                                       ; $7037: $63
    ld h, c                                       ; $7038: $61
    ld [hl], b                                    ; $7039: $70
    ld h, l                                       ; $703A: $65

jr_026_703B:
    jr nz, jr_026_70B4                            ; $703B: $20 $77

jr_026_703D:
    ld l, c                                       ; $703D: $69
    ld [hl], h                                    ; $703E: $74
    ld l, b                                       ; $703F: $68
    ld l, a                                       ; $7040: $6F
    ld [hl], l                                    ; $7041: $75
    ld [hl], h                                    ; $7042: $74

jr_026_7043:
    rst $38                                       ; $7043: $FF
    ld l, l                                       ; $7044: $6D
    ld a, c                                       ; $7045: $79
    jr nz, jr_026_70B0                            ; $7046: $20 $68

    ld h, l                                       ; $7048: $65
    ld l, h                                       ; $7049: $6C
    ld [hl], b                                    ; $704A: $70
    ld l, $2E                                     ; $704B: $2E $2E
    ld l, $FE                                     ; $704D: $2E $FE
    ld [hl], a                                    ; $704F: $77
    ld l, b                                       ; $7050: $68

jr_026_7051:
    ld l, c                                       ; $7051: $69
    ld h, e                                       ; $7052: $63
    ld l, b                                       ; $7053: $68
    jr nz, jr_026_70CF                            ; $7054: $20 $79

    ld l, a                                       ; $7056: $6F
    ld [hl], l                                    ; $7057: $75
    jr nz, jr_026_70BE                            ; $7058: $20 $64

    ld l, c                                       ; $705A: $69
    ld h, h                                       ; $705B: $64
    ld l, $FE                                     ; $705C: $2E $FE
    db $FD                                        ; $705E: $FD
    ld e, b                                       ; $705F: $58
    inc b                                         ; $7060: $04
    sbc e                                         ; $7061: $9B
    ld a, b                                       ; $7062: $78
    ld [hl], b                                    ; $7063: $70
    sbc a                                         ; $7064: $9F
    ld d, e                                       ; $7065: $53

jr_026_7066:
    ld l, a                                       ; $7066: $6F
    jr nz, @+$79                                  ; $7067: $20 $77

    ld l, b                                       ; $7069: $68
    ld h, c                                       ; $706A: $61
    ld [hl], h                                    ; $706B: $74
    jr nz, jr_026_70D2                            ; $706C: $20 $64

    ld l, a                                       ; $706E: $6F
    jr nz, jr_026_70EA                            ; $706F: $20 $79

    ld l, a                                       ; $7071: $6F

jr_026_7072:
    ld [hl], l                                    ; $7072: $75
    rst $38                                       ; $7073: $FF
    ld [hl], a                                    ; $7074: $77
    ld h, c                                       ; $7075: $61
    ld l, [hl]                                    ; $7076: $6E
    ld [hl], h                                    ; $7077: $74

jr_026_7078:
    jr nz, jr_026_70F1                            ; $7078: $20 $77

    ld l, c                                       ; $707A: $69
    ld [hl], h                                    ; $707B: $74
    ld l, b                                       ; $707C: $68
    jr nz, jr_026_70EC                            ; $707D: $20 $6D

    ld h, l                                       ; $707F: $65
    ccf                                           ; $7080: $3F

jr_026_7081:
    cp $FD                                        ; $7081: $FE $FD
    sbc e                                         ; $7083: $9B

jr_026_7084:
    cp c                                          ; $7084: $B9
    ld e, l                                       ; $7085: $5D
    sbc a                                         ; $7086: $9F
    ld b, c                                       ; $7087: $41
    jr nz, jr_026_70F1                            ; $7088: $20 $67

    ld l, c                                       ; $708A: $69
    ld h, c                                       ; $708B: $61
    ld l, [hl]                                    ; $708C: $6E
    ld [hl], h                                    ; $708D: $74
    rst $38                                       ; $708E: $FF
    ld d, e                                       ; $708F: $53
    ld l, b                                       ; $7090: $68
    ld h, c                                       ; $7091: $61
    ld h, h                                       ; $7092: $64
    ld l, a                                       ; $7093: $6F
    ld [hl], a                                    ; $7094: $77
    jr nz, jr_026_70DE                            ; $7095: $20 $47

    ld h, l                                       ; $7097: $65
    ld a, c                                       ; $7098: $79
    ld [hl], e                                    ; $7099: $73
    ld h, l                                       ; $709A: $65
    ld [hl], d                                    ; $709B: $72

jr_026_709C:
    cp $68                                        ; $709C: $FE $68
    ld h, c                                       ; $709E: $61
    ld [hl], e                                    ; $709F: $73
    jr nz, jr_026_7103                            ; $70A0: $20 $61

    ld [hl], b                                    ; $70A2: $70
    ld [hl], b                                    ; $70A3: $70
    ld h, l                                       ; $70A4: $65

jr_026_70A5:
    ld h, c                                       ; $70A5: $61
    ld [hl], d                                    ; $70A6: $72
    ld h, l                                       ; $70A7: $65
    ld h, h                                       ; $70A8: $64
    rst $38                                       ; $70A9: $FF
    ld l, [hl]                                    ; $70AA: $6E
    ld h, l                                       ; $70AB: $65
    ld h, c                                       ; $70AC: $61
    ld [hl], d                                    ; $70AD: $72
    jr nz, jr_026_7124                            ; $70AE: $20 $74

jr_026_70B0:
    ld l, b                                       ; $70B0: $68
    ld h, l                                       ; $70B1: $65
    cp $70                                        ; $70B2: $FE $70

jr_026_70B4:
    ld h, c                                       ; $70B4: $61
    ld l, h                                       ; $70B5: $6C
    ld h, c                                       ; $70B6: $61
    ld h, e                                       ; $70B7: $63
    ld h, l                                       ; $70B8: $65
    ld l, $20                                     ; $70B9: $2E $20
    ld b, e                                       ; $70BB: $43
    ld l, a                                       ; $70BC: $6F
    ld [hl], d                                    ; $70BD: $72

jr_026_70BE:
    ld h, l                                       ; $70BE: $65
    rst $38                                       ; $70BF: $FF
    ld h, e                                       ; $70C0: $63
    ld [hl], d                                    ; $70C1: $72
    ld h, l                                       ; $70C2: $65
    ld h, c                                       ; $70C3: $61
    ld [hl], h                                    ; $70C4: $74
    ld [hl], l                                    ; $70C5: $75
    ld [hl], d                                    ; $70C6: $72
    ld h, l                                       ; $70C7: $65
    ld [hl], e                                    ; $70C8: $73
    jr nz, jr_026_712C                            ; $70C9: $20 $61

    ld [hl], d                                    ; $70CB: $72
    ld h, l                                       ; $70CC: $65
    cp $77                                        ; $70CD: $FE $77

jr_026_70CF:
    ld [hl], d                                    ; $70CF: $72
    ld h, l                                       ; $70D0: $65
    ld h, c                                       ; $70D1: $61

jr_026_70D2:
    ld l, e                                       ; $70D2: $6B
    ld l, c                                       ; $70D3: $69
    ld l, [hl]                                    ; $70D4: $6E
    ld h, a                                       ; $70D5: $67
    jr nz, jr_026_7140                            ; $70D6: $20 $68

    ld h, c                                       ; $70D8: $61
    halt                                          ; $70D9: $76
    ld l, a                                       ; $70DA: $6F
    ld h, e                                       ; $70DB: $63
    rst $38                                       ; $70DC: $FF
    ld l, a                                       ; $70DD: $6F

jr_026_70DE:
    ld l, [hl]                                    ; $70DE: $6E
    jr nz, jr_026_7142                            ; $70DF: $20 $61

    ld l, h                                       ; $70E1: $6C
    ld l, h                                       ; $70E2: $6C
    jr nz, jr_026_7159                            ; $70E3: $20 $74

    ld l, b                                       ; $70E5: $68
    ld h, l                                       ; $70E6: $65
    cp $69                                        ; $70E7: $FE $69
    ld l, [hl]                                    ; $70E9: $6E

jr_026_70EA:
    ld l, b                                       ; $70EA: $68
    ld h, c                                       ; $70EB: $61

jr_026_70EC:
    ld h, d                                       ; $70EC: $62
    ld l, c                                       ; $70ED: $69
    ld [hl], h                                    ; $70EE: $74
    ld h, c                                       ; $70EF: $61
    ld l, [hl]                                    ; $70F0: $6E

jr_026_70F1:
    ld [hl], h                                    ; $70F1: $74
    ld [hl], e                                    ; $70F2: $73
    jr nz, jr_026_7164                            ; $70F3: $20 $6F

    ld h, [hl]                                    ; $70F5: $66
    rst $38                                       ; $70F6: $FF
    ld b, c                                       ; $70F7: $41
    ld [hl], d                                    ; $70F8: $72
    ld h, h                                       ; $70F9: $64
    ld h, l                                       ; $70FA: $65
    ld [hl], d                                    ; $70FB: $72
    ld l, c                                       ; $70FC: $69
    ld h, c                                       ; $70FD: $61
    ld l, h                                       ; $70FE: $6C
    ld l, $FE                                     ; $70FF: $2E $FE
    db $FD                                        ; $7101: $FD
    sbc e                                         ; $7102: $9B

jr_026_7103:
    ld a, b                                       ; $7103: $78
    ld [hl], b                                    ; $7104: $70
    sbc a                                         ; $7105: $9F
    ld b, c                                       ; $7106: $41
    jr nz, @+$55                                  ; $7107: $20 $53

    ld l, b                                       ; $7109: $68
    ld h, c                                       ; $710A: $61
    ld h, h                                       ; $710B: $64
    ld l, a                                       ; $710C: $6F
    ld [hl], a                                    ; $710D: $77
    rst $38                                       ; $710E: $FF
    ld b, a                                       ; $710F: $47
    ld h, l                                       ; $7110: $65
    ld a, c                                       ; $7111: $79
    ld [hl], e                                    ; $7112: $73
    ld h, l                                       ; $7113: $65
    ld [hl], d                                    ; $7114: $72
    ccf                                           ; $7115: $3F
    jr nz, jr_026_716C                            ; $7116: $20 $54

    ld l, b                                       ; $7118: $68
    ld h, c                                       ; $7119: $61
    ld [hl], h                                    ; $711A: $74
    daa                                           ; $711B: $27
    ld [hl], e                                    ; $711C: $73
    cp $69                                        ; $711D: $FE $69
    ld l, l                                       ; $711F: $6D
    ld [hl], b                                    ; $7120: $70
    ld l, a                                       ; $7121: $6F
    ld [hl], e                                    ; $7122: $73
    ld [hl], e                                    ; $7123: $73

jr_026_7124:
    ld l, c                                       ; $7124: $69
    ld h, d                                       ; $7125: $62
    ld l, h                                       ; $7126: $6C
    ld h, l                                       ; $7127: $65
    ld hl, $4920                                  ; $7128: $21 $20 $49
    rst $38                                       ; $712B: $FF

jr_026_712C:
    ld l, b                                       ; $712C: $68
    ld h, c                                       ; $712D: $61
    halt                                          ; $712E: $76
    ld h, l                                       ; $712F: $65
    jr nz, jr_026_7193                            ; $7130: $20 $61

    ld l, h                                       ; $7132: $6C
    ld l, h                                       ; $7133: $6C
    jr nz, jr_026_71AA                            ; $7134: $20 $74

    ld l, b                                       ; $7136: $68
    ld h, l                                       ; $7137: $65
    cp $43                                        ; $7138: $FE $43
    ld l, a                                       ; $713A: $6F
    ld [hl], d                                    ; $713B: $72
    ld h, l                                       ; $713C: $65
    jr nz, jr_026_7192                            ; $713D: $20 $53

    ld [hl], h                                    ; $713F: $74

jr_026_7140:
    ld l, a                                       ; $7140: $6F
    ld l, [hl]                                    ; $7141: $6E

jr_026_7142:
    ld h, l                                       ; $7142: $65
    ld [hl], e                                    ; $7143: $73
    rst $38                                       ; $7144: $FF
    ld l, b                                       ; $7145: $68
    ld h, l                                       ; $7146: $65
    ld [hl], d                                    ; $7147: $72
    ld h, l                                       ; $7148: $65
    jr nz, @+$6B                                  ; $7149: $20 $69

    ld l, [hl]                                    ; $714B: $6E
    jr nz, jr_026_71C2                            ; $714C: $20 $74

    ld l, b                                       ; $714E: $68
    ld h, l                                       ; $714F: $65
    cp $43                                        ; $7150: $FE $43
    ld l, a                                       ; $7152: $6F
    ld [hl], d                                    ; $7153: $72
    ld h, l                                       ; $7154: $65
    jr nz, jr_026_719E                            ; $7155: $20 $47

    ld l, h                                       ; $7157: $6C
    ld a, c                                       ; $7158: $79

jr_026_7159:
    ld [hl], b                                    ; $7159: $70
    ld l, b                                       ; $715A: $68
    ld l, $FE                                     ; $715B: $2E $FE
    db $FD                                        ; $715D: $FD
    sbc e                                         ; $715E: $9B
    cp c                                          ; $715F: $B9
    ld e, l                                       ; $7160: $5D
    sbc a                                         ; $7161: $9F
    ld c, [hl]                                    ; $7162: $4E
    ld l, a                                       ; $7163: $6F

jr_026_7164:
    ld l, [hl]                                    ; $7164: $6E
    ld h, l                                       ; $7165: $65
    ld [hl], h                                    ; $7166: $74
    ld l, b                                       ; $7167: $68
    ld h, l                                       ; $7168: $65
    ld l, h                                       ; $7169: $6C
    ld h, l                                       ; $716A: $65
    ld [hl], e                                    ; $716B: $73

jr_026_716C:
    ld [hl], e                                    ; $716C: $73
    ld l, $2E                                     ; $716D: $2E $2E
    ld l, $FE                                     ; $716F: $2E $FE
    ld l, a                                       ; $7171: $6F
    ld l, [hl]                                    ; $7172: $6E
    ld h, l                                       ; $7173: $65
    jr nz, @+$6A                                  ; $7174: $20 $68

    ld h, c                                       ; $7176: $61
    ld [hl], e                                    ; $7177: $73
    rst $38                                       ; $7178: $FF
    ld h, c                                       ; $7179: $61
    ld [hl], b                                    ; $717A: $70
    ld [hl], b                                    ; $717B: $70
    ld h, l                                       ; $717C: $65
    ld h, c                                       ; $717D: $61
    ld [hl], d                                    ; $717E: $72
    ld h, l                                       ; $717F: $65
    ld h, h                                       ; $7180: $64
    inc l                                         ; $7181: $2C
    jr nz, jr_026_71E5                            ; $7182: $20 $61

    ld l, [hl]                                    ; $7184: $6E
    ld h, h                                       ; $7185: $64
    cp $69                                        ; $7186: $FE $69
    ld [hl], h                                    ; $7188: $74
    jr nz, jr_026_71F4                            ; $7189: $20 $69

    ld [hl], e                                    ; $718B: $73
    jr nz, jr_026_71EF                            ; $718C: $20 $61

    ld l, [hl]                                    ; $718E: $6E
    rst $38                                       ; $718F: $FF
    ld h, l                                       ; $7190: $65
    ld a, b                                       ; $7191: $78

jr_026_7192:
    ld [hl], h                                    ; $7192: $74

jr_026_7193:
    ld [hl], d                                    ; $7193: $72
    ld h, l                                       ; $7194: $65
    ld l, l                                       ; $7195: $6D
    ld h, l                                       ; $7196: $65
    ld l, h                                       ; $7197: $6C
    ld a, c                                       ; $7198: $79
    cp $70                                        ; $7199: $FE $70
    ld l, a                                       ; $719B: $6F
    ld [hl], a                                    ; $719C: $77
    ld h, l                                       ; $719D: $65

jr_026_719E:
    ld [hl], d                                    ; $719E: $72
    ld h, [hl]                                    ; $719F: $66
    ld [hl], l                                    ; $71A0: $75
    ld l, h                                       ; $71A1: $6C
    jr nz, jr_026_7213                            ; $71A2: $20 $6F

    ld l, [hl]                                    ; $71A4: $6E
    ld h, l                                       ; $71A5: $65
    ld l, $FF                                     ; $71A6: $2E $FF
    ld b, c                                       ; $71A8: $41
    ld [hl], e                                    ; $71A9: $73

jr_026_71AA:
    jr nz, jr_026_7223                            ; $71AA: $20 $77

    ld l, c                                       ; $71AC: $69
    ld [hl], h                                    ; $71AD: $74
    ld l, b                                       ; $71AE: $68
    jr nz, jr_026_7212                            ; $71AF: $20 $61

    ld l, h                                       ; $71B1: $6C
    ld l, h                                       ; $71B2: $6C
    jr nz, jr_026_7229                            ; $71B3: $20 $74

    ld l, b                                       ; $71B5: $68
    ld h, l                                       ; $71B6: $65
    cp $6F                                        ; $71B7: $FE $6F
    ld [hl], h                                    ; $71B9: $74
    ld l, b                                       ; $71BA: $68
    ld h, l                                       ; $71BB: $65
    ld [hl], d                                    ; $71BC: $72
    ld [hl], e                                    ; $71BD: $73
    inc l                                         ; $71BE: $2C
    rst $38                                       ; $71BF: $FF
    ld b, c                                       ; $71C0: $41
    ld [hl], d                                    ; $71C1: $72

jr_026_71C2:
    ld h, h                                       ; $71C2: $64
    ld h, l                                       ; $71C3: $65
    ld [hl], d                                    ; $71C4: $72
    ld l, c                                       ; $71C5: $69
    ld h, c                                       ; $71C6: $61
    ld l, h                                       ; $71C7: $6C
    jr nz, jr_026_7217                            ; $71C8: $20 $4D

    ld h, c                                       ; $71CA: $61
    ld h, a                                       ; $71CB: $67
    ld l, c                                       ; $71CC: $69
    cp $63                                        ; $71CD: $FE $63
    ld h, c                                       ; $71CF: $61
    ld l, [hl]                                    ; $71D0: $6E
    ld l, [hl]                                    ; $71D1: $6E
    ld l, a                                       ; $71D2: $6F
    ld [hl], h                                    ; $71D3: $74
    jr nz, @+$67                                  ; $71D4: $20 $65

    ld l, [hl]                                    ; $71D6: $6E
    ld [hl], h                                    ; $71D7: $74
    ld h, l                                       ; $71D8: $65
    ld [hl], d                                    ; $71D9: $72
    rst $38                                       ; $71DA: $FF
    ld l, c                                       ; $71DB: $69
    ld [hl], h                                    ; $71DC: $74
    ld l, $20                                     ; $71DD: $2E $20
    ld d, h                                       ; $71DF: $54
    ld l, b                                       ; $71E0: $68
    ld l, c                                       ; $71E1: $69
    ld [hl], e                                    ; $71E2: $73
    jr nz, jr_026_724E                            ; $71E3: $20 $69

jr_026_71E5:
    ld [hl], e                                    ; $71E5: $73
    jr nz, jr_026_725F                            ; $71E6: $20 $77

    ld l, b                                       ; $71E8: $68
    ld a, c                                       ; $71E9: $79
    cp $77                                        ; $71EA: $FE $77
    ld h, l                                       ; $71EC: $65
    jr nz, jr_026_7257                            ; $71ED: $20 $68

jr_026_71EF:
    ld h, c                                       ; $71EF: $61
    halt                                          ; $71F0: $76
    ld h, l                                       ; $71F1: $65
    jr nz, jr_026_7268                            ; $71F2: $20 $74

jr_026_71F4:
    ld l, a                                       ; $71F4: $6F
    rst $38                                       ; $71F5: $FF
    ld [hl], h                                    ; $71F6: $74
    ld h, c                                       ; $71F7: $61
    ld l, e                                       ; $71F8: $6B
    ld h, l                                       ; $71F9: $65
    jr nz, jr_026_7275                            ; $71FA: $20 $79

    ld l, a                                       ; $71FC: $6F
    ld [hl], l                                    ; $71FD: $75
    ld l, $FE                                     ; $71FE: $2E $FE
    ld d, b                                       ; $7200: $50
    ld l, h                                       ; $7201: $6C
    ld h, l                                       ; $7202: $65
    ld h, c                                       ; $7203: $61
    ld [hl], e                                    ; $7204: $73
    ld h, l                                       ; $7205: $65
    inc l                                         ; $7206: $2C
    jr nz, @+$7B                                  ; $7207: $20 $79

    ld l, a                                       ; $7209: $6F
    ld [hl], l                                    ; $720A: $75
    rst $38                                       ; $720B: $FF
    ld l, l                                       ; $720C: $6D
    ld [hl], l                                    ; $720D: $75
    ld [hl], e                                    ; $720E: $73
    ld [hl], h                                    ; $720F: $74
    jr nz, @+$6A                                  ; $7210: $20 $68

jr_026_7212:
    ld h, l                                       ; $7212: $65

jr_026_7213:
    ld l, h                                       ; $7213: $6C
    ld [hl], b                                    ; $7214: $70
    jr nz, jr_026_728C                            ; $7215: $20 $75

jr_026_7217:
    ld [hl], e                                    ; $7217: $73
    ld hl, $FDFE                                  ; $7218: $21 $FE $FD
    sbc e                                         ; $721B: $9B
    ld a, b                                       ; $721C: $78
    ld [hl], b                                    ; $721D: $70
    sbc a                                         ; $721E: $9F
    ld c, c                                       ; $721F: $49
    jr nz, jr_026_7295                            ; $7220: $20 $73

    ld h, l                                       ; $7222: $65

jr_026_7223:
    ld h, l                                       ; $7223: $65
    ld l, $FE                                     ; $7224: $2E $FE
    ld c, a                                       ; $7226: $4F
    ld l, e                                       ; $7227: $6B
    ld h, c                                       ; $7228: $61

jr_026_7229:
    ld a, c                                       ; $7229: $79
    inc l                                         ; $722A: $2C
    jr nz, @+$6E                                  ; $722B: $20 $6C

    ld h, l                                       ; $722D: $65
    ld [hl], h                                    ; $722E: $74

jr_026_722F:
    daa                                           ; $722F: $27
    ld [hl], e                                    ; $7230: $73
    rst $38                                       ; $7231: $FF
    ld h, a                                       ; $7232: $67
    ld l, a                                       ; $7233: $6F
    ld l, $FE                                     ; $7234: $2E $FE
    db $FD                                        ; $7236: $FD
    sbc d                                         ; $7237: $9A
    ld e, b                                       ; $7238: $58
    ld [$0242], sp                                ; $7239: $08 $42 $02
    nop                                           ; $723C: $00
    nop                                           ; $723D: $00
    nop                                           ; $723E: $00
    nop                                           ; $723F: $00
    jr nc, jr_026_722F                            ; $7240: $30 $ED

    ld d, [hl]                                    ; $7242: $56
    add hl, bc                                    ; $7243: $09
    dec h                                         ; $7244: $25
    nop                                           ; $7245: $00
    ld e, [hl]                                    ; $7246: $5E

jr_026_7247:
    ld [hl-], a                                   ; $7247: $32
    ld c, h                                       ; $7248: $4C
    inc hl                                        ; $7249: $23
    ld b, b                                       ; $724A: $40
    dec hl                                        ; $724B: $2B
    xor d                                         ; $724C: $AA
    dec a                                         ; $724D: $3D

jr_026_724E:
    db $D3                                        ; $724E: $D3
    rlca                                          ; $724F: $07
    ld [bc], a                                    ; $7250: $02
    xor d                                         ; $7251: $AA
    ld a, $D3                                     ; $7252: $3E $D3
    rlca                                          ; $7254: $07
    push de                                       ; $7255: $D5
    sbc e                                         ; $7256: $9B

jr_026_7257:
    xor c                                         ; $7257: $A9
    ld c, a                                       ; $7258: $4F
    sbc a                                         ; $7259: $9F
    ld c, [hl]                                    ; $725A: $4E
    ld l, a                                       ; $725B: $6F
    ld [hl], a                                    ; $725C: $77
    jr nz, @+$7B                                  ; $725D: $20 $79

jr_026_725F:
    ld l, a                                       ; $725F: $6F
    ld [hl], l                                    ; $7260: $75
    jr nz, jr_026_72DA                            ; $7261: $20 $77

    ld l, c                                       ; $7263: $69
    ld l, h                                       ; $7264: $6C
    ld l, h                                       ; $7265: $6C
    rst $38                                       ; $7266: $FF
    ld [hl], e                                    ; $7267: $73

jr_026_7268:
    ld h, l                                       ; $7268: $65
    ld h, l                                       ; $7269: $65
    jr nz, jr_026_72E0                            ; $726A: $20 $74

    ld l, b                                       ; $726C: $68
    ld h, l                                       ; $726D: $65
    jr nz, jr_026_72E4                            ; $726E: $20 $74

    ld [hl], d                                    ; $7270: $72
    ld [hl], l                                    ; $7271: $75
    ld h, l                                       ; $7272: $65
    cp $70                                        ; $7273: $FE $70

jr_026_7275:
    ld l, a                                       ; $7275: $6F
    ld [hl], a                                    ; $7276: $77
    ld h, l                                       ; $7277: $65
    ld [hl], d                                    ; $7278: $72
    jr nz, @+$4B                                  ; $7279: $20 $49

    jr nz, jr_026_72E5                            ; $727B: $20 $68

    ld l, a                                       ; $727D: $6F
    ld l, h                                       ; $727E: $6C
    ld h, h                                       ; $727F: $64
    ld hl, $FDFE                                  ; $7280: $21 $FE $FD
    sbc d                                         ; $7283: $9A
    ld l, $09                                     ; $7284: $2E $09
    dec h                                         ; $7286: $25
    ld l, $87                                     ; $7287: $2E $87
    nop                                           ; $7289: $00
    dec hl                                        ; $728A: $2B
    ld e, d                                       ; $728B: $5A

jr_026_728C:
    ld h, $9B                                     ; $728C: $26 $9B
    ld [hl], d                                    ; $728E: $72
    ld e, [hl]                                    ; $728F: $5E
    dec hl                                        ; $7290: $2B
    ld e, d                                       ; $7291: $5A
    ld h, $A9                                     ; $7292: $26 $A9
    ld [hl], d                                    ; $7294: $72

jr_026_7295:
    ld e, [hl]                                    ; $7295: $5E
    dec hl                                        ; $7296: $2B
    ld b, l                                       ; $7297: $45
    ld h, $8B                                     ; $7298: $26 $8B
    ld [hl], d                                    ; $729A: $72
    ld b, a                                       ; $729B: $47
    inc b                                         ; $729C: $04
    ld h, $C8                                     ; $729D: $26 $C8
    ld [hl], d                                    ; $729F: $72
    ld h, $18                                     ; $72A0: $26 $18
    ld [hl], e                                    ; $72A2: $73
    ld h, $18                                     ; $72A3: $26 $18
    ld [hl], e                                    ; $72A5: $73
    ld h, $72                                     ; $72A6: $26 $72
    ld [hl], e                                    ; $72A8: $73
    ld b, a                                       ; $72A9: $47
    rlca                                          ; $72AA: $07
    ld h, $C0                                     ; $72AB: $26 $C0
    ld [hl], d                                    ; $72AD: $72
    ld h, $C0                                     ; $72AE: $26 $C0
    ld [hl], d                                    ; $72B0: $72
    ld h, $C8                                     ; $72B1: $26 $C8
    ld [hl], d                                    ; $72B3: $72
    ld h, $02                                     ; $72B4: $26 $02
    ld [hl], e                                    ; $72B6: $73
    ld h, $10                                     ; $72B7: $26 $10
    ld [hl], e                                    ; $72B9: $73
    ld h, $10                                     ; $72BA: $26 $10
    ld [hl], e                                    ; $72BC: $73
    ld h, $6B                                     ; $72BD: $26 $6B
    ld [hl], e                                    ; $72BF: $73
    ld l, $09                                     ; $72C0: $2E $09
    dec h                                         ; $72C2: $25
    jr nc, jr_026_7247                            ; $72C3: $30 $82

    nop                                           ; $72C5: $00
    ld d, h                                       ; $72C6: $54
    ld b, d                                       ; $72C7: $42
    ld l, $09                                     ; $72C8: $2E $09
    dec h                                         ; $72CA: $25
    jr z, jr_026_733B                             ; $72CB: $28 $6E

    nop                                           ; $72CD: $00
    ld b, e                                       ; $72CE: $43
    ld d, $07                                     ; $72CF: $16 $07
    rrca                                          ; $72D1: $0F
    ld bc, $D0AF                                  ; $72D2: $01 $AF $D0
    dec b                                         ; $72D5: $05
    nop                                           ; $72D6: $00
    ld h, $02                                     ; $72D7: $26 $02
    ld [hl], e                                    ; $72D9: $73

jr_026_72DA:
    cpl                                           ; $72DA: $2F
    add hl, bc                                    ; $72DB: $09
    ld d, e                                       ; $72DC: $53
    ld e, a                                       ; $72DD: $5F
    ld b, $9B                                     ; $72DE: $06 $9B

jr_026_72E0:
    xor c                                         ; $72E0: $A9
    ld c, a                                       ; $72E1: $4F
    sbc a                                         ; $72E2: $9F
    ld b, d                                       ; $72E3: $42

jr_026_72E4:
    ld h, l                                       ; $72E4: $65

jr_026_72E5:
    ld [hl], h                                    ; $72E5: $74
    jr nz, jr_026_7361                            ; $72E6: $20 $79

    ld l, a                                       ; $72E8: $6F
    ld [hl], l                                    ; $72E9: $75
    jr nz, jr_026_734F                            ; $72EA: $20 $63

    ld h, c                                       ; $72EC: $61
    ld l, [hl]                                    ; $72ED: $6E
    daa                                           ; $72EE: $27
    ld [hl], h                                    ; $72EF: $74
    rst $38                                       ; $72F0: $FF
    ld l, b                                       ; $72F1: $68
    ld h, c                                       ; $72F2: $61
    ld l, [hl]                                    ; $72F3: $6E
    ld h, h                                       ; $72F4: $64
    ld l, h                                       ; $72F5: $6C
    ld h, l                                       ; $72F6: $65
    jr nz, jr_026_736D                            ; $72F7: $20 $74

    ld l, b                                       ; $72F9: $68
    ld l, c                                       ; $72FA: $69
    ld [hl], e                                    ; $72FB: $73
    ld hl, $FDFE                                  ; $72FC: $21 $FE $FD
    sbc d                                         ; $72FF: $9A
    ld d, h                                       ; $7300: $54
    ld b, d                                       ; $7301: $42
    cpl                                           ; $7302: $2F
    add hl, bc                                    ; $7303: $09
    ld h, l                                       ; $7304: $65
    ld e, [hl]                                    ; $7305: $5E
    nop                                           ; $7306: $00
    ld d, h                                       ; $7307: $54
    ld b, d                                       ; $7308: $42
    jr z, jr_026_7314                             ; $7309: $28 $09

    adc l                                         ; $730B: $8D
    ld [hl], c                                    ; $730C: $71
    db $10                                        ; $730D: $10
    ld d, h                                       ; $730E: $54
    ld b, d                                       ; $730F: $42
    ld l, $09                                     ; $7310: $2E $09
    ld c, [hl]                                    ; $7312: $4E
    dec l                                         ; $7313: $2D

jr_026_7314:
    ld [hl], e                                    ; $7314: $73
    nop                                           ; $7315: $00
    ld d, h                                       ; $7316: $54
    ld b, d                                       ; $7317: $42
    ld l, $09                                     ; $7318: $2E $09
    ld c, [hl]                                    ; $731A: $4E
    jr z, @+$70                                   ; $731B: $28 $6E

    nop                                           ; $731D: $00
    ld b, e                                       ; $731E: $43
    ld d, $07                                     ; $731F: $16 $07
    rrca                                          ; $7321: $0F
    ld bc, $D0AF                                  ; $7322: $01 $AF $D0
    dec b                                         ; $7325: $05
    nop                                           ; $7326: $00
    ld h, $02                                     ; $7327: $26 $02
    ld [hl], e                                    ; $7329: $73
    jr z, jr_026_7335                             ; $732A: $28 $09

    adc l                                         ; $732C: $8D
    ld [hl], c                                    ; $732D: $71
    db $10                                        ; $732E: $10
    add hl, bc                                    ; $732F: $09
    ld c, $0E                                     ; $7330: $0E $0E
    ld e, e                                       ; $7332: $5B
    ld a, a                                       ; $7333: $7F
    sbc e                                         ; $7334: $9B

jr_026_7335:
    xor c                                         ; $7335: $A9
    ld c, a                                       ; $7336: $4F
    sbc a                                         ; $7337: $9F
    ld c, c                                       ; $7338: $49
    jr nz, jr_026_73AB                            ; $7339: $20 $70

jr_026_733B:
    ld h, l                                       ; $733B: $65
    ld [hl], d                                    ; $733C: $72
    ld h, [hl]                                    ; $733D: $66
    ld h, l                                       ; $733E: $65
    ld h, e                                       ; $733F: $63
    ld [hl], h                                    ; $7340: $74
    ld h, l                                       ; $7341: $65
    ld h, h                                       ; $7342: $64
    rst $38                                       ; $7343: $FF
    ld [hl], h                                    ; $7344: $74
    ld l, b                                       ; $7345: $68
    ld l, c                                       ; $7346: $69
    ld [hl], e                                    ; $7347: $73
    jr nz, @+$76                                  ; $7348: $20 $74

    ld h, l                                       ; $734A: $65
    ld h, e                                       ; $734B: $63
    ld l, b                                       ; $734C: $68
    ld l, [hl]                                    ; $734D: $6E
    ld l, c                                       ; $734E: $69

jr_026_734F:
    ld [hl], c                                    ; $734F: $71
    ld [hl], l                                    ; $7350: $75
    ld h, l                                       ; $7351: $65
    cp $77                                        ; $7352: $FE $77
    ld l, b                                       ; $7354: $68
    ld l, c                                       ; $7355: $69
    ld l, h                                       ; $7356: $6C
    ld h, l                                       ; $7357: $65
    jr nz, jr_026_73CF                            ; $7358: $20 $75

    ld l, [hl]                                    ; $735A: $6E
    ld h, h                                       ; $735B: $64
    ld h, l                                       ; $735C: $65
    ld [hl], d                                    ; $735D: $72
    jr nz, jr_026_73C1                            ; $735E: $20 $61

    rst $38                                       ; $7360: $FF

jr_026_7361:
    ld [hl], d                                    ; $7361: $72
    ld l, a                                       ; $7362: $6F
    ld h, e                                       ; $7363: $63
    ld l, e                                       ; $7364: $6B
    ld hl, $FDFE                                  ; $7365: $21 $FE $FD
    sbc d                                         ; $7368: $9A
    ld d, h                                       ; $7369: $54
    ld b, d                                       ; $736A: $42
    cpl                                           ; $736B: $2F
    add hl, bc                                    ; $736C: $09

jr_026_736D:
    ld d, e                                       ; $736D: $53
    ld e, a                                       ; $736E: $5F
    ld b, $54                                     ; $736F: $06 $54
    ld b, d                                       ; $7371: $42
    jr z, @+$0B                                   ; $7372: $28 $09

    ld a, e                                       ; $7374: $7B
    ld [hl], d                                    ; $7375: $72
    ld c, $54                                     ; $7376: $0E $54
    ld b, d                                       ; $7378: $42
    sub e                                         ; $7379: $93
    ld l, d                                       ; $737A: $6A
    call nc, Call_026_697F                        ; $737B: $D4 $7F $69
    db $FC                                        ; $737E: $FC
    ld b, a                                       ; $737F: $47
    ld a, h                                       ; $7380: $7C
    dec bc                                        ; $7381: $0B
    nop                                           ; $7382: $00
    add d                                         ; $7383: $82
    sub h                                         ; $7384: $94
    ld b, d                                       ; $7385: $42
    xor h                                         ; $7386: $AC
    or d                                          ; $7387: $B2
    and d                                         ; $7388: $A2
    ld bc, $0F43                                  ; $7389: $01 $43 $0F
    inc b                                         ; $738C: $04
    dec b                                         ; $738D: $05
    jr jr_026_73B6                                ; $738E: $18 $26

    pop bc                                        ; $7390: $C1
    ld [hl], e                                    ; $7391: $73
    sub e                                         ; $7392: $93
    ld h, l                                       ; $7393: $65
    adc e                                         ; $7394: $8B
    ld c, e                                       ; $7395: $4B
    ld c, a                                       ; $7396: $4F
    ld l, b                                       ; $7397: $68
    ld a, b                                       ; $7398: $78
    ld a, a                                       ; $7399: $7F
    ld a, e                                       ; $739A: $7B
    rst $28                                       ; $739B: $EF
    ld h, l                                       ; $739C: $65
    ld a, h                                       ; $739D: $7C
    ld h, h                                       ; $739E: $64
    rst $10                                       ; $739F: $D7
    ld c, c                                       ; $73A0: $49
    ld l, c                                       ; $73A1: $69
    db $E4                                        ; $73A2: $E4
    ld c, c                                       ; $73A3: $49
    ld h, [hl]                                    ; $73A4: $66
    ret nz                                        ; $73A5: $C0

    ld e, h                                       ; $73A6: $5C
    ld hl, $000B                                  ; $73A7: $21 $0B $00
    nop                                           ; $73AA: $00

jr_026_73AB:
    add d                                         ; $73AB: $82
    rra                                           ; $73AC: $1F
    dec c                                         ; $73AD: $0D
    ld b, e                                       ; $73AE: $43
    inc d                                         ; $73AF: $14
    inc b                                         ; $73B0: $04
    dec b                                         ; $73B1: $05
    dec d                                         ; $73B2: $15
    ld h, $BF                                     ; $73B3: $26 $BF
    ld [hl], e                                    ; $73B5: $73

jr_026_73B6:
    ld a, a                                       ; $73B6: $7F
    ld d, e                                       ; $73B7: $53
    ret nc                                        ; $73B8: $D0

    dec b                                         ; $73B9: $05
    inc bc                                        ; $73BA: $03
    sbc d                                         ; $73BB: $9A
    ret nc                                        ; $73BC: $D0

    ld b, $0A                                     ; $73BD: $06 $0A
    sub h                                         ; $73BF: $94
    ld b, d                                       ; $73C0: $42

jr_026_73C1:
    sub e                                         ; $73C1: $93
    ld h, l                                       ; $73C2: $65
    adc e                                         ; $73C3: $8B
    ld c, e                                       ; $73C4: $4B
    ld c, a                                       ; $73C5: $4F
    ld l, b                                       ; $73C6: $68
    ld a, b                                       ; $73C7: $78
    ld a, a                                       ; $73C8: $7F
    ld a, e                                       ; $73C9: $7B
    rst $28                                       ; $73CA: $EF
    ld h, l                                       ; $73CB: $65
    ld a, h                                       ; $73CC: $7C
    ld h, h                                       ; $73CD: $64
    rst $10                                       ; $73CE: $D7

jr_026_73CF:
    ld c, c                                       ; $73CF: $49
    ld l, c                                       ; $73D0: $69
    db $E4                                        ; $73D1: $E4
    ld c, c                                       ; $73D2: $49
    ld h, [hl]                                    ; $73D3: $66
    ret nz                                        ; $73D4: $C0

    ld e, h                                       ; $73D5: $5C
    ld hl, $000B                                  ; $73D6: $21 $0B $00
    nop                                           ; $73D9: $00
    add d                                         ; $73DA: $82
    rra                                           ; $73DB: $1F
    dec c                                         ; $73DC: $0D
    ld l, a                                       ; $73DD: $6F
    rrca                                          ; $73DE: $0F
    rst $38                                       ; $73DF: $FF
    ld a, a                                       ; $73E0: $7F
    ld a, a                                       ; $73E1: $7F
    ld d, e                                       ; $73E2: $53
    ret nc                                        ; $73E3: $D0

jr_026_73E4:
    dec b                                         ; $73E4: $05
    inc bc                                        ; $73E5: $03

jr_026_73E6:
    sbc d                                         ; $73E6: $9A
    ret nc                                        ; $73E7: $D0

    ld b, $0A                                     ; $73E8: $06 $0A
    ld b, e                                       ; $73EA: $43
    ld a, [bc]                                    ; $73EB: $0A

jr_026_73EC:
    nop                                           ; $73EC: $00
    xor l                                         ; $73ED: $AD
    and c                                         ; $73EE: $A1
    ld bc, $FC26                                  ; $73EF: $01 $26 $FC
    ld [hl], e                                    ; $73F2: $73
    ld a, a                                       ; $73F3: $7F
    ld c, l                                       ; $73F4: $4D
    ret nc                                        ; $73F5: $D0

    ld bc, $4D04                                  ; $73F6: $01 $04 $4D
    ret nc                                        ; $73F9: $D0

    inc bc                                        ; $73FA: $03
    dec b                                         ; $73FB: $05
    sub h                                         ; $73FC: $94
    halt                                          ; $73FD: $76
    jr nz, @+$11                                  ; $73FE: $20 $0F

    ld b, d                                       ; $7400: $42
    rlca                                          ; $7401: $07
    nop                                           ; $7402: $00
    ld l, e                                       ; $7403: $6B
    ld c, d                                       ; $7404: $4A
    add hl, bc                                    ; $7405: $09
    nop                                           ; $7406: $00
    ld h, $22                                     ; $7407: $26 $22
    ld [hl], h                                    ; $7409: $74

jr_026_740A:
    dec b                                         ; $740A: $05
    ld [bc], a                                    ; $740B: $02
    ld l, e                                       ; $740C: $6B
    ld c, d                                       ; $740D: $4A
    ld b, $06                                     ; $740E: $06 $06
    sub [hl]                                      ; $7410: $96
    ret nc                                        ; $7411: $D0

    nop                                           ; $7412: $00
    ld de, $76A3                                  ; $7413: $11 $A3 $76
    ld [hl+], a                                   ; $7416: $22
    dec b                                         ; $7417: $05
    ld b, b                                       ; $7418: $40
    ld l, e                                       ; $7419: $6B
    inc b                                         ; $741A: $04
    dec c                                         ; $741B: $0D

jr_026_741C:
    ldh [$58], a                                  ; $741C: $E0 $58
    nop                                           ; $741E: $00
    add b                                         ; $741F: $80
    nop                                           ; $7420: $00
    ld b, d                                       ; $7421: $42

jr_026_7422:
    dec d                                         ; $7422: $15
    jr nz, jr_026_73E4                            ; $7423: $20 $BF

    ld d, b                                       ; $7425: $50
    db $10                                        ; $7426: $10
    jr nz, jr_026_7466                            ; $7427: $20 $3D

    ld d, b                                       ; $7429: $50
    db $10                                        ; $742A: $10
    jr nz, jr_026_73EC                            ; $742B: $20 $BF

    ld d, b                                       ; $742D: $50
    inc b                                         ; $742E: $04
    nop                                           ; $742F: $00
    dec bc                                        ; $7430: $0B
    ld [bc], a                                    ; $7431: $02
    ld b, b                                       ; $7432: $40
    jr nz, jr_026_748F                            ; $7433: $20 $5A

    ld h, $75                                     ; $7435: $26 $75
    halt                                          ; $7437: $76
    dec d                                         ; $7438: $15
    jr nz, jr_026_7422                            ; $7439: $20 $E7

    ld d, b                                       ; $743B: $50
    db $10                                        ; $743C: $10
    jr nz, jr_026_741C                            ; $743D: $20 $DD

    ld d, b                                       ; $743F: $50
    db $10                                        ; $7440: $10
    jr nz, @-$0D                                  ; $7441: $20 $F1

    ld d, b                                       ; $7443: $50
    db $10                                        ; $7444: $10
    jr nz, @-$21                                  ; $7445: $20 $DD

    ld d, b                                       ; $7447: $50
    db $10                                        ; $7448: $10
    jr nz, jr_026_740A                            ; $7449: $20 $BF

    ld d, b                                       ; $744B: $50
    nop                                           ; $744C: $00
    nop                                           ; $744D: $00
    ld e, e                                       ; $744E: $5B
    ld h, $71                                     ; $744F: $26 $71
    ld [hl], h                                    ; $7451: $74
    ld e, h                                       ; $7452: $5C
    nop                                           ; $7453: $00
    ld [bc], a                                    ; $7454: $02
    ld b, b                                       ; $7455: $40
    jr nc, jr_026_74B3                            ; $7456: $30 $5B

    ld h, $8C                                     ; $7458: $26 $8C
    ld [hl], h                                    ; $745A: $74
    ld e, h                                       ; $745B: $5C
    ld bc, $1502                                  ; $745C: $01 $02 $15
    jr nz, jr_026_73E6                            ; $745F: $20 $85

    ld d, h                                       ; $7461: $54
    jr nz, jr_026_7464                            ; $7462: $20 $00

jr_026_7464:
    ld l, [hl]                                    ; $7464: $6E

jr_026_7465:
    rrca                                          ; $7465: $0F

jr_026_7466:
    rst $38                                       ; $7466: $FF
    ld a, a                                       ; $7467: $7F
    halt                                          ; $7468: $76
    jr nz, jr_026_747A                            ; $7469: $20 $0F

    ld b, b                                       ; $746B: $40
    ld h, b                                       ; $746C: $60
    ld b, l                                       ; $746D: $45
    rra                                           ; $746E: $1F
    inc [hl]                                      ; $746F: $34

jr_026_7470:
    ld e, a                                       ; $7470: $5F
    sbc e                                         ; $7471: $9B
    ld a, b                                       ; $7472: $78
    ld [hl], b                                    ; $7473: $70
    sbc a                                         ; $7474: $9F
    ld d, a                                       ; $7475: $57
    ld l, b                                       ; $7476: $68
    ld h, c                                       ; $7477: $61
    ld [hl], h                                    ; $7478: $74
    daa                                           ; $7479: $27

jr_026_747A:
    ld [hl], e                                    ; $747A: $73
    jr nz, @+$69                                  ; $747B: $20 $67

    ld l, a                                       ; $747D: $6F
    ld l, c                                       ; $747E: $69
    ld l, [hl]                                    ; $747F: $6E
    ld h, a                                       ; $7480: $67
    rst $38                                       ; $7481: $FF
    ld l, a                                       ; $7482: $6F
    ld l, [hl]                                    ; $7483: $6E
    ccf                                           ; $7484: $3F
    cp $FD                                        ; $7485: $FE $FD
    sbc d                                         ; $7487: $9A
    ld e, h                                       ; $7488: $5C
    nop                                           ; $7489: $00
    ld [bc], a                                    ; $748A: $02
    ld b, d                                       ; $748B: $42
    sbc e                                         ; $748C: $9B
    ld a, b                                       ; $748D: $78
    ld [hl], b                                    ; $748E: $70

jr_026_748F:
    sbc a                                         ; $748F: $9F
    ld b, a                                       ; $7490: $47
    ld h, l                                       ; $7491: $65
    ld [hl], h                                    ; $7492: $74
    ld [hl], h                                    ; $7493: $74
    ld l, c                                       ; $7494: $69
    ld l, [hl]                                    ; $7495: $6E
    ld h, a                                       ; $7496: $67
    ld l, $2E                                     ; $7497: $2E $2E
    ld l, $2E                                     ; $7499: $2E $2E
    rst $38                                       ; $749B: $FF
    ld l, $2E                                     ; $749C: $2E $2E
    ld l, $2E                                     ; $749E: $2E $2E
    ld h, h                                       ; $74A0: $64
    ld l, c                                       ; $74A1: $69
    ld a, d                                       ; $74A2: $7A
    ld a, d                                       ; $74A3: $7A
    ld a, c                                       ; $74A4: $79
    ld l, $2E                                     ; $74A5: $2E $2E
    rst $38                                       ; $74A7: $FF
    db $FD                                        ; $74A8: $FD
    ld b, b                                       ; $74A9: $40
    jr nc, @-$64                                  ; $74AA: $30 $9A

    ld e, h                                       ; $74AC: $5C
    ld bc, $4202                                  ; $74AD: $01 $02 $42
    xor h                                         ; $74B0: $AC
    or d                                          ; $74B1: $B2
    and d                                         ; $74B2: $A2

jr_026_74B3:
    ld bc, $ADAF                                  ; $74B3: $01 $AF $AD
    and c                                         ; $74B6: $A1
    ld bc, $0007                                  ; $74B7: $01 $07 $00
    ld l, e                                       ; $74BA: $6B
    ld c, d                                       ; $74BB: $4A
    add hl, bc                                    ; $74BC: $09
    nop                                           ; $74BD: $00
    ld h, $43                                     ; $74BE: $26 $43
    halt                                          ; $74C0: $76
    ld e, d                                       ; $74C1: $5A
    ld h, $64                                     ; $74C2: $26 $64
    halt                                          ; $74C4: $76
    ld b, b                                       ; $74C5: $40
    ld d, b                                       ; $74C6: $50
    dec b                                         ; $74C7: $05
    ld [bc], a                                    ; $74C8: $02
    ld l, e                                       ; $74C9: $6B
    ld c, d                                       ; $74CA: $4A
    ld b, $06                                     ; $74CB: $06 $06
    sub [hl]                                      ; $74CD: $96
    ret nc                                        ; $74CE: $D0

    nop                                           ; $74CF: $00
    ld de, $7699                                  ; $74D0: $11 $99 $76
    ld [hl+], a                                   ; $74D3: $22
    dec b                                         ; $74D4: $05
    ld b, b                                       ; $74D5: $40
    ld l, e                                       ; $74D6: $6B
    inc bc                                        ; $74D7: $03
    dec c                                         ; $74D8: $0D
    or b                                          ; $74D9: $B0
    ld e, b                                       ; $74DA: $58
    nop                                           ; $74DB: $00
    add b                                         ; $74DC: $80
    nop                                           ; $74DD: $00
    ld l, e                                       ; $74DE: $6B
    jr nc, jr_026_7530                            ; $74DF: $30 $4F

    sbc a                                         ; $74E1: $9F
    ld d, l                                       ; $74E2: $55
    jr nc, jr_026_7465                            ; $74E3: $30 $80

    nop                                           ; $74E5: $00
    ld l, e                                       ; $74E6: $6B
    dec l                                         ; $74E7: $2D
    ld b, c                                       ; $74E8: $41
    ret nz                                        ; $74E9: $C0

    ld d, [hl]                                    ; $74EA: $56
    jr nc, jr_026_7470                            ; $74EB: $30 $83

    nop                                           ; $74ED: $00
    add hl, bc                                    ; $74EE: $09
    nop                                           ; $74EF: $00
    ld h, $5F                                     ; $74F0: $26 $5F
    halt                                          ; $74F2: $76
    ld b, b                                       ; $74F3: $40
    ld b, b                                       ; $74F4: $40
    ld d, b                                       ; $74F5: $50
    call $50C2                                    ; $74F6: $CD $C2 $50
    ld b, b                                       ; $74F9: $40
    inc bc                                        ; $74FA: $03
    ld b, b                                       ; $74FB: $40
    db $D2, $73, $50

    add sp, -$3E                                  ; $74FF: $E8 $C2
    ld d, b                                       ; $7501: $50
    ld b, b                                       ; $7502: $40
    inc sp                                        ; $7503: $33
    ld b, b                                       ; $7504: $40
    ld h, [hl]                                    ; $7505: $66
    ld [hl], e                                    ; $7506: $73
    ld d, b                                       ; $7507: $50
    inc bc                                        ; $7508: $03
    db $C3, $58, $50


    inc bc                                        ; $750C: $03
    ld b, b                                       ; $750D: $40
    inc hl                                        ; $750E: $23
    ld [hl], h                                    ; $750F: $74
    ld d, b                                       ; $7510: $50
    ld e, $C3                                     ; $7511: $1E $C3
    ld d, b                                       ; $7513: $50
    ld b, b                                       ; $7514: $40
    inc bc                                        ; $7515: $03
    ld b, b                                       ; $7516: $40
    inc hl                                        ; $7517: $23
    ld [hl], h                                    ; $7518: $74
    ld d, b                                       ; $7519: $50
    add hl, sp                                    ; $751A: $39
    jp $3A50                                      ; $751B: $C3 $50 $3A


    inc bc                                        ; $751E: $03
    ld b, b                                       ; $751F: $40
    inc hl                                        ; $7520: $23
    ld [hl], h                                    ; $7521: $74
    ld d, b                                       ; $7522: $50
    ld d, h                                       ; $7523: $54
    db $C3, $4A, $46


    inc bc                                        ; $7527: $03
    ld b, b                                       ; $7528: $40
    inc hl                                        ; $7529: $23
    ld [hl], h                                    ; $752A: $74
    ld d, b                                       ; $752B: $50
    ld l, a                                       ; $752C: $6F
    jp $3A56                                      ; $752D: $C3 $56 $3A


jr_026_7530:
    inc bc                                        ; $7530: $03
    ld b, b                                       ; $7531: $40
    inc hl                                        ; $7532: $23
    ld [hl], h                                    ; $7533: $74
    ld d, b                                       ; $7534: $50
    adc d                                         ; $7535: $8A
    jp $405A                                      ; $7536: $C3 $5A $40


    inc bc                                        ; $7539: $03
    ld b, b                                       ; $753A: $40
    inc hl                                        ; $753B: $23
    ld [hl], h                                    ; $753C: $74
    ld d, b                                       ; $753D: $50
    and l                                         ; $753E: $A5
    db $C3, $5A, $44


    inc bc                                        ; $7542: $03
    ld b, b                                       ; $7543: $40
    inc hl                                        ; $7544: $23
    ld [hl], h                                    ; $7545: $74
    ld d, b                                       ; $7546: $50
    ret nz                                        ; $7547: $C0

    jp $3A56                                      ; $7548: $C3 $56 $3A


    inc bc                                        ; $754B: $03
    ld b, b                                       ; $754C: $40
    inc hl                                        ; $754D: $23
    ld [hl], h                                    ; $754E: $74
    ld a, b                                       ; $754F: $78
    ret nz                                        ; $7550: $C0

    ld b, e                                       ; $7551: $43
    ld b, b                                       ; $7552: $40
    add a                                         ; $7553: $87
    ld a, c                                       ; $7554: $79
    add a                                         ; $7555: $87
    ld b, b                                       ; $7556: $40
    jr nz, @+$0D                                  ; $7557: $20 $0B

    inc c                                         ; $7559: $0C
    ld b, b                                       ; $755A: $40
    ld [bc], a                                    ; $755B: $02
    ld l, a                                       ; $755C: $6F
    ld b, $FF                                     ; $755D: $06 $FF
    ld a, a                                       ; $755F: $7F
    ld b, b                                       ; $7560: $40
    ld [bc], a                                    ; $7561: $02
    ld e, d                                       ; $7562: $5A
    ld h, $86                                     ; $7563: $26 $86
    halt                                          ; $7565: $76
    ld a, b                                       ; $7566: $78
    db $FC                                        ; $7567: $FC
    ld b, a                                       ; $7568: $47
    ld a, h                                       ; $7569: $7C
    ld b, $79                                     ; $756A: $06 $79
    ld b, $40                                     ; $756C: $06 $40
    ld bc, $0E0B                                  ; $756E: $01 $0B $0E
    ld b, b                                       ; $7571: $40
    ld [bc], a                                    ; $7572: $02
    dec bc                                        ; $7573: $0B
    rrca                                          ; $7574: $0F
    ld b, b                                       ; $7575: $40
    ld [bc], a                                    ; $7576: $02
    ld l, a                                       ; $7577: $6F
    ld b, $FF                                     ; $7578: $06 $FF
    ld a, a                                       ; $757A: $7F
    ld b, b                                       ; $757B: $40
    ld [bc], a                                    ; $757C: $02
    ld a, b                                       ; $757D: $78
    db $FC                                        ; $757E: $FC
    ld b, a                                       ; $757F: $47
    ld a, h                                       ; $7580: $7C
    ld b, $79                                     ; $7581: $06 $79
    ld b, $0B                                     ; $7583: $06 $0B
    db $10                                        ; $7585: $10
    ld b, b                                       ; $7586: $40
    ld b, $7F                                     ; $7587: $06 $7F
    ld c, l                                       ; $7589: $4D
    ret nc                                        ; $758A: $D0

    ld bc, $4D04                                  ; $758B: $01 $04 $4D
    ret nc                                        ; $758E: $D0

    inc bc                                        ; $758F: $03
    dec b                                         ; $7590: $05
    dec bc                                        ; $7591: $0B
    ld de, $0840                                  ; $7592: $11 $40 $08
    dec bc                                        ; $7595: $0B
    ld [de], a                                    ; $7596: $12
    ld b, b                                       ; $7597: $40
    ld a, [bc]                                    ; $7598: $0A
    dec bc                                        ; $7599: $0B
    inc de                                        ; $759A: $13
    ld e, d                                       ; $759B: $5A
    ld h, $75                                     ; $759C: $26 $75
    halt                                          ; $759E: $76
    ld b, b                                       ; $759F: $40
    db $10                                        ; $75A0: $10
    dec bc                                        ; $75A1: $0B
    inc d                                         ; $75A2: $14
    ld b, b                                       ; $75A3: $40
    jr @+$5C                                      ; $75A4: $18 $5A

    ld h, $64                                     ; $75A6: $26 $64
    halt                                          ; $75A8: $76
    dec bc                                        ; $75A9: $0B
    dec d                                         ; $75AA: $15
    ld b, b                                       ; $75AB: $40
    jr jr_026_75BA                                ; $75AC: $18 $0C

    ld c, $0C                                     ; $75AE: $0E $0C
    rrca                                          ; $75B0: $0F
    inc c                                         ; $75B1: $0C
    db $10                                        ; $75B2: $10
    inc c                                         ; $75B3: $0C
    ld de, $120C                                  ; $75B4: $11 $0C $12
    inc c                                         ; $75B7: $0C

jr_026_75B8:
    inc de                                        ; $75B8: $13
    inc c                                         ; $75B9: $0C

jr_026_75BA:
    inc d                                         ; $75BA: $14
    inc c                                         ; $75BB: $0C
    dec d                                         ; $75BC: $15
    ld d, b                                       ; $75BD: $50
    inc bc                                        ; $75BE: $03
    db $C3, $64, $40


    inc bc                                        ; $75C2: $03
    ld b, b                                       ; $75C3: $40
    inc hl                                        ; $75C4: $23
    ld [hl], h                                    ; $75C5: $74
    ld d, b                                       ; $75C6: $50
    ld e, $C3                                     ; $75C7: $1E $C3
    ld d, h                                       ; $75C9: $54
    ld b, h                                       ; $75CA: $44
    inc bc                                        ; $75CB: $03
    ld b, b                                       ; $75CC: $40
    inc hl                                        ; $75CD: $23
    ld [hl], h                                    ; $75CE: $74
    ld d, b                                       ; $75CF: $50
    add hl, sp                                    ; $75D0: $39
    db $C3, $54, $46


    inc bc                                        ; $75D4: $03
    ld b, b                                       ; $75D5: $40
    inc hl                                        ; $75D6: $23
    ld [hl], h                                    ; $75D7: $74
    ld d, b                                       ; $75D8: $50
    ld d, h                                       ; $75D9: $54
    db $C3, $64, $4A


    inc bc                                        ; $75DD: $03
    ld b, b                                       ; $75DE: $40
    inc hl                                        ; $75DF: $23
    ld [hl], h                                    ; $75E0: $74
    ld d, b                                       ; $75E1: $50
    ld l, a                                       ; $75E2: $6F

jr_026_75E3:
    db $C3, $64, $4E


    inc bc                                        ; $75E6: $03
    ld b, b                                       ; $75E7: $40
    inc hl                                        ; $75E8: $23
    ld [hl], h                                    ; $75E9: $74
    ld d, b                                       ; $75EA: $50
    adc d                                         ; $75EB: $8A
    db $C3, $54, $50


    inc bc                                        ; $75EF: $03
    ld b, b                                       ; $75F0: $40
    inc hl                                        ; $75F1: $23
    ld [hl], h                                    ; $75F2: $74
    ld d, b                                       ; $75F3: $50
    and l                                         ; $75F4: $A5
    db $C3, $66, $56


    inc bc                                        ; $75F8: $03
    ld b, b                                       ; $75F9: $40
    inc hl                                        ; $75FA: $23
    ld [hl], h                                    ; $75FB: $74
    ld d, b                                       ; $75FC: $50
    ret nz                                        ; $75FD: $C0
    db $C3, $52, $58


    inc bc                                        ; $7601: $03
    ld b, b                                       ; $7602: $40
    inc hl                                        ; $7603: $23
    ld [hl], h                                    ; $7604: $74

jr_026_7605:
    dec bc                                        ; $7605: $0B
    ld c, $40                                     ; $7606: $0E $40
    ld [$2B5A], sp                                ; $7608: $08 $5A $2B
    ld h, b                                       ; $760B: $60
    ld h, c                                       ; $760C: $61

jr_026_760D:
    dec bc                                        ; $760D: $0B
    rrca                                          ; $760E: $0F
    ld b, b                                       ; $760F: $40
    db $10                                        ; $7610: $10
    dec bc                                        ; $7611: $0B
    db $10                                        ; $7612: $10
    ld b, b                                       ; $7613: $40
    inc c                                         ; $7614: $0C
    dec bc                                        ; $7615: $0B
    ld de, $0840                                  ; $7616: $11 $40 $08
    dec bc                                        ; $7619: $0B
    ld [de], a                                    ; $761A: $12
    ld b, b                                       ; $761B: $40
    db $10                                        ; $761C: $10
    dec bc                                        ; $761D: $0B
    inc de                                        ; $761E: $13
    ld b, b                                       ; $761F: $40
    jr jr_026_762D                                ; $7620: $18 $0B

    inc d                                         ; $7622: $14
    ld b, b                                       ; $7623: $40
    db $10                                        ; $7624: $10
    dec bc                                        ; $7625: $0B
    dec d                                         ; $7626: $15
    ld b, b                                       ; $7627: $40
    jr jr_026_7635                                ; $7628: $18 $0B

    nop                                           ; $762A: $00
    ld a, b                                       ; $762B: $78
    ret nz                                        ; $762C: $C0

jr_026_762D:
    ld e, h                                       ; $762D: $5C
    ld hl, $7987                                  ; $762E: $21 $87 $79
    add a                                         ; $7631: $87
    ld b, b                                       ; $7632: $40
    jr nz, jr_026_75B8                            ; $7633: $20 $83

jr_026_7635:
    ld b, b                                       ; $7635: $40
    ld bc, $0000                                  ; $7636: $01 $00 $00
    rlca                                          ; $7639: $07
    nop                                           ; $763A: $00
    add c                                         ; $763B: $81
    ld e, l                                       ; $763C: $5D
    add hl, bc                                    ; $763D: $09
    nop                                           ; $763E: $00
    jr nz, @-$3F                                  ; $763F: $20 $BF

    ld d, b                                       ; $7641: $50
    ld b, d                                       ; $7642: $42
    dec d                                         ; $7643: $15
    jr nz, jr_026_7605                            ; $7644: $20 $BF

    ld d, b                                       ; $7646: $50
    db $10                                        ; $7647: $10
    jr nz, jr_026_7687                            ; $7648: $20 $3D

    ld d, b                                       ; $764A: $50
    db $10                                        ; $764B: $10
    jr nz, jr_026_760D                            ; $764C: $20 $BF

    ld d, b                                       ; $764E: $50
    db $10                                        ; $764F: $10
    jr nz, jr_026_75E3                            ; $7650: $20 $91

    ld d, b                                       ; $7652: $50
    jr jr_026_7675                                ; $7653: $18 $20

    cp a                                          ; $7655: $BF
    ld d, b                                       ; $7656: $50
    nop                                           ; $7657: $00
    nop                                           ; $7658: $00
    add e                                         ; $7659: $83
    jr nc, @+$01                                  ; $765A: $30 $FF

    nop                                           ; $765C: $00
    nop                                           ; $765D: $00
    add hl, de                                    ; $765E: $19
    inc d                                         ; $765F: $14
    jr nz, @-$3F                                  ; $7660: $20 $BF

    ld d, b                                       ; $7662: $50
    ld b, d                                       ; $7663: $42
    add e                                         ; $7664: $83
    ld bc, $0100                                  ; $7665: $01 $00 $01
    ld bc, $0001                                  ; $7668: $01 $01 $00
    ld bc, $FF00                                  ; $766B: $01 $00 $FF
    ld bc, $00FF                                  ; $766E: $01 $FF $00
    nop                                           ; $7671: $00
    ld b, [hl]                                    ; $7672: $46
    ld h, h                                       ; $7673: $64
    halt                                          ; $7674: $76

jr_026_7675:
    add e                                         ; $7675: $83
    ld bc, $0200                                  ; $7676: $01 $00 $02
    ld bc, $0002                                  ; $7679: $01 $02 $00
    ld bc, $FE00                                  ; $767C: $01 $00 $FE
    ld bc, $00FE                                  ; $767F: $01 $FE $00
    nop                                           ; $7682: $00
    ld b, [hl]                                    ; $7683: $46
    ld [hl], l                                    ; $7684: $75
    halt                                          ; $7685: $76
    add e                                         ; $7686: $83

jr_026_7687:
    ld bc, $0300                                  ; $7687: $01 $00 $03
    ld bc, $0003                                  ; $768A: $01 $03 $00
    ld bc, $FD00                                  ; $768D: $01 $00 $FD
    ld bc, $00FD                                  ; $7690: $01 $FD $00
    nop                                           ; $7693: $00
    ld b, [hl]                                    ; $7694: $46
    add [hl]                                      ; $7695: $86
    halt                                          ; $7696: $76
    add e                                         ; $7697: $83
    ld bc, $0400                                  ; $7698: $01 $00 $04
    ld bc, $0004                                  ; $769B: $01 $04 $00
    ld bc, $FC00                                  ; $769E: $01 $00 $FC
    ld bc, $00FC                                  ; $76A1: $01 $FC $00
    nop                                           ; $76A4: $00
    ld b, [hl]                                    ; $76A5: $46
    sub a                                         ; $76A6: $97
    halt                                          ; $76A7: $76
    xor h                                         ; $76A8: $AC
    or d                                          ; $76A9: $B2
    and d                                         ; $76AA: $A2
    ld bc, $6593                                  ; $76AB: $01 $93 $65
    adc e                                         ; $76AE: $8B
    ld c, e                                       ; $76AF: $4B
    ld c, a                                       ; $76B0: $4F
    ld l, b                                       ; $76B1: $68
    ld a, b                                       ; $76B2: $78
    ld a, a                                       ; $76B3: $7F
    ld a, e                                       ; $76B4: $7B
    rst $28                                       ; $76B5: $EF
    ld h, l                                       ; $76B6: $65
    ld a, h                                       ; $76B7: $7C
    ld h, h                                       ; $76B8: $64
    rst $10                                       ; $76B9: $D7
    ld c, c                                       ; $76BA: $49
    ld h, [hl]                                    ; $76BB: $66
    ret nz                                        ; $76BC: $C0

    ld e, h                                       ; $76BD: $5C
    ld hl, $0005                                  ; $76BE: $21 $05 $00
    ld l, e                                       ; $76C1: $6B
    ld c, d                                       ; $76C2: $4A
    ld a, [bc]                                    ; $76C3: $0A
    ld b, $9A                                     ; $76C4: $06 $9A
    ret nc                                        ; $76C6: $D0

    nop                                           ; $76C7: $00
    ld h, $20                                     ; $76C8: $26 $20
    ld [hl], a                                    ; $76CA: $77
    ld [hl+], a                                   ; $76CB: $22
    dec b                                         ; $76CC: $05
    ld b, b                                       ; $76CD: $40
    dec b                                         ; $76CE: $05
    ld [bc], a                                    ; $76CF: $02
    ld l, e                                       ; $76D0: $6B
    ld c, d                                       ; $76D1: $4A
    inc c                                         ; $76D2: $0C
    ld b, $9C                                     ; $76D3: $06 $9C
    ret nc                                        ; $76D5: $D0

    jr nc, jr_026_76FE                            ; $76D6: $30 $26

    ld a, a                                       ; $76D8: $7F
    ld [hl], a                                    ; $76D9: $77
    ld [hl+], a                                   ; $76DA: $22
    dec b                                         ; $76DB: $05
    ld b, b                                       ; $76DC: $40
    dec b                                         ; $76DD: $05
    inc bc                                        ; $76DE: $03
    ld l, e                                       ; $76DF: $6B
    ld c, d                                       ; $76E0: $4A
    ld b, $06                                     ; $76E1: $06 $06
    sub [hl]                                      ; $76E3: $96
    ret nc                                        ; $76E4: $D0

    nop                                           ; $76E5: $00
    ld h, $BE                                     ; $76E6: $26 $BE
    ld [hl], a                                    ; $76E8: $77
    ld [hl+], a                                   ; $76E9: $22
    dec b                                         ; $76EA: $05
    ld b, b                                       ; $76EB: $40

jr_026_76EC:
    dec b                                         ; $76EC: $05
    ld [$4A6B], sp                                ; $76ED: $08 $6B $4A

jr_026_76F0:
    dec c                                         ; $76F0: $0D
    inc b                                         ; $76F1: $04
    ld l, l                                       ; $76F2: $6D
    ret nc                                        ; $76F3: $D0

    ld l, [hl]                                    ; $76F4: $6E
    db $10                                        ; $76F5: $10

jr_026_76F6:
    sub l                                         ; $76F6: $95
    ld d, a                                       ; $76F7: $57
    ld [hl+], a                                   ; $76F8: $22
    dec b                                         ; $76F9: $05
    ld b, b                                       ; $76FA: $40
    ld l, e                                       ; $76FB: $6B
    ld a, [hl+]                                   ; $76FC: $2A
    ld a, [bc]                                    ; $76FD: $0A

jr_026_76FE:
    ldh a, [$5E]                                  ; $76FE: $F0 $5E
    nop                                           ; $7700: $00
    add e                                         ; $7701: $83
    nop                                           ; $7702: $00
    ld l, e                                       ; $7703: $6B
    jr nc, @+$0D                                  ; $7704: $30 $0B

jr_026_7706:
    ld d, b                                       ; $7706: $50
    ld a, d                                       ; $7707: $7A
    nop                                           ; $7708: $00
    add b                                         ; $7709: $80
    nop                                           ; $770A: $00
    ld l, e                                       ; $770B: $6B
    ld bc, $000A                                  ; $770C: $01 $0A $00
    ld d, a                                       ; $770F: $57
    ldh [$86], a                                  ; $7710: $E0 $86
    nop                                           ; $7712: $00
    dec bc                                        ; $7713: $0B
    nop                                           ; $7714: $00
    dec bc                                        ; $7715: $0B
    ld [bc], a                                    ; $7716: $02
    dec bc                                        ; $7717: $0B
    inc bc                                        ; $7718: $03
    add h                                         ; $7719: $84
    add hl, bc                                    ; $771A: $09
    ld b, $1F                                     ; $771B: $06 $1F
    dec c                                         ; $771D: $0D
    sub h                                         ; $771E: $94
    ld b, d                                       ; $771F: $42
    dec d                                         ; $7720: $15
    jr nz, jr_026_7770                            ; $7721: $20 $4D

    ld d, b                                       ; $7723: $50
    inc b                                         ; $7724: $04
    jr nz, jr_026_76F0                            ; $7725: $20 $C9

    ld d, b                                       ; $7727: $50
    nop                                           ; $7728: $00

jr_026_7729:
    nop                                           ; $7729: $00
    inc d                                         ; $772A: $14
    jr nz, jr_026_76F6                            ; $772B: $20 $C9

    ld d, b                                       ; $772D: $50

jr_026_772E:
    ld h, b                                       ; $772E: $60
    ld [bc], a                                    ; $772F: $02
    ld d, [hl]                                    ; $7730: $56
    inc bc                                        ; $7731: $03
    dec d                                         ; $7732: $15
    jr nz, jr_026_76FE                            ; $7733: $20 $C9

    ld d, b                                       ; $7735: $50
    ld c, b                                       ; $7736: $48
    jr nz, @-$11                                  ; $7737: $20 $ED

    ld c, a                                       ; $7739: $4F
    db $10                                        ; $773A: $10
    jr nz, jr_026_7706                            ; $773B: $20 $C9

    ld d, b                                       ; $773D: $50
    jr jr_026_7760                                ; $773E: $18 $20

    db $DD                                        ; $7740: $DD
    ld d, b                                       ; $7741: $50
    nop                                           ; $7742: $00
    nop                                           ; $7743: $00
    ld d, [hl]                                    ; $7744: $56
    inc b                                         ; $7745: $04
    ld e, h                                       ; $7746: $5C
    nop                                           ; $7747: $00
    inc bc                                        ; $7748: $03
    inc d                                         ; $7749: $14
    jr nz, jr_026_7729                            ; $774A: $20 $DD

    ld d, b                                       ; $774C: $50
    ld e, h                                       ; $774D: $5C
    ld bc, $1502                                  ; $774E: $01 $02 $15
    jr nz, jr_026_76EC                            ; $7751: $20 $99

    ld d, h                                       ; $7753: $54
    inc d                                         ; $7754: $14
    jr nz, jr_026_77CE                            ; $7755: $20 $77

    ld d, b                                       ; $7757: $50
    ld [$C920], sp                                ; $7758: $08 $20 $C9
    ld d, b                                       ; $775B: $50
    jr nc, jr_026_777E                            ; $775C: $30 $20

    dec l                                         ; $775E: $2D
    ld d, b                                       ; $775F: $50

jr_026_7760:
    stop                                          ; $7760: $10 $00
    inc d                                         ; $7762: $14
    jr nz, jr_026_772E                            ; $7763: $20 $C9

    ld d, b                                       ; $7765: $50
    ld h, d                                       ; $7766: $62
    inc b                                         ; $7767: $04
    dec d                                         ; $7768: $15
    jr nz, @-$35                                  ; $7769: $20 $C9

    ld d, b                                       ; $776B: $50
    inc h                                         ; $776C: $24
    jr nz, jr_026_772E                            ; $776D: $20 $BF

    ld d, b                                       ; $776F: $50

jr_026_7770:
    ld [$0C00], sp                                ; $7770: $08 $00 $0C
    ld [$2015], sp                                ; $7773: $08 $15 $20
    add l                                         ; $7776: $85
    ld d, h                                       ; $7777: $54
    ld [$C920], sp                                ; $7778: $08 $20 $C9
    ld d, b                                       ; $777B: $50
    nop                                           ; $777C: $00
    nop                                           ; $777D: $00

jr_026_777E:
    ld b, d                                       ; $777E: $42
    dec d                                         ; $777F: $15
    ld c, $03                                     ; $7780: $0E $03
    ld [hl], d                                    ; $7782: $72
    inc b                                         ; $7783: $04
    ld c, $57                                     ; $7784: $0E $57
    ld [hl], d                                    ; $7786: $72
    nop                                           ; $7787: $00
    nop                                           ; $7788: $00
    ld e, d                                       ; $7789: $5A
    ld h, $82                                     ; $778A: $26 $82
    ld a, b                                       ; $778C: $78
    inc d                                         ; $778D: $14
    ld c, $57                                     ; $778E: $0E $57
    ld [hl], d                                    ; $7790: $72
    ld h, b                                       ; $7791: $60
    inc bc                                        ; $7792: $03
    dec d                                         ; $7793: $15
    ld c, $57                                     ; $7794: $0E $57
    ld [hl], d                                    ; $7796: $72
    inc e                                         ; $7797: $1C
    nop                                           ; $7798: $00
    ld e, d                                       ; $7799: $5A
    ld h, $73                                     ; $779A: $26 $73
    ld a, b                                       ; $779C: $78
    ld a, a                                       ; $779D: $7F
    sbc e                                         ; $779E: $9B
    ret nc                                        ; $779F: $D0

    inc bc                                        ; $77A0: $03
    ld [bc], a                                    ; $77A1: $02
    sbc e                                         ; $77A2: $9B
    ret nc                                        ; $77A3: $D0

    ld b, $0B                                     ; $77A4: $06 $0B
    ld b, b                                       ; $77A6: $40
    db $10                                        ; $77A7: $10
    ld a, a                                       ; $77A8: $7F
    ld d, e                                       ; $77A9: $53
    ret nc                                        ; $77AA: $D0

    dec b                                         ; $77AB: $05
    inc bc                                        ; $77AC: $03
    sbc d                                         ; $77AD: $9A
    ret nc                                        ; $77AE: $D0

    ld b, $0A                                     ; $77AF: $06 $0A
    ld b, b                                       ; $77B1: $40
    jr nz, jr_026_77C9                            ; $77B2: $20 $15

    ld c, $B3                                     ; $77B4: $0E $B3
    ld [hl], d                                    ; $77B6: $72
    jr nc, jr_026_77B9                            ; $77B7: $30 $00

jr_026_77B9:
    ld e, h                                       ; $77B9: $5C
    nop                                           ; $77BA: $00
    inc bc                                        ; $77BB: $03
    add hl, de                                    ; $77BC: $19
    ld b, d                                       ; $77BD: $42
    dec d                                         ; $77BE: $15
    ld c, $42                                     ; $77BF: $0E $42
    ld a, [hl]                                    ; $77C1: $7E
    inc b                                         ; $77C2: $04
    ld c, $A0                                     ; $77C3: $0E $A0
    ld a, [hl]                                    ; $77C5: $7E
    nop                                           ; $77C6: $00
    nop                                           ; $77C7: $00
    ld d, [hl]                                    ; $77C8: $56

jr_026_77C9:
    ld [bc], a                                    ; $77C9: $02
    ld h, b                                       ; $77CA: $60
    inc b                                         ; $77CB: $04
    ld d, $0E                                     ; $77CC: $16 $0E

jr_026_77CE:
    ld [hl-], a                                   ; $77CE: $32
    ld a, [hl]                                    ; $77CF: $7E
    jr nz, @+$01                                  ; $77D0: $20 $FF

    nop                                           ; $77D2: $00
    nop                                           ; $77D3: $00
    inc d                                         ; $77D4: $14
    ld c, $C8                                     ; $77D5: $0E $C8
    ld a, [hl]                                    ; $77D7: $7E
    ld e, h                                       ; $77D8: $5C
    nop                                           ; $77D9: $00
    inc bc                                        ; $77DA: $03
    dec d                                         ; $77DB: $15
    ld c, $12                                     ; $77DC: $0E $12
    ld a, [hl]                                    ; $77DE: $7E
    ld [$C80E], sp                                ; $77DF: $08 $0E $C8
    ld a, [hl]                                    ; $77E2: $7E
    stop                                          ; $77E3: $10 $00
    dec b                                         ; $77E5: $05
    inc b                                         ; $77E6: $04
    ld l, e                                       ; $77E7: $6B
    ld c, d                                       ; $77E8: $4A
    ld [de], a                                    ; $77E9: $12
    ld b, $A2                                     ; $77EA: $06 $A2
    ret nc                                        ; $77EC: $D0

    jr nc, jr_026_7815                            ; $77ED: $30 $26

    ld b, c                                       ; $77EF: $41
    ld a, b                                       ; $77F0: $78
    ld [hl+], a                                   ; $77F1: $22
    dec b                                         ; $77F2: $05
    ld b, b                                       ; $77F3: $40
    ld l, e                                       ; $77F4: $6B
    inc l                                         ; $77F5: $2C
    ld a, [bc]                                    ; $77F6: $0A
    or b                                          ; $77F7: $B0
    ld c, b                                       ; $77F8: $48
    nop                                           ; $77F9: $00
    add e                                         ; $77FA: $83
    nop                                           ; $77FB: $00
    ld l, e                                       ; $77FC: $6B
    ld c, $0D                                     ; $77FD: $0E $0D
    ld [hl], b                                    ; $77FF: $70
    ld d, b                                       ; $7800: $50
    nop                                           ; $7801: $00
    add [hl]                                      ; $7802: $86
    nop                                           ; $7803: $00
    dec d                                         ; $7804: $15
    ld c, $42                                     ; $7805: $0E $42
    ld a, [hl]                                    ; $7807: $7E
    inc b                                         ; $7808: $04
    ld c, $72                                     ; $7809: $0E $72
    ld a, [hl]                                    ; $780B: $7E
    ld [$5C00], sp                                ; $780C: $08 $00 $5C
    ld bc, $1502                                  ; $780F: $01 $02 $15
    ld c, $72                                     ; $7812: $0E $72
    ld a, [hl]                                    ; $7814: $7E

jr_026_7815:
    ld c, $0E                                     ; $7815: $0E $0E
    ret z                                         ; $7817: $C8

    ld a, [hl]                                    ; $7818: $7E
    jr nz, jr_026_781B                            ; $7819: $20 $00

jr_026_781B:
    dec bc                                        ; $781B: $0B
    inc b                                         ; $781C: $04
    ld e, e                                       ; $781D: $5B
    ld h, $43                                     ; $781E: $26 $43
    ld l, e                                       ; $7820: $6B
    ld b, b                                       ; $7821: $40
    jr c, jr_026_787A                             ; $7822: $38 $56

    ld a, [bc]                                    ; $7824: $0A
    ld h, d                                       ; $7825: $62
    inc b                                         ; $7826: $04
    add e                                         ; $7827: $83
    db $10                                        ; $7828: $10
    cp $00                                        ; $7829: $FE $00
    nop                                           ; $782B: $00
    inc d                                         ; $782C: $14
    ld c, $96                                     ; $782D: $0E $96
    ld a, [hl]                                    ; $782F: $7E
    ld e, e                                       ; $7830: $5B
    ld h, $70                                     ; $7831: $26 $70
    ld l, h                                       ; $7833: $6C
    ld h, d                                       ; $7834: $62
    dec b                                         ; $7835: $05
    ld sp, $9426                                  ; $7836: $31 $26 $94
    ld a, b                                       ; $7839: $78
    ld [hl+], a                                   ; $783A: $22
    adc $40                                       ; $783B: $CE $40
    ld b, l                                       ; $783D: $45
    ld h, $3B                                     ; $783E: $26 $3B
    ld [hl], d                                    ; $7840: $72
    ld h, d                                       ; $7841: $62
    inc bc                                        ; $7842: $03
    dec d                                         ; $7843: $15
    ld c, $B0                                     ; $7844: $0E $B0
    ld d, e                                       ; $7846: $53
    inc b                                         ; $7847: $04
    ld c, $D0                                     ; $7848: $0E $D0
    ld d, e                                       ; $784A: $53
    jr nz, jr_026_784D                            ; $784B: $20 $00

jr_026_784D:
    inc d                                         ; $784D: $14
    ld c, $04                                     ; $784E: $0E $04
    ld d, h                                       ; $7850: $54
    add e                                         ; $7851: $83
    db $10                                        ; $7852: $10
    ld [bc], a                                    ; $7853: $02
    nop                                           ; $7854: $00
    nop                                           ; $7855: $00
    ld b, b                                       ; $7856: $40
    db $10                                        ; $7857: $10
    ld d, [hl]                                    ; $7858: $56
    dec b                                         ; $7859: $05
    ld e, e                                       ; $785A: $5B
    ld h, $2F                                     ; $785B: $26 $2F
    ld l, h                                       ; $785D: $6C
    ld h, d                                       ; $785E: $62
    inc b                                         ; $785F: $04
    dec bc                                        ; $7860: $0B
    ld [$0587], sp                                ; $7861: $08 $87 $05
    dec b                                         ; $7864: $05
    rst $38                                       ; $7865: $FF
    add a                                         ; $7866: $87
    dec b                                         ; $7867: $05
    dec b                                         ; $7868: $05
    rst $38                                       ; $7869: $FF
    add a                                         ; $786A: $87
    dec b                                         ; $786B: $05
    dec b                                         ; $786C: $05
    rst $38                                       ; $786D: $FF
    add a                                         ; $786E: $87
    dec b                                         ; $786F: $05
    dec b                                         ; $7870: $05
    rst $38                                       ; $7871: $FF
    ld b, d                                       ; $7872: $42
    add e                                         ; $7873: $83
    ld [bc], a                                    ; $7874: $02
    nop                                           ; $7875: $00
    inc bc                                        ; $7876: $03
    ld [bc], a                                    ; $7877: $02
    inc bc                                        ; $7878: $03
    nop                                           ; $7879: $00

jr_026_787A:
    ld [bc], a                                    ; $787A: $02
    nop                                           ; $787B: $00
    db $FD                                        ; $787C: $FD
    ld [bc], a                                    ; $787D: $02
    db $FD                                        ; $787E: $FD
    nop                                           ; $787F: $00
    nop                                           ; $7880: $00
    ld b, d                                       ; $7881: $42
    add e                                         ; $7882: $83
    jr nz, jr_026_7887                            ; $7883: $20 $02

    nop                                           ; $7885: $00
    nop                                           ; $7886: $00

jr_026_7887:
    ld b, d                                       ; $7887: $42
    add e                                         ; $7888: $83

jr_026_7889:
    jr nc, jr_026_7889                            ; $7889: $30 $FE

    nop                                           ; $788B: $00
    nop                                           ; $788C: $00
    ld b, d                                       ; $788D: $42
    add e                                         ; $788E: $83
    jr nc, jr_026_7893                            ; $788F: $30 $02

    nop                                           ; $7891: $00
    nop                                           ; $7892: $00

jr_026_7893:
    ld b, d                                       ; $7893: $42
    sub e                                         ; $7894: $93
    ld h, l                                       ; $7895: $65
    adc e                                         ; $7896: $8B
    ld c, e                                       ; $7897: $4B
    ld c, a                                       ; $7898: $4F
    ld l, b                                       ; $7899: $68
    ld a, b                                       ; $789A: $78
    ld a, a                                       ; $789B: $7F
    ld a, e                                       ; $789C: $7B
    rst $28                                       ; $789D: $EF
    ld h, l                                       ; $789E: $65
    ld a, h                                       ; $789F: $7C
    ld h, h                                       ; $78A0: $64
    rst $10                                       ; $78A1: $D7
    ld c, c                                       ; $78A2: $49
    ld h, [hl]                                    ; $78A3: $66
    ret nz                                        ; $78A4: $C0

    ld e, h                                       ; $78A5: $5C
    ld hl, $0005                                  ; $78A6: $21 $05 $00
    ld l, e                                       ; $78A9: $6B
    ld c, d                                       ; $78AA: $4A
    ld [$9806], sp                                ; $78AB: $08 $06 $98
    ret nc                                        ; $78AE: $D0

    nop                                           ; $78AF: $00
    ld h, $02                                     ; $78B0: $26 $02
    ld a, c                                       ; $78B2: $79
    ld [hl+], a                                   ; $78B3: $22
    dec b                                         ; $78B4: $05
    ld b, b                                       ; $78B5: $40
    dec b                                         ; $78B6: $05
    inc bc                                        ; $78B7: $03
    ld l, e                                       ; $78B8: $6B
    ld c, d                                       ; $78B9: $4A
    ld a, [bc]                                    ; $78BA: $0A
    ld b, $9A                                     ; $78BB: $06 $9A
    ret nc                                        ; $78BD: $D0

    ld a, $26                                     ; $78BE: $3E $26
    add c                                         ; $78C0: $81
    ld a, c                                       ; $78C1: $79
    ld [hl+], a                                   ; $78C2: $22
    dec b                                         ; $78C3: $05
    ld b, b                                       ; $78C4: $40
    dec b                                         ; $78C5: $05
    inc b                                         ; $78C6: $04
    ld l, e                                       ; $78C7: $6B
    ld c, d                                       ; $78C8: $4A
    rrca                                          ; $78C9: $0F
    ld b, $9F                                     ; $78CA: $06 $9F
    ret nc                                        ; $78CC: $D0

    nop                                           ; $78CD: $00
    ld h, $9A                                     ; $78CE: $26 $9A
    ld a, c                                       ; $78D0: $79
    ld [hl+], a                                   ; $78D1: $22

jr_026_78D2:
    dec b                                         ; $78D2: $05
    ld b, b                                       ; $78D3: $40
    ld l, e                                       ; $78D4: $6B
    jr nc, jr_026_78E2                            ; $78D5: $30 $0B

    ld d, b                                       ; $78D7: $50
    ld a, d                                       ; $78D8: $7A
    ldh [$83], a                                  ; $78D9: $E0 $83
    nop                                           ; $78DB: $00
    ld l, e                                       ; $78DC: $6B
    inc l                                         ; $78DD: $2C
    ld a, [bc]                                    ; $78DE: $0A
    or b                                          ; $78DF: $B0
    ld c, b                                       ; $78E0: $48
    nop                                           ; $78E1: $00

jr_026_78E2:
    add b                                         ; $78E2: $80
    nop                                           ; $78E3: $00
    ld l, e                                       ; $78E4: $6B
    ld c, $0D                                     ; $78E5: $0E $0D
    ld [hl], b                                    ; $78E7: $70
    ld d, b                                       ; $78E8: $50
    nop                                           ; $78E9: $00
    add e                                         ; $78EA: $83
    nop                                           ; $78EB: $00
    dec bc                                        ; $78EC: $0B
    nop                                           ; $78ED: $00
    dec bc                                        ; $78EE: $0B

jr_026_78EF:
    inc bc                                        ; $78EF: $03
    dec bc                                        ; $78F0: $0B
    inc b                                         ; $78F1: $04
    add h                                         ; $78F2: $84
    add hl, bc                                    ; $78F3: $09
    rlca                                          ; $78F4: $07
    rra                                           ; $78F5: $1F
    dec c                                         ; $78F6: $0D
    ld a, a                                       ; $78F7: $7F
    ld d, e                                       ; $78F8: $53
    ret nc                                        ; $78F9: $D0

    dec b                                         ; $78FA: $05
    inc bc                                        ; $78FB: $03
    sbc d                                         ; $78FC: $9A
    ret nc                                        ; $78FD: $D0

    ld b, $0A                                     ; $78FE: $06 $0A
    sub h                                         ; $7900: $94

jr_026_7901:
    ld b, d                                       ; $7901: $42
    dec d                                         ; $7902: $15
    jr nz, jr_026_7952                            ; $7903: $20 $4D

    ld d, b                                       ; $7905: $50
    inc b                                         ; $7906: $04
    jr nz, jr_026_78D2                            ; $7907: $20 $C9

    ld d, b                                       ; $7909: $50
    ld [$5C00], sp                                ; $790A: $08 $00 $5C
    nop                                           ; $790D: $00
    inc bc                                        ; $790E: $03
    ld b, b                                       ; $790F: $40
    ld h, b                                       ; $7910: $60
    dec d                                         ; $7911: $15

jr_026_7912:
    jr nz, jr_026_7901                            ; $7912: $20 $ED

    ld c, a                                       ; $7914: $4F
    jr nz, jr_026_7937                            ; $7915: $20 $20

    ret                                           ; $7917: $C9


    ld d, b                                       ; $7918: $50
    nop                                           ; $7919: $00
    nop                                           ; $791A: $00
    ld h, d                                       ; $791B: $62
    ld [bc], a                                    ; $791C: $02
    dec d                                         ; $791D: $15

jr_026_791E:
    jr nz, jr_026_794D                            ; $791E: $20 $2D

    ld d, b                                       ; $7920: $50
    ld [$C920], sp                                ; $7921: $08 $20 $C9
    ld d, b                                       ; $7924: $50
    jr nc, jr_026_7947                            ; $7925: $30 $20

    xor e                                         ; $7927: $AB
    ld d, b                                       ; $7928: $50
    jr nc, jr_026_794B                            ; $7929: $30 $20

    ret                                           ; $792B: $C9


    ld d, b                                       ; $792C: $50
    jr nz, jr_026_794F                            ; $792D: $20 $20

    xor e                                         ; $792F: $AB
    ld d, b                                       ; $7930: $50
    jr nz, jr_026_7953                            ; $7931: $20 $20

    ret                                           ; $7933: $C9


    ld d, b                                       ; $7934: $50
    jr nz, jr_026_7957                            ; $7935: $20 $20

jr_026_7937:
    xor e                                         ; $7937: $AB
    ld d, b                                       ; $7938: $50
    nop                                           ; $7939: $00
    nop                                           ; $793A: $00
    ld h, d                                       ; $793B: $62
    inc bc                                        ; $793C: $03
    dec d                                         ; $793D: $15
    jr nz, jr_026_795D                            ; $793E: $20 $1D

    ld d, b                                       ; $7940: $50
    inc b                                         ; $7941: $04
    jr nz, jr_026_78EF                            ; $7942: $20 $AB

    ld d, b                                       ; $7944: $50
    jr nc, jr_026_7967                            ; $7945: $30 $20

jr_026_7947:
    ret                                           ; $7947: $C9


jr_026_7948:
    ld d, b                                       ; $7948: $50
    jr nz, jr_026_796B                            ; $7949: $20 $20

jr_026_794B:
    xor e                                         ; $794B: $AB
    ld d, b                                       ; $794C: $50

jr_026_794D:
    nop                                           ; $794D: $00
    nop                                           ; $794E: $00

jr_026_794F:
    ld e, h                                       ; $794F: $5C
    nop                                           ; $7950: $00
    ld [bc], a                                    ; $7951: $02

jr_026_7952:
    inc d                                         ; $7952: $14

jr_026_7953:
    jr nz, jr_026_791E                            ; $7953: $20 $C9

    ld d, b                                       ; $7955: $50
    ld h, b                                       ; $7956: $60

jr_026_7957:
    inc d                                         ; $7957: $14
    ld d, [hl]                                    ; $7958: $56
    ld c, $40                                     ; $7959: $0E $40
    jr nz, jr_026_7972                            ; $795B: $20 $15

jr_026_795D:
    jr nz, jr_026_7912                            ; $795D: $20 $B3

    ld c, a                                       ; $795F: $4F
    ld b, $20                                     ; $7960: $06 $20
    xor e                                         ; $7962: $AB
    ld d, b                                       ; $7963: $50
    ld [$C920], sp                                ; $7964: $08 $20 $C9

jr_026_7967:
    ld d, b                                       ; $7967: $50
    inc c                                         ; $7968: $0C
    jr nz, jr_026_7948                            ; $7969: $20 $DD

jr_026_796B:
    ld d, b                                       ; $796B: $50
    ld b, $00                                     ; $796C: $06 $00
    ld d, $20                                     ; $796E: $16 $20
    ld h, a                                       ; $7970: $67
    ld d, c                                       ; $7971: $51

jr_026_7972:
    jr nz, jr_026_7974                            ; $7972: $20 $00

jr_026_7974:
    rst $38                                       ; $7974: $FF
    nop                                           ; $7975: $00
    dec d                                         ; $7976: $15
    jr nz, jr_026_79E0                            ; $7977: $20 $67

    ld d, c                                       ; $7979: $51
    jr z, jr_026_797C                             ; $797A: $28 $00

jr_026_797C:
    ld b, l                                       ; $797C: $45
    rla                                           ; $797D: $17
    ei                                            ; $797E: $FB
    ld [hl], c                                    ; $797F: $71
    ld b, d                                       ; $7980: $42
    inc d                                         ; $7981: $14
    ld c, $96                                     ; $7982: $0E $96
    ld a, [hl]                                    ; $7984: $7E
    ld d, [hl]                                    ; $7985: $56
    rlca                                          ; $7986: $07
    ld e, e                                       ; $7987: $5B
    ld h, $0F                                     ; $7988: $26 $0F
    ld l, l                                       ; $798A: $6D
    ld h, d                                       ; $798B: $62
    ld b, $24                                     ; $798C: $06 $24
    ld d, b                                       ; $798E: $50
    dec d                                         ; $798F: $15
    ld c, $B1                                     ; $7990: $0E $B1
    ld a, a                                       ; $7992: $7F
    ld b, b                                       ; $7993: $40
    nop                                           ; $7994: $00
    ld e, h                                       ; $7995: $5C
    nop                                           ; $7996: $00
    inc bc                                        ; $7997: $03
    add hl, de                                    ; $7998: $19
    ld b, d                                       ; $7999: $42
    dec d                                         ; $799A: $15
    ld c, $B0                                     ; $799B: $0E $B0
    ld d, e                                       ; $799D: $53
    inc b                                         ; $799E: $04
    ld c, $04                                     ; $799F: $0E $04
    ld d, h                                       ; $79A1: $54
    nop                                           ; $79A2: $00
    nop                                           ; $79A3: $00
    ld e, h                                       ; $79A4: $5C
    nop                                           ; $79A5: $00
    inc bc                                        ; $79A6: $03
    ld b, b                                       ; $79A7: $40
    ld [$0505], sp                                ; $79A8: $08 $05 $05
    ld l, e                                       ; $79AB: $6B
    ld c, d                                       ; $79AC: $4A
    rrca                                          ; $79AD: $0F
    nop                                           ; $79AE: $00

jr_026_79AF:
    rrca                                          ; $79AF: $0F
    ret nc                                        ; $79B0: $D0

    ld c, $26                                     ; $79B1: $0E $26
    db $FD                                        ; $79B3: $FD
    ld a, c                                       ; $79B4: $79
    ld [hl+], a                                   ; $79B5: $22
    dec b                                         ; $79B6: $05
    ld b, b                                       ; $79B7: $40
    dec b                                         ; $79B8: $05
    ld b, $6B                                     ; $79B9: $06 $6B
    ld c, d                                       ; $79BB: $4A
    ld a, [bc]                                    ; $79BC: $0A
    ld bc, $D022                                  ; $79BD: $01 $22 $D0
    ld c, $26                                     ; $79C0: $0E $26
    ld [hl], $7A                                  ; $79C2: $36 $7A
    ld [hl+], a                                   ; $79C4: $22
    dec b                                         ; $79C5: $05
    ld b, b                                       ; $79C6: $40
    ld l, e                                       ; $79C7: $6B
    ld [hl], $0D                                  ; $79C8: $36 $0D
    nop                                           ; $79CA: $00
    ld b, b                                       ; $79CB: $40
    ldh [$83], a                                  ; $79CC: $E0 $83
    nop                                           ; $79CE: $00
    add e                                         ; $79CF: $83
    jr jr_026_79D4                                ; $79D0: $18 $02

    nop                                           ; $79D2: $00
    nop                                           ; $79D3: $00

jr_026_79D4:
    ld e, e                                       ; $79D4: $5B
    ld h, $5A                                     ; $79D5: $26 $5A
    ld l, l                                       ; $79D7: $6D
    ld h, d                                       ; $79D8: $62
    rlca                                          ; $79D9: $07
    dec bc                                        ; $79DA: $0B
    dec b                                         ; $79DB: $05
    ld b, b                                       ; $79DC: $40
    dec hl                                        ; $79DD: $2B
    rra                                           ; $79DE: $1F
    rra                                           ; $79DF: $1F

jr_026_79E0:
    dec de                                        ; $79E0: $1B
    add hl, bc                                    ; $79E1: $09
    dec d                                         ; $79E2: $15
    ld c, $F9                                     ; $79E3: $0E $F9
    ld d, h                                       ; $79E5: $54
    db $10                                        ; $79E6: $10
    ld c, $00                                     ; $79E7: $0E $00
    ld d, l                                       ; $79E9: $55
    jr jr_026_79EC                                ; $79EA: $18 $00

jr_026_79EC:
    ld e, e                                       ; $79EC: $5B
    ld h, $B5                                     ; $79ED: $26 $B5
    ld l, l                                       ; $79EF: $6D
    ld b, b                                       ; $79F0: $40
    add b                                         ; $79F1: $80
    ld e, d                                       ; $79F2: $5A
    dec e                                         ; $79F3: $1D
    db $D2, $51, $40

    ld h, b                                       ; $79F7: $60
    ld e, d                                       ; $79F8: $5A
    dec hl                                        ; $79F9: $2B
    ld h, b                                       ; $79FA: $60
    ld h, c                                       ; $79FB: $61
    ld b, d                                       ; $79FC: $42
    dec d                                         ; $79FD: $15
    jr nz, jr_026_79AF                            ; $79FE: $20 $AF

    ld h, [hl]                                    ; $7A00: $66
    dec b                                         ; $7A01: $05
    jr nz, jr_026_7A83                            ; $7A02: $20 $7F

    ld h, [hl]                                    ; $7A04: $66
    ld b, $20                                     ; $7A05: $06 $20
    ld b, c                                       ; $7A07: $41
    ld h, a                                       ; $7A08: $67
    ld d, h                                       ; $7A09: $54
    jr nz, jr_026_7A17                            ; $7A0A: $20 $0B

    ld h, [hl]                                    ; $7A0C: $66
    jr jr_026_7A2F                                ; $7A0D: $18 $20

    ld d, l                                       ; $7A0F: $55
    ld h, [hl]                                    ; $7A10: $66
    nop                                           ; $7A11: $00
    nop                                           ; $7A12: $00
    dec bc                                        ; $7A13: $0B
    ld b, $62                                     ; $7A14: $06 $62
    inc b                                         ; $7A16: $04

jr_026_7A17:
    ld e, h                                       ; $7A17: $5C

jr_026_7A18:
    nop                                           ; $7A18: $00
    ld [bc], a                                    ; $7A19: $02
    dec d                                         ; $7A1A: $15
    jr nz, jr_026_7A28                            ; $7A1B: $20 $0B

    ld h, [hl]                                    ; $7A1D: $66
    jr nz, jr_026_7A40                            ; $7A1E: $20 $20

    ld d, l                                       ; $7A20: $55
    ld h, [hl]                                    ; $7A21: $66
    nop                                           ; $7A22: $00
    nop                                           ; $7A23: $00
    ld h, d                                       ; $7A24: $62
    ld [$1456], sp                                ; $7A25: $08 $56 $14

jr_026_7A28:
    ld b, b                                       ; $7A28: $40
    db $10                                        ; $7A29: $10
    dec d                                         ; $7A2A: $15
    jr nz, jr_026_7A18                            ; $7A2B: $20 $EB

    ld h, l                                       ; $7A2D: $65
    and b                                         ; $7A2E: $A0

jr_026_7A2F:
    jr nz, jr_026_7A5C                            ; $7A2F: $20 $2B

    ld h, [hl]                                    ; $7A31: $66
    nop                                           ; $7A32: $00
    nop                                           ; $7A33: $00
    add hl, de                                    ; $7A34: $19
    ld b, d                                       ; $7A35: $42
    dec d                                         ; $7A36: $15
    jr nz, jr_026_7A74                            ; $7A37: $20 $3B

    ld h, [hl]                                    ; $7A39: $66
    jr z, jr_026_7A5C                             ; $7A3A: $28 $20

    ei                                            ; $7A3C: $FB
    ld h, l                                       ; $7A3D: $65
    jr nz, jr_026_7A60                            ; $7A3E: $20 $20

jr_026_7A40:
    dec sp                                        ; $7A40: $3B
    ld h, [hl]                                    ; $7A41: $66
    nop                                           ; $7A42: $00
    nop                                           ; $7A43: $00

jr_026_7A44:
    ld h, b                                       ; $7A44: $60
    ld c, $15                                     ; $7A45: $0E $15
    jr nz, jr_026_7A44                            ; $7A47: $20 $FB

    ld h, l                                       ; $7A49: $65
    ld [hl+], a                                   ; $7A4A: $22
    nop                                           ; $7A4B: $00

jr_026_7A4C:
    ld d, [hl]                                    ; $7A4C: $56
    ld a, [bc]                                    ; $7A4D: $0A
    dec d                                         ; $7A4E: $15
    jr nz, jr_026_7A4C                            ; $7A4F: $20 $FB

    ld h, l                                       ; $7A51: $65
    db $10                                        ; $7A52: $10
    jr nz, jr_026_7A60                            ; $7A53: $20 $0B

    ld h, [hl]                                    ; $7A55: $66
    ld [$EB20], sp                                ; $7A56: $08 $20 $EB
    ld h, l                                       ; $7A59: $65
    and b                                         ; $7A5A: $A0
    nop                                           ; $7A5B: $00

jr_026_7A5C:
    add hl, de                                    ; $7A5C: $19
    ld b, d                                       ; $7A5D: $42
    nop                                           ; $7A5E: $00
    nop                                           ; $7A5F: $00

jr_026_7A60:
    nop                                           ; $7A60: $00
    nop                                           ; $7A61: $00
    nop                                           ; $7A62: $00
    nop                                           ; $7A63: $00
    nop                                           ; $7A64: $00
    nop                                           ; $7A65: $00
    nop                                           ; $7A66: $00
    nop                                           ; $7A67: $00
    nop                                           ; $7A68: $00
    nop                                           ; $7A69: $00
    nop                                           ; $7A6A: $00
    nop                                           ; $7A6B: $00
    nop                                           ; $7A6C: $00
    nop                                           ; $7A6D: $00
    nop                                           ; $7A6E: $00
    nop                                           ; $7A6F: $00
    nop                                           ; $7A70: $00
    nop                                           ; $7A71: $00
    nop                                           ; $7A72: $00
    nop                                           ; $7A73: $00

jr_026_7A74:
    nop                                           ; $7A74: $00
    nop                                           ; $7A75: $00
    nop                                           ; $7A76: $00
    nop                                           ; $7A77: $00
    nop                                           ; $7A78: $00
    nop                                           ; $7A79: $00
    nop                                           ; $7A7A: $00
    nop                                           ; $7A7B: $00
    nop                                           ; $7A7C: $00
    nop                                           ; $7A7D: $00
    nop                                           ; $7A7E: $00
    nop                                           ; $7A7F: $00
    nop                                           ; $7A80: $00
    nop                                           ; $7A81: $00
    nop                                           ; $7A82: $00

jr_026_7A83:
    nop                                           ; $7A83: $00
    nop                                           ; $7A84: $00
    nop                                           ; $7A85: $00
    nop                                           ; $7A86: $00
    nop                                           ; $7A87: $00
    nop                                           ; $7A88: $00
    nop                                           ; $7A89: $00
    nop                                           ; $7A8A: $00
    nop                                           ; $7A8B: $00
    nop                                           ; $7A8C: $00
    nop                                           ; $7A8D: $00
    nop                                           ; $7A8E: $00
    nop                                           ; $7A8F: $00
    nop                                           ; $7A90: $00
    nop                                           ; $7A91: $00
    nop                                           ; $7A92: $00
    nop                                           ; $7A93: $00
    nop                                           ; $7A94: $00
    nop                                           ; $7A95: $00
    nop                                           ; $7A96: $00
    nop                                           ; $7A97: $00
    nop                                           ; $7A98: $00
    nop                                           ; $7A99: $00
    nop                                           ; $7A9A: $00
    nop                                           ; $7A9B: $00
    nop                                           ; $7A9C: $00
    nop                                           ; $7A9D: $00
    nop                                           ; $7A9E: $00
    nop                                           ; $7A9F: $00
    nop                                           ; $7AA0: $00
    nop                                           ; $7AA1: $00
    nop                                           ; $7AA2: $00
    nop                                           ; $7AA3: $00
    nop                                           ; $7AA4: $00
    nop                                           ; $7AA5: $00
    nop                                           ; $7AA6: $00
    nop                                           ; $7AA7: $00
    nop                                           ; $7AA8: $00
    nop                                           ; $7AA9: $00
    nop                                           ; $7AAA: $00
    nop                                           ; $7AAB: $00
    nop                                           ; $7AAC: $00
    nop                                           ; $7AAD: $00
    nop                                           ; $7AAE: $00
    nop                                           ; $7AAF: $00
    nop                                           ; $7AB0: $00
    nop                                           ; $7AB1: $00
    nop                                           ; $7AB2: $00
    nop                                           ; $7AB3: $00
    nop                                           ; $7AB4: $00
    nop                                           ; $7AB5: $00
    nop                                           ; $7AB6: $00
    nop                                           ; $7AB7: $00
    nop                                           ; $7AB8: $00
    nop                                           ; $7AB9: $00
    nop                                           ; $7ABA: $00
    nop                                           ; $7ABB: $00
    nop                                           ; $7ABC: $00
    nop                                           ; $7ABD: $00
    nop                                           ; $7ABE: $00
    nop                                           ; $7ABF: $00
    nop                                           ; $7AC0: $00
    nop                                           ; $7AC1: $00
    nop                                           ; $7AC2: $00
    nop                                           ; $7AC3: $00
    nop                                           ; $7AC4: $00
    nop                                           ; $7AC5: $00
    nop                                           ; $7AC6: $00
    nop                                           ; $7AC7: $00
    nop                                           ; $7AC8: $00
    nop                                           ; $7AC9: $00
    nop                                           ; $7ACA: $00
    nop                                           ; $7ACB: $00
    nop                                           ; $7ACC: $00
    nop                                           ; $7ACD: $00
    nop                                           ; $7ACE: $00
    nop                                           ; $7ACF: $00
    nop                                           ; $7AD0: $00
    nop                                           ; $7AD1: $00
    nop                                           ; $7AD2: $00
    nop                                           ; $7AD3: $00
    nop                                           ; $7AD4: $00
    nop                                           ; $7AD5: $00
    nop                                           ; $7AD6: $00
    nop                                           ; $7AD7: $00
    nop                                           ; $7AD8: $00
    nop                                           ; $7AD9: $00
    nop                                           ; $7ADA: $00
    nop                                           ; $7ADB: $00
    nop                                           ; $7ADC: $00
    nop                                           ; $7ADD: $00
    nop                                           ; $7ADE: $00
    nop                                           ; $7ADF: $00
    nop                                           ; $7AE0: $00
    nop                                           ; $7AE1: $00
    nop                                           ; $7AE2: $00
    nop                                           ; $7AE3: $00
    nop                                           ; $7AE4: $00
    nop                                           ; $7AE5: $00
    nop                                           ; $7AE6: $00
    nop                                           ; $7AE7: $00
    nop                                           ; $7AE8: $00
    nop                                           ; $7AE9: $00
    nop                                           ; $7AEA: $00
    nop                                           ; $7AEB: $00
    nop                                           ; $7AEC: $00
    nop                                           ; $7AED: $00
    nop                                           ; $7AEE: $00
    nop                                           ; $7AEF: $00
    nop                                           ; $7AF0: $00
    nop                                           ; $7AF1: $00
    nop                                           ; $7AF2: $00
    nop                                           ; $7AF3: $00
    nop                                           ; $7AF4: $00
    nop                                           ; $7AF5: $00
    nop                                           ; $7AF6: $00
    nop                                           ; $7AF7: $00
    nop                                           ; $7AF8: $00
    nop                                           ; $7AF9: $00
    nop                                           ; $7AFA: $00
    nop                                           ; $7AFB: $00
    nop                                           ; $7AFC: $00
    nop                                           ; $7AFD: $00
    nop                                           ; $7AFE: $00
    nop                                           ; $7AFF: $00
    nop                                           ; $7B00: $00
    nop                                           ; $7B01: $00
    nop                                           ; $7B02: $00
    nop                                           ; $7B03: $00
    nop                                           ; $7B04: $00
    nop                                           ; $7B05: $00
    nop                                           ; $7B06: $00
    nop                                           ; $7B07: $00
    nop                                           ; $7B08: $00
    nop                                           ; $7B09: $00
    nop                                           ; $7B0A: $00
    nop                                           ; $7B0B: $00
    nop                                           ; $7B0C: $00
    nop                                           ; $7B0D: $00
    nop                                           ; $7B0E: $00
    nop                                           ; $7B0F: $00
    nop                                           ; $7B10: $00
    nop                                           ; $7B11: $00
    nop                                           ; $7B12: $00
    nop                                           ; $7B13: $00
    nop                                           ; $7B14: $00
    nop                                           ; $7B15: $00
    nop                                           ; $7B16: $00
    nop                                           ; $7B17: $00
    nop                                           ; $7B18: $00
    nop                                           ; $7B19: $00
    nop                                           ; $7B1A: $00
    nop                                           ; $7B1B: $00
    nop                                           ; $7B1C: $00
    nop                                           ; $7B1D: $00
    nop                                           ; $7B1E: $00
    nop                                           ; $7B1F: $00
    nop                                           ; $7B20: $00
    nop                                           ; $7B21: $00
    nop                                           ; $7B22: $00
    nop                                           ; $7B23: $00
    nop                                           ; $7B24: $00
    nop                                           ; $7B25: $00
    nop                                           ; $7B26: $00
    nop                                           ; $7B27: $00
    nop                                           ; $7B28: $00
    nop                                           ; $7B29: $00
    nop                                           ; $7B2A: $00
    nop                                           ; $7B2B: $00
    nop                                           ; $7B2C: $00
    nop                                           ; $7B2D: $00
    nop                                           ; $7B2E: $00
    nop                                           ; $7B2F: $00
    nop                                           ; $7B30: $00
    nop                                           ; $7B31: $00
    nop                                           ; $7B32: $00
    nop                                           ; $7B33: $00
    nop                                           ; $7B34: $00
    nop                                           ; $7B35: $00
    nop                                           ; $7B36: $00
    nop                                           ; $7B37: $00
    nop                                           ; $7B38: $00
    nop                                           ; $7B39: $00
    nop                                           ; $7B3A: $00
    nop                                           ; $7B3B: $00
    nop                                           ; $7B3C: $00
    nop                                           ; $7B3D: $00
    nop                                           ; $7B3E: $00
    nop                                           ; $7B3F: $00
    nop                                           ; $7B40: $00
    nop                                           ; $7B41: $00
    nop                                           ; $7B42: $00
    nop                                           ; $7B43: $00
    nop                                           ; $7B44: $00
    nop                                           ; $7B45: $00
    nop                                           ; $7B46: $00
    nop                                           ; $7B47: $00
    nop                                           ; $7B48: $00
    nop                                           ; $7B49: $00
    nop                                           ; $7B4A: $00
    nop                                           ; $7B4B: $00
    nop                                           ; $7B4C: $00
    nop                                           ; $7B4D: $00
    nop                                           ; $7B4E: $00
    nop                                           ; $7B4F: $00
    nop                                           ; $7B50: $00
    nop                                           ; $7B51: $00
    nop                                           ; $7B52: $00
    nop                                           ; $7B53: $00
    nop                                           ; $7B54: $00
    nop                                           ; $7B55: $00
    nop                                           ; $7B56: $00
    nop                                           ; $7B57: $00
    nop                                           ; $7B58: $00
    nop                                           ; $7B59: $00
    nop                                           ; $7B5A: $00
    nop                                           ; $7B5B: $00
    nop                                           ; $7B5C: $00
    nop                                           ; $7B5D: $00
    nop                                           ; $7B5E: $00
    nop                                           ; $7B5F: $00
    nop                                           ; $7B60: $00
    nop                                           ; $7B61: $00
    nop                                           ; $7B62: $00
    nop                                           ; $7B63: $00
    nop                                           ; $7B64: $00
    nop                                           ; $7B65: $00
    nop                                           ; $7B66: $00
    nop                                           ; $7B67: $00
    nop                                           ; $7B68: $00
    nop                                           ; $7B69: $00
    nop                                           ; $7B6A: $00
    nop                                           ; $7B6B: $00
    nop                                           ; $7B6C: $00
    nop                                           ; $7B6D: $00
    nop                                           ; $7B6E: $00
    nop                                           ; $7B6F: $00
    nop                                           ; $7B70: $00
    nop                                           ; $7B71: $00
    nop                                           ; $7B72: $00
    nop                                           ; $7B73: $00
    nop                                           ; $7B74: $00
    nop                                           ; $7B75: $00
    nop                                           ; $7B76: $00
    nop                                           ; $7B77: $00
    nop                                           ; $7B78: $00
    nop                                           ; $7B79: $00
    nop                                           ; $7B7A: $00
    nop                                           ; $7B7B: $00
    nop                                           ; $7B7C: $00
    nop                                           ; $7B7D: $00
    nop                                           ; $7B7E: $00
    nop                                           ; $7B7F: $00
    nop                                           ; $7B80: $00
    nop                                           ; $7B81: $00
    nop                                           ; $7B82: $00
    nop                                           ; $7B83: $00
    nop                                           ; $7B84: $00
    nop                                           ; $7B85: $00
    nop                                           ; $7B86: $00
    nop                                           ; $7B87: $00
    nop                                           ; $7B88: $00
    nop                                           ; $7B89: $00
    nop                                           ; $7B8A: $00
    nop                                           ; $7B8B: $00
    nop                                           ; $7B8C: $00
    nop                                           ; $7B8D: $00
    nop                                           ; $7B8E: $00
    nop                                           ; $7B8F: $00
    nop                                           ; $7B90: $00
    nop                                           ; $7B91: $00
    nop                                           ; $7B92: $00
    nop                                           ; $7B93: $00
    nop                                           ; $7B94: $00
    nop                                           ; $7B95: $00
    nop                                           ; $7B96: $00
    nop                                           ; $7B97: $00
    nop                                           ; $7B98: $00
    nop                                           ; $7B99: $00
    nop                                           ; $7B9A: $00
    nop                                           ; $7B9B: $00
    nop                                           ; $7B9C: $00
    nop                                           ; $7B9D: $00
    nop                                           ; $7B9E: $00
    nop                                           ; $7B9F: $00
    nop                                           ; $7BA0: $00
    nop                                           ; $7BA1: $00
    nop                                           ; $7BA2: $00
    nop                                           ; $7BA3: $00
    nop                                           ; $7BA4: $00
    nop                                           ; $7BA5: $00
    nop                                           ; $7BA6: $00
    nop                                           ; $7BA7: $00
    nop                                           ; $7BA8: $00
    nop                                           ; $7BA9: $00
    nop                                           ; $7BAA: $00
    nop                                           ; $7BAB: $00
    nop                                           ; $7BAC: $00
    nop                                           ; $7BAD: $00
    nop                                           ; $7BAE: $00
    nop                                           ; $7BAF: $00
    nop                                           ; $7BB0: $00
    nop                                           ; $7BB1: $00
    nop                                           ; $7BB2: $00
    nop                                           ; $7BB3: $00
    nop                                           ; $7BB4: $00
    nop                                           ; $7BB5: $00
    nop                                           ; $7BB6: $00
    nop                                           ; $7BB7: $00
    nop                                           ; $7BB8: $00
    nop                                           ; $7BB9: $00
    nop                                           ; $7BBA: $00
    nop                                           ; $7BBB: $00
    nop                                           ; $7BBC: $00
    nop                                           ; $7BBD: $00
    nop                                           ; $7BBE: $00
    nop                                           ; $7BBF: $00
    nop                                           ; $7BC0: $00
    nop                                           ; $7BC1: $00
    nop                                           ; $7BC2: $00
    nop                                           ; $7BC3: $00
    nop                                           ; $7BC4: $00
    nop                                           ; $7BC5: $00
    nop                                           ; $7BC6: $00
    nop                                           ; $7BC7: $00
    nop                                           ; $7BC8: $00
    nop                                           ; $7BC9: $00
    nop                                           ; $7BCA: $00
    nop                                           ; $7BCB: $00
    nop                                           ; $7BCC: $00
    nop                                           ; $7BCD: $00
    nop                                           ; $7BCE: $00
    nop                                           ; $7BCF: $00
    nop                                           ; $7BD0: $00
    nop                                           ; $7BD1: $00
    nop                                           ; $7BD2: $00
    nop                                           ; $7BD3: $00
    nop                                           ; $7BD4: $00
    nop                                           ; $7BD5: $00
    nop                                           ; $7BD6: $00
    nop                                           ; $7BD7: $00
    nop                                           ; $7BD8: $00
    nop                                           ; $7BD9: $00
    nop                                           ; $7BDA: $00
    nop                                           ; $7BDB: $00
    nop                                           ; $7BDC: $00
    nop                                           ; $7BDD: $00
    nop                                           ; $7BDE: $00
    nop                                           ; $7BDF: $00
    nop                                           ; $7BE0: $00
    nop                                           ; $7BE1: $00
    nop                                           ; $7BE2: $00
    nop                                           ; $7BE3: $00
    nop                                           ; $7BE4: $00
    nop                                           ; $7BE5: $00
    nop                                           ; $7BE6: $00
    nop                                           ; $7BE7: $00
    nop                                           ; $7BE8: $00
    nop                                           ; $7BE9: $00
    nop                                           ; $7BEA: $00
    nop                                           ; $7BEB: $00
    nop                                           ; $7BEC: $00
    nop                                           ; $7BED: $00
    nop                                           ; $7BEE: $00
    nop                                           ; $7BEF: $00
    nop                                           ; $7BF0: $00
    nop                                           ; $7BF1: $00
    nop                                           ; $7BF2: $00
    nop                                           ; $7BF3: $00
    nop                                           ; $7BF4: $00
    nop                                           ; $7BF5: $00
    nop                                           ; $7BF6: $00
    nop                                           ; $7BF7: $00
    nop                                           ; $7BF8: $00
    nop                                           ; $7BF9: $00
    nop                                           ; $7BFA: $00
    nop                                           ; $7BFB: $00
    nop                                           ; $7BFC: $00
    nop                                           ; $7BFD: $00
    nop                                           ; $7BFE: $00
    nop                                           ; $7BFF: $00
    nop                                           ; $7C00: $00
    nop                                           ; $7C01: $00
    nop                                           ; $7C02: $00
    nop                                           ; $7C03: $00
    nop                                           ; $7C04: $00
    nop                                           ; $7C05: $00
    nop                                           ; $7C06: $00
    nop                                           ; $7C07: $00
    nop                                           ; $7C08: $00
    nop                                           ; $7C09: $00
    nop                                           ; $7C0A: $00
    nop                                           ; $7C0B: $00
    nop                                           ; $7C0C: $00
    nop                                           ; $7C0D: $00
    nop                                           ; $7C0E: $00
    nop                                           ; $7C0F: $00
    nop                                           ; $7C10: $00
    nop                                           ; $7C11: $00
    nop                                           ; $7C12: $00
    nop                                           ; $7C13: $00
    nop                                           ; $7C14: $00
    nop                                           ; $7C15: $00
    nop                                           ; $7C16: $00
    nop                                           ; $7C17: $00
    nop                                           ; $7C18: $00
    nop                                           ; $7C19: $00
    nop                                           ; $7C1A: $00
    nop                                           ; $7C1B: $00
    nop                                           ; $7C1C: $00
    nop                                           ; $7C1D: $00
    nop                                           ; $7C1E: $00
    nop                                           ; $7C1F: $00
    nop                                           ; $7C20: $00
    nop                                           ; $7C21: $00
    nop                                           ; $7C22: $00
    nop                                           ; $7C23: $00
    nop                                           ; $7C24: $00
    nop                                           ; $7C25: $00
    nop                                           ; $7C26: $00
    nop                                           ; $7C27: $00
    nop                                           ; $7C28: $00
    nop                                           ; $7C29: $00
    nop                                           ; $7C2A: $00
    nop                                           ; $7C2B: $00
    nop                                           ; $7C2C: $00
    nop                                           ; $7C2D: $00
    nop                                           ; $7C2E: $00
    nop                                           ; $7C2F: $00
    nop                                           ; $7C30: $00
    nop                                           ; $7C31: $00
    nop                                           ; $7C32: $00
    nop                                           ; $7C33: $00
    nop                                           ; $7C34: $00
    nop                                           ; $7C35: $00
    nop                                           ; $7C36: $00
    nop                                           ; $7C37: $00
    nop                                           ; $7C38: $00
    nop                                           ; $7C39: $00
    nop                                           ; $7C3A: $00
    nop                                           ; $7C3B: $00
    nop                                           ; $7C3C: $00
    nop                                           ; $7C3D: $00
    nop                                           ; $7C3E: $00
    nop                                           ; $7C3F: $00
    nop                                           ; $7C40: $00
    nop                                           ; $7C41: $00
    nop                                           ; $7C42: $00
    nop                                           ; $7C43: $00
    nop                                           ; $7C44: $00
    nop                                           ; $7C45: $00
    nop                                           ; $7C46: $00
    nop                                           ; $7C47: $00
    nop                                           ; $7C48: $00
    nop                                           ; $7C49: $00
    nop                                           ; $7C4A: $00
    nop                                           ; $7C4B: $00
    nop                                           ; $7C4C: $00
    nop                                           ; $7C4D: $00
    nop                                           ; $7C4E: $00
    nop                                           ; $7C4F: $00
    nop                                           ; $7C50: $00
    nop                                           ; $7C51: $00
    nop                                           ; $7C52: $00
    nop                                           ; $7C53: $00
    nop                                           ; $7C54: $00
    nop                                           ; $7C55: $00
    nop                                           ; $7C56: $00
    nop                                           ; $7C57: $00
    nop                                           ; $7C58: $00
    nop                                           ; $7C59: $00
    nop                                           ; $7C5A: $00
    nop                                           ; $7C5B: $00
    nop                                           ; $7C5C: $00
    nop                                           ; $7C5D: $00
    nop                                           ; $7C5E: $00
    nop                                           ; $7C5F: $00
    nop                                           ; $7C60: $00
    nop                                           ; $7C61: $00
    nop                                           ; $7C62: $00
    nop                                           ; $7C63: $00
    nop                                           ; $7C64: $00
    nop                                           ; $7C65: $00
    nop                                           ; $7C66: $00
    nop                                           ; $7C67: $00
    nop                                           ; $7C68: $00
    nop                                           ; $7C69: $00
    nop                                           ; $7C6A: $00
    nop                                           ; $7C6B: $00
    nop                                           ; $7C6C: $00
    nop                                           ; $7C6D: $00
    nop                                           ; $7C6E: $00
    nop                                           ; $7C6F: $00
    nop                                           ; $7C70: $00
    nop                                           ; $7C71: $00
    nop                                           ; $7C72: $00
    nop                                           ; $7C73: $00
    nop                                           ; $7C74: $00
    nop                                           ; $7C75: $00
    nop                                           ; $7C76: $00
    nop                                           ; $7C77: $00
    nop                                           ; $7C78: $00
    nop                                           ; $7C79: $00
    nop                                           ; $7C7A: $00
    nop                                           ; $7C7B: $00
    nop                                           ; $7C7C: $00
    nop                                           ; $7C7D: $00
    nop                                           ; $7C7E: $00
    nop                                           ; $7C7F: $00
    nop                                           ; $7C80: $00
    nop                                           ; $7C81: $00
    nop                                           ; $7C82: $00
    nop                                           ; $7C83: $00
    nop                                           ; $7C84: $00
    nop                                           ; $7C85: $00
    nop                                           ; $7C86: $00
    nop                                           ; $7C87: $00
    nop                                           ; $7C88: $00
    nop                                           ; $7C89: $00
    nop                                           ; $7C8A: $00
    nop                                           ; $7C8B: $00
    nop                                           ; $7C8C: $00
    nop                                           ; $7C8D: $00
    nop                                           ; $7C8E: $00
    nop                                           ; $7C8F: $00
    nop                                           ; $7C90: $00
    nop                                           ; $7C91: $00
    nop                                           ; $7C92: $00
    nop                                           ; $7C93: $00
    nop                                           ; $7C94: $00
    nop                                           ; $7C95: $00
    nop                                           ; $7C96: $00
    nop                                           ; $7C97: $00
    nop                                           ; $7C98: $00
    nop                                           ; $7C99: $00
    nop                                           ; $7C9A: $00
    nop                                           ; $7C9B: $00
    nop                                           ; $7C9C: $00
    nop                                           ; $7C9D: $00
    nop                                           ; $7C9E: $00
    nop                                           ; $7C9F: $00
    nop                                           ; $7CA0: $00
    nop                                           ; $7CA1: $00
    nop                                           ; $7CA2: $00
    nop                                           ; $7CA3: $00
    nop                                           ; $7CA4: $00
    nop                                           ; $7CA5: $00
    nop                                           ; $7CA6: $00
    nop                                           ; $7CA7: $00
    nop                                           ; $7CA8: $00
    nop                                           ; $7CA9: $00
    nop                                           ; $7CAA: $00
    nop                                           ; $7CAB: $00
    nop                                           ; $7CAC: $00
    nop                                           ; $7CAD: $00
    nop                                           ; $7CAE: $00
    nop                                           ; $7CAF: $00
    nop                                           ; $7CB0: $00
    nop                                           ; $7CB1: $00
    nop                                           ; $7CB2: $00
    nop                                           ; $7CB3: $00
    nop                                           ; $7CB4: $00
    nop                                           ; $7CB5: $00
    nop                                           ; $7CB6: $00
    nop                                           ; $7CB7: $00
    nop                                           ; $7CB8: $00
    nop                                           ; $7CB9: $00
    nop                                           ; $7CBA: $00
    nop                                           ; $7CBB: $00
    nop                                           ; $7CBC: $00
    nop                                           ; $7CBD: $00
    nop                                           ; $7CBE: $00
    nop                                           ; $7CBF: $00
    nop                                           ; $7CC0: $00
    nop                                           ; $7CC1: $00
    nop                                           ; $7CC2: $00
    nop                                           ; $7CC3: $00
    nop                                           ; $7CC4: $00
    nop                                           ; $7CC5: $00
    nop                                           ; $7CC6: $00
    nop                                           ; $7CC7: $00
    nop                                           ; $7CC8: $00
    nop                                           ; $7CC9: $00
    nop                                           ; $7CCA: $00
    nop                                           ; $7CCB: $00
    nop                                           ; $7CCC: $00
    nop                                           ; $7CCD: $00
    nop                                           ; $7CCE: $00
    nop                                           ; $7CCF: $00
    nop                                           ; $7CD0: $00
    nop                                           ; $7CD1: $00
    nop                                           ; $7CD2: $00
    nop                                           ; $7CD3: $00
    nop                                           ; $7CD4: $00
    nop                                           ; $7CD5: $00
    nop                                           ; $7CD6: $00
    nop                                           ; $7CD7: $00
    nop                                           ; $7CD8: $00
    nop                                           ; $7CD9: $00
    nop                                           ; $7CDA: $00
    nop                                           ; $7CDB: $00
    nop                                           ; $7CDC: $00
    nop                                           ; $7CDD: $00
    nop                                           ; $7CDE: $00
    nop                                           ; $7CDF: $00
    nop                                           ; $7CE0: $00
    nop                                           ; $7CE1: $00
    nop                                           ; $7CE2: $00
    nop                                           ; $7CE3: $00
    nop                                           ; $7CE4: $00
    nop                                           ; $7CE5: $00
    nop                                           ; $7CE6: $00
    nop                                           ; $7CE7: $00
    nop                                           ; $7CE8: $00
    nop                                           ; $7CE9: $00
    nop                                           ; $7CEA: $00
    nop                                           ; $7CEB: $00
    nop                                           ; $7CEC: $00
    nop                                           ; $7CED: $00
    nop                                           ; $7CEE: $00
    nop                                           ; $7CEF: $00
    nop                                           ; $7CF0: $00
    nop                                           ; $7CF1: $00
    nop                                           ; $7CF2: $00
    nop                                           ; $7CF3: $00
    nop                                           ; $7CF4: $00
    nop                                           ; $7CF5: $00
    nop                                           ; $7CF6: $00
    nop                                           ; $7CF7: $00
    nop                                           ; $7CF8: $00
    nop                                           ; $7CF9: $00
    nop                                           ; $7CFA: $00
    nop                                           ; $7CFB: $00
    nop                                           ; $7CFC: $00
    nop                                           ; $7CFD: $00
    nop                                           ; $7CFE: $00
    nop                                           ; $7CFF: $00
    nop                                           ; $7D00: $00
    nop                                           ; $7D01: $00
    nop                                           ; $7D02: $00
    nop                                           ; $7D03: $00
    nop                                           ; $7D04: $00
    nop                                           ; $7D05: $00
    nop                                           ; $7D06: $00
    nop                                           ; $7D07: $00
    nop                                           ; $7D08: $00
    nop                                           ; $7D09: $00
    nop                                           ; $7D0A: $00
    nop                                           ; $7D0B: $00
    nop                                           ; $7D0C: $00
    nop                                           ; $7D0D: $00
    nop                                           ; $7D0E: $00
    nop                                           ; $7D0F: $00
    nop                                           ; $7D10: $00
    nop                                           ; $7D11: $00
    nop                                           ; $7D12: $00
    nop                                           ; $7D13: $00
    nop                                           ; $7D14: $00
    nop                                           ; $7D15: $00
    nop                                           ; $7D16: $00
    nop                                           ; $7D17: $00
    nop                                           ; $7D18: $00
    nop                                           ; $7D19: $00
    nop                                           ; $7D1A: $00
    nop                                           ; $7D1B: $00
    nop                                           ; $7D1C: $00
    nop                                           ; $7D1D: $00
    nop                                           ; $7D1E: $00
    nop                                           ; $7D1F: $00
    nop                                           ; $7D20: $00
    nop                                           ; $7D21: $00
    nop                                           ; $7D22: $00
    nop                                           ; $7D23: $00
    nop                                           ; $7D24: $00
    nop                                           ; $7D25: $00
    nop                                           ; $7D26: $00
    nop                                           ; $7D27: $00
    nop                                           ; $7D28: $00
    nop                                           ; $7D29: $00
    nop                                           ; $7D2A: $00
    nop                                           ; $7D2B: $00
    nop                                           ; $7D2C: $00
    nop                                           ; $7D2D: $00
    nop                                           ; $7D2E: $00
    nop                                           ; $7D2F: $00
    nop                                           ; $7D30: $00
    nop                                           ; $7D31: $00
    nop                                           ; $7D32: $00
    nop                                           ; $7D33: $00
    nop                                           ; $7D34: $00
    nop                                           ; $7D35: $00
    nop                                           ; $7D36: $00
    nop                                           ; $7D37: $00
    nop                                           ; $7D38: $00
    nop                                           ; $7D39: $00
    nop                                           ; $7D3A: $00
    nop                                           ; $7D3B: $00
    nop                                           ; $7D3C: $00
    nop                                           ; $7D3D: $00
    nop                                           ; $7D3E: $00
    nop                                           ; $7D3F: $00
    nop                                           ; $7D40: $00
    nop                                           ; $7D41: $00
    nop                                           ; $7D42: $00
    nop                                           ; $7D43: $00
    nop                                           ; $7D44: $00
    nop                                           ; $7D45: $00
    nop                                           ; $7D46: $00
    nop                                           ; $7D47: $00
    nop                                           ; $7D48: $00
    nop                                           ; $7D49: $00
    nop                                           ; $7D4A: $00
    nop                                           ; $7D4B: $00
    nop                                           ; $7D4C: $00
    nop                                           ; $7D4D: $00
    nop                                           ; $7D4E: $00
    nop                                           ; $7D4F: $00
    nop                                           ; $7D50: $00
    nop                                           ; $7D51: $00
    nop                                           ; $7D52: $00
    nop                                           ; $7D53: $00
    nop                                           ; $7D54: $00
    nop                                           ; $7D55: $00
    nop                                           ; $7D56: $00
    nop                                           ; $7D57: $00
    nop                                           ; $7D58: $00
    nop                                           ; $7D59: $00
    nop                                           ; $7D5A: $00
    nop                                           ; $7D5B: $00
    nop                                           ; $7D5C: $00
    nop                                           ; $7D5D: $00
    nop                                           ; $7D5E: $00
    nop                                           ; $7D5F: $00
    nop                                           ; $7D60: $00
    nop                                           ; $7D61: $00
    nop                                           ; $7D62: $00
    nop                                           ; $7D63: $00
    nop                                           ; $7D64: $00
    nop                                           ; $7D65: $00
    nop                                           ; $7D66: $00
    nop                                           ; $7D67: $00
    nop                                           ; $7D68: $00
    nop                                           ; $7D69: $00
    nop                                           ; $7D6A: $00
    nop                                           ; $7D6B: $00
    nop                                           ; $7D6C: $00
    nop                                           ; $7D6D: $00
    nop                                           ; $7D6E: $00
    nop                                           ; $7D6F: $00
    nop                                           ; $7D70: $00
    nop                                           ; $7D71: $00
    nop                                           ; $7D72: $00
    nop                                           ; $7D73: $00
    nop                                           ; $7D74: $00
    nop                                           ; $7D75: $00
    nop                                           ; $7D76: $00
    nop                                           ; $7D77: $00
    nop                                           ; $7D78: $00
    nop                                           ; $7D79: $00
    nop                                           ; $7D7A: $00
    nop                                           ; $7D7B: $00
    nop                                           ; $7D7C: $00
    nop                                           ; $7D7D: $00
    nop                                           ; $7D7E: $00
    nop                                           ; $7D7F: $00
    nop                                           ; $7D80: $00
    nop                                           ; $7D81: $00
    nop                                           ; $7D82: $00
    nop                                           ; $7D83: $00
    nop                                           ; $7D84: $00
    nop                                           ; $7D85: $00
    nop                                           ; $7D86: $00
    nop                                           ; $7D87: $00
    nop                                           ; $7D88: $00
    nop                                           ; $7D89: $00
    nop                                           ; $7D8A: $00
    nop                                           ; $7D8B: $00
    nop                                           ; $7D8C: $00
    nop                                           ; $7D8D: $00
    nop                                           ; $7D8E: $00
    nop                                           ; $7D8F: $00
    nop                                           ; $7D90: $00
    nop                                           ; $7D91: $00
    nop                                           ; $7D92: $00
    nop                                           ; $7D93: $00
    nop                                           ; $7D94: $00
    nop                                           ; $7D95: $00
    nop                                           ; $7D96: $00
    nop                                           ; $7D97: $00
    nop                                           ; $7D98: $00
    nop                                           ; $7D99: $00
    nop                                           ; $7D9A: $00
    nop                                           ; $7D9B: $00
    nop                                           ; $7D9C: $00
    nop                                           ; $7D9D: $00
    nop                                           ; $7D9E: $00
    nop                                           ; $7D9F: $00
    nop                                           ; $7DA0: $00
    nop                                           ; $7DA1: $00
    nop                                           ; $7DA2: $00
    nop                                           ; $7DA3: $00
    nop                                           ; $7DA4: $00
    nop                                           ; $7DA5: $00
    nop                                           ; $7DA6: $00
    nop                                           ; $7DA7: $00
    nop                                           ; $7DA8: $00
    nop                                           ; $7DA9: $00
    nop                                           ; $7DAA: $00
    nop                                           ; $7DAB: $00
    nop                                           ; $7DAC: $00
    nop                                           ; $7DAD: $00
    nop                                           ; $7DAE: $00
    nop                                           ; $7DAF: $00
    nop                                           ; $7DB0: $00
    nop                                           ; $7DB1: $00
    nop                                           ; $7DB2: $00
    nop                                           ; $7DB3: $00
    nop                                           ; $7DB4: $00
    nop                                           ; $7DB5: $00
    nop                                           ; $7DB6: $00
    nop                                           ; $7DB7: $00
    nop                                           ; $7DB8: $00
    nop                                           ; $7DB9: $00
    nop                                           ; $7DBA: $00
    nop                                           ; $7DBB: $00
    nop                                           ; $7DBC: $00
    nop                                           ; $7DBD: $00
    nop                                           ; $7DBE: $00
    nop                                           ; $7DBF: $00
    nop                                           ; $7DC0: $00
    nop                                           ; $7DC1: $00
    nop                                           ; $7DC2: $00
    nop                                           ; $7DC3: $00
    nop                                           ; $7DC4: $00
    nop                                           ; $7DC5: $00
    nop                                           ; $7DC6: $00
    nop                                           ; $7DC7: $00
    nop                                           ; $7DC8: $00
    nop                                           ; $7DC9: $00
    nop                                           ; $7DCA: $00
    nop                                           ; $7DCB: $00
    nop                                           ; $7DCC: $00
    nop                                           ; $7DCD: $00
    nop                                           ; $7DCE: $00
    nop                                           ; $7DCF: $00
    nop                                           ; $7DD0: $00
    nop                                           ; $7DD1: $00
    nop                                           ; $7DD2: $00
    nop                                           ; $7DD3: $00
    nop                                           ; $7DD4: $00
    nop                                           ; $7DD5: $00
    nop                                           ; $7DD6: $00
    nop                                           ; $7DD7: $00
    nop                                           ; $7DD8: $00
    nop                                           ; $7DD9: $00
    nop                                           ; $7DDA: $00
    nop                                           ; $7DDB: $00
    nop                                           ; $7DDC: $00
    nop                                           ; $7DDD: $00
    nop                                           ; $7DDE: $00
    nop                                           ; $7DDF: $00
    nop                                           ; $7DE0: $00
    nop                                           ; $7DE1: $00
    nop                                           ; $7DE2: $00
    nop                                           ; $7DE3: $00
    nop                                           ; $7DE4: $00
    nop                                           ; $7DE5: $00
    nop                                           ; $7DE6: $00
    nop                                           ; $7DE7: $00
    nop                                           ; $7DE8: $00
    nop                                           ; $7DE9: $00
    nop                                           ; $7DEA: $00
    nop                                           ; $7DEB: $00
    nop                                           ; $7DEC: $00
    nop                                           ; $7DED: $00
    nop                                           ; $7DEE: $00
    nop                                           ; $7DEF: $00
    nop                                           ; $7DF0: $00
    nop                                           ; $7DF1: $00
    nop                                           ; $7DF2: $00
    nop                                           ; $7DF3: $00
    nop                                           ; $7DF4: $00
    nop                                           ; $7DF5: $00
    nop                                           ; $7DF6: $00
    nop                                           ; $7DF7: $00
    nop                                           ; $7DF8: $00
    nop                                           ; $7DF9: $00
    nop                                           ; $7DFA: $00
    nop                                           ; $7DFB: $00
    nop                                           ; $7DFC: $00
    nop                                           ; $7DFD: $00
    nop                                           ; $7DFE: $00
    nop                                           ; $7DFF: $00
    nop                                           ; $7E00: $00
    nop                                           ; $7E01: $00
    nop                                           ; $7E02: $00
    nop                                           ; $7E03: $00
    nop                                           ; $7E04: $00
    nop                                           ; $7E05: $00
    nop                                           ; $7E06: $00
    nop                                           ; $7E07: $00
    nop                                           ; $7E08: $00
    nop                                           ; $7E09: $00
    nop                                           ; $7E0A: $00
    nop                                           ; $7E0B: $00
    nop                                           ; $7E0C: $00
    nop                                           ; $7E0D: $00
    nop                                           ; $7E0E: $00
    nop                                           ; $7E0F: $00
    nop                                           ; $7E10: $00
    nop                                           ; $7E11: $00
    nop                                           ; $7E12: $00
    nop                                           ; $7E13: $00
    nop                                           ; $7E14: $00
    nop                                           ; $7E15: $00
    nop                                           ; $7E16: $00
    nop                                           ; $7E17: $00
    nop                                           ; $7E18: $00
    nop                                           ; $7E19: $00
    nop                                           ; $7E1A: $00
    nop                                           ; $7E1B: $00
    nop                                           ; $7E1C: $00
    nop                                           ; $7E1D: $00
    nop                                           ; $7E1E: $00
    nop                                           ; $7E1F: $00
    nop                                           ; $7E20: $00
    nop                                           ; $7E21: $00
    nop                                           ; $7E22: $00
    nop                                           ; $7E23: $00
    nop                                           ; $7E24: $00
    nop                                           ; $7E25: $00
    nop                                           ; $7E26: $00
    nop                                           ; $7E27: $00
    nop                                           ; $7E28: $00
    nop                                           ; $7E29: $00
    nop                                           ; $7E2A: $00
    nop                                           ; $7E2B: $00
    nop                                           ; $7E2C: $00
    nop                                           ; $7E2D: $00
    nop                                           ; $7E2E: $00
    nop                                           ; $7E2F: $00
    nop                                           ; $7E30: $00
    nop                                           ; $7E31: $00
    nop                                           ; $7E32: $00
    nop                                           ; $7E33: $00
    nop                                           ; $7E34: $00
    nop                                           ; $7E35: $00
    nop                                           ; $7E36: $00
    nop                                           ; $7E37: $00
    nop                                           ; $7E38: $00
    nop                                           ; $7E39: $00
    nop                                           ; $7E3A: $00
    nop                                           ; $7E3B: $00
    nop                                           ; $7E3C: $00
    nop                                           ; $7E3D: $00
    nop                                           ; $7E3E: $00
    nop                                           ; $7E3F: $00
    nop                                           ; $7E40: $00
    nop                                           ; $7E41: $00
    nop                                           ; $7E42: $00
    nop                                           ; $7E43: $00
    nop                                           ; $7E44: $00
    nop                                           ; $7E45: $00
    nop                                           ; $7E46: $00
    nop                                           ; $7E47: $00
    nop                                           ; $7E48: $00
    nop                                           ; $7E49: $00
    nop                                           ; $7E4A: $00
    nop                                           ; $7E4B: $00
    nop                                           ; $7E4C: $00
    nop                                           ; $7E4D: $00
    nop                                           ; $7E4E: $00
    nop                                           ; $7E4F: $00
    nop                                           ; $7E50: $00
    nop                                           ; $7E51: $00
    nop                                           ; $7E52: $00
    nop                                           ; $7E53: $00
    nop                                           ; $7E54: $00
    nop                                           ; $7E55: $00
    nop                                           ; $7E56: $00
    nop                                           ; $7E57: $00
    nop                                           ; $7E58: $00
    nop                                           ; $7E59: $00
    nop                                           ; $7E5A: $00
    nop                                           ; $7E5B: $00
    nop                                           ; $7E5C: $00
    nop                                           ; $7E5D: $00
    nop                                           ; $7E5E: $00
    nop                                           ; $7E5F: $00
    nop                                           ; $7E60: $00
    nop                                           ; $7E61: $00
    nop                                           ; $7E62: $00
    nop                                           ; $7E63: $00
    nop                                           ; $7E64: $00
    nop                                           ; $7E65: $00
    nop                                           ; $7E66: $00
    nop                                           ; $7E67: $00
    nop                                           ; $7E68: $00
    nop                                           ; $7E69: $00
    nop                                           ; $7E6A: $00
    nop                                           ; $7E6B: $00
    nop                                           ; $7E6C: $00
    nop                                           ; $7E6D: $00
    nop                                           ; $7E6E: $00
    nop                                           ; $7E6F: $00
    nop                                           ; $7E70: $00
    nop                                           ; $7E71: $00
    nop                                           ; $7E72: $00
    nop                                           ; $7E73: $00
    nop                                           ; $7E74: $00
    nop                                           ; $7E75: $00
    nop                                           ; $7E76: $00
    nop                                           ; $7E77: $00
    nop                                           ; $7E78: $00
    nop                                           ; $7E79: $00
    nop                                           ; $7E7A: $00
    nop                                           ; $7E7B: $00
    nop                                           ; $7E7C: $00
    nop                                           ; $7E7D: $00
    nop                                           ; $7E7E: $00
    nop                                           ; $7E7F: $00
    nop                                           ; $7E80: $00
    nop                                           ; $7E81: $00
    nop                                           ; $7E82: $00
    nop                                           ; $7E83: $00
    nop                                           ; $7E84: $00
    nop                                           ; $7E85: $00
    nop                                           ; $7E86: $00
    nop                                           ; $7E87: $00
    nop                                           ; $7E88: $00
    nop                                           ; $7E89: $00
    nop                                           ; $7E8A: $00
    nop                                           ; $7E8B: $00
    nop                                           ; $7E8C: $00
    nop                                           ; $7E8D: $00
    nop                                           ; $7E8E: $00
    nop                                           ; $7E8F: $00
    nop                                           ; $7E90: $00
    nop                                           ; $7E91: $00
    nop                                           ; $7E92: $00
    nop                                           ; $7E93: $00
    nop                                           ; $7E94: $00
    nop                                           ; $7E95: $00
    nop                                           ; $7E96: $00
    nop                                           ; $7E97: $00
    nop                                           ; $7E98: $00
    nop                                           ; $7E99: $00
    nop                                           ; $7E9A: $00
    nop                                           ; $7E9B: $00
    nop                                           ; $7E9C: $00
    nop                                           ; $7E9D: $00
    nop                                           ; $7E9E: $00
    nop                                           ; $7E9F: $00
    nop                                           ; $7EA0: $00
    nop                                           ; $7EA1: $00
    nop                                           ; $7EA2: $00
    nop                                           ; $7EA3: $00
    nop                                           ; $7EA4: $00
    nop                                           ; $7EA5: $00
    nop                                           ; $7EA6: $00
    nop                                           ; $7EA7: $00
    nop                                           ; $7EA8: $00
    nop                                           ; $7EA9: $00
    nop                                           ; $7EAA: $00
    nop                                           ; $7EAB: $00
    nop                                           ; $7EAC: $00
    nop                                           ; $7EAD: $00
    nop                                           ; $7EAE: $00
    nop                                           ; $7EAF: $00
    nop                                           ; $7EB0: $00
    nop                                           ; $7EB1: $00
    nop                                           ; $7EB2: $00
    nop                                           ; $7EB3: $00
    nop                                           ; $7EB4: $00
    nop                                           ; $7EB5: $00
    nop                                           ; $7EB6: $00
    nop                                           ; $7EB7: $00
    nop                                           ; $7EB8: $00
    nop                                           ; $7EB9: $00
    nop                                           ; $7EBA: $00
    nop                                           ; $7EBB: $00
    nop                                           ; $7EBC: $00
    nop                                           ; $7EBD: $00
    nop                                           ; $7EBE: $00
    nop                                           ; $7EBF: $00
    nop                                           ; $7EC0: $00
    nop                                           ; $7EC1: $00
    nop                                           ; $7EC2: $00
    nop                                           ; $7EC3: $00
    nop                                           ; $7EC4: $00
    nop                                           ; $7EC5: $00
    nop                                           ; $7EC6: $00
    nop                                           ; $7EC7: $00
    nop                                           ; $7EC8: $00
    nop                                           ; $7EC9: $00
    nop                                           ; $7ECA: $00
    nop                                           ; $7ECB: $00
    nop                                           ; $7ECC: $00
    nop                                           ; $7ECD: $00
    nop                                           ; $7ECE: $00
    nop                                           ; $7ECF: $00
    nop                                           ; $7ED0: $00
    nop                                           ; $7ED1: $00
    nop                                           ; $7ED2: $00
    nop                                           ; $7ED3: $00
    nop                                           ; $7ED4: $00
    nop                                           ; $7ED5: $00
    nop                                           ; $7ED6: $00
    nop                                           ; $7ED7: $00
    nop                                           ; $7ED8: $00
    nop                                           ; $7ED9: $00
    nop                                           ; $7EDA: $00
    nop                                           ; $7EDB: $00
    nop                                           ; $7EDC: $00
    nop                                           ; $7EDD: $00
    nop                                           ; $7EDE: $00
    nop                                           ; $7EDF: $00
    nop                                           ; $7EE0: $00
    nop                                           ; $7EE1: $00
    nop                                           ; $7EE2: $00
    nop                                           ; $7EE3: $00
    nop                                           ; $7EE4: $00
    nop                                           ; $7EE5: $00
    nop                                           ; $7EE6: $00
    nop                                           ; $7EE7: $00
    nop                                           ; $7EE8: $00
    nop                                           ; $7EE9: $00
    nop                                           ; $7EEA: $00
    nop                                           ; $7EEB: $00
    nop                                           ; $7EEC: $00
    nop                                           ; $7EED: $00
    nop                                           ; $7EEE: $00
    nop                                           ; $7EEF: $00
    nop                                           ; $7EF0: $00
    nop                                           ; $7EF1: $00
    nop                                           ; $7EF2: $00
    nop                                           ; $7EF3: $00
    nop                                           ; $7EF4: $00
    nop                                           ; $7EF5: $00
    nop                                           ; $7EF6: $00
    nop                                           ; $7EF7: $00
    nop                                           ; $7EF8: $00
    nop                                           ; $7EF9: $00
    nop                                           ; $7EFA: $00
    nop                                           ; $7EFB: $00
    nop                                           ; $7EFC: $00
    nop                                           ; $7EFD: $00
    nop                                           ; $7EFE: $00
    nop                                           ; $7EFF: $00
    nop                                           ; $7F00: $00
    nop                                           ; $7F01: $00
    nop                                           ; $7F02: $00
    nop                                           ; $7F03: $00
    nop                                           ; $7F04: $00
    nop                                           ; $7F05: $00
    nop                                           ; $7F06: $00
    nop                                           ; $7F07: $00
    nop                                           ; $7F08: $00
    nop                                           ; $7F09: $00
    nop                                           ; $7F0A: $00
    nop                                           ; $7F0B: $00
    nop                                           ; $7F0C: $00
    nop                                           ; $7F0D: $00
    nop                                           ; $7F0E: $00
    nop                                           ; $7F0F: $00
    nop                                           ; $7F10: $00
    nop                                           ; $7F11: $00
    nop                                           ; $7F12: $00
    nop                                           ; $7F13: $00
    nop                                           ; $7F14: $00
    nop                                           ; $7F15: $00
    nop                                           ; $7F16: $00
    nop                                           ; $7F17: $00
    nop                                           ; $7F18: $00
    nop                                           ; $7F19: $00
    nop                                           ; $7F1A: $00
    nop                                           ; $7F1B: $00
    nop                                           ; $7F1C: $00
    nop                                           ; $7F1D: $00
    nop                                           ; $7F1E: $00
    nop                                           ; $7F1F: $00
    nop                                           ; $7F20: $00
    nop                                           ; $7F21: $00
    nop                                           ; $7F22: $00
    nop                                           ; $7F23: $00
    nop                                           ; $7F24: $00
    nop                                           ; $7F25: $00
    nop                                           ; $7F26: $00
    nop                                           ; $7F27: $00
    nop                                           ; $7F28: $00
    nop                                           ; $7F29: $00
    nop                                           ; $7F2A: $00
    nop                                           ; $7F2B: $00
    nop                                           ; $7F2C: $00
    nop                                           ; $7F2D: $00
    nop                                           ; $7F2E: $00
    nop                                           ; $7F2F: $00
    nop                                           ; $7F30: $00
    nop                                           ; $7F31: $00
    nop                                           ; $7F32: $00
    nop                                           ; $7F33: $00
    nop                                           ; $7F34: $00
    nop                                           ; $7F35: $00
    nop                                           ; $7F36: $00
    nop                                           ; $7F37: $00
    nop                                           ; $7F38: $00
    nop                                           ; $7F39: $00
    nop                                           ; $7F3A: $00
    nop                                           ; $7F3B: $00
    nop                                           ; $7F3C: $00
    nop                                           ; $7F3D: $00
    nop                                           ; $7F3E: $00
    nop                                           ; $7F3F: $00
    nop                                           ; $7F40: $00
    nop                                           ; $7F41: $00
    nop                                           ; $7F42: $00
    nop                                           ; $7F43: $00
    nop                                           ; $7F44: $00
    nop                                           ; $7F45: $00
    nop                                           ; $7F46: $00
    nop                                           ; $7F47: $00
    nop                                           ; $7F48: $00
    nop                                           ; $7F49: $00
    nop                                           ; $7F4A: $00
    nop                                           ; $7F4B: $00
    nop                                           ; $7F4C: $00
    nop                                           ; $7F4D: $00
    nop                                           ; $7F4E: $00
    nop                                           ; $7F4F: $00
    nop                                           ; $7F50: $00
    nop                                           ; $7F51: $00
    nop                                           ; $7F52: $00
    nop                                           ; $7F53: $00
    nop                                           ; $7F54: $00
    nop                                           ; $7F55: $00
    nop                                           ; $7F56: $00
    nop                                           ; $7F57: $00
    nop                                           ; $7F58: $00
    nop                                           ; $7F59: $00
    nop                                           ; $7F5A: $00
    nop                                           ; $7F5B: $00
    nop                                           ; $7F5C: $00
    nop                                           ; $7F5D: $00
    nop                                           ; $7F5E: $00
    nop                                           ; $7F5F: $00
    nop                                           ; $7F60: $00
    nop                                           ; $7F61: $00
    nop                                           ; $7F62: $00
    nop                                           ; $7F63: $00
    nop                                           ; $7F64: $00
    nop                                           ; $7F65: $00
    nop                                           ; $7F66: $00
    nop                                           ; $7F67: $00
    nop                                           ; $7F68: $00
    nop                                           ; $7F69: $00
    nop                                           ; $7F6A: $00
    nop                                           ; $7F6B: $00
    nop                                           ; $7F6C: $00
    nop                                           ; $7F6D: $00
    nop                                           ; $7F6E: $00
    nop                                           ; $7F6F: $00
    nop                                           ; $7F70: $00
    nop                                           ; $7F71: $00
    nop                                           ; $7F72: $00
    nop                                           ; $7F73: $00
    nop                                           ; $7F74: $00
    nop                                           ; $7F75: $00
    nop                                           ; $7F76: $00
    nop                                           ; $7F77: $00
    nop                                           ; $7F78: $00
    nop                                           ; $7F79: $00
    nop                                           ; $7F7A: $00
    nop                                           ; $7F7B: $00
    nop                                           ; $7F7C: $00
    nop                                           ; $7F7D: $00
    nop                                           ; $7F7E: $00
    nop                                           ; $7F7F: $00
    nop                                           ; $7F80: $00
    nop                                           ; $7F81: $00
    nop                                           ; $7F82: $00
    nop                                           ; $7F83: $00
    nop                                           ; $7F84: $00
    nop                                           ; $7F85: $00
    nop                                           ; $7F86: $00
    nop                                           ; $7F87: $00
    nop                                           ; $7F88: $00
    nop                                           ; $7F89: $00
    nop                                           ; $7F8A: $00
    nop                                           ; $7F8B: $00
    nop                                           ; $7F8C: $00
    nop                                           ; $7F8D: $00
    nop                                           ; $7F8E: $00
    nop                                           ; $7F8F: $00
    nop                                           ; $7F90: $00
    nop                                           ; $7F91: $00
    nop                                           ; $7F92: $00
    nop                                           ; $7F93: $00
    nop                                           ; $7F94: $00
    nop                                           ; $7F95: $00
    nop                                           ; $7F96: $00
    nop                                           ; $7F97: $00
    nop                                           ; $7F98: $00
    nop                                           ; $7F99: $00
    nop                                           ; $7F9A: $00
    nop                                           ; $7F9B: $00
    nop                                           ; $7F9C: $00
    nop                                           ; $7F9D: $00
    nop                                           ; $7F9E: $00
    nop                                           ; $7F9F: $00
    nop                                           ; $7FA0: $00
    nop                                           ; $7FA1: $00
    nop                                           ; $7FA2: $00
    nop                                           ; $7FA3: $00
    nop                                           ; $7FA4: $00
    nop                                           ; $7FA5: $00
    nop                                           ; $7FA6: $00
    nop                                           ; $7FA7: $00
    nop                                           ; $7FA8: $00
    nop                                           ; $7FA9: $00
    nop                                           ; $7FAA: $00
    nop                                           ; $7FAB: $00
    nop                                           ; $7FAC: $00
    nop                                           ; $7FAD: $00
    nop                                           ; $7FAE: $00
    nop                                           ; $7FAF: $00
    nop                                           ; $7FB0: $00
    nop                                           ; $7FB1: $00
    nop                                           ; $7FB2: $00
    nop                                           ; $7FB3: $00
    nop                                           ; $7FB4: $00
    nop                                           ; $7FB5: $00
    nop                                           ; $7FB6: $00
    nop                                           ; $7FB7: $00
    nop                                           ; $7FB8: $00
    nop                                           ; $7FB9: $00
    nop                                           ; $7FBA: $00
    nop                                           ; $7FBB: $00
    nop                                           ; $7FBC: $00
    nop                                           ; $7FBD: $00
    nop                                           ; $7FBE: $00
    nop                                           ; $7FBF: $00
    nop                                           ; $7FC0: $00
    nop                                           ; $7FC1: $00
    nop                                           ; $7FC2: $00
    nop                                           ; $7FC3: $00
    nop                                           ; $7FC4: $00
    nop                                           ; $7FC5: $00
    nop                                           ; $7FC6: $00
    nop                                           ; $7FC7: $00
    nop                                           ; $7FC8: $00
    nop                                           ; $7FC9: $00
    nop                                           ; $7FCA: $00
    nop                                           ; $7FCB: $00
    nop                                           ; $7FCC: $00
    nop                                           ; $7FCD: $00
    nop                                           ; $7FCE: $00
    nop                                           ; $7FCF: $00
    nop                                           ; $7FD0: $00
    nop                                           ; $7FD1: $00
    nop                                           ; $7FD2: $00
    nop                                           ; $7FD3: $00
    nop                                           ; $7FD4: $00
    nop                                           ; $7FD5: $00
    nop                                           ; $7FD6: $00
    nop                                           ; $7FD7: $00
    nop                                           ; $7FD8: $00
    nop                                           ; $7FD9: $00
    nop                                           ; $7FDA: $00
    nop                                           ; $7FDB: $00
    nop                                           ; $7FDC: $00
    nop                                           ; $7FDD: $00
    nop                                           ; $7FDE: $00
    nop                                           ; $7FDF: $00
    nop                                           ; $7FE0: $00
    nop                                           ; $7FE1: $00
    nop                                           ; $7FE2: $00
    nop                                           ; $7FE3: $00
    nop                                           ; $7FE4: $00
    nop                                           ; $7FE5: $00
    nop                                           ; $7FE6: $00
    nop                                           ; $7FE7: $00
    nop                                           ; $7FE8: $00
    nop                                           ; $7FE9: $00
    nop                                           ; $7FEA: $00
    nop                                           ; $7FEB: $00
    nop                                           ; $7FEC: $00
    nop                                           ; $7FED: $00
    nop                                           ; $7FEE: $00
    nop                                           ; $7FEF: $00
    nop                                           ; $7FF0: $00
    nop                                           ; $7FF1: $00
    nop                                           ; $7FF2: $00
    nop                                           ; $7FF3: $00
    nop                                           ; $7FF4: $00
    nop                                           ; $7FF5: $00
    nop                                           ; $7FF6: $00
    nop                                           ; $7FF7: $00
    nop                                           ; $7FF8: $00
    nop                                           ; $7FF9: $00
    nop                                           ; $7FFA: $00
    nop                                           ; $7FFB: $00
    nop                                           ; $7FFC: $00
    nop                                           ; $7FFD: $00
    nop                                           ; $7FFE: $00
    nop                                           ; $7FFF: $00
