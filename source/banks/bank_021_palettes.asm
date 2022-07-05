SECTION "ROM Bank $021", ROMX[$4000], BANK[$21]

DEF Hotspot_BANK EQU BANK(@)

    ; $4000
    db $02, $03

    inc d                                         ; $4002: $14
    nop                                           ; $4003: $00
    ld b, b                                       ; $4004: $40

    db $01, $14, $11, $40

    ld [bc], a                                    ; $4009: $02
    inc bc                                        ; $400A: $03
    inc d                                         ; $400B: $14
    ld a, [de]                                    ; $400C: $1A
    ld b, b                                       ; $400D: $40
    ld bc, $1E14                                  ; $400E: $01 $14 $1E
    ld b, b                                       ; $4011: $40

    db $01, $01, $14, $33, $40, $02, $02

    inc d                                         ; $4019: $14
    ld [c], a                                     ; $401A: $E2
    ld b, l                                       ; $401B: $45

    db $01, $14, $EB, $45

    ld [bc], a                                    ; $4020: $02
    ld [bc], a                                    ; $4021: $02
    inc d                                         ; $4022: $14
    ld a, [c]                                     ; $4023: $F2
    ld b, l                                       ; $4024: $45
    ld bc, $0B14                                  ; $4025: $01 $14 $0B
    ld b, [hl]                                    ; $4028: $46
    ld [bc], a                                    ; $4029: $02
    ld [bc], a                                    ; $402A: $02
    inc d                                         ; $402B: $14
    rlca                                          ; $402C: $07
    ld b, [hl]                                    ; $402D: $46
    ld bc, $0B14                                  ; $402E: $01 $14 $0B
    ld b, [hl]                                    ; $4031: $46

    db $03, $02, $14, $B0, $49

    inc bc                                        ; $4037: $03
    inc d                                         ; $4038: $14
    xor d                                         ; $4039: $AA
    ld c, d                                       ; $403A: $4A
    ld bc, $B314                                  ; $403B: $01 $14 $B3
    ld c, d                                       ; $403E: $4A

    db $02, $04

    inc d                                         ; $4041: $14
    ld a, l                                       ; $4042: $7D
    ld e, h                                       ; $4043: $5C
    inc bc                                        ; $4044: $03
    inc d                                         ; $4045: $14
    add h                                         ; $4046: $84
    ld e, h                                       ; $4047: $5C

    db $01, $01, $14, $8D, $5C

    ld [bc], a                                    ; $404D: $02
    inc b                                         ; $404E: $04
    inc d                                         ; $404F: $14
    add hl, hl                                    ; $4050: $29
    ld e, a                                       ; $4051: $5F
    ld bc, $3214                                  ; $4052: $01 $14 $32
    ld e, a                                       ; $4055: $5F
    ld bc, $1401                                  ; $4056: $01 $01 $14
    dec sp                                        ; $4059: $3B
    ld e, a                                       ; $405A: $5F
    inc bc                                        ; $405B: $03
    ld [bc], a                                    ; $405C: $02
    inc d                                         ; $405D: $14
    cpl                                           ; $405E: $2F
    ld h, c                                       ; $405F: $61
    inc b                                         ; $4060: $04
    inc d                                         ; $4061: $14
    jr c, jr_021_40C5                             ; $4062: $38 $61

    ld bc, $4114                                  ; $4064: $01 $14 $41
    ld h, c                                       ; $4067: $61
    ld bc, $1403                                  ; $4068: $01 $03 $14
    and a                                         ; $406B: $A7
    ld h, d                                       ; $406C: $62
    ld bc, $1401                                  ; $406D: $01 $01 $14
    or b                                          ; $4070: $B0
    ld h, d                                       ; $4071: $62
    ld [bc], a                                    ; $4072: $02
    ld [bc], a                                    ; $4073: $02
    inc d                                         ; $4074: $14
    db $EB                                        ; $4075: $EB
    ld h, e                                       ; $4076: $63
    ld bc, $F414                                  ; $4077: $01 $14 $F4
    ld h, e                                       ; $407A: $63
    ld [bc], a                                    ; $407B: $02
    ld [bc], a                                    ; $407C: $02
    inc d                                         ; $407D: $14
    ld c, d                                       ; $407E: $4A
    ld h, h                                       ; $407F: $64
    ld bc, $5514                                  ; $4080: $01 $14 $55
    ld h, h                                       ; $4083: $64
    ld [bc], a                                    ; $4084: $02
    ld [bc], a                                    ; $4085: $02
    dec e                                         ; $4086: $1D
    nop                                           ; $4087: $00
    ld b, b                                       ; $4088: $40
    ld bc, $071D                                  ; $4089: $01 $1D $07
    ld b, b                                       ; $408C: $40
    ld [bc], a                                    ; $408D: $02
    inc bc                                        ; $408E: $03
    dec e                                         ; $408F: $1D
    ld a, $40                                     ; $4090: $3E $40
    inc b                                         ; $4092: $04
    dec e                                         ; $4093: $1D
    ld b, l                                       ; $4094: $45
    ld b, b                                       ; $4095: $40
    inc bc                                        ; $4096: $03
    inc bc                                        ; $4097: $03
    dec e                                         ; $4098: $1D
    ld d, l                                       ; $4099: $55
    ld b, b                                       ; $409A: $40
    nop                                           ; $409B: $00
    dec e                                         ; $409C: $1D
    ld e, h                                       ; $409D: $5C
    ld b, b                                       ; $409E: $40
    ld bc, $5D1D                                  ; $409F: $01 $1D $5D
    ld b, b                                       ; $40A2: $40
    ld [bc], a                                    ; $40A3: $02
    ld bc, $661D                                  ; $40A4: $01 $1D $66
    ld b, b                                       ; $40A7: $40
    ld bc, $6E1D                                  ; $40A8: $01 $1D $6E
    ld b, b                                       ; $40AB: $40
    ld bc, $1D02                                  ; $40AC: $01 $02 $1D
    halt                                          ; $40AF: $76
    ld b, b                                       ; $40B0: $40
    inc bc                                        ; $40B1: $03
    ld bc, $7F1D                                  ; $40B2: $01 $1D $7F
    ld b, b                                       ; $40B5: $40
    ld bc, $871D                                  ; $40B6: $01 $1D $87
    ld b, b                                       ; $40B9: $40
    ld bc, $8F1D                                  ; $40BA: $01 $1D $8F
    ld b, b                                       ; $40BD: $40
    inc bc                                        ; $40BE: $03
    inc bc                                        ; $40BF: $03
    dec e                                         ; $40C0: $1D
    ld a, $40                                     ; $40C1: $3E $40
    inc b                                         ; $40C3: $04
    dec e                                         ; $40C4: $1D

jr_021_40C5:
    ld b, l                                       ; $40C5: $45
    ld b, b                                       ; $40C6: $40
    ld bc, $4E1D                                  ; $40C7: $01 $1D $4E
    ld b, b                                       ; $40CA: $40
    inc bc                                        ; $40CB: $03
    inc b                                         ; $40CC: $04
    ld a, [de]                                    ; $40CD: $1A
    ret                                           ; $40CE: $C9


    ld e, e                                       ; $40CF: $5B
    ld bc, $D21A                                  ; $40D0: $01 $1A $D2
    ld e, e                                       ; $40D3: $5B
    ld [bc], a                                    ; $40D4: $02
    ld a, [de]                                    ; $40D5: $1A
    db $DB                                        ; $40D6: $DB
    ld e, e                                       ; $40D7: $5B
    inc bc                                        ; $40D8: $03
    inc b                                         ; $40D9: $04
    ld a, [de]                                    ; $40DA: $1A
    cp a                                          ; $40DB: $BF
    ld h, b                                       ; $40DC: $60
    ld bc, $C81A                                  ; $40DD: $01 $1A $C8
    ld h, b                                       ; $40E0: $60
    inc bc                                        ; $40E1: $03
    ld a, [de]                                    ; $40E2: $1A
    pop de                                        ; $40E3: $D1
    ld h, b                                       ; $40E4: $60
    ld bc, $1A01                                  ; $40E5: $01 $01 $1A
    jp c, $0260                                   ; $40E8: $DA $60 $02

    inc bc                                        ; $40EB: $03
    ld a, [de]                                    ; $40EC: $1A
    ld e, l                                       ; $40ED: $5D
    ld h, c                                       ; $40EE: $61
    ld bc, $661A                                  ; $40EF: $01 $1A $66
    ld h, c                                       ; $40F2: $61
    ld bc, $1A01                                  ; $40F3: $01 $01 $1A
    ld l, a                                       ; $40F6: $6F
    ld h, c                                       ; $40F7: $61
    inc bc                                        ; $40F8: $03
    ld [bc], a                                    ; $40F9: $02
    ld a, [de]                                    ; $40FA: $1A
    or d                                          ; $40FB: $B2
    ld h, c                                       ; $40FC: $61
    inc bc                                        ; $40FD: $03
    ld a, [de]                                    ; $40FE: $1A
    cp e                                          ; $40FF: $BB
    ld h, c                                       ; $4100: $61
    ld bc, $C41A                                  ; $4101: $01 $1A $C4
    ld h, c                                       ; $4104: $61
    ld bc, $1A01                                  ; $4105: $01 $01 $1A
    call $0461                                    ; $4108: $CD $61 $04
    inc b                                         ; $410B: $04
    ld a, [de]                                    ; $410C: $1A
    db $10                                        ; $410D: $10
    ld h, d                                       ; $410E: $62
    ld [bc], a                                    ; $410F: $02
    ld a, [de]                                    ; $4110: $1A
    add hl, de                                    ; $4111: $19
    ld h, d                                       ; $4112: $62
    inc bc                                        ; $4113: $03
    ld a, [de]                                    ; $4114: $1A
    ld [hl+], a                                   ; $4115: $22
    ld h, d                                       ; $4116: $62
    inc bc                                        ; $4117: $03
    ld a, [de]                                    ; $4118: $1A
    dec hl                                        ; $4119: $2B
    ld h, d                                       ; $411A: $62
    ld bc, $1A01                                  ; $411B: $01 $01 $1A
    inc [hl]                                      ; $411E: $34
    ld h, d                                       ; $411F: $62
    inc b                                         ; $4120: $04
    ld [bc], a                                    ; $4121: $02
    ld a, [de]                                    ; $4122: $1A
    add a                                         ; $4123: $87
    ld h, d                                       ; $4124: $62
    inc b                                         ; $4125: $04
    ld a, [de]                                    ; $4126: $1A
    sub b                                         ; $4127: $90
    ld h, d                                       ; $4128: $62
    ld bc, $991A                                  ; $4129: $01 $1A $99
    ld h, d                                       ; $412C: $62
    inc b                                         ; $412D: $04
    ld a, [de]                                    ; $412E: $1A
    and d                                         ; $412F: $A2
    ld h, d                                       ; $4130: $62
    inc bc                                        ; $4131: $03
    ld bc, $AB1A                                  ; $4132: $01 $1A $AB
    ld h, d                                       ; $4135: $62
    ld bc, $041A                                  ; $4136: $01 $1A $04
    ld h, e                                       ; $4139: $63
    ld bc, $1C1A                                  ; $413A: $01 $1A $1C
    ld h, e                                       ; $413D: $63
    ld [bc], a                                    ; $413E: $02
    ld [bc], a                                    ; $413F: $02
    ld a, [de]                                    ; $4140: $1A
    ld c, b                                       ; $4141: $48
    ld h, h                                       ; $4142: $64
    inc b                                         ; $4143: $04
    ld a, [de]                                    ; $4144: $1A
    ld d, c                                       ; $4145: $51
    ld h, h                                       ; $4146: $64
    ld bc, $1A01                                  ; $4147: $01 $01 $1A
    ld e, d                                       ; $414A: $5A
    ld h, h                                       ; $414B: $64
    ld [bc], a                                    ; $414C: $02
    inc bc                                        ; $414D: $03
    ld a, [de]                                    ; $414E: $1A
    sbc l                                         ; $414F: $9D
    ld h, h                                       ; $4150: $64
    inc b                                         ; $4151: $04
    ld a, [de]                                    ; $4152: $1A
    and [hl]                                      ; $4153: $A6
    ld h, h                                       ; $4154: $64
    ld bc, $1A01                                  ; $4155: $01 $01 $1A
    xor a                                         ; $4158: $AF
    ld h, h                                       ; $4159: $64
    inc bc                                        ; $415A: $03
    inc bc                                        ; $415B: $03
    ld a, [de]                                    ; $415C: $1A
    jr jr_021_41C4                                ; $415D: $18 $65

    inc b                                         ; $415F: $04
    ld a, [de]                                    ; $4160: $1A
    ld hl, $0265                                  ; $4161: $21 $65 $02
    ld a, [de]                                    ; $4164: $1A
    ld a, [hl+]                                   ; $4165: $2A
    ld h, l                                       ; $4166: $65
    ld bc, $1A01                                  ; $4167: $01 $01 $1A
    inc sp                                        ; $416A: $33
    ld h, l                                       ; $416B: $65
    ld [bc], a                                    ; $416C: $02
    inc bc                                        ; $416D: $03
    ld a, [de]                                    ; $416E: $1A
    push bc                                       ; $416F: $C5
    ld h, l                                       ; $4170: $65
    ld bc, $CE1A                                  ; $4171: $01 $1A $CE
    ld h, l                                       ; $4174: $65
    ld bc, $1A02                                  ; $4175: $01 $02 $1A
    adc [hl]                                      ; $4178: $8E
    ld h, [hl]                                    ; $4179: $66
    ld [bc], a                                    ; $417A: $02
    ld bc, $021A                                  ; $417B: $01 $1A $02
    ld l, b                                       ; $417E: $68
    ld [bc], a                                    ; $417F: $02
    ld a, [de]                                    ; $4180: $1A
    dec bc                                        ; $4181: $0B
    ld l, b                                       ; $4182: $68
    ld bc, $1A01                                  ; $4183: $01 $01 $1A
    add hl, sp                                    ; $4186: $39
    ld l, b                                       ; $4187: $68
    inc bc                                        ; $4188: $03
    inc bc                                        ; $4189: $03
    rla                                           ; $418A: $17
    db $10                                        ; $418B: $10
    ld [hl], e                                    ; $418C: $73
    inc b                                         ; $418D: $04
    rla                                           ; $418E: $17
    add hl, de                                    ; $418F: $19
    ld [hl], e                                    ; $4190: $73
    ld bc, $2217                                  ; $4191: $01 $17 $22
    ld [hl], e                                    ; $4194: $73
    ld [bc], a                                    ; $4195: $02
    inc bc                                        ; $4196: $03
    rla                                           ; $4197: $17
    ld [hl], l                                    ; $4198: $75
    ld [hl], h                                    ; $4199: $74
    inc b                                         ; $419A: $04
    rla                                           ; $419B: $17
    ld a, [hl]                                    ; $419C: $7E
    ld [hl], h                                    ; $419D: $74
    ld [bc], a                                    ; $419E: $02
    inc bc                                        ; $419F: $03
    rla                                           ; $41A0: $17
    ld h, $78                                     ; $41A1: $26 $78
    ld [bc], a                                    ; $41A3: $02
    rla                                           ; $41A4: $17
    cpl                                           ; $41A5: $2F
    ld a, b                                       ; $41A6: $78
    inc bc                                        ; $41A7: $03
    ld [bc], a                                    ; $41A8: $02
    ld a, [de]                                    ; $41A9: $1A
    sub [hl]                                      ; $41AA: $96
    ld l, b                                       ; $41AB: $68
    inc b                                         ; $41AC: $04
    ld a, [de]                                    ; $41AD: $1A
    sbc a                                         ; $41AE: $9F
    ld l, b                                       ; $41AF: $68
    inc b                                         ; $41B0: $04
    ld a, [de]                                    ; $41B1: $1A
    xor b                                         ; $41B2: $A8
    ld l, b                                       ; $41B3: $68
    ld bc, $1A01                                  ; $41B4: $01 $01 $1A
    or c                                          ; $41B7: $B1
    ld l, b                                       ; $41B8: $68
    ld bc, $1A03                                  ; $41B9: $01 $03 $1A
    db $10                                        ; $41BC: $10
    ld l, c                                       ; $41BD: $69
    ld bc, $1A01                                  ; $41BE: $01 $01 $1A
    add hl, de                                    ; $41C1: $19
    ld l, c                                       ; $41C2: $69
    ld [bc], a                                    ; $41C3: $02

jr_021_41C4:
    inc bc                                        ; $41C4: $03
    ld a, [de]                                    ; $41C5: $1A
    ld a, b                                       ; $41C6: $78
    ld l, c                                       ; $41C7: $69
    ld bc, $811A                                  ; $41C8: $01 $1A $81
    ld l, c                                       ; $41CB: $69
    ld bc, $1A01                                  ; $41CC: $01 $01 $1A
    adc d                                         ; $41CF: $8A
    ld l, c                                       ; $41D0: $69
    ld bc, $1A02                                  ; $41D1: $01 $02 $1A
    db $ED                                        ; $41D4: $ED
    ld l, c                                       ; $41D5: $69
    ld [bc], a                                    ; $41D6: $02
    ld bc, $FA1A                                  ; $41D7: $01 $1A $FA
    ld l, c                                       ; $41DA: $69
    nop                                           ; $41DB: $00
    ld a, [de]                                    ; $41DC: $1A
    ld [bc], a                                    ; $41DD: $02
    ld l, d                                       ; $41DE: $6A
    inc bc                                        ; $41DF: $03
    ld [bc], a                                    ; $41E0: $02
    ld hl, $67E8                                  ; $41E1: $21 $E8 $67
    ld bc, $F121                                  ; $41E4: $01 $21 $F1
    ld h, a                                       ; $41E7: $67
    nop                                           ; $41E8: $00
    ld hl, $67FA                                  ; $41E9: $21 $FA $67
    inc bc                                        ; $41EC: $03
    ld bc, $0121                                  ; $41ED: $01 $21 $01
    ld l, b                                       ; $41F0: $68
    ld bc, $0921                                  ; $41F1: $01 $21 $09
    ld l, b                                       ; $41F4: $68
    nop                                           ; $41F5: $00
    ld hl, $6811                                  ; $41F6: $21 $11 $68
    ld bc, $2102                                  ; $41F9: $01 $02 $21
    reti                                          ; $41FC: $D9


    ld l, c                                       ; $41FD: $69
    ld bc, $2101                                  ; $41FE: $01 $01 $21
    ldh [rBCPD], a                                ; $4201: $E0 $69
    ld [bc], a                                    ; $4203: $02
    ld [bc], a                                    ; $4204: $02
    ld hl, $776F                                  ; $4205: $21 $6F $77
    ld bc, $7621                                  ; $4208: $01 $21 $76
    ld [hl], a                                    ; $420B: $77
    ld [bc], a                                    ; $420C: $02
    ld [bc], a                                    ; $420D: $02
    ld hl, $77A0                                  ; $420E: $21 $A0 $77
    ld bc, $A921                                  ; $4211: $01 $21 $A9
    ld [hl], a                                    ; $4214: $77
    ld bc, $2101                                  ; $4215: $01 $01 $21
    or d                                          ; $4218: $B2
    ld [hl], a                                    ; $4219: $77
    ld [bc], a                                    ; $421A: $02
    ld [bc], a                                    ; $421B: $02
    ld hl, $7811                                  ; $421C: $21 $11 $78
    nop                                           ; $421F: $00
    ld hl, $781A                                  ; $4220: $21 $1A $78
    ld bc, $2101                                  ; $4223: $01 $01 $21
    adc [hl]                                      ; $4226: $8E
    ld a, b                                       ; $4227: $78
    ld [bc], a                                    ; $4228: $02
    inc b                                         ; $4229: $04
    ld a, [hl+]                                   ; $422A: $2A
    nop                                           ; $422B: $00
    ld b, b                                       ; $422C: $40
    ld bc, $092A                                  ; $422D: $01 $2A $09
    ld b, b                                       ; $4230: $40

    db $02, $04, $2A, $12, $40

    ld bc, $1B2A                                  ; $4236: $01 $2A $1B
    ld b, b                                       ; $4239: $40
    ld bc, $2A02                                  ; $423A: $01 $02 $2A
    ld l, e                                       ; $423D: $6B
    ld d, b                                       ; $423E: $50
    ld [bc], a                                    ; $423F: $02
    ld bc, $742A                                  ; $4240: $01 $2A $74
    ld d, b                                       ; $4243: $50
    ld bc, $7C2A                                  ; $4244: $01 $2A $7C
    ld d, b                                       ; $4247: $50
    ld a, [bc]                                    ; $4248: $0A
    ld bc, $AA2A                                  ; $4249: $01 $2A $AA
    ld d, b                                       ; $424C: $50
    ld bc, $AC2A                                  ; $424D: $01 $2A $AC
    ld d, b                                       ; $4250: $50
    ld bc, $AE2A                                  ; $4251: $01 $2A $AE
    ld d, b                                       ; $4254: $50
    ld bc, $CE2A                                  ; $4255: $01 $2A $CE
    ld d, b                                       ; $4258: $50
    ld bc, $D92A                                  ; $4259: $01 $2A $D9
    ld d, b                                       ; $425C: $50
    ld bc, $E32A                                  ; $425D: $01 $2A $E3
    ld d, b                                       ; $4260: $50
    ld bc, $EA2A                                  ; $4261: $01 $2A $EA
    ld d, b                                       ; $4264: $50
    ld bc, $002A                                  ; $4265: $01 $2A $00
    ld d, c                                       ; $4268: $51
    ld bc, $072A                                  ; $4269: $01 $2A $07
    ld d, c                                       ; $426C: $51
    ld bc, $152A                                  ; $426D: $01 $2A $15
    ld d, c                                       ; $4270: $51

    db $03

    ld [bc], a                                    ; $4272: $02
    ld d, $00                                     ; $4273: $16 $00
    ld b, b                                       ; $4275: $40

    db $01, $16, $1D, $40, $00, $16, $26, $40, $05, $04, $16, $E4, $52, $01, $16, $ED
    db $52, $03, $16, $F6, $52, $02, $16, $FF, $52

    ld bc, $9B16                                  ; $428F: $01 $16 $9B
    ld d, e                                       ; $4292: $53

    db $01, $00

    ld d, $A2                                     ; $4295: $16 $A2
    ld d, e                                       ; $4297: $53
    ld bc, $1602                                  ; $4298: $01 $02 $16
    cp l                                          ; $429B: $BD
    ld d, e                                       ; $429C: $53
    inc bc                                        ; $429D: $03
    nop                                           ; $429E: $00
    ld d, $C1                                     ; $429F: $16 $C1
    ld h, e                                       ; $42A1: $63
    nop                                           ; $42A2: $00
    ld d, $C4                                     ; $42A3: $16 $C4
    ld d, e                                       ; $42A5: $53
    nop                                           ; $42A6: $00
    ld d, $D1                                     ; $42A7: $16 $D1
    ld d, e                                       ; $42A9: $53
    ld bc, $1604                                  ; $42AA: $01 $04 $16
    push hl                                       ; $42AD: $E5
    ld d, e                                       ; $42AE: $53
    ld bc, $1600                                  ; $42AF: $01 $00 $16
    db $FD                                        ; $42B2: $FD
    ld d, e                                       ; $42B3: $53

    db $03, $03, $16, $DF, $67, $01, $16, $E8, $67, $01, $16, $EF, $67, $01, $00

    ld d, $F6                                     ; $42C3: $16 $F6
    ld h, a                                       ; $42C5: $67

    db $05, $04, $16, $6D, $6D

    ld bc, $7616                                  ; $42CB: $01 $16 $76
    ld l, l                                       ; $42CE: $6D

    db $01, $16, $7F, $6D

    ld [bc], a                                    ; $42D3: $02
    ld d, $88                                     ; $42D4: $16 $88
    ld l, l                                       ; $42D6: $6D
    ld bc, xLoad_HeroYTile                                  ; $42D7: $01 $16 $A0
    ld l, l                                       ; $42DA: $6D

    db $02, $00

    ld d, $A7                                     ; $42DD: $16 $A7
    ld l, l                                       ; $42DF: $6D

    db $00

    ld d, $DA                                     ; $42E1: $16 $DA
    ld l, l                                       ; $42E3: $6D
    ld [bc], a                                    ; $42E4: $02
    ld bc, $0716                                  ; $42E5: $01 $16 $07
    ld l, [hl]                                    ; $42E8: $6E
    ld bc, $1F16                                  ; $42E9: $01 $16 $1F
    ld l, [hl]                                    ; $42EC: $6E
    ld [bc], a                                    ; $42ED: $02
    ld [bc], a                                    ; $42EE: $02
    ld d, $26                                     ; $42EF: $16 $26
    ld l, [hl]                                    ; $42F1: $6E
    ld bc, $2D16                                  ; $42F2: $01 $16 $2D
    ld l, [hl]                                    ; $42F5: $6E

    db $06, $02, $2B, $11, $4B, $04, $2B, $1A, $4B

    ld bc, $232B                                  ; $42FF: $01 $2B $23
    ld c, e                                       ; $4302: $4B
    ld bc, $2C2B                                  ; $4303: $01 $2B $2C
    ld c, e                                       ; $4306: $4B

    db $01, $2B, $35, $4B, $03, $2B, $3E, $4B, $03, $00

    dec hl                                        ; $4311: $2B
    ld b, a                                       ; $4312: $47
    ld c, e                                       ; $4313: $4B

    db $00

    dec hl                                        ; $4315: $2B
    adc d                                         ; $4316: $8A
    ld c, e                                       ; $4317: $4B

    db $00

    dec hl                                        ; $4319: $2B
    sbc e                                         ; $431A: $9B
    ld c, e                                       ; $431B: $4B

    db $03, $03, $2B, $67, $64, $01, $2B, $70, $64, $01, $2B, $79, $64

    inc bc                                        ; $4329: $03
    inc bc                                        ; $432A: $03
    dec hl                                        ; $432B: $2B
    add d                                         ; $432C: $82
    ld h, h                                       ; $432D: $64
    ld bc, $B42B                                  ; $432E: $01 $2B $B4
    ld h, h                                       ; $4331: $64
    ld bc, $B42B                                  ; $4332: $01 $2B $B4
    ld h, h                                       ; $4335: $64

    db $01, $00

    dec hl                                        ; $4338: $2B
    and $64                                       ; $4339: $E6 $64

    db $02, $04, $28, $00, $40, $01, $28, $09, $40, $03, $02, $28, $CF, $50

    ld bc, $D828                                  ; $4349: $01 $28 $D8
    ld d, b                                       ; $434C: $50

    db $01, $28, $E1, $50, $02, $02, $28, $1F, $54

    ld bc, $2828                                  ; $4356: $01 $28 $28
    ld d, h                                       ; $4359: $54
    ld [bc], a                                    ; $435A: $02
    ld [bc], a                                    ; $435B: $02
    jr z, @+$44                                   ; $435C: $28 $42

    ld d, l                                       ; $435E: $55
    ld bc, $4B28                                  ; $435F: $01 $28 $4B
    ld d, l                                       ; $4362: $55

jr_021_4363:
    ld [bc], a                                    ; $4363: $02
    ld [bc], a                                    ; $4364: $02
    jr z, jr_021_43BB                             ; $4365: $28 $54

    ld d, l                                       ; $4367: $55
    ld [bc], a                                    ; $4368: $02
    jr z, @+$5F                                   ; $4369: $28 $5D

    ld d, l                                       ; $436B: $55
    ld [bc], a                                    ; $436C: $02
    ld [bc], a                                    ; $436D: $02
    jr z, @+$68                                   ; $436E: $28 $66

    ld d, l                                       ; $4370: $55
    ld bc, $6F28                                  ; $4371: $01 $28 $6F
    ld d, l                                       ; $4374: $55

    db $07, $01, $28, $31, $54, $00

    jr z, @+$3B                                   ; $437B: $28 $39

    ld d, h                                       ; $437D: $54

    db $00

    jr z, jr_021_43BB                             ; $437F: $28 $3A

    ld d, h                                       ; $4381: $54

    db $00

    jr z, jr_021_43E1                             ; $4383: $28 $5C

    ld d, h                                       ; $4385: $54

    db $00

    jr z, jr_021_43FF                             ; $4387: $28 $76

    ld d, h                                       ; $4389: $54

    db $00

    jr z, @-$6E                                   ; $438B: $28 $90

    ld d, h                                       ; $438D: $54

    db $00

    jr z, jr_021_4363                             ; $438F: $28 $D2

    ld d, h                                       ; $4391: $54

    db $02, $02, $28, $54, $5C

    ld bc, $5D28                                  ; $4397: $01 $28 $5D
    ld e, h                                       ; $439A: $5C

    db $05, $00, $28, $66, $5C, $00

    jr z, @+$76                                   ; $43A1: $28 $74

    ld e, h                                       ; $43A3: $5C

    db $00

    jr z, @-$1D                                   ; $43A5: $28 $E1

    ld e, h                                       ; $43A7: $5C

    db $00

    jr z, @-$11                                   ; $43A9: $28 $ED

    ld e, h                                       ; $43AB: $5C

    db $01, $28, $5D, $5D, $01, $02, $14, $06, $70, $04, $00, $14, $0F, $70, $00

jr_021_43BB:
    inc d                                         ; $43BB: $14
    db $21                                        ; $43BC: $21
    ld [hl], b                                    ; $43BD: $70

    db $00

    inc d                                         ; $43BF: $14
    cpl                                           ; $43C0: $2F
    ld [hl], b                                    ; $43C1: $70

    db $00

    inc d                                         ; $43C3: $14
    ret                                           ; $43C4: $C9


    ld [hl], b                                    ; $43C5: $70

    db $01, $02, $2B, $00, $40, $08, $00

    dec hl                                        ; $43CD: $2B
    add hl, bc                                    ; $43CE: $09
    ld b, b                                       ; $43CF: $40

    db $00, $2B, $0E, $40, $01, $2B, $22, $40, $00

    dec hl                                        ; $43D9: $2B
    dec hl                                        ; $43DA: $2B
    ld b, b                                       ; $43DB: $40

    db $00

    dec hl                                        ; $43DD: $2B
    ccf                                           ; $43DE: $3F
    ld b, b                                       ; $43DF: $40

    db $00

jr_021_43E1:
    dec hl                                        ; $43E1: $2B
    daa                                           ; $43E2: $27
    ld b, c                                       ; $43E3: $41

    db $00

    dec hl                                        ; $43E5: $2B
    ld c, b                                       ; $43E6: $48
    ld b, c                                       ; $43E7: $41

    db $00

    dec hl                                        ; $43E9: $2B
    add c                                         ; $43EA: $81
    ld b, c                                       ; $43EB: $41

    db $05

    inc b                                         ; $43ED: $04
    inc de                                        ; $43EE: $13
    ld h, e                                       ; $43EF: $63
    ld b, c                                       ; $43F0: $41
    inc bc                                        ; $43F1: $03
    inc de                                        ; $43F2: $13
    add hl, bc                                    ; $43F3: $09
    ld b, b                                       ; $43F4: $40
    nop                                           ; $43F5: $00
    inc de                                        ; $43F6: $13
    inc a                                         ; $43F7: $3C
    ld b, b                                       ; $43F8: $40
    ld bc, $4513                                  ; $43F9: $01 $13 $45
    ld b, b                                       ; $43FC: $40
    inc b                                         ; $43FD: $04
    inc de                                        ; $43FE: $13

jr_021_43FF:
    ld e, a                                       ; $43FF: $5F
    ld b, b                                       ; $4400: $40

    db $05, $04, $13, $00, $40

    inc bc                                        ; $4406: $03
    inc de                                        ; $4407: $13
    add hl, bc                                    ; $4408: $09
    ld b, b                                       ; $4409: $40
    nop                                           ; $440A: $00
    inc de                                        ; $440B: $13
    inc a                                         ; $440C: $3C
    ld b, b                                       ; $440D: $40
    ld bc, $4513                                  ; $440E: $01 $13 $45
    ld b, b                                       ; $4411: $40
    inc b                                         ; $4412: $04
    inc de                                        ; $4413: $13
    ld e, a                                       ; $4414: $5F
    ld b, b                                       ; $4415: $40

    db $03, $00

    inc de                                        ; $4418: $13
    add l                                         ; $4419: $85
    ld b, b                                       ; $441A: $40

    db $00

    inc de                                        ; $441C: $13
    db $C2                                        ; $441D: $C2
    ld b, b                                       ; $441E: $40

    db $00

    inc de                                        ; $4420: $13
    pop hl                                        ; $4421: $E1
    ld b, b                                       ; $4422: $40

    db $01, $02, $23, $7C, $4F, $04, $00

    inc hl                                        ; $442A: $23
    add l                                         ; $442B: $85
    ld c, a                                       ; $442C: $4F

    db $01, $23, $86, $4F, $00

    inc hl                                        ; $4432: $23
    adc [hl]                                      ; $4433: $8E
    ld c, a                                       ; $4434: $4F

    db $00

    inc hl                                        ; $4436: $23
    cp e                                          ; $4437: $BB
    ld c, a                                       ; $4438: $4F

    db $02, $02, $23, $BF, $58

    ld bc, $C823                                  ; $443E: $01 $23 $C8
    ld e, b                                       ; $4441: $58

    db $02, $01, $23, $D1, $58, $00

    inc hl                                        ; $4448: $23
    reti                                          ; $4449: $D9


    ld e, b                                       ; $444A: $58
    ld bc, $2302                                  ; $444B: $01 $02 $23
    ld bc, $017B                                  ; $444E: $01 $7B $01
    nop                                           ; $4451: $00
    inc hl                                        ; $4452: $23
    ld a, [bc]                                    ; $4453: $0A
    ld a, e                                       ; $4454: $7B
    ld bc, $2202                                  ; $4455: $01 $02 $22
    ld b, e                                       ; $4458: $43
    ld l, a                                       ; $4459: $6F
    dec b                                         ; $445A: $05
    ld bc, $4C22                                  ; $445B: $01 $22 $4C
    ld l, a                                       ; $445E: $6F
    nop                                           ; $445F: $00
    ld [hl+], a                                   ; $4460: $22
    ld d, h                                       ; $4461: $54
    ld l, a                                       ; $4462: $6F
    nop                                           ; $4463: $00
    ld [hl+], a                                   ; $4464: $22
    ld a, l                                       ; $4465: $7D
    ld l, a                                       ; $4466: $6F
    nop                                           ; $4467: $00
    ld [hl+], a                                   ; $4468: $22
    sbc c                                         ; $4469: $99
    ld l, a                                       ; $446A: $6F
    nop                                           ; $446B: $00
    ld [hl+], a                                   ; $446C: $22
    or l                                          ; $446D: $B5
    ld l, a                                       ; $446E: $6F

    db $01, $02, $22, $27, $71, $05, $01, $22, $30, $71, $00

    ld [hl+], a                                   ; $447A: $22
    jr c, jr_021_44EE                             ; $447B: $38 $71

    db $00

    ld [hl+], a                                   ; $447E: $22
    ld h, a                                       ; $447F: $67
    ld [hl], c                                    ; $4480: $71

    db $00

    ld [hl+], a                                   ; $4482: $22
    ld [hl], e                                    ; $4483: $73
    ld [hl], c                                    ; $4484: $71

    db $00

    ld [hl+], a                                   ; $4486: $22
    and a                                         ; $4487: $A7
    ld [hl], c                                    ; $4488: $71
    ld bc, $2202                                  ; $4489: $01 $02 $22
    pop de                                        ; $448C: $D1
    ld [hl], d                                    ; $448D: $72
    dec b                                         ; $448E: $05
    ld bc, $DA22                                  ; $448F: $01 $22 $DA
    ld [hl], d                                    ; $4492: $72
    nop                                           ; $4493: $00
    ld [hl+], a                                   ; $4494: $22
    ld [c], a                                     ; $4495: $E2
    ld [hl], d                                    ; $4496: $72
    nop                                           ; $4497: $00
    ld [hl+], a                                   ; $4498: $22
    db $FD                                        ; $4499: $FD
    ld [hl], d                                    ; $449A: $72
    nop                                           ; $449B: $00
    ld [hl+], a                                   ; $449C: $22
    ld hl, $0073                                  ; $449D: $21 $73 $00
    ld [hl+], a                                   ; $44A0: $22
    ld a, [bc]                                    ; $44A1: $0A
    ld [hl], h                                    ; $44A2: $74
    ld bc, $2202                                  ; $44A3: $01 $02 $22
    sub h                                         ; $44A6: $94
    ld [hl], h                                    ; $44A7: $74
    dec b                                         ; $44A8: $05
    ld bc, $9D22                                  ; $44A9: $01 $22 $9D
    ld [hl], h                                    ; $44AC: $74
    nop                                           ; $44AD: $00
    ld [hl+], a                                   ; $44AE: $22
    rst $10                                       ; $44AF: $D7
    ld [hl], h                                    ; $44B0: $74
    nop                                           ; $44B1: $00
    ld [hl+], a                                   ; $44B2: $22
    and $74                                       ; $44B3: $E6 $74
    nop                                           ; $44B5: $00
    ld [hl+], a                                   ; $44B6: $22
    add $75                                       ; $44B7: $C6 $75
    ld bc, $3522                                  ; $44B9: $01 $22 $35
    halt                                          ; $44BC: $76
    ld [bc], a                                    ; $44BD: $02
    nop                                           ; $44BE: $00
    ld [hl+], a                                   ; $44BF: $22
    jp $0076                                      ; $44C0: $C3 $76 $00


    ld [hl+], a                                   ; $44C3: $22
    ret c                                         ; $44C4: $D8

    halt                                          ; $44C5: $76
    ld bc, $2802                                  ; $44C6: $01 $02 $28
    ld h, $5F                                     ; $44C9: $26 $5F
    ld bc, $2801                                  ; $44CB: $01 $01 $28
    cpl                                           ; $44CE: $2F
    ld e, a                                       ; $44CF: $5F
    ld bc, $2802                                  ; $44D0: $01 $02 $28
    ld e, l                                       ; $44D3: $5D
    ld e, a                                       ; $44D4: $5F
    rlca                                          ; $44D5: $07
    nop                                           ; $44D6: $00
    jr z, @+$66                                   ; $44D7: $28 $64

    ld e, a                                       ; $44D9: $5F
    nop                                           ; $44DA: $00
    jr z, jr_021_4546                             ; $44DB: $28 $69

    ld e, a                                       ; $44DD: $5F
    nop                                           ; $44DE: $00
    jr z, jr_021_454F                             ; $44DF: $28 $6E

    ld e, a                                       ; $44E1: $5F
    nop                                           ; $44E2: $00
    jr z, jr_021_4558                             ; $44E3: $28 $73

    ld e, a                                       ; $44E5: $5F
    nop                                           ; $44E6: $00
    jr z, @+$7A                                   ; $44E7: $28 $78

    ld e, a                                       ; $44E9: $5F
    nop                                           ; $44EA: $00
    jr z, jr_021_456A                             ; $44EB: $28 $7D

    ld e, a                                       ; $44ED: $5F

jr_021_44EE:
    nop                                           ; $44EE: $00
    jr z, @-$7C                                   ; $44EF: $28 $82

    ld e, a                                       ; $44F1: $5F
    ld bc, $2600                                  ; $44F2: $01 $00 $26
    inc bc                                        ; $44F5: $03
    ld h, [hl]                                    ; $44F6: $66
    ld bc, $2600                                  ; $44F7: $01 $00 $26
    dec c                                         ; $44FA: $0D
    ld h, [hl]                                    ; $44FB: $66
    ld [bc], a                                    ; $44FC: $02
    ld bc, $3E2B                                  ; $44FD: $01 $2B $3E
    ld [hl], c                                    ; $4500: $71
    ld [bc], a                                    ; $4501: $02
    dec hl                                        ; $4502: $2B
    ld b, a                                       ; $4503: $47
    ld [hl], c                                    ; $4504: $71
    inc c                                         ; $4505: $0C
    ld bc, $AB22                                  ; $4506: $01 $22 $AB
    ld b, c                                       ; $4509: $41
    inc bc                                        ; $450A: $03
    ld [hl+], a                                   ; $450B: $22
    or d                                          ; $450C: $B2
    ld b, c                                       ; $450D: $41
    ld bc, $B922                                  ; $450E: $01 $22 $B9
    ld b, c                                       ; $4511: $41
    ld bc, $C222                                  ; $4512: $01 $22 $C2
    ld b, c                                       ; $4515: $41
    ld bc, $CB22                                  ; $4516: $01 $22 $CB
    ld b, c                                       ; $4519: $41
    ld bc, $D422                                  ; $451A: $01 $22 $D4
    ld b, c                                       ; $451D: $41
    ld bc, $DD22                                  ; $451E: $01 $22 $DD
    ld b, c                                       ; $4521: $41
    ld bc, $E622                                  ; $4522: $01 $22 $E6
    ld b, c                                       ; $4525: $41
    ld bc, $EF22                                  ; $4526: $01 $22 $EF
    ld b, c                                       ; $4529: $41
    ld bc, $F822                                  ; $452A: $01 $22 $F8
    ld b, c                                       ; $452D: $41
    inc b                                         ; $452E: $04
    ld [hl+], a                                   ; $452F: $22
    db $FD                                        ; $4530: $FD
    ld b, c                                       ; $4531: $41
    inc b                                         ; $4532: $04
    ld [hl+], a                                   ; $4533: $22
    inc b                                         ; $4534: $04
    ld b, d                                       ; $4535: $42
    ld bc, $2201                                  ; $4536: $01 $01 $22
    dec b                                         ; $4539: $05
    ld b, d                                       ; $453A: $42
    inc c                                         ; $453B: $0C
    ld bc, $AB22                                  ; $453C: $01 $22 $AB
    ld b, c                                       ; $453F: $41
    inc bc                                        ; $4540: $03
    ld [hl+], a                                   ; $4541: $22
    or d                                          ; $4542: $B2
    ld b, c                                       ; $4543: $41
    inc b                                         ; $4544: $04
    ld [hl+], a                                   ; $4545: $22

jr_021_4546:
    db $FD                                        ; $4546: $FD
    ld b, c                                       ; $4547: $41
    ld bc, $0E22                                  ; $4548: $01 $22 $0E
    ld b, d                                       ; $454B: $42
    ld bc, $0E22                                  ; $454C: $01 $22 $0E

jr_021_454F:
    ld b, d                                       ; $454F: $42
    ld bc, $0E22                                  ; $4550: $01 $22 $0E
    ld b, d                                       ; $4553: $42
    ld bc, $0E22                                  ; $4554: $01 $22 $0E
    ld b, d                                       ; $4557: $42

jr_021_4558:
    ld bc, $0E22                                  ; $4558: $01 $22 $0E
    ld b, d                                       ; $455B: $42
    ld bc, $0E22                                  ; $455C: $01 $22 $0E
    ld b, d                                       ; $455F: $42
    ld bc, $0E22                                  ; $4560: $01 $22 $0E
    ld b, d                                       ; $4563: $42
    inc b                                         ; $4564: $04
    ld [hl+], a                                   ; $4565: $22
    db $FD                                        ; $4566: $FD
    ld b, c                                       ; $4567: $41
    inc b                                         ; $4568: $04
    ld [hl+], a                                   ; $4569: $22

jr_021_456A:
    inc b                                         ; $456A: $04
    ld b, b                                       ; $456B: $40
    ld bc, $1C02                                  ; $456C: $01 $02 $1C
    or l                                          ; $456F: $B5
    ld c, a                                       ; $4570: $4F
    dec b                                         ; $4571: $05
    nop                                           ; $4572: $00
    inc e                                         ; $4573: $1C
    cp [hl]                                       ; $4574: $BE
    ld c, a                                       ; $4575: $4F
    nop                                           ; $4576: $00
    inc e                                         ; $4577: $1C
    ret c                                         ; $4578: $D8

    ld c, a                                       ; $4579: $4F
    nop                                           ; $457A: $00
    inc e                                         ; $457B: $1C
    ld e, $50                                     ; $457C: $1E $50
    nop                                           ; $457E: $00
    inc e                                         ; $457F: $1C
    ld c, e                                       ; $4580: $4B
    ld d, b                                       ; $4581: $50
    nop                                           ; $4582: $00
    inc e                                         ; $4583: $1C
    adc e                                         ; $4584: $8B
    ld d, b                                       ; $4585: $50
    ld bc, $1C02                                  ; $4586: $01 $02 $1C
    ld b, d                                       ; $4589: $42
    ld d, c                                       ; $458A: $51
    rlca                                          ; $458B: $07
    nop                                           ; $458C: $00
    inc e                                         ; $458D: $1C
    ld c, e                                       ; $458E: $4B
    ld d, c                                       ; $458F: $51
    nop                                           ; $4590: $00
    inc e                                         ; $4591: $1C
    ld h, h                                       ; $4592: $64
    ld d, c                                       ; $4593: $51
    nop                                           ; $4594: $00
    inc e                                         ; $4595: $1C
    sub h                                         ; $4596: $94
    ld d, c                                       ; $4597: $51
    nop                                           ; $4598: $00
    inc e                                         ; $4599: $1C
    and $51                                       ; $459A: $E6 $51
    nop                                           ; $459C: $00
    inc e                                         ; $459D: $1C
    inc l                                         ; $459E: $2C
    ld d, d                                       ; $459F: $52
    nop                                           ; $45A0: $00
    inc e                                         ; $45A1: $1C
    ld c, a                                       ; $45A2: $4F
    ld d, d                                       ; $45A3: $52
    nop                                           ; $45A4: $00
    inc e                                         ; $45A5: $1C
    ld e, [hl]                                    ; $45A6: $5E
    ld d, d                                       ; $45A7: $52
    ld bc, $1C02                                  ; $45A8: $01 $02 $1C
    ld a, [bc]                                    ; $45AB: $0A
    ld d, h                                       ; $45AC: $54
    inc b                                         ; $45AD: $04
    nop                                           ; $45AE: $00
    inc e                                         ; $45AF: $1C
    inc de                                        ; $45B0: $13
    ld d, h                                       ; $45B1: $54
    nop                                           ; $45B2: $00
    inc e                                         ; $45B3: $1C
    and l                                         ; $45B4: $A5
    ld d, h                                       ; $45B5: $54
    nop                                           ; $45B6: $00
    inc e                                         ; $45B7: $1C
    push de                                       ; $45B8: $D5
    ld d, h                                       ; $45B9: $54
    nop                                           ; $45BA: $00
    inc e                                         ; $45BB: $1C
    dec b                                         ; $45BC: $05
    ld d, l                                       ; $45BD: $55
    ld bc, $1C02                                  ; $45BE: $01 $02 $1C
    ld h, e                                       ; $45C1: $63
    ld e, h                                       ; $45C2: $5C
    inc bc                                        ; $45C3: $03
    nop                                           ; $45C4: $00
    inc e                                         ; $45C5: $1C
    ld l, h                                       ; $45C6: $6C
    ld e, h                                       ; $45C7: $5C
    nop                                           ; $45C8: $00
    inc e                                         ; $45C9: $1C
    adc a                                         ; $45CA: $8F
    ld e, h                                       ; $45CB: $5C
    nop                                           ; $45CC: $00
    inc e                                         ; $45CD: $1C
    ldh [$5C], a                                  ; $45CE: $E0 $5C
    ld bc, $1C02                                  ; $45D0: $01 $02 $1C
    dec bc                                        ; $45D3: $0B
    ld h, e                                       ; $45D4: $63
    rlca                                          ; $45D5: $07
    nop                                           ; $45D6: $00
    inc e                                         ; $45D7: $1C
    inc d                                         ; $45D8: $14
    ld h, e                                       ; $45D9: $63
    nop                                           ; $45DA: $00
    inc e                                         ; $45DB: $1C
    ld b, [hl]                                    ; $45DC: $46
    ld h, e                                       ; $45DD: $63
    nop                                           ; $45DE: $00
    inc e                                         ; $45DF: $1C
    ld a, l                                       ; $45E0: $7D
    ld h, e                                       ; $45E1: $63
    nop                                           ; $45E2: $00
    inc e                                         ; $45E3: $1C
    xor l                                         ; $45E4: $AD
    ld h, e                                       ; $45E5: $63
    nop                                           ; $45E6: $00
    inc e                                         ; $45E7: $1C
    pop bc                                        ; $45E8: $C1
    ld h, e                                       ; $45E9: $63
    nop                                           ; $45EA: $00
    inc e                                         ; $45EB: $1C
    ld c, $64                                     ; $45EC: $0E $64
    nop                                           ; $45EE: $00
    inc e                                         ; $45EF: $1C
    ld c, h                                       ; $45F0: $4C
    ld h, h                                       ; $45F1: $64
    ld bc, $1C02                                  ; $45F2: $01 $02 $1C
    and $67                                       ; $45F5: $E6 $67
    ld b, $00                                     ; $45F7: $06 $00
    inc e                                         ; $45F9: $1C
    rst $28                                       ; $45FA: $EF
    ld h, a                                       ; $45FB: $67
    nop                                           ; $45FC: $00
    inc e                                         ; $45FD: $1C
    reti                                          ; $45FE: $D9


    ld l, b                                       ; $45FF: $68
    nop                                           ; $4600: $00
    inc e                                         ; $4601: $1C
    inc e                                         ; $4602: $1C
    ld l, c                                       ; $4603: $69
    nop                                           ; $4604: $00
    inc e                                         ; $4605: $1C
    ld c, d                                       ; $4606: $4A
    ld l, c                                       ; $4607: $69
    nop                                           ; $4608: $00
    inc e                                         ; $4609: $1C
    add d                                         ; $460A: $82
    ld l, c                                       ; $460B: $69
    nop                                           ; $460C: $00
    inc e                                         ; $460D: $1C
    xor c                                         ; $460E: $A9
    ld l, c                                       ; $460F: $69
    ld bc, $1C02                                  ; $4610: $01 $02 $1C
    add hl, bc                                    ; $4613: $09
    ld l, a                                       ; $4614: $6F
    ld bc, $1C02                                  ; $4615: $01 $02 $1C
    ld [de], a                                    ; $4618: $12
    ld l, a                                       ; $4619: $6F
    dec b                                         ; $461A: $05
    nop                                           ; $461B: $00
    inc e                                         ; $461C: $1C
    add hl, de                                    ; $461D: $19
    ld l, a                                       ; $461E: $6F
    nop                                           ; $461F: $00
    inc e                                         ; $4620: $1C
    sbc h                                         ; $4621: $9C
    ld l, a                                       ; $4622: $6F
    nop                                           ; $4623: $00
    inc e                                         ; $4624: $1C
    db $10                                        ; $4625: $10
    ld [hl], b                                    ; $4626: $70
    nop                                           ; $4627: $00
    inc e                                         ; $4628: $1C
    ld e, h                                       ; $4629: $5C
    ld [hl], b                                    ; $462A: $70
    nop                                           ; $462B: $00
    inc e                                         ; $462C: $1C
    ret z                                         ; $462D: $C8

    ld [hl], b                                    ; $462E: $70
    dec b                                         ; $462F: $05
    nop                                           ; $4630: $00
    inc e                                         ; $4631: $1C
    push hl                                       ; $4632: $E5
    ld [hl], b                                    ; $4633: $70
    nop                                           ; $4634: $00
    inc e                                         ; $4635: $1C
    ld hl, $0071                                  ; $4636: $21 $71 $00
    inc e                                         ; $4639: $1C
    ld h, d                                       ; $463A: $62
    ld [hl], c                                    ; $463B: $71
    nop                                           ; $463C: $00
    inc e                                         ; $463D: $1C
    or e                                          ; $463E: $B3
    ld [hl], c                                    ; $463F: $71
    nop                                           ; $4640: $00
    inc e                                         ; $4641: $1C
    and $71                                       ; $4642: $E6 $71
    nop                                           ; $4644: $00
    inc bc                                        ; $4645: $03
    ld [bc], a                                    ; $4646: $02
    add hl, de                                    ; $4647: $19
    nop                                           ; $4648: $00
    ld b, b                                       ; $4649: $40
    inc b                                         ; $464A: $04
    add hl, de                                    ; $464B: $19
    inc d                                         ; $464C: $14
    ld b, b                                       ; $464D: $40
    ld [bc], a                                    ; $464E: $02
    add hl, de                                    ; $464F: $19
    dec e                                         ; $4650: $1D
    ld b, b                                       ; $4651: $40
    inc bc                                        ; $4652: $03
    inc bc                                        ; $4653: $03
    add hl, de                                    ; $4654: $19
    ld h, b                                       ; $4655: $60
    ld b, c                                       ; $4656: $41
    inc b                                         ; $4657: $04
    add hl, de                                    ; $4658: $19
    ld l, c                                       ; $4659: $69
    ld b, c                                       ; $465A: $41
    ld [bc], a                                    ; $465B: $02
    add hl, de                                    ; $465C: $19
    ld [hl], d                                    ; $465D: $72
    ld b, c                                       ; $465E: $41
    ld [bc], a                                    ; $465F: $02
    inc bc                                        ; $4660: $03
    add hl, de                                    ; $4661: $19
    jp c, $0441                                   ; $4662: $DA $41 $04

    add hl, de                                    ; $4665: $19
    db $E3                                        ; $4666: $E3
    ld b, c                                       ; $4667: $41
    ld [bc], a                                    ; $4668: $02
    ld bc, $3E19                                  ; $4669: $01 $19 $3E
    ld b, d                                       ; $466C: $42
    ld [bc], a                                    ; $466D: $02
    add hl, de                                    ; $466E: $19
    ld b, a                                       ; $466F: $47
    ld b, d                                       ; $4670: $42
    inc bc                                        ; $4671: $03
    ld bc, $A419                                  ; $4672: $01 $19 $A4
    ld b, d                                       ; $4675: $42
    inc bc                                        ; $4676: $03
    add hl, de                                    ; $4677: $19
    xor l                                         ; $4678: $AD
    ld b, d                                       ; $4679: $42
    inc b                                         ; $467A: $04
    add hl, de                                    ; $467B: $19
    or [hl]                                       ; $467C: $B6
    ld b, d                                       ; $467D: $42
    ld [bc], a                                    ; $467E: $02
    inc b                                         ; $467F: $04
    add hl, de                                    ; $4680: $19
    ld e, $43                                     ; $4681: $1E $43
    nop                                           ; $4683: $00
    add hl, de                                    ; $4684: $19
    daa                                           ; $4685: $27
    ld b, e                                       ; $4686: $43
    ld [bc], a                                    ; $4687: $02
    ld bc, $2E19                                  ; $4688: $01 $19 $2E
    ld b, e                                       ; $468B: $43
    ld bc, $3619                                  ; $468C: $01 $19 $36
    ld b, e                                       ; $468F: $43
    ld [bc], a                                    ; $4690: $02
    inc bc                                        ; $4691: $03
    add hl, de                                    ; $4692: $19
    sub l                                         ; $4693: $95
    ld b, e                                       ; $4694: $43
    inc bc                                        ; $4695: $03
    add hl, de                                    ; $4696: $19
    sbc [hl]                                      ; $4697: $9E
    ld b, e                                       ; $4698: $43
    ld [bc], a                                    ; $4699: $02
    inc b                                         ; $469A: $04
    add hl, de                                    ; $469B: $19
    ei                                            ; $469C: $FB
    ld b, e                                       ; $469D: $43
    inc bc                                        ; $469E: $03
    add hl, de                                    ; $469F: $19
    inc b                                         ; $46A0: $04
    ld b, h                                       ; $46A1: $44
    ld [bc], a                                    ; $46A2: $02
    inc b                                         ; $46A3: $04
    add hl, de                                    ; $46A4: $19
    ld h, c                                       ; $46A5: $61
    ld b, h                                       ; $46A6: $44
    ld [bc], a                                    ; $46A7: $02
    add hl, de                                    ; $46A8: $19
    ld l, d                                       ; $46A9: $6A
    ld b, h                                       ; $46AA: $44
    ld [bc], a                                    ; $46AB: $02
    ld bc, $C719                                  ; $46AC: $01 $19 $C7
    ld b, h                                       ; $46AF: $44
    ld [bc], a                                    ; $46B0: $02
    add hl, de                                    ; $46B1: $19
    ret nc                                        ; $46B2: $D0

    ld b, h                                       ; $46B3: $44
    ld [bc], a                                    ; $46B4: $02
    ld [bc], a                                    ; $46B5: $02
    add hl, de                                    ; $46B6: $19
    dec l                                         ; $46B7: $2D
    ld b, l                                       ; $46B8: $45
    inc bc                                        ; $46B9: $03
    add hl, de                                    ; $46BA: $19
    ld [hl], $45                                  ; $46BB: $36 $45
    ld bc, $1901                                  ; $46BD: $01 $01 $19
    sbc [hl]                                      ; $46C0: $9E
    ld b, l                                       ; $46C1: $45
    ld bc, $1901                                  ; $46C2: $01 $01 $19
    and a                                         ; $46C5: $A7
    ld b, l                                       ; $46C6: $45
    ld [bc], a                                    ; $46C7: $02
    inc b                                         ; $46C8: $04
    add hl, de                                    ; $46C9: $19
    ld b, $46                                     ; $46CA: $06 $46
    ld bc, $0F19                                  ; $46CC: $01 $19 $0F
    ld b, [hl]                                    ; $46CF: $46
    inc bc                                        ; $46D0: $03
    ld [bc], a                                    ; $46D1: $02
    add hl, de                                    ; $46D2: $19
    ld l, h                                       ; $46D3: $6C
    ld b, [hl]                                    ; $46D4: $46
    ld bc, $7519                                  ; $46D5: $01 $19 $75
    ld b, [hl]                                    ; $46D8: $46
    inc bc                                        ; $46D9: $03
    add hl, de                                    ; $46DA: $19
    ld a, [hl]                                    ; $46DB: $7E
    ld b, [hl]                                    ; $46DC: $46
    ld [bc], a                                    ; $46DD: $02
    ld [bc], a                                    ; $46DE: $02
    add hl, de                                    ; $46DF: $19
    and $46                                       ; $46E0: $E6 $46
    inc bc                                        ; $46E2: $03
    add hl, de                                    ; $46E3: $19
    rst $28                                       ; $46E4: $EF
    ld b, [hl]                                    ; $46E5: $46
    inc b                                         ; $46E6: $04
    inc b                                         ; $46E7: $04
    add hl, de                                    ; $46E8: $19
    ld c, h                                       ; $46E9: $4C
    ld b, a                                       ; $46EA: $47
    ld [bc], a                                    ; $46EB: $02
    add hl, de                                    ; $46EC: $19
    ld d, l                                       ; $46ED: $55
    ld b, a                                       ; $46EE: $47
    inc bc                                        ; $46EF: $03
    add hl, de                                    ; $46F0: $19
    ld e, [hl]                                    ; $46F1: $5E
    ld b, a                                       ; $46F2: $47
    ld bc, $6719                                  ; $46F3: $01 $19 $67
    ld b, a                                       ; $46F6: $47
    ld bc, $1901                                  ; $46F7: $01 $01 $19
    rst $08                                       ; $46FA: $CF
    ld b, a                                       ; $46FB: $47
    ld bc, $1901                                  ; $46FC: $01 $01 $19
    ret c                                         ; $46FF: $D8

    ld b, a                                       ; $4700: $47
    inc bc                                        ; $4701: $03
    inc b                                         ; $4702: $04
    add hl, de                                    ; $4703: $19
    scf                                           ; $4704: $37
    ld c, b                                       ; $4705: $48
    ld [bc], a                                    ; $4706: $02
    add hl, de                                    ; $4707: $19
    ld b, b                                       ; $4708: $40
    ld c, b                                       ; $4709: $48
    ld bc, $4919                                  ; $470A: $01 $19 $49
    ld c, b                                       ; $470D: $48
    ld bc, $1902                                  ; $470E: $01 $02 $19
    ld d, b                                       ; $4711: $50
    ld c, b                                       ; $4712: $48
    ld bc, $1901                                  ; $4713: $01 $01 $19
    ld d, a                                       ; $4716: $57
    ld c, b                                       ; $4717: $48
    inc b                                         ; $4718: $04
    ld bc, $A719                                  ; $4719: $01 $19 $A7
    ld c, c                                       ; $471C: $49
    inc b                                         ; $471D: $04
    add hl, de                                    ; $471E: $19
    or b                                          ; $471F: $B0
    ld c, c                                       ; $4720: $49
    inc bc                                        ; $4721: $03
    add hl, de                                    ; $4722: $19
    cp c                                          ; $4723: $B9
    ld c, c                                       ; $4724: $49
    inc b                                         ; $4725: $04
    add hl, de                                    ; $4726: $19
    jp nz, HeaderRAMSize                          ; $4727: $C2 $49 $01

    inc b                                         ; $472A: $04
    add hl, de                                    ; $472B: $19
    ld a, [hl+]                                   ; $472C: $2A
    ld c, d                                       ; $472D: $4A
    ld [bc], a                                    ; $472E: $02
    ld bc, $3319                                  ; $472F: $01 $19 $33
    ld c, d                                       ; $4732: $4A
    ld bc, $3B19                                  ; $4733: $01 $19 $3B
    ld c, d                                       ; $4736: $4A
    inc bc                                        ; $4737: $03
    inc bc                                        ; $4738: $03
    add hl, de                                    ; $4739: $19
    sbc d                                         ; $473A: $9A
    ld c, d                                       ; $473B: $4A
    ld [bc], a                                    ; $473C: $02
    add hl, de                                    ; $473D: $19
    and e                                         ; $473E: $A3
    ld c, d                                       ; $473F: $4A
    ld bc, $AA19                                  ; $4740: $01 $19 $AA
    ld c, d                                       ; $4743: $4A
    ld [bc], a                                    ; $4744: $02
    ld [bc], a                                    ; $4745: $02
    add hl, de                                    ; $4746: $19
    or c                                          ; $4747: $B1
    ld c, d                                       ; $4748: $4A
    ld bc, $B819                                  ; $4749: $01 $19 $B8
    ld c, d                                       ; $474C: $4A
    ld bc, $1902                                  ; $474D: $01 $02 $19
    cp a                                          ; $4750: $BF
    ld c, d                                       ; $4751: $4A
    ld [bc], a                                    ; $4752: $02
    ld bc, $C619                                  ; $4753: $01 $19 $C6
    ld c, d                                       ; $4756: $4A
    ld bc, $0019                                  ; $4757: $01 $19 $00
    ld c, e                                       ; $475A: $4B
    inc b                                         ; $475B: $04
    ld [bc], a                                    ; $475C: $02
    add hl, de                                    ; $475D: $19
    sub c                                         ; $475E: $91
    ld c, h                                       ; $475F: $4C
    ld bc, $9819                                  ; $4760: $01 $19 $98
    ld c, h                                       ; $4763: $4C
    ld bc, $A119                                  ; $4764: $01 $19 $A1
    ld c, h                                       ; $4767: $4C
    ld bc, $AA19                                  ; $4768: $01 $19 $AA
    ld c, h                                       ; $476B: $4C
    ld bc, $1902                                  ; $476C: $01 $02 $19
    or c                                          ; $476F: $B1
    ld c, h                                       ; $4770: $4C
    ld [bc], a                                    ; $4771: $02
    ld bc, $B819                                  ; $4772: $01 $19 $B8
    ld c, h                                       ; $4775: $4C
    ld bc, $C019                                  ; $4776: $01 $19 $C0
    ld c, h                                       ; $4779: $4C
    inc bc                                        ; $477A: $03
    ld [bc], a                                    ; $477B: $02
    add hl, de                                    ; $477C: $19
    db $10                                        ; $477D: $10
    ld c, [hl]                                    ; $477E: $4E
    ld bc, $1919                                  ; $477F: $01 $19 $19
    ld c, [hl]                                    ; $4782: $4E
    nop                                           ; $4783: $00
    add hl, de                                    ; $4784: $19
    inc h                                         ; $4785: $24
    ld c, [hl]                                    ; $4786: $4E
    ld [bc], a                                    ; $4787: $02
    ld [bc], a                                    ; $4788: $02
    add hl, de                                    ; $4789: $19
    add sp, $54                                   ; $478A: $E8 $54
    ld bc, $F119                                  ; $478C: $01 $19 $F1
    ld d, h                                       ; $478F: $54
    ld [bc], a                                    ; $4790: $02
    ld [bc], a                                    ; $4791: $02
    dec d                                         ; $4792: $15
    ld e, h                                       ; $4793: $5C
    ld e, c                                       ; $4794: $59
    ld bc, $6715                                  ; $4795: $01 $15 $67
    ld e, c                                       ; $4798: $59
    ld [bc], a                                    ; $4799: $02
    ld [bc], a                                    ; $479A: $02
    dec d                                         ; $479B: $15
    sbc b                                         ; $479C: $98
    ld e, c                                       ; $479D: $59
    nop                                           ; $479E: $00
    dec d                                         ; $479F: $15
    sbc a                                         ; $47A0: $9F
    ld e, c                                       ; $47A1: $59
    inc b                                         ; $47A2: $04
    nop                                           ; $47A3: $00
    dec d                                         ; $47A4: $15
    and [hl]                                      ; $47A5: $A6
    ld e, c                                       ; $47A6: $59
    nop                                           ; $47A7: $00
    dec d                                         ; $47A8: $15
    ld hl, sp+$59                                 ; $47A9: $F8 $59
    nop                                           ; $47AB: $00
    dec d                                         ; $47AC: $15
    inc e                                         ; $47AD: $1C
    ld e, d                                       ; $47AE: $5A
    nop                                           ; $47AF: $00
    dec d                                         ; $47B0: $15
    ld h, h                                       ; $47B1: $64
    ld e, d                                       ; $47B2: $5A
    inc bc                                        ; $47B3: $03
    nop                                           ; $47B4: $00
    dec d                                         ; $47B5: $15
    sub b                                         ; $47B6: $90
    ld e, [hl]                                    ; $47B7: $5E
    nop                                           ; $47B8: $00
    dec d                                         ; $47B9: $15
    sub a                                         ; $47BA: $97
    ld e, [hl]                                    ; $47BB: $5E
    ld bc, $9B15                                  ; $47BC: $01 $15 $9B
    ld e, [hl]                                    ; $47BF: $5E
    inc bc                                        ; $47C0: $03
    nop                                           ; $47C1: $00
    dec d                                         ; $47C2: $15
    and l                                         ; $47C3: $A5
    ld e, [hl]                                    ; $47C4: $5E
    nop                                           ; $47C5: $00
    dec d                                         ; $47C6: $15
    cp e                                          ; $47C7: $BB
    ld e, [hl]                                    ; $47C8: $5E
    nop                                           ; $47C9: $00
    dec d                                         ; $47CA: $15
    ret nz                                        ; $47CB: $C0

    ld e, [hl]                                    ; $47CC: $5E
    inc bc                                        ; $47CD: $03
    inc b                                         ; $47CE: $04
    dec d                                         ; $47CF: $15
    nop                                           ; $47D0: $00
    ld b, b                                       ; $47D1: $40
    ld [bc], a                                    ; $47D2: $02
    dec d                                         ; $47D3: $15
    rlca                                          ; $47D4: $07
    ld b, b                                       ; $47D5: $40
    ld bc, $1015                                  ; $47D6: $01 $15 $10
    ld b, b                                       ; $47D9: $40
    inc bc                                        ; $47DA: $03
    ld [bc], a                                    ; $47DB: $02
    dec d                                         ; $47DC: $15
    or b                                          ; $47DD: $B0
    ld b, c                                       ; $47DE: $41
    ld [bc], a                                    ; $47DF: $02
    dec d                                         ; $47E0: $15
    cp c                                          ; $47E1: $B9
    ld b, c                                       ; $47E2: $41
    nop                                           ; $47E3: $00
    dec d                                         ; $47E4: $15
    ld b, b                                       ; $47E5: $40
    ld b, d                                       ; $47E6: $42
    ld [bc], a                                    ; $47E7: $02
    ld bc, $C215                                  ; $47E8: $01 $15 $C2
    ld b, c                                       ; $47EB: $41
    ld bc, $CA15                                  ; $47EC: $01 $15 $CA
    ld b, c                                       ; $47EF: $41
    ld b, $04                                     ; $47F0: $06 $04
    dec d                                         ; $47F2: $15
    ld e, b                                       ; $47F3: $58
    ld b, d                                       ; $47F4: $42
    ld bc, $6115                                  ; $47F5: $01 $15 $61
    ld b, d                                       ; $47F8: $42
    ld bc, $6A15                                  ; $47F9: $01 $15 $6A
    ld b, d                                       ; $47FC: $42
    nop                                           ; $47FD: $00
    dec d                                         ; $47FE: $15
    ld [hl], e                                    ; $47FF: $73
    ld b, d                                       ; $4800: $42
    nop                                           ; $4801: $00
    dec d                                         ; $4802: $15
    ld [hl], a                                    ; $4803: $77
    ld b, d                                       ; $4804: $42
    nop                                           ; $4805: $00
    dec d                                         ; $4806: $15
    inc h                                         ; $4807: $24
    ld b, [hl]                                    ; $4808: $46
    ld [bc], a                                    ; $4809: $02
    ld bc, $7E15                                  ; $480A: $01 $15 $7E
    ld b, d                                       ; $480D: $42
    nop                                           ; $480E: $00
    dec d                                         ; $480F: $15
    add [hl]                                      ; $4810: $86
    ld b, d                                       ; $4811: $42
    ld bc, $1502                                  ; $4812: $01 $02 $15
    jp z, $0343                                   ; $4815: $CA $43 $03

    nop                                           ; $4818: $00
    dec d                                         ; $4819: $15
    pop de                                        ; $481A: $D1
    ld b, e                                       ; $481B: $43
    nop                                           ; $481C: $00
    dec d                                         ; $481D: $15
    jp hl                                         ; $481E: $E9


    ld b, e                                       ; $481F: $43
    nop                                           ; $4820: $00
    dec d                                         ; $4821: $15
    ld sp, hl                                     ; $4822: $F9
    ld b, e                                       ; $4823: $43
    ld bc, $1502                                  ; $4824: $01 $02 $15
    rlca                                          ; $4827: $07
    ld b, h                                       ; $4828: $44
    inc bc                                        ; $4829: $03
    ld bc, $3015                                  ; $482A: $01 $15 $30
    ld b, a                                       ; $482D: $47
    ld bc, $3915                                  ; $482E: $01 $15 $39
    ld b, a                                       ; $4831: $47
    inc bc                                        ; $4832: $03
    dec d                                         ; $4833: $15
    ld b, d                                       ; $4834: $42
    ld b, a                                       ; $4835: $47
    ld [bc], a                                    ; $4836: $02
    ld [bc], a                                    ; $4837: $02
    dec d                                         ; $4838: $15
    xor d                                         ; $4839: $AA
    ld b, a                                       ; $483A: $47
    ld bc, $B315                                  ; $483B: $01 $15 $B3
    ld b, a                                       ; $483E: $47
    dec b                                         ; $483F: $05
    inc b                                         ; $4840: $04
    dec d                                         ; $4841: $15
    ld [de], a                                    ; $4842: $12
    ld c, b                                       ; $4843: $48
    ld [bc], a                                    ; $4844: $02
    dec d                                         ; $4845: $15
    ld [de], a                                    ; $4846: $12
    ld c, b                                       ; $4847: $48
    inc bc                                        ; $4848: $03
    dec d                                         ; $4849: $15
    ld [de], a                                    ; $484A: $12
    ld c, b                                       ; $484B: $48
    ld bc, $1215                                  ; $484C: $01 $15 $12
    ld c, b                                       ; $484F: $48
    ld bc, $1D15                                  ; $4850: $01 $15 $1D
    ld c, b                                       ; $4853: $48
    ld [bc], a                                    ; $4854: $02
    ld [bc], a                                    ; $4855: $02
    dec d                                         ; $4856: $15
    ld l, $4F                                     ; $4857: $2E $4F
    ld bc, $3515                                  ; $4859: $01 $15 $35
    ld c, a                                       ; $485C: $4F
    ld bc, $1502                                  ; $485D: $01 $02 $15
    sub d                                         ; $4860: $92
    ld c, a                                       ; $4861: $4F
    ld b, $00                                     ; $4862: $06 $00
    dec d                                         ; $4864: $15
    sbc e                                         ; $4865: $9B
    ld c, a                                       ; $4866: $4F
    nop                                           ; $4867: $00
    dec d                                         ; $4868: $15
    sbc a                                         ; $4869: $9F
    ld c, a                                       ; $486A: $4F
    nop                                           ; $486B: $00
    dec d                                         ; $486C: $15
    jp c, $004F                                   ; $486D: $DA $4F $00

    dec d                                         ; $4870: $15
    ld d, $50                                     ; $4871: $16 $50
    nop                                           ; $4873: $00
    dec d                                         ; $4874: $15
    dec a                                         ; $4875: $3D
    ld d, b                                       ; $4876: $50
    nop                                           ; $4877: $00
    dec d                                         ; $4878: $15
    ld [hl], h                                    ; $4879: $74
    ld d, b                                       ; $487A: $50
    dec b                                         ; $487B: $05
    ld [bc], a                                    ; $487C: $02
    inc de                                        ; $487D: $13
    ld c, [hl]                                    ; $487E: $4E
    ld e, a                                       ; $487F: $5F
    inc bc                                        ; $4880: $03
    inc de                                        ; $4881: $13
    ld d, l                                       ; $4882: $55
    ld e, a                                       ; $4883: $5F
    inc b                                         ; $4884: $04
    inc de                                        ; $4885: $13
    ld e, [hl]                                    ; $4886: $5E
    ld e, a                                       ; $4887: $5F
    ld bc, $6713                                  ; $4888: $01 $13 $67
    ld e, a                                       ; $488B: $5F
    nop                                           ; $488C: $00
    inc de                                        ; $488D: $13
    ld [hl], b                                    ; $488E: $70
    ld e, a                                       ; $488F: $5F
    ld bc, $1301                                  ; $4890: $01 $01 $13
    ld [hl], h                                    ; $4893: $74
    ld e, a                                       ; $4894: $5F
    ld [$1303], sp                                ; $4895: $08 $03 $13
    ld a, a                                       ; $4898: $7F
    ld h, c                                       ; $4899: $61
    ld bc, $8813                                  ; $489A: $01 $13 $88
    ld h, c                                       ; $489D: $61
    inc b                                         ; $489E: $04
    inc de                                        ; $489F: $13
    sub c                                         ; $48A0: $91
    ld h, c                                       ; $48A1: $61
    nop                                           ; $48A2: $00
    inc de                                        ; $48A3: $13
    sbc d                                         ; $48A4: $9A
    ld h, c                                       ; $48A5: $61
    nop                                           ; $48A6: $00
    inc de                                        ; $48A7: $13
    xor h                                         ; $48A8: $AC
    ld h, c                                       ; $48A9: $61
    nop                                           ; $48AA: $00
    inc de                                        ; $48AB: $13
    or b                                          ; $48AC: $B0
    ld h, c                                       ; $48AD: $61
    nop                                           ; $48AE: $00
    inc de                                        ; $48AF: $13
    or h                                          ; $48B0: $B4
    ld h, c                                       ; $48B1: $61
    nop                                           ; $48B2: $00
    inc de                                        ; $48B3: $13
    cp b                                          ; $48B4: $B8
    ld h, c                                       ; $48B5: $61
    ld b, $01                                     ; $48B6: $06 $01
    inc de                                        ; $48B8: $13
    cp h                                          ; $48B9: $BC
    ld h, c                                       ; $48BA: $61
    ld bc, $C413                                  ; $48BB: $01 $13 $C4
    ld h, c                                       ; $48BE: $61
    ld bc, $CC13                                  ; $48BF: $01 $13 $CC
    ld h, c                                       ; $48C2: $61
    ld bc, $D413                                  ; $48C3: $01 $13 $D4
    ld h, c                                       ; $48C6: $61
    ld bc, $DC13                                  ; $48C7: $01 $13 $DC
    ld h, c                                       ; $48CA: $61
    ld bc, $E413                                  ; $48CB: $01 $13 $E4
    ld h, c                                       ; $48CE: $61
    ld bc, $1303                                  ; $48CF: $01 $03 $13
    db $FC                                        ; $48D2: $FC
    ld h, h                                       ; $48D3: $64
    ld bc, $1301                                  ; $48D4: $01 $01 $13
    dec b                                         ; $48D7: $05
    ld h, l                                       ; $48D8: $65
    inc bc                                        ; $48D9: $03
    ld bc, $4A13                                  ; $48DA: $01 $13 $4A
    ld h, l                                       ; $48DD: $65
    nop                                           ; $48DE: $00
    inc de                                        ; $48DF: $13
    ld d, e                                       ; $48E0: $53
    ld h, l                                       ; $48E1: $65
    nop                                           ; $48E2: $00
    inc de                                        ; $48E3: $13
    ld d, a                                       ; $48E4: $57
    ld h, l                                       ; $48E5: $65
    ld [$1303], sp                                ; $48E6: $08 $03 $13
    xor b                                         ; $48E9: $A8
    ld h, l                                       ; $48EA: $65
    ld [bc], a                                    ; $48EB: $02
    inc de                                        ; $48EC: $13
    or c                                          ; $48ED: $B1
    ld h, l                                       ; $48EE: $65
    ld [bc], a                                    ; $48EF: $02
    inc de                                        ; $48F0: $13
    cp d                                          ; $48F1: $BA
    ld h, l                                       ; $48F2: $65
    nop                                           ; $48F3: $00
    inc de                                        ; $48F4: $13
    pop bc                                        ; $48F5: $C1
    ld h, l                                       ; $48F6: $65
    nop                                           ; $48F7: $00
    inc de                                        ; $48F8: $13
    db $D3                                        ; $48F9: $D3
    ld h, l                                       ; $48FA: $65
    nop                                           ; $48FB: $00
    inc de                                        ; $48FC: $13
    rst $10                                       ; $48FD: $D7
    ld h, l                                       ; $48FE: $65
    nop                                           ; $48FF: $00
    inc de                                        ; $4900: $13
    db $DB                                        ; $4901: $DB
    ld h, l                                       ; $4902: $65
    nop                                           ; $4903: $00
    inc de                                        ; $4904: $13
    rst $18                                       ; $4905: $DF
    ld h, l                                       ; $4906: $65
    ld bc, $1301                                  ; $4907: $01 $01 $13
    db $E3                                        ; $490A: $E3
    ld h, l                                       ; $490B: $65
    rlca                                          ; $490C: $07
    ld [bc], a                                    ; $490D: $02
    inc de                                        ; $490E: $13
    ld d, l                                       ; $490F: $55
    ld h, [hl]                                    ; $4910: $66
    inc b                                         ; $4911: $04
    inc de                                        ; $4912: $13
    ld e, [hl]                                    ; $4913: $5E
    ld h, [hl]                                    ; $4914: $66
    nop                                           ; $4915: $00
    inc de                                        ; $4916: $13
    ld h, a                                       ; $4917: $67
    ld h, [hl]                                    ; $4918: $66
    nop                                           ; $4919: $00
    inc de                                        ; $491A: $13
    ld a, c                                       ; $491B: $79
    ld h, [hl]                                    ; $491C: $66
    nop                                           ; $491D: $00
    inc de                                        ; $491E: $13
    ld a, l                                       ; $491F: $7D
    ld h, [hl]                                    ; $4920: $66
    nop                                           ; $4921: $00
    inc de                                        ; $4922: $13
    add c                                         ; $4923: $81
    ld h, [hl]                                    ; $4924: $66
    nop                                           ; $4925: $00
    inc de                                        ; $4926: $13
    add l                                         ; $4927: $85
    ld h, [hl]                                    ; $4928: $66
    ld [bc], a                                    ; $4929: $02
    ld bc, $8913                                  ; $492A: $01 $13 $89
    ld h, [hl]                                    ; $492D: $66
    ld bc, $9113                                  ; $492E: $01 $13 $91
    ld h, [hl]                                    ; $4931: $66
    ld bc, $1304                                  ; $4932: $01 $04 $13
    or $66                                        ; $4935: $F6 $66
    ld bc, $1301                                  ; $4937: $01 $01 $13
    rst $38                                       ; $493A: $FF
    ld h, [hl]                                    ; $493B: $66
    rlca                                          ; $493C: $07
    inc b                                         ; $493D: $04
    inc de                                        ; $493E: $13
    ld [hl], h                                    ; $493F: $74
    ld l, l                                       ; $4940: $6D
    ld bc, $7D13                                  ; $4941: $01 $13 $7D
    ld l, l                                       ; $4944: $6D
    nop                                           ; $4945: $00
    inc de                                        ; $4946: $13
    add [hl]                                      ; $4947: $86
    ld l, l                                       ; $4948: $6D
    nop                                           ; $4949: $00
    inc de                                        ; $494A: $13
    sbc b                                         ; $494B: $98
    ld l, l                                       ; $494C: $6D
    nop                                           ; $494D: $00
    inc de                                        ; $494E: $13
    sbc h                                         ; $494F: $9C
    ld l, l                                       ; $4950: $6D
    nop                                           ; $4951: $00
    inc de                                        ; $4952: $13
    and b                                         ; $4953: $A0
    ld l, l                                       ; $4954: $6D
    nop                                           ; $4955: $00
    inc de                                        ; $4956: $13
    and h                                         ; $4957: $A4
    ld l, l                                       ; $4958: $6D
    ld b, $01                                     ; $4959: $06 $01
    inc de                                        ; $495B: $13
    xor b                                         ; $495C: $A8
    ld l, l                                       ; $495D: $6D
    ld bc, $B013                                  ; $495E: $01 $13 $B0
    ld l, l                                       ; $4961: $6D
    ld bc, $B813                                  ; $4962: $01 $13 $B8
    ld l, l                                       ; $4965: $6D
    ld bc, $C013                                  ; $4966: $01 $13 $C0
    ld l, l                                       ; $4969: $6D
    ld bc, $C813                                  ; $496A: $01 $13 $C8
    ld l, l                                       ; $496D: $6D
    ld bc, $D013                                  ; $496E: $01 $13 $D0
    ld l, l                                       ; $4971: $6D
    ld b, $02                                     ; $4972: $06 $02
    inc de                                        ; $4974: $13
    ld b, h                                       ; $4975: $44
    ld h, a                                       ; $4976: $67
    inc bc                                        ; $4977: $03
    inc de                                        ; $4978: $13
    ld c, l                                       ; $4979: $4D
    ld h, a                                       ; $497A: $67
    nop                                           ; $497B: $00
    inc de                                        ; $497C: $13
    ld d, [hl]                                    ; $497D: $56
    ld h, a                                       ; $497E: $67
    nop                                           ; $497F: $00
    inc de                                        ; $4980: $13
    ld l, b                                       ; $4981: $68
    ld h, a                                       ; $4982: $67
    nop                                           ; $4983: $00
    inc de                                        ; $4984: $13
    ld a, d                                       ; $4985: $7A
    ld h, a                                       ; $4986: $67
    nop                                           ; $4987: $00
    inc de                                        ; $4988: $13
    adc h                                         ; $4989: $8C
    ld h, a                                       ; $498A: $67
    inc b                                         ; $498B: $04
    ld bc, $9E13                                  ; $498C: $01 $13 $9E
    ld h, a                                       ; $498F: $67
    ld bc, $D313                                  ; $4990: $01 $13 $D3
    ld h, a                                       ; $4993: $67
    ld bc, $0813                                  ; $4994: $01 $13 $08
    ld l, b                                       ; $4997: $68
    ld bc, $3D13                                  ; $4998: $01 $13 $3D
    ld l, b                                       ; $499B: $68
    ld [bc], a                                    ; $499C: $02
    ld [bc], a                                    ; $499D: $02
    dec d                                         ; $499E: $15

Jump_021_499F:
    ld e, [hl]                                    ; $499F: $5E
    ld e, a                                       ; $49A0: $5F
    ld bc, $6615                                  ; $49A1: $01 $15 $66
    ld h, b                                       ; $49A4: $60
    ld [bc], a                                    ; $49A5: $02
    ld [bc], a                                    ; $49A6: $02
    dec d                                         ; $49A7: $15
    add hl, bc                                    ; $49A8: $09
    ld l, h                                       ; $49A9: $6C
    ld bc, $2F15                                  ; $49AA: $01 $15 $2F
    ld l, h                                       ; $49AD: $6C
    ld [bc], a                                    ; $49AE: $02
    ld [bc], a                                    ; $49AF: $02
    dec d                                         ; $49B0: $15
    add c                                         ; $49B1: $81
    ld l, h                                       ; $49B2: $6C
    ld bc, $8815                                  ; $49B3: $01 $15 $88
    ld l, h                                       ; $49B6: $6C
    ld [bc], a                                    ; $49B7: $02
    ld [bc], a                                    ; $49B8: $02
    dec d                                         ; $49B9: $15
    ret c                                         ; $49BA: $D8

    ld l, h                                       ; $49BB: $6C
    ld bc, $DF15                                  ; $49BC: $01 $15 $DF
    ld l, h                                       ; $49BF: $6C
    ld [bc], a                                    ; $49C0: $02
    ld [bc], a                                    ; $49C1: $02
    dec d                                         ; $49C2: $15
    cpl                                           ; $49C3: $2F
    ld l, l                                       ; $49C4: $6D
    ld bc, $3615                                  ; $49C5: $01 $15 $36
    ld l, l                                       ; $49C8: $6D
    ld bc, $1500                                  ; $49C9: $01 $00 $15
    dec a                                         ; $49CC: $3D
    ld l, l                                       ; $49CD: $6D
    ld [bc], a                                    ; $49CE: $02
    ld [bc], a                                    ; $49CF: $02
    dec d                                         ; $49D0: $15
    sbc c                                         ; $49D1: $99
    ld l, [hl]                                    ; $49D2: $6E
    ld bc, xLoad_HeroXTile                                  ; $49D3: $01 $15 $A0
    ld l, [hl]                                    ; $49D6: $6E
    inc bc                                        ; $49D7: $03
    inc bc                                        ; $49D8: $03
    ld h, $2E                                     ; $49D9: $26 $2E
    ld l, c                                       ; $49DB: $69
    ld bc, $3726                                  ; $49DC: $01 $26 $37
    ld l, c                                       ; $49DF: $69
    inc b                                         ; $49E0: $04
    ld h, $4D                                     ; $49E1: $26 $4D
    ld l, c                                       ; $49E3: $69
    ld bc, $2600                                  ; $49E4: $01 $00 $26
    ld h, h                                       ; $49E7: $64
    ld l, c                                       ; $49E8: $69
    inc bc                                        ; $49E9: $03
    ld [bc], a                                    ; $49EA: $02
    jr z, @-$55                                   ; $49EB: $28 $A9

    ld h, e                                       ; $49ED: $63
    ld bc, $B228                                  ; $49EE: $01 $28 $B2
    ld h, e                                       ; $49F1: $63
    ld bc, $B628                                  ; $49F2: $01 $28 $B6
    ld h, e                                       ; $49F5: $63
    ld c, $01                                     ; $49F6: $0E $01
    ld [de], a                                    ; $49F8: $12
    nop                                           ; $49F9: $00
    ld b, b                                       ; $49FA: $40
    inc b                                         ; $49FB: $04
    ld [de], a                                    ; $49FC: $12
    ld c, l                                       ; $49FD: $4D
    ld b, b                                       ; $49FE: $40
    inc b                                         ; $49FF: $04
    ld [de], a                                    ; $4A00: $12
    ld d, [hl]                                    ; $4A01: $56
    ld b, b                                       ; $4A02: $40
    ld [bc], a                                    ; $4A03: $02
    ld [de], a                                    ; $4A04: $12
    ld e, a                                       ; $4A05: $5F
    ld b, b                                       ; $4A06: $40
    inc bc                                        ; $4A07: $03
    ld [de], a                                    ; $4A08: $12
    xor h                                         ; $4A09: $AC
    ld b, b                                       ; $4A0A: $40
    ld bc, $B512                                  ; $4A0B: $01 $12 $B5
    ld b, b                                       ; $4A0E: $40
    ld bc, $BE12                                  ; $4A0F: $01 $12 $BE
    ld b, b                                       ; $4A12: $40
    ld bc, $C712                                  ; $4A13: $01 $12 $C7
    ld b, b                                       ; $4A16: $40
    ld [bc], a                                    ; $4A17: $02
    ld [hl+], a                                   ; $4A18: $22
    inc b                                         ; $4A19: $04
    ld b, b                                       ; $4A1A: $40
    ld [bc], a                                    ; $4A1B: $02
    ld [hl+], a                                   ; $4A1C: $22
    inc b                                         ; $4A1D: $04
    ld b, b                                       ; $4A1E: $40
    nop                                           ; $4A1F: $00
    ld [hl+], a                                   ; $4A20: $22
    inc b                                         ; $4A21: $04
    ld b, b                                       ; $4A22: $40
    ld bc, $0422                                  ; $4A23: $01 $22 $04
    ld b, b                                       ; $4A26: $40
    ld bc, $0422                                  ; $4A27: $01 $22 $04
    ld b, b                                       ; $4A2A: $40
    ld bc, $0422                                  ; $4A2B: $01 $22 $04
    ld b, b                                       ; $4A2E: $40
    ld c, $01                                     ; $4A2F: $0E $01
    ld [de], a                                    ; $4A31: $12
    ret nc                                        ; $4A32: $D0

    ld b, b                                       ; $4A33: $40
    inc b                                         ; $4A34: $04
    ld [de], a                                    ; $4A35: $12
    ld c, l                                       ; $4A36: $4D
    ld b, c                                       ; $4A37: $41
    inc b                                         ; $4A38: $04
    ld [de], a                                    ; $4A39: $12
    jp z, $0241                                   ; $4A3A: $CA $41 $02

    ld [de], a                                    ; $4A3D: $12
    ld b, a                                       ; $4A3E: $47
    ld b, d                                       ; $4A3F: $42
    inc bc                                        ; $4A40: $03
    ld [de], a                                    ; $4A41: $12
    call nz, $0142                                ; $4A42: $C4 $42 $01
    ld [de], a                                    ; $4A45: $12
    ld b, c                                       ; $4A46: $41
    ld b, e                                       ; $4A47: $43
    ld bc, $4112                                  ; $4A48: $01 $12 $41
    ld b, e                                       ; $4A4B: $43
    ld bc, $6112                                  ; $4A4C: $01 $12 $61
    ld b, e                                       ; $4A4F: $43
    nop                                           ; $4A50: $00
    ld [de], a                                    ; $4A51: $12
    ld [hl], h                                    ; $4A52: $74
    ld b, e                                       ; $4A53: $43
    nop                                           ; $4A54: $00
    ld [hl+], a                                   ; $4A55: $22
    inc b                                         ; $4A56: $04
    ld b, b                                       ; $4A57: $40
    nop                                           ; $4A58: $00
    ld [hl+], a                                   ; $4A59: $22
    inc b                                         ; $4A5A: $04
    ld b, b                                       ; $4A5B: $40
    nop                                           ; $4A5C: $00
    ld [hl+], a                                   ; $4A5D: $22
    inc b                                         ; $4A5E: $04
    ld b, b                                       ; $4A5F: $40
    nop                                           ; $4A60: $00
    ld [hl+], a                                   ; $4A61: $22
    inc b                                         ; $4A62: $04
    ld b, b                                       ; $4A63: $40
    nop                                           ; $4A64: $00
    ld [hl+], a                                   ; $4A65: $22
    inc b                                         ; $4A66: $04
    ld b, b                                       ; $4A67: $40
    ld c, $01                                     ; $4A68: $0E $01
    ld [de], a                                    ; $4A6A: $12
    ret nc                                        ; $4A6B: $D0

    ld b, b                                       ; $4A6C: $40
    inc b                                         ; $4A6D: $04
    ld [de], a                                    ; $4A6E: $12
    ld c, l                                       ; $4A6F: $4D
    ld b, c                                       ; $4A70: $41
    inc b                                         ; $4A71: $04
    ld [de], a                                    ; $4A72: $12
    jp z, $0241                                   ; $4A73: $CA $41 $02

    ld [de], a                                    ; $4A76: $12
    ld b, a                                       ; $4A77: $47
    ld b, d                                       ; $4A78: $42
    inc bc                                        ; $4A79: $03
    ld [de], a                                    ; $4A7A: $12
    call nz, $0142                                ; $4A7B: $C4 $42 $01
    ld [de], a                                    ; $4A7E: $12
    ld b, c                                       ; $4A7F: $41
    ld b, e                                       ; $4A80: $43
    ld bc, $4112                                  ; $4A81: $01 $12 $41
    ld b, e                                       ; $4A84: $43
    ld bc, $6112                                  ; $4A85: $01 $12 $61
    ld b, e                                       ; $4A88: $43
    nop                                           ; $4A89: $00
    ld [hl+], a                                   ; $4A8A: $22
    inc b                                         ; $4A8B: $04
    ld b, b                                       ; $4A8C: $40
    nop                                           ; $4A8D: $00
    ld [de], a                                    ; $4A8E: $12
    ret nz                                        ; $4A8F: $C0

    ld b, e                                       ; $4A90: $43
    nop                                           ; $4A91: $00
    ld [de], a                                    ; $4A92: $12
    ld e, $44                                     ; $4A93: $1E $44
    nop                                           ; $4A95: $00
    ld [hl+], a                                   ; $4A96: $22
    inc b                                         ; $4A97: $04
    ld b, b                                       ; $4A98: $40
    nop                                           ; $4A99: $00
    ld [de], a                                    ; $4A9A: $12
    ld l, b                                       ; $4A9B: $68
    ld b, l                                       ; $4A9C: $45
    nop                                           ; $4A9D: $00
    ld [de], a                                    ; $4A9E: $12
    pop bc                                        ; $4A9F: $C1
    ld b, l                                       ; $4AA0: $45
    ld c, $01                                     ; $4AA1: $0E $01
    ld [de], a                                    ; $4AA3: $12
    ret nc                                        ; $4AA4: $D0

    ld b, b                                       ; $4AA5: $40
    inc b                                         ; $4AA6: $04
    ld [de], a                                    ; $4AA7: $12
    ld c, l                                       ; $4AA8: $4D
    ld b, c                                       ; $4AA9: $41
    inc b                                         ; $4AAA: $04
    ld [de], a                                    ; $4AAB: $12
    jp z, $0241                                   ; $4AAC: $CA $41 $02

    ld [de], a                                    ; $4AAF: $12
    ld b, a                                       ; $4AB0: $47
    ld b, d                                       ; $4AB1: $42
    inc bc                                        ; $4AB2: $03
    ld [de], a                                    ; $4AB3: $12
    call nz, $0142                                ; $4AB4: $C4 $42 $01
    ld [de], a                                    ; $4AB7: $12
    ld b, c                                       ; $4AB8: $41
    ld b, e                                       ; $4AB9: $43
    ld bc, $4112                                  ; $4ABA: $01 $12 $41
    ld b, e                                       ; $4ABD: $43
    ld bc, $6112                                  ; $4ABE: $01 $12 $61
    ld b, e                                       ; $4AC1: $43
    nop                                           ; $4AC2: $00
    ld [hl+], a                                   ; $4AC3: $22
    inc b                                         ; $4AC4: $04
    ld b, b                                       ; $4AC5: $40
    nop                                           ; $4AC6: $00
    ld [hl+], a                                   ; $4AC7: $22
    inc b                                         ; $4AC8: $04
    ld b, b                                       ; $4AC9: $40
    nop                                           ; $4ACA: $00
    ld [hl+], a                                   ; $4ACB: $22
    inc b                                         ; $4ACC: $04
    ld b, b                                       ; $4ACD: $40
    nop                                           ; $4ACE: $00
    ld [de], a                                    ; $4ACF: $12
    ld [hl], a                                    ; $4AD0: $77
    ld b, h                                       ; $4AD1: $44
    nop                                           ; $4AD2: $00
    ld [hl+], a                                   ; $4AD3: $22
    inc b                                         ; $4AD4: $04
    ld b, b                                       ; $4AD5: $40
    nop                                           ; $4AD6: $00
    ld [hl+], a                                   ; $4AD7: $22
    inc b                                         ; $4AD8: $04
    ld b, b                                       ; $4AD9: $40
    inc b                                         ; $4ADA: $04
    inc bc                                        ; $4ADB: $03
    rla                                           ; $4ADC: $17
    and b                                         ; $4ADD: $A0
    ld e, l                                       ; $4ADE: $5D
    inc bc                                        ; $4ADF: $03
    rla                                           ; $4AE0: $17
    xor c                                         ; $4AE1: $A9
    ld e, l                                       ; $4AE2: $5D
    ld bc, $B217                                  ; $4AE3: $01 $17 $B2
    ld e, l                                       ; $4AE6: $5D
    ld bc, $BB17                                  ; $4AE7: $01 $17 $BB
    ld e, l                                       ; $4AEA: $5D
    inc bc                                        ; $4AEB: $03
    inc b                                         ; $4AEC: $04
    ld e, $00                                     ; $4AED: $1E $00
    ld b, b                                       ; $4AEF: $40
    ld bc, $091E                                  ; $4AF0: $01 $1E $09
    ld b, b                                       ; $4AF3: $40
    ld bc, $101E                                  ; $4AF4: $01 $1E $10
    ld b, b                                       ; $4AF7: $40
    ld [bc], a                                    ; $4AF8: $02
    ld bc, $C11E                                  ; $4AF9: $01 $1E $C1
    ld d, d                                       ; $4AFC: $52
    ld [bc], a                                    ; $4AFD: $02
    ld e, $CA                                     ; $4AFE: $1E $CA
    ld d, d                                       ; $4B00: $52
    ld bc, $1E02                                  ; $4B01: $01 $02 $1E
    scf                                           ; $4B04: $37
    ld d, a                                       ; $4B05: $57
    ld b, $00                                     ; $4B06: $06 $00
    ld e, $40                                     ; $4B08: $1E $40
    ld d, a                                       ; $4B0A: $57
    nop                                           ; $4B0B: $00
    ld e, $65                                     ; $4B0C: $1E $65
    ld d, a                                       ; $4B0E: $57
    nop                                           ; $4B0F: $00
    ld e, $9C                                     ; $4B10: $1E $9C
    ld d, a                                       ; $4B12: $57
    nop                                           ; $4B13: $00
    ld e, $B6                                     ; $4B14: $1E $B6
    ld d, a                                       ; $4B16: $57
    nop                                           ; $4B17: $00
    ld e, $23                                     ; $4B18: $1E $23
    ld e, b                                       ; $4B1A: $58
    nop                                           ; $4B1B: $00
    ld e, $5A                                     ; $4B1C: $1E $5A
    ld e, b                                       ; $4B1E: $58
    ld bc, $1E02                                  ; $4B1F: $01 $02 $1E
    sub c                                         ; $4B22: $91
    ld e, h                                       ; $4B23: $5C
    dec b                                         ; $4B24: $05
    nop                                           ; $4B25: $00
    ld e, $9A                                     ; $4B26: $1E $9A
    ld e, h                                       ; $4B28: $5C
    nop                                           ; $4B29: $00
    ld e, $BB                                     ; $4B2A: $1E $BB
    ld e, h                                       ; $4B2C: $5C
    nop                                           ; $4B2D: $00
    ld e, $E2                                     ; $4B2E: $1E $E2
    ld e, h                                       ; $4B30: $5C
    nop                                           ; $4B31: $00
    ld e, $0D                                     ; $4B32: $1E $0D
    ld e, l                                       ; $4B34: $5D
    nop                                           ; $4B35: $00
    ld e, $34                                     ; $4B36: $1E $34
    ld e, l                                       ; $4B38: $5D
    ld bc, $1E02                                  ; $4B39: $01 $02 $1E
    db $D3                                        ; $4B3C: $D3
    ld h, c                                       ; $4B3D: $61
    ld bc, $1E02                                  ; $4B3E: $01 $02 $1E
    call c, $0B61                                 ; $4B41: $DC $61 $0B
    nop                                           ; $4B44: $00
    ld e, $0D                                     ; $4B45: $1E $0D
    ld h, d                                       ; $4B47: $62
    ld bc, $3C1E                                  ; $4B48: $01 $1E $3C
    ld h, d                                       ; $4B4B: $62
    nop                                           ; $4B4C: $00
    ld e, $44                                     ; $4B4D: $1E $44
    ld h, d                                       ; $4B4F: $62
    nop                                           ; $4B50: $00
    ld e, $5F                                     ; $4B51: $1E $5F
    ld h, d                                       ; $4B53: $62
    nop                                           ; $4B54: $00
    ld e, $76                                     ; $4B55: $1E $76
    ld h, d                                       ; $4B57: $62
    nop                                           ; $4B58: $00
    ld e, $99                                     ; $4B59: $1E $99
    ld h, d                                       ; $4B5B: $62
    nop                                           ; $4B5C: $00
    ld e, $A9                                     ; $4B5D: $1E $A9
    ld h, d                                       ; $4B5F: $62
    nop                                           ; $4B60: $00
    ld e, $C7                                     ; $4B61: $1E $C7
    ld h, d                                       ; $4B63: $62
    nop                                           ; $4B64: $00
    ld e, $D5                                     ; $4B65: $1E $D5
    ld h, d                                       ; $4B67: $62
    nop                                           ; $4B68: $00
    ld e, $0E                                     ; $4B69: $1E $0E
    ld h, e                                       ; $4B6B: $63
    nop                                           ; $4B6C: $00
    ld e, $43                                     ; $4B6D: $1E $43
    ld h, e                                       ; $4B6F: $63
    dec bc                                        ; $4B70: $0B
    nop                                           ; $4B71: $00
    ld e, $25                                     ; $4B72: $1E $25
    ld h, d                                       ; $4B74: $62
    ld bc, $3C1E                                  ; $4B75: $01 $1E $3C
    ld h, d                                       ; $4B78: $62
    nop                                           ; $4B79: $00
    ld e, $44                                     ; $4B7A: $1E $44
    ld h, d                                       ; $4B7C: $62
    nop                                           ; $4B7D: $00
    ld e, $5F                                     ; $4B7E: $1E $5F
    ld h, d                                       ; $4B80: $62
    nop                                           ; $4B81: $00
    ld e, $76                                     ; $4B82: $1E $76
    ld h, d                                       ; $4B84: $62
    nop                                           ; $4B85: $00
    ld e, $99                                     ; $4B86: $1E $99
    ld h, d                                       ; $4B88: $62
    nop                                           ; $4B89: $00
    ld e, $A9                                     ; $4B8A: $1E $A9
    ld h, d                                       ; $4B8C: $62
    nop                                           ; $4B8D: $00
    ld e, $C7                                     ; $4B8E: $1E $C7
    ld h, d                                       ; $4B90: $62
    nop                                           ; $4B91: $00
    ld e, $D5                                     ; $4B92: $1E $D5
    ld h, d                                       ; $4B94: $62
    nop                                           ; $4B95: $00
    ld e, $0E                                     ; $4B96: $1E $0E
    ld h, e                                       ; $4B98: $63
    nop                                           ; $4B99: $00
    ld e, $43                                     ; $4B9A: $1E $43
    ld h, e                                       ; $4B9C: $63
    ld bc, $1E02                                  ; $4B9D: $01 $02 $1E
    and $6A                                       ; $4BA0: $E6 $6A
    dec b                                         ; $4BA2: $05
    nop                                           ; $4BA3: $00
    ld e, $ED                                     ; $4BA4: $1E $ED
    ld l, d                                       ; $4BA6: $6A
    nop                                           ; $4BA7: $00
    ld e, $0F                                     ; $4BA8: $1E $0F
    ld l, e                                       ; $4BAA: $6B
    nop                                           ; $4BAB: $00
    ld e, $42                                     ; $4BAC: $1E $42
    ld l, e                                       ; $4BAE: $6B
    nop                                           ; $4BAF: $00
    ld e, $89                                     ; $4BB0: $1E $89
    ld l, e                                       ; $4BB2: $6B
    nop                                           ; $4BB3: $00
    ld e, $B8                                     ; $4BB4: $1E $B8
    ld l, e                                       ; $4BB6: $6B
    ld bc, $1E02                                  ; $4BB7: $01 $02 $1E
    ld b, l                                       ; $4BBA: $45
    ld l, l                                       ; $4BBB: $6D
    ld [$1E01], sp                                ; $4BBC: $08 $01 $1E
    ld c, [hl]                                    ; $4BBF: $4E
    ld l, l                                       ; $4BC0: $6D
    nop                                           ; $4BC1: $00
    ld e, $56                                     ; $4BC2: $1E $56
    ld l, l                                       ; $4BC4: $6D
    nop                                           ; $4BC5: $00
    ld e, $80                                     ; $4BC6: $1E $80
    ld l, l                                       ; $4BC8: $6D
    nop                                           ; $4BC9: $00
    ld e, $AC                                     ; $4BCA: $1E $AC
    ld l, l                                       ; $4BCC: $6D
    nop                                           ; $4BCD: $00
    ld e, $09                                     ; $4BCE: $1E $09
    ld l, [hl]                                    ; $4BD0: $6E
    nop                                           ; $4BD1: $00
    ld e, $52                                     ; $4BD2: $1E $52
    ld l, [hl]                                    ; $4BD4: $6E
    nop                                           ; $4BD5: $00
    ld e, $A1                                     ; $4BD6: $1E $A1
    ld l, [hl]                                    ; $4BD8: $6E
    nop                                           ; $4BD9: $00
    ld e, $C9                                     ; $4BDA: $1E $C9
    ld l, [hl]                                    ; $4BDC: $6E
    ld bc, $1E02                                  ; $4BDD: $01 $02 $1E
    xor e                                         ; $4BE0: $AB
    ld [hl], d                                    ; $4BE1: $72
    add hl, bc                                    ; $4BE2: $09
    nop                                           ; $4BE3: $00
    ld e, $B4                                     ; $4BE4: $1E $B4
    ld [hl], d                                    ; $4BE6: $72
    nop                                           ; $4BE7: $00
    ld e, $F3                                     ; $4BE8: $1E $F3
    ld [hl], d                                    ; $4BEA: $72
    nop                                           ; $4BEB: $00
    ld e, $21                                     ; $4BEC: $1E $21
    ld [hl], e                                    ; $4BEE: $73
    nop                                           ; $4BEF: $00
    ld e, $40                                     ; $4BF0: $1E $40
    ld [hl], e                                    ; $4BF2: $73
    nop                                           ; $4BF3: $00
    ld e, $82                                     ; $4BF4: $1E $82
    ld [hl], e                                    ; $4BF6: $73
    nop                                           ; $4BF7: $00
    ld e, $C4                                     ; $4BF8: $1E $C4
    ld [hl], e                                    ; $4BFA: $73
    nop                                           ; $4BFB: $00
    ld e, $FC                                     ; $4BFC: $1E $FC
    ld [hl], e                                    ; $4BFE: $73
    nop                                           ; $4BFF: $00
    ld e, $69                                     ; $4C00: $1E $69
    ld [hl], h                                    ; $4C02: $74
    nop                                           ; $4C03: $00
    ld e, $89                                     ; $4C04: $1E $89
    ld [hl], h                                    ; $4C06: $74
    ld [bc], a                                    ; $4C07: $02
    inc b                                         ; $4C08: $04
    ld a, [de]                                    ; $4C09: $1A
    ld l, l                                       ; $4C0A: $6D
    ld [hl], c                                    ; $4C0B: $71
    ld bc, $741A                                  ; $4C0C: $01 $1A $74
    ld [hl], c                                    ; $4C0F: $71
    ld bc, $1A02                                  ; $4C10: $01 $02 $1A
    db $DD                                        ; $4C13: $DD
    ld [hl], c                                    ; $4C14: $71
    ld [$1A00], sp                                ; $4C15: $08 $00 $1A
    db $E4                                        ; $4C18: $E4
    ld [hl], c                                    ; $4C19: $71
    nop                                           ; $4C1A: $00
    ld a, [de]                                    ; $4C1B: $1A
    dec b                                         ; $4C1C: $05
    ld [hl], d                                    ; $4C1D: $72
    nop                                           ; $4C1E: $00
    ld a, [de]                                    ; $4C1F: $1A
    ld hl, $0072                                  ; $4C20: $21 $72 $00
    ld a, [de]                                    ; $4C23: $1A
    ld b, d                                       ; $4C24: $42
    ld [hl], d                                    ; $4C25: $72
    nop                                           ; $4C26: $00
    ld a, [de]                                    ; $4C27: $1A
    halt                                          ; $4C28: $76
    ld [hl], d                                    ; $4C29: $72
    nop                                           ; $4C2A: $00
    ld a, [de]                                    ; $4C2B: $1A
    sub c                                         ; $4C2C: $91
    ld [hl], d                                    ; $4C2D: $72
    nop                                           ; $4C2E: $00
    ld a, [de]                                    ; $4C2F: $1A
    rst $00                                       ; $4C30: $C7
    ld [hl], d                                    ; $4C31: $72
    nop                                           ; $4C32: $00
    ld a, [de]                                    ; $4C33: $1A
    add sp, $72                                   ; $4C34: $E8 $72
    inc bc                                        ; $4C36: $03
    ld [bc], a                                    ; $4C37: $02
    ld a, [de]                                    ; $4C38: $1A
    nop                                           ; $4C39: $00
    ld b, b                                       ; $4C3A: $40
    inc bc                                        ; $4C3B: $03
    ld a, [de]                                    ; $4C3C: $1A
    rlca                                          ; $4C3D: $07
    ld b, b                                       ; $4C3E: $40
    ld [bc], a                                    ; $4C3F: $02
    ld a, [de]                                    ; $4C40: $1A
    db $10                                        ; $4C41: $10
    ld b, b                                       ; $4C42: $40
    ld [bc], a                                    ; $4C43: $02
    inc b                                         ; $4C44: $04
    ld a, [de]                                    ; $4C45: $1A
    ld b, a                                       ; $4C46: $47
    ld b, c                                       ; $4C47: $41
    inc bc                                        ; $4C48: $03
    ld a, [de]                                    ; $4C49: $1A
    ld d, b                                       ; $4C4A: $50
    ld b, c                                       ; $4C4B: $41
    inc bc                                        ; $4C4C: $03
    inc b                                         ; $4C4D: $04
    ld a, [de]                                    ; $4C4E: $1A
    xor l                                         ; $4C4F: $AD
    ld b, c                                       ; $4C50: $41
    inc bc                                        ; $4C51: $03
    ld a, [de]                                    ; $4C52: $1A
    or [hl]                                       ; $4C53: $B6
    ld b, c                                       ; $4C54: $41
    ld [bc], a                                    ; $4C55: $02
    ld a, [de]                                    ; $4C56: $1A
    cp a                                          ; $4C57: $BF
    ld b, c                                       ; $4C58: $41
    ld bc, $1A01                                  ; $4C59: $01 $01 $1A
    ret z                                         ; $4C5C: $C8

    ld b, c                                       ; $4C5D: $41
    ld [bc], a                                    ; $4C5E: $02
    inc b                                         ; $4C5F: $04
    ld a, [de]                                    ; $4C60: $1A
    daa                                           ; $4C61: $27
    ld b, d                                       ; $4C62: $42
    inc bc                                        ; $4C63: $03
    ld a, [de]                                    ; $4C64: $1A
    jr nc, jr_021_4CA9                            ; $4C65: $30 $42

    ld [bc], a                                    ; $4C67: $02
    inc b                                         ; $4C68: $04
    ld a, [de]                                    ; $4C69: $1A
    adc l                                         ; $4C6A: $8D
    ld b, d                                       ; $4C6B: $42
    ld [bc], a                                    ; $4C6C: $02
    ld a, [de]                                    ; $4C6D: $1A
    sub [hl]                                      ; $4C6E: $96
    ld b, d                                       ; $4C6F: $42
    ld [bc], a                                    ; $4C70: $02
    ld bc, $F31A                                  ; $4C71: $01 $1A $F3
    ld b, d                                       ; $4C74: $42
    ld bc, $FC1A                                  ; $4C75: $01 $1A $FC
    ld b, d                                       ; $4C78: $42
    ld [bc], a                                    ; $4C79: $02
    ld bc, $051A                                  ; $4C7A: $01 $1A $05
    ld b, e                                       ; $4C7D: $43
    ld bc, $0D1A                                  ; $4C7E: $01 $1A $0D
    ld b, e                                       ; $4C81: $43
    dec b                                         ; $4C82: $05
    ld [bc], a                                    ; $4C83: $02
    ld a, [de]                                    ; $4C84: $1A
    ld l, h                                       ; $4C85: $6C
    ld b, e                                       ; $4C86: $43
    ld bc, $751A                                  ; $4C87: $01 $1A $75
    ld b, e                                       ; $4C8A: $43
    inc b                                         ; $4C8B: $04
    ld a, [de]                                    ; $4C8C: $1A
    ld a, [hl]                                    ; $4C8D: $7E
    ld b, e                                       ; $4C8E: $43
    ld [bc], a                                    ; $4C8F: $02
    ld a, [de]                                    ; $4C90: $1A
    add a                                         ; $4C91: $87
    ld b, e                                       ; $4C92: $43
    ld [bc], a                                    ; $4C93: $02
    ld a, [de]                                    ; $4C94: $1A
    sub b                                         ; $4C95: $90
    ld b, e                                       ; $4C96: $43
    ld [bc], a                                    ; $4C97: $02
    inc bc                                        ; $4C98: $03
    ld a, [de]                                    ; $4C99: $1A
    db $EB                                        ; $4C9A: $EB
    ld b, e                                       ; $4C9B: $43
    inc b                                         ; $4C9C: $04
    ld a, [de]                                    ; $4C9D: $1A
    db $F4                                        ; $4C9E: $F4
    ld b, e                                       ; $4C9F: $43
    ld bc, $1A03                                  ; $4CA0: $01 $03 $1A
    ld d, c                                       ; $4CA3: $51
    ld b, h                                       ; $4CA4: $44
    inc bc                                        ; $4CA5: $03
    ld bc, $5A1A                                  ; $4CA6: $01 $1A $5A

jr_021_4CA9:
    ld b, h                                       ; $4CA9: $44
    ld bc, $621A                                  ; $4CAA: $01 $1A $62
    ld b, h                                       ; $4CAD: $44
    ld bc, $6A1A                                  ; $4CAE: $01 $1A $6A
    ld b, h                                       ; $4CB1: $44
    inc bc                                        ; $4CB2: $03
    ld bc, $C91A                                  ; $4CB3: $01 $1A $C9
    ld b, h                                       ; $4CB6: $44
    inc b                                         ; $4CB7: $04
    ld a, [de]                                    ; $4CB8: $1A
    jp nc, $0044                                  ; $4CB9: $D2 $44 $00

    ld a, [de]                                    ; $4CBC: $1A
    push bc                                       ; $4CBD: $C5
    ld b, l                                       ; $4CBE: $45
    ld [bc], a                                    ; $4CBF: $02
    ld bc, $DB1A                                  ; $4CC0: $01 $1A $DB
    ld b, h                                       ; $4CC3: $44
    ld bc, $E31A                                  ; $4CC4: $01 $1A $E3
    ld b, h                                       ; $4CC7: $44
    ld bc, $1A01                                  ; $4CC8: $01 $01 $1A
    db $EB                                        ; $4CCB: $EB
    ld b, h                                       ; $4CCC: $44
    ld [$1A01], sp                                ; $4CCD: $08 $01 $1A
    ld a, [c]                                     ; $4CD0: $F2
    ld b, h                                       ; $4CD1: $44
    ld bc, $FA1A                                  ; $4CD2: $01 $1A $FA
    ld b, h                                       ; $4CD5: $44
    ld bc, $021A                                  ; $4CD6: $01 $1A $02
    ld b, l                                       ; $4CD9: $45
    ld bc, $0A1A                                  ; $4CDA: $01 $1A $0A
    ld b, l                                       ; $4CDD: $45
    ld bc, $121A                                  ; $4CDE: $01 $1A $12
    ld b, l                                       ; $4CE1: $45
    ld bc, $1A1A                                  ; $4CE2: $01 $1A $1A
    ld b, l                                       ; $4CE5: $45
    ld bc, $221A                                  ; $4CE6: $01 $1A $22
    ld b, l                                       ; $4CE9: $45
    ld bc, $2A1A                                  ; $4CEA: $01 $1A $2A
    ld b, l                                       ; $4CED: $45
    ld [bc], a                                    ; $4CEE: $02
    inc b                                         ; $4CEF: $04
    ld a, [de]                                    ; $4CF0: $1A
    ld c, $46                                     ; $4CF1: $0E $46
    inc bc                                        ; $4CF3: $03
    ld a, [de]                                    ; $4CF4: $1A
    rla                                           ; $4CF5: $17
    ld b, [hl]                                    ; $4CF6: $46
    inc bc                                        ; $4CF7: $03
    ld bc, $741A                                  ; $4CF8: $01 $1A $74
    ld b, [hl]                                    ; $4CFB: $46
    inc bc                                        ; $4CFC: $03
    ld a, [de]                                    ; $4CFD: $1A
    ld a, l                                       ; $4CFE: $7D
    ld b, [hl]                                    ; $4CFF: $46
    ld [bc], a                                    ; $4D00: $02
    ld a, [de]                                    ; $4D01: $1A
    add [hl]                                      ; $4D02: $86
    ld b, [hl]                                    ; $4D03: $46
    ld [bc], a                                    ; $4D04: $02
    ld bc, $E11A                                  ; $4D05: $01 $1A $E1
    ld b, [hl]                                    ; $4D08: $46
    ld [bc], a                                    ; $4D09: $02
    ld a, [de]                                    ; $4D0A: $1A
    ld [$0446], a                                 ; $4D0B: $EA $46 $04
    ld bc, $471A                                  ; $4D0E: $01 $1A $47
    ld b, a                                       ; $4D11: $47
    ld [bc], a                                    ; $4D12: $02
    ld a, [de]                                    ; $4D13: $1A
    ld d, b                                       ; $4D14: $50
    ld b, a                                       ; $4D15: $47
    ld [bc], a                                    ; $4D16: $02
    ld a, [de]                                    ; $4D17: $1A
    ld e, c                                       ; $4D18: $59
    ld b, a                                       ; $4D19: $47
    ld [bc], a                                    ; $4D1A: $02
    ld a, [de]                                    ; $4D1B: $1A
    ld h, d                                       ; $4D1C: $62
    ld b, a                                       ; $4D1D: $47
    ld [bc], a                                    ; $4D1E: $02
    ld [bc], a                                    ; $4D1F: $02
    ld a, [de]                                    ; $4D20: $1A
    cp a                                          ; $4D21: $BF
    ld b, a                                       ; $4D22: $47
    ld bc, $C81A                                  ; $4D23: $01 $1A $C8
    ld b, a                                       ; $4D26: $47
    ld [bc], a                                    ; $4D27: $02
    ld [bc], a                                    ; $4D28: $02
    ld a, [de]                                    ; $4D29: $1A
    dec h                                         ; $4D2A: $25
    ld c, b                                       ; $4D2B: $48
    ld bc, $2E1A                                  ; $4D2C: $01 $1A $2E
    ld c, b                                       ; $4D2F: $48
    ld [bc], a                                    ; $4D30: $02
    ld bc, $8B1A                                  ; $4D31: $01 $1A $8B
    ld c, b                                       ; $4D34: $48
    ld [bc], a                                    ; $4D35: $02
    ld a, [de]                                    ; $4D36: $1A
    sub h                                         ; $4D37: $94
    ld c, b                                       ; $4D38: $48
    inc b                                         ; $4D39: $04
    ld [bc], a                                    ; $4D3A: $02
    ld a, [de]                                    ; $4D3B: $1A
    pop af                                        ; $4D3C: $F1
    ld c, b                                       ; $4D3D: $48
    ld bc, $F81A                                  ; $4D3E: $01 $1A $F8
    ld c, b                                       ; $4D41: $48
    ld bc, $011A                                  ; $4D42: $01 $1A $01
    ld c, c                                       ; $4D45: $49
    ld bc, $0A1A                                  ; $4D46: $01 $1A $0A
    ld c, c                                       ; $4D49: $49
    inc b                                         ; $4D4A: $04
    ld [bc], a                                    ; $4D4B: $02
    rla                                           ; $4D4C: $17
    rst $08                                       ; $4D4D: $CF
    ld c, h                                       ; $4D4E: $4C
    ld bc, $D817                                  ; $4D4F: $01 $17 $D8
    ld c, h                                       ; $4D52: $4C
    ld bc, $E117                                  ; $4D53: $01 $17 $E1
    ld c, h                                       ; $4D56: $4C
    ld bc, $EA17                                  ; $4D57: $01 $17 $EA
    ld c, h                                       ; $4D5A: $4C
    ld bc, $1701                                  ; $4D5B: $01 $01 $17
    di                                            ; $4D5E: $F3
    ld c, h                                       ; $4D5F: $4C
    ld bc, $1702                                  ; $4D60: $01 $02 $17
    rst $30                                       ; $4D63: $F7
    ld c, h                                       ; $4D64: $4C
    ld bc, $1701                                  ; $4D65: $01 $01 $17
    nop                                           ; $4D68: $00
    ld c, l                                       ; $4D69: $4D
    ld bc, $1702                                  ; $4D6A: $01 $02 $17
    ld [HeaderComplementCheck], sp                ; $4D6D: $08 $4D $01
    ld bc, $1117                                  ; $4D70: $01 $17 $11
    ld c, l                                       ; $4D73: $4D
    ld bc, $1703                                  ; $4D74: $01 $03 $17
    add hl, de                                    ; $4D77: $19
    ld c, l                                       ; $4D78: $4D
    ld [bc], a                                    ; $4D79: $02
    ld [bc], a                                    ; $4D7A: $02
    rla                                           ; $4D7B: $17
    rla                                           ; $4D7C: $17
    ld d, d                                       ; $4D7D: $52
    ld bc, $2017                                  ; $4D7E: $01 $17 $20
    ld d, d                                       ; $4D81: $52
    ld bc, $1701                                  ; $4D82: $01 $01 $17
    add hl, hl                                    ; $4D85: $29
    ld d, d                                       ; $4D86: $52
    inc bc                                        ; $4D87: $03
    ld [bc], a                                    ; $4D88: $02
    rla                                           ; $4D89: $17
    and e                                         ; $4D8A: $A3
    ld d, d                                       ; $4D8B: $52
    ld [bc], a                                    ; $4D8C: $02
    rla                                           ; $4D8D: $17
    xor h                                         ; $4D8E: $AC
    ld d, d                                       ; $4D8F: $52
    inc bc                                        ; $4D90: $03
    rla                                           ; $4D91: $17
    or l                                          ; $4D92: $B5
    ld d, d                                       ; $4D93: $52
    ld [bc], a                                    ; $4D94: $02
    ld bc, $BE17                                  ; $4D95: $01 $17 $BE
    ld d, d                                       ; $4D98: $52
    ld bc, $C617                                  ; $4D99: $01 $17 $C6
    ld d, d                                       ; $4D9C: $52
    inc bc                                        ; $4D9D: $03
    ld bc, $D117                                  ; $4D9E: $01 $17 $D1
    ld d, e                                       ; $4DA1: $53
    ld [bc], a                                    ; $4DA2: $02
    rla                                           ; $4DA3: $17
    jp c, $0153                                   ; $4DA4: $DA $53 $01

    rla                                           ; $4DA7: $17
    db $E3                                        ; $4DA8: $E3
    ld d, e                                       ; $4DA9: $53
    ld bc, $1701                                  ; $4DAA: $01 $01 $17
    ld [$0153], a                                 ; $4DAD: $EA $53 $01
    ld [bc], a                                    ; $4DB0: $02
    rla                                           ; $4DB1: $17
    ld a, [c]                                     ; $4DB2: $F2
    ld d, e                                       ; $4DB3: $53
    ld b, $01                                     ; $4DB4: $06 $01
    rla                                           ; $4DB6: $17
    ld sp, hl                                     ; $4DB7: $F9
    ld d, e                                       ; $4DB8: $53
    nop                                           ; $4DB9: $00
    rla                                           ; $4DBA: $17
    ld bc, $0054                                  ; $4DBB: $01 $54 $00
    rla                                           ; $4DBE: $17
    daa                                           ; $4DBF: $27
    ld d, h                                       ; $4DC0: $54
    nop                                           ; $4DC1: $00
    rla                                           ; $4DC2: $17
    sbc e                                         ; $4DC3: $9B
    ld d, h                                       ; $4DC4: $54
    nop                                           ; $4DC5: $00
    rla                                           ; $4DC6: $17
    jp nz, $0054                                  ; $4DC7: $C2 $54 $00

    rla                                           ; $4DCA: $17
    ld [$0255], sp                                ; $4DCB: $08 $55 $02
    ld bc, $7317                                  ; $4DCE: $01 $17 $73
    ld d, a                                       ; $4DD1: $57
    ld bc, $7C17                                  ; $4DD2: $01 $17 $7C
    ld d, a                                       ; $4DD5: $57
    ld bc, $1702                                  ; $4DD6: $01 $02 $17
    add l                                         ; $4DD9: $85
    ld d, a                                       ; $4DDA: $57
    ld bc, $1701                                  ; $4DDB: $01 $01 $17
    adc [hl]                                      ; $4DDE: $8E
    ld d, a                                       ; $4DDF: $57
    ld [bc], a                                    ; $4DE0: $02
    inc b                                         ; $4DE1: $04
    rla                                           ; $4DE2: $17
    dec h                                         ; $4DE3: $25
    ld e, h                                       ; $4DE4: $5C
    ld [bc], a                                    ; $4DE5: $02
    rla                                           ; $4DE6: $17
    ld l, $5C                                     ; $4DE7: $2E $5C
    ld [bc], a                                    ; $4DE9: $02
    ld [bc], a                                    ; $4DEA: $02
    rla                                           ; $4DEB: $17
    and h                                         ; $4DEC: $A4
    ld e, h                                       ; $4DED: $5C
    ld bc, $AB17                                  ; $4DEE: $01 $17 $AB
    ld e, h                                       ; $4DF1: $5C
    ld bc, $1701                                  ; $4DF2: $01 $01 $17
    ld hl, $015D                                  ; $4DF5: $21 $5D $01
    ld bc, $2817                                  ; $4DF8: $01 $17 $28
    ld e, l                                       ; $4DFB: $5D
    ld bc, $2A04                                  ; $4DFC: $01 $04 $2A
    ld l, e                                       ; $4DFF: $6B
    ld d, c                                       ; $4E00: $51
    ld bc, $2A04                                  ; $4E01: $01 $04 $2A
    halt                                          ; $4E04: $76
    ld d, c                                       ; $4E05: $51
    ld bc, $2A03                                  ; $4E06: $01 $03 $2A
    xor c                                         ; $4E09: $A9
    ld e, a                                       ; $4E0A: $5F
    ld [bc], a                                    ; $4E0B: $02
    ld [bc], a                                    ; $4E0C: $02
    rra                                           ; $4E0D: $1F
    and a                                         ; $4E0E: $A7
    ld e, a                                       ; $4E0F: $5F
    ld bc, $B61F                                  ; $4E10: $01 $1F $B6
    ld e, a                                       ; $4E13: $5F
    ld a, [bc]                                    ; $4E14: $0A
    ld [bc], a                                    ; $4E15: $02
    rra                                           ; $4E16: $1F
    add [hl]                                      ; $4E17: $86
    ld h, d                                       ; $4E18: $62
    ld [bc], a                                    ; $4E19: $02
    rra                                           ; $4E1A: $1F
    adc a                                         ; $4E1B: $8F
    ld h, d                                       ; $4E1C: $62
    ld [bc], a                                    ; $4E1D: $02
    rra                                           ; $4E1E: $1F
    sbc b                                         ; $4E1F: $98
    ld h, d                                       ; $4E20: $62
    ld [bc], a                                    ; $4E21: $02
    rra                                           ; $4E22: $1F
    and c                                         ; $4E23: $A1
    ld h, d                                       ; $4E24: $62
    ld [bc], a                                    ; $4E25: $02
    rra                                           ; $4E26: $1F
    xor d                                         ; $4E27: $AA
    ld h, d                                       ; $4E28: $62
    ld [bc], a                                    ; $4E29: $02
    rra                                           ; $4E2A: $1F
    or e                                          ; $4E2B: $B3
    ld h, d                                       ; $4E2C: $62
    ld [bc], a                                    ; $4E2D: $02
    rra                                           ; $4E2E: $1F
    cp h                                          ; $4E2F: $BC
    ld h, d                                       ; $4E30: $62
    nop                                           ; $4E31: $00
    rra                                           ; $4E32: $1F
    push bc                                       ; $4E33: $C5
    ld h, d                                       ; $4E34: $62
    nop                                           ; $4E35: $00
    rra                                           ; $4E36: $1F
    jp z, $0062                                   ; $4E37: $CA $62 $00

    rra                                           ; $4E3A: $1F
    rst $08                                       ; $4E3B: $CF
    ld h, d                                       ; $4E3C: $62
    ld e, $01                                     ; $4E3D: $1E $01
    rra                                           ; $4E3F: $1F
    call nc, $0162                                ; $4E40: $D4 $62 $01
    rra                                           ; $4E43: $1F
    ld a, [de]                                    ; $4E44: $1A
    ld h, e                                       ; $4E45: $63
    ld bc, $9F1F                                  ; $4E46: $01 $1F $9F
    ld h, e                                       ; $4E49: $63
    ld bc, $EE1F                                  ; $4E4A: $01 $1F $EE
    ld h, e                                       ; $4E4D: $63
    ld bc, $341F                                  ; $4E4E: $01 $1F $34
    ld h, h                                       ; $4E51: $64
    ld bc, $161F                                  ; $4E52: $01 $1F $16
    ld h, l                                       ; $4E55: $65
    ld bc, $0A1F                                  ; $4E56: $01 $1F $0A
    ld h, [hl]                                    ; $4E59: $66
    ld bc, $0B1F                                  ; $4E5A: $01 $1F $0B
    ld h, [hl]                                    ; $4E5D: $66
    ld bc, $0C1F                                  ; $4E5E: $01 $1F $0C
    ld h, [hl]                                    ; $4E61: $66
    ld bc, $0D1F                                  ; $4E62: $01 $1F $0D
    ld h, [hl]                                    ; $4E65: $66
    ld bc, $0E1F                                  ; $4E66: $01 $1F $0E
    ld h, [hl]                                    ; $4E69: $66
    ld bc, $9C1F                                  ; $4E6A: $01 $1F $9C
    ld h, [hl]                                    ; $4E6D: $66
    ld bc, $A41F                                  ; $4E6E: $01 $1F $A4
    ld h, [hl]                                    ; $4E71: $66
    ld bc, $D01F                                  ; $4E72: $01 $1F $D0
    ld h, [hl]                                    ; $4E75: $66
    ld bc, $D81F                                  ; $4E76: $01 $1F $D8
    ld h, [hl]                                    ; $4E79: $66
    ld bc, $E01F                                  ; $4E7A: $01 $1F $E0
    ld h, [hl]                                    ; $4E7D: $66
    ld bc, $021F                                  ; $4E7E: $01 $1F $02
    ld h, a                                       ; $4E81: $67
    ld bc, $571F                                  ; $4E82: $01 $1F $57
    ld h, a                                       ; $4E85: $67
    ld bc, $7A1F                                  ; $4E86: $01 $1F $7A
    ld h, a                                       ; $4E89: $67
    ld bc, $9D1F                                  ; $4E8A: $01 $1F $9D
    ld h, a                                       ; $4E8D: $67
    ld bc, $A51F                                  ; $4E8E: $01 $1F $A5
    ld h, a                                       ; $4E91: $67
    ld bc, $AD1F                                  ; $4E92: $01 $1F $AD
    ld h, a                                       ; $4E95: $67
    ld bc, $DA1F                                  ; $4E96: $01 $1F $DA
    ld h, a                                       ; $4E99: $67
    ld bc, $E21F                                  ; $4E9A: $01 $1F $E2
    ld h, a                                       ; $4E9D: $67
    ld bc, $0F1F                                  ; $4E9E: $01 $1F $0F
    ld l, b                                       ; $4EA1: $68
    ld bc, $171F                                  ; $4EA2: $01 $1F $17
    ld l, b                                       ; $4EA5: $68
    ld bc, $1F1F                                  ; $4EA6: $01 $1F $1F
    ld l, b                                       ; $4EA9: $68
    ld bc, $271F                                  ; $4EAA: $01 $1F $27
    ld l, b                                       ; $4EAD: $68
    ld bc, $2F1F                                  ; $4EAE: $01 $1F $2F
    ld l, b                                       ; $4EB1: $68
    ld bc, $371F                                  ; $4EB2: $01 $1F $37
    ld l, b                                       ; $4EB5: $68
    db $10                                        ; $4EB6: $10
    ld bc, $101F                                  ; $4EB7: $01 $1F $10
    ld l, c                                       ; $4EBA: $69
    ld bc, $191F                                  ; $4EBB: $01 $1F $19
    ld l, c                                       ; $4EBE: $69
    ld bc, $221F                                  ; $4EBF: $01 $1F $22
    ld l, c                                       ; $4EC2: $69
    ld bc, $2B1F                                  ; $4EC3: $01 $1F $2B
    ld l, c                                       ; $4EC6: $69
    ld bc, $341F                                  ; $4EC7: $01 $1F $34
    ld l, c                                       ; $4ECA: $69
    ld bc, $3D1F                                  ; $4ECB: $01 $1F $3D
    ld l, c                                       ; $4ECE: $69
    inc bc                                        ; $4ECF: $03
    rra                                           ; $4ED0: $1F
    ld b, [hl]                                    ; $4ED1: $46
    ld l, c                                       ; $4ED2: $69
    ld [bc], a                                    ; $4ED3: $02
    rra                                           ; $4ED4: $1F
    ld c, a                                       ; $4ED5: $4F
    ld l, c                                       ; $4ED6: $69
    ld [bc], a                                    ; $4ED7: $02
    rra                                           ; $4ED8: $1F
    ld e, b                                       ; $4ED9: $58
    ld l, c                                       ; $4EDA: $69
    inc bc                                        ; $4EDB: $03
    rra                                           ; $4EDC: $1F
    ld h, c                                       ; $4EDD: $61
    ld l, c                                       ; $4EDE: $69
    nop                                           ; $4EDF: $00
    rra                                           ; $4EE0: $1F
    ld l, d                                       ; $4EE1: $6A
    ld l, c                                       ; $4EE2: $69
    nop                                           ; $4EE3: $00
    rra                                           ; $4EE4: $1F
    ld l, a                                       ; $4EE5: $6F
    ld l, c                                       ; $4EE6: $69
    nop                                           ; $4EE7: $00
    rra                                           ; $4EE8: $1F
    ld a, b                                       ; $4EE9: $78
    ld l, c                                       ; $4EEA: $69
    nop                                           ; $4EEB: $00
    rra                                           ; $4EEC: $1F
    add c                                         ; $4EED: $81
    ld l, c                                       ; $4EEE: $69
    nop                                           ; $4EEF: $00
    rra                                           ; $4EF0: $1F
    add d                                         ; $4EF1: $82
    ld l, c                                       ; $4EF2: $69
    inc bc                                        ; $4EF3: $03
    rra                                           ; $4EF4: $1F
    sub e                                         ; $4EF5: $93
    ld l, c                                       ; $4EF6: $69
    ld [de], a                                    ; $4EF7: $12
    ld bc, $9C1F                                  ; $4EF8: $01 $1F $9C
    ld l, c                                       ; $4EFB: $69
    ld bc, $D01F                                  ; $4EFC: $01 $1F $D0
    ld l, c                                       ; $4EFF: $69
    ld bc, $691F                                  ; $4F00: $01 $1F $69
    ld l, e                                       ; $4F03: $6B
    ld bc, $911F                                  ; $4F04: $01 $1F $91
    ld l, h                                       ; $4F07: $6C
    ld bc, $671F                                  ; $4F08: $01 $1F $67
    ld l, [hl]                                    ; $4F0B: $6E
    ld bc, $571F                                  ; $4F0C: $01 $1F $57
    ld l, a                                       ; $4F0F: $6F
    ld bc, $5F1F                                  ; $4F10: $01 $1F $5F
    ld l, a                                       ; $4F13: $6F
    ld bc, $671F                                  ; $4F14: $01 $1F $67
    ld l, a                                       ; $4F17: $6F
    ld bc, $6F1F                                  ; $4F18: $01 $1F $6F
    ld l, a                                       ; $4F1B: $6F
    ld bc, $771F                                  ; $4F1C: $01 $1F $77
    ld l, a                                       ; $4F1F: $6F
    ld bc, $7F1F                                  ; $4F20: $01 $1F $7F
    ld l, a                                       ; $4F23: $6F
    ld bc, $801F                                  ; $4F24: $01 $1F $80
    ld l, a                                       ; $4F27: $6F
    ld bc, $881F                                  ; $4F28: $01 $1F $88
    ld l, a                                       ; $4F2B: $6F
    ld bc, $901F                                  ; $4F2C: $01 $1F $90
    ld l, a                                       ; $4F2F: $6F
    ld bc, $BC1F                                  ; $4F30: $01 $1F $BC
    ld l, a                                       ; $4F33: $6F
    ld bc, $C41F                                  ; $4F34: $01 $1F $C4
    ld l, a                                       ; $4F37: $6F
    ld bc, $CC1F                                  ; $4F38: $01 $1F $CC
    ld l, a                                       ; $4F3B: $6F
    ld bc, $D41F                                  ; $4F3C: $01 $1F $D4
    ld l, a                                       ; $4F3F: $6F
    inc b                                         ; $4F40: $04
    inc b                                         ; $4F41: $04
    rra                                           ; $4F42: $1F
    rst $20                                       ; $4F43: $E7
    ld [hl], h                                    ; $4F44: $74
    nop                                           ; $4F45: $00
    rra                                           ; $4F46: $1F
    ldh a, [$74]                                  ; $4F47: $F0 $74
    inc b                                         ; $4F49: $04
    rra                                           ; $4F4A: $1F
    push af                                       ; $4F4B: $F5
    ld [hl], h                                    ; $4F4C: $74
    inc b                                         ; $4F4D: $04
    rra                                           ; $4F4E: $1F
    cp $74                                        ; $4F4F: $FE $74
    ld [bc], a                                    ; $4F51: $02
    ld bc, $051F                                  ; $4F52: $01 $1F $05
    ld [hl], l                                    ; $4F55: $75
    ld bc, $6D1F                                  ; $4F56: $01 $1F $6D
    halt                                          ; $4F59: $76
    inc b                                         ; $4F5A: $04
    inc bc                                        ; $4F5B: $03
    rra                                           ; $4F5C: $1F
    ld [hl], l                                    ; $4F5D: $75
    ld [hl], a                                    ; $4F5E: $77
    ld bc, $7E1F                                  ; $4F5F: $01 $1F $7E
    ld [hl], a                                    ; $4F62: $77
    ld bc, $871F                                  ; $4F63: $01 $1F $87
    ld [hl], a                                    ; $4F66: $77
    ld bc, $901F                                  ; $4F67: $01 $1F $90
    ld [hl], a                                    ; $4F6A: $77
    ld bc, $1F01                                  ; $4F6B: $01 $01 $1F
    sub h                                         ; $4F6E: $94
    ld [hl], a                                    ; $4F6F: $77
    nop                                           ; $4F70: $00
    ld [bc], a                                    ; $4F71: $02
    ld [bc], a                                    ; $4F72: $02
    dec h                                         ; $4F73: $25
    ld l, $5E                                     ; $4F74: $2E $5E
    nop                                           ; $4F76: $00
    dec h                                         ; $4F77: $25
    scf                                           ; $4F78: $37
    ld e, [hl]                                    ; $4F79: $5E
    ld [bc], a                                    ; $4F7A: $02
    ld bc, $4F25                                  ; $4F7B: $01 $25 $4F
    ld e, [hl]                                    ; $4F7E: $5E
    nop                                           ; $4F7F: $00
    dec h                                         ; $4F80: $25
    ld e, b                                       ; $4F81: $58
    ld e, [hl]                                    ; $4F82: $5E
    inc b                                         ; $4F83: $04
    ld [bc], a                                    ; $4F84: $02
    dec h                                         ; $4F85: $25
    ld [hl], b                                    ; $4F86: $70
    ld e, [hl]                                    ; $4F87: $5E
    ld [bc], a                                    ; $4F88: $02
    dec h                                         ; $4F89: $25
    ld a, c                                       ; $4F8A: $79
    ld e, [hl]                                    ; $4F8B: $5E
    ld bc, $8225                                  ; $4F8C: $01 $25 $82
    ld e, [hl]                                    ; $4F8F: $5E
    ld bc, $0422                                  ; $4F90: $01 $22 $04
    ld b, b                                       ; $4F93: $40
    inc bc                                        ; $4F94: $03
    nop                                           ; $4F95: $00
    dec h                                         ; $4F96: $25
    adc e                                         ; $4F97: $8B
    ld e, [hl]                                    ; $4F98: $5E
    nop                                           ; $4F99: $00
    dec h                                         ; $4F9A: $25
    db $D3                                        ; $4F9B: $D3
    ld e, [hl]                                    ; $4F9C: $5E
    ld bc, $1325                                  ; $4F9D: $01 $25 $13
    ld e, a                                       ; $4FA0: $5F
    ld [bc], a                                    ; $4FA1: $02
    ld [bc], a                                    ; $4FA2: $02
    dec h                                         ; $4FA3: $25
    dec de                                        ; $4FA4: $1B
    ld e, a                                       ; $4FA5: $5F
    inc bc                                        ; $4FA6: $03
    dec h                                         ; $4FA7: $25
    inc h                                         ; $4FA8: $24
    ld e, a                                       ; $4FA9: $5F
    ld [bc], a                                    ; $4FAA: $02
    inc b                                         ; $4FAB: $04
    dec h                                         ; $4FAC: $25
    dec l                                         ; $4FAD: $2D
    ld e, a                                       ; $4FAE: $5F
    ld bc, $3625                                  ; $4FAF: $01 $25 $36
    ld e, a                                       ; $4FB2: $5F
    ld bc, $2502                                  ; $4FB3: $01 $02 $25
    ccf                                           ; $4FB6: $3F
    ld e, a                                       ; $4FB7: $5F
    ld [bc], a                                    ; $4FB8: $02
    inc bc                                        ; $4FB9: $03
    dec h                                         ; $4FBA: $25
    and a                                         ; $4FBB: $A7
    ld h, [hl]                                    ; $4FBC: $66
    nop                                           ; $4FBD: $00
    dec h                                         ; $4FBE: $25
    xor [hl]                                      ; $4FBF: $AE
    ld h, [hl]                                    ; $4FC0: $66
    ld [bc], a                                    ; $4FC1: $02
    ld bc, $C625                                  ; $4FC2: $01 $25 $C6
    ld h, [hl]                                    ; $4FC5: $66
    nop                                           ; $4FC6: $00
    dec h                                         ; $4FC7: $25
    rst $08                                       ; $4FC8: $CF
    ld h, [hl]                                    ; $4FC9: $66
    inc bc                                        ; $4FCA: $03
    inc bc                                        ; $4FCB: $03
    dec h                                         ; $4FCC: $25
    ld [hl], a                                    ; $4FCD: $77
    ld h, a                                       ; $4FCE: $67
    ld [bc], a                                    ; $4FCF: $02
    dec h                                         ; $4FD0: $25
    ld a, [hl]                                    ; $4FD1: $7E
    ld h, a                                       ; $4FD2: $67
    ld bc, $8725                                  ; $4FD3: $01 $25 $87
    ld h, a                                       ; $4FD6: $67
    ld bc, $2500                                  ; $4FD7: $01 $00 $25
    adc [hl]                                      ; $4FDA: $8E
    ld h, a                                       ; $4FDB: $67
    ld [bc], a                                    ; $4FDC: $02
    ld [bc], a                                    ; $4FDD: $02
    dec h                                         ; $4FDE: $25
    xor a                                         ; $4FDF: $AF
    ld h, a                                       ; $4FE0: $67
    ld bc, $B625                                  ; $4FE1: $01 $25 $B6
    ld h, a                                       ; $4FE4: $67
    ld [bc], a                                    ; $4FE5: $02
    ld [bc], a                                    ; $4FE6: $02
    dec h                                         ; $4FE7: $25
    cp l                                          ; $4FE8: $BD
    ld h, a                                       ; $4FE9: $67
    ld [bc], a                                    ; $4FEA: $02
    dec h                                         ; $4FEB: $25
    call nz, $0267                                ; $4FEC: $C4 $67 $02
    ld [bc], a                                    ; $4FEF: $02
    dec h                                         ; $4FF0: $25
    sbc h                                         ; $4FF1: $9C
    ld l, c                                       ; $4FF2: $69
    inc bc                                        ; $4FF3: $03
    dec h                                         ; $4FF4: $25
    and e                                         ; $4FF5: $A3
    ld l, c                                       ; $4FF6: $69
    inc bc                                        ; $4FF7: $03
    ld bc, $AA25                                  ; $4FF8: $01 $25 $AA
    ld l, c                                       ; $4FFB: $69
    ld bc, $B225                                  ; $4FFC: $01 $25 $B2
    ld l, c                                       ; $4FFF: $69
    ld bc, $D625                                  ; $5000: $01 $25 $D6
    ld l, c                                       ; $5003: $69
    inc bc                                        ; $5004: $03
    nop                                           ; $5005: $00
    rla                                           ; $5006: $17
    nop                                           ; $5007: $00
    ld b, b                                       ; $5008: $40
    inc bc                                        ; $5009: $03
    rla                                           ; $500A: $17
    rlca                                          ; $500B: $07
    ld b, b                                       ; $500C: $40
    ld bc, $0E17                                  ; $500D: $01 $17 $0E
    ld b, b                                       ; $5010: $40
    ld bc, $1700                                  ; $5011: $01 $00 $17
    dec d                                         ; $5014: $15
    ld b, b                                       ; $5015: $40
    ld [bc], a                                    ; $5016: $02
    ld [bc], a                                    ; $5017: $02
    rla                                           ; $5018: $17
    ld a, a                                       ; $5019: $7F
    ld b, e                                       ; $501A: $43
    inc bc                                        ; $501B: $03
    rla                                           ; $501C: $17
    adc b                                         ; $501D: $88
    ld b, e                                       ; $501E: $43
    ld [bc], a                                    ; $501F: $02
    ld [bc], a                                    ; $5020: $02
    rla                                           ; $5021: $17
    adc a                                         ; $5022: $8F
    ld b, e                                       ; $5023: $43
    inc bc                                        ; $5024: $03
    rla                                           ; $5025: $17
    sbc b                                         ; $5026: $98
    ld b, e                                       ; $5027: $43
    ld [bc], a                                    ; $5028: $02
    ld bc, $9F17                                  ; $5029: $01 $17 $9F
    ld b, e                                       ; $502C: $43
    nop                                           ; $502D: $00
    rla                                           ; $502E: $17
    and a                                         ; $502F: $A7
    ld b, e                                       ; $5030: $43
    ld [bc], a                                    ; $5031: $02
    inc b                                         ; $5032: $04
    rla                                           ; $5033: $17
    xor [hl]                                      ; $5034: $AE
    ld b, h                                       ; $5035: $44
    inc b                                         ; $5036: $04
    rla                                           ; $5037: $17
    or l                                          ; $5038: $B5
    ld b, h                                       ; $5039: $44
    ld bc, $1701                                  ; $503A: $01 $01 $17
    cp h                                          ; $503D: $BC
    ld b, h                                       ; $503E: $44
    ld [bc], a                                    ; $503F: $02
    ld bc, $0D17                                  ; $5040: $01 $17 $0D
    ld c, h                                       ; $5043: $4C
    nop                                           ; $5044: $00
    rla                                           ; $5045: $17
    inc d                                         ; $5046: $14
    ld c, h                                       ; $5047: $4C
    ld [bc], a                                    ; $5048: $02
    ld [bc], a                                    ; $5049: $02
    rla                                           ; $504A: $17
    dec de                                        ; $504B: $1B
    ld c, h                                       ; $504C: $4C
    ld bc, $2217                                  ; $504D: $01 $17 $22
    ld c, h                                       ; $5050: $4C

    db $04, $00, $2A, $B5, $6C

    nop                                           ; $5056: $00
    ld a, [hl+]                                   ; $5057: $2A
    ld b, h                                       ; $5058: $44
    ld l, l                                       ; $5059: $6D
    nop                                           ; $505A: $00
    ld a, [hl+]                                   ; $505B: $2A
    ld [hl], c                                    ; $505C: $71
    ld l, l                                       ; $505D: $6D
    ld bc, $782A                                  ; $505E: $01 $2A $78
    ld l, l                                       ; $5061: $6D
    ld [bc], a                                    ; $5062: $02
    ld bc, $242A                                  ; $5063: $01 $2A $24
    ld l, [hl]                                    ; $5066: $6E
    ld bc, $2B2A                                  ; $5067: $01 $2A $2B
    ld l, [hl]                                    ; $506A: $6E
    ld bc, $2A01                                  ; $506B: $01 $01 $2A
    ld [hl-], a                                   ; $506E: $32
    ld l, [hl]                                    ; $506F: $6E
    ld [bc], a                                    ; $5070: $02
    ld [bc], a                                    ; $5071: $02
    ld a, [hl+]                                   ; $5072: $2A
    ld l, l                                       ; $5073: $6D
    ld l, [hl]                                    ; $5074: $6E
    ld bc, $742A                                  ; $5075: $01 $2A $74
    ld l, [hl]                                    ; $5078: $6E

    db $04

    ld bc, $001F                                  ; $507A: $01 $1F $00
    ld b, b                                       ; $507D: $40
    inc b                                         ; $507E: $04
    rra                                           ; $507F: $1F
    inc b                                         ; $5080: $04
    ld b, b                                       ; $5081: $40
    ld [bc], a                                    ; $5082: $02
    rra                                           ; $5083: $1F
    ld [$0340], sp                                ; $5084: $08 $40 $03
    rra                                           ; $5087: $1F
    inc c                                         ; $5088: $0C
    ld b, b                                       ; $5089: $40
    ld bc, $1F01                                  ; $508A: $01 $01 $1F
    db $10                                        ; $508D: $10
    ld b, b                                       ; $508E: $40

    db $03

    ld [bc], a                                    ; $5090: $02
    rra                                           ; $5091: $1F
    ld c, l                                       ; $5092: $4D
    ld e, d                                       ; $5093: $5A

    db $01, $1F, $56, $5A

    nop                                           ; $5098: $00
    rra                                           ; $5099: $1F
    add $5B                                       ; $509A: $C6 $5B

    db $03, $02

    rra                                           ; $509E: $1F
    add b                                         ; $509F: $80
    ld e, h                                       ; $50A0: $5C

    db $01, $1F, $89, $5C, $00, $1F, $C6, $5B, $02, $02, $1F, $8C, $5D

    nop                                           ; $50AE: $00
    rra                                           ; $50AF: $1F
    add $5B                                       ; $50B0: $C6 $5B
    inc bc                                        ; $50B2: $03
    ld [bc], a                                    ; $50B3: $02
    dec e                                         ; $50B4: $1D
    dec [hl]                                      ; $50B5: $35
    ld b, d                                       ; $50B6: $42
    ld bc, $4B1D                                  ; $50B7: $01 $1D $4B
    ld b, d                                       ; $50BA: $42
    ld bc, $541D                                  ; $50BB: $01 $1D $54
    ld b, d                                       ; $50BE: $42
    ld a, [bc]                                    ; $50BF: $0A
    nop                                           ; $50C0: $00
    dec e                                         ; $50C1: $1D
    ld e, l                                       ; $50C2: $5D
    ld b, d                                       ; $50C3: $42
    nop                                           ; $50C4: $00
    dec e                                         ; $50C5: $1D
    ld [de], a                                    ; $50C6: $12
    ld b, e                                       ; $50C7: $43
    nop                                           ; $50C8: $00
    dec e                                         ; $50C9: $1D
    ld b, e                                       ; $50CA: $43
    ld b, e                                       ; $50CB: $43
    nop                                           ; $50CC: $00
    dec e                                         ; $50CD: $1D
    ld a, c                                       ; $50CE: $79
    ld b, e                                       ; $50CF: $43
    nop                                           ; $50D0: $00
    dec e                                         ; $50D1: $1D
    adc d                                         ; $50D2: $8A
    ld b, e                                       ; $50D3: $43
    nop                                           ; $50D4: $00
    dec e                                         ; $50D5: $1D
    and c                                         ; $50D6: $A1
    ld b, e                                       ; $50D7: $43
    nop                                           ; $50D8: $00
    dec e                                         ; $50D9: $1D
    add hl, hl                                    ; $50DA: $29
    ld b, h                                       ; $50DB: $44
    nop                                           ; $50DC: $00
    dec e                                         ; $50DD: $1D
    ld e, e                                       ; $50DE: $5B
    ld b, h                                       ; $50DF: $44
    nop                                           ; $50E0: $00
    dec e                                         ; $50E1: $1D
    sbc c                                         ; $50E2: $99
    ld b, h                                       ; $50E3: $44
    nop                                           ; $50E4: $00
    dec e                                         ; $50E5: $1D
    reti                                          ; $50E6: $D9


    ld b, h                                       ; $50E7: $44
    ld bc, $1D02                                  ; $50E8: $01 $02 $1D
    ld d, $75                                     ; $50EB: $16 $75
    ld bc, $1D02                                  ; $50ED: $01 $02 $1D
    ld e, l                                       ; $50F0: $5D
    ld [hl], d                                    ; $50F1: $72
    ld [$1D01], sp                                ; $50F2: $08 $01 $1D
    rra                                           ; $50F5: $1F
    ld [hl], l                                    ; $50F6: $75
    nop                                           ; $50F7: $00
    dec e                                         ; $50F8: $1D
    daa                                           ; $50F9: $27
    ld [hl], l                                    ; $50FA: $75
    nop                                           ; $50FB: $00
    dec e                                         ; $50FC: $1D
    ld e, b                                       ; $50FD: $58
    ld [hl], l                                    ; $50FE: $75
    nop                                           ; $50FF: $00
    dec e                                         ; $5100: $1D
    and h                                         ; $5101: $A4
    ld [hl], l                                    ; $5102: $75
    nop                                           ; $5103: $00
    dec e                                         ; $5104: $1D
    ld sp, hl                                     ; $5105: $F9
    ld [hl], l                                    ; $5106: $75
    nop                                           ; $5107: $00
    dec e                                         ; $5108: $1D
    ld [hl+], a                                   ; $5109: $22
    halt                                          ; $510A: $76
    nop                                           ; $510B: $00
    dec e                                         ; $510C: $1D
    ld l, e                                       ; $510D: $6B
    halt                                          ; $510E: $76
    nop                                           ; $510F: $00
    dec e                                         ; $5110: $1D
    sbc d                                         ; $5111: $9A
    halt                                          ; $5112: $76
    inc bc                                        ; $5113: $03
    ld bc, $3513                                  ; $5114: $01 $13 $35
    ld l, [hl]                                    ; $5117: $6E
    ld [bc], a                                    ; $5118: $02
    inc de                                        ; $5119: $13
    inc a                                         ; $511A: $3C
    ld l, [hl]                                    ; $511B: $6E
    ld [bc], a                                    ; $511C: $02
    inc de                                        ; $511D: $13
    ld b, l                                       ; $511E: $45
    ld l, [hl]                                    ; $511F: $6E
    ld [$1301], sp                                ; $5120: $08 $01 $13
    call z, $046F                                 ; $5123: $CC $6F $04
    inc de                                        ; $5126: $13
    push de                                       ; $5127: $D5
    ld l, a                                       ; $5128: $6F
    inc b                                         ; $5129: $04
    inc de                                        ; $512A: $13
    sbc $6F                                       ; $512B: $DE $6F
    ld [bc], a                                    ; $512D: $02
    inc de                                        ; $512E: $13
    sbc $6F                                       ; $512F: $DE $6F
    inc bc                                        ; $5131: $03
    inc de                                        ; $5132: $13
    sbc $6F                                       ; $5133: $DE $6F
    inc b                                         ; $5135: $04
    inc de                                        ; $5136: $13
    sbc $6F                                       ; $5137: $DE $6F
    inc b                                         ; $5139: $04
    inc de                                        ; $513A: $13
    sbc $6F                                       ; $513B: $DE $6F
    ld bc, $DF13                                  ; $513D: $01 $13 $DF
    ld l, a                                       ; $5140: $6F
    ld [$1301], sp                                ; $5141: $08 $01 $13
    db $E3                                        ; $5144: $E3
    ld l, a                                       ; $5145: $6F
    inc b                                         ; $5146: $04
    inc de                                        ; $5147: $13
    db $EC                                        ; $5148: $EC
    ld l, a                                       ; $5149: $6F
    inc b                                         ; $514A: $04
    inc de                                        ; $514B: $13
    ld sp, hl                                     ; $514C: $F9
    ld l, a                                       ; $514D: $6F
    ld [bc], a                                    ; $514E: $02
    inc de                                        ; $514F: $13
    inc bc                                        ; $5150: $03
    ld [hl], b                                    ; $5151: $70
    inc bc                                        ; $5152: $03
    inc de                                        ; $5153: $13
    ld c, $70                                     ; $5154: $0E $70
    inc b                                         ; $5156: $04
    inc de                                        ; $5157: $13
    add hl, de                                    ; $5158: $19
    ld [hl], b                                    ; $5159: $70
    inc b                                         ; $515A: $04
    inc de                                        ; $515B: $13
    inc h                                         ; $515C: $24
    ld [hl], b                                    ; $515D: $70
    ld bc, $DF13                                  ; $515E: $01 $13 $DF
    ld l, a                                       ; $5161: $6F
    ld [bc], a                                    ; $5162: $02
    ld bc, $2F13                                  ; $5163: $01 $13 $2F
    ld [hl], b                                    ; $5166: $70
    ld bc, $3813                                  ; $5167: $01 $13 $38
    ld [hl], b                                    ; $516A: $70
    inc bc                                        ; $516B: $03
    inc bc                                        ; $516C: $03
    inc de                                        ; $516D: $13
    scf                                           ; $516E: $37
    ld [hl], e                                    ; $516F: $73
    ld [bc], a                                    ; $5170: $02
    inc de                                        ; $5171: $13
    ld b, b                                       ; $5172: $40
    ld [hl], e                                    ; $5173: $73
    ld bc, $4913                                  ; $5174: $01 $13 $49
    ld [hl], e                                    ; $5177: $73
    ld [bc], a                                    ; $5178: $02
    ld [bc], a                                    ; $5179: $02
    inc de                                        ; $517A: $13
    ld d, d                                       ; $517B: $52
    ld [hl], e                                    ; $517C: $73
    inc b                                         ; $517D: $04
    inc de                                        ; $517E: $13
    ld l, e                                       ; $517F: $6B
    ld [hl], e                                    ; $5180: $73
    ld bc, $1301                                  ; $5181: $01 $01 $13
    ld [hl], d                                    ; $5184: $72
    ld [hl], e                                    ; $5185: $73
    ld [bc], a                                    ; $5186: $02
    ld [bc], a                                    ; $5187: $02
    inc de                                        ; $5188: $13
    sub b                                         ; $5189: $90
    ld [hl], h                                    ; $518A: $74
    ld bc, $A613                                  ; $518B: $01 $13 $A6
    ld [hl], h                                    ; $518E: $74
    inc b                                         ; $518F: $04
    nop                                           ; $5190: $00
    inc de                                        ; $5191: $13
    xor a                                         ; $5192: $AF
    ld [hl], h                                    ; $5193: $74
    ld bc, $0113                                  ; $5194: $01 $13 $01
    ld [hl], l                                    ; $5197: $75
    nop                                           ; $5198: $00
    inc de                                        ; $5199: $13
    ld c, d                                       ; $519A: $4A
    ld [hl], l                                    ; $519B: $75
    nop                                           ; $519C: $00
    inc de                                        ; $519D: $13
    ld h, a                                       ; $519E: $67
    ld [hl], l                                    ; $519F: $75
    ld bc, $1302                                  ; $51A0: $01 $02 $13
    and h                                         ; $51A3: $A4
    ld [hl], l                                    ; $51A4: $75
    ld [bc], a                                    ; $51A5: $02
    ld bc, $AD13                                  ; $51A6: $01 $13 $AD
    ld [hl], l                                    ; $51A9: $75
    nop                                           ; $51AA: $00
    inc de                                        ; $51AB: $13
    or l                                          ; $51AC: $B5
    ld [hl], l                                    ; $51AD: $75
    inc bc                                        ; $51AE: $03
    ld bc, $6313                                  ; $51AF: $01 $13 $63
    ld [hl], a                                    ; $51B2: $77
    ld [bc], a                                    ; $51B3: $02
    inc de                                        ; $51B4: $13
    ld l, h                                       ; $51B5: $6C
    ld [hl], a                                    ; $51B6: $77
    ld bc, $7313                                  ; $51B7: $01 $13 $73
    ld [hl], a                                    ; $51BA: $77
    ld bc, $1301                                  ; $51BB: $01 $01 $13
    ld a, h                                       ; $51BE: $7C
    ld [hl], a                                    ; $51BF: $77
    dec b                                         ; $51C0: $05
    ld [bc], a                                    ; $51C1: $02
    inc de                                        ; $51C2: $13
    db $DD                                        ; $51C3: $DD
    ld [hl], a                                    ; $51C4: $77
    ld bc, $E613                                  ; $51C5: $01 $13 $E6
    ld [hl], a                                    ; $51C8: $77
    ld bc, $EA13                                  ; $51C9: $01 $13 $EA
    ld [hl], a                                    ; $51CC: $77
    ld [bc], a                                    ; $51CD: $02
    inc de                                        ; $51CE: $13
    xor $77                                       ; $51CF: $EE $77
    ld [bc], a                                    ; $51D1: $02
    inc de                                        ; $51D2: $13
    ld a, [c]                                     ; $51D3: $F2
    ld [hl], a                                    ; $51D4: $77
    dec b                                         ; $51D5: $05
    ld bc, $F613                                  ; $51D6: $01 $13 $F6
    ld [hl], a                                    ; $51D9: $77
    ld bc, $FE13                                  ; $51DA: $01 $13 $FE
    ld [hl], a                                    ; $51DD: $77
    ld bc, $0613                                  ; $51DE: $01 $13 $06
    ld a, b                                       ; $51E1: $78
    ld bc, $0E13                                  ; $51E2: $01 $13 $0E
    ld a, b                                       ; $51E5: $78
    ld bc, $4013                                  ; $51E6: $01 $13 $40
    ld a, b                                       ; $51E9: $78
    ld [bc], a                                    ; $51EA: $02
    ld [bc], a                                    ; $51EB: $02
    inc de                                        ; $51EC: $13
    rst $38                                       ; $51ED: $FF
    ld a, b                                       ; $51EE: $78
    ld bc, $0613                                  ; $51EF: $01 $13 $06
    ld a, c                                       ; $51F2: $79

jr_021_51F3:
    ld bc, $1304                                  ; $51F3: $01 $04 $13
    sub d                                         ; $51F6: $92
    ld a, d                                       ; $51F7: $7A
    ld [bc], a                                    ; $51F8: $02
    ld [bc], a                                    ; $51F9: $02
    dec h                                         ; $51FA: $25
    inc l                                         ; $51FB: $2C
    ld [hl], l                                    ; $51FC: $75
    inc b                                         ; $51FD: $04

jr_021_51FE:
    dec h                                         ; $51FE: $25
    ld b, d                                       ; $51FF: $42
    ld [hl], l                                    ; $5200: $75
    rlca                                          ; $5201: $07
    ld bc, $0425                                  ; $5202: $01 $25 $04
    ld l, d                                       ; $5205: $6A

jr_021_5206:
    inc bc                                        ; $5206: $03
    dec h                                         ; $5207: $25
    add hl, hl                                    ; $5208: $29
    ld l, d                                       ; $5209: $6A
    ld bc, $4E25                                  ; $520A: $01 $25 $4E
    ld l, d                                       ; $520D: $6A
    ld bc, $5525                                  ; $520E: $01 $25 $55
    ld l, d                                       ; $5211: $6A
    ld bc, $5C25                                  ; $5212: $01 $25 $5C
    ld l, d                                       ; $5215: $6A

jr_021_5216:
    ld [bc], a                                    ; $5216: $02
    dec h                                         ; $5217: $25
    ld h, e                                       ; $5218: $63
    ld l, d                                       ; $5219: $6A
    inc b                                         ; $521A: $04
    dec h                                         ; $521B: $25

jr_021_521C:
    adc b                                         ; $521C: $88
    ld l, d                                       ; $521D: $6A
    ld bc, $1802                                  ; $521E: $01 $02 $18
    ret c                                         ; $5221: $D8

    ld d, e                                       ; $5222: $53
    rlca                                          ; $5223: $07

jr_021_5224:
    nop                                           ; $5224: $00
    jr jr_021_5206                                ; $5225: $18 $DF

jr_021_5227:
    ld d, e                                       ; $5227: $53
    nop                                           ; $5228: $00
    jr @-$1A                                      ; $5229: $18 $E4

    ld d, e                                       ; $522B: $53
    nop                                           ; $522C: $00
    jr jr_021_5227                                ; $522D: $18 $F8

    ld d, e                                       ; $522F: $53
    nop                                           ; $5230: $00
    jr jr_021_5253                                ; $5231: $18 $20

    ld d, h                                       ; $5233: $54
    nop                                           ; $5234: $00
    jr jr_021_5276                                ; $5235: $18 $3F

    ld d, h                                       ; $5237: $54
    nop                                           ; $5238: $00
    jr @+$68                                      ; $5239: $18 $66

    ld d, h                                       ; $523B: $54
    nop                                           ; $523C: $00
    jr jr_021_52BD                                ; $523D: $18 $7E

    ld d, h                                       ; $523F: $54
    ld bc, $1802                                  ; $5240: $01 $02 $18
    di                                            ; $5243: $F3
    ld d, [hl]                                    ; $5244: $56
    ld [bc], a                                    ; $5245: $02
    ld [bc], a                                    ; $5246: $02
    jr jr_021_52B1                                ; $5247: $18 $68

    ld h, e                                       ; $5249: $63

jr_021_524A:
    ld [bc], a                                    ; $524A: $02
    jr jr_021_52BC                                ; $524B: $18 $6F

    ld h, e                                       ; $524D: $63
    inc d                                         ; $524E: $14
    nop                                           ; $524F: $00
    jr jr_021_52D1                                ; $5250: $18 $7F

    ld h, e                                       ; $5252: $63

jr_021_5253:
    nop                                           ; $5253: $00
    jr jr_021_51F3                                ; $5254: $18 $9D

    ld h, e                                       ; $5256: $63
    nop                                           ; $5257: $00
    jr jr_021_5216                                ; $5258: $18 $BC

    ld h, e                                       ; $525A: $63
    nop                                           ; $525B: $00
    jr @-$2A                                      ; $525C: $18 $D4

    ld h, e                                       ; $525E: $63
    nop                                           ; $525F: $00
    jr jr_021_524A                                ; $5260: $18 $E8

    ld h, e                                       ; $5262: $63
    nop                                           ; $5263: $00
    jr jr_021_5268                                ; $5264: $18 $02

    ld h, h                                       ; $5266: $64
    nop                                           ; $5267: $00

jr_021_5268:
    jr jr_021_52BE                                ; $5268: $18 $54

    ld h, h                                       ; $526A: $64
    nop                                           ; $526B: $00
    jr @+$78                                      ; $526C: $18 $76

jr_021_526E:
    ld h, h                                       ; $526E: $64
    nop                                           ; $526F: $00
    jr jr_021_51FE                                ; $5270: $18 $8C

    ld h, h                                       ; $5272: $64
    nop                                           ; $5273: $00
    jr jr_021_521C                                ; $5274: $18 $A6

jr_021_5276:
    ld h, h                                       ; $5276: $64
    nop                                           ; $5277: $00
    jr @-$3E                                      ; $5278: $18 $C0

    ld h, h                                       ; $527A: $64
    nop                                           ; $527B: $00
    jr jr_021_526E                                ; $527C: $18 $F0

    ld h, h                                       ; $527E: $64
    nop                                           ; $527F: $00
    jr @+$0D                                      ; $5280: $18 $0B

    ld h, l                                       ; $5282: $65
    nop                                           ; $5283: $00
    jr jr_021_52A7                                ; $5284: $18 $21

    ld h, l                                       ; $5286: $65
    nop                                           ; $5287: $00
    jr jr_021_52C3                                ; $5288: $18 $39

    ld h, l                                       ; $528A: $65
    nop                                           ; $528B: $00
    jr jr_021_52DF                                ; $528C: $18 $51

    ld h, l                                       ; $528E: $65
    nop                                           ; $528F: $00

jr_021_5290:
    jr jr_021_5303                                ; $5290: $18 $71

    ld h, l                                       ; $5292: $65
    nop                                           ; $5293: $00
    jr jr_021_5224                                ; $5294: $18 $8E

    ld h, l                                       ; $5296: $65
    nop                                           ; $5297: $00
    jr @-$47                                      ; $5298: $18 $B7

    ld h, l                                       ; $529A: $65
    nop                                           ; $529B: $00
    jr jr_021_5290                                ; $529C: $18 $F2

    ld h, l                                       ; $529E: $65
    inc bc                                        ; $529F: $03
    ld bc, $0619                                  ; $52A0: $01 $19 $06
    ld l, e                                       ; $52A3: $6B
    ld [bc], a                                    ; $52A4: $02
    add hl, de                                    ; $52A5: $19
    inc hl                                        ; $52A6: $23

jr_021_52A7:
    ld l, e                                       ; $52A7: $6B
    ld [bc], a                                    ; $52A8: $02
    add hl, de                                    ; $52A9: $19
    inc l                                         ; $52AA: $2C
    ld l, e                                       ; $52AB: $6B
    inc b                                         ; $52AC: $04
    ld bc, $6E19                                  ; $52AD: $01 $19 $6E
    ld l, h                                       ; $52B0: $6C

jr_021_52B1:
    ld bc, $7719                                  ; $52B1: $01 $19 $77
    ld l, h                                       ; $52B4: $6C
    ld [bc], a                                    ; $52B5: $02
    add hl, de                                    ; $52B6: $19
    add b                                         ; $52B7: $80
    ld l, h                                       ; $52B8: $6C
    inc bc                                        ; $52B9: $03
    add hl, de                                    ; $52BA: $19
    adc c                                         ; $52BB: $89

jr_021_52BC:
    ld l, h                                       ; $52BC: $6C

jr_021_52BD:
    ld [bc], a                                    ; $52BD: $02

jr_021_52BE:
    ld bc, $E819                                  ; $52BE: $01 $19 $E8
    ld l, h                                       ; $52C1: $6C
    inc bc                                        ; $52C2: $03

jr_021_52C3:
    add hl, de                                    ; $52C3: $19
    pop af                                        ; $52C4: $F1
    ld l, h                                       ; $52C5: $6C
    ld bc, $1901                                  ; $52C6: $01 $01 $19
    ld a, [$026C]                                 ; $52C9: $FA $6C $02
    inc b                                         ; $52CC: $04
    add hl, de                                    ; $52CD: $19
    ld e, e                                       ; $52CE: $5B
    ld l, l                                       ; $52CF: $6D
    ld [bc], a                                    ; $52D0: $02

jr_021_52D1:
    add hl, de                                    ; $52D1: $19
    ld h, h                                       ; $52D2: $64
    ld l, l                                       ; $52D3: $6D
    ld bc, $1901                                  ; $52D4: $01 $01 $19
    ld l, l                                       ; $52D7: $6D
    ld l, l                                       ; $52D8: $6D
    ld [bc], a                                    ; $52D9: $02
    ld [bc], a                                    ; $52DA: $02
    add hl, de                                    ; $52DB: $19
    daa                                           ; $52DC: $27
    ld l, [hl]                                    ; $52DD: $6E
    nop                                           ; $52DE: $00

jr_021_52DF:
    add hl, de                                    ; $52DF: $19
    jr nc, jr_021_5350                            ; $52E0: $30 $6E

    ld [bc], a                                    ; $52E2: $02
    ld bc, $6F19                                  ; $52E3: $01 $19 $6F
    ld l, [hl]                                    ; $52E6: $6E
    ld bc, $7719                                  ; $52E7: $01 $19 $77
    ld l, [hl]                                    ; $52EA: $6E
    ld bc, $1901                                  ; $52EB: $01 $01 $19
    ldh [$6E], a                                  ; $52EE: $E0 $6E
    ld [bc], a                                    ; $52F0: $02
    ld bc, $E919                                  ; $52F1: $01 $19 $E9
    ld l, [hl]                                    ; $52F4: $6E
    ld bc, $F119                                  ; $52F5: $01 $19 $F1
    ld l, [hl]                                    ; $52F8: $6E
    inc bc                                        ; $52F9: $03
    inc b                                         ; $52FA: $04
    add hl, de                                    ; $52FB: $19
    ld d, d                                       ; $52FC: $52
    ld l, a                                       ; $52FD: $6F
    inc bc                                        ; $52FE: $03
    add hl, de                                    ; $52FF: $19
    ld e, e                                       ; $5300: $5B
    ld l, a                                       ; $5301: $6F
    inc bc                                        ; $5302: $03

jr_021_5303:
    add hl, de                                    ; $5303: $19
    ld h, h                                       ; $5304: $64
    ld l, a                                       ; $5305: $6F
    ld bc, $1904                                  ; $5306: $01 $04 $19
    rst $00                                       ; $5309: $C7
    ld l, a                                       ; $530A: $6F
    inc bc                                        ; $530B: $03
    ld bc, $D019                                  ; $530C: $01 $19 $D0
    ld l, a                                       ; $530F: $6F
    ld bc, $D819                                  ; $5310: $01 $19 $D8
    ld l, a                                       ; $5313: $6F
    ld bc, $E019                                  ; $5314: $01 $19 $E0
    ld l, a                                       ; $5317: $6F
    inc bc                                        ; $5318: $03
    inc b                                         ; $5319: $04
    add hl, de                                    ; $531A: $19
    xor [hl]                                      ; $531B: $AE
    ld [hl], c                                    ; $531C: $71
    ld bc, $B719                                  ; $531D: $01 $19 $B7
    ld [hl], c                                    ; $5320: $71
    nop                                           ; $5321: $00
    add hl, de                                    ; $5322: $19
    ret nz                                        ; $5323: $C0

    ld [hl], c                                    ; $5324: $71
    inc bc                                        ; $5325: $03
    inc b                                         ; $5326: $04
    add hl, de                                    ; $5327: $19
    xor [hl]                                      ; $5328: $AE
    ld [hl], c                                    ; $5329: $71
    ld bc, $B719                                  ; $532A: $01 $19 $B7
    ld [hl], c                                    ; $532D: $71
    nop                                           ; $532E: $00
    add hl, de                                    ; $532F: $19
    pop bc                                        ; $5330: $C1
    ld [hl], c                                    ; $5331: $71
    ld bc, $1900                                  ; $5332: $01 $00 $19
    pop de                                        ; $5335: $D1
    ld [hl], c                                    ; $5336: $71
    ld [bc], a                                    ; $5337: $02
    ld [bc], a                                    ; $5338: $02
    add hl, de                                    ; $5339: $19
    db $FC                                        ; $533A: $FC
    ld a, d                                       ; $533B: $7A
    ld [bc], a                                    ; $533C: $02
    add hl, de                                    ; $533D: $19
    inc d                                         ; $533E: $14
    ld a, e                                       ; $533F: $7B
    ld [bc], a                                    ; $5340: $02
    ld bc, $3019                                  ; $5341: $01 $19 $30
    ld a, e                                       ; $5344: $7B
    ld bc, $7419                                  ; $5345: $01 $19 $74
    ld a, e                                       ; $5348: $7B
    ld [bc], a                                    ; $5349: $02
    ld bc, $5019                                  ; $534A: $01 $19 $50
    ld a, l                                       ; $534D: $7D
    inc bc                                        ; $534E: $03
    add hl, de                                    ; $534F: $19

jr_021_5350:
    ld e, c                                       ; $5350: $59
    ld a, l                                       ; $5351: $7D
    inc bc                                        ; $5352: $03
    inc bc                                        ; $5353: $03
    add hl, de                                    ; $5354: $19
    or c                                          ; $5355: $B1
    ld h, a                                       ; $5356: $67
    inc b                                         ; $5357: $04
    add hl, de                                    ; $5358: $19
    rst $00                                       ; $5359: $C7
    ld h, a                                       ; $535A: $67
    inc b                                         ; $535B: $04
    add hl, de                                    ; $535C: $19
    ret nc                                        ; $535D: $D0

    ld h, a                                       ; $535E: $67
    ld [bc], a                                    ; $535F: $02
    ld bc, $D919                                  ; $5360: $01 $19 $D9
    ld h, a                                       ; $5363: $67
    ld bc, $E119                                  ; $5364: $01 $19 $E1
    ld h, a                                       ; $5367: $67
    ld [bc], a                                    ; $5368: $02
    inc bc                                        ; $5369: $03
    add hl, de                                    ; $536A: $19
    or e                                          ; $536B: $B3
    ld l, c                                       ; $536C: $69
    ld [bc], a                                    ; $536D: $02
    add hl, de                                    ; $536E: $19
    cp h                                          ; $536F: $BC
    ld l, c                                       ; $5370: $69
    inc b                                         ; $5371: $04
    ld bc, $C519                                  ; $5372: $01 $19 $C5
    ld l, c                                       ; $5375: $69
    ld bc, $CD19                                  ; $5376: $01 $19 $CD
    ld l, c                                       ; $5379: $69
    ld bc, $0219                                  ; $537A: $01 $19 $02
    ld l, d                                       ; $537D: $6A
    ld bc, $0A19                                  ; $537E: $01 $19 $0A
    ld l, d                                       ; $5381: $6A
    ld [bc], a                                    ; $5382: $02
    inc bc                                        ; $5383: $03
    add hl, de                                    ; $5384: $19
    ld l, a                                       ; $5385: $6F
    ld l, d                                       ; $5386: $6A
    ld bc, $7819                                  ; $5387: $01 $19 $78
    ld l, d                                       ; $538A: $6A
    dec b                                         ; $538B: $05
    ld bc, $8119                                  ; $538C: $01 $19 $81
    ld l, d                                       ; $538F: $6A
    ld bc, $8919                                  ; $5390: $01 $19 $89
    ld l, d                                       ; $5393: $6A
    ld bc, $9119                                  ; $5394: $01 $19 $91
    ld l, d                                       ; $5397: $6A
    ld bc, $9919                                  ; $5398: $01 $19 $99
    ld l, d                                       ; $539B: $6A
    ld bc, $A119                                  ; $539C: $01 $19 $A1
    ld l, d                                       ; $539F: $6A
    inc bc                                        ; $53A0: $03
    ld [bc], a                                    ; $53A1: $02
    dec de                                        ; $53A2: $1B
    nop                                           ; $53A3: $00
    ld b, b                                       ; $53A4: $40
    nop                                           ; $53A5: $00
    dec de                                        ; $53A6: $1B
    rlca                                          ; $53A7: $07
    ld b, b                                       ; $53A8: $40
    nop                                           ; $53A9: $00
    dec de                                        ; $53AA: $1B

jr_021_53AB:
    jr nz, jr_021_53ED                            ; $53AB: $20 $40

    rlca                                          ; $53AD: $07
    ld bc, $6F1B                                  ; $53AE: $01 $1B $6F
    ld b, b                                       ; $53B1: $40
    ld bc, $091B                                  ; $53B2: $01 $1B $09
    ld b, c                                       ; $53B5: $41
    ld bc, $951B                                  ; $53B6: $01 $1B $95
    ld b, c                                       ; $53B9: $41
    nop                                           ; $53BA: $00
    dec de                                        ; $53BB: $1B
    ld b, c                                       ; $53BC: $41
    ld b, d                                       ; $53BD: $42
    nop                                           ; $53BE: $00
    dec de                                        ; $53BF: $1B
    dec h                                         ; $53C0: $25
    ld b, e                                       ; $53C1: $43
    nop                                           ; $53C2: $00
    dec de                                        ; $53C3: $1B
    ld c, l                                       ; $53C4: $4D
    ld b, e                                       ; $53C5: $43
    nop                                           ; $53C6: $00
    dec de                                        ; $53C7: $1B
    ld a, e                                       ; $53C8: $7B
    ld b, e                                       ; $53C9: $43
    ld [bc], a                                    ; $53CA: $02
    nop                                           ; $53CB: $00
    dec de                                        ; $53CC: $1B
    halt                                          ; $53CD: $76
    ld c, b                                       ; $53CE: $48
    ld bc, $8C1B                                  ; $53CF: $01 $1B $8C

jr_021_53D2:
    ld c, b                                       ; $53D2: $48
    ld [bc], a                                    ; $53D3: $02
    ld [bc], a                                    ; $53D4: $02
    dec hl                                        ; $53D5: $2B
    rst $18                                       ; $53D6: $DF
    ld [hl], b                                    ; $53D7: $70
    ld bc, $F52B                                  ; $53D8: $01 $2B $F5
    ld [hl], b                                    ; $53DB: $70
    ld b, $04                                     ; $53DC: $06 $04
    jr jr_021_53E0                                ; $53DE: $18 $00

jr_021_53E0:
    ld b, b                                       ; $53E0: $40
    ld bc, $0918                                  ; $53E1: $01 $18 $09
    ld b, b                                       ; $53E4: $40
    inc bc                                        ; $53E5: $03
    jr jr_021_53FA                                ; $53E6: $18 $12

    ld b, b                                       ; $53E8: $40
    ld [bc], a                                    ; $53E9: $02
    jr @+$1D                                      ; $53EA: $18 $1B

    ld b, b                                       ; $53EC: $40

jr_021_53ED:
    ld [bc], a                                    ; $53ED: $02
    jr jr_021_5414                                ; $53EE: $18 $24

    ld b, b                                       ; $53F0: $40
    ld [bc], a                                    ; $53F1: $02
    jr jr_021_5421                                ; $53F2: $18 $2D

jr_021_53F4:
    ld b, b                                       ; $53F4: $40
    dec b                                         ; $53F5: $05
    ld bc, $3618                                  ; $53F6: $01 $18 $36
    ld b, b                                       ; $53F9: $40

jr_021_53FA:
    ld bc, $5118                                  ; $53FA: $01 $18 $51
    ld b, b                                       ; $53FD: $40
    ld bc, $6C18                                  ; $53FE: $01 $18 $6C
    ld b, b                                       ; $5401: $40
    ld bc, $8718                                  ; $5402: $01 $18 $87
    ld b, b                                       ; $5405: $40
    ld bc, $8F18                                  ; $5406: $01 $18 $8F
    ld b, b                                       ; $5409: $40
    ld [bc], a                                    ; $540A: $02
    ld [bc], a                                    ; $540B: $02
    jr jr_021_5455                                ; $540C: $18 $47

    ld b, h                                       ; $540E: $44
    ld [bc], a                                    ; $540F: $02
    jr jr_021_5462                                ; $5410: $18 $50

    ld b, h                                       ; $5412: $44
    ld [bc], a                                    ; $5413: $02

jr_021_5414:
    inc b                                         ; $5414: $04
    jr @-$77                                      ; $5415: $18 $87

    ld b, h                                       ; $5417: $44
    ld [bc], a                                    ; $5418: $02
    jr jr_021_53AB                                ; $5419: $18 $90

    ld b, h                                       ; $541B: $44
    ld [bc], a                                    ; $541C: $02
    ld bc, $C718                                  ; $541D: $01 $18 $C7

jr_021_5420:
    ld b, h                                       ; $5420: $44

jr_021_5421:
    ld [bc], a                                    ; $5421: $02
    jr jr_021_53F4                                ; $5422: $18 $D0

    ld b, h                                       ; $5424: $44
    inc bc                                        ; $5425: $03
    inc bc                                        ; $5426: $03
    jr @+$09                                      ; $5427: $18 $07

    ld b, l                                       ; $5429: $45
    ld [bc], a                                    ; $542A: $02
    jr @+$12                                      ; $542B: $18 $10

    ld b, l                                       ; $542D: $45
    nop                                           ; $542E: $00
    jr jr_021_5448                                ; $542F: $18 $17

    ld b, l                                       ; $5431: $45
    ld [bc], a                                    ; $5432: $02
    ld bc, $4418                                  ; $5433: $01 $18 $44
    ld c, d                                       ; $5436: $4A
    inc b                                         ; $5437: $04
    jr @+$4F                                      ; $5438: $18 $4D

    ld c, d                                       ; $543A: $4A
    ld [bc], a                                    ; $543B: $02
    ld bc, $8618                                  ; $543C: $01 $18 $86
    ld c, d                                       ; $543F: $4A
    inc bc                                        ; $5440: $03
    jr jr_021_53D2                                ; $5441: $18 $8F

    ld c, d                                       ; $5443: $4A
    ld bc, $1804                                  ; $5444: $01 $04 $18
    ret z                                         ; $5447: $C8

jr_021_5448:
    ld c, d                                       ; $5448: $4A
    inc b                                         ; $5449: $04
    ld bc, $D118                                  ; $544A: $01 $18 $D1
    ld c, d                                       ; $544D: $4A
    ld bc, $D918                                  ; $544E: $01 $18 $D9
    ld c, d                                       ; $5451: $4A
    ld bc, $E118                                  ; $5452: $01 $18 $E1

jr_021_5455:
    ld c, d                                       ; $5455: $4A
    ld bc, $E918                                  ; $5456: $01 $18 $E9
    ld c, d                                       ; $5459: $4A
    ld [bc], a                                    ; $545A: $02
    inc bc                                        ; $545B: $03

jr_021_545C:
    jr @+$68                                      ; $545C: $18 $66

    ld c, e                                       ; $545E: $4B
    ld [bc], a                                    ; $545F: $02
    jr @+$71                                      ; $5460: $18 $6F

jr_021_5462:
    ld c, e                                       ; $5462: $4B
    ld [bc], a                                    ; $5463: $02
    ld bc, $8618                                  ; $5464: $01 $18 $86
    ld c, e                                       ; $5467: $4B
    ld bc, $A118                                  ; $5468: $01 $18 $A1
    ld c, e                                       ; $546B: $4B
    dec c                                         ; $546C: $0D
    nop                                           ; $546D: $00
    jr jr_021_5474                                ; $546E: $18 $04

    ld c, h                                       ; $5470: $4C
    ld bc, $1018                                  ; $5471: $01 $18 $10

jr_021_5474:
    ld c, h                                       ; $5474: $4C
    ld bc, $1718                                  ; $5475: $01 $18 $17
    ld c, h                                       ; $5478: $4C
    ld bc, $1E18                                  ; $5479: $01 $18 $1E
    ld c, h                                       ; $547C: $4C
    ld bc, $2518                                  ; $547D: $01 $18 $25
    ld c, h                                       ; $5480: $4C
    nop                                           ; $5481: $00
    jr @+$2E                                      ; $5482: $18 $2C

    ld c, h                                       ; $5484: $4C
    nop                                           ; $5485: $00
    jr @+$3A                                      ; $5486: $18 $38

    ld c, h                                       ; $5488: $4C
    nop                                           ; $5489: $00
    jr @+$46                                      ; $548A: $18 $44

    ld c, h                                       ; $548C: $4C
    nop                                           ; $548D: $00
    jr @+$52                                      ; $548E: $18 $50

    ld c, h                                       ; $5490: $4C
    nop                                           ; $5491: $00
    jr jr_021_54F0                                ; $5492: $18 $5C

    ld c, h                                       ; $5494: $4C
    nop                                           ; $5495: $00
    jr @+$6A                                      ; $5496: $18 $68

    ld c, h                                       ; $5498: $4C
    nop                                           ; $5499: $00
    jr @+$76                                      ; $549A: $18 $74

    ld c, h                                       ; $549C: $4C
    inc bc                                        ; $549D: $03
    jr jr_021_5420                                ; $549E: $18 $80

    ld c, h                                       ; $54A0: $4C
    add hl, bc                                    ; $54A1: $09
    ld bc, $8718                                  ; $54A2: $01 $18 $87
    ld c, h                                       ; $54A5: $4C
    ld bc, $8F18                                  ; $54A6: $01 $18 $8F
    ld c, h                                       ; $54A9: $4C
    ld bc, $9718                                  ; $54AA: $01 $18 $97
    ld c, h                                       ; $54AD: $4C
    ld bc, $9F18                                  ; $54AE: $01 $18 $9F
    ld c, h                                       ; $54B1: $4C
    ld bc, $A718                                  ; $54B2: $01 $18 $A7
    ld c, h                                       ; $54B5: $4C
    ld bc, $AF18                                  ; $54B6: $01 $18 $AF
    ld c, h                                       ; $54B9: $4C
    ld bc, $B718                                  ; $54BA: $01 $18 $B7
    ld c, h                                       ; $54BD: $4C
    ld bc, $BF18                                  ; $54BE: $01 $18 $BF
    ld c, h                                       ; $54C1: $4C
    ld bc, $C718                                  ; $54C2: $01 $18 $C7
    ld c, h                                       ; $54C5: $4C
    ld [bc], a                                    ; $54C6: $02
    ld [bc], a                                    ; $54C7: $02
    jr jr_021_545C                                ; $54C8: $18 $92

    ld c, l                                       ; $54CA: $4D
    inc b                                         ; $54CB: $04
    jr @-$52                                      ; $54CC: $18 $AC

    ld c, l                                       ; $54CE: $4D
    ld bc, $1800                                  ; $54CF: $01 $00 $18
    or e                                          ; $54D2: $B3
    ld c, l                                       ; $54D3: $4D
    ld bc, $1801                                  ; $54D4: $01 $01 $18
    ld h, [hl]                                    ; $54D7: $66
    ld c, a                                       ; $54D8: $4F
    inc bc                                        ; $54D9: $03
    inc bc                                        ; $54DA: $03
    jr jr_021_54ED                                ; $54DB: $18 $10

    ld [hl], e                                    ; $54DD: $73
    inc b                                         ; $54DE: $04
    jr jr_021_5507                                ; $54DF: $18 $26

    ld [hl], e                                    ; $54E1: $73
    inc b                                         ; $54E2: $04
    jr jr_021_5514                                ; $54E3: $18 $2F

    ld [hl], e                                    ; $54E5: $73
    nop                                           ; $54E6: $00
    ld [bc], a                                    ; $54E7: $02
    ld bc, $6118                                  ; $54E8: $01 $18 $61
    ld [hl], h                                    ; $54EB: $74
    inc bc                                        ; $54EC: $03

jr_021_54ED:
    jr jr_021_5566                                ; $54ED: $18 $77

    ld [hl], h                                    ; $54EF: $74

jr_021_54F0:
    inc bc                                        ; $54F0: $03
    ld bc, $8018                                  ; $54F1: $01 $18 $80
    ld [hl], h                                    ; $54F4: $74
    ld bc, $8818                                  ; $54F5: $01 $18 $88
    ld [hl], h                                    ; $54F8: $74
    ld bc, $9018                                  ; $54F9: $01 $18 $90
    ld [hl], h                                    ; $54FC: $74
    ld [bc], a                                    ; $54FD: $02
    inc b                                         ; $54FE: $04

jr_021_54FF:
    jr @-$0D                                      ; $54FF: $18 $F1

    ld [hl], h                                    ; $5501: $74
    ld [bc], a                                    ; $5502: $02
    jr jr_021_54FF                                ; $5503: $18 $FA

    ld [hl], h                                    ; $5505: $74
    ld [bc], a                                    ; $5506: $02

jr_021_5507:
    ld bc, $5918                                  ; $5507: $01 $18 $59
    ld [hl], l                                    ; $550A: $75
    ld [bc], a                                    ; $550B: $02
    jr jr_021_5570                                ; $550C: $18 $62

    ld [hl], l                                    ; $550E: $75
    ld bc, $1801                                  ; $550F: $01 $01 $18
    pop bc                                        ; $5512: $C1
    ld [hl], l                                    ; $5513: $75

jr_021_5514:
    inc b                                         ; $5514: $04
    ld bc, $CA18                                  ; $5515: $01 $18 $CA
    ld [hl], l                                    ; $5518: $75
    ld bc, $D218                                  ; $5519: $01 $18 $D2
    ld [hl], l                                    ; $551C: $75
    ld bc, $DA18                                  ; $551D: $01 $18 $DA
    ld [hl], l                                    ; $5520: $75
    nop                                           ; $5521: $00
    ld [hl+], a                                   ; $5522: $22
    ld e, e                                       ; $5523: $5B
    ld b, b                                       ; $5524: $40
    ld bc, $1802                                  ; $5525: $01 $02 $18
    dec sp                                        ; $5528: $3B
    halt                                          ; $5529: $76

    db $19, $01, $2F, $00, $40

    nop                                           ; $552F: $00
    cpl                                           ; $5530: $2F
    add hl, bc                                    ; $5531: $09
    ld b, b                                       ; $5532: $40

    db $00, $2F, $10, $40

    nop                                           ; $5537: $00
    cpl                                           ; $5538: $2F
    rla                                           ; $5539: $17
    ld b, b                                       ; $553A: $40
    nop                                           ; $553B: $00
    cpl                                           ; $553C: $2F
    ld e, $40                                     ; $553D: $1E $40
    nop                                           ; $553F: $00
    cpl                                           ; $5540: $2F
    dec h                                         ; $5541: $25
    ld b, b                                       ; $5542: $40
    nop                                           ; $5543: $00
    cpl                                           ; $5544: $2F
    inc l                                         ; $5545: $2C
    ld b, b                                       ; $5546: $40
    nop                                           ; $5547: $00
    cpl                                           ; $5548: $2F
    inc sp                                        ; $5549: $33
    ld b, b                                       ; $554A: $40
    nop                                           ; $554B: $00
    cpl                                           ; $554C: $2F
    ld a, [hl-]                                   ; $554D: $3A
    ld b, b                                       ; $554E: $40
    nop                                           ; $554F: $00
    cpl                                           ; $5550: $2F
    ld b, c                                       ; $5551: $41
    ld b, b                                       ; $5552: $40
    nop                                           ; $5553: $00
    cpl                                           ; $5554: $2F
    ld c, b                                       ; $5555: $48
    ld b, b                                       ; $5556: $40
    nop                                           ; $5557: $00
    cpl                                           ; $5558: $2F
    ld c, a                                       ; $5559: $4F
    ld b, b                                       ; $555A: $40
    nop                                           ; $555B: $00
    cpl                                           ; $555C: $2F
    ld d, [hl]                                    ; $555D: $56
    ld b, b                                       ; $555E: $40
    nop                                           ; $555F: $00
    cpl                                           ; $5560: $2F
    ld e, l                                       ; $5561: $5D
    ld b, b                                       ; $5562: $40
    nop                                           ; $5563: $00
    cpl                                           ; $5564: $2F
    ld h, h                                       ; $5565: $64

jr_021_5566:
    ld b, b                                       ; $5566: $40
    nop                                           ; $5567: $00
    cpl                                           ; $5568: $2F
    ld l, e                                       ; $5569: $6B
    ld b, b                                       ; $556A: $40
    nop                                           ; $556B: $00
    cpl                                           ; $556C: $2F
    ld [hl], d                                    ; $556D: $72
    ld b, b                                       ; $556E: $40
    nop                                           ; $556F: $00

jr_021_5570:
    cpl                                           ; $5570: $2F
    ld a, c                                       ; $5571: $79
    ld b, b                                       ; $5572: $40
    nop                                           ; $5573: $00
    cpl                                           ; $5574: $2F
    add b                                         ; $5575: $80
    ld b, b                                       ; $5576: $40
    nop                                           ; $5577: $00
    cpl                                           ; $5578: $2F
    add a                                         ; $5579: $87
    ld b, b                                       ; $557A: $40
    ld [bc], a                                    ; $557B: $02
    cpl                                           ; $557C: $2F
    adc [hl]                                      ; $557D: $8E
    ld b, b                                       ; $557E: $40
    nop                                           ; $557F: $00
    cpl                                           ; $5580: $2F
    sub l                                         ; $5581: $95
    ld b, b                                       ; $5582: $40
    nop                                           ; $5583: $00
    cpl                                           ; $5584: $2F
    sbc h                                         ; $5585: $9C
    ld b, b                                       ; $5586: $40
    ld bc, $A32F                                  ; $5587: $01 $2F $A3
    ld b, b                                       ; $558A: $40
    nop                                           ; $558B: $00
    cpl                                           ; $558C: $2F
    xor d                                         ; $558D: $AA
    ld b, b                                       ; $558E: $40
    ld bc, $2F04                                  ; $558F: $01 $04 $2F
    or c                                          ; $5592: $B1
    ld b, b                                       ; $5593: $40
    ld bc, $2F01                                  ; $5594: $01 $01 $2F
    cp b                                          ; $5597: $B8
    ld b, b                                       ; $5598: $40
    rlca                                          ; $5599: $07
    nop                                           ; $559A: $00
    cpl                                           ; $559B: $2F
    sub [hl]                                      ; $559C: $96
    ld b, h                                       ; $559D: $44
    nop                                           ; $559E: $00
    cpl                                           ; $559F: $2F
    jp nz, $0044                                  ; $55A0: $C2 $44 $00

    cpl                                           ; $55A3: $2F
    ret                                           ; $55A4: $C9


    ld b, h                                       ; $55A5: $44
    nop                                           ; $55A6: $00
    cpl                                           ; $55A7: $2F
    ret nc                                        ; $55A8: $D0

    ld b, h                                       ; $55A9: $44
    nop                                           ; $55AA: $00
    cpl                                           ; $55AB: $2F
    rst $10                                       ; $55AC: $D7
    ld b, h                                       ; $55AD: $44
    nop                                           ; $55AE: $00
    cpl                                           ; $55AF: $2F
    sbc $44                                       ; $55B0: $DE $44
    ld bc, $F22F                                  ; $55B2: $01 $2F $F2
    ld b, h                                       ; $55B5: $44
    rlca                                          ; $55B6: $07
    nop                                           ; $55B7: $00
    cpl                                           ; $55B8: $2F
    ld e, [hl]                                    ; $55B9: $5E
    ld b, l                                       ; $55BA: $45
    nop                                           ; $55BB: $00
    cpl                                           ; $55BC: $2F
    ld h, l                                       ; $55BD: $65
    ld b, l                                       ; $55BE: $45
    nop                                           ; $55BF: $00
    cpl                                           ; $55C0: $2F
    ld l, h                                       ; $55C1: $6C
    ld b, l                                       ; $55C2: $45
    nop                                           ; $55C3: $00
    cpl                                           ; $55C4: $2F
    ld [hl], e                                    ; $55C5: $73
    ld b, l                                       ; $55C6: $45
    nop                                           ; $55C7: $00
    cpl                                           ; $55C8: $2F
    ld a, d                                       ; $55C9: $7A
    ld b, l                                       ; $55CA: $45
    nop                                           ; $55CB: $00
    cpl                                           ; $55CC: $2F
    add c                                         ; $55CD: $81
    ld b, l                                       ; $55CE: $45
    nop                                           ; $55CF: $00
    cpl                                           ; $55D0: $2F
    adc b                                         ; $55D1: $88
    ld b, l                                       ; $55D2: $45
    add hl, bc                                    ; $55D3: $09
    nop                                           ; $55D4: $00
    cpl                                           ; $55D5: $2F
    add sp, $45                                   ; $55D6: $E8 $45
    nop                                           ; $55D8: $00
    cpl                                           ; $55D9: $2F
    rst $28                                       ; $55DA: $EF
    ld b, l                                       ; $55DB: $45
    nop                                           ; $55DC: $00
    cpl                                           ; $55DD: $2F
    or $45                                        ; $55DE: $F6 $45
    ld bc, $292F                                  ; $55E0: $01 $2F $29
    ld b, [hl]                                    ; $55E3: $46
    nop                                           ; $55E4: $00
    cpl                                           ; $55E5: $2F
    jr nc, jr_021_562E                            ; $55E6: $30 $46

    nop                                           ; $55E8: $00
    cpl                                           ; $55E9: $2F
    ld c, [hl]                                    ; $55EA: $4E
    ld b, [hl]                                    ; $55EB: $46
    nop                                           ; $55EC: $00
    cpl                                           ; $55ED: $2F
    ld l, h                                       ; $55EE: $6C
    ld b, [hl]                                    ; $55EF: $46
    nop                                           ; $55F0: $00
    cpl                                           ; $55F1: $2F
    adc d                                         ; $55F2: $8A
    ld b, [hl]                                    ; $55F3: $46
    nop                                           ; $55F4: $00
    cpl                                           ; $55F5: $2F
    sbc l                                         ; $55F6: $9D
    ld b, [hl]                                    ; $55F7: $46
    inc c                                         ; $55F8: $0C
    nop                                           ; $55F9: $00
    cpl                                           ; $55FA: $2F
    xor $49                                       ; $55FB: $EE $49
    nop                                           ; $55FD: $00
    cpl                                           ; $55FE: $2F
    ld e, b                                       ; $55FF: $58
    ld c, d                                       ; $5600: $4A
    nop                                           ; $5601: $00
    cpl                                           ; $5602: $2F
    ld l, [hl]                                    ; $5603: $6E
    ld c, d                                       ; $5604: $4A
    nop                                           ; $5605: $00
    cpl                                           ; $5606: $2F
    add h                                         ; $5607: $84
    ld c, d                                       ; $5608: $4A
    nop                                           ; $5609: $00
    cpl                                           ; $560A: $2F
    sbc d                                         ; $560B: $9A
    ld c, d                                       ; $560C: $4A
    nop                                           ; $560D: $00
    cpl                                           ; $560E: $2F
    inc b                                         ; $560F: $04
    ld c, e                                       ; $5610: $4B
    nop                                           ; $5611: $00
    cpl                                           ; $5612: $2F
    ld a, [de]                                    ; $5613: $1A
    ld c, e                                       ; $5614: $4B
    nop                                           ; $5615: $00
    cpl                                           ; $5616: $2F
    jr nc, @+$4D                                  ; $5617: $30 $4B

    nop                                           ; $5619: $00
    cpl                                           ; $561A: $2F
    sbc d                                         ; $561B: $9A
    ld c, e                                       ; $561C: $4B
    nop                                           ; $561D: $00
    cpl                                           ; $561E: $2F
    inc b                                         ; $561F: $04
    ld c, h                                       ; $5620: $4C
    nop                                           ; $5621: $00
    cpl                                           ; $5622: $2F
    ld a, [de]                                    ; $5623: $1A
    ld c, h                                       ; $5624: $4C
    nop                                           ; $5625: $00
    cpl                                           ; $5626: $2F
    jr nc, jr_021_5675                            ; $5627: $30 $4C

    ld bc, $1902                                  ; $5629: $01 $02 $19
    ld c, h                                       ; $562C: $4C
    ld d, l                                       ; $562D: $55

jr_021_562E:
    ld bc, $1900                                  ; $562E: $01 $00 $19
    ld d, l                                       ; $5631: $55
    ld d, l                                       ; $5632: $55
    dec b                                         ; $5633: $05
    ld [bc], a                                    ; $5634: $02
    ld a, [de]                                    ; $5635: $1A
    call c, $0454                                 ; $5636: $DC $54 $04
    ld a, [de]                                    ; $5639: $1A
    db $E3                                        ; $563A: $E3
    ld d, h                                       ; $563B: $54
    ld bc, $EA1A                                  ; $563C: $01 $1A $EA
    ld d, h                                       ; $563F: $54
    inc bc                                        ; $5640: $03
    ld a, [de]                                    ; $5641: $1A
    di                                            ; $5642: $F3
    ld d, h                                       ; $5643: $54
    ld bc, $FA1A                                  ; $5644: $01 $1A $FA
    ld d, h                                       ; $5647: $54
    dec b                                         ; $5648: $05
    ld [bc], a                                    ; $5649: $02
    ld a, [de]                                    ; $564A: $1A
    ld de, $015B                                  ; $564B: $11 $5B $01
    ld a, [de]                                    ; $564E: $1A
    jr @+$5D                                      ; $564F: $18 $5B

    inc b                                         ; $5651: $04
    ld a, [de]                                    ; $5652: $1A
    rra                                           ; $5653: $1F
    ld e, e                                       ; $5654: $5B
    ld bc, $261A                                  ; $5655: $01 $1A $26
    ld e, e                                       ; $5658: $5B
    inc bc                                        ; $5659: $03
    ld a, [de]                                    ; $565A: $1A
    dec l                                         ; $565B: $2D
    ld e, e                                       ; $565C: $5B
    ld b, $02                                     ; $565D: $06 $02
    ld a, [de]                                    ; $565F: $1A
    ld c, h                                       ; $5660: $4C
    ld e, e                                       ; $5661: $5B
    ld bc, $531A                                  ; $5662: $01 $1A $53
    ld e, e                                       ; $5665: $5B
    ld bc, $5A1A                                  ; $5666: $01 $1A $5A
    ld e, e                                       ; $5669: $5B
    inc b                                         ; $566A: $04
    ld a, [de]                                    ; $566B: $1A
    ld h, c                                       ; $566C: $61
    ld e, e                                       ; $566D: $5B
    ld bc, $681A                                  ; $566E: $01 $1A $68
    ld e, e                                       ; $5671: $5B
    inc bc                                        ; $5672: $03
    ld a, [de]                                    ; $5673: $1A
    ld l, a                                       ; $5674: $6F

jr_021_5675:
    ld e, e                                       ; $5675: $5B
    dec b                                         ; $5676: $05
    ld bc, $8E1A                                  ; $5677: $01 $1A $8E
    ld e, e                                       ; $567A: $5B
    ld [bc], a                                    ; $567B: $02
    ld a, [de]                                    ; $567C: $1A
    sub l                                         ; $567D: $95
    ld e, e                                       ; $567E: $5B
    inc b                                         ; $567F: $04
    ld a, [de]                                    ; $5680: $1A
    sbc h                                         ; $5681: $9C
    ld e, e                                       ; $5682: $5B
    ld bc, $A31A                                  ; $5683: $01 $1A $A3
    ld e, e                                       ; $5686: $5B
    inc bc                                        ; $5687: $03
    ld a, [de]                                    ; $5688: $1A
    xor d                                         ; $5689: $AA
    ld e, e                                       ; $568A: $5B
    ld [bc], a                                    ; $568B: $02
    inc b                                         ; $568C: $04
    ld a, [de]                                    ; $568D: $1A
    ld h, a                                       ; $568E: $67
    ld c, c                                       ; $568F: $49
    ld [bc], a                                    ; $5690: $02
    ld a, [de]                                    ; $5691: $1A
    ld [hl], b                                    ; $5692: $70
    ld c, c                                       ; $5693: $49
    ld [bc], a                                    ; $5694: $02
    nop                                           ; $5695: $00
    ld a, [de]                                    ; $5696: $1A
    cp l                                          ; $5697: $BD
    ld c, c                                       ; $5698: $49
    nop                                           ; $5699: $00
    ld a, [de]                                    ; $569A: $1A
    inc a                                         ; $569B: $3C
    ld c, d                                       ; $569C: $4A
    ld [bc], a                                    ; $569D: $02
    inc bc                                        ; $569E: $03
    ld a, [de]                                    ; $569F: $1A
    adc $4A                                       ; $56A0: $CE $4A
    inc b                                         ; $56A2: $04
    ld a, [de]                                    ; $56A3: $1A
    rst $10                                       ; $56A4: $D7
    ld c, d                                       ; $56A5: $4A
    ld [bc], a                                    ; $56A6: $02
    inc bc                                        ; $56A7: $03
    ld a, [de]                                    ; $56A8: $1A
    rlca                                          ; $56A9: $07
    ld c, e                                       ; $56AA: $4B
    ld bc, $101A                                  ; $56AB: $01 $1A $10
    ld c, e                                       ; $56AE: $4B
    ld bc, $1A03                                  ; $56AF: $01 $03 $1A
    ld b, b                                       ; $56B2: $40
    ld c, e                                       ; $56B3: $4B
    ld bc, $1A02                                  ; $56B4: $01 $02 $1A
    ld h, a                                       ; $56B7: $67
    ld c, h                                       ; $56B8: $4C
    ld [bc], a                                    ; $56B9: $02
    nop                                           ; $56BA: $00
    ld a, [de]                                    ; $56BB: $1A
    ld a, l                                       ; $56BC: $7D
    ld c, h                                       ; $56BD: $4C
    nop                                           ; $56BE: $00
    ld a, [de]                                    ; $56BF: $1A
    db $FC                                        ; $56C0: $FC
    ld c, h                                       ; $56C1: $4C
    ld [bc], a                                    ; $56C2: $02
    ld [bc], a                                    ; $56C3: $02
    ld a, [de]                                    ; $56C4: $1A
    ld d, [hl]                                    ; $56C5: $56
    ld c, a                                       ; $56C6: $4F
    inc bc                                        ; $56C7: $03
    ld a, [de]                                    ; $56C8: $1A
    ld l, h                                       ; $56C9: $6C
    ld c, a                                       ; $56CA: $4F
    ld bc, $1A04                                  ; $56CB: $01 $04 $1A
    xor b                                         ; $56CE: $A8
    ld d, b                                       ; $56CF: $50
    ld [bc], a                                    ; $56D0: $02
    nop                                           ; $56D1: $00
    ld a, [de]                                    ; $56D2: $1A
    xor a                                         ; $56D3: $AF
    ld d, b                                       ; $56D4: $50
    nop                                           ; $56D5: $00
    ld a, [de]                                    ; $56D6: $1A
    rra                                           ; $56D7: $1F
    ld d, c                                       ; $56D8: $51
    ld bc, $1A02                                  ; $56D9: $01 $02 $1A
    ld h, d                                       ; $56DC: $62
    ld d, d                                       ; $56DD: $52
    ld [bc], a                                    ; $56DE: $02
    nop                                           ; $56DF: $00
    ld a, [de]                                    ; $56E0: $1A
    ld a, b                                       ; $56E1: $78
    ld d, d                                       ; $56E2: $52
    nop                                           ; $56E3: $00
    ld a, [de]                                    ; $56E4: $1A
    ld a, l                                       ; $56E5: $7D
    ld d, d                                       ; $56E6: $52
    ld bc, $1A02                                  ; $56E7: $01 $02 $1A
    sbc a                                         ; $56EA: $9F
    ld d, h                                       ; $56EB: $54
    ld [bc], a                                    ; $56EC: $02
    ld [bc], a                                    ; $56ED: $02
    rla                                           ; $56EE: $17
    db $FD                                        ; $56EF: $FD
    ld l, e                                       ; $56F0: $6B
    inc bc                                        ; $56F1: $03
    rla                                           ; $56F2: $17
    inc b                                         ; $56F3: $04
    ld l, h                                       ; $56F4: $6C
    ld [bc], a                                    ; $56F5: $02
    inc b                                         ; $56F6: $04
    rla                                           ; $56F7: $17
    inc h                                         ; $56F8: $24
    ld l, l                                       ; $56F9: $6D
    inc bc                                        ; $56FA: $03
    rla                                           ; $56FB: $17
    dec l                                         ; $56FC: $2D
    ld l, l                                       ; $56FD: $6D
    inc bc                                        ; $56FE: $03
    inc b                                         ; $56FF: $04
    rla                                           ; $5700: $17
    adc [hl]                                      ; $5701: $8E
    ld l, l                                       ; $5702: $6D
    inc b                                         ; $5703: $04
    rla                                           ; $5704: $17
    sub a                                         ; $5705: $97
    ld l, l                                       ; $5706: $6D
    ld bc, $A017                                  ; $5707: $01 $17 $A0
    ld l, l                                       ; $570A: $6D
    ld bc, $1701                                  ; $570B: $01 $01 $17
    xor c                                         ; $570E: $A9
    ld l, l                                       ; $570F: $6D
    ld [bc], a                                    ; $5710: $02
    inc bc                                        ; $5711: $03
    rla                                           ; $5712: $17
    inc c                                         ; $5713: $0C
    ld l, [hl]                                    ; $5714: $6E
    ld bc, $1517                                  ; $5715: $01 $17 $15
    ld l, [hl]                                    ; $5718: $6E
    ld [bc], a                                    ; $5719: $02
    ld [bc], a                                    ; $571A: $02
    rla                                           ; $571B: $17
    ld [hl], h                                    ; $571C: $74
    ld l, [hl]                                    ; $571D: $6E
    inc b                                         ; $571E: $04
    rla                                           ; $571F: $17
    ld a, e                                       ; $5720: $7B
    ld l, [hl]                                    ; $5721: $6E
    ld [bc], a                                    ; $5722: $02
    ld [bc], a                                    ; $5723: $02
    rla                                           ; $5724: $17
    jp c, $016E                                   ; $5725: $DA $6E $01

    rla                                           ; $5728: $17
    db $E3                                        ; $5729: $E3
    ld l, [hl]                                    ; $572A: $6E
    ld [bc], a                                    ; $572B: $02
    ld bc, $EA17                                  ; $572C: $01 $17 $EA
    ld l, [hl]                                    ; $572F: $6E
    ld bc, $F217                                  ; $5730: $01 $17 $F2
    ld l, [hl]                                    ; $5733: $6E
    inc bc                                        ; $5734: $03
    ld [bc], a                                    ; $5735: $02
    rla                                           ; $5736: $17
    ld d, l                                       ; $5737: $55
    ld l, a                                       ; $5738: $6F
    inc b                                         ; $5739: $04
    rla                                           ; $573A: $17
    ld e, h                                       ; $573B: $5C
    ld l, a                                       ; $573C: $6F
    ld bc, $6517                                  ; $573D: $01 $17 $65
    ld l, a                                       ; $5740: $6F
    ld [bc], a                                    ; $5741: $02
    inc bc                                        ; $5742: $03
    rla                                           ; $5743: $17
    add $6F                                       ; $5744: $C6 $6F
    inc b                                         ; $5746: $04
    rla                                           ; $5747: $17
    rst $08                                       ; $5748: $CF
    ld l, a                                       ; $5749: $6F
    inc b                                         ; $574A: $04
    ld [bc], a                                    ; $574B: $02
    rla                                           ; $574C: $17
    db $EC                                        ; $574D: $EC
    ld l, a                                       ; $574E: $6F
    inc b                                         ; $574F: $04
    rla                                           ; $5750: $17
    push af                                       ; $5751: $F5
    ld l, a                                       ; $5752: $6F
    ld bc, $FE17                                  ; $5753: $01 $17 $FE
    ld l, a                                       ; $5756: $6F
    inc b                                         ; $5757: $04
    rla                                           ; $5758: $17
    rlca                                          ; $5759: $07
    ld [hl], b                                    ; $575A: $70
    inc b                                         ; $575B: $04
    inc bc                                        ; $575C: $03
    rla                                           ; $575D: $17
    ld l, b                                       ; $575E: $68
    ld [hl], b                                    ; $575F: $70
    inc b                                         ; $5760: $04
    rla                                           ; $5761: $17
    ld [hl], c                                    ; $5762: $71
    ld [hl], b                                    ; $5763: $70
    ld bc, $7A17                                  ; $5764: $01 $17 $7A
    ld [hl], b                                    ; $5767: $70
    inc bc                                        ; $5768: $03
    rla                                           ; $5769: $17
    add e                                         ; $576A: $83
    ld [hl], b                                    ; $576B: $70
    inc bc                                        ; $576C: $03
    inc bc                                        ; $576D: $03
    rla                                           ; $576E: $17
    and b                                         ; $576F: $A0
    ld [hl], b                                    ; $5770: $70
    inc bc                                        ; $5771: $03
    rla                                           ; $5772: $17
    xor c                                         ; $5773: $A9
    ld [hl], b                                    ; $5774: $70
    ld bc, $B217                                  ; $5775: $01 $17 $B2
    ld [hl], b                                    ; $5778: $70
    ld [bc], a                                    ; $5779: $02
    ld [bc], a                                    ; $577A: $02
    rla                                           ; $577B: $17
    rst $08                                       ; $577C: $CF
    ld [hl], b                                    ; $577D: $70
    inc b                                         ; $577E: $04
    rla                                           ; $577F: $17
    ret c                                         ; $5780: $D8

    ld [hl], b                                    ; $5781: $70
    inc b                                         ; $5782: $04
    ld [bc], a                                    ; $5783: $02
    rla                                           ; $5784: $17
    di                                            ; $5785: $F3
    ld [hl], b                                    ; $5786: $70
    ld [bc], a                                    ; $5787: $02
    rla                                           ; $5788: $17
    db $FC                                        ; $5789: $FC
    ld [hl], b                                    ; $578A: $70
    inc bc                                        ; $578B: $03
    rla                                           ; $578C: $17
    dec b                                         ; $578D: $05
    ld [hl], c                                    ; $578E: $71
    ld bc, $0C17                                  ; $578F: $01 $17 $0C
    ld [hl], c                                    ; $5792: $71
    ld [bc], a                                    ; $5793: $02
    ld [bc], a                                    ; $5794: $02
    rla                                           ; $5795: $17
    daa                                           ; $5796: $27
    ld [hl], c                                    ; $5797: $71
    ld bc, $3D17                                  ; $5798: $01 $17 $3D
    ld [hl], c                                    ; $579B: $71
    ld [bc], a                                    ; $579C: $02
    ld bc, $5717                                  ; $579D: $01 $17 $57
    ld [hl], d                                    ; $57A0: $72
    ld [bc], a                                    ; $57A1: $02
    rla                                           ; $57A2: $17
    ld e, [hl]                                    ; $57A3: $5E
    ld [hl], d                                    ; $57A4: $72
    ld [bc], a                                    ; $57A5: $02
    ld bc, $9B17                                  ; $57A6: $01 $17 $9B
    ld [hl], d                                    ; $57A9: $72
    ld [bc], a                                    ; $57AA: $02
    rla                                           ; $57AB: $17
    or c                                          ; $57AC: $B1
    ld [hl], d                                    ; $57AD: $72
    inc b                                         ; $57AE: $04
    ld [bc], a                                    ; $57AF: $02
    inc hl                                        ; $57B0: $23
    nop                                           ; $57B1: $00
    ld b, b                                       ; $57B2: $40
    inc b                                         ; $57B3: $04
    inc hl                                        ; $57B4: $23
    dec bc                                        ; $57B5: $0B
    ld b, b                                       ; $57B6: $40
    inc bc                                        ; $57B7: $03
    inc hl                                        ; $57B8: $23
    inc d                                         ; $57B9: $14
    ld b, b                                       ; $57BA: $40
    ld bc, $1D23                                  ; $57BB: $01 $23 $1D
    ld b, b                                       ; $57BE: $40
    ld [bc], a                                    ; $57BF: $02
    ld bc, $2423                                  ; $57C0: $01 $23 $24
    ld b, b                                       ; $57C3: $40
    ld bc, $2C23                                  ; $57C4: $01 $23 $2C
    ld b, b                                       ; $57C7: $40
    ld [bc], a                                    ; $57C8: $02
    ld [bc], a                                    ; $57C9: $02
    inc hl                                        ; $57CA: $23
    ld a, c                                       ; $57CB: $79
    ld b, e                                       ; $57CC: $43
    ld bc, $8223                                  ; $57CD: $01 $23 $82
    ld b, e                                       ; $57D0: $43
    ld d, $01                                     ; $57D1: $16 $01
    inc hl                                        ; $57D3: $23
    db $EB                                        ; $57D4: $EB
    ld b, e                                       ; $57D5: $43
    ld bc, $2323                                  ; $57D6: $01 $23 $23
    ld b, h                                       ; $57D9: $44
    ld bc, $5B23                                  ; $57DA: $01 $23 $5B
    ld b, h                                       ; $57DD: $44
    ld bc, $9323                                  ; $57DE: $01 $23 $93
    ld b, h                                       ; $57E1: $44
    ld bc, $CB23                                  ; $57E2: $01 $23 $CB
    ld b, h                                       ; $57E5: $44
    ld bc, $0323                                  ; $57E6: $01 $23 $03
    ld b, l                                       ; $57E9: $45
    ld bc, $3B23                                  ; $57EA: $01 $23 $3B
    ld b, l                                       ; $57ED: $45
    ld bc, $7323                                  ; $57EE: $01 $23 $73
    ld b, l                                       ; $57F1: $45
    ld bc, $AB23                                  ; $57F2: $01 $23 $AB
    ld b, l                                       ; $57F5: $45
    ld bc, $E323                                  ; $57F6: $01 $23 $E3
    ld b, l                                       ; $57F9: $45
    ld bc, $8B23                                  ; $57FA: $01 $23 $8B
    ld b, e                                       ; $57FD: $43
    ld bc, $9323                                  ; $57FE: $01 $23 $93
    ld b, e                                       ; $5801: $43
    ld bc, $9B23                                  ; $5802: $01 $23 $9B
    ld b, e                                       ; $5805: $43
    ld bc, $A323                                  ; $5806: $01 $23 $A3
    ld b, e                                       ; $5809: $43
    ld bc, $AB23                                  ; $580A: $01 $23 $AB
    ld b, e                                       ; $580D: $43
    ld bc, $B323                                  ; $580E: $01 $23 $B3
    ld b, e                                       ; $5811: $43
    ld bc, $BB23                                  ; $5812: $01 $23 $BB
    ld b, e                                       ; $5815: $43
    ld bc, $C323                                  ; $5816: $01 $23 $C3
    ld b, e                                       ; $5819: $43
    ld bc, $CB23                                  ; $581A: $01 $23 $CB
    ld b, e                                       ; $581D: $43
    ld bc, $D323                                  ; $581E: $01 $23 $D3
    ld b, e                                       ; $5821: $43
    ld bc, $DB23                                  ; $5822: $01 $23 $DB
    ld b, e                                       ; $5825: $43
    ld bc, $E323                                  ; $5826: $01 $23 $E3
    ld b, e                                       ; $5829: $43
    rlca                                          ; $582A: $07
    nop                                           ; $582B: $00
    inc hl                                        ; $582C: $23
    ld l, a                                       ; $582D: $6F
    ld b, [hl]                                    ; $582E: $46
    nop                                           ; $582F: $00
    inc hl                                        ; $5830: $23
    ld [hl], e                                    ; $5831: $73
    ld b, [hl]                                    ; $5832: $46
    nop                                           ; $5833: $00
    inc hl                                        ; $5834: $23
    ld [hl], a                                    ; $5835: $77
    ld b, [hl]                                    ; $5836: $46
    nop                                           ; $5837: $00
    inc hl                                        ; $5838: $23
    ld a, e                                       ; $5839: $7B
    ld b, [hl]                                    ; $583A: $46
    inc bc                                        ; $583B: $03
    inc hl                                        ; $583C: $23
    ld a, a                                       ; $583D: $7F
    ld b, [hl]                                    ; $583E: $46
    ld bc, $8823                                  ; $583F: $01 $23 $88
    ld b, [hl]                                    ; $5842: $46
    inc b                                         ; $5843: $04
    inc hl                                        ; $5844: $23
    adc a                                         ; $5845: $8F
    ld b, [hl]                                    ; $5846: $46
    ld bc, $2301                                  ; $5847: $01 $01 $23
    sbc b                                         ; $584A: $98
    ld b, [hl]                                    ; $584B: $46
    inc b                                         ; $584C: $04
    nop                                           ; $584D: $00
    inc hl                                        ; $584E: $23
    xor $46                                       ; $584F: $EE $46
    ld [bc], a                                    ; $5851: $02
    inc hl                                        ; $5852: $23
    di                                            ; $5853: $F3
    ld b, [hl]                                    ; $5854: $46
    inc b                                         ; $5855: $04
    inc hl                                        ; $5856: $23
    db $FC                                        ; $5857: $FC
    ld b, [hl]                                    ; $5858: $46
    ld bc, $0523                                  ; $5859: $01 $23 $05
    ld b, a                                       ; $585C: $47
    ld [bc], a                                    ; $585D: $02
    ld bc, $0E23                                  ; $585E: $01 $23 $0E
    ld b, a                                       ; $5861: $47
    ld bc, $EF23                                  ; $5862: $01 $23 $EF
    ld b, a                                       ; $5865: $47
    rlca                                          ; $5866: $07
    nop                                           ; $5867: $00
    inc hl                                        ; $5868: $23
    ld [hl], l                                    ; $5869: $75
    ld c, b                                       ; $586A: $48
    nop                                           ; $586B: $00
    inc hl                                        ; $586C: $23
    ld a, c                                       ; $586D: $79
    ld c, b                                       ; $586E: $48
    nop                                           ; $586F: $00
    inc hl                                        ; $5870: $23
    ld a, l                                       ; $5871: $7D
    ld c, b                                       ; $5872: $48
    nop                                           ; $5873: $00
    inc hl                                        ; $5874: $23
    add c                                         ; $5875: $81
    ld c, b                                       ; $5876: $48
    inc b                                         ; $5877: $04
    inc hl                                        ; $5878: $23
    add l                                         ; $5879: $85
    ld c, b                                       ; $587A: $48
    ld bc, $8E23                                  ; $587B: $01 $23 $8E
    ld c, b                                       ; $587E: $48
    inc bc                                        ; $587F: $03
    inc hl                                        ; $5880: $23
    sub a                                         ; $5881: $97
    ld c, b                                       ; $5882: $48
    ld [bc], a                                    ; $5883: $02
    ld bc, $9E23                                  ; $5884: $01 $23 $9E
    ld c, b                                       ; $5887: $48
    ld bc, $A623                                  ; $5888: $01 $23 $A6
    ld c, b                                       ; $588B: $48
    inc bc                                        ; $588C: $03
    ld [bc], a                                    ; $588D: $02
    inc hl                                        ; $588E: $23
    db $FC                                        ; $588F: $FC
    ld c, b                                       ; $5890: $48
    inc bc                                        ; $5891: $03
    inc hl                                        ; $5892: $23
    dec b                                         ; $5893: $05
    ld c, c                                       ; $5894: $49
    ld bc, $0E23                                  ; $5895: $01 $23 $0E
    ld c, c                                       ; $5898: $49
    ld [bc], a                                    ; $5899: $02
    ld bc, $1723                                  ; $589A: $01 $23 $17
    ld c, c                                       ; $589D: $49
    ld bc, $6D23                                  ; $589E: $01 $23 $6D
    ld c, c                                       ; $58A1: $49
    ld bc, $2302                                  ; $58A2: $01 $02 $23
    xor b                                         ; $58A5: $A8
    ld c, c                                       ; $58A6: $49
    ld bc, $2301                                  ; $58A7: $01 $01 $23
    xor a                                         ; $58AA: $AF
    ld c, c                                       ; $58AB: $49
    ld bc, $2302                                  ; $58AC: $01 $02 $23
    ld [HeaderRAMSize], a                         ; $58AF: $EA $49 $01
    ld bc, $F123                                  ; $58B2: $01 $23 $F1
    ld c, c                                       ; $58B5: $49
    ld bc, $2303                                  ; $58B6: $01 $03 $23
    inc l                                         ; $58B9: $2C
    ld c, d                                       ; $58BA: $4A
    inc bc                                        ; $58BB: $03
    ld bc, $3523                                  ; $58BC: $01 $23 $35
    ld c, d                                       ; $58BF: $4A
    ld bc, $5123                                  ; $58C0: $01 $23 $51
    ld c, d                                       ; $58C3: $4A
    ld bc, $6D23                                  ; $58C4: $01 $23 $6D
    ld c, d                                       ; $58C7: $4A
    ld bc, $2304                                  ; $58C8: $01 $04 $23
    xor b                                         ; $58CB: $A8
    ld c, d                                       ; $58CC: $4A
    inc b                                         ; $58CD: $04
    ld bc, $B123                                  ; $58CE: $01 $23 $B1
    ld c, d                                       ; $58D1: $4A
    ld bc, $0423                                  ; $58D2: $01 $23 $04
    ld c, e                                       ; $58D5: $4B
    ld bc, $6223                                  ; $58D6: $01 $23 $62
    ld c, e                                       ; $58D9: $4B
    ld bc, $6A23                                  ; $58DA: $01 $23 $6A
    ld c, e                                       ; $58DD: $4B
    ld bc, $2304                                  ; $58DE: $01 $04 $23
    and l                                         ; $58E1: $A5
    ld c, e                                       ; $58E2: $4B
    ld bc, $2301                                  ; $58E3: $01 $01 $23
    xor [hl]                                      ; $58E6: $AE
    ld c, e                                       ; $58E7: $4B
    ld bc, $2303                                  ; $58E8: $01 $03 $23
    jp hl                                         ; $58EB: $E9


    ld c, e                                       ; $58EC: $4B
    ld [bc], a                                    ; $58ED: $02
    ld bc, $F223                                  ; $58EE: $01 $23 $F2
    ld c, e                                       ; $58F1: $4B
    ld bc, $FA23                                  ; $58F2: $01 $23 $FA
    ld c, e                                       ; $58F5: $4B
    inc b                                         ; $58F6: $04
    ld bc, $3523                                  ; $58F7: $01 $23 $35
    ld c, h                                       ; $58FA: $4C
    ld [bc], a                                    ; $58FB: $02
    inc hl                                        ; $58FC: $23
    ld e, l                                       ; $58FD: $5D
    ld c, h                                       ; $58FE: $4C
    ld bc, $6623                                  ; $58FF: $01 $23 $66
    ld c, h                                       ; $5902: $4C
    ld bc, $6F23                                  ; $5903: $01 $23 $6F
    ld c, h                                       ; $5906: $4C
    inc bc                                        ; $5907: $03
    ld bc, $8423                                  ; $5908: $01 $23 $84
    ld c, h                                       ; $590B: $4C
    ld bc, $1A23                                  ; $590C: $01 $23 $1A
    ld c, l                                       ; $590F: $4D
    ld bc, $5E23                                  ; $5910: $01 $23 $5E
    ld c, l                                       ; $5913: $4D
    inc bc                                        ; $5914: $03
    ld bc, $8823                                  ; $5915: $01 $23 $88
    ld c, [hl]                                    ; $5918: $4E
    ld [bc], a                                    ; $5919: $02
    inc hl                                        ; $591A: $23
    sbc [hl]                                      ; $591B: $9E
    ld c, [hl]                                    ; $591C: $4E
    ld [bc], a                                    ; $591D: $02
    inc hl                                        ; $591E: $23
    and l                                         ; $591F: $A5
    ld c, [hl]                                    ; $5920: $4E
    inc b                                         ; $5921: $04
    ld bc, $AC23                                  ; $5922: $01 $23 $AC
    ld c, [hl]                                    ; $5925: $4E
    ld bc, $F023                                  ; $5926: $01 $23 $F0
    ld c, [hl]                                    ; $5929: $4E
    ld bc, $F823                                  ; $592A: $01 $23 $F8
    ld c, [hl]                                    ; $592D: $4E
    ld bc, $0023                                  ; $592E: $01 $23 $00
    ld c, a                                       ; $5931: $4F
    inc bc                                        ; $5932: $03
    ld bc, $9024                                  ; $5933: $01 $24 $90
    ld h, a                                       ; $5936: $67
    ld bc, $B224                                  ; $5937: $01 $24 $B2
    ld h, a                                       ; $593A: $67
    ld [bc], a                                    ; $593B: $02
    inc h                                         ; $593C: $24
    bit 4, a                                      ; $593D: $CB $67
    inc bc                                        ; $593F: $03
    ld bc, $D424                                  ; $5940: $01 $24 $D4
    ld h, a                                       ; $5943: $67
    ld bc, $DC24                                  ; $5944: $01 $24 $DC
    ld h, a                                       ; $5947: $67
    ld bc, $E424                                  ; $5948: $01 $24 $E4
    ld h, a                                       ; $594B: $67
    ld bc, $2401                                  ; $594C: $01 $01 $24
    or [hl]                                       ; $594F: $B6
    ld l, b                                       ; $5950: $68
    ld [bc], a                                    ; $5951: $02
    ld bc, $BF24                                  ; $5952: $01 $24 $BF
    ld l, b                                       ; $5955: $68
    ld bc, $C724                                  ; $5956: $01 $24 $C7
    ld l, b                                       ; $5959: $68
    nop                                           ; $595A: $00
    dec b                                         ; $595B: $05
    ld bc, $5C24                                  ; $595C: $01 $24 $5C
    ld l, c                                       ; $595F: $69
    inc bc                                        ; $5960: $03
    inc h                                         ; $5961: $24
    add h                                         ; $5962: $84
    ld l, c                                       ; $5963: $69
    nop                                           ; $5964: $00
    inc h                                         ; $5965: $24
    adc l                                         ; $5966: $8D
    ld l, c                                       ; $5967: $69
    nop                                           ; $5968: $00
    inc h                                         ; $5969: $24
    xor b                                         ; $596A: $A8
    ld l, c                                       ; $596B: $69
    nop                                           ; $596C: $00
    inc h                                         ; $596D: $24
    jp $0269                                      ; $596E: $C3 $69 $02


    ld bc, $DE24                                  ; $5971: $01 $24 $DE
    ld l, c                                       ; $5974: $69
    ld bc, $E624                                  ; $5975: $01 $24 $E6
    ld l, c                                       ; $5978: $69
    inc bc                                        ; $5979: $03
    inc b                                         ; $597A: $04
    inc h                                         ; $597B: $24
    ld c, b                                       ; $597C: $48
    ld l, l                                       ; $597D: $6D
    ld bc, $5124                                  ; $597E: $01 $24 $51
    ld l, l                                       ; $5981: $6D
    inc bc                                        ; $5982: $03
    inc h                                         ; $5983: $24
    ld e, d                                       ; $5984: $5A
    ld l, l                                       ; $5985: $6D
    ld [$2401], sp                                ; $5986: $08 $01 $24
    ld h, e                                       ; $5989: $63
    ld l, l                                       ; $598A: $6D
    ld bc, $A724                                  ; $598B: $01 $24 $A7
    ld l, l                                       ; $598E: $6D
    ld bc, $EB24                                  ; $598F: $01 $24 $EB
    ld l, l                                       ; $5992: $6D
    ld bc, $2F24                                  ; $5993: $01 $24 $2F
    ld l, [hl]                                    ; $5996: $6E
    ld bc, $3724                                  ; $5997: $01 $24 $37
    ld l, [hl]                                    ; $599A: $6E
    ld bc, $3F24                                  ; $599B: $01 $24 $3F
    ld l, [hl]                                    ; $599E: $6E
    ld bc, $4724                                  ; $599F: $01 $24 $47
    ld l, [hl]                                    ; $59A2: $6E
    ld bc, $4F24                                  ; $59A3: $01 $24 $4F
    ld l, [hl]                                    ; $59A6: $6E
    ld bc, $2401                                  ; $59A7: $01 $01 $24
    adc d                                         ; $59AA: $8A
    ld l, [hl]                                    ; $59AB: $6E
    ld bc, $2401                                  ; $59AC: $01 $01 $24
    cp [hl]                                       ; $59AF: $BE
    ld l, [hl]                                    ; $59B0: $6E
    inc bc                                        ; $59B1: $03
    ld bc, $8E24                                  ; $59B2: $01 $24 $8E
    ld [hl], b                                    ; $59B5: $70
    inc bc                                        ; $59B6: $03
    inc h                                         ; $59B7: $24
    pop bc                                        ; $59B8: $C1
    ld [hl], b                                    ; $59B9: $70
    inc b                                         ; $59BA: $04
    inc h                                         ; $59BB: $24
    jp z, $0270                                   ; $59BC: $CA $70 $02

    ld bc, $D324                                  ; $59BF: $01 $24 $D3
    ld [hl], b                                    ; $59C2: $70
    ld bc, $7B24                                  ; $59C3: $01 $24 $7B
    ld [hl], c                                    ; $59C6: $71
    nop                                           ; $59C7: $00
    ld [bc], a                                    ; $59C8: $02
    ld bc, $C424                                  ; $59C9: $01 $24 $C4
    ld [hl], e                                    ; $59CC: $73
    inc b                                         ; $59CD: $04
    inc h                                         ; $59CE: $24
    di                                            ; $59CF: $F3
    ld [hl], e                                    ; $59D0: $73
    inc b                                         ; $59D1: $04
    ld bc, $FC24                                  ; $59D2: $01 $24 $FC
    ld [hl], e                                    ; $59D5: $73
    ld bc, $0424                                  ; $59D6: $01 $24 $04
    ld [hl], h                                    ; $59D9: $74
    ld bc, $0C24                                  ; $59DA: $01 $24 $0C
    ld [hl], h                                    ; $59DD: $74
    ld bc, $1424                                  ; $59DE: $01 $24 $14
    ld [hl], h                                    ; $59E1: $74
    ld [bc], a                                    ; $59E2: $02
    ld bc, $AE24                                  ; $59E3: $01 $24 $AE
    ld [hl], h                                    ; $59E6: $74
    inc bc                                        ; $59E7: $03
    inc h                                         ; $59E8: $24
    db $D3                                        ; $59E9: $D3
    ld [hl], h                                    ; $59EA: $74
    ld bc, $2401                                  ; $59EB: $01 $01 $24
    call c, $0274                                 ; $59EE: $DC $74 $02
    ld bc, $6A24                                  ; $59F1: $01 $24 $6A
    ld [hl], l                                    ; $59F4: $75
    inc b                                         ; $59F5: $04
    inc h                                         ; $59F6: $24
    add [hl]                                      ; $59F7: $86
    ld [hl], l                                    ; $59F8: $75
    inc b                                         ; $59F9: $04
    ld bc, $8F24                                  ; $59FA: $01 $24 $8F
    ld [hl], l                                    ; $59FD: $75
    ld bc, $D324                                  ; $59FE: $01 $24 $D3
    ld [hl], l                                    ; $5A01: $75
    ld bc, $DB24                                  ; $5A02: $01 $24 $DB
    ld [hl], l                                    ; $5A05: $75
    ld bc, $E324                                  ; $5A06: $01 $24 $E3
    ld [hl], l                                    ; $5A09: $75
    ld bc, $2403                                  ; $5A0A: $01 $03 $24
    ld l, b                                       ; $5A0D: $68
    halt                                          ; $5A0E: $76
    inc bc                                        ; $5A0F: $03
    ld bc, $7124                                  ; $5A10: $01 $24 $71
    halt                                          ; $5A13: $76
    ld bc, $8924                                  ; $5A14: $01 $24 $89
    ld [hl], a                                    ; $5A17: $77
    ld bc, $9824                                  ; $5A18: $01 $24 $98
    ld a, b                                       ; $5A1B: $78
    ld bc, $2404                                  ; $5A1C: $01 $04 $24
    ld h, [hl]                                    ; $5A1F: $66
    ld a, d                                       ; $5A20: $7A
    ld [bc], a                                    ; $5A21: $02
    ld bc, $6F24                                  ; $5A22: $01 $24 $6F
    ld a, d                                       ; $5A25: $7A
    ld bc, $C524                                  ; $5A26: $01 $24 $C5
    ld a, d                                       ; $5A29: $7A
    ld bc, $2402                                  ; $5A2A: $01 $02 $24
    nop                                           ; $5A2D: $00
    ld a, e                                       ; $5A2E: $7B
    inc bc                                        ; $5A2F: $03
    ld [bc], a                                    ; $5A30: $02
    dec de                                        ; $5A31: $1B
    dec l                                         ; $5A32: $2D
    ld d, c                                       ; $5A33: $51
    ld [bc], a                                    ; $5A34: $02
    dec de                                        ; $5A35: $1B
    ld [hl], $51                                  ; $5A36: $36 $51
    ld bc, $3F1B                                  ; $5A38: $01 $1B $3F
    ld d, c                                       ; $5A3B: $51
    inc bc                                        ; $5A3C: $03
    ld bc, $4C1B                                  ; $5A3D: $01 $1B $4C
    ld d, c                                       ; $5A40: $51
    nop                                           ; $5A41: $00
    dec de                                        ; $5A42: $1B
    ld e, b                                       ; $5A43: $58
    ld d, c                                       ; $5A44: $51
    nop                                           ; $5A45: $00
    dec de                                        ; $5A46: $1B
    ld a, [hl]                                    ; $5A47: $7E
    ld d, c                                       ; $5A48: $51
    ld [bc], a                                    ; $5A49: $02
    ld bc, $E31B                                  ; $5A4A: $01 $1B $E3
    ld d, h                                       ; $5A4D: $54
    ld [bc], a                                    ; $5A4E: $02
    dec de                                        ; $5A4F: $1B
    db $EC                                        ; $5A50: $EC
    ld d, h                                       ; $5A51: $54
    inc bc                                        ; $5A52: $03
    ld bc, $F51B                                  ; $5A53: $01 $1B $F5
    ld d, h                                       ; $5A56: $54
    nop                                           ; $5A57: $00
    dec de                                        ; $5A58: $1B
    ld bc, $0055                                  ; $5A59: $01 $55 $00
    dec de                                        ; $5A5C: $1B
    cpl                                           ; $5A5D: $2F
    ld d, l                                       ; $5A5E: $55
    dec b                                         ; $5A5F: $05
    ld bc, $931B                                  ; $5A60: $01 $1B $93
    ld d, l                                       ; $5A63: $55
    ld bc, $9C1B                                  ; $5A64: $01 $1B $9C
    ld d, l                                       ; $5A67: $55
    inc bc                                        ; $5A68: $03
    dec de                                        ; $5A69: $1B
    and l                                         ; $5A6A: $A5
    ld d, l                                       ; $5A6B: $55
    ld [bc], a                                    ; $5A6C: $02
    dec de                                        ; $5A6D: $1B
    xor [hl]                                      ; $5A6E: $AE
    ld d, l                                       ; $5A6F: $55
    inc bc                                        ; $5A70: $03
    dec de                                        ; $5A71: $1B
    or a                                          ; $5A72: $B7
    ld d, l                                       ; $5A73: $55
    inc bc                                        ; $5A74: $03
    ld bc, $BB1B                                  ; $5A75: $01 $1B $BB
    ld d, l                                       ; $5A78: $55
    ld bc, $D81B                                  ; $5A79: $01 $1B $D8
    ld d, l                                       ; $5A7C: $55
    ld bc, $E01B                                  ; $5A7D: $01 $1B $E0
    ld d, l                                       ; $5A80: $55
    ld [bc], a                                    ; $5A81: $02
    ld [bc], a                                    ; $5A82: $02
    dec de                                        ; $5A83: $1B
    cp d                                          ; $5A84: $BA
    ld d, [hl]                                    ; $5A85: $56
    ld bc, $C31B                                  ; $5A86: $01 $1B $C3
    ld d, [hl]                                    ; $5A89: $56
    inc b                                         ; $5A8A: $04
    ld [bc], a                                    ; $5A8B: $02
    dec de                                        ; $5A8C: $1B
    ld c, $57                                     ; $5A8D: $0E $57
    inc b                                         ; $5A8F: $04
    dec de                                        ; $5A90: $1B
    rla                                           ; $5A91: $17
    ld d, a                                       ; $5A92: $57
    ld bc, $201B                                  ; $5A93: $01 $1B $20
    ld d, a                                       ; $5A96: $57
    ld bc, $2D1B                                  ; $5A97: $01 $1B $2D
    ld d, a                                       ; $5A9A: $57
    rlca                                          ; $5A9B: $07
    ld bc, $3A1B                                  ; $5A9C: $01 $1B $3A
    ld d, a                                       ; $5A9F: $57
    ld bc, $461B                                  ; $5AA0: $01 $1B $46
    ld d, a                                       ; $5AA3: $57
    ld bc, $521B                                  ; $5AA4: $01 $1B $52
    ld d, a                                       ; $5AA7: $57
    nop                                           ; $5AA8: $00
    dec de                                        ; $5AA9: $1B
    ld e, d                                       ; $5AAA: $5A
    ld d, a                                       ; $5AAB: $57
    nop                                           ; $5AAC: $00
    dec de                                        ; $5AAD: $1B
    ld a, [hl]                                    ; $5AAE: $7E
    ld d, a                                       ; $5AAF: $57
    nop                                           ; $5AB0: $00
    dec de                                        ; $5AB1: $1B
    xor e                                         ; $5AB2: $AB
    ld d, a                                       ; $5AB3: $57
    nop                                           ; $5AB4: $00
    dec de                                        ; $5AB5: $1B
    push bc                                       ; $5AB6: $C5
    ld d, a                                       ; $5AB7: $57
    inc b                                         ; $5AB8: $04
    ld bc, $5C1B                                  ; $5AB9: $01 $1B $5C
    ld e, e                                       ; $5ABC: $5B
    inc bc                                        ; $5ABD: $03
    dec de                                        ; $5ABE: $1B
    ld h, l                                       ; $5ABF: $65
    ld e, e                                       ; $5AC0: $5B
    ld bc, $6E1B                                  ; $5AC1: $01 $1B $6E
    ld e, e                                       ; $5AC4: $5B
    ld bc, $7B1B                                  ; $5AC5: $01 $1B $7B
    ld e, e                                       ; $5AC8: $5B
    inc bc                                        ; $5AC9: $03
    ld bc, $8B1B                                  ; $5ACA: $01 $1B $8B
    ld e, e                                       ; $5ACD: $5B
    nop                                           ; $5ACE: $00
    dec de                                        ; $5ACF: $1B
    sub e                                         ; $5AD0: $93
    ld e, e                                       ; $5AD1: $5B
    nop                                           ; $5AD2: $00
    dec de                                        ; $5AD3: $1B
    bit 3, e                                      ; $5AD4: $CB $5B
    ld bc, $1B04                                  ; $5AD6: $01 $04 $1B
    sbc h                                         ; $5AD9: $9C
    ld e, [hl]                                    ; $5ADA: $5E
    ld [$1B01], sp                                ; $5ADB: $08 $01 $1B
    and l                                         ; $5ADE: $A5
    ld e, [hl]                                    ; $5ADF: $5E
    ld bc, $AD1B                                  ; $5AE0: $01 $1B $AD
    ld e, [hl]                                    ; $5AE3: $5E
    ld bc, $B51B                                  ; $5AE4: $01 $1B $B5
    ld e, [hl]                                    ; $5AE7: $5E
    nop                                           ; $5AE8: $00
    dec de                                        ; $5AE9: $1B
    jp nc, $005E                                  ; $5AEA: $D2 $5E $00

    dec de                                        ; $5AED: $1B
    ld [de], a                                    ; $5AEE: $12
    ld e, a                                       ; $5AEF: $5F
    nop                                           ; $5AF0: $00
    dec de                                        ; $5AF1: $1B
    ld b, b                                       ; $5AF2: $40
    ld e, a                                       ; $5AF3: $5F
    nop                                           ; $5AF4: $00
    dec de                                        ; $5AF5: $1B
    sub c                                         ; $5AF6: $91
    ld e, a                                       ; $5AF7: $5F
    nop                                           ; $5AF8: $00
    dec de                                        ; $5AF9: $1B
    xor a                                         ; $5AFA: $AF
    ld e, a                                       ; $5AFB: $5F
    ld [bc], a                                    ; $5AFC: $02
    inc b                                         ; $5AFD: $04
    dec de                                        ; $5AFE: $1B
    inc h                                         ; $5AFF: $24
    ld h, b                                       ; $5B00: $60
    ld bc, $2D1B                                  ; $5B01: $01 $1B $2D
    ld h, b                                       ; $5B04: $60
    ld bc, $1B01                                  ; $5B05: $01 $01 $1B
    ld [hl], $60                                  ; $5B08: $36 $60
    inc bc                                        ; $5B0A: $03
    ld [bc], a                                    ; $5B0B: $02
    dec de                                        ; $5B0C: $1B
    add e                                         ; $5B0D: $83
    ld h, b                                       ; $5B0E: $60
    ld bc, $8C1B                                  ; $5B0F: $01 $1B $8C
    ld h, b                                       ; $5B12: $60
    inc bc                                        ; $5B13: $03
    dec de                                        ; $5B14: $1B
    sub l                                         ; $5B15: $95
    ld h, b                                       ; $5B16: $60
    ld [bc], a                                    ; $5B17: $02
    ld bc, $9E1B                                  ; $5B18: $01 $1B $9E
    ld h, b                                       ; $5B1B: $60
    ld bc, $A61B                                  ; $5B1C: $01 $1B $A6
    ld h, b                                       ; $5B1F: $60
    ld [bc], a                                    ; $5B20: $02
    ld [bc], a                                    ; $5B21: $02
    dec de                                        ; $5B22: $1B
    ld sp, hl                                     ; $5B23: $F9
    ld h, b                                       ; $5B24: $60
    ld bc, $021B                                  ; $5B25: $01 $1B $02
    ld h, c                                       ; $5B28: $61
    ld a, [bc]                                    ; $5B29: $0A
    ld bc, $0F1B                                  ; $5B2A: $01 $1B $0F
    ld h, c                                       ; $5B2D: $61
    ld bc, $171B                                  ; $5B2E: $01 $1B $17
    ld h, c                                       ; $5B31: $61
    ld bc, $231B                                  ; $5B32: $01 $1B $23
    ld h, c                                       ; $5B35: $61
    ld bc, $421B                                  ; $5B36: $01 $1B $42
    ld h, c                                       ; $5B39: $61
    ld bc, $6A1B                                  ; $5B3A: $01 $1B $6A
    ld h, c                                       ; $5B3D: $61
    ld bc, $921B                                  ; $5B3E: $01 $1B $92
    ld h, c                                       ; $5B41: $61
    ld bc, $BA1B                                  ; $5B42: $01 $1B $BA
    ld h, c                                       ; $5B45: $61
    ld bc, $C61B                                  ; $5B46: $01 $1B $C6
    ld h, c                                       ; $5B49: $61
    nop                                           ; $5B4A: $00
    dec de                                        ; $5B4B: $1B
    adc $61                                       ; $5B4C: $CE $61
    nop                                           ; $5B4E: $00
    dec de                                        ; $5B4F: $1B
    jp hl                                         ; $5B50: $E9


    ld h, c                                       ; $5B51: $61
    inc b                                         ; $5B52: $04
    inc b                                         ; $5B53: $04
    dec de                                        ; $5B54: $1B
    ld a, [hl]                                    ; $5B55: $7E
    ld h, h                                       ; $5B56: $64
    ld bc, $871B                                  ; $5B57: $01 $1B $87
    ld h, h                                       ; $5B5A: $64
    ld [bc], a                                    ; $5B5B: $02
    dec de                                        ; $5B5C: $1B
    sub b                                         ; $5B5D: $90
    ld h, h                                       ; $5B5E: $64
    ld bc, $991B                                  ; $5B5F: $01 $1B $99
    ld h, h                                       ; $5B62: $64
    ld bc, $1B01                                  ; $5B63: $01 $01 $1B
    jp nc, $0164                                  ; $5B66: $D2 $64 $01

    ld bc, $DB1B                                  ; $5B69: $01 $1B $DB
    ld h, h                                       ; $5B6C: $64
    dec b                                         ; $5B6D: $05
    ld [bc], a                                    ; $5B6E: $02
    dec de                                        ; $5B6F: $1B
    jp $0265                                      ; $5B70: $C3 $65 $02


    dec de                                        ; $5B73: $1B
    call z, $0365                                 ; $5B74: $CC $65 $03
    dec de                                        ; $5B77: $1B
    push de                                       ; $5B78: $D5
    ld h, l                                       ; $5B79: $65
    ld [bc], a                                    ; $5B7A: $02
    dec de                                        ; $5B7B: $1B
    sbc $65                                       ; $5B7C: $DE $65
    nop                                           ; $5B7E: $00
    dec de                                        ; $5B7F: $1B
    rst $20                                       ; $5B80: $E7
    ld h, l                                       ; $5B81: $65
    ld bc, $1B01                                  ; $5B82: $01 $01 $1B
    or $65                                        ; $5B85: $F6 $65
    ld [bc], a                                    ; $5B87: $02
    ld bc, $AB1B                                  ; $5B88: $01 $1B $AB
    ld h, a                                       ; $5B8B: $67
    ld [bc], a                                    ; $5B8C: $02
    dec de                                        ; $5B8D: $1B
    or h                                          ; $5B8E: $B4
    ld h, a                                       ; $5B8F: $67
    ld bc, $1B01                                  ; $5B90: $01 $01 $1B
    cp l                                          ; $5B93: $BD
    ld h, a                                       ; $5B94: $67
    dec b                                         ; $5B95: $05
    ld bc, $FF1B                                  ; $5B96: $01 $1B $FF
    ld h, a                                       ; $5B99: $67
    ld [bc], a                                    ; $5B9A: $02
    dec de                                        ; $5B9B: $1B
    ld [$0268], sp                                ; $5B9C: $08 $68 $02
    dec de                                        ; $5B9F: $1B
    ld de, $0268                                  ; $5BA0: $11 $68 $02
    dec de                                        ; $5BA3: $1B
    ld e, $68                                     ; $5BA4: $1E $68
    ld bc, $2B1B                                  ; $5BA6: $01 $1B $2B
    ld l, b                                       ; $5BA9: $68
    ld a, [bc]                                    ; $5BAA: $0A
    ld bc, $2F1B                                  ; $5BAB: $01 $1B $2F
    ld l, b                                       ; $5BAE: $68
    ld bc, $3B1B                                  ; $5BAF: $01 $1B $3B
    ld l, b                                       ; $5BB2: $68
    nop                                           ; $5BB3: $00
    dec de                                        ; $5BB4: $1B
    ld b, e                                       ; $5BB5: $43
    ld l, b                                       ; $5BB6: $68
    nop                                           ; $5BB7: $00
    dec de                                        ; $5BB8: $1B
    add e                                         ; $5BB9: $83
    ld l, b                                       ; $5BBA: $68
    nop                                           ; $5BBB: $00
    dec de                                        ; $5BBC: $1B
    or a                                          ; $5BBD: $B7
    ld l, b                                       ; $5BBE: $68
    nop                                           ; $5BBF: $00
    dec de                                        ; $5BC0: $1B
    jp hl                                         ; $5BC1: $E9


    ld l, b                                       ; $5BC2: $68
    nop                                           ; $5BC3: $00
    dec de                                        ; $5BC4: $1B
    inc bc                                        ; $5BC5: $03
    ld l, c                                       ; $5BC6: $69
    nop                                           ; $5BC7: $00
    dec de                                        ; $5BC8: $1B
    ld sp, $0069                                  ; $5BC9: $31 $69 $00
    dec de                                        ; $5BCC: $1B
    inc a                                         ; $5BCD: $3C
    ld l, c                                       ; $5BCE: $69
    nop                                           ; $5BCF: $00
    dec de                                        ; $5BD0: $1B
    ld b, a                                       ; $5BD1: $47
    ld l, c                                       ; $5BD2: $69
    inc bc                                        ; $5BD3: $03
    ld bc, $811B                                  ; $5BD4: $01 $1B $81
    ld l, l                                       ; $5BD7: $6D
    inc b                                         ; $5BD8: $04
    dec de                                        ; $5BD9: $1B
    adc d                                         ; $5BDA: $8A
    ld l, l                                       ; $5BDB: $6D
    ld [bc], a                                    ; $5BDC: $02
    dec de                                        ; $5BDD: $1B
    sub e                                         ; $5BDE: $93
    ld l, l                                       ; $5BDF: $6D
    ld bc, $1B03                                  ; $5BE0: $01 $03 $1B
    db $DD                                        ; $5BE3: $DD
    ld l, l                                       ; $5BE4: $6D
    ld [bc], a                                    ; $5BE5: $02
    ld bc, $E61B                                  ; $5BE6: $01 $1B $E6
    ld l, l                                       ; $5BE9: $6D
    ld bc, $EE1B                                  ; $5BEA: $01 $1B $EE
    ld l, l                                       ; $5BED: $6D
    inc bc                                        ; $5BEE: $03
    ld bc, $4A1B                                  ; $5BEF: $01 $1B $4A
    ld l, [hl]                                    ; $5BF2: $6E
    inc bc                                        ; $5BF3: $03
    dec de                                        ; $5BF4: $1B
    ld d, e                                       ; $5BF5: $53
    ld l, [hl]                                    ; $5BF6: $6E
    inc bc                                        ; $5BF7: $03
    dec de                                        ; $5BF8: $1B
    ld e, h                                       ; $5BF9: $5C
    ld l, [hl]                                    ; $5BFA: $6E
    inc bc                                        ; $5BFB: $03
    inc b                                         ; $5BFC: $04
    dec de                                        ; $5BFD: $1B
    sbc h                                         ; $5BFE: $9C
    ld l, [hl]                                    ; $5BFF: $6E
    ld bc, $A51B                                  ; $5C00: $01 $1B $A5
    ld l, [hl]                                    ; $5C03: $6E
    ld bc, $AE1B                                  ; $5C04: $01 $1B $AE
    ld l, [hl]                                    ; $5C07: $6E
    ld [bc], a                                    ; $5C08: $02
    ld bc, $B71B                                  ; $5C09: $01 $1B $B7
    ld l, [hl]                                    ; $5C0C: $6E
    ld bc, $BF1B                                  ; $5C0D: $01 $1B $BF
    ld l, [hl]                                    ; $5C10: $6E
    inc b                                         ; $5C11: $04
    inc b                                         ; $5C12: $04
    rra                                           ; $5C13: $1F
    ld e, a                                       ; $5C14: $5F
    ld a, e                                       ; $5C15: $7B
    ld [bc], a                                    ; $5C16: $02
    rra                                           ; $5C17: $1F
    ld l, b                                       ; $5C18: $68
    ld a, e                                       ; $5C19: $7B
    ld [bc], a                                    ; $5C1A: $02
    rra                                           ; $5C1B: $1F
    ld [hl], c                                    ; $5C1C: $71
    ld a, e                                       ; $5C1D: $7B
    inc bc                                        ; $5C1E: $03
    rra                                           ; $5C1F: $1F
    ld a, d                                       ; $5C20: $7A
    ld a, e                                       ; $5C21: $7B
    ld bc, $1F01                                  ; $5C22: $01 $01 $1F
    add e                                         ; $5C25: $83
    ld a, e                                       ; $5C26: $7B
    ld bc, $1F04                                  ; $5C27: $01 $04 $1F
    cp [hl]                                       ; $5C2A: $BE
    ld a, e                                       ; $5C2B: $7B
    ld [bc], a                                    ; $5C2C: $02
    ld bc, $C71F                                  ; $5C2D: $01 $1F $C7
    ld a, e                                       ; $5C30: $7B
    ld bc, $D31F                                  ; $5C31: $01 $1F $D3
    ld a, e                                       ; $5C34: $7B
    ld [bc], a                                    ; $5C35: $02
    inc bc                                        ; $5C36: $03
    inc e                                         ; $5C37: $1C
    nop                                           ; $5C38: $00
    ld b, b                                       ; $5C39: $40
    inc b                                         ; $5C3A: $04
    inc e                                         ; $5C3B: $1C
    add hl, bc                                    ; $5C3C: $09
    ld b, b                                       ; $5C3D: $40
    dec bc                                        ; $5C3E: $0B
    nop                                           ; $5C3F: $00
    inc e                                         ; $5C40: $1C
    ld [de], a                                    ; $5C41: $12
    ld b, b                                       ; $5C42: $40
    nop                                           ; $5C43: $00
    inc e                                         ; $5C44: $1C
    ld b, e                                       ; $5C45: $43
    ld b, b                                       ; $5C46: $40
    nop                                           ; $5C47: $00
    inc e                                         ; $5C48: $1C
    sub a                                         ; $5C49: $97
    ld b, b                                       ; $5C4A: $40
    ld bc, $DD1C                                  ; $5C4B: $01 $1C $DD
    ld b, b                                       ; $5C4E: $40
    nop                                           ; $5C4F: $00
    inc e                                         ; $5C50: $1C
    ld [hl], c                                    ; $5C51: $71
    ld b, c                                       ; $5C52: $41
    nop                                           ; $5C53: $00
    inc e                                         ; $5C54: $1C
    adc c                                         ; $5C55: $89
    ld b, c                                       ; $5C56: $41
    nop                                           ; $5C57: $00
    inc e                                         ; $5C58: $1C
    or d                                          ; $5C59: $B2
    ld b, c                                       ; $5C5A: $41
    nop                                           ; $5C5B: $00
    inc e                                         ; $5C5C: $1C
    ret z                                         ; $5C5D: $C8

    ld b, c                                       ; $5C5E: $41
    nop                                           ; $5C5F: $00
    inc e                                         ; $5C60: $1C
    jp hl                                         ; $5C61: $E9


    ld b, c                                       ; $5C62: $41
    nop                                           ; $5C63: $00
    inc e                                         ; $5C64: $1C
    rst $38                                       ; $5C65: $FF
    ld b, c                                       ; $5C66: $41
    nop                                           ; $5C67: $00
    inc e                                         ; $5C68: $1C
    ld e, $42                                     ; $5C69: $1E $42
    ld [bc], a                                    ; $5C6B: $02
    inc b                                         ; $5C6C: $04
    dec h                                         ; $5C6D: $25
    ld e, $76                                     ; $5C6E: $1E $76
    ld bc, $2725                                  ; $5C70: $01 $25 $27
    halt                                          ; $5C73: $76
    ld [bc], a                                    ; $5C74: $02
    ld bc, $3025                                  ; $5C75: $01 $25 $30
    halt                                          ; $5C78: $76
    nop                                           ; $5C79: $00
    dec h                                         ; $5C7A: $25
    ld b, l                                       ; $5C7B: $45
    halt                                          ; $5C7C: $76
    ld [bc], a                                    ; $5C7D: $02
    inc bc                                        ; $5C7E: $03
    dec h                                         ; $5C7F: $25
    cp b                                          ; $5C80: $B8
    halt                                          ; $5C81: $76
    ld bc, $C125                                  ; $5C82: $01 $25 $C1
    halt                                          ; $5C85: $76
    ld [bc], a                                    ; $5C86: $02
    ld [bc], a                                    ; $5C87: $02
    dec h                                         ; $5C88: $25
    ld a, [$0476]                                 ; $5C89: $FA $76 $04
    dec h                                         ; $5C8C: $25
    inc bc                                        ; $5C8D: $03
    ld [hl], a                                    ; $5C8E: $77
    ld bc, $2501                                  ; $5C8F: $01 $01 $25
    inc c                                         ; $5C92: $0C
    ld [hl], a                                    ; $5C93: $77
    inc bc                                        ; $5C94: $03
    inc bc                                        ; $5C95: $03
    dec h                                         ; $5C96: $25
    ld e, c                                       ; $5C97: $59
    ld [hl], a                                    ; $5C98: $77
    inc b                                         ; $5C99: $04
    dec h                                         ; $5C9A: $25
    ld h, d                                       ; $5C9B: $62
    ld [hl], a                                    ; $5C9C: $77
    ld bc, $6B25                                  ; $5C9D: $01 $25 $6B
    ld [hl], a                                    ; $5CA0: $77
    inc bc                                        ; $5CA1: $03
    ld bc, $7825                                  ; $5CA2: $01 $25 $78
    ld [hl], a                                    ; $5CA5: $77
    nop                                           ; $5CA6: $00
    dec h                                         ; $5CA7: $25
    sub b                                         ; $5CA8: $90
    ld [hl], a                                    ; $5CA9: $77
    nop                                           ; $5CAA: $00
    dec h                                         ; $5CAB: $25
    or a                                          ; $5CAC: $B7
    ld [hl], a                                    ; $5CAD: $77
    ld [bc], a                                    ; $5CAE: $02
    inc bc                                        ; $5CAF: $03
    inc e                                         ; $5CB0: $1C
    jr z, @+$4A                                   ; $5CB1: $28 $48

    inc b                                         ; $5CB3: $04
    inc e                                         ; $5CB4: $1C
    ld sp, $0248                                  ; $5CB5: $31 $48 $02
    inc bc                                        ; $5CB8: $03
    inc e                                         ; $5CB9: $1C
    ld a, [hl-]                                   ; $5CBA: $3A
    ld c, b                                       ; $5CBB: $48
    inc b                                         ; $5CBC: $04
    inc e                                         ; $5CBD: $1C
    db $FD                                        ; $5CBE: $FD
    ld c, b                                       ; $5CBF: $48

    ; $5CC0
PAL_AllSprites::
    ; Sprite palette table used for overworld, maps, combat
    INCBIN "autogenerated/assets/AllSprites.pal"

    ; $5D00
PAL_StartScreenArderial::
    INCBIN "autogenerated/assets/boot/pressstart/0_Arderial/StartScreenArderial.pal"
    ; $5D10
PAL_StartScreenCore::
    INCBIN "autogenerated/assets/boot/pressstart/1_Core/StartScreenCore.pal"
    ; $5D20
PAL_StartScreenCald::
    INCBIN "autogenerated/assets/boot/pressstart/2_Cald/StartScreenCald.pal"
    ; $5D30
PAL_StartScreenUnderneathTunnels::
    INCBIN "autogenerated/assets/boot/pressstart/3_UnderneathTunnels/StartScreenUnderneathTunnels.pal"
    ; $5D40
PAL_StartScreenCaldGeyser::
    INCBIN "autogenerated/assets/boot/pressstart/4_CaldGeyser/StartScreenCaldGeyser.pal"
    ; $5D50
PAL_StartScreenNaroomGeyser::
    INCBIN "autogenerated/assets/boot/pressstart/5_NaroomGeyser/StartScreenNaroomGeyser.pal"
    ; $5D60
PAL_StartScreenNaroom::
    INCBIN "autogenerated/assets/boot/pressstart/6_Naroom/StartScreenNaroom.pal"
    ; $5D70
PAL_StartScreenUnderneathGeyser::
    INCBIN "autogenerated/assets/boot/pressstart/7_UnderneathGeyser/StartScreenUnderneathGeyser.pal"
    ; $5D80
PAL_StartScreenOrotheStarfish::
    INCBIN "autogenerated/assets/boot/pressstart/8_OrotheStarfish/StartScreenOrotheStarfish.pal"
    ; $5D90
PAL_StartScreenOrotheGeyser::
    INCBIN "autogenerated/assets/boot/pressstart/9_OrotheGeyser/StartScreenOrotheGeyser.pal"
    ; $5DA0
PAL_StartScreenOrothe::
    INCBIN "autogenerated/assets/boot/pressstart/A_Orothe/StartScreenOrothe.pal"
    ; $5DB0
PAL_StartScreenOrotheTunnels::
    INCBIN "autogenerated/assets/boot/pressstart/B_OrotheTunnels/StartScreenOrotheTunnels.pal"
    ; $5DC0
PAL_StartScreenShadowhold::
    INCBIN "autogenerated/assets/boot/pressstart/C_Shadowhold/StartScreenShadowhold.pal"
    ; $5DD0
PAL_StartScreenUnderneath::
    INCBIN "autogenerated/assets/boot/pressstart/D_Underneath/StartScreenUnderneath.pal"

    ; $5DE0
    ldh [$3D], a                                  ; $5DE0: $E0 $3D
    nop                                           ; $5DE2: $00
    add hl, hl                                    ; $5DE3: $29
    ld b, c                                       ; $5DE4: $41
    ld [bc], a                                    ; $5DE5: $02
    ld a, [c]                                     ; $5DE6: $F2
    ld [hl], a                                    ; $5DE7: $77
    ldh [$3D], a                                  ; $5DE8: $E0 $3D
    nop                                           ; $5DEA: $00
    add hl, hl                                    ; $5DEB: $29
    push hl                                       ; $5DEC: $E5
    ld [hl], c                                    ; $5DED: $71
    db $DB                                        ; $5DEE: $DB
    ld a, a                                       ; $5DEF: $7F
    nop                                           ; $5DF0: $00
    add hl, hl                                    ; $5DF1: $29
    push hl                                       ; $5DF2: $E5
    ld [hl], c                                    ; $5DF3: $71
    dec c                                         ; $5DF4: $0D
    ld a, a                                       ; $5DF5: $7F
    db $DB                                        ; $5DF6: $DB
    ld a, a                                       ; $5DF7: $7F

    ; $5DF8
PAL_CombatArboll::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Arboll.pal"
    ; $5E10
PAL_CombatBhatar::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Bhatar.pal"
    ; $5E28
PAL_CombatEebit::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Eebit.pal"
    ; $5E40
PAL_CombatFurok::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Furok.pal"
    ; $5E58
PAL_CombatLeaf_Hyren::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Leaf_Hyren.pal"
    ; $5E70
PAL_CombatPlith::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Plith.pal"
    ; $5E88
PAL_CombatRudwot::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Rudwot.pal"
    ; $5EA0
PAL_CombatTimberHyrn::
    INCBIN "autogenerated/assets/dreamcreatures/combat/TimberHyrn.pal"
    ; $5EB8
PAL_CombatTwee::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Twee.pal"
    ; $5ED0
PAL_CombatVinoc::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Vinoc.pal"
    ; $5EE8
PAL_CombatWeebo::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Weebo.pal"
    ; $5F00
PAL_CombatAbaquist::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Abaquist.pal"
    ; $5F18
PAL_CombatBwill::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Bwill.pal"
    ; $5F30
PAL_CombatCoralHyren::
    INCBIN "autogenerated/assets/dreamcreatures/combat/CoralHyren.pal"
    ; $5F48
PAL_CombatDeep_Hyren::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Deep_Hyren.pal"
    ; $5F60
PAL_CombatKarak::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Karak.pal"
    ; $5F78
PAL_CombatMegathan::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Megathan.pal"
    ; $5F90
PAL_CombatOrpus::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Orpus.pal"
    ; $5FA8
PAL_CombatParalit::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Paralit.pal"
    ; $5FC0
PAL_CombatPlatheus::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Platheus.pal"
    ; $5FD8
PAL_CombatSphor::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Sphor.pal"
    ; $5FF0
PAL_CombatAgovo::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Agovo.pal"
    ; $6008
PAL_CombatBisiwog::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Bisiwog.pal"
    ; $6020
PAL_CombatBrub::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Brub.pal"
    ; $6038
PAL_CombatCaveRudwot::
    INCBIN "autogenerated/assets/dreamcreatures/combat/CaveRudwot.pal"
    ; $6050
PAL_CombatGiantKorit::
    INCBIN "autogenerated/assets/dreamcreatures/combat/GiantKorit.pal"
    ; $6068
PAL_CombatGum_Gum::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Gum_Gum.pal"
    ; $6080
PAL_CombatMush_Hyren::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Mush_Hyren.pal"
    ; $6098
PAL_CombatParmalag::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Parmalag.pal"
    ; $60B0
PAL_CombatCave_Hyren::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Cave_Hyren.pal"
    ; $60C8
PAL_CombatVulbor::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Vulbor.pal"
    ; $60E0
PAL_CombatOrmagon::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Ormagon.pal"
    ; $60F8
PAL_CombatArbolit::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Arbolit.pal"
    ; $6110
PAL_CombatDiobor::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Diobor.pal"
    ; $6128
PAL_CombatDrakan::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Drakan.pal"
    ; $6140
PAL_CombatFlameHyren::
    INCBIN "autogenerated/assets/dreamcreatures/combat/FlameHyren.pal"
    ; $6158
PAL_CombatKelthet::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Kelthet.pal"
    ; $6170
PAL_CombatLava_Aq::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Lava_Aq.pal"
    ; $6188
PAL_CombatLavaArboll::
    INCBIN "autogenerated/assets/dreamcreatures/combat/LavaArboll.pal"
    ; $61A0
PAL_CombatLavaBalmnt::
    INCBIN "autogenerated/assets/dreamcreatures/combat/LavaBalmnt.pal"
    ; $61B8
PAL_CombatMagmaHyren::
    INCBIN "autogenerated/assets/dreamcreatures/combat/MagmaHyren.pal"
    ; $61D0
PAL_CombatQuor::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Quor.pal"
    ; $61E8
PAL_CombatRaxis::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Raxis.pal"
    ; $6200
PAL_CombatAlaban::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Alaban.pal"
    ; $6218
PAL_CombatAyebaw::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Ayebaw.pal"
    ; $6230
PAL_CombatEpik::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Epik.pal"
    ; $6248
PAL_CombatBolt_Hyren::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Bolt_Hyren.pal"
    ; $6260
PAL_CombatOrathan_F::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Orathan_F.pal"
    ; $6278
PAL_CombatOrish::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Orish.pal"
    ; $6290
PAL_CombatThundrHyrn::
    INCBIN "autogenerated/assets/dreamcreatures/combat/ThundrHyrn.pal"
    ; $62A8
PAL_CombatVashp::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Vashp.pal"
    ; $62C0
PAL_CombatVellup::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Vellup.pal"
    ; $62D8
PAL_CombatXyx::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Xyx.pal"
    ; $62F0
PAL_CombatBlackAgovo::
    INCBIN "autogenerated/assets/dreamcreatures/combat/BlackAgovo.pal"
    ; $6308
PAL_CombatChaos_Jile::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Chaos_Jile.pal"
    ; $6320
PAL_CombatCore_Grag::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Core_Grag.pal"
    ; $6338
PAL_CombatCore_Hyren::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Core_Hyren.pal"
    ; $6350
PAL_CombatDryteFiend::
    INCBIN "autogenerated/assets/dreamcreatures/combat/DryteFiend.pal"
    ; $6368
PAL_CombatGrax::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Grax.pal"
    ; $6380
PAL_CombatKoil::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Koil.pal"
    ; $6398
PAL_CombatShadwKarak::
    INCBIN "autogenerated/assets/dreamcreatures/combat/ShadwKarak.pal"
    ; $63B0
PAL_CombatShadwVinoc::
    INCBIN "autogenerated/assets/dreamcreatures/combat/ShadwVinoc.pal"
    ; $63C8
PAL_CombatShryque::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Shryque.pal"
    ; $63E0
PAL_CombatYvohcna::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Yvohcna.pal"
    ; $63F8
PAL_CombatDarkAyebaw::
    INCBIN "autogenerated/assets/dreamcreatures/combat/DarkAyebaw.pal"
    ; $6410
PAL_CombatDarkVellup::
    INCBIN "autogenerated/assets/dreamcreatures/combat/DarkVellup.pal"
    ; $6428
PAL_CombatHook_Wing::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Hook_Wing.pal"
    ; $6440
PAL_CombatJingjack::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Jingjack.pal"
    ; $6458
PAL_CombatKazor::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Kazor.pal"
    ; $6470
PAL_CombatKletch::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Kletch.pal"
    ; $6488
PAL_CombatSarbil::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Sarbil.pal"
    ; $64A0
PAL_CombatSpindle::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Spindle.pal"
    ; $64B8
PAL_CombatVile_Yogu::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Vile_Yogu.pal"
    ; $64D0
PAL_CombatBorgor::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Borgor.pal"
    ; $64E8
PAL_CombatGhostBwisp::
    INCBIN "autogenerated/assets/dreamcreatures/combat/GhostBwisp.pal"
    ; $6500
PAL_CombatPorkuslime::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Porkuslime.pal"
    ; $6518
PAL_CombatTusk_Bwisp::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Tusk_Bwisp.pal"
    ; $6530
PAL_CombatWeebat::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Weebat.pal"
    ; $6548
PAL_CombatGraw::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Graw.pal"
    ; $6560
PAL_CombatSabreback::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Sabreback.pal"
    ; $6578
PAL_CombatLeaf_Chogo::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Leaf_Chogo.pal"
    ; $6590
PAL_CombatRabbage::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Rabbage.pal"
    ; $65A8
PAL_CombatTreebit::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Treebit.pal"
    ; $65C0
PAL_CombatWasperine::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Wasperine.pal"
    ; $65D8
PAL_CombatSea_Jile::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Sea_Jile.pal"
    ; $65F0
PAL_CombatSharbloot::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Sharbloot.pal"
    ; $6608
PAL_CombatTony::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Tony.pal"
    ; $6620
PAL_CombatTogoth::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Togoth.pal"
    ; $6638
PAL_CombatOgar::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Ogar.pal"
    ; $6650
PAL_CombatKorremar::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Korremar.pal"
    ; $6668
PAL_CombatWarrada::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Warrada.pal"
    ; $6680
PAL_CombatKorg::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Korg.pal"
    ; $6698
PAL_CombatZet::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Zet.pal"
    ; $66B0
PAL_CombatMorag::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Morag.pal"
    ; $66C8
PAL_CombatAgram60::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Agram60.pal"
    ; $66E0
PAL_CombatAgram61::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Agram61.pal"
    ; $66F8
PAL_CombatAgram62::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Agram62.pal"
    ; $6710
PAL_CombatShadowMagi63::
    INCBIN "autogenerated/assets/dreamcreatures/combat/ShadowMagi63.pal"
    ; $6728
PAL_CombatShadowMagi64::
    INCBIN "autogenerated/assets/dreamcreatures/combat/ShadowMagi64.pal"
    ; $6740
PAL_CombatShadowMagi65::
    INCBIN "autogenerated/assets/dreamcreatures/combat/ShadowMagi65.pal"
    ; $6758
PAL_CombatShadowMagi66::
    INCBIN "autogenerated/assets/dreamcreatures/combat/ShadowMagi66.pal"
    ; $6770
PAL_CombatShadowMagi67::
    INCBIN "autogenerated/assets/dreamcreatures/combat/ShadowMagi67.pal"
    ; $6788
PAL_CombatShadowMagi68::
    INCBIN "autogenerated/assets/dreamcreatures/combat/ShadowMagi68.pal"
    ; $67A0
PAL_CombatShadowMagi69::
    INCBIN "autogenerated/assets/dreamcreatures/combat/ShadowMagi69.pal"
    ; $67B8
PAL_CombatShadowMagi70::
    INCBIN "autogenerated/assets/dreamcreatures/combat/ShadowMagi70.pal"
    ; $67D0
PAL_CombatSalafy::
    INCBIN "autogenerated/assets/dreamcreatures/combat/Salafy.pal"

    ; $67E8
    ld [bc], a                                    ; $67E8: $02
    inc d                                         ; $67E9: $14
    ld [bc], a                                    ; $67EA: $02
    dec sp                                        ; $67EB: $3B
    nop                                           ; $67EC: $00
    ld b, l                                       ; $67ED: $45
    ld hl, $7781                                  ; $67EE: $21 $81 $77
    ld [bc], a                                    ; $67F1: $02
    ld de, $2304                                  ; $67F2: $11 $04 $23
    ld a, [bc]                                    ; $67F5: $0A
    ld b, l                                       ; $67F6: $45
    ld hl, $718D                                  ; $67F7: $21 $8D $71
    ld bc, $1112                                  ; $67FA: $01 $12 $11
    ld b, l                                       ; $67FD: $45
    ld hl, $7897                                  ; $67FE: $21 $97 $78
    and h                                         ; $6801: $A4
    ld b, [hl]                                    ; $6802: $46
    and e                                         ; $6803: $A3
    inc b                                         ; $6804: $04
    ld [bc], a                                    ; $6805: $02
    ld de, $D171                                  ; $6806: $11 $71 $D1
    and h                                         ; $6809: $A4
    ld b, [hl]                                    ; $680A: $46
    and e                                         ; $680B: $A3
    ld [$0F02], sp                                ; $680C: $08 $02 $0F
    db $FC                                        ; $680F: $FC
    jp nc, Jump_021_499F                          ; $6810: $D2 $9F $49

    ld [hl], h                                    ; $6813: $74
    daa                                           ; $6814: $27
    ld [hl], e                                    ; $6815: $73

jr_021_6816:
    jr nz, @+$6E                                  ; $6816: $20 $6C

    ld l, a                                       ; $6818: $6F
    ld h, e                                       ; $6819: $63
    ld l, e                                       ; $681A: $6B
    ld h, l                                       ; $681B: $65
    ld h, h                                       ; $681C: $64
    ld l, $FE                                     ; $681D: $2E $FE
    db $FD                                        ; $681F: $FD
    sbc d                                         ; $6820: $9A
    ld b, d                                       ; $6821: $42
    ld [bc], a                                    ; $6822: $02
    nop                                           ; $6823: $00
    nop                                           ; $6824: $00
    nop                                           ; $6825: $00
    nop                                           ; $6826: $00
    jr nc, jr_021_6816                            ; $6827: $30 $ED

    ld d, [hl]                                    ; $6829: $56
    daa                                           ; $682A: $27
    ld b, a                                       ; $682B: $47
    ld [$4521], sp                                ; $682C: $08 $21 $45
    ld l, b                                       ; $682F: $68
    ld hl, $6853                                  ; $6830: $21 $53 $68
    ld hl, $6861                                  ; $6833: $21 $61 $68
    ld hl, $6877                                  ; $6836: $21 $77 $68
    ld hl, $688C                                  ; $6839: $21 $8C $68
    ld hl, $68AF                                  ; $683C: $21 $AF $68
    ld hl, $68CB                                  ; $683F: $21 $CB $68
    ld hl, $68E1                                  ; $6842: $21 $E1 $68
    dec h                                         ; $6845: $25
    ld b, $6C                                     ; $6846: $06 $6C
    rlca                                          ; $6848: $07
    ld c, h                                       ; $6849: $4C
    inc hl                                        ; $684A: $23
    ld b, b                                       ; $684B: $40
    ld l, $09                                     ; $684C: $2E $09
    ld d, e                                       ; $684E: $53
    rlca                                          ; $684F: $07
    ld c, $01                                     ; $6850: $0E $01
    daa                                           ; $6852: $27
    dec h                                         ; $6853: $25
    ld b, $6C                                     ; $6854: $06 $6C
    ld [$234C], sp                                ; $6856: $08 $4C $23
    ld b, b                                       ; $6859: $40
    ld l, $09                                     ; $685A: $2E $09
    dec a                                         ; $685C: $3D
    ld [$010F], sp                                ; $685D: $08 $0F $01
    daa                                           ; $6860: $27
    dec h                                         ; $6861: $25
    ld b, $6C                                     ; $6862: $06 $6C
    add hl, bc                                    ; $6864: $09
    ld c, h                                       ; $6865: $4C
    inc hl                                        ; $6866: $23
    ld b, b                                       ; $6867: $40
    ld l, $09                                     ; $6868: $2E $09
    dec a                                         ; $686A: $3D
    ld b, $0C                                     ; $686B: $06 $0C
    ld bc, $2B2B                                  ; $686D: $01 $2B $2B
    ld l, $09                                     ; $6870: $2E $09
    jr c, jr_021_687B                             ; $6872: $38 $07

    rrca                                          ; $6874: $0F
    ld bc, $2527                                  ; $6875: $01 $27 $25
    ld b, $6C                                     ; $6878: $06 $6C
    add hl, bc                                    ; $687A: $09

jr_021_687B:
    ld c, h                                       ; $687B: $4C
    inc hl                                        ; $687C: $23
    ld b, b                                       ; $687D: $40
    ld l, $09                                     ; $687E: $2E $09
    jr c, @+$09                                   ; $6880: $38 $07

    rrca                                          ; $6882: $0F
    ld bc, $2E2B                                  ; $6883: $01 $2B $2E
    add hl, bc                                    ; $6886: $09
    ld c, a                                       ; $6887: $4F
    ld b, $0C                                     ; $6888: $06 $0C
    ld bc, $2527                                  ; $688A: $01 $27 $25
    ld b, $6C                                     ; $688D: $06 $6C
    rlca                                          ; $688F: $07
    ld c, h                                       ; $6890: $4C
    inc hl                                        ; $6891: $23
    ld b, b                                       ; $6892: $40
    ld l, $09                                     ; $6893: $2E $09
    ld d, e                                       ; $6895: $53
    inc bc                                        ; $6896: $03
    ld b, $01                                     ; $6897: $06 $01
    dec hl                                        ; $6899: $2B
    ld l, $09                                     ; $689A: $2E $09
    ld d, e                                       ; $689C: $53
    inc bc                                        ; $689D: $03
    ld b, $01                                     ; $689E: $06 $01
    dec hl                                        ; $68A0: $2B
    ld l, $09                                     ; $68A1: $2E $09
    ld c, a                                       ; $68A3: $4F
    inc b                                         ; $68A4: $04
    add hl, bc                                    ; $68A5: $09
    ld bc, $2E2B                                  ; $68A6: $01 $2B $2E
    add hl, bc                                    ; $68A9: $09
    jr c, @+$05                                   ; $68AA: $38 $03

    rlca                                          ; $68AC: $07
    ld bc, $2527                                  ; $68AD: $01 $27 $25
    ld b, $6C                                     ; $68B0: $06 $6C
    add hl, bc                                    ; $68B2: $09
    ld c, h                                       ; $68B3: $4C
    inc hl                                        ; $68B4: $23
    ld b, b                                       ; $68B5: $40
    ld l, $09                                     ; $68B6: $2E $09
    jr c, jr_021_68C0                             ; $68B8: $38 $06

    inc c                                         ; $68BA: $0C
    ld bc, $2E2B                                  ; $68BB: $01 $2B $2E
    add hl, bc                                    ; $68BE: $09
    ld d, e                                       ; $68BF: $53

jr_021_68C0:
    inc b                                         ; $68C0: $04
    ld [$2B01], sp                                ; $68C1: $08 $01 $2B
    ld l, $09                                     ; $68C4: $2E $09
    ld d, e                                       ; $68C6: $53
    inc b                                         ; $68C7: $04
    add hl, bc                                    ; $68C8: $09
    ld bc, $2527                                  ; $68C9: $01 $27 $25
    ld b, $6C                                     ; $68CC: $06 $6C

jr_021_68CE:
    ld [$234C], sp                                ; $68CE: $08 $4C $23
    ld b, b                                       ; $68D1: $40
    ld l, $09                                     ; $68D2: $2E $09
    dec a                                         ; $68D4: $3D
    ld b, $0D                                     ; $68D5: $06 $0D
    ld bc, $2B2B                                  ; $68D7: $01 $2B $2B
    ld l, $09                                     ; $68DA: $2E $09
    dec a                                         ; $68DC: $3D
    ld b, $0C                                     ; $68DD: $06 $0C
    ld bc, $2527                                  ; $68DF: $01 $27 $25
    ld b, $6C                                     ; $68E2: $06 $6C
    ld [$234C], sp                                ; $68E4: $08 $4C $23
    ld b, b                                       ; $68E7: $40

jr_021_68E8:
    ld l, $09                                     ; $68E8: $2E $09
    ld c, a                                       ; $68EA: $4F
    ld b, $0C                                     ; $68EB: $06 $0C
    ld bc, $2E2B                                  ; $68ED: $01 $2B $2E
    add hl, bc                                    ; $68F0: $09
    jr c, jr_021_68F9                             ; $68F1: $38 $06

    dec bc                                        ; $68F3: $0B
    ld bc, $2B2B                                  ; $68F4: $01 $2B $2B
    ld l, $09                                     ; $68F7: $2E $09

jr_021_68F9:
    ld c, a                                       ; $68F9: $4F
    rlca                                          ; $68FA: $07
    rrca                                          ; $68FB: $0F
    ld bc, $0227                                  ; $68FC: $01 $27 $02
    nop                                           ; $68FF: $00
    nop                                           ; $6900: $00
    nop                                           ; $6901: $00
    nop                                           ; $6902: $00
    jr nc, @-$11                                  ; $6903: $30 $ED

    ld d, [hl]                                    ; $6905: $56
    inc c                                         ; $6906: $0C
    ld b, a                                       ; $6907: $47
    inc bc                                        ; $6908: $03
    ld hl, $6912                                  ; $6909: $21 $12 $69
    ld hl, $692C                                  ; $690C: $21 $2C $69
    ld hl, $6940                                  ; $690F: $21 $40 $69
    dec h                                         ; $6912: $25
    dec c                                         ; $6913: $0D
    ld l, h                                       ; $6914: $6C
    ld b, [hl]                                    ; $6915: $46
    ld c, h                                       ; $6916: $4C
    inc hl                                        ; $6917: $23
    ld b, b                                       ; $6918: $40
    ld l, $09                                     ; $6919: $2E $09
    inc [hl]                                      ; $691B: $34
    ld e, $3C                                     ; $691C: $1E $3C
    ld bc, $092E                                  ; $691E: $01 $2E $09
    dec d                                         ; $6921: $15
    inc a                                         ; $6922: $3C
    ret z                                         ; $6923: $C8

    inc bc                                        ; $6924: $03
    ld l, $09                                     ; $6925: $2E $09
    inc [hl]                                      ; $6927: $34
    ld e, $3C                                     ; $6928: $1E $3C
    ld bc, $2527                                  ; $692A: $01 $27 $25
    dec c                                         ; $692D: $0D
    ld l, h                                       ; $692E: $6C
    ld b, [hl]                                    ; $692F: $46
    ld c, h                                       ; $6930: $4C
    inc hl                                        ; $6931: $23
    ld b, b                                       ; $6932: $40
    ld l, $09                                     ; $6933: $2E $09
    db $10                                        ; $6935: $10
    jr z, jr_021_68CE                             ; $6936: $28 $96

    ld bc, $092E                                  ; $6938: $01 $2E $09
    dec d                                         ; $693B: $15
    inc a                                         ; $693C: $3C
    ret z                                         ; $693D: $C8

    ld [bc], a                                    ; $693E: $02
    daa                                           ; $693F: $27
    dec h                                         ; $6940: $25
    dec c                                         ; $6941: $0D
    ld l, h                                       ; $6942: $6C
    ld b, [hl]                                    ; $6943: $46
    ld c, h                                       ; $6944: $4C
    inc hl                                        ; $6945: $23
    ld b, b                                       ; $6946: $40
    ld l, $09                                     ; $6947: $2E $09
    dec [hl]                                      ; $6949: $35
    ld e, $3C                                     ; $694A: $1E $3C
    ld bc, $092E                                  ; $694C: $01 $2E $09
    db $10                                        ; $694F: $10
    jr z, jr_021_68E8                             ; $6950: $28 $96

    inc bc                                        ; $6952: $03
    ld l, $09                                     ; $6953: $2E $09
    dec [hl]                                      ; $6955: $35
    ld e, $3C                                     ; $6956: $1E $3C
    ld bc, $9327                                  ; $6958: $01 $27 $93
    ld h, l                                       ; $695B: $65
    cp $41                                        ; $695C: $FE $41
    ld c, a                                       ; $695E: $4F
    ld h, h                                       ; $695F: $64
    rst $18                                       ; $6960: $DF
    ld b, c                                       ; $6961: $41
    ld l, c                                       ; $6962: $69
    db $EC                                        ; $6963: $EC
    ld b, c                                       ; $6964: $41
    ld h, [hl]                                    ; $6965: $66
    ret nz                                        ; $6966: $C0

    ld e, h                                       ; $6967: $5C
    ld hl, $0005                                  ; $6968: $21 $05 $00
    add c                                         ; $696B: $81
    ld e, l                                       ; $696C: $5D
    dec b                                         ; $696D: $05
    dec b                                         ; $696E: $05

jr_021_696F:
    ld sp, $00D1                                  ; $696F: $31 $D1 $00
    jr nz, jr_021_696F                            ; $6972: $20 $FB

    ld d, b                                       ; $6974: $50
    ld [hl+], a                                   ; $6975: $22
    dec b                                         ; $6976: $05
    ld b, b                                       ; $6977: $40
    dec bc                                        ; $6978: $0B
    nop                                           ; $6979: $00
    dec b                                         ; $697A: $05
    jr nz, @-$30                                  ; $697B: $20 $CE

    ld h, e                                       ; $697D: $63
    ld a, [bc]                                    ; $697E: $0A
    add hl, bc                                    ; $697F: $09
    ld h, $D2                                     ; $6980: $26 $D2
    nop                                           ; $6982: $00
    ld [hl+], a                                   ; $6983: $22
    jp c, $2140                                   ; $6984: $DA $40 $21

    ld [hl+], a                                   ; $6987: $22
    ld l, b                                       ; $6988: $68
    dec b                                         ; $6989: $05
    rra                                           ; $698A: $1F
    adc $63                                       ; $698B: $CE $63
    ld a, [bc]                                    ; $698D: $0A
    add hl, bc                                    ; $698E: $09
    ld h, $D2                                     ; $698F: $26 $D2
    nop                                           ; $6991: $00
    ld [hl+], a                                   ; $6992: $22
    jp c, $2140                                   ; $6993: $DA $40 $21

    ld [hl+], a                                   ; $6996: $22
    ld l, b                                       ; $6997: $68
    dec b                                         ; $6998: $05
    ld hl, $4A6B                                  ; $6999: $21 $6B $4A
    add hl, sp                                    ; $699C: $39
    jr nc, jr_021_6A18                            ; $699D: $30 $79

    db $DB                                        ; $699F: $DB
    inc [hl]                                      ; $69A0: $34
    ld de, $7A1F                                  ; $69A1: $11 $1F $7A
    ld [hl+], a                                   ; $69A4: $22
    inc b                                         ; $69A5: $04
    ld b, b                                       ; $69A6: $40
    ld l, e                                       ; $69A7: $6B
    inc [hl]                                      ; $69A8: $34
    dec c                                         ; $69A9: $0D
    jr nc, jr_021_6A16                            ; $69AA: $30 $6A

    nop                                           ; $69AC: $00
    add b                                         ; $69AD: $80
    nop                                           ; $69AE: $00
    ld l, e                                       ; $69AF: $6B
    ld b, b                                       ; $69B0: $40
    daa                                           ; $69B1: $27
    nop                                           ; $69B2: $00
    ld b, d                                       ; $69B3: $42
    ld b, b                                       ; $69B4: $40
    add e                                         ; $69B5: $83
    nop                                           ; $69B6: $00
    dec bc                                        ; $69B7: $0B
    jr nz, jr_021_69C5                            ; $69B8: $20 $0B

    rra                                           ; $69BA: $1F
    dec bc                                        ; $69BB: $0B
    ld hl, $2131                                  ; $69BC: $21 $31 $21
    ld e, d                                       ; $69BF: $5A
    ld l, c                                       ; $69C0: $69
    ld [hl+], a                                   ; $69C1: $22
    adc $40                                       ; $69C2: $CE $40
    nop                                           ; $69C4: $00

jr_021_69C5:
    add d                                         ; $69C5: $82
    rra                                           ; $69C6: $1F
    db $10                                        ; $69C7: $10
    ld b, e                                       ; $69C8: $43
    nop                                           ; $69C9: $00
    xor b                                         ; $69CA: $A8
    and c                                         ; $69CB: $A1
    inc b                                         ; $69CC: $04
    ld hl, $69D7                                  ; $69CD: $21 $D7 $69
    add b                                         ; $69D0: $80
    inc hl                                        ; $69D1: $23
    ld [de], a                                    ; $69D2: $12
    ld b, [hl]                                    ; $69D3: $46
    ret c                                         ; $69D4: $D8

    ld b, d                                       ; $69D5: $42
    ld a, $94                                     ; $69D6: $3E $94
    ld b, d                                       ; $69D8: $42
    ld bc, $2312                                  ; $69D9: $01 $12 $23
    ld b, l                                       ; $69DC: $45
    ld hl, $695A                                  ; $69DD: $21 $5A $69
    ld b, h                                       ; $69E0: $44
    db $ED                                        ; $69E1: $ED
    ld l, c                                       ; $69E2: $69
    ld b, e                                       ; $69E3: $43
    rrca                                          ; $69E4: $0F
    ld bc, $A2AE                                  ; $69E5: $01 $AE $A2
    dec b                                         ; $69E8: $05
    nop                                           ; $69E9: $00
    ld hl, $69F5                                  ; $69EA: $21 $F5 $69
    and h                                         ; $69ED: $A4
    dec h                                         ; $69EE: $25
    and e                                         ; $69EF: $A3
    ld [bc], a                                    ; $69F0: $02
    inc bc                                        ; $69F1: $03
    ld [bc], a                                    ; $69F2: $02
    daa                                           ; $69F3: $27
    ret nc                                        ; $69F4: $D0

    ld b, e                                       ; $69F5: $43
    ld de, $0504                                  ; $69F6: $11 $04 $05
    ld de, $ED21                                  ; $69F9: $11 $21 $ED
    ld l, c                                       ; $69FC: $69
    ld e, d                                       ; $69FD: $5A
    ld hl, $6A0F                                  ; $69FE: $21 $0F $6A
    xor h                                         ; $6A01: $AC
    xor [hl]                                      ; $6A02: $AE
    and d                                         ; $6A03: $A2
    ld bc, $0007                                  ; $6A04: $01 $07 $00
    ld l, e                                       ; $6A07: $6B
    ld c, d                                       ; $6A08: $4A
    add hl, bc                                    ; $6A09: $09
    nop                                           ; $6A0A: $00

jr_021_6A0B:
    ld hl, $740F                                  ; $6A0B: $21 $0F $74
    ld b, d                                       ; $6A0E: $42
    add e                                         ; $6A0F: $83
    ld [bc], a                                    ; $6A10: $02
    inc bc                                        ; $6A11: $03
    nop                                           ; $6A12: $00
    ld [bc], a                                    ; $6A13: $02
    db $FD                                        ; $6A14: $FD
    nop                                           ; $6A15: $00

jr_021_6A16:
    ld [bc], a                                    ; $6A16: $02
    nop                                           ; $6A17: $00

jr_021_6A18:
    inc bc                                        ; $6A18: $03
    ld [bc], a                                    ; $6A19: $02
    nop                                           ; $6A1A: $00
    db $FD                                        ; $6A1B: $FD
    ld [bc], a                                    ; $6A1C: $02
    inc bc                                        ; $6A1D: $03
    inc bc                                        ; $6A1E: $03
    ld [bc], a                                    ; $6A1F: $02
    db $FD                                        ; $6A20: $FD
    db $FD                                        ; $6A21: $FD
    ld [bc], a                                    ; $6A22: $02
    inc bc                                        ; $6A23: $03
    inc bc                                        ; $6A24: $03
    ld [bc], a                                    ; $6A25: $02
    db $FD                                        ; $6A26: $FD
    db $FD                                        ; $6A27: $FD

jr_021_6A28:
    nop                                           ; $6A28: $00
    ld l, a                                       ; $6A29: $6F
    rrca                                          ; $6A2A: $0F
    rst $38                                       ; $6A2B: $FF
    ld a, a                                       ; $6A2C: $7F
    ld b, b                                       ; $6A2D: $40
    inc c                                         ; $6A2E: $0C
    ld a, c                                       ; $6A2F: $79
    rrca                                          ; $6A30: $0F
    ld b, b                                       ; $6A31: $40
    db $10                                        ; $6A32: $10
    ld l, a                                       ; $6A33: $6F
    rrca                                          ; $6A34: $0F
    rst $38                                       ; $6A35: $FF
    ld a, a                                       ; $6A36: $7F
    ld b, b                                       ; $6A37: $40
    inc c                                         ; $6A38: $0C
    ld a, c                                       ; $6A39: $79
    rrca                                          ; $6A3A: $0F
    ld b, b                                       ; $6A3B: $40
    jr nz, jr_021_6AAD                            ; $6A3C: $20 $6F

    rrca                                          ; $6A3E: $0F
    rst $38                                       ; $6A3F: $FF
    ld a, a                                       ; $6A40: $7F
    ld b, b                                       ; $6A41: $40
    inc c                                         ; $6A42: $0C
    ld a, c                                       ; $6A43: $79
    rrca                                          ; $6A44: $0F
    ld l, [hl]                                    ; $6A45: $6E
    ld b, $00                                     ; $6A46: $06 $00
    nop                                           ; $6A48: $00
    halt                                          ; $6A49: $76
    jr nz, jr_021_6A52                            ; $6A4A: $20 $06

    ld e, h                                       ; $6A4C: $5C
    nop                                           ; $6A4D: $00
    ld [bc], a                                    ; $6A4E: $02
    ld b, d                                       ; $6A4F: $42
    rlca                                          ; $6A50: $07
    nop                                           ; $6A51: $00

jr_021_6A52:
    ld l, e                                       ; $6A52: $6B
    ld c, d                                       ; $6A53: $4A
    ld b, e                                       ; $6A54: $43
    rrca                                          ; $6A55: $0F
    inc bc                                        ; $6A56: $03
    dec b                                         ; $6A57: $05
    ld [bc], a                                    ; $6A58: $02
    ld hl, $6A65                                  ; $6A59: $21 $65 $6A
    add hl, bc                                    ; $6A5C: $09
    nop                                           ; $6A5D: $00
    jr nz, jr_021_6A0B                            ; $6A5E: $20 $AB

    ld d, b                                       ; $6A60: $50
    ld b, l                                       ; $6A61: $45
    ld hl, $6A6A                                  ; $6A62: $21 $6A $6A
    add hl, bc                                    ; $6A65: $09
    nop                                           ; $6A66: $00
    jr nz, jr_021_6A28                            ; $6A67: $20 $BF

    ld d, b                                       ; $6A69: $50
    sbc e                                         ; $6A6A: $9B
    reti                                          ; $6A6B: $D9


    ld b, a                                       ; $6A6C: $47
    sbc a                                         ; $6A6D: $9F
    ld c, b                                       ; $6A6E: $48
    ld h, l                                       ; $6A6F: $65
    ld l, h                                       ; $6A70: $6C
    ld l, h                                       ; $6A71: $6C
    ld l, a                                       ; $6A72: $6F
    jr nz, jr_021_6AC9                            ; $6A73: $20 $54

    ld l, a                                       ; $6A75: $6F
    ld l, [hl]                                    ; $6A76: $6E
    ld a, c                                       ; $6A77: $79
    inc l                                         ; $6A78: $2C
    rst $38                                       ; $6A79: $FF
    ld [hl], a                                    ; $6A7A: $77
    ld l, b                                       ; $6A7B: $68
    ld h, c                                       ; $6A7C: $61
    ld [hl], h                                    ; $6A7D: $74
    jr nz, jr_021_6AE3                            ; $6A7E: $20 $63

    ld h, c                                       ; $6A80: $61
    ld l, [hl]                                    ; $6A81: $6E
    jr nz, jr_021_6ACD                            ; $6A82: $20 $49

    ld l, $2E                                     ; $6A84: $2E $2E
    ld l, $2E                                     ; $6A86: $2E $2E
    cp $FD                                        ; $6A88: $FE $FD
    sbc d                                         ; $6A8A: $9A
    ld e, h                                       ; $6A8B: $5C
    nop                                           ; $6A8C: $00
    ld [bc], a                                    ; $6A8D: $02
    ld b, d                                       ; $6A8E: $42
    sbc e                                         ; $6A8F: $9B
    reti                                          ; $6A90: $D9


    ld b, a                                       ; $6A91: $47
    sbc a                                         ; $6A92: $9F
    ld l, $2E                                     ; $6A93: $2E $2E
    ld l, $2E                                     ; $6A95: $2E $2E
    ld l, $2E                                     ; $6A97: $2E $2E
    ld l, $59                                     ; $6A99: $2E $59
    ld l, a                                       ; $6A9B: $6F
    ld [hl], l                                    ; $6A9C: $75
    ld l, $2E                                     ; $6A9D: $2E $2E
    ld l, $FF                                     ; $6A9F: $2E $FF
    ld h, [hl]                                    ; $6AA1: $66
    ld l, a                                       ; $6AA2: $6F
    ld [hl], l                                    ; $6AA3: $75
    ld l, [hl]                                    ; $6AA4: $6E
    ld h, h                                       ; $6AA5: $64
    jr nz, @+$6B                                  ; $6AA6: $20 $69

    ld [hl], h                                    ; $6AA8: $74
    ld hl, $FDFE                                  ; $6AA9: $21 $FE $FD
    sbc d                                         ; $6AAC: $9A

jr_021_6AAD:
    ld e, b                                       ; $6AAD: $58
    ld [bc], a                                    ; $6AAE: $02
    ld b, d                                       ; $6AAF: $42
    sbc a                                         ; $6AB0: $9F
    ld d, h                                       ; $6AB1: $54
    ld l, b                                       ; $6AB2: $68
    ld h, l                                       ; $6AB3: $65
    jr nz, @+$55                                  ; $6AB4: $20 $53

    ld h, l                                       ; $6AB6: $65
    ld h, l                                       ; $6AB7: $65
    ld [hl], d                                    ; $6AB8: $72
    jr nz, @+$76                                  ; $6AB9: $20 $74

    ld h, c                                       ; $6ABB: $61
    ld l, e                                       ; $6ABC: $6B
    ld h, l                                       ; $6ABD: $65
    ld [hl], e                                    ; $6ABE: $73
    rst $38                                       ; $6ABF: $FF
    ld [hl], h                                    ; $6AC0: $74
    ld l, b                                       ; $6AC1: $68
    ld h, l                                       ; $6AC2: $65
    jr nz, jr_021_6B08                            ; $6AC3: $20 $43

    ld l, h                                       ; $6AC5: $6C
    ld l, a                                       ; $6AC6: $6F
    ld [hl], l                                    ; $6AC7: $75
    ld h, h                                       ; $6AC8: $64

jr_021_6AC9:
    cp $46                                        ; $6AC9: $FE $46
    ld [hl], d                                    ; $6ACB: $72
    ld l, a                                       ; $6ACC: $6F

jr_021_6ACD:
    ld l, [hl]                                    ; $6ACD: $6E
    ld h, h                                       ; $6ACE: $64
    ld l, $FE                                     ; $6ACF: $2E $FE
    db $FD                                        ; $6AD1: $FD
    sbc d                                         ; $6AD2: $9A
    adc b                                         ; $6AD3: $88
    nop                                           ; $6AD4: $00
    dec de                                        ; $6AD5: $1B
    ld bc, $015C                                  ; $6AD6: $01 $5C $01
    ld [bc], a                                    ; $6AD9: $02
    ld b, d                                       ; $6ADA: $42
    sbc e                                         ; $6ADB: $9B
    reti                                          ; $6ADC: $D9


    ld b, a                                       ; $6ADD: $47
    sbc a                                         ; $6ADE: $9F
    ld d, a                                       ; $6ADF: $57
    ld l, c                                       ; $6AE0: $69
    ld [hl], h                                    ; $6AE1: $74
    ld l, b                                       ; $6AE2: $68

jr_021_6AE3:
    jr nz, jr_021_6B59                            ; $6AE3: $20 $74

    ld l, b                                       ; $6AE5: $68
    ld l, c                                       ; $6AE6: $69
    ld [hl], e                                    ; $6AE7: $73
    inc l                                         ; $6AE8: $2C
    rst $38                                       ; $6AE9: $FF
    ld c, a                                       ; $6AEA: $4F
    ld [hl], d                                    ; $6AEB: $72
    ld [hl], a                                    ; $6AEC: $77
    ld l, c                                       ; $6AED: $69
    ld l, [hl]                                    ; $6AEE: $6E
    jr nz, jr_021_6B54                            ; $6AEF: $20 $63

    ld h, c                                       ; $6AF1: $61
    ld l, [hl]                                    ; $6AF2: $6E
    jr nz, jr_021_6B57                            ; $6AF3: $20 $62

    ld h, l                                       ; $6AF5: $65
    cp $73                                        ; $6AF6: $FE $73
    ld h, c                                       ; $6AF8: $61
    halt                                          ; $6AF9: $76
    ld h, l                                       ; $6AFA: $65
    ld h, h                                       ; $6AFB: $64
    ld hl, $5720                                  ; $6AFC: $21 $20 $57
    ld h, l                                       ; $6AFF: $65
    jr nz, jr_021_6B6A                            ; $6B00: $20 $68

    ld h, c                                       ; $6B02: $61
    halt                                          ; $6B03: $76
    ld h, l                                       ; $6B04: $65
    rst $38                                       ; $6B05: $FF
    ld l, [hl]                                    ; $6B06: $6E
    ld l, a                                       ; $6B07: $6F

jr_021_6B08:
    jr nz, jr_021_6B7E                            ; $6B08: $20 $74

    ld l, c                                       ; $6B0A: $69
    ld l, l                                       ; $6B0B: $6D
    ld h, l                                       ; $6B0C: $65
    jr nz, jr_021_6B83                            ; $6B0D: $20 $74

    ld l, a                                       ; $6B0F: $6F
    cp $6C                                        ; $6B10: $FE $6C
    ld l, a                                       ; $6B12: $6F
    ld [hl], e                                    ; $6B13: $73
    ld h, l                                       ; $6B14: $65
    ld hl, $FDFE                                  ; $6B15: $21 $FE $FD
    sbc d                                         ; $6B18: $9A
    ld e, b                                       ; $6B19: $58
    inc b                                         ; $6B1A: $04
    ld b, d                                       ; $6B1B: $42
    sbc e                                         ; $6B1C: $9B
    reti                                          ; $6B1D: $D9


    ld b, a                                       ; $6B1E: $47
    ld c, e                                       ; $6B1F: $4B
    ld bc, $A2AE                                  ; $6B20: $01 $AE $A2
    ld hl, $0001                                  ; $6B23: $21 $01 $00
    dec a                                         ; $6B26: $3D
    ld l, e                                       ; $6B27: $6B
    ld hl, $0002                                  ; $6B28: $21 $02 $00
    ld l, l                                       ; $6B2B: $6D
    ld l, e                                       ; $6B2C: $6B
    ld hl, $0003                                  ; $6B2D: $21 $03 $00
    sbc [hl]                                      ; $6B30: $9E
    ld l, e                                       ; $6B31: $6B
    ld hl, $0004                                  ; $6B32: $21 $04 $00
    call z, $216B                                 ; $6B35: $CC $6B $21
    dec b                                         ; $6B38: $05
    nop                                           ; $6B39: $00
    ld [c], a                                     ; $6B3A: $E2
    ld l, e                                       ; $6B3B: $6B
    rst $38                                       ; $6B3C: $FF
    sbc a                                         ; $6B3D: $9F
    ld b, e                                       ; $6B3E: $43
    ld l, h                                       ; $6B3F: $6C
    ld l, a                                       ; $6B40: $6F
    ld [hl], l                                    ; $6B41: $75
    ld h, h                                       ; $6B42: $64
    jr nz, jr_021_6B8B                            ; $6B43: $20 $46

    ld [hl], d                                    ; $6B45: $72
    ld l, a                                       ; $6B46: $6F
    ld l, [hl]                                    ; $6B47: $6E
    ld h, h                                       ; $6B48: $64
    ld a, [hl-]                                   ; $6B49: $3A
    rst $38                                       ; $6B4A: $FF
    ld h, d                                       ; $6B4B: $62
    ld [hl], d                                    ; $6B4C: $72
    ld l, c                                       ; $6B4D: $69
    ld h, a                                       ; $6B4E: $67
    ld l, b                                       ; $6B4F: $68
    ld [hl], h                                    ; $6B50: $74
    ld h, l                                       ; $6B51: $65
    ld l, [hl]                                    ; $6B52: $6E
    ld [hl], e                                    ; $6B53: $73

jr_021_6B54:
    jr nz, jr_021_6BCA                            ; $6B54: $20 $74

    ld h, l                                       ; $6B56: $65

jr_021_6B57:
    ld h, l                                       ; $6B57: $65
    ld [hl], h                                    ; $6B58: $74

jr_021_6B59:
    ld l, b                                       ; $6B59: $68
    cp $41                                        ; $6B5A: $FE $41
    ld c, [hl]                                    ; $6B5C: $4E
    ld b, h                                       ; $6B5D: $44
    jr nz, jr_021_6BC6                            ; $6B5E: $20 $66

    ld h, c                                       ; $6B60: $61
    ld [hl], h                                    ; $6B61: $74
    jr nz, jr_021_6BCA                            ; $6B62: $20 $66

    ld [hl], d                                    ; $6B64: $72
    ld h, l                                       ; $6B65: $65
    ld h, l                                       ; $6B66: $65
    ld hl, $FDFE                                  ; $6B67: $21 $FE $FD

jr_021_6B6A:
    ld b, [hl]                                    ; $6B6A: $46
    xor $6B                                       ; $6B6B: $EE $6B
    sbc a                                         ; $6B6D: $9F
    ld d, a                                       ; $6B6E: $57
    ld h, l                                       ; $6B6F: $65
    ld h, l                                       ; $6B70: $65
    ld h, d                                       ; $6B71: $62
    ld l, a                                       ; $6B72: $6F
    ld [hl], e                                    ; $6B73: $73
    jr nz, jr_021_6BD7                            ; $6B74: $20 $61

    ld l, [hl]                                    ; $6B76: $6E
    ld h, h                                       ; $6B77: $64
    rst $38                                       ; $6B78: $FF
    ld [hl], e                                    ; $6B79: $73
    ld [hl], h                                    ; $6B7A: $74
    ld l, a                                       ; $6B7B: $6F
    ld l, a                                       ; $6B7C: $6F
    ld l, h                                       ; $6B7D: $6C

jr_021_6B7E:
    ld [hl], e                                    ; $6B7E: $73
    ld l, $2E                                     ; $6B7F: $2E $2E
    ld l, $FE                                     ; $6B81: $2E $FE

jr_021_6B83:
    ld c, c                                       ; $6B83: $49
    ld [hl], e                                    ; $6B84: $73
    jr nz, jr_021_6BFB                            ; $6B85: $20 $74

    ld l, b                                       ; $6B87: $68
    ld h, l                                       ; $6B88: $65
    ld [hl], d                                    ; $6B89: $72
    ld h, l                                       ; $6B8A: $65

jr_021_6B8B:
    jr nz, jr_021_6BEE                            ; $6B8B: $20 $61

    rst $38                                       ; $6B8D: $FF
    ld h, e                                       ; $6B8E: $63
    ld l, a                                       ; $6B8F: $6F
    ld l, [hl]                                    ; $6B90: $6E
    ld l, [hl]                                    ; $6B91: $6E
    ld h, l                                       ; $6B92: $65
    ld h, e                                       ; $6B93: $63
    ld [hl], h                                    ; $6B94: $74
    ld l, c                                       ; $6B95: $69
    ld l, a                                       ; $6B96: $6F
    ld l, [hl]                                    ; $6B97: $6E
    ccf                                           ; $6B98: $3F
    cp $FD                                        ; $6B99: $FE $FD
    ld b, [hl]                                    ; $6B9B: $46
    xor $6B                                       ; $6B9C: $EE $6B
    sbc a                                         ; $6B9E: $9F
    ld c, l                                       ; $6B9F: $4D
    ld a, c                                       ; $6BA0: $79
    ld [hl], e                                    ; $6BA1: $73
    ld [hl], h                                    ; $6BA2: $74
    ld h, l                                       ; $6BA3: $65
    ld [hl], d                                    ; $6BA4: $72
    ld l, c                                       ; $6BA5: $69
    ld l, a                                       ; $6BA6: $6F
    ld [hl], l                                    ; $6BA7: $75
    ld [hl], e                                    ; $6BA8: $73
    inc l                                         ; $6BA9: $2C
    rst $38                                       ; $6BAA: $FF
    ld c, l                                       ; $6BAB: $4D
    ld h, c                                       ; $6BAC: $61
    ld h, a                                       ; $6BAD: $67
    ld l, c                                       ; $6BAE: $69
    ld h, e                                       ; $6BAF: $63
    ld h, c                                       ; $6BB0: $61
    ld l, h                                       ; $6BB1: $6C
    inc l                                         ; $6BB2: $2C
    cp $4F                                        ; $6BB3: $FE $4F
    ld l, l                                       ; $6BB5: $6D
    ld l, [hl]                                    ; $6BB6: $6E
    ld l, c                                       ; $6BB7: $69
    ld [hl], b                                    ; $6BB8: $70
    ld l, a                                       ; $6BB9: $6F
    ld [hl], h                                    ; $6BBA: $74
    ld h, l                                       ; $6BBB: $65
    ld l, [hl]                                    ; $6BBC: $6E
    ld [hl], h                                    ; $6BBD: $74
    inc l                                         ; $6BBE: $2C
    rst $38                                       ; $6BBF: $FF
    ld c, b                                       ; $6BC0: $48
    ld l, l                                       ; $6BC1: $6D
    ld l, l                                       ; $6BC2: $6D
    ld l, l                                       ; $6BC3: $6D
    ld l, $2E                                     ; $6BC4: $2E $2E

jr_021_6BC6:
    ld l, $FE                                     ; $6BC6: $2E $FE
    db $FD                                        ; $6BC8: $FD
    ld b, [hl]                                    ; $6BC9: $46

jr_021_6BCA:
    xor $6B                                       ; $6BCA: $EE $6B
    sbc a                                         ; $6BCC: $9F
    ld d, e                                       ; $6BCD: $53
    ld [hl], h                                    ; $6BCE: $74
    ld h, l                                       ; $6BCF: $65
    ld [hl], b                                    ; $6BD0: $70
    jr nz, jr_021_6C42                            ; $6BD1: $20 $6F

    ld l, [hl]                                    ; $6BD3: $6E
    rst $38                                       ; $6BD4: $FF
    ld l, [hl]                                    ; $6BD5: $6E
    ld l, a                                       ; $6BD6: $6F

jr_021_6BD7:
    jr nz, jr_021_6C29                            ; $6BD7: $20 $50

    ld h, l                                       ; $6BD9: $65
    ld [hl], h                                    ; $6BDA: $74
    ld [hl], e                                    ; $6BDB: $73
    ld hl, $FDFE                                  ; $6BDC: $21 $FE $FD
    ld b, [hl]                                    ; $6BDF: $46
    xor $6B                                       ; $6BE0: $EE $6B
    sbc a                                         ; $6BE2: $9F
    ld b, d                                       ; $6BE3: $42
    ld c, h                                       ; $6BE4: $4C
    ld b, l                                       ; $6BE5: $45
    ld b, c                                       ; $6BE6: $41
    ld d, d                                       ; $6BE7: $52
    ld b, a                                       ; $6BE8: $47
    ld c, b                                       ; $6BE9: $48
    ld hl, $FE21                                  ; $6BEA: $21 $21 $FE
    db $FD                                        ; $6BED: $FD

jr_021_6BEE:
    sbc d                                         ; $6BEE: $9A
    ld e, b                                       ; $6BEF: $58
    ld bc, $9F42                                  ; $6BF0: $01 $42 $9F
    ld c, c                                       ; $6BF3: $49
    ld c, [hl]                                    ; $6BF4: $4E
    ld d, h                                       ; $6BF5: $54
    ld d, d                                       ; $6BF6: $52
    ld d, l                                       ; $6BF7: $55
    ld b, h                                       ; $6BF8: $44
    ld b, l                                       ; $6BF9: $45
    ld d, d                                       ; $6BFA: $52

jr_021_6BFB:
    rst $38                                       ; $6BFB: $FF
    ld b, c                                       ; $6BFC: $41
    ld c, h                                       ; $6BFD: $4C
    ld b, l                                       ; $6BFE: $45
    ld d, d                                       ; $6BFF: $52
    ld d, h                                       ; $6C00: $54
    ld hl, $FDFE                                  ; $6C01: $21 $FE $FD
    sbc d                                         ; $6C04: $9A
    ld e, h                                       ; $6C05: $5C
    ld bc, $4202                                  ; $6C06: $01 $02 $42
    sbc e                                         ; $6C09: $9B
    reti                                          ; $6C0A: $D9


    ld b, a                                       ; $6C0B: $47
    sbc a                                         ; $6C0C: $9F
    ld e, c                                       ; $6C0D: $59
    ld l, a                                       ; $6C0E: $6F
    ld [hl], l                                    ; $6C0F: $75
    ld hl, $FDFE                                  ; $6C10: $21 $FE $FD
    sbc e                                         ; $6C13: $9B
    ld a, b                                       ; $6C14: $78
    ld [hl], b                                    ; $6C15: $70
    sbc a                                         ; $6C16: $9F
    ld d, a                                       ; $6C17: $57
    ld l, b                                       ; $6C18: $68
    ld h, c                                       ; $6C19: $61
    ld l, $2E                                     ; $6C1A: $2E $2E
    ccf                                           ; $6C1C: $3F
    cp $FD                                        ; $6C1D: $FE $FD
    sbc e                                         ; $6C1F: $9B
    reti                                          ; $6C20: $D9


    ld b, a                                       ; $6C21: $47
    sbc a                                         ; $6C22: $9F
    ld d, a                                       ; $6C23: $57
    ld l, b                                       ; $6C24: $68
    ld h, c                                       ; $6C25: $61
    ld [hl], h                                    ; $6C26: $74
    jr nz, jr_021_6C8A                            ; $6C27: $20 $61

jr_021_6C29:
    ld [hl], d                                    ; $6C29: $72
    ld h, l                                       ; $6C2A: $65
    rst $38                                       ; $6C2B: $FF
    ld a, c                                       ; $6C2C: $79
    ld l, a                                       ; $6C2D: $6F
    ld [hl], l                                    ; $6C2E: $75
    jr nz, jr_021_6C95                            ; $6C2F: $20 $64

    ld l, a                                       ; $6C31: $6F
    ld l, c                                       ; $6C32: $69
    ld l, [hl]                                    ; $6C33: $6E
    ld h, a                                       ; $6C34: $67
    cp $68                                        ; $6C35: $FE $68
    ld h, l                                       ; $6C37: $65
    ld [hl], d                                    ; $6C38: $72
    ld h, l                                       ; $6C39: $65
    ccf                                           ; $6C3A: $3F
    cp $FD                                        ; $6C3B: $FE $FD
    sbc e                                         ; $6C3D: $9B
    ld a, b                                       ; $6C3E: $78
    ld [hl], b                                    ; $6C3F: $70
    sbc a                                         ; $6C40: $9F
    ld c, c                                       ; $6C41: $49

jr_021_6C42:
    jr nz, jr_021_6CBB                            ; $6C42: $20 $77

    ld h, c                                       ; $6C44: $61
    ld [hl], e                                    ; $6C45: $73
    jr nz, jr_021_6CB2                            ; $6C46: $20 $6A

    ld [hl], l                                    ; $6C48: $75
    ld [hl], e                                    ; $6C49: $73
    ld [hl], h                                    ; $6C4A: $74
    ld l, $2E                                     ; $6C4B: $2E $2E
    cp $FD                                        ; $6C4D: $FE $FD
    sbc e                                         ; $6C4F: $9B
    reti                                          ; $6C50: $D9


    ld b, a                                       ; $6C51: $47
    sbc a                                         ; $6C52: $9F
    ld c, [hl]                                    ; $6C53: $4E
    ld h, l                                       ; $6C54: $65
    halt                                          ; $6C55: $76
    ld h, l                                       ; $6C56: $65
    ld [hl], d                                    ; $6C57: $72
    ld l, l                                       ; $6C58: $6D
    ld l, c                                       ; $6C59: $69
    ld l, [hl]                                    ; $6C5A: $6E
    ld h, h                                       ; $6C5B: $64
    ld hl, $49FE                                  ; $6C5C: $21 $FE $49
    jr nz, jr_021_6CC2                            ; $6C5F: $20 $61

    ld l, h                                       ; $6C61: $6C
    ld [hl], d                                    ; $6C62: $72
    ld h, l                                       ; $6C63: $65
    ld h, c                                       ; $6C64: $61
    ld h, h                                       ; $6C65: $64
    ld a, c                                       ; $6C66: $79
    rst $38                                       ; $6C67: $FF
    ld l, e                                       ; $6C68: $6B
    ld l, [hl]                                    ; $6C69: $6E
    ld l, a                                       ; $6C6A: $6F
    ld [hl], a                                    ; $6C6B: $77
    jr nz, jr_021_6CE5                            ; $6C6C: $20 $77

    ld l, b                                       ; $6C6E: $68
    ld h, c                                       ; $6C6F: $61
    ld [hl], h                                    ; $6C70: $74
    cp $79                                        ; $6C71: $FE $79
    ld l, a                                       ; $6C73: $6F
    ld [hl], l                                    ; $6C74: $75
    jr nz, @+$63                                  ; $6C75: $20 $61

    ld [hl], d                                    ; $6C77: $72
    ld h, l                                       ; $6C78: $65
    rst $38                                       ; $6C79: $FF
    ld l, b                                       ; $6C7A: $68
    ld h, l                                       ; $6C7B: $65
    ld [hl], d                                    ; $6C7C: $72
    ld h, l                                       ; $6C7D: $65
    jr nz, @+$68                                  ; $6C7E: $20 $66

    ld l, a                                       ; $6C80: $6F
    ld [hl], d                                    ; $6C81: $72
    ld l, $FE                                     ; $6C82: $2E $FE
    db $FD                                        ; $6C84: $FD
    sbc e                                         ; $6C85: $9B
    ld a, b                                       ; $6C86: $78
    ld [hl], b                                    ; $6C87: $70
    sbc a                                         ; $6C88: $9F
    ld e, c                                       ; $6C89: $59

jr_021_6C8A:
    ld l, a                                       ; $6C8A: $6F
    ld [hl], l                                    ; $6C8B: $75
    jr nz, jr_021_6CF2                            ; $6C8C: $20 $64

    ld l, a                                       ; $6C8E: $6F
    ccf                                           ; $6C8F: $3F
    cp $FD                                        ; $6C90: $FE $FD
    sbc e                                         ; $6C92: $9B
    reti                                          ; $6C93: $D9


    ld b, a                                       ; $6C94: $47

jr_021_6C95:
    sbc a                                         ; $6C95: $9F
    ld e, c                                       ; $6C96: $59
    ld h, l                                       ; $6C97: $65
    ld [hl], e                                    ; $6C98: $73
    ld hl, $49FE                                  ; $6C99: $21 $FE $49
    jr nz, jr_021_6CFF                            ; $6C9C: $20 $61

    ld l, l                                       ; $6C9E: $6D
    jr nz, @+$76                                  ; $6C9F: $20 $74

    ld l, b                                       ; $6CA1: $68
    ld h, l                                       ; $6CA2: $65
    rst $38                                       ; $6CA3: $FF
    ld b, c                                       ; $6CA4: $41
    ld l, h                                       ; $6CA5: $6C
    ld l, h                                       ; $6CA6: $6C
    jr nz, jr_021_6CF4                            ; $6CA7: $20 $4B

    ld l, [hl]                                    ; $6CA9: $6E
    ld l, a                                       ; $6CAA: $6F
    ld [hl], a                                    ; $6CAB: $77
    ld l, c                                       ; $6CAC: $69
    ld l, [hl]                                    ; $6CAD: $6E
    ld h, a                                       ; $6CAE: $67
    inc l                                         ; $6CAF: $2C
    cp $41                                        ; $6CB0: $FE $41

jr_021_6CB2:
    ld l, h                                       ; $6CB2: $6C
    ld l, h                                       ; $6CB3: $6C
    jr nz, jr_021_6D06                            ; $6CB4: $20 $50

    ld l, a                                       ; $6CB6: $6F
    ld [hl], a                                    ; $6CB7: $77
    ld h, l                                       ; $6CB8: $65
    ld [hl], d                                    ; $6CB9: $72
    ld h, [hl]                                    ; $6CBA: $66

jr_021_6CBB:
    ld [hl], l                                    ; $6CBB: $75
    ld l, h                                       ; $6CBC: $6C
    cp $57                                        ; $6CBD: $FE $57
    ld l, c                                       ; $6CBF: $69
    ld a, d                                       ; $6CC0: $7A
    ld h, c                                       ; $6CC1: $61

jr_021_6CC2:
    ld [hl], d                                    ; $6CC2: $72
    ld h, h                                       ; $6CC3: $64
    cp $61                                        ; $6CC4: $FE $61
    ld l, l                                       ; $6CC6: $6D
    jr nz, @+$4B                                  ; $6CC7: $20 $49

    jr nz, jr_021_6D39                            ; $6CC9: $20 $6E

    ld l, a                                       ; $6CCB: $6F
    ld [hl], h                                    ; $6CCC: $74
    ccf                                           ; $6CCD: $3F
    cp $FD                                        ; $6CCE: $FE $FD
    sbc e                                         ; $6CD0: $9B
    ld a, b                                       ; $6CD1: $78
    ld [hl], b                                    ; $6CD2: $70
    sbc a                                         ; $6CD3: $9F
    ld e, c                                       ; $6CD4: $59
    ld l, a                                       ; $6CD5: $6F
    ld [hl], l                                    ; $6CD6: $75
    jr nz, jr_021_6D3A                            ; $6CD7: $20 $61

    ld [hl], d                                    ; $6CD9: $72
    ld h, l                                       ; $6CDA: $65
    ccf                                           ; $6CDB: $3F
    cp $FD                                        ; $6CDC: $FE $FD
    sbc e                                         ; $6CDE: $9B
    reti                                          ; $6CDF: $D9


    ld b, a                                       ; $6CE0: $47
    sbc a                                         ; $6CE1: $9F
    ld e, c                                       ; $6CE2: $59
    ld h, l                                       ; $6CE3: $65
    ld [hl], e                                    ; $6CE4: $73

jr_021_6CE5:
    ld hl, $FDFE                                  ; $6CE5: $21 $FE $FD
    sbc e                                         ; $6CE8: $9B
    ld a, b                                       ; $6CE9: $78
    ld [hl], b                                    ; $6CEA: $70
    sbc a                                         ; $6CEB: $9F
    ld c, a                                       ; $6CEC: $4F
    ld l, b                                       ; $6CED: $68
    ld l, $2E                                     ; $6CEE: $2E $2E
    ld l, $FE                                     ; $6CF0: $2E $FE

jr_021_6CF2:
    db $FD                                        ; $6CF2: $FD
    sbc e                                         ; $6CF3: $9B

jr_021_6CF4:
    reti                                          ; $6CF4: $D9


    ld b, a                                       ; $6CF5: $47
    sbc a                                         ; $6CF6: $9F
    ld e, c                                       ; $6CF7: $59
    ld l, a                                       ; $6CF8: $6F
    ld [hl], l                                    ; $6CF9: $75
    jr nz, jr_021_6D69                            ; $6CFA: $20 $6D

    ld h, l                                       ; $6CFC: $65
    ld h, c                                       ; $6CFD: $61
    ld l, [hl]                                    ; $6CFE: $6E

jr_021_6CFF:
    rst $38                                       ; $6CFF: $FF
    ld a, c                                       ; $6D00: $79
    ld l, a                                       ; $6D01: $6F
    ld [hl], l                                    ; $6D02: $75
    jr nz, jr_021_6D6D                            ; $6D03: $20 $68

    ld h, c                                       ; $6D05: $61

jr_021_6D06:
    halt                                          ; $6D06: $76
    ld h, l                                       ; $6D07: $65
    ld l, [hl]                                    ; $6D08: $6E
    daa                                           ; $6D09: $27
    ld [hl], h                                    ; $6D0A: $74
    cp $68                                        ; $6D0B: $FE $68
    ld h, l                                       ; $6D0D: $65
    ld h, c                                       ; $6D0E: $61
    ld [hl], d                                    ; $6D0F: $72
    ld h, h                                       ; $6D10: $64
    jr nz, jr_021_6D82                            ; $6D11: $20 $6F

    ld h, [hl]                                    ; $6D13: $66
    jr nz, jr_021_6D83                            ; $6D14: $20 $6D

    ld h, l                                       ; $6D16: $65
    ccf                                           ; $6D17: $3F
    cp $FD                                        ; $6D18: $FE $FD
    sbc e                                         ; $6D1A: $9B
    ld a, b                                       ; $6D1B: $78
    ld [hl], b                                    ; $6D1C: $70
    sbc a                                         ; $6D1D: $9F
    ld c, [hl]                                    ; $6D1E: $4E
    ld l, a                                       ; $6D1F: $6F
    ld l, $FE                                     ; $6D20: $2E $FE
    db $FD                                        ; $6D22: $FD
    sbc e                                         ; $6D23: $9B
    reti                                          ; $6D24: $D9


    ld b, a                                       ; $6D25: $47
    sbc a                                         ; $6D26: $9F
    ld c, c                                       ; $6D27: $49
    jr nz, jr_021_6D8B                            ; $6D28: $20 $61

    ld l, l                                       ; $6D2A: $6D
    jr nz, jr_021_6DA1                            ; $6D2B: $20 $74

    ld l, b                                       ; $6D2D: $68
    ld h, l                                       ; $6D2E: $65
    rst $38                                       ; $6D2F: $FF
    ld c, a                                       ; $6D30: $4F
    ld l, l                                       ; $6D31: $6D
    ld l, [hl]                                    ; $6D32: $6E
    ld l, c                                       ; $6D33: $69
    ld [hl], e                                    ; $6D34: $73
    ld h, e                                       ; $6D35: $63
    ld l, c                                       ; $6D36: $69
    ld h, l                                       ; $6D37: $65
    ld l, [hl]                                    ; $6D38: $6E

jr_021_6D39:
    ld [hl], h                                    ; $6D39: $74

jr_021_6D3A:
    cp $45                                        ; $6D3A: $FE $45
    ld l, [hl]                                    ; $6D3C: $6E
    ld h, e                                       ; $6D3D: $63
    ld l, b                                       ; $6D3E: $68
    ld h, c                                       ; $6D3F: $61
    ld l, [hl]                                    ; $6D40: $6E
    ld [hl], h                                    ; $6D41: $74
    ld h, l                                       ; $6D42: $65
    ld [hl], d                                    ; $6D43: $72
    ld hl, $FDFE                                  ; $6D44: $21 $FE $FD
    sbc e                                         ; $6D47: $9B
    ld a, b                                       ; $6D48: $78
    ld [hl], b                                    ; $6D49: $70
    sbc a                                         ; $6D4A: $9F
    ld c, c                                       ; $6D4B: $49
    ld l, l                                       ; $6D4C: $6D
    ld [hl], b                                    ; $6D4D: $70
    ld [hl], d                                    ; $6D4E: $72
    ld h, l                                       ; $6D4F: $65
    ld [hl], e                                    ; $6D50: $73
    ld [hl], e                                    ; $6D51: $73
    ld l, c                                       ; $6D52: $69
    halt                                          ; $6D53: $76
    ld h, l                                       ; $6D54: $65
    ld l, $2E                                     ; $6D55: $2E $2E
    ld l, $FE                                     ; $6D57: $2E $FE
    ld b, e                                       ; $6D59: $43
    ld h, c                                       ; $6D5A: $61
    ld l, [hl]                                    ; $6D5B: $6E
    daa                                           ; $6D5C: $27
    ld [hl], h                                    ; $6D5D: $74
    jr nz, jr_021_6DD3                            ; $6D5E: $20 $73

    ld h, c                                       ; $6D60: $61
    ld a, c                                       ; $6D61: $79
    jr nz, jr_021_6DCD                            ; $6D62: $20 $69

    ld [hl], h                                    ; $6D64: $74
    rst $38                                       ; $6D65: $FF
    ld [hl], d                                    ; $6D66: $72
    ld l, c                                       ; $6D67: $69
    ld l, [hl]                                    ; $6D68: $6E

jr_021_6D69:
    ld h, a                                       ; $6D69: $67
    ld [hl], e                                    ; $6D6A: $73
    jr nz, jr_021_6DCE                            ; $6D6B: $20 $61

jr_021_6D6D:
    jr nz, jr_021_6DD1                            ; $6D6D: $20 $62

    ld h, l                                       ; $6D6F: $65
    ld l, h                                       ; $6D70: $6C
    ld l, h                                       ; $6D71: $6C
    cp $74                                        ; $6D72: $FE $74
    ld l, b                                       ; $6D74: $68
    ld l, a                                       ; $6D75: $6F
    ld [hl], l                                    ; $6D76: $75
    ld h, a                                       ; $6D77: $67
    ld l, b                                       ; $6D78: $68
    ld l, $FE                                     ; $6D79: $2E $FE
    db $FD                                        ; $6D7B: $FD
    sbc e                                         ; $6D7C: $9B
    reti                                          ; $6D7D: $D9


    ld b, a                                       ; $6D7E: $47
    sbc a                                         ; $6D7F: $9F
    ld d, h                                       ; $6D80: $54
    ld l, b                                       ; $6D81: $68

jr_021_6D82:
    ld h, l                                       ; $6D82: $65

jr_021_6D83:
    rst $38                                       ; $6D83: $FF
    ld c, l                                       ; $6D84: $4D
    ld h, c                                       ; $6D85: $61
    ld h, a                                       ; $6D86: $67
    ld l, [hl]                                    ; $6D87: $6E
    ld l, c                                       ; $6D88: $69
    ld h, [hl]                                    ; $6D89: $66
    ld l, c                                       ; $6D8A: $69

jr_021_6D8B:
    ld h, e                                       ; $6D8B: $63
    ld h, l                                       ; $6D8C: $65
    ld l, [hl]                                    ; $6D8D: $6E
    ld [hl], h                                    ; $6D8E: $74
    cp $4D                                        ; $6D8F: $FE $4D
    ld h, c                                       ; $6D91: $61
    ld h, a                                       ; $6D92: $67
    ld l, c                                       ; $6D93: $69
    ld h, e                                       ; $6D94: $63
    ld l, c                                       ; $6D95: $69
    ld h, c                                       ; $6D96: $61
    ld l, [hl]                                    ; $6D97: $6E
    ld hl, $FDFE                                  ; $6D98: $21 $FE $FD
    sbc e                                         ; $6D9B: $9B
    ld a, b                                       ; $6D9C: $78
    ld [hl], b                                    ; $6D9D: $70
    sbc a                                         ; $6D9E: $9F
    ld c, b                                       ; $6D9F: $48
    ld h, c                                       ; $6DA0: $61

jr_021_6DA1:
    halt                                          ; $6DA1: $76
    ld h, l                                       ; $6DA2: $65
    ld l, [hl]                                    ; $6DA3: $6E
    daa                                           ; $6DA4: $27
    ld [hl], h                                    ; $6DA5: $74
    jr nz, @+$6A                                  ; $6DA6: $20 $68

    ld h, l                                       ; $6DA8: $65
    ld h, c                                       ; $6DA9: $61
    ld [hl], d                                    ; $6DAA: $72
    ld h, h                                       ; $6DAB: $64
    rst $38                                       ; $6DAC: $FF
    ld l, a                                       ; $6DAD: $6F
    ld h, [hl]                                    ; $6DAE: $66
    jr nz, jr_021_6E19                            ; $6DAF: $20 $68

    ld l, c                                       ; $6DB1: $69
    ld l, l                                       ; $6DB2: $6D
    ld l, $FE                                     ; $6DB3: $2E $FE
    db $FD                                        ; $6DB5: $FD
    sbc e                                         ; $6DB6: $9B
    reti                                          ; $6DB7: $D9


    ld b, a                                       ; $6DB8: $47
    sbc a                                         ; $6DB9: $9F
    ld d, a                                       ; $6DBA: $57
    ld l, b                                       ; $6DBB: $68
    ld h, c                                       ; $6DBC: $61
    ld [hl], h                                    ; $6DBD: $74
    jr nz, jr_021_6E21                            ; $6DBE: $20 $61

    ld h, d                                       ; $6DC0: $62
    ld l, a                                       ; $6DC1: $6F
    ld [hl], l                                    ; $6DC2: $75
    ld [hl], h                                    ; $6DC3: $74
    cp $74                                        ; $6DC4: $FE $74
    ld l, b                                       ; $6DC6: $68
    ld h, l                                       ; $6DC7: $65
    jr nz, jr_021_6E0D                            ; $6DC8: $20 $43

    ld l, h                                       ; $6DCA: $6C
    ld h, c                                       ; $6DCB: $61
    ld l, c                                       ; $6DCC: $69

jr_021_6DCD:
    ld [hl], d                                    ; $6DCD: $72

jr_021_6DCE:
    halt                                          ; $6DCE: $76
    ld l, a                                       ; $6DCF: $6F
    ld a, c                                       ; $6DD0: $79

jr_021_6DD1:
    ld h, c                                       ; $6DD1: $61
    ld l, [hl]                                    ; $6DD2: $6E

jr_021_6DD3:
    ld [hl], h                                    ; $6DD3: $74
    rst $38                                       ; $6DD4: $FF
    ld b, e                                       ; $6DD5: $43
    ld l, a                                       ; $6DD6: $6F
    ld l, [hl]                                    ; $6DD7: $6E
    ld l, d                                       ; $6DD8: $6A
    ld [hl], l                                    ; $6DD9: $75
    ld [hl], d                                    ; $6DDA: $72
    ld h, l                                       ; $6DDB: $65
    ld [hl], d                                    ; $6DDC: $72
    ccf                                           ; $6DDD: $3F
    cp $FD                                        ; $6DDE: $FE $FD
    sbc e                                         ; $6DE0: $9B
    ld a, b                                       ; $6DE1: $78
    ld [hl], b                                    ; $6DE2: $70
    sbc a                                         ; $6DE3: $9F
    ld c, [hl]                                    ; $6DE4: $4E
    ld l, a                                       ; $6DE5: $6F
    ld [hl], b                                    ; $6DE6: $70
    ld h, l                                       ; $6DE7: $65
    ld l, $FE                                     ; $6DE8: $2E $FE
    db $FD                                        ; $6DEA: $FD
    sbc e                                         ; $6DEB: $9B
    reti                                          ; $6DEC: $D9


    ld b, a                                       ; $6DED: $47
    sbc a                                         ; $6DEE: $9F
    ld d, h                                       ; $6DEF: $54
    ld l, b                                       ; $6DF0: $68
    ld h, l                                       ; $6DF1: $65
    ld l, $2E                                     ; $6DF2: $2E $2E
    ld l, $FE                                     ; $6DF4: $2E $FE
    ld b, c                                       ; $6DF6: $41
    ld l, b                                       ; $6DF7: $68
    ld l, b                                       ; $6DF8: $68
    ld l, $2E                                     ; $6DF9: $2E $2E
    cp $74                                        ; $6DFB: $FE $74
    ld l, b                                       ; $6DFD: $68
    ld h, l                                       ; $6DFE: $65
    jr nz, jr_021_6E54                            ; $6DFF: $20 $53

    ld [hl], l                                    ; $6E01: $75
    ld [hl], b                                    ; $6E02: $70
    ld h, l                                       ; $6E03: $65
    ld [hl], d                                    ; $6E04: $72
    rst $38                                       ; $6E05: $FF
    ld d, e                                       ; $6E06: $53
    ld l, a                                       ; $6E07: $6F
    ld [hl], d                                    ; $6E08: $72
    ld h, e                                       ; $6E09: $63
    ld h, l                                       ; $6E0A: $65
    ld [hl], d                                    ; $6E0B: $72
    ld h, l                                       ; $6E0C: $65

jr_021_6E0D:
    ld [hl], d                                    ; $6E0D: $72
    ccf                                           ; $6E0E: $3F
    cp $FD                                        ; $6E0F: $FE $FD
    sbc e                                         ; $6E11: $9B
    ld a, b                                       ; $6E12: $78
    ld [hl], b                                    ; $6E13: $70
    sbc a                                         ; $6E14: $9F
    ld c, [hl]                                    ; $6E15: $4E
    ld l, a                                       ; $6E16: $6F
    ld l, $FE                                     ; $6E17: $2E $FE

jr_021_6E19:
    ld c, h                                       ; $6E19: $4C
    ld l, c                                       ; $6E1A: $69
    ld [hl], e                                    ; $6E1B: $73
    ld [hl], h                                    ; $6E1C: $74
    ld h, l                                       ; $6E1D: $65
    ld l, [hl]                                    ; $6E1E: $6E
    inc l                                         ; $6E1F: $2C
    rst $38                                       ; $6E20: $FF

jr_021_6E21:
    ld c, c                                       ; $6E21: $49
    jr nz, jr_021_6E87                            ; $6E22: $20 $63

    ld h, c                                       ; $6E24: $61
    ld l, l                                       ; $6E25: $6D
    ld h, l                                       ; $6E26: $65
    cp $68                                        ; $6E27: $FE $68
    ld h, l                                       ; $6E29: $65
    ld [hl], d                                    ; $6E2A: $72
    ld h, l                                       ; $6E2B: $65
    jr nz, jr_021_6EA2                            ; $6E2C: $20 $74

    ld l, a                                       ; $6E2E: $6F
    jr nz, jr_021_6E97                            ; $6E2F: $20 $66

    ld l, c                                       ; $6E31: $69
    ld l, [hl]                                    ; $6E32: $6E
    ld h, h                                       ; $6E33: $64
    rst $38                                       ; $6E34: $FF
    ld [hl], h                                    ; $6E35: $74
    ld l, b                                       ; $6E36: $68
    ld h, l                                       ; $6E37: $65
    jr nz, jr_021_6E8D                            ; $6E38: $20 $53

    ld h, l                                       ; $6E3A: $65
    ld h, l                                       ; $6E3B: $65
    ld [hl], d                                    ; $6E3C: $72
    ld l, $FE                                     ; $6E3D: $2E $FE
    ld c, b                                       ; $6E3F: $48
    ld h, c                                       ; $6E40: $61
    halt                                          ; $6E41: $76
    ld h, l                                       ; $6E42: $65
    jr nz, @+$7B                                  ; $6E43: $20 $79

    ld l, a                                       ; $6E45: $6F
    ld [hl], l                                    ; $6E46: $75
    jr nz, @+$75                                  ; $6E47: $20 $73

    ld h, l                                       ; $6E49: $65
    ld h, l                                       ; $6E4A: $65
    ld l, [hl]                                    ; $6E4B: $6E
    rst $38                                       ; $6E4C: $FF
    ld l, b                                       ; $6E4D: $68
    ld l, c                                       ; $6E4E: $69
    ld l, l                                       ; $6E4F: $6D
    jr nz, jr_021_6EC4                            ; $6E50: $20 $72

    ld h, l                                       ; $6E52: $65
    ld h, e                                       ; $6E53: $63

jr_021_6E54:
    ld h, l                                       ; $6E54: $65
    ld l, [hl]                                    ; $6E55: $6E
    ld [hl], h                                    ; $6E56: $74
    ld l, h                                       ; $6E57: $6C
    ld a, c                                       ; $6E58: $79
    ccf                                           ; $6E59: $3F
    cp $FD                                        ; $6E5A: $FE $FD
    sbc e                                         ; $6E5C: $9B
    reti                                          ; $6E5D: $D9


    ld b, a                                       ; $6E5E: $47
    sbc a                                         ; $6E5F: $9F
    ld d, h                                       ; $6E60: $54
    ld l, b                                       ; $6E61: $68
    ld h, l                                       ; $6E62: $65
    jr nz, jr_021_6EB8                            ; $6E63: $20 $53

    ld h, l                                       ; $6E65: $65
    ld h, l                                       ; $6E66: $65
    ld [hl], d                                    ; $6E67: $72
    ccf                                           ; $6E68: $3F
    cp $59                                        ; $6E69: $FE $59
    ld l, a                                       ; $6E6B: $6F
    ld [hl], l                                    ; $6E6C: $75
    jr nz, jr_021_6ED2                            ; $6E6D: $20 $63

    ld h, c                                       ; $6E6F: $61
    ld l, l                                       ; $6E70: $6D
    ld h, l                                       ; $6E71: $65
    jr nz, jr_021_6ED5                            ; $6E72: $20 $61

    ld l, h                                       ; $6E74: $6C
    ld l, h                                       ; $6E75: $6C
    rst $38                                       ; $6E76: $FF
    ld [hl], h                                    ; $6E77: $74
    ld l, b                                       ; $6E78: $68
    ld h, l                                       ; $6E79: $65
    jr nz, jr_021_6EF3                            ; $6E7A: $20 $77

    ld h, c                                       ; $6E7C: $61
    ld a, c                                       ; $6E7D: $79
    jr nz, @+$6A                                  ; $6E7E: $20 $68

    ld h, l                                       ; $6E80: $65
    ld [hl], d                                    ; $6E81: $72
    ld h, l                                       ; $6E82: $65
    cp $6A                                        ; $6E83: $FE $6A
    ld [hl], l                                    ; $6E85: $75
    ld [hl], e                                    ; $6E86: $73

jr_021_6E87:
    ld [hl], h                                    ; $6E87: $74
    jr nz, jr_021_6EFE                            ; $6E88: $20 $74

    ld l, a                                       ; $6E8A: $6F
    jr nz, jr_021_6F01                            ; $6E8B: $20 $74

jr_021_6E8D:
    ld h, c                                       ; $6E8D: $61
    ld l, h                                       ; $6E8E: $6C
    ld l, e                                       ; $6E8F: $6B
    rst $38                                       ; $6E90: $FF
    ld [hl], h                                    ; $6E91: $74
    ld l, a                                       ; $6E92: $6F
    jr nz, jr_021_6F09                            ; $6E93: $20 $74

    ld l, b                                       ; $6E95: $68
    ld h, l                                       ; $6E96: $65

jr_021_6E97:
    jr nz, jr_021_6EEC                            ; $6E97: $20 $53

    ld h, l                                       ; $6E99: $65
    ld h, l                                       ; $6E9A: $65
    ld [hl], d                                    ; $6E9B: $72
    ccf                                           ; $6E9C: $3F
    cp $FD                                        ; $6E9D: $FE $FD
    sbc e                                         ; $6E9F: $9B
    ld a, b                                       ; $6EA0: $78
    ld [hl], b                                    ; $6EA1: $70

jr_021_6EA2:
    sbc a                                         ; $6EA2: $9F
    ld e, c                                       ; $6EA3: $59
    ld h, l                                       ; $6EA4: $65
    ld [hl], e                                    ; $6EA5: $73
    ld l, $FE                                     ; $6EA6: $2E $FE
    ld c, c                                       ; $6EA8: $49
    ld [hl], e                                    ; $6EA9: $73
    jr nz, @+$6A                                  ; $6EAA: $20 $68

    ld h, l                                       ; $6EAC: $65
    rst $38                                       ; $6EAD: $FF
    ld h, c                                       ; $6EAE: $61
    ld [hl], d                                    ; $6EAF: $72
    ld l, a                                       ; $6EB0: $6F
    ld [hl], l                                    ; $6EB1: $75
    ld l, [hl]                                    ; $6EB2: $6E
    ld h, h                                       ; $6EB3: $64
    ccf                                           ; $6EB4: $3F
    cp $FD                                        ; $6EB5: $FE $FD
    sbc e                                         ; $6EB7: $9B

jr_021_6EB8:
    reti                                          ; $6EB8: $D9


    ld b, a                                       ; $6EB9: $47
    sbc a                                         ; $6EBA: $9F
    ld l, $2E                                     ; $6EBB: $2E $2E
    ld l, $2E                                     ; $6EBD: $2E $2E
    ld l, $2E                                     ; $6EBF: $2E $2E
    ld l, $FE                                     ; $6EC1: $2E $FE
    db $FD                                        ; $6EC3: $FD

jr_021_6EC4:
    sbc e                                         ; $6EC4: $9B
    ld a, b                                       ; $6EC5: $78
    ld [hl], b                                    ; $6EC6: $70
    sbc a                                         ; $6EC7: $9F
    ld c, b                                       ; $6EC8: $48
    ld h, l                                       ; $6EC9: $65
    ld l, h                                       ; $6ECA: $6C
    ld l, h                                       ; $6ECB: $6C
    ld l, a                                       ; $6ECC: $6F
    ccf                                           ; $6ECD: $3F
    cp $FD                                        ; $6ECE: $FE $FD
    sbc e                                         ; $6ED0: $9B
    reti                                          ; $6ED1: $D9


jr_021_6ED2:
    ld b, a                                       ; $6ED2: $47
    sbc a                                         ; $6ED3: $9F
    ld d, a                                       ; $6ED4: $57

jr_021_6ED5:
    ld l, b                                       ; $6ED5: $68
    ld h, c                                       ; $6ED6: $61
    ld [hl], h                                    ; $6ED7: $74
    ccf                                           ; $6ED8: $3F
    cp $4F                                        ; $6ED9: $FE $4F
    ld l, b                                       ; $6EDB: $68
    jr nz, jr_021_6F51                            ; $6EDC: $20 $73

    ld l, a                                       ; $6EDE: $6F
    ld [hl], d                                    ; $6EDF: $72
    ld [hl], d                                    ; $6EE0: $72
    ld a, c                                       ; $6EE1: $79
    ld l, $2E                                     ; $6EE2: $2E $2E
    ld l, $FE                                     ; $6EE4: $2E $FE
    ld c, c                                       ; $6EE6: $49
    jr nz, jr_021_6F56                            ; $6EE7: $20 $6D

    ld h, l                                       ; $6EE9: $65
    ld h, c                                       ; $6EEA: $61
    ld l, [hl]                                    ; $6EEB: $6E

jr_021_6EEC:
    rst $38                                       ; $6EEC: $FF
    ld h, h                                       ; $6EED: $64
    ld l, a                                       ; $6EEE: $6F
    ld h, l                                       ; $6EEF: $65
    ld [hl], e                                    ; $6EF0: $73
    ld l, [hl]                                    ; $6EF1: $6E
    daa                                           ; $6EF2: $27

jr_021_6EF3:
    ld [hl], h                                    ; $6EF3: $74
    jr nz, @+$76                                  ; $6EF4: $20 $74

    ld l, b                                       ; $6EF6: $68
    ld h, l                                       ; $6EF7: $65
    cp $74                                        ; $6EF8: $FE $74
    ld l, c                                       ; $6EFA: $69
    ld [hl], h                                    ; $6EFB: $74
    ld l, h                                       ; $6EFC: $6C
    ld h, l                                       ; $6EFD: $65

jr_021_6EFE:
    jr nz, jr_021_6F27                            ; $6EFE: $20 $27

    ld d, e                                       ; $6F00: $53

jr_021_6F01:
    ld h, l                                       ; $6F01: $65
    ld h, l                                       ; $6F02: $65
    ld [hl], d                                    ; $6F03: $72
    daa                                           ; $6F04: $27
    rst $38                                       ; $6F05: $FF
    ld [hl], e                                    ; $6F06: $73
    ld h, l                                       ; $6F07: $65
    ld h, l                                       ; $6F08: $65

jr_021_6F09:
    ld l, l                                       ; $6F09: $6D
    jr nz, jr_021_6F6D                            ; $6F0A: $20 $61

    jr nz, jr_021_6F7A                            ; $6F0C: $20 $6C

    ld l, c                                       ; $6F0E: $69
    ld [hl], h                                    ; $6F0F: $74
    ld [hl], h                                    ; $6F10: $74
    ld l, h                                       ; $6F11: $6C
    ld h, l                                       ; $6F12: $65
    cp $75                                        ; $6F13: $FE $75
    ld l, [hl]                                    ; $6F15: $6E
    ld l, c                                       ; $6F16: $69
    ld l, l                                       ; $6F17: $6D
    ld [hl], b                                    ; $6F18: $70
    ld [hl], d                                    ; $6F19: $72
    ld h, l                                       ; $6F1A: $65
    ld [hl], e                                    ; $6F1B: $73
    ld [hl], e                                    ; $6F1C: $73
    ld l, c                                       ; $6F1D: $69
    halt                                          ; $6F1E: $76
    ld h, l                                       ; $6F1F: $65
    rst $38                                       ; $6F20: $FF
    ld [hl], h                                    ; $6F21: $74
    ld l, a                                       ; $6F22: $6F
    jr nz, jr_021_6F9E                            ; $6F23: $20 $79

    ld l, a                                       ; $6F25: $6F
    ld [hl], l                                    ; $6F26: $75

jr_021_6F27:
    ccf                                           ; $6F27: $3F
    cp $FD                                        ; $6F28: $FE $FD
    sbc e                                         ; $6F2A: $9B
    ld a, b                                       ; $6F2B: $78
    ld [hl], b                                    ; $6F2C: $70
    sbc a                                         ; $6F2D: $9F
    ld l, $2E                                     ; $6F2E: $2E $2E
    ld l, $2E                                     ; $6F30: $2E $2E
    ld l, $2E                                     ; $6F32: $2E $2E
    ld l, $FE                                     ; $6F34: $2E $FE
    db $FD                                        ; $6F36: $FD
    sbc e                                         ; $6F37: $9B
    reti                                          ; $6F38: $D9


    ld b, a                                       ; $6F39: $47
    sbc a                                         ; $6F3A: $9F
    ld b, h                                       ; $6F3B: $44
    ld l, a                                       ; $6F3C: $6F
    ld l, [hl]                                    ; $6F3D: $6E
    daa                                           ; $6F3E: $27
    ld [hl], h                                    ; $6F3F: $74
    jr nz, jr_021_6FBB                            ; $6F40: $20 $79

    ld l, a                                       ; $6F42: $6F
    ld [hl], l                                    ; $6F43: $75
    rst $38                                       ; $6F44: $FF
    ld [hl], h                                    ; $6F45: $74
    ld l, b                                       ; $6F46: $68
    ld l, c                                       ; $6F47: $69
    ld l, [hl]                                    ; $6F48: $6E
    ld l, e                                       ; $6F49: $6B
    jr nz, jr_021_6FBC                            ; $6F4A: $20 $70

    ld h, l                                       ; $6F4C: $65
    ld l, a                                       ; $6F4D: $6F
    ld [hl], b                                    ; $6F4E: $70
    ld l, h                                       ; $6F4F: $6C
    ld h, l                                       ; $6F50: $65

jr_021_6F51:
    cp $77                                        ; $6F51: $FE $77
    ld l, a                                       ; $6F53: $6F
    ld [hl], l                                    ; $6F54: $75
    ld l, h                                       ; $6F55: $6C

jr_021_6F56:
    ld h, h                                       ; $6F56: $64
    jr nz, jr_021_6FCB                            ; $6F57: $20 $72

    ld h, l                                       ; $6F59: $65
    ld [hl], e                                    ; $6F5A: $73
    ld [hl], b                                    ; $6F5B: $70
    ld h, l                                       ; $6F5C: $65
    ld h, e                                       ; $6F5D: $63
    ld [hl], h                                    ; $6F5E: $74
    rst $38                                       ; $6F5F: $FF
    ld d, h                                       ; $6F60: $54
    ld l, b                                       ; $6F61: $68
    ld h, l                                       ; $6F62: $65
    jr nz, jr_021_6FAC                            ; $6F63: $20 $47

    ld [hl], d                                    ; $6F65: $72
    ld h, c                                       ; $6F66: $61
    ld l, [hl]                                    ; $6F67: $6E
    ld h, h                                       ; $6F68: $64
    jr nz, @+$49                                  ; $6F69: $20 $47

    ld [hl], l                                    ; $6F6B: $75
    ld [hl], d                                    ; $6F6C: $72

jr_021_6F6D:
    ld [hl], l                                    ; $6F6D: $75
    cp $6F                                        ; $6F6E: $FE $6F
    ld [hl], d                                    ; $6F70: $72
    jr nz, jr_021_6FC7                            ; $6F71: $20 $54

    ld l, b                                       ; $6F73: $68
    ld h, l                                       ; $6F74: $65
    rst $38                                       ; $6F75: $FF
    ld d, e                                       ; $6F76: $53
    ld [hl], h                                    ; $6F77: $74
    ld [hl], l                                    ; $6F78: $75
    ld [hl], b                                    ; $6F79: $70

jr_021_6F7A:
    ld h, l                                       ; $6F7A: $65
    ld l, [hl]                                    ; $6F7B: $6E
    ld h, h                                       ; $6F7C: $64
    ld l, a                                       ; $6F7D: $6F
    ld [hl], l                                    ; $6F7E: $75
    ld [hl], e                                    ; $6F7F: $73
    cp $53                                        ; $6F80: $FE $53
    ld [hl], b                                    ; $6F82: $70
    ld h, l                                       ; $6F83: $65
    ld l, h                                       ; $6F84: $6C
    ld l, h                                       ; $6F85: $6C
    ld h, e                                       ; $6F86: $63
    ld h, c                                       ; $6F87: $61
    ld [hl], e                                    ; $6F88: $73
    ld [hl], h                                    ; $6F89: $74
    ld h, l                                       ; $6F8A: $65
    ld [hl], d                                    ; $6F8B: $72
    rst $38                                       ; $6F8C: $FF
    ld l, l                                       ; $6F8D: $6D
    ld l, a                                       ; $6F8E: $6F
    ld [hl], d                                    ; $6F8F: $72
    ld h, l                                       ; $6F90: $65
    jr nz, jr_021_7007                            ; $6F91: $20 $74

    ld l, b                                       ; $6F93: $68
    ld h, c                                       ; $6F94: $61
    ld l, [hl]                                    ; $6F95: $6E
    cp $73                                        ; $6F96: $FE $73
    ld l, a                                       ; $6F98: $6F
    ld l, l                                       ; $6F99: $6D
    ld h, l                                       ; $6F9A: $65
    jr nz, jr_021_700D                            ; $6F9B: $20 $70

    ld l, h                                       ; $6F9D: $6C

jr_021_6F9E:
    ld h, c                                       ; $6F9E: $61
    ld l, c                                       ; $6F9F: $69
    ld l, [hl]                                    ; $6FA0: $6E
    ld l, $2E                                     ; $6FA1: $2E $2E
    ld l, $FE                                     ; $6FA3: $2E $FE
    db $FD                                        ; $6FA5: $FD
    sbc e                                         ; $6FA6: $9B
    ld a, b                                       ; $6FA7: $78
    ld [hl], b                                    ; $6FA8: $70
    sbc a                                         ; $6FA9: $9F
    ld c, a                                       ; $6FAA: $4F
    ld l, b                                       ; $6FAB: $68

jr_021_6FAC:
    inc l                                         ; $6FAC: $2C
    jr nz, jr_021_7015                            ; $6FAD: $20 $66

    ld l, a                                       ; $6FAF: $6F
    ld [hl], d                                    ; $6FB0: $72
    jr nz, @+$65                                  ; $6FB1: $20 $63

    ld [hl], d                                    ; $6FB3: $72
    ld a, c                                       ; $6FB4: $79
    ld l, c                                       ; $6FB5: $69
    ld l, [hl]                                    ; $6FB6: $6E
    ld h, a                                       ; $6FB7: $67
    rst $38                                       ; $6FB8: $FF
    ld l, a                                       ; $6FB9: $6F
    ld [hl], l                                    ; $6FBA: $75

jr_021_6FBB:
    ld [hl], h                                    ; $6FBB: $74

jr_021_6FBC:
    jr nz, jr_021_702A                            ; $6FBC: $20 $6C

    ld l, a                                       ; $6FBE: $6F
    ld [hl], l                                    ; $6FBF: $75
    ld h, h                                       ; $6FC0: $64
    ld hl, $49FE                                  ; $6FC1: $21 $FE $49
    ld [hl], e                                    ; $6FC4: $73
    jr nz, jr_021_703B                            ; $6FC5: $20 $74

jr_021_6FC7:
    ld l, b                                       ; $6FC7: $68
    ld h, l                                       ; $6FC8: $65
    jr nz, @+$55                                  ; $6FC9: $20 $53

jr_021_6FCB:
    ld h, l                                       ; $6FCB: $65
    ld h, l                                       ; $6FCC: $65
    ld [hl], d                                    ; $6FCD: $72
    rst $38                                       ; $6FCE: $FF
    ld h, c                                       ; $6FCF: $61
    ld [hl], d                                    ; $6FD0: $72
    ld l, a                                       ; $6FD1: $6F
    ld [hl], l                                    ; $6FD2: $75
    ld l, [hl]                                    ; $6FD3: $6E
    ld h, h                                       ; $6FD4: $64
    jr nz, jr_021_703F                            ; $6FD5: $20 $68

    ld h, l                                       ; $6FD7: $65
    ld [hl], d                                    ; $6FD8: $72
    ld h, l                                       ; $6FD9: $65
    cp $6F                                        ; $6FDA: $FE $6F
    ld [hl], d                                    ; $6FDC: $72
    jr nz, jr_021_7048                            ; $6FDD: $20 $69

    ld [hl], e                                    ; $6FDF: $73
    ld l, [hl]                                    ; $6FE0: $6E
    daa                                           ; $6FE1: $27
    ld [hl], h                                    ; $6FE2: $74
    jr nz, jr_021_704D                            ; $6FE3: $20 $68

    ld h, l                                       ; $6FE5: $65
    ccf                                           ; $6FE6: $3F
    cp $FD                                        ; $6FE7: $FE $FD
    sbc e                                         ; $6FE9: $9B
    reti                                          ; $6FEA: $D9


    ld b, a                                       ; $6FEB: $47
    sbc a                                         ; $6FEC: $9F
    ld d, a                                       ; $6FED: $57
    ld h, l                                       ; $6FEE: $65
    ld l, h                                       ; $6FEF: $6C
    ld l, h                                       ; $6FF0: $6C
    ld l, $2E                                     ; $6FF1: $2E $2E
    ld l, $FF                                     ; $6FF3: $2E $FF
    ld e, c                                       ; $6FF5: $59
    ld h, l                                       ; $6FF6: $65
    ld [hl], e                                    ; $6FF7: $73
    ld l, $2E                                     ; $6FF8: $2E $2E
    ld l, $FE                                     ; $6FFA: $2E $FE
    db $FD                                        ; $6FFC: $FD
    sbc d                                         ; $6FFD: $9A
    ld e, h                                       ; $6FFE: $5C
    nop                                           ; $6FFF: $00
    inc bc                                        ; $7000: $03
    ld b, d                                       ; $7001: $42
    sbc e                                         ; $7002: $9B
    ld a, b                                       ; $7003: $78
    ld [hl], b                                    ; $7004: $70
    sbc a                                         ; $7005: $9F
    ld c, b                                       ; $7006: $48

jr_021_7007:
    ld h, l                                       ; $7007: $65
    ld a, c                                       ; $7008: $79
    ld hl, $57FE                                  ; $7009: $21 $FE $57
    ld l, b                                       ; $700C: $68

jr_021_700D:
    ld h, c                                       ; $700D: $61
    ld [hl], h                                    ; $700E: $74
    ccf                                           ; $700F: $3F
    cp $57                                        ; $7010: $FE $57
    ld l, b                                       ; $7012: $68
    ld h, c                                       ; $7013: $61
    ld [hl], h                                    ; $7014: $74

jr_021_7015:
    jr nz, @+$63                                  ; $7015: $20 $61

    ld [hl], d                                    ; $7017: $72
    ld h, l                                       ; $7018: $65
    rst $38                                       ; $7019: $FF
    ld a, c                                       ; $701A: $79
    ld l, a                                       ; $701B: $6F
    ld [hl], l                                    ; $701C: $75
    jr nz, jr_021_7083                            ; $701D: $20 $64

    ld l, a                                       ; $701F: $6F
    ld l, c                                       ; $7020: $69
    ld l, [hl]                                    ; $7021: $6E
    ld h, a                                       ; $7022: $67
    ccf                                           ; $7023: $3F
    cp $FD                                        ; $7024: $FE $FD
    ld e, h                                       ; $7026: $5C
    ld bc, $4202                                  ; $7027: $01 $02 $42

jr_021_702A:
    sbc e                                         ; $702A: $9B
    reti                                          ; $702B: $D9


    ld b, a                                       ; $702C: $47
    sbc a                                         ; $702D: $9F
    ld c, c                                       ; $702E: $49
    jr nz, jr_021_7092                            ; $702F: $20 $61

    ld l, l                                       ; $7031: $6D
    jr nz, jr_021_70A8                            ; $7032: $20 $74

    ld l, b                                       ; $7034: $68
    ld h, l                                       ; $7035: $65
    jr nz, jr_021_708B                            ; $7036: $20 $53

    ld h, l                                       ; $7038: $65
    ld h, l                                       ; $7039: $65
    ld [hl], d                                    ; $703A: $72

jr_021_703B:
    ld l, $FE                                     ; $703B: $2E $FE
    ld d, a                                       ; $703D: $57
    ld l, b                                       ; $703E: $68

jr_021_703F:
    ld a, c                                       ; $703F: $79
    jr nz, @+$66                                  ; $7040: $20 $64

    ld l, c                                       ; $7042: $69
    ld h, h                                       ; $7043: $64
    jr nz, jr_021_70BF                            ; $7044: $20 $79

    ld l, a                                       ; $7046: $6F
    ld [hl], l                                    ; $7047: $75

jr_021_7048:
    rst $38                                       ; $7048: $FF
    ld h, e                                       ; $7049: $63
    ld l, a                                       ; $704A: $6F
    ld l, l                                       ; $704B: $6D
    ld h, l                                       ; $704C: $65

jr_021_704D:
    jr nz, @+$76                                  ; $704D: $20 $74

    ld l, a                                       ; $704F: $6F
    jr nz, jr_021_70BF                            ; $7050: $20 $6D

    ld h, l                                       ; $7052: $65
    ccf                                           ; $7053: $3F
    cp $FD                                        ; $7054: $FE $FD
    sbc e                                         ; $7056: $9B
    ld a, b                                       ; $7057: $78
    ld [hl], b                                    ; $7058: $70
    sbc a                                         ; $7059: $9F
    ld c, a                                       ; $705A: $4F
    ld [hl], d                                    ; $705B: $72
    ld [hl], a                                    ; $705C: $77
    ld l, c                                       ; $705D: $69
    ld l, [hl]                                    ; $705E: $6E
    jr nz, jr_021_70CA                            ; $705F: $20 $69

    ld [hl], e                                    ; $7061: $73
    jr nz, jr_021_70D7                            ; $7062: $20 $73

    ld l, c                                       ; $7064: $69
    ld h, e                                       ; $7065: $63
    ld l, e                                       ; $7066: $6B
    inc l                                         ; $7067: $2C
    rst $38                                       ; $7068: $FF
    ld h, c                                       ; $7069: $61
    ld l, [hl]                                    ; $706A: $6E
    ld h, h                                       ; $706B: $64
    jr nz, @+$76                                  ; $706C: $20 $74

    ld l, b                                       ; $706E: $68
    ld h, l                                       ; $706F: $65
    jr nz, @+$72                                  ; $7070: $20 $70

    ld h, l                                       ; $7072: $65
    ld l, a                                       ; $7073: $6F
    ld [hl], b                                    ; $7074: $70
    ld l, h                                       ; $7075: $6C
    ld h, l                                       ; $7076: $65
    cp $6F                                        ; $7077: $FE $6F
    ld h, [hl]                                    ; $7079: $66
    jr nz, @+$58                                  ; $707A: $20 $56

    ld h, c                                       ; $707C: $61
    ld [hl], e                                    ; $707D: $73
    ld l, b                                       ; $707E: $68
    jr nz, jr_021_70CF                            ; $707F: $20 $4E

    ld h, c                                       ; $7081: $61
    ld [hl], d                                    ; $7082: $72

jr_021_7083:
    ld l, a                                       ; $7083: $6F
    ld l, a                                       ; $7084: $6F
    ld l, l                                       ; $7085: $6D
    rst $38                                       ; $7086: $FF
    ld [hl], e                                    ; $7087: $73
    ld h, c                                       ; $7088: $61
    ld l, c                                       ; $7089: $69
    ld h, h                                       ; $708A: $64

jr_021_708B:
    jr nz, jr_021_7106                            ; $708B: $20 $79

    ld l, a                                       ; $708D: $6F
    ld [hl], l                                    ; $708E: $75
    cp $63                                        ; $708F: $FE $63
    ld l, a                                       ; $7091: $6F

jr_021_7092:
    ld [hl], l                                    ; $7092: $75
    ld l, h                                       ; $7093: $6C
    ld h, h                                       ; $7094: $64
    jr nz, jr_021_70FF                            ; $7095: $20 $68

    ld h, l                                       ; $7097: $65
    ld l, h                                       ; $7098: $6C
    ld [hl], b                                    ; $7099: $70
    ld l, $FE                                     ; $709A: $2E $FE
    db $FD                                        ; $709C: $FD
    sbc e                                         ; $709D: $9B
    reti                                          ; $709E: $D9


    ld b, a                                       ; $709F: $47
    sbc a                                         ; $70A0: $9F
    ld d, h                                       ; $70A1: $54
    ld l, b                                       ; $70A2: $68
    ld h, l                                       ; $70A3: $65
    ld a, c                                       ; $70A4: $79
    jr nz, jr_021_710B                            ; $70A5: $20 $64

    ld l, c                                       ; $70A7: $69

jr_021_70A8:
    ld h, h                                       ; $70A8: $64
    ld hl, $FE3F                                  ; $70A9: $21 $3F $FE
    ld l, $2E                                     ; $70AC: $2E $2E
    ld [hl], l                                    ; $70AE: $75
    ld l, b                                       ; $70AF: $68
    rst $38                                       ; $70B0: $FF
    ld c, c                                       ; $70B1: $49
    jr nz, jr_021_7121                            ; $70B2: $20 $6D

    ld h, l                                       ; $70B4: $65
    ld h, c                                       ; $70B5: $61
    ld l, [hl]                                    ; $70B6: $6E
    ld l, $2E                                     ; $70B7: $2E $2E
    cp $4F                                        ; $70B9: $FE $4F
    ld [hl], d                                    ; $70BB: $72
    ld [hl], a                                    ; $70BC: $77
    ld l, c                                       ; $70BD: $69
    ld l, [hl]                                    ; $70BE: $6E

jr_021_70BF:
    jr nz, jr_021_712A                            ; $70BF: $20 $69

    ld [hl], e                                    ; $70C1: $73
    jr nz, @+$75                                  ; $70C2: $20 $73

    ld l, c                                       ; $70C4: $69
    ld h, e                                       ; $70C5: $63
    ld l, e                                       ; $70C6: $6B
    ccf                                           ; $70C7: $3F
    cp $FD                                        ; $70C8: $FE $FD

jr_021_70CA:
    sbc e                                         ; $70CA: $9B
    ld a, b                                       ; $70CB: $78
    ld [hl], b                                    ; $70CC: $70
    sbc a                                         ; $70CD: $9F
    ld e, c                                       ; $70CE: $59

jr_021_70CF:
    ld h, l                                       ; $70CF: $65
    ld [hl], e                                    ; $70D0: $73
    ld l, $2E                                     ; $70D1: $2E $2E
    ld l, $FE                                     ; $70D3: $2E $FE
    db $FD                                        ; $70D5: $FD
    sbc e                                         ; $70D6: $9B

jr_021_70D7:
    reti                                          ; $70D7: $D9


    ld b, a                                       ; $70D8: $47
    sbc a                                         ; $70D9: $9F
    ld d, a                                       ; $70DA: $57
    ld l, a                                       ; $70DB: $6F
    ld [hl], a                                    ; $70DC: $77
    ld l, $20                                     ; $70DD: $2E $20
    ld d, l                                       ; $70DF: $55
    ld l, b                                       ; $70E0: $68
    ld l, $2E                                     ; $70E1: $2E $2E
    cp $4C                                        ; $70E3: $FE $4C
    ld h, l                                       ; $70E5: $65
    ld [hl], h                                    ; $70E6: $74
    daa                                           ; $70E7: $27
    ld [hl], e                                    ; $70E8: $73
    jr nz, jr_021_7152                            ; $70E9: $20 $67

    ld l, a                                       ; $70EB: $6F
    jr nz, jr_021_7161                            ; $70EC: $20 $73

    ld h, l                                       ; $70EE: $65
    ld h, l                                       ; $70EF: $65
    rst $38                                       ; $70F0: $FF
    ld l, b                                       ; $70F1: $68
    ld l, c                                       ; $70F2: $69
    ld l, l                                       ; $70F3: $6D
    jr nz, jr_021_716A                            ; $70F4: $20 $74

    ld l, b                                       ; $70F6: $68
    ld h, l                                       ; $70F7: $65
    ld l, [hl]                                    ; $70F8: $6E
    ld l, $FE                                     ; $70F9: $2E $FE
    db $FD                                        ; $70FB: $FD
    sbc d                                         ; $70FC: $9A
    ld e, h                                       ; $70FD: $5C
    ld [bc], a                                    ; $70FE: $02

jr_021_70FF:
    inc bc                                        ; $70FF: $03
    ld b, d                                       ; $7100: $42
    sbc e                                         ; $7101: $9B
    reti                                          ; $7102: $D9


    ld b, a                                       ; $7103: $47
    sbc a                                         ; $7104: $9F
    ld c, c                                       ; $7105: $49

jr_021_7106:
    jr nz, jr_021_7169                            ; $7106: $20 $61

    ld l, l                                       ; $7108: $6D
    jr nz, jr_021_717F                            ; $7109: $20 $74

jr_021_710B:
    ld l, b                                       ; $710B: $68
    ld h, l                                       ; $710C: $65
    jr nz, jr_021_7162                            ; $710D: $20 $53

    ld h, l                                       ; $710F: $65
    ld h, l                                       ; $7110: $65
    ld [hl], d                                    ; $7111: $72
    ld l, $FF                                     ; $7112: $2E $FF
    ld b, c                                       ; $7114: $41
    ld l, [hl]                                    ; $7115: $6E
    ld h, h                                       ; $7116: $64
    jr nz, jr_021_7162                            ; $7117: $20 $49

    jr nz, jr_021_7186                            ; $7119: $20 $6B

    ld l, [hl]                                    ; $711B: $6E
    ld l, a                                       ; $711C: $6F
    ld [hl], a                                    ; $711D: $77
    jr nz, @+$7B                                  ; $711E: $20 $79

    ld l, a                                       ; $7120: $6F

jr_021_7121:
    ld [hl], l                                    ; $7121: $75
    cp $61                                        ; $7122: $FE $61
    ld [hl], d                                    ; $7124: $72
    ld h, l                                       ; $7125: $65
    jr nz, @+$76                                  ; $7126: $20 $74

    ld l, b                                       ; $7128: $68
    ld h, l                                       ; $7129: $65

jr_021_712A:
    jr nz, jr_021_7173                            ; $712A: $20 $47

    ld [hl], d                                    ; $712C: $72
    ld h, l                                       ; $712D: $65
    ld h, c                                       ; $712E: $61
    ld [hl], h                                    ; $712F: $74
    rst $38                                       ; $7130: $FF
    ld c, l                                       ; $7131: $4D
    ld h, c                                       ; $7132: $61
    ld h, a                                       ; $7133: $67
    ld [hl], l                                    ; $7134: $75
    ld [hl], e                                    ; $7135: $73
    jr nz, jr_021_7183                            ; $7136: $20 $4B

    ld a, c                                       ; $7138: $79
    ld [hl], d                                    ; $7139: $72
    ld l, a                                       ; $713A: $6F
    ld [hl], e                                    ; $713B: $73
    ld l, $FE                                     ; $713C: $2E $FE
    ld b, [hl]                                    ; $713E: $46
    ld l, c                                       ; $713F: $69
    ld l, [hl]                                    ; $7140: $6E
    ld h, l                                       ; $7141: $65
    jr nz, jr_021_71BB                            ; $7142: $20 $77

    ld l, a                                       ; $7144: $6F
    ld [hl], d                                    ; $7145: $72
    ld l, e                                       ; $7146: $6B
    jr nz, jr_021_71B8                            ; $7147: $20 $6F

    ld l, [hl]                                    ; $7149: $6E
    rst $38                                       ; $714A: $FF
    ld l, b                                       ; $714B: $68
    ld h, l                                       ; $714C: $65
    ld h, c                                       ; $714D: $61
    ld l, h                                       ; $714E: $6C
    ld l, c                                       ; $714F: $69
    ld l, [hl]                                    ; $7150: $6E
    ld h, a                                       ; $7151: $67

jr_021_7152:
    jr nz, jr_021_71A3                            ; $7152: $20 $4F

    ld [hl], d                                    ; $7154: $72
    ld [hl], a                                    ; $7155: $77
    ld l, c                                       ; $7156: $69
    ld l, [hl]                                    ; $7157: $6E
    inc l                                         ; $7158: $2C
    cp $62                                        ; $7159: $FE $62
    ld [hl], l                                    ; $715B: $75
    ld [hl], h                                    ; $715C: $74
    jr nz, jr_021_71CA                            ; $715D: $20 $6B

    ld l, [hl]                                    ; $715F: $6E
    ld l, a                                       ; $7160: $6F

jr_021_7161:
    ld [hl], a                                    ; $7161: $77

jr_021_7162:
    jr nz, jr_021_71D8                            ; $7162: $20 $74

    ld l, b                                       ; $7164: $68
    ld h, c                                       ; $7165: $61
    ld [hl], h                                    ; $7166: $74
    rst $38                                       ; $7167: $FF
    ld h, h                                       ; $7168: $64

jr_021_7169:
    ld h, c                                       ; $7169: $61

jr_021_716A:
    ld l, [hl]                                    ; $716A: $6E
    ld h, a                                       ; $716B: $67
    ld h, l                                       ; $716C: $65
    ld [hl], d                                    ; $716D: $72
    jr nz, jr_021_71E3                            ; $716E: $20 $73

    ld [hl], h                                    ; $7170: $74
    ld l, c                                       ; $7171: $69
    ld l, h                                       ; $7172: $6C

jr_021_7173:
    ld l, h                                       ; $7173: $6C
    cp $6C                                        ; $7174: $FE $6C
    ld l, c                                       ; $7176: $69
    ld h, l                                       ; $7177: $65
    ld [hl], e                                    ; $7178: $73
    jr nz, jr_021_71DC                            ; $7179: $20 $61

    ld l, b                                       ; $717B: $68
    ld h, l                                       ; $717C: $65
    ld h, c                                       ; $717D: $61
    ld h, h                                       ; $717E: $64

jr_021_717F:
    jr nz, jr_021_71F0                            ; $717F: $20 $6F

    ld h, [hl]                                    ; $7181: $66
    rst $38                                       ; $7182: $FF

jr_021_7183:
    ld a, c                                       ; $7183: $79
    ld l, a                                       ; $7184: $6F
    ld [hl], l                                    ; $7185: $75

jr_021_7186:
    ld l, $FE                                     ; $7186: $2E $FE
    db $FD                                        ; $7188: $FD
    sbc d                                         ; $7189: $9A
    ld e, b                                       ; $718A: $58
    ld bc, $4342                                  ; $718B: $01 $42 $43
    rrca                                          ; $718E: $0F
    ld bc, $A2AE                                  ; $718F: $01 $AE $A2
    dec b                                         ; $7192: $05
    nop                                           ; $7193: $00
    ld hl, $733D                                  ; $7194: $21 $3D $73
    ld b, e                                       ; $7197: $43
    ld [$0111], sp                                ; $7198: $08 $11 $01
    jp nz, $05A3                                  ; $719B: $C2 $A3 $05

    nop                                           ; $719E: $00
    nop                                           ; $719F: $00
    and l                                         ; $71A0: $A5
    and c                                         ; $71A1: $A1
    ld [bc], a                                    ; $71A2: $02

jr_021_71A3:
    ld hl, $7208                                  ; $71A3: $21 $08 $72
    sub e                                         ; $71A6: $93
    ld h, l                                       ; $71A7: $65
    dec c                                         ; $71A8: $0D
    ld b, d                                       ; $71A9: $42
    ld c, a                                       ; $71AA: $4F
    ld h, h                                       ; $71AB: $64
    ld sp, hl                                     ; $71AC: $F9
    ld b, c                                       ; $71AD: $41
    ld h, [hl]                                    ; $71AE: $66
    ret nz                                        ; $71AF: $C0

    ld e, h                                       ; $71B0: $5C
    ld hl, $FE69                                  ; $71B1: $21 $69 $FE
    ld b, c                                       ; $71B4: $41
    dec b                                         ; $71B5: $05
    nop                                           ; $71B6: $00
    add c                                         ; $71B7: $81

jr_021_71B8:
    ld e, l                                       ; $71B8: $5D
    dec b                                         ; $71B9: $05
    dec b                                         ; $71BA: $05

jr_021_71BB:
    inc a                                         ; $71BB: $3C
    ret nc                                        ; $71BC: $D0

    nop                                           ; $71BD: $00
    jr nz, jr_021_71BB                            ; $71BE: $20 $FB

    ld d, b                                       ; $71C0: $50
    ld [hl+], a                                   ; $71C1: $22
    dec b                                         ; $71C2: $05
    ld b, b                                       ; $71C3: $40
    dec b                                         ; $71C4: $05
    ld [bc], a                                    ; $71C5: $02
    db $ED                                        ; $71C6: $ED
    ld h, e                                       ; $71C7: $63
    rlca                                          ; $71C8: $07
    dec b                                         ; $71C9: $05

jr_021_71CA:
    ld a, $D0                                     ; $71CA: $3E $D0
    nop                                           ; $71CC: $00

jr_021_71CD:
    dec h                                         ; $71CD: $25
    ld c, $4C                                     ; $71CE: $0E $4C
    ld hl, $71F3                                  ; $71D0: $21 $F3 $71
    dec bc                                        ; $71D3: $0B
    nop                                           ; $71D4: $00
    dec bc                                        ; $71D5: $0B
    ld [bc], a                                    ; $71D6: $02
    ld l, e                                       ; $71D7: $6B

jr_021_71D8:
    inc l                                         ; $71D8: $2C
    ld a, [bc]                                    ; $71D9: $0A
    ret nz                                        ; $71DA: $C0

    halt                                          ; $71DB: $76

jr_021_71DC:
    nop                                           ; $71DC: $00
    add b                                         ; $71DD: $80
    nop                                           ; $71DE: $00
    nop                                           ; $71DF: $00
    add d                                         ; $71E0: $82
    rra                                           ; $71E1: $1F
    db $10                                        ; $71E2: $10

jr_021_71E3:
    sub h                                         ; $71E3: $94
    ld b, e                                       ; $71E4: $43
    inc de                                        ; $71E5: $13
    ld bc, $A2AE                                  ; $71E6: $01 $AE $A2
    dec b                                         ; $71E9: $05
    dec b                                         ; $71EA: $05
    ld hl, $71F2                                  ; $71EB: $21 $F2 $71
    xor h                                         ; $71EE: $AC
    xor [hl]                                      ; $71EF: $AE

jr_021_71F0:
    and d                                         ; $71F0: $A2
    ld bc, $1442                                  ; $71F1: $01 $42 $14
    dec h                                         ; $71F4: $25
    ld c, $4C                                     ; $71F5: $0E $4C
    ld e, e                                       ; $71F7: $5B
    ld hl, $6B1C                                  ; $71F8: $21 $1C $6B
    and [hl]                                      ; $71FB: $A6
    xor [hl]                                      ; $71FC: $AE
    and d                                         ; $71FD: $A2
    dec bc                                        ; $71FE: $0B
    ld bc, $A2AE                                  ; $71FF: $01 $AE $A2
    dec b                                         ; $7202: $05
    ld bc, $2545                                  ; $7203: $01 $45 $25
    ld d, h                                       ; $7206: $54
    ld c, h                                       ; $7207: $4C
    sub e                                         ; $7208: $93
    ld h, l                                       ; $7209: $65
    dec c                                         ; $720A: $0D
    ld b, d                                       ; $720B: $42
    ld c, a                                       ; $720C: $4F
    ld h, h                                       ; $720D: $64
    ld sp, hl                                     ; $720E: $F9
    ld b, c                                       ; $720F: $41
    ld h, [hl]                                    ; $7210: $66
    ret nz                                        ; $7211: $C0

    ld e, h                                       ; $7212: $5C
    ld hl, $FE69                                  ; $7213: $21 $69 $FE
    ld b, c                                       ; $7216: $41
    dec b                                         ; $7217: $05
    nop                                           ; $7218: $00
    add c                                         ; $7219: $81
    ld e, l                                       ; $721A: $5D
    dec b                                         ; $721B: $05
    dec b                                         ; $721C: $05
    inc a                                         ; $721D: $3C
    ret nc                                        ; $721E: $D0

    nop                                           ; $721F: $00
    jr nz, jr_021_71CD                            ; $7220: $20 $AB

    ld d, b                                       ; $7222: $50
    ld [hl+], a                                   ; $7223: $22
    dec b                                         ; $7224: $05
    ld b, b                                       ; $7225: $40
    dec b                                         ; $7226: $05
    ld [bc], a                                    ; $7227: $02
    db $ED                                        ; $7228: $ED
    ld h, e                                       ; $7229: $63
    ld b, $04                                     ; $722A: $06 $04
    ld [hl-], a                                   ; $722C: $32
    ret nc                                        ; $722D: $D0

    nop                                           ; $722E: $00
    ld hl, $7247                                  ; $722F: $21 $47 $72
    ld hl, $724C                                  ; $7232: $21 $4C $72
    ld l, e                                       ; $7235: $6B
    inc l                                         ; $7236: $2C
    ld a, [bc]                                    ; $7237: $0A
    ret nz                                        ; $7238: $C0

    halt                                          ; $7239: $76
    nop                                           ; $723A: $00
    add b                                         ; $723B: $80
    nop                                           ; $723C: $00
    dec bc                                        ; $723D: $0B
    nop                                           ; $723E: $00
    dec bc                                        ; $723F: $0B

Call_021_7240:
    ld [bc], a                                    ; $7240: $02
    nop                                           ; $7241: $00
    add d                                         ; $7242: $82
    rra                                           ; $7243: $1F
    db $10                                        ; $7244: $10
    sub h                                         ; $7245: $94
    ld b, d                                       ; $7246: $42
    inc d                                         ; $7247: $14
    dec h                                         ; $7248: $25
    inc b                                         ; $7249: $04
    ld c, h                                       ; $724A: $4C
    ld b, d                                       ; $724B: $42
    ld e, e                                       ; $724C: $5B
    ld hl, $6A50                                  ; $724D: $21 $50 $6A
    adc b                                         ; $7250: $88
    nop                                           ; $7251: $00
    dec de                                        ; $7252: $1B
    ld bc, $005C                                  ; $7253: $01 $5C $00
    ld [bc], a                                    ; $7256: $02
    ld b, e                                       ; $7257: $43
    rrca                                          ; $7258: $0F
    inc bc                                        ; $7259: $03
    dec b                                         ; $725A: $05
    ld [bc], a                                    ; $725B: $02
    ld hl, $72BC                                  ; $725C: $21 $BC $72
    inc d                                         ; $725F: $14
    dec h                                         ; $7260: $25
    ld c, $4C                                     ; $7261: $0E $4C
    ld b, b                                       ; $7263: $40
    ld b, b                                       ; $7264: $40
    ld e, e                                       ; $7265: $5B
    ld hl, $6A8F                                  ; $7266: $21 $8F $6A
    ld h, d                                       ; $7269: $62
    ld [bc], a                                    ; $726A: $02
    ld e, e                                       ; $726B: $5B
    ld hl, $6AB0                                  ; $726C: $21 $B0 $6A
    dec d                                         ; $726F: $15
    dec h                                         ; $7270: $25
    ld c, $4C                                     ; $7271: $0E $4C
    jr nc, @+$27                                  ; $7273: $30 $25

    call nc, $044B                                ; $7275: $D4 $4B $04
    dec h                                         ; $7278: $25
    ld c, $4C                                     ; $7279: $0E $4C
    jr nz, jr_021_72A2                            ; $727B: $20 $25

    call nz, $044B                                ; $727D: $C4 $4B $04
    dec h                                         ; $7280: $25
    inc b                                         ; $7281: $04
    ld c, h                                       ; $7282: $4C
    jr nc, jr_021_72AA                            ; $7283: $30 $25

    inc l                                         ; $7285: $2C
    ld c, h                                       ; $7286: $4C
    inc b                                         ; $7287: $04
    dec h                                         ; $7288: $25
    jr @+$4E                                      ; $7289: $18 $4C

    inc b                                         ; $728B: $04
    dec h                                         ; $728C: $25
    ld b, b                                       ; $728D: $40
    ld c, h                                       ; $728E: $4C
    inc b                                         ; $728F: $04
    dec h                                         ; $7290: $25
    ld c, $4C                                     ; $7291: $0E $4C
    nop                                           ; $7293: $00
    nop                                           ; $7294: $00
    ld e, h                                       ; $7295: $5C
    ld bc, $5B02                                  ; $7296: $01 $02 $5B
    ld hl, $6ADB                                  ; $7299: $21 $DB $6A
    ld h, d                                       ; $729C: $62
    inc b                                         ; $729D: $04
    dec d                                         ; $729E: $15
    dec h                                         ; $729F: $25
    db $F4                                        ; $72A0: $F4
    ld c, e                                       ; $72A1: $4B

jr_021_72A2:
    ld [$D425], sp                                ; $72A2: $08 $25 $D4
    ld c, e                                       ; $72A5: $4B
    stop                                          ; $72A6: $10 $00
    add hl, bc                                    ; $72A8: $09
    nop                                           ; $72A9: $00

jr_021_72AA:
    ld hl, $7317                                  ; $72AA: $21 $17 $73
    dec d                                         ; $72AD: $15
    dec h                                         ; $72AE: $25
    call nc, $084B                                ; $72AF: $D4 $4B $08
    dec h                                         ; $72B2: $25
    db $E4                                        ; $72B3: $E4
    ld c, e                                       ; $72B4: $4B
    db $10                                        ; $72B5: $10
    dec h                                         ; $72B6: $25
    call nc, $004B                                ; $72B7: $D4 $4B $00
    nop                                           ; $72BA: $00
    ld b, d                                       ; $72BB: $42
    inc d                                         ; $72BC: $14
    dec h                                         ; $72BD: $25
    ld [hl+], a                                   ; $72BE: $22
    ld c, h                                       ; $72BF: $4C
    ld e, e                                       ; $72C0: $5B
    ld hl, $6A8F                                  ; $72C1: $21 $8F $6A
    ld h, d                                       ; $72C4: $62
    ld [bc], a                                    ; $72C5: $02
    ld e, e                                       ; $72C6: $5B
    ld hl, $6AB0                                  ; $72C7: $21 $B0 $6A
    dec d                                         ; $72CA: $15
    dec h                                         ; $72CB: $25
    ld [hl+], a                                   ; $72CC: $22
    ld c, h                                       ; $72CD: $4C
    jr nc, @+$27                                  ; $72CE: $30 $25

    db $F4                                        ; $72D0: $F4
    ld c, e                                       ; $72D1: $4B
    inc b                                         ; $72D2: $04
    dec h                                         ; $72D3: $25
    ld [hl+], a                                   ; $72D4: $22
    ld c, h                                       ; $72D5: $4C
    jr nz, @+$27                                  ; $72D6: $20 $25

    db $E4                                        ; $72D8: $E4
    ld c, e                                       ; $72D9: $4B
    inc b                                         ; $72DA: $04
    dec h                                         ; $72DB: $25
    jr jr_021_732A                                ; $72DC: $18 $4C

    jr nc, jr_021_7305                            ; $72DE: $30 $25

    ld b, b                                       ; $72E0: $40
    ld c, h                                       ; $72E1: $4C
    inc b                                         ; $72E2: $04
    dec h                                         ; $72E3: $25
    ld c, $4C                                     ; $72E4: $0E $4C
    inc b                                         ; $72E6: $04
    dec h                                         ; $72E7: $25
    ld c, d                                       ; $72E8: $4A
    ld c, h                                       ; $72E9: $4C
    inc b                                         ; $72EA: $04
    dec h                                         ; $72EB: $25
    ld [hl+], a                                   ; $72EC: $22
    ld c, h                                       ; $72ED: $4C
    nop                                           ; $72EE: $00
    nop                                           ; $72EF: $00
    ld e, h                                       ; $72F0: $5C
    ld bc, $5B02                                  ; $72F1: $01 $02 $5B
    ld hl, $6ADB                                  ; $72F4: $21 $DB $6A
    ld h, d                                       ; $72F7: $62
    inc b                                         ; $72F8: $04
    dec d                                         ; $72F9: $15
    dec h                                         ; $72FA: $25
    call nc, $104B                                ; $72FB: $D4 $4B $10
    nop                                           ; $72FE: $00
    add hl, bc                                    ; $72FF: $09
    nop                                           ; $7300: $00
    ld hl, $732C                                  ; $7301: $21 $2C $73
    dec d                                         ; $7304: $15

jr_021_7305:
    dec h                                         ; $7305: $25
    db $F4                                        ; $7306: $F4
    ld c, e                                       ; $7307: $4B
    ld [$D425], sp                                ; $7308: $08 $25 $D4
    ld c, e                                       ; $730B: $4B

jr_021_730C:
    db $10                                        ; $730C: $10
    dec h                                         ; $730D: $25
    db $E4                                        ; $730E: $E4
    ld c, e                                       ; $730F: $4B
    db $10                                        ; $7310: $10
    dec h                                         ; $7311: $25
    call nc, $004B                                ; $7312: $D4 $4B $00
    nop                                           ; $7315: $00
    ld b, d                                       ; $7316: $42
    dec d                                         ; $7317: $15
    jr nz, @-$6D                                  ; $7318: $20 $91

    ld d, b                                       ; $731A: $50
    ld [$5D20], sp                                ; $731B: $08 $20 $5D
    ld d, b                                       ; $731E: $50
    inc b                                         ; $731F: $04
    nop                                           ; $7320: $00
    ld l, [hl]                                    ; $7321: $6E
    rrca                                          ; $7322: $0F
    rst $38                                       ; $7323: $FF
    ld a, a                                       ; $7324: $7F
    halt                                          ; $7325: $76
    jr nz, jr_021_7337                            ; $7326: $20 $0F

    ld b, l                                       ; $7328: $45
    inc hl                                        ; $7329: $23

jr_021_732A:
    ld a, d                                       ; $732A: $7A
    ld h, b                                       ; $732B: $60
    dec d                                         ; $732C: $15
    jr nz, jr_021_738C                            ; $732D: $20 $5D

    ld d, b                                       ; $732F: $50
    inc c                                         ; $7330: $0C
    nop                                           ; $7331: $00
    ld l, [hl]                                    ; $7332: $6E
    rrca                                          ; $7333: $0F
    rst $38                                       ; $7334: $FF
    ld a, a                                       ; $7335: $7F
    halt                                          ; $7336: $76

jr_021_7337:
    jr nz, jr_021_7348                            ; $7337: $20 $0F

    ld b, l                                       ; $7339: $45
    inc hl                                        ; $733A: $23
    ld a, d                                       ; $733B: $7A
    ld h, b                                       ; $733C: $60
    ld b, e                                       ; $733D: $43
    ld de, $C201                                  ; $733E: $11 $01 $C2
    and e                                         ; $7341: $A3
    dec b                                         ; $7342: $05
    nop                                           ; $7343: $00
    ld hl, $7563                                  ; $7344: $21 $63 $75
    sub e                                         ; $7347: $93

jr_021_7348:
    ld h, l                                       ; $7348: $65
    dec c                                         ; $7349: $0D
    ld b, d                                       ; $734A: $42
    ld c, a                                       ; $734B: $4F
    ld h, h                                       ; $734C: $64
    ld sp, hl                                     ; $734D: $F9
    ld b, c                                       ; $734E: $41
    ld h, [hl]                                    ; $734F: $66
    ret nz                                        ; $7350: $C0

    ld e, h                                       ; $7351: $5C
    ld hl, $FE69                                  ; $7352: $21 $69 $FE
    ld b, c                                       ; $7355: $41
    dec b                                         ; $7356: $05
    nop                                           ; $7357: $00
    add c                                         ; $7358: $81
    ld e, l                                       ; $7359: $5D
    dec b                                         ; $735A: $05
    dec b                                         ; $735B: $05
    inc a                                         ; $735C: $3C
    ret nc                                        ; $735D: $D0

    nop                                           ; $735E: $00
    jr nz, jr_021_730C                            ; $735F: $20 $AB

    ld d, b                                       ; $7361: $50
    ld [hl+], a                                   ; $7362: $22
    dec b                                         ; $7363: $05
    ld b, b                                       ; $7364: $40
    dec b                                         ; $7365: $05
    ld [bc], a                                    ; $7366: $02
    ld l, e                                       ; $7367: $6B
    ld c, d                                       ; $7368: $4A
    ld b, $02                                     ; $7369: $06 $02
    inc e                                         ; $736B: $1C
    ret nc                                        ; $736C: $D0

    nop                                           ; $736D: $00
    ld hl, $73B1                                  ; $736E: $21 $B1 $73
    ld [hl+], a                                   ; $7371: $22
    dec b                                         ; $7372: $05
    ld b, b                                       ; $7373: $40
    dec b                                         ; $7374: $05
    inc bc                                        ; $7375: $03
    ld l, e                                       ; $7376: $6B
    ld c, d                                       ; $7377: $4A
    add hl, bc                                    ; $7378: $09
    dec b                                         ; $7379: $05
    ld b, b                                       ; $737A: $40
    ret nc                                        ; $737B: $D0

    nop                                           ; $737C: $00
    ld hl, $73C0                                  ; $737D: $21 $C0 $73
    ld [hl+], a                                   ; $7380: $22
    dec b                                         ; $7381: $05
    ld b, b                                       ; $7382: $40
    dec b                                         ; $7383: $05
    inc b                                         ; $7384: $04
    ld l, e                                       ; $7385: $6B
    ld c, d                                       ; $7386: $4A
    ld b, $09                                     ; $7387: $06 $09
    ld l, c                                       ; $7389: $69
    ret nc                                        ; $738A: $D0

    nop                                           ; $738B: $00

jr_021_738C:
    ld hl, $73E5                                  ; $738C: $21 $E5 $73
    ld [hl+], a                                   ; $738F: $22
    dec b                                         ; $7390: $05
    ld b, b                                       ; $7391: $40
    dec b                                         ; $7392: $05
    dec b                                         ; $7393: $05
    ld l, e                                       ; $7394: $6B
    ld c, d                                       ; $7395: $4A
    inc bc                                        ; $7396: $03
    dec b                                         ; $7397: $05
    ld a, [hl-]                                   ; $7398: $3A
    ret nc                                        ; $7399: $D0

    nop                                           ; $739A: $00
    ld hl, $73F8                                  ; $739B: $21 $F8 $73
    ld [hl+], a                                   ; $739E: $22
    dec b                                         ; $739F: $05
    ld b, b                                       ; $73A0: $40
    dec bc                                        ; $73A1: $0B
    nop                                           ; $73A2: $00
    ld l, e                                       ; $73A3: $6B
    inc l                                         ; $73A4: $2C
    ld a, [bc]                                    ; $73A5: $0A
    ret nz                                        ; $73A6: $C0

    halt                                          ; $73A7: $76
    nop                                           ; $73A8: $00
    add b                                         ; $73A9: $80
    nop                                           ; $73AA: $00
    nop                                           ; $73AB: $00
    add d                                         ; $73AC: $82
    rra                                           ; $73AD: $1F
    db $10                                        ; $73AE: $10
    sub h                                         ; $73AF: $94
    ld b, d                                       ; $73B0: $42
    dec d                                         ; $73B1: $15
    dec h                                         ; $73B2: $25
    call nc, $304B                                ; $73B3: $D4 $4B $30
    dec h                                         ; $73B6: $25
    db $F4                                        ; $73B7: $F4
    ld c, e                                       ; $73B8: $4B
    jr jr_021_73E0                                ; $73B9: $18 $25

    db $E4                                        ; $73BB: $E4
    ld c, e                                       ; $73BC: $4B

jr_021_73BD:
    jr jr_021_73BF                                ; $73BD: $18 $00

jr_021_73BF:
    add hl, de                                    ; $73BF: $19
    dec d                                         ; $73C0: $15
    dec h                                         ; $73C1: $25
    db $E4                                        ; $73C2: $E4
    ld c, e                                       ; $73C3: $4B
    jr nc, jr_021_73EB                            ; $73C4: $30 $25

    call nc, $184B                                ; $73C6: $D4 $4B $18
    dec h                                         ; $73C9: $25
    db $F4                                        ; $73CA: $F4
    ld c, e                                       ; $73CB: $4B
    jr nc, jr_021_73F3                            ; $73CC: $30 $25

    call nz, $304B                                ; $73CE: $C4 $4B $30
    dec h                                         ; $73D1: $25
    db $E4                                        ; $73D2: $E4
    ld c, e                                       ; $73D3: $4B
    jr jr_021_73FB                                ; $73D4: $18 $25

    ld c, $4C                                     ; $73D6: $0E $4C
    jr nz, jr_021_73DA                            ; $73D8: $20 $00

jr_021_73DA:
    ld l, [hl]                                    ; $73DA: $6E
    rrca                                          ; $73DB: $0F
    rst $38                                       ; $73DC: $FF
    ld a, a                                       ; $73DD: $7F
    ld a, c                                       ; $73DE: $79
    rrca                                          ; $73DF: $0F

jr_021_73E0:
    ld b, l                                       ; $73E0: $45
    ld hl, $747A                                  ; $73E1: $21 $7A $74
    ld b, d                                       ; $73E4: $42
    dec d                                         ; $73E5: $15
    dec h                                         ; $73E6: $25
    call nz, $304B                                ; $73E7: $C4 $4B $30
    dec h                                         ; $73EA: $25

jr_021_73EB:
    db $E4                                        ; $73EB: $E4
    ld c, e                                       ; $73EC: $4B
    jr jr_021_7414                                ; $73ED: $18 $25

    call nc, $2C4B                                ; $73EF: $D4 $4B $2C
    dec h                                         ; $73F2: $25

jr_021_73F3:
    call nz, $184B                                ; $73F3: $C4 $4B $18
    nop                                           ; $73F6: $00
    add hl, de                                    ; $73F7: $19
    dec d                                         ; $73F8: $15
    dec h                                         ; $73F9: $25
    db $F4                                        ; $73FA: $F4

jr_021_73FB:
    ld c, e                                       ; $73FB: $4B
    jr nc, jr_021_7423                            ; $73FC: $30 $25

    call nc, $184B                                ; $73FE: $D4 $4B $18
    dec h                                         ; $7401: $25
    db $E4                                        ; $7402: $E4
    ld c, e                                       ; $7403: $4B
    jr nc, jr_021_742B                            ; $7404: $30 $25

    call nz, $304B                                ; $7406: $C4 $4B $30
    dec h                                         ; $7409: $25
    db $F4                                        ; $740A: $F4
    ld c, e                                       ; $740B: $4B
    jr jr_021_740E                                ; $740C: $18 $00

jr_021_740E:
    add hl, de                                    ; $740E: $19
    dec d                                         ; $740F: $15
    jr nz, jr_021_73BD                            ; $7410: $20 $AB

    ld d, b                                       ; $7412: $50
    inc e                                         ; $7413: $1C

jr_021_7414:
    jr nz, jr_021_7473                            ; $7414: $20 $5D

    ld d, b                                       ; $7416: $50

jr_021_7417:
    inc c                                         ; $7417: $0C
    jr nz, @-$53                                  ; $7418: $20 $AB

    ld d, b                                       ; $741A: $50

jr_021_741B:
    ld [$BF20], sp                                ; $741B: $08 $20 $BF
    ld d, b                                       ; $741E: $50
    ld [$C920], sp                                ; $741F: $08 $20 $C9
    ld d, b                                       ; $7422: $50

jr_021_7423:
    ld [$DD20], sp                                ; $7423: $08 $20 $DD
    ld d, b                                       ; $7426: $50
    ld [$F120], sp                                ; $7427: $08 $20 $F1
    ld d, b                                       ; $742A: $50

jr_021_742B:
    ld [$BF20], sp                                ; $742B: $08 $20 $BF
    ld d, b                                       ; $742E: $50

jr_021_742F:
    ld [$AB20], sp                                ; $742F: $08 $20 $AB
    ld d, b                                       ; $7432: $50

jr_021_7433:
    nop                                           ; $7433: $00
    nop                                           ; $7434: $00
    ld e, h                                       ; $7435: $5C
    nop                                           ; $7436: $00
    ld [bc], a                                    ; $7437: $02
    ld e, e                                       ; $7438: $5B
    ld hl, $6BF2                                  ; $7439: $21 $F2 $6B
    ld e, h                                       ; $743C: $5C
    ld bc, $0B02                                  ; $743D: $01 $02 $0B
    ld [bc], a                                    ; $7440: $02
    dec bc                                        ; $7441: $0B
    inc bc                                        ; $7442: $03
    dec bc                                        ; $7443: $0B
    inc b                                         ; $7444: $04
    dec bc                                        ; $7445: $0B
    dec b                                         ; $7446: $05
    dec d                                         ; $7447: $15
    jr nz, @-$53                                  ; $7448: $20 $AB

    ld d, b                                       ; $744A: $50

jr_021_744B:
    db $10                                        ; $744B: $10
    jr nz, @-$3F                                  ; $744C: $20 $BF

    ld d, b                                       ; $744E: $50
    db $10                                        ; $744F: $10
    jr nz, jr_021_741B                            ; $7450: $20 $C9

    ld d, b                                       ; $7452: $50
    db $10                                        ; $7453: $10
    jr nz, jr_021_7433                            ; $7454: $20 $DD

    ld d, b                                       ; $7456: $50
    db $10                                        ; $7457: $10
    jr nz, jr_021_744B                            ; $7458: $20 $F1

    ld d, b                                       ; $745A: $50
    db $10                                        ; $745B: $10
    jr nz, @-$3F                                  ; $745C: $20 $BF

    ld d, b                                       ; $745E: $50
    db $10                                        ; $745F: $10
    jr nz, jr_021_7417                            ; $7460: $20 $B5

    ld d, b                                       ; $7462: $50

jr_021_7463:
    db $10                                        ; $7463: $10
    jr nz, jr_021_742F                            ; $7464: $20 $C9

    ld d, b                                       ; $7466: $50
    db $10                                        ; $7467: $10
    jr nz, @-$3F                                  ; $7468: $20 $BF

    ld d, b                                       ; $746A: $50
    db $10                                        ; $746B: $10
    jr nz, @-$17                                  ; $746C: $20 $E7

    ld d, b                                       ; $746E: $50
    db $10                                        ; $746F: $10
    jr nz, jr_021_7463                            ; $7470: $20 $F1

    ld d, b                                       ; $7472: $50

jr_021_7473:
    db $10                                        ; $7473: $10
    jr nz, @-$53                                  ; $7474: $20 $AB

    ld d, b                                       ; $7476: $50
    nop                                           ; $7477: $00
    nop                                           ; $7478: $00
    ld b, d                                       ; $7479: $42

jr_021_747A:
    sub e                                         ; $747A: $93
    ld h, l                                       ; $747B: $65
    dec c                                         ; $747C: $0D
    ld b, d                                       ; $747D: $42
    ld c, a                                       ; $747E: $4F
    ld h, h                                       ; $747F: $64
    ld sp, hl                                     ; $7480: $F9
    ld b, c                                       ; $7481: $41
    ld h, [hl]                                    ; $7482: $66
    ret nz                                        ; $7483: $C0

    ld e, h                                       ; $7484: $5C
    ld hl, $FE69                                  ; $7485: $21 $69 $FE
    ld b, c                                       ; $7488: $41
    dec b                                         ; $7489: $05
    nop                                           ; $748A: $00
    ld l, e                                       ; $748B: $6B
    ld c, d                                       ; $748C: $4A
    ld b, $06                                     ; $748D: $06 $06
    ld c, b                                       ; $748F: $48
    ret nc                                        ; $7490: $D0

    nop                                           ; $7491: $00
    ld hl, $74C5                                  ; $7492: $21 $C5 $74
    ld [hl+], a                                   ; $7495: $22
    dec b                                         ; $7496: $05
    ld b, b                                       ; $7497: $40
    dec b                                         ; $7498: $05
    ld [bc], a                                    ; $7499: $02

jr_021_749A:
    ld l, e                                       ; $749A: $6B
    ld c, d                                       ; $749B: $4A
    ld b, $04                                     ; $749C: $06 $04
    ld [hl-], a                                   ; $749E: $32
    ret nc                                        ; $749F: $D0

jr_021_74A0:
    nop                                           ; $74A0: $00
    ld hl, $7534                                  ; $74A1: $21 $34 $75
    ld [hl+], a                                   ; $74A4: $22
    dec b                                         ; $74A5: $05
    ld b, b                                       ; $74A6: $40
    dec bc                                        ; $74A7: $0B
    nop                                           ; $74A8: $00
    dec bc                                        ; $74A9: $0B
    ld [bc], a                                    ; $74AA: $02
    ld l, e                                       ; $74AB: $6B
    inc l                                         ; $74AC: $2C
    ld a, [bc]                                    ; $74AD: $0A
    ret nz                                        ; $74AE: $C0

    halt                                          ; $74AF: $76
    nop                                           ; $74B0: $00
    add b                                         ; $74B1: $80
    nop                                           ; $74B2: $00
    add d                                         ; $74B3: $82
    rra                                           ; $74B4: $1F
    db $10                                        ; $74B5: $10

jr_021_74B6:
    ld l, a                                       ; $74B6: $6F
    rrca                                          ; $74B7: $0F

jr_021_74B8:
    rst $38                                       ; $74B8: $FF
    ld a, a                                       ; $74B9: $7F
    sub h                                         ; $74BA: $94
    halt                                          ; $74BB: $76

jr_021_74BC:
    jr nz, jr_021_74CD                            ; $74BC: $20 $0F

    ld b, b                                       ; $74BE: $40
    inc bc                                        ; $74BF: $03
    ld e, e                                       ; $74C0: $5B
    ld hl, $6C09                                  ; $74C1: $21 $09 $6C

jr_021_74C4:
    ld b, d                                       ; $74C4: $42
    inc d                                         ; $74C5: $14
    jr nz, jr_021_7473                            ; $74C6: $20 $AB

    ld d, b                                       ; $74C8: $50
    ld e, h                                       ; $74C9: $5C
    nop                                           ; $74CA: $00
    inc bc                                        ; $74CB: $03
    dec d                                         ; $74CC: $15

jr_021_74CD:
    jr nz, jr_021_747A                            ; $74CD: $20 $AB

    ld d, b                                       ; $74CF: $50
    db $10                                        ; $74D0: $10
    jr nz, jr_021_74C4                            ; $74D1: $20 $F1

    ld d, b                                       ; $74D3: $50
    db $10                                        ; $74D4: $10
    jr nz, jr_021_74A0                            ; $74D5: $20 $C9

    ld d, b                                       ; $74D7: $50
    db $10                                        ; $74D8: $10
    jr nz, jr_021_74B8                            ; $74D9: $20 $DD

    ld d, b                                       ; $74DB: $50

jr_021_74DC:
    stop                                          ; $74DC: $10 $00
    ld e, e                                       ; $74DE: $5B
    ld hl, $7002                                  ; $74DF: $21 $02 $70
    dec d                                         ; $74E2: $15
    jr nz, jr_021_749A                            ; $74E3: $20 $B5

    ld d, b                                       ; $74E5: $50
    db $10                                        ; $74E6: $10
    jr nz, jr_021_74BC                            ; $74E7: $20 $D3

    ld d, b                                       ; $74E9: $50
    ld [$BF20], sp                                ; $74EA: $08 $20 $BF
    ld d, b                                       ; $74ED: $50

jr_021_74EE:
    nop                                           ; $74EE: $00
    nop                                           ; $74EF: $00
    ld e, h                                       ; $74F0: $5C
    ld bc, $1502                                  ; $74F1: $01 $02 $15
    jr nz, jr_021_7553                            ; $74F4: $20 $5D

    ld d, b                                       ; $74F6: $50
    ld [$7720], sp                                ; $74F7: $08 $20 $77

jr_021_74FA:
    ld d, b                                       ; $74FA: $50
    jr nz, jr_021_751D                            ; $74FB: $20 $20

    xor e                                         ; $74FD: $AB
    ld d, b                                       ; $74FE: $50
    nop                                           ; $74FF: $00

jr_021_7500:
    nop                                           ; $7500: $00
    ld e, e                                       ; $7501: $5B
    ld hl, $702A                                  ; $7502: $21 $2A $70
    ld e, h                                       ; $7505: $5C
    ld [bc], a                                    ; $7506: $02
    inc bc                                        ; $7507: $03
    dec d                                         ; $7508: $15
    jr nz, jr_021_74B6                            ; $7509: $20 $AB

    ld d, b                                       ; $750B: $50
    db $10                                        ; $750C: $10
    jr nz, jr_021_7500                            ; $750D: $20 $F1

    ld d, b                                       ; $750F: $50
    db $10                                        ; $7510: $10
    jr nz, jr_021_74DC                            ; $7511: $20 $C9

    ld d, b                                       ; $7513: $50
    stop                                          ; $7514: $10 $00
    ld e, d                                       ; $7516: $5A
    ld hl, $7529                                  ; $7517: $21 $29 $75
    dec d                                         ; $751A: $15
    jr nz, jr_021_74FA                            ; $751B: $20 $DD

jr_021_751D:
    ld d, b                                       ; $751D: $50
    db $10                                        ; $751E: $10
    jr nz, jr_021_74EE                            ; $751F: $20 $CD

    ld c, a                                       ; $7521: $4F
    db $10                                        ; $7522: $10
    jr nz, @-$11                                  ; $7523: $20 $ED

    ld c, a                                       ; $7525: $4F
    nop                                           ; $7526: $00
    nop                                           ; $7527: $00
    ld b, d                                       ; $7528: $42
    ld l, [hl]                                    ; $7529: $6E
    rrca                                          ; $752A: $0F
    rst $38                                       ; $752B: $FF
    ld a, a                                       ; $752C: $7F
    halt                                          ; $752D: $76
    jr nz, jr_021_753F                            ; $752E: $20 $0F

    ld b, l                                       ; $7530: $45
    inc hl                                        ; $7531: $23
    db $ED                                        ; $7532: $ED
    ld e, b                                       ; $7533: $58
    inc d                                         ; $7534: $14
    dec h                                         ; $7535: $25
    ld c, $4C                                     ; $7536: $0E $4C
    ld e, h                                       ; $7538: $5C
    nop                                           ; $7539: $00
    inc bc                                        ; $753A: $03
    dec d                                         ; $753B: $15
    dec h                                         ; $753C: $25
    or h                                          ; $753D: $B4
    ld c, e                                       ; $753E: $4B

jr_021_753F:
    db $10                                        ; $753F: $10
    dec h                                         ; $7540: $25
    sub h                                         ; $7541: $94
    ld c, e                                       ; $7542: $4B
    jr nc, jr_021_756A                            ; $7543: $30 $25

    and h                                         ; $7545: $A4
    ld c, e                                       ; $7546: $4B
    ld d, b                                       ; $7547: $50
    dec h                                         ; $7548: $25
    add h                                         ; $7549: $84
    ld c, e                                       ; $754A: $4B
    jr nz, jr_021_7572                            ; $754B: $20 $25

    ld c, $4C                                     ; $754D: $0E $4C
    nop                                           ; $754F: $00
    nop                                           ; $7550: $00
    ld e, h                                       ; $7551: $5C
    ld [bc], a                                    ; $7552: $02

jr_021_7553:
    inc bc                                        ; $7553: $03
    dec d                                         ; $7554: $15
    dec h                                         ; $7555: $25
    or h                                          ; $7556: $B4
    ld c, e                                       ; $7557: $4B
    db $10                                        ; $7558: $10
    dec h                                         ; $7559: $25
    sub h                                         ; $755A: $94
    ld c, e                                       ; $755B: $4B
    jr nc, jr_021_7583                            ; $755C: $30 $25

    or h                                          ; $755E: $B4
    ld c, e                                       ; $755F: $4B
    nop                                           ; $7560: $00
    nop                                           ; $7561: $00
    ld b, d                                       ; $7562: $42
    sub e                                         ; $7563: $93
    ld h, l                                       ; $7564: $65
    dec c                                         ; $7565: $0D
    ld b, d                                       ; $7566: $42
    ld c, a                                       ; $7567: $4F
    ld h, h                                       ; $7568: $64
    ld sp, hl                                     ; $7569: $F9

jr_021_756A:
    ld b, c                                       ; $756A: $41
    ld h, [hl]                                    ; $756B: $66
    ret nz                                        ; $756C: $C0

    ld e, h                                       ; $756D: $5C
    ld hl, $FE69                                  ; $756E: $21 $69 $FE
    ld b, c                                       ; $7571: $41

jr_021_7572:
    dec b                                         ; $7572: $05
    nop                                           ; $7573: $00
    ld l, e                                       ; $7574: $6B
    ld c, d                                       ; $7575: $4A
    dec b                                         ; $7576: $05
    ld a, [bc]                                    ; $7577: $0A
    ld [hl], e                                    ; $7578: $73
    ret nc                                        ; $7579: $D0

    nop                                           ; $757A: $00
    ld hl, $75E0                                  ; $757B: $21 $E0 $75
    ld [hl+], a                                   ; $757E: $22
    dec b                                         ; $757F: $05
    ld b, b                                       ; $7580: $40
    dec b                                         ; $7581: $05
    ld [bc], a                                    ; $7582: $02

jr_021_7583:
    ld l, e                                       ; $7583: $6B
    ld c, d                                       ; $7584: $4A
    ld [$3404], sp                                ; $7585: $08 $04 $34
    ret nc                                        ; $7588: $D0

    nop                                           ; $7589: $00
    ld hl, $7633                                  ; $758A: $21 $33 $76
    ld [hl+], a                                   ; $758D: $22
    dec b                                         ; $758E: $05
    ld b, b                                       ; $758F: $40
    dec b                                         ; $7590: $05
    inc bc                                        ; $7591: $03
    ld l, e                                       ; $7592: $6B
    ld c, d                                       ; $7593: $4A

jr_021_7594:
    rlca                                          ; $7594: $07
    ld b, $49                                     ; $7595: $06 $49
    ret nc                                        ; $7597: $D0

    inc l                                         ; $7598: $2C
    ld hl, $7661                                  ; $7599: $21 $61 $76
    ld [hl+], a                                   ; $759C: $22
    dec b                                         ; $759D: $05
    ld b, b                                       ; $759E: $40
    dec b                                         ; $759F: $05
    inc b                                         ; $75A0: $04
    ld l, e                                       ; $75A1: $6B
    ld c, d                                       ; $75A2: $4A
    add hl, bc                                    ; $75A3: $09
    ld b, $4B                                     ; $75A4: $06 $4B
    ret nc                                        ; $75A6: $D0

    ld d, a                                       ; $75A7: $57
    ld hl, $7692                                  ; $75A8: $21 $92 $76
    ld [hl+], a                                   ; $75AB: $22
    dec b                                         ; $75AC: $05

jr_021_75AD:
    ld b, b                                       ; $75AD: $40
    dec bc                                        ; $75AE: $0B
    nop                                           ; $75AF: $00
    dec bc                                        ; $75B0: $0B
    ld [bc], a                                    ; $75B1: $02
    dec bc                                        ; $75B2: $0B
    inc bc                                        ; $75B3: $03
    dec bc                                        ; $75B4: $0B
    inc b                                         ; $75B5: $04
    ld l, e                                       ; $75B6: $6B
    inc l                                         ; $75B7: $2C
    ld a, [bc]                                    ; $75B8: $0A
    ret nz                                        ; $75B9: $C0

    halt                                          ; $75BA: $76
    nop                                           ; $75BB: $00
    add b                                         ; $75BC: $80
    nop                                           ; $75BD: $00

jr_021_75BE:
    ld l, e                                       ; $75BE: $6B
    dec hl                                        ; $75BF: $2B
    dec bc                                        ; $75C0: $0B
    jr nz, @+$49                                  ; $75C1: $20 $47

    ret nz                                        ; $75C3: $C0

    add d                                         ; $75C4: $82
    nop                                           ; $75C5: $00
    ld l, e                                       ; $75C6: $6B
    dec hl                                        ; $75C7: $2B
    dec bc                                        ; $75C8: $0B
    ret nc                                        ; $75C9: $D0

    ld c, c                                       ; $75CA: $49
    ld [hl], b                                    ; $75CB: $70
    add l                                         ; $75CC: $85
    nop                                           ; $75CD: $00
    add h                                         ; $75CE: $84

jr_021_75CF:
    dec b                                         ; $75CF: $05
    ld a, [bc]                                    ; $75D0: $0A
    rra                                           ; $75D1: $1F
    db $10                                        ; $75D2: $10
    ld l, a                                       ; $75D3: $6F
    rrca                                          ; $75D4: $0F
    rst $38                                       ; $75D5: $FF
    ld a, a                                       ; $75D6: $7F
    sub h                                         ; $75D7: $94
    halt                                          ; $75D8: $76
    jr nz, jr_021_75EA                            ; $75D9: $20 $0F

    ld e, e                                       ; $75DB: $5B
    ld hl, $76BC                                  ; $75DC: $21 $BC $76
    ld b, d                                       ; $75DF: $42
    dec d                                         ; $75E0: $15
    jr nz, jr_021_7630                            ; $75E1: $20 $4D

    ld d, b                                       ; $75E3: $50
    stop                                          ; $75E4: $10 $00
    dec d                                         ; $75E6: $15

jr_021_75E7:
    jr nz, jr_021_7594                            ; $75E7: $20 $AB

    ld d, b                                       ; $75E9: $50

jr_021_75EA:
    db $10                                        ; $75EA: $10
    jr nz, @-$0D                                  ; $75EB: $20 $F1

    ld d, b                                       ; $75ED: $50
    nop                                           ; $75EE: $00
    nop                                           ; $75EF: $00
    ld a, l                                       ; $75F0: $7D
    cp a                                          ; $75F1: $BF

jr_021_75F2:
    pop bc                                        ; $75F2: $C1
    inc bc                                        ; $75F3: $03
    ld e, h                                       ; $75F4: $5C
    nop                                           ; $75F5: $00
    inc bc                                        ; $75F6: $03
    dec d                                         ; $75F7: $15
    jr nz, jr_021_75E7                            ; $75F8: $20 $ED

    ld c, a                                       ; $75FA: $4F
    jr nc, jr_021_761D                            ; $75FB: $30 $20

    or e                                          ; $75FD: $B3
    ld c, a                                       ; $75FE: $4F
    db $10                                        ; $75FF: $10

jr_021_7600:
    jr nz, jr_021_75AD                            ; $7600: $20 $AB

    ld d, b                                       ; $7602: $50
    nop                                           ; $7603: $00
    nop                                           ; $7604: $00
    ld e, h                                       ; $7605: $5C
    ld bc, $1505                                  ; $7606: $01 $05 $15
    jr nz, jr_021_75F2                            ; $7609: $20 $E7

    ld d, b                                       ; $760B: $50
    db $10                                        ; $760C: $10
    jr nz, jr_021_7600                            ; $760D: $20 $F1

    ld d, b                                       ; $760F: $50
    db $10                                        ; $7610: $10
    jr nz, jr_021_75BE                            ; $7611: $20 $AB

    ld d, b                                       ; $7613: $50
    stop                                          ; $7614: $10 $00
    ld e, h                                       ; $7616: $5C
    inc bc                                        ; $7617: $03
    dec b                                         ; $7618: $05
    ld e, d                                       ; $7619: $5A
    ld hl, $7628                                  ; $761A: $21 $28 $76

jr_021_761D:
    dec d                                         ; $761D: $15
    jr nz, @+$1F                                  ; $761E: $20 $1D

    ld d, b                                       ; $7620: $50
    db $10                                        ; $7621: $10
    jr nz, jr_021_75CF                            ; $7622: $20 $AB

    ld d, b                                       ; $7624: $50
    nop                                           ; $7625: $00
    nop                                           ; $7626: $00
    ld b, d                                       ; $7627: $42
    ld l, [hl]                                    ; $7628: $6E
    rrca                                          ; $7629: $0F
    rst $38                                       ; $762A: $FF
    ld a, a                                       ; $762B: $7F
    halt                                          ; $762C: $76
    jr nz, jr_021_763E                            ; $762D: $20 $0F

    ld b, l                                       ; $762F: $45

jr_021_7630:
    inc hl                                        ; $7630: $23
    ld a, d                                       ; $7631: $7A
    ld h, b                                       ; $7632: $60
    inc d                                         ; $7633: $14
    dec h                                         ; $7634: $25
    ld c, d                                       ; $7635: $4A
    ld c, h                                       ; $7636: $4C
    ld e, h                                       ; $7637: $5C
    ld bc, $1405                                  ; $7638: $01 $05 $14
    dec h                                         ; $763B: $25
    ld c, $4C                                     ; $763C: $0E $4C

jr_021_763E:
    ld e, h                                       ; $763E: $5C
    ld [bc], a                                    ; $763F: $02
    inc b                                         ; $7640: $04
    dec d                                         ; $7641: $15
    dec h                                         ; $7642: $25
    ld c, d                                       ; $7643: $4A
    ld c, h                                       ; $7644: $4C
    db $10                                        ; $7645: $10
    dec h                                         ; $7646: $25
    ld b, b                                       ; $7647: $40
    ld c, h                                       ; $7648: $4C
    db $10                                        ; $7649: $10
    dec h                                         ; $764A: $25
    ld c, $4C                                     ; $764B: $0E $4C
    stop                                          ; $764D: $10 $00
    ld e, e                                       ; $764F: $5B
    ld hl, $775B                                  ; $7650: $21 $5B $77
    ld e, h                                       ; $7653: $5C
    inc bc                                        ; $7654: $03
    dec b                                         ; $7655: $05
    dec d                                         ; $7656: $15
    dec h                                         ; $7657: $25
    call nc, $204B                                ; $7658: $D4 $4B $20
    dec h                                         ; $765B: $25
    ld c, $4C                                     ; $765C: $0E $4C
    nop                                           ; $765E: $00
    nop                                           ; $765F: $00
    ld b, d                                       ; $7660: $42
    inc d                                         ; $7661: $14
    ld de, $451F                                  ; $7662: $11 $1F $45
    ld e, h                                       ; $7665: $5C
    nop                                           ; $7666: $00
    inc bc                                        ; $7667: $03
    inc d                                         ; $7668: $14
    ld de, $4533                                  ; $7669: $11 $33 $45
    ld e, h                                       ; $766C: $5C
    ld bc, $1405                                  ; $766D: $01 $05 $14
    ld de, $4547                                  ; $7670: $11 $47 $45
    ld e, h                                       ; $7673: $5C
    ld [bc], a                                    ; $7674: $02
    inc b                                         ; $7675: $04
    dec d                                         ; $7676: $15
    ld de, $451F                                  ; $7677: $11 $1F $45
    db $10                                        ; $767A: $10
    ld de, $4533                                  ; $767B: $11 $33 $45
    db $10                                        ; $767E: $10
    ld de, $4547                                  ; $767F: $11 $47 $45
    stop                                          ; $7682: $10 $00
    ld e, h                                       ; $7684: $5C
    inc bc                                        ; $7685: $03
    dec b                                         ; $7686: $05
    dec d                                         ; $7687: $15
    ld de, $44D1                                  ; $7688: $11 $D1 $44
    db $10                                        ; $768B: $10
    ld de, $451F                                  ; $768C: $11 $1F $45
    nop                                           ; $768F: $00
    nop                                           ; $7690: $00
    ld b, d                                       ; $7691: $42
    inc d                                         ; $7692: $14
    ld de, $47B4                                  ; $7693: $11 $B4 $47
    ld e, h                                       ; $7696: $5C
    ld bc, $1405                                  ; $7697: $01 $05 $14
    ld de, $47C8                                  ; $769A: $11 $C8 $47
    ld e, h                                       ; $769D: $5C
    ld [bc], a                                    ; $769E: $02
    inc b                                         ; $769F: $04
    dec d                                         ; $76A0: $15
    ld de, $47B4                                  ; $76A1: $11 $B4 $47
    db $10                                        ; $76A4: $10
    ld de, $47A0                                  ; $76A5: $11 $A0 $47
    db $10                                        ; $76A8: $10
    ld de, $47C8                                  ; $76A9: $11 $C8 $47
    stop                                          ; $76AC: $10 $00
    ld e, h                                       ; $76AE: $5C
    inc bc                                        ; $76AF: $03
    dec b                                         ; $76B0: $05
    dec d                                         ; $76B1: $15
    ld de, $475C                                  ; $76B2: $11 $5C $47
    db $10                                        ; $76B5: $10
    ld de, $47A0                                  ; $76B6: $11 $A0 $47
    nop                                           ; $76B9: $00
    nop                                           ; $76BA: $00
    ld b, d                                       ; $76BB: $42
    sbc e                                         ; $76BC: $9B
    add hl, de                                    ; $76BD: $19
    ld c, [hl]                                    ; $76BE: $4E
    sbc a                                         ; $76BF: $9F
    ld c, c                                       ; $76C0: $49
    ld h, [hl]                                    ; $76C1: $66
    jr nz, jr_021_7733                            ; $76C2: $20 $6F

    ld l, [hl]                                    ; $76C4: $6E
    ld l, h                                       ; $76C5: $6C
    ld a, c                                       ; $76C6: $79
    rst $38                                       ; $76C7: $FF
    ld [hl], a                                    ; $76C8: $77
    ld h, l                                       ; $76C9: $65
    jr nz, jr_021_7734                            ; $76CA: $20 $68

    ld h, c                                       ; $76CC: $61

jr_021_76CD:
    ld h, h                                       ; $76CD: $64
    jr nz, @+$63                                  ; $76CE: $20 $61

    cp $43                                        ; $76D0: $FE $43
    ld l, h                                       ; $76D2: $6C
    ld l, a                                       ; $76D3: $6F
    ld [hl], l                                    ; $76D4: $75
    ld h, h                                       ; $76D5: $64
    jr nz, jr_021_771E                            ; $76D6: $20 $46

    ld [hl], d                                    ; $76D8: $72
    ld l, a                                       ; $76D9: $6F
    ld l, [hl]                                    ; $76DA: $6E
    ld h, h                                       ; $76DB: $64
    ld hl, $FDFE                                  ; $76DC: $21 $FE $FD
    sbc d                                         ; $76DF: $9A
    ld e, h                                       ; $76E0: $5C
    nop                                           ; $76E1: $00
    inc bc                                        ; $76E2: $03
    sbc e                                         ; $76E3: $9B
    reti                                          ; $76E4: $D9


    ld b, a                                       ; $76E5: $47
    sbc a                                         ; $76E6: $9F
    ld c, c                                       ; $76E7: $49
    ld [hl], h                                    ; $76E8: $74
    jr nz, @+$6B                                  ; $76E9: $20 $69

    ld [hl], e                                    ; $76EB: $73
    jr nz, jr_021_7762                            ; $76EC: $20 $74

    ld l, b                                       ; $76EE: $68
    ld h, l                                       ; $76EF: $65
    rst $38                                       ; $76F0: $FF
    ld l, a                                       ; $76F1: $6F
    ld l, [hl]                                    ; $76F2: $6E
    ld l, h                                       ; $76F3: $6C
    ld a, c                                       ; $76F4: $79
    jr nz, jr_021_776B                            ; $76F5: $20 $74

    ld l, b                                       ; $76F7: $68
    ld l, c                                       ; $76F8: $69
    ld l, [hl]                                    ; $76F9: $6E
    ld h, a                                       ; $76FA: $67
    cp $73                                        ; $76FB: $FE $73
    ld [hl], h                                    ; $76FD: $74
    ld h, c                                       ; $76FE: $61
    ld l, [hl]                                    ; $76FF: $6E
    ld h, h                                       ; $7700: $64
    ld l, c                                       ; $7701: $69
    ld l, [hl]                                    ; $7702: $6E
    ld h, a                                       ; $7703: $67
    rst $38                                       ; $7704: $FF
    ld h, d                                       ; $7705: $62
    ld h, l                                       ; $7706: $65
    ld [hl], h                                    ; $7707: $74
    ld [hl], a                                    ; $7708: $77
    ld h, l                                       ; $7709: $65
    ld h, l                                       ; $770A: $65
    ld l, [hl]                                    ; $770B: $6E
    jr nz, jr_021_775D                            ; $770C: $20 $4F

    ld [hl], d                                    ; $770E: $72
    ld [hl], a                                    ; $770F: $77
    ld l, c                                       ; $7710: $69
    ld l, [hl]                                    ; $7711: $6E
    cp $61                                        ; $7712: $FE $61
    ld l, [hl]                                    ; $7714: $6E
    ld h, h                                       ; $7715: $64
    jr nz, jr_021_7779                            ; $7716: $20 $61

    jr nz, jr_021_7780                            ; $7718: $20 $66

    ld [hl], l                                    ; $771A: $75
    ld l, h                                       ; $771B: $6C
    ld l, h                                       ; $771C: $6C
    rst $38                                       ; $771D: $FF

jr_021_771E:
    ld [hl], d                                    ; $771E: $72
    ld h, l                                       ; $771F: $65
    ld h, e                                       ; $7720: $63
    ld l, a                                       ; $7721: $6F
    halt                                          ; $7722: $76
    ld h, l                                       ; $7723: $65
    ld [hl], d                                    ; $7724: $72
    ld a, c                                       ; $7725: $79
    ld l, $2E                                     ; $7726: $2E $2E
    ld l, $FE                                     ; $7728: $2E $FE
    db $FD                                        ; $772A: $FD
    sbc d                                         ; $772B: $9A
    ld e, h                                       ; $772C: $5C
    ld bc, $4005                                  ; $772D: $01 $05 $40
    jr jr_021_76CD                                ; $7730: $18 $9B

    reti                                          ; $7732: $D9


jr_021_7733:
    ld b, a                                       ; $7733: $47

jr_021_7734:
    sbc a                                         ; $7734: $9F
    ld c, b                                       ; $7735: $48
    ld h, l                                       ; $7736: $65
    ld a, c                                       ; $7737: $79
    jr nz, jr_021_77A6                            ; $7738: $20 $6C

    ld l, a                                       ; $773A: $6F
    ld l, a                                       ; $773B: $6F
    ld l, e                                       ; $773C: $6B
    ld hl, $48FE                                  ; $773D: $21 $FE $48
    ld h, l                                       ; $7740: $65
    jr nz, jr_021_77AB                            ; $7741: $20 $68

    ld h, c                                       ; $7743: $61
    ld [hl], e                                    ; $7744: $73
    jr nz, @+$63                                  ; $7745: $20 $61

    rst $38                                       ; $7747: $FF
    ld b, e                                       ; $7748: $43
    ld l, h                                       ; $7749: $6C
    ld l, a                                       ; $774A: $6F
    ld [hl], l                                    ; $774B: $75
    ld h, h                                       ; $774C: $64
    jr nz, jr_021_7795                            ; $774D: $20 $46

    ld [hl], d                                    ; $774F: $72
    ld l, a                                       ; $7750: $6F
    ld l, [hl]                                    ; $7751: $6E
    ld h, h                                       ; $7752: $64
    ld hl, $FDFE                                  ; $7753: $21 $FE $FD
    sbc d                                         ; $7756: $9A
    ld e, h                                       ; $7757: $5C
    ld [bc], a                                    ; $7758: $02
    inc b                                         ; $7759: $04
    ld b, d                                       ; $775A: $42
    sbc e                                         ; $775B: $9B
    reti                                          ; $775C: $D9


jr_021_775D:
    ld b, a                                       ; $775D: $47
    sbc a                                         ; $775E: $9F
    ld c, h                                       ; $775F: $4C
    ld b, l                                       ; $7760: $45
    ld d, h                                       ; $7761: $54

jr_021_7762:
    daa                                           ; $7762: $27
    ld d, e                                       ; $7763: $53
    jr nz, @+$49                                  ; $7764: $20 $47

    ld c, a                                       ; $7766: $4F
    ld hl, $FDFE                                  ; $7767: $21 $FE $FD
    sbc d                                         ; $776A: $9A

jr_021_776B:
    ld e, h                                       ; $776B: $5C
    inc bc                                        ; $776C: $03
    dec b                                         ; $776D: $05
    ld b, d                                       ; $776E: $42
    ld bc, $081B                                  ; $776F: $01 $1B $08
    ld b, l                                       ; $7772: $45
    cpl                                           ; $7773: $2F
    ld h, l                                       ; $7774: $65
    ld b, c                                       ; $7775: $41
    ld [bc], a                                    ; $7776: $02
    ld [bc], a                                    ; $7777: $02
    inc d                                         ; $7778: $14

jr_021_7779:
    nop                                           ; $7779: $00
    dec sp                                        ; $777A: $3B
    ld b, l                                       ; $777B: $45
    ld hl, $695A                                  ; $777C: $21 $5A $69
    inc h                                         ; $777F: $24

jr_021_7780:
    ld e, $93                                     ; $7780: $1E $93
    ld h, l                                       ; $7782: $65
    inc e                                         ; $7783: $1C
    ld b, d                                       ; $7784: $42
    ld c, a                                       ; $7785: $4F
    ld h, h                                       ; $7786: $64
    inc bc                                        ; $7787: $03
    ld b, d                                       ; $7788: $42
    dec b                                         ; $7789: $05
    nop                                           ; $778A: $00
    add c                                         ; $778B: $81
    ld e, l                                       ; $778C: $5D
    dec b                                         ; $778D: $05
    dec b                                         ; $778E: $05

jr_021_778F:
    ld c, e                                       ; $778F: $4B
    ret nc                                        ; $7790: $D0

    nop                                           ; $7791: $00
    jr nz, jr_021_778F                            ; $7792: $20 $FB

    ld d, b                                       ; $7794: $50

jr_021_7795:
    ld [hl+], a                                   ; $7795: $22
    dec b                                         ; $7796: $05
    ld b, b                                       ; $7797: $40
    dec bc                                        ; $7798: $0B
    nop                                           ; $7799: $00
    nop                                           ; $779A: $00
    add d                                         ; $779B: $82
    rra                                           ; $779C: $1F
    db $10                                        ; $779D: $10
    sub h                                         ; $779E: $94
    ld b, d                                       ; $779F: $42
    ld [bc], a                                    ; $77A0: $02
    ld de, $2703                                  ; $77A1: $11 $03 $27
    nop                                           ; $77A4: $00
    ld b, l                                       ; $77A5: $45

jr_021_77A6:
    ld hl, $7897                                  ; $77A6: $21 $97 $78
    ld [bc], a                                    ; $77A9: $02
    nop                                           ; $77AA: $00

jr_021_77AB:
    ld de, $2700                                  ; $77AB: $11 $00 $27
    ld b, l                                       ; $77AE: $45
    ld hl, $7821                                  ; $77AF: $21 $21 $78
    and h                                         ; $77B2: $A4

jr_021_77B3:
    ld c, b                                       ; $77B3: $48
    and e                                         ; $77B4: $A3
    stop                                          ; $77B5: $10 $00
    inc hl                                        ; $77B7: $23
    ld l, d                                       ; $77B8: $6A
    jp nc, $6593                                  ; $77B9: $D2 $93 $65

    dec hl                                        ; $77BC: $2B
    ld b, d                                       ; $77BD: $42
    ld c, a                                       ; $77BE: $4F
    ld h, h                                       ; $77BF: $64
    inc c                                         ; $77C0: $0C
    ld b, d                                       ; $77C1: $42

jr_021_77C2:
    ld l, c                                       ; $77C2: $69
    dec d                                         ; $77C3: $15
    ld b, d                                       ; $77C4: $42
    ld h, [hl]                                    ; $77C5: $66
    ret nz                                        ; $77C6: $C0

    ld e, h                                       ; $77C7: $5C
    ld hl, $0005                                  ; $77C8: $21 $05 $00
    add c                                         ; $77CB: $81
    ld e, l                                       ; $77CC: $5D
    dec b                                         ; $77CD: $05
    dec b                                         ; $77CE: $05

jr_021_77CF:
    sbc e                                         ; $77CF: $9B
    ret nc                                        ; $77D0: $D0

    nop                                           ; $77D1: $00
    jr nz, jr_021_77CF                            ; $77D2: $20 $FB

    ld d, b                                       ; $77D4: $50
    ld [hl+], a                                   ; $77D5: $22
    dec b                                         ; $77D6: $05
    ld b, b                                       ; $77D7: $40
    dec bc                                        ; $77D8: $0B
    nop                                           ; $77D9: $00
    dec b                                         ; $77DA: $05
    jr nz, jr_021_77AB                            ; $77DB: $20 $CE

    ld h, e                                       ; $77DD: $63
    ld a, [bc]                                    ; $77DE: $0A
    add hl, bc                                    ; $77DF: $09
    jr jr_021_77B3                                ; $77E0: $18 $D1

    nop                                           ; $77E2: $00
    ld [hl+], a                                   ; $77E3: $22
    jp c, $2140                                   ; $77E4: $DA $40 $21

    cp $68                                        ; $77E7: $FE $68
    dec b                                         ; $77E9: $05
    rra                                           ; $77EA: $1F
    adc $63                                       ; $77EB: $CE $63
    ld a, [bc]                                    ; $77ED: $0A
    add hl, bc                                    ; $77EE: $09
    jr jr_021_77C2                                ; $77EF: $18 $D1

    nop                                           ; $77F1: $00
    ld [hl+], a                                   ; $77F2: $22
    jp c, $2140                                   ; $77F3: $DA $40 $21

    cp $68                                        ; $77F6: $FE $68
    dec bc                                        ; $77F8: $0B
    jr nz, @+$0D                                  ; $77F9: $20 $0B

    rra                                           ; $77FB: $1F
    ld l, e                                       ; $77FC: $6B
    inc [hl]                                      ; $77FD: $34
    dec c                                         ; $77FE: $0D
    jr nc, jr_021_786B                            ; $77FF: $30 $6A

    nop                                           ; $7801: $00
    add b                                         ; $7802: $80
    nop                                           ; $7803: $00
    ld sp, $BA21                                  ; $7804: $31 $21 $BA
    ld [hl], a                                    ; $7807: $77
    ld [hl+], a                                   ; $7808: $22
    adc $40                                       ; $7809: $CE $40
    nop                                           ; $780B: $00
    add d                                         ; $780C: $82
    rra                                           ; $780D: $1F
    db $10                                        ; $780E: $10

jr_021_780F:
    sub h                                         ; $780F: $94
    ld b, d                                       ; $7810: $42
    ld [bc], a                                    ; $7811: $02
    ld de, $2700                                  ; $7812: $11 $00 $27
    nop                                           ; $7815: $00
    ld b, l                                       ; $7816: $45

jr_021_7817:
    ld hl, $77BA                                  ; $7817: $21 $BA $77
    ld bc, $2B09                                  ; $781A: $01 $09 $2B
    ld b, l                                       ; $781D: $45
    ld a, [hl+]                                   ; $781E: $2A
    dec d                                         ; $781F: $15
    ld b, a                                       ; $7820: $47
    sub e                                         ; $7821: $93
    ld h, l                                       ; $7822: $65
    ld a, [hl-]                                   ; $7823: $3A
    ld b, d                                       ; $7824: $42
    ld c, a                                       ; $7825: $4F

jr_021_7826:
    ld h, h                                       ; $7826: $64
    ld a, [de]                                    ; $7827: $1A
    ld b, d                                       ; $7828: $42
    ld h, [hl]                                    ; $7829: $66
    ret nz                                        ; $782A: $C0

    ld e, h                                       ; $782B: $5C
    ld hl, $0005                                  ; $782C: $21 $05 $00
    ld b, c                                       ; $782F: $41
    ld e, e                                       ; $7830: $5B
    dec b                                         ; $7831: $05
    dec b                                         ; $7832: $05
    sbc e                                         ; $7833: $9B
    ret nc                                        ; $7834: $D0

    nop                                           ; $7835: $00
    jr nz, jr_021_7817                            ; $7836: $20 $DF

    ld e, e                                       ; $7838: $5B
    ld [hl+], a                                   ; $7839: $22
    dec b                                         ; $783A: $05
    ld b, b                                       ; $783B: $40
    dec bc                                        ; $783C: $0B
    nop                                           ; $783D: $00
    dec b                                         ; $783E: $05
    jr nz, jr_021_780F                            ; $783F: $20 $CE

    ld h, e                                       ; $7841: $63
    ld a, [bc]                                    ; $7842: $0A
    add hl, bc                                    ; $7843: $09
    jr jr_021_7817                                ; $7844: $18 $D1

    nop                                           ; $7846: $00
    ld [hl+], a                                   ; $7847: $22
    jp c, $2140                                   ; $7848: $DA $40 $21

    cp $68                                        ; $784B: $FE $68
    dec b                                         ; $784D: $05
    rra                                           ; $784E: $1F
    adc $63                                       ; $784F: $CE $63
    ld a, [bc]                                    ; $7851: $0A
    add hl, bc                                    ; $7852: $09
    jr jr_021_7826                                ; $7853: $18 $D1

    nop                                           ; $7855: $00
    ld [hl+], a                                   ; $7856: $22
    jp c, $2140                                   ; $7857: $DA $40 $21

    cp $68                                        ; $785A: $FE $68
    dec b                                         ; $785C: $05
    ld hl, $4A6B                                  ; $785D: $21 $6B $4A
    inc c                                         ; $7860: $0C
    inc de                                        ; $7861: $13
    ld b, [hl]                                    ; $7862: $46
    jp nc, $1134                                  ; $7863: $D2 $34 $11

    rra                                           ; $7866: $1F
    ld a, d                                       ; $7867: $7A
    ld [hl+], a                                   ; $7868: $22
    inc b                                         ; $7869: $04
    ld b, b                                       ; $786A: $40

jr_021_786B:
    dec bc                                        ; $786B: $0B
    jr nz, jr_021_7879                            ; $786C: $20 $0B

    rra                                           ; $786E: $1F
    dec bc                                        ; $786F: $0B
    ld hl, $346B                                  ; $7870: $21 $6B $34
    dec c                                         ; $7873: $0D
    jr nc, @+$6C                                  ; $7874: $30 $6A

    nop                                           ; $7876: $00
    add b                                         ; $7877: $80
    nop                                           ; $7878: $00

jr_021_7879:
    ld l, e                                       ; $7879: $6B
    ld b, b                                       ; $787A: $40
    daa                                           ; $787B: $27
    nop                                           ; $787C: $00
    ld b, d                                       ; $787D: $42
    ld b, b                                       ; $787E: $40
    add e                                         ; $787F: $83
    nop                                           ; $7880: $00
    ld sp, $2121                                  ; $7881: $31 $21 $21
    ld a, b                                       ; $7884: $78

jr_021_7885:
    ld [hl+], a                                   ; $7885: $22
    adc $40                                       ; $7886: $CE $40
    nop                                           ; $7888: $00
    add d                                         ; $7889: $82
    rra                                           ; $788A: $1F
    db $10                                        ; $788B: $10
    sub h                                         ; $788C: $94

jr_021_788D:
    ld b, d                                       ; $788D: $42
    ld [bc], a                                    ; $788E: $02
    inc bc                                        ; $788F: $03
    ld de, $2700                                  ; $7890: $11 $00 $27
    ld b, l                                       ; $7893: $45
    ld hl, $77BA                                  ; $7894: $21 $BA $77
    sub e                                         ; $7897: $93
    ld h, l                                       ; $7898: $65
    ld c, c                                       ; $7899: $49
    ld b, d                                       ; $789A: $42
    ld c, a                                       ; $789B: $4F

jr_021_789C:
    ld h, h                                       ; $789C: $64
    inc hl                                        ; $789D: $23
    ld b, d                                       ; $789E: $42
    ld h, [hl]                                    ; $789F: $66
    ret nz                                        ; $78A0: $C0

    ld e, h                                       ; $78A1: $5C
    ld hl, $0005                                  ; $78A2: $21 $05 $00
    ld b, c                                       ; $78A5: $41
    ld e, e                                       ; $78A6: $5B
    dec b                                         ; $78A7: $05
    dec b                                         ; $78A8: $05
    sbc e                                         ; $78A9: $9B
    ret nc                                        ; $78AA: $D0

    nop                                           ; $78AB: $00
    jr nz, jr_021_788D                            ; $78AC: $20 $DF

    ld e, e                                       ; $78AE: $5B
    ld [hl+], a                                   ; $78AF: $22
    dec b                                         ; $78B0: $05
    ld b, b                                       ; $78B1: $40
    dec bc                                        ; $78B2: $0B
    nop                                           ; $78B3: $00
    dec b                                         ; $78B4: $05
    jr nz, jr_021_7885                            ; $78B5: $20 $CE

    ld h, e                                       ; $78B7: $63
    ld a, [bc]                                    ; $78B8: $0A
    add hl, bc                                    ; $78B9: $09
    jr jr_021_788D                                ; $78BA: $18 $D1

    nop                                           ; $78BC: $00
    ld [hl+], a                                   ; $78BD: $22
    jp c, $2140                                   ; $78BE: $DA $40 $21

    cp $68                                        ; $78C1: $FE $68
    dec b                                         ; $78C3: $05
    rra                                           ; $78C4: $1F
    adc $63                                       ; $78C5: $CE $63
    ld a, [bc]                                    ; $78C7: $0A
    add hl, bc                                    ; $78C8: $09
    jr jr_021_789C                                ; $78C9: $18 $D1

    nop                                           ; $78CB: $00
    ld [hl+], a                                   ; $78CC: $22
    jp c, $2140                                   ; $78CD: $DA $40 $21

    cp $68                                        ; $78D0: $FE $68
    dec bc                                        ; $78D2: $0B

jr_021_78D3:
    jr nz, @+$0D                                  ; $78D3: $20 $0B

    rra                                           ; $78D5: $1F
    ld l, e                                       ; $78D6: $6B
    inc [hl]                                      ; $78D7: $34
    dec c                                         ; $78D8: $0D
    jr nc, jr_021_7945                            ; $78D9: $30 $6A

    nop                                           ; $78DB: $00
    add b                                         ; $78DC: $80
    nop                                           ; $78DD: $00
    ld sp, $9721                                  ; $78DE: $31 $21 $97
    ld a, b                                       ; $78E1: $78

jr_021_78E2:
    ld [hl+], a                                   ; $78E2: $22
    adc $40                                       ; $78E3: $CE $40
    nop                                           ; $78E5: $00
    add d                                         ; $78E6: $82
    rra                                           ; $78E7: $1F
    db $10                                        ; $78E8: $10
    sub h                                         ; $78E9: $94
    ld b, d                                       ; $78EA: $42
    rlca                                          ; $78EB: $07
    ld e, e                                       ; $78EC: $5B
    dec b                                         ; $78ED: $05
    dec b                                         ; $78EE: $05
    sbc e                                         ; $78EF: $9B
    ret nc                                        ; $78F0: $D0

    nop                                           ; $78F1: $00
    jr nz, jr_021_78D3                            ; $78F2: $20 $DF

    ld e, e                                       ; $78F4: $5B
    ld [hl+], a                                   ; $78F5: $22
    dec b                                         ; $78F6: $05
    ld b, b                                       ; $78F7: $40
    dec bc                                        ; $78F8: $0B
    nop                                           ; $78F9: $00
    dec b                                         ; $78FA: $05
    jr nz, @-$6A                                  ; $78FB: $20 $94

    ld h, e                                       ; $78FD: $63
    ld a, [bc]                                    ; $78FE: $0A
    add hl, bc                                    ; $78FF: $09
    jr jr_021_78D3                                ; $7900: $18 $D1

    nop                                           ; $7902: $00
    ld [hl+], a                                   ; $7903: $22
    inc c                                         ; $7904: $0C
    ld b, c                                       ; $7905: $41
    ld hl, $69B7                                  ; $7906: $21 $B7 $69
    dec b                                         ; $7909: $05
    rra                                           ; $790A: $1F
    sub h                                         ; $790B: $94
    ld h, e                                       ; $790C: $63
    ld a, [bc]                                    ; $790D: $0A
    add hl, bc                                    ; $790E: $09
    jr jr_021_78E2                                ; $790F: $18 $D1

    nop                                           ; $7911: $00
    ld [hl+], a                                   ; $7912: $22
    inc c                                         ; $7913: $0C
    ld b, c                                       ; $7914: $41
    ld hl, $69B7                                  ; $7915: $21 $B7 $69
    dec b                                         ; $7918: $05
    ld hl, $4A69                                  ; $7919: $21 $69 $4A
    inc c                                         ; $791C: $0C
    inc de                                        ; $791D: $13
    ld b, [hl]                                    ; $791E: $46
    jp nc, $1134                                  ; $791F: $D2 $34 $11

    rra                                           ; $7922: $1F
    ld a, d                                       ; $7923: $7A
    ld [hl+], a                                   ; $7924: $22
    inc b                                         ; $7925: $04
    ld b, b                                       ; $7926: $40
    dec bc                                        ; $7927: $0B
    jr nz, jr_021_7935                            ; $7928: $20 $0B

    rra                                           ; $792A: $1F
    dec bc                                        ; $792B: $0B
    ld hl, $346B                                  ; $792C: $21 $6B $34
    dec c                                         ; $792F: $0D
    jr nc, @+$6C                                  ; $7930: $30 $6A

    nop                                           ; $7932: $00
    add b                                         ; $7933: $80
    nop                                           ; $7934: $00

jr_021_7935:
    ld l, e                                       ; $7935: $6B
    ld b, b                                       ; $7936: $40
    daa                                           ; $7937: $27
    nop                                           ; $7938: $00
    ld b, d                                       ; $7939: $42
    ld b, b                                       ; $793A: $40
    add e                                         ; $793B: $83
    nop                                           ; $793C: $00
    ld sp, $DD21                                  ; $793D: $31 $21 $DD
    ld a, b                                       ; $7940: $78
    ld [hl+], a                                   ; $7941: $22
    ld [$0041], sp                                ; $7942: $08 $41 $00

jr_021_7945:
    add d                                         ; $7945: $82
    rra                                           ; $7946: $1F
    db $10                                        ; $7947: $10
    sub h                                         ; $7948: $94

jr_021_7949:
    ld b, d                                       ; $7949: $42
    ld [bc], a                                    ; $794A: $02
    inc bc                                        ; $794B: $03
    ld de, $2700                                  ; $794C: $11 $00 $27
    ld b, l                                       ; $794F: $45
    ld hl, $7876                                  ; $7950: $21 $76 $78
    sub e                                         ; $7953: $93
    ld h, l                                       ; $7954: $65
    ld e, b                                       ; $7955: $58
    ld b, d                                       ; $7956: $42
    ld c, a                                       ; $7957: $4F

jr_021_7958:
    ld h, h                                       ; $7958: $64
    jr c, jr_021_799D                             ; $7959: $38 $42

    ld h, [hl]                                    ; $795B: $66
    cp c                                          ; $795C: $B9
    ld e, h                                       ; $795D: $5C
    ld hl, $0005                                  ; $795E: $21 $05 $00
    rlca                                          ; $7961: $07
    ld e, e                                       ; $7962: $5B
    dec b                                         ; $7963: $05
    dec b                                         ; $7964: $05
    sbc e                                         ; $7965: $9B
    ret nc                                        ; $7966: $D0

    nop                                           ; $7967: $00
    jr nz, jr_021_7949                            ; $7968: $20 $DF

    ld e, e                                       ; $796A: $5B
    ld [hl+], a                                   ; $796B: $22
    dec b                                         ; $796C: $05
    ld b, b                                       ; $796D: $40
    dec bc                                        ; $796E: $0B
    nop                                           ; $796F: $00
    dec b                                         ; $7970: $05
    jr nz, @-$6A                                  ; $7971: $20 $94

    ld h, e                                       ; $7973: $63
    ld a, [bc]                                    ; $7974: $0A
    add hl, bc                                    ; $7975: $09
    jr jr_021_7949                                ; $7976: $18 $D1

    nop                                           ; $7978: $00
    ld [hl+], a                                   ; $7979: $22
    inc c                                         ; $797A: $0C
    ld b, c                                       ; $797B: $41
    ld hl, $69B7                                  ; $797C: $21 $B7 $69
    dec b                                         ; $797F: $05
    rra                                           ; $7980: $1F
    sub h                                         ; $7981: $94
    ld h, e                                       ; $7982: $63
    ld a, [bc]                                    ; $7983: $0A
    add hl, bc                                    ; $7984: $09
    jr jr_021_7958                                ; $7985: $18 $D1

    nop                                           ; $7987: $00
    ld [hl+], a                                   ; $7988: $22
    inc c                                         ; $7989: $0C
    ld b, c                                       ; $798A: $41
    ld hl, $69B7                                  ; $798B: $21 $B7 $69
    dec bc                                        ; $798E: $0B
    jr nz, @+$0D                                  ; $798F: $20 $0B

    rra                                           ; $7991: $1F
    ld l, e                                       ; $7992: $6B
    inc [hl]                                      ; $7993: $34
    dec c                                         ; $7994: $0D
    jr nc, jr_021_7A01                            ; $7995: $30 $6A

    nop                                           ; $7997: $00
    add b                                         ; $7998: $80
    nop                                           ; $7999: $00
    ld sp, $5321                                  ; $799A: $31 $21 $53

jr_021_799D:
    ld a, c                                       ; $799D: $79
    ld [hl+], a                                   ; $799E: $22
    ld [$0041], sp                                ; $799F: $08 $41 $00
    add d                                         ; $79A2: $82
    rra                                           ; $79A3: $1F
    db $10                                        ; $79A4: $10
    sub h                                         ; $79A5: $94
    ld b, d                                       ; $79A6: $42
    nop                                           ; $79A7: $00
    nop                                           ; $79A8: $00
    nop                                           ; $79A9: $00
    nop                                           ; $79AA: $00
    nop                                           ; $79AB: $00
    nop                                           ; $79AC: $00
    nop                                           ; $79AD: $00
    nop                                           ; $79AE: $00
    nop                                           ; $79AF: $00
    nop                                           ; $79B0: $00
    nop                                           ; $79B1: $00
    nop                                           ; $79B2: $00
    nop                                           ; $79B3: $00
    nop                                           ; $79B4: $00
    nop                                           ; $79B5: $00
    nop                                           ; $79B6: $00
    nop                                           ; $79B7: $00
    nop                                           ; $79B8: $00
    nop                                           ; $79B9: $00
    nop                                           ; $79BA: $00
    nop                                           ; $79BB: $00
    nop                                           ; $79BC: $00
    nop                                           ; $79BD: $00
    nop                                           ; $79BE: $00
    nop                                           ; $79BF: $00
    nop                                           ; $79C0: $00
    nop                                           ; $79C1: $00
    nop                                           ; $79C2: $00
    nop                                           ; $79C3: $00
    nop                                           ; $79C4: $00
    nop                                           ; $79C5: $00
    nop                                           ; $79C6: $00
    nop                                           ; $79C7: $00
    nop                                           ; $79C8: $00
    nop                                           ; $79C9: $00
    nop                                           ; $79CA: $00
    nop                                           ; $79CB: $00
    nop                                           ; $79CC: $00
    nop                                           ; $79CD: $00
    nop                                           ; $79CE: $00
    nop                                           ; $79CF: $00
    nop                                           ; $79D0: $00
    nop                                           ; $79D1: $00
    nop                                           ; $79D2: $00
    nop                                           ; $79D3: $00
    nop                                           ; $79D4: $00
    nop                                           ; $79D5: $00
    nop                                           ; $79D6: $00
    nop                                           ; $79D7: $00
    nop                                           ; $79D8: $00
    nop                                           ; $79D9: $00
    nop                                           ; $79DA: $00
    nop                                           ; $79DB: $00
    nop                                           ; $79DC: $00
    nop                                           ; $79DD: $00
    nop                                           ; $79DE: $00
    nop                                           ; $79DF: $00
    nop                                           ; $79E0: $00
    nop                                           ; $79E1: $00
    nop                                           ; $79E2: $00
    nop                                           ; $79E3: $00
    nop                                           ; $79E4: $00
    nop                                           ; $79E5: $00
    nop                                           ; $79E6: $00
    nop                                           ; $79E7: $00
    nop                                           ; $79E8: $00
    nop                                           ; $79E9: $00
    nop                                           ; $79EA: $00
    nop                                           ; $79EB: $00
    nop                                           ; $79EC: $00
    nop                                           ; $79ED: $00
    nop                                           ; $79EE: $00
    nop                                           ; $79EF: $00
    nop                                           ; $79F0: $00
    nop                                           ; $79F1: $00
    nop                                           ; $79F2: $00
    nop                                           ; $79F3: $00
    nop                                           ; $79F4: $00
    nop                                           ; $79F5: $00
    nop                                           ; $79F6: $00
    nop                                           ; $79F7: $00
    nop                                           ; $79F8: $00
    nop                                           ; $79F9: $00
    nop                                           ; $79FA: $00
    nop                                           ; $79FB: $00
    nop                                           ; $79FC: $00
    nop                                           ; $79FD: $00
    nop                                           ; $79FE: $00
    nop                                           ; $79FF: $00
    nop                                           ; $7A00: $00

jr_021_7A01:
    nop                                           ; $7A01: $00
    nop                                           ; $7A02: $00
    nop                                           ; $7A03: $00
    nop                                           ; $7A04: $00
    nop                                           ; $7A05: $00
    nop                                           ; $7A06: $00
    nop                                           ; $7A07: $00
    nop                                           ; $7A08: $00
    nop                                           ; $7A09: $00
    nop                                           ; $7A0A: $00
    nop                                           ; $7A0B: $00
    nop                                           ; $7A0C: $00
    nop                                           ; $7A0D: $00
    nop                                           ; $7A0E: $00
    nop                                           ; $7A0F: $00
    nop                                           ; $7A10: $00
    nop                                           ; $7A11: $00
    nop                                           ; $7A12: $00
    nop                                           ; $7A13: $00
    nop                                           ; $7A14: $00
    nop                                           ; $7A15: $00
    nop                                           ; $7A16: $00
    nop                                           ; $7A17: $00
    nop                                           ; $7A18: $00
    nop                                           ; $7A19: $00
    nop                                           ; $7A1A: $00
    nop                                           ; $7A1B: $00
    nop                                           ; $7A1C: $00
    nop                                           ; $7A1D: $00
    nop                                           ; $7A1E: $00
    nop                                           ; $7A1F: $00
    nop                                           ; $7A20: $00
    nop                                           ; $7A21: $00
    nop                                           ; $7A22: $00
    nop                                           ; $7A23: $00
    nop                                           ; $7A24: $00
    nop                                           ; $7A25: $00
    nop                                           ; $7A26: $00
    nop                                           ; $7A27: $00
    nop                                           ; $7A28: $00
    nop                                           ; $7A29: $00
    nop                                           ; $7A2A: $00
    nop                                           ; $7A2B: $00
    nop                                           ; $7A2C: $00
    nop                                           ; $7A2D: $00
    nop                                           ; $7A2E: $00
    nop                                           ; $7A2F: $00
    nop                                           ; $7A30: $00
    nop                                           ; $7A31: $00
    nop                                           ; $7A32: $00
    nop                                           ; $7A33: $00
    nop                                           ; $7A34: $00
    nop                                           ; $7A35: $00
    nop                                           ; $7A36: $00
    nop                                           ; $7A37: $00
    nop                                           ; $7A38: $00
    nop                                           ; $7A39: $00
    nop                                           ; $7A3A: $00
    nop                                           ; $7A3B: $00
    nop                                           ; $7A3C: $00
    nop                                           ; $7A3D: $00
    nop                                           ; $7A3E: $00
    nop                                           ; $7A3F: $00
    nop                                           ; $7A40: $00
    nop                                           ; $7A41: $00
    nop                                           ; $7A42: $00
    nop                                           ; $7A43: $00
    nop                                           ; $7A44: $00
    nop                                           ; $7A45: $00
    nop                                           ; $7A46: $00
    nop                                           ; $7A47: $00
    nop                                           ; $7A48: $00
    nop                                           ; $7A49: $00
    nop                                           ; $7A4A: $00
    nop                                           ; $7A4B: $00
    nop                                           ; $7A4C: $00
    nop                                           ; $7A4D: $00
    nop                                           ; $7A4E: $00
    nop                                           ; $7A4F: $00
    nop                                           ; $7A50: $00
    nop                                           ; $7A51: $00
    nop                                           ; $7A52: $00
    nop                                           ; $7A53: $00
    nop                                           ; $7A54: $00
    nop                                           ; $7A55: $00
    nop                                           ; $7A56: $00
    nop                                           ; $7A57: $00
    nop                                           ; $7A58: $00
    nop                                           ; $7A59: $00
    nop                                           ; $7A5A: $00
    nop                                           ; $7A5B: $00
    nop                                           ; $7A5C: $00
    nop                                           ; $7A5D: $00
    nop                                           ; $7A5E: $00
    nop                                           ; $7A5F: $00
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

Call_021_7F40:
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
