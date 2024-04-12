; sprites

SECTION "ROM Bank $024", ROMX[$6790], BANK[$24]

    rlca                                          ; $6790: $07
    nop                                           ; $6791: $00
    ld l, e                                       ; $6792: $6B
    ld c, d                                       ; $6793: $4A
    add hl, bc                                    ; $6794: $09
    nop                                           ; $6795: $00
    jr nz, jr_024_67D0                            ; $6796: $20 $38

    ld e, h                                       ; $6798: $5C
    ld b, b                                       ; $6799: $40
    ld b, $0C                                     ; $679A: $06 $0C
    nop                                           ; $679C: $00
    add e                                         ; $679D: $83
    stop                                          ; $679E: $10 $00
    db $FC                                        ; $67A0: $FC
    jr @-$02                                      ; $67A1: $18 $FC

    nop                                           ; $67A3: $00
    inc d                                         ; $67A4: $14
    nop                                           ; $67A5: $00
    db $FC                                        ; $67A6: $FC
    inc e                                         ; $67A7: $1C
    inc b                                         ; $67A8: $04
    nop                                           ; $67A9: $00
    inc l                                         ; $67AA: $2C
    nop                                           ; $67AB: $00
    db $FC                                        ; $67AC: $FC
    nop                                           ; $67AD: $00
    ld b, l                                       ; $67AE: $45
    inc h                                         ; $67AF: $24
    add l                                         ; $67B0: $85
    ld a, c                                       ; $67B1: $79
    rlca                                          ; $67B2: $07
    nop                                           ; $67B3: $00
    ld l, e                                       ; $67B4: $6B
    ld c, d                                       ; $67B5: $4A
    add hl, bc                                    ; $67B6: $09
    nop                                           ; $67B7: $00
    jr nz, jr_024_67F2                            ; $67B8: $20 $38

    ld e, h                                       ; $67BA: $5C
    ld b, b                                       ; $67BB: $40
    ld b, $0C                                     ; $67BC: $06 $0C
    nop                                           ; $67BE: $00
    add e                                         ; $67BF: $83
    jr nc, jr_024_67C2                            ; $67C0: $30 $00

jr_024_67C2:
    db $FC                                        ; $67C2: $FC
    jr nz, @-$02                                  ; $67C3: $20 $FC

    nop                                           ; $67C5: $00
    nop                                           ; $67C6: $00
    ld b, l                                       ; $67C7: $45
    inc h                                         ; $67C8: $24
    ld [hl-], a                                   ; $67C9: $32
    ld l, c                                       ; $67CA: $69
    ld [bc], a                                    ; $67CB: $02
    inc de                                        ; $67CC: $13
    rrca                                          ; $67CD: $0F
    dec e                                         ; $67CE: $1D
    nop                                           ; $67CF: $00

jr_024_67D0:
    ld b, l                                       ; $67D0: $45
    inc h                                         ; $67D1: $24
    rst $08                                       ; $67D2: $CF
    ld l, b                                       ; $67D3: $68
    and h                                         ; $67D4: $A4
    ld b, b                                       ; $67D5: $40
    and e                                         ; $67D6: $A3
    ld [$2100], sp                                ; $67D7: $08 $00 $21
    sbc e                                         ; $67DA: $9B
    ret nc                                        ; $67DB: $D0

    and h                                         ; $67DC: $A4
    ld b, d                                       ; $67DD: $42
    and e                                         ; $67DE: $A3
    add b                                         ; $67DF: $80
    nop                                           ; $67E0: $00
    inc bc                                        ; $67E1: $03
    xor b                                         ; $67E2: $A8
    pop de                                        ; $67E3: $D1
    and h                                         ; $67E4: $A4
    ld b, e                                       ; $67E5: $43
    and e                                         ; $67E6: $A3
    ld bc, $0D00                                  ; $67E7: $01 $00 $0D
    daa                                           ; $67EA: $27
    pop de                                        ; $67EB: $D1
    sub e                                         ; $67EC: $93
    ld h, l                                       ; $67ED: $65
    add hl, hl                                    ; $67EE: $29
    ld d, e                                       ; $67EF: $53
    ld c, a                                       ; $67F0: $4F
    ld h, h                                       ; $67F1: $64

jr_024_67F2:
    ld [hl-], a                                   ; $67F2: $32
    ld e, c                                       ; $67F3: $59
    ld l, c                                       ; $67F4: $69
    ccf                                           ; $67F5: $3F
    ld e, c                                       ; $67F6: $59
    ld h, [hl]                                    ; $67F7: $66
    ret nz                                        ; $67F8: $C0

    ld e, h                                       ; $67F9: $5C
    ld hl, $0005                                  ; $67FA: $21 $05 $00
    add c                                         ; $67FD: $81
    ld e, l                                       ; $67FE: $5D
    dec b                                         ; $67FF: $05
    dec b                                         ; $6800: $05

jr_024_6801:
    or h                                          ; $6801: $B4
    ret nc                                        ; $6802: $D0

    nop                                           ; $6803: $00
    jr nz, jr_024_6801                            ; $6804: $20 $FB

    ld d, b                                       ; $6806: $50
    ld [hl+], a                                   ; $6807: $22
    dec b                                         ; $6808: $05
    ld b, b                                       ; $6809: $40
    dec bc                                        ; $680A: $0B
    nop                                           ; $680B: $00
    ld [hl-], a                                   ; $680C: $32
    inc hl                                        ; $680D: $23
    ld [hl], b                                    ; $680E: $70
    ld b, b                                       ; $680F: $40
    adc l                                         ; $6810: $8D
    ld b, c                                       ; $6811: $41
    ld sp, $EC24                                  ; $6812: $31 $24 $EC
    ld h, a                                       ; $6815: $67
    ld [hl+], a                                   ; $6816: $22
    adc $40                                       ; $6817: $CE $40
    nop                                           ; $6819: $00
    add d                                         ; $681A: $82
    rra                                           ; $681B: $1F
    ld [de], a                                    ; $681C: $12
    sub h                                         ; $681D: $94
    ld b, d                                       ; $681E: $42
    sub e                                         ; $681F: $93
    ld h, l                                       ; $6820: $65
    add hl, hl                                    ; $6821: $29
    ld d, e                                       ; $6822: $53
    ld c, a                                       ; $6823: $4F
    ld h, h                                       ; $6824: $64
    ld [hl-], a                                   ; $6825: $32
    ld e, c                                       ; $6826: $59
    ld l, c                                       ; $6827: $69
    ccf                                           ; $6828: $3F
    ld e, c                                       ; $6829: $59
    ld h, [hl]                                    ; $682A: $66
    ret nz                                        ; $682B: $C0

    ld e, h                                       ; $682C: $5C
    ld hl, $0005                                  ; $682D: $21 $05 $00
    ld l, e                                       ; $6830: $6B
    ld c, d                                       ; $6831: $4A
    ld d, $18                                     ; $6832: $16 $18
    and $D2                                       ; $6834: $E6 $D2
    nop                                           ; $6836: $00
    inc h                                         ; $6837: $24
    add c                                         ; $6838: $81
    ld [hl], b                                    ; $6839: $70
    ld [hl+], a                                   ; $683A: $22
    dec b                                         ; $683B: $05
    ld b, b                                       ; $683C: $40
    add h                                         ; $683D: $84
    ld d, $00                                     ; $683E: $16 $00
    rra                                           ; $6840: $1F
    ld [de], a                                    ; $6841: $12
    sub h                                         ; $6842: $94
    add e                                         ; $6843: $83
    inc l                                         ; $6844: $2C
    nop                                           ; $6845: $00
    inc b                                         ; $6846: $04
    inc e                                         ; $6847: $1C
    db $FC                                        ; $6848: $FC
    nop                                           ; $6849: $00
    inc d                                         ; $684A: $14
    nop                                           ; $684B: $00
    inc b                                         ; $684C: $04
    jr jr_024_6853                                ; $684D: $18 $04

    nop                                           ; $684F: $00
    ld [de], a                                    ; $6850: $12
    nop                                           ; $6851: $00
    inc b                                         ; $6852: $04

jr_024_6853:
    nop                                           ; $6853: $00
    dec bc                                        ; $6854: $0B
    nop                                           ; $6855: $00
    ld [hl-], a                                   ; $6856: $32
    inc hl                                        ; $6857: $23
    ld [hl], b                                    ; $6858: $70
    ld b, b                                       ; $6859: $40
    adc l                                         ; $685A: $8D
    ld b, c                                       ; $685B: $41
    ld sp, $EC24                                  ; $685C: $31 $24 $EC

jr_024_685F:
    ld h, a                                       ; $685F: $67
    ld [hl+], a                                   ; $6860: $22
    adc $40                                       ; $6861: $CE $40
    ld h, b                                       ; $6863: $60
    ld bc, $0007                                  ; $6864: $01 $07 $00
    add c                                         ; $6867: $81
    ld e, l                                       ; $6868: $5D
    add hl, bc                                    ; $6869: $09
    nop                                           ; $686A: $00
    jr nz, @-$53                                  ; $686B: $20 $AB

    ld d, b                                       ; $686D: $50
    ld b, d                                       ; $686E: $42
    sub e                                         ; $686F: $93
    ld h, l                                       ; $6870: $65
    add hl, hl                                    ; $6871: $29
    ld d, e                                       ; $6872: $53
    ld c, a                                       ; $6873: $4F
    ld h, h                                       ; $6874: $64
    ld [hl-], a                                   ; $6875: $32
    ld e, c                                       ; $6876: $59
    ld l, c                                       ; $6877: $69
    ccf                                           ; $6878: $3F
    ld e, c                                       ; $6879: $59
    ld h, [hl]                                    ; $687A: $66
    ret nz                                        ; $687B: $C0

    ld e, h                                       ; $687C: $5C
    ld hl, $0005                                  ; $687D: $21 $05 $00
    ld l, e                                       ; $6880: $6B
    ld c, d                                       ; $6881: $4A
    ld a, [bc]                                    ; $6882: $0A
    inc d                                         ; $6883: $14
    ld h, d                                       ; $6884: $62
    jp nc, $2400                                  ; $6885: $D2 $00 $24

    add c                                         ; $6888: $81
    ld [hl], b                                    ; $6889: $70
    ld [hl+], a                                   ; $688A: $22
    dec b                                         ; $688B: $05
    ld b, b                                       ; $688C: $40
    add h                                         ; $688D: $84
    nop                                           ; $688E: $00
    ld a, [bc]                                    ; $688F: $0A
    rra                                           ; $6890: $1F
    ld [de], a                                    ; $6891: $12
    sub h                                         ; $6892: $94
    add e                                         ; $6893: $83
    db $10                                        ; $6894: $10
    inc b                                         ; $6895: $04
    nop                                           ; $6896: $00
    jr nc, jr_024_6899                            ; $6897: $30 $00

jr_024_6899:
    inc b                                         ; $6899: $04
    nop                                           ; $689A: $00
    dec bc                                        ; $689B: $0B
    nop                                           ; $689C: $00
    ld [hl-], a                                   ; $689D: $32
    inc hl                                        ; $689E: $23
    ld [hl], b                                    ; $689F: $70
    ld b, b                                       ; $68A0: $40
    adc l                                         ; $68A1: $8D
    ld b, c                                       ; $68A2: $41
    ld sp, $EC24                                  ; $68A3: $31 $24 $EC
    ld h, a                                       ; $68A6: $67
    ld [hl+], a                                   ; $68A7: $22
    adc $40                                       ; $68A8: $CE $40
    ld h, b                                       ; $68AA: $60
    ld bc, $0007                                  ; $68AB: $01 $07 $00
    add c                                         ; $68AE: $81
    ld e, l                                       ; $68AF: $5D
    add hl, bc                                    ; $68B0: $09
    nop                                           ; $68B1: $00
    jr nz, jr_024_685F                            ; $68B2: $20 $AB

    ld d, b                                       ; $68B4: $50
    ld b, d                                       ; $68B5: $42
    ld [bc], a                                    ; $68B6: $02
    rrca                                          ; $68B7: $0F
    inc de                                        ; $68B8: $13
    nop                                           ; $68B9: $00
    dec e                                         ; $68BA: $1D
    ld b, l                                       ; $68BB: $45
    inc h                                         ; $68BC: $24
    db $EC                                        ; $68BD: $EC
    ld h, a                                       ; $68BE: $67
    and h                                         ; $68BF: $A4
    ld b, b                                       ; $68C0: $40
    and e                                         ; $68C1: $A3
    inc b                                         ; $68C2: $04
    nop                                           ; $68C3: $00
    ld hl, $D723                                  ; $68C4: $21 $23 $D7
    and h                                         ; $68C7: $A4
    ld b, e                                       ; $68C8: $43
    and e                                         ; $68C9: $A3
    ld [bc], a                                    ; $68CA: $02
    inc bc                                        ; $68CB: $03
    dec bc                                        ; $68CC: $0B
    jr nc, @-$29                                  ; $68CD: $30 $D5

    sub e                                         ; $68CF: $93
    ld h, l                                       ; $68D0: $65
    jr c, @+$55                                   ; $68D1: $38 $53

    ld c, a                                       ; $68D3: $4F
    ld h, h                                       ; $68D4: $64
    ld c, h                                       ; $68D5: $4C
    ld e, c                                       ; $68D6: $59
    ld l, c                                       ; $68D7: $69
    ld d, c                                       ; $68D8: $51
    ld e, c                                       ; $68D9: $59
    ld h, [hl]                                    ; $68DA: $66
    ret nz                                        ; $68DB: $C0

    ld e, h                                       ; $68DC: $5C
    ld hl, $0005                                  ; $68DD: $21 $05 $00
    add c                                         ; $68E0: $81
    ld e, l                                       ; $68E1: $5D
    dec b                                         ; $68E2: $05
    dec b                                         ; $68E3: $05

jr_024_68E4:
    or h                                          ; $68E4: $B4
    ret nc                                        ; $68E5: $D0

    nop                                           ; $68E6: $00
    jr nz, jr_024_68E4                            ; $68E7: $20 $FB

    ld d, b                                       ; $68E9: $50
    ld [hl+], a                                   ; $68EA: $22
    dec b                                         ; $68EB: $05
    ld b, b                                       ; $68EC: $40
    dec bc                                        ; $68ED: $0B
    nop                                           ; $68EE: $00
    ld [hl-], a                                   ; $68EF: $32
    inc hl                                        ; $68F0: $23
    ld [hl], b                                    ; $68F1: $70
    ld b, b                                       ; $68F2: $40
    adc l                                         ; $68F3: $8D
    ld b, c                                       ; $68F4: $41
    ld sp, $CF24                                  ; $68F5: $31 $24 $CF
    ld l, b                                       ; $68F8: $68
    ld [hl+], a                                   ; $68F9: $22
    adc $40                                       ; $68FA: $CE $40
    nop                                           ; $68FC: $00
    add d                                         ; $68FD: $82
    rra                                           ; $68FE: $1F
    ld [de], a                                    ; $68FF: $12
    sub h                                         ; $6900: $94
    ld b, d                                       ; $6901: $42
    sub e                                         ; $6902: $93
    ld h, l                                       ; $6903: $65
    ld b, a                                       ; $6904: $47
    ld d, e                                       ; $6905: $53
    ld c, a                                       ; $6906: $4F
    ld h, h                                       ; $6907: $64
    ld e, d                                       ; $6908: $5A
    ld e, c                                       ; $6909: $59
    ld h, [hl]                                    ; $690A: $66
    ret nz                                        ; $690B: $C0

    ld e, h                                       ; $690C: $5C
    ld hl, $0005                                  ; $690D: $21 $05 $00
    add c                                         ; $6910: $81
    ld e, l                                       ; $6911: $5D
    dec b                                         ; $6912: $05
    dec b                                         ; $6913: $05

jr_024_6914:
    ld e, d                                       ; $6914: $5A
    ret nc                                        ; $6915: $D0

    nop                                           ; $6916: $00
    jr nz, jr_024_6914                            ; $6917: $20 $FB

    ld d, b                                       ; $6919: $50
    ld [hl+], a                                   ; $691A: $22
    dec b                                         ; $691B: $05
    ld b, b                                       ; $691C: $40
    dec bc                                        ; $691D: $0B
    nop                                           ; $691E: $00
    ld [hl-], a                                   ; $691F: $32
    inc hl                                        ; $6920: $23
    ld [hl], b                                    ; $6921: $70
    ld b, b                                       ; $6922: $40
    adc l                                         ; $6923: $8D
    ld b, c                                       ; $6924: $41
    ld sp, $0224                                  ; $6925: $31 $24 $02
    ld l, c                                       ; $6928: $69
    ld [hl+], a                                   ; $6929: $22
    adc $40                                       ; $692A: $CE $40
    nop                                           ; $692C: $00
    add d                                         ; $692D: $82
    rra                                           ; $692E: $1F
    ld [de], a                                    ; $692F: $12
    sub h                                         ; $6930: $94
    ld b, d                                       ; $6931: $42
    sub e                                         ; $6932: $93
    ld h, l                                       ; $6933: $65
    ld b, a                                       ; $6934: $47
    ld d, e                                       ; $6935: $53
    ld c, a                                       ; $6936: $4F
    add h                                         ; $6937: $84
    rrca                                          ; $6938: $0F
    inc d                                         ; $6939: $14
    sub h                                         ; $693A: $94
    add e                                         ; $693B: $83
    inc e                                         ; $693C: $1C
    db $FC                                        ; $693D: $FC
    nop                                           ; $693E: $00
    inc a                                         ; $693F: $3C
    nop                                           ; $6940: $00
    db $FC                                        ; $6941: $FC
    nop                                           ; $6942: $00
    ld b, l                                       ; $6943: $45
    inc h                                         ; $6944: $24
    ld a, [hl-]                                   ; $6945: $3A
    ld l, h                                       ; $6946: $6C
    sub e                                         ; $6947: $93
    ld h, l                                       ; $6948: $65
    ld b, a                                       ; $6949: $47
    ld d, e                                       ; $694A: $53
    ld c, a                                       ; $694B: $4F
    add h                                         ; $694C: $84
    dec b                                         ; $694D: $05
    nop                                           ; $694E: $00
    sub h                                         ; $694F: $94
    add e                                         ; $6950: $83
    ld b, b                                       ; $6951: $40
    nop                                           ; $6952: $00
    inc b                                         ; $6953: $04
    jr z, jr_024_695A                             ; $6954: $28 $04

    nop                                           ; $6956: $00
    nop                                           ; $6957: $00
    ld b, l                                       ; $6958: $45
    inc h                                         ; $6959: $24

jr_024_695A:
    ld l, a                                       ; $695A: $6F
    ld l, b                                       ; $695B: $68
    rlca                                          ; $695C: $07
    nop                                           ; $695D: $00
    ld l, e                                       ; $695E: $6B
    ld c, d                                       ; $695F: $4A
    add hl, bc                                    ; $6960: $09
    nop                                           ; $6961: $00
    jr nz, jr_024_699C                            ; $6962: $20 $38

    ld e, h                                       ; $6964: $5C
    ld b, b                                       ; $6965: $40
    ld b, $0C                                     ; $6966: $06 $0C
    nop                                           ; $6968: $00
    add e                                         ; $6969: $83
    jr z, jr_024_696C                             ; $696A: $28 $00

jr_024_696C:
    db $FC                                        ; $696C: $FC
    dec h                                         ; $696D: $25
    db $FD                                        ; $696E: $FD
    nop                                           ; $696F: $00
    jr nc, jr_024_6972                            ; $6970: $30 $00

jr_024_6972:
    inc b                                         ; $6972: $04
    dec hl                                        ; $6973: $2B
    db $FD                                        ; $6974: $FD
    nop                                           ; $6975: $00
    inc l                                         ; $6976: $2C
    nop                                           ; $6977: $00
    db $FC                                        ; $6978: $FC
    dec hl                                        ; $6979: $2B
    db $FD                                        ; $697A: $FD
    nop                                           ; $697B: $00
    ld a, [hl+]                                   ; $697C: $2A
    nop                                           ; $697D: $00
    inc b                                         ; $697E: $04
    nop                                           ; $697F: $00
    ld b, l                                       ; $6980: $45
    inc h                                         ; $6981: $24
    ld b, a                                       ; $6982: $47
    ld l, c                                       ; $6983: $69
    ld [bc], a                                    ; $6984: $02
    cpl                                           ; $6985: $2F
    nop                                           ; $6986: $00
    dec c                                         ; $6987: $0D
    inc c                                         ; $6988: $0C
    ld b, l                                       ; $6989: $45
    inc h                                         ; $698A: $24
    ld d, a                                       ; $698B: $57
    ld l, [hl]                                    ; $698C: $6E
    ld b, e                                       ; $698D: $43
    ld a, [bc]                                    ; $698E: $0A
    nop                                           ; $698F: $00
    xor d                                         ; $6990: $AA
    and c                                         ; $6991: $A1
    inc b                                         ; $6992: $04
    inc h                                         ; $6993: $24
    and a                                         ; $6994: $A7
    ld l, c                                       ; $6995: $69
    xor [hl]                                      ; $6996: $AE
    xor d                                         ; $6997: $AA
    and c                                         ; $6998: $A1
    ei                                            ; $6999: $FB
    rlca                                          ; $699A: $07
    nop                                           ; $699B: $00

jr_024_699C:
    ld l, e                                       ; $699C: $6B
    ld c, d                                       ; $699D: $4A
    add hl, bc                                    ; $699E: $09
    nop                                           ; $699F: $00
    inc h                                         ; $69A0: $24
    ld c, $6D                                     ; $69A1: $0E $6D
    ld b, l                                       ; $69A3: $45
    inc h                                         ; $69A4: $24
    or [hl]                                       ; $69A5: $B6
    ld l, h                                       ; $69A6: $6C
    ld b, d                                       ; $69A7: $42
    ld b, e                                       ; $69A8: $43
    ld a, [bc]                                    ; $69A9: $0A
    nop                                           ; $69AA: $00
    xor d                                         ; $69AB: $AA
    and c                                         ; $69AC: $A1
    inc b                                         ; $69AD: $04
    inc h                                         ; $69AE: $24
    jp nz, $AE69                                  ; $69AF: $C2 $69 $AE

    xor d                                         ; $69B2: $AA
    and c                                         ; $69B3: $A1
    ei                                            ; $69B4: $FB
    rlca                                          ; $69B5: $07
    nop                                           ; $69B6: $00
    ld l, e                                       ; $69B7: $6B
    ld c, d                                       ; $69B8: $4A
    add hl, bc                                    ; $69B9: $09
    nop                                           ; $69BA: $00
    inc h                                         ; $69BB: $24
    inc h                                         ; $69BC: $24
    ld l, l                                       ; $69BD: $6D
    ld b, l                                       ; $69BE: $45
    inc h                                         ; $69BF: $24
    or [hl]                                       ; $69C0: $B6
    ld l, h                                       ; $69C1: $6C
    ld b, d                                       ; $69C2: $42
    ld b, e                                       ; $69C3: $43
    ld a, [bc]                                    ; $69C4: $0A
    nop                                           ; $69C5: $00
    xor d                                         ; $69C6: $AA
    and c                                         ; $69C7: $A1
    inc b                                         ; $69C8: $04
    inc h                                         ; $69C9: $24
    db $DD                                        ; $69CA: $DD
    ld l, c                                       ; $69CB: $69
    xor [hl]                                      ; $69CC: $AE
    xor d                                         ; $69CD: $AA
    and c                                         ; $69CE: $A1
    ei                                            ; $69CF: $FB
    rlca                                          ; $69D0: $07
    nop                                           ; $69D1: $00
    ld l, e                                       ; $69D2: $6B
    ld c, d                                       ; $69D3: $4A
    add hl, bc                                    ; $69D4: $09
    nop                                           ; $69D5: $00
    inc h                                         ; $69D6: $24
    ld [hl], $6D                                  ; $69D7: $36 $6D
    ld b, l                                       ; $69D9: $45
    inc h                                         ; $69DA: $24
    or [hl]                                       ; $69DB: $B6
    ld l, h                                       ; $69DC: $6C
    ld b, d                                       ; $69DD: $42
    and h                                         ; $69DE: $A4
    ld b, e                                       ; $69DF: $43
    and e                                         ; $69E0: $A3
    inc b                                         ; $69E1: $04
    nop                                           ; $69E2: $00
    add hl, de                                    ; $69E3: $19
    jp nc, $A4D3                                  ; $69E4: $D2 $D3 $A4

    ld b, e                                       ; $69E7: $43
    and e                                         ; $69E8: $A3
    ld [$1300], sp                                ; $69E9: $08 $00 $13
    ld a, [de]                                    ; $69EC: $1A
    db $D3                                        ; $69ED: $D3
    sbc e                                         ; $69EE: $9B
    ld a, b                                       ; $69EF: $78
    ld [hl], b                                    ; $69F0: $70
    sbc a                                         ; $69F1: $9F
    ld c, c                                       ; $69F2: $49
    ld [hl], h                                    ; $69F3: $74
    daa                                           ; $69F4: $27
    ld [hl], e                                    ; $69F5: $73
    jr nz, jr_024_6A71                            ; $69F6: $20 $79

    ld l, a                                       ; $69F8: $6F
    ld [hl], l                                    ; $69F9: $75
    ld hl, $FDFE                                  ; $69FA: $21 $FE $FD
    sbc e                                         ; $69FD: $9B
    cp b                                          ; $69FE: $B8
    halt                                          ; $69FF: $76
    sbc a                                         ; $6A00: $9F
    ld d, a                                       ; $6A01: $57
    ld h, l                                       ; $6A02: $65
    jr nz, @+$6A                                  ; $6A03: $20 $68

    ld h, c                                       ; $6A05: $61
    ld h, h                                       ; $6A06: $64
    jr nz, jr_024_6A6A                            ; $6A07: $20 $61

    jr nz, jr_024_6A6F                            ; $6A09: $20 $64

    ld h, l                                       ; $6A0B: $65
    ld h, c                                       ; $6A0C: $61
    ld l, h                                       ; $6A0D: $6C
    ld l, $FE                                     ; $6A0E: $2E $FE
    db $FD                                        ; $6A10: $FD
    sbc e                                         ; $6A11: $9B
    ld a, b                                       ; $6A12: $78
    ld [hl], b                                    ; $6A13: $70
    sbc a                                         ; $6A14: $9F
    ld c, c                                       ; $6A15: $49
    jr nz, jr_024_6A7C                            ; $6A16: $20 $64

    ld l, c                                       ; $6A18: $69
    ld h, h                                       ; $6A19: $64
    ld l, [hl]                                    ; $6A1A: $6E
    daa                                           ; $6A1B: $27
    ld [hl], h                                    ; $6A1C: $74
    jr nz, jr_024_6A8A                            ; $6A1D: $20 $6B

    ld l, [hl]                                    ; $6A1F: $6E
    ld l, a                                       ; $6A20: $6F
    ld [hl], a                                    ; $6A21: $77
    rst $38                                       ; $6A22: $FF
    ld [hl], h                                    ; $6A23: $74
    ld l, b                                       ; $6A24: $68
    ld l, c                                       ; $6A25: $69
    ld [hl], e                                    ; $6A26: $73
    jr nz, jr_024_6AA0                            ; $6A27: $20 $77

    ld l, a                                       ; $6A29: $6F
    ld [hl], l                                    ; $6A2A: $75
    ld l, h                                       ; $6A2B: $6C
    ld h, h                                       ; $6A2C: $64
    cp $68                                        ; $6A2D: $FE $68
    ld h, c                                       ; $6A2F: $61
    ld [hl], b                                    ; $6A30: $70
    ld [hl], b                                    ; $6A31: $70
    ld h, l                                       ; $6A32: $65
    ld l, [hl]                                    ; $6A33: $6E
    ld hl, $4920                                  ; $6A34: $21 $20 $49
    jr nz, jr_024_6AAD                            ; $6A37: $20 $74

    ld [hl], d                                    ; $6A39: $72
    ld l, c                                       ; $6A3A: $69
    ld h, l                                       ; $6A3B: $65
    ld h, h                                       ; $6A3C: $64
    rst $38                                       ; $6A3D: $FF
    ld [hl], h                                    ; $6A3E: $74
    ld l, a                                       ; $6A3F: $6F
    jr nz, jr_024_6AAE                            ; $6A40: $20 $6C

    ld h, l                                       ; $6A42: $65
    ld h, c                                       ; $6A43: $61
    halt                                          ; $6A44: $76
    ld h, l                                       ; $6A45: $65
    dec l                                         ; $6A46: $2D
    cp $FD                                        ; $6A47: $FE $FD
    sbc e                                         ; $6A49: $9B
    cp b                                          ; $6A4A: $B8
    halt                                          ; $6A4B: $76
    sbc a                                         ; $6A4C: $9F
    ld b, h                                       ; $6A4D: $44
    ld l, a                                       ; $6A4E: $6F
    jr nz, @+$4B                                  ; $6A4F: $20 $49

    jr nz, @+$6A                                  ; $6A51: $20 $68

    ld h, l                                       ; $6A53: $65
    ld h, c                                       ; $6A54: $61
    ld [hl], d                                    ; $6A55: $72
    rst $38                                       ; $6A56: $FF
    ld h, l                                       ; $6A57: $65
    ld a, b                                       ; $6A58: $78
    ld h, e                                       ; $6A59: $63
    ld [hl], l                                    ; $6A5A: $75
    ld [hl], e                                    ; $6A5B: $73
    ld h, l                                       ; $6A5C: $65
    ld [hl], e                                    ; $6A5D: $73
    ccf                                           ; $6A5E: $3F
    jr nz, jr_024_6AAA                            ; $6A5F: $20 $49

    ld [hl], e                                    ; $6A61: $73
    cp $74                                        ; $6A62: $FE $74
    ld l, b                                       ; $6A64: $68
    ld h, c                                       ; $6A65: $61
    ld [hl], h                                    ; $6A66: $74
    jr nz, @+$79                                  ; $6A67: $20 $77

    ld l, b                                       ; $6A69: $68

jr_024_6A6A:
    ld h, c                                       ; $6A6A: $61
    ld [hl], h                                    ; $6A6B: $74
    jr nz, jr_024_6AB7                            ; $6A6C: $20 $49

    rst $38                                       ; $6A6E: $FF

jr_024_6A6F:
    ld l, b                                       ; $6A6F: $68
    ld h, l                                       ; $6A70: $65

jr_024_6A71:
    ld h, c                                       ; $6A71: $61
    ld [hl], d                                    ; $6A72: $72
    ccf                                           ; $6A73: $3F
    ld hl, $FDFE                                  ; $6A74: $21 $FE $FD
    sbc d                                         ; $6A77: $9A
    ld e, b                                       ; $6A78: $58
    ld bc, $9B42                                  ; $6A79: $01 $42 $9B

jr_024_6A7C:
    cp b                                          ; $6A7C: $B8
    halt                                          ; $6A7D: $76
    sbc a                                         ; $6A7E: $9F
    ld c, c                                       ; $6A7F: $49
    daa                                           ; $6A80: $27
    ld l, l                                       ; $6A81: $6D
    jr nz, jr_024_6AF7                            ; $6A82: $20 $73

    ld l, a                                       ; $6A84: $6F
    ld [hl], d                                    ; $6A85: $72
    ld h, l                                       ; $6A86: $65
    ld l, h                                       ; $6A87: $6C
    ld a, c                                       ; $6A88: $79
    rst $38                                       ; $6A89: $FF

jr_024_6A8A:
    ld h, h                                       ; $6A8A: $64
    ld l, c                                       ; $6A8B: $69
    ld [hl], e                                    ; $6A8C: $73
    ld h, c                                       ; $6A8D: $61
    ld [hl], b                                    ; $6A8E: $70
    ld [hl], b                                    ; $6A8F: $70
    ld l, a                                       ; $6A90: $6F
    ld l, c                                       ; $6A91: $69
    ld l, [hl]                                    ; $6A92: $6E
    ld [hl], h                                    ; $6A93: $74
    ld h, l                                       ; $6A94: $65
    ld h, h                                       ; $6A95: $64
    cp $69                                        ; $6A96: $FE $69
    ld l, [hl]                                    ; $6A98: $6E
    jr nz, jr_024_6B14                            ; $6A99: $20 $79

    ld l, a                                       ; $6A9B: $6F
    ld [hl], l                                    ; $6A9C: $75
    inc l                                         ; $6A9D: $2C
    jr nz, @+$64                                  ; $6A9E: $20 $62

jr_024_6AA0:
    ld l, a                                       ; $6AA0: $6F
    ld a, c                                       ; $6AA1: $79
    ld l, $FF                                     ; $6AA2: $2E $FF
    ld c, c                                       ; $6AA4: $49
    jr nz, jr_024_6B14                            ; $6AA5: $20 $6D

    ld h, c                                       ; $6AA7: $61
    ld h, h                                       ; $6AA8: $64
    ld h, l                                       ; $6AA9: $65

jr_024_6AAA:
    jr nz, jr_024_6B20                            ; $6AAA: $20 $74

    ld l, b                                       ; $6AAC: $68

jr_024_6AAD:
    ld l, c                                       ; $6AAD: $69

jr_024_6AAE:
    ld [hl], e                                    ; $6AAE: $73
    cp $6F                                        ; $6AAF: $FE $6F
    ld h, [hl]                                    ; $6AB1: $66
    ld h, [hl]                                    ; $6AB2: $66
    ld h, l                                       ; $6AB3: $65
    ld [hl], d                                    ; $6AB4: $72
    jr nz, jr_024_6B2E                            ; $6AB5: $20 $77

jr_024_6AB7:
    ld l, c                                       ; $6AB7: $69
    ld [hl], h                                    ; $6AB8: $74
    ld l, b                                       ; $6AB9: $68
    jr nz, @+$69                                  ; $6ABA: $20 $67

    ld l, a                                       ; $6ABC: $6F
    ld l, a                                       ; $6ABD: $6F
    ld h, h                                       ; $6ABE: $64
    rst $38                                       ; $6ABF: $FF
    ld l, c                                       ; $6AC0: $69
    ld l, [hl]                                    ; $6AC1: $6E
    ld [hl], h                                    ; $6AC2: $74
    ld h, l                                       ; $6AC3: $65
    ld l, [hl]                                    ; $6AC4: $6E
    ld [hl], h                                    ; $6AC5: $74
    ld l, c                                       ; $6AC6: $69
    ld l, a                                       ; $6AC7: $6F
    ld l, [hl]                                    ; $6AC8: $6E
    ld [hl], e                                    ; $6AC9: $73
    ld l, $FE                                     ; $6ACA: $2E $FE
    ld e, c                                       ; $6ACC: $59
    ld l, a                                       ; $6ACD: $6F
    ld [hl], l                                    ; $6ACE: $75
    jr nz, jr_024_6B38                            ; $6ACF: $20 $67

    ld h, l                                       ; $6AD1: $65
    ld [hl], h                                    ; $6AD2: $74
    jr nz, jr_024_6B49                            ; $6AD3: $20 $74

    ld l, a                                       ; $6AD5: $6F
    jr nz, jr_024_6B3F                            ; $6AD6: $20 $67

    ld l, a                                       ; $6AD8: $6F
    rst $38                                       ; $6AD9: $FF
    ld l, b                                       ; $6ADA: $68
    ld l, a                                       ; $6ADB: $6F
    ld l, l                                       ; $6ADC: $6D
    ld h, l                                       ; $6ADD: $65
    inc l                                         ; $6ADE: $2C
    jr nz, jr_024_6B42                            ; $6ADF: $20 $61

    ld l, [hl]                                    ; $6AE1: $6E
    ld h, h                                       ; $6AE2: $64
    jr nz, jr_024_6B52                            ; $6AE3: $20 $6D

    ld a, c                                       ; $6AE5: $79
    cp $6D                                        ; $6AE6: $FE $6D
    ld h, c                                       ; $6AE8: $61
    ld [hl], e                                    ; $6AE9: $73
    ld [hl], h                                    ; $6AEA: $74
    ld h, l                                       ; $6AEB: $65
    ld [hl], d                                    ; $6AEC: $72
    jr nz, jr_024_6B30                            ; $6AED: $20 $41

    ld h, a                                       ; $6AEF: $67
    ld [hl], d                                    ; $6AF0: $72
    ld h, c                                       ; $6AF1: $61
    ld l, l                                       ; $6AF2: $6D
    rst $38                                       ; $6AF3: $FF
    ld [hl], a                                    ; $6AF4: $77
    ld l, a                                       ; $6AF5: $6F
    ld [hl], l                                    ; $6AF6: $75

jr_024_6AF7:
    ld l, h                                       ; $6AF7: $6C
    ld h, h                                       ; $6AF8: $64
    jr nz, jr_024_6B5D                            ; $6AF9: $20 $62

    ld h, l                                       ; $6AFB: $65
    jr nz, jr_024_6B5F                            ; $6AFC: $20 $61

    ld h, d                                       ; $6AFE: $62
    ld l, h                                       ; $6AFF: $6C
    ld h, l                                       ; $6B00: $65
    cp $74                                        ; $6B01: $FE $74
    ld l, a                                       ; $6B03: $6F
    jr nz, jr_024_6B69                            ; $6B04: $20 $63

    ld l, a                                       ; $6B06: $6F
    ld l, l                                       ; $6B07: $6D
    ld [hl], b                                    ; $6B08: $70
    ld l, h                                       ; $6B09: $6C
    ld h, l                                       ; $6B0A: $65
    ld [hl], h                                    ; $6B0B: $74
    ld h, l                                       ; $6B0C: $65
    jr nz, jr_024_6B77                            ; $6B0D: $20 $68

    ld l, c                                       ; $6B0F: $69
    ld [hl], e                                    ; $6B10: $73
    rst $38                                       ; $6B11: $FF
    ld l, l                                       ; $6B12: $6D
    ld l, c                                       ; $6B13: $69

jr_024_6B14:
    ld [hl], e                                    ; $6B14: $73
    ld [hl], e                                    ; $6B15: $73
    ld l, c                                       ; $6B16: $69
    ld l, a                                       ; $6B17: $6F
    ld l, [hl]                                    ; $6B18: $6E
    jr nz, jr_024_6B7C                            ; $6B19: $20 $61

    ld l, [hl]                                    ; $6B1B: $6E
    ld h, h                                       ; $6B1C: $64
    cp $77                                        ; $6B1D: $FE $77
    ld l, c                                       ; $6B1F: $69

jr_024_6B20:
    ld [hl], b                                    ; $6B20: $70
    ld h, l                                       ; $6B21: $65
    jr nz, jr_024_6B93                            ; $6B22: $20 $6F

    ld [hl], l                                    ; $6B24: $75
    ld [hl], h                                    ; $6B25: $74
    jr nz, @+$63                                  ; $6B26: $20 $61

    ld l, h                                       ; $6B28: $6C
    ld l, h                                       ; $6B29: $6C
    jr nz, jr_024_6B9B                            ; $6B2A: $20 $6F

    ld h, [hl]                                    ; $6B2C: $66
    rst $38                                       ; $6B2D: $FF

jr_024_6B2E:
    ld b, c                                       ; $6B2E: $41
    ld h, a                                       ; $6B2F: $67

jr_024_6B30:
    ld h, c                                       ; $6B30: $61
    ld h, h                                       ; $6B31: $64
    ld l, a                                       ; $6B32: $6F
    ld l, [hl]                                    ; $6B33: $6E
    daa                                           ; $6B34: $27
    ld [hl], e                                    ; $6B35: $73
    jr nz, jr_024_6BAC                            ; $6B36: $20 $74

jr_024_6B38:
    ld [hl], d                                    ; $6B38: $72
    ld l, c                                       ; $6B39: $69
    ld h, d                                       ; $6B3A: $62
    ld h, l                                       ; $6B3B: $65
    ld l, $FE                                     ; $6B3C: $2E $FE
    db $FD                                        ; $6B3E: $FD

jr_024_6B3F:
    sbc e                                         ; $6B3F: $9B
    ld a, b                                       ; $6B40: $78
    ld [hl], b                                    ; $6B41: $70

jr_024_6B42:
    sbc a                                         ; $6B42: $9F
    ld l, $2E                                     ; $6B43: $2E $2E
    ld l, $2E                                     ; $6B45: $2E $2E
    ld l, $2E                                     ; $6B47: $2E $2E

jr_024_6B49:
    ld l, $2E                                     ; $6B49: $2E $2E
    ld l, $FE                                     ; $6B4B: $2E $FE
    db $FD                                        ; $6B4D: $FD
    sbc e                                         ; $6B4E: $9B
    cp b                                          ; $6B4F: $B8
    halt                                          ; $6B50: $76
    sbc a                                         ; $6B51: $9F

jr_024_6B52:
    ld b, d                                       ; $6B52: $42
    ld [hl], l                                    ; $6B53: $75
    ld [hl], h                                    ; $6B54: $74
    jr nz, jr_024_6BD0                            ; $6B55: $20 $79

    ld l, a                                       ; $6B57: $6F
    ld [hl], l                                    ; $6B58: $75
    ld l, $2E                                     ; $6B59: $2E $2E
    ld l, $FE                                     ; $6B5B: $2E $FE

jr_024_6B5D:
    ld l, b                                       ; $6B5D: $68
    ld h, l                                       ; $6B5E: $65

jr_024_6B5F:
    ld l, h                                       ; $6B5F: $6C
    ld [hl], b                                    ; $6B60: $70
    ld l, c                                       ; $6B61: $69
    ld l, [hl]                                    ; $6B62: $6E
    ld h, a                                       ; $6B63: $67
    jr nz, @+$76                                  ; $6B64: $20 $74

    ld l, b                                       ; $6B66: $68
    ld h, l                                       ; $6B67: $65
    ld [hl], e                                    ; $6B68: $73

jr_024_6B69:
    ld h, l                                       ; $6B69: $65
    rst $38                                       ; $6B6A: $FF
    ld b, c                                       ; $6B6B: $41
    ld [hl], d                                    ; $6B6C: $72
    ld h, h                                       ; $6B6D: $64
    ld h, l                                       ; $6B6E: $65
    ld [hl], d                                    ; $6B6F: $72
    ld l, c                                       ; $6B70: $69
    ld h, c                                       ; $6B71: $61
    ld l, h                                       ; $6B72: $6C
    jr nz, jr_024_6BE8                            ; $6B73: $20 $73

    ld h, e                                       ; $6B75: $63
    ld [hl], l                                    ; $6B76: $75

jr_024_6B77:
    ld l, l                                       ; $6B77: $6D
    cp $61                                        ; $6B78: $FE $61
    ld l, [hl]                                    ; $6B7A: $6E
    ld h, h                                       ; $6B7B: $64

jr_024_6B7C:
    jr nz, @+$6A                                  ; $6B7C: $20 $68

    ld h, c                                       ; $6B7E: $61
    ld l, h                                       ; $6B7F: $6C
    ld [hl], h                                    ; $6B80: $74
    ld l, c                                       ; $6B81: $69
    ld l, [hl]                                    ; $6B82: $6E
    ld h, a                                       ; $6B83: $67
    rst $38                                       ; $6B84: $FF
    ld l, a                                       ; $6B85: $6F
    ld [hl], l                                    ; $6B86: $75
    ld [hl], d                                    ; $6B87: $72
    jr nz, jr_024_6BFA                            ; $6B88: $20 $70

    ld l, h                                       ; $6B8A: $6C
    ld h, c                                       ; $6B8B: $61
    ld l, [hl]                                    ; $6B8C: $6E
    ld [hl], e                                    ; $6B8D: $73
    ld hl, $54FE                                  ; $6B8E: $21 $FE $54
    ld l, b                                       ; $6B91: $68
    ld l, c                                       ; $6B92: $69

jr_024_6B93:
    ld [hl], e                                    ; $6B93: $73
    jr nz, jr_024_6BDF                            ; $6B94: $20 $49

    jr nz, jr_024_6C0F                            ; $6B96: $20 $77

    ld l, c                                       ; $6B98: $69
    ld l, h                                       ; $6B99: $6C
    ld l, h                                       ; $6B9A: $6C

jr_024_6B9B:
    rst $38                                       ; $6B9B: $FF
    ld l, [hl]                                    ; $6B9C: $6E
    ld l, a                                       ; $6B9D: $6F
    ld [hl], h                                    ; $6B9E: $74
    jr nz, jr_024_6C07                            ; $6B9F: $20 $66

    ld l, a                                       ; $6BA1: $6F
    ld [hl], d                                    ; $6BA2: $72
    ld h, a                                       ; $6BA3: $67
    ld l, c                                       ; $6BA4: $69
    halt                                          ; $6BA5: $76
    ld h, l                                       ; $6BA6: $65
    ld hl, $FDFE                                  ; $6BA7: $21 $FE $FD
    sbc d                                         ; $6BAA: $9A
    ld e, b                                       ; $6BAB: $58

jr_024_6BAC:
    ld [bc], a                                    ; $6BAC: $02
    ld b, d                                       ; $6BAD: $42
    sbc e                                         ; $6BAE: $9B
    cp b                                          ; $6BAF: $B8
    halt                                          ; $6BB0: $76
    sbc a                                         ; $6BB1: $9F
    ld c, c                                       ; $6BB2: $49
    daa                                           ; $6BB3: $27
    ld l, h                                       ; $6BB4: $6C
    ld l, h                                       ; $6BB5: $6C
    jr nz, @+$75                                  ; $6BB6: $20 $73

    ld h, l                                       ; $6BB8: $65
    ld l, [hl]                                    ; $6BB9: $6E
    ld h, h                                       ; $6BBA: $64
    jr nz, jr_024_6C36                            ; $6BBB: $20 $79

    ld l, a                                       ; $6BBD: $6F
    ld [hl], l                                    ; $6BBE: $75
    rst $38                                       ; $6BBF: $FF
    ld [hl], h                                    ; $6BC0: $74
    ld l, a                                       ; $6BC1: $6F
    jr nz, jr_024_6C38                            ; $6BC2: $20 $74

    ld l, b                                       ; $6BC4: $68
    ld h, l                                       ; $6BC5: $65
    jr nz, jr_024_6C09                            ; $6BC6: $20 $41

    ld h, d                                       ; $6BC8: $62
    ld a, c                                       ; $6BC9: $79
    ld [hl], e                                    ; $6BCA: $73
    ld [hl], e                                    ; $6BCB: $73
    ld hl, $54FE                                  ; $6BCC: $21 $FE $54
    ld l, b                                       ; $6BCF: $68

jr_024_6BD0:
    ld l, c                                       ; $6BD0: $69
    ld [hl], e                                    ; $6BD1: $73
    jr nz, jr_024_6C3D                            ; $6BD2: $20 $69

    ld [hl], e                                    ; $6BD4: $73
    jr nz, jr_024_6C4B                            ; $6BD5: $20 $74

    ld l, b                                       ; $6BD7: $68
    ld h, l                                       ; $6BD8: $65
    jr nz, jr_024_6C40                            ; $6BD9: $20 $65

    ld l, [hl]                                    ; $6BDB: $6E
    ld h, h                                       ; $6BDC: $64
    rst $38                                       ; $6BDD: $FF
    ld h, [hl]                                    ; $6BDE: $66

jr_024_6BDF:
    ld l, a                                       ; $6BDF: $6F
    ld [hl], d                                    ; $6BE0: $72
    jr nz, jr_024_6C5C                            ; $6BE1: $20 $79

    ld l, a                                       ; $6BE3: $6F
    ld [hl], l                                    ; $6BE4: $75
    ld hl, $FDFE                                  ; $6BE5: $21 $FE $FD

jr_024_6BE8:
    sbc d                                         ; $6BE8: $9A
    ld e, b                                       ; $6BE9: $58
    inc bc                                        ; $6BEA: $03
    ld b, d                                       ; $6BEB: $42
    sub e                                         ; $6BEC: $93
    ld h, l                                       ; $6BED: $65
    ld d, [hl]                                    ; $6BEE: $56
    ld d, e                                       ; $6BEF: $53
    ld c, a                                       ; $6BF0: $4F
    ld h, h                                       ; $6BF1: $64
    ld e, e                                       ; $6BF2: $5B
    ld e, c                                       ; $6BF3: $59
    ld l, c                                       ; $6BF4: $69
    ld [hl], b                                    ; $6BF5: $70
    ld e, c                                       ; $6BF6: $59
    ld h, [hl]                                    ; $6BF7: $66
    ret nz                                        ; $6BF8: $C0

    ld e, h                                       ; $6BF9: $5C

jr_024_6BFA:
    ld hl, $0005                                  ; $6BFA: $21 $05 $00
    add c                                         ; $6BFD: $81
    ld e, l                                       ; $6BFE: $5D
    dec b                                         ; $6BFF: $05
    dec b                                         ; $6C00: $05

jr_024_6C01:
    push af                                       ; $6C01: $F5
    ret nc                                        ; $6C02: $D0

    nop                                           ; $6C03: $00
    jr nz, jr_024_6C01                            ; $6C04: $20 $FB

    ld d, b                                       ; $6C06: $50

jr_024_6C07:
    ld [hl+], a                                   ; $6C07: $22
    dec b                                         ; $6C08: $05

jr_024_6C09:
    ld b, b                                       ; $6C09: $40
    dec b                                         ; $6C0A: $05
    ld [bc], a                                    ; $6C0B: $02
    ld l, e                                       ; $6C0C: $6B
    ld c, d                                       ; $6C0D: $4A
    ld a, [hl+]                                   ; $6C0E: $2A

jr_024_6C0F:
    add hl, bc                                    ; $6C0F: $09
    jp c, $00D1                                   ; $6C10: $DA $D1 $00

    inc h                                         ; $6C13: $24
    jp nz, $226C                                  ; $6C14: $C2 $6C $22

    dec b                                         ; $6C17: $05
    ld b, b                                       ; $6C18: $40
    ld l, e                                       ; $6C19: $6B
    jr nc, jr_024_6C27                            ; $6C1A: $30 $0B

    ret nz                                        ; $6C1C: $C0

    ld l, h                                       ; $6C1D: $6C
    nop                                           ; $6C1E: $00
    add b                                         ; $6C1F: $80
    nop                                           ; $6C20: $00
    dec bc                                        ; $6C21: $0B
    nop                                           ; $6C22: $00
    ld [hl-], a                                   ; $6C23: $32
    inc hl                                        ; $6C24: $23
    ld [hl], b                                    ; $6C25: $70
    ld b, b                                       ; $6C26: $40

jr_024_6C27:
    adc l                                         ; $6C27: $8D
    ld b, c                                       ; $6C28: $41
    ld sp, $EC24                                  ; $6C29: $31 $24 $EC
    ld l, e                                       ; $6C2C: $6B
    ld [hl+], a                                   ; $6C2D: $22
    adc $40                                       ; $6C2E: $CE $40
    nop                                           ; $6C30: $00
    add d                                         ; $6C31: $82
    rra                                           ; $6C32: $1F
    ld [de], a                                    ; $6C33: $12
    sub h                                         ; $6C34: $94
    ld e, d                                       ; $6C35: $5A

jr_024_6C36:
    inc h                                         ; $6C36: $24
    xor c                                         ; $6C37: $A9

jr_024_6C38:
    ld l, h                                       ; $6C38: $6C
    ld b, d                                       ; $6C39: $42
    sub e                                         ; $6C3A: $93
    ld h, l                                       ; $6C3B: $65
    ld d, [hl]                                    ; $6C3C: $56

jr_024_6C3D:
    ld d, e                                       ; $6C3D: $53
    ld c, a                                       ; $6C3E: $4F
    ld h, h                                       ; $6C3F: $64

jr_024_6C40:
    ld e, e                                       ; $6C40: $5B
    ld e, c                                       ; $6C41: $59
    ld l, c                                       ; $6C42: $69
    ld [hl], b                                    ; $6C43: $70
    ld e, c                                       ; $6C44: $59
    ld h, [hl]                                    ; $6C45: $66
    ret nz                                        ; $6C46: $C0

    ld e, h                                       ; $6C47: $5C
    ld hl, $0005                                  ; $6C48: $21 $05 $00

jr_024_6C4B:
    ld l, e                                       ; $6C4B: $6B
    ld c, d                                       ; $6C4C: $4A
    ld e, $16                                     ; $6C4D: $1E $16
    ld a, $D4                                     ; $6C4F: $3E $D4
    nop                                           ; $6C51: $00
    inc h                                         ; $6C52: $24
    add c                                         ; $6C53: $81
    ld [hl], b                                    ; $6C54: $70
    ld [hl+], a                                   ; $6C55: $22
    dec b                                         ; $6C56: $05
    ld b, b                                       ; $6C57: $40
    dec b                                         ; $6C58: $05
    ld [bc], a                                    ; $6C59: $02
    ld l, e                                       ; $6C5A: $6B
    ld c, d                                       ; $6C5B: $4A

jr_024_6C5C:
    ld a, [hl+]                                   ; $6C5C: $2A
    add hl, bc                                    ; $6C5D: $09
    jp c, $00D1                                   ; $6C5E: $DA $D1 $00

    inc h                                         ; $6C61: $24
    jp nz, $226C                                  ; $6C62: $C2 $6C $22

    dec b                                         ; $6C65: $05
    ld b, b                                       ; $6C66: $40
    ld l, e                                       ; $6C67: $6B
    jr nc, jr_024_6C75                            ; $6C68: $30 $0B

    ret nz                                        ; $6C6A: $C0

    ld l, h                                       ; $6C6B: $6C
    nop                                           ; $6C6C: $00
    add b                                         ; $6C6D: $80
    nop                                           ; $6C6E: $00
    add h                                         ; $6C6F: $84
    ld b, $1D                                     ; $6C70: $06 $1D
    sub h                                         ; $6C72: $94
    add e                                         ; $6C73: $83
    ld a, [hl+]                                   ; $6C74: $2A

jr_024_6C75:
    nop                                           ; $6C75: $00
    db $FC                                        ; $6C76: $FC
    dec hl                                        ; $6C77: $2B
    inc bc                                        ; $6C78: $03
    nop                                           ; $6C79: $00
    inc l                                         ; $6C7A: $2C
    nop                                           ; $6C7B: $00
    inc b                                         ; $6C7C: $04
    dec hl                                        ; $6C7D: $2B
    inc bc                                        ; $6C7E: $03
    nop                                           ; $6C7F: $00
    jr nc, jr_024_6C82                            ; $6C80: $30 $00

jr_024_6C82:
    db $FC                                        ; $6C82: $FC
    dec h                                         ; $6C83: $25
    inc bc                                        ; $6C84: $03
    nop                                           ; $6C85: $00
    jr z, jr_024_6C88                             ; $6C86: $28 $00

jr_024_6C88:
    inc b                                         ; $6C88: $04
    nop                                           ; $6C89: $00
    dec bc                                        ; $6C8A: $0B
    nop                                           ; $6C8B: $00
    ld [hl-], a                                   ; $6C8C: $32
    inc hl                                        ; $6C8D: $23
    ld [hl], b                                    ; $6C8E: $70
    ld b, b                                       ; $6C8F: $40
    adc l                                         ; $6C90: $8D
    ld b, c                                       ; $6C91: $41
    ld sp, $EC24                                  ; $6C92: $31 $24 $EC
    ld l, e                                       ; $6C95: $6B
    ld [hl+], a                                   ; $6C96: $22
    adc $40                                       ; $6C97: $CE $40
    ld h, b                                       ; $6C99: $60
    ld bc, $0007                                  ; $6C9A: $01 $07 $00
    add c                                         ; $6C9D: $81
    ld e, l                                       ; $6C9E: $5D
    add hl, bc                                    ; $6C9F: $09
    nop                                           ; $6CA0: $00
    jr nz, @-$53                                  ; $6CA1: $20 $AB

    ld d, b                                       ; $6CA3: $50
    ld e, d                                       ; $6CA4: $5A
    inc h                                         ; $6CA5: $24
    xor c                                         ; $6CA6: $A9
    ld l, h                                       ; $6CA7: $6C
    ld b, d                                       ; $6CA8: $42
    ld h, b                                       ; $6CA9: $60
    ld [bc], a                                    ; $6CAA: $02
    ld sp, $EC24                                  ; $6CAB: $31 $24 $EC
    ld l, e                                       ; $6CAE: $6B
    ld [hl+], a                                   ; $6CAF: $22
    adc $40                                       ; $6CB0: $CE $40
    ld b, l                                       ; $6CB2: $45
    inc hl                                        ; $6CB3: $23
    ccf                                           ; $6CB4: $3F
    ld b, c                                       ; $6CB5: $41
    rra                                           ; $6CB6: $1F
    ld c, $0B                                     ; $6CB7: $0E $0B
    ld [bc], a                                    ; $6CB9: $02
    ld l, a                                       ; $6CBA: $6F
    ldh a, [rP1]                                  ; $6CBB: $F0 $00
    nop                                           ; $6CBD: $00
    halt                                          ; $6CBE: $76
    jr nz, @-$0E                                  ; $6CBF: $20 $F0

    ld b, d                                       ; $6CC1: $42
    dec d                                         ; $6CC2: $15
    rrca                                          ; $6CC3: $0F
    adc h                                         ; $6CC4: $8C
    ld [hl], b                                    ; $6CC5: $70
    db $10                                        ; $6CC6: $10
    rrca                                          ; $6CC7: $0F
    ld d, d                                       ; $6CC8: $52
    ld [hl], b                                    ; $6CC9: $70
    db $10                                        ; $6CCA: $10
    rrca                                          ; $6CCB: $0F
    ret z                                         ; $6CCC: $C8

jr_024_6CCD:
    ld [hl], b                                    ; $6CCD: $70
    nop                                           ; $6CCE: $00
    nop                                           ; $6CCF: $00
    ld e, e                                       ; $6CD0: $5B
    inc h                                         ; $6CD1: $24
    xor $69                                       ; $6CD2: $EE $69
    ld h, d                                       ; $6CD4: $62
    ld bc, $0F15                                  ; $6CD5: $01 $15 $0F
    ld [hl-], a                                   ; $6CD8: $32
    ld [hl], b                                    ; $6CD9: $70
    ld [$020F], sp                                ; $6CDA: $08 $0F $02
    ld [hl], b                                    ; $6CDD: $70
    db $10                                        ; $6CDE: $10

jr_024_6CDF:
    rrca                                          ; $6CDF: $0F
    add d                                         ; $6CE0: $82
    ld [hl], b                                    ; $6CE1: $70
    nop                                           ; $6CE2: $00
    nop                                           ; $6CE3: $00
    ld e, h                                       ; $6CE4: $5C
    nop                                           ; $6CE5: $00
    ld [bc], a                                    ; $6CE6: $02
    dec d                                         ; $6CE7: $15
    rrca                                          ; $6CE8: $0F
    add d                                         ; $6CE9: $82
    ld [hl], b                                    ; $6CEA: $70
    jr nz, jr_024_6CFC                            ; $6CEB: $20 $0F

    sub [hl]                                      ; $6CED: $96
    ld [hl], b                                    ; $6CEE: $70
    ld [$8C0F], sp                                ; $6CEF: $08 $0F $8C
    ld [hl], b                                    ; $6CF2: $70
    nop                                           ; $6CF3: $00
    nop                                           ; $6CF4: $00
    ld e, e                                       ; $6CF5: $5B
    inc h                                         ; $6CF6: $24
    ld a, e                                       ; $6CF7: $7B
    ld l, d                                       ; $6CF8: $6A
    ld h, d                                       ; $6CF9: $62
    ld [bc], a                                    ; $6CFA: $02
    ld e, e                                       ; $6CFB: $5B

jr_024_6CFC:
    inc h                                         ; $6CFC: $24
    xor [hl]                                      ; $6CFD: $AE
    ld l, e                                       ; $6CFE: $6B
    ld h, d                                       ; $6CFF: $62
    inc bc                                        ; $6D00: $03
    dec d                                         ; $6D01: $15

jr_024_6D02:
    rrca                                          ; $6D02: $0F
    ld d, d                                       ; $6D03: $52
    ld [hl], b                                    ; $6D04: $70
    ld [$8C0F], sp                                ; $6D05: $08 $0F $8C
    ld [hl], b                                    ; $6D08: $70
    nop                                           ; $6D09: $00
    nop                                           ; $6D0A: $00
    ld d, [hl]                                    ; $6D0B: $56
    ld [bc], a                                    ; $6D0C: $02
    ld b, d                                       ; $6D0D: $42
    dec d                                         ; $6D0E: $15
    jr nz, jr_024_6D2E                            ; $6D0F: $20 $1D

    ld d, b                                       ; $6D11: $50

jr_024_6D12:
    db $10                                        ; $6D12: $10
    jr nz, @+$5F                                  ; $6D13: $20 $5D

    ld d, b                                       ; $6D15: $50
    ld [$E720], sp                                ; $6D16: $08 $20 $E7

jr_024_6D19:
    ld d, b                                       ; $6D19: $50
    nop                                           ; $6D1A: $00
    nop                                           ; $6D1B: $00
    ld e, h                                       ; $6D1C: $5C
    nop                                           ; $6D1D: $00
    ld [bc], a                                    ; $6D1E: $02
    inc d                                         ; $6D1F: $14
    jr nz, jr_024_6CCD                            ; $6D20: $20 $AB

    ld d, b                                       ; $6D22: $50
    ld b, d                                       ; $6D23: $42
    dec d                                         ; $6D24: $15
    jr nz, jr_024_6D44                            ; $6D25: $20 $1D

    ld d, b                                       ; $6D27: $50
    db $10                                        ; $6D28: $10
    jr nz, jr_024_6D12                            ; $6D29: $20 $E7

    ld d, b                                       ; $6D2B: $50
    nop                                           ; $6D2C: $00
    nop                                           ; $6D2D: $00

jr_024_6D2E:
    ld e, h                                       ; $6D2E: $5C
    nop                                           ; $6D2F: $00
    ld [bc], a                                    ; $6D30: $02
    inc d                                         ; $6D31: $14
    jr nz, jr_024_6CDF                            ; $6D32: $20 $AB

    ld d, b                                       ; $6D34: $50
    ld b, d                                       ; $6D35: $42
    dec d                                         ; $6D36: $15
    jr nz, jr_024_6D02                            ; $6D37: $20 $C9

    ld d, b                                       ; $6D39: $50
    ld [$E720], sp                                ; $6D3A: $08 $20 $E7
    ld d, b                                       ; $6D3D: $50
    nop                                           ; $6D3E: $00
    nop                                           ; $6D3F: $00
    ld e, h                                       ; $6D40: $5C
    nop                                           ; $6D41: $00
    ld [bc], a                                    ; $6D42: $02
    inc d                                         ; $6D43: $14

jr_024_6D44:
    jr nz, @-$53                                  ; $6D44: $20 $AB

    ld d, b                                       ; $6D46: $50
    ld b, d                                       ; $6D47: $42
    ld [bc], a                                    ; $6D48: $02
    nop                                           ; $6D49: $00
    cpl                                           ; $6D4A: $2F
    inc c                                         ; $6D4B: $0C
    dec c                                         ; $6D4C: $0D
    ld b, l                                       ; $6D4D: $45
    inc h                                         ; $6D4E: $24
    db $EC                                        ; $6D4F: $EC
    ld l, e                                       ; $6D50: $6B
    ld [bc], a                                    ; $6D51: $02
    jr nz, jr_024_6D5D                            ; $6D52: $20 $09

    nop                                           ; $6D54: $00
    ld sp, $2445                                  ; $6D55: $31 $45 $24
    and l                                         ; $6D58: $A5
    ld a, [hl]                                    ; $6D59: $7E
    ld [bc], a                                    ; $6D5A: $02
    ccf                                           ; $6D5B: $3F
    nop                                           ; $6D5C: $00

jr_024_6D5D:
    rra                                           ; $6D5D: $1F
    ld a, [bc]                                    ; $6D5E: $0A
    ld b, l                                       ; $6D5F: $45
    inc h                                         ; $6D60: $24
    db $CD, $7A, $44
    ld a, l                                       ; $6D64: $7D

jr_024_6D65:
    ld l, l                                       ; $6D65: $6D
    rlca                                          ; $6D66: $07
    nop                                           ; $6D67: $00
    ld l, e                                       ; $6D68: $6B
    ld c, d                                       ; $6D69: $4A
    add hl, bc                                    ; $6D6A: $09
    nop                                           ; $6D6B: $00
    jr nz, jr_024_6D19                            ; $6D6C: $20 $AB

    ld d, b                                       ; $6D6E: $50
    ld b, e                                       ; $6D6F: $43
    ld de, $C801                                  ; $6D70: $11 $01 $C8
    and e                                         ; $6D73: $A3
    dec b                                         ; $6D74: $05
    nop                                           ; $6D75: $00
    inc h                                         ; $6D76: $24
    ld a, l                                       ; $6D77: $7D
    ld l, l                                       ; $6D78: $6D
    ld b, l                                       ; $6D79: $45
    inc hl                                        ; $6D7A: $23
    dec hl                                        ; $6D7B: $2B
    ld b, [hl]                                    ; $6D7C: $46
    and d                                         ; $6D7D: $A2
    jr z, @-$5D                                   ; $6D7E: $28 $A1

    ld b, b                                       ; $6D80: $40
    ld [hl+], a                                   ; $6D81: $22
    inc b                                         ; $6D82: $04
    ld b, b                                       ; $6D83: $40
    cp [hl]                                       ; $6D84: $BE
    and e                                         ; $6D85: $A3
    call nc, $9868                                ; $6D86: $D4 $68 $98
    ld a, a                                       ; $6D89: $7F
    ld a, b                                       ; $6D8A: $78
    ld a, h                                       ; $6D8B: $7C
    ld d, d                                       ; $6D8C: $52
    ld a, h                                       ; $6D8D: $7C
    ld a, a                                       ; $6D8E: $7F
    ld [hl+], a                                   ; $6D8F: $22
    call nc, $0403                                ; $6D90: $D4 $03 $04
    ld [hl+], a                                   ; $6D93: $22
    call nc, $2210                                ; $6D94: $D4 $10 $22
    ld b, h                                       ; $6D97: $44
    and e                                         ; $6D98: $A3
    ld l, l                                       ; $6D99: $6D
    and [hl]                                      ; $6D9A: $A6
    ret z                                         ; $6D9B: $C8

    and e                                         ; $6D9C: $A3
    inc c                                         ; $6D9D: $0C
    ld bc, $A3C8                                  ; $6D9E: $01 $C8 $A3

jr_024_6DA1:
    dec b                                         ; $6DA1: $05
    ld bc, $2345                                  ; $6DA2: $01 $45 $23
    dec hl                                        ; $6DA5: $2B
    ld b, [hl]                                    ; $6DA6: $46
    ld b, h                                       ; $6DA7: $44
    pop bc                                        ; $6DA8: $C1
    ld l, l                                       ; $6DA9: $6D
    rlca                                          ; $6DAA: $07
    nop                                           ; $6DAB: $00
    ld l, e                                       ; $6DAC: $6B
    ld c, d                                       ; $6DAD: $4A
    add hl, bc                                    ; $6DAE: $09
    nop                                           ; $6DAF: $00
    jr nz, jr_024_6D5D                            ; $6DB0: $20 $AB

    ld d, b                                       ; $6DB2: $50
    ld b, e                                       ; $6DB3: $43
    ld de, $C801                                  ; $6DB4: $11 $01 $C8
    and e                                         ; $6DB7: $A3
    dec b                                         ; $6DB8: $05
    nop                                           ; $6DB9: $00
    inc h                                         ; $6DBA: $24
    pop bc                                        ; $6DBB: $C1
    ld l, l                                       ; $6DBC: $6D
    ld b, l                                       ; $6DBD: $45
    inc hl                                        ; $6DBE: $23
    dec hl                                        ; $6DBF: $2B
    ld b, [hl]                                    ; $6DC0: $46
    and d                                         ; $6DC1: $A2
    jr z, jr_024_6D65                             ; $6DC2: $28 $A1

    add b                                         ; $6DC4: $80
    ld [hl+], a                                   ; $6DC5: $22
    inc b                                         ; $6DC6: $04
    ld b, b                                       ; $6DC7: $40
    cp [hl]                                       ; $6DC8: $BE
    ld [hl], e                                    ; $6DC9: $73
    jp nc, $9868                                  ; $6DCA: $D2 $68 $98

    ld a, a                                       ; $6DCD: $7F
    ld a, b                                       ; $6DCE: $78
    ld a, h                                       ; $6DCF: $7C
    ld d, d                                       ; $6DD0: $52
    ld a, h                                       ; $6DD1: $7C
    ld a, a                                       ; $6DD2: $7F
    ld a, [c]                                     ; $6DD3: $F2
    pop de                                        ; $6DD4: $D1
    inc bc                                        ; $6DD5: $03
    inc b                                         ; $6DD6: $04
    ld a, [c]                                     ; $6DD7: $F2
    pop de                                        ; $6DD8: $D1
    rlca                                          ; $6DD9: $07
    ld [hl-], a                                   ; $6DDA: $32
    ld b, h                                       ; $6DDB: $44
    rst $20                                       ; $6DDC: $E7
    ld l, l                                       ; $6DDD: $6D
    and [hl]                                      ; $6DDE: $A6
    ret z                                         ; $6DDF: $C8

    and e                                         ; $6DE0: $A3
    inc c                                         ; $6DE1: $0C
    ld bc, $A3C8                                  ; $6DE2: $01 $C8 $A3
    dec b                                         ; $6DE5: $05
    ld bc, $2345                                  ; $6DE6: $01 $45 $23
    dec hl                                        ; $6DE9: $2B
    ld b, [hl]                                    ; $6DEA: $46
    ld b, h                                       ; $6DEB: $44
    dec b                                         ; $6DEC: $05
    ld l, [hl]                                    ; $6DED: $6E
    rlca                                          ; $6DEE: $07
    nop                                           ; $6DEF: $00
    ld l, e                                       ; $6DF0: $6B
    ld c, d                                       ; $6DF1: $4A
    add hl, bc                                    ; $6DF2: $09
    nop                                           ; $6DF3: $00
    jr nz, jr_024_6DA1                            ; $6DF4: $20 $AB

    ld d, b                                       ; $6DF6: $50
    ld b, e                                       ; $6DF7: $43
    ld de, $C801                                  ; $6DF8: $11 $01 $C8
    and e                                         ; $6DFB: $A3
    dec b                                         ; $6DFC: $05
    nop                                           ; $6DFD: $00
    inc h                                         ; $6DFE: $24
    dec b                                         ; $6DFF: $05
    ld l, [hl]                                    ; $6E00: $6E
    ld b, l                                       ; $6E01: $45
    inc hl                                        ; $6E02: $23
    dec hl                                        ; $6E03: $2B
    ld b, [hl]                                    ; $6E04: $46
    and d                                         ; $6E05: $A2
    add hl, hl                                    ; $6E06: $29
    and c                                         ; $6E07: $A1
    ld bc, $0422                                  ; $6E08: $01 $22 $04
    ld b, b                                       ; $6E0B: $40
    cp [hl]                                       ; $6E0C: $BE
    db $E3                                        ; $6E0D: $E3
    ret nc                                        ; $6E0E: $D0

    ld l, b                                       ; $6E0F: $68
    sbc b                                         ; $6E10: $98
    ld a, a                                       ; $6E11: $7F
    ld a, b                                       ; $6E12: $78
    ld a, h                                       ; $6E13: $7C
    ld d, d                                       ; $6E14: $52
    ld a, h                                       ; $6E15: $7C
    ld a, a                                       ; $6E16: $7F
    ld h, d                                       ; $6E17: $62
    ret nc                                        ; $6E18: $D0

    inc bc                                        ; $6E19: $03
    inc b                                         ; $6E1A: $04
    ld h, d                                       ; $6E1B: $62
    ret nc                                        ; $6E1C: $D0

    ld bc, $4422                                  ; $6E1D: $01 $22 $44
    dec hl                                        ; $6E20: $2B
    ld l, [hl]                                    ; $6E21: $6E
    and [hl]                                      ; $6E22: $A6
    ret z                                         ; $6E23: $C8

    and e                                         ; $6E24: $A3
    inc c                                         ; $6E25: $0C
    ld bc, $A3C8                                  ; $6E26: $01 $C8 $A3
    dec b                                         ; $6E29: $05
    ld bc, $2345                                  ; $6E2A: $01 $45 $23
    dec hl                                        ; $6E2D: $2B
    ld b, [hl]                                    ; $6E2E: $46
    and h                                         ; $6E2F: $A4
    ld b, b                                       ; $6E30: $40
    and e                                         ; $6E31: $A3
    ld bc, $2100                                  ; $6E32: $01 $00 $21
    add a                                         ; $6E35: $87
    sbc $A4                                       ; $6E36: $DE $A4
    ld b, b                                       ; $6E38: $40
    and e                                         ; $6E39: $A3
    ld [bc], a                                    ; $6E3A: $02
    nop                                           ; $6E3B: $00
    ld hl, $DEE9                                  ; $6E3C: $21 $E9 $DE
    and h                                         ; $6E3F: $A4
    ld b, e                                       ; $6E40: $43
    and e                                         ; $6E41: $A3
    stop                                          ; $6E42: $10 $00
    inc bc                                        ; $6E44: $03
    adc b                                         ; $6E45: $88
    rst $10                                       ; $6E46: $D7
    and h                                         ; $6E47: $A4
    ld b, e                                       ; $6E48: $43
    and e                                         ; $6E49: $A3
    jr nz, jr_024_6E4C                            ; $6E4A: $20 $00

jr_024_6E4C:
    ld [bc], a                                    ; $6E4C: $02
    adc d                                         ; $6E4D: $8A
    rst $10                                       ; $6E4E: $D7
    and h                                         ; $6E4F: $A4
    ld b, e                                       ; $6E50: $43
    and e                                         ; $6E51: $A3
    ld b, b                                       ; $6E52: $40
    nop                                           ; $6E53: $00
    ld [bc], a                                    ; $6E54: $02
    ld [hl], e                                    ; $6E55: $73
    pop de                                        ; $6E56: $D1
    sub e                                         ; $6E57: $93
    ld h, l                                       ; $6E58: $65
    ld h, l                                       ; $6E59: $65
    ld d, e                                       ; $6E5A: $53
    ld c, a                                       ; $6E5B: $4F
    ld h, h                                       ; $6E5C: $64
    ld a, c                                       ; $6E5D: $79
    ld e, c                                       ; $6E5E: $59
    ld l, c                                       ; $6E5F: $69
    add [hl]                                      ; $6E60: $86
    ld e, c                                       ; $6E61: $59
    ld h, [hl]                                    ; $6E62: $66
    ret nz                                        ; $6E63: $C0

    ld e, h                                       ; $6E64: $5C
    ld hl, $0005                                  ; $6E65: $21 $05 $00
    add c                                         ; $6E68: $81
    ld e, l                                       ; $6E69: $5D
    dec b                                         ; $6E6A: $05
    dec b                                         ; $6E6B: $05

jr_024_6E6C:
    or h                                          ; $6E6C: $B4
    ret nc                                        ; $6E6D: $D0

    nop                                           ; $6E6E: $00
    jr nz, jr_024_6E6C                            ; $6E6F: $20 $FB

jr_024_6E71:
    ld d, b                                       ; $6E71: $50
    ld [hl+], a                                   ; $6E72: $22
    dec b                                         ; $6E73: $05
    ld b, b                                       ; $6E74: $40
    dec bc                                        ; $6E75: $0B
    nop                                           ; $6E76: $00
    ld [hl-], a                                   ; $6E77: $32
    inc hl                                        ; $6E78: $23
    ld [hl], b                                    ; $6E79: $70
    ld b, b                                       ; $6E7A: $40
    adc l                                         ; $6E7B: $8D
    ld b, c                                       ; $6E7C: $41
    ld sp, $5724                                  ; $6E7D: $31 $24 $57
    ld l, [hl]                                    ; $6E80: $6E
    ld [hl+], a                                   ; $6E81: $22
    adc $40                                       ; $6E82: $CE $40
    nop                                           ; $6E84: $00
    add d                                         ; $6E85: $82
    rra                                           ; $6E86: $1F
    ld [de], a                                    ; $6E87: $12
    sub h                                         ; $6E88: $94
    ld b, d                                       ; $6E89: $42
    rlca                                          ; $6E8A: $07
    nop                                           ; $6E8B: $00
    ld l, e                                       ; $6E8C: $6B
    ld c, d                                       ; $6E8D: $4A
    add hl, bc                                    ; $6E8E: $09
    nop                                           ; $6E8F: $00
    jr nz, jr_024_6ECA                            ; $6E90: $20 $38

    ld e, h                                       ; $6E92: $5C
    ld b, b                                       ; $6E93: $40
    ld b, $0C                                     ; $6E94: $06 $0C
    nop                                           ; $6E96: $00
    add e                                         ; $6E97: $83
    inc e                                         ; $6E98: $1C
    nop                                           ; $6E99: $00
    db $FC                                        ; $6E9A: $FC
    nop                                           ; $6E9B: $00
    ld b, e                                       ; $6E9C: $43
    nop                                           ; $6E9D: $00
    dec h                                         ; $6E9E: $25
    and c                                         ; $6E9F: $A1
    ld [bc], a                                    ; $6EA0: $02
    inc h                                         ; $6EA1: $24
    or d                                          ; $6EA2: $B2
    ld l, [hl]                                    ; $6EA3: $6E
    add e                                         ; $6EA4: $83
    inc e                                         ; $6EA5: $1C
    db $FC                                        ; $6EA6: $FC
    nop                                           ; $6EA7: $00
    inc l                                         ; $6EA8: $2C
    nop                                           ; $6EA9: $00
    inc b                                         ; $6EAA: $04
    nop                                           ; $6EAB: $00
    ld b, b                                       ; $6EAC: $40
    jr jr_024_6EF4                                ; $6EAD: $18 $45

    inc hl                                        ; $6EAF: $23
    push de                                       ; $6EB0: $D5
    ld c, l                                       ; $6EB1: $4D
    add e                                         ; $6EB2: $83
    inc e                                         ; $6EB3: $1C
    inc b                                         ; $6EB4: $04
    nop                                           ; $6EB5: $00
    inc l                                         ; $6EB6: $2C
    nop                                           ; $6EB7: $00
    db $FC                                        ; $6EB8: $FC
    nop                                           ; $6EB9: $00
    ld b, l                                       ; $6EBA: $45
    inc h                                         ; $6EBB: $24
    sub e                                         ; $6EBC: $93
    ld [hl], d                                    ; $6EBD: $72
    rlca                                          ; $6EBE: $07

jr_024_6EBF:
    nop                                           ; $6EBF: $00
    ld l, e                                       ; $6EC0: $6B
    ld c, d                                       ; $6EC1: $4A
    add hl, bc                                    ; $6EC2: $09
    nop                                           ; $6EC3: $00
    jr nz, jr_024_6E71                            ; $6EC4: $20 $AB

    ld d, b                                       ; $6EC6: $50
    and b                                         ; $6EC7: $A0
    dec h                                         ; $6EC8: $25
    and c                                         ; $6EC9: $A1

jr_024_6ECA:
    ld [bc], a                                    ; $6ECA: $02
    inc h                                         ; $6ECB: $24
    inc de                                        ; $6ECC: $13
    ld l, a                                       ; $6ECD: $6F
    xor d                                         ; $6ECE: $AA
    xor h                                         ; $6ECF: $AC
    db $D3                                        ; $6ED0: $D3
    pop de                                        ; $6ED1: $D1
    ld l, b                                       ; $6ED2: $68
    dec c                                         ; $6ED3: $0D
    ld c, h                                       ; $6ED4: $4C
    ld [hl], e                                    ; $6ED5: $73
    cp h                                          ; $6ED6: $BC
    ld [hl], d                                    ; $6ED7: $72
    ld a, c                                       ; $6ED8: $79
    ld a, a                                       ; $6ED9: $7F
    ld a, [de]                                    ; $6EDA: $1A
    pop de                                        ; $6EDB: $D1
    inc bc                                        ; $6EDC: $03
    dec b                                         ; $6EDD: $05
    ld a, [de]                                    ; $6EDE: $1A
    pop de                                        ; $6EDF: $D1
    ld a, [bc]                                    ; $6EE0: $0A
    inc c                                         ; $6EE1: $0C
    ld a, a                                       ; $6EE2: $7F
    add hl, de                                    ; $6EE3: $19
    pop de                                        ; $6EE4: $D1
    ld bc, $1905                                  ; $6EE5: $01 $05 $19
    pop de                                        ; $6EE8: $D1
    ld a, [bc]                                    ; $6EE9: $0A
    dec bc                                        ; $6EEA: $0B
    ld a, a                                       ; $6EEB: $7F
    jr jr_024_6EBF                                ; $6EEC: $18 $D1

    ld bc, $1805                                  ; $6EEE: $01 $05 $18
    pop de                                        ; $6EF1: $D1
    ld a, [bc]                                    ; $6EF2: $0A
    ld a, [bc]                                    ; $6EF3: $0A

jr_024_6EF4:
    ld a, a                                       ; $6EF4: $7F
    rla                                           ; $6EF5: $17
    pop de                                        ; $6EF6: $D1
    ld bc, $1705                                  ; $6EF7: $01 $05 $17
    pop de                                        ; $6EFA: $D1
    ld a, [bc]                                    ; $6EFB: $0A
    add hl, bc                                    ; $6EFC: $09
    ld a, a                                       ; $6EFD: $7F
    ld d, $D1                                     ; $6EFE: $16 $D1
    ld bc, $1605                                  ; $6F00: $01 $05 $16
    pop de                                        ; $6F03: $D1
    ld a, [bc]                                    ; $6F04: $0A
    ld [$157F], sp                                ; $6F05: $08 $7F $15
    pop de                                        ; $6F08: $D1
    ld bc, $1505                                  ; $6F09: $01 $05 $15
    pop de                                        ; $6F0C: $D1
    ld a, [bc]                                    ; $6F0D: $0A
    rlca                                          ; $6F0E: $07
    ld b, l                                       ; $6F0F: $45
    rra                                           ; $6F10: $1F
    adc e                                         ; $6F11: $8B
    ld h, [hl]                                    ; $6F12: $66
    ld l, b                                       ; $6F13: $68
    halt                                          ; $6F14: $76
    ld a, c                                       ; $6F15: $79
    ld a, b                                       ; $6F16: $78
    dec hl                                        ; $6F17: $2B
    ld l, a                                       ; $6F18: $6F
    ld a, e                                       ; $6F19: $7B
    ld a, a                                       ; $6F1A: $7F
    add d                                         ; $6F1B: $82
    pop de                                        ; $6F1C: $D1
    ld bc, $1505                                  ; $6F1D: $01 $05 $15
    pop de                                        ; $6F20: $D1
    ld a, [bc]                                    ; $6F21: $0A
    rlca                                          ; $6F22: $07
    ld a, a                                       ; $6F23: $7F
    add e                                         ; $6F24: $83
    pop de                                        ; $6F25: $D1
    ld bc, $1605                                  ; $6F26: $01 $05 $16
    pop de                                        ; $6F29: $D1
    ld a, [bc]                                    ; $6F2A: $0A
    ld [$847F], sp                                ; $6F2B: $08 $7F $84
    pop de                                        ; $6F2E: $D1
    ld bc, $1705                                  ; $6F2F: $01 $05 $17
    pop de                                        ; $6F32: $D1
    ld a, [bc]                                    ; $6F33: $0A
    add hl, bc                                    ; $6F34: $09
    ld a, a                                       ; $6F35: $7F
    add l                                         ; $6F36: $85
    pop de                                        ; $6F37: $D1
    ld bc, $1805                                  ; $6F38: $01 $05 $18
    pop de                                        ; $6F3B: $D1
    ld a, [bc]                                    ; $6F3C: $0A
    ld a, [bc]                                    ; $6F3D: $0A
    ld a, a                                       ; $6F3E: $7F
    add [hl]                                      ; $6F3F: $86
    pop de                                        ; $6F40: $D1
    ld bc, $1905                                  ; $6F41: $01 $05 $19
    pop de                                        ; $6F44: $D1
    ld a, [bc]                                    ; $6F45: $0A
    dec bc                                        ; $6F46: $0B
    ld a, a                                       ; $6F47: $7F
    add a                                         ; $6F48: $87
    pop de                                        ; $6F49: $D1
    inc bc                                        ; $6F4A: $03
    dec b                                         ; $6F4B: $05
    ld a, [de]                                    ; $6F4C: $1A
    pop de                                        ; $6F4D: $D1
    ld a, [bc]                                    ; $6F4E: $0A
    inc c                                         ; $6F4F: $0C
    ld b, l                                       ; $6F50: $45
    rra                                           ; $6F51: $1F
    adc e                                         ; $6F52: $8B
    ld h, [hl]                                    ; $6F53: $66
    sub e                                         ; $6F54: $93
    ld h, l                                       ; $6F55: $65
    ld [hl], h                                    ; $6F56: $74
    ld d, e                                       ; $6F57: $53
    ld c, a                                       ; $6F58: $4F
    ld h, h                                       ; $6F59: $64
    and a                                         ; $6F5A: $A7
    ld e, c                                       ; $6F5B: $59
    ld l, c                                       ; $6F5C: $69
    xor h                                         ; $6F5D: $AC
    ld e, c                                       ; $6F5E: $59
    ld h, [hl]                                    ; $6F5F: $66
    ret nz                                        ; $6F60: $C0

    ld e, h                                       ; $6F61: $5C
    ld hl, $0005                                  ; $6F62: $21 $05 $00
    add c                                         ; $6F65: $81
    ld e, l                                       ; $6F66: $5D
    dec b                                         ; $6F67: $05
    dec b                                         ; $6F68: $05

jr_024_6F69:
    adc h                                         ; $6F69: $8C
    ret nc                                        ; $6F6A: $D0

    nop                                           ; $6F6B: $00
    jr nz, jr_024_6F69                            ; $6F6C: $20 $FB

    ld d, b                                       ; $6F6E: $50
    ld [hl+], a                                   ; $6F6F: $22
    dec b                                         ; $6F70: $05
    ld b, b                                       ; $6F71: $40
    dec bc                                        ; $6F72: $0B
    nop                                           ; $6F73: $00
    ld [hl-], a                                   ; $6F74: $32
    inc hl                                        ; $6F75: $23
    ld [hl], b                                    ; $6F76: $70
    ld b, b                                       ; $6F77: $40
    adc l                                         ; $6F78: $8D
    ld b, c                                       ; $6F79: $41
    ld sp, $5424                                  ; $6F7A: $31 $24 $54
    ld l, a                                       ; $6F7D: $6F
    ld [hl+], a                                   ; $6F7E: $22
    adc $40                                       ; $6F7F: $CE $40
    nop                                           ; $6F81: $00
    add d                                         ; $6F82: $82
    rra                                           ; $6F83: $1F

jr_024_6F84:
    ld [de], a                                    ; $6F84: $12
    sub h                                         ; $6F85: $94
    ld b, d                                       ; $6F86: $42
    sub e                                         ; $6F87: $93
    ld h, l                                       ; $6F88: $65
    ld [hl], h                                    ; $6F89: $74
    ld d, e                                       ; $6F8A: $53
    ld c, a                                       ; $6F8B: $4F
    ld h, h                                       ; $6F8C: $64
    and a                                         ; $6F8D: $A7
    ld e, c                                       ; $6F8E: $59
    ld l, c                                       ; $6F8F: $69
    xor h                                         ; $6F90: $AC
    ld e, c                                       ; $6F91: $59
    ld h, [hl]                                    ; $6F92: $66
    ret nz                                        ; $6F93: $C0

    ld e, h                                       ; $6F94: $5C
    ld hl, $0005                                  ; $6F95: $21 $05 $00

jr_024_6F98:
    ld l, e                                       ; $6F98: $6B
    ld c, d                                       ; $6F99: $4A
    dec bc                                        ; $6F9A: $0B
    ld [de], a                                    ; $6F9B: $12
    pop af                                        ; $6F9C: $F1
    pop de                                        ; $6F9D: $D1
    nop                                           ; $6F9E: $00
    inc h                                         ; $6F9F: $24
    add c                                         ; $6FA0: $81
    ld [hl], b                                    ; $6FA1: $70
    ld [hl+], a                                   ; $6FA2: $22
    dec b                                         ; $6FA3: $05
    ld b, b                                       ; $6FA4: $40
    add h                                         ; $6FA5: $84
    inc b                                         ; $6FA6: $04
    inc de                                        ; $6FA7: $13
    rra                                           ; $6FA8: $1F
    ld [de], a                                    ; $6FA9: $12
    sub h                                         ; $6FAA: $94
    add e                                         ; $6FAB: $83
    dec hl                                        ; $6FAC: $2B
    nop                                           ; $6FAD: $00
    db $FD                                        ; $6FAE: $FD
    nop                                           ; $6FAF: $00
    ld b, e                                       ; $6FB0: $43
    nop                                           ; $6FB1: $00
    dec h                                         ; $6FB2: $25
    and c                                         ; $6FB3: $A1
    ld [bc], a                                    ; $6FB4: $02
    inc h                                         ; $6FB5: $24
    db $DB                                        ; $6FB6: $DB
    ld l, a                                       ; $6FB7: $6F
    add e                                         ; $6FB8: $83
    inc e                                         ; $6FB9: $1C
    inc b                                         ; $6FBA: $04
    nop                                           ; $6FBB: $00
    inc e                                         ; $6FBC: $1C
    nop                                           ; $6FBD: $00
    inc b                                         ; $6FBE: $04
    nop                                           ; $6FBF: $00
    dec bc                                        ; $6FC0: $0B
    nop                                           ; $6FC1: $00
    ld [hl-], a                                   ; $6FC2: $32
    inc hl                                        ; $6FC3: $23
    ld [hl], b                                    ; $6FC4: $70
    ld b, b                                       ; $6FC5: $40
    adc l                                         ; $6FC6: $8D
    ld b, c                                       ; $6FC7: $41
    ld sp, $5424                                  ; $6FC8: $31 $24 $54
    ld l, a                                       ; $6FCB: $6F
    ld [hl+], a                                   ; $6FCC: $22
    adc $40                                       ; $6FCD: $CE $40
    ld h, b                                       ; $6FCF: $60
    ld bc, $0007                                  ; $6FD0: $01 $07 $00
    add c                                         ; $6FD3: $81
    ld e, l                                       ; $6FD4: $5D
    add hl, bc                                    ; $6FD5: $09
    nop                                           ; $6FD6: $00
    jr nz, jr_024_6F84                            ; $6FD7: $20 $AB

    ld d, b                                       ; $6FD9: $50
    ld b, d                                       ; $6FDA: $42
    add e                                         ; $6FDB: $83
    inc c                                         ; $6FDC: $0C
    inc b                                         ; $6FDD: $04
    nop                                           ; $6FDE: $00
    nop                                           ; $6FDF: $00
    add e                                         ; $6FE0: $83
    inc c                                         ; $6FE1: $0C
    db $FC                                        ; $6FE2: $FC
    nop                                           ; $6FE3: $00
    nop                                           ; $6FE4: $00
    add e                                         ; $6FE5: $83
    dec hl                                        ; $6FE6: $2B
    nop                                           ; $6FE7: $00
    inc bc                                        ; $6FE8: $03
    nop                                           ; $6FE9: $00
    ld b, l                                       ; $6FEA: $45
    inc hl                                        ; $6FEB: $23
    push de                                       ; $6FEC: $D5
    ld c, l                                       ; $6FED: $4D
    sub e                                         ; $6FEE: $93
    ld h, l                                       ; $6FEF: $65
    ld [hl], h                                    ; $6FF0: $74

jr_024_6FF1:
    ld d, e                                       ; $6FF1: $53
    ld c, a                                       ; $6FF2: $4F
    ld h, h                                       ; $6FF3: $64
    and a                                         ; $6FF4: $A7
    ld e, c                                       ; $6FF5: $59
    ld l, c                                       ; $6FF6: $69
    xor h                                         ; $6FF7: $AC
    ld e, c                                       ; $6FF8: $59
    dec b                                         ; $6FF9: $05
    nop                                           ; $6FFA: $00
    ld l, e                                       ; $6FFB: $6B
    ld c, d                                       ; $6FFC: $4A
    dec bc                                        ; $6FFD: $0B
    ld [de], a                                    ; $6FFE: $12
    pop af                                        ; $6FFF: $F1
    pop de                                        ; $7000: $D1
    nop                                           ; $7001: $00
    inc h                                         ; $7002: $24
    add c                                         ; $7003: $81
    ld [hl], b                                    ; $7004: $70
    ld [hl+], a                                   ; $7005: $22
    dec b                                         ; $7006: $05
    ld b, b                                       ; $7007: $40
    ld h, [hl]                                    ; $7008: $66
    ret nz                                        ; $7009: $C0

    ld e, h                                       ; $700A: $5C
    ld hl, $1284                                  ; $700B: $21 $84 $12
    nop                                           ; $700E: $00
    rra                                           ; $700F: $1F
    ld [de], a                                    ; $7010: $12
    sub h                                         ; $7011: $94
    ld b, b                                       ; $7012: $40
    jr jr_024_6F98                                ; $7013: $18 $83

    dec hl                                        ; $7015: $2B
    nop                                           ; $7016: $00
    inc bc                                        ; $7017: $03
    inc c                                         ; $7018: $0C
    db $FC                                        ; $7019: $FC
    nop                                           ; $701A: $00
    nop                                           ; $701B: $00
    ld b, e                                       ; $701C: $43
    ld a, [bc]                                    ; $701D: $0A
    nop                                           ; $701E: $00
    dec h                                         ; $701F: $25
    and c                                         ; $7020: $A1
    ld [bc], a                                    ; $7021: $02
    inc h                                         ; $7022: $24
    or d                                          ; $7023: $B2
    ld l, [hl]                                    ; $7024: $6E
    add e                                         ; $7025: $83
    inc c                                         ; $7026: $0C
    db $FC                                        ; $7027: $FC
    nop                                           ; $7028: $00
    inc e                                         ; $7029: $1C
    nop                                           ; $702A: $00
    inc b                                         ; $702B: $04
    nop                                           ; $702C: $00
    dec bc                                        ; $702D: $0B
    nop                                           ; $702E: $00
    ld [hl-], a                                   ; $702F: $32
    inc hl                                        ; $7030: $23
    ld [hl], b                                    ; $7031: $70
    ld b, b                                       ; $7032: $40
    adc l                                         ; $7033: $8D
    ld b, c                                       ; $7034: $41
    ld sp, $5424                                  ; $7035: $31 $24 $54
    ld l, a                                       ; $7038: $6F
    ld [hl+], a                                   ; $7039: $22
    adc $40                                       ; $703A: $CE $40
    ld h, b                                       ; $703C: $60
    ld bc, $0007                                  ; $703D: $01 $07 $00
    add c                                         ; $7040: $81
    ld e, l                                       ; $7041: $5D
    add hl, bc                                    ; $7042: $09
    nop                                           ; $7043: $00
    jr nz, jr_024_6FF1                            ; $7044: $20 $AB

    ld d, b                                       ; $7046: $50
    ld b, d                                       ; $7047: $42
    sub e                                         ; $7048: $93
    ld h, l                                       ; $7049: $65
    ld [hl], h                                    ; $704A: $74
    ld d, e                                       ; $704B: $53
    ld c, a                                       ; $704C: $4F
    ld l, c                                       ; $704D: $69
    xor h                                         ; $704E: $AC
    ld e, c                                       ; $704F: $59
    ld h, [hl]                                    ; $7050: $66
    ret nz                                        ; $7051: $C0

    ld e, h                                       ; $7052: $5C
    ld hl, $1284                                  ; $7053: $21 $84 $12
    ld de, $121F                                  ; $7056: $11 $1F $12
    sub h                                         ; $7059: $94
    add e                                         ; $705A: $83
    inc h                                         ; $705B: $24
    inc b                                         ; $705C: $04
    nop                                           ; $705D: $00
    nop                                           ; $705E: $00
    ld b, l                                       ; $705F: $45
    inc h                                         ; $7060: $24
    rla                                           ; $7061: $17
    ld [hl], l                                    ; $7062: $75
    sub e                                         ; $7063: $93
    ld h, l                                       ; $7064: $65
    ld [hl], h                                    ; $7065: $74
    ld d, e                                       ; $7066: $53
    ld c, a                                       ; $7067: $4F
    ld h, h                                       ; $7068: $64
    and a                                         ; $7069: $A7
    ld e, c                                       ; $706A: $59
    ld l, c                                       ; $706B: $69
    xor h                                         ; $706C: $AC
    ld e, c                                       ; $706D: $59
    ld h, [hl]                                    ; $706E: $66
    ret nz                                        ; $706F: $C0

    ld e, h                                       ; $7070: $5C
    ld hl, $1A84                                  ; $7071: $21 $84 $1A
    ld de, $121F                                  ; $7074: $11 $1F $12
    sub h                                         ; $7077: $94

jr_024_7078:
    add e                                         ; $7078: $83
    jr nz, jr_024_7078                            ; $7079: $20 $FD

    nop                                           ; $707B: $00
    nop                                           ; $707C: $00
    ld b, l                                       ; $707D: $45
    inc hl                                        ; $707E: $23
    jr nc, jr_024_70CF                            ; $707F: $30 $4E

    dec d                                         ; $7081: $15
    jr nz, jr_024_70E1                            ; $7082: $20 $5D

    ld d, b                                       ; $7084: $50
    inc c                                         ; $7085: $0C

jr_024_7086:
    jr nz, @-$31                                  ; $7086: $20 $CD

    ld c, a                                       ; $7088: $4F
    inc c                                         ; $7089: $0C
    nop                                           ; $708A: $00
    ld d, [hl]                                    ; $708B: $56
    ld bc, $0742                                  ; $708C: $01 $42 $07
    nop                                           ; $708F: $00
    ld l, e                                       ; $7090: $6B
    ld c, d                                       ; $7091: $4A
    add hl, bc                                    ; $7092: $09
    nop                                           ; $7093: $00
    jr nz, jr_024_70CE                            ; $7094: $20 $38

    ld e, h                                       ; $7096: $5C
    ld b, b                                       ; $7097: $40
    ld b, $0C                                     ; $7098: $06 $0C
    nop                                           ; $709A: $00
    add e                                         ; $709B: $83
    stop                                          ; $709C: $10 $00
    db $FC                                        ; $709E: $FC
    db $10                                        ; $709F: $10
    inc b                                         ; $70A0: $04
    nop                                           ; $70A1: $00
    nop                                           ; $70A2: $00
    ld b, e                                       ; $70A3: $43
    ld a, [bc]                                    ; $70A4: $0A
    nop                                           ; $70A5: $00
    dec h                                         ; $70A6: $25
    and c                                         ; $70A7: $A1
    inc b                                         ; $70A8: $04
    inc h                                         ; $70A9: $24
    jp c, $8372                                   ; $70AA: $DA $72 $83

    db $10                                        ; $70AD: $10
    inc b                                         ; $70AE: $04
    nop                                           ; $70AF: $00
    stop                                          ; $70B0: $10 $00
    db $FC                                        ; $70B2: $FC
    nop                                           ; $70B3: $00
    ld b, e                                       ; $70B4: $43
    ld a, [bc]                                    ; $70B5: $0A
    nop                                           ; $70B6: $00
    dec h                                         ; $70B7: $25
    and c                                         ; $70B8: $A1
    ld [wScript_OverworldItemSpell_ID], sp                                ; $70B9: $08 $24 $C7
    ld [hl], d                                    ; $70BC: $72
    ld b, l                                       ; $70BD: $45
    inc h                                         ; $70BE: $24
    ld bc, $0273                                  ; $70BF: $01 $73 $02
    dec e                                         ; $70C2: $1D
    nop                                           ; $70C3: $00
    ld a, [bc]                                    ; $70C4: $0A
    add hl, bc                                    ; $70C5: $09
    ld b, l                                       ; $70C6: $45
    inc h                                         ; $70C7: $24
    inc e                                         ; $70C8: $1C
    ld [hl], h                                    ; $70C9: $74
    ld [bc], a                                    ; $70CA: $02
    nop                                           ; $70CB: $00
    dec e                                         ; $70CC: $1D
    ld a, [bc]                                    ; $70CD: $0A

jr_024_70CE:
    add hl, bc                                    ; $70CE: $09

jr_024_70CF:
    ld b, l                                       ; $70CF: $45
    inc h                                         ; $70D0: $24
    ld d, d                                       ; $70D1: $52
    ld a, c                                       ; $70D2: $79
    rlca                                          ; $70D3: $07
    nop                                           ; $70D4: $00
    ld l, e                                       ; $70D5: $6B
    ld c, d                                       ; $70D6: $4A
    add hl, bc                                    ; $70D7: $09
    nop                                           ; $70D8: $00
    jr nz, jr_024_7086                            ; $70D9: $20 $AB

    ld d, b                                       ; $70DB: $50
    and b                                         ; $70DC: $A0
    dec h                                         ; $70DD: $25
    and c                                         ; $70DE: $A1
    inc b                                         ; $70DF: $04
    inc h                                         ; $70E0: $24

jr_024_70E1:
    ld sp, $AA71                                  ; $70E1: $31 $71 $AA
    xor h                                         ; $70E4: $AC
    ld a, [$68D2]                                 ; $70E5: $FA $D2 $68
    ld sp, $6F57                                  ; $70E8: $31 $57 $6F
    ld b, e                                       ; $70EB: $43
    ld [hl], l                                    ; $70EC: $75
    ld a, b                                       ; $70ED: $78
    ld a, a                                       ; $70EE: $7F
    ld h, h                                       ; $70EF: $64
    jp nc, $0501                                  ; $70F0: $D2 $01 $05

    ld h, h                                       ; $70F3: $64
    jp nc, $0C14                                  ; $70F4: $D2 $14 $0C

    ld a, a                                       ; $70F7: $7F
    ld h, l                                       ; $70F8: $65
    jp nc, $0501                                  ; $70F9: $D2 $01 $05

    ld h, l                                       ; $70FC: $65
    jp nc, $0D14                                  ; $70FD: $D2 $14 $0D

    ld a, a                                       ; $7100: $7F
    ld h, [hl]                                    ; $7101: $66
    jp nc, $0501                                  ; $7102: $D2 $01 $05

    ld h, [hl]                                    ; $7105: $66
    jp nc, $0E14                                  ; $7106: $D2 $14 $0E

    ld a, a                                       ; $7109: $7F
    ld c, c                                       ; $710A: $49
    jp nc, $0601                                  ; $710B: $D2 $01 $06

    ld c, c                                       ; $710E: $49
    jp nc, $0F13                                  ; $710F: $D2 $13 $0F

    ld a, a                                       ; $7112: $7F
    ld c, d                                       ; $7113: $4A
    jp nc, $0601                                  ; $7114: $D2 $01 $06

    ld c, d                                       ; $7117: $4A
    jp nc, $1013                                  ; $7118: $D2 $13 $10

    ld a, a                                       ; $711B: $7F
    ld c, e                                       ; $711C: $4B
    jp nc, $0601                                  ; $711D: $D2 $01 $06

    ld c, e                                       ; $7120: $4B
    jp nc, $1113                                  ; $7121: $D2 $13 $11

    ld a, a                                       ; $7124: $7F
    ld l, d                                       ; $7125: $6A
    jp nc, $0503                                  ; $7126: $D2 $03 $05

    ld l, d                                       ; $7129: $6A
    jp nc, $1214                                  ; $712A: $D2 $14 $12

    ld b, l                                       ; $712D: $45

jr_024_712E:
    rra                                           ; $712E: $1F
    adc e                                         ; $712F: $8B
    ld h, [hl]                                    ; $7130: $66
    ld l, b                                       ; $7131: $68
    ld a, [hl+]                                   ; $7132: $2A
    ld e, d                                       ; $7133: $5A
    ld [hl], d                                    ; $7134: $72
    dec bc                                        ; $7135: $0B
    ld c, c                                       ; $7136: $49
    ld a, c                                       ; $7137: $79
    ld a, a                                       ; $7138: $7F
    cp c                                          ; $7139: $B9
    pop de                                        ; $713A: $D1
    inc bc                                        ; $713B: $03
    dec b                                         ; $713C: $05
    ld l, d                                       ; $713D: $6A
    jp nc, $1214                                  ; $713E: $D2 $14 $12

    ld a, a                                       ; $7141: $7F
    sbc d                                         ; $7142: $9A
    pop de                                        ; $7143: $D1
    ld bc, $4B06                                  ; $7144: $01 $06 $4B
    jp nc, $1113                                  ; $7147: $D2 $13 $11

    ld a, a                                       ; $714A: $7F
    sbc c                                         ; $714B: $99
    pop de                                        ; $714C: $D1
    ld bc, $4A06                                  ; $714D: $01 $06 $4A
    jp nc, $1013                                  ; $7150: $D2 $13 $10

    ld a, a                                       ; $7153: $7F
    sbc b                                         ; $7154: $98
    pop de                                        ; $7155: $D1
    ld bc, $4906                                  ; $7156: $01 $06 $49
    jp nc, $0F13                                  ; $7159: $D2 $13 $0F

    ld a, a                                       ; $715C: $7F
    or l                                          ; $715D: $B5
    pop de                                        ; $715E: $D1
    ld bc, $6605                                  ; $715F: $01 $05 $66
    jp nc, $0E14                                  ; $7162: $D2 $14 $0E

    ld a, a                                       ; $7165: $7F
    or h                                          ; $7166: $B4
    pop de                                        ; $7167: $D1
    ld bc, $6505                                  ; $7168: $01 $05 $65
    jp nc, $0D14                                  ; $716B: $D2 $14 $0D

    ld a, a                                       ; $716E: $7F
    or e                                          ; $716F: $B3
    pop de                                        ; $7170: $D1
    ld bc, $6405                                  ; $7171: $01 $05 $64
    jp nc, $0C14                                  ; $7174: $D2 $14 $0C

    ld b, l                                       ; $7177: $45
    rra                                           ; $7178: $1F
    adc e                                         ; $7179: $8B
    ld h, [hl]                                    ; $717A: $66
    rlca                                          ; $717B: $07
    nop                                           ; $717C: $00
    ld l, e                                       ; $717D: $6B
    ld c, d                                       ; $717E: $4A
    add hl, bc                                    ; $717F: $09
    nop                                           ; $7180: $00
    jr nz, jr_024_712E                            ; $7181: $20 $AB

    ld d, b                                       ; $7183: $50
    and b                                         ; $7184: $A0
    dec h                                         ; $7185: $25
    and c                                         ; $7186: $A1
    ld [$D924], sp                                ; $7187: $08 $24 $D9
    ld [hl], c                                    ; $718A: $71
    xor d                                         ; $718B: $AA
    xor h                                         ; $718C: $AC
    add hl, bc                                    ; $718D: $09
    jp nc, $3168                                  ; $718E: $D2 $68 $31

    ld d, a                                       ; $7191: $57
    ld l, a                                       ; $7192: $6F
    ld b, e                                       ; $7193: $43
    ld [hl], l                                    ; $7194: $75
    ld a, b                                       ; $7195: $78
    ld a, a                                       ; $7196: $7F
    sub d                                         ; $7197: $92
    pop de                                        ; $7198: $D1
    ld bc, $9205                                  ; $7199: $01 $05 $92
    pop de                                        ; $719C: $D1
    dec c                                         ; $719D: $0D
    inc c                                         ; $719E: $0C
    ld a, a                                       ; $719F: $7F
    sub e                                         ; $71A0: $93
    pop de                                        ; $71A1: $D1
    ld bc, $9305                                  ; $71A2: $01 $05 $93
    pop de                                        ; $71A5: $D1
    dec c                                         ; $71A6: $0D
    dec c                                         ; $71A7: $0D
    ld a, a                                       ; $71A8: $7F
    sub h                                         ; $71A9: $94
    pop de                                        ; $71AA: $D1
    ld bc, $9405                                  ; $71AB: $01 $05 $94
    pop de                                        ; $71AE: $D1
    dec c                                         ; $71AF: $0D
    ld c, $7F                                     ; $71B0: $0E $7F
    ld [hl], a                                    ; $71B2: $77
    pop de                                        ; $71B3: $D1
    ld bc, $7706                                  ; $71B4: $01 $06 $77
    pop de                                        ; $71B7: $D1
    inc c                                         ; $71B8: $0C
    rrca                                          ; $71B9: $0F
    ld a, a                                       ; $71BA: $7F
    ld a, b                                       ; $71BB: $78
    pop de                                        ; $71BC: $D1
    ld bc, $7806                                  ; $71BD: $01 $06 $78
    pop de                                        ; $71C0: $D1
    inc c                                         ; $71C1: $0C
    db $10                                        ; $71C2: $10
    ld a, a                                       ; $71C3: $7F
    ld a, c                                       ; $71C4: $79
    pop de                                        ; $71C5: $D1
    ld bc, $7906                                  ; $71C6: $01 $06 $79
    pop de                                        ; $71C9: $D1
    inc c                                         ; $71CA: $0C
    ld de, $987F                                  ; $71CB: $11 $7F $98
    pop de                                        ; $71CE: $D1
    inc bc                                        ; $71CF: $03
    dec b                                         ; $71D0: $05
    sbc b                                         ; $71D1: $98
    pop de                                        ; $71D2: $D1
    dec c                                         ; $71D3: $0D
    ld [de], a                                    ; $71D4: $12
    ld b, l                                       ; $71D5: $45
    rra                                           ; $71D6: $1F
    adc e                                         ; $71D7: $8B
    ld h, [hl]                                    ; $71D8: $66
    ld l, b                                       ; $71D9: $68
    ld a, [hl+]                                   ; $71DA: $2A
    ld e, d                                       ; $71DB: $5A
    ld [hl], d                                    ; $71DC: $72
    dec bc                                        ; $71DD: $0B
    ld c, c                                       ; $71DE: $49
    ld a, c                                       ; $71DF: $79
    ld a, a                                       ; $71E0: $7F
    ld a, [hl]                                    ; $71E1: $7E
    ret nc                                        ; $71E2: $D0

    inc bc                                        ; $71E3: $03
    dec b                                         ; $71E4: $05
    sbc b                                         ; $71E5: $98
    pop de                                        ; $71E6: $D1
    dec c                                         ; $71E7: $0D
    ld [de], a                                    ; $71E8: $12
    ld a, a                                       ; $71E9: $7F
    ld a, l                                       ; $71EA: $7D
    ret nc                                        ; $71EB: $D0

    ld bc, $9705                                  ; $71EC: $01 $05 $97
    pop de                                        ; $71EF: $D1
    dec c                                         ; $71F0: $0D
    ld de, $5E7F                                  ; $71F1: $11 $7F $5E
    ret nc                                        ; $71F4: $D0

    ld bc, $7806                                  ; $71F5: $01 $06 $78
    pop de                                        ; $71F8: $D1
    inc c                                         ; $71F9: $0C
    db $10                                        ; $71FA: $10
    ld a, a                                       ; $71FB: $7F
    ld e, l                                       ; $71FC: $5D
    ret nc                                        ; $71FD: $D0

    ld bc, $7706                                  ; $71FE: $01 $06 $77
    pop de                                        ; $7201: $D1
    inc c                                         ; $7202: $0C
    rrca                                          ; $7203: $0F
    ld a, a                                       ; $7204: $7F
    ld e, h                                       ; $7205: $5C
    ret nc                                        ; $7206: $D0

    ld bc, $7606                                  ; $7207: $01 $06 $76
    pop de                                        ; $720A: $D1
    inc c                                         ; $720B: $0C
    ld c, $7F                                     ; $720C: $0E $7F
    ld a, c                                       ; $720E: $79
    ret nc                                        ; $720F: $D0

    ld bc, $9305                                  ; $7210: $01 $05 $93
    pop de                                        ; $7213: $D1
    dec c                                         ; $7214: $0D
    dec c                                         ; $7215: $0D
    ld a, a                                       ; $7216: $7F
    ld a, b                                       ; $7217: $78
    ret nc                                        ; $7218: $D0

    ld bc, $9205                                  ; $7219: $01 $05 $92
    pop de                                        ; $721C: $D1
    dec c                                         ; $721D: $0D
    inc c                                         ; $721E: $0C
    ld b, l                                       ; $721F: $45
    rra                                           ; $7220: $1F
    adc e                                         ; $7221: $8B
    ld h, [hl]                                    ; $7222: $66
    sub e                                         ; $7223: $93
    ld h, l                                       ; $7224: $65
    add e                                         ; $7225: $83
    ld d, e                                       ; $7226: $53
    ld c, a                                       ; $7227: $4F
    ld h, h                                       ; $7228: $64
    or c                                          ; $7229: $B1
    ld e, c                                       ; $722A: $59
    ld l, c                                       ; $722B: $69
    cp [hl]                                       ; $722C: $BE
    ld e, c                                       ; $722D: $59
    ld h, [hl]                                    ; $722E: $66
    ret nz                                        ; $722F: $C0

    ld e, h                                       ; $7230: $5C
    ld hl, $0005                                  ; $7231: $21 $05 $00
    add c                                         ; $7234: $81
    ld e, l                                       ; $7235: $5D
    dec b                                         ; $7236: $05
    dec b                                         ; $7237: $05

jr_024_7238:
    sbc e                                         ; $7238: $9B
    ret nc                                        ; $7239: $D0

    nop                                           ; $723A: $00
    jr nz, jr_024_7238                            ; $723B: $20 $FB

    ld d, b                                       ; $723D: $50
    ld [hl+], a                                   ; $723E: $22
    dec b                                         ; $723F: $05
    ld b, b                                       ; $7240: $40
    dec bc                                        ; $7241: $0B
    nop                                           ; $7242: $00
    ld [hl-], a                                   ; $7243: $32
    inc hl                                        ; $7244: $23
    ld [hl], b                                    ; $7245: $70
    ld b, b                                       ; $7246: $40
    adc l                                         ; $7247: $8D
    ld b, c                                       ; $7248: $41
    ld sp, $2324                                  ; $7249: $31 $24 $23
    ld [hl], d                                    ; $724C: $72
    ld [hl+], a                                   ; $724D: $22
    adc $40                                       ; $724E: $CE $40
    nop                                           ; $7250: $00
    add d                                         ; $7251: $82
    rra                                           ; $7252: $1F
    ld [de], a                                    ; $7253: $12
    sub h                                         ; $7254: $94
    ld b, d                                       ; $7255: $42
    sub e                                         ; $7256: $93
    ld h, l                                       ; $7257: $65
    add e                                         ; $7258: $83
    ld d, e                                       ; $7259: $53
    ld c, a                                       ; $725A: $4F
    ld h, h                                       ; $725B: $64
    or c                                          ; $725C: $B1
    ld e, c                                       ; $725D: $59
    ld l, c                                       ; $725E: $69
    cp [hl]                                       ; $725F: $BE
    ld e, c                                       ; $7260: $59
    ld h, [hl]                                    ; $7261: $66
    ret nz                                        ; $7262: $C0

    ld e, h                                       ; $7263: $5C
    ld hl, $1D84                                  ; $7264: $21 $84 $1D
    ld c, $1F                                     ; $7267: $0E $1F
    ld [de], a                                    ; $7269: $12
    sub h                                         ; $726A: $94

jr_024_726B:
    add e                                         ; $726B: $83
    jr nc, jr_024_726B                            ; $726C: $30 $FD

    nop                                           ; $726E: $00
    nop                                           ; $726F: $00
    ld b, e                                       ; $7270: $43
    nop                                           ; $7271: $00
    dec h                                         ; $7272: $25
    and c                                         ; $7273: $A1
    ld [$CC24], sp                                ; $7274: $08 $24 $CC
    ld [hl], d                                    ; $7277: $72
    add e                                         ; $7278: $83
    jr nz, jr_024_727B                            ; $7279: $20 $00

jr_024_727B:
    inc bc                                        ; $727B: $03
    nop                                           ; $727C: $00
    ld b, e                                       ; $727D: $43
    nop                                           ; $727E: $00
    dec h                                         ; $727F: $25
    and c                                         ; $7280: $A1
    inc b                                         ; $7281: $04
    inc h                                         ; $7282: $24
    push de                                       ; $7283: $D5
    ld [hl], d                                    ; $7284: $72
    add e                                         ; $7285: $83
    jr @+$06                                      ; $7286: $18 $04

    nop                                           ; $7288: $00
    nop                                           ; $7289: $00
    add e                                         ; $728A: $83
    ld [hl], $00                                  ; $728B: $36 $00
    inc bc                                        ; $728D: $03
    nop                                           ; $728E: $00
    ld b, l                                       ; $728F: $45
    inc h                                         ; $7290: $24
    xor $6F                                       ; $7291: $EE $6F
    sub e                                         ; $7293: $93
    ld h, l                                       ; $7294: $65
    add e                                         ; $7295: $83
    ld d, e                                       ; $7296: $53
    ld c, a                                       ; $7297: $4F
    ld h, h                                       ; $7298: $64
    or c                                          ; $7299: $B1
    ld e, c                                       ; $729A: $59
    ld l, c                                       ; $729B: $69
    cp [hl]                                       ; $729C: $BE
    ld e, c                                       ; $729D: $59
    ld h, [hl]                                    ; $729E: $66
    ret nz                                        ; $729F: $C0

    ld e, h                                       ; $72A0: $5C
    ld hl, $1784                                  ; $72A1: $21 $84 $17
    ld [hl+], a                                   ; $72A4: $22
    rra                                           ; $72A5: $1F
    ld [de], a                                    ; $72A6: $12
    sub h                                         ; $72A7: $94
    add e                                         ; $72A8: $83
    ld [hl], $00                                  ; $72A9: $36 $00
    db $FD                                        ; $72AB: $FD

jr_024_72AC:
    nop                                           ; $72AC: $00
    add e                                         ; $72AD: $83
    jr jr_024_72AC                                ; $72AE: $18 $FC

    nop                                           ; $72B0: $00
    nop                                           ; $72B1: $00
    ld b, e                                       ; $72B2: $43
    nop                                           ; $72B3: $00
    dec h                                         ; $72B4: $25
    and c                                         ; $72B5: $A1
    inc b                                         ; $72B6: $04
    inc h                                         ; $72B7: $24
    push de                                       ; $72B8: $D5
    ld [hl], d                                    ; $72B9: $72
    add e                                         ; $72BA: $83
    inc c                                         ; $72BB: $0C
    nop                                           ; $72BC: $00
    db $FC                                        ; $72BD: $FC
    nop                                           ; $72BE: $00
    ld b, e                                       ; $72BF: $43
    nop                                           ; $72C0: $00
    dec h                                         ; $72C1: $25
    and c                                         ; $72C2: $A1
    ld [$0124], sp                                ; $72C3: $08 $24 $01
    ld [hl], e                                    ; $72C6: $73
    add e                                         ; $72C7: $83
    stop                                          ; $72C8: $10 $00
    db $FC                                        ; $72CA: $FC
    nop                                           ; $72CB: $00
    add e                                         ; $72CC: $83
    ld b, [hl]                                    ; $72CD: $46
    inc bc                                        ; $72CE: $03
    nop                                           ; $72CF: $00
    nop                                           ; $72D0: $00
    ld b, l                                       ; $72D1: $45
    inc h                                         ; $72D2: $24
    ld c, a                                       ; $72D3: $4F
    ld [hl], h                                    ; $72D4: $74
    add e                                         ; $72D5: $83
    db $10                                        ; $72D6: $10
    db $FC                                        ; $72D7: $FC
    nop                                           ; $72D8: $00
    nop                                           ; $72D9: $00
    add e                                         ; $72DA: $83
    db $10                                        ; $72DB: $10
    db $FC                                        ; $72DC: $FC
    nop                                           ; $72DD: $00
    nop                                           ; $72DE: $00
    add e                                         ; $72DF: $83
    stop                                          ; $72E0: $10 $00
    inc b                                         ; $72E2: $04
    nop                                           ; $72E3: $00
    dec b                                         ; $72E4: $05
    nop                                           ; $72E5: $00
    ld l, e                                       ; $72E6: $6B
    ld c, d                                       ; $72E7: $4A
    ld [$F619], sp                                ; $72E8: $08 $19 $F6
    jp nc, $2400                                  ; $72EB: $D2 $00 $24

    add c                                         ; $72EE: $81
    ld [hl], b                                    ; $72EF: $70
    ld [hl+], a                                   ; $72F0: $22
    dec b                                         ; $72F1: $05
    ld b, b                                       ; $72F2: $40
    dec bc                                        ; $72F3: $0B
    nop                                           ; $72F4: $00
    ld h, b                                       ; $72F5: $60
    ld bc, $0007                                  ; $72F6: $01 $07 $00
    add c                                         ; $72F9: $81
    ld e, l                                       ; $72FA: $5D
    add hl, bc                                    ; $72FB: $09
    nop                                           ; $72FC: $00
    jr nz, @-$53                                  ; $72FD: $20 $AB

    ld d, b                                       ; $72FF: $50
    ld b, d                                       ; $7300: $42
    add e                                         ; $7301: $83
    stop                                          ; $7302: $10 $00
    db $FC                                        ; $7304: $FC
    nop                                           ; $7305: $00
    add e                                         ; $7306: $83
    ld a, [hl+]                                   ; $7307: $2A
    db $FC                                        ; $7308: $FC
    nop                                           ; $7309: $00
    nop                                           ; $730A: $00
    ld b, l                                       ; $730B: $45
    inc h                                         ; $730C: $24
    db $F4                                        ; $730D: $F4
    ld a, c                                       ; $730E: $79
    sub e                                         ; $730F: $93
    ld h, l                                       ; $7310: $65
    add e                                         ; $7311: $83
    ld d, e                                       ; $7312: $53
    ld c, a                                       ; $7313: $4F
    ld h, h                                       ; $7314: $64
    or c                                          ; $7315: $B1
    ld e, c                                       ; $7316: $59
    ld l, c                                       ; $7317: $69
    cp [hl]                                       ; $7318: $BE
    ld e, c                                       ; $7319: $59
    ld h, [hl]                                    ; $731A: $66
    ret nz                                        ; $731B: $C0

    ld e, h                                       ; $731C: $5C
    ld hl, $0084                                  ; $731D: $21 $84 $00
    ld c, $1F                                     ; $7320: $0E $1F
    ld [de], a                                    ; $7322: $12
    sub h                                         ; $7323: $94
    ld b, b                                       ; $7324: $40
    jr @-$7B                                      ; $7325: $18 $83

    ld a, [hl+]                                   ; $7327: $2A
    inc b                                         ; $7328: $04
    nop                                           ; $7329: $00
    nop                                           ; $732A: $00
    ld b, e                                       ; $732B: $43
    ld a, [bc]                                    ; $732C: $0A
    nop                                           ; $732D: $00
    dec h                                         ; $732E: $25
    and c                                         ; $732F: $A1
    ld [$0624], sp                                ; $7330: $08 $24 $06
    ld [hl], e                                    ; $7333: $73
    ld b, l                                       ; $7334: $45
    inc h                                         ; $7335: $24
    ld a, b                                       ; $7336: $78
    ld [hl], d                                    ; $7337: $72
    sub e                                         ; $7338: $93
    ld h, l                                       ; $7339: $65
    add e                                         ; $733A: $83
    ld d, e                                       ; $733B: $53
    ld c, a                                       ; $733C: $4F
    add h                                         ; $733D: $84
    dec d                                         ; $733E: $15
    ld a, [bc]                                    ; $733F: $0A
    rra                                           ; $7340: $1F
    ld [de], a                                    ; $7341: $12
    sub h                                         ; $7342: $94
    add e                                         ; $7343: $83
    dec h                                         ; $7344: $25
    nop                                           ; $7345: $00
    db $FD                                        ; $7346: $FD
    nop                                           ; $7347: $00
    ld b, l                                       ; $7348: $45
    inc h                                         ; $7349: $24
    sub b                                         ; $734A: $90
    ld [hl], e                                    ; $734B: $73
    sub e                                         ; $734C: $93
    ld h, l                                       ; $734D: $65
    add e                                         ; $734E: $83
    ld d, e                                       ; $734F: $53
    ld c, a                                       ; $7350: $4F
    add h                                         ; $7351: $84
    dec d                                         ; $7352: $15
    nop                                           ; $7353: $00
    rra                                           ; $7354: $1F
    ld [de], a                                    ; $7355: $12
    sub h                                         ; $7356: $94
    add e                                         ; $7357: $83
    dec h                                         ; $7358: $25
    nop                                           ; $7359: $00
    inc bc                                        ; $735A: $03
    nop                                           ; $735B: $00
    ld b, l                                       ; $735C: $45
    inc hl                                        ; $735D: $23
    dec sp                                        ; $735E: $3B
    ld c, a                                       ; $735F: $4F
    sub e                                         ; $7360: $93
    ld h, l                                       ; $7361: $65
    sub d                                         ; $7362: $92
    ld d, e                                       ; $7363: $53
    ld c, a                                       ; $7364: $4F
    ld h, h                                       ; $7365: $64
    rst $00                                       ; $7366: $C7
    ld e, c                                       ; $7367: $59
    ld h, [hl]                                    ; $7368: $66
    ret nz                                        ; $7369: $C0

    ld e, h                                       ; $736A: $5C
    ld hl, $0005                                  ; $736B: $21 $05 $00
    add c                                         ; $736E: $81
    ld e, l                                       ; $736F: $5D
    dec b                                         ; $7370: $05
    dec b                                         ; $7371: $05

jr_024_7372:
    or h                                          ; $7372: $B4
    ret nc                                        ; $7373: $D0

    nop                                           ; $7374: $00
    jr nz, jr_024_7372                            ; $7375: $20 $FB

    ld d, b                                       ; $7377: $50
    ld [hl+], a                                   ; $7378: $22
    dec b                                         ; $7379: $05
    ld b, b                                       ; $737A: $40
    dec bc                                        ; $737B: $0B
    nop                                           ; $737C: $00
    ld [hl-], a                                   ; $737D: $32
    inc hl                                        ; $737E: $23
    ld [hl], b                                    ; $737F: $70
    ld b, b                                       ; $7380: $40
    adc l                                         ; $7381: $8D
    ld b, c                                       ; $7382: $41
    ld sp, $6024                                  ; $7383: $31 $24 $60
    ld [hl], e                                    ; $7386: $73
    ld [hl+], a                                   ; $7387: $22
    adc $40                                       ; $7388: $CE $40
    nop                                           ; $738A: $00
    add d                                         ; $738B: $82
    rra                                           ; $738C: $1F
    ld [de], a                                    ; $738D: $12
    sub h                                         ; $738E: $94
    ld b, d                                       ; $738F: $42
    sub e                                         ; $7390: $93
    ld h, l                                       ; $7391: $65
    sub d                                         ; $7392: $92
    ld d, e                                       ; $7393: $53
    ld c, a                                       ; $7394: $4F
    add h                                         ; $7395: $84
    rlca                                          ; $7396: $07
    dec c                                         ; $7397: $0D
    rra                                           ; $7398: $1F
    ld [de], a                                    ; $7399: $12
    sub h                                         ; $739A: $94
    add e                                         ; $739B: $83
    inc d                                         ; $739C: $14
    nop                                           ; $739D: $00
    db $FC                                        ; $739E: $FC
    call nz, $0004                                ; $739F: $C4 $04 $00
    jr jr_024_73A4                                ; $73A2: $18 $00

jr_024_73A4:
    inc b                                         ; $73A4: $04
    nop                                           ; $73A5: $00
    ld b, l                                       ; $73A6: $45
    inc h                                         ; $73A7: $24
    ld e, $76                                     ; $73A8: $1E $76
    sub e                                         ; $73AA: $93
    ld h, l                                       ; $73AB: $65
    sub d                                         ; $73AC: $92
    ld d, e                                       ; $73AD: $53
    ld c, a                                       ; $73AE: $4F
    add h                                         ; $73AF: $84
    add hl, sp                                    ; $73B0: $39
    dec c                                         ; $73B1: $0D
    rra                                           ; $73B2: $1F
    ld [de], a                                    ; $73B3: $12
    sub h                                         ; $73B4: $94
    add e                                         ; $73B5: $83
    jr jr_024_73B8                                ; $73B6: $18 $00

jr_024_73B8:
    db $FC                                        ; $73B8: $FC
    call nz, $00FC                                ; $73B9: $C4 $FC $00
    inc d                                         ; $73BC: $14
    nop                                           ; $73BD: $00
    inc b                                         ; $73BE: $04
    nop                                           ; $73BF: $00
    ld b, l                                       ; $73C0: $45
    inc h                                         ; $73C1: $24
    ld c, h                                       ; $73C2: $4C
    ld [hl], e                                    ; $73C3: $73
    rlca                                          ; $73C4: $07
    nop                                           ; $73C5: $00
    ld l, e                                       ; $73C6: $6B
    ld c, d                                       ; $73C7: $4A
    add hl, bc                                    ; $73C8: $09
    nop                                           ; $73C9: $00
    jr nz, jr_024_7404                            ; $73CA: $20 $38

    ld e, h                                       ; $73CC: $5C
    ld b, b                                       ; $73CD: $40
    ld b, $0C                                     ; $73CE: $06 $0C
    nop                                           ; $73D0: $00
    add e                                         ; $73D1: $83
    stop                                          ; $73D2: $10 $00
    db $FC                                        ; $73D4: $FC
    nop                                           ; $73D5: $00
    add e                                         ; $73D6: $83
    inc d                                         ; $73D7: $14
    inc b                                         ; $73D8: $04
    nop                                           ; $73D9: $00
    nop                                           ; $73DA: $00
    add e                                         ; $73DB: $83
    jr c, jr_024_73DE                             ; $73DC: $38 $00

jr_024_73DE:
    inc b                                         ; $73DE: $04
    nop                                           ; $73DF: $00

jr_024_73E0:
    add e                                         ; $73E0: $83
    jr nc, jr_024_73E0                            ; $73E1: $30 $FD

    nop                                           ; $73E3: $00
    nop                                           ; $73E4: $00
    add e                                         ; $73E5: $83
    jr c, jr_024_73E8                             ; $73E6: $38 $00

jr_024_73E8:
    db $FC                                        ; $73E8: $FC
    nop                                           ; $73E9: $00

jr_024_73EA:
    add e                                         ; $73EA: $83
    jr nz, jr_024_73EA                            ; $73EB: $20 $FD

    nop                                           ; $73ED: $00
    nop                                           ; $73EE: $00
    ld b, l                                       ; $73EF: $45
    inc h                                         ; $73F0: $24
    ld d, [hl]                                    ; $73F1: $56
    ld [hl], d                                    ; $73F2: $72
    ld [bc], a                                    ; $73F3: $02
    nop                                           ; $73F4: $00
    dec e                                         ; $73F5: $1D
    add hl, bc                                    ; $73F6: $09
    ld a, [bc]                                    ; $73F7: $0A
    ld b, l                                       ; $73F8: $45

jr_024_73F9:
    inc h                                         ; $73F9: $24
    inc hl                                        ; $73FA: $23
    ld [hl], d                                    ; $73FB: $72
    and h                                         ; $73FC: $A4
    ccf                                           ; $73FD: $3F
    and e                                         ; $73FE: $A3
    ld b, b                                       ; $73FF: $40
    nop                                           ; $7400: $00
    ld hl, $D203                                  ; $7401: $21 $03 $D2

jr_024_7404:
    and h                                         ; $7404: $A4
    ccf                                           ; $7405: $3F
    and e                                         ; $7406: $A3
    add b                                         ; $7407: $80
    nop                                           ; $7408: $00
    ld hl, $D248                                  ; $7409: $21 $48 $D2
    and h                                         ; $740C: $A4
    ld b, h                                       ; $740D: $44
    and e                                         ; $740E: $A3
    add b                                         ; $740F: $80
    nop                                           ; $7410: $00
    ld [bc], a                                    ; $7411: $02
    ld b, [hl]                                    ; $7412: $46
    jp nc, $45A4                                  ; $7413: $D2 $A4 $45

    and e                                         ; $7416: $A3
    ld bc, $0200                                  ; $7417: $01 $00 $02
    ld c, d                                       ; $741A: $4A
    db $D2, $93, $65

    and c                                         ; $741E: $A1
    ld d, e                                       ; $741F: $53
    ld c, a                                       ; $7420: $4F
    ld h, h                                       ; $7421: $64
    ret z                                         ; $7422: $C8

    ld e, c                                       ; $7423: $59
    ld l, c                                       ; $7424: $69
    pop de                                        ; $7425: $D1
    ld e, c                                       ; $7426: $59
    ld h, [hl]                                    ; $7427: $66
    ret nz                                        ; $7428: $C0

    ld e, h                                       ; $7429: $5C
    ld hl, $0005                                  ; $742A: $21 $05 $00
    add c                                         ; $742D: $81
    ld e, l                                       ; $742E: $5D
    dec b                                         ; $742F: $05
    dec b                                         ; $7430: $05

jr_024_7431:
    or h                                          ; $7431: $B4
    ret nc                                        ; $7432: $D0

    nop                                           ; $7433: $00
    jr nz, jr_024_7431                            ; $7434: $20 $FB

    ld d, b                                       ; $7436: $50
    ld [hl+], a                                   ; $7437: $22
    dec b                                         ; $7438: $05
    ld b, b                                       ; $7439: $40
    dec bc                                        ; $743A: $0B
    nop                                           ; $743B: $00
    ld [hl-], a                                   ; $743C: $32
    inc hl                                        ; $743D: $23
    ld [hl], b                                    ; $743E: $70
    ld b, b                                       ; $743F: $40
    adc l                                         ; $7440: $8D
    ld b, c                                       ; $7441: $41
    ld sp, $1C24                                  ; $7442: $31 $24 $1C
    ld [hl], h                                    ; $7445: $74
    ld [hl+], a                                   ; $7446: $22
    adc $40                                       ; $7447: $CE $40
    nop                                           ; $7449: $00
    add d                                         ; $744A: $82
    rra                                           ; $744B: $1F
    ld [de], a                                    ; $744C: $12
    sub h                                         ; $744D: $94
    ld b, d                                       ; $744E: $42
    sub e                                         ; $744F: $93
    ld h, l                                       ; $7450: $65
    and c                                         ; $7451: $A1
    ld d, e                                       ; $7452: $53
    ld c, a                                       ; $7453: $4F
    ld h, h                                       ; $7454: $64
    ret z                                         ; $7455: $C8

    ld e, c                                       ; $7456: $59

jr_024_7457:
    ld l, c                                       ; $7457: $69
    pop de                                        ; $7458: $D1
    ld e, c                                       ; $7459: $59
    ld h, [hl]                                    ; $745A: $66
    ret nz                                        ; $745B: $C0

    ld e, h                                       ; $745C: $5C
    ld hl, $0005                                  ; $745D: $21 $05 $00
    ld l, e                                       ; $7460: $6B
    ld c, d                                       ; $7461: $4A
    ld c, $0B                                     ; $7462: $0E $0B
    ld e, b                                       ; $7464: $58
    pop de                                        ; $7465: $D1
    nop                                           ; $7466: $00
    inc h                                         ; $7467: $24
    add c                                         ; $7468: $81
    ld [hl], b                                    ; $7469: $70
    ld [hl+], a                                   ; $746A: $22
    dec b                                         ; $746B: $05
    ld b, b                                       ; $746C: $40
    add h                                         ; $746D: $84
    nop                                           ; $746E: $00
    dec c                                         ; $746F: $0D
    rra                                           ; $7470: $1F
    ld [de], a                                    ; $7471: $12
    sub h                                         ; $7472: $94
    ld b, b                                       ; $7473: $40
    jr jr_024_73F9                                ; $7474: $18 $83

    jr nz, jr_024_747B                            ; $7476: $20 $03

    nop                                           ; $7478: $00
    nop                                           ; $7479: $00
    add e                                         ; $747A: $83

jr_024_747B:
    inc h                                         ; $747B: $24
    nop                                           ; $747C: $00
    inc b                                         ; $747D: $04
    nop                                           ; $747E: $00
    add e                                         ; $747F: $83
    jr nc, jr_024_7485                            ; $7480: $30 $03

    nop                                           ; $7482: $00
    nop                                           ; $7483: $00
    add e                                         ; $7484: $83

jr_024_7485:
    jr c, jr_024_7487                             ; $7485: $38 $00

jr_024_7487:
    db $FC                                        ; $7487: $FC
    nop                                           ; $7488: $00
    add e                                         ; $7489: $83
    inc d                                         ; $748A: $14
    db $FC                                        ; $748B: $FC
    nop                                           ; $748C: $00
    nop                                           ; $748D: $00
    add e                                         ; $748E: $83
    stop                                          ; $748F: $10 $00
    inc b                                         ; $7491: $04
    nop                                           ; $7492: $00
    dec bc                                        ; $7493: $0B
    nop                                           ; $7494: $00
    ld [hl-], a                                   ; $7495: $32
    inc hl                                        ; $7496: $23
    ld [hl], b                                    ; $7497: $70
    ld b, b                                       ; $7498: $40
    adc l                                         ; $7499: $8D
    ld b, c                                       ; $749A: $41
    ld sp, $1C24                                  ; $749B: $31 $24 $1C
    ld [hl], h                                    ; $749E: $74
    ld [hl+], a                                   ; $749F: $22
    adc $40                                       ; $74A0: $CE $40
    ld h, b                                       ; $74A2: $60
    ld bc, $0007                                  ; $74A3: $01 $07 $00
    add c                                         ; $74A6: $81
    ld e, l                                       ; $74A7: $5D
    add hl, bc                                    ; $74A8: $09
    nop                                           ; $74A9: $00
    jr nz, jr_024_7457                            ; $74AA: $20 $AB

    ld d, b                                       ; $74AC: $50
    ld b, d                                       ; $74AD: $42
    rlca                                          ; $74AE: $07
    nop                                           ; $74AF: $00
    ld l, e                                       ; $74B0: $6B
    ld c, d                                       ; $74B1: $4A
    add hl, bc                                    ; $74B2: $09
    nop                                           ; $74B3: $00
    jr nz, jr_024_74EE                            ; $74B4: $20 $38

    ld e, h                                       ; $74B6: $5C
    ld b, b                                       ; $74B7: $40
    ld b, $0C                                     ; $74B8: $06 $0C
    nop                                           ; $74BA: $00
    add e                                         ; $74BB: $83
    inc e                                         ; $74BC: $1C
    nop                                           ; $74BD: $00
    db $FC                                        ; $74BE: $FC
    ld b, e                                       ; $74BF: $43
    db $FC                                        ; $74C0: $FC
    nop                                           ; $74C1: $00
    jr jr_024_74C4                                ; $74C2: $18 $00

jr_024_74C4:
    inc b                                         ; $74C4: $04
    dec de                                        ; $74C5: $1B
    inc bc                                        ; $74C6: $03
    nop                                           ; $74C7: $00
    inc h                                         ; $74C8: $24
    nop                                           ; $74C9: $00

jr_024_74CA:
    inc b                                         ; $74CA: $04
    jr nz, jr_024_74CA                            ; $74CB: $20 $FD

    nop                                           ; $74CD: $00
    nop                                           ; $74CE: $00
    ld b, l                                       ; $74CF: $45
    inc h                                         ; $74D0: $24
    ld h, e                                       ; $74D1: $63
    ld [hl], b                                    ; $74D2: $70
    ld [bc], a                                    ; $74D3: $02
    dec e                                         ; $74D4: $1D
    nop                                           ; $74D5: $00
    inc d                                         ; $74D6: $14
    dec c                                         ; $74D7: $0D
    ld b, l                                       ; $74D8: $45
    inc h                                         ; $74D9: $24
    db $EB                                        ; $74DA: $EB
    ld [hl], l                                    ; $74DB: $75
    and h                                         ; $74DC: $A4
    ld b, h                                       ; $74DD: $44
    and e                                         ; $74DE: $A3
    ld b, b                                       ; $74DF: $40
    nop                                           ; $74E0: $00
    inc bc                                        ; $74E1: $03
    ld a, [c]                                     ; $74E2: $F2
    db $D2, $93, $65

    or b                                          ; $74E6: $B0
    ld d, e                                       ; $74E7: $53
    ld c, a                                       ; $74E8: $4F
    ld h, h                                       ; $74E9: $64
    ld [c], a                                     ; $74EA: $E2
    ld e, c                                       ; $74EB: $59
    ld l, c                                       ; $74EC: $69
    db $EB                                        ; $74ED: $EB

jr_024_74EE:
    ld e, c                                       ; $74EE: $59
    ld h, [hl]                                    ; $74EF: $66
    ret nz                                        ; $74F0: $C0

    ld e, h                                       ; $74F1: $5C
    ld hl, $0005                                  ; $74F2: $21 $05 $00
    add c                                         ; $74F5: $81
    ld e, l                                       ; $74F6: $5D
    dec b                                         ; $74F7: $05
    dec b                                         ; $74F8: $05

jr_024_74F9:
    sbc e                                         ; $74F9: $9B
    ret nc                                        ; $74FA: $D0

    nop                                           ; $74FB: $00
    jr nz, jr_024_74F9                            ; $74FC: $20 $FB

    ld d, b                                       ; $74FE: $50
    ld [hl+], a                                   ; $74FF: $22
    dec b                                         ; $7500: $05
    ld b, b                                       ; $7501: $40
    dec bc                                        ; $7502: $0B
    nop                                           ; $7503: $00
    ld [hl-], a                                   ; $7504: $32
    inc hl                                        ; $7505: $23
    ld [hl], b                                    ; $7506: $70
    ld b, b                                       ; $7507: $40
    adc l                                         ; $7508: $8D
    ld b, c                                       ; $7509: $41
    ld sp, $E424                                  ; $750A: $31 $24 $E4
    ld [hl], h                                    ; $750D: $74
    ld [hl+], a                                   ; $750E: $22
    adc $40                                       ; $750F: $CE $40
    nop                                           ; $7511: $00
    add d                                         ; $7512: $82

jr_024_7513:
    rra                                           ; $7513: $1F
    ld [de], a                                    ; $7514: $12
    sub h                                         ; $7515: $94
    ld b, d                                       ; $7516: $42
    sub e                                         ; $7517: $93
    ld h, l                                       ; $7518: $65
    or b                                          ; $7519: $B0
    ld d, e                                       ; $751A: $53
    ld c, a                                       ; $751B: $4F
    ld h, h                                       ; $751C: $64
    ld [c], a                                     ; $751D: $E2
    ld e, c                                       ; $751E: $59
    ld l, c                                       ; $751F: $69
    db $EB                                        ; $7520: $EB
    ld e, c                                       ; $7521: $59
    ld h, [hl]                                    ; $7522: $66
    ret nz                                        ; $7523: $C0

    ld e, h                                       ; $7524: $5C
    ld hl, $0005                                  ; $7525: $21 $05 $00
    ld l, e                                       ; $7528: $6B
    ld c, d                                       ; $7529: $4A
    ld d, $0E                                     ; $752A: $16 $0E
    cp d                                          ; $752C: $BA
    pop de                                        ; $752D: $D1
    nop                                           ; $752E: $00
    inc h                                         ; $752F: $24
    add c                                         ; $7530: $81
    ld [hl], b                                    ; $7531: $70
    ld [hl+], a                                   ; $7532: $22
    dec b                                         ; $7533: $05
    ld b, b                                       ; $7534: $40
    add h                                         ; $7535: $84
    nop                                           ; $7536: $00
    ld d, $1F                                     ; $7537: $16 $1F
    ld [de], a                                    ; $7539: $12
    sub h                                         ; $753A: $94
    add e                                         ; $753B: $83
    jr nz, jr_024_7541                            ; $753C: $20 $03

    nop                                           ; $753E: $00
    inc h                                         ; $753F: $24
    nop                                           ; $7540: $00

jr_024_7541:
    db $FC                                        ; $7541: $FC
    dec de                                        ; $7542: $1B
    db $FD                                        ; $7543: $FD
    nop                                           ; $7544: $00

jr_024_7545:
    jr jr_024_7547                                ; $7545: $18 $00

jr_024_7547:
    db $FC                                        ; $7547: $FC
    ld b, e                                       ; $7548: $43
    inc b                                         ; $7549: $04
    nop                                           ; $754A: $00
    inc e                                         ; $754B: $1C
    nop                                           ; $754C: $00
    inc b                                         ; $754D: $04
    nop                                           ; $754E: $00
    dec bc                                        ; $754F: $0B
    nop                                           ; $7550: $00
    ld [hl-], a                                   ; $7551: $32
    inc hl                                        ; $7552: $23
    ld [hl], b                                    ; $7553: $70
    ld b, b                                       ; $7554: $40
    adc l                                         ; $7555: $8D
    ld b, c                                       ; $7556: $41
    ld sp, $E424                                  ; $7557: $31 $24 $E4
    ld [hl], h                                    ; $755A: $74
    ld [hl+], a                                   ; $755B: $22
    adc $40                                       ; $755C: $CE $40
    ld h, b                                       ; $755E: $60
    ld bc, $0007                                  ; $755F: $01 $07 $00
    add c                                         ; $7562: $81
    ld e, l                                       ; $7563: $5D
    add hl, bc                                    ; $7564: $09
    nop                                           ; $7565: $00
    jr nz, jr_024_7513                            ; $7566: $20 $AB

    ld d, b                                       ; $7568: $50
    ld b, d                                       ; $7569: $42
    rlca                                          ; $756A: $07
    nop                                           ; $756B: $00
    ld l, e                                       ; $756C: $6B
    ld c, d                                       ; $756D: $4A
    add hl, bc                                    ; $756E: $09
    nop                                           ; $756F: $00
    jr nz, jr_024_75AA                            ; $7570: $20 $38

    ld e, h                                       ; $7572: $5C

jr_024_7573:
    ld b, b                                       ; $7573: $40
    ld b, $0C                                     ; $7574: $06 $0C
    nop                                           ; $7576: $00
    add e                                         ; $7577: $83
    stop                                          ; $7578: $10 $00
    db $FC                                        ; $757A: $FC
    dec h                                         ; $757B: $25
    db $FD                                        ; $757C: $FD
    nop                                           ; $757D: $00
    stop                                          ; $757E: $10 $00
    db $FC                                        ; $7580: $FC
    nop                                           ; $7581: $00
    ld b, l                                       ; $7582: $45
    inc h                                         ; $7583: $24
    xor d                                         ; $7584: $AA
    ld [hl], e                                    ; $7585: $73
    ld [bc], a                                    ; $7586: $02
    nop                                           ; $7587: $00
    dec e                                         ; $7588: $1D
    dec c                                         ; $7589: $0D
    inc d                                         ; $758A: $14
    ld b, l                                       ; $758B: $45
    inc h                                         ; $758C: $24
    db $E4                                        ; $758D: $E4
    ld [hl], h                                    ; $758E: $74
    ld b, h                                       ; $758F: $44
    xor c                                         ; $7590: $A9
    ld [hl], l                                    ; $7591: $75
    rlca                                          ; $7592: $07
    nop                                           ; $7593: $00
    ld l, e                                       ; $7594: $6B
    ld c, d                                       ; $7595: $4A
    add hl, bc                                    ; $7596: $09
    nop                                           ; $7597: $00
    jr nz, jr_024_7545                            ; $7598: $20 $AB

    ld d, b                                       ; $759A: $50
    ld b, e                                       ; $759B: $43
    ld de, $C801                                  ; $759C: $11 $01 $C8
    and e                                         ; $759F: $A3
    dec b                                         ; $75A0: $05
    nop                                           ; $75A1: $00
    inc h                                         ; $75A2: $24
    xor c                                         ; $75A3: $A9
    ld [hl], l                                    ; $75A4: $75
    ld b, l                                       ; $75A5: $45
    inc hl                                        ; $75A6: $23
    dec hl                                        ; $75A7: $2B
    ld b, [hl]                                    ; $75A8: $46
    and d                                         ; $75A9: $A2

jr_024_75AA:
    add hl, hl                                    ; $75AA: $29
    and c                                         ; $75AB: $A1
    ld [bc], a                                    ; $75AC: $02
    ld [hl+], a                                   ; $75AD: $22
    inc b                                         ; $75AE: $04
    ld b, b                                       ; $75AF: $40
    cp [hl]                                       ; $75B0: $BE
    ld b, l                                       ; $75B1: $45
    pop de                                        ; $75B2: $D1
    ld l, b                                       ; $75B3: $68
    ret c                                         ; $75B4: $D8

    ld a, a                                       ; $75B5: $7F
    ld a, d                                       ; $75B6: $7A
    ld d, c                                       ; $75B7: $51
    ld l, l                                       ; $75B8: $6D
    ld a, h                                       ; $75B9: $7C
    ld a, a                                       ; $75BA: $7F
    ld [$03D1], sp                                ; $75BB: $08 $D1 $03
    inc b                                         ; $75BE: $04
    ld [$08D1], sp                                ; $75BF: $08 $D1 $08
    jr jr_024_7608                                ; $75C2: $18 $44

    rst $08                                       ; $75C4: $CF
    ld [hl], l                                    ; $75C5: $75
    and [hl]                                      ; $75C6: $A6
    ret z                                         ; $75C7: $C8

    and e                                         ; $75C8: $A3
    inc c                                         ; $75C9: $0C
    ld bc, $A3C8                                  ; $75CA: $01 $C8 $A3
    dec b                                         ; $75CD: $05
    ld bc, $2345                                  ; $75CE: $01 $45 $23
    dec hl                                        ; $75D1: $2B
    ld b, [hl]                                    ; $75D2: $46
    and h                                         ; $75D3: $A4
    ld b, h                                       ; $75D4: $44
    and e                                         ; $75D5: $A3
    ld [$0100], sp                                ; $75D6: $08 $00 $01
    sub b                                         ; $75D9: $90
    ret nc                                        ; $75DA: $D0

    and h                                         ; $75DB: $A4
    ld b, h                                       ; $75DC: $44
    and e                                         ; $75DD: $A3
    db $10                                        ; $75DE: $10
    ld [bc], a                                    ; $75DF: $02
    jr nz, jr_024_7573                            ; $75E0: $20 $91

    ret nc                                        ; $75E2: $D0

    and h                                         ; $75E3: $A4
    ld b, h                                       ; $75E4: $44
    and e                                         ; $75E5: $A3
    jr nz, jr_024_75E8                            ; $75E6: $20 $00

jr_024_75E8:
    inc bc                                        ; $75E8: $03
    sub d                                         ; $75E9: $92
    ret nc                                        ; $75EA: $D0

    sub e                                         ; $75EB: $93
    ld h, l                                       ; $75EC: $65
    cp a                                          ; $75ED: $BF
    ld d, e                                       ; $75EE: $53
    ld c, a                                       ; $75EF: $4F
    ld h, h                                       ; $75F0: $64
    ldh a, [$59]                                  ; $75F1: $F0 $59
    ld l, c                                       ; $75F3: $69
    ld sp, hl                                     ; $75F4: $F9
    ld e, c                                       ; $75F5: $59
    ld h, [hl]                                    ; $75F6: $66
    ret nz                                        ; $75F7: $C0

    ld e, h                                       ; $75F8: $5C
    ld hl, $0005                                  ; $75F9: $21 $05 $00
    add c                                         ; $75FC: $81
    ld e, l                                       ; $75FD: $5D
    dec b                                         ; $75FE: $05
    dec b                                         ; $75FF: $05

jr_024_7600:
    sbc e                                         ; $7600: $9B
    ret nc                                        ; $7601: $D0

    nop                                           ; $7602: $00
    jr nz, jr_024_7600                            ; $7603: $20 $FB

    ld d, b                                       ; $7605: $50
    ld [hl+], a                                   ; $7606: $22
    dec b                                         ; $7607: $05

jr_024_7608:
    ld b, b                                       ; $7608: $40
    dec bc                                        ; $7609: $0B
    nop                                           ; $760A: $00
    ld [hl-], a                                   ; $760B: $32
    inc hl                                        ; $760C: $23
    ld [hl], b                                    ; $760D: $70
    ld b, b                                       ; $760E: $40
    adc l                                         ; $760F: $8D
    ld b, c                                       ; $7610: $41

jr_024_7611:
    ld sp, $EB24                                  ; $7611: $31 $24 $EB
    ld [hl], l                                    ; $7614: $75
    ld [hl+], a                                   ; $7615: $22
    adc $40                                       ; $7616: $CE $40
    nop                                           ; $7618: $00
    add d                                         ; $7619: $82
    rra                                           ; $761A: $1F
    ld [de], a                                    ; $761B: $12
    sub h                                         ; $761C: $94
    ld b, d                                       ; $761D: $42
    sub e                                         ; $761E: $93
    ld h, l                                       ; $761F: $65
    cp a                                          ; $7620: $BF
    ld d, e                                       ; $7621: $53
    ld c, a                                       ; $7622: $4F
    ld h, h                                       ; $7623: $64

jr_024_7624:
    ldh a, [$59]                                  ; $7624: $F0 $59
    ld l, c                                       ; $7626: $69
    ld sp, hl                                     ; $7627: $F9
    ld e, c                                       ; $7628: $59
    ld h, [hl]                                    ; $7629: $66
    ret nz                                        ; $762A: $C0

    ld e, h                                       ; $762B: $5C
    ld hl, $0005                                  ; $762C: $21 $05 $00
    ld l, e                                       ; $762F: $6B
    ld c, d                                       ; $7630: $4A
    inc c                                         ; $7631: $0C
    dec bc                                        ; $7632: $0B
    ld d, [hl]                                    ; $7633: $56
    pop de                                        ; $7634: $D1
    nop                                           ; $7635: $00
    inc h                                         ; $7636: $24
    add c                                         ; $7637: $81
    ld [hl], b                                    ; $7638: $70
    ld [hl+], a                                   ; $7639: $22
    dec b                                         ; $763A: $05
    ld b, b                                       ; $763B: $40
    add h                                         ; $763C: $84
    dec b                                         ; $763D: $05
    inc bc                                        ; $763E: $03
    rra                                           ; $763F: $1F
    ld [de], a                                    ; $7640: $12
    sub h                                         ; $7641: $94
    add e                                         ; $7642: $83
    stop                                          ; $7643: $10 $00
    inc b                                         ; $7645: $04
    dec h                                         ; $7646: $25
    inc bc                                        ; $7647: $03
    nop                                           ; $7648: $00
    stop                                          ; $7649: $10 $00
    inc b                                         ; $764B: $04
    nop                                           ; $764C: $00
    dec bc                                        ; $764D: $0B
    nop                                           ; $764E: $00
    ld [hl-], a                                   ; $764F: $32
    inc hl                                        ; $7650: $23
    ld [hl], b                                    ; $7651: $70
    ld b, b                                       ; $7652: $40
    adc l                                         ; $7653: $8D
    ld b, c                                       ; $7654: $41
    ld sp, $EB24                                  ; $7655: $31 $24 $EB
    ld [hl], l                                    ; $7658: $75
    ld [hl+], a                                   ; $7659: $22
    adc $40                                       ; $765A: $CE $40
    ld h, b                                       ; $765C: $60
    ld bc, $0007                                  ; $765D: $01 $07 $00
    add c                                         ; $7660: $81
    ld e, l                                       ; $7661: $5D
    add hl, bc                                    ; $7662: $09
    nop                                           ; $7663: $00
    jr nz, jr_024_7611                            ; $7664: $20 $AB

    ld d, b                                       ; $7666: $50
    ld b, d                                       ; $7667: $42
    ld [bc], a                                    ; $7668: $02
    dec e                                         ; $7669: $1D
    nop                                           ; $766A: $00
    add hl, bc                                    ; $766B: $09
    ld a, [bc]                                    ; $766C: $0A
    ld b, l                                       ; $766D: $45
    inc h                                         ; $766E: $24
    inc hl                                        ; $766F: $23
    ld [hl], d                                    ; $7670: $72
    rlca                                          ; $7671: $07
    nop                                           ; $7672: $00
    ld l, e                                       ; $7673: $6B
    ld c, d                                       ; $7674: $4A
    add hl, bc                                    ; $7675: $09
    nop                                           ; $7676: $00
    jr nz, jr_024_7624                            ; $7677: $20 $AB

    ld d, b                                       ; $7679: $50
    and b                                         ; $767A: $A0
    dec h                                         ; $767B: $25
    and c                                         ; $767C: $A1
    db $10                                        ; $767D: $10
    inc h                                         ; $767E: $24
    ld b, $77                                     ; $767F: $06 $77
    xor d                                         ; $7681: $AA
    xor h                                         ; $7682: $AC
    ld e, h                                       ; $7683: $5C
    jp nc, $0043                                  ; $7684: $D2 $43 $00

    dec h                                         ; $7687: $25
    and c                                         ; $7688: $A1
    jr nz, jr_024_76AF                            ; $7689: $20 $24

    adc $76                                       ; $768B: $CE $76
    ld l, b                                       ; $768D: $68
    or e                                          ; $768E: $B3
    ld [hl], a                                    ; $768F: $77
    ld l, [hl]                                    ; $7690: $6E
    ld h, c                                       ; $7691: $61
    ld h, c                                       ; $7692: $61
    ld a, b                                       ; $7693: $78
    ld a, a                                       ; $7694: $7F
    ld b, l                                       ; $7695: $45
    jp nc, $0503                                  ; $7696: $D2 $03 $05

    ld b, l                                       ; $7699: $45
    jp nc, $0B13                                  ; $769A: $D2 $13 $0B

    ld a, a                                       ; $769D: $7F
    ld h, $D2                                     ; $769E: $26 $D2
    ld bc, $2606                                  ; $76A0: $01 $06 $26
    jp nc, $0A12                                  ; $76A3: $D2 $12 $0A

    ld a, a                                       ; $76A6: $7F
    dec h                                         ; $76A7: $25
    jp nc, $0601                                  ; $76A8: $D2 $01 $06

    dec h                                         ; $76AB: $25
    jp nc, $0912                                  ; $76AC: $D2 $12 $09

jr_024_76AF:
    ld a, a                                       ; $76AF: $7F
    inc h                                         ; $76B0: $24
    jp nc, $0601                                  ; $76B1: $D2 $01 $06

    inc h                                         ; $76B4: $24
    jp nc, $0812                                  ; $76B5: $D2 $12 $08

    ld a, a                                       ; $76B8: $7F
    ld b, c                                       ; $76B9: $41
    jp nc, $0501                                  ; $76BA: $D2 $01 $05

    ld b, c                                       ; $76BD: $41
    jp nc, $0713                                  ; $76BE: $D2 $13 $07

    ld a, a                                       ; $76C1: $7F
    ld b, b                                       ; $76C2: $40
    jp nc, $0501                                  ; $76C3: $D2 $01 $05

    ld b, b                                       ; $76C6: $40
    jp nc, $0613                                  ; $76C7: $D2 $13 $06

    ld b, l                                       ; $76CA: $45
    rra                                           ; $76CB: $1F
    adc e                                         ; $76CC: $8B
    ld h, [hl]                                    ; $76CD: $66
    ld l, b                                       ; $76CE: $68
    ld l, [hl]                                    ; $76CF: $6E
    ld b, d                                       ; $76D0: $42
    ld [hl], e                                    ; $76D1: $73
    sbc d                                         ; $76D2: $9A
    ld [hl], e                                    ; $76D3: $73
    ld a, c                                       ; $76D4: $79
    ld a, a                                       ; $76D5: $7F
    ei                                            ; $76D6: $FB
    jp nc, $0503                                  ; $76D7: $D2 $03 $05

    ld b, h                                       ; $76DA: $44
    jp nc, $0A13                                  ; $76DB: $D2 $13 $0A

    ld a, a                                       ; $76DE: $7F
    ld a, [$01D2]                                 ; $76DF: $FA $D2 $01
    dec b                                         ; $76E2: $05
    ld b, e                                       ; $76E3: $43
    jp nc, $0913                                  ; $76E4: $D2 $13 $09

    ld a, a                                       ; $76E7: $7F
    ld sp, hl                                     ; $76E8: $F9
    jp nc, $0501                                  ; $76E9: $D2 $01 $05

    ld b, d                                       ; $76EC: $42
    jp nc, $0813                                  ; $76ED: $D2 $13 $08

    ld a, a                                       ; $76F0: $7F
    ld hl, sp-$2E                                 ; $76F1: $F8 $D2
    ld bc, $4105                                  ; $76F3: $01 $05 $41
    jp nc, $0713                                  ; $76F6: $D2 $13 $07

    ld a, a                                       ; $76F9: $7F
    rst $30                                       ; $76FA: $F7
    jp nc, $0501                                  ; $76FB: $D2 $01 $05

    ld b, b                                       ; $76FE: $40
    jp nc, $0613                                  ; $76FF: $D2 $13 $06

    ld b, l                                       ; $7702: $45
    rra                                           ; $7703: $1F
    adc e                                         ; $7704: $8B
    ld h, [hl]                                    ; $7705: $66
    ld l, b                                       ; $7706: $68
    ld l, [hl]                                    ; $7707: $6E
    ld b, d                                       ; $7708: $42
    ld [hl], e                                    ; $7709: $73
    sbc d                                         ; $770A: $9A
    ld [hl], e                                    ; $770B: $73
    ld a, c                                       ; $770C: $79
    ld b, e                                       ; $770D: $43
    nop                                           ; $770E: $00
    dec h                                         ; $770F: $25
    and c                                         ; $7710: $A1
    jr nz, @+$26                                  ; $7711: $20 $24

    ld c, a                                       ; $7713: $4F
    ld [hl], a                                    ; $7714: $77
    ld a, a                                       ; $7715: $7F
    ld h, h                                       ; $7716: $64
    ret nc                                        ; $7717: $D0

    ld bc, $4005                                  ; $7718: $01 $05 $40
    jp nc, $0613                                  ; $771B: $D2 $13 $06

    ld a, a                                       ; $771E: $7F
    ld h, l                                       ; $771F: $65
    ret nc                                        ; $7720: $D0

    ld bc, $4105                                  ; $7721: $01 $05 $41
    jp nc, $0713                                  ; $7724: $D2 $13 $07

    ld a, a                                       ; $7727: $7F
    ld c, b                                       ; $7728: $48
    ret nc                                        ; $7729: $D0

    ld bc, $2406                                  ; $772A: $01 $06 $24
    jp nc, $0812                                  ; $772D: $D2 $12 $08

    ld a, a                                       ; $7730: $7F
    ld c, c                                       ; $7731: $49
    ret nc                                        ; $7732: $D0

    ld bc, $2506                                  ; $7733: $01 $06 $25
    jp nc, $0912                                  ; $7736: $D2 $12 $09

    ld a, a                                       ; $7739: $7F
    ld c, d                                       ; $773A: $4A
    ret nc                                        ; $773B: $D0

jr_024_773C:
    ld bc, $2606                                  ; $773C: $01 $06 $26
    jp nc, $0A12                                  ; $773F: $D2 $12 $0A

    ld a, a                                       ; $7742: $7F
    ld l, c                                       ; $7743: $69
    ret nc                                        ; $7744: $D0

    inc bc                                        ; $7745: $03
    dec b                                         ; $7746: $05
    ld b, l                                       ; $7747: $45
    jp nc, $0B13                                  ; $7748: $D2 $13 $0B

    ld b, l                                       ; $774B: $45
    rra                                           ; $774C: $1F
    adc e                                         ; $774D: $8B
    ld h, [hl]                                    ; $774E: $66
    ld a, a                                       ; $774F: $7F
    ld [hl], d                                    ; $7750: $72
    pop de                                        ; $7751: $D1
    ld bc, $4005                                  ; $7752: $01 $05 $40
    jp nc, $0613                                  ; $7755: $D2 $13 $06

    ld a, a                                       ; $7758: $7F
    ld [hl], e                                    ; $7759: $73
    pop de                                        ; $775A: $D1
    ld bc, $4105                                  ; $775B: $01 $05 $41
    jp nc, $0713                                  ; $775E: $D2 $13 $07

    ld a, a                                       ; $7761: $7F
    ld [hl], h                                    ; $7762: $74
    pop de                                        ; $7763: $D1
    ld bc, $4205                                  ; $7764: $01 $05 $42
    jp nc, $0813                                  ; $7767: $D2 $13 $08

    ld a, a                                       ; $776A: $7F
    ld [hl], l                                    ; $776B: $75
    pop de                                        ; $776C: $D1
    ld bc, $4305                                  ; $776D: $01 $05 $43
    jp nc, $0913                                  ; $7770: $D2 $13 $09

    ld a, a                                       ; $7773: $7F
    halt                                          ; $7774: $76
    pop de                                        ; $7775: $D1
    ld bc, $4405                                  ; $7776: $01 $05 $44
    jp nc, $0A13                                  ; $7779: $D2 $13 $0A

    ld a, a                                       ; $777C: $7F
    ld [hl], a                                    ; $777D: $77
    pop de                                        ; $777E: $D1
    inc bc                                        ; $777F: $03
    dec b                                         ; $7780: $05
    ld b, l                                       ; $7781: $45
    jp nc, $0B13                                  ; $7782: $D2 $13 $0B

    ld b, l                                       ; $7785: $45
    rra                                           ; $7786: $1F
    adc e                                         ; $7787: $8B
    ld h, [hl]                                    ; $7788: $66
    rlca                                          ; $7789: $07
    nop                                           ; $778A: $00
    ld l, e                                       ; $778B: $6B
    ld c, d                                       ; $778C: $4A
    add hl, bc                                    ; $778D: $09
    nop                                           ; $778E: $00
    jr nz, jr_024_773C                            ; $778F: $20 $AB

    ld d, b                                       ; $7791: $50
    and b                                         ; $7792: $A0
    dec h                                         ; $7793: $25
    and c                                         ; $7794: $A1
    jr nz, jr_024_77BB                            ; $7795: $20 $24

    ld l, a                                       ; $7797: $6F
    ld a, b                                       ; $7798: $78
    xor d                                         ; $7799: $AA
    xor h                                         ; $779A: $AC
    xor e                                         ; $779B: $AB
    pop de                                        ; $779C: $D1
    ld b, e                                       ; $779D: $43
    nop                                           ; $779E: $00
    dec h                                         ; $779F: $25
    and c                                         ; $77A0: $A1
    db $10                                        ; $77A1: $10
    inc h                                         ; $77A2: $24
    ld a, [bc]                                    ; $77A3: $0A
    ld a, b                                       ; $77A4: $78
    ld l, b                                       ; $77A5: $68
    or e                                          ; $77A6: $B3
    ld [hl], a                                    ; $77A7: $77
    ld l, [hl]                                    ; $77A8: $6E
    ld h, c                                       ; $77A9: $61
    ld h, c                                       ; $77AA: $61
    ld a, b                                       ; $77AB: $78
    ld a, a                                       ; $77AC: $7F
    rst $10                                       ; $77AD: $D7
    jp nc, $0105                                  ; $77AE: $D2 $05 $01

    rst $10                                       ; $77B1: $D7
    jp nc, $0718                                  ; $77B2: $D2 $18 $07

    ld a, a                                       ; $77B5: $7F
    cp c                                          ; $77B6: $B9
    jp nc, $0105                                  ; $77B7: $D2 $05 $01

    cp c                                          ; $77BA: $B9

jr_024_77BB:
    jp nc, $0717                                  ; $77BB: $D2 $17 $07

    ld a, a                                       ; $77BE: $7F
    sbc e                                         ; $77BF: $9B
    jp nc, $0105                                  ; $77C0: $D2 $05 $01

    sbc e                                         ; $77C3: $9B
    jp nc, $0716                                  ; $77C4: $D2 $16 $07

    ld a, a                                       ; $77C7: $7F
    ld a, l                                       ; $77C8: $7D
    jp nc, $0105                                  ; $77C9: $D2 $05 $01

    ld a, l                                       ; $77CC: $7D
    jp nc, $0715                                  ; $77CD: $D2 $15 $07

    ld a, a                                       ; $77D0: $7F
    ld e, a                                       ; $77D1: $5F
    jp nc, $0105                                  ; $77D2: $D2 $05 $01

    ld e, a                                       ; $77D5: $5F
    jp nc, $0714                                  ; $77D6: $D2 $14 $07

    ld a, a                                       ; $77D9: $7F
    ld b, c                                       ; $77DA: $41
    jp nc, $0105                                  ; $77DB: $D2 $05 $01

    ld b, c                                       ; $77DE: $41
    jp nc, $0713                                  ; $77DF: $D2 $13 $07

    ld a, a                                       ; $77E2: $7F
    inc hl                                        ; $77E3: $23
    jp nc, $0105                                  ; $77E4: $D2 $05 $01

    inc hl                                        ; $77E7: $23
    jp nc, $0712                                  ; $77E8: $D2 $12 $07

    ld a, a                                       ; $77EB: $7F
    dec b                                         ; $77EC: $05
    jp nc, $0105                                  ; $77ED: $D2 $05 $01

    dec b                                         ; $77F0: $05
    jp nc, $0711                                  ; $77F1: $D2 $11 $07

    ld a, a                                       ; $77F4: $7F
    rst $20                                       ; $77F5: $E7
    pop de                                        ; $77F6: $D1
    dec b                                         ; $77F7: $05
    ld bc, $D1E7                                  ; $77F8: $01 $E7 $D1
    db $10                                        ; $77FB: $10
    rlca                                          ; $77FC: $07
    ld a, a                                       ; $77FD: $7F
    ret                                           ; $77FE: $C9


    pop de                                        ; $77FF: $D1
    dec b                                         ; $7800: $05
    ld bc, $D1C9                                  ; $7801: $01 $C9 $D1
    rrca                                          ; $7804: $0F
    rlca                                          ; $7805: $07
    ld b, l                                       ; $7806: $45
    rra                                           ; $7807: $1F
    adc e                                         ; $7808: $8B
    ld h, [hl]                                    ; $7809: $66
    ld l, b                                       ; $780A: $68
    ld l, [hl]                                    ; $780B: $6E
    ld b, d                                       ; $780C: $42
    ld [hl], e                                    ; $780D: $73
    sbc d                                         ; $780E: $9A
    ld [hl], e                                    ; $780F: $73
    ld a, c                                       ; $7810: $79
    ld a, a                                       ; $7811: $7F
    dec e                                         ; $7812: $1D
    jp nc, $0105                                  ; $7813: $D2 $05 $01

    rst $10                                       ; $7816: $D7
    jp nc, $0718                                  ; $7817: $D2 $18 $07

    ld a, a                                       ; $781A: $7F
    rst $38                                       ; $781B: $FF
    pop de                                        ; $781C: $D1
    dec b                                         ; $781D: $05
    ld bc, $D2B9                                  ; $781E: $01 $B9 $D2
    rla                                           ; $7821: $17
    rlca                                          ; $7822: $07
    ld a, a                                       ; $7823: $7F
    pop hl                                        ; $7824: $E1
    pop de                                        ; $7825: $D1
    dec b                                         ; $7826: $05
    ld bc, $D29B                                  ; $7827: $01 $9B $D2
    ld d, $07                                     ; $782A: $16 $07
    ld a, a                                       ; $782C: $7F
    jp $05D1                                      ; $782D: $C3 $D1 $05


    ld bc, $D27D                                  ; $7830: $01 $7D $D2
    dec d                                         ; $7833: $15
    rlca                                          ; $7834: $07
    ld a, a                                       ; $7835: $7F
    and l                                         ; $7836: $A5
    pop de                                        ; $7837: $D1

Call_024_7838:
    dec b                                         ; $7838: $05
    ld bc, $D25F                                  ; $7839: $01 $5F $D2
    inc d                                         ; $783C: $14
    rlca                                          ; $783D: $07
    ld a, a                                       ; $783E: $7F
    add a                                         ; $783F: $87
    pop de                                        ; $7840: $D1
    dec b                                         ; $7841: $05
    ld bc, $D241                                  ; $7842: $01 $41 $D2
    inc de                                        ; $7845: $13
    rlca                                          ; $7846: $07
    ld a, a                                       ; $7847: $7F
    ld l, c                                       ; $7848: $69
    pop de                                        ; $7849: $D1
    dec b                                         ; $784A: $05

jr_024_784B:
    ld bc, $D223                                  ; $784B: $01 $23 $D2
    ld [de], a                                    ; $784E: $12
    rlca                                          ; $784F: $07
    ld a, a                                       ; $7850: $7F
    ld c, e                                       ; $7851: $4B
    pop de                                        ; $7852: $D1
    dec b                                         ; $7853: $05
    ld bc, $D205                                  ; $7854: $01 $05 $D2
    ld de, $7F07                                  ; $7857: $11 $07 $7F
    dec l                                         ; $785A: $2D
    pop de                                        ; $785B: $D1
    dec b                                         ; $785C: $05
    ld bc, $D1E7                                  ; $785D: $01 $E7 $D1
    db $10                                        ; $7860: $10
    rlca                                          ; $7861: $07
    ld a, a                                       ; $7862: $7F
    rrca                                          ; $7863: $0F
    pop de                                        ; $7864: $D1
    dec b                                         ; $7865: $05
    ld bc, $D1C9                                  ; $7866: $01 $C9 $D1
    rrca                                          ; $7869: $0F
    rlca                                          ; $786A: $07
    ld b, l                                       ; $786B: $45
    rra                                           ; $786C: $1F
    adc e                                         ; $786D: $8B
    ld h, [hl]                                    ; $786E: $66
    ld l, b                                       ; $786F: $68
    ld l, [hl]                                    ; $7870: $6E
    ld b, d                                       ; $7871: $42
    ld [hl], e                                    ; $7872: $73
    sbc d                                         ; $7873: $9A
    ld [hl], e                                    ; $7874: $73
    ld a, c                                       ; $7875: $79
    ld b, e                                       ; $7876: $43
    nop                                           ; $7877: $00
    dec h                                         ; $7878: $25
    and c                                         ; $7879: $A1
    db $10                                        ; $787A: $10
    inc h                                         ; $787B: $24
    adc e                                         ; $787C: $8B
    ld a, b                                       ; $787D: $78
    ld a, a                                       ; $787E: $7F
    add b                                         ; $787F: $80
    jp nc, $0A05                                  ; $7880: $D2 $05 $0A

    ret                                           ; $7883: $C9


    pop de                                        ; $7884: $D1
    rrca                                          ; $7885: $0F
    rlca                                          ; $7886: $07
    ld b, l                                       ; $7887: $45
    rra                                           ; $7888: $1F
    adc e                                         ; $7889: $8B
    ld h, [hl]                                    ; $788A: $66
    ld a, a                                       ; $788B: $7F
    ei                                            ; $788C: $FB
    ret nc                                        ; $788D: $D0

    dec b                                         ; $788E: $05
    ld a, [bc]                                    ; $788F: $0A
    ret                                           ; $7890: $C9


    pop de                                        ; $7891: $D1
    rrca                                          ; $7892: $0F
    rlca                                          ; $7893: $07
    ld b, l                                       ; $7894: $45
    rra                                           ; $7895: $1F
    adc e                                         ; $7896: $8B
    ld h, [hl]                                    ; $7897: $66
    rlca                                          ; $7898: $07
    nop                                           ; $7899: $00
    ld l, e                                       ; $789A: $6B
    ld c, d                                       ; $789B: $4A
    add hl, bc                                    ; $789C: $09
    nop                                           ; $789D: $00
    jr nz, jr_024_784B                            ; $789E: $20 $AB

    ld d, b                                       ; $78A0: $50
    and b                                         ; $78A1: $A0
    dec h                                         ; $78A2: $25
    and c                                         ; $78A3: $A1
    ld b, b                                       ; $78A4: $40
    inc h                                         ; $78A5: $24
    rst $38                                       ; $78A6: $FF
    ld a, b                                       ; $78A7: $78
    xor d                                         ; $78A8: $AA
    xor h                                         ; $78A9: $AC
    ld e, d                                       ; $78AA: $5A
    pop de                                        ; $78AB: $D1
    ld l, b                                       ; $78AC: $68
    or e                                          ; $78AD: $B3
    ld [hl], a                                    ; $78AE: $77
    ld l, [hl]                                    ; $78AF: $6E
    ld h, c                                       ; $78B0: $61
    ld h, c                                       ; $78B1: $61
    ld a, b                                       ; $78B2: $78
    ld a, a                                       ; $78B3: $7F
    ld a, h                                       ; $78B4: $7C
    pop de                                        ; $78B5: $D1
    ld bc, $7C05                                  ; $78B6: $01 $05 $7C
    pop de                                        ; $78B9: $D1
    inc c                                         ; $78BA: $0C
    inc d                                         ; $78BB: $14
    ld a, a                                       ; $78BC: $7F
    ld a, e                                       ; $78BD: $7B
    pop de                                        ; $78BE: $D1
    ld bc, $7B05                                  ; $78BF: $01 $05 $7B
    pop de                                        ; $78C2: $D1
    inc c                                         ; $78C3: $0C
    inc de                                        ; $78C4: $13
    ld a, a                                       ; $78C5: $7F
    ld a, d                                       ; $78C6: $7A
    pop de                                        ; $78C7: $D1
    ld bc, $7A05                                  ; $78C8: $01 $05 $7A
    pop de                                        ; $78CB: $D1
    inc c                                         ; $78CC: $0C
    ld [de], a                                    ; $78CD: $12
    ld a, a                                       ; $78CE: $7F
    ld a, c                                       ; $78CF: $79
    pop de                                        ; $78D0: $D1
    ld bc, $7905                                  ; $78D1: $01 $05 $79
    pop de                                        ; $78D4: $D1
    inc c                                         ; $78D5: $0C
    ld de, $787F                                  ; $78D6: $11 $7F $78
    pop de                                        ; $78D9: $D1
    ld bc, $7805                                  ; $78DA: $01 $05 $78
    pop de                                        ; $78DD: $D1
    inc c                                         ; $78DE: $0C
    db $10                                        ; $78DF: $10
    ld a, a                                       ; $78E0: $7F
    ld [hl], a                                    ; $78E1: $77
    pop de                                        ; $78E2: $D1
    ld bc, $7705                                  ; $78E3: $01 $05 $77
    pop de                                        ; $78E6: $D1
    inc c                                         ; $78E7: $0C
    rrca                                          ; $78E8: $0F
    ld a, a                                       ; $78E9: $7F
    halt                                          ; $78EA: $76
    pop de                                        ; $78EB: $D1
    ld bc, $7605                                  ; $78EC: $01 $05 $76
    pop de                                        ; $78EF: $D1
    inc c                                         ; $78F0: $0C
    ld c, $7F                                     ; $78F1: $0E $7F
    ld [hl], l                                    ; $78F3: $75
    pop de                                        ; $78F4: $D1
    ld bc, $7505                                  ; $78F5: $01 $05 $75
    pop de                                        ; $78F8: $D1
    inc c                                         ; $78F9: $0C
    dec c                                         ; $78FA: $0D
    ld b, l                                       ; $78FB: $45
    rra                                           ; $78FC: $1F
    adc e                                         ; $78FD: $8B
    ld h, [hl]                                    ; $78FE: $66
    ld l, b                                       ; $78FF: $68
    ld l, [hl]                                    ; $7900: $6E
    ld b, d                                       ; $7901: $42
    ld [hl], e                                    ; $7902: $73
    sbc d                                         ; $7903: $9A
    ld [hl], e                                    ; $7904: $73
    ld a, c                                       ; $7905: $79
    ld a, a                                       ; $7906: $7F
    ld c, a                                       ; $7907: $4F
    ret nc                                        ; $7908: $D0

    ld bc, $7505                                  ; $7909: $01 $05 $75
    pop de                                        ; $790C: $D1
    inc c                                         ; $790D: $0C
    dec c                                         ; $790E: $0D
    ld a, a                                       ; $790F: $7F
    ld d, b                                       ; $7910: $50
    ret nc                                        ; $7911: $D0

    ld bc, $7605                                  ; $7912: $01 $05 $76
    pop de                                        ; $7915: $D1
    inc c                                         ; $7916: $0C
    ld c, $7F                                     ; $7917: $0E $7F
    ld d, c                                       ; $7919: $51
    ret nc                                        ; $791A: $D0

    ld bc, $7705                                  ; $791B: $01 $05 $77
    pop de                                        ; $791E: $D1
    inc c                                         ; $791F: $0C
    rrca                                          ; $7920: $0F
    ld a, a                                       ; $7921: $7F
    ld d, d                                       ; $7922: $52
    ret nc                                        ; $7923: $D0

    ld bc, $7805                                  ; $7924: $01 $05 $78
    pop de                                        ; $7927: $D1
    inc c                                         ; $7928: $0C
    db $10                                        ; $7929: $10
    ld a, a                                       ; $792A: $7F
    ld d, e                                       ; $792B: $53
    ret nc                                        ; $792C: $D0

    ld bc, $7905                                  ; $792D: $01 $05 $79
    pop de                                        ; $7930: $D1
    inc c                                         ; $7931: $0C
    ld de, $547F                                  ; $7932: $11 $7F $54
    ret nc                                        ; $7935: $D0

    ld bc, $7A05                                  ; $7936: $01 $05 $7A
    pop de                                        ; $7939: $D1
    inc c                                         ; $793A: $0C
    ld [de], a                                    ; $793B: $12
    ld a, a                                       ; $793C: $7F
    ld d, l                                       ; $793D: $55
    ret nc                                        ; $793E: $D0

    ld bc, $7B05                                  ; $793F: $01 $05 $7B
    pop de                                        ; $7942: $D1
    inc c                                         ; $7943: $0C
    inc de                                        ; $7944: $13
    ld a, a                                       ; $7945: $7F
    ld d, [hl]                                    ; $7946: $56
    ret nc                                        ; $7947: $D0

    ld bc, $7C05                                  ; $7948: $01 $05 $7C
    pop de                                        ; $794B: $D1
    inc c                                         ; $794C: $0C
    inc d                                         ; $794D: $14
    ld b, l                                       ; $794E: $45
    rra                                           ; $794F: $1F
    adc e                                         ; $7950: $8B
    ld h, [hl]                                    ; $7951: $66
    sub e                                         ; $7952: $93
    ld h, l                                       ; $7953: $65
    adc $53                                       ; $7954: $CE $53
    ld c, a                                       ; $7956: $4F
    ld h, h                                       ; $7957: $64
    ld a, [bc]                                    ; $7958: $0A
    ld e, d                                       ; $7959: $5A
    ld l, c                                       ; $795A: $69
    rrca                                          ; $795B: $0F
    ld e, d                                       ; $795C: $5A
    ld h, [hl]                                    ; $795D: $66
    ret nz                                        ; $795E: $C0

    ld e, h                                       ; $795F: $5C
    ld hl, $0005                                  ; $7960: $21 $05 $00
    add c                                         ; $7963: $81
    ld e, l                                       ; $7964: $5D
    dec b                                         ; $7965: $05
    dec b                                         ; $7966: $05

jr_024_7967:
    sbc e                                         ; $7967: $9B
    ret nc                                        ; $7968: $D0

    nop                                           ; $7969: $00
    jr nz, jr_024_7967                            ; $796A: $20 $FB

    ld d, b                                       ; $796C: $50
    ld [hl+], a                                   ; $796D: $22
    dec b                                         ; $796E: $05
    ld b, b                                       ; $796F: $40
    dec bc                                        ; $7970: $0B
    nop                                           ; $7971: $00
    ld [hl-], a                                   ; $7972: $32
    inc hl                                        ; $7973: $23
    ld [hl], b                                    ; $7974: $70
    ld b, b                                       ; $7975: $40
    adc l                                         ; $7976: $8D
    ld b, c                                       ; $7977: $41
    ld sp, $5224                                  ; $7978: $31 $24 $52
    ld a, c                                       ; $797B: $79
    ld [hl+], a                                   ; $797C: $22
    adc $40                                       ; $797D: $CE $40
    nop                                           ; $797F: $00
    add d                                         ; $7980: $82
    rra                                           ; $7981: $1F
    ld [de], a                                    ; $7982: $12
    sub h                                         ; $7983: $94
    ld b, d                                       ; $7984: $42
    sub e                                         ; $7985: $93
    ld h, l                                       ; $7986: $65
    adc $53                                       ; $7987: $CE $53
    ld c, a                                       ; $7989: $4F
    ld h, h                                       ; $798A: $64
    ld a, [bc]                                    ; $798B: $0A
    ld e, d                                       ; $798C: $5A
    ld l, c                                       ; $798D: $69
    rrca                                          ; $798E: $0F

jr_024_798F:
    ld e, d                                       ; $798F: $5A
    ld [hl-], a                                   ; $7990: $32
    inc hl                                        ; $7991: $23
    ld [hl], b                                    ; $7992: $70
    ld b, b                                       ; $7993: $40
    adc l                                         ; $7994: $8D
    ld b, c                                       ; $7995: $41
    ld sp, $5224                                  ; $7996: $31 $24 $52
    ld a, c                                       ; $7999: $79
    ld [hl+], a                                   ; $799A: $22
    adc $40                                       ; $799B: $CE $40
    ld h, [hl]                                    ; $799D: $66
    ret nz                                        ; $799E: $C0

    ld e, h                                       ; $799F: $5C
    ld hl, $1584                                  ; $79A0: $21 $84 $15
    dec e                                         ; $79A3: $1D
    rra                                           ; $79A4: $1F
    ld [de], a                                    ; $79A5: $12

jr_024_79A6:
    sub h                                         ; $79A6: $94
    add e                                         ; $79A7: $83
    jr nc, jr_024_79A6                            ; $79A8: $30 $FC

    nop                                           ; $79AA: $00
    daa                                           ; $79AB: $27
    nop                                           ; $79AC: $00
    db $FD                                        ; $79AD: $FD
    nop                                           ; $79AE: $00
    ld b, e                                       ; $79AF: $43
    ld a, [bc]                                    ; $79B0: $0A
    nop                                           ; $79B1: $00
    dec h                                         ; $79B2: $25
    and c                                         ; $79B3: $A1
    jr nz, jr_024_79DA                            ; $79B4: $20 $24

    dec sp                                        ; $79B6: $3B
    ld a, d                                       ; $79B7: $7A
    ld b, e                                       ; $79B8: $43
    ld a, [bc]                                    ; $79B9: $0A
    nop                                           ; $79BA: $00
    dec h                                         ; $79BB: $25
    and c                                         ; $79BC: $A1
    db $10                                        ; $79BD: $10
    inc h                                         ; $79BE: $24
    add sp, $79                                   ; $79BF: $E8 $79
    add e                                         ; $79C1: $83
    jr jr_024_79C8                                ; $79C2: $18 $04

    nop                                           ; $79C4: $00
    ld h, $00                                     ; $79C5: $26 $00
    db $FD                                        ; $79C7: $FD

jr_024_79C8:
    nop                                           ; $79C8: $00
    ld b, e                                       ; $79C9: $43
    ld a, [bc]                                    ; $79CA: $0A
    nop                                           ; $79CB: $00
    dec h                                         ; $79CC: $25
    and c                                         ; $79CD: $A1
    ld b, b                                       ; $79CE: $40
    inc h                                         ; $79CF: $24
    sub $79                                       ; $79D0: $D6 $79
    ld b, l                                       ; $79D2: $45
    inc h                                         ; $79D3: $24
    ld e, l                                       ; $79D4: $5D
    ld a, d                                       ; $79D5: $7A
    add e                                         ; $79D6: $83
    db $10                                        ; $79D7: $10
    db $FD                                        ; $79D8: $FD
    nop                                           ; $79D9: $00

jr_024_79DA:
    db $10                                        ; $79DA: $10
    inc bc                                        ; $79DB: $03
    nop                                           ; $79DC: $00
    inc e                                         ; $79DD: $1C
    nop                                           ; $79DE: $00
    inc b                                         ; $79DF: $04
    db $10                                        ; $79E0: $10
    db $FD                                        ; $79E1: $FD
    nop                                           ; $79E2: $00
    nop                                           ; $79E3: $00
    ld b, l                                       ; $79E4: $45
    inc h                                         ; $79E5: $24
    dec sp                                        ; $79E6: $3B
    ld a, d                                       ; $79E7: $7A
    add e                                         ; $79E8: $83
    db $10                                        ; $79E9: $10
    db $FD                                        ; $79EA: $FD
    nop                                           ; $79EB: $00
    db $10                                        ; $79EC: $10
    inc bc                                        ; $79ED: $03
    nop                                           ; $79EE: $00
    nop                                           ; $79EF: $00
    ld b, l                                       ; $79F0: $45
    inc h                                         ; $79F1: $24
    dec sp                                        ; $79F2: $3B
    ld a, d                                       ; $79F3: $7A
    sub e                                         ; $79F4: $93
    ld h, l                                       ; $79F5: $65
    adc $53                                       ; $79F6: $CE $53
    ld c, a                                       ; $79F8: $4F
    ld h, h                                       ; $79F9: $64
    ld a, [bc]                                    ; $79FA: $0A
    ld e, d                                       ; $79FB: $5A
    ld l, c                                       ; $79FC: $69
    rrca                                          ; $79FD: $0F
    ld e, d                                       ; $79FE: $5A
    ld h, [hl]                                    ; $79FF: $66
    ret nz                                        ; $7A00: $C0

    ld e, h                                       ; $7A01: $5C
    ld hl, $1D84                                  ; $7A02: $21 $84 $1D
    dec c                                         ; $7A05: $0D
    rra                                           ; $7A06: $1F
    ld [de], a                                    ; $7A07: $12
    sub h                                         ; $7A08: $94
    ld b, b                                       ; $7A09: $40
    jr jr_024_798F                                ; $7A0A: $18 $83

    ld e, $FD                                     ; $7A0C: $1E $FD
    nop                                           ; $7A0E: $00
    nop                                           ; $7A0F: $00
    ld b, e                                       ; $7A10: $43
    ld a, [bc]                                    ; $7A11: $0A
    nop                                           ; $7A12: $00
    dec h                                         ; $7A13: $25
    and c                                         ; $7A14: $A1
    ld b, b                                       ; $7A15: $40
    inc h                                         ; $7A16: $24
    ld e, l                                       ; $7A17: $5D
    ld a, d                                       ; $7A18: $7A
    add e                                         ; $7A19: $83
    db $10                                        ; $7A1A: $10
    db $FD                                        ; $7A1B: $FD
    nop                                           ; $7A1C: $00
    jr nz, jr_024_7A1F                            ; $7A1D: $20 $00

jr_024_7A1F:
    inc bc                                        ; $7A1F: $03
    db $10                                        ; $7A20: $10
    db $FD                                        ; $7A21: $FD
    nop                                           ; $7A22: $00
    nop                                           ; $7A23: $00
    ld b, e                                       ; $7A24: $43
    ld a, [bc]                                    ; $7A25: $0A
    nop                                           ; $7A26: $00
    dec h                                         ; $7A27: $25
    and c                                         ; $7A28: $A1
    db $10                                        ; $7A29: $10
    inc h                                         ; $7A2A: $24
    ld d, d                                       ; $7A2B: $52

jr_024_7A2C:
    ld a, d                                       ; $7A2C: $7A
    add e                                         ; $7A2D: $83
    inc d                                         ; $7A2E: $14
    db $FD                                        ; $7A2F: $FD
    nop                                           ; $7A30: $00
    nop                                           ; $7A31: $00
    ld b, e                                       ; $7A32: $43
    ld a, [bc]                                    ; $7A33: $0A
    nop                                           ; $7A34: $00
    dec h                                         ; $7A35: $25
    and c                                         ; $7A36: $A1
    jr nz, jr_024_7A5D                            ; $7A37: $20 $24

    ld b, a                                       ; $7A39: $47
    ld a, d                                       ; $7A3A: $7A
    add e                                         ; $7A3B: $83
    dec hl                                        ; $7A3C: $2B
    nop                                           ; $7A3D: $00
    inc bc                                        ; $7A3E: $03
    ld b, b                                       ; $7A3F: $40
    inc bc                                        ; $7A40: $03
    nop                                           ; $7A41: $00
    nop                                           ; $7A42: $00
    ld b, l                                       ; $7A43: $45
    inc h                                         ; $7A44: $24
    rra                                           ; $7A45: $1F
    ld l, b                                       ; $7A46: $68
    add e                                         ; $7A47: $83
    dec de                                        ; $7A48: $1B
    nop                                           ; $7A49: $00
    db $FD                                        ; $7A4A: $FD
    dec de                                        ; $7A4B: $1B
    nop                                           ; $7A4C: $00
    inc bc                                        ; $7A4D: $03
    inc d                                         ; $7A4E: $14
    inc bc                                        ; $7A4F: $03
    nop                                           ; $7A50: $00
    nop                                           ; $7A51: $00
    add e                                         ; $7A52: $83
    db $10                                        ; $7A53: $10
    inc bc                                        ; $7A54: $03
    nop                                           ; $7A55: $00
    jr nz, jr_024_7A58                            ; $7A56: $20 $00

jr_024_7A58:
    db $FD                                        ; $7A58: $FD
    db $10                                        ; $7A59: $10
    inc bc                                        ; $7A5A: $03
    nop                                           ; $7A5B: $00
    nop                                           ; $7A5C: $00

jr_024_7A5D:
    add e                                         ; $7A5D: $83
    ld h, $03                                     ; $7A5E: $26 $03
    nop                                           ; $7A60: $00
    nop                                           ; $7A61: $00
    ld b, l                                       ; $7A62: $45
    inc h                                         ; $7A63: $24
    rrca                                          ; $7A64: $0F
    ld [hl], e                                    ; $7A65: $73
    ld [bc], a                                    ; $7A66: $02
    nop                                           ; $7A67: $00
    ccf                                           ; $7A68: $3F
    ld a, [bc]                                    ; $7A69: $0A
    rra                                           ; $7A6A: $1F
    ld b, l                                       ; $7A6B: $45
    inc h                                         ; $7A6C: $24
    ld d, a                                       ; $7A6D: $57
    ld l, [hl]                                    ; $7A6E: $6E
    rlca                                          ; $7A6F: $07
    nop                                           ; $7A70: $00
    ld l, e                                       ; $7A71: $6B
    ld c, d                                       ; $7A72: $4A
    add hl, bc                                    ; $7A73: $09
    nop                                           ; $7A74: $00
    jr nz, jr_024_7A2C                            ; $7A75: $20 $B5

    ld d, b                                       ; $7A77: $50
    and b                                         ; $7A78: $A0
    ld h, $A1                                     ; $7A79: $26 $A1
    ld [bc], a                                    ; $7A7B: $02
    inc h                                         ; $7A7C: $24
    and h                                         ; $7A7D: $A4
    ld a, d                                       ; $7A7E: $7A
    ret z                                         ; $7A7F: $C8

    cp b                                          ; $7A80: $B8
    push hl                                       ; $7A81: $E5
    pop de                                        ; $7A82: $D1
    ld l, b                                       ; $7A83: $68
    nop                                           ; $7A84: $00
    ld b, b                                       ; $7A85: $40
    ld a, b                                       ; $7A86: $78
    ld a, d                                       ; $7A87: $7A
    ld d, e                                       ; $7A88: $53
    ld a, e                                       ; $7A89: $7B
    ld e, d                                       ; $7A8A: $5A
    rra                                           ; $7A8B: $1F
    ld [hl], c                                    ; $7A8C: $71
    ld h, d                                       ; $7A8D: $62
    ld a, a                                       ; $7A8E: $7F
    ld l, h                                       ; $7A8F: $6C
    ret nc                                        ; $7A90: $D0

    dec b                                         ; $7A91: $05
    inc bc                                        ; $7A92: $03
    ld l, h                                       ; $7A93: $6C
    ret nc                                        ; $7A94: $D0

    inc b                                         ; $7A95: $04
    inc c                                         ; $7A96: $0C
    ld a, a                                       ; $7A97: $7F
    or b                                          ; $7A98: $B0
    ret nc                                        ; $7A99: $D0

    inc c                                         ; $7A9A: $0C
    ld [$D0B0], sp                                ; $7A9B: $08 $B0 $D0
    rlca                                          ; $7A9E: $07
    ld [$1F45], sp                                ; $7A9F: $08 $45 $1F
    adc e                                         ; $7AA2: $8B
    ld h, [hl]                                    ; $7AA3: $66
    ld l, b                                       ; $7AA4: $68
    ld h, c                                       ; $7AA5: $61
    ld b, e                                       ; $7AA6: $43
    ld a, e                                       ; $7AA7: $7B
    push de                                       ; $7AA8: $D5
    ld a, b                                       ; $7AA9: $78
    ld a, e                                       ; $7AAA: $7B
    ld e, d                                       ; $7AAB: $5A
    rra                                           ; $7AAC: $1F
    ld [hl], c                                    ; $7AAD: $71
    ld h, d                                       ; $7AAE: $62
    ld a, a                                       ; $7AAF: $7F
    ld l, h                                       ; $7AB0: $6C
    ret nc                                        ; $7AB1: $D0

    dec b                                         ; $7AB2: $05
    inc bc                                        ; $7AB3: $03
    ld l, h                                       ; $7AB4: $6C
    ret nc                                        ; $7AB5: $D0

    inc b                                         ; $7AB6: $04
    inc c                                         ; $7AB7: $0C
    ld a, a                                       ; $7AB8: $7F
    or b                                          ; $7AB9: $B0
    ret nc                                        ; $7ABA: $D0

    inc c                                         ; $7ABB: $0C
    ld [$D0B0], sp                                ; $7ABC: $08 $B0 $D0
    rlca                                          ; $7ABF: $07
    ld [$1F45], sp                                ; $7AC0: $08 $45 $1F
    adc e                                         ; $7AC3: $8B
    ld h, [hl]                                    ; $7AC4: $66
    and h                                         ; $7AC5: $A4
    ld b, e                                       ; $7AC6: $43
    and e                                         ; $7AC7: $A3
    add b                                         ; $7AC8: $80
    nop                                           ; $7AC9: $00
    ld hl, $D08B                                  ; $7ACA: $21 $8B $D0
    sub e                                         ; $7ACD: $93
    ld h, l                                       ; $7ACE: $65
    db $DD                                        ; $7ACF: $DD
    ld d, e                                       ; $7AD0: $53
    ld c, a                                       ; $7AD1: $4F
    ld h, h                                       ; $7AD2: $64
    inc e                                         ; $7AD3: $1C
    ld e, d                                       ; $7AD4: $5A
    ld l, c                                       ; $7AD5: $69
    ld hl, $665A                                  ; $7AD6: $21 $5A $66
    ret nz                                        ; $7AD9: $C0

    ld e, h                                       ; $7ADA: $5C
    ld hl, $0005                                  ; $7ADB: $21 $05 $00
    add c                                         ; $7ADE: $81
    ld e, l                                       ; $7ADF: $5D
    dec b                                         ; $7AE0: $05
    dec b                                         ; $7AE1: $05

jr_024_7AE2:
    or h                                          ; $7AE2: $B4
    ret nc                                        ; $7AE3: $D0

    nop                                           ; $7AE4: $00
    jr nz, jr_024_7AE2                            ; $7AE5: $20 $FB

    ld d, b                                       ; $7AE7: $50
    ld [hl+], a                                   ; $7AE8: $22
    dec b                                         ; $7AE9: $05
    ld b, b                                       ; $7AEA: $40
    dec bc                                        ; $7AEB: $0B
    nop                                           ; $7AEC: $00
    ld [hl-], a                                   ; $7AED: $32
    inc hl                                        ; $7AEE: $23
    ld [hl], b                                    ; $7AEF: $70
    ld b, b                                       ; $7AF0: $40
    adc l                                         ; $7AF1: $8D
    ld b, c                                       ; $7AF2: $41
    ld sp, $CD24                                  ; $7AF3: $31 $24 $CD
    ld a, d                                       ; $7AF6: $7A
    ld [hl+], a                                   ; $7AF7: $22
    adc $40                                       ; $7AF8: $CE $40
    nop                                           ; $7AFA: $00
    add d                                         ; $7AFB: $82
    rra                                           ; $7AFC: $1F
    ld [de], a                                    ; $7AFD: $12
    sub h                                         ; $7AFE: $94
    ld b, d                                       ; $7AFF: $42
    ld [bc], a                                    ; $7B00: $02
    add hl, bc                                    ; $7B01: $09
    jr nz, jr_024_7B35                            ; $7B02: $20 $31

    nop                                           ; $7B04: $00
    ld b, l                                       ; $7B05: $45
    inc h                                         ; $7B06: $24
    ld d, a                                       ; $7B07: $57
    ld l, [hl]                                    ; $7B08: $6E
    ld b, b                                       ; $7B09: $40
    add b                                         ; $7B0A: $80
    sbc e                                         ; $7B0B: $9B
    ld a, b                                       ; $7B0C: $78
    ld [hl], b                                    ; $7B0D: $70
    sbc a                                         ; $7B0E: $9F
    ld l, $2E                                     ; $7B0F: $2E $2E
    ld l, $FE                                     ; $7B11: $2E $FE
    ld l, $2E                                     ; $7B13: $2E $2E
    ld l, $FE                                     ; $7B15: $2E $FE
    ld l, $2E                                     ; $7B17: $2E $2E
    ld l, $3F                                     ; $7B19: $2E $3F
    ccf                                           ; $7B1B: $3F
    cp $54                                        ; $7B1C: $FE $54
    ld l, b                                       ; $7B1E: $68
    ld h, c                                       ; $7B1F: $61
    ld [hl], h                                    ; $7B20: $74
    daa                                           ; $7B21: $27
    ld [hl], e                                    ; $7B22: $73
    rst $38                                       ; $7B23: $FF
    ld [hl], e                                    ; $7B24: $73
    ld [hl], h                                    ; $7B25: $74
    ld [hl], d                                    ; $7B26: $72
    ld h, c                                       ; $7B27: $61
    ld l, [hl]                                    ; $7B28: $6E
    ld h, a                                       ; $7B29: $67
    ld h, l                                       ; $7B2A: $65
    ld l, $2E                                     ; $7B2B: $2E $2E
    ld l, $FE                                     ; $7B2D: $2E $FE
    ld [hl], e                                    ; $7B2F: $73
    ld l, b                                       ; $7B30: $68
    ld l, a                                       ; $7B31: $6F
    ld [hl], l                                    ; $7B32: $75
    ld l, h                                       ; $7B33: $6C
    ld h, h                                       ; $7B34: $64

jr_024_7B35:
    ld l, [hl]                                    ; $7B35: $6E
    daa                                           ; $7B36: $27
    ld [hl], h                                    ; $7B37: $74
    rst $38                                       ; $7B38: $FF
    ld [hl], h                                    ; $7B39: $74
    ld l, b                                       ; $7B3A: $68
    ld h, l                                       ; $7B3B: $65
    jr nz, jr_024_7BA5                            ; $7B3C: $20 $67

    ld h, l                                       ; $7B3E: $65
    ld a, c                                       ; $7B3F: $79
    ld [hl], e                                    ; $7B40: $73
    ld h, l                                       ; $7B41: $65
    ld [hl], d                                    ; $7B42: $72
    jr nz, jr_024_7BA7                            ; $7B43: $20 $62

    ld h, l                                       ; $7B45: $65
    cp $63                                        ; $7B46: $FE $63
    ld l, h                                       ; $7B48: $6C
    ld l, a                                       ; $7B49: $6F
    ld [hl], e                                    ; $7B4A: $73
    ld l, c                                       ; $7B4B: $69
    ld l, [hl]                                    ; $7B4C: $6E
    ld h, a                                       ; $7B4D: $67
    jr nz, jr_024_7BBE                            ; $7B4E: $20 $6E

    ld l, a                                       ; $7B50: $6F
    ld [hl], a                                    ; $7B51: $77
    ccf                                           ; $7B52: $3F
    cp $FD                                        ; $7B53: $FE $FD
    sbc d                                         ; $7B55: $9A
    ld e, b                                       ; $7B56: $58
    ld bc, $9B42                                  ; $7B57: $01 $42 $9B
    cp b                                          ; $7B5A: $B8
    ld e, l                                       ; $7B5B: $5D
    sbc a                                         ; $7B5C: $9F
    ld c, c                                       ; $7B5D: $49
    ld [hl], h                                    ; $7B5E: $74
    daa                                           ; $7B5F: $27
    ld [hl], e                                    ; $7B60: $73
    jr nz, jr_024_7BD8                            ; $7B61: $20 $75

    ld [hl], e                                    ; $7B63: $73
    ld h, l                                       ; $7B64: $65
    ld l, h                                       ; $7B65: $6C
    ld h, l                                       ; $7B66: $65
    ld [hl], e                                    ; $7B67: $73
    ld [hl], e                                    ; $7B68: $73
    inc l                                         ; $7B69: $2C
    rst $38                                       ; $7B6A: $FF
    ld h, h                                       ; $7B6B: $64
    ld l, a                                       ; $7B6C: $6F
    ld l, [hl]                                    ; $7B6D: $6E
    daa                                           ; $7B6E: $27
    ld [hl], h                                    ; $7B6F: $74
    jr nz, @+$7B                                  ; $7B70: $20 $79

    ld l, a                                       ; $7B72: $6F
    ld [hl], l                                    ; $7B73: $75
    jr nz, jr_024_7BE9                            ; $7B74: $20 $73

    ld h, l                                       ; $7B76: $65
    ld h, l                                       ; $7B77: $65
    ccf                                           ; $7B78: $3F
    cp $FD                                        ; $7B79: $FE $FD
    sbc e                                         ; $7B7B: $9B
    ld a, b                                       ; $7B7C: $78
    ld [hl], b                                    ; $7B7D: $70
    sbc a                                         ; $7B7E: $9F
    ld c, l                                       ; $7B7F: $4D
    ld l, a                                       ; $7B80: $6F
    ld [hl], d                                    ; $7B81: $72
    ld h, c                                       ; $7B82: $61
    ld h, a                                       ; $7B83: $67
    ld hl, $FDFE                                  ; $7B84: $21 $FE $FD
    sbc e                                         ; $7B87: $9B
    cp b                                          ; $7B88: $B8
    ld e, l                                       ; $7B89: $5D
    sbc a                                         ; $7B8A: $9F
    ld e, c                                       ; $7B8B: $59
    ld l, a                                       ; $7B8C: $6F
    ld [hl], l                                    ; $7B8D: $75
    jr nz, jr_024_7BF1                            ; $7B8E: $20 $61

    ld [hl], d                                    ; $7B90: $72
    ld h, l                                       ; $7B91: $65
    jr nz, jr_024_7C05                            ; $7B92: $20 $71

    ld [hl], l                                    ; $7B94: $75
    ld l, c                                       ; $7B95: $69
    ld [hl], h                                    ; $7B96: $74
    ld h, l                                       ; $7B97: $65
    rst $38                                       ; $7B98: $FF
    ld l, [hl]                                    ; $7B99: $6E
    ld h, c                                       ; $7B9A: $61
    ld l, c                                       ; $7B9B: $69
    halt                                          ; $7B9C: $76
    ld h, l                                       ; $7B9D: $65
    inc l                                         ; $7B9E: $2C
    jr nz, jr_024_7BEC                            ; $7B9F: $20 $4B

    ld a, c                                       ; $7BA1: $79
    ld [hl], d                                    ; $7BA2: $72
    ld l, a                                       ; $7BA3: $6F
    ld [hl], e                                    ; $7BA4: $73

jr_024_7BA5:
    ld l, $FE                                     ; $7BA5: $2E $FE

jr_024_7BA7:
    ld b, h                                       ; $7BA7: $44
    ld l, a                                       ; $7BA8: $6F
    jr nz, @+$7B                                  ; $7BA9: $20 $79

    ld l, a                                       ; $7BAB: $6F
    ld [hl], l                                    ; $7BAC: $75
    jr nz, @+$74                                  ; $7BAD: $20 $72

    ld h, l                                       ; $7BAF: $65
    ld h, c                                       ; $7BB0: $61
    ld l, h                                       ; $7BB1: $6C
    ld l, h                                       ; $7BB2: $6C
    ld a, c                                       ; $7BB3: $79
    rst $38                                       ; $7BB4: $FF
    ld [hl], h                                    ; $7BB5: $74
    ld l, b                                       ; $7BB6: $68
    ld l, c                                       ; $7BB7: $69
    ld l, [hl]                                    ; $7BB8: $6E
    ld l, e                                       ; $7BB9: $6B
    jr nz, @+$7B                                  ; $7BBA: $20 $79

    ld l, a                                       ; $7BBC: $6F
    ld [hl], l                                    ; $7BBD: $75

jr_024_7BBE:
    jr nz, jr_024_7C23                            ; $7BBE: $20 $63

    ld h, c                                       ; $7BC0: $61
    ld l, [hl]                                    ; $7BC1: $6E
    cp $73                                        ; $7BC2: $FE $73
    ld h, l                                       ; $7BC4: $65
    ld [hl], h                                    ; $7BC5: $74
    jr nz, @+$76                                  ; $7BC6: $20 $74

    ld l, b                                       ; $7BC8: $68
    ld l, c                                       ; $7BC9: $69
    ld l, [hl]                                    ; $7BCA: $6E
    ld h, a                                       ; $7BCB: $67
    ld [hl], e                                    ; $7BCC: $73
    jr nz, @+$76                                  ; $7BCD: $20 $74

    ld l, a                                       ; $7BCF: $6F
    rst $38                                       ; $7BD0: $FF
    ld h, a                                       ; $7BD1: $67
    ld l, a                                       ; $7BD2: $6F
    jr nz, jr_024_7C4E                            ; $7BD3: $20 $79

    ld l, a                                       ; $7BD5: $6F
    ld [hl], l                                    ; $7BD6: $75
    ld [hl], d                                    ; $7BD7: $72

jr_024_7BD8:
    jr nz, jr_024_7C51                            ; $7BD8: $20 $77

    ld h, c                                       ; $7BDA: $61
    ld a, c                                       ; $7BDB: $79
    jr nz, jr_024_7C4C                            ; $7BDC: $20 $6E

    ld l, a                                       ; $7BDE: $6F
    ld [hl], a                                    ; $7BDF: $77
    cp $74                                        ; $7BE0: $FE $74
    ld l, b                                       ; $7BE2: $68
    ld h, c                                       ; $7BE3: $61
    ld [hl], h                                    ; $7BE4: $74
    jr nz, jr_024_7C5B                            ; $7BE5: $20 $74

    ld l, b                                       ; $7BE7: $68
    ld h, l                                       ; $7BE8: $65

jr_024_7BE9:
    ld a, c                                       ; $7BE9: $79
    jr nz, jr_024_7C4D                            ; $7BEA: $20 $61

jr_024_7BEC:
    ld [hl], d                                    ; $7BEC: $72
    ld h, l                                       ; $7BED: $65
    rst $38                                       ; $7BEE: $FF
    ld h, e                                       ; $7BEF: $63
    ld l, a                                       ; $7BF0: $6F

jr_024_7BF1:
    ld l, l                                       ; $7BF1: $6D
    ld [hl], b                                    ; $7BF2: $70
    ld l, h                                       ; $7BF3: $6C
    ld h, l                                       ; $7BF4: $65
    ld [hl], h                                    ; $7BF5: $74
    ld h, l                                       ; $7BF6: $65
    ld l, h                                       ; $7BF7: $6C
    ld a, c                                       ; $7BF8: $79
    cp $77                                        ; $7BF9: $FE $77
    ld l, c                                       ; $7BFB: $69
    ld [hl], h                                    ; $7BFC: $74
    ld l, b                                       ; $7BFD: $68
    ld l, c                                       ; $7BFE: $69
    ld l, [hl]                                    ; $7BFF: $6E
    jr nz, jr_024_7C71                            ; $7C00: $20 $6F

    ld [hl], l                                    ; $7C02: $75
    ld [hl], d                                    ; $7C03: $72
    rst $38                                       ; $7C04: $FF

jr_024_7C05:
    ld h, a                                       ; $7C05: $67
    ld [hl], d                                    ; $7C06: $72
    ld h, c                                       ; $7C07: $61
    ld [hl], e                                    ; $7C08: $73
    ld [hl], b                                    ; $7C09: $70
    ccf                                           ; $7C0A: $3F
    cp $54                                        ; $7C0B: $FE $54
    ld l, b                                       ; $7C0D: $68
    ld l, c                                       ; $7C0E: $69
    ld [hl], e                                    ; $7C0F: $73
    jr nz, @+$29                                  ; $7C10: $20 $27

    ld h, a                                       ; $7C12: $67
    ld h, l                                       ; $7C13: $65
    ld a, c                                       ; $7C14: $79
    ld [hl], e                                    ; $7C15: $73
    ld h, l                                       ; $7C16: $65
    ld [hl], d                                    ; $7C17: $72
    daa                                           ; $7C18: $27
    rst $38                                       ; $7C19: $FF
    ld h, e                                       ; $7C1A: $63
    ld h, c                                       ; $7C1B: $61
    ld l, [hl]                                    ; $7C1C: $6E
    ld l, [hl]                                    ; $7C1D: $6E
    ld l, a                                       ; $7C1E: $6F
    ld [hl], h                                    ; $7C1F: $74
    jr nz, jr_024_7C84                            ; $7C20: $20 $62

    ld h, l                                       ; $7C22: $65

jr_024_7C23:
    cp $73                                        ; $7C23: $FE $73
    ld [hl], h                                    ; $7C25: $74
    ld l, a                                       ; $7C26: $6F
    ld [hl], b                                    ; $7C27: $70
    ld [hl], b                                    ; $7C28: $70
    ld h, l                                       ; $7C29: $65
    ld h, h                                       ; $7C2A: $64
    inc l                                         ; $7C2B: $2C
    jr nz, jr_024_7C93                            ; $7C2C: $20 $65

    halt                                          ; $7C2E: $76
    ld h, l                                       ; $7C2F: $65
    ld l, [hl]                                    ; $7C30: $6E
    rst $38                                       ; $7C31: $FF
    ld l, c                                       ; $7C32: $69
    ld h, [hl]                                    ; $7C33: $66
    jr nz, jr_024_7CAF                            ; $7C34: $20 $79

    ld l, a                                       ; $7C36: $6F
    ld [hl], l                                    ; $7C37: $75
    jr nz, jr_024_7C9E                            ; $7C38: $20 $64

    ld l, a                                       ; $7C3A: $6F
    cp $72                                        ; $7C3B: $FE $72
    ld h, l                                       ; $7C3D: $65
    ld l, l                                       ; $7C3E: $6D
    ld l, a                                       ; $7C3F: $6F
    halt                                          ; $7C40: $76
    ld h, l                                       ; $7C41: $65
    jr nz, jr_024_7CB8                            ; $7C42: $20 $74

    ld l, b                                       ; $7C44: $68
    ld h, l                                       ; $7C45: $65
    jr nz, jr_024_7C8B                            ; $7C46: $20 $43

    ld l, a                                       ; $7C48: $6F
    ld [hl], d                                    ; $7C49: $72
    ld h, l                                       ; $7C4A: $65
    rst $38                                       ; $7C4B: $FF

jr_024_7C4C:
    ld d, e                                       ; $7C4C: $53

jr_024_7C4D:
    ld [hl], h                                    ; $7C4D: $74

jr_024_7C4E:
    ld l, a                                       ; $7C4E: $6F
    ld l, [hl]                                    ; $7C4F: $6E
    ld h, l                                       ; $7C50: $65

jr_024_7C51:
    jr nz, jr_024_7CC7                            ; $7C51: $20 $74

    ld l, b                                       ; $7C53: $68
    ld h, c                                       ; $7C54: $61
    ld [hl], h                                    ; $7C55: $74
    cp $63                                        ; $7C56: $FE $63
    ld [hl], d                                    ; $7C58: $72
    ld h, l                                       ; $7C59: $65
    ld h, c                                       ; $7C5A: $61

jr_024_7C5B:
    ld [hl], h                                    ; $7C5B: $74
    ld h, l                                       ; $7C5C: $65
    ld h, h                                       ; $7C5D: $64
    jr nz, jr_024_7CC9                            ; $7C5E: $20 $69

    ld [hl], h                                    ; $7C60: $74
    ld l, $FF                                     ; $7C61: $2E $FF
    ld d, h                                       ; $7C63: $54
    ld l, b                                       ; $7C64: $68
    ld h, l                                       ; $7C65: $65
    ld [hl], d                                    ; $7C66: $72
    ld h, l                                       ; $7C67: $65
    jr nz, jr_024_7CD3                            ; $7C68: $20 $69

    ld [hl], e                                    ; $7C6A: $73
    jr nz, jr_024_7CDB                            ; $7C6B: $20 $6E

    ld l, a                                       ; $7C6D: $6F
    ld [hl], h                                    ; $7C6E: $74
    cp $61                                        ; $7C6F: $FE $61

jr_024_7C71:
    jr nz, jr_024_7CE7                            ; $7C71: $20 $74

    ld l, b                                       ; $7C73: $68
    ld l, c                                       ; $7C74: $69
    ld l, [hl]                                    ; $7C75: $6E
    ld h, a                                       ; $7C76: $67
    jr nz, @+$7B                                  ; $7C77: $20 $79

    ld l, a                                       ; $7C79: $6F
    ld [hl], l                                    ; $7C7A: $75
    jr nz, jr_024_7CE0                            ; $7C7B: $20 $63

    ld h, c                                       ; $7C7D: $61
    ld l, [hl]                                    ; $7C7E: $6E
    rst $38                                       ; $7C7F: $FF
    ld h, h                                       ; $7C80: $64
    ld l, a                                       ; $7C81: $6F
    ld l, $20                                     ; $7C82: $2E $20

jr_024_7C84:
    ld d, a                                       ; $7C84: $57
    ld h, l                                       ; $7C85: $65
    daa                                           ; $7C86: $27
    halt                                          ; $7C87: $76
    ld h, l                                       ; $7C88: $65
    jr nz, @+$79                                  ; $7C89: $20 $77

jr_024_7C8B:
    ld l, a                                       ; $7C8B: $6F
    ld l, [hl]                                    ; $7C8C: $6E
    ld hl, $FDFE                                  ; $7C8D: $21 $FE $FD
    sbc d                                         ; $7C90: $9A
    ld e, b                                       ; $7C91: $58
    ld [bc], a                                    ; $7C92: $02

jr_024_7C93:
    ld b, d                                       ; $7C93: $42
    sbc e                                         ; $7C94: $9B
    ld a, b                                       ; $7C95: $78
    ld [hl], b                                    ; $7C96: $70
    sbc a                                         ; $7C97: $9F
    ld c, c                                       ; $7C98: $49
    ld [hl], e                                    ; $7C99: $73
    jr nz, jr_024_7D10                            ; $7C9A: $20 $74

    ld l, b                                       ; $7C9C: $68
    ld h, c                                       ; $7C9D: $61

jr_024_7C9E:
    ld [hl], h                                    ; $7C9E: $74
    jr nz, jr_024_7D14                            ; $7C9F: $20 $73

    ld l, a                                       ; $7CA1: $6F
    ccf                                           ; $7CA2: $3F
    rst $38                                       ; $7CA3: $FF
    ld c, c                                       ; $7CA4: $49
    jr nz, jr_024_7D1B                            ; $7CA5: $20 $74

    ld l, b                                       ; $7CA7: $68
    ld l, c                                       ; $7CA8: $69
    ld l, [hl]                                    ; $7CA9: $6E
    ld l, e                                       ; $7CAA: $6B
    jr nz, jr_024_7D21                            ; $7CAB: $20 $74

    ld l, b                                       ; $7CAD: $68
    ld h, l                                       ; $7CAE: $65

jr_024_7CAF:
    ld [hl], d                                    ; $7CAF: $72
    ld h, l                                       ; $7CB0: $65
    cp $72                                        ; $7CB1: $FE $72
    ld h, l                                       ; $7CB3: $65
    ld h, c                                       ; $7CB4: $61
    ld l, h                                       ; $7CB5: $6C
    ld l, h                                       ; $7CB6: $6C
    ld a, c                                       ; $7CB7: $79

jr_024_7CB8:
    jr nz, jr_024_7D23                            ; $7CB8: $20 $69

    ld [hl], e                                    ; $7CBA: $73
    jr nz, jr_024_7D1E                            ; $7CBB: $20 $61

    jr nz, jr_024_7D36                            ; $7CBD: $20 $77

    ld h, c                                       ; $7CBF: $61
    ld a, c                                       ; $7CC0: $79
    rst $38                                       ; $7CC1: $FF
    ld [hl], h                                    ; $7CC2: $74
    ld l, a                                       ; $7CC3: $6F
    jr nz, jr_024_7D39                            ; $7CC4: $20 $73

    ld [hl], h                                    ; $7CC6: $74

jr_024_7CC7:
    ld l, a                                       ; $7CC7: $6F
    ld [hl], b                                    ; $7CC8: $70

jr_024_7CC9:
    jr nz, @+$6B                                  ; $7CC9: $20 $69

    ld [hl], h                                    ; $7CCB: $74
    ld l, $FE                                     ; $7CCC: $2E $FE
    db $FD                                        ; $7CCE: $FD
    sbc e                                         ; $7CCF: $9B
    cp b                                          ; $7CD0: $B8
    ld e, l                                       ; $7CD1: $5D
    sbc a                                         ; $7CD2: $9F

jr_024_7CD3:
    ld c, b                                       ; $7CD3: $48
    ld h, c                                       ; $7CD4: $61
    jr nz, jr_024_7D3F                            ; $7CD5: $20 $68

    ld h, c                                       ; $7CD7: $61
    jr nz, @+$6A                                  ; $7CD8: $20 $68

    ld h, c                                       ; $7CDA: $61

jr_024_7CDB:
    ld hl, $4820                                  ; $7CDB: $21 $20 $48
    ld l, a                                       ; $7CDE: $6F
    ld [hl], a                                    ; $7CDF: $77

jr_024_7CE0:
    rst $38                                       ; $7CE0: $FF
    ld l, c                                       ; $7CE1: $69
    ld l, [hl]                                    ; $7CE2: $6E
    ld [hl], h                                    ; $7CE3: $74
    ld h, l                                       ; $7CE4: $65
    ld [hl], d                                    ; $7CE5: $72
    ld h, l                                       ; $7CE6: $65

jr_024_7CE7:
    ld [hl], e                                    ; $7CE7: $73
    ld [hl], h                                    ; $7CE8: $74
    ld l, c                                       ; $7CE9: $69
    ld l, [hl]                                    ; $7CEA: $6E
    ld h, a                                       ; $7CEB: $67
    ld hl, $41FE                                  ; $7CEC: $21 $FE $41
    ld l, [hl]                                    ; $7CEF: $6E
    ld h, h                                       ; $7CF0: $64
    jr nz, @+$79                                  ; $7CF1: $20 $77

    ld l, b                                       ; $7CF3: $68
    ld h, c                                       ; $7CF4: $61
    ld [hl], h                                    ; $7CF5: $74
    jr nz, jr_024_7D65                            ; $7CF6: $20 $6D

    ld l, c                                       ; $7CF8: $69
    ld h, a                                       ; $7CF9: $67
    ld l, b                                       ; $7CFA: $68
    ld [hl], h                                    ; $7CFB: $74
    rst $38                                       ; $7CFC: $FF
    ld [hl], h                                    ; $7CFD: $74
    ld l, b                                       ; $7CFE: $68
    ld h, c                                       ; $7CFF: $61
    ld [hl], h                                    ; $7D00: $74
    jr nz, jr_024_7D65                            ; $7D01: $20 $62

    ld h, l                                       ; $7D03: $65
    ccf                                           ; $7D04: $3F
    cp $FD                                        ; $7D05: $FE $FD
    sbc d                                         ; $7D07: $9A
    ld e, b                                       ; $7D08: $58
    inc bc                                        ; $7D09: $03
    ld b, d                                       ; $7D0A: $42
    sbc e                                         ; $7D0B: $9B
    cp b                                          ; $7D0C: $B8
    ld e, l                                       ; $7D0D: $5D
    sbc a                                         ; $7D0E: $9F
    ld b, l                                       ; $7D0F: $45

jr_024_7D10:
    ld l, b                                       ; $7D10: $68
    ccf                                           ; $7D11: $3F
    cp $59                                        ; $7D12: $FE $59

jr_024_7D14:
    ld l, a                                       ; $7D14: $6F
    ld [hl], l                                    ; $7D15: $75
    daa                                           ; $7D16: $27
    ld [hl], d                                    ; $7D17: $72
    ld h, l                                       ; $7D18: $65
    jr nz, jr_024_7D7E                            ; $7D19: $20 $63

jr_024_7D1B:
    ld l, a                                       ; $7D1B: $6F
    ld l, l                                       ; $7D1C: $6D
    ld l, c                                       ; $7D1D: $69

jr_024_7D1E:
    ld l, [hl]                                    ; $7D1E: $6E
    ld h, a                                       ; $7D1F: $67
    rst $38                                       ; $7D20: $FF

jr_024_7D21:
    ld h, c                                       ; $7D21: $61
    ld h, [hl]                                    ; $7D22: $66

jr_024_7D23:
    ld [hl], h                                    ; $7D23: $74
    ld h, l                                       ; $7D24: $65
    ld [hl], d                                    ; $7D25: $72
    jr nz, jr_024_7D95                            ; $7D26: $20 $6D

    ld h, l                                       ; $7D28: $65
    ccf                                           ; $7D29: $3F
    ld hl, $4FFE                                  ; $7D2A: $21 $FE $4F
    ld l, b                                       ; $7D2D: $68
    jr nz, jr_024_7DA4                            ; $7D2E: $20 $74

    ld l, b                                       ; $7D30: $68
    ld l, c                                       ; $7D31: $69
    ld [hl], e                                    ; $7D32: $73
    jr nz, jr_024_7D9E                            ; $7D33: $20 $69

    ld [hl], e                                    ; $7D35: $73

jr_024_7D36:
    rst $38                                       ; $7D36: $FF
    ld l, b                                       ; $7D37: $68
    ld l, c                                       ; $7D38: $69

jr_024_7D39:
    ld l, h                                       ; $7D39: $6C
    ld h, c                                       ; $7D3A: $61
    ld [hl], d                                    ; $7D3B: $72
    ld l, c                                       ; $7D3C: $69
    ld l, a                                       ; $7D3D: $6F
    ld [hl], l                                    ; $7D3E: $75

jr_024_7D3F:
    ld [hl], e                                    ; $7D3F: $73
    ld hl, $FE21                                  ; $7D40: $21 $21 $FE
    ld c, b                                       ; $7D43: $48
    ld b, c                                       ; $7D44: $41
    jr nz, jr_024_7D88                            ; $7D45: $20 $41

    ld c, b                                       ; $7D47: $48
    ld b, c                                       ; $7D48: $41
    jr nz, jr_024_7D8C                            ; $7D49: $20 $41

    ld c, b                                       ; $7D4B: $48
    ld b, c                                       ; $7D4C: $41
    ld c, b                                       ; $7D4D: $48
    ld b, c                                       ; $7D4E: $41
    ld c, b                                       ; $7D4F: $48
    ld b, c                                       ; $7D50: $41
    ld hl, $FDFE                                  ; $7D51: $21 $FE $FD
    sbc e                                         ; $7D54: $9B
    ld a, b                                       ; $7D55: $78
    ld [hl], b                                    ; $7D56: $70
    sbc a                                         ; $7D57: $9F
    ld e, c                                       ; $7D58: $59
    ld l, a                                       ; $7D59: $6F
    ld [hl], l                                    ; $7D5A: $75
    jr nz, jr_024_7DD4                            ; $7D5B: $20 $77

    ld l, a                                       ; $7D5D: $6F
    ld l, [hl]                                    ; $7D5E: $6E
    daa                                           ; $7D5F: $27
    ld [hl], h                                    ; $7D60: $74
    jr nz, jr_024_7DC9                            ; $7D61: $20 $66

    ld l, c                                       ; $7D63: $69
    ld l, [hl]                                    ; $7D64: $6E

jr_024_7D65:
    ld h, h                                       ; $7D65: $64
    rst $38                                       ; $7D66: $FF
    ld l, c                                       ; $7D67: $69
    ld [hl], h                                    ; $7D68: $74
    jr nz, @+$75                                  ; $7D69: $20 $73

    ld l, a                                       ; $7D6B: $6F
    jr nz, jr_024_7DD4                            ; $7D6C: $20 $66

    ld [hl], l                                    ; $7D6E: $75
    ld l, [hl]                                    ; $7D6F: $6E
    ld l, [hl]                                    ; $7D70: $6E
    ld a, c                                       ; $7D71: $79
    cp $61                                        ; $7D72: $FE $61
    jr nz, jr_024_7DDC                            ; $7D74: $20 $66

    ld h, l                                       ; $7D76: $65
    ld [hl], a                                    ; $7D77: $77
    jr nz, jr_024_7DE7                            ; $7D78: $20 $6D

    ld l, c                                       ; $7D7A: $69
    ld l, [hl]                                    ; $7D7B: $6E
    ld [hl], l                                    ; $7D7C: $75
    ld [hl], h                                    ; $7D7D: $74

jr_024_7D7E:
    ld h, l                                       ; $7D7E: $65
    ld [hl], e                                    ; $7D7F: $73
    rst $38                                       ; $7D80: $FF
    ld h, [hl]                                    ; $7D81: $66
    ld [hl], d                                    ; $7D82: $72
    ld l, a                                       ; $7D83: $6F
    ld l, l                                       ; $7D84: $6D
    jr nz, jr_024_7DF5                            ; $7D85: $20 $6E

    ld l, a                                       ; $7D87: $6F

jr_024_7D88:
    ld [hl], a                                    ; $7D88: $77
    ld l, $FE                                     ; $7D89: $2E $FE
    db $FD                                        ; $7D8B: $FD

jr_024_7D8C:
    sbc e                                         ; $7D8C: $9B
    cp b                                          ; $7D8D: $B8
    ld e, l                                       ; $7D8E: $5D
    sbc a                                         ; $7D8F: $9F
    ld e, c                                       ; $7D90: $59
    ld l, a                                       ; $7D91: $6F
    ld [hl], l                                    ; $7D92: $75
    jr nz, jr_024_7DF8                            ; $7D93: $20 $63

jr_024_7D95:
    ld h, c                                       ; $7D95: $61
    ld l, [hl]                                    ; $7D96: $6E
    daa                                           ; $7D97: $27
    ld [hl], h                                    ; $7D98: $74
    jr nz, @+$64                                  ; $7D99: $20 $62

    ld h, l                                       ; $7D9B: $65
    ld h, c                                       ; $7D9C: $61
    ld [hl], h                                    ; $7D9D: $74

jr_024_7D9E:
    cp $6D                                        ; $7D9E: $FE $6D
    ld h, l                                       ; $7DA0: $65
    ld hl, $5220                                  ; $7DA1: $21 $20 $52

jr_024_7DA4:
    ld h, l                                       ; $7DA4: $65
    ld l, l                                       ; $7DA5: $6D
    ld h, l                                       ; $7DA6: $65
    ld l, l                                       ; $7DA7: $6D
    ld h, d                                       ; $7DA8: $62
    ld h, l                                       ; $7DA9: $65
    ld [hl], d                                    ; $7DAA: $72
    rst $38                                       ; $7DAB: $FF
    ld h, c                                       ; $7DAC: $61
    ld l, h                                       ; $7DAD: $6C
    ld l, h                                       ; $7DAE: $6C
    jr nz, jr_024_7E25                            ; $7DAF: $20 $74

    ld l, b                                       ; $7DB1: $68
    ld h, l                                       ; $7DB2: $65
    jr nz, jr_024_7E29                            ; $7DB3: $20 $74

    ld l, c                                       ; $7DB5: $69
    ld l, l                                       ; $7DB6: $6D
    ld h, l                                       ; $7DB7: $65
    ld [hl], e                                    ; $7DB8: $73
    cp $49                                        ; $7DB9: $FE $49
    daa                                           ; $7DBB: $27
    halt                                          ; $7DBC: $76
    ld h, l                                       ; $7DBD: $65
    jr nz, jr_024_7E33                            ; $7DBE: $20 $73

    ld l, l                                       ; $7DC0: $6D
    ld h, c                                       ; $7DC1: $61
    ld h, e                                       ; $7DC2: $63
    ld l, e                                       ; $7DC3: $6B
    ld h, l                                       ; $7DC4: $65
    ld h, h                                       ; $7DC5: $64
    rst $38                                       ; $7DC6: $FF
    ld a, c                                       ; $7DC7: $79
    ld l, a                                       ; $7DC8: $6F

jr_024_7DC9:
    ld [hl], l                                    ; $7DC9: $75
    jr nz, jr_024_7E2D                            ; $7DCA: $20 $61

    ld [hl], d                                    ; $7DCC: $72
    ld l, a                                       ; $7DCD: $6F
    ld [hl], l                                    ; $7DCE: $75
    ld l, [hl]                                    ; $7DCF: $6E
    ld h, h                                       ; $7DD0: $64
    ccf                                           ; $7DD1: $3F
    cp $FD                                        ; $7DD2: $FE $FD

jr_024_7DD4:
    sbc e                                         ; $7DD4: $9B
    ld a, b                                       ; $7DD5: $78
    ld [hl], b                                    ; $7DD6: $70
    sbc a                                         ; $7DD7: $9F
    ld d, a                                       ; $7DD8: $57
    ld h, l                                       ; $7DD9: $65
    daa                                           ; $7DDA: $27
    ld l, h                                       ; $7DDB: $6C

jr_024_7DDC:
    ld l, h                                       ; $7DDC: $6C
    jr nz, jr_024_7E52                            ; $7DDD: $20 $73

    ld h, l                                       ; $7DDF: $65
    ld h, l                                       ; $7DE0: $65
    jr nz, jr_024_7E44                            ; $7DE1: $20 $61

    ld h, d                                       ; $7DE3: $62
    ld l, a                                       ; $7DE4: $6F
    ld [hl], l                                    ; $7DE5: $75
    ld [hl], h                                    ; $7DE6: $74

jr_024_7DE7:
    rst $38                                       ; $7DE7: $FF
    ld [hl], h                                    ; $7DE8: $74
    ld l, b                                       ; $7DE9: $68
    ld h, c                                       ; $7DEA: $61
    ld [hl], h                                    ; $7DEB: $74
    ld l, $FE                                     ; $7DEC: $2E $FE
    db $FD                                        ; $7DEE: $FD
    sbc d                                         ; $7DEF: $9A
    ld e, b                                       ; $7DF0: $58
    inc b                                         ; $7DF1: $04
    ld b, d                                       ; $7DF2: $42
    sbc e                                         ; $7DF3: $9B
    cp b                                          ; $7DF4: $B8

jr_024_7DF5:
    ld e, l                                       ; $7DF5: $5D
    sbc a                                         ; $7DF6: $9F
    ld c, b                                       ; $7DF7: $48

jr_024_7DF8:
    ld h, c                                       ; $7DF8: $61
    jr nz, jr_024_7E63                            ; $7DF9: $20 $68

    ld h, c                                       ; $7DFB: $61
    jr nz, jr_024_7E66                            ; $7DFC: $20 $68

    ld h, c                                       ; $7DFE: $61
    ld l, $2E                                     ; $7DFF: $2E $2E
    ld l, $FE                                     ; $7E01: $2E $FE
    ld [hl], a                                    ; $7E03: $77
    ld h, l                                       ; $7E04: $65
    ld l, h                                       ; $7E05: $6C
    ld l, h                                       ; $7E06: $6C
    inc l                                         ; $7E07: $2C
    jr nz, jr_024_7E73                            ; $7E08: $20 $69

    ld h, [hl]                                    ; $7E0A: $66
    jr nz, jr_024_7E76                            ; $7E0B: $20 $69

    ld [hl], h                                    ; $7E0D: $74
    daa                                           ; $7E0E: $27
    ld [hl], e                                    ; $7E0F: $73
    rst $38                                       ; $7E10: $FF
    ld h, c                                       ; $7E11: $61
    jr nz, jr_024_7E7A                            ; $7E12: $20 $66

    ld l, c                                       ; $7E14: $69
    ld h, a                                       ; $7E15: $67
    ld l, b                                       ; $7E16: $68
    ld [hl], h                                    ; $7E17: $74
    jr nz, jr_024_7E93                            ; $7E18: $20 $79

    ld l, a                                       ; $7E1A: $6F
    ld [hl], l                                    ; $7E1B: $75
    cp $77                                        ; $7E1C: $FE $77
    ld h, c                                       ; $7E1E: $61
    ld l, [hl]                                    ; $7E1F: $6E
    ld [hl], h                                    ; $7E20: $74
    inc l                                         ; $7E21: $2C
    jr nz, jr_024_7E9D                            ; $7E22: $20 $79

    ld l, a                                       ; $7E24: $6F

jr_024_7E25:
    ld [hl], l                                    ; $7E25: $75
    daa                                           ; $7E26: $27
    halt                                          ; $7E27: $76
    ld h, l                                       ; $7E28: $65

jr_024_7E29:
    rst $38                                       ; $7E29: $FF
    ld h, a                                       ; $7E2A: $67
    ld l, a                                       ; $7E2B: $6F
    ld [hl], h                                    ; $7E2C: $74

jr_024_7E2D:
    jr nz, jr_024_7E9E                            ; $7E2D: $20 $6F

    ld l, [hl]                                    ; $7E2F: $6E
    ld h, l                                       ; $7E30: $65
    ld l, $20                                     ; $7E31: $2E $20

jr_024_7E33:
    ld c, c                                       ; $7E33: $49
    cp $67                                        ; $7E34: $FE $67
    ld [hl], l                                    ; $7E36: $75
    ld h, l                                       ; $7E37: $65
    ld [hl], e                                    ; $7E38: $73
    ld [hl], e                                    ; $7E39: $73
    jr nz, jr_024_7E7D                            ; $7E3A: $20 $41

    ld h, a                                       ; $7E3C: $67
    ld [hl], d                                    ; $7E3D: $72
    ld h, c                                       ; $7E3E: $61
    ld l, l                                       ; $7E3F: $6D
    rst $38                                       ; $7E40: $FF
    ld [hl], a                                    ; $7E41: $77
    ld l, a                                       ; $7E42: $6F
    ld l, [hl]                                    ; $7E43: $6E

jr_024_7E44:
    daa                                           ; $7E44: $27
    ld [hl], h                                    ; $7E45: $74
    jr nz, jr_024_7EAF                            ; $7E46: $20 $67

    ld h, l                                       ; $7E48: $65
    ld [hl], h                                    ; $7E49: $74
    jr nz, jr_024_7EB4                            ; $7E4A: $20 $68

    ld l, c                                       ; $7E4C: $69
    ld [hl], e                                    ; $7E4D: $73
    cp $77                                        ; $7E4E: $FE $77
    ld l, c                                       ; $7E50: $69
    ld [hl], e                                    ; $7E51: $73

jr_024_7E52:
    ld l, b                                       ; $7E52: $68
    jr nz, jr_024_7EC4                            ; $7E53: $20 $6F

    ld h, [hl]                                    ; $7E55: $66
    jr nz, jr_024_7ECC                            ; $7E56: $20 $74

    ld h, c                                       ; $7E58: $61
    ld l, e                                       ; $7E59: $6B
    ld l, c                                       ; $7E5A: $69
    ld l, [hl]                                    ; $7E5B: $6E
    ld h, a                                       ; $7E5C: $67
    rst $38                                       ; $7E5D: $FF
    ld a, c                                       ; $7E5E: $79
    ld l, a                                       ; $7E5F: $6F
    ld [hl], l                                    ; $7E60: $75
    jr nz, jr_024_7EC4                            ; $7E61: $20 $61

jr_024_7E63:
    ld l, h                                       ; $7E63: $6C
    ld l, c                                       ; $7E64: $69
    halt                                          ; $7E65: $76

jr_024_7E66:
    ld h, l                                       ; $7E66: $65
    jr nz, @+$63                                  ; $7E67: $20 $61

    ld h, [hl]                                    ; $7E69: $66
    ld [hl], h                                    ; $7E6A: $74
    ld h, l                                       ; $7E6B: $65
    ld [hl], d                                    ; $7E6C: $72
    cp $61                                        ; $7E6D: $FE $61
    ld l, h                                       ; $7E6F: $6C
    ld l, h                                       ; $7E70: $6C
    ld l, $20                                     ; $7E71: $2E $20

jr_024_7E73:
    ld e, c                                       ; $7E73: $59
    ld l, a                                       ; $7E74: $6F
    ld [hl], l                                    ; $7E75: $75

jr_024_7E76:
    ld [hl], d                                    ; $7E76: $72
    jr nz, jr_024_7EE5                            ; $7E77: $20 $6C

    ld l, c                                       ; $7E79: $69

jr_024_7E7A:
    ld h, [hl]                                    ; $7E7A: $66
    ld h, l                                       ; $7E7B: $65
    rst $38                                       ; $7E7C: $FF

jr_024_7E7D:
    ld l, c                                       ; $7E7D: $69
    ld [hl], e                                    ; $7E7E: $73
    jr nz, jr_024_7ED0                            ; $7E7F: $20 $4F

    ld d, [hl]                                    ; $7E81: $56
    ld b, l                                       ; $7E82: $45
    ld d, d                                       ; $7E83: $52
    ld hl, $FDFE                                  ; $7E84: $21 $FE $FD
    sbc d                                         ; $7E87: $9A
    ld e, b                                       ; $7E88: $58
    dec b                                         ; $7E89: $05
    ld b, d                                       ; $7E8A: $42
    sbc e                                         ; $7E8B: $9B
    ld a, b                                       ; $7E8C: $78
    ld [hl], b                                    ; $7E8D: $70
    sbc a                                         ; $7E8E: $9F
    ld d, a                                       ; $7E8F: $57
    ld l, b                                       ; $7E90: $68
    ld h, l                                       ; $7E91: $65
    ld [hl], a                                    ; $7E92: $77

jr_024_7E93:
    ld l, $20                                     ; $7E93: $2E $20
    ld c, c                                       ; $7E95: $49
    ld [hl], h                                    ; $7E96: $74
    rst $38                                       ; $7E97: $FF

jr_024_7E98:
    ld [hl], a                                    ; $7E98: $77
    ld l, a                                       ; $7E99: $6F
    ld [hl], d                                    ; $7E9A: $72
    ld l, e                                       ; $7E9B: $6B
    ld h, l                                       ; $7E9C: $65

jr_024_7E9D:
    ld h, h                                       ; $7E9D: $64

jr_024_7E9E:
    ld l, $FE                                     ; $7E9E: $2E $FE
    db $FD                                        ; $7EA0: $FD
    sbc d                                         ; $7EA1: $9A
    ld e, b                                       ; $7EA2: $58
    ld b, $42                                     ; $7EA3: $06 $42
    sub e                                         ; $7EA5: $93
    ld h, l                                       ; $7EA6: $65
    db $EC                                        ; $7EA7: $EC
    ld d, e                                       ; $7EA8: $53
    ld c, a                                       ; $7EA9: $4F
    ld h, h                                       ; $7EAA: $64
    ld a, [hl+]                                   ; $7EAB: $2A
    ld e, d                                       ; $7EAC: $5A
    ld h, [hl]                                    ; $7EAD: $66
    ret nz                                        ; $7EAE: $C0

jr_024_7EAF:
    ld e, h                                       ; $7EAF: $5C
    ld hl, $0005                                  ; $7EB0: $21 $05 $00
    add c                                         ; $7EB3: $81

jr_024_7EB4:
    ld e, l                                       ; $7EB4: $5D
    dec b                                         ; $7EB5: $05
    dec b                                         ; $7EB6: $05

jr_024_7EB7:
    ld l, c                                       ; $7EB7: $69
    ret nc                                        ; $7EB8: $D0

    nop                                           ; $7EB9: $00
    jr nz, jr_024_7EB7                            ; $7EBA: $20 $FB

    ld d, b                                       ; $7EBC: $50
    ld [hl+], a                                   ; $7EBD: $22
    dec b                                         ; $7EBE: $05
    ld b, b                                       ; $7EBF: $40
    dec b                                         ; $7EC0: $05
    ld [bc], a                                    ; $7EC1: $02
    db $ED                                        ; $7EC2: $ED
    ld h, e                                       ; $7EC3: $63

jr_024_7EC4:
    add hl, bc                                    ; $7EC4: $09
    inc c                                         ; $7EC5: $0C
    ld sp, hl                                     ; $7EC6: $F9
    ret nc                                        ; $7EC7: $D0

    nop                                           ; $7EC8: $00
    ld de, $73A4                                  ; $7EC9: $11 $A4 $73

jr_024_7ECC:
    inc h                                         ; $7ECC: $24
    ld e, c                                       ; $7ECD: $59
    ld a, a                                       ; $7ECE: $7F
    dec b                                         ; $7ECF: $05

jr_024_7ED0:
    inc bc                                        ; $7ED0: $03
    ld l, e                                       ; $7ED1: $6B
    ld c, d                                       ; $7ED2: $4A
    add hl, bc                                    ; $7ED3: $09
    ld c, $21                                     ; $7ED4: $0E $21
    pop de                                        ; $7ED6: $D1
    ld [$BA24], sp                                ; $7ED7: $08 $24 $BA
    ld a, a                                       ; $7EDA: $7F
    ld [hl+], a                                   ; $7EDB: $22
    dec b                                         ; $7EDC: $05
    ld b, b                                       ; $7EDD: $40
    ld l, e                                       ; $7EDE: $6B
    ld [$600D], sp                                ; $7EDF: $08 $0D $60
    ld c, l                                       ; $7EE2: $4D
    nop                                           ; $7EE3: $00
    add b                                         ; $7EE4: $80

jr_024_7EE5:
    nop                                           ; $7EE5: $00
    ld l, e                                       ; $7EE6: $6B
    add hl, hl                                    ; $7EE7: $29
    ld a, [bc]                                    ; $7EE8: $0A

jr_024_7EE9:
    ld [hl], b                                    ; $7EE9: $70
    ld l, e                                       ; $7EEA: $6B
    add b                                         ; $7EEB: $80
    add b                                         ; $7EEC: $80
    nop                                           ; $7EED: $00
    dec bc                                        ; $7EEE: $0B
    nop                                           ; $7EEF: $00
    dec bc                                        ; $7EF0: $0B
    ld [bc], a                                    ; $7EF1: $02
    ld [hl-], a                                   ; $7EF2: $32
    inc hl                                        ; $7EF3: $23
    ld [hl], b                                    ; $7EF4: $70
    ld b, b                                       ; $7EF5: $40
    adc l                                         ; $7EF6: $8D
    ld b, c                                       ; $7EF7: $41
    ld sp, $A524                                  ; $7EF8: $31 $24 $A5
    ld a, [hl]                                    ; $7EFB: $7E
    ld [hl+], a                                   ; $7EFC: $22
    adc $40                                       ; $7EFD: $CE $40
    nop                                           ; $7EFF: $00
    add d                                         ; $7F00: $82
    rra                                           ; $7F01: $1F
    jr jr_024_7E98                                ; $7F02: $18 $94

    ld h, b                                       ; $7F04: $60
    ld [bc], a                                    ; $7F05: $02
    rlca                                          ; $7F06: $07
    nop                                           ; $7F07: $00
    ld l, e                                       ; $7F08: $6B
    ld c, d                                       ; $7F09: $4A
    add hl, bc                                    ; $7F0A: $09
    nop                                           ; $7F0B: $00
    inc h                                         ; $7F0C: $24
    ld h, h                                       ; $7F0D: $64
    ld a, a                                       ; $7F0E: $7F
    ld h, b                                       ; $7F0F: $60
    ld bc, $2431                                  ; $7F10: $01 $31 $24
    dec e                                         ; $7F13: $1D
    ld a, a                                       ; $7F14: $7F
    ld [hl+], a                                   ; $7F15: $22
    adc $40                                       ; $7F16: $CE $40
    ld b, l                                       ; $7F18: $45
    inc hl                                        ; $7F19: $23
    ld b, e                                       ; $7F1A: $43
    ld b, d                                       ; $7F1B: $42

jr_024_7F1C:
    ld b, d                                       ; $7F1C: $42
    sub e                                         ; $7F1D: $93
    ld h, l                                       ; $7F1E: $65
    db $EC                                        ; $7F1F: $EC
    ld d, e                                       ; $7F20: $53
    ld c, a                                       ; $7F21: $4F
    ld h, h                                       ; $7F22: $64
    ld a, [hl+]                                   ; $7F23: $2A
    ld e, d                                       ; $7F24: $5A
    ld h, [hl]                                    ; $7F25: $66
    ret nz                                        ; $7F26: $C0

    ld e, h                                       ; $7F27: $5C
    ld hl, $0005                                  ; $7F28: $21 $05 $00
    ld l, e                                       ; $7F2B: $6B
    ld c, d                                       ; $7F2C: $4A
    dec b                                         ; $7F2D: $05
    dec b                                         ; $7F2E: $05
    ld l, c                                       ; $7F2F: $69
    ret nc                                        ; $7F30: $D0

    nop                                           ; $7F31: $00
    jr nz, jr_024_7EE9                            ; $7F32: $20 $B5

jr_024_7F34:
    ld d, b                                       ; $7F34: $50
    ld [hl+], a                                   ; $7F35: $22
    inc b                                         ; $7F36: $04
    ld b, b                                       ; $7F37: $40
    dec bc                                        ; $7F38: $0B
    nop                                           ; $7F39: $00
    dec bc                                        ; $7F3A: $0B
    ld [bc], a                                    ; $7F3B: $02
    nop                                           ; $7F3C: $00
    add d                                         ; $7F3D: $82
    rra                                           ; $7F3E: $1F
    rra                                           ; $7F3F: $1F
    sub h                                         ; $7F40: $94
    xor c                                         ; $7F41: $A9
    jr jr_024_7F44                                ; $7F42: $18 $00

jr_024_7F44:
    ld e, d                                       ; $7F44: $5A
    ld h, $86                                     ; $7F45: $26 $86
    halt                                          ; $7F47: $76
    ld e, e                                       ; $7F48: $5B
    inc h                                         ; $7F49: $24
    adc e                                         ; $7F4A: $8B
    ld a, [hl]                                    ; $7F4B: $7E
    ld h, d                                       ; $7F4C: $62
    ld b, $6E                                     ; $7F4D: $06 $6E
    rrca                                          ; $7F4F: $0F

jr_024_7F50:
    rst $38                                       ; $7F50: $FF
    ld a, a                                       ; $7F51: $7F
    halt                                          ; $7F52: $76
    ld h, b                                       ; $7F53: $60
    rrca                                          ; $7F54: $0F
    ld b, l                                       ; $7F55: $45
    inc hl                                        ; $7F56: $23
    nop                                           ; $7F57: $00
    ld b, b                                       ; $7F58: $40
    xor h                                         ; $7F59: $AC

jr_024_7F5A:
    and h                                         ; $7F5A: $A4
    and e                                         ; $7F5B: $A3
    ld b, $14                                     ; $7F5C: $06 $14
    ld de, $73A4                                  ; $7F5E: $11 $A4 $73

jr_024_7F61:
    ld d, [hl]                                    ; $7F61: $56
    ld [bc], a                                    ; $7F62: $02
    ld [de], a                                    ; $7F63: $12

jr_024_7F64:
    inc d                                         ; $7F64: $14

jr_024_7F65:
    jr nz, @-$53                                  ; $7F65: $20 $AB

    ld d, b                                       ; $7F67: $50

jr_024_7F68:
    ld e, e                                       ; $7F68: $5B
    inc h                                         ; $7F69: $24
    add hl, bc                                    ; $7F6A: $09
    ld a, e                                       ; $7F6B: $7B
    inc c                                         ; $7F6C: $0C
    ld [bc], a                                    ; $7F6D: $02
    dec d                                         ; $7F6E: $15
    jr nz, jr_024_7F1C                            ; $7F6F: $20 $AB

    ld d, b                                       ; $7F71: $50
    ld b, b                                       ; $7F72: $40
    jr nz, jr_024_7F34                            ; $7F73: $20 $BF

    ld d, b                                       ; $7F75: $50
    jr nz, jr_024_7F98                            ; $7F76: $20 $20

    ret                                           ; $7F78: $C9


    ld d, b                                       ; $7F79: $50
    nop                                           ; $7F7A: $00
    nop                                           ; $7F7B: $00
    ld h, d                                       ; $7F7C: $62
    ld bc, $2016                                  ; $7F7D: $01 $16 $20
    xor e                                         ; $7F80: $AB
    ld d, b                                       ; $7F81: $50
    jr nz, jr_024_7F84                            ; $7F82: $20 $00

jr_024_7F84:
    nop                                           ; $7F84: $00
    jr nz, @-$3F                                  ; $7F85: $20 $BF

    ld d, b                                       ; $7F87: $50
    ld [rRAMG], sp                                ; $7F88: $08 $00 $00
    jr nz, jr_024_7F5A                            ; $7F8B: $20 $CD

    ld c, a                                       ; $7F8D: $4F
    jr nz, jr_024_7F90                            ; $7F8E: $20 $00

jr_024_7F90:
    ld bc, $0B00                                  ; $7F90: $01 $00 $0B
    inc bc                                        ; $7F93: $03
    dec d                                         ; $7F94: $15
    jr nz, jr_024_7F64                            ; $7F95: $20 $CD

    ld c, a                                       ; $7F97: $4F

jr_024_7F98:
    db $10                                        ; $7F98: $10
    jr nz, jr_024_7F50                            ; $7F99: $20 $B5

    ld d, b                                       ; $7F9B: $50
    ld b, b                                       ; $7F9C: $40
    jr nz, jr_024_7F68                            ; $7F9D: $20 $C9

    ld d, b                                       ; $7F9F: $50
    ld [$AB20], sp                                ; $7FA0: $08 $20 $AB
    ld d, b                                       ; $7FA3: $50
    nop                                           ; $7FA4: $00
    nop                                           ; $7FA5: $00
    ld h, d                                       ; $7FA6: $62
    ld [bc], a                                    ; $7FA7: $02
    ld e, e                                       ; $7FA8: $5B
    inc h                                         ; $7FA9: $24
    sub h                                         ; $7FAA: $94
    ld a, h                                       ; $7FAB: $7C
    ld e, h                                       ; $7FAC: $5C
    nop                                           ; $7FAD: $00
    ld [bc], a                                    ; $7FAE: $02
    dec d                                         ; $7FAF: $15
    jr nz, jr_024_7F65                            ; $7FB0: $20 $B3

    ld c, a                                       ; $7FB2: $4F
    db $10                                        ; $7FB3: $10
    jr nz, jr_024_7F61                            ; $7FB4: $20 $AB

    ld d, b                                       ; $7FB6: $50
    nop                                           ; $7FB7: $00
    nop                                           ; $7FB8: $00
    ld b, d                                       ; $7FB9: $42
    dec d                                         ; $7FBA: $15
    rrca                                          ; $7FBB: $0F
    xor e                                         ; $7FBC: $AB
    ld c, c                                       ; $7FBD: $49
    jr nz, jr_024_7FCF                            ; $7FBE: $20 $0F

    ld a, l                                       ; $7FC0: $7D
    ld c, b                                       ; $7FC1: $48
    nop                                           ; $7FC2: $00
    nop                                           ; $7FC3: $00
    ld e, e                                       ; $7FC4: $5B
    inc h                                         ; $7FC5: $24
    ld e, c                                       ; $7FC6: $59
    ld a, e                                       ; $7FC7: $7B
    ld h, d                                       ; $7FC8: $62
    inc bc                                        ; $7FC9: $03
    ld e, h                                       ; $7FCA: $5C
    nop                                           ; $7FCB: $00
    ld [bc], a                                    ; $7FCC: $02
    ld e, e                                       ; $7FCD: $5B
    inc h                                         ; $7FCE: $24

jr_024_7FCF:
    dec bc                                        ; $7FCF: $0B
    ld a, l                                       ; $7FD0: $7D
    ld h, d                                       ; $7FD1: $62
    inc b                                         ; $7FD2: $04
    dec d                                         ; $7FD3: $15
    rrca                                          ; $7FD4: $0F
    and a                                         ; $7FD5: $A7
    ld c, b                                       ; $7FD6: $48
    jr nz, jr_024_7FE8                            ; $7FD7: $20 $0F

    ld a, l                                       ; $7FD9: $7D
    ld c, b                                       ; $7FDA: $48
    nop                                           ; $7FDB: $00
    nop                                           ; $7FDC: $00
    ld e, e                                       ; $7FDD: $5B
    inc h                                         ; $7FDE: $24
    di                                            ; $7FDF: $F3
    ld a, l                                       ; $7FE0: $7D
    ld h, d                                       ; $7FE1: $62
    dec b                                         ; $7FE2: $05
    ld d, [hl]                                    ; $7FE3: $56
    ld bc, $0042                                  ; $7FE4: $01 $42 $00
    nop                                           ; $7FE7: $00

jr_024_7FE8:
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
