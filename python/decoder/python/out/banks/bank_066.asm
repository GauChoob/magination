SECTION "ROM Bank $066", ROMX[$4000], BANK[$66]

    inc a                                         ; $4000: $3C
    inc e                                         ; $4001: $1C
    ld [bc], a                                    ; $4002: $02
    ld sp, $B828                                  ; $4003: $31 $28 $B8
    dec bc                                        ; $4006: $0B
    adc d                                         ; $4007: $8A
    db $10                                        ; $4008: $10
    ld b, $40                                     ; $4009: $06 $40
    sub h                                         ; $400B: $94
    sub h                                         ; $400C: $94
    sub e                                         ; $400D: $93
    nop                                           ; $400E: $00
    ld b, l                                       ; $400F: $45
    or [hl]                                       ; $4010: $B6
    db $10                                        ; $4011: $10
    ld b, $50                                     ; $4012: $06 $50
    sub h                                         ; $4014: $94
    and h                                         ; $4015: $A4
    sub e                                         ; $4016: $93
    nop                                           ; $4017: $00
    ld b, l                                       ; $4018: $45
    or [hl]                                       ; $4019: $B6
    db $10                                        ; $401A: $10
    ld b, $40                                     ; $401B: $06 $40
    sub h                                         ; $401D: $94
    sub h                                         ; $401E: $94
    sub e                                         ; $401F: $93
    nop                                           ; $4020: $00
    ld d, l                                       ; $4021: $55
    add l                                         ; $4022: $85
    db $10                                        ; $4023: $10
    ld [bc], a                                    ; $4024: $02
    ld bc, $8302                                  ; $4025: $01 $02 $83
    inc bc                                        ; $4028: $03
    inc bc                                        ; $4029: $03
    ld [bc], a                                    ; $402A: $02
    inc bc                                        ; $402B: $03
    inc b                                         ; $402C: $04
    add a                                         ; $402D: $87
    db $10                                        ; $402E: $10
    add d                                         ; $402F: $82
    ld [bc], a                                    ; $4030: $02
    and b                                         ; $4031: $A0
    db $10                                        ; $4032: $10
    ld b, $40                                     ; $4033: $06 $40
    sub h                                         ; $4035: $94
    sub h                                         ; $4036: $94
    sub e                                         ; $4037: $93
    nop                                           ; $4038: $00
    ld b, l                                       ; $4039: $45
    add l                                         ; $403A: $85
    db $10                                        ; $403B: $10
    ld [bc], a                                    ; $403C: $02
    ld de, $8312                                  ; $403D: $11 $12 $83
    inc de                                        ; $4040: $13
    inc bc                                        ; $4041: $03
    ld [de], a                                    ; $4042: $12
    inc de                                        ; $4043: $13
    inc d                                         ; $4044: $14
    add [hl]                                      ; $4045: $86
    db $10                                        ; $4046: $10
    inc b                                         ; $4047: $04
    ld de, $1212                                  ; $4048: $11 $12 $12
    dec h                                         ; $404B: $25
    sbc a                                         ; $404C: $9F
    db $10                                        ; $404D: $10
    ld b, $40                                     ; $404E: $06 $40
    sub h                                         ; $4050: $94
    and h                                         ; $4051: $A4
    sub e                                         ; $4052: $93
    nop                                           ; $4053: $00
    ld b, l                                       ; $4054: $45
    add h                                         ; $4055: $84
    db $10                                        ; $4056: $10
    ld [bc], a                                    ; $4057: $02
    jr nz, jr_066_407B                            ; $4058: $20 $21

    add [hl]                                      ; $405A: $86
    nop                                           ; $405B: $00
    ld [bc], a                                    ; $405C: $02
    inc h                                         ; $405D: $24
    inc d                                         ; $405E: $14
    add e                                         ; $405F: $83
    db $10                                        ; $4060: $10
    inc bc                                        ; $4061: $03
    ld bc, $2111                                  ; $4062: $01 $11 $21
    add d                                         ; $4065: $82
    nop                                           ; $4066: $00
    dec b                                         ; $4067: $05
    inc h                                         ; $4068: $24
    dec h                                         ; $4069: $25
    ld [bc], a                                    ; $406A: $02
    inc bc                                        ; $406B: $03
    inc b                                         ; $406C: $04
    sbc e                                         ; $406D: $9B
    db $10                                        ; $406E: $10
    rlca                                          ; $406F: $07
    ld d, b                                       ; $4070: $50
    sub h                                         ; $4071: $94
    sub h                                         ; $4072: $94
    sub e                                         ; $4073: $93
    nop                                           ; $4074: $00
    ld b, $25                                     ; $4075: $06 $25
    add d                                         ; $4077: $82
    inc bc                                        ; $4078: $03
    ld b, $20                                     ; $4079: $06 $20

jr_066_407B:
    ld hl, $6B00                                  ; $407B: $21 $00 $6B
    ld a, h                                       ; $407E: $7C
    ld a, l                                       ; $407F: $7D
    add d                                         ; $4080: $82
    nop                                           ; $4081: $00
    ld [$0016], sp                                ; $4082: $08 $16 $00
    inc h                                         ; $4085: $24
    dec h                                         ; $4086: $25
    ld [bc], a                                    ; $4087: $02
    inc bc                                        ; $4088: $03
    ld de, $8421                                  ; $4089: $11 $21 $84
    nop                                           ; $408C: $00
    ld b, $24                                     ; $408D: $06 $24
    ld [de], a                                    ; $408F: $12
    inc de                                        ; $4090: $13
    inc d                                         ; $4091: $14
    ld [bc], a                                    ; $4092: $02
    inc b                                         ; $4093: $04
    sub a                                         ; $4094: $97
    db $10                                        ; $4095: $10
    add d                                         ; $4096: $82
    inc bc                                        ; $4097: $03
    inc b                                         ; $4098: $04
    ld d, b                                       ; $4099: $50
    sub h                                         ; $409A: $94
    and h                                         ; $409B: $A4
    sub e                                         ; $409C: $93
    add d                                         ; $409D: $82
    nop                                           ; $409E: $00
    ld a, [bc]                                    ; $409F: $0A
    inc h                                         ; $40A0: $24
    inc de                                        ; $40A1: $13
    inc de                                        ; $40A2: $13
    ld hl, $8A00                                  ; $40A3: $21 $00 $8A
    adc e                                         ; $40A6: $8B
    adc h                                         ; $40A7: $8C
    adc l                                         ; $40A8: $8D
    adc [hl]                                      ; $40A9: $8E
    add h                                         ; $40AA: $84
    nop                                           ; $40AB: $00
    inc b                                         ; $40AC: $04
    inc h                                         ; $40AD: $24
    ld [de], a                                    ; $40AE: $12
    inc de                                        ; $40AF: $13
    ld hl, $0082                                  ; $40B0: $21 $82 $00
    ld [bc], a                                    ; $40B3: $02
    jr jr_066_40D0                                ; $40B4: $18 $1A

    add h                                         ; $40B6: $84
    nop                                           ; $40B7: $00
    inc bc                                        ; $40B8: $03
    inc h                                         ; $40B9: $24
    ld [de], a                                    ; $40BA: $12
    inc d                                         ; $40BB: $14
    add e                                         ; $40BC: $83
    ld [bc], a                                    ; $40BD: $02
    inc b                                         ; $40BE: $04
    ld de, $0214                                  ; $40BF: $11 $14 $02
    inc b                                         ; $40C2: $04
    adc a                                         ; $40C3: $8F
    db $10                                        ; $40C4: $10
    inc b                                         ; $40C5: $04
    jr nz, jr_066_40DB                            ; $40C6: $20 $13

    inc de                                        ; $40C8: $13
    ld [hl+], a                                   ; $40C9: $22
    add h                                         ; $40CA: $84
    sub h                                         ; $40CB: $94
    ld bc, $8426                                  ; $40CC: $01 $26 $84
    nop                                           ; $40CF: $00

jr_066_40D0:
    rlca                                          ; $40D0: $07
    sbc c                                         ; $40D1: $99
    sbc d                                         ; $40D2: $9A
    sbc e                                         ; $40D3: $9B
    sbc h                                         ; $40D4: $9C
    sbc l                                         ; $40D5: $9D
    sbc [hl]                                      ; $40D6: $9E
    sbc a                                         ; $40D7: $9F
    adc b                                         ; $40D8: $88
    nop                                           ; $40D9: $00
    inc b                                         ; $40DA: $04

jr_066_40DB:
    jr jr_066_40F9                                ; $40DB: $18 $1C

    inc c                                         ; $40DD: $0C
    ld a, [de]                                    ; $40DE: $1A
    add e                                         ; $40DF: $83
    add hl, bc                                    ; $40E0: $09
    add d                                         ; $40E1: $82
    nop                                           ; $40E2: $00
    ld bc, $8324                                  ; $40E3: $01 $24 $83
    ld [de], a                                    ; $40E6: $12
    inc b                                         ; $40E7: $04
    ld hl, $1224                                  ; $40E8: $21 $24 $12
    inc d                                         ; $40EB: $14
    adc [hl]                                      ; $40EC: $8E
    db $10                                        ; $40ED: $10
    ld [bc], a                                    ; $40EE: $02
    jr nz, jr_066_4112                            ; $40EF: $20 $21

    add e                                         ; $40F1: $83
    nop                                           ; $40F2: $00
    ld bc, $84A4                                  ; $40F3: $01 $A4 $84
    sub h                                         ; $40F6: $94
    add h                                         ; $40F7: $84
    nop                                           ; $40F8: $00

jr_066_40F9:
    rlca                                          ; $40F9: $07
    xor c                                         ; $40FA: $A9
    xor d                                         ; $40FB: $AA
    xor e                                         ; $40FC: $AB
    xor h                                         ; $40FD: $AC
    rst $28                                       ; $40FE: $EF
    xor [hl]                                      ; $40FF: $AE
    xor a                                         ; $4100: $AF
    add a                                         ; $4101: $87
    nop                                           ; $4102: $00
    add hl, bc                                    ; $4103: $09
    ld a, [bc]                                    ; $4104: $0A
    jr z, jr_066_4113                             ; $4105: $28 $0C

    dec bc                                        ; $4107: $0B
    jr z, jr_066_4118                             ; $4108: $28 $0E

    jr z, @+$0D                                   ; $410A: $28 $0B

    cpl                                           ; $410C: $2F
    adc b                                         ; $410D: $88
    nop                                           ; $410E: $00
    ld [bc], a                                    ; $410F: $02
    inc h                                         ; $4110: $24
    dec h                                         ; $4111: $25

jr_066_4112:
    adc d                                         ; $4112: $8A

jr_066_4113:
    db $10                                        ; $4113: $10
    inc b                                         ; $4114: $04
    ld bc, $1103                                  ; $4115: $01 $03 $11

jr_066_4118:
    ld hl, $0085                                  ; $4118: $21 $85 $00
    ld [bc], a                                    ; $411B: $02
    and h                                         ; $411C: $A4
    sub h                                         ; $411D: $94
    add d                                         ; $411E: $82
    and h                                         ; $411F: $A4
    add [hl]                                      ; $4120: $86
    nop                                           ; $4121: $00
    inc bc                                        ; $4122: $03
    cp e                                          ; $4123: $BB
    cp h                                          ; $4124: $BC
    cp l                                          ; $4125: $BD
    adc d                                         ; $4126: $8A
    nop                                           ; $4127: $00
    dec bc                                        ; $4128: $0B
    inc l                                         ; $4129: $2C
    inc e                                         ; $412A: $1C
    dec e                                         ; $412B: $1D
    inc c                                         ; $412C: $0C
    add hl, hl                                    ; $412D: $29
    ld c, $2E                                     ; $412E: $0E $2E
    nop                                           ; $4130: $00
    ld a, e                                       ; $4131: $7B
    ld a, h                                       ; $4132: $7C
    ld a, l                                       ; $4133: $7D
    add [hl]                                      ; $4134: $86
    nop                                           ; $4135: $00
    ld bc, $8935                                  ; $4136: $01 $35 $89
    db $10                                        ; $4139: $10
    rla                                           ; $413A: $17
    ld bc, $1311                                  ; $413B: $01 $11 $13
    ld hl, $A000                                  ; $413E: $21 $00 $A0
    and c                                         ; $4141: $A1
    db $F4                                        ; $4142: $F4
    and d                                         ; $4143: $A2
    and e                                         ; $4144: $A3
    nop                                           ; $4145: $00
    and h                                         ; $4146: $A4
    sub h                                         ; $4147: $94
    and h                                         ; $4148: $A4
    nop                                           ; $4149: $00
    and $E7                                       ; $414A: $E6 $E7
    sub d                                         ; $414C: $92
    and b                                         ; $414D: $A0
    and c                                         ; $414E: $A1
    or [hl]                                       ; $414F: $B6
    add [hl]                                      ; $4150: $86
    or a                                          ; $4151: $B7
    add d                                         ; $4152: $82
    db $F4                                        ; $4153: $F4
    inc bc                                        ; $4154: $03
    jp nc, $92A3                                  ; $4155: $D2 $A3 $92

    add [hl]                                      ; $4158: $86
    nop                                           ; $4159: $00
    dec bc                                        ; $415A: $0B
    ld [$2D1B], sp                                ; $415B: $08 $1B $2D
    dec c                                         ; $415E: $0D
    ld l, $00                                     ; $415F: $2E $00
    adc d                                         ; $4161: $8A
    adc e                                         ; $4162: $8B
    adc h                                         ; $4163: $8C
    adc l                                         ; $4164: $8D
    adc [hl]                                      ; $4165: $8E
    add l                                         ; $4166: $85
    nop                                           ; $4167: $00
    ld bc, $8945                                  ; $4168: $01 $45 $89
    db $10                                        ; $416B: $10
    ld [bc], a                                    ; $416C: $02
    ld de, $8321                                  ; $416D: $11 $21 $83
    nop                                           ; $4170: $00
    dec b                                         ; $4171: $05
    or b                                          ; $4172: $B0
    or c                                          ; $4173: $B1
    pop hl                                        ; $4174: $E1
    or d                                          ; $4175: $B2
    or e                                          ; $4176: $B3
    add d                                         ; $4177: $82
    nop                                           ; $4178: $00
    dec bc                                        ; $4179: $0B
    sub h                                         ; $417A: $94
    and h                                         ; $417B: $A4
    ld h, $F6                                     ; $417C: $26 $F6
    rst $30                                       ; $417E: $F7
    sub d                                         ; $417F: $92
    or b                                          ; $4180: $B0
    or c                                          ; $4181: $B1
    sub $88                                       ; $4182: $D6 $88
    rst $10                                       ; $4184: $D7
    add d                                         ; $4185: $82
    pop hl                                        ; $4186: $E1
    dec b                                         ; $4187: $05
    or d                                          ; $4188: $B2
    or e                                          ; $4189: $B3
    sub d                                         ; $418A: $92
    nop                                           ; $418B: $00
    dec d                                         ; $418C: $15
    add [hl]                                      ; $418D: $86
    nop                                           ; $418E: $00
    inc c                                         ; $418F: $0C
    dec de                                        ; $4190: $1B
    add hl, de                                    ; $4191: $19
    cpl                                           ; $4192: $2F
    sbc c                                         ; $4193: $99
    sbc d                                         ; $4194: $9A
    sbc e                                         ; $4195: $9B
    sbc h                                         ; $4196: $9C
    sbc l                                         ; $4197: $9D
    sbc [hl]                                      ; $4198: $9E
    sbc a                                         ; $4199: $9F
    nop                                           ; $419A: $00
    ld d, $82                                     ; $419B: $16 $82
    nop                                           ; $419D: $00
    ld bc, $8955                                  ; $419E: $01 $55 $89
    db $10                                        ; $41A1: $10
    ld bc, $8430                                  ; $41A2: $01 $30 $84
    nop                                           ; $41A5: $00
    dec b                                         ; $41A6: $05
    ret nz                                        ; $41A7: $C0

    pop bc                                        ; $41A8: $C1
    pop af                                        ; $41A9: $F1
    jp nz, $82C3                                  ; $41AA: $C2 $C3 $82

    nop                                           ; $41AD: $00
    add e                                         ; $41AE: $83
    sub h                                         ; $41AF: $94
    add d                                         ; $41B0: $82
    ld [$9203], a                                 ; $41B1: $EA $03 $92
    or b                                          ; $41B4: $B0
    or c                                          ; $41B5: $B1
    add l                                         ; $41B6: $85
    pop hl                                        ; $41B7: $E1
    inc bc                                        ; $41B8: $03
    or d                                          ; $41B9: $B2
    or e                                          ; $41BA: $B3
    sub d                                         ; $41BB: $92
    adc c                                         ; $41BC: $89
    nop                                           ; $41BD: $00
    add hl, bc                                    ; $41BE: $09
    ld [$A900], sp                                ; $41BF: $08 $00 $A9
    xor d                                         ; $41C2: $AA
    xor e                                         ; $41C3: $AB
    xor h                                         ; $41C4: $AC
    rst $28                                       ; $41C5: $EF
    xor [hl]                                      ; $41C6: $AE
    xor a                                         ; $41C7: $AF
    add e                                         ; $41C8: $83
    nop                                           ; $41C9: $00
    ld [bc], a                                    ; $41CA: $02
    ld h, h                                       ; $41CB: $64
    ld h, l                                       ; $41CC: $65
    adc c                                         ; $41CD: $89
    db $10                                        ; $41CE: $10
    ld bc, $8540                                  ; $41CF: $01 $40 $85
    nop                                           ; $41D2: $00
    inc bc                                        ; $41D3: $03
    sub [hl]                                      ; $41D4: $96
    cp h                                          ; $41D5: $BC
    sbc b                                         ; $41D6: $98
    add e                                         ; $41D7: $83
    nop                                           ; $41D8: $00
    add d                                         ; $41D9: $82
    sub h                                         ; $41DA: $94
    ld b, $A4                                     ; $41DB: $06 $A4
    nop                                           ; $41DD: $00
    nop                                           ; $41DE: $00
    sub d                                         ; $41DF: $92
    ret nz                                        ; $41E0: $C0

    pop bc                                        ; $41E1: $C1
    add l                                         ; $41E2: $85
    pop af                                        ; $41E3: $F1
    inc bc                                        ; $41E4: $03
    jp nz, $92C3                                  ; $41E5: $C2 $C3 $92

    adc h                                         ; $41E8: $8C
    nop                                           ; $41E9: $00
    dec b                                         ; $41EA: $05
    cp d                                          ; $41EB: $BA
    cp e                                          ; $41EC: $BB
    cp h                                          ; $41ED: $BC
    cp l                                          ; $41EE: $BD
    cp [hl]                                       ; $41EF: $BE
    add h                                         ; $41F0: $84
    nop                                           ; $41F1: $00
    ld bc, $8A55                                  ; $41F2: $01 $55 $8A
    db $10                                        ; $41F5: $10
    ld bc, $8550                                  ; $41F6: $01 $50 $85
    nop                                           ; $41F9: $00
    ld c, $B6                                     ; $41FA: $0E $B6
    add [hl]                                      ; $41FC: $86
    or a                                          ; $41FD: $B7
    scf                                           ; $41FE: $37
    jr c, jr_066_4201                             ; $41FF: $38 $00

jr_066_4201:
    and h                                         ; $4201: $A4
    sub h                                         ; $4202: $94
    and h                                         ; $4203: $A4
    ld h, $00                                     ; $4204: $26 $00
    sub d                                         ; $4206: $92
    nop                                           ; $4207: $00
    sub [hl]                                      ; $4208: $96
    add l                                         ; $4209: $85
    ld a, b                                       ; $420A: $78
    inc bc                                        ; $420B: $03
    or a                                          ; $420C: $B7
    nop                                           ; $420D: $00
    sub d                                         ; $420E: $92
    add e                                         ; $420F: $83
    nop                                           ; $4210: $00
    rlca                                          ; $4211: $07
    and b                                         ; $4212: $A0
    and c                                         ; $4213: $A1
    db $F4                                        ; $4214: $F4
    and d                                         ; $4215: $A2
    and e                                         ; $4216: $A3
    nop                                           ; $4217: $00
    dec d                                         ; $4218: $15
    add d                                         ; $4219: $82
    nop                                           ; $421A: $00
    dec b                                         ; $421B: $05
    jp z, $CCCB                                   ; $421C: $CA $CB $CC

    call $84CE                                    ; $421F: $CD $CE $84
    nop                                           ; $4222: $00
    ld bc, $8A55                                  ; $4223: $01 $55 $8A
    db $10                                        ; $4226: $10
    ld bc, $8540                                  ; $4227: $01 $40 $85
    nop                                           ; $422A: $00
    dec b                                         ; $422B: $05
    or [hl]                                       ; $422C: $B6
    add [hl]                                      ; $422D: $86
    sbc b                                         ; $422E: $98
    ld b, a                                       ; $422F: $47
    ld c, b                                       ; $4230: $48
    add d                                         ; $4231: $82
    nop                                           ; $4232: $00
    rrca                                          ; $4233: $0F

jr_066_4234:
    sub e                                         ; $4234: $93
    sub h                                         ; $4235: $94
    sub h                                         ; $4236: $94
    nop                                           ; $4237: $00
    sub c                                         ; $4238: $91
    nop                                           ; $4239: $00
    sub [hl]                                      ; $423A: $96
    ld a, [$8697]                                 ; $423B: $FA $97 $86
    add a                                         ; $423E: $87
    add [hl]                                      ; $423F: $86
    sbc b                                         ; $4240: $98
    nop                                           ; $4241: $00
    sub d                                         ; $4242: $92
    add e                                         ; $4243: $83
    nop                                           ; $4244: $00
    dec b                                         ; $4245: $05
    or b                                          ; $4246: $B0
    or c                                          ; $4247: $B1
    pop hl                                        ; $4248: $E1
    or d                                          ; $4249: $B2
    or e                                          ; $424A: $B3
    add h                                         ; $424B: $84
    nop                                           ; $424C: $00
    dec b                                         ; $424D: $05
    jp c, $DCDB                                   ; $424E: $DA $DB $DC

    db $DD                                        ; $4251: $DD
    sbc $83                                       ; $4252: $DE $83
    nop                                           ; $4254: $00
    ld [bc], a                                    ; $4255: $02
    ld h, h                                       ; $4256: $64
    ld h, l                                       ; $4257: $65
    adc d                                         ; $4258: $8A
    db $10                                        ; $4259: $10
    ld bc, $8550                                  ; $425A: $01 $50 $85
    nop                                           ; $425D: $00
    dec b                                         ; $425E: $05
    sub [hl]                                      ; $425F: $96
    sub a                                         ; $4260: $97
    sbc b                                         ; $4261: $98
    ld d, a                                       ; $4262: $57
    ld e, b                                       ; $4263: $58
    add d                                         ; $4264: $82
    nop                                           ; $4265: $00
    add hl, bc                                    ; $4266: $09
    and l                                         ; $4267: $A5
    sub h                                         ; $4268: $94
    and h                                         ; $4269: $A4
    nop                                           ; $426A: $00
    ld d, $00                                     ; $426B: $16 $00
    and [hl]                                      ; $426D: $A6
    halt                                          ; $426E: $76
    and a                                         ; $426F: $A7
    add e                                         ; $4270: $83
    ld [hl], a                                    ; $4271: $77
    inc bc                                        ; $4272: $03
    xor b                                         ; $4273: $A8
    nop                                           ; $4274: $00
    sub c                                         ; $4275: $91
    add e                                         ; $4276: $83
    nop                                           ; $4277: $00
    dec b                                         ; $4278: $05
    ret nz                                        ; $4279: $C0

    pop bc                                        ; $427A: $C1
    pop af                                        ; $427B: $F1
    jp nz, $84C3                                  ; $427C: $C2 $C3 $84

    nop                                           ; $427F: $00
    dec b                                         ; $4280: $05
    ld [$ECEB], a                                 ; $4281: $EA $EB $EC
    db $ED                                        ; $4284: $ED
    xor $83                                       ; $4285: $EE $83
    nop                                           ; $4287: $00
    rlca                                          ; $4288: $07
    ld b, l                                       ; $4289: $45
    db $10                                        ; $428A: $10
    db $10                                        ; $428B: $10
    ld bc, $0302                                  ; $428C: $01 $02 $03
    inc b                                         ; $428F: $04
    add l                                         ; $4290: $85
    db $10                                        ; $4291: $10
    ld c, $40                                     ; $4292: $0E $40
    nop                                           ; $4294: $00
    nop                                           ; $4295: $00
    ld sp, $0032                                  ; $4296: $31 $32 $00
    and [hl]                                      ; $4299: $A6
    and a                                         ; $429A: $A7
    xor b                                         ; $429B: $A8
    ld h, a                                       ; $429C: $67
    ld l, b                                       ; $429D: $68
    nop                                           ; $429E: $00
    sub e                                         ; $429F: $93
    and h                                         ; $42A0: $A4
    add d                                         ; $42A1: $82
    and l                                         ; $42A2: $A5
    ld bc, $8494                                  ; $42A3: $01 $94 $84
    nop                                           ; $42A6: $00
    ld bc, $8383                                  ; $42A7: $01 $83 $83
    nop                                           ; $42AA: $00
    inc bc                                        ; $42AB: $03
    ld [hl], $37                                  ; $42AC: $36 $37
    jr c, jr_066_4234                             ; $42AE: $38 $84

    nop                                           ; $42B0: $00
    inc bc                                        ; $42B1: $03
    sub [hl]                                      ; $42B2: $96
    sub a                                         ; $42B3: $97
    sbc b                                         ; $42B4: $98
    add e                                         ; $42B5: $83
    nop                                           ; $42B6: $00
    ld bc, $8323                                  ; $42B7: $01 $23 $83
    nop                                           ; $42BA: $00
    ld bc, $8383                                  ; $42BB: $01 $83 $83
    nop                                           ; $42BE: $00
    add hl, bc                                    ; $42BF: $09
    ld h, $00                                     ; $42C0: $26 $00
    ld b, $25                                     ; $42C2: $06 $25
    ld [bc], a                                    ; $42C4: $02
    ld de, $1312                                  ; $42C5: $11 $12 $13
    inc d                                         ; $42C8: $14
    add e                                         ; $42C9: $83
    inc bc                                        ; $42CA: $03
    add d                                         ; $42CB: $82
    db $10                                        ; $42CC: $10
    dec b                                         ; $42CD: $05
    ld d, b                                       ; $42CE: $50
    nop                                           ; $42CF: $00
    ld d, $41                                     ; $42D0: $16 $41
    ld b, d                                       ; $42D2: $42
    add l                                         ; $42D3: $85
    nop                                           ; $42D4: $00
    ld [bc], a                                    ; $42D5: $02
    sub e                                         ; $42D6: $93
    sub h                                         ; $42D7: $94
    add d                                         ; $42D8: $82
    and l                                         ; $42D9: $A5
    inc b                                         ; $42DA: $04
    sub h                                         ; $42DB: $94
    sub e                                         ; $42DC: $93
    and h                                         ; $42DD: $A4
    sub h                                         ; $42DE: $94
    add e                                         ; $42DF: $83
    nop                                           ; $42E0: $00
    ld bc, $8393                                  ; $42E1: $01 $93 $83
    nop                                           ; $42E4: $00
    inc bc                                        ; $42E5: $03
    ld b, [hl]                                    ; $42E6: $46
    ld b, a                                       ; $42E7: $47
    ld c, b                                       ; $42E8: $48
    add h                                         ; $42E9: $84
    nop                                           ; $42EA: $00
    inc bc                                        ; $42EB: $03
    and [hl]                                      ; $42EC: $A6
    and a                                         ; $42ED: $A7
    xor b                                         ; $42EE: $A8
    add e                                         ; $42EF: $83
    nop                                           ; $42F0: $00
    ld bc, $8333                                  ; $42F1: $01 $33 $83
    nop                                           ; $42F4: $00
    ld bc, $8693                                  ; $42F5: $01 $93 $86
    nop                                           ; $42F8: $00
    inc bc                                        ; $42F9: $03
    inc h                                         ; $42FA: $24
    ld [de], a                                    ; $42FB: $12
    ld hl, $0082                                  ; $42FC: $21 $82 $00
    ld bc, $8324                                  ; $42FF: $01 $24 $83
    inc de                                        ; $4302: $13
    add d                                         ; $4303: $82
    db $10                                        ; $4304: $10
    dec b                                         ; $4305: $05
    ld b, b                                       ; $4306: $40
    nop                                           ; $4307: $00
    nop                                           ; $4308: $00
    ld d, c                                       ; $4309: $51
    ld d, d                                       ; $430A: $52
    adc c                                         ; $430B: $89
    nop                                           ; $430C: $00
    inc b                                         ; $430D: $04
    and h                                         ; $430E: $A4
    sub h                                         ; $430F: $94
    sub h                                         ; $4310: $94
    and h                                         ; $4311: $A4
    add e                                         ; $4312: $83
    nop                                           ; $4313: $00
    rlca                                          ; $4314: $07
    sub h                                         ; $4315: $94
    nop                                           ; $4316: $00
    rla                                           ; $4317: $17
    nop                                           ; $4318: $00
    ld d, [hl]                                    ; $4319: $56
    ld d, a                                       ; $431A: $57
    ld e, b                                       ; $431B: $58
    add d                                         ; $431C: $82
    nop                                           ; $431D: $00
    inc b                                         ; $431E: $04
    ld d, $00                                     ; $431F: $16 $00
    nop                                           ; $4321: $00
    add h                                         ; $4322: $84
    add h                                         ; $4323: $84
    nop                                           ; $4324: $00
    ld bc, $8343                                  ; $4325: $01 $43 $83
    nop                                           ; $4328: $00
    ld bc, $8F94                                  ; $4329: $01 $94 $8F
    nop                                           ; $432C: $00
    add d                                         ; $432D: $82
    inc bc                                        ; $432E: $03
    ld bc, $8B50                                  ; $432F: $01 $50 $8B
    add c                                         ; $4332: $81
    rlca                                          ; $4333: $07
    sub b                                         ; $4334: $90
    nop                                           ; $4335: $00
    nop                                           ; $4336: $00
    sub e                                         ; $4337: $93
    sub h                                         ; $4338: $94
    and h                                         ; $4339: $A4
    sub h                                         ; $433A: $94
    add d                                         ; $433B: $82
    nop                                           ; $433C: $00
    ld bc, $83A5                                  ; $433D: $01 $A5 $83
    nop                                           ; $4340: $00
    inc bc                                        ; $4341: $03
    ld h, [hl]                                    ; $4342: $66
    ld h, a                                       ; $4343: $67
    ld l, b                                       ; $4344: $68
    add l                                         ; $4345: $85
    nop                                           ; $4346: $00
    ld bc, $8494                                  ; $4347: $01 $94 $84
    nop                                           ; $434A: $00
    ld bc, $8353                                  ; $434B: $01 $53 $83
    nop                                           ; $434E: $00
    ld bc, $8594                                  ; $434F: $01 $94 $85
    nop                                           ; $4352: $00
    add e                                         ; $4353: $83
    sub e                                         ; $4354: $93
    ld [bc], a                                    ; $4355: $02
    sub h                                         ; $4356: $94
    sub e                                         ; $4357: $93
    add d                                         ; $4358: $82
    sub h                                         ; $4359: $94
    add e                                         ; $435A: $83
    nop                                           ; $435B: $00
    add d                                         ; $435C: $82
    inc de                                        ; $435D: $13
    ld bc, $8722                                  ; $435E: $01 $22 $87
    nop                                           ; $4361: $00
    add hl, bc                                    ; $4362: $09
    ld l, e                                       ; $4363: $6B
    ld l, h                                       ; $4364: $6C
    ld l, l                                       ; $4365: $6D
    nop                                           ; $4366: $00
    add c                                         ; $4367: $81
    sub b                                         ; $4368: $90
    nop                                           ; $4369: $00
    and h                                         ; $436A: $A4
    and l                                         ; $436B: $A5
    add e                                         ; $436C: $83
    and h                                         ; $436D: $A4
    add d                                         ; $436E: $82
    sub h                                         ; $436F: $94
    ld bc, $8493                                  ; $4370: $01 $93 $84
    and h                                         ; $4373: $A4
    add e                                         ; $4374: $83
    sub h                                         ; $4375: $94
    ld bc, $8393                                  ; $4376: $01 $93 $83
    and h                                         ; $4379: $A4
    ld bc, $8794                                  ; $437A: $01 $94 $87
    nop                                           ; $437D: $00
    dec b                                         ; $437E: $05
    sub h                                         ; $437F: $94
    nop                                           ; $4380: $00
    sub e                                         ; $4381: $93
    sub h                                         ; $4382: $94
    sub e                                         ; $4383: $93
    add h                                         ; $4384: $84
    sub h                                         ; $4385: $94
    add h                                         ; $4386: $84
    and h                                         ; $4387: $A4
    inc bc                                        ; $4388: $03
    sub h                                         ; $4389: $94
    sub e                                         ; $438A: $93
    sub h                                         ; $438B: $94
    add h                                         ; $438C: $84
    nop                                           ; $438D: $00
    ld bc, $8416                                  ; $438E: $01 $16 $84
    nop                                           ; $4391: $00
    rlca                                          ; $4392: $07
    adc d                                         ; $4393: $8A
    adc e                                         ; $4394: $8B
    cp a                                          ; $4395: $BF
    adc l                                         ; $4396: $8D
    adc [hl]                                      ; $4397: $8E
    rla                                           ; $4398: $17
    sub b                                         ; $4399: $90
    add d                                         ; $439A: $82
    nop                                           ; $439B: $00
    ld bc, $92A4                                  ; $439C: $01 $A4 $92
    sub h                                         ; $439F: $94
    inc b                                         ; $43A0: $04
    sub e                                         ; $43A1: $93
    sub h                                         ; $43A2: $94
    sub e                                         ; $43A3: $93
    sub h                                         ; $43A4: $94
    add d                                         ; $43A5: $82
    nop                                           ; $43A6: $00
    inc bc                                        ; $43A7: $03
    sub e                                         ; $43A8: $93
    and l                                         ; $43A9: $A5
    and l                                         ; $43AA: $A5
    add d                                         ; $43AB: $82
    sub h                                         ; $43AC: $94
    ld bc, $83A4                                  ; $43AD: $01 $A4 $83
    and l                                         ; $43B0: $A5
    add l                                         ; $43B1: $85
    nop                                           ; $43B2: $00
    add e                                         ; $43B3: $83
    and h                                         ; $43B4: $A4
    add [hl]                                      ; $43B5: $86
    nop                                           ; $43B6: $00
    ld a, [bc]                                    ; $43B7: $0A
    ld d, $00                                     ; $43B8: $16 $00
    sbc c                                         ; $43BA: $99
    sbc d                                         ; $43BB: $9A
    sbc e                                         ; $43BC: $9B
    sbc h                                         ; $43BD: $9C
    sbc l                                         ; $43BE: $9D
    sbc [hl]                                      ; $43BF: $9E
    sbc a                                         ; $43C0: $9F
    sub b                                         ; $43C1: $90
    add e                                         ; $43C2: $83
    nop                                           ; $43C3: $00
    add d                                         ; $43C4: $82
    and h                                         ; $43C5: $A4
    ld [bc], a                                    ; $43C6: $02
    sub h                                         ; $43C7: $94
    and l                                         ; $43C8: $A5
    add l                                         ; $43C9: $85
    sub h                                         ; $43CA: $94
    ld bc, $84A4                                  ; $43CB: $01 $A4 $84
    sub h                                         ; $43CE: $94
    dec b                                         ; $43CF: $05
    and l                                         ; $43D0: $A5
    and h                                         ; $43D1: $A4
    and l                                         ; $43D2: $A5
    and h                                         ; $43D3: $A4
    and l                                         ; $43D4: $A5
    add e                                         ; $43D5: $83
    sub h                                         ; $43D6: $94
    add d                                         ; $43D7: $82
    and l                                         ; $43D8: $A5
    add h                                         ; $43D9: $84
    sub h                                         ; $43DA: $94
    ld bc, $85A5                                  ; $43DB: $01 $A5 $85
    nop                                           ; $43DE: $00
    dec b                                         ; $43DF: $05
    ld h, h                                       ; $43E0: $64
    dec b                                         ; $43E1: $05
    ld [hl], d                                    ; $43E2: $72
    ld d, h                                       ; $43E3: $54
    ld h, c                                       ; $43E4: $61
    adc d                                         ; $43E5: $8A
    nop                                           ; $43E6: $00
    inc c                                         ; $43E7: $0C
    xor c                                         ; $43E8: $A9
    xor d                                         ; $43E9: $AA
    xor e                                         ; $43EA: $AB
    rst $28                                       ; $43EB: $EF
    xor l                                         ; $43EC: $AD
    xor [hl]                                      ; $43ED: $AE
    xor a                                         ; $43EE: $AF
    sub b                                         ; $43EF: $90
    nop                                           ; $43F0: $00
    ld [hl], $37                                  ; $43F1: $36 $37
    jr c, @-$7B                                   ; $43F3: $38 $83

    nop                                           ; $43F5: $00
    add h                                         ; $43F6: $84
    sub h                                         ; $43F7: $94
    inc bc                                        ; $43F8: $03
    and l                                         ; $43F9: $A5
    nop                                           ; $43FA: $00
    sub d                                         ; $43FB: $92
    add e                                         ; $43FC: $83
    add c                                         ; $43FD: $81
    add [hl]                                      ; $43FE: $86
    nop                                           ; $43FF: $00
    add [hl]                                      ; $4400: $86
    sub h                                         ; $4401: $94
    ld bc, $84A5                                  ; $4402: $01 $A5 $84
    nop                                           ; $4405: $00
    inc b                                         ; $4406: $04
    ld h, h                                       ; $4407: $64
    dec b                                         ; $4408: $05
    ld [hl], d                                    ; $4409: $72
    ld [hl], h                                    ; $440A: $74
    add e                                         ; $440B: $83
    db $10                                        ; $440C: $10
    inc bc                                        ; $440D: $03
    ld [hl], c                                    ; $440E: $71
    ld [hl], e                                    ; $440F: $73
    ld [hl], e                                    ; $4410: $73
    adc c                                         ; $4411: $89
    nop                                           ; $4412: $00
    dec bc                                        ; $4413: $0B
    cp d                                          ; $4414: $BA
    cp e                                          ; $4415: $BB
    cp h                                          ; $4416: $BC
    cp l                                          ; $4417: $BD
    cp [hl]                                       ; $4418: $BE
    nop                                           ; $4419: $00
    sub b                                         ; $441A: $90
    nop                                           ; $441B: $00
    ld b, [hl]                                    ; $441C: $46
    ld b, a                                       ; $441D: $47
    ld c, b                                       ; $441E: $48
    add d                                         ; $441F: $82
    nop                                           ; $4420: $00
    ld bc, $8393                                  ; $4421: $01 $93 $83
    sub h                                         ; $4424: $94
    ld [bc], a                                    ; $4425: $02
    and l                                         ; $4426: $A5
    sub d                                         ; $4427: $92
    add d                                         ; $4428: $82
    add c                                         ; $4429: $81
    add e                                         ; $442A: $83
    nop                                           ; $442B: $00
    ld [bc], a                                    ; $442C: $02
    and $E7                                       ; $442D: $E6 $E7
    adc [hl]                                      ; $442F: $8E
    nop                                           ; $4430: $00
    ld [bc], a                                    ; $4431: $02
    ld h, h                                       ; $4432: $64
    ld h, l                                       ; $4433: $65
    adc c                                         ; $4434: $89
    db $10                                        ; $4435: $10
    inc bc                                        ; $4436: $03
    ld [hl], d                                    ; $4437: $72
    ld d, h                                       ; $4438: $54
    ld h, c                                       ; $4439: $61
    add [hl]                                      ; $443A: $86
    nop                                           ; $443B: $00
    dec bc                                        ; $443C: $0B
    jp z, $CCCB                                   ; $443D: $CA $CB $CC

    call $00CE                                    ; $4440: $CD $CE $00
    sub c                                         ; $4443: $91
    nop                                           ; $4444: $00
    ld d, [hl]                                    ; $4445: $56
    ld d, a                                       ; $4446: $57
    ld e, b                                       ; $4447: $58
    add d                                         ; $4448: $82
    nop                                           ; $4449: $00
    add h                                         ; $444A: $84
    sub h                                         ; $444B: $94
    ld [bc], a                                    ; $444C: $02
    nop                                           ; $444D: $00
    sub d                                         ; $444E: $92
    add h                                         ; $444F: $84
    nop                                           ; $4450: $00
    inc bc                                        ; $4451: $03
    ld l, h                                       ; $4452: $6C
    or $F7                                        ; $4453: $F6 $F7
    add l                                         ; $4455: $85
    nop                                           ; $4456: $00
    add d                                         ; $4457: $82
    add hl, bc                                    ; $4458: $09
    add [hl]                                      ; $4459: $86
    nop                                           ; $445A: $00
    ld [bc], a                                    ; $445B: $02
    ld h, h                                       ; $445C: $64
    ld h, l                                       ; $445D: $65
    adc h                                         ; $445E: $8C
    db $10                                        ; $445F: $10
    ld bc, $8650                                  ; $4460: $01 $50 $86
    nop                                           ; $4463: $00
    dec b                                         ; $4464: $05
    jp c, $DCDB                                   ; $4465: $DA $DB $DC

    db $DD                                        ; $4468: $DD
    sbc $83                                       ; $4469: $DE $83
    nop                                           ; $446B: $00
    inc bc                                        ; $446C: $03
    ld h, [hl]                                    ; $446D: $66
    ld h, a                                       ; $446E: $67
    ld l, b                                       ; $446F: $68
    add d                                         ; $4470: $82
    nop                                           ; $4471: $00
    add h                                         ; $4472: $84
    sub h                                         ; $4473: $94
    ld [bc], a                                    ; $4474: $02
    sub d                                         ; $4475: $92
    sub c                                         ; $4476: $91
    add d                                         ; $4477: $82
    nop                                           ; $4478: $00
    ld [bc], a                                    ; $4479: $02
    ld l, e                                       ; $447A: $6B
    adc e                                         ; $447B: $8B
    add e                                         ; $447C: $83
    adc h                                         ; $447D: $8C
    ld [bc], a                                    ; $447E: $02
    adc l                                         ; $447F: $8D
    adc [hl]                                      ; $4480: $8E
    add d                                         ; $4481: $82
    nop                                           ; $4482: $00
    ld b, $27                                     ; $4483: $06 $27
    ld e, $29                                     ; $4485: $1E $29
    ld a, [de]                                    ; $4487: $1A
    jr @+$2D                                      ; $4488: $18 $2B

    add d                                         ; $448A: $82
    nop                                           ; $448B: $00
    ld [bc], a                                    ; $448C: $02
    ld h, h                                       ; $448D: $64
    ld h, l                                       ; $448E: $65
    adc l                                         ; $448F: $8D
    db $10                                        ; $4490: $10
    ld [bc], a                                    ; $4491: $02
    ld h, b                                       ; $4492: $60
    ld h, c                                       ; $4493: $61
    add l                                         ; $4494: $85
    nop                                           ; $4495: $00
    dec b                                         ; $4496: $05
    ld [$ECEB], a                                 ; $4497: $EA $EB $EC
    db $ED                                        ; $449A: $ED
    xor $88                                       ; $449B: $EE $88
    nop                                           ; $449D: $00
    add d                                         ; $449E: $82
    sub h                                         ; $449F: $94
    inc bc                                        ; $44A0: $03
    and h                                         ; $44A1: $A4
    and l                                         ; $44A2: $A5
    sub d                                         ; $44A3: $92
    add d                                         ; $44A4: $82
    nop                                           ; $44A5: $00
    inc de                                        ; $44A6: $13
    adc d                                         ; $44A7: $8A
    adc e                                         ; $44A8: $8B
    sbc e                                         ; $44A9: $9B
    inc a                                         ; $44AA: $3C
    sbc h                                         ; $44AB: $9C
    dec sp                                        ; $44AC: $3B
    inc a                                         ; $44AD: $3C
    adc l                                         ; $44AE: $8D
    ccf                                           ; $44AF: $3F
    nop                                           ; $44B0: $00
    inc l                                         ; $44B1: $2C
    dec e                                         ; $44B2: $1D
    dec c                                         ; $44B3: $0D
    ld e, $0C                                     ; $44B4: $1E $0C
    add hl, hl                                    ; $44B6: $29
    dec hl                                        ; $44B7: $2B
    nop                                           ; $44B8: $00
    ld b, l                                       ; $44B9: $45
    adc a                                         ; $44BA: $8F
    db $10                                        ; $44BB: $10
    ld bc, $8640                                  ; $44BC: $01 $40 $86
    add c                                         ; $44BF: $81
    inc bc                                        ; $44C0: $03
    ei                                            ; $44C1: $FB
    db $FC                                        ; $44C2: $FC
    db $FD                                        ; $44C3: $FD
    add l                                         ; $44C4: $85
    nop                                           ; $44C5: $00
    ld b, $A4                                     ; $44C6: $06 $A4
    sub h                                         ; $44C8: $94
    sub h                                         ; $44C9: $94
    sub e                                         ; $44CA: $93
    sub h                                         ; $44CB: $94
    sub h                                         ; $44CC: $94
    add hl, de                                    ; $44CD: $19
    and h                                         ; $44CE: $A4
    nop                                           ; $44CF: $00
    sub d                                         ; $44D0: $92
    nop                                           ; $44D1: $00
    sbc c                                         ; $44D2: $99
    sbc d                                         ; $44D3: $9A
    rst $28                                       ; $44D4: $EF
    cp a                                          ; $44D5: $BF
    dec a                                         ; $44D6: $3D
    sbc h                                         ; $44D7: $9C
    inc a                                         ; $44D8: $3C
    sbc h                                         ; $44D9: $9C
    sbc l                                         ; $44DA: $9D
    ld c, a                                       ; $44DB: $4F
    sbc a                                         ; $44DC: $9F
    ld a, [bc]                                    ; $44DD: $0A
    ld e, $0E                                     ; $44DE: $1E $0E
    ld e, $0E                                     ; $44E0: $1E $0E
    dec c                                         ; $44E2: $0D
    ld e, $2F                                     ; $44E3: $1E $2F
    ld b, $25                                     ; $44E5: $06 $25
    adc [hl]                                      ; $44E7: $8E
    db $10                                        ; $44E8: $10
    ld bc, $8750                                  ; $44E9: $01 $50 $87
    nop                                           ; $44EC: $00
    inc bc                                        ; $44ED: $03
    ei                                            ; $44EE: $FB
    db $FC                                        ; $44EF: $FC
    db $FD                                        ; $44F0: $FD
    add a                                         ; $44F1: $87
    nop                                           ; $44F2: $00
    ld [bc], a                                    ; $44F3: $02
    and h                                         ; $44F4: $A4
    sub h                                         ; $44F5: $94
    add d                                         ; $44F6: $82
    and h                                         ; $44F7: $A4
    jr jr_066_44FA                                ; $44F8: $18 $00

jr_066_44FA:
    sub d                                         ; $44FA: $92
    nop                                           ; $44FB: $00
    xor c                                         ; $44FC: $A9
    xor d                                         ; $44FD: $AA
    ld c, e                                       ; $44FE: $4B
    rst $28                                       ; $44FF: $EF
    cp a                                          ; $4500: $BF
    dec sp                                        ; $4501: $3B
    xor l                                         ; $4502: $AD
    cp a                                          ; $4503: $BF
    rst $28                                       ; $4504: $EF
    ld e, a                                       ; $4505: $5F
    xor a                                         ; $4506: $AF
    ld a, [bc]                                    ; $4507: $0A
    inc c                                         ; $4508: $0C
    ld e, $29                                     ; $4509: $1E $29
    ld e, $2A                                     ; $450B: $1E $2A
    ld e, $2F                                     ; $450D: $1E $2F
    nop                                           ; $450F: $00
    ld b, l                                       ; $4510: $45
    adc [hl]                                      ; $4511: $8E
    db $10                                        ; $4512: $10
    ld [bc], a                                    ; $4513: $02
    ld h, b                                       ; $4514: $60
    ld h, c                                       ; $4515: $61
    add h                                         ; $4516: $84
    nop                                           ; $4517: $00
    ld [bc], a                                    ; $4518: $02
    and b                                         ; $4519: $A0
    pop de                                        ; $451A: $D1
    add e                                         ; $451B: $83
    db $F4                                        ; $451C: $F4
    ld [bc], a                                    ; $451D: $02
    and d                                         ; $451E: $A2
    and e                                         ; $451F: $A3
    add e                                         ; $4520: $83
    nop                                           ; $4521: $00
    inc bc                                        ; $4522: $03
    ld a, $00                                     ; $4523: $3E $00
    nop                                           ; $4525: $00
    add d                                         ; $4526: $82
    sub h                                         ; $4527: $94
    inc bc                                        ; $4528: $03
    and h                                         ; $4529: $A4
    nop                                           ; $452A: $00
    sub d                                         ; $452B: $92
    add d                                         ; $452C: $82
    nop                                           ; $452D: $00
    ld [$BBBA], sp                                ; $452E: $08 $BA $BB
    cp c                                          ; $4531: $B9
    sbc b                                         ; $4532: $98
    adc b                                         ; $4533: $88
    sub [hl]                                      ; $4534: $96
    cp c                                          ; $4535: $B9
    cp l                                          ; $4536: $BD
    add e                                         ; $4537: $83
    nop                                           ; $4538: $00
    ld b, $08                                     ; $4539: $06 $08
    inc l                                         ; $453B: $2C
    dec c                                         ; $453C: $0D
    inc c                                         ; $453D: $0C
    ld l, $08                                     ; $453E: $2E $08
    add d                                         ; $4540: $82
    nop                                           ; $4541: $00
    ld bc, $8F45                                  ; $4542: $01 $45 $8F
    db $10                                        ; $4545: $10
    ld bc, $8450                                  ; $4546: $01 $50 $84
    nop                                           ; $4549: $00
    ld [bc], a                                    ; $454A: $02
    or b                                          ; $454B: $B0
    or c                                          ; $454C: $B1
    add e                                         ; $454D: $83
    pop hl                                        ; $454E: $E1
    ld b, $B2                                     ; $454F: $06 $B2
    or e                                          ; $4551: $B3
    nop                                           ; $4552: $00
    rla                                           ; $4553: $17
    nop                                           ; $4554: $00
    ld c, [hl]                                    ; $4555: $4E
    add d                                         ; $4556: $82
    nop                                           ; $4557: $00
    add d                                         ; $4558: $82
    sub h                                         ; $4559: $94
    inc bc                                        ; $455A: $03
    and h                                         ; $455B: $A4
    nop                                           ; $455C: $00
    sub d                                         ; $455D: $92
    add d                                         ; $455E: $82
    nop                                           ; $455F: $00
    add hl, bc                                    ; $4560: $09
    jp z, $C9CB                                   ; $4561: $CA $CB $C9

    sbc b                                         ; $4564: $98
    sub a                                         ; $4565: $97
    sub [hl]                                      ; $4566: $96
    ret                                           ; $4567: $C9


    call $84CE                                    ; $4568: $CD $CE $84
    nop                                           ; $456B: $00
    add d                                         ; $456C: $82
    ld [$0084], sp                                ; $456D: $08 $84 $00
    ld bc, $8F55                                  ; $4570: $01 $55 $8F
    db $10                                        ; $4573: $10
    ld [bc], a                                    ; $4574: $02
    ld h, b                                       ; $4575: $60
    ld h, c                                       ; $4576: $61
    add e                                         ; $4577: $83
    nop                                           ; $4578: $00
    ld [bc], a                                    ; $4579: $02
    ret nz                                        ; $457A: $C0

    pop bc                                        ; $457B: $C1
    add e                                         ; $457C: $83
    pop af                                        ; $457D: $F1
    ld [bc], a                                    ; $457E: $02
    jp nz, $83C3                                  ; $457F: $C2 $C3 $83

    nop                                           ; $4582: $00
    inc bc                                        ; $4583: $03
    ld e, [hl]                                    ; $4584: $5E
    nop                                           ; $4585: $00
    nop                                           ; $4586: $00
    add d                                         ; $4587: $82
    sub h                                         ; $4588: $94
    inc bc                                        ; $4589: $03
    and h                                         ; $458A: $A4
    nop                                           ; $458B: $00
    sub c                                         ; $458C: $91
    add d                                         ; $458D: $82
    nop                                           ; $458E: $00
    add hl, bc                                    ; $458F: $09
    jp c, $D9DB                                   ; $4590: $DA $DB $D9

    sbc b                                         ; $4593: $98
    call c, $D996                                 ; $4594: $DC $96 $D9
    db $DD                                        ; $4597: $DD
    sbc $89                                       ; $4598: $DE $89
    nop                                           ; $459A: $00
    ld [bc], a                                    ; $459B: $02
    ld h, h                                       ; $459C: $64
    ld h, l                                       ; $459D: $65
    sub b                                         ; $459E: $90
    db $10                                        ; $459F: $10
    ld [bc], a                                    ; $45A0: $02
    ld h, b                                       ; $45A1: $60
    ld h, c                                       ; $45A2: $61
    add e                                         ; $45A3: $83
    nop                                           ; $45A4: $00
    dec b                                         ; $45A5: $05
    sub [hl]                                      ; $45A6: $96
    add a                                         ; $45A7: $87
    sub a                                         ; $45A8: $97
    add a                                         ; $45A9: $87
    sbc b                                         ; $45AA: $98
    add h                                         ; $45AB: $84
    nop                                           ; $45AC: $00
    inc bc                                        ; $45AD: $03
    ld l, [hl]                                    ; $45AE: $6E
    nop                                           ; $45AF: $00
    nop                                           ; $45B0: $00
    add d                                         ; $45B1: $82
    sub h                                         ; $45B2: $94
    ld c, $A4                                     ; $45B3: $0E $A4
    nop                                           ; $45B5: $00
    nop                                           ; $45B6: $00
    rla                                           ; $45B7: $17
    nop                                           ; $45B8: $00
    ld [$E9EB], a                                 ; $45B9: $EA $EB $E9
    xor b                                         ; $45BC: $A8
    nop                                           ; $45BD: $00
    and [hl]                                      ; $45BE: $A6
    jp hl                                         ; $45BF: $E9


    db $ED                                        ; $45C0: $ED
    xor $82                                       ; $45C1: $EE $82
    nop                                           ; $45C3: $00
    inc bc                                        ; $45C4: $03
    ld h, h                                       ; $45C5: $64
    dec b                                         ; $45C6: $05
    ld [hl], e                                    ; $45C7: $73
    add h                                         ; $45C8: $84
    ld [hl], d                                    ; $45C9: $72
    ld bc, $9274                                  ; $45CA: $01 $74 $92
    db $10                                        ; $45CD: $10
    ld bc, $8350                                  ; $45CE: $01 $50 $83
    nop                                           ; $45D1: $00
    dec b                                         ; $45D2: $05
    and [hl]                                      ; $45D3: $A6
    ld [hl], a                                    ; $45D4: $77
    and a                                         ; $45D5: $A7
    ld [hl], a                                    ; $45D6: $77
    xor b                                         ; $45D7: $A8
    add h                                         ; $45D8: $84
    nop                                           ; $45D9: $00
    inc bc                                        ; $45DA: $03
    ld a, [hl]                                    ; $45DB: $7E
    nop                                           ; $45DC: $00
    nop                                           ; $45DD: $00
    add d                                         ; $45DE: $82
    sub h                                         ; $45DF: $94
    ld bc, $8EA4                                  ; $45E0: $01 $A4 $8E
    nop                                           ; $45E3: $00
    ld [bc], a                                    ; $45E4: $02
    ld h, h                                       ; $45E5: $64
    ld h, l                                       ; $45E6: $65
    sbc c                                         ; $45E7: $99
    db $10                                        ; $45E8: $10
    ld bc, $8E40                                  ; $45E9: $01 $40 $8E
    nop                                           ; $45EC: $00
    inc bc                                        ; $45ED: $03
    sub e                                         ; $45EE: $93
    sub h                                         ; $45EF: $94
    sub h                                         ; $45F0: $94
    add e                                         ; $45F1: $83
    and h                                         ; $45F2: $A4
    adc e                                         ; $45F3: $8B
    nop                                           ; $45F4: $00
    ld [bc], a                                    ; $45F5: $02
    ld h, h                                       ; $45F6: $64
    ld h, l                                       ; $45F7: $65
    sbc d                                         ; $45F8: $9A
    db $10                                        ; $45F9: $10
    inc bc                                        ; $45FA: $03
    ld d, b                                       ; $45FB: $50
    nop                                           ; $45FC: $00
    ld d, $88                                     ; $45FD: $16 $88
    nop                                           ; $45FF: $00
    inc bc                                        ; $4600: $03
    ld d, $00                                     ; $4601: $16 $00
    nop                                           ; $4603: $00
    add h                                         ; $4604: $84
    sub h                                         ; $4605: $94
    add d                                         ; $4606: $82
    and l                                         ; $4607: $A5
    adc h                                         ; $4608: $8C
    nop                                           ; $4609: $00
    ld bc, $9B45                                  ; $460A: $01 $45 $9B
    db $10                                        ; $460D: $10
    ld bc, $8E40                                  ; $460E: $01 $40 $8E
    nop                                           ; $4611: $00
    add e                                         ; $4612: $83
    sub h                                         ; $4613: $94
    ld bc, $8CA4                                  ; $4614: $01 $A4 $8C
    nop                                           ; $4617: $00
    ld [bc], a                                    ; $4618: $02
    ld h, h                                       ; $4619: $64
    ld h, l                                       ; $461A: $65
    sbc e                                         ; $461B: $9B
    db $10                                        ; $461C: $10
    ld bc, $8450                                  ; $461D: $01 $50 $84
    nop                                           ; $4620: $00
    ld [bc], a                                    ; $4621: $02
    and b                                         ; $4622: $A0
    and c                                         ; $4623: $A1
    add e                                         ; $4624: $83
    db $F4                                        ; $4625: $F4
    ld [bc], a                                    ; $4626: $02
    and d                                         ; $4627: $A2
    and e                                         ; $4628: $A3
    add e                                         ; $4629: $83
    nop                                           ; $462A: $00
    add e                                         ; $462B: $83
    sub h                                         ; $462C: $94
    ld bc, $83A5                                  ; $462D: $01 $A5 $83
    nop                                           ; $4630: $00
    inc b                                         ; $4631: $04
    ld h, $00                                     ; $4632: $26 $00
    ld h, h                                       ; $4634: $64
    dec b                                         ; $4635: $05
    add d                                         ; $4636: $82
    ld [hl], d                                    ; $4637: $72
    add e                                         ; $4638: $83
    ld [hl], e                                    ; $4639: $73
    ld bc, $9C74                                  ; $463A: $01 $74 $9C
    db $10                                        ; $463D: $10
    ld bc, $8440                                  ; $463E: $01 $40 $84
    nop                                           ; $4641: $00
    ld [bc], a                                    ; $4642: $02
    or b                                          ; $4643: $B0
    or c                                          ; $4644: $B1
    add e                                         ; $4645: $83
    pop hl                                        ; $4646: $E1
    ld [bc], a                                    ; $4647: $02
    or d                                          ; $4648: $B2
    or e                                          ; $4649: $B3
    add e                                         ; $464A: $83
    nop                                           ; $464B: $00
    add e                                         ; $464C: $83
    sub h                                         ; $464D: $94
    add l                                         ; $464E: $85
    nop                                           ; $464F: $00
    ld [bc], a                                    ; $4650: $02
    ld h, h                                       ; $4651: $64
    ld h, l                                       ; $4652: $65
    and e                                         ; $4653: $A3
    db $10                                        ; $4654: $10
    rlca                                          ; $4655: $07
    ld d, b                                       ; $4656: $50
    nop                                           ; $4657: $00
    nop                                           ; $4658: $00
    jr jr_066_468A                                ; $4659: $18 $2F

    or b                                          ; $465B: $B0
    or c                                          ; $465C: $B1
    add e                                         ; $465D: $83
    pop hl                                        ; $465E: $E1
    ld [bc], a                                    ; $465F: $02
    or d                                          ; $4660: $B2
    or e                                          ; $4661: $B3
    add d                                         ; $4662: $82
    nop                                           ; $4663: $00
    inc b                                         ; $4664: $04
    sub e                                         ; $4665: $93
    and h                                         ; $4666: $A4
    sub h                                         ; $4667: $94
    and l                                         ; $4668: $A5
    add l                                         ; $4669: $85
    nop                                           ; $466A: $00
    ld bc, $A445                                  ; $466B: $01 $45 $A4
    db $10                                        ; $466E: $10
    rlca                                          ; $466F: $07
    ld d, b                                       ; $4670: $50
    nop                                           ; $4671: $00
    ld a, [bc]                                    ; $4672: $0A
    add hl, de                                    ; $4673: $19
    ld a, [de]                                    ; $4674: $1A
    ret nz                                        ; $4675: $C0

    pop af                                        ; $4676: $F1
    add e                                         ; $4677: $83
    ld [c], a                                     ; $4678: $E2
    ld [bc], a                                    ; $4679: $02
    jp nz, $82C3                                  ; $467A: $C2 $C3 $82

    nop                                           ; $467D: $00
    ld [bc], a                                    ; $467E: $02
    and h                                         ; $467F: $A4
    and l                                         ; $4680: $A5
    add l                                         ; $4681: $85
    nop                                           ; $4682: $00
    inc bc                                        ; $4683: $03
    ld h, $00                                     ; $4684: $26 $00
    ld b, l                                       ; $4686: $45
    and h                                         ; $4687: $A4
    db $10                                        ; $4688: $10
    dec bc                                        ; $4689: $0B

jr_066_468A:
    ld h, b                                       ; $468A: $60
    ld h, c                                       ; $468B: $61
    ld a, [bc]                                    ; $468C: $0A
    jr z, jr_066_46AC                             ; $468D: $28 $1D

    cpl                                           ; $468F: $2F
    sub [hl]                                      ; $4690: $96
    adc b                                         ; $4691: $88
    sub a                                         ; $4692: $97
    add [hl]                                      ; $4693: $86
    sbc b                                         ; $4694: $98
    add a                                         ; $4695: $87
    nop                                           ; $4696: $00
    inc bc                                        ; $4697: $03
    ld [hl], $37                                  ; $4698: $36 $37
    jr c, @-$7C                                   ; $469A: $38 $82

    nop                                           ; $469C: $00
    ld bc, $A545                                  ; $469D: $01 $45 $A5
    db $10                                        ; $46A0: $10
    ld a, [bc]                                    ; $46A1: $0A
    ld d, b                                       ; $46A2: $50
    jr jr_066_46BE                                ; $46A3: $18 $19

    jr z, @+$31                                   ; $46A5: $28 $2F

    and [hl]                                      ; $46A7: $A6
    ld [hl], l                                    ; $46A8: $75
    and a                                         ; $46A9: $A7
    ld [hl], l                                    ; $46AA: $75
    xor b                                         ; $46AB: $A8

jr_066_46AC:
    add a                                         ; $46AC: $87
    nop                                           ; $46AD: $00
    ld b, $46                                     ; $46AE: $06 $46
    ld b, a                                       ; $46B0: $47
    ld c, b                                       ; $46B1: $48
    ld h, $00                                     ; $46B2: $26 $00
    ld d, l                                       ; $46B4: $55
    and l                                         ; $46B5: $A5
    db $10                                        ; $46B6: $10
    inc b                                         ; $46B7: $04
    ld d, b                                       ; $46B8: $50
    inc l                                         ; $46B9: $2C
    jr z, jr_066_46DB                             ; $46BA: $28 $1F

    adc l                                         ; $46BC: $8D
    nop                                           ; $46BD: $00

jr_066_46BE:
    ld b, $56                                     ; $46BE: $06 $56
    ld d, a                                       ; $46C0: $57
    ld e, b                                       ; $46C1: $58
    nop                                           ; $46C2: $00
    ld h, h                                       ; $46C3: $64
    ld h, l                                       ; $46C4: $65
    and l                                         ; $46C5: $A5
    db $10                                        ; $46C6: $10
    inc bc                                        ; $46C7: $03
    ld h, b                                       ; $46C8: $60
    ld h, c                                       ; $46C9: $61
    ld [$008E], sp                                ; $46CA: $08 $8E $00
    dec b                                         ; $46CD: $05
    ld h, [hl]                                    ; $46CE: $66
    ld h, a                                       ; $46CF: $67
    ld l, b                                       ; $46D0: $68
    ld h, h                                       ; $46D1: $64
    ld h, l                                       ; $46D2: $65
    and a                                         ; $46D3: $A7
    db $10                                        ; $46D4: $10
    ld bc, $8471                                  ; $46D5: $01 $71 $84
    ld [hl], e                                    ; $46D8: $73
    ld [bc], a                                    ; $46D9: $02
    ld [hl], d                                    ; $46DA: $72

jr_066_46DB:
    ld [hl], e                                    ; $46DB: $73
    add d                                         ; $46DC: $82
    ld [hl], d                                    ; $46DD: $72
    add e                                         ; $46DE: $83
    ld [hl], e                                    ; $46DF: $73
    ld [bc], a                                    ; $46E0: $02
    ld [hl], d                                    ; $46E1: $72
    ld [hl], e                                    ; $46E2: $73
    add l                                         ; $46E3: $85
    ld [hl], d                                    ; $46E4: $72
    ld bc, $C074                                  ; $46E5: $01 $74 $C0
    sbc b                                         ; $46E8: $98
    stop                                          ; $46E9: $10 $00
    ld a, [bc]                                    ; $46EB: $0A
    ld [hl], l                                    ; $46EC: $75
    add h                                         ; $46ED: $84
    sub e                                         ; $46EE: $93
    sub h                                         ; $46EF: $94
    add l                                         ; $46F0: $85
    add [hl]                                      ; $46F1: $86
    sub l                                         ; $46F2: $95
    sub [hl]                                      ; $46F3: $96
    add a                                         ; $46F4: $87
    adc b                                         ; $46F5: $88
    add d                                         ; $46F6: $82
    halt                                          ; $46F7: $76
    adc h                                         ; $46F8: $8C
    ld [hl+], a                                   ; $46F9: $22
    ld [de], a                                    ; $46FA: $12
    add [hl]                                      ; $46FB: $86
    add l                                         ; $46FC: $85
    sub [hl]                                      ; $46FD: $96
    sub l                                         ; $46FE: $95
    add h                                         ; $46FF: $84
    ld [hl], l                                    ; $4700: $75
    sub h                                         ; $4701: $94
    sub e                                         ; $4702: $93
    halt                                          ; $4703: $76
    adc e                                         ; $4704: $8B
    sbc d                                         ; $4705: $9A
    sbc e                                         ; $4706: $9B
    adc e                                         ; $4707: $8B
    halt                                          ; $4708: $76
    sbc e                                         ; $4709: $9B
    sbc d                                         ; $470A: $9A
    halt                                          ; $470B: $76
    adc c                                         ; $470C: $89
    add d                                         ; $470D: $82
    halt                                          ; $470E: $76
    inc b                                         ; $470F: $04
    adc d                                         ; $4710: $8A
    db $EC                                        ; $4711: $EC
    call z, $82FC                                 ; $4712: $CC $FC $82
    ld [hl], l                                    ; $4715: $75
    ld a, [bc]                                    ; $4716: $0A
    xor a                                         ; $4717: $AF
    ld [hl], l                                    ; $4718: $75
    call c, $83BC                                 ; $4719: $DC $BC $83
    ei                                            ; $471C: $FB
    ld [hl], l                                    ; $471D: $75
    inc c                                         ; $471E: $0C
    dec de                                        ; $471F: $1B
    inc e                                         ; $4720: $1C
    add h                                         ; $4721: $84
    ld [hl], l                                    ; $4722: $75
    rlca                                          ; $4723: $07
    add b                                         ; $4724: $80
    add c                                         ; $4725: $81
    sub b                                         ; $4726: $90
    sub c                                         ; $4727: $91
    add d                                         ; $4728: $82
    halt                                          ; $4729: $76
    sub d                                         ; $472A: $92
    add e                                         ; $472B: $83
    halt                                          ; $472C: $76
    ld [bc], a                                    ; $472D: $02
    sub d                                         ; $472E: $92
    halt                                          ; $472F: $76
    adc b                                         ; $4730: $88
    ld [hl+], a                                   ; $4731: $22
    add e                                         ; $4732: $83
    halt                                          ; $4733: $76
    ld de, $7692                                  ; $4734: $11 $92 $76
    add d                                         ; $4737: $82
    halt                                          ; $4738: $76
    sub d                                         ; $4739: $92
    add c                                         ; $473A: $81
    add b                                         ; $473B: $80
    sub c                                         ; $473C: $91
    sub b                                         ; $473D: $90
    xor d                                         ; $473E: $AA
    xor e                                         ; $473F: $AB
    cp d                                          ; $4740: $BA
    cp e                                          ; $4741: $BB
    xor e                                         ; $4742: $AB
    xor d                                         ; $4743: $AA
    cp e                                          ; $4744: $BB
    cp d                                          ; $4745: $BA
    add e                                         ; $4746: $83
    ld [hl], l                                    ; $4747: $75
    ld b, $AF                                     ; $4748: $06 $AF
    db $EC                                        ; $474A: $EC
    adc d                                         ; $474B: $8A
    db $FC                                        ; $474C: $FC
    ei                                            ; $474D: $FB
    adc c                                         ; $474E: $89
    add e                                         ; $474F: $83
    halt                                          ; $4750: $76
    ld [$DCBC], sp                                ; $4751: $08 $BC $DC
    call z, $2B83                                 ; $4754: $CC $83 $2B
    inc l                                         ; $4757: $2C
    dec sp                                        ; $4758: $3B
    inc a                                         ; $4759: $3C
    add h                                         ; $475A: $84
    ld [hl], l                                    ; $475B: $75
    ld [$A1A0], sp                                ; $475C: $08 $A0 $A1
    or b                                          ; $475F: $B0
    or c                                          ; $4760: $B1
    and d                                         ; $4761: $A2
    and e                                         ; $4762: $A3
    or d                                          ; $4763: $B2
    or e                                          ; $4764: $B3
    add d                                         ; $4765: $82
    halt                                          ; $4766: $76
    ld [bc], a                                    ; $4767: $02
    or h                                          ; $4768: $B4
    or l                                          ; $4769: $B5
    add d                                         ; $476A: $82
    halt                                          ; $476B: $76
    ld [bc], a                                    ; $476C: $02
    or [hl]                                       ; $476D: $B6
    or a                                          ; $476E: $B7
    add d                                         ; $476F: $82
    halt                                          ; $4770: $76
    ld [bc], a                                    ; $4771: $02
    cp b                                          ; $4772: $B8
    cp c                                          ; $4773: $B9
    add d                                         ; $4774: $82
    halt                                          ; $4775: $76
    ld b, b                                       ; $4776: $40
    ld d, h                                       ; $4777: $54
    or l                                          ; $4778: $B5
    or h                                          ; $4779: $B4
    and e                                         ; $477A: $A3
    and d                                         ; $477B: $A2
    or e                                          ; $477C: $B3
    or d                                          ; $477D: $B2
    and c                                         ; $477E: $A1
    and b                                         ; $477F: $A0
    or c                                          ; $4780: $B1
    or b                                          ; $4781: $B0
    jp z, $DACB                                   ; $4782: $CA $CB $DA

    db $DB                                        ; $4785: $DB
    set 1, d                                      ; $4786: $CB $CA
    db $DB                                        ; $4788: $DB
    jp c, $9897                                   ; $4789: $DA $97 $98

    and a                                         ; $478C: $A7
    xor b                                         ; $478D: $A8
    sbc c                                         ; $478E: $99
    res 5, c                                      ; $478F: $CB $A9

jr_066_4791:
    db $DB                                        ; $4791: $DB
    res 3, c                                      ; $4792: $CB $99
    db $DB                                        ; $4794: $DB
    xor c                                         ; $4795: $A9
    sbc b                                         ; $4796: $98
    sub a                                         ; $4797: $97
    xor b                                         ; $4798: $A8
    and a                                         ; $4799: $A7
    ld a, [bc]                                    ; $479A: $0A
    nop                                           ; $479B: $00
    ld a, [de]                                    ; $479C: $1A
    db $10                                        ; $479D: $10
    ld h, a                                       ; $479E: $67
    ld [hl], l                                    ; $479F: $75
    ld [hl], a                                    ; $47A0: $77
    ld [hl], l                                    ; $47A1: $75
    ret nz                                        ; $47A2: $C0

    pop bc                                        ; $47A3: $C1
    ret nc                                        ; $47A4: $D0

    pop de                                        ; $47A5: $D1
    jp nz, $D2C3                                  ; $47A6: $C2 $C3 $D2

    db $D3                                        ; $47A9: $D3
    call nz, $D4C5                                ; $47AA: $C4 $C5 $D4
    push de                                       ; $47AD: $D5
    add $C7                                       ; $47AE: $C6 $C7
    sub $D7                                       ; $47B0: $D6 $D7
    ret z                                         ; $47B2: $C8

    ret                                           ; $47B3: $C9


    ret c                                         ; $47B4: $D8

    reti                                          ; $47B5: $D9


    push bc                                       ; $47B6: $C5
    call nz, $D4D5                                ; $47B7: $C4 $D5 $D4
    jp $D3C2                                      ; $47BA: $C3 $C2 $D3


    jp nc, $C0C1                                  ; $47BD: $D2 $C1 $C0

    pop de                                        ; $47C0: $D1
    ret nc                                        ; $47C1: $D0

    ld [$FAEB], a                                 ; $47C2: $EA $EB $FA
    ld [hl], l                                    ; $47C5: $75
    db $EB                                        ; $47C6: $EB
    ld [$FA75], a                                 ; $47C7: $EA $75 $FA
    halt                                          ; $47CA: $76
    and h                                         ; $47CB: $A4
    add d                                         ; $47CC: $82
    halt                                          ; $47CD: $76
    add hl, bc                                    ; $47CE: $09
    and l                                         ; $47CF: $A5
    and [hl]                                      ; $47D0: $A6
    call z, $A6FC                                 ; $47D1: $CC $FC $A6
    and l                                         ; $47D4: $A5
    db $FC                                        ; $47D5: $FC
    ei                                            ; $47D6: $FB
    and h                                         ; $47D7: $A4
    add e                                         ; $47D8: $83
    halt                                          ; $47D9: $76
    inc b                                         ; $47DA: $04
    ld a, [hl+]                                   ; $47DB: $2A
    jr nz, jr_066_47DF                            ; $47DC: $20 $01

    ld [bc], a                                    ; $47DE: $02

jr_066_47DF:
    add l                                         ; $47DF: $85
    ld [hl], l                                    ; $47E0: $75
    rra                                           ; $47E1: $1F
    pop hl                                        ; $47E2: $E1
    ld [hl], l                                    ; $47E3: $75
    pop af                                        ; $47E4: $F1
    ld [c], a                                     ; $47E5: $E2
    db $E3                                        ; $47E6: $E3
    ld a, [c]                                     ; $47E7: $F2
    di                                            ; $47E8: $F3
    db $E4                                        ; $47E9: $E4
    push hl                                       ; $47EA: $E5
    db $F4                                        ; $47EB: $F4
    push af                                       ; $47EC: $F5
    and $E7                                       ; $47ED: $E6 $E7
    or $F7                                        ; $47EF: $F6 $F7
    add sp, -$17                                  ; $47F1: $E8 $E9
    ld hl, sp-$07                                 ; $47F3: $F8 $F9
    push hl                                       ; $47F5: $E5
    db $E4                                        ; $47F6: $E4
    push af                                       ; $47F7: $F5
    db $F4                                        ; $47F8: $F4
    db $E3                                        ; $47F9: $E3
    ld [c], a                                     ; $47FA: $E2
    di                                            ; $47FB: $F3
    ld a, [c]                                     ; $47FC: $F2
    pop hl                                        ; $47FD: $E1
    ld [hl], l                                    ; $47FE: $75
    pop af                                        ; $47FF: $F1
    ld [hl], l                                    ; $4800: $75
    sub b                                         ; $4801: $90
    ld [hl+], a                                   ; $4802: $22
    jr jr_066_4791                                ; $4803: $18 $8C

    adc l                                         ; $4805: $8D
    sbc h                                         ; $4806: $9C
    sbc l                                         ; $4807: $9D
    adc [hl]                                      ; $4808: $8E
    adc a                                         ; $4809: $8F
    sbc [hl]                                      ; $480A: $9E
    sbc a                                         ; $480B: $9F
    adc a                                         ; $480C: $8F
    adc [hl]                                      ; $480D: $8E
    sbc a                                         ; $480E: $9F
    sbc [hl]                                      ; $480F: $9E
    adc l                                         ; $4810: $8D
    adc h                                         ; $4811: $8C
    sbc l                                         ; $4812: $9D
    sbc h                                         ; $4813: $9C
    ld [hl], l                                    ; $4814: $75
    and c                                         ; $4815: $A1
    or b                                          ; $4816: $B0
    or c                                          ; $4817: $B1
    and c                                         ; $4818: $A1
    ld [hl], l                                    ; $4819: $75
    or c                                          ; $481A: $B1
    or b                                          ; $481B: $B0
    add h                                         ; $481C: $84
    ld [hl+], a                                   ; $481D: $22
    ld de, $0504                                  ; $481E: $11 $04 $05
    inc d                                         ; $4821: $14
    dec d                                         ; $4822: $15
    nop                                           ; $4823: $00
    ld bc, $1115                                  ; $4824: $01 $15 $11
    ld [bc], a                                    ; $4827: $02
    inc bc                                        ; $4828: $03
    ld [de], a                                    ; $4829: $12
    inc de                                        ; $482A: $13
    rlca                                          ; $482B: $07
    ld [$1817], sp                                ; $482C: $08 $17 $18
    add hl, bc                                    ; $482F: $09
    add e                                         ; $4830: $83
    ld [hl], l                                    ; $4831: $75
    inc c                                         ; $4832: $0C
    inc bc                                        ; $4833: $03
    ld [bc], a                                    ; $4834: $02
    inc de                                        ; $4835: $13
    ld [de], a                                    ; $4836: $12
    ld bc, $1100                                  ; $4837: $01 $00 $11
    dec d                                         ; $483A: $15
    dec b                                         ; $483B: $05
    inc b                                         ; $483C: $04
    dec d                                         ; $483D: $15
    inc d                                         ; $483E: $14
    add h                                         ; $483F: $84
    ld [hl+], a                                   ; $4840: $22

jr_066_4841:
    ld [bc], a                                    ; $4841: $02
    xor h                                         ; $4842: $AC
    xor l                                         ; $4843: $AD
    add d                                         ; $4844: $82
    halt                                          ; $4845: $76
    ld bc, $84AE                                  ; $4846: $01 $AE $84
    halt                                          ; $4849: $76
    dec b                                         ; $484A: $05
    xor [hl]                                      ; $484B: $AE
    halt                                          ; $484C: $76
    halt                                          ; $484D: $76
    xor l                                         ; $484E: $AD
    xor h                                         ; $484F: $AC
    add d                                         ; $4850: $82
    halt                                          ; $4851: $76
    ld a, [de]                                    ; $4852: $1A
    ld c, e                                       ; $4853: $4B
    ld c, h                                       ; $4854: $4C
    ld e, e                                       ; $4855: $5B
    ld e, h                                       ; $4856: $5C
    ld c, l                                       ; $4857: $4D
    ld c, [hl]                                    ; $4858: $4E
    ld e, l                                       ; $4859: $5D
    ld e, [hl]                                    ; $485A: $5E
    ld b, b                                       ; $485B: $40
    ld b, c                                       ; $485C: $41
    ld d, b                                       ; $485D: $50
    ld d, c                                       ; $485E: $51
    inc h                                         ; $485F: $24
    dec h                                         ; $4860: $25
    jr @+$1B                                      ; $4861: $18 $19

    jr nz, jr_066_4886                            ; $4863: $20 $21

    jr nc, jr_066_4898                            ; $4865: $30 $31

    dec e                                         ; $4867: $1D
    inc hl                                        ; $4868: $23
    ld [hl-], a                                   ; $4869: $32
    inc sp                                        ; $486A: $33
    ld [hl], l                                    ; $486B: $75
    add hl, bc                                    ; $486C: $09
    add d                                         ; $486D: $82
    ld [hl], l                                    ; $486E: $75
    inc d                                         ; $486F: $14
    ld [$1807], sp                                ; $4870: $08 $07 $18
    rla                                           ; $4873: $17
    inc hl                                        ; $4874: $23
    dec e                                         ; $4875: $1D
    inc sp                                        ; $4876: $33
    dec l                                         ; $4877: $2D
    ld hl, $3120                                  ; $4878: $21 $20 $31
    jr nc, jr_066_48A2                            ; $487B: $30 $25

    inc h                                         ; $487D: $24
    add hl, de                                    ; $487E: $19
    inc [hl]                                      ; $487F: $34
    ld b, c                                       ; $4880: $41
    ld b, b                                       ; $4881: $40
    ld d, c                                       ; $4882: $51
    ld d, b                                       ; $4883: $50
    add d                                         ; $4884: $82
    halt                                          ; $4885: $76

jr_066_4886:
    ld [bc], a                                    ; $4886: $02
    cp l                                          ; $4887: $BD
    cp [hl]                                       ; $4888: $BE
    add d                                         ; $4889: $82
    halt                                          ; $488A: $76
    ld bc, $84BF                                  ; $488B: $01 $BF $84
    halt                                          ; $488E: $76
    dec c                                         ; $488F: $0D
    cp a                                          ; $4890: $BF
    halt                                          ; $4891: $76
    halt                                          ; $4892: $76
    cp [hl]                                       ; $4893: $BE
    cp l                                          ; $4894: $BD
    ld l, e                                       ; $4895: $6B
    ld l, h                                       ; $4896: $6C
    ld a, e                                       ; $4897: $7B

jr_066_4898:
    ld a, h                                       ; $4898: $7C
    ld l, l                                       ; $4899: $6D
    ld l, [hl]                                    ; $489A: $6E
    ld a, l                                       ; $489B: $7D
    ld a, [hl]                                    ; $489C: $7E
    add h                                         ; $489D: $84
    ld [hl+], a                                   ; $489E: $22
    ld [bc], a                                    ; $489F: $02
    ld b, h                                       ; $48A0: $44
    ld b, l                                       ; $48A1: $45

jr_066_48A2:
    add d                                         ; $48A2: $82
    halt                                          ; $48A3: $76
    inc b                                         ; $48A4: $04
    ld h, b                                       ; $48A5: $60
    ld h, c                                       ; $48A6: $61
    inc d                                         ; $48A7: $14
    dec d                                         ; $48A8: $15
    add d                                         ; $48A9: $82
    ld de, $7582                                  ; $48AA: $11 $82 $75
    add h                                         ; $48AD: $84
    ld [hl+], a                                   ; $48AE: $22
    ld c, $06                                     ; $48AF: $0E $06
    rlca                                          ; $48B1: $07
    ld d, $17                                     ; $48B2: $16 $17
    ld [$1809], sp                                ; $48B4: $08 $09 $18
    add hl, de                                    ; $48B7: $19
    ld h, c                                       ; $48B8: $61
    ld h, b                                       ; $48B9: $60
    dec d                                         ; $48BA: $15
    inc d                                         ; $48BB: $14
    add hl, hl                                    ; $48BC: $29
    jr z, jr_066_4841                             ; $48BD: $28 $82

    halt                                          ; $48BF: $76
    add h                                         ; $48C0: $84
    ld [hl+], a                                   ; $48C1: $22
    rlca                                          ; $48C2: $07
    call $DDCE                                    ; $48C3: $CD $CE $DD
    sbc $CF                                       ; $48C6: $DE $CF
    halt                                          ; $48C8: $76
    rst $18                                       ; $48C9: $DF
    add d                                         ; $48CA: $82
    halt                                          ; $48CB: $76
    rrca                                          ; $48CC: $0F
    rst $08                                       ; $48CD: $CF
    halt                                          ; $48CE: $76
    rst $18                                       ; $48CF: $DF
    adc $CD                                       ; $48D0: $CE $CD
    sbc $DD                                       ; $48D2: $DE $DD
    ld [hl], l                                    ; $48D4: $75
    jr z, jr_066_494C                             ; $48D5: $28 $75

    jr c, jr_066_4902                             ; $48D7: $38 $29

    ld [hl], l                                    ; $48D9: $75
    add hl, sp                                    ; $48DA: $39
    ld a, [hl-]                                   ; $48DB: $3A
    add h                                         ; $48DC: $84
    ld [hl+], a                                   ; $48DD: $22
    ld [de], a                                    ; $48DE: $12
    inc e                                         ; $48DF: $1C
    dec e                                         ; $48E0: $1D
    inc l                                         ; $48E1: $2C
    dec l                                         ; $48E2: $2D
    ld hl, $3120                                  ; $48E3: $21 $20 $31
    jr nc, jr_066_48EE                            ; $48E6: $30 $06

    dec b                                         ; $48E8: $05
    ld [hl], l                                    ; $48E9: $75
    ld h, b                                       ; $48EA: $60
    ld c, a                                       ; $48EB: $4F
    ld l, a                                       ; $48EC: $6F
    ld [hl], b                                    ; $48ED: $70

jr_066_48EE:
    ld [hl], c                                    ; $48EE: $71
    ld h, $27                                     ; $48EF: $26 $27
    add d                                         ; $48F1: $82
    halt                                          ; $48F2: $76
    ld [bc], a                                    ; $48F3: $02
    ld b, h                                       ; $48F4: $44
    ld b, l                                       ; $48F5: $45
    add d                                         ; $48F6: $82
    halt                                          ; $48F7: $76
    ld [$2120], sp                                ; $48F8: $08 $20 $21
    jr nc, jr_066_492E                            ; $48FB: $30 $31

    dec e                                         ; $48FD: $1D
    inc e                                         ; $48FE: $1C
    ld [hl-], a                                   ; $48FF: $32
    inc l                                         ; $4900: $2C
    add h                                         ; $4901: $84

jr_066_4902:
    ld [hl+], a                                   ; $4902: $22
    rlca                                          ; $4903: $07
    db $ED                                        ; $4904: $ED
    xor $FD                                       ; $4905: $EE $FD
    cp $EF                                        ; $4907: $FE $EF
    halt                                          ; $4909: $76
    rst $38                                       ; $490A: $FF
    add d                                         ; $490B: $82
    halt                                          ; $490C: $76
    rrca                                          ; $490D: $0F
    rst $28                                       ; $490E: $EF
    halt                                          ; $490F: $76
    rst $38                                       ; $4910: $FF
    xor $ED                                       ; $4911: $EE $ED
    cp $FD                                        ; $4913: $FE $FD
    ld [hl], l                                    ; $4915: $75
    ld c, b                                       ; $4916: $48
    ld [hl], l                                    ; $4917: $75
    ld e, b                                       ; $4918: $58
    ld c, c                                       ; $4919: $49
    ld c, d                                       ; $491A: $4A
    ld e, c                                       ; $491B: $59
    ld e, d                                       ; $491C: $5A
    add h                                         ; $491D: $84
    ld [hl+], a                                   ; $491E: $22
    ld [$3938], sp                                ; $491F: $08 $38 $39
    ld c, b                                       ; $4922: $48
    halt                                          ; $4923: $76
    ld d, h                                       ; $4924: $54
    ld d, l                                       ; $4925: $55
    ld h, h                                       ; $4926: $64
    ld h, l                                       ; $4927: $65
    add l                                         ; $4928: $85
    ld [hl], l                                    ; $4929: $75
    inc bc                                        ; $492A: $03
    inc bc                                        ; $492B: $03
    ld [de], a                                    ; $492C: $12
    inc de                                        ; $492D: $13

jr_066_492E:
    add d                                         ; $492E: $82
    inc b                                         ; $492F: $04
    ld b, $14                                     ; $4930: $06 $14
    dec d                                         ; $4932: $15
    inc bc                                        ; $4933: $03
    ld [hl], l                                    ; $4934: $75
    inc de                                        ; $4935: $13
    ld [de], a                                    ; $4936: $12
    add h                                         ; $4937: $84
    halt                                          ; $4938: $76
    inc c                                         ; $4939: $0C
    add hl, sp                                    ; $493A: $39
    jr c, @+$78                                   ; $493B: $38 $76

    ld c, b                                       ; $493D: $48
    and $E7                                       ; $493E: $E6 $E7
    or $F7                                        ; $4940: $F6 $F7
    halt                                          ; $4942: $76
    ld a, b                                       ; $4943: $78
    halt                                          ; $4944: $76
    ld a, c                                       ; $4945: $79
    adc b                                         ; $4946: $88
    ld [hl+], a                                   ; $4947: $22
    inc c                                         ; $4948: $0C
    ld a, b                                       ; $4949: $78
    halt                                          ; $494A: $76
    ld a, c                                       ; $494B: $79

jr_066_494C:
    halt                                          ; $494C: $76
    ld [hl], l                                    ; $494D: $75
    ld l, b                                       ; $494E: $68
    ld [hl], l                                    ; $494F: $75
    ld a, b                                       ; $4950: $78
    ld l, c                                       ; $4951: $69
    ld l, d                                       ; $4952: $6A
    ld a, c                                       ; $4953: $79
    ld a, d                                       ; $4954: $7A
    adc b                                         ; $4955: $88
    ld [hl+], a                                   ; $4956: $22
    ld [hl+], a                                   ; $4957: $22
    ld [hl], h                                    ; $4958: $74

jr_066_4959:
    ld [hl], l                                    ; $4959: $75
    ld a, h                                       ; $495A: $7C
    ld a, l                                       ; $495B: $7D
    ld [hl], l                                    ; $495C: $75
    ld hl, $3130                                  ; $495D: $21 $30 $31
    ld [hl+], a                                   ; $4960: $22
    inc hl                                        ; $4961: $23
    ld [hl-], a                                   ; $4962: $32
    inc sp                                        ; $4963: $33
    inc h                                         ; $4964: $24
    dec h                                         ; $4965: $25
    inc [hl]                                      ; $4966: $34
    dec [hl]                                      ; $4967: $35
    ld h, $27                                     ; $4968: $26 $27
    ld [hl], $37                                  ; $496A: $36 $37
    ld hl, $3175                                  ; $496C: $21 $75 $31
    jr nc, jr_066_4959                            ; $496F: $30 $E8

    jp hl                                         ; $4971: $E9


    ld hl, sp-$07                                 ; $4972: $F8 $F9
    ld [$FAEB], a                                 ; $4974: $EA $EB $FA
    ei                                            ; $4977: $FB
    halt                                          ; $4978: $76
    ld d, b                                       ; $4979: $50
    add d                                         ; $497A: $82
    halt                                          ; $497B: $76
    add hl, bc                                    ; $497C: $09
    jr nz, jr_066_49A0                            ; $497D: $20 $21

    jr nc, jr_066_49B2                            ; $497F: $30 $31

    ld hl, $3120                                  ; $4981: $21 $20 $31
    jr nc, jr_066_49D6                            ; $4984: $30 $50

    add e                                         ; $4986: $83
    halt                                          ; $4987: $76
    ccf                                           ; $4988: $3F
    ld b, $75                                     ; $4989: $06 $75
    cpl                                           ; $498B: $2F
    ld c, a                                       ; $498C: $4F
    ld b, e                                       ; $498D: $43
    ld b, d                                       ; $498E: $42
    ld d, e                                       ; $498F: $53
    ld d, d                                       ; $4990: $52
    ld [hl], l                                    ; $4991: $75
    dec bc                                        ; $4992: $0B
    ld [hl], l                                    ; $4993: $75
    ld [hl], c                                    ; $4994: $71
    ld c, $0F                                     ; $4995: $0E $0F
    ld e, $1F                                     ; $4997: $1E $1F
    ld d, l                                       ; $4999: $55
    ld d, h                                       ; $499A: $54
    ld h, l                                       ; $499B: $65
    ld h, h                                       ; $499C: $64
    ld b, b                                       ; $499D: $40
    ld b, c                                       ; $499E: $41
    ld d, b                                       ; $499F: $50

jr_066_49A0:
    ld d, c                                       ; $49A0: $51
    ld b, d                                       ; $49A1: $42
    ld b, e                                       ; $49A2: $43
    ld d, d                                       ; $49A3: $52
    ld d, e                                       ; $49A4: $53
    ld b, h                                       ; $49A5: $44
    ld b, l                                       ; $49A6: $45
    ld d, h                                       ; $49A7: $54
    ld d, l                                       ; $49A8: $55
    ld b, [hl]                                    ; $49A9: $46
    ld b, a                                       ; $49AA: $47
    ld d, [hl]                                    ; $49AB: $56
    ld d, a                                       ; $49AC: $57
    ld b, c                                       ; $49AD: $41
    ld b, b                                       ; $49AE: $40
    ld d, c                                       ; $49AF: $51
    ld d, b                                       ; $49B0: $50
    rrca                                          ; $49B1: $0F

jr_066_49B2:
    ld c, $1F                                     ; $49B2: $0E $1F
    ld e, $0B                                     ; $49B4: $1E $0B
    ld [hl], l                                    ; $49B6: $75
    ld [hl], c                                    ; $49B7: $71
    ld [hl], l                                    ; $49B8: $75
    ld [hl], $37                                  ; $49B9: $36 $37
    ld b, [hl]                                    ; $49BB: $46
    ld b, a                                       ; $49BC: $47
    ld [bc], a                                    ; $49BD: $02
    inc bc                                        ; $49BE: $03
    ld [de], a                                    ; $49BF: $12
    inc de                                        ; $49C0: $13
    ld b, $05                                     ; $49C1: $06 $05
    ld d, $60                                     ; $49C3: $16 $60
    dec b                                         ; $49C5: $05
    ld b, $60                                     ; $49C6: $06 $60
    add d                                         ; $49C8: $82
    ld [hl], l                                    ; $49C9: $75
    add d                                         ; $49CA: $82
    ld h, b                                       ; $49CB: $60
    inc de                                        ; $49CC: $13
    ld b, $42                                     ; $49CD: $06 $42
    ld b, e                                       ; $49CF: $43
    ld d, d                                       ; $49D0: $52
    ld d, e                                       ; $49D1: $53
    ld c, c                                       ; $49D2: $49
    dec c                                         ; $49D3: $0D
    ld a, [de]                                    ; $49D4: $1A
    dec de                                        ; $49D5: $1B

jr_066_49D6:
    ld l, $2F                                     ; $49D6: $2E $2F
    ld a, $3F                                     ; $49D8: $3E $3F
    ld [hl], l                                    ; $49DA: $75
    ld [hl], h                                    ; $49DB: $74
    ld a, l                                       ; $49DC: $7D
    ld a, h                                       ; $49DD: $7C
    ld [hl], l                                    ; $49DE: $75
    ld h, c                                       ; $49DF: $61
    add d                                         ; $49E0: $82
    ld [hl], l                                    ; $49E1: $75
    ld b, $62                                     ; $49E2: $06 $62
    ld h, e                                       ; $49E4: $63
    ld [hl], d                                    ; $49E5: $72
    ld [hl], e                                    ; $49E6: $73
    ld h, h                                       ; $49E7: $64
    ld h, l                                       ; $49E8: $65
    add d                                         ; $49E9: $82
    ld [hl], h                                    ; $49EA: $74
    dec b                                         ; $49EB: $05
    ld h, [hl]                                    ; $49EC: $66
    ld h, d                                       ; $49ED: $62
    ld [hl], e                                    ; $49EE: $73
    ld [hl], d                                    ; $49EF: $72
    ld h, c                                       ; $49F0: $61
    add e                                         ; $49F1: $83
    ld [hl], l                                    ; $49F2: $75
    db $10                                        ; $49F3: $10
    cpl                                           ; $49F4: $2F
    ld l, $3F                                     ; $49F5: $2E $3F
    ld a, $0D                                     ; $49F7: $3E $0D
    ld c, c                                       ; $49F9: $49
    dec de                                        ; $49FA: $1B
    ld a, [de]                                    ; $49FB: $1A
    ld d, [hl]                                    ; $49FC: $56
    ld d, a                                       ; $49FD: $57
    ld h, [hl]                                    ; $49FE: $66
    ld h, a                                       ; $49FF: $67
    ld e, b                                       ; $4A00: $58
    ld e, c                                       ; $4A01: $59
    ld l, b                                       ; $4A02: $68
    ld l, c                                       ; $4A03: $69
    add d                                         ; $4A04: $82
    ld [hl], l                                    ; $4A05: $75
    ld [bc], a                                    ; $4A06: $02
    ld [hl], c                                    ; $4A07: $71
    ld [hl], b                                    ; $4A08: $70
    add d                                         ; $4A09: $82
    ld [hl], l                                    ; $4A0A: $75
    ld [bc], a                                    ; $4A0B: $02
    ld [hl], b                                    ; $4A0C: $70
    ld [hl], c                                    ; $4A0D: $71
    add h                                         ; $4A0E: $84
    ld [hl+], a                                   ; $4A0F: $22
    ld l, $0D                                     ; $4A10: $2E $0D
    ld c, $1D                                     ; $4A12: $0E $1D
    ld e, $2A                                     ; $4A14: $1E $2A
    dec hl                                        ; $4A16: $2B
    ld [hl], l                                    ; $4A17: $75
    ld [hl], b                                    ; $4A18: $70
    ld c, [hl]                                    ; $4A19: $4E
    ld c, a                                       ; $4A1A: $4F
    ld e, [hl]                                    ; $4A1B: $5E
    ld e, a                                       ; $4A1C: $5F
    ld a, [hl-]                                   ; $4A1D: $3A
    dec sp                                        ; $4A1E: $3B
    ld c, d                                       ; $4A1F: $4A
    ld c, e                                       ; $4A20: $4B
    inc a                                         ; $4A21: $3C
    dec a                                         ; $4A22: $3D
    ld c, h                                       ; $4A23: $4C
    ld c, l                                       ; $4A24: $4D
    inc bc                                        ; $4A25: $03
    ld [bc], a                                    ; $4A26: $02
    inc de                                        ; $4A27: $13
    ld [de], a                                    ; $4A28: $12
    scf                                           ; $4A29: $37
    ld [hl], $47                                  ; $4A2A: $36 $47
    ld b, [hl]                                    ; $4A2C: $46
    dec a                                         ; $4A2D: $3D
    inc a                                         ; $4A2E: $3C
    ld c, l                                       ; $4A2F: $4D
    ld c, h                                       ; $4A30: $4C
    dec sp                                        ; $4A31: $3B
    ld a, [hl-]                                   ; $4A32: $3A
    ld c, e                                       ; $4A33: $4B
    ld c, d                                       ; $4A34: $4A
    ld c, a                                       ; $4A35: $4F
    ld c, [hl]                                    ; $4A36: $4E
    ld e, a                                       ; $4A37: $5F
    ld e, [hl]                                    ; $4A38: $5E
    dec hl                                        ; $4A39: $2B
    ld a, [hl+]                                   ; $4A3A: $2A
    ld [hl], b                                    ; $4A3B: $70
    ld [hl], l                                    ; $4A3C: $75
    halt                                          ; $4A3D: $76
    ld [hl], a                                    ; $4A3E: $77

jr_066_4A3F:
    add d                                         ; $4A3F: $82
    ld [hl], l                                    ; $4A40: $75
    ld [bc], a                                    ; $4A41: $02
    halt                                          ; $4A42: $76
    ld [hl], a                                    ; $4A43: $77
    add d                                         ; $4A44: $82
    ld [hl], l                                    ; $4A45: $75
    ld [$2F0F], sp                                ; $4A46: $08 $0F $2F
    rra                                           ; $4A49: $1F
    ccf                                           ; $4A4A: $3F
    ld c, a                                       ; $4A4B: $4F
    ld l, a                                       ; $4A4C: $6F
    ld e, a                                       ; $4A4D: $5F
    ld a, a                                       ; $4A4E: $7F
    add h                                         ; $4A4F: $84
    ld [hl+], a                                   ; $4A50: $22
    jr c, @+$2F                                   ; $4A51: $38 $2D

    ld l, $3D                                     ; $4A53: $2E $3D
    ld a, $2E                                     ; $4A55: $3E $2E
    dec l                                         ; $4A57: $2D
    ld a, $3D                                     ; $4A58: $3E $3D
    ld l, [hl]                                    ; $4A5A: $6E
    ld l, a                                       ; $4A5B: $6F
    ld a, [hl]                                    ; $4A5C: $7E
    ld a, a                                       ; $4A5D: $7F
    ld e, d                                       ; $4A5E: $5A
    ld e, e                                       ; $4A5F: $5B
    ld l, d                                       ; $4A60: $6A
    ld l, e                                       ; $4A61: $6B
    ld e, h                                       ; $4A62: $5C
    ld e, l                                       ; $4A63: $5D
    ld l, h                                       ; $4A64: $6C
    ld l, l                                       ; $4A65: $6D
    ld e, c                                       ; $4A66: $59
    ld e, b                                       ; $4A67: $58
    ld l, c                                       ; $4A68: $69
    ld l, b                                       ; $4A69: $68
    ld d, a                                       ; $4A6A: $57
    ld d, [hl]                                    ; $4A6B: $56
    ld h, a                                       ; $4A6C: $67
    ld h, [hl]                                    ; $4A6D: $66
    ld e, l                                       ; $4A6E: $5D
    ld e, h                                       ; $4A6F: $5C
    ld l, l                                       ; $4A70: $6D
    ld l, h                                       ; $4A71: $6C
    ld e, e                                       ; $4A72: $5B
    ld e, d                                       ; $4A73: $5A
    ld l, e                                       ; $4A74: $6B
    ld l, d                                       ; $4A75: $6A
    ld l, a                                       ; $4A76: $6F
    ld l, [hl]                                    ; $4A77: $6E
    ld a, a                                       ; $4A78: $7F
    ld a, [hl]                                    ; $4A79: $7E
    add hl, bc                                    ; $4A7A: $09
    ld [$3419], sp                                ; $4A7B: $08 $19 $34
    rlca                                          ; $4A7E: $07
    ld b, $17                                     ; $4A7F: $06 $17
    ld d, $77                                     ; $4A81: $16 $77
    ld a, d                                       ; $4A83: $7A
    ld [hl], l                                    ; $4A84: $75
    ld a, [bc]                                    ; $4A85: $0A
    ld a, d                                       ; $4A86: $7A
    ld [hl], a                                    ; $4A87: $77
    ld a, [bc]                                    ; $4A88: $0A
    ld [hl], l                                    ; $4A89: $75
    adc b                                         ; $4A8A: $88
    ld [hl+], a                                   ; $4A8B: $22
    ld bc, $8419                                  ; $4A8C: $01 $19 $84
    ld [hl], l                                    ; $4A8F: $75
    ld bc, $8319                                  ; $4A90: $01 $19 $83
    ld [hl], l                                    ; $4A93: $75
    dec b                                         ; $4A94: $05
    ld a, [bc]                                    ; $4A95: $0A
    ld [hl], l                                    ; $4A96: $75
    ld [hl], l                                    ; $4A97: $75
    ld a, d                                       ; $4A98: $7A
    ld a, e                                       ; $4A99: $7B
    add d                                         ; $4A9A: $82
    ld [hl], l                                    ; $4A9B: $75
    ld [bc], a                                    ; $4A9C: $02
    ld [hl], a                                    ; $4A9D: $77
    halt                                          ; $4A9E: $76
    add d                                         ; $4A9F: $82
    ld [hl], l                                    ; $4AA0: $75
    ld [bc], a                                    ; $4AA1: $02
    ld [hl], a                                    ; $4AA2: $77
    halt                                          ; $4AA3: $76
    add d                                         ; $4AA4: $82
    ld [hl], l                                    ; $4AA5: $75
    ld [bc], a                                    ; $4AA6: $02
    ld [hl], a                                    ; $4AA7: $77
    halt                                          ; $4AA8: $76
    add d                                         ; $4AA9: $82
    ld [hl], l                                    ; $4AAA: $75
    ld [bc], a                                    ; $4AAB: $02
    halt                                          ; $4AAC: $76
    ld [hl], a                                    ; $4AAD: $77
    add d                                         ; $4AAE: $82
    ld [hl], l                                    ; $4AAF: $75
    ld [bc], a                                    ; $4AB0: $02
    ld a, e                                       ; $4AB1: $7B
    ld a, d                                       ; $4AB2: $7A
    add d                                         ; $4AB3: $82
    ld [hl], l                                    ; $4AB4: $75
    ld bc, $830A                                  ; $4AB5: $01 $0A $83
    ld [hl], l                                    ; $4AB8: $75
    ld [bc], a                                    ; $4AB9: $02
    add hl, hl                                    ; $4ABA: $29
    jr z, jr_066_4A3F                             ; $4ABB: $28 $82

    halt                                          ; $4ABD: $76
    ld [bc], a                                    ; $4ABE: $02
    daa                                           ; $4ABF: $27
    ld h, $82                                     ; $4AC0: $26 $82
    halt                                          ; $4AC2: $76
    add h                                         ; $4AC3: $84
    ld [hl+], a                                   ; $4AC4: $22
    add d                                         ; $4AC5: $82
    db $ED                                        ; $4AC6: $ED
    add d                                         ; $4AC7: $82
    db $FD                                        ; $4AC8: $FD
    add d                                         ; $4AC9: $82
    db $EC                                        ; $4ACA: $EC
    add d                                         ; $4ACB: $82
    db $FC                                        ; $4ACC: $FC
    ld bc, $8948                                  ; $4ACD: $01 $48 $89
    dec b                                         ; $4AD0: $05
    add d                                         ; $4AD1: $82
    ld l, b                                       ; $4AD2: $68
    adc h                                         ; $4AD3: $8C
    ld [hl+], a                                   ; $4AD4: $22
    add l                                         ; $4AD5: $85
    dec h                                         ; $4AD6: $25
    inc b                                         ; $4AD7: $04
    ld c, b                                       ; $4AD8: $48
    dec h                                         ; $4AD9: $25
    dec h                                         ; $4ADA: $25
    ld l, b                                       ; $4ADB: $68
    add e                                         ; $4ADC: $83
    dec b                                         ; $4ADD: $05
    ld [bc], a                                    ; $4ADE: $02
    dec h                                         ; $4ADF: $25
    ld l, b                                       ; $4AE0: $68
    add d                                         ; $4AE1: $82
    dec h                                         ; $4AE2: $25
    ld [bc], a                                    ; $4AE3: $02
    ld l, b                                       ; $4AE4: $68
    dec b                                         ; $4AE5: $05
    add d                                         ; $4AE6: $82
    ld l, b                                       ; $4AE7: $68
    add h                                         ; $4AE8: $84
    dec b                                         ; $4AE9: $05
    add d                                         ; $4AEA: $82
    ld c, b                                       ; $4AEB: $48
    ld [bc], a                                    ; $4AEC: $02
    dec b                                         ; $4AED: $05
    ld c, b                                       ; $4AEE: $48
    add h                                         ; $4AEF: $84

jr_066_4AF0:
    dec h                                         ; $4AF0: $25
    ld bc, $8348                                  ; $4AF1: $01 $48 $83
    ld c, $84                                     ; $4AF4: $0E $84
    ld c, b                                       ; $4AF6: $48
    add l                                         ; $4AF7: $85
    dec b                                         ; $4AF8: $05
    ld [bc], a                                    ; $4AF9: $02
    ld l, b                                       ; $4AFA: $68
    dec b                                         ; $4AFB: $05
    add e                                         ; $4AFC: $83
    ld l, b                                       ; $4AFD: $68
    ld [bc], a                                    ; $4AFE: $02
    dec b                                         ; $4AFF: $05
    ld l, b                                       ; $4B00: $68
    adc b                                         ; $4B01: $88
    ld [hl+], a                                   ; $4B02: $22
    add d                                         ; $4B03: $82
    ld c, b                                       ; $4B04: $48
    dec b                                         ; $4B05: $05
    ld l, b                                       ; $4B06: $68
    dec h                                         ; $4B07: $25
    ld l, b                                       ; $4B08: $68
    dec h                                         ; $4B09: $25
    ld l, b                                       ; $4B0A: $68
    add l                                         ; $4B0B: $85
    dec h                                         ; $4B0C: $25
    add h                                         ; $4B0D: $84
    dec b                                         ; $4B0E: $05
    add h                                         ; $4B0F: $84
    dec h                                         ; $4B10: $25
    add e                                         ; $4B11: $83
    ld c, b                                       ; $4B12: $48
    add [hl]                                      ; $4B13: $86
    dec h                                         ; $4B14: $25
    add e                                         ; $4B15: $83
    ld l, b                                       ; $4B16: $68
    add h                                         ; $4B17: $84
    dec b                                         ; $4B18: $05
    add h                                         ; $4B19: $84
    ld c, $84                                     ; $4B1A: $0E $84
    ld c, b                                       ; $4B1C: $48
    adc b                                         ; $4B1D: $88
    dec b                                         ; $4B1E: $05
    add d                                         ; $4B1F: $82
    ld l, b                                       ; $4B20: $68
    add d                                         ; $4B21: $82
    dec b                                         ; $4B22: $05
    add d                                         ; $4B23: $82
    ld l, b                                       ; $4B24: $68
    add d                                         ; $4B25: $82
    dec b                                         ; $4B26: $05
    add d                                         ; $4B27: $82
    ld l, b                                       ; $4B28: $68
    add d                                         ; $4B29: $82
    dec b                                         ; $4B2A: $05
    add d                                         ; $4B2B: $82
    ld l, b                                       ; $4B2C: $68
    adc d                                         ; $4B2D: $8A
    dec h                                         ; $4B2E: $25
    add h                                         ; $4B2F: $84
    dec b                                         ; $4B30: $05
    add h                                         ; $4B31: $84
    dec h                                         ; $4B32: $25
    adc b                                         ; $4B33: $88
    dec b                                         ; $4B34: $05
    adc b                                         ; $4B35: $88
    dec h                                         ; $4B36: $25
    add l                                         ; $4B37: $85
    ld c, $03                                     ; $4B38: $0E $03
    ld c, b                                       ; $4B3A: $48
    ld c, $48                                     ; $4B3B: $0E $48
    sub h                                         ; $4B3D: $94
    dec b                                         ; $4B3E: $05
    adc h                                         ; $4B3F: $8C
    dec h                                         ; $4B40: $25
    add e                                         ; $4B41: $83
    dec b                                         ; $4B42: $05
    rlca                                          ; $4B43: $07
    ld c, b                                       ; $4B44: $48
    dec h                                         ; $4B45: $25
    dec h                                         ; $4B46: $25
    ld c, b                                       ; $4B47: $48
    dec h                                         ; $4B48: $25
    ld l, b                                       ; $4B49: $68
    dec b                                         ; $4B4A: $05
    add d                                         ; $4B4B: $82
    ld l, b                                       ; $4B4C: $68
    add h                                         ; $4B4D: $84
    dec b                                         ; $4B4E: $05
    add l                                         ; $4B4F: $85
    dec h                                         ; $4B50: $25
    add e                                         ; $4B51: $83
    ld l, b                                       ; $4B52: $68
    add h                                         ; $4B53: $84
    ld c, $85                                     ; $4B54: $0E $85
    ld c, b                                       ; $4B56: $48
    inc bc                                        ; $4B57: $03
    dec b                                         ; $4B58: $05
    ld c, b                                       ; $4B59: $48

jr_066_4B5A:
    nop                                           ; $4B5A: $00
    add a                                         ; $4B5B: $87
    dec b                                         ; $4B5C: $05
    inc b                                         ; $4B5D: $04
    nop                                           ; $4B5E: $00
    dec b                                         ; $4B5F: $05
    dec b                                         ; $4B60: $05
    nop                                           ; $4B61: $00
    add h                                         ; $4B62: $84
    dec b                                         ; $4B63: $05
    inc b                                         ; $4B64: $04
    nop                                           ; $4B65: $00
    dec h                                         ; $4B66: $25
    dec h                                         ; $4B67: $25
    jr nz, jr_066_4AF0                            ; $4B68: $20 $86

    dec h                                         ; $4B6A: $25
    inc bc                                        ; $4B6B: $03
    ld c, b                                       ; $4B6C: $48
    jr nz, jr_066_4BB7                            ; $4B6D: $20 $48

    sub b                                         ; $4B6F: $90
    ld [hl+], a                                   ; $4B70: $22
    adc b                                         ; $4B71: $88
    dec b                                         ; $4B72: $05
    adc b                                         ; $4B73: $88
    dec h                                         ; $4B74: $25
    ld bc, $8348                                  ; $4B75: $01 $48 $83
    dec b                                         ; $4B78: $05
    ld [bc], a                                    ; $4B79: $02
    dec h                                         ; $4B7A: $25
    ld l, b                                       ; $4B7B: $68
    add d                                         ; $4B7C: $82
    dec h                                         ; $4B7D: $25
    add h                                         ; $4B7E: $84
    ld [hl+], a                                   ; $4B7F: $22
    add e                                         ; $4B80: $83
    dec b                                         ; $4B81: $05
    inc b                                         ; $4B82: $04
    inc bc                                        ; $4B83: $03
    inc b                                         ; $4B84: $04
    inc b                                         ; $4B85: $04
    inc hl                                        ; $4B86: $23
    add h                                         ; $4B87: $84
    inc b                                         ; $4B88: $04
    ld bc, $8501                                  ; $4B89: $01 $01 $85
    ld c, $83                                     ; $4B8C: $0E $83
    ld c, b                                       ; $4B8E: $48
    add d                                         ; $4B8F: $82
    inc h                                         ; $4B90: $24
    ld bc, $8421                                  ; $4B91: $01 $21 $84
    inc h                                         ; $4B94: $24
    dec b                                         ; $4B95: $05
    inc bc                                        ; $4B96: $03
    dec h                                         ; $4B97: $25
    dec h                                         ; $4B98: $25
    inc hl                                        ; $4B99: $23
    dec h                                         ; $4B9A: $25
    add h                                         ; $4B9B: $84
    ld [hl+], a                                   ; $4B9C: $22
    add d                                         ; $4B9D: $82
    dec b                                         ; $4B9E: $05
    add d                                         ; $4B9F: $82
    ld l, b                                       ; $4BA0: $68
    ld bc, $8405                                  ; $4BA1: $01 $05 $84
    ld l, b                                       ; $4BA4: $68
    inc bc                                        ; $4BA5: $03
    dec h                                         ; $4BA6: $25
    ld l, b                                       ; $4BA7: $68
    ld l, b                                       ; $4BA8: $68
    add d                                         ; $4BA9: $82
    dec h                                         ; $4BAA: $25
    add d                                         ; $4BAB: $82
    ld l, b                                       ; $4BAC: $68
    add l                                         ; $4BAD: $85
    dec c                                         ; $4BAE: $0D
    inc bc                                        ; $4BAF: $03
    ld [$080D], sp                                ; $4BB0: $08 $0D $08
    add h                                         ; $4BB3: $84
    inc bc                                        ; $4BB4: $03
    inc bc                                        ; $4BB5: $03
    inc b                                         ; $4BB6: $04

jr_066_4BB7:
    dec b                                         ; $4BB7: $05
    nop                                           ; $4BB8: $00
    add e                                         ; $4BB9: $83
    inc bc                                        ; $4BBA: $03
    ld [$0300], sp                                ; $4BBB: $08 $00 $03
    inc hl                                        ; $4BBE: $23
    inc bc                                        ; $4BBF: $03
    nop                                           ; $4BC0: $00
    inc bc                                        ; $4BC1: $03
    ld c, b                                       ; $4BC2: $48
    ld l, $82                                     ; $4BC3: $2E $82
    ld c, b                                       ; $4BC5: $48
    add h                                         ; $4BC6: $84
    ld l, $04                                     ; $4BC7: $2E $04
    inc hl                                        ; $4BC9: $23
    inc bc                                        ; $4BCA: $03
    inc hl                                        ; $4BCB: $23
    nop                                           ; $4BCC: $00
    add e                                         ; $4BCD: $83
    inc hl                                        ; $4BCE: $23
    dec b                                         ; $4BCF: $05

jr_066_4BD0:
    jr nz, jr_066_4BF7                            ; $4BD0: $20 $25

    inc h                                         ; $4BD2: $24
    inc hl                                        ; $4BD3: $23
    jr nz, jr_066_4B5A                            ; $4BD4: $20 $84

    inc hl                                        ; $4BD6: $23
    add d                                         ; $4BD7: $82
    ld l, b                                       ; $4BD8: $68
    add d                                         ; $4BD9: $82
    dec b                                         ; $4BDA: $05
    add d                                         ; $4BDB: $82
    ld l, b                                       ; $4BDC: $68
    ld bc, $8405                                  ; $4BDD: $01 $05 $84
    ld l, b                                       ; $4BE0: $68
    inc bc                                        ; $4BE1: $03
    dec h                                         ; $4BE2: $25
    ld l, b                                       ; $4BE3: $68
    ld l, b                                       ; $4BE4: $68
    add d                                         ; $4BE5: $82
    dec h                                         ; $4BE6: $25
    add d                                         ; $4BE7: $82
    dec c                                         ; $4BE8: $0D
    ld bc, $8508                                  ; $4BE9: $01 $08 $85
    dec c                                         ; $4BEC: $0D
    add h                                         ; $4BED: $84
    ld [hl+], a                                   ; $4BEE: $22
    add d                                         ; $4BEF: $82
    inc bc                                        ; $4BF0: $03
    add d                                         ; $4BF1: $82
    ld l, b                                       ; $4BF2: $68
    add e                                         ; $4BF3: $83
    dec b                                         ; $4BF4: $05
    inc bc                                        ; $4BF5: $03
    inc bc                                        ; $4BF6: $03

jr_066_4BF7:
    ld [$8228], sp                                ; $4BF7: $08 $28 $82

jr_066_4BFA:
    ld c, b                                       ; $4BFA: $48
    add h                                         ; $4BFB: $84
    ld [hl+], a                                   ; $4BFC: $22
    ld [bc], a                                    ; $4BFD: $02
    dec b                                         ; $4BFE: $05
    nop                                           ; $4BFF: $00
    add d                                         ; $4C00: $82
    inc bc                                        ; $4C01: $03
    add d                                         ; $4C02: $82
    dec b                                         ; $4C03: $05
    ld [bc], a                                    ; $4C04: $02
    nop                                           ; $4C05: $00
    inc bc                                        ; $4C06: $03
    add d                                         ; $4C07: $82
    dec h                                         ; $4C08: $25
    ld [bc], a                                    ; $4C09: $02
    inc hl                                        ; $4C0A: $23
    dec h                                         ; $4C0B: $25
    add d                                         ; $4C0C: $82
    inc hl                                        ; $4C0D: $23
    add d                                         ; $4C0E: $82
    ld l, b                                       ; $4C0F: $68
    add h                                         ; $4C10: $84
    ld [hl+], a                                   ; $4C11: $22
    add l                                         ; $4C12: $85
    dec b                                         ; $4C13: $05
    ld [bc], a                                    ; $4C14: $02
    ld l, b                                       ; $4C15: $68
    dec b                                         ; $4C16: $05
    add d                                         ; $4C17: $82
    ld l, b                                       ; $4C18: $68
    ld [bc], a                                    ; $4C19: $02
    dec h                                         ; $4C1A: $25
    ld l, b                                       ; $4C1B: $68
    add l                                         ; $4C1C: $85
    dec h                                         ; $4C1D: $25
    inc bc                                        ; $4C1E: $03
    ld c, b                                       ; $4C1F: $48
    ld [$8248], sp                                ; $4C20: $08 $48 $82
    ld [$4803], sp                                ; $4C23: $08 $03 $48
    ld [$8408], sp                                ; $4C26: $08 $08 $84
    ld [hl+], a                                   ; $4C29: $22
    ld [bc], a                                    ; $4C2A: $02
    nop                                           ; $4C2B: $00
    inc bc                                        ; $4C2C: $03
    add d                                         ; $4C2D: $82
    nop                                           ; $4C2E: $00
    add e                                         ; $4C2F: $83
    inc hl                                        ; $4C30: $23
    dec b                                         ; $4C31: $05
    jr nz, @+$2A                                  ; $4C32: $20 $28

    jr z, @+$4A                                   ; $4C34: $28 $48

    jr z, @-$7A                                   ; $4C36: $28 $84

    ld [$0302], sp                                ; $4C38: $08 $02 $03
    nop                                           ; $4C3B: $00
    add d                                         ; $4C3C: $82
    ld l, b                                       ; $4C3D: $68
    add d                                         ; $4C3E: $82
    inc bc                                        ; $4C3F: $03
    add d                                         ; $4C40: $82
    ld l, b                                       ; $4C41: $68
    add d                                         ; $4C42: $82
    inc bc                                        ; $4C43: $03
    ld b, $00                                     ; $4C44: $06 $00
    inc bc                                        ; $4C46: $03
    inc hl                                        ; $4C47: $23
    jr nz, jr_066_4C4A                            ; $4C48: $20 $00

jr_066_4C4A:
    jr nz, jr_066_4BD0                            ; $4C4A: $20 $84

    ld [hl+], a                                   ; $4C4C: $22
    add l                                         ; $4C4D: $85
    dec b                                         ; $4C4E: $05
    ld [bc], a                                    ; $4C4F: $02
    ld l, b                                       ; $4C50: $68
    dec b                                         ; $4C51: $05
    add d                                         ; $4C52: $82
    ld l, b                                       ; $4C53: $68
    ld [bc], a                                    ; $4C54: $02
    dec h                                         ; $4C55: $25
    ld l, b                                       ; $4C56: $68
    add l                                         ; $4C57: $85
    dec h                                         ; $4C58: $25
    inc bc                                        ; $4C59: $03
    ld c, b                                       ; $4C5A: $48
    ld [$8548], sp                                ; $4C5B: $08 $48 $85
    ld [$2284], sp                                ; $4C5E: $08 $84 $22
    add d                                         ; $4C61: $82

jr_066_4C62:
    nop                                           ; $4C62: $00
    inc bc                                        ; $4C63: $03
    inc bc                                        ; $4C64: $03
    ld l, b                                       ; $4C65: $68
    inc bc                                        ; $4C66: $03
    add e                                         ; $4C67: $83
    inc b                                         ; $4C68: $04
    add l                                         ; $4C69: $85
    ld c, b                                       ; $4C6A: $48
    add h                                         ; $4C6B: $84
    ld [$2805], sp                                ; $4C6C: $08 $05 $28
    ld a, [bc]                                    ; $4C6F: $0A
    ld a, [bc]                                    ; $4C70: $0A
    jr z, jr_066_4CBB                             ; $4C71: $28 $48

    add d                                         ; $4C73: $82
    jr z, jr_066_4BFA                             ; $4C74: $28 $84

    ld l, b                                       ; $4C76: $68
    add d                                         ; $4C77: $82
    jr nz, jr_066_4C7C                            ; $4C78: $20 $02

    ld l, b                                       ; $4C7A: $68
    inc hl                                        ; $4C7B: $23

jr_066_4C7C:
    add h                                         ; $4C7C: $84
    ld [$6804], sp                                ; $4C7D: $08 $04 $68
    nop                                           ; $4C80: $00
    ld l, b                                       ; $4C81: $68
    inc bc                                        ; $4C82: $03
    adc b                                         ; $4C83: $88
    ld [hl+], a                                   ; $4C84: $22
    rlca                                          ; $4C85: $07
    jr nz, jr_066_4CF0                            ; $4C86: $20 $68

jr_066_4C88:
    inc hl                                        ; $4C88: $23
    ld l, b                                       ; $4C89: $68
    ld c, b                                       ; $4C8A: $48
    ld [$8548], sp                                ; $4C8B: $08 $48 $85
    ld [$2288], sp                                ; $4C8E: $08 $88 $22
    add h                                         ; $4C91: $84
    inc b                                         ; $4C92: $04
    ld bc, $8348                                  ; $4C93: $01 $48 $83
    ld [$0A8C], sp                                ; $4C96: $08 $8C $0A
    ld [bc], a                                    ; $4C99: $02
    jr z, @+$4A                                   ; $4C9A: $28 $48

    add d                                         ; $4C9C: $82
    jr z, @-$76                                   ; $4C9D: $28 $88

jr_066_4C9F:
    ld [$6802], sp                                ; $4C9F: $08 $02 $68
    inc bc                                        ; $4CA2: $03
    add d                                         ; $4CA3: $82
    ld l, b                                       ; $4CA4: $68
    add d                                         ; $4CA5: $82
    inc bc                                        ; $4CA6: $03
    ld [bc], a                                    ; $4CA7: $02
    nop                                           ; $4CA8: $00
    inc bc                                        ; $4CA9: $03
    add e                                         ; $4CAA: $83
    inc hl                                        ; $4CAB: $23
    ld [bc], a                                    ; $4CAC: $02
    jr nz, jr_066_4CD2                            ; $4CAD: $20 $23

    add e                                         ; $4CAF: $83
    ld l, b                                       ; $4CB0: $68
    ld [bc], a                                    ; $4CB1: $02
    ld [$8248], sp                                ; $4CB2: $08 $48 $82
    ld [$2384], sp                                ; $4CB5: $08 $84 $23
    ld a, [bc]                                    ; $4CB8: $0A
    ld c, b                                       ; $4CB9: $48
    nop                                           ; $4CBA: $00

jr_066_4CBB:
    ld c, b                                       ; $4CBB: $48
    nop                                           ; $4CBC: $00
    dec b                                         ; $4CBD: $05
    inc b                                         ; $4CBE: $04
    dec b                                         ; $4CBF: $05
    inc bc                                        ; $4CC0: $03
    inc h                                         ; $4CC1: $24
    inc hl                                        ; $4CC2: $23
    add d                                         ; $4CC3: $82
    inc h                                         ; $4CC4: $24
    add h                                         ; $4CC5: $84
    ld [$0A8C], sp                                ; $4CC6: $08 $8C $0A
    add h                                         ; $4CC9: $84
    jr z, jr_066_4CD4                             ; $4CCA: $28 $08

    inc h                                         ; $4CCC: $24
    dec h                                         ; $4CCD: $25
    inc hl                                        ; $4CCE: $23
    dec h                                         ; $4CCF: $25
    jr nz, jr_066_4D1A                            ; $4CD0: $20 $48

jr_066_4CD2:
    jr nz, @+$4A                                  ; $4CD2: $20 $48

jr_066_4CD4:
    add d                                         ; $4CD4: $82
    inc b                                         ; $4CD5: $04
    add d                                         ; $4CD6: $82
    ld bc, $0483                                  ; $4CD7: $01 $83 $04
    ld bc, $8401                                  ; $4CDA: $01 $01 $84
    jr z, jr_066_4C62                             ; $4CDD: $28 $83

    ld [$4882], sp                                ; $4CDF: $08 $82 $48
    add d                                         ; $4CE2: $82
    ld [$2801], sp                                ; $4CE3: $08 $01 $28
    add h                                         ; $4CE6: $84
    inc bc                                        ; $4CE7: $03
    add e                                         ; $4CE8: $83
    nop                                           ; $4CE9: $00
    dec b                                         ; $4CEA: $05
    ld bc, $0304                                  ; $4CEB: $01 $04 $03
    inc b                                         ; $4CEE: $04
    nop                                           ; $4CEF: $00

jr_066_4CF0:
    add h                                         ; $4CF0: $84
    inc h                                         ; $4CF1: $24
    ld [bc], a                                    ; $4CF2: $02
    ld c, b                                       ; $4CF3: $48
    ld [$4882], sp                                ; $4CF4: $08 $82 $48
    ld [bc], a                                    ; $4CF7: $02
    ld [$820A], sp                                ; $4CF8: $08 $0A $82
    ld [$0A82], sp                                ; $4CFB: $08 $82 $0A
    inc bc                                        ; $4CFE: $03
    ld [$0A28], sp                                ; $4CFF: $08 $28 $0A
    add h                                         ; $4D02: $84
    jr z, jr_066_4C88                             ; $4D03: $28 $83

    ld c, b                                       ; $4D05: $48
    inc b                                         ; $4D06: $04
    inc hl                                        ; $4D07: $23
    inc h                                         ; $4D08: $24
    jr nz, @+$26                                  ; $4D09: $20 $24

    add d                                         ; $4D0B: $82
    jr nz, jr_066_4D18                            ; $4D0C: $20 $0A

    ld hl, $0420                                  ; $4D0E: $21 $20 $04
    ld bc, $0003                                  ; $4D11: $01 $03 $00
    ld bc, $0003                                  ; $4D14: $01 $03 $00
    inc bc                                        ; $4D17: $03

jr_066_4D18:
    add d                                         ; $4D18: $82
    ld c, b                                       ; $4D19: $48

jr_066_4D1A:
    add d                                         ; $4D1A: $82
    jr z, jr_066_4C9F                             ; $4D1B: $28 $82

    ld c, b                                       ; $4D1D: $48
    add d                                         ; $4D1E: $82
    ld [$2284], sp                                ; $4D1F: $08 $84 $22
    add h                                         ; $4D22: $84
    ld c, $0C                                     ; $4D23: $0E $0C
    nop                                           ; $4D25: $00
    ld bc, $0048                                  ; $4D26: $01 $48 $00
    inc b                                         ; $4D29: $04
    ld bc, $0403                                  ; $4D2A: $01 $03 $04
    ld bc, HeaderLogo                             ; $4D2D: $01 $04 $01

jr_066_4D30:
    nop                                           ; $4D30: $00
    add e                                         ; $4D31: $83
    inc b                                         ; $4D32: $04
    inc b                                         ; $4D33: $04
    inc bc                                        ; $4D34: $03
    inc h                                         ; $4D35: $24
    inc h                                         ; $4D36: $24
    ld hl, $2483                                  ; $4D37: $21 $83 $24
    add d                                         ; $4D3A: $82
    ld hl, $2482                                  ; $4D3B: $21 $82 $24
    dec b                                         ; $4D3E: $05
    inc hl                                        ; $4D3F: $23
    inc h                                         ; $4D40: $24
    inc h                                         ; $4D41: $24
    ld hl, $8220                                  ; $4D42: $21 $20 $82
    ld hl, $2482                                  ; $4D45: $21 $82 $24
    ld [bc], a                                    ; $4D48: $02
    inc hl                                        ; $4D49: $23
    ld hl, $2082                                  ; $4D4A: $21 $82 $20
    inc bc                                        ; $4D4D: $03
    ld c, b                                       ; $4D4E: $48
    nop                                           ; $4D4F: $00
    nop                                           ; $4D50: $00
    add d                                         ; $4D51: $82
    ld c, b                                       ; $4D52: $48
    add d                                         ; $4D53: $82
    nop                                           ; $4D54: $00
    add d                                         ; $4D55: $82
    ld c, b                                       ; $4D56: $48
    adc b                                         ; $4D57: $88
    ld [$2284], sp                                ; $4D58: $08 $84 $22
    add h                                         ; $4D5B: $84
    ld c, $84                                     ; $4D5C: $0E $84
    ld l, $02                                     ; $4D5E: $2E $02
    nop                                           ; $4D60: $00
    inc b                                         ; $4D61: $04
    add d                                         ; $4D62: $82
    nop                                           ; $4D63: $00
    inc b                                         ; $4D64: $04
    inc b                                         ; $4D65: $04
    ld bc, $0003                                  ; $4D66: $01 $03 $00
    add h                                         ; $4D69: $84
    inc b                                         ; $4D6A: $04
    ld [$2123], sp                                ; $4D6B: $08 $23 $21
    inc hl                                        ; $4D6E: $23
    jr nz, jr_066_4D92                            ; $4D6F: $20 $21

    inc h                                         ; $4D71: $24
    jr nz, jr_066_4D97                            ; $4D72: $20 $23

    add h                                         ; $4D74: $84
    inc h                                         ; $4D75: $24
    dec b                                         ; $4D76: $05
    ld hl, $2024                                  ; $4D77: $21 $24 $20
    inc hl                                        ; $4D7A: $23
    inc h                                         ; $4D7B: $24
    add e                                         ; $4D7C: $83
    jr nz, @-$7C                                  ; $4D7D: $20 $82

    dec h                                         ; $4D7F: $25
    ld b, $23                                     ; $4D80: $06 $23
    jr nz, jr_066_4DA4                            ; $4D82: $20 $20

    dec h                                         ; $4D84: $25
    inc hl                                        ; $4D85: $23
    inc hl                                        ; $4D86: $23
    inc bc                                        ; $4D87: $03
    jr nz, jr_066_4D8A                            ; $4D88: $20 $00

jr_066_4D8A:
    ld c, b                                       ; $4D8A: $48
    add d                                         ; $4D8B: $82
    nop                                           ; $4D8C: $00
    add d                                         ; $4D8D: $82
    jr nz, jr_066_4D91                            ; $4D8E: $20 $01

    ld l, b                                       ; $4D90: $68

jr_066_4D91:
    adc b                                         ; $4D91: $88

jr_066_4D92:
    ld [hl+], a                                   ; $4D92: $22
    ld bc, $840E                                  ; $4D93: $01 $0E $84
    ld c, b                                       ; $4D96: $48

jr_066_4D97:
    ld bc, $832E                                  ; $4D97: $01 $2E $83
    ld c, b                                       ; $4D9A: $48
    inc bc                                        ; $4D9B: $03
    nop                                           ; $4D9C: $00
    ld c, b                                       ; $4D9D: $48
    ld c, b                                       ; $4D9E: $48
    add d                                         ; $4D9F: $82
    nop                                           ; $4DA0: $00
    add d                                         ; $4DA1: $82
    ld c, b                                       ; $4DA2: $48
    add d                                         ; $4DA3: $82

jr_066_4DA4:
    jr nz, @-$7C                                  ; $4DA4: $20 $82

    ld c, b                                       ; $4DA6: $48
    add d                                         ; $4DA7: $82
    jr nz, @-$7C                                  ; $4DA8: $20 $82

    ld c, b                                       ; $4DAA: $48
    add d                                         ; $4DAB: $82
    jr nz, jr_066_4D30                            ; $4DAC: $20 $82

    ld c, b                                       ; $4DAE: $48
    add d                                         ; $4DAF: $82
    nop                                           ; $4DB0: $00
    add d                                         ; $4DB1: $82
    ld c, b                                       ; $4DB2: $48
    add d                                         ; $4DB3: $82
    jr nz, @-$7C                                  ; $4DB4: $20 $82

    ld c, b                                       ; $4DB6: $48
    ld bc, $8320                                  ; $4DB7: $01 $20 $83
    ld c, b                                       ; $4DBA: $48
    add d                                         ; $4DBB: $82
    inc hl                                        ; $4DBC: $23
    add d                                         ; $4DBD: $82
    ld l, b                                       ; $4DBE: $68
    ld [bc], a                                    ; $4DBF: $02
    jr nz, @+$25                                  ; $4DC0: $20 $23

    add d                                         ; $4DC2: $82
    ld l, b                                       ; $4DC3: $68
    add h                                         ; $4DC4: $84
    ld [hl+], a                                   ; $4DC5: $22
    ld [$2A0A], sp                                ; $4DC6: $08 $0A $2A
    ld a, [bc]                                    ; $4DC9: $0A
    ld a, [hl+]                                   ; $4DCA: $2A
    ld a, [bc]                                    ; $4DCB: $0A
    ld a, [hl+]                                   ; $4DCC: $2A
    ld a, [bc]                                    ; $4DCD: $0A
    ld a, [hl+]                                   ; $4DCE: $2A
    nop                                           ; $4DCF: $00

    db $82, $F0, $0E, $0A, $0B, $02, $03, $12, $13, $02, $03, $04, $05, $03, $02, $13
    db $12, $82, $F0, $09, $1B, $0A, $2A, $2B, $2A, $2B, $6E, $6F, $6E, $82, $6F, $19
    db $6E, $6F, $6E, $FC, $FD, $FE, $FF, $F8, $F9, $FA, $FB, $27, $28, $37, $1F, $28
    db $27, $1F, $37, $00, $01, $10, $11, $08, $09, $82, $FF, $02, $09, $08, $82, $FF
    db $0F, $01, $00, $11, $10, $0A, $0B, $0A, $0B, $04, $05, $14, $15, $04, $05, $06
    db $82, $07, $13, $05, $08, $06, $1B, $0A, $1B, $0A, $3A, $3B, $3A, $3B, $3C, $2B
    db $3D, $2B, $2A, $3C, $2A, $3D, $82, $F6, $82, $F7, $85, $F0, $02, $2A, $F0, $82
    db $3A, $07, $F0, $2A, $F0, $02, $03, $12, $13, $82, $FF, $02, $0A, $0B, $82, $FF
    db $0F, $0B, $0A, $03, $02, $13, $12, $0A, $06, $0C, $0D, $08, $09, $18, $19, $16
    db $82, $08, $16, $09, $18, $0D, $16, $08, $06, $0A, $0D, $0C, $3F, $3E, $2F, $3B
    db $3E, $3F, $3A, $2F, $2C, $2D, $2A, $2B, $08, $82, $43, $23, $52, $43, $0D, $52
    db $43, $F0, $47, $F0, $57, $47, $F0, $57, $F0, $04, $05, $14, $15, $0C, $0D, $1C
    db $1D, $0D, $0C, $1D, $1C, $05, $04, $1D, $14, $0C, $18, $1C, $1D, $07, $16, $82
    db $1D, $02, $18, $19, $82, $1D, $02, $0D, $19, $82, $1D, $11, $18, $0C, $1D, $1C
    db $2F, $3B, $3F, $3E, $3A, $2F, $3E, $3F, $2A, $2B, $2C, $2D, $54, $84, $F0, $01
    db $54, $83, $F0, $02, $57, $F0, $82, $57, $33, $F0, $57, $F0, $0E, $0F, $1E, $1F
    db $2B, $2C, $3B, $F0, $2C, $2B, $F0, $3B, $0F, $0E, $1F, $1E, $22, $23, $32, $04
    db $23, $22, $05, $32, $22, $23, $33, $F0, $23, $22, $F0, $33, $49, $4A, $7E, $7F
    db $59, $5A, $7E, $7F, $14, $15, $26, $27, $06, $07, $27, $26, $84, $6F, $86, $F0
    db $21, $60, $61, $60, $61, $70, $71, $20, $21, $30, $31, $3B, $F0, $2B, $2C, $F0
    db $3B, $2C, $2B, $21, $20, $31, $30, $24, $04, $24, $14, $06, $24, $15, $24, $25
    db $F0, $25, $82, $F0, $1D, $25, $F0, $25, $22, $23, $4D, $4E, $23, $22, $4F, $32
    db $36, $37, $28, $29, $37, $36, $29, $28, $3A, $63, $3A, $64, $63, $3B, $64, $3B
    db $72, $73, $82, $F0, $37, $62, $63, $70, $71, $22, $23, $32, $33, $24, $25, $34
    db $35, $24, $25, $34, $35, $23, $22, $33, $32, $24, $05, $41, $3A, $04, $24, $3B
    db $41, $25, $F0, $41, $3A, $F0, $25, $3B, $41, $5D, $5E, $41, $3A, $5E, $5D, $3B
    db $41, $38, $39, $3A, $3B, $39, $38, $3A, $3B, $42, $61, $F0, $82, $61, $02, $42
    db $61, $83, $F0, $16, $29, $39, $62, $63, $72, $73, $FF, $13, $09, $05, $13, $FF
    db $05, $09, $16, $17, $06, $07, $17, $16, $07, $06, $83, $6D, $06, $2B, $6D, $6D
    db $2A, $6D, $6D, $07, $2B, $2A, $2B, $2A, $6D, $2A, $2B, $82, $6D, $0A, $2A, $2B
    db $46, $47, $56, $57, $47, $46, $57, $56, $82, $0E, $82, $1E, $82, $20, $82, $6C
    db $86, $F0, $02, $39, $29, $84, $F0, $12, $09, $05, $FF, $13, $05, $09, $13, $FF
    db $06, $07, $16, $17, $07, $06, $17, $16, $6D, $2B, $82, $6D, $01, $2A, $83, $6D
    db $0A, $2A, $2B, $6D, $2B, $2A, $2B, $2A, $6D, $2A, $2B, $82, $6D, $08, $58, $48
    db $3A, $3B, $48, $58, $3A, $3B, $82, $0F, $82, $1F, $82, $7C, $82, $7D, $08, $F0
    db $43, $43, $52, $43, $F0, $52, $43, $84, $FF, $03, $03, $FF, $03, $82, $FF, $03
    db $03, $FF, $03, $83, $FF, $05, $13, $FF, $FF, $13, $FF, $83, $2E, $06, $3B, $2E
    db $2E, $3A, $2E, $2E, $07, $3B, $3A, $3B, $3A, $2E, $3A, $3B, $82, $2E, $03, $3A
    db $3B, $F0, $82, $43, $12, $52, $43, $F0, $52, $43, $4B, $4C, $5B, $5C, $67, $68
    db $77, $78, $68, $67, $78, $77, $5F, $85, $F0, $02, $29, $39, $82, $F0, $02, $39
    db $29, $82, $FF, $82, $09, $02, $FF, $13, $82, $FF, $01, $13, $83, $FF, $02, $2E
    db $3B, $82, $2E, $01, $3A, $83, $2E, $0A, $3A, $3B, $2E, $3B, $3A, $3B, $3A, $2E
    db $3A, $3B, $82, $2E, $16, $17, $43, $43, $52, $43, $17, $52, $43, $07, $5F, $06
    db $05, $69, $6A, $77, $78, $6A, $69, $78, $77, $2B, $2C, $82, $F0, $02, $2C, $2B
    db $82, $F0, $20, $40, $41, $50, $51, $42, $43, $52, $53, $2E, $2F, $3E, $3F, $46
    db $56, $51, $50, $6D, $2B, $6D, $2B, $2A, $6D, $2A, $6D, $00, $01, $10, $11, $01
    db $00, $11, $10, $82, $20, $82, $30, $88, $52, $0F, $F0, $68, $F0, $68, $69, $6A
    db $79, $7A, $6A, $69, $7A, $79, $68, $F0, $68, $89, $F0, $1C, $44, $45, $54, $55
    db $45, $44, $55, $54, $2F, $2E, $3F, $3E, $2E, $3B, $2E, $3B, $3A, $2E, $3A, $2E
    db $20, $21, $30, $31, $21, $20, $31, $30, $82, $34, $82, $35, $1B, $53, $44, $44
    db $54, $44, $53, $54, $44, $05, $68, $07, $68, $69, $6A, $69, $7A, $6A, $69, $7A
    db $69, $68, $05, $68, $07, $3A, $61, $3A, $82, $61, $1A, $3B, $61, $3B, $2A, $63
    db $2A, $64, $63, $2B, $64, $2B, $21, $20, $6C, $30, $F0, $65, $F0, $75, $65, $F0
    db $75, $F0, $34, $F0, $35, $82, $F0, $08, $34, $F0, $35, $49, $4A, $59, $5A, $54
    db $82, $45, $18, $F0, $45, $54, $F0, $45, $66, $67, $76, $77, $69, $6B, $78, $7B
    db $6B, $69, $7B, $78, $67, $66, $77, $76, $05, $61, $15, $82, $61, $12, $05, $61
    db $15, $3A, $63, $3A, $74, $63, $3B, $74, $3B, $7C, $34, $7D, $35, $F0, $75, $F0
    db $82, $75, $02, $F0, $75, $82, $F0, $03, $63, $F0, $64, $82, $62, $82, $72, $1E
    db $63, $F0, $64, $F0, $63, $62, $64, $71, $62, $63, $71, $64, $69, $6A, $3B, $3A
    db $79, $2E, $3B, $3A, $2E, $79, $3B, $3A, $6A, $69, $3B, $3A, $F0, $55, $82, $F0
    db $82, $42, $82, $F0, $01, $55, $83, $F0, $0B, $20, $21, $30, $6C, $34, $7C, $35
    db $7D, $F0, $61, $F0, $82, $61, $02, $F0, $61, $82, $F0, $03, $63, $F0, $74, $82
    db $62, $82, $72, $0C, $63, $F0, $74, $F0, $63, $62, $73, $72, $62, $63, $72, $73
    db $82, $60, $82, $70, $82, $40, $02, $50, $51, $9C, $F0, $82, $60, $89, $05, $01
    db $03, $84, $25, $82, $60, $82, $25, $88, $06, $84, $26, $88, $03, $83, $0C, $05
    db $08, $2C, $2C, $28, $2C, $86, $09, $82, $69, $82, $29, $82, $69, $84, $29, $84
    db $03, $01, $05, $83, $03, $01, $05, $87, $03, $84, $23, $89, $06, $07, $26, $06
    db $26, $03, $23, $03, $23, $84, $67, $08, $64, $0C, $64, $0C, $6C, $64, $6C, $64
    db $84, $09, $82, $69, $82, $09, $82, $69, $86, $29, $90, $03, $84, $23, $83, $66
    db $05, $06, $46, $46, $06, $46, $84, $06, $10, $03, $06, $06, $46, $26, $03, $66
    db $26, $60, $0A, $60, $4A, $2A, $60, $6A, $60, $88, $09, $88, $29, $90, $03, $82
    db $23, $04, $03, $23, $26, $06, $82, $26, $86, $06, $82, $46, $01, $02, $84, $60
    db $01, $22, $83, $60, $07, $0A, $60, $2A, $0A, $60, $2A, $60, $84, $08, $83, $0C
    db $05, $60, $2C, $2C, $60, $2C, $84, $28, $84, $05, $82, $25, $02, $03, $25, $83
    db $05, $05, $60, $25, $25, $60, $25, $82, $04, $82, $06, $82, $04, $82, $06, $86
    db $03, $82, $23, $04, $06, $26, $06, $26, $84, $67, $82, $60, $86, $0A, $84, $08
    db $02, $4C, $60, $82, $4C, $01, $60, $83, $6C, $84, $28, $83, $05, $82, $03, $06
    db $25, $03, $25, $05, $60, $05, $82, $60, $03, $25, $60, $25, $83, $05, $05, $04
    db $25, $25, $04, $25, $83, $03, $0D, $04, $23, $23, $24, $23, $06, $22, $06, $22
    db $02, $06, $02, $06, $82, $0A, $82, $60, $84, $0A, $88, $08, $88, $28, $10, $05
    db $03, $03, $06, $05, $25, $06, $23, $05, $60, $03, $06, $60, $25, $06, $23, $82
    db $05, $02, $03, $06, $82, $25, $02, $06, $23, $82, $03, $82, $06, $82, $23, $82
    db $06, $08, $26, $02, $60, $42, $22, $26, $62, $60, $82, $64, $82, $0C, $84, $0A
    db $08, $69, $29, $69, $29, $09, $69, $09, $49, $83, $48, $05, $49, $68, $68, $69
    db $68, $94, $06, $84, $02, $84, $22, $08, $05, $25, $05, $25, $03, $23, $05, $25
    db $84, $67, $82, $64, $82, $2C, $84, $60, $01, $29, $83, $69, $06, $49, $09, $49
    db $69, $08, $09, $82, $08, $01, $29, $83, $28, $94, $06, $82, $05, $82, $06, $02
    db $05, $25, $82, $06, $09, $05, $25, $05, $25, $05, $25, $05, $25, $60, $82, $06
    db $05, $46, $26, $60, $66, $26, $84, $69, $03, $09, $69, $09, $82, $69, $03, $29
    db $69, $29, $83, $69, $05, $29, $69, $69, $09, $69, $94, $06, $08, $64, $06, $06
    db $46, $26, $64, $66, $26, $84, $04, $84, $0A, $84, $2A, $01, $04, $85, $60, $82
    db $08, $82, $60, $82, $28, $82, $69, $01, $49, $85, $69, $01, $49, $83, $69, $94
    db $06, $0C, $03, $06, $06, $46, $26, $23, $66, $26, $03, $04, $23, $03, $84, $0A
    db $84, $2A, $82, $4C, $82, $64, $82, $6C, $82, $64, $8E, $0C, $82, $2C, $88, $06
    db $84, $03, $84, $23, $04, $03, $23, $03, $23, $84, $46, $84, $66, $04, $60, $02
    db $60, $02, $84, $0A, $84, $2A, $04, $22, $60, $22, $60, $84, $67, $84, $64, $84
    db $0C, $88, $2C, $88, $06, $83, $03, $09, $05, $23, $23, $25, $23, $03, $23, $03
    db $23, $83, $06, $09, $02, $26, $26, $22, $26, $03, $02, $03, $02, $83, $0A, $10
    db $02, $2A, $2A, $22, $2A, $22, $23, $22, $23, $06, $02, $06, $42, $22, $06, $62
    db $82, $06, $07, $22, $06, $22, $02, $06, $02, $06, $82, $23, $0D, $25, $23, $60
    db $22, $60, $22, $02, $60, $02, $60, $03, $60, $03, $82, $60, $03, $23, $60, $23
    db $84, $04, $0D, $02, $04, $04, $64, $24, $22, $64, $24, $06, $02, $06, $02, $0A
    db $83, $02, $02, $22, $2A, $83, $22, $1E, $26, $22, $26, $03, $02, $03, $42, $22
    db $03, $62, $03, $06, $22, $06, $22, $02, $06, $02, $06, $25, $23, $25, $23, $60
    db $62, $60, $22, $42, $60, $02, $82, $60, $0D, $22, $60, $22, $02, $22, $02, $22
    db $02, $60, $02, $60, $02, $22, $84, $02, $82, $22, $88, $06, $82, $26, $82, $06
    db $82, $26, $82, $06, $02, $60, $26, $82, $60, $82, $26, $82, $60, $01, $06, $83
    db $60, $83, $03, $0C, $05, $03, $05, $03, $05, $60, $02, $60, $42, $22, $60, $62
    db $82, $60, $0B, $22, $60, $22, $02, $22, $02, $22, $02, $60, $02, $60, $84, $22
    db $85, $02, $05, $22, $02, $22, $03, $23, $82, $03, $8C, $67, $84, $61, $8C, $67
    db $00

    ld b, b                                       ; $54B1: $40
    ld b, b                                       ; $54B2: $40
    ld [bc], a                                    ; $54B3: $02
    dec [hl]                                      ; $54B4: $35
    ld [hl], $00                                  ; $54B5: $36 $00
    db $10                                        ; $54B7: $10
    and [hl]                                      ; $54B8: $A6
    nop                                           ; $54B9: $00
    ld bc, $8425                                  ; $54BA: $01 $25 $84
    nop                                           ; $54BD: $00
    ld bc, $BB25                                  ; $54BE: $01 $25 $BB
    nop                                           ; $54C1: $00
    ld b, $25                                     ; $54C2: $06 $25
    ld d, d                                       ; $54C4: $52
    ld d, e                                       ; $54C5: $53
    ld d, h                                       ; $54C6: $54
    ld d, l                                       ; $54C7: $55
    dec h                                         ; $54C8: $25
    add e                                         ; $54C9: $83
    nop                                           ; $54CA: $00
    inc b                                         ; $54CB: $04
    ld [bc], a                                    ; $54CC: $02
    inc bc                                        ; $54CD: $03
    inc b                                         ; $54CE: $04
    dec b                                         ; $54CF: $05
    add h                                         ; $54D0: $84
    nop                                           ; $54D1: $00
    inc b                                         ; $54D2: $04
    ld [bc], a                                    ; $54D3: $02
    inc bc                                        ; $54D4: $03
    inc b                                         ; $54D5: $04
    dec b                                         ; $54D6: $05
    xor e                                         ; $54D7: $AB
    nop                                           ; $54D8: $00
    rla                                           ; $54D9: $17
    ld h, c                                       ; $54DA: $61
    ld h, d                                       ; $54DB: $62
    ld h, e                                       ; $54DC: $63
    ld h, h                                       ; $54DD: $64
    ld h, l                                       ; $54DE: $65
    ld h, [hl]                                    ; $54DF: $66
    rla                                           ; $54E0: $17
    db $10                                        ; $54E1: $10
    ld de, $1312                                  ; $54E2: $11 $12 $13
    inc d                                         ; $54E5: $14
    dec d                                         ; $54E6: $15
    ld d, $17                                     ; $54E7: $16 $17
    db $10                                        ; $54E9: $10
    ld de, $1312                                  ; $54EA: $11 $12 $13
    inc d                                         ; $54ED: $14
    dec d                                         ; $54EE: $15
    ld d, $17                                     ; $54EF: $16 $17
    xor c                                         ; $54F1: $A9
    nop                                           ; $54F2: $00
    ld [de], a                                    ; $54F3: $12
    ld [hl], c                                    ; $54F4: $71
    ld [hl+], a                                   ; $54F5: $22
    inc hl                                        ; $54F6: $23
    inc h                                         ; $54F7: $24
    dec h                                         ; $54F8: $25
    ld h, $27                                     ; $54F9: $26 $27
    jr nz, jr_066_551E                            ; $54FB: $20 $21

    ld [hl+], a                                   ; $54FD: $22
    inc hl                                        ; $54FE: $23
    inc h                                         ; $54FF: $24
    dec h                                         ; $5500: $25
    ld h, $27                                     ; $5501: $26 $27
    jr nz, jr_066_5526                            ; $5503: $20 $21

    ld [hl+], a                                   ; $5505: $22
    add d                                         ; $5506: $82
    ld [hl], b                                    ; $5507: $70
    inc bc                                        ; $5508: $03
    dec h                                         ; $5509: $25
    ld h, $27                                     ; $550A: $26 $27
    and d                                         ; $550C: $A2
    nop                                           ; $550D: $00
    ld b, $32                                     ; $550E: $06 $32
    inc sp                                        ; $5510: $33
    inc [hl]                                      ; $5511: $34
    dec [hl]                                      ; $5512: $35
    inc sp                                        ; $5513: $33
    ld [hl-], a                                   ; $5514: $32
    add d                                         ; $5515: $82
    inc [hl]                                      ; $5516: $34
    ld de, $3335                                  ; $5517: $11 $35 $33
    inc [hl]                                      ; $551A: $34
    dec [hl]                                      ; $551B: $35
    ld [hl], $37                                  ; $551C: $36 $37

jr_066_551E:
    jr nc, jr_066_5551                            ; $551E: $30 $31

    ld [hl-], a                                   ; $5520: $32
    inc sp                                        ; $5521: $33
    inc [hl]                                      ; $5522: $34
    dec [hl]                                      ; $5523: $35
    ld [hl], $37                                  ; $5524: $36 $37

jr_066_5526:
    jr nc, jr_066_5559                            ; $5526: $30 $31

    ld [hl], b                                    ; $5528: $70
    add d                                         ; $5529: $82
    add b                                         ; $552A: $80
    inc bc                                        ; $552B: $03
    ld [hl], b                                    ; $552C: $70
    ld [hl], $37                                  ; $552D: $36 $37
    and d                                         ; $552F: $A2
    nop                                           ; $5530: $00
    dec b                                         ; $5531: $05
    ld b, d                                       ; $5532: $42
    ld b, e                                       ; $5533: $43
    ld b, h                                       ; $5534: $44
    ld b, l                                       ; $5535: $45
    ld b, e                                       ; $5536: $43
    add d                                         ; $5537: $82
    ld b, l                                       ; $5538: $45
    ld de, $4544                                  ; $5539: $11 $44 $45
    ld b, e                                       ; $553C: $43
    ld b, h                                       ; $553D: $44
    ld b, l                                       ; $553E: $45
    ld b, [hl]                                    ; $553F: $46
    ld b, a                                       ; $5540: $47
    ld b, b                                       ; $5541: $40
    ld b, c                                       ; $5542: $41
    ld b, d                                       ; $5543: $42
    ld b, e                                       ; $5544: $43
    ld b, h                                       ; $5545: $44
    ld b, l                                       ; $5546: $45
    ld b, [hl]                                    ; $5547: $46
    ld b, a                                       ; $5548: $47
    ld b, b                                       ; $5549: $40
    ld b, c                                       ; $554A: $41
    add h                                         ; $554B: $84
    sub b                                         ; $554C: $90
    inc bc                                        ; $554D: $03
    ld b, [hl]                                    ; $554E: $46
    ld b, a                                       ; $554F: $47
    cpl                                           ; $5550: $2F

jr_066_5551:
    xor e                                         ; $5551: $AB
    nop                                           ; $5552: $00
    rlca                                          ; $5553: $07
    rst $08                                       ; $5554: $CF
    add c                                         ; $5555: $81
    ld d, [hl]                                    ; $5556: $56
    ld d, a                                       ; $5557: $57
    ld d, b                                       ; $5558: $50

jr_066_5559:
    ld d, c                                       ; $5559: $51
    db $DD                                        ; $555A: $DD
    add d                                         ; $555B: $82
    nop                                           ; $555C: $00
    inc c                                         ; $555D: $0C
    rst $18                                       ; $555E: $DF
    ld d, [hl]                                    ; $555F: $56
    ld d, a                                       ; $5560: $57
    ld d, b                                       ; $5561: $50
    ld d, c                                       ; $5562: $51
    ld bc, $0D0C                                  ; $5563: $01 $0C $0D
    ld bc, $5756                                  ; $5566: $01 $56 $57
    ccf                                           ; $5569: $3F
    xor h                                         ; $556A: $AC
    nop                                           ; $556B: $00
    ld [bc], a                                    ; $556C: $02
    adc $CF                                       ; $556D: $CE $CF
    add d                                         ; $556F: $82
    ld bc, $CD01                                  ; $5570: $01 $01 $CD
    add e                                         ; $5573: $83
    nop                                           ; $5574: $00
    ld bc, $83DF                                  ; $5575: $01 $DF $83
    ld a, e                                       ; $5578: $7B
    add d                                         ; $5579: $82
    ld bc, $0C02                                  ; $557A: $01 $02 $0C
    dec c                                         ; $557D: $0D
    add d                                         ; $557E: $82
    ld bc, $0702                                  ; $557F: $01 $02 $07
    ccf                                           ; $5582: $3F
    adc e                                         ; $5583: $8B
    nop                                           ; $5584: $00
    add l                                         ; $5585: $85
    xor $9E                                       ; $5586: $EE $9E
    nop                                           ; $5588: $00
    add d                                         ; $5589: $82
    adc $83                                       ; $558A: $CE $83
    nop                                           ; $558C: $00
    ld [bc], a                                    ; $558D: $02
    xor $EF                                       ; $558E: $EE $EF
    add e                                         ; $5590: $83
    adc e                                         ; $5591: $8B
    ld [$015C], sp                                ; $5592: $08 $5C $01
    inc e                                         ; $5595: $1C
    dec e                                         ; $5596: $1D
    or e                                          ; $5597: $B3
    or h                                          ; $5598: $B4
    ld bc, $8A3F                                  ; $5599: $01 $3F $8A
    nop                                           ; $559C: $00
    ld b, $EF                                     ; $559D: $06 $EF
    ld bc, $4D01                                  ; $559F: $01 $01 $4D
    ld bc, $0201                                  ; $55A2: $01 $01 $02
    db $ED                                        ; $55A5: $ED
    xor $9B                                       ; $55A6: $EE $9B
    nop                                           ; $55A8: $00
    add l                                         ; $55A9: $85
    xor $03                                       ; $55AA: $EE $03
    rst $28                                       ; $55AC: $EF
    ld bc, $823C                                  ; $55AD: $01 $3C $82
    ld bc, $5C05                                  ; $55B0: $01 $05 $5C
    ld l, h                                       ; $55B3: $6C
    ld bc, $0D0C                                  ; $55B4: $01 $0C $0D
    add d                                         ; $55B7: $82
    ld bc, $5802                                  ; $55B8: $01 $02 $58
    ccf                                           ; $55BB: $3F
    adc b                                         ; $55BC: $88
    nop                                           ; $55BD: $00
    ld b, $EE                                     ; $55BE: $06 $EE
    rst $28                                       ; $55C0: $EF
    ld bc, $797A                                  ; $55C1: $01 $7A $79
    ld a, b                                       ; $55C4: $78
    add h                                         ; $55C5: $84
    ld bc, $ED01                                  ; $55C6: $01 $01 $ED
    sub a                                         ; $55C9: $97
    nop                                           ; $55CA: $00
    add d                                         ; $55CB: $82
    xor $01                                       ; $55CC: $EE $01
    rst $28                                       ; $55CE: $EF
    add e                                         ; $55CF: $83
    ld bc, $5A08                                  ; $55D0: $01 $08 $5A
    ld e, c                                       ; $55D3: $59
    ld a, b                                       ; $55D4: $78
    ld e, [hl]                                    ; $55D5: $5E
    ld c, h                                       ; $55D6: $4C
    ld bc, $6C5E                                  ; $55D7: $01 $5E $6C
    add d                                         ; $55DA: $82
    ld bc, $0C06                                  ; $55DB: $01 $06 $0C
    dec c                                         ; $55DE: $0D
    ld e, b                                       ; $55DF: $58
    ld bc, $3F68                                  ; $55E0: $01 $68 $3F
    add a                                         ; $55E3: $87
    nop                                           ; $55E4: $00
    ld [$5EEF], sp                                ; $55E5: $08 $EF $5E
    ld e, [hl]                                    ; $55E8: $5E
    ld bc, $898A                                  ; $55E9: $01 $8A $89
    adc b                                         ; $55EC: $88
    ld bc, $5E82                                  ; $55ED: $01 $82 $5E
    inc bc                                        ; $55F0: $03
    ld e, c                                       ; $55F1: $59
    ld bc, $95DD                                  ; $55F2: $01 $DD $95
    nop                                           ; $55F5: $00
    inc bc                                        ; $55F6: $03
    rst $28                                       ; $55F7: $EF
    ld bc, $845E                                  ; $55F8: $01 $5E $84
    ld bc, $6A04                                  ; $55FB: $01 $04 $6A
    ld l, c                                       ; $55FE: $69
    adc b                                         ; $55FF: $88
    ld l, [hl]                                    ; $5600: $6E
    add d                                         ; $5601: $82
    ld bc, $6E0A                                  ; $5602: $01 $0A $6E
    ld bc, $0801                                  ; $5605: $01 $01 $08
    inc c                                         ; $5608: $0C
    dec c                                         ; $5609: $0D
    ld l, b                                       ; $560A: $68
    call $3FCE                                    ; $560B: $CD $CE $3F
    add [hl]                                      ; $560E: $86
    nop                                           ; $560F: $00
    inc b                                         ; $5610: $04
    rst $18                                       ; $5611: $DF
    ld bc, $5E7B                                  ; $5612: $01 $7B $5E
    add l                                         ; $5615: $85
    ld bc, $3C05                                  ; $5616: $01 $05 $3C
    ld e, [hl]                                    ; $5619: $5E
    ld l, c                                       ; $561A: $69
    dec a                                         ; $561B: $3D
    db $ED                                        ; $561C: $ED
    sub h                                         ; $561D: $94
    nop                                           ; $561E: $00
    rrca                                          ; $561F: $0F
    rst $18                                       ; $5620: $DF
    ld bc, $6E01                                  ; $5621: $01 $01 $6E
    ld e, h                                       ; $5624: $5C
    ld bc, $5E6E                                  ; $5625: $01 $6E $5E
    ld bc, $017F                                  ; $5628: $01 $7F $01
    adc [hl]                                      ; $562B: $8E
    ld bc, $0908                                  ; $562C: $01 $08 $09
    add e                                         ; $562F: $83
    ld c, $03                                     ; $5630: $0E $03
    ld a, [hl+]                                   ; $5632: $2A
    dec hl                                        ; $5633: $2B
    call $0082                                    ; $5634: $CD $82 $00
    ld bc, $863F                                  ; $5637: $01 $3F $86
    nop                                           ; $563A: $00
    ld [bc], a                                    ; $563B: $02
    rst $28                                       ; $563C: $EF
    ld bc, $5E82                                  ; $563D: $01 $82 $5E
    add h                                         ; $5640: $84
    ld bc, $8E07                                  ; $5641: $01 $07 $8E
    ld e, [hl]                                    ; $5644: $5E
    ld e, [hl]                                    ; $5645: $5E
    ld bc, HeaderComplementCheck                  ; $5646: $01 $4D $01
    db $DD                                        ; $5649: $DD
    sub e                                         ; $564A: $93
    nop                                           ; $564B: $00
    inc b                                         ; $564C: $04
    rst $28                                       ; $564D: $EF
    ld bc, $7D7E                                  ; $564E: $01 $7E $7D
    add d                                         ; $5651: $82
    ld e, [hl]                                    ; $5652: $5E
    add hl, bc                                    ; $5653: $09
    ld bc, $3C6E                                  ; $5654: $01 $6E $3C
    adc a                                         ; $5657: $8F
    or e                                          ; $5658: $B3
    or h                                          ; $5659: $B4
    ld bc, $1918                                  ; $565A: $01 $18 $19
    add e                                         ; $565D: $83
    ld e, $03                                     ; $565E: $1E $03
    ld a, [hl-]                                   ; $5660: $3A
    dec sp                                        ; $5661: $3B
    db $DD                                        ; $5662: $DD
    add d                                         ; $5663: $82
    nop                                           ; $5664: $00
    ld bc, $853F                                  ; $5665: $01 $3F $85
    nop                                           ; $5668: $00
    rlca                                          ; $5669: $07
    rst $18                                       ; $566A: $DF
    ld bc, $6E01                                  ; $566B: $01 $01 $6E
    ld e, [hl]                                    ; $566E: $5E
    ld bc, $835B                                  ; $566F: $01 $5B $83
    ld bc, $5E82                                  ; $5672: $01 $82 $5E
    add e                                         ; $5675: $83
    ld bc, $DD01                                  ; $5676: $01 $01 $DD
    sub d                                         ; $5679: $92
    nop                                           ; $567A: $00
    dec b                                         ; $567B: $05
    rst $18                                       ; $567C: $DF
    ld bc, $8E59                                  ; $567D: $01 $59 $8E
    adc l                                         ; $5680: $8D
    add d                                         ; $5681: $82
    ld l, [hl]                                    ; $5682: $6E
    add d                                         ; $5683: $82
    ld bc, $4C01                                  ; $5684: $01 $01 $4C
    add h                                         ; $5687: $84
    ld bc, $1C02                                  ; $5688: $01 $02 $1C
    dec e                                         ; $568B: $1D
    add e                                         ; $568C: $83
    ld bc, $CD02                                  ; $568D: $01 $02 $CD
    adc $83                                       ; $5690: $CE $83
    nop                                           ; $5692: $00
    ld bc, $853F                                  ; $5693: $01 $3F $85
    nop                                           ; $5696: $00
    rlca                                          ; $5697: $07
    rst $18                                       ; $5698: $DF
    ld bc, $016E                                  ; $5699: $01 $6E $01
    ld l, [hl]                                    ; $569C: $6E
    ld bc, $836B                                  ; $569D: $01 $6B $83
    ld bc, $5C02                                  ; $56A0: $01 $02 $5C
    ld e, [hl]                                    ; $56A3: $5E
    add e                                         ; $56A4: $83
    ld bc, $ED01                                  ; $56A5: $01 $01 $ED
    sub d                                         ; $56A8: $92
    nop                                           ; $56A9: $00
    dec bc                                        ; $56AA: $0B
    rst $28                                       ; $56AB: $EF
    ld a, a                                       ; $56AC: $7F
    ld l, c                                       ; $56AD: $69
    ld e, [hl]                                    ; $56AE: $5E
    ld c, e                                       ; $56AF: $4B
    ld bc, $0B08                                  ; $56B0: $01 $08 $0B
    ld bc, $0908                                  ; $56B3: $01 $08 $09
    add e                                         ; $56B6: $83
    ld c, $02                                     ; $56B7: $0E $02
    ld a, [hl+]                                   ; $56B9: $2A
    dec hl                                        ; $56BA: $2B
    add d                                         ; $56BB: $82
    ld bc, $CD01                                  ; $56BC: $01 $01 $CD
    add l                                         ; $56BF: $85
    nop                                           ; $56C0: $00
    ld bc, $854F                                  ; $56C1: $01 $4F $85
    nop                                           ; $56C4: $00
    ld bc, $85EF                                  ; $56C5: $01 $EF $85
    ld bc, $0807                                  ; $56C8: $01 $07 $08
    add hl, bc                                    ; $56CB: $09
    ld a, [bc]                                    ; $56CC: $0A
    dec bc                                        ; $56CD: $0B
    ld l, h                                       ; $56CE: $6C
    ld a, [hl]                                    ; $56CF: $7E
    ld a, a                                       ; $56D0: $7F
    add e                                         ; $56D1: $83
    ld bc, $ED01                                  ; $56D2: $01 $01 $ED
    sub b                                         ; $56D5: $90
    nop                                           ; $56D6: $00
    dec b                                         ; $56D7: $05
    rst $18                                       ; $56D8: $DF
    ld bc, $018F                                  ; $56D9: $01 $8F $01
    ld l, [hl]                                    ; $56DC: $6E
    add d                                         ; $56DD: $82
    ld bc, $3805                                  ; $56DE: $01 $05 $38
    dec sp                                        ; $56E1: $3B
    ld bc, $1918                                  ; $56E2: $01 $18 $19
    add e                                         ; $56E5: $83
    ld e, $04                                     ; $56E6: $1E $04
    ld a, [hl-]                                   ; $56E8: $3A
    dec sp                                        ; $56E9: $3B
    call $8BCE                                    ; $56EA: $CD $CE $8B
    nop                                           ; $56ED: $00
    ld bc, $83DF                                  ; $56EE: $01 $DF $83
    ld bc, $B30A                                  ; $56F1: $01 $0A $B3
    or h                                          ; $56F4: $B4
    ld bc, $1918                                  ; $56F5: $01 $18 $19
    ld a, [de]                                    ; $56F8: $1A
    dec de                                        ; $56F9: $1B
    ld bc, $8F8E                                  ; $56FA: $01 $8E $8F
    add h                                         ; $56FD: $84
    ld bc, $DD01                                  ; $56FE: $01 $01 $DD
    adc a                                         ; $5701: $8F
    nop                                           ; $5702: $00
    ld bc, $89EF                                  ; $5703: $01 $EF $89
    ld bc, $0C08                                  ; $5706: $01 $08 $0C
    dec c                                         ; $5709: $0D
    dec sp                                        ; $570A: $3B
    jr c, jr_066_5748                             ; $570B: $38 $3B

    ld a, e                                       ; $570D: $7B
    ld bc, $8CDD                                  ; $570E: $01 $DD $8C
    nop                                           ; $5711: $00
    dec b                                         ; $5712: $05
    rst $18                                       ; $5713: $DF
    ld a, e                                       ; $5714: $7B
    ld bc, $B4B3                                  ; $5715: $01 $B3 $B4
    add d                                         ; $5718: $82
    ld bc, $2805                                  ; $5719: $01 $05 $28
    add hl, hl                                    ; $571C: $29
    ld a, [hl+]                                   ; $571D: $2A
    dec hl                                        ; $571E: $2B
    ld bc, $5E82                                  ; $571F: $01 $82 $5E
    add h                                         ; $5722: $84
    ld bc, $DD01                                  ; $5723: $01 $01 $DD
    adc h                                         ; $5726: $8C
    nop                                           ; $5727: $00
    add d                                         ; $5728: $82
    xor $08                                       ; $5729: $EE $08
    rst $28                                       ; $572B: $EF
    ld bc, $0B08                                  ; $572C: $01 $08 $0B
    ld [$080B], sp                                ; $572F: $08 $0B $08
    dec bc                                        ; $5732: $0B
    add e                                         ; $5733: $83
    ld bc, $1C02                                  ; $5734: $01 $02 $1C
    dec e                                         ; $5737: $1D
    add d                                         ; $5738: $82
    ld bc, $5803                                  ; $5739: $01 $03 $58
    adc e                                         ; $573C: $8B
    call $008D                                    ; $573D: $CD $8D $00
    inc bc                                        ; $5740: $03
    rst $18                                       ; $5741: $DF
    adc e                                         ; $5742: $8B
    ld a, [hl]                                    ; $5743: $7E
    add h                                         ; $5744: $84
    ld bc, $3806                                  ; $5745: $01 $06 $38

jr_066_5748:
    add hl, sp                                    ; $5748: $39
    ld a, [hl-]                                   ; $5749: $3A
    dec sp                                        ; $574A: $3B
    ld bc, $826E                                  ; $574B: $01 $6E $82
    ld e, [hl]                                    ; $574E: $5E
    inc b                                         ; $574F: $04
    inc a                                         ; $5750: $3C
    ld bc, $ED01                                  ; $5751: $01 $01 $ED
    adc d                                         ; $5754: $8A
    nop                                           ; $5755: $00
    ld [bc], a                                    ; $5756: $02
    xor $EF                                       ; $5757: $EE $EF
    add d                                         ; $5759: $82
    ld bc, $0802                                  ; $575A: $01 $02 $08
    add hl, bc                                    ; $575D: $09
    add l                                         ; $575E: $85
    ld c, $02                                     ; $575F: $0E $02
    ld a, [bc]                                    ; $5761: $0A
    dec bc                                        ; $5762: $0B
    add d                                         ; $5763: $82
    ld bc, $0C07                                  ; $5764: $01 $07 $0C
    dec c                                         ; $5767: $0D
    ld bc, $685C                                  ; $5768: $01 $5C $68
    ld bc, $8DDD                                  ; $576B: $01 $DD $8D
    nop                                           ; $576E: $00
    ld b, $DF                                     ; $576F: $06 $DF
    ld bc, $018E                                  ; $5771: $01 $8E $01
    ld a, h                                       ; $5774: $7C
    ld a, l                                       ; $5775: $7D
    add a                                         ; $5776: $87
    ld bc, $6E82                                  ; $5777: $01 $82 $6E
    ld b, $4C                                     ; $577A: $06 $4C
    ld bc, $015E                                  ; $577C: $01 $5E $01
    db $ED                                        ; $577F: $ED
    xor $87                                       ; $5780: $EE $87
    nop                                           ; $5782: $00
    ld bc, $84EF                                  ; $5783: $01 $EF $84
    ld bc, $1802                                  ; $5786: $01 $02 $18
    add hl, de                                    ; $5789: $19
    add l                                         ; $578A: $85
    ld e, $02                                     ; $578B: $1E $02
    ld a, [de]                                    ; $578D: $1A
    dec de                                        ; $578E: $1B
    add d                                         ; $578F: $82
    ld bc, $0C06                                  ; $5790: $01 $06 $0C
    dec c                                         ; $5793: $0D
    ld bc, $5C6C                                  ; $5794: $01 $6C $5C
    call $008F                                    ; $5797: $CD $8F $00
    ld b, $CF                                     ; $579A: $06 $CF
    ld bc, $8C5D                                  ; $579C: $01 $5D $8C
    adc l                                         ; $579F: $8D
    ld a, a                                       ; $57A0: $7F
    add h                                         ; $57A1: $84
    ld bc, $B302                                  ; $57A2: $01 $02 $B3
    or h                                          ; $57A5: $B4
    add d                                         ; $57A6: $82
    ld bc, $4B03                                  ; $57A7: $01 $03 $4B
    ld bc, $826E                                  ; $57AA: $01 $6E $82
    ld e, [hl]                                    ; $57AD: $5E
    ld [bc], a                                    ; $57AE: $02
    ld bc, $85ED                                  ; $57AF: $01 $ED $85
    nop                                           ; $57B2: $00
    dec bc                                        ; $57B3: $0B
    rst $28                                       ; $57B4: $EF
    ld bc, $0801                                  ; $57B5: $01 $01 $08
    dec bc                                        ; $57B8: $0B
    ld bc, $0D0C                                  ; $57B9: $01 $0C $0D
    dec sp                                        ; $57BC: $3B
    ld bc, $8258                                  ; $57BD: $01 $58 $82
    ld bc, $2802                                  ; $57C0: $01 $02 $28
    add hl, hl                                    ; $57C3: $29
    add d                                         ; $57C4: $82
    ld c, $06                                     ; $57C5: $0E $06
    ld a, [hl+]                                   ; $57C7: $2A
    dec hl                                        ; $57C8: $2B
    ld bc, $6C3D                                  ; $57C9: $01 $3D $6C
    db $DD                                        ; $57CC: $DD
    adc a                                         ; $57CD: $8F
    nop                                           ; $57CE: $00
    ld b, $DF                                     ; $57CF: $06 $DF
    ld bc, $5A6D                                  ; $57D1: $01 $6D $5A
    ld e, a                                       ; $57D4: $5F
    adc a                                         ; $57D5: $8F
    add d                                         ; $57D6: $82
    ld bc, $3C01                                  ; $57D7: $01 $01 $3C
    add a                                         ; $57DA: $87
    ld bc, $7A03                                  ; $57DB: $01 $03 $7A
    ld l, [hl]                                    ; $57DE: $6E
    ld l, [hl]                                    ; $57DF: $6E
    add d                                         ; $57E0: $82
    ld bc, $ED01                                  ; $57E1: $01 $01 $ED
    add e                                         ; $57E4: $83
    nop                                           ; $57E5: $00
    ld [bc], a                                    ; $57E6: $02
    rst $18                                       ; $57E7: $DF
    or h                                          ; $57E8: $B4
    add d                                         ; $57E9: $82
    ld bc, $3808                                  ; $57EA: $01 $08 $38
    dec sp                                        ; $57ED: $3B
    ld bc, $1D1C                                  ; $57EE: $01 $1C $1D
    ld bc, $687E                                  ; $57F1: $01 $7E $68
    add d                                         ; $57F4: $82
    ld bc, $3802                                  ; $57F5: $01 $02 $38
    add hl, sp                                    ; $57F8: $39
    add d                                         ; $57F9: $82
    ld e, $06                                     ; $57FA: $1E $06
    ld a, [hl-]                                   ; $57FC: $3A
    dec sp                                        ; $57FD: $3B
    ld bc, HeaderComplementCheck                  ; $57FE: $01 $4D $01
    db $DD                                        ; $5801: $DD
    sub b                                         ; $5802: $90
    nop                                           ; $5803: $00
    ld [$CFCE], sp                                ; $5804: $08 $CE $CF
    ld l, d                                       ; $5807: $6A
    ld l, a                                       ; $5808: $6F
    ld bc, $013D                                  ; $5809: $01 $3D $01
    ld c, h                                       ; $580C: $4C
    add a                                         ; $580D: $87
    ld bc, $8A01                                  ; $580E: $01 $01 $8A
    add e                                         ; $5811: $83
    ld bc, $5C03                                  ; $5812: $01 $03 $5C
    ld e, c                                       ; $5815: $59
    db $ED                                        ; $5816: $ED
    add d                                         ; $5817: $82
    xor $04                                       ; $5818: $EE $04
    rst $28                                       ; $581A: $EF
    ld bc, $B4B3                                  ; $581B: $01 $B3 $B4
    add d                                         ; $581E: $82
    ld bc, $0808                                  ; $581F: $01 $08 $08
    inc e                                         ; $5822: $1C
    dec e                                         ; $5823: $1D
    ld bc, $5A8E                                  ; $5824: $01 $8E $5A
    ld e, l                                       ; $5827: $5D
    ld e, [hl]                                    ; $5828: $5E
    adc b                                         ; $5829: $88
    ld bc, $4B02                                  ; $582A: $01 $02 $4B
    db $ED                                        ; $582D: $ED
    sub d                                         ; $582E: $92
    nop                                           ; $582F: $00
    inc b                                         ; $5830: $04
    rst $08                                       ; $5831: $CF
    ld bc, $4D01                                  ; $5832: $01 $01 $4D
    adc l                                         ; $5835: $8D
    ld bc, $5C03                                  ; $5836: $01 $03 $5C
    ld l, c                                       ; $5839: $69
    ld e, d                                       ; $583A: $5A
    add h                                         ; $583B: $84
    ld bc, $0802                                  ; $583C: $01 $02 $08
    add hl, bc                                    ; $583F: $09
    add e                                         ; $5840: $83
    ld c, $02                                     ; $5841: $0E $02
    ld a, [hl+]                                   ; $5843: $2A
    dec hl                                        ; $5844: $2B
    add d                                         ; $5845: $82
    ld bc, $6A04                                  ; $5846: $01 $04 $6A
    ld l, l                                       ; $5849: $6D
    ld l, [hl]                                    ; $584A: $6E
    call $CE83                                    ; $584B: $CD $83 $CE
    ld bc, $85CF                                  ; $584E: $01 $CF $85
    ld bc, $ED01                                  ; $5851: $01 $01 $ED
    sub d                                         ; $5854: $92
    nop                                           ; $5855: $00
    add e                                         ; $5856: $83
    adc $01                                       ; $5857: $CE $01
    rst $08                                       ; $5859: $CF
    adc d                                         ; $585A: $8A
    ld bc, $B30B                                  ; $585B: $01 $0B $B3
    inc a                                         ; $585E: $3C
    ld l, h                                       ; $585F: $6C
    ld bc, $016A                                  ; $5860: $01 $6A $01
    or e                                          ; $5863: $B3
    or h                                          ; $5864: $B4
    ld bc, $1918                                  ; $5865: $01 $18 $19
    add e                                         ; $5868: $83
    ld e, $02                                     ; $5869: $1E $02
    ld a, [hl-]                                   ; $586B: $3A
    dec sp                                        ; $586C: $3B
    add d                                         ; $586D: $82
    ld bc, $CD03                                  ; $586E: $01 $03 $CD
    adc $CE                                       ; $5871: $CE $CE
    add l                                         ; $5873: $85
    nop                                           ; $5874: $00
    ld [bc], a                                    ; $5875: $02
    adc $CF                                       ; $5876: $CE $CF
    add h                                         ; $5878: $84
    ld bc, $DD01                                  ; $5879: $01 $01 $DD
    sub l                                         ; $587C: $95
    nop                                           ; $587D: $00
    add l                                         ; $587E: $85
    adc $01                                       ; $587F: $CE $01
    rst $08                                       ; $5881: $CF
    add e                                         ; $5882: $83
    ld bc, $B303                                  ; $5883: $01 $03 $B3
    or h                                          ; $5886: $B4
    ld c, h                                       ; $5887: $4C
    add a                                         ; $5888: $87
    ld bc, $1C03                                  ; $5889: $01 $03 $1C
    dec e                                         ; $588C: $1D
    dec sp                                        ; $588D: $3B
    add h                                         ; $588E: $84
    ld bc, $CD02                                  ; $588F: $01 $02 $CD
    adc $89                                       ; $5892: $CE $89
    nop                                           ; $5894: $00
    ld bc, $84DF                                  ; $5895: $01 $DF $84
    ld bc, $ED01                                  ; $5898: $01 $01 $ED
    sbc e                                         ; $589B: $9B
    nop                                           ; $589C: $00
    ld bc, $84CF                                  ; $589D: $01 $CF $84
    ld bc, $B302                                  ; $58A0: $01 $02 $B3
    or h                                          ; $58A3: $B4
    add l                                         ; $58A4: $85
    ld bc, $0803                                  ; $58A5: $01 $03 $08
    inc c                                         ; $58A8: $0C
    dec c                                         ; $58A9: $0D
    add h                                         ; $58AA: $84
    ld bc, $CD01                                  ; $58AB: $01 $01 $CD
    adc e                                         ; $58AE: $8B
    nop                                           ; $58AF: $00
    ld bc, $85DF                                  ; $58B0: $01 $DF $85
    ld bc, $DD01                                  ; $58B3: $01 $01 $DD
    sbc e                                         ; $58B6: $9B
    nop                                           ; $58B7: $00
    ld [bc], a                                    ; $58B8: $02
    adc $CF                                       ; $58B9: $CE $CF
    add e                                         ; $58BB: $83
    ld bc, $0802                                  ; $58BC: $01 $02 $08
    add hl, bc                                    ; $58BF: $09
    add l                                         ; $58C0: $85
    ld c, $02                                     ; $58C1: $0E $02
    ld a, [hl+]                                   ; $58C3: $2A
    dec hl                                        ; $58C4: $2B
    add h                                         ; $58C5: $84
    ld bc, $DD01                                  ; $58C6: $01 $01 $DD
    adc e                                         ; $58C9: $8B
    nop                                           ; $58CA: $00
    rlca                                          ; $58CB: $07
    rst $18                                       ; $58CC: $DF
    ld bc, $B301                                  ; $58CD: $01 $01 $B3
    or h                                          ; $58D0: $B4
    ld bc, $9CED                                  ; $58D1: $01 $ED $9C
    nop                                           ; $58D4: $00
    ld b, $DF                                     ; $58D5: $06 $DF
    ld bc, $0801                                  ; $58D7: $01 $01 $08
    jr @+$1B                                      ; $58DA: $18 $19

    add l                                         ; $58DC: $85
    ld e, $07                                     ; $58DD: $1E $07
    ld a, [hl-]                                   ; $58DF: $3A
    dec sp                                        ; $58E0: $3B
    ld bc, $5F7A                                  ; $58E1: $01 $7A $5F
    ld bc, $8BDD                                  ; $58E4: $01 $DD $8B
    nop                                           ; $58E7: $00
    ld [$01DF], sp                                ; $58E8: $08 $DF $01
    or e                                          ; $58EB: $B3
    or h                                          ; $58EC: $B4
    ld bc, $B4B3                                  ; $58ED: $01 $B3 $B4
    db $ED                                        ; $58F0: $ED
    sbc h                                         ; $58F1: $9C
    nop                                           ; $58F2: $00
    ld [$5DCF], sp                                ; $58F3: $08 $CF $5D
    jr c, @+$1E                                   ; $58F6: $38 $1C

    dec e                                         ; $58F8: $1D
    ld bc, $B4B3                                  ; $58F9: $01 $B3 $B4
    add l                                         ; $58FC: $85
    ld bc, $8A03                                  ; $58FD: $01 $03 $8A
    ld l, a                                       ; $5900: $6F
    call $008C                                    ; $5901: $CD $8C $00
    ld bc, $84EF                                  ; $5904: $01 $EF $84
    ld bc, $7B04                                  ; $5907: $01 $04 $7B
    ld a, d                                       ; $590A: $7A
    ld bc, $9BDD                                  ; $590B: $01 $DD $9B
    nop                                           ; $590E: $00
    dec b                                         ; $590F: $05
    rst $18                                       ; $5910: $DF
    ld l, l                                       ; $5911: $6D
    ld [$0D0C], sp                                ; $5912: $08 $0C $0D
    add l                                         ; $5915: $85
    ld bc, $0802                                  ; $5916: $01 $02 $08
    dec bc                                        ; $5919: $0B
    add e                                         ; $591A: $83
    ld bc, $DD01                                  ; $591B: $01 $01 $DD
    adc e                                         ; $591E: $8B
    nop                                           ; $591F: $00
    ld [bc], a                                    ; $5920: $02
    rst $28                                       ; $5921: $EF
    ld e, [hl]                                    ; $5922: $5E
    add h                                         ; $5923: $84
    ld bc, $8B04                                  ; $5924: $01 $04 $8B
    adc d                                         ; $5927: $8A
    ld e, a                                       ; $5928: $5F
    db $DD                                        ; $5929: $DD
    sbc e                                         ; $592A: $9B
    nop                                           ; $592B: $00
    dec b                                         ; $592C: $05
    rst $18                                       ; $592D: $DF
    ld bc, $2838                                  ; $592E: $01 $38 $28
    add hl, hl                                    ; $5931: $29
    add d                                         ; $5932: $82
    ld c, $05                                     ; $5933: $0E $05
    ld a, [bc]                                    ; $5935: $0A
    dec bc                                        ; $5936: $0B
    ld bc, $3B38                                  ; $5937: $01 $38 $3B
    add e                                         ; $593A: $83
    ld bc, $DD01                                  ; $593B: $01 $01 $DD
    adc d                                         ; $593E: $8A
    nop                                           ; $593F: $00
    rlca                                          ; $5940: $07
    rst $18                                       ; $5941: $DF
    ld e, [hl]                                    ; $5942: $5E
    ld l, [hl]                                    ; $5943: $6E
    ld [$0A09], sp                                ; $5944: $08 $09 $0A
    dec bc                                        ; $5947: $0B
    add d                                         ; $5948: $82
    ld bc, $6F02                                  ; $5949: $01 $02 $6F
    db $DD                                        ; $594C: $DD
    sbc e                                         ; $594D: $9B
    nop                                           ; $594E: $00
    dec b                                         ; $594F: $05
    rst $18                                       ; $5950: $DF
    ld bc, $3801                                  ; $5951: $01 $01 $38
    add hl, sp                                    ; $5954: $39
    add d                                         ; $5955: $82
    ld e, $02                                     ; $5956: $1E $02
    ld a, [de]                                    ; $5958: $1A
    dec de                                        ; $5959: $1B
    add h                                         ; $595A: $84
    ld bc, $5E02                                  ; $595B: $01 $02 $5E
    call $008B                                    ; $595E: $CD $8B $00
    dec bc                                        ; $5961: $0B
    rst $28                                       ; $5962: $EF
    ld l, [hl]                                    ; $5963: $6E
    ld bc, $1918                                  ; $5964: $01 $18 $19
    ld a, [de]                                    ; $5967: $1A
    dec de                                        ; $5968: $1B
    ld bc, $013C                                  ; $5969: $01 $3C $01
    db $DD                                        ; $596C: $DD
    sbc e                                         ; $596D: $9B
    nop                                           ; $596E: $00
    ld bc, $86DF                                  ; $596F: $01 $DF $86
    ld bc, $0C03                                  ; $5972: $01 $03 $0C
    dec c                                         ; $5975: $0D
    dec bc                                        ; $5976: $0B
    add d                                         ; $5977: $82
    ld bc, $5C03                                  ; $5978: $01 $03 $5C
    ld l, [hl]                                    ; $597B: $6E
    db $DD                                        ; $597C: $DD
    adc d                                         ; $597D: $8A
    nop                                           ; $597E: $00
    dec bc                                        ; $597F: $0B
    rst $18                                       ; $5980: $DF
    ld a, a                                       ; $5981: $7F
    ld bc, $287B                                  ; $5982: $01 $7B $28
    add hl, hl                                    ; $5985: $29
    ld a, [hl+]                                   ; $5986: $2A
    dec hl                                        ; $5987: $2B
    ld bc, $CD4C                                  ; $5988: $01 $4C $CD
    sbc h                                         ; $598B: $9C
    nop                                           ; $598C: $00
    inc bc                                        ; $598D: $03
    rst $18                                       ; $598E: $DF
    ld bc, $845B                                  ; $598F: $01 $5B $84
    ld bc, $1C03                                  ; $5992: $01 $03 $1C
    dec e                                         ; $5995: $1D
    dec sp                                        ; $5996: $3B
    add d                                         ; $5997: $82
    ld bc, $6C03                                  ; $5998: $01 $03 $6C
    ld bc, $8ADD                                  ; $599B: $01 $DD $8A
    nop                                           ; $599E: $00
    dec bc                                        ; $599F: $0B
    rst $18                                       ; $59A0: $DF
    adc a                                         ; $59A1: $8F
    ld e, c                                       ; $59A2: $59
    adc e                                         ; $59A3: $8B
    jr c, jr_066_59DF                             ; $59A4: $38 $39

    ld a, [hl-]                                   ; $59A6: $3A
    dec sp                                        ; $59A7: $3B
    ld bc, $DD3D                                  ; $59A8: $01 $3D $DD
    sbc h                                         ; $59AB: $9C
    nop                                           ; $59AC: $00
    inc bc                                        ; $59AD: $03
    rst $28                                       ; $59AE: $EF
    ld bc, $846B                                  ; $59AF: $01 $6B $84
    ld bc, $1C07                                  ; $59B2: $01 $07 $1C
    dec e                                         ; $59B5: $1D
    dec bc                                        ; $59B6: $0B
    ld bc, $5B7A                                  ; $59B7: $01 $7A $5B
    call $008C                                    ; $59BA: $CD $8C $00
    inc bc                                        ; $59BD: $03
    rst $08                                       ; $59BE: $CF
    ld l, c                                       ; $59BF: $69
    ld e, l                                       ; $59C0: $5D
    add d                                         ; $59C1: $82
    ld bc, $7E05                                  ; $59C2: $01 $05 $7E
    ld bc, $4D5E                                  ; $59C5: $01 $5E $4D
    db $DD                                        ; $59C8: $DD
    sbc d                                         ; $59C9: $9A
    nop                                           ; $59CA: $00
    db $10                                        ; $59CB: $10
    xor $EF                                       ; $59CC: $EE $EF
    ld e, d                                       ; $59CE: $5A
    ld [$0E09], sp                                ; $59CF: $08 $09 $0E
    ld a, [bc]                                    ; $59D2: $0A
    dec bc                                        ; $59D3: $0B
    ld bc, $0D0C                                  ; $59D4: $01 $0C $0D
    dec sp                                        ; $59D7: $3B
    ld e, c                                       ; $59D8: $59
    adc d                                         ; $59D9: $8A
    ld l, e                                       ; $59DA: $6B
    db $DD                                        ; $59DB: $DD
    adc h                                         ; $59DC: $8C
    nop                                           ; $59DD: $00
    add hl, bc                                    ; $59DE: $09

jr_066_59DF:
    rst $18                                       ; $59DF: $DF
    ld bc, $7C6D                                  ; $59E0: $01 $6D $7C
    ld a, l                                       ; $59E3: $7D
    adc [hl]                                      ; $59E4: $8E
    ld bc, $CD6E                                  ; $59E5: $01 $6E $CD
    sbc c                                         ; $59E8: $99
    nop                                           ; $59E9: $00
    ld de, $EFEE                                  ; $59EA: $11 $EE $EF
    ld bc, $6A4B                                  ; $59ED: $01 $4B $6A
    jr @+$1B                                      ; $59F0: $18 $19

    ld e, $1A                                     ; $59F2: $1E $1A
    dec de                                        ; $59F4: $1B
    ld bc, $0D0C                                  ; $59F5: $01 $0C $0D
    dec bc                                        ; $59F8: $0B
    ld l, c                                       ; $59F9: $69
    ld e, e                                       ; $59FA: $5B
    call $008E                                    ; $59FB: $CD $8E $00
    inc b                                         ; $59FE: $04
    rst $08                                       ; $59FF: $CF
    ld bc, $8D8C                                  ; $5A00: $01 $8C $8D
    add d                                         ; $5A03: $82
    ld bc, $CD01                                  ; $5A04: $01 $01 $CD
    sbc c                                         ; $5A07: $99
    nop                                           ; $5A08: $00
    ld bc, $85EF                                  ; $5A09: $01 $EF $85
    ld bc, $0C0C                                  ; $5A0C: $01 $0C $0C
    dec c                                         ; $5A0F: $0D
    ld bc, $0D0C                                  ; $5A10: $01 $0C $0D
    ld bc, $1D1C                                  ; $5A13: $01 $1C $1D
    dec sp                                        ; $5A16: $3B
    ld bc, $DD6B                                  ; $5A17: $01 $6B $DD
    adc a                                         ; $5A1A: $8F
    nop                                           ; $5A1B: $00
    add l                                         ; $5A1C: $85
    adc $96                                       ; $5A1D: $CE $96
    nop                                           ; $5A1F: $00
    add e                                         ; $5A20: $83
    xor $01                                       ; $5A21: $EE $01
    rst $28                                       ; $5A23: $EF
    add [hl]                                      ; $5A24: $86
    ld bc, $0C0B                                  ; $5A25: $01 $0B $0C
    dec c                                         ; $5A28: $0D
    ld bc, $2928                                  ; $5A29: $01 $28 $29
    ld c, $2A                                     ; $5A2C: $0E $2A
    dec hl                                        ; $5A2E: $2B
    inc a                                         ; $5A2F: $3C
    ld bc, $A9CD                                  ; $5A30: $01 $CD $A9
    nop                                           ; $5A33: $00
    rlca                                          ; $5A34: $07
    xor $EF                                       ; $5A35: $EE $EF
    ld bc, $0B08                                  ; $5A37: $01 $08 $0B
    ld [$8509], sp                                ; $5A3A: $08 $09 $85
    ld c, $0A                                     ; $5A3D: $0E $0A
    ld a, [hl+]                                   ; $5A3F: $2A
    dec hl                                        ; $5A40: $2B
    ld bc, $3938                                  ; $5A41: $01 $38 $39
    ld e, $3A                                     ; $5A44: $1E $3A
    dec sp                                        ; $5A46: $3B
    ld c, h                                       ; $5A47: $4C
    call $00A9                                    ; $5A48: $CD $A9 $00
    ld bc, $83EF                                  ; $5A4B: $01 $EF $83
    ld bc, $3804                                  ; $5A4E: $01 $04 $38
    dec sp                                        ; $5A51: $3B
    jr jr_066_5A6D                                ; $5A52: $18 $19

    add l                                         ; $5A54: $85
    ld e, $02                                     ; $5A55: $1E $02
    ld a, [hl-]                                   ; $5A57: $3A
    dec sp                                        ; $5A58: $3B
    add l                                         ; $5A59: $85
    ld bc, $CD02                                  ; $5A5A: $01 $02 $CD
    adc $A8                                       ; $5A5D: $CE $A8
    nop                                           ; $5A5F: $00
    ld [bc], a                                    ; $5A60: $02
    xor $EF                                       ; $5A61: $EE $EF
    add h                                         ; $5A63: $84
    ld bc, $0806                                  ; $5A64: $01 $06 $08
    dec bc                                        ; $5A67: $0B
    inc e                                         ; $5A68: $1C
    dec e                                         ; $5A69: $1D
    ld [$820B], sp                                ; $5A6A: $08 $0B $82

jr_066_5A6D:
    ld bc, $7801                                  ; $5A6D: $01 $01 $78
    add h                                         ; $5A70: $84
    ld bc, $CD03                                  ; $5A71: $01 $03 $CD
    adc $CE                                       ; $5A74: $CE $CE
    xor c                                         ; $5A76: $A9
    nop                                           ; $5A77: $00
    dec c                                         ; $5A78: $0D
    rst $28                                       ; $5A79: $EF
    ld bc, $0801                                  ; $5A7A: $01 $01 $08
    dec bc                                        ; $5A7D: $0B
    ld [$380B], sp                                ; $5A7E: $08 $0B $38
    dec sp                                        ; $5A81: $3B
    inc c                                         ; $5A82: $0C
    dec c                                         ; $5A83: $0D
    jr c, @+$3D                                   ; $5A84: $38 $3B

    add d                                         ; $5A86: $82
    ld bc, $8803                                  ; $5A87: $01 $03 $88
    ld bc, $82CD                                  ; $5A8A: $01 $CD $82
    adc $AB                                       ; $5A8D: $CE $AB
    nop                                           ; $5A8F: $00
    inc b                                         ; $5A90: $04
    rst $28                                       ; $5A91: $EF
    ld bc, $0908                                  ; $5A92: $01 $08 $09
    add [hl]                                      ; $5A95: $86
    ld c, $04                                     ; $5A96: $0E $04
    ld a, [hl+]                                   ; $5A98: $2A
    dec hl                                        ; $5A99: $2B
    ld [$830B], sp                                ; $5A9A: $08 $0B $83
    ld bc, $CD01                                  ; $5A9D: $01 $01 $CD
    xor l                                         ; $5AA0: $AD
    nop                                           ; $5AA1: $00
    dec b                                         ; $5AA2: $05
    rst $18                                       ; $5AA3: $DF
    ld bc, $1801                                  ; $5AA4: $01 $01 $18
    add hl, de                                    ; $5AA7: $19
    add [hl]                                      ; $5AA8: $86
    ld e, $07                                     ; $5AA9: $1E $07
    ld a, [hl-]                                   ; $5AAB: $3A
    dec sp                                        ; $5AAC: $3B
    jr c, jr_066_5AEA                             ; $5AAD: $38 $3B

    ld bc, $CECD                                  ; $5AAF: $01 $CD $CE
    xor [hl]                                      ; $5AB2: $AE
    nop                                           ; $5AB3: $00
    add hl, bc                                    ; $5AB4: $09
    rst $28                                       ; $5AB5: $EF
    ld bc, $0C01                                  ; $5AB6: $01 $01 $0C
    dec c                                         ; $5AB9: $0D
    jr c, jr_066_5AF7                             ; $5ABA: $38 $3B

    jr c, @+$3D                                   ; $5ABC: $38 $3B

    add h                                         ; $5ABE: $84
    ld bc, $CD03                                  ; $5ABF: $01 $03 $CD
    adc $CE                                       ; $5AC2: $CE $CE
    xor a                                         ; $5AC4: $AF
    nop                                           ; $5AC5: $00
    ld b, $DF                                     ; $5AC6: $06 $DF
    ld bc, $5D5B                                  ; $5AC8: $01 $5B $5D
    inc e                                         ; $5ACB: $1C
    dec e                                         ; $5ACC: $1D
    add l                                         ; $5ACD: $85
    ld bc, $CD03                                  ; $5ACE: $01 $03 $CD
    adc $CE                                       ; $5AD1: $CE $CE
    or d                                          ; $5AD3: $B2
    nop                                           ; $5AD4: $00
    ld b, $DF                                     ; $5AD5: $06 $DF
    ld bc, $6D6B                                  ; $5AD7: $01 $6B $6D
    inc c                                         ; $5ADA: $0C
    dec c                                         ; $5ADB: $0D
    add d                                         ; $5ADC: $82
    ld bc, $CD03                                  ; $5ADD: $01 $03 $CD
    adc $CE                                       ; $5AE0: $CE $CE
    or l                                          ; $5AE2: $B5
    nop                                           ; $5AE3: $00
    ld bc, $83EF                                  ; $5AE4: $01 $EF $83
    ld bc, $0C02                                  ; $5AE7: $01 $02 $0C

jr_066_5AEA:
    dec c                                         ; $5AEA: $0D
    add d                                         ; $5AEB: $82
    ld bc, $DD01                                  ; $5AEC: $01 $01 $DD
    or [hl]                                       ; $5AEF: $B6
    nop                                           ; $5AF0: $00
    ld bc, $84DF                                  ; $5AF1: $01 $DF $84
    ld bc, $0C04                                  ; $5AF4: $01 $04 $0C

jr_066_5AF7:
    dec c                                         ; $5AF7: $0D
    ld bc, $B7CD                                  ; $5AF8: $01 $CD $B7
    nop                                           ; $5AFB: $00
    add hl, bc                                    ; $5AFC: $09
    rst $18                                       ; $5AFD: $DF
    ld bc, $0908                                  ; $5AFE: $01 $08 $09
    rrca                                          ; $5B01: $0F
    ld a, [hl+]                                   ; $5B02: $2A
    dec hl                                        ; $5B03: $2B
    ld bc, $B7DD                                  ; $5B04: $01 $DD $B7
    nop                                           ; $5B07: $00
    add hl, bc                                    ; $5B08: $09
    rst $18                                       ; $5B09: $DF
    ld bc, $1918                                  ; $5B0A: $01 $18 $19
    rra                                           ; $5B0D: $1F
    ld a, [hl-]                                   ; $5B0E: $3A
    dec sp                                        ; $5B0F: $3B
    ld bc, $B7DD                                  ; $5B10: $01 $DD $B7
    nop                                           ; $5B13: $00
    inc b                                         ; $5B14: $04
    rst $28                                       ; $5B15: $EF
    ld bc, $0D0C                                  ; $5B16: $01 $0C $0D
    add e                                         ; $5B19: $83
    ld bc, $CD01                                  ; $5B1A: $01 $01 $CD
    or a                                          ; $5B1D: $B7
    nop                                           ; $5B1E: $00
    dec b                                         ; $5B1F: $05
    rst $18                                       ; $5B20: $DF
    ld bc, $0C01                                  ; $5B21: $01 $01 $0C
    dec c                                         ; $5B24: $0D
    add d                                         ; $5B25: $82
    ld bc, $CD01                                  ; $5B26: $01 $01 $CD
    cp b                                          ; $5B29: $B8
    nop                                           ; $5B2A: $00
    dec b                                         ; $5B2B: $05
    rst $18                                       ; $5B2C: $DF
    ld bc, $1C01                                  ; $5B2D: $01 $01 $1C
    dec e                                         ; $5B30: $1D
    add d                                         ; $5B31: $82
    ld bc, $DD01                                  ; $5B32: $01 $01 $DD
    cp b                                          ; $5B35: $B8
    nop                                           ; $5B36: $00
    ld [$01DF], sp                                ; $5B37: $08 $DF $01
    ld bc, $1D1C                                  ; $5B3A: $01 $1C $1D
    or e                                          ; $5B3D: $B3
    or h                                          ; $5B3E: $B4
    db $DD                                        ; $5B3F: $DD
    cp b                                          ; $5B40: $B8
    nop                                           ; $5B41: $00
    ld [$B4DF], sp                                ; $5B42: $08 $DF $B4
    ld bc, $0D0C                                  ; $5B45: $01 $0C $0D
    ld bc, $DDB3                                  ; $5B48: $01 $B3 $DD
    cp b                                          ; $5B4B: $B8
    nop                                           ; $5B4C: $00
    dec b                                         ; $5B4D: $05
    rst $18                                       ; $5B4E: $DF
    ld bc, $0C01                                  ; $5B4F: $01 $01 $0C
    dec c                                         ; $5B52: $0D
    add d                                         ; $5B53: $82
    ld bc, $DD01                                  ; $5B54: $01 $01 $DD
    cp b                                          ; $5B57: $B8
    nop                                           ; $5B58: $00
    dec b                                         ; $5B59: $05
    rst $18                                       ; $5B5A: $DF
    ld bc, $1C01                                  ; $5B5B: $01 $01 $1C
    dec e                                         ; $5B5E: $1D
    add d                                         ; $5B5F: $82
    ld bc, $DD01                                  ; $5B60: $01 $01 $DD
    cp b                                          ; $5B63: $B8
    nop                                           ; $5B64: $00
    dec b                                         ; $5B65: $05
    rst $18                                       ; $5B66: $DF
    ld bc, $0C01                                  ; $5B67: $01 $01 $0C
    dec c                                         ; $5B6A: $0D
    add d                                         ; $5B6B: $82
    ld bc, $DD01                                  ; $5B6C: $01 $01 $DD
    cp c                                          ; $5B6F: $B9
    nop                                           ; $5B70: $00
    ld b, $48                                     ; $5B71: $06 $48
    inc l                                         ; $5B73: $2C
    inc e                                         ; $5B74: $1C
    dec e                                         ; $5B75: $1D
    dec l                                         ; $5B76: $2D
    ld c, d                                       ; $5B77: $4A
    cp e                                          ; $5B78: $BB
    nop                                           ; $5B79: $00
    inc b                                         ; $5B7A: $04
    ld c, b                                       ; $5B7B: $48
    ld c, c                                       ; $5B7C: $49
    ld c, c                                       ; $5B7D: $49
    ld c, d                                       ; $5B7E: $4A
    ret nz                                        ; $5B7F: $C0

    ld b, b                                       ; $5B80: $40
    nop                                           ; $5B81: $00
    nop                                           ; $5B82: $00
    ld b, b                                       ; $5B83: $40
    nop                                           ; $5B84: $00
    db $10                                        ; $5B85: $10
    and [hl]                                      ; $5B86: $A6
    ld [$C284], sp                                ; $5B87: $08 $84 $C2
    sub a                                         ; $5B8A: $97
    ld [$A283], sp                                ; $5B8B: $08 $83 $A2
    ld bc, $85A3                                  ; $5B8E: $01 $A3 $85
    and h                                         ; $5B91: $A4
    ld bc, $84A5                                  ; $5B92: $01 $A5 $84
    and h                                         ; $5B95: $A4
    add d                                         ; $5B96: $82
    and e                                         ; $5B97: $A3
    adc c                                         ; $5B98: $89
    and h                                         ; $5B99: $A4
    add h                                         ; $5B9A: $84
    and l                                         ; $5B9B: $A5
    ld bc, $84A4                                  ; $5B9C: $01 $A4 $84
    and e                                         ; $5B9F: $A3
    add e                                         ; $5BA0: $83
    and d                                         ; $5BA1: $A2
    add l                                         ; $5BA2: $85
    ld [bc], a                                    ; $5BA3: $02
    add l                                         ; $5BA4: $85
    and l                                         ; $5BA5: $A5
    add e                                         ; $5BA6: $83
    and h                                         ; $5BA7: $A4
    adc h                                         ; $5BA8: $8C
    and l                                         ; $5BA9: $A5
    add d                                         ; $5BAA: $82
    ld [$A283], sp                                ; $5BAB: $08 $83 $A2
    add d                                         ; $5BAE: $82
    ld [bc], a                                    ; $5BAF: $02
    add h                                         ; $5BB0: $84
    and h                                         ; $5BB1: $A4
    add d                                         ; $5BB2: $82
    and l                                         ; $5BB3: $A5
    ld bc, $84A4                                  ; $5BB4: $01 $A4 $84
    and e                                         ; $5BB7: $A3
    add e                                         ; $5BB8: $83
    ld [bc], a                                    ; $5BB9: $02
    add [hl]                                      ; $5BBA: $86
    and h                                         ; $5BBB: $A4
    add h                                         ; $5BBC: $84
    and l                                         ; $5BBD: $A5
    ld bc, $88A4                                  ; $5BBE: $01 $A4 $88
    and e                                         ; $5BC1: $A3
    add h                                         ; $5BC2: $84
    ld [bc], a                                    ; $5BC3: $02
    add l                                         ; $5BC4: $85
    and l                                         ; $5BC5: $A5
    add e                                         ; $5BC6: $83
    and h                                         ; $5BC7: $A4
    ld [bc], a                                    ; $5BC8: $02
    and l                                         ; $5BC9: $A5
    and b                                         ; $5BCA: $A0
    adc d                                         ; $5BCB: $8A
    and l                                         ; $5BCC: $A5
    add a                                         ; $5BCD: $87
    ld [$0283], sp                                ; $5BCE: $08 $83 $02
    add e                                         ; $5BD1: $83
    and l                                         ; $5BD2: $A5
    inc bc                                        ; $5BD3: $03
    and h                                         ; $5BD4: $A4
    and e                                         ; $5BD5: $A3
    and e                                         ; $5BD6: $A3
    adc b                                         ; $5BD7: $88
    ld [bc], a                                    ; $5BD8: $02
    add e                                         ; $5BD9: $83
    and h                                         ; $5BDA: $A4
    add h                                         ; $5BDB: $84
    and l                                         ; $5BDC: $A5
    ld bc, $84A4                                  ; $5BDD: $01 $A4 $84
    and e                                         ; $5BE0: $A3
    add d                                         ; $5BE1: $82
    and h                                         ; $5BE2: $A4
    add d                                         ; $5BE3: $82
    and e                                         ; $5BE4: $A3
    add h                                         ; $5BE5: $84
    ld [bc], a                                    ; $5BE6: $02
    ld bc, $84A6                                  ; $5BE7: $01 $A6 $84
    and l                                         ; $5BEA: $A5
    add e                                         ; $5BEB: $83
    and h                                         ; $5BEC: $A4
    adc h                                         ; $5BED: $8C
    and l                                         ; $5BEE: $A5
    ld [bc], a                                    ; $5BEF: $02
    ld [$85C1], sp                                ; $5BF0: $08 $C1 $85
    nop                                           ; $5BF3: $00
    add h                                         ; $5BF4: $84
    ld [bc], a                                    ; $5BF5: $02
    add d                                         ; $5BF6: $82
    and l                                         ; $5BF7: $A5
    ld bc, $83A4                                  ; $5BF8: $01 $A4 $83
    and e                                         ; $5BFB: $A3
    adc c                                         ; $5BFC: $89
    ld [bc], a                                    ; $5BFD: $02
    add l                                         ; $5BFE: $85
    and l                                         ; $5BFF: $A5
    ld bc, $83A4                                  ; $5C00: $01 $A4 $83
    and e                                         ; $5C03: $A3
    add d                                         ; $5C04: $82
    and h                                         ; $5C05: $A4
    add [hl]                                      ; $5C06: $86
    ld [bc], a                                    ; $5C07: $02
    add d                                         ; $5C08: $82
    and [hl]                                      ; $5C09: $A6
    add h                                         ; $5C0A: $84
    and l                                         ; $5C0B: $A5
    add e                                         ; $5C0C: $83
    and h                                         ; $5C0D: $A4
    add h                                         ; $5C0E: $84
    and l                                         ; $5C0F: $A5
    ld bc, $87A0                                  ; $5C10: $01 $A0 $87
    and l                                         ; $5C13: $A5
    ld [bc], a                                    ; $5C14: $02
    ld [$85C1], sp                                ; $5C15: $08 $C1 $85
    nop                                           ; $5C18: $00
    add l                                         ; $5C19: $85
    ld [bc], a                                    ; $5C1A: $02
    add d                                         ; $5C1B: $82
    and l                                         ; $5C1C: $A5
    add d                                         ; $5C1D: $82
    and e                                         ; $5C1E: $A3
    adc h                                         ; $5C1F: $8C
    ld [bc], a                                    ; $5C20: $02
    add e                                         ; $5C21: $83
    and l                                         ; $5C22: $A5
    inc bc                                        ; $5C23: $03
    and h                                         ; $5C24: $A4
    and e                                         ; $5C25: $A3
    and e                                         ; $5C26: $A3
    adc c                                         ; $5C27: $89
    ld [bc], a                                    ; $5C28: $02
    ld bc, $85A6                                  ; $5C29: $01 $A6 $85
    and l                                         ; $5C2C: $A5
    add d                                         ; $5C2D: $82
    and h                                         ; $5C2E: $A4
    add e                                         ; $5C2F: $83
    and l                                         ; $5C30: $A5
    ld bc, $8902                                  ; $5C31: $01 $02 $89
    and l                                         ; $5C34: $A5
    ld [bc], a                                    ; $5C35: $02
    ld [$85C1], sp                                ; $5C36: $08 $C1 $85
    nop                                           ; $5C39: $00
    add [hl]                                      ; $5C3A: $86
    ld [bc], a                                    ; $5C3B: $02
    ld [bc], a                                    ; $5C3C: $02
    and l                                         ; $5C3D: $A5
    and e                                         ; $5C3E: $A3
    adc l                                         ; $5C3F: $8D
    ld [bc], a                                    ; $5C40: $02
    add e                                         ; $5C41: $83
    and l                                         ; $5C42: $A5
    inc bc                                        ; $5C43: $03
    and h                                         ; $5C44: $A4
    and e                                         ; $5C45: $A3
    and e                                         ; $5C46: $A3
    adc e                                         ; $5C47: $8B
    ld [bc], a                                    ; $5C48: $02
    add h                                         ; $5C49: $84
    and l                                         ; $5C4A: $A5
    add d                                         ; $5C4B: $82
    and h                                         ; $5C4C: $A4
    ld [bc], a                                    ; $5C4D: $02
    and e                                         ; $5C4E: $A3
    and l                                         ; $5C4F: $A5
    add e                                         ; $5C50: $83
    ld [bc], a                                    ; $5C51: $02
    add e                                         ; $5C52: $83
    and l                                         ; $5C53: $A5
    ld bc, $83A0                                  ; $5C54: $01 $A0 $83
    and l                                         ; $5C57: $A5
    ld bc, $87A4                                  ; $5C58: $01 $A4 $87
    ld [$0286], sp                                ; $5C5B: $08 $86 $02
    ld [bc], a                                    ; $5C5E: $02
    and l                                         ; $5C5F: $A5
    and e                                         ; $5C60: $A3
    adc [hl]                                      ; $5C61: $8E
    ld [bc], a                                    ; $5C62: $02
    inc bc                                        ; $5C63: $03
    and l                                         ; $5C64: $A5
    and [hl]                                      ; $5C65: $A6
    and h                                         ; $5C66: $A4
    add d                                         ; $5C67: $82
    and d                                         ; $5C68: $A2
    adc h                                         ; $5C69: $8C
    ld [bc], a                                    ; $5C6A: $02
    add e                                         ; $5C6B: $83
    and l                                         ; $5C6C: $A5
    ld [bc], a                                    ; $5C6D: $02
    and h                                         ; $5C6E: $A4
    and e                                         ; $5C6F: $A3
    add d                                         ; $5C70: $82
    and l                                         ; $5C71: $A5
    add h                                         ; $5C72: $84
    ld [bc], a                                    ; $5C73: $02
    add d                                         ; $5C74: $82
    and [hl]                                      ; $5C75: $A6
    ld [bc], a                                    ; $5C76: $02
    and e                                         ; $5C77: $A3
    and l                                         ; $5C78: $A5
    add e                                         ; $5C79: $83
    and h                                         ; $5C7A: $A4
    add d                                         ; $5C7B: $82
    ld [$A201], sp                                ; $5C7C: $08 $01 $A2
    adc d                                         ; $5C7F: $8A
    ld [bc], a                                    ; $5C80: $02
    ld [bc], a                                    ; $5C81: $02
    and l                                         ; $5C82: $A5
    and e                                         ; $5C83: $A3
    adc a                                         ; $5C84: $8F
    ld [bc], a                                    ; $5C85: $02
    ld [bc], a                                    ; $5C86: $02
    and [hl]                                      ; $5C87: $A6
    and h                                         ; $5C88: $A4
    add h                                         ; $5C89: $84
    and c                                         ; $5C8A: $A1
    adc h                                         ; $5C8B: $8C
    ld [bc], a                                    ; $5C8C: $02
    inc bc                                        ; $5C8D: $03
    and l                                         ; $5C8E: $A5
    and h                                         ; $5C8F: $A4
    and h                                         ; $5C90: $A4
    add [hl]                                      ; $5C91: $86
    ld [bc], a                                    ; $5C92: $02
    ld bc, $86A7                                  ; $5C93: $01 $A7 $86
    and h                                         ; $5C96: $A4
    add d                                         ; $5C97: $82
    ld [$A282], sp                                ; $5C98: $08 $82 $A2
    adc h                                         ; $5C9B: $8C
    ld [bc], a                                    ; $5C9C: $02
    ld bc, $83A7                                  ; $5C9D: $01 $A7 $83
    and b                                         ; $5CA0: $A0
    adc d                                         ; $5CA1: $8A
    ld [bc], a                                    ; $5CA2: $02
    ld [bc], a                                    ; $5CA3: $02
    and [hl]                                      ; $5CA4: $A6
    and h                                         ; $5CA5: $A4
    add a                                         ; $5CA6: $87
    and c                                         ; $5CA7: $A1
    adc e                                         ; $5CA8: $8B
    ld [bc], a                                    ; $5CA9: $02
    add e                                         ; $5CAA: $83
    and a                                         ; $5CAB: $A7
    add d                                         ; $5CAC: $82
    and b                                         ; $5CAD: $A0
    add d                                         ; $5CAE: $82
    and a                                         ; $5CAF: $A7
    add e                                         ; $5CB0: $83
    and e                                         ; $5CB1: $A3
    add h                                         ; $5CB2: $84
    ld [bc], a                                    ; $5CB3: $02
    add d                                         ; $5CB4: $82
    ld [$A282], sp                                ; $5CB5: $08 $82 $A2
    adc h                                         ; $5CB8: $8C
    ld [bc], a                                    ; $5CB9: $02
    inc bc                                        ; $5CBA: $03
    and a                                         ; $5CBB: $A7
    and b                                         ; $5CBC: $A0
    and b                                         ; $5CBD: $A0
    add d                                         ; $5CBE: $82
    and c                                         ; $5CBF: $A1
    adc c                                         ; $5CC0: $89
    ld [bc], a                                    ; $5CC1: $02
    add d                                         ; $5CC2: $82
    and a                                         ; $5CC3: $A7
    ld bc, $87A4                                  ; $5CC4: $01 $A4 $87
    and c                                         ; $5CC7: $A1
    adc d                                         ; $5CC8: $8A
    ld [bc], a                                    ; $5CC9: $02
    add a                                         ; $5CCA: $87
    and a                                         ; $5CCB: $A7
    add e                                         ; $5CCC: $83
    and e                                         ; $5CCD: $A3
    add h                                         ; $5CCE: $84
    ld [bc], a                                    ; $5CCF: $02
    add d                                         ; $5CD0: $82
    ld [$A202], sp                                ; $5CD1: $08 $02 $A2
    and c                                         ; $5CD4: $A1
    add d                                         ; $5CD5: $82
    and b                                         ; $5CD6: $A0
    ld bc, $89A1                                  ; $5CD7: $01 $A1 $89
    ld [bc], a                                    ; $5CDA: $02
    inc bc                                        ; $5CDB: $03
    and l                                         ; $5CDC: $A5
    and [hl]                                      ; $5CDD: $A6
    and [hl]                                      ; $5CDE: $A6
    add e                                         ; $5CDF: $83
    and c                                         ; $5CE0: $A1
    add a                                         ; $5CE1: $87
    ld [bc], a                                    ; $5CE2: $02
    add d                                         ; $5CE3: $82
    and [hl]                                      ; $5CE4: $A6
    ld bc, $83A5                                  ; $5CE5: $01 $A5 $83
    and h                                         ; $5CE8: $A4
    add e                                         ; $5CE9: $83
    and d                                         ; $5CEA: $A2
    add e                                         ; $5CEB: $83
    and e                                         ; $5CEC: $A3
    adc b                                         ; $5CED: $88
    ld [bc], a                                    ; $5CEE: $02
    add [hl]                                      ; $5CEF: $86
    and a                                         ; $5CF0: $A7
    add e                                         ; $5CF1: $83
    and d                                         ; $5CF2: $A2
    ld bc, $85A3                                  ; $5CF3: $01 $A3 $85
    ld [bc], a                                    ; $5CF6: $02
    add d                                         ; $5CF7: $82
    ld [$A182], sp                                ; $5CF8: $08 $82 $A1
    inc bc                                        ; $5CFB: $03
    and b                                         ; $5CFC: $A0
    and c                                         ; $5CFD: $A1
    and c                                         ; $5CFE: $A1
    adc b                                         ; $5CFF: $88
    ld [bc], a                                    ; $5D00: $02
    add e                                         ; $5D01: $83
    and l                                         ; $5D02: $A5
    inc b                                         ; $5D03: $04
    and [hl]                                      ; $5D04: $A6
    and d                                         ; $5D05: $A2
    and c                                         ; $5D06: $A1
    and e                                         ; $5D07: $A3
    add a                                         ; $5D08: $87
    ld [bc], a                                    ; $5D09: $02
    add d                                         ; $5D0A: $82
    and [hl]                                      ; $5D0B: $A6
    ld bc, $83A5                                  ; $5D0C: $01 $A5 $83
    and h                                         ; $5D0F: $A4
    add l                                         ; $5D10: $85
    and e                                         ; $5D11: $A3
    adc b                                         ; $5D12: $88
    ld [bc], a                                    ; $5D13: $02
    add d                                         ; $5D14: $82
    and [hl]                                      ; $5D15: $A6
    add h                                         ; $5D16: $84
    and a                                         ; $5D17: $A7
    add h                                         ; $5D18: $84
    and d                                         ; $5D19: $A2
    ld bc, $85A3                                  ; $5D1A: $01 $A3 $85
    ld [bc], a                                    ; $5D1D: $02
    add d                                         ; $5D1E: $82
    ld [$A187], sp                                ; $5D1F: $08 $87 $A1
    adc b                                         ; $5D22: $88
    ld [bc], a                                    ; $5D23: $02
    add e                                         ; $5D24: $83
    and l                                         ; $5D25: $A5
    ld [bc], a                                    ; $5D26: $02
    and d                                         ; $5D27: $A2
    and e                                         ; $5D28: $A3
    add a                                         ; $5D29: $87
    ld [bc], a                                    ; $5D2A: $02
    add d                                         ; $5D2B: $82
    and [hl]                                      ; $5D2C: $A6
    ld bc, $85A4                                  ; $5D2D: $01 $A4 $85
    and e                                         ; $5D30: $A3
    adc e                                         ; $5D31: $8B
    ld [bc], a                                    ; $5D32: $02
    add d                                         ; $5D33: $82
    and [hl]                                      ; $5D34: $A6
    add d                                         ; $5D35: $82
    and a                                         ; $5D36: $A7
    add d                                         ; $5D37: $82
    and b                                         ; $5D38: $A0
    add [hl]                                      ; $5D39: $86
    and c                                         ; $5D3A: $A1
    add h                                         ; $5D3B: $84
    ld [bc], a                                    ; $5D3C: $02
    add d                                         ; $5D3D: $82
    ld [$A188], sp                                ; $5D3E: $08 $88 $A1
    adc b                                         ; $5D41: $88
    ld [bc], a                                    ; $5D42: $02
    add e                                         ; $5D43: $83
    and l                                         ; $5D44: $A5
    add d                                         ; $5D45: $82
    and e                                         ; $5D46: $A3
    add [hl]                                      ; $5D47: $86
    ld [bc], a                                    ; $5D48: $02
    add d                                         ; $5D49: $82
    and l                                         ; $5D4A: $A5
    add l                                         ; $5D4B: $85
    and e                                         ; $5D4C: $A3
    adc h                                         ; $5D4D: $8C
    ld [bc], a                                    ; $5D4E: $02
    add d                                         ; $5D4F: $82
    and [hl]                                      ; $5D50: $A6
    add d                                         ; $5D51: $82
    and a                                         ; $5D52: $A7
    add d                                         ; $5D53: $82
    and b                                         ; $5D54: $A0
    add a                                         ; $5D55: $87
    and c                                         ; $5D56: $A1
    add e                                         ; $5D57: $83
    ld [bc], a                                    ; $5D58: $02
    add d                                         ; $5D59: $82
    ld [$A284], sp                                ; $5D5A: $08 $84 $A2
    ld bc, $83A3                                  ; $5D5D: $01 $A3 $83
    and c                                         ; $5D60: $A1
    add d                                         ; $5D61: $82
    and d                                         ; $5D62: $A2
    add a                                         ; $5D63: $87
    ld [bc], a                                    ; $5D64: $02
    add d                                         ; $5D65: $82
    and l                                         ; $5D66: $A5
    add d                                         ; $5D67: $82
    and e                                         ; $5D68: $A3
    add l                                         ; $5D69: $85
    ld [bc], a                                    ; $5D6A: $02
    add d                                         ; $5D6B: $82
    and l                                         ; $5D6C: $A5
    ld [bc], a                                    ; $5D6D: $02
    and h                                         ; $5D6E: $A4
    and e                                         ; $5D6F: $A3
    adc a                                         ; $5D70: $8F
    ld [bc], a                                    ; $5D71: $02
    add l                                         ; $5D72: $85
    and [hl]                                      ; $5D73: $A6
    add e                                         ; $5D74: $83
    and h                                         ; $5D75: $A4
    add a                                         ; $5D76: $87
    and c                                         ; $5D77: $A1
    add d                                         ; $5D78: $82
    and b                                         ; $5D79: $A0
    add d                                         ; $5D7A: $82
    ld [$A384], sp                                ; $5D7B: $08 $84 $A3
    add d                                         ; $5D7E: $82
    and h                                         ; $5D7F: $A4
    add h                                         ; $5D80: $84
    and d                                         ; $5D81: $A2
    add a                                         ; $5D82: $87
    ld [bc], a                                    ; $5D83: $02
    add d                                         ; $5D84: $82
    and l                                         ; $5D85: $A5
    add d                                         ; $5D86: $82
    and e                                         ; $5D87: $A3
    sbc b                                         ; $5D88: $98
    ld [bc], a                                    ; $5D89: $02
    add l                                         ; $5D8A: $85
    and [hl]                                      ; $5D8B: $A6
    add e                                         ; $5D8C: $83
    and h                                         ; $5D8D: $A4
    ld bc, $86A5                                  ; $5D8E: $01 $A5 $86
    and c                                         ; $5D91: $A1
    add d                                         ; $5D92: $82
    and b                                         ; $5D93: $A0
    add d                                         ; $5D94: $82
    ld [$A382], sp                                ; $5D95: $08 $82 $A3
    add e                                         ; $5D98: $83
    and h                                         ; $5D99: $A4
    add e                                         ; $5D9A: $83
    and e                                         ; $5D9B: $A3
    ld bc, $89A2                                  ; $5D9C: $01 $A2 $89
    ld [bc], a                                    ; $5D9F: $02
    ld [bc], a                                    ; $5DA0: $02
    and l                                         ; $5DA1: $A5
    and h                                         ; $5DA2: $A4
    add d                                         ; $5DA3: $82
    and e                                         ; $5DA4: $A3
    sub l                                         ; $5DA5: $95
    ld [bc], a                                    ; $5DA6: $02
    add h                                         ; $5DA7: $84
    and a                                         ; $5DA8: $A7
    add e                                         ; $5DA9: $83
    and e                                         ; $5DAA: $A3
    add e                                         ; $5DAB: $83
    and h                                         ; $5DAC: $A4
    add e                                         ; $5DAD: $83
    and l                                         ; $5DAE: $A5
    add h                                         ; $5DAF: $84
    and [hl]                                      ; $5DB0: $A6
    add d                                         ; $5DB1: $82
    and c                                         ; $5DB2: $A1
    add d                                         ; $5DB3: $82
    ld [$A383], sp                                ; $5DB4: $08 $83 $A3
    ld [bc], a                                    ; $5DB7: $02
    and h                                         ; $5DB8: $A4
    and l                                         ; $5DB9: $A5
    add d                                         ; $5DBA: $82
    and h                                         ; $5DBB: $A4
    add d                                         ; $5DBC: $82
    and e                                         ; $5DBD: $A3
    ld bc, $88A2                                  ; $5DBE: $01 $A2 $88
    ld [bc], a                                    ; $5DC1: $02
    inc bc                                        ; $5DC2: $03
    and l                                         ; $5DC3: $A5
    and h                                         ; $5DC4: $A4
    and e                                         ; $5DC5: $A3
    sub h                                         ; $5DC6: $94
    ld [bc], a                                    ; $5DC7: $02
    add h                                         ; $5DC8: $84
    and a                                         ; $5DC9: $A7
    add [hl]                                      ; $5DCA: $86
    and e                                         ; $5DCB: $A3
    add d                                         ; $5DCC: $82
    and h                                         ; $5DCD: $A4
    add e                                         ; $5DCE: $83
    and l                                         ; $5DCF: $A5
    add [hl]                                      ; $5DD0: $86
    and [hl]                                      ; $5DD1: $A6
    add d                                         ; $5DD2: $82
    ld [$A282], sp                                ; $5DD3: $08 $82 $A2
    inc bc                                        ; $5DD6: $03
    and e                                         ; $5DD7: $A3
    ld [bc], a                                    ; $5DD8: $02
    and l                                         ; $5DD9: $A5
    add h                                         ; $5DDA: $84
    and h                                         ; $5DDB: $A4
    ld bc, $89A3                                  ; $5DDC: $01 $A3 $89
    ld [bc], a                                    ; $5DDF: $02
    ld bc, $95A4                                  ; $5DE0: $01 $A4 $95
    ld [bc], a                                    ; $5DE3: $02
    add l                                         ; $5DE4: $85
    and a                                         ; $5DE5: $A7
    add e                                         ; $5DE6: $83
    and e                                         ; $5DE7: $A3
    add h                                         ; $5DE8: $84
    and h                                         ; $5DE9: $A4
    adc c                                         ; $5DEA: $89
    and l                                         ; $5DEB: $A5
    add d                                         ; $5DEC: $82
    ld [$A282], sp                                ; $5DED: $08 $82 $A2
    add l                                         ; $5DF0: $85
    ld [bc], a                                    ; $5DF1: $02
    ld bc, $A0A4                                  ; $5DF2: $01 $A4 $A0
    ld [bc], a                                    ; $5DF5: $02
    add e                                         ; $5DF6: $83
    and [hl]                                      ; $5DF7: $A6
    ld bc, $85A7                                  ; $5DF8: $01 $A7 $85
    and e                                         ; $5DFB: $A3
    add d                                         ; $5DFC: $82
    and h                                         ; $5DFD: $A4
    add d                                         ; $5DFE: $82
    ld [bc], a                                    ; $5DFF: $02
    adc c                                         ; $5E00: $89
    and l                                         ; $5E01: $A5
    add d                                         ; $5E02: $82
    ld [$A282], sp                                ; $5E03: $08 $82 $A2
    adc h                                         ; $5E06: $8C
    ld [bc], a                                    ; $5E07: $02
    add d                                         ; $5E08: $82
    and b                                         ; $5E09: $A0
    ld bc, $96A1                                  ; $5E0A: $01 $A1 $96
    ld [bc], a                                    ; $5E0D: $02
    add h                                         ; $5E0E: $84
    and [hl]                                      ; $5E0F: $A6
    ld [bc], a                                    ; $5E10: $02
    and a                                         ; $5E11: $A7
    and h                                         ; $5E12: $A4
    add e                                         ; $5E13: $83
    and e                                         ; $5E14: $A3
    add a                                         ; $5E15: $87
    ld [bc], a                                    ; $5E16: $02
    add e                                         ; $5E17: $83
    and l                                         ; $5E18: $A5
    ld bc, $83A0                                  ; $5E19: $01 $A0 $83
    and l                                         ; $5E1C: $A5
    add d                                         ; $5E1D: $82
    ld [$A202], sp                                ; $5E1E: $08 $02 $A2
    and e                                         ; $5E21: $A3
    adc d                                         ; $5E22: $8A
    ld [bc], a                                    ; $5E23: $02
    add h                                         ; $5E24: $84
    and b                                         ; $5E25: $A0
    add e                                         ; $5E26: $83
    and c                                         ; $5E27: $A1
    sub l                                         ; $5E28: $95
    ld [bc], a                                    ; $5E29: $02
    add d                                         ; $5E2A: $82
    and [hl]                                      ; $5E2B: $A6
    inc bc                                        ; $5E2C: $03
    and l                                         ; $5E2D: $A5
    and h                                         ; $5E2E: $A4
    and h                                         ; $5E2F: $A4
    add e                                         ; $5E30: $83
    and e                                         ; $5E31: $A3
    adc d                                         ; $5E32: $8A
    ld [bc], a                                    ; $5E33: $02
    add h                                         ; $5E34: $84
    and l                                         ; $5E35: $A5
    add d                                         ; $5E36: $82
    ld [$A201], sp                                ; $5E37: $08 $01 $A2
    adc c                                         ; $5E3A: $89
    ld [bc], a                                    ; $5E3B: $02
    add d                                         ; $5E3C: $82
    and a                                         ; $5E3D: $A7
    add e                                         ; $5E3E: $83
    and b                                         ; $5E3F: $A0
    add e                                         ; $5E40: $83
    and c                                         ; $5E41: $A1
    ld bc, $94A2                                  ; $5E42: $01 $A2 $94
    ld [bc], a                                    ; $5E45: $02
    add e                                         ; $5E46: $83
    and l                                         ; $5E47: $A5
    add e                                         ; $5E48: $83
    and h                                         ; $5E49: $A4
    adc l                                         ; $5E4A: $8D
    ld [bc], a                                    ; $5E4B: $02
    add h                                         ; $5E4C: $84
    and l                                         ; $5E4D: $A5
    add d                                         ; $5E4E: $82
    ld [$A282], sp                                ; $5E4F: $08 $82 $A2
    adc b                                         ; $5E52: $88
    ld [bc], a                                    ; $5E53: $02
    add e                                         ; $5E54: $83
    and a                                         ; $5E55: $A7
    add e                                         ; $5E56: $83
    and b                                         ; $5E57: $A0
    add d                                         ; $5E58: $82
    and c                                         ; $5E59: $A1
    ld [bc], a                                    ; $5E5A: $02
    and d                                         ; $5E5B: $A2
    and c                                         ; $5E5C: $A1
    sub e                                         ; $5E5D: $93
    ld [bc], a                                    ; $5E5E: $02
    add e                                         ; $5E5F: $83
    and l                                         ; $5E60: $A5
    add d                                         ; $5E61: $82
    and h                                         ; $5E62: $A4
    adc a                                         ; $5E63: $8F
    ld [bc], a                                    ; $5E64: $02
    inc bc                                        ; $5E65: $03
    and l                                         ; $5E66: $A5
    and [hl]                                      ; $5E67: $A6
    and l                                         ; $5E68: $A5
    add d                                         ; $5E69: $82
    ld [$A282], sp                                ; $5E6A: $08 $82 $A2
    add a                                         ; $5E6D: $87
    ld [bc], a                                    ; $5E6E: $02
    ld bc, $83A6                                  ; $5E6F: $01 $A6 $83
    and a                                         ; $5E72: $A7
    add d                                         ; $5E73: $82
    and b                                         ; $5E74: $A0
    add d                                         ; $5E75: $82
    and c                                         ; $5E76: $A1
    add e                                         ; $5E77: $83
    and e                                         ; $5E78: $A3
    sub l                                         ; $5E79: $95
    ld [bc], a                                    ; $5E7A: $02
    ld bc, $92A5                                  ; $5E7B: $01 $A5 $92
    ld [bc], a                                    ; $5E7E: $02
    add d                                         ; $5E7F: $82
    and [hl]                                      ; $5E80: $A6
    add d                                         ; $5E81: $82
    ld [$A282], sp                                ; $5E82: $08 $82 $A2
    add a                                         ; $5E85: $87
    ld [bc], a                                    ; $5E86: $02
    add h                                         ; $5E87: $84
    and [hl]                                      ; $5E88: $A6
    add d                                         ; $5E89: $82
    and h                                         ; $5E8A: $A4
    add d                                         ; $5E8B: $82
    and d                                         ; $5E8C: $A2
    ld bc, $AAA3                                  ; $5E8D: $01 $A3 $AA
    ld [bc], a                                    ; $5E90: $02
    add d                                         ; $5E91: $82
    and [hl]                                      ; $5E92: $A6
    add d                                         ; $5E93: $82
    ld [$A283], sp                                ; $5E94: $08 $83 $A2
    add [hl]                                      ; $5E97: $86
    ld [bc], a                                    ; $5E98: $02
    add d                                         ; $5E99: $82
    and [hl]                                      ; $5E9A: $A6
    add d                                         ; $5E9B: $82
    and l                                         ; $5E9C: $A5
    add d                                         ; $5E9D: $82
    and h                                         ; $5E9E: $A4
    add d                                         ; $5E9F: $82
    and e                                         ; $5EA0: $A3
    xor e                                         ; $5EA1: $AB
    ld [bc], a                                    ; $5EA2: $02
    add d                                         ; $5EA3: $82
    and [hl]                                      ; $5EA4: $A6
    add d                                         ; $5EA5: $82
    ld [$A203], sp                                ; $5EA6: $08 $03 $A2
    and e                                         ; $5EA9: $A3
    and e                                         ; $5EAA: $A3
    add [hl]                                      ; $5EAB: $86
    ld [bc], a                                    ; $5EAC: $02
    add h                                         ; $5EAD: $84
    and l                                         ; $5EAE: $A5
    add d                                         ; $5EAF: $82
    and h                                         ; $5EB0: $A4
    ld [bc], a                                    ; $5EB1: $02
    and e                                         ; $5EB2: $A3
    and d                                         ; $5EB3: $A2
    xor c                                         ; $5EB4: $A9
    ld [bc], a                                    ; $5EB5: $02
    add h                                         ; $5EB6: $84
    and a                                         ; $5EB7: $A7
    add d                                         ; $5EB8: $82
    ld [$A201], sp                                ; $5EB9: $08 $01 $A2
    adc d                                         ; $5EBC: $8A
    ld [bc], a                                    ; $5EBD: $02
    add e                                         ; $5EBE: $83
    and l                                         ; $5EBF: $A5
    ld [bc], a                                    ; $5EC0: $02
    and h                                         ; $5EC1: $A4
    and e                                         ; $5EC2: $A3
    add d                                         ; $5EC3: $82
    and d                                         ; $5EC4: $A2
    and a                                         ; $5EC5: $A7
    ld [bc], a                                    ; $5EC6: $02
    add l                                         ; $5EC7: $85
    and a                                         ; $5EC8: $A7
    add [hl]                                      ; $5EC9: $86
    ld [$0288], sp                                ; $5ECA: $08 $88 $02
    ld [bc], a                                    ; $5ECD: $02
    and l                                         ; $5ECE: $A5
    and h                                         ; $5ECF: $A4
    add d                                         ; $5ED0: $82
    and l                                         ; $5ED1: $A5
    ld [bc], a                                    ; $5ED2: $02
    and h                                         ; $5ED3: $A4
    and e                                         ; $5ED4: $A3
    adc c                                         ; $5ED5: $89
    ld [bc], a                                    ; $5ED6: $02
    ld bc, $84A7                                  ; $5ED7: $01 $A7 $84
    and b                                         ; $5EDA: $A0
    sub h                                         ; $5EDB: $94
    ld [bc], a                                    ; $5EDC: $02
    ld bc, $83A7                                  ; $5EDD: $01 $A7 $83
    and b                                         ; $5EE0: $A0
    ld bc, $8502                                  ; $5EE1: $01 $02 $85
    and a                                         ; $5EE4: $A7
    ld [bc], a                                    ; $5EE5: $02
    ld [$84C0], sp                                ; $5EE6: $08 $C0 $84
    nop                                           ; $5EE9: $00
    adc e                                         ; $5EEA: $8B
    ld [bc], a                                    ; $5EEB: $02
    ld bc, $8AA4                                  ; $5EEC: $01 $A4 $8A
    ld [bc], a                                    ; $5EEF: $02
    add e                                         ; $5EF0: $83
    and a                                         ; $5EF1: $A7
    add h                                         ; $5EF2: $84
    and b                                         ; $5EF3: $A0
    add d                                         ; $5EF4: $82
    and c                                         ; $5EF5: $A1
    sub b                                         ; $5EF6: $90
    ld [bc], a                                    ; $5EF7: $02
    ld bc, $86A7                                  ; $5EF8: $01 $A7 $86
    and b                                         ; $5EFB: $A0
    add h                                         ; $5EFC: $84
    and a                                         ; $5EFD: $A7
    ld [bc], a                                    ; $5EFE: $02
    ld [$84C0], sp                                ; $5EFF: $08 $C0 $84
    nop                                           ; $5F02: $00
    sub l                                         ; $5F03: $95
    ld [bc], a                                    ; $5F04: $02
    add h                                         ; $5F05: $84
    and a                                         ; $5F06: $A7
    add h                                         ; $5F07: $84
    and b                                         ; $5F08: $A0
    add h                                         ; $5F09: $84
    and c                                         ; $5F0A: $A1
    adc l                                         ; $5F0B: $8D
    ld [bc], a                                    ; $5F0C: $02
    add d                                         ; $5F0D: $82
    and [hl]                                      ; $5F0E: $A6
    adc d                                         ; $5F0F: $8A
    and a                                         ; $5F10: $A7
    ld [bc], a                                    ; $5F11: $02
    ld [$84C0], sp                                ; $5F12: $08 $C0 $84
    nop                                           ; $5F15: $00
    sub [hl]                                      ; $5F16: $96
    ld [bc], a                                    ; $5F17: $02
    add d                                         ; $5F18: $82
    and a                                         ; $5F19: $A7
    ld [bc], a                                    ; $5F1A: $02
    and [hl]                                      ; $5F1B: $A6
    and a                                         ; $5F1C: $A7
    add d                                         ; $5F1D: $82
    and b                                         ; $5F1E: $A0
    add a                                         ; $5F1F: $87
    and c                                         ; $5F20: $A1
    adc h                                         ; $5F21: $8C
    ld [bc], a                                    ; $5F22: $02
    adc e                                         ; $5F23: $8B
    and [hl]                                      ; $5F24: $A6
    add [hl]                                      ; $5F25: $86
    ld [$0295], sp                                ; $5F26: $08 $95 $02
    add d                                         ; $5F29: $82
    and [hl]                                      ; $5F2A: $A6
    ld [bc], a                                    ; $5F2B: $02
    and a                                         ; $5F2C: $A7
    and [hl]                                      ; $5F2D: $A6
    add d                                         ; $5F2E: $82
    and a                                         ; $5F2F: $A7
    ld bc, $85A6                                  ; $5F30: $01 $A6 $85
    and c                                         ; $5F33: $A1
    add d                                         ; $5F34: $82
    and d                                         ; $5F35: $A2
    adc e                                         ; $5F36: $8B
    ld [bc], a                                    ; $5F37: $02
    adc h                                         ; $5F38: $8C
    and [hl]                                      ; $5F39: $A6
    add d                                         ; $5F3A: $82
    ld [$A201], sp                                ; $5F3B: $08 $01 $A2
    sbc b                                         ; $5F3E: $98
    ld [bc], a                                    ; $5F3F: $02
    inc bc                                        ; $5F40: $03
    and [hl]                                      ; $5F41: $A6
    and l                                         ; $5F42: $A5
    and [hl]                                      ; $5F43: $A6
    add e                                         ; $5F44: $83
    and l                                         ; $5F45: $A5
    inc bc                                        ; $5F46: $03
    and [hl]                                      ; $5F47: $A6
    and d                                         ; $5F48: $A2
    and d                                         ; $5F49: $A2
    add [hl]                                      ; $5F4A: $86
    and e                                         ; $5F4B: $A3
    adc d                                         ; $5F4C: $8A
    ld [bc], a                                    ; $5F4D: $02
    ld bc, $86A6                                  ; $5F4E: $01 $A6 $86
    and l                                         ; $5F51: $A5
    add l                                         ; $5F52: $85
    and [hl]                                      ; $5F53: $A6
    add d                                         ; $5F54: $82
    ld [$A282], sp                                ; $5F55: $08 $82 $A2
    sbc b                                         ; $5F58: $98
    ld [bc], a                                    ; $5F59: $02
    add h                                         ; $5F5A: $84
    and l                                         ; $5F5B: $A5
    add h                                         ; $5F5C: $84
    and h                                         ; $5F5D: $A4
    add [hl]                                      ; $5F5E: $86
    and e                                         ; $5F5F: $A3
    adc h                                         ; $5F60: $8C
    ld [bc], a                                    ; $5F61: $02
    adc d                                         ; $5F62: $8A
    and l                                         ; $5F63: $A5
    add d                                         ; $5F64: $82
    ld [$A282], sp                                ; $5F65: $08 $82 $A2
    sbc b                                         ; $5F68: $98
    ld [bc], a                                    ; $5F69: $02
    add h                                         ; $5F6A: $84
    and l                                         ; $5F6B: $A5
    add h                                         ; $5F6C: $84
    and h                                         ; $5F6D: $A4
    add h                                         ; $5F6E: $84
    and e                                         ; $5F6F: $A3
    adc a                                         ; $5F70: $8F
    ld [bc], a                                    ; $5F71: $02
    ld [bc], a                                    ; $5F72: $02
    and l                                         ; $5F73: $A5
    ld [bc], a                                    ; $5F74: $02
    add [hl]                                      ; $5F75: $86
    and l                                         ; $5F76: $A5
    inc bc                                        ; $5F77: $03
    and b                                         ; $5F78: $A0
    ld [$8208], sp                                ; $5F79: $08 $08 $82
    and c                                         ; $5F7C: $A1
    ld [bc], a                                    ; $5F7D: $02
    ld [bc], a                                    ; $5F7E: $02
    and c                                         ; $5F7F: $A1
    sub a                                         ; $5F80: $97
    ld [bc], a                                    ; $5F81: $02
    add e                                         ; $5F82: $83
    and l                                         ; $5F83: $A5
    add [hl]                                      ; $5F84: $86
    and h                                         ; $5F85: $A4
    sub h                                         ; $5F86: $94
    ld [bc], a                                    ; $5F87: $02
    add h                                         ; $5F88: $84
    and l                                         ; $5F89: $A5
    ld [bc], a                                    ; $5F8A: $02
    and b                                         ; $5F8B: $A0
    and l                                         ; $5F8C: $A5
    add d                                         ; $5F8D: $82
    ld [$A187], sp                                ; $5F8E: $08 $87 $A1
    sub l                                         ; $5F91: $95
    ld [bc], a                                    ; $5F92: $02
    add d                                         ; $5F93: $82
    and h                                         ; $5F94: $A4
    add d                                         ; $5F95: $82
    ld [bc], a                                    ; $5F96: $02
    ld bc, $9BA4                                  ; $5F97: $01 $A4 $9B
    ld [bc], a                                    ; $5F9A: $02
    ld [bc], a                                    ; $5F9B: $02
    and l                                         ; $5F9C: $A5
    and [hl]                                      ; $5F9D: $A6
    add d                                         ; $5F9E: $82
    ld [$A188], sp                                ; $5F9F: $08 $88 $A1
    or h                                          ; $5FA2: $B4
    ld [bc], a                                    ; $5FA3: $02
    add d                                         ; $5FA4: $82
    and [hl]                                      ; $5FA5: $A6
    add d                                         ; $5FA6: $82
    ld [$A288], sp                                ; $5FA7: $08 $88 $A2
    or h                                          ; $5FAA: $B4
    ld [bc], a                                    ; $5FAB: $02
    add d                                         ; $5FAC: $82
    and [hl]                                      ; $5FAD: $A6
    add d                                         ; $5FAE: $82
    ld [$A387], sp                                ; $5FAF: $08 $87 $A3
    add [hl]                                      ; $5FB2: $86
    ld [bc], a                                    ; $5FB3: $02
    add d                                         ; $5FB4: $82
    and a                                         ; $5FB5: $A7
    add d                                         ; $5FB6: $82
    and b                                         ; $5FB7: $A0
    xor e                                         ; $5FB8: $AB
    ld [bc], a                                    ; $5FB9: $02
    add d                                         ; $5FBA: $82
    and [hl]                                      ; $5FBB: $A6
    add d                                         ; $5FBC: $82
    ld [$A386], sp                                ; $5FBD: $08 $86 $A3
    add a                                         ; $5FC0: $87
    ld [bc], a                                    ; $5FC1: $02
    add d                                         ; $5FC2: $82
    and a                                         ; $5FC3: $A7
    inc bc                                        ; $5FC4: $03
    and b                                         ; $5FC5: $A0
    and c                                         ; $5FC6: $A1
    and c                                         ; $5FC7: $A1
    sbc c                                         ; $5FC8: $99
    ld [bc], a                                    ; $5FC9: $02
    ld bc, $8308                                  ; $5FCA: $01 $08 $83
    nop                                           ; $5FCD: $00
    ld bc, $8308                                  ; $5FCE: $01 $08 $83
    ld [bc], a                                    ; $5FD1: $02
    add h                                         ; $5FD2: $84
    and b                                         ; $5FD3: $A0
    add h                                         ; $5FD4: $84
    ld [bc], a                                    ; $5FD5: $02
    add e                                         ; $5FD6: $83
    and [hl]                                      ; $5FD7: $A6
    add d                                         ; $5FD8: $82
    ld [$A282], sp                                ; $5FD9: $08 $82 $A2
    add h                                         ; $5FDC: $84
    and e                                         ; $5FDD: $A3
    add [hl]                                      ; $5FDE: $86
    ld [bc], a                                    ; $5FDF: $02
    add e                                         ; $5FE0: $83
    and a                                         ; $5FE1: $A7
    inc bc                                        ; $5FE2: $03
    and b                                         ; $5FE3: $A0
    and d                                         ; $5FE4: $A2
    and d                                         ; $5FE5: $A2
    sbc c                                         ; $5FE6: $99
    ld [bc], a                                    ; $5FE7: $02
    ld bc, $8308                                  ; $5FE8: $01 $08 $83
    nop                                           ; $5FEB: $00
    inc b                                         ; $5FEC: $04
    ld [$0202], sp                                ; $5FED: $08 $02 $02
    and a                                         ; $5FF0: $A7
    add h                                         ; $5FF1: $84
    and b                                         ; $5FF2: $A0
    ld bc, $83A1                                  ; $5FF3: $01 $A1 $83
    ld [bc], a                                    ; $5FF6: $02
    add e                                         ; $5FF7: $83
    and [hl]                                      ; $5FF8: $A6
    add d                                         ; $5FF9: $82
    ld [$A282], sp                                ; $5FFA: $08 $82 $A2
    adc d                                         ; $5FFD: $8A
    ld [bc], a                                    ; $5FFE: $02
    add e                                         ; $5FFF: $83
    and a                                         ; $6000: $A7
    inc bc                                        ; $6001: $03
    and b                                         ; $6002: $A0
    and c                                         ; $6003: $A1
    and d                                         ; $6004: $A2
    sbc c                                         ; $6005: $99
    ld [bc], a                                    ; $6006: $02
    dec b                                         ; $6007: $05
    ld [rRAMB], sp                                ; $6008: $08 $00 $40
    nop                                           ; $600B: $00
    ld [$0282], sp                                ; $600C: $08 $82 $02
    ld bc, $85A6                                  ; $600F: $01 $A6 $85
    and b                                         ; $6012: $A0
    ld [bc], a                                    ; $6013: $02
    and c                                         ; $6014: $A1
    ld [bc], a                                    ; $6015: $02
    add h                                         ; $6016: $84
    and a                                         ; $6017: $A7
    add d                                         ; $6018: $82
    ld [$A282], sp                                ; $6019: $08 $82 $A2
    adc c                                         ; $601C: $89
    ld [bc], a                                    ; $601D: $02
    add h                                         ; $601E: $84
    and a                                         ; $601F: $A7
    ld bc, $83A0                                  ; $6020: $01 $A0 $83
    and c                                         ; $6023: $A1
    sub d                                         ; $6024: $92
    ld [bc], a                                    ; $6025: $02
    add a                                         ; $6026: $87
    ld [$0083], sp                                ; $6027: $08 $83 $00
    add a                                         ; $602A: $87
    ld [$A082], sp                                ; $602B: $08 $82 $A0
    ld [bc], a                                    ; $602E: $02
    and c                                         ; $602F: $A1
    ld [bc], a                                    ; $6030: $02
    add h                                         ; $6031: $84
    and a                                         ; $6032: $A7
    add d                                         ; $6033: $82
    ld [$A283], sp                                ; $6034: $08 $83 $A2
    add l                                         ; $6037: $85
    ld [bc], a                                    ; $6038: $02
    add h                                         ; $6039: $84
    and b                                         ; $603A: $A0
    add e                                         ; $603B: $83
    and a                                         ; $603C: $A7
    add d                                         ; $603D: $82
    and d                                         ; $603E: $A2
    inc bc                                        ; $603F: $03
    and c                                         ; $6040: $A1
    and d                                         ; $6041: $A2
    and d                                         ; $6042: $A2
    adc [hl]                                      ; $6043: $8E
    ld [bc], a                                    ; $6044: $02
    inc b                                         ; $6045: $04
    and a                                         ; $6046: $A7
    and b                                         ; $6047: $A0
    and b                                         ; $6048: $A0
    ld [$008F], sp                                ; $6049: $08 $8F $00
    ld bc, $8408                                  ; $604C: $01 $08 $84
    and b                                         ; $604F: $A0
    add h                                         ; $6050: $84
    and a                                         ; $6051: $A7
    add d                                         ; $6052: $82
    ld [$A183], sp                                ; $6053: $08 $83 $A1
    ld bc, $8402                                  ; $6056: $01 $02 $84
    and b                                         ; $6059: $A0
    ld bc, $83A7                                  ; $605A: $01 $A7 $83
    and b                                         ; $605D: $A0
    add e                                         ; $605E: $83
    and a                                         ; $605F: $A7
    add l                                         ; $6060: $85
    and d                                         ; $6061: $A2
    adc [hl]                                      ; $6062: $8E
    ld [bc], a                                    ; $6063: $02
    inc b                                         ; $6064: $04
    and [hl]                                      ; $6065: $A6
    and a                                         ; $6066: $A7
    and a                                         ; $6067: $A7
    ld [$008F], sp                                ; $6068: $08 $8F $00
    ld bc, $8408                                  ; $606B: $01 $08 $84
    and b                                         ; $606E: $A0
    add h                                         ; $606F: $84
    and a                                         ; $6070: $A7
    add d                                         ; $6071: $82
    ld [$A182], sp                                ; $6072: $08 $82 $A1
    adc b                                         ; $6075: $88
    and b                                         ; $6076: $A0
    add h                                         ; $6077: $84
    and a                                         ; $6078: $A7
    ld bc, $85A3                                  ; $6079: $01 $A3 $85
    and d                                         ; $607C: $A2
    adc d                                         ; $607D: $8A
    ld [bc], a                                    ; $607E: $02
    adc b                                         ; $607F: $88
    ld [$008F], sp                                ; $6080: $08 $8F $00
    ld bc, $8408                                  ; $6083: $01 $08 $84
    and b                                         ; $6086: $A0
    ld bc, $83A7                                  ; $6087: $01 $A7 $83
    and [hl]                                      ; $608A: $A6
    add d                                         ; $608B: $82
    ld [$A184], sp                                ; $608C: $08 $84 $A1
    add [hl]                                      ; $608F: $86
    and b                                         ; $6090: $A0
    add e                                         ; $6091: $83
    and a                                         ; $6092: $A7
    add e                                         ; $6093: $83
    and e                                         ; $6094: $A3
    add d                                         ; $6095: $82
    and d                                         ; $6096: $A2
    ld [bc], a                                    ; $6097: $02
    and e                                         ; $6098: $A3
    and d                                         ; $6099: $A2
    adc d                                         ; $609A: $8A
    ld [bc], a                                    ; $609B: $02
    adc d                                         ; $609C: $8A
    nop                                           ; $609D: $00
    add h                                         ; $609E: $84
    ld [$0004], sp                                ; $609F: $08 $04 $00
    ld [$0008], sp                                ; $60A2: $08 $08 $00
    add h                                         ; $60A5: $84
    ld [$0002], sp                                ; $60A6: $08 $02 $00
    ld [$A284], sp                                ; $60A9: $08 $84 $A2
    add h                                         ; $60AC: $84
    and l                                         ; $60AD: $A5
    add d                                         ; $60AE: $82
    ld [$A184], sp                                ; $60AF: $08 $84 $A1
    add [hl]                                      ; $60B2: $86
    and b                                         ; $60B3: $A0
    ld bc, $86A7                                  ; $60B4: $01 $A7 $86
    and e                                         ; $60B7: $A3
    ld bc, $8CA2                                  ; $60B8: $01 $A2 $8C
    ld [bc], a                                    ; $60BB: $02
    adc e                                         ; $60BC: $8B
    nop                                           ; $60BD: $00
    add d                                         ; $60BE: $82
    ld [$0082], sp                                ; $60BF: $08 $82 $00
    add d                                         ; $60C2: $82
    ld [$0082], sp                                ; $60C3: $08 $82 $00
    add d                                         ; $60C6: $82
    ld [$0082], sp                                ; $60C7: $08 $82 $00
    ld bc, $8308                                  ; $60CA: $01 $08 $83
    and e                                         ; $60CD: $A3
    ld bc, $84A4                                  ; $60CE: $01 $A4 $84
    and l                                         ; $60D1: $A5
    add d                                         ; $60D2: $82
    ld [$A185], sp                                ; $60D3: $08 $85 $A1
    add e                                         ; $60D6: $83
    and b                                         ; $60D7: $A0
    adc b                                         ; $60D8: $88
    and e                                         ; $60D9: $A3
    add d                                         ; $60DA: $82
    and d                                         ; $60DB: $A2
    adc h                                         ; $60DC: $8C
    ld [bc], a                                    ; $60DD: $02
    adc a                                         ; $60DE: $8F
    nop                                           ; $60DF: $00
    add d                                         ; $60E0: $82
    ld [$0086], sp                                ; $60E1: $08 $86 $00
    ld bc, $8308                                  ; $60E4: $01 $08 $83
    and e                                         ; $60E7: $A3
    ld bc, $84A4                                  ; $60E8: $01 $A4 $84
    and l                                         ; $60EB: $A5
    add d                                         ; $60EC: $82
    ld [$0283], sp                                ; $60ED: $08 $83 $02
    add d                                         ; $60F0: $82
    and c                                         ; $60F1: $A1
    add d                                         ; $60F2: $82
    and b                                         ; $60F3: $A0
    adc c                                         ; $60F4: $89
    and e                                         ; $60F5: $A3
    ld bc, $8DA2                                  ; $60F6: $01 $A2 $8D
    ld [bc], a                                    ; $60F9: $02
    adc b                                         ; $60FA: $88
    ld [$0086], sp                                ; $60FB: $08 $86 $00
    ld [bc], a                                    ; $60FE: $02
    ld [$82A0], sp                                ; $60FF: $08 $A0 $82
    ld [$0085], sp                                ; $6102: $08 $85 $00
    ld bc, $8308                                  ; $6105: $01 $08 $83
    and e                                         ; $6108: $A3
    ld bc, $84A4                                  ; $6109: $01 $A4 $84
    and l                                         ; $610C: $A5
    add d                                         ; $610D: $82
    ld [$0283], sp                                ; $610E: $08 $83 $02
    ld bc, $89A1                                  ; $6111: $01 $A1 $89
    and e                                         ; $6114: $A3
    add d                                         ; $6115: $82
    and h                                         ; $6116: $A4
    add d                                         ; $6117: $82
    and e                                         ; $6118: $A3
    adc a                                         ; $6119: $8F
    ld [bc], a                                    ; $611A: $02
    add l                                         ; $611B: $85
    and [hl]                                      ; $611C: $A6
    ld bc, $8708                                  ; $611D: $01 $08 $87
    nop                                           ; $6120: $00
    add d                                         ; $6121: $82
    ld [$0086], sp                                ; $6122: $08 $86 $00
    ld [bc], a                                    ; $6125: $02
    ld [$83A3], sp                                ; $6126: $08 $A3 $83
    ld [bc], a                                    ; $6129: $02
    add h                                         ; $612A: $84
    and l                                         ; $612B: $A5
    add d                                         ; $612C: $82
    ld [$0282], sp                                ; $612D: $08 $82 $02
    ld bc, $85A0                                  ; $6130: $01 $A0 $85
    and e                                         ; $6133: $A3
    ld [bc], a                                    ; $6134: $02
    and b                                         ; $6135: $A0
    and e                                         ; $6136: $A3
    add l                                         ; $6137: $85
    and h                                         ; $6138: $A4
    sub d                                         ; $6139: $92
    ld [bc], a                                    ; $613A: $02
    dec b                                         ; $613B: $05
    and [hl]                                      ; $613C: $A6
    and a                                         ; $613D: $A7
    and a                                         ; $613E: $A7
    and [hl]                                      ; $613F: $A6
    ld [$008F], sp                                ; $6140: $08 $8F $00
    inc bc                                        ; $6143: $03
    ld [$A1A2], sp                                ; $6144: $08 $A2 $A1
    add e                                         ; $6147: $83
    ld [bc], a                                    ; $6148: $02
    add e                                         ; $6149: $83
    and l                                         ; $614A: $A5
    add d                                         ; $614B: $82
    ld [$0203], sp                                ; $614C: $08 $03 $02
    and b                                         ; $614F: $A0
    and b                                         ; $6150: $A0
    add l                                         ; $6151: $85
    and e                                         ; $6152: $A3
    add l                                         ; $6153: $85
    and h                                         ; $6154: $A4
    ld bc, $89A3                                  ; $6155: $01 $A3 $89
    ld [bc], a                                    ; $6158: $02
    inc b                                         ; $6159: $04
    and a                                         ; $615A: $A7
    and b                                         ; $615B: $A0
    and b                                         ; $615C: $A0
    and c                                         ; $615D: $A1
    add l                                         ; $615E: $85
    ld [bc], a                                    ; $615F: $02
    ld [bc], a                                    ; $6160: $02
    and a                                         ; $6161: $A7
    and [hl]                                      ; $6162: $A6
    add d                                         ; $6163: $82
    and a                                         ; $6164: $A7
    ld bc, $87A6                                  ; $6165: $01 $A6 $87
    ld [$0083], sp                                ; $6168: $08 $83 $00
    add a                                         ; $616B: $87
    ld [$A282], sp                                ; $616C: $08 $82 $A2
    ld bc, $83A1                                  ; $616F: $01 $A1 $83
    ld [bc], a                                    ; $6172: $02
    add d                                         ; $6173: $82
    and l                                         ; $6174: $A5
    add d                                         ; $6175: $82
    ld [$A083], sp                                ; $6176: $08 $83 $A0
    add h                                         ; $6179: $84
    and e                                         ; $617A: $A3
    inc b                                         ; $617B: $04
    ld [bc], a                                    ; $617C: $02
    and h                                         ; $617D: $A4
    and h                                         ; $617E: $A4
    and e                                         ; $617F: $A3
    adc h                                         ; $6180: $8C
    ld [bc], a                                    ; $6181: $02
    inc bc                                        ; $6182: $03
    and a                                         ; $6183: $A7
    and b                                         ; $6184: $A0
    and b                                         ; $6185: $A0
    add d                                         ; $6186: $82
    and c                                         ; $6187: $A1
    add h                                         ; $6188: $84
    ld [bc], a                                    ; $6189: $02
    ld bc, $85A6                                  ; $618A: $01 $A6 $85
    and a                                         ; $618D: $A7
    ld b, $A6                                     ; $618E: $06 $A6
    and a                                         ; $6190: $A7
    and [hl]                                      ; $6191: $A6
    and a                                         ; $6192: $A7
    and [hl]                                      ; $6193: $A6
    ld [$0083], sp                                ; $6194: $08 $83 $00
    ld bc, $8508                                  ; $6197: $01 $08 $85
    and e                                         ; $619A: $A3
    add l                                         ; $619B: $85
    and d                                         ; $619C: $A2
    add d                                         ; $619D: $82
    ld [bc], a                                    ; $619E: $02
    add d                                         ; $619F: $82
    and l                                         ; $61A0: $A5
    add d                                         ; $61A1: $82
    ld [$A083], sp                                ; $61A2: $08 $83 $A0
    add e                                         ; $61A5: $83
    and e                                         ; $61A6: $A3
    ld bc, $8FA2                                  ; $61A7: $01 $A2 $8F
    ld [bc], a                                    ; $61AA: $02
    add d                                         ; $61AB: $82
    and [hl]                                      ; $61AC: $A6
    inc bc                                        ; $61AD: $03
    and a                                         ; $61AE: $A7
    and b                                         ; $61AF: $A0
    and b                                         ; $61B0: $A0
    add d                                         ; $61B1: $82
    and c                                         ; $61B2: $A1
    add d                                         ; $61B3: $82
    and b                                         ; $61B4: $A0
    adc c                                         ; $61B5: $89
    and a                                         ; $61B6: $A7
    add e                                         ; $61B7: $83
    and [hl]                                      ; $61B8: $A6
    ld bc, $8308                                  ; $61B9: $01 $08 $83
    nop                                           ; $61BC: $00
    ld bc, $8608                                  ; $61BD: $01 $08 $86
    and e                                         ; $61C0: $A3
    add l                                         ; $61C1: $85
    and d                                         ; $61C2: $A2
    add d                                         ; $61C3: $82
    ld [bc], a                                    ; $61C4: $02
    inc bc                                        ; $61C5: $03
    and l                                         ; $61C6: $A5
    ld [$8308], sp                                ; $61C7: $08 $08 $83
    and b                                         ; $61CA: $A0
    add d                                         ; $61CB: $82
    and e                                         ; $61CC: $A3
    add d                                         ; $61CD: $82
    and d                                         ; $61CE: $A2
    sub b                                         ; $61CF: $90
    ld [bc], a                                    ; $61D0: $02
    ld bc, $86A7                                  ; $61D1: $01 $A7 $86
    and b                                         ; $61D4: $A0
    adc h                                         ; $61D5: $8C
    and a                                         ; $61D6: $A7
    ld [bc], a                                    ; $61D7: $02
    and [hl]                                      ; $61D8: $A6
    ld [$0083], sp                                ; $61D9: $08 $83 $00
    ld bc, $8B08                                  ; $61DC: $01 $08 $8B
    and e                                         ; $61DF: $A3
    add d                                         ; $61E0: $82
    ld [bc], a                                    ; $61E1: $02
    inc bc                                        ; $61E2: $03
    and [hl]                                      ; $61E3: $A6
    ld [$8208], sp                                ; $61E4: $08 $08 $82
    and c                                         ; $61E7: $A1
    ld [bc], a                                    ; $61E8: $02
    and d                                         ; $61E9: $A2
    and e                                         ; $61EA: $A3
    add d                                         ; $61EB: $82
    and d                                         ; $61EC: $A2
    adc [hl]                                      ; $61ED: $8E
    ld [bc], a                                    ; $61EE: $02
    add h                                         ; $61EF: $84
    and a                                         ; $61F0: $A7
    add [hl]                                      ; $61F1: $86
    and b                                         ; $61F2: $A0
    adc e                                         ; $61F3: $8B
    and a                                         ; $61F4: $A7
    add d                                         ; $61F5: $82
    and [hl]                                      ; $61F6: $A6
    add l                                         ; $61F7: $85
    ld [$A386], sp                                ; $61F8: $08 $86 $A3
    inc bc                                        ; $61FB: $03
    and h                                         ; $61FC: $A4
    and e                                         ; $61FD: $A3
    and e                                         ; $61FE: $A3
    add h                                         ; $61FF: $84
    ld [bc], a                                    ; $6200: $02
    inc bc                                        ; $6201: $03
    and [hl]                                      ; $6202: $A6
    ld [$8308], sp                                ; $6203: $08 $08 $83
    and c                                         ; $6206: $A1
    add e                                         ; $6207: $83
    and d                                         ; $6208: $A2
    add h                                         ; $6209: $84
    ld [bc], a                                    ; $620A: $02
    add l                                         ; $620B: $85
    and b                                         ; $620C: $A0
    ld bc, $8302                                  ; $620D: $01 $02 $83
    and b                                         ; $6210: $A0
    add l                                         ; $6211: $85
    and a                                         ; $6212: $A7
    add [hl]                                      ; $6213: $86
    and b                                         ; $6214: $A0
    adc e                                         ; $6215: $8B
    and a                                         ; $6216: $A7
    inc bc                                        ; $6217: $03
    and [hl]                                      ; $6218: $A6
    and a                                         ; $6219: $A7
    and [hl]                                      ; $621A: $A6
    add a                                         ; $621B: $87
    and d                                         ; $621C: $A2
    add e                                         ; $621D: $83
    and e                                         ; $621E: $A3
    ld [bc], a                                    ; $621F: $02
    and h                                         ; $6220: $A4
    and e                                         ; $6221: $A3
    add l                                         ; $6222: $85
    ld [bc], a                                    ; $6223: $02
    inc bc                                        ; $6224: $03
    and [hl]                                      ; $6225: $A6
    ld [$8308], sp                                ; $6226: $08 $08 $83
    and c                                         ; $6229: $A1
    add d                                         ; $622A: $82
    and d                                         ; $622B: $A2
    add d                                         ; $622C: $82
    ld [bc], a                                    ; $622D: $02
    adc h                                         ; $622E: $8C
    and b                                         ; $622F: $A0
    add l                                         ; $6230: $85
    and a                                         ; $6231: $A7
    add [hl]                                      ; $6232: $86
    and b                                         ; $6233: $A0
    add l                                         ; $6234: $85
    and a                                         ; $6235: $A7
    ld bc, $85A6                                  ; $6236: $01 $A6 $85
    and a                                         ; $6239: $A7
    add e                                         ; $623A: $83
    and [hl]                                      ; $623B: $A6
    adc c                                         ; $623C: $89
    and d                                         ; $623D: $A2
    add a                                         ; $623E: $87
    ld [bc], a                                    ; $623F: $02
    add d                                         ; $6240: $82
    and [hl]                                      ; $6241: $A6
    and h                                         ; $6242: $A4
    ld [$A701], sp                                ; $6243: $08 $01 $A7
    sbc h                                         ; $6246: $9C
    ld [$8400], sp                                ; $6247: $08 $00 $84
    rst $38                                       ; $624A: $FF
    ld [$AFAE], sp                                ; $624B: $08 $AE $AF
    xor d                                         ; $624E: $AA
    xor e                                         ; $624F: $AB
    or b                                          ; $6250: $B0
    or c                                          ; $6251: $B1
    xor h                                         ; $6252: $AC
    xor l                                         ; $6253: $AD
    add d                                         ; $6254: $82
    or d                                          ; $6255: $B2
    add d                                         ; $6256: $82
    or e                                          ; $6257: $B3
    ld [bc], a                                    ; $6258: $02
    ld a, a                                       ; $6259: $7F
    add b                                         ; $625A: $80
    add d                                         ; $625B: $82
    rst $38                                       ; $625C: $FF
    add d                                         ; $625D: $82
    ld a, b                                       ; $625E: $78
    add d                                         ; $625F: $82
    ld a, c                                       ; $6260: $79
    ld [bc], a                                    ; $6261: $02
    ld a, a                                       ; $6262: $7F
    ld c, c                                       ; $6263: $49
    add d                                         ; $6264: $82
    rst $38                                       ; $6265: $FF
    ld [bc], a                                    ; $6266: $02
    ld c, d                                       ; $6267: $4A
    ld c, e                                       ; $6268: $4B
    add d                                         ; $6269: $82
    rst $38                                       ; $626A: $FF
    ld [bc], a                                    ; $626B: $02
    ld c, e                                       ; $626C: $4B
    ld c, d                                       ; $626D: $4A
    add d                                         ; $626E: $82
    rst $38                                       ; $626F: $FF
    ld [bc], a                                    ; $6270: $02
    ld c, c                                       ; $6271: $49
    ld c, b                                       ; $6272: $48
    add a                                         ; $6273: $87
    rst $38                                       ; $6274: $FF
    rrca                                          ; $6275: $0F
    nop                                           ; $6276: $00
    inc c                                         ; $6277: $0C
    dec c                                         ; $6278: $0D
    ld bc, $0502                                  ; $6279: $01 $02 $05
    ld b, $02                                     ; $627C: $06 $02
    ld bc, $0506                                  ; $627E: $01 $06 $05
    nop                                           ; $6281: $00
    rst $38                                       ; $6282: $FF
    dec c                                         ; $6283: $0D
    inc c                                         ; $6284: $0C
    add h                                         ; $6285: $84
    rst $38                                       ; $6286: $FF
    add h                                         ; $6287: $84
    ld [c], a                                     ; $6288: $E2
    ld [$A7A6], sp                                ; $6289: $08 $A6 $A7
    and [hl]                                      ; $628C: $A6
    and a                                         ; $628D: $A7
    xor b                                         ; $628E: $A8
    xor c                                         ; $628F: $A9
    xor b                                         ; $6290: $A8
    xor c                                         ; $6291: $A9
    add d                                         ; $6292: $82
    or h                                          ; $6293: $B4
    add d                                         ; $6294: $82
    or l                                          ; $6295: $B5
    ld [bc], a                                    ; $6296: $02
    add b                                         ; $6297: $80
    ld c, b                                       ; $6298: $48
    add d                                         ; $6299: $82
    rst $38                                       ; $629A: $FF
    ld e, $7A                                     ; $629B: $1E $7A
    ld a, e                                       ; $629D: $7B
    ld a, h                                       ; $629E: $7C
    ld a, l                                       ; $629F: $7D
    ld b, a                                       ; $62A0: $47
    ld b, [hl]                                    ; $62A1: $46
    ld c, e                                       ; $62A2: $4B
    ld c, d                                       ; $62A3: $4A
    ld b, l                                       ; $62A4: $45
    ld b, h                                       ; $62A5: $44
    ld c, c                                       ; $62A6: $49
    ld c, b                                       ; $62A7: $48
    ld b, h                                       ; $62A8: $44
    ld b, l                                       ; $62A9: $45
    ld c, b                                       ; $62AA: $48
    ld c, c                                       ; $62AB: $49
    ld b, [hl]                                    ; $62AC: $46
    ld b, a                                       ; $62AD: $47
    ld c, d                                       ; $62AE: $4A
    ld c, e                                       ; $62AF: $4B
    rst $38                                       ; $62B0: $FF
    rlca                                          ; $62B1: $07
    inc c                                         ; $62B2: $0C
    dec c                                         ; $62B3: $0D
    ld e, e                                       ; $62B4: $5B
    ld l, b                                       ; $62B5: $68
    ld c, $0F                                     ; $62B6: $0E $0F
    ld a, [bc]                                    ; $62B8: $0A
    dec bc                                        ; $62B9: $0B
    add d                                         ; $62BA: $82
    ld [c], a                                     ; $62BB: $E2
    ld [bc], a                                    ; $62BC: $02
    dec bc                                        ; $62BD: $0B
    ld a, [bc]                                    ; $62BE: $0A
    add d                                         ; $62BF: $82
    ld [c], a                                     ; $62C0: $E2
    ld [$0868], sp                                ; $62C1: $08 $68 $08
    rrca                                          ; $62C4: $0F
    ld e, [hl]                                    ; $62C5: $5E
    rlca                                          ; $62C6: $07
    rst $38                                       ; $62C7: $FF
    dec c                                         ; $62C8: $0D
    inc c                                         ; $62C9: $0C
    add h                                         ; $62CA: $84
    ld [c], a                                     ; $62CB: $E2
    ld [$ABAA], sp                                ; $62CC: $08 $AA $AB
    xor [hl]                                      ; $62CF: $AE
    xor a                                         ; $62D0: $AF
    xor h                                         ; $62D1: $AC
    xor l                                         ; $62D2: $AD
    or b                                          ; $62D3: $B0
    or c                                          ; $62D4: $B1
    add d                                         ; $62D5: $82
    or [hl]                                       ; $62D6: $B6
    add d                                         ; $62D7: $82
    or a                                          ; $62D8: $B7
    add h                                         ; $62D9: $84
    ld [c], a                                     ; $62DA: $E2
    add d                                         ; $62DB: $82
    ld a, [hl]                                    ; $62DC: $7E
    add d                                         ; $62DD: $82
    ld a, a                                       ; $62DE: $7F
    ld [bc], a                                    ; $62DF: $02
    ld c, a                                       ; $62E0: $4F
    ld c, [hl]                                    ; $62E1: $4E
    add d                                         ; $62E2: $82
    rst $38                                       ; $62E3: $FF
    ld [bc], a                                    ; $62E4: $02
    ld c, l                                       ; $62E5: $4D
    ld c, h                                       ; $62E6: $4C
    add d                                         ; $62E7: $82
    rst $38                                       ; $62E8: $FF
    ld [bc], a                                    ; $62E9: $02
    ld c, h                                       ; $62EA: $4C
    ld c, l                                       ; $62EB: $4D
    add d                                         ; $62EC: $82
    rst $38                                       ; $62ED: $FF
    ld [bc], a                                    ; $62EE: $02
    ld c, [hl]                                    ; $62EF: $4E
    ld c, a                                       ; $62F0: $4F
    add d                                         ; $62F1: $82
    rst $38                                       ; $62F2: $FF
    rlca                                          ; $62F3: $07
    db $10                                        ; $62F4: $10
    ld de, $1413                                  ; $62F5: $11 $13 $14
    ld [de], a                                    ; $62F8: $12
    ld [c], a                                     ; $62F9: $E2
    dec d                                         ; $62FA: $15
    adc d                                         ; $62FB: $8A
    ld [c], a                                     ; $62FC: $E2
    rra                                           ; $62FD: $1F
    ld [de], a                                    ; $62FE: $12
    ld [c], a                                     ; $62FF: $E2
    dec d                                         ; $6300: $15
    ld de, $1410                                  ; $6301: $11 $10 $14
    inc de                                        ; $6304: $13
    or c                                          ; $6305: $B1
    or b                                          ; $6306: $B0
    xor l                                         ; $6307: $AD
    xor h                                         ; $6308: $AC
    xor a                                         ; $6309: $AF
    xor [hl]                                      ; $630A: $AE
    xor e                                         ; $630B: $AB
    xor d                                         ; $630C: $AA
    nop                                           ; $630D: $00
    cp $01                                        ; $630E: $FE $01
    ld [bc], a                                    ; $6310: $02
    add d                                         ; $6311: $82
    add c                                         ; $6312: $81
    add h                                         ; $6313: $84
    add e                                         ; $6314: $83
    add c                                         ; $6315: $81
    add d                                         ; $6316: $82

jr_066_6317:
    add e                                         ; $6317: $83
    add h                                         ; $6318: $84
    ld e, e                                       ; $6319: $5B
    ld l, b                                       ; $631A: $68
    ld c, $0F                                     ; $631B: $0E $0F

jr_066_631D:
    add d                                         ; $631D: $82
    ld [c], a                                     ; $631E: $E2
    ld [bc], a                                    ; $631F: $02
    ld c, l                                       ; $6320: $4D
    ld c, h                                       ; $6321: $4C
    add d                                         ; $6322: $82
    ld [c], a                                     ; $6323: $E2
    ld de, $4D4C                                  ; $6324: $11 $4C $4D
    ld e, e                                       ; $6327: $5B
    ld e, h                                       ; $6328: $5C
    ld c, $5F                                     ; $6329: $0E $5F
    ld e, l                                       ; $632B: $5D
    ld [c], a                                     ; $632C: $E2
    ld h, b                                       ; $632D: $60
    ld [c], a                                     ; $632E: $E2
    ld d, $17                                     ; $632F: $16 $17
    add hl, de                                    ; $6331: $19
    ld a, [de]                                    ; $6332: $1A
    jr jr_066_6317                                ; $6333: $18 $E2

    dec de                                        ; $6335: $1B
    adc d                                         ; $6336: $8A
    ld [c], a                                     ; $6337: $E2
    scf                                           ; $6338: $37
    jr jr_066_631D                                ; $6339: $18 $E2

    dec de                                        ; $633B: $1B
    rla                                           ; $633C: $17
    ld d, $1A                                     ; $633D: $16 $1A
    add hl, de                                    ; $633F: $19
    xor c                                         ; $6340: $A9
    xor b                                         ; $6341: $A8
    xor c                                         ; $6342: $A9
    xor b                                         ; $6343: $A8
    and a                                         ; $6344: $A7
    and [hl]                                      ; $6345: $A6
    and a                                         ; $6346: $A7
    and [hl]                                      ; $6347: $A6
    inc bc                                        ; $6348: $03
    inc b                                         ; $6349: $04
    halt                                          ; $634A: $76
    ld [hl], l                                    ; $634B: $75
    add [hl]                                      ; $634C: $86
    add l                                         ; $634D: $85
    adc b                                         ; $634E: $88
    add a                                         ; $634F: $87
    add l                                         ; $6350: $85
    add [hl]                                      ; $6351: $86
    add a                                         ; $6352: $87
    adc b                                         ; $6353: $88
    ld l, b                                       ; $6354: $68
    ld [$5E0F], sp                                ; $6355: $08 $0F $5E
    ld c, a                                       ; $6358: $4F
    ld c, [hl]                                    ; $6359: $4E
    add hl, de                                    ; $635A: $19
    ld a, [de]                                    ; $635B: $1A
    ld c, [hl]                                    ; $635C: $4E
    ld c, a                                       ; $635D: $4F
    ld a, [de]                                    ; $635E: $1A
    add hl, de                                    ; $635F: $19
    ld [c], a                                     ; $6360: $E2
    ld e, l                                       ; $6361: $5D
    ld [c], a                                     ; $6362: $E2
    ld h, b                                       ; $6363: $60
    ld e, h                                       ; $6364: $5C
    ld [$5E5F], sp                                ; $6365: $08 $5F $5E
    inc e                                         ; $6368: $1C
    dec e                                         ; $6369: $1D
    jr nz, jr_066_638D                            ; $636A: $20 $21

    ld l, l                                       ; $636C: $6D
    rra                                           ; $636D: $1F
    ld l, d                                       ; $636E: $6A
    inc hl                                        ; $636F: $23
    add d                                         ; $6370: $82
    ld [c], a                                     ; $6371: $E2
    ld [bc], a                                    ; $6372: $02
    inc h                                         ; $6373: $24
    dec h                                         ; $6374: $25
    add d                                         ; $6375: $82
    ld [c], a                                     ; $6376: $E2
    ld b, b                                       ; $6377: $40
    and [hl]                                      ; $6378: $A6
    dec h                                         ; $6379: $25
    inc h                                         ; $637A: $24
    rra                                           ; $637B: $1F
    ld l, l                                       ; $637C: $6D
    inc hl                                        ; $637D: $23
    ld [hl+], a                                   ; $637E: $22
    dec e                                         ; $637F: $1D
    inc e                                         ; $6380: $1C
    ld hl, $AD20                                  ; $6381: $21 $20 $AD
    xor h                                         ; $6384: $AC
    or c                                          ; $6385: $B1
    or b                                          ; $6386: $B0
    xor e                                         ; $6387: $AB
    xor d                                         ; $6388: $AA
    xor a                                         ; $6389: $AF
    xor [hl]                                      ; $638A: $AE
    cp $00                                        ; $638B: $FE $00

jr_066_638D:
    ld [bc], a                                    ; $638D: $02
    ld bc, $898A                                  ; $638E: $01 $8A $89
    adc h                                         ; $6391: $8C
    adc e                                         ; $6392: $8B
    adc c                                         ; $6393: $89
    adc d                                         ; $6394: $8A
    adc e                                         ; $6395: $8B
    adc h                                         ; $6396: $8C
    or d                                          ; $6397: $B2
    cp b                                          ; $6398: $B8
    or e                                          ; $6399: $B3
    cp c                                          ; $639A: $B9
    cp b                                          ; $639B: $B8
    or d                                          ; $639C: $B2
    cp c                                          ; $639D: $B9
    or e                                          ; $639E: $B3
    ld [c], a                                     ; $639F: $E2
    ld d, b                                       ; $63A0: $50
    ld [hl], h                                    ; $63A1: $74
    ld [hl], e                                    ; $63A2: $73
    ld d, c                                       ; $63A3: $51
    ld d, d                                       ; $63A4: $52
    ld d, a                                       ; $63A5: $57
    ld e, b                                       ; $63A6: $58
    ld d, e                                       ; $63A7: $53
    ld d, h                                       ; $63A8: $54
    ld e, c                                       ; $63A9: $59
    ld e, d                                       ; $63AA: $5A
    ld h, $27                                     ; $63AB: $26 $27
    inc l                                         ; $63AD: $2C
    dec l                                         ; $63AE: $2D
    jr z, jr_066_63DA                             ; $63AF: $28 $29

    ld l, $2F                                     ; $63B1: $2E $2F
    ld a, [hl+]                                   ; $63B3: $2A
    dec hl                                        ; $63B4: $2B
    jr nc, jr_066_63E8                            ; $63B5: $30 $31

    dec hl                                        ; $63B7: $2B
    ld a, [hl+]                                   ; $63B8: $2A
    ld sp, $2930                                  ; $63B9: $31 $30 $29
    jr z, jr_066_63ED                             ; $63BC: $28 $2F

    ld l, $27                                     ; $63BE: $2E $27
    ld h, $2D                                     ; $63C0: $26 $2D
    inc l                                         ; $63C2: $2C
    rst $38                                       ; $63C3: $FF
    jp z, $CDCE                                   ; $63C4: $CA $CE $CD

    ret                                           ; $63C7: $C9


    ret z                                         ; $63C8: $C8

    call z, $04CB                                 ; $63C9: $CC $CB $04
    inc bc                                        ; $63CC: $03
    ld [hl], l                                    ; $63CD: $75
    halt                                          ; $63CE: $76
    ld a, [hl-]                                   ; $63CF: $3A
    dec sp                                        ; $63D0: $3B
    inc a                                         ; $63D1: $3C
    dec a                                         ; $63D2: $3D
    dec sp                                        ; $63D3: $3B
    ld a, [hl-]                                   ; $63D4: $3A
    dec a                                         ; $63D5: $3D

jr_066_63D6:
    inc a                                         ; $63D6: $3C
    or h                                          ; $63D7: $B4
    cp d                                          ; $63D8: $BA
    or l                                          ; $63D9: $B5

jr_066_63DA:
    cp e                                          ; $63DA: $BB
    cp d                                          ; $63DB: $BA
    or h                                          ; $63DC: $B4
    cp e                                          ; $63DD: $BB
    or l                                          ; $63DE: $B5
    ld d, h                                       ; $63DF: $54
    ld d, e                                       ; $63E0: $53
    ld e, d                                       ; $63E1: $5A
    ld e, c                                       ; $63E2: $59
    ld d, d                                       ; $63E3: $52
    ld d, c                                       ; $63E4: $51
    ld e, b                                       ; $63E5: $58
    ld d, a                                       ; $63E6: $57
    ld d, b                                       ; $63E7: $50

jr_066_63E8:
    ld [c], a                                     ; $63E8: $E2
    ld [hl], e                                    ; $63E9: $73
    ld [hl], h                                    ; $63EA: $74
    ld [hl-], a                                   ; $63EB: $32
    inc sp                                        ; $63EC: $33

jr_066_63ED:
    jr c, @+$3B                                   ; $63ED: $38 $39

    inc [hl]                                      ; $63EF: $34
    dec [hl]                                      ; $63F0: $35
    ld a, [hl-]                                   ; $63F1: $3A
    dec sp                                        ; $63F2: $3B
    ld [hl], $37                                  ; $63F3: $36 $37
    inc a                                         ; $63F5: $3C
    dec a                                         ; $63F6: $3D
    scf                                           ; $63F7: $37
    ld [hl], $3D                                  ; $63F8: $36 $3D
    inc a                                         ; $63FA: $3C
    dec [hl]                                      ; $63FB: $35
    inc [hl]                                      ; $63FC: $34
    dec sp                                        ; $63FD: $3B
    ld a, [hl-]                                   ; $63FE: $3A
    inc sp                                        ; $63FF: $33
    ld [hl-], a                                   ; $6400: $32
    add hl, sp                                    ; $6401: $39
    jr c, jr_066_63D6                             ; $6402: $38 $D2

    pop de                                        ; $6404: $D1
    rst $38                                       ; $6405: $FF
    push de                                       ; $6406: $D5
    ret nc                                        ; $6407: $D0

    rst $08                                       ; $6408: $CF
    call nc, $8ED3                                ; $6409: $D4 $D3 $8E
    adc l                                         ; $640C: $8D
    adc [hl]                                      ; $640D: $8E
    adc l                                         ; $640E: $8D
    ld a, $3F                                     ; $640F: $3E $3F
    ld b, b                                       ; $6411: $40
    ld b, c                                       ; $6412: $41
    ccf                                           ; $6413: $3F
    ld a, $41                                     ; $6414: $3E $41
    ld b, b                                       ; $6416: $40
    or [hl]                                       ; $6417: $B6
    cp h                                          ; $6418: $BC
    or a                                          ; $6419: $B7
    cp l                                          ; $641A: $BD
    cp h                                          ; $641B: $BC
    or [hl]                                       ; $641C: $B6
    cp l                                          ; $641D: $BD
    or a                                          ; $641E: $B7
    add d                                         ; $641F: $82
    ld [c], a                                     ; $6420: $E2
    ld [bc], a                                    ; $6421: $02
    ld h, d                                       ; $6422: $62
    ld h, c                                       ; $6423: $61
    add d                                         ; $6424: $82
    ld [c], a                                     ; $6425: $E2
    ld [$6261], sp                                ; $6426: $08 $61 $62
    ld [hl], a                                    ; $6429: $77
    ld a, b                                       ; $642A: $78
    ld a, c                                       ; $642B: $79
    ld a, d                                       ; $642C: $7A
    rrca                                          ; $642D: $0F
    ccf                                           ; $642E: $3F
    add d                                         ; $642F: $82
    rst $38                                       ; $6430: $FF
    ld [de], a                                    ; $6431: $12
    ld b, b                                       ; $6432: $40
    ld b, c                                       ; $6433: $41
    ld b, h                                       ; $6434: $44
    ld b, l                                       ; $6435: $45
    ld b, d                                       ; $6436: $42
    ld b, e                                       ; $6437: $43
    ld b, [hl]                                    ; $6438: $46
    ld b, a                                       ; $6439: $47
    ld b, e                                       ; $643A: $43
    ld b, d                                       ; $643B: $42
    ld b, a                                       ; $643C: $47
    ld b, [hl]                                    ; $643D: $46
    ld b, c                                       ; $643E: $41
    ld b, b                                       ; $643F: $40
    ld b, l                                       ; $6440: $45
    ld b, h                                       ; $6441: $44
    ccf                                           ; $6442: $3F
    rrca                                          ; $6443: $0F
    add d                                         ; $6444: $82
    rst $38                                       ; $6445: $FF
    db $10                                        ; $6446: $10
    ld b, d                                       ; $6447: $42
    sub $46                                       ; $6448: $D6 $46
    rst $10                                       ; $644A: $D7
    sub $42                                       ; $644B: $D6 $42
    rst $10                                       ; $644D: $D7
    ld b, [hl]                                    ; $644E: $46
    adc l                                         ; $644F: $8D
    adc [hl]                                      ; $6450: $8E
    adc l                                         ; $6451: $8D
    adc [hl]                                      ; $6452: $8E
    ld a, e                                       ; $6453: $7B
    ld a, h                                       ; $6454: $7C
    ld a, l                                       ; $6455: $7D
    ld a, [hl]                                    ; $6456: $7E
    add d                                         ; $6457: $82
    sbc a                                         ; $6458: $9F
    add d                                         ; $6459: $82
    and b                                         ; $645A: $A0
    ld a, [bc]                                    ; $645B: $0A
    ld a, h                                       ; $645C: $7C
    ld a, e                                       ; $645D: $7B
    ld a, [hl]                                    ; $645E: $7E
    ld a, l                                       ; $645F: $7D
    ld [hl], e                                    ; $6460: $73
    halt                                          ; $6461: $76
    ld [hl], l                                    ; $6462: $75
    ld [hl], h                                    ; $6463: $74
    ld h, h                                       ; $6464: $64
    ld h, e                                       ; $6465: $63
    add d                                         ; $6466: $82
    ld [c], a                                     ; $6467: $E2
    ld [bc], a                                    ; $6468: $02
    ld h, e                                       ; $6469: $63
    ld h, h                                       ; $646A: $64
    add h                                         ; $646B: $84
    ld [c], a                                     ; $646C: $E2
    ld [bc], a                                    ; $646D: $02
    ld [hl], c                                    ; $646E: $71
    ld [hl], d                                    ; $646F: $72
    add d                                         ; $6470: $82
    ld [c], a                                     ; $6471: $E2
    add hl, de                                    ; $6472: $19
    ld [hl], e                                    ; $6473: $73
    ld [hl], h                                    ; $6474: $74
    ld d, c                                       ; $6475: $51
    ld d, b                                       ; $6476: $50
    ld d, e                                       ; $6477: $53
    ld d, d                                       ; $6478: $52
    ld d, b                                       ; $6479: $50
    ld d, c                                       ; $647A: $51
    ld d, d                                       ; $647B: $52
    ld d, e                                       ; $647C: $53
    rra                                           ; $647D: $1F
    jr nz, jr_066_64A5                            ; $647E: $20 $25

    ld h, $21                                     ; $6480: $26 $21
    ld [hl+], a                                   ; $6482: $22
    daa                                           ; $6483: $27
    jr z, jr_066_64A9                             ; $6484: $28 $23

    inc h                                         ; $6486: $24
    add hl, hl                                    ; $6487: $29
    ld a, [hl+]                                   ; $6488: $2A
    rst $38                                       ; $6489: $FF
    rst $10                                       ; $648A: $D7
    rst $38                                       ; $648B: $FF
    add d                                         ; $648C: $82
    rst $10                                       ; $648D: $D7
    dec c                                         ; $648E: $0D
    rst $38                                       ; $648F: $FF
    rst $10                                       ; $6490: $D7
    rst $38                                       ; $6491: $FF
    ld e, [hl]                                    ; $6492: $5E
    ld l, c                                       ; $6493: $69
    ld e, e                                       ; $6494: $5B
    add hl, bc                                    ; $6495: $09
    halt                                          ; $6496: $76
    ld [hl], e                                    ; $6497: $73
    ld [hl], h                                    ; $6498: $74
    ld [hl], l                                    ; $6499: $75
    and c                                         ; $649A: $A1
    and d                                         ; $649B: $A2
    add d                                         ; $649C: $82
    and e                                         ; $649D: $A3
    ld [$9695], sp                                ; $649E: $08 $95 $96
    sub a                                         ; $64A1: $97
    sbc b                                         ; $64A2: $98
    sub [hl]                                      ; $64A3: $96
    sub l                                         ; $64A4: $95

jr_066_64A5:
    sbc b                                         ; $64A5: $98
    sub a                                         ; $64A6: $97
    adc b                                         ; $64A7: $88
    ld [c], a                                     ; $64A8: $E2

jr_066_64A9:
    jr z, jr_066_6518                             ; $64A9: $28 $6D

    ld l, [hl]                                    ; $64AB: $6E
    ld l, d                                       ; $64AC: $6A
    rst $28                                       ; $64AD: $EF
    ld l, a                                       ; $64AE: $6F
    ld [hl], b                                    ; $64AF: $70
    ld l, e                                       ; $64B0: $6B
    ld l, h                                       ; $64B1: $6C
    rst $38                                       ; $64B2: $FF
    ld d, h                                       ; $64B3: $54
    rst $38                                       ; $64B4: $FF
    ld d, l                                       ; $64B5: $55
    ld d, h                                       ; $64B6: $54
    rst $38                                       ; $64B7: $FF
    ld d, l                                       ; $64B8: $55
    rst $38                                       ; $64B9: $FF
    dec hl                                        ; $64BA: $2B
    inc l                                         ; $64BB: $2C
    ld sp, $2D32                                  ; $64BC: $31 $32 $2D
    ld l, $33                                     ; $64BF: $2E $33
    inc [hl]                                      ; $64C1: $34
    cpl                                           ; $64C2: $2F
    jr nc, jr_066_64FA                            ; $64C3: $30 $35

    ld [hl], $01                                  ; $64C5: $36 $01
    ret c                                         ; $64C7: $D8

    dec b                                         ; $64C8: $05
    ld b, $D8                                     ; $64C9: $06 $D8
    ld bc, $0506                                  ; $64CB: $01 $06 $05
    rrca                                          ; $64CE: $0F
    ld c, $68                                     ; $64CF: $0E $68
    ld [$C082], sp                                ; $64D1: $08 $82 $C0
    ld c, $C1                                     ; $64D4: $0E $C1
    jp nz, $C0BF                                  ; $64D6: $C2 $BF $C0

    pop bc                                        ; $64D9: $C1
    jp nz, $9A99                                  ; $64DA: $C2 $99 $9A

    sbc h                                         ; $64DD: $9C
    sbc l                                         ; $64DE: $9D
    sbc e                                         ; $64DF: $9B
    sbc c                                         ; $64E0: $99
    sbc [hl]                                      ; $64E1: $9E
    sbc h                                         ; $64E2: $9C
    add d                                         ; $64E3: $82
    ld [c], a                                     ; $64E4: $E2
    ld [bc], a                                    ; $64E5: $02
    cp $8F                                        ; $64E6: $FE $8F
    add d                                         ; $64E8: $82
    ld [c], a                                     ; $64E9: $E2
    ld [bc], a                                    ; $64EA: $02
    adc a                                         ; $64EB: $8F
    cp $82                                        ; $64EC: $FE $82
    ld [c], a                                     ; $64EE: $E2
    ld [bc], a                                    ; $64EF: $02
    ld [hl], h                                    ; $64F0: $74
    ld [hl], e                                    ; $64F1: $73
    add d                                         ; $64F2: $82
    ld [c], a                                     ; $64F3: $E2
    ld d, $72                                     ; $64F4: $16 $72
    ld [hl], c                                    ; $64F6: $71
    rst $38                                       ; $64F7: $FF
    ld d, [hl]                                    ; $64F8: $56
    rst $38                                       ; $64F9: $FF

jr_066_64FA:
    ld d, a                                       ; $64FA: $57
    ld d, [hl]                                    ; $64FB: $56
    rst $38                                       ; $64FC: $FF
    ld d, a                                       ; $64FD: $57
    rst $38                                       ; $64FE: $FF
    inc h                                         ; $64FF: $24
    inc hl                                        ; $6500: $23
    ld a, [hl+]                                   ; $6501: $2A
    add hl, hl                                    ; $6502: $29
    ld [hl+], a                                   ; $6503: $22
    ld hl, $2728                                  ; $6504: $21 $28 $27
    jr nz, jr_066_6528                            ; $6507: $20 $1F

    ld h, $25                                     ; $6509: $26 $25
    adc h                                         ; $650B: $8C
    ld [c], a                                     ; $650C: $E2
    ld [$C4C3], sp                                ; $650D: $08 $C3 $C4
    push bc                                       ; $6510: $C5
    rst $00                                       ; $6511: $C7
    jp $C5C4                                      ; $6512: $C3 $C4 $C5


    add $82                                       ; $6515: $C6 $82
    ld e, e                                       ; $6517: $5B

jr_066_6518:
    add d                                         ; $6518: $82
    ld e, h                                       ; $6519: $5C
    add d                                         ; $651A: $82
    and h                                         ; $651B: $A4
    add d                                         ; $651C: $82
    and l                                         ; $651D: $A5
    jr nc, jr_066_64FA                            ; $651E: $30 $DA

    reti                                          ; $6520: $D9


    call c, $D9DB                                 ; $6521: $DC $DB $D9
    jp c, $DCDB                                   ; $6524: $DA $DB $DC

    ld [hl], b                                    ; $6527: $70

jr_066_6528:
    ld l, a                                       ; $6528: $6F
    ld l, h                                       ; $6529: $6C
    ld l, e                                       ; $652A: $6B
    ld l, [hl]                                    ; $652B: $6E
    ld l, l                                       ; $652C: $6D
    rst $28                                       ; $652D: $EF
    ld [hl+], a                                   ; $652E: $22
    ld e, c                                       ; $652F: $59
    ld e, b                                       ; $6530: $58
    rst $38                                       ; $6531: $FF
    ld e, d                                       ; $6532: $5A
    ld e, b                                       ; $6533: $58
    ld e, c                                       ; $6534: $59
    ld e, d                                       ; $6535: $5A
    rst $38                                       ; $6536: $FF
    jr nc, jr_066_6568                            ; $6537: $30 $2F

    ld [hl], $35                                  ; $6539: $36 $35
    ld l, $2D                                     ; $653B: $2E $2D
    inc [hl]                                      ; $653D: $34
    inc sp                                        ; $653E: $33
    inc l                                         ; $653F: $2C
    dec hl                                        ; $6540: $2B
    ld [hl-], a                                   ; $6541: $32
    ld sp, $6F66                                  ; $6542: $31 $66 $6F
    ld l, c                                       ; $6545: $69
    ld l, b                                       ; $6546: $68
    ld l, [hl]                                    ; $6547: $6E
    ld l, a                                       ; $6548: $6F
    ld h, a                                       ; $6549: $67
    ld l, b                                       ; $654A: $68
    ld h, [hl]                                    ; $654B: $66
    rst $38                                       ; $654C: $FF
    ld l, c                                       ; $654D: $69
    rst $38                                       ; $654E: $FF
    add d                                         ; $654F: $82
    ld sp, $902E                                  ; $6550: $31 $2E $90
    sub c                                         ; $6553: $91
    db $DD                                        ; $6554: $DD
    sbc $DF                                       ; $6555: $DE $DF
    ldh [$5D], a                                  ; $6557: $E0 $5D
    ld e, [hl]                                    ; $6559: $5E
    ld e, a                                       ; $655A: $5F
    ld h, b                                       ; $655B: $60
    ld h, c                                       ; $655C: $61
    ld h, d                                       ; $655D: $62
    ld h, e                                       ; $655E: $63
    ld h, h                                       ; $655F: $64
    ld a, [bc]                                    ; $6560: $0A
    add hl, bc                                    ; $6561: $09
    ld c, $0D                                     ; $6562: $0E $0D
    ld [$0C07], sp                                ; $6564: $08 $07 $0C
    rst $28                                       ; $6567: $EF

jr_066_6568:
    ld b, $32                                     ; $6568: $06 $32
    dec bc                                        ; $656A: $0B
    jr c, jr_066_659F                             ; $656B: $38 $32

    ld b, $38                                     ; $656D: $06 $38
    dec bc                                        ; $656F: $0B
    rlca                                          ; $6570: $07
    ld [$0CEF], sp                                ; $6571: $08 $EF $0C
    add hl, bc                                    ; $6574: $09
    ld a, [bc]                                    ; $6575: $0A
    dec c                                         ; $6576: $0D
    ld c, $C8                                     ; $6577: $0E $C8
    ret                                           ; $6579: $C9


    set 1, h                                      ; $657A: $CB $CC
    jp z, $CDFF                                   ; $657C: $CA $FF $CD

    adc $84                                       ; $657F: $CE $84
    ld [c], a                                     ; $6581: $E2
    add hl, bc                                    ; $6582: $09
    ld l, h                                       ; $6583: $6C
    ld l, e                                       ; $6584: $6B
    rst $38                                       ; $6585: $FF
    ld h, l                                       ; $6586: $65
    ld l, d                                       ; $6587: $6A
    ld l, e                                       ; $6588: $6B
    ld l, l                                       ; $6589: $6D
    ld h, l                                       ; $658A: $65
    ld l, h                                       ; $658B: $6C
    add e                                         ; $658C: $83
    rst $38                                       ; $658D: $FF
    ld [bc], a                                    ; $658E: $02
    sub d                                         ; $658F: $92
    sub e                                         ; $6590: $93
    add d                                         ; $6591: $82
    sub h                                         ; $6592: $94
    inc b                                         ; $6593: $04
    sbc $DD                                       ; $6594: $DE $DD
    ldh [$DF], a                                  ; $6596: $E0 $DF
    add d                                         ; $6598: $82
    ld b, d                                       ; $6599: $42
    add d                                         ; $659A: $82
    ld b, e                                       ; $659B: $43
    add d                                         ; $659C: $82
    ld e, e                                       ; $659D: $5B
    add d                                         ; $659E: $82

jr_066_659F:
    ld e, h                                       ; $659F: $5C
    jr nz, jr_066_65B6                            ; $65A0: $20 $14

    inc de                                        ; $65A2: $13
    add hl, de                                    ; $65A3: $19
    jr @+$14                                      ; $65A4: $18 $12

    ld de, $1617                                  ; $65A6: $11 $17 $16
    db $10                                        ; $65A9: $10
    rrca                                          ; $65AA: $0F
    dec d                                         ; $65AB: $15
    rst $38                                       ; $65AC: $FF
    rrca                                          ; $65AD: $0F
    db $10                                        ; $65AE: $10
    rst $38                                       ; $65AF: $FF
    dec d                                         ; $65B0: $15
    ld de, $1612                                  ; $65B1: $11 $12 $16
    rla                                           ; $65B4: $17
    inc de                                        ; $65B5: $13

jr_066_65B6:
    inc d                                         ; $65B6: $14
    jr jr_066_65D2                                ; $65B7: $18 $19

    rst $08                                       ; $65B9: $CF
    ret nc                                        ; $65BA: $D0

    db $D3                                        ; $65BB: $D3
    call nc, $D2D1                                ; $65BC: $D4 $D1 $D2
    push de                                       ; $65BF: $D5
    rst $38                                       ; $65C0: $FF
    adc h                                         ; $65C1: $8C
    ld [c], a                                     ; $65C2: $E2
    ld a, [de]                                    ; $65C3: $1A
    rst $38                                       ; $65C4: $FF
    ld h, [hl]                                    ; $65C5: $66
    rst $38                                       ; $65C6: $FF
    ld l, c                                       ; $65C7: $69
    ld l, a                                       ; $65C8: $6F
    ld l, [hl]                                    ; $65C9: $6E
    ld l, b                                       ; $65CA: $68
    ld h, a                                       ; $65CB: $67
    ld l, a                                       ; $65CC: $6F
    ld h, [hl]                                    ; $65CD: $66
    ld l, b                                       ; $65CE: $68
    ld l, c                                       ; $65CF: $69
    ld h, d                                       ; $65D0: $62
    ld h, c                                       ; $65D1: $61

jr_066_65D2:
    ld h, h                                       ; $65D2: $64
    ld h, e                                       ; $65D3: $63
    ld e, [hl]                                    ; $65D4: $5E
    ld e, l                                       ; $65D5: $5D
    ld h, b                                       ; $65D6: $60
    ld e, a                                       ; $65D7: $5F
    ld e, $1D                                     ; $65D8: $1E $1D
    add hl, sp                                    ; $65DA: $39
    jr c, jr_066_65F9                             ; $65DB: $38 $1C

    dec de                                        ; $65DD: $1B
    add d                                         ; $65DE: $82
    rst $38                                       ; $65DF: $FF
    ld bc, $871A                                  ; $65E0: $01 $1A $87
    rst $38                                       ; $65E3: $FF
    ld [bc], a                                    ; $65E4: $02
    dec de                                        ; $65E5: $1B
    inc e                                         ; $65E6: $1C
    add d                                         ; $65E7: $82
    rst $38                                       ; $65E8: $FF
    inc b                                         ; $65E9: $04
    dec e                                         ; $65EA: $1D
    ld e, $38                                     ; $65EB: $1E $38
    add hl, sp                                    ; $65ED: $39
    sub h                                         ; $65EE: $94
    ld [c], a                                     ; $65EF: $E2
    ld [bc], a                                    ; $65F0: $02
    rst $38                                       ; $65F1: $FF
    ld l, h                                       ; $65F2: $6C
    add d                                         ; $65F3: $82
    rst $38                                       ; $65F4: $FF
    ld a, [bc]                                    ; $65F5: $0A
    ld l, e                                       ; $65F6: $6B
    ld l, d                                       ; $65F7: $6A
    ld h, l                                       ; $65F8: $65

jr_066_65F9:
    ld l, l                                       ; $65F9: $6D
    ld l, e                                       ; $65FA: $6B
    ld l, h                                       ; $65FB: $6C
    ld h, l                                       ; $65FC: $65

jr_066_65FD:
    rst $38                                       ; $65FD: $FF
    ld [hl], c                                    ; $65FE: $71
    ld [hl], d                                    ; $65FF: $72
    add d                                         ; $6600: $82
    ld [hl], b                                    ; $6601: $70
    and b                                         ; $6602: $A0
    ld [c], a                                     ; $6603: $E2
    add d                                         ; $6604: $82
    db $EC                                        ; $6605: $EC
    add d                                         ; $6606: $82
    db $FC                                        ; $6607: $FC
    add d                                         ; $6608: $82
    db $ED                                        ; $6609: $ED
    add d                                         ; $660A: $82
    db $FD                                        ; $660B: $FD

jr_066_660C:
    add h                                         ; $660C: $84
    ld a, [bc]                                    ; $660D: $0A
    add d                                         ; $660E: $82
    ld b, h                                       ; $660F: $44
    add d                                         ; $6610: $82
    ld b, e                                       ; $6611: $43
    add d                                         ; $6612: $82
    ld b, h                                       ; $6613: $44
    ld [$4443], sp                                ; $6614: $08 $43 $44
    inc b                                         ; $6617: $04
    inc h                                         ; $6618: $24
    ld bc, $0A21                                  ; $6619: $01 $21 $0A
    ld [bc], a                                    ; $661C: $02
    add d                                         ; $661D: $82
    ld a, [bc]                                    ; $661E: $0A
    ld b, $00                                     ; $661F: $06 $00
    jr nz, jr_066_6623                            ; $6621: $20 $00

jr_066_6623:
    jr nz, jr_066_662F                            ; $6623: $20 $0A

    ld [bc], a                                    ; $6625: $02
    add d                                         ; $6626: $82
    ld a, [bc]                                    ; $6627: $0A
    add d                                         ; $6628: $82
    ld [bc], a                                    ; $6629: $02
    add d                                         ; $662A: $82
    ld a, [bc]                                    ; $662B: $0A

jr_066_662C:
    add d                                         ; $662C: $82
    ld [hl+], a                                   ; $662D: $22
    add d                                         ; $662E: $82

jr_066_662F:
    ld a, [bc]                                    ; $662F: $0A
    add d                                         ; $6630: $82
    ld [hl+], a                                   ; $6631: $22
    add a                                         ; $6632: $87
    ld a, [bc]                                    ; $6633: $0A
    add h                                         ; $6634: $84
    ld b, $05                                     ; $6635: $06 $05
    ld [bc], a                                    ; $6637: $02
    nop                                           ; $6638: $00
    nop                                           ; $6639: $00
    ld [hl+], a                                   ; $663A: $22
    ld h, $82                                     ; $663B: $26 $82
    jr nz, jr_066_6641                            ; $663D: $20 $02

    ld h, $0A                                     ; $663F: $26 $0A

jr_066_6641:
    add d                                         ; $6641: $82
    ld h, $84                                     ; $6642: $26 $84
    ld a, [bc]                                    ; $6644: $0A
    add h                                         ; $6645: $84
    ld [hl+], a                                   ; $6646: $22
    add d                                         ; $6647: $82
    ld b, e                                       ; $6648: $43
    add d                                         ; $6649: $82

jr_066_664A:
    inc bc                                        ; $664A: $03
    ld [$4443], sp                                ; $664B: $08 $43 $44

jr_066_664E:
    inc bc                                        ; $664E: $03
    inc b                                         ; $664F: $04
    ld bc, $0121                                  ; $6650: $01 $21 $01
    ld hl, $2282                                  ; $6653: $21 $82 $22
    add d                                         ; $6656: $82
    ld a, [bc]                                    ; $6657: $0A
    add h                                         ; $6658: $84
    nop                                           ; $6659: $00
    inc b                                         ; $665A: $04
    inc l                                         ; $665B: $2C
    dec hl                                        ; $665C: $2B
    inc l                                         ; $665D: $2C
    dec hl                                        ; $665E: $2B
    add d                                         ; $665F: $82
    inc l                                         ; $6660: $2C
    ld [bc], a                                    ; $6661: $02
    dec hl                                        ; $6662: $2B
    inc l                                         ; $6663: $2C
    add e                                         ; $6664: $83
    inc c                                         ; $6665: $0C
    add d                                         ; $6666: $82
    dec bc                                        ; $6667: $0B
    inc b                                         ; $6668: $04
    inc c                                         ; $6669: $0C
    dec bc                                        ; $666A: $0B
    inc c                                         ; $666B: $0C

jr_066_666C:
    ld a, [bc]                                    ; $666C: $0A
    add e                                         ; $666D: $83

jr_066_666E:
    ld b, $86                                     ; $666E: $06 $86
    nop                                           ; $6670: $00
    adc d                                         ; $6671: $8A
    jr nz, jr_066_6676                            ; $6672: $20 $02

    ld h, $0A                                     ; $6674: $26 $0A

jr_066_6676:
    add d                                         ; $6676: $82
    ld h, $84                                     ; $6677: $26 $84
    jr nz, jr_066_65FD                            ; $6679: $20 $82

    inc bc                                        ; $667B: $03
    add d                                         ; $667C: $82
    inc b                                         ; $667D: $04
    ld bc, $8303                                  ; $667E: $01 $03 $83
    inc b                                         ; $6681: $04
    inc b                                         ; $6682: $04
    ld [bc], a                                    ; $6683: $02
    ld [hl+], a                                   ; $6684: $22
    ld [bc], a                                    ; $6685: $02
    ld [hl+], a                                   ; $6686: $22
    add d                                         ; $6687: $82
    jr nz, jr_066_660C                            ; $6688: $20 $82

    ld [hl+], a                                   ; $668A: $22
    ld b, $20                                     ; $668B: $06 $20
    nop                                           ; $668D: $00
    jr nz, jr_066_6690                            ; $668E: $20 $00

jr_066_6690:
    inc l                                         ; $6690: $2C
    dec hl                                        ; $6691: $2B
    add d                                         ; $6692: $82
    ld a, [bc]                                    ; $6693: $0A
    add d                                         ; $6694: $82
    inc l                                         ; $6695: $2C
    add d                                         ; $6696: $82
    ld a, [bc]                                    ; $6697: $0A
    add d                                         ; $6698: $82
    inc c                                         ; $6699: $0C
    add d                                         ; $669A: $82
    ld a, [bc]                                    ; $669B: $0A
    ld [bc], a                                    ; $669C: $02
    dec bc                                        ; $669D: $0B
    inc c                                         ; $669E: $0C

jr_066_669F:
    add d                                         ; $669F: $82
    ld a, [bc]                                    ; $66A0: $0A
    add l                                         ; $66A1: $85
    nop                                           ; $66A2: $00
    ld [bc], a                                    ; $66A3: $02
    jr nz, jr_066_66A6                            ; $66A4: $20 $00

jr_066_66A6:
    sub c                                         ; $66A6: $91
    jr nz, jr_066_662C                            ; $66A7: $20 $83

    ld h, h                                       ; $66A9: $64
    inc bc                                        ; $66AA: $03
    ld h, e                                       ; $66AB: $63
    ld h, h                                       ; $66AC: $64
    ld h, h                                       ; $66AD: $64
    add d                                         ; $66AE: $82
    ld h, e                                       ; $66AF: $63
    ld [bc], a                                    ; $66B0: $02
    ld a, [bc]                                    ; $66B1: $0A
    ld l, d                                       ; $66B2: $6A
    add d                                         ; $66B3: $82
    ld a, [bc]                                    ; $66B4: $0A
    ld bc, $8304                                  ; $66B5: $01 $04 $83
    inc hl                                        ; $66B8: $23
    ld [bc], a                                    ; $66B9: $02
    inc bc                                        ; $66BA: $03
    inc h                                         ; $66BB: $24
    add d                                         ; $66BC: $82
    inc bc                                        ; $66BD: $03
    add h                                         ; $66BE: $84
    nop                                           ; $66BF: $00
    add [hl]                                      ; $66C0: $86
    jr nz, jr_066_664A                            ; $66C1: $20 $87

    nop                                           ; $66C3: $00
    inc bc                                        ; $66C4: $03
    jr nz, jr_066_66C7                            ; $66C5: $20 $00

jr_066_66C7:
    jr nz, jr_066_664E                            ; $66C7: $20 $85

    nop                                           ; $66C9: $00
    ld [bc], a                                    ; $66CA: $02
    jr nz, jr_066_66CD                            ; $66CB: $20 $00

jr_066_66CD:
    sub c                                         ; $66CD: $91
    jr nz, jr_066_66D4                            ; $66CE: $20 $04

    ld h, h                                       ; $66D0: $64
    ld h, e                                       ; $66D1: $63
    inc h                                         ; $66D2: $24
    inc hl                                        ; $66D3: $23

jr_066_66D4:
    add d                                         ; $66D4: $82
    ld h, e                                       ; $66D5: $63
    add d                                         ; $66D6: $82
    inc hl                                        ; $66D7: $23
    add d                                         ; $66D8: $82
    ld a, [bc]                                    ; $66D9: $0A
    add d                                         ; $66DA: $82
    ld [hl+], a                                   ; $66DB: $22
    add d                                         ; $66DC: $82
    inc hl                                        ; $66DD: $23
    ld [bc], a                                    ; $66DE: $02
    inc h                                         ; $66DF: $24
    inc hl                                        ; $66E0: $23
    add e                                         ; $66E1: $83
    inc bc                                        ; $66E2: $03
    ld bc, $8604                                  ; $66E3: $01 $04 $86
    jr nz, jr_066_666C                            ; $66E6: $20 $84

    nop                                           ; $66E8: $00
    adc d                                         ; $66E9: $8A
    jr nz, jr_066_666E                            ; $66EA: $20 $82

    nop                                           ; $66EC: $00
    ld bc, $8501                                  ; $66ED: $01 $01 $85
    nop                                           ; $66F0: $00
    add d                                         ; $66F1: $82
    jr nz, jr_066_6676                            ; $66F2: $20 $82

    nop                                           ; $66F4: $00
    adc e                                         ; $66F5: $8B
    jr nz, jr_066_66FB                            ; $66F6: $20 $03

    ld hl, $2324                                  ; $66F8: $21 $24 $23

jr_066_66FB:
    add d                                         ; $66FB: $82
    inc h                                         ; $66FC: $24
    add d                                         ; $66FD: $82
    inc hl                                        ; $66FE: $23
    add d                                         ; $66FF: $82

jr_066_6700:
    inc h                                         ; $6700: $24
    ld bc, $836A                                  ; $6701: $01 $6A $83
    ld a, [hl+]                                   ; $6704: $2A
    add h                                         ; $6705: $84
    ld [hl+], a                                   ; $6706: $22
    add h                                         ; $6707: $84
    ld [bc], a                                    ; $6708: $02
    ld a, [bc]                                    ; $6709: $0A
    inc b                                         ; $670A: $04
    inc bc                                        ; $670B: $03
    ld bc, $2321                                  ; $670C: $01 $21 $23
    inc h                                         ; $670F: $24
    ld bc, $2021                                  ; $6710: $01 $21 $20
    nop                                           ; $6713: $00
    add d                                         ; $6714: $82
    jr nz, jr_066_669F                            ; $6715: $20 $88

    nop                                           ; $6717: $00
    ld [bc], a                                    ; $6718: $02
    ld bc, $8200                                  ; $6719: $01 $00 $82
    ld bc, $0082                                  ; $671C: $01 $82 $00
    add d                                         ; $671F: $82
    ld bc, $0082                                  ; $6720: $01 $82 $00
    ld [bc], a                                    ; $6723: $02
    ld bc, $8300                                  ; $6724: $01 $00 $83
    jr nz, jr_066_672C                            ; $6727: $20 $03

    ld hl, $2020                                  ; $6729: $21 $20 $20

jr_066_672C:
    add d                                         ; $672C: $82
    ld hl, $2001                                  ; $672D: $21 $01 $20
    add e                                         ; $6730: $83
    ld hl, $0A01                                  ; $6731: $21 $01 $0A

jr_066_6734:
    add a                                         ; $6734: $87
    ld [hl+], a                                   ; $6735: $22
    add d                                         ; $6736: $82
    ld a, [hl+]                                   ; $6737: $2A

jr_066_6738:
    add d                                         ; $6738: $82
    ld [bc], a                                    ; $6739: $02
    add e                                         ; $673A: $83
    inc c                                         ; $673B: $0C
    ld [$2C0B], sp                                ; $673C: $08 $0B $2C
    inc l                                         ; $673F: $2C
    dec hl                                        ; $6740: $2B
    inc l                                         ; $6741: $2C
    ld bc, $0121                                  ; $6742: $01 $21 $01
    add e                                         ; $6745: $83
    ld hl, $0102                                  ; $6746: $21 $02 $01
    ld hl, $208A                                  ; $6749: $21 $8A $20
    add d                                         ; $674C: $82
    nop                                           ; $674D: $00
    ld [bc], a                                    ; $674E: $02
    ld [bc], a                                    ; $674F: $02
    ld bc, $0282                                  ; $6750: $01 $82 $02
    add l                                         ; $6753: $85
    ld bc, $0006                                  ; $6754: $01 $06 $00
    ld bc, $2000                                  ; $6757: $01 $00 $20
    ld hl, $8620                                  ; $675A: $21 $20 $86
    ld hl, $2285                                  ; $675D: $21 $85 $22
    ld bc, $850A                                  ; $6760: $01 $0A $85
    ld [hl+], a                                   ; $6763: $22
    ld b, $23                                     ; $6764: $06 $23
    ld h, e                                       ; $6766: $63
    inc hl                                        ; $6767: $23
    ld h, e                                       ; $6768: $63
    inc c                                         ; $6769: $0C
    dec bc                                        ; $676A: $0B
    add d                                         ; $676B: $82
    dec c                                         ; $676C: $0D
    ld [bc], a                                    ; $676D: $02
    dec hl                                        ; $676E: $2B
    inc l                                         ; $676F: $2C
    add d                                         ; $6770: $82
    dec l                                         ; $6771: $2D
    ld [bc], a                                    ; $6772: $02
    ld [bc], a                                    ; $6773: $02
    ld [hl+], a                                   ; $6774: $22
    add e                                         ; $6775: $83

jr_066_6776:
    ld [bc], a                                    ; $6776: $02
    inc bc                                        ; $6777: $03
    ld [hl+], a                                   ; $6778: $22
    ld [bc], a                                    ; $6779: $02
    ld [hl+], a                                   ; $677A: $22
    add [hl]                                      ; $677B: $86
    jr nz, jr_066_6700                            ; $677C: $20 $82

    nop                                           ; $677E: $00
    add h                                         ; $677F: $84
    dec bc                                        ; $6780: $0B
    ld [bc], a                                    ; $6781: $02
    ld a, [bc]                                    ; $6782: $0A
    ld [bc], a                                    ; $6783: $02
    add d                                         ; $6784: $82
    ld a, [bc]                                    ; $6785: $0A
    add h                                         ; $6786: $84
    ld [bc], a                                    ; $6787: $02
    ld [bc], a                                    ; $6788: $02
    ld bc, $8200                                  ; $6789: $01 $00 $82
    ld [bc], a                                    ; $678C: $02
    ld [bc], a                                    ; $678D: $02
    jr nz, @+$23                                  ; $678E: $20 $21

    add a                                         ; $6790: $87
    ld [hl+], a                                   ; $6791: $22
    dec bc                                        ; $6792: $0B
    ld a, [hl+]                                   ; $6793: $2A
    ld a, [bc]                                    ; $6794: $0A
    ld a, [bc]                                    ; $6795: $0A
    ld bc, $0203                                  ; $6796: $01 $03 $02
    inc bc                                        ; $6799: $03
    inc hl                                        ; $679A: $23
    ld hl, $2263                                  ; $679B: $21 $63 $22
    add h                                         ; $679E: $84
    ld b, e                                       ; $679F: $43
    add h                                         ; $67A0: $84
    inc c                                         ; $67A1: $0C
    inc b                                         ; $67A2: $04
    ld bc, $0121                                  ; $67A3: $01 $21 $01
    ld hl, $2C84                                  ; $67A6: $21 $84 $2C
    add h                                         ; $67A9: $84
    dec l                                         ; $67AA: $2D
    add h                                         ; $67AB: $84
    jr nz, jr_066_67AF                            ; $67AC: $20 $01

    nop                                           ; $67AE: $00

jr_066_67AF:
    add l                                         ; $67AF: $85
    jr nz, jr_066_6734                            ; $67B0: $20 $82

    nop                                           ; $67B2: $00
    add d                                         ; $67B3: $82
    jr nz, jr_066_6738                            ; $67B4: $20 $82

    nop                                           ; $67B6: $00
    add h                                         ; $67B7: $84
    dec l                                         ; $67B8: $2D
    sub b                                         ; $67B9: $90
    dec c                                         ; $67BA: $0D
    ld [$030A], sp                                ; $67BB: $08 $0A $03
    ld a, [bc]                                    ; $67BE: $0A
    inc bc                                        ; $67BF: $03
    ld h, e                                       ; $67C0: $63
    ld a, [bc]                                    ; $67C1: $0A
    ld h, e                                       ; $67C2: $63
    ld a, [bc]                                    ; $67C3: $0A
    add h                                         ; $67C4: $84
    ld b, b                                       ; $67C5: $40
    add h                                         ; $67C6: $84
    dec c                                         ; $67C7: $0D
    add e                                         ; $67C8: $83
    ld bc, $2103                                  ; $67C9: $01 $03 $21
    nop                                           ; $67CC: $00
    nop                                           ; $67CD: $00
    add d                                         ; $67CE: $82
    ld bc, $2082                                  ; $67CF: $01 $82 $20
    add d                                         ; $67D2: $82
    ld hl, $2088                                  ; $67D3: $21 $88 $20
    add e                                         ; $67D6: $83
    nop                                           ; $67D7: $00
    ld bc, $8468                                  ; $67D8: $01 $68 $84
    nop                                           ; $67DB: $00
    ld [$2D0A], sp                                ; $67DC: $08 $0A $2D
    ld a, [bc]                                    ; $67DF: $0A
    dec l                                         ; $67E0: $2D
    dec c                                         ; $67E1: $0D
    ld a, [bc]                                    ; $67E2: $0A
    dec c                                         ; $67E3: $0D

jr_066_67E4:
    ld a, [bc]                                    ; $67E4: $0A
    adc h                                         ; $67E5: $8C
    dec c                                         ; $67E6: $0D
    ld [bc], a                                    ; $67E7: $02
    ld b, $03                                     ; $67E8: $06 $03
    add d                                         ; $67EA: $82
    nop                                           ; $67EB: $00
    ld [bc], a                                    ; $67EC: $02
    inc hl                                        ; $67ED: $23
    ld h, $82                                     ; $67EE: $26 $82
    jr nz, jr_066_6776                            ; $67F0: $20 $84

    ld h, b                                       ; $67F2: $60
    inc b                                         ; $67F3: $04
    ld [hl+], a                                   ; $67F4: $22
    ld [bc], a                                    ; $67F5: $02
    nop                                           ; $67F6: $00
    dec b                                         ; $67F7: $05
    add d                                         ; $67F8: $82
    ld [bc], a                                    ; $67F9: $02
    ld [bc], a                                    ; $67FA: $02
    nop                                           ; $67FB: $00
    dec b                                         ; $67FC: $05
    add l                                         ; $67FD: $85
    ld bc, $2103                                  ; $67FE: $01 $03 $21
    ld bc, $8221                                  ; $6801: $01 $21 $82
    jr nz, jr_066_6808                            ; $6804: $20 $02

    ld l, d                                       ; $6806: $6A
    ld [hl+], a                                   ; $6807: $22

jr_066_6808:
    add d                                         ; $6808: $82
    jr nz, jr_066_680D                            ; $6809: $20 $02

    ld [bc], a                                    ; $680B: $02
    ld l, d                                       ; $680C: $6A

jr_066_680D:
    adc b                                         ; $680D: $88
    jr nz, jr_066_6818                            ; $680E: $20 $08

    ld a, [bc]                                    ; $6810: $0A
    dec l                                         ; $6811: $2D
    ld a, [bc]                                    ; $6812: $0A
    dec l                                         ; $6813: $2D
    dec c                                         ; $6814: $0D
    ld a, [bc]                                    ; $6815: $0A
    dec c                                         ; $6816: $0D
    ld a, [bc]                                    ; $6817: $0A

jr_066_6818:
    adc h                                         ; $6818: $8C
    dec l                                         ; $6819: $2D
    add d                                         ; $681A: $82
    dec h                                         ; $681B: $25
    add d                                         ; $681C: $82
    ld [hl+], a                                   ; $681D: $22
    add d                                         ; $681E: $82
    dec h                                         ; $681F: $25
    add d                                         ; $6820: $82
    ld [hl+], a                                   ; $6821: $22
    add d                                         ; $6822: $82
    dec h                                         ; $6823: $25
    add d                                         ; $6824: $82
    ld [hl+], a                                   ; $6825: $22
    ld [bc], a                                    ; $6826: $02
    nop                                           ; $6827: $00
    ld bc, $0282                                  ; $6828: $01 $82 $02
    ld [bc], a                                    ; $682B: $02
    nop                                           ; $682C: $00
    ld bc, $0282                                  ; $682D: $01 $82 $02
    ld a, [bc]                                    ; $6830: $0A
    dec c                                         ; $6831: $0D
    dec l                                         ; $6832: $2D
    dec c                                         ; $6833: $0D
    dec l                                         ; $6834: $2D
    inc b                                         ; $6835: $04
    inc h                                         ; $6836: $24
    inc b                                         ; $6837: $04

jr_066_6838:
    inc h                                         ; $6838: $24
    inc hl                                        ; $6839: $23
    ld h, e                                       ; $683A: $63
    add d                                         ; $683B: $82
    ld hl, $6304                                  ; $683C: $21 $04 $63
    inc bc                                        ; $683F: $03
    ld hl, $8601                                  ; $6840: $21 $01 $86
    jr nz, @+$04                                  ; $6843: $20 $02

    ld l, b                                       ; $6845: $68
    jr nz, @-$7C                                  ; $6846: $20 $82

    dec l                                         ; $6848: $2D
    ld [bc], a                                    ; $6849: $02
    ld a, [bc]                                    ; $684A: $0A
    dec l                                         ; $684B: $2D
    add e                                         ; $684C: $83
    dec c                                         ; $684D: $0D
    ld bc, $840A                                  ; $684E: $01 $0A $84
    dec l                                         ; $6851: $2D
    ld bc, $8C0D                                  ; $6852: $01 $0D $8C
    dec l                                         ; $6855: $2D
    ld [bc], a                                    ; $6856: $02
    dec c                                         ; $6857: $0D
    dec l                                         ; $6858: $2D
    add d                                         ; $6859: $82
    dec c                                         ; $685A: $0D
    dec b                                         ; $685B: $05
    ld a, [bc]                                    ; $685C: $0A
    dec c                                         ; $685D: $0D

jr_066_685E:
    ld a, [bc]                                    ; $685E: $0A
    nop                                           ; $685F: $00
    jr nz, jr_066_67E4                            ; $6860: $20 $82

jr_066_6862:
    inc bc                                        ; $6862: $03
    add h                                         ; $6863: $84
    ld [bc], a                                    ; $6864: $02
    add h                                         ; $6865: $84
    dec c                                         ; $6866: $0D
    add h                                         ; $6867: $84
    ld a, [bc]                                    ; $6868: $0A
    add h                                         ; $6869: $84
    jr z, @-$7B                                   ; $686A: $28 $83

    add hl, hl                                    ; $686C: $29
    ld [$2969], sp                                ; $686D: $08 $69 $29
    ld [hl+], a                                   ; $6870: $22
    add hl, hl                                    ; $6871: $29
    ld [hl+], a                                   ; $6872: $22
    ld [bc], a                                    ; $6873: $02
    add hl, bc                                    ; $6874: $09
    ld [bc], a                                    ; $6875: $02
    add e                                         ; $6876: $83
    add hl, bc                                    ; $6877: $09
    ld [bc], a                                    ; $6878: $02
    ld l, c                                       ; $6879: $69
    add hl, bc                                    ; $687A: $09
    add h                                         ; $687B: $84
    ld [$0285], sp                                ; $687C: $08 $85 $02
    inc bc                                        ; $687F: $03
    ld a, [bc]                                    ; $6880: $0A
    ld [bc], a                                    ; $6881: $02
    ld [bc], a                                    ; $6882: $02
    add h                                         ; $6883: $84
    ld [hl+], a                                   ; $6884: $22
    add d                                         ; $6885: $82
    ld a, [hl+]                                   ; $6886: $2A
    dec b                                         ; $6887: $05
    ld a, [bc]                                    ; $6888: $0A
    ld a, [hl+]                                   ; $6889: $2A
    dec l                                         ; $688A: $2D
    ld a, [bc]                                    ; $688B: $0A
    dec l                                         ; $688C: $2D
    add l                                         ; $688D: $85
    ld a, [bc]                                    ; $688E: $0A
    add e                                         ; $688F: $83
    inc bc                                        ; $6890: $03
    ld bc, $8423                                  ; $6891: $01 $23 $84
    ld [hl+], a                                   ; $6894: $22
    ld [$2D0D], sp                                ; $6895: $08 $0D $2D
    dec c                                         ; $6898: $0D
    dec l                                         ; $6899: $2D
    dec c                                         ; $689A: $0D
    dec l                                         ; $689B: $2D
    dec c                                         ; $689C: $0D
    dec l                                         ; $689D: $2D
    add e                                         ; $689E: $83
    add hl, hl                                    ; $689F: $29
    ld bc, $8428                                  ; $68A0: $01 $28 $84
    add hl, hl                                    ; $68A3: $29
    add e                                         ; $68A4: $83
    ld a, [hl+]                                   ; $68A5: $2A
    add l                                         ; $68A6: $85
    ld a, [bc]                                    ; $68A7: $0A
    add [hl]                                      ; $68A8: $86
    add hl, bc                                    ; $68A9: $09
    ld [bc], a                                    ; $68AA: $02
    ld [$8709], sp                                ; $68AB: $08 $09 $87
    ld [bc], a                                    ; $68AE: $02
    ld bc, $860A                                  ; $68AF: $01 $0A $86
    ld [hl+], a                                   ; $68B2: $22
    add d                                         ; $68B3: $82
    jr nz, jr_066_6838                            ; $68B4: $20 $82

    ld [hl+], a                                   ; $68B6: $22
    add d                                         ; $68B7: $82
    jr nz, jr_066_68BD                            ; $68B8: $20 $03

    ld a, [bc]                                    ; $68BA: $0A
    dec l                                         ; $68BB: $2D
    ld a, [bc]                                    ; $68BC: $0A

jr_066_68BD:
    add d                                         ; $68BD: $82
    dec l                                         ; $68BE: $2D
    ld [bc], a                                    ; $68BF: $02
    dec c                                         ; $68C0: $0D
    dec l                                         ; $68C1: $2D
    add l                                         ; $68C2: $85
    dec c                                         ; $68C3: $0D
    add h                                         ; $68C4: $84
    ld a, [hl+]                                   ; $68C5: $2A
    add h                                         ; $68C6: $84
    dec l                                         ; $68C7: $2D
    ld [bc], a                                    ; $68C8: $02
    add hl, hl                                    ; $68C9: $29
    ld a, [hl+]                                   ; $68CA: $2A
    add d                                         ; $68CB: $82
    ld [hl+], a                                   ; $68CC: $22
    add d                                         ; $68CD: $82
    ld a, [hl+]                                   ; $68CE: $2A
    add d                                         ; $68CF: $82
    ld a, [bc]                                    ; $68D0: $0A
    ld bc, $8C2A                                  ; $68D1: $01 $2A $8C
    ld a, [bc]                                    ; $68D4: $0A
    inc bc                                        ; $68D5: $03
    add hl, bc                                    ; $68D6: $09
    ld [bc], a                                    ; $68D7: $02
    ld [bc], a                                    ; $68D8: $02
    adc [hl]                                      ; $68D9: $8E
    jr nz, jr_066_685E                            ; $68DA: $20 $82

    dec h                                         ; $68DC: $25
    add d                                         ; $68DD: $82
    jr nz, jr_066_6862                            ; $68DE: $20 $82

    dec h                                         ; $68E0: $25
    ld [bc], a                                    ; $68E1: $02
    ld a, [bc]                                    ; $68E2: $0A
    ld a, [hl+]                                   ; $68E3: $2A
    add d                                         ; $68E4: $82
    ld a, [bc]                                    ; $68E5: $0A
    inc b                                         ; $68E6: $04
    ld a, [hl+]                                   ; $68E7: $2A
    dec c                                         ; $68E8: $0D
    ld a, [hl+]                                   ; $68E9: $2A
    dec l                                         ; $68EA: $2D
    add h                                         ; $68EB: $84
    ld a, [bc]                                    ; $68EC: $0A
    add h                                         ; $68ED: $84
    dec c                                         ; $68EE: $0D
    and b                                         ; $68EF: $A0
    dec h                                         ; $68F0: $25
    ld [$2B0B], sp                                ; $68F1: $08 $0B $2B
    dec bc                                        ; $68F4: $0B
    dec hl                                        ; $68F5: $2B
    dec bc                                        ; $68F6: $0B
    dec hl                                        ; $68F7: $2B
    dec bc                                        ; $68F8: $0B
    dec hl                                        ; $68F9: $2B
    nop                                           ; $68FA: $00
    adc b                                         ; $68FB: $88
    ld b, h                                       ; $68FC: $44
    inc c                                         ; $68FD: $0C
    ld h, h                                       ; $68FE: $64
    jr c, jr_066_6965                             ; $68FF: $38 $64

    ld c, b                                       ; $6901: $48
    daa                                           ; $6902: $27
    ld h, $37                                     ; $6903: $26 $37
    ld [hl], $27                                  ; $6905: $36 $27
    jr c, jr_066_6940                             ; $6907: $38 $37

    ld c, b                                       ; $6909: $48
    add h                                         ; $690A: $84
    ld b, h                                       ; $690B: $44
    add d                                         ; $690C: $82
    dec a                                         ; $690D: $3D
    ld [bc], a                                    ; $690E: $02
    ld bc, $8302                                  ; $690F: $01 $02 $83
    dec a                                         ; $6912: $3D
    dec b                                         ; $6913: $05
    inc b                                         ; $6914: $04
    dec a                                         ; $6915: $3D
    dec a                                         ; $6916: $3D
    inc l                                         ; $6917: $2C
    dec l                                         ; $6918: $2D
    add d                                         ; $6919: $82
    dec a                                         ; $691A: $3D
    ld [bc], a                                    ; $691B: $02
    inc l                                         ; $691C: $2C
    inc b                                         ; $691D: $04
    add d                                         ; $691E: $82
    dec a                                         ; $691F: $3D
    ld bc, $8301                                  ; $6920: $01 $01 $83
    dec a                                         ; $6923: $3D
    ld [bc], a                                    ; $6924: $02
    ld [bc], a                                    ; $6925: $02
    ld bc, $4484                                  ; $6926: $01 $84 $44
    add d                                         ; $6929: $82
    dec a                                         ; $692A: $3D
    ld [bc], a                                    ; $692B: $02
    add hl, de                                    ; $692C: $19
    ld a, [de]                                    ; $692D: $1A
    add d                                         ; $692E: $82
    dec a                                         ; $692F: $3D
    ld b, $1B                                     ; $6930: $06 $1B
    dec a                                         ; $6932: $3D
    ld b, a                                       ; $6933: $47
    ld a, [bc]                                    ; $6934: $0A
    ld c, [hl]                                    ; $6935: $4E
    ld c, a                                       ; $6936: $4F
    adc b                                         ; $6937: $88
    ld b, h                                       ; $6938: $44
    add h                                         ; $6939: $84
    ld h, h                                       ; $693A: $64
    inc [hl]                                      ; $693B: $34
    ld b, a                                       ; $693C: $47
    ld b, [hl]                                    ; $693D: $46
    ld d, a                                       ; $693E: $57
    ld [hl], c                                    ; $693F: $71

jr_066_6940:
    ld b, a                                       ; $6940: $47
    ld h, h                                       ; $6941: $64
    ld d, a                                       ; $6942: $57
    ld h, h                                       ; $6943: $64
    dec a                                         ; $6944: $3D
    db $10                                        ; $6945: $10
    dec a                                         ; $6946: $3D
    jr nz, @+$13                                  ; $6947: $20 $11

    ld [de], a                                    ; $6949: $12
    ld hl, $1322                                  ; $694A: $21 $22 $13
    ld c, b                                       ; $694D: $48
    inc hl                                        ; $694E: $23
    inc h                                         ; $694F: $24
    inc a                                         ; $6950: $3C
    dec a                                         ; $6951: $3D
    ld c, h                                       ; $6952: $4C
    ld c, l                                       ; $6953: $4D
    inc a                                         ; $6954: $3C
    ld c, b                                       ; $6955: $48
    ld c, h                                       ; $6956: $4C
    inc h                                         ; $6957: $24
    ld de, $6013                                  ; $6958: $11 $13 $60
    inc hl                                        ; $695B: $23
    ld [de], a                                    ; $695C: $12
    ld de, $2122                                  ; $695D: $11 $22 $21
    db $10                                        ; $6960: $10
    dec a                                         ; $6961: $3D
    jr nz, jr_066_69A1                            ; $6962: $20 $3D

    add hl, hl                                    ; $6964: $29

jr_066_6965:
    ld a, [hl+]                                   ; $6965: $2A
    add hl, sp                                    ; $6966: $39
    ld a, [hl-]                                   ; $6967: $3A
    dec hl                                        ; $6968: $2B
    inc l                                         ; $6969: $2C
    dec sp                                        ; $696A: $3B
    inc a                                         ; $696B: $3C
    ld e, [hl]                                    ; $696C: $5E
    ld e, a                                       ; $696D: $5F
    ld e, [hl]                                    ; $696E: $5E
    ld l, a                                       ; $696F: $6F
    add h                                         ; $6970: $84
    ld b, h                                       ; $6971: $44
    cpl                                           ; $6972: $2F
    dec hl                                        ; $6973: $2B
    ld b, a                                       ; $6974: $47
    ld e, b                                       ; $6975: $58
    ld d, a                                       ; $6976: $57
    ld b, [hl]                                    ; $6977: $46
    dec a                                         ; $6978: $3D
    ld d, [hl]                                    ; $6979: $56
    dec a                                         ; $697A: $3D
    ld a, [bc]                                    ; $697B: $0A
    ld b, a                                       ; $697C: $47
    ld c, a                                       ; $697D: $4F
    ld c, [hl]                                    ; $697E: $4E
    rrca                                          ; $697F: $0F
    ld c, $1F                                     ; $6980: $0E $1F
    ld e, $3D                                     ; $6982: $1E $3D
    ld d, b                                       ; $6984: $50
    dec a                                         ; $6985: $3D
    ld b, b                                       ; $6986: $40
    ld sp, $4132                                  ; $6987: $31 $32 $41
    ld b, d                                       ; $698A: $42
    inc sp                                        ; $698B: $33
    inc [hl]                                      ; $698C: $34
    ld b, e                                       ; $698D: $43
    ld b, h                                       ; $698E: $44
    ld e, h                                       ; $698F: $5C
    ld e, l                                       ; $6990: $5D
    ld l, h                                       ; $6991: $6C
    ld l, l                                       ; $6992: $6D
    ld e, h                                       ; $6993: $5C
    inc [hl]                                      ; $6994: $34
    ld l, h                                       ; $6995: $6C
    ld b, h                                       ; $6996: $44
    ld h, b                                       ; $6997: $60
    inc sp                                        ; $6998: $33
    ld [hl], b                                    ; $6999: $70
    ld b, e                                       ; $699A: $43
    ld [hl-], a                                   ; $699B: $32
    ld sp, $4142                                  ; $699C: $31 $42 $41
    ld d, b                                       ; $699F: $50
    dec a                                         ; $69A0: $3D

jr_066_69A1:
    ld b, b                                       ; $69A1: $40
    add l                                         ; $69A2: $85
    dec a                                         ; $69A3: $3D
    ld [$2E2F], sp                                ; $69A4: $08 $2F $2E
    ccf                                           ; $69A7: $3F
    inc a                                         ; $69A8: $3C
    ld a, [hl]                                    ; $69A9: $7E
    ld a, a                                       ; $69AA: $7F
    ld h, b                                       ; $69AB: $60
    ld a, [de]                                    ; $69AC: $1A
    add h                                         ; $69AD: $84
    ld b, h                                       ; $69AE: $44
    ld a, [de]                                    ; $69AF: $1A
    ld l, b                                       ; $69B0: $68
    ld h, a                                       ; $69B1: $67
    ld a, b                                       ; $69B2: $78
    ld [hl], a                                    ; $69B3: $77
    ld h, [hl]                                    ; $69B4: $66
    dec a                                         ; $69B5: $3D
    halt                                          ; $69B6: $76
    dec a                                         ; $69B7: $3D
    ld e, a                                       ; $69B8: $5F
    ld e, [hl]                                    ; $69B9: $5E
    ld l, a                                       ; $69BA: $6F
    ld e, [hl]                                    ; $69BB: $5E
    cpl                                           ; $69BC: $2F
    ld e, $3F                                     ; $69BD: $1E $3F
    ld a, $3D                                     ; $69BF: $3E $3D
    ld d, b                                       ; $69C1: $50
    dec a                                         ; $69C2: $3D
    ld b, b                                       ; $69C3: $40
    ld d, c                                       ; $69C4: $51
    ld d, d                                       ; $69C5: $52
    ld h, c                                       ; $69C6: $61
    ld h, d                                       ; $69C7: $62
    ld d, e                                       ; $69C8: $53
    ld d, h                                       ; $69C9: $54
    add d                                         ; $69CA: $82
    ld h, h                                       ; $69CB: $64
    ld [bc], a                                    ; $69CC: $02
    ld a, h                                       ; $69CD: $7C
    ld a, l                                       ; $69CE: $7D
    add d                                         ; $69CF: $82
    ld h, h                                       ; $69D0: $64
    ld [bc], a                                    ; $69D1: $02
    ld a, h                                       ; $69D2: $7C
    ld d, h                                       ; $69D3: $54
    add d                                         ; $69D4: $82
    ld h, h                                       ; $69D5: $64
    ld [bc], a                                    ; $69D6: $02
    ld d, h                                       ; $69D7: $54
    ld d, e                                       ; $69D8: $53
    add d                                         ; $69D9: $82
    ld h, h                                       ; $69DA: $64
    ld c, $52                                     ; $69DB: $0E $52
    ld d, c                                       ; $69DD: $51
    ld h, d                                       ; $69DE: $62
    ld h, c                                       ; $69DF: $61
    ld d, b                                       ; $69E0: $50
    dec a                                         ; $69E1: $3D
    ld b, b                                       ; $69E2: $40
    dec a                                         ; $69E3: $3D
    ld c, c                                       ; $69E4: $49
    ld c, d                                       ; $69E5: $4A
    ld e, c                                       ; $69E6: $59
    ld e, d                                       ; $69E7: $5A
    ld c, e                                       ; $69E8: $4B
    ld c, h                                       ; $69E9: $4C
    add d                                         ; $69EA: $82
    dec a                                         ; $69EB: $3D
    inc b                                         ; $69EC: $04
    ld c, $0F                                     ; $69ED: $0E $0F
    ld e, $1F                                     ; $69EF: $1E $1F
    add h                                         ; $69F1: $84
    ld b, h                                       ; $69F2: $44
    ld [bc], a                                    ; $69F3: $02
    dec a                                         ; $69F4: $3D
    inc bc                                        ; $69F5: $03
    add [hl]                                      ; $69F6: $86
    dec a                                         ; $69F7: $3D
    rlca                                          ; $69F8: $07
    ld a, a                                       ; $69F9: $7F
    ld a, [hl]                                    ; $69FA: $7E
    ld a, [de]                                    ; $69FB: $1A
    ld h, b                                       ; $69FC: $60
    add hl, bc                                    ; $69FD: $09
    dec a                                         ; $69FE: $3D
    add hl, de                                    ; $69FF: $19
    add d                                         ; $6A00: $82
    dec a                                         ; $6A01: $3D
    ld e, $50                                     ; $6A02: $1E $50
    dec a                                         ; $6A04: $3D
    ld b, b                                       ; $6A05: $40
    ld d, c                                       ; $6A06: $51
    ld l, e                                       ; $6A07: $6B
    ld h, c                                       ; $6A08: $61
    ld a, e                                       ; $6A09: $7B
    jr nz, jr_066_6A2D                            ; $6A0A: $20 $21

    jr nc, jr_066_6A3F                            ; $6A0C: $30 $31

    ld [hl+], a                                   ; $6A0E: $22
    dec a                                         ; $6A0F: $3D
    ld [hl-], a                                   ; $6A10: $32
    dec a                                         ; $6A11: $3D
    nop                                           ; $6A12: $00
    ld bc, $1110                                  ; $6A13: $01 $10 $11
    ld [bc], a                                    ; $6A16: $02
    dec a                                         ; $6A17: $3D
    ld [de], a                                    ; $6A18: $12
    dec a                                         ; $6A19: $3D
    dec hl                                        ; $6A1A: $2B
    ld d, c                                       ; $6A1B: $51
    ld a, e                                       ; $6A1C: $7B
    ld h, c                                       ; $6A1D: $61
    ld d, b                                       ; $6A1E: $50
    dec a                                         ; $6A1F: $3D
    ld b, b                                       ; $6A20: $40
    add h                                         ; $6A21: $84
    dec a                                         ; $6A22: $3D
    add hl, bc                                    ; $6A23: $09
    dec de                                        ; $6A24: $1B
    dec a                                         ; $6A25: $3D
    dec a                                         ; $6A26: $3D
    ld a, [de]                                    ; $6A27: $1A
    add hl, de                                    ; $6A28: $19
    ld e, $2F                                     ; $6A29: $1E $2F
    ld a, $3F                                     ; $6A2B: $3E $3F

jr_066_6A2D:
    add h                                         ; $6A2D: $84
    ld b, h                                       ; $6A2E: $44
    add d                                         ; $6A2F: $82
    dec a                                         ; $6A30: $3D
    ld [bc], a                                    ; $6A31: $02
    ld bc, $8302                                  ; $6A32: $01 $02 $83
    dec a                                         ; $6A35: $3D
    dec b                                         ; $6A36: $05
    inc b                                         ; $6A37: $04
    dec a                                         ; $6A38: $3D
    dec a                                         ; $6A39: $3D
    dec bc                                        ; $6A3A: $0B
    inc c                                         ; $6A3B: $0C
    add d                                         ; $6A3C: $82
    dec a                                         ; $6A3D: $3D
    inc c                                         ; $6A3E: $0C

jr_066_6A3F:
    dec bc                                        ; $6A3F: $0B
    inc b                                         ; $6A40: $04
    dec a                                         ; $6A41: $3D
    ld b, [hl]                                    ; $6A42: $46
    jr c, @+$3B                                   ; $6A43: $38 $39

    ld b, a                                       ; $6A45: $47
    ld l, e                                       ; $6A46: $6B
    ld a, [hl-]                                   ; $6A47: $3A
    dec sp                                        ; $6A48: $3B
    ld b, b                                       ; $6A49: $40
    ld b, c                                       ; $6A4A: $41
    add d                                         ; $6A4B: $82
    dec a                                         ; $6A4C: $3D
    ld bc, $8340                                  ; $6A4D: $01 $40 $83
    dec a                                         ; $6A50: $3D
    ld [bc], a                                    ; $6A51: $02
    ld b, b                                       ; $6A52: $40
    ld b, c                                       ; $6A53: $41
    add d                                         ; $6A54: $82
    dec a                                         ; $6A55: $3D
    ld bc, $8340                                  ; $6A56: $01 $40 $83
    dec a                                         ; $6A59: $3D
    jr nc, jr_066_6A87                            ; $6A5A: $30 $2B

    ld b, a                                       ; $6A5C: $47
    dec sp                                        ; $6A5D: $3B
    ld a, [hl-]                                   ; $6A5E: $3A
    ld b, [hl]                                    ; $6A5F: $46
    dec a                                         ; $6A60: $3D
    add hl, sp                                    ; $6A61: $39
    ld [hl], b                                    ; $6A62: $70
    inc l                                         ; $6A63: $2C
    dec hl                                        ; $6A64: $2B
    inc a                                         ; $6A65: $3C
    dec sp                                        ; $6A66: $3B
    ld a, [hl+]                                   ; $6A67: $2A
    add hl, hl                                    ; $6A68: $29
    ld a, [hl-]                                   ; $6A69: $3A
    add hl, sp                                    ; $6A6A: $39
    dec a                                         ; $6A6B: $3D
    add hl, bc                                    ; $6A6C: $09
    dec a                                         ; $6A6D: $3D
    add hl, de                                    ; $6A6E: $19
    dec a                                         ; $6A6F: $3D
    db $10                                        ; $6A70: $10
    dec a                                         ; $6A71: $3D
    jr nz, jr_066_6A85                            ; $6A72: $20 $11

    ld [de], a                                    ; $6A74: $12
    ld hl, $1322                                  ; $6A75: $21 $22 $13
    ld c, b                                       ; $6A78: $48
    inc hl                                        ; $6A79: $23
    inc h                                         ; $6A7A: $24
    dec de                                        ; $6A7B: $1B
    inc e                                         ; $6A7C: $1C
    ld b, $07                                     ; $6A7D: $06 $07
    dec de                                        ; $6A7F: $1B
    ld c, b                                       ; $6A80: $48
    ld b, $24                                     ; $6A81: $06 $24
    ld c, b                                       ; $6A83: $48
    ld c, c                                       ; $6A84: $49

jr_066_6A85:
    inc h                                         ; $6A85: $24
    ld e, c                                       ; $6A86: $59

jr_066_6A87:
    ld c, d                                       ; $6A87: $4A
    ld c, e                                       ; $6A88: $4B
    ld e, d                                       ; $6A89: $5A
    ld e, e                                       ; $6A8A: $5B
    sub b                                         ; $6A8B: $90
    ld b, h                                       ; $6A8C: $44
    inc c                                         ; $6A8D: $0C
    ld c, e                                       ; $6A8E: $4B
    ld c, d                                       ; $6A8F: $4A
    ld e, e                                       ; $6A90: $5B
    ld e, d                                       ; $6A91: $5A
    ld c, c                                       ; $6A92: $49
    ld c, b                                       ; $6A93: $48
    ld e, c                                       ; $6A94: $59
    inc h                                         ; $6A95: $24
    ld l, $2F                                     ; $6A96: $2E $2F
    inc a                                         ; $6A98: $3C
    ccf                                           ; $6A99: $3F
    add h                                         ; $6A9A: $84
    dec a                                         ; $6A9B: $3D
    add h                                         ; $6A9C: $84
    ld b, h                                       ; $6A9D: $44
    add hl, de                                    ; $6A9E: $19
    dec a                                         ; $6A9F: $3D
    ld d, b                                       ; $6AA0: $50
    dec a                                         ; $6AA1: $3D
    ld b, b                                       ; $6AA2: $40
    ld sp, $4132                                  ; $6AA3: $31 $32 $41
    ld b, d                                       ; $6AA6: $42
    inc sp                                        ; $6AA7: $33
    inc [hl]                                      ; $6AA8: $34
    ld b, e                                       ; $6AA9: $43
    ld b, h                                       ; $6AAA: $44
    jr z, jr_066_6AD6                             ; $6AAB: $28 $29

    dec c                                         ; $6AAD: $0D
    dec e                                         ; $6AAE: $1D
    jr z, jr_066_6AE5                             ; $6AAF: $28 $34

    dec c                                         ; $6AB1: $0D
    ld b, h                                       ; $6AB2: $44
    inc [hl]                                      ; $6AB3: $34
    ld l, c                                       ; $6AB4: $69
    ld b, h                                       ; $6AB5: $44
    ld a, c                                       ; $6AB6: $79
    ld l, d                                       ; $6AB7: $6A
    add e                                         ; $6AB8: $83
    ld h, h                                       ; $6AB9: $64
    add d                                         ; $6ABA: $82
    dec a                                         ; $6ABB: $3D
    ld [bc], a                                    ; $6ABC: $02
    dec c                                         ; $6ABD: $0D
    inc c                                         ; $6ABE: $0C
    add h                                         ; $6ABF: $84
    ld b, h                                       ; $6AC0: $44
    add d                                         ; $6AC1: $82
    dec a                                         ; $6AC2: $3D
    add d                                         ; $6AC3: $82
    inc e                                         ; $6AC4: $1C
    add d                                         ; $6AC5: $82
    dec a                                         ; $6AC6: $3D
    inc b                                         ; $6AC7: $04
    inc c                                         ; $6AC8: $0C
    dec c                                         ; $6AC9: $0D
    ld h, h                                       ; $6ACA: $64
    ld l, d                                       ; $6ACB: $6A
    add d                                         ; $6ACC: $82
    ld h, h                                       ; $6ACD: $64
    ld b, $69                                     ; $6ACE: $06 $69
    inc [hl]                                      ; $6AD0: $34
    ld a, c                                       ; $6AD1: $79
    ld b, h                                       ; $6AD2: $44
    ld c, h                                       ; $6AD3: $4C
    ld c, e                                       ; $6AD4: $4B
    add d                                         ; $6AD5: $82

jr_066_6AD6:
    dec a                                         ; $6AD6: $3D
    inc b                                         ; $6AD7: $04
    ld c, d                                       ; $6AD8: $4A
    ld c, c                                       ; $6AD9: $49
    ld e, d                                       ; $6ADA: $5A
    ld e, c                                       ; $6ADB: $59
    add h                                         ; $6ADC: $84
    ld b, h                                       ; $6ADD: $44
    ld a, [bc]                                    ; $6ADE: $0A
    dec a                                         ; $6ADF: $3D
    ld d, b                                       ; $6AE0: $50
    dec a                                         ; $6AE1: $3D
    ld b, b                                       ; $6AE2: $40
    ld d, c                                       ; $6AE3: $51
    ld d, d                                       ; $6AE4: $52

jr_066_6AE5:
    ld h, c                                       ; $6AE5: $61
    ld h, d                                       ; $6AE6: $62
    ld d, e                                       ; $6AE7: $53
    ld d, h                                       ; $6AE8: $54
    add d                                         ; $6AE9: $82
    ld h, h                                       ; $6AEA: $64
    add d                                         ; $6AEB: $82
    ld d, h                                       ; $6AEC: $54
    add d                                         ; $6AED: $82
    ld h, h                                       ; $6AEE: $64
    add d                                         ; $6AEF: $82
    ld d, h                                       ; $6AF0: $54
    add d                                         ; $6AF1: $82
    ld h, h                                       ; $6AF2: $64
    ld bc, $8355                                  ; $6AF3: $01 $55 $83
    ld h, h                                       ; $6AF6: $64
    dec b                                         ; $6AF7: $05
    rra                                           ; $6AF8: $1F
    ld e, $2F                                     ; $6AF9: $1E $2F
    ld l, $1D                                     ; $6AFB: $2E $1D
    add l                                         ; $6AFD: $85
    dec a                                         ; $6AFE: $3D
    add d                                         ; $6AFF: $82
    ld l, d                                       ; $6B00: $6A
    add l                                         ; $6B01: $85
    dec a                                         ; $6B02: $3D
    add hl, bc                                    ; $6B03: $09
    dec e                                         ; $6B04: $1D
    dec a                                         ; $6B05: $3D
    dec a                                         ; $6B06: $3D
    ld e, $1F                                     ; $6B07: $1E $1F
    ld l, $2F                                     ; $6B09: $2E $2F
    ld h, h                                       ; $6B0B: $64
    ld d, l                                       ; $6B0C: $55
    add d                                         ; $6B0D: $82
    ld h, h                                       ; $6B0E: $64
    ld [$7D7E], sp                                ; $6B0F: $08 $7E $7D
    ld l, b                                       ; $6B12: $68
    ld h, a                                       ; $6B13: $67
    ld a, [hl]                                    ; $6B14: $7E
    ld a, a                                       ; $6B15: $7F
    ld l, b                                       ; $6B16: $68
    ld l, c                                       ; $6B17: $69
    add h                                         ; $6B18: $84

jr_066_6B19:
    ld b, h                                       ; $6B19: $44
    ld [$463D], sp                                ; $6B1A: $08 $3D $46
    dec a                                         ; $6B1D: $3D
    ld d, [hl]                                    ; $6B1E: $56
    ld b, a                                       ; $6B1F: $47
    ld l, e                                       ; $6B20: $6B
    ld d, a                                       ; $6B21: $57
    ld e, b                                       ; $6B22: $58
    sub b                                         ; $6B23: $90
    ld b, h                                       ; $6B24: $44
    inc b                                         ; $6B25: $04
    ccf                                           ; $6B26: $3F
    inc a                                         ; $6B27: $3C
    ld c, a                                       ; $6B28: $4F
    ld c, [hl]                                    ; $6B29: $4E
    add d                                         ; $6B2A: $82
    dec a                                         ; $6B2B: $3D
    ld [bc], a                                    ; $6B2C: $02
    ld c, l                                       ; $6B2D: $4D
    dec a                                         ; $6B2E: $3D
    add d                                         ; $6B2F: $82
    ld a, d                                       ; $6B30: $7A
    adc c                                         ; $6B31: $89
    dec a                                         ; $6B32: $3D
    dec b                                         ; $6B33: $05
    ld c, l                                       ; $6B34: $4D
    inc a                                         ; $6B35: $3C
    ccf                                           ; $6B36: $3F
    ld c, [hl]                                    ; $6B37: $4E
    ld c, a                                       ; $6B38: $4F
    add h                                         ; $6B39: $84
    ld b, h                                       ; $6B3A: $44
    ld [$7778], sp                                ; $6B3B: $08 $78 $77
    ld h, c                                       ; $6B3E: $61
    ld l, a                                       ; $6B3F: $6F
    ld a, b                                       ; $6B40: $78
    ld a, c                                       ; $6B41: $79
    ld h, c                                       ; $6B42: $61
    ld e, b                                       ; $6B43: $58
    add h                                         ; $6B44: $84
    ld b, h                                       ; $6B45: $44
    ld b, b                                       ; $6B46: $40
    ld b, b                                       ; $6B47: $40
    dec a                                         ; $6B48: $3D
    ld h, [hl]                                    ; $6B49: $66
    dec a                                         ; $6B4A: $3D
    halt                                          ; $6B4B: $76
    ld h, a                                       ; $6B4C: $67
    ld l, b                                       ; $6B4D: $68
    ld [hl], a                                    ; $6B4E: $77
    ld a, b                                       ; $6B4F: $78
    dec b                                         ; $6B50: $05
    ld h, e                                       ; $6B51: $63
    dec d                                         ; $6B52: $15
    ld [hl], e                                    ; $6B53: $73
    ld h, h                                       ; $6B54: $64
    ld h, l                                       ; $6B55: $65
    ld [hl], h                                    ; $6B56: $74
    ld [hl], l                                    ; $6B57: $75
    ld h, h                                       ; $6B58: $64
    ld h, e                                       ; $6B59: $63
    ld [hl], h                                    ; $6B5A: $74
    ld [$6463], sp                                ; $6B5B: $08 $63 $64
    ld [$5F64], sp                                ; $6B5E: $08 $64 $5F
    ld e, [hl]                                    ; $6B61: $5E
    dec a                                         ; $6B62: $3D
    ld l, [hl]                                    ; $6B63: $6E
    ld e, l                                       ; $6B64: $5D
    ld e, h                                       ; $6B65: $5C
    ld l, l                                       ; $6B66: $6D
    ld l, h                                       ; $6B67: $6C
    ld e, e                                       ; $6B68: $5B
    dec a                                         ; $6B69: $3D
    ld l, e                                       ; $6B6A: $6B
    dec l                                         ; $6B6B: $2D
    dec a                                         ; $6B6C: $3D
    ld e, e                                       ; $6B6D: $5B
    ld l, d                                       ; $6B6E: $6A
    ld l, e                                       ; $6B6F: $6B
    ld e, h                                       ; $6B70: $5C
    ld e, l                                       ; $6B71: $5D
    ld l, h                                       ; $6B72: $6C
    ld l, l                                       ; $6B73: $6D
    ld e, [hl]                                    ; $6B74: $5E
    ld e, a                                       ; $6B75: $5F
    ld l, [hl]                                    ; $6B76: $6E
    dec a                                         ; $6B77: $3D
    ld h, h                                       ; $6B78: $64
    ld h, e                                       ; $6B79: $63
    ld h, h                                       ; $6B7A: $64
    ld [$6564], sp                                ; $6B7B: $08 $64 $65
    ld [hl], h                                    ; $6B7E: $74
    ld [hl], l                                    ; $6B7F: $75
    ld h, h                                       ; $6B80: $64
    ld h, e                                       ; $6B81: $63
    ld [hl], h                                    ; $6B82: $74
    ld [hl], e                                    ; $6B83: $73
    ld h, e                                       ; $6B84: $63
    dec b                                         ; $6B85: $05
    ld [hl], e                                    ; $6B86: $73
    dec d                                         ; $6B87: $15
    add h                                         ; $6B88: $84
    ld b, h                                       ; $6B89: $44
    ld bc, $8703                                  ; $6B8A: $01 $03 $87
    dec a                                         ; $6B8D: $3D
    ld [bc], a                                    ; $6B8E: $02
    ld [hl], c                                    ; $6B8F: $71
    ld [hl], d                                    ; $6B90: $72
    add d                                         ; $6B91: $82
    dec a                                         ; $6B92: $3D
    ld [bc], a                                    ; $6B93: $02
    ld [hl], c                                    ; $6B94: $71
    jr jr_066_6B19                                ; $6B95: $18 $82

    dec a                                         ; $6B97: $3D
    ld a, [bc]                                    ; $6B98: $0A
    jr jr_066_6BB2                                ; $6B99: $18 $17

    dec a                                         ; $6B9B: $3D
    daa                                           ; $6B9C: $27
    ld d, $64                                     ; $6B9D: $16 $64
    ld h, $25                                     ; $6B9F: $26 $25
    dec a                                         ; $6BA1: $3D
    ld a, h                                       ; $6BA2: $7C
    add d                                         ; $6BA3: $82
    dec a                                         ; $6BA4: $3D
    ld bc, $837B                                  ; $6BA5: $01 $7B $83
    dec a                                         ; $6BA8: $3D
    ld [bc], a                                    ; $6BA9: $02
    ld a, d                                       ; $6BAA: $7A
    ld a, e                                       ; $6BAB: $7B
    add d                                         ; $6BAC: $82
    dec a                                         ; $6BAD: $3D
    ld bc, $837C                                  ; $6BAE: $01 $7C $83
    dec a                                         ; $6BB1: $3D

jr_066_6BB2:
    ld a, [bc]                                    ; $6BB2: $0A
    ld h, h                                       ; $6BB3: $64
    ld d, $25                                     ; $6BB4: $16 $25
    ld h, $17                                     ; $6BB6: $26 $17
    jr @+$29                                      ; $6BB8: $18 $27

    dec a                                         ; $6BBA: $3D
    ld [hl], c                                    ; $6BBB: $71
    ld [hl], d                                    ; $6BBC: $72
    add d                                         ; $6BBD: $82
    dec a                                         ; $6BBE: $3D
    ld bc, $8771                                  ; $6BBF: $01 $71 $87
    dec a                                         ; $6BC2: $3D
    db $10                                        ; $6BC3: $10
    ld h, h                                       ; $6BC4: $64
    inc bc                                        ; $6BC5: $03
    ld h, h                                       ; $6BC6: $64
    inc de                                        ; $6BC7: $13
    inc b                                         ; $6BC8: $04
    dec b                                         ; $6BC9: $05
    inc d                                         ; $6BCA: $14
    dec d                                         ; $6BCB: $15
    ld h, h                                       ; $6BCC: $64
    ld d, b                                       ; $6BCD: $50
    ld h, h                                       ; $6BCE: $64
    ld b, $51                                     ; $6BCF: $06 $51
    ld h, h                                       ; $6BD1: $64
    rlca                                          ; $6BD2: $07
    ld [$3D85], sp                                ; $6BD3: $08 $85 $3D
    dec bc                                        ; $6BD6: $0B
    scf                                           ; $6BD7: $37
    dec a                                         ; $6BD8: $3D
    ld b, b                                       ; $6BD9: $40
    ld [hl], $35                                  ; $6BDA: $36 $35
    ld h, c                                       ; $6BDC: $61
    ld b, l                                       ; $6BDD: $45
    ld h, h                                       ; $6BDE: $64
    ld b, d                                       ; $6BDF: $42
    jr c, jr_066_6C34                             ; $6BE0: $38 $52

    add d                                         ; $6BE2: $82
    ld a, a                                       ; $6BE3: $7F
    ld [bc], a                                    ; $6BE4: $02
    ld d, e                                       ; $6BE5: $53
    ld l, c                                       ; $6BE6: $69
    add d                                         ; $6BE7: $82
    ld a, a                                       ; $6BE8: $7F
    ld c, $69                                     ; $6BE9: $0E $69
    ld d, e                                       ; $6BEB: $53
    ld b, d                                       ; $6BEC: $42
    ld h, h                                       ; $6BED: $64
    ld d, d                                       ; $6BEE: $52
    jr c, jr_066_6C26                             ; $6BEF: $38 $35

    ld [hl], $45                                  ; $6BF1: $36 $45
    ld h, c                                       ; $6BF3: $61
    scf                                           ; $6BF4: $37
    dec a                                         ; $6BF5: $3D
    ld b, b                                       ; $6BF6: $40
    dec a                                         ; $6BF7: $3D
    add [hl]                                      ; $6BF8: $86
    ld h, h                                       ; $6BF9: $64
    ld [bc], a                                    ; $6BFA: $02
    ld d, l                                       ; $6BFB: $55
    ld d, [hl]                                    ; $6BFC: $56
    add d                                         ; $6BFD: $82
    ld h, h                                       ; $6BFE: $64
    ld [de], a                                    ; $6BFF: $12
    ld d, l                                       ; $6C00: $55
    ld h, h                                       ; $6C01: $64
    ld a, a                                       ; $6C02: $7F
    inc hl                                        ; $6C03: $23
    ld l, c                                       ; $6C04: $69
    inc sp                                        ; $6C05: $33
    inc h                                         ; $6C06: $24
    dec h                                         ; $6C07: $25
    inc [hl]                                      ; $6C08: $34
    dec [hl]                                      ; $6C09: $35
    ld a, a                                       ; $6C0A: $7F
    ld d, $69                                     ; $6C0B: $16 $69
    add hl, bc                                    ; $6C0D: $09
    rla                                           ; $6C0E: $17
    jr jr_066_6C1B                                ; $6C0F: $18 $0A

    dec bc                                        ; $6C11: $0B
    add d                                         ; $6C12: $82
    ld a, a                                       ; $6C13: $7F
    add d                                         ; $6C14: $82
    ld l, c                                       ; $6C15: $69
    inc a                                         ; $6C16: $3C
    dec a                                         ; $6C17: $3D
    ld b, [hl]                                    ; $6C18: $46
    dec a                                         ; $6C19: $3D
    ld d, [hl]                                    ; $6C1A: $56

jr_066_6C1B:
    ld b, a                                       ; $6C1B: $47
    ld l, e                                       ; $6C1C: $6B
    ld d, a                                       ; $6C1D: $57
    ld e, b                                       ; $6C1E: $58
    ld c, b                                       ; $6C1F: $48
    ld h, d                                       ; $6C20: $62
    ld h, h                                       ; $6C21: $64
    ld [hl], d                                    ; $6C22: $72
    ld h, e                                       ; $6C23: $63
    ld a, c                                       ; $6C24: $79
    ld [hl], e                                    ; $6C25: $73

jr_066_6C26:
    ld [hl], h                                    ; $6C26: $74
    ld a, c                                       ; $6C27: $79
    ld h, e                                       ; $6C28: $63
    ld [hl], e                                    ; $6C29: $73
    ld [hl], h                                    ; $6C2A: $74
    ld h, d                                       ; $6C2B: $62
    ld c, b                                       ; $6C2C: $48
    ld [hl], d                                    ; $6C2D: $72
    ld h, h                                       ; $6C2E: $64
    dec hl                                        ; $6C2F: $2B
    ld b, a                                       ; $6C30: $47

jr_066_6C31:
    ld e, b                                       ; $6C31: $58
    ld d, a                                       ; $6C32: $57
    ld b, [hl]                                    ; $6C33: $46

jr_066_6C34:
    dec a                                         ; $6C34: $3D
    ld d, [hl]                                    ; $6C35: $56
    dec a                                         ; $6C36: $3D
    ld h, h                                       ; $6C37: $64
    jr c, @+$66                                   ; $6C38: $38 $64

    ld c, b                                       ; $6C3A: $48
    ld h, l                                       ; $6C3B: $65
    ld h, [hl]                                    ; $6C3C: $66
    ld [hl], l                                    ; $6C3D: $75
    halt                                          ; $6C3E: $76
    ld h, l                                       ; $6C3F: $65
    jr c, jr_066_6CB7                             ; $6C40: $38 $75

    ld c, b                                       ; $6C42: $48

jr_066_6C43:
    ld a, c                                       ; $6C43: $79
    ld c, $73                                     ; $6C44: $0E $73
    ld [hl], h                                    ; $6C46: $74
    rrca                                          ; $6C47: $0F
    ld c, $73                                     ; $6C48: $0E $73
    ld [hl], h                                    ; $6C4A: $74
    ld a, c                                       ; $6C4B: $79
    ld c, $73                                     ; $6C4C: $0E $73
    ld [hl], h                                    ; $6C4E: $74
    rrca                                          ; $6C4F: $0F
    ld c, $73                                     ; $6C50: $0E $73
    ld [hl], h                                    ; $6C52: $74
    add d                                         ; $6C53: $82
    ld a, c                                       ; $6C54: $79
    ld l, $73                                     ; $6C55: $2E $73
    ld [hl], h                                    ; $6C57: $74
    dec a                                         ; $6C58: $3D
    ld h, [hl]                                    ; $6C59: $66
    dec a                                         ; $6C5A: $3D
    halt                                          ; $6C5B: $76
    ld h, a                                       ; $6C5C: $67
    ld l, b                                       ; $6C5D: $68
    ld [hl], a                                    ; $6C5E: $77
    ld a, b                                       ; $6C5F: $78
    dec b                                         ; $6C60: $05
    ld h, e                                       ; $6C61: $63
    dec d                                         ; $6C62: $15

jr_066_6C63:
    ld [hl], e                                    ; $6C63: $73
    ld h, h                                       ; $6C64: $64

jr_066_6C65:
    ld h, l                                       ; $6C65: $65
    ld [hl], h                                    ; $6C66: $74
    ld [hl], l                                    ; $6C67: $75
    ld h, h                                       ; $6C68: $64
    ld h, e                                       ; $6C69: $63
    ld [hl], h                                    ; $6C6A: $74
    ld [hl], e                                    ; $6C6B: $73
    ld h, e                                       ; $6C6C: $63
    dec b                                         ; $6C6D: $05
    ld [hl], e                                    ; $6C6E: $73
    dec d                                         ; $6C6F: $15
    ld l, b                                       ; $6C70: $68
    ld h, a                                       ; $6C71: $67

jr_066_6C72:
    ld a, b                                       ; $6C72: $78
    ld [hl], a                                    ; $6C73: $77
    ld h, [hl]                                    ; $6C74: $66
    dec a                                         ; $6C75: $3D
    halt                                          ; $6C76: $76
    dec a                                         ; $6C77: $3D
    ld h, h                                       ; $6C78: $64
    jr c, jr_066_6CDF                             ; $6C79: $38 $64

    ld c, b                                       ; $6C7B: $48
    ld h, c                                       ; $6C7C: $61
    ld l, a                                       ; $6C7D: $6F
    ld h, c                                       ; $6C7E: $61
    ld l, a                                       ; $6C7F: $6F
    ld h, c                                       ; $6C80: $61
    jr c, jr_066_6CE4                             ; $6C81: $38 $61

    ld c, b                                       ; $6C83: $48
    sub h                                         ; $6C84: $94
    ld b, h                                       ; $6C85: $44
    add h                                         ; $6C86: $84
    dec a                                         ; $6C87: $3D
    ld bc, $8703                                  ; $6C88: $01 $03 $87
    dec a                                         ; $6C8B: $3D
    ld [bc], a                                    ; $6C8C: $02

jr_066_6C8D:
    ld [hl], c                                    ; $6C8D: $71
    ld [hl], d                                    ; $6C8E: $72
    add d                                         ; $6C8F: $82
    dec a                                         ; $6C90: $3D
    ld bc, $8871                                  ; $6C91: $01 $71 $88

jr_066_6C94:
    dec a                                         ; $6C94: $3D
    ld bc, $8603                                  ; $6C95: $01 $03 $86
    dec a                                         ; $6C98: $3D
    adc h                                         ; $6C99: $8C
    ld b, h                                       ; $6C9A: $44
    adc c                                         ; $6C9B: $89
    ld a, [bc]                                    ; $6C9C: $0A
    ld b, $2B                                     ; $6C9D: $06 $2B
    ld a, [bc]                                    ; $6C9F: $0A
    dec hl                                        ; $6CA0: $2B
    add hl, hl                                    ; $6CA1: $29
    add hl, bc                                    ; $6CA2: $09
    add hl, hl                                    ; $6CA3: $29
    add d                                         ; $6CA4: $82
    add hl, bc                                    ; $6CA5: $09
    inc bc                                        ; $6CA6: $03
    dec bc                                        ; $6CA7: $0B
    add hl, bc                                    ; $6CA8: $09
    dec bc                                        ; $6CA9: $0B
    add h                                         ; $6CAA: $84
    ld a, [bc]                                    ; $6CAB: $0A
    add d                                         ; $6CAC: $82
    jr nz, jr_066_6C31                            ; $6CAD: $20 $82

jr_066_6CAF:
    nop                                           ; $6CAF: $00
    add e                                         ; $6CB0: $83
    jr nz, jr_066_6CB6                            ; $6CB1: $20 $03

    nop                                           ; $6CB3: $00
    jr nz, jr_066_6CD6                            ; $6CB4: $20 $20

jr_066_6CB6:
    add d                                         ; $6CB6: $82

jr_066_6CB7:
    nop                                           ; $6CB7: $00
    add e                                         ; $6CB8: $83
    jr nz, jr_066_6CBC                            ; $6CB9: $20 $01

    nop                                           ; $6CBB: $00

jr_066_6CBC:
    adc b                                         ; $6CBC: $88
    jr nz, jr_066_6C43                            ; $6CBD: $20 $84

    ld a, [bc]                                    ; $6CBF: $0A
    add d                                         ; $6CC0: $82
    jr nz, @-$7C                                  ; $6CC1: $20 $82

    add hl, bc                                    ; $6CC3: $09
    add d                                         ; $6CC4: $82
    jr nz, jr_066_6CCD                            ; $6CC5: $20 $06

jr_066_6CC7:
    add hl, bc                                    ; $6CC7: $09
    jr nz, jr_066_6CCA                            ; $6CC8: $20 $00

jr_066_6CCA:
    ld bc, $0105                                  ; $6CCA: $01 $05 $01

jr_066_6CCD:
    adc h                                         ; $6CCD: $8C
    ld a, [bc]                                    ; $6CCE: $0A
    add d                                         ; $6CCF: $82

jr_066_6CD0:
    add hl, hl                                    ; $6CD0: $29
    add hl, bc                                    ; $6CD1: $09
    dec hl                                        ; $6CD2: $2B
    dec bc                                        ; $6CD3: $0B
    add hl, bc                                    ; $6CD4: $09
    ld a, [bc]                                    ; $6CD5: $0A

jr_066_6CD6:
    dec bc                                        ; $6CD6: $0B
    ld a, [bc]                                    ; $6CD7: $0A
    jr nz, jr_066_6CDA                            ; $6CD8: $20 $00

jr_066_6CDA:
    jr nz, jr_066_6C65                            ; $6CDA: $20 $89

    nop                                           ; $6CDC: $00
    ld [bc], a                                    ; $6CDD: $02
    inc bc                                        ; $6CDE: $03

jr_066_6CDF:
    jr nz, jr_066_6C63                            ; $6CDF: $20 $82

    dec b                                         ; $6CE1: $05
    inc b                                         ; $6CE2: $04
    inc hl                                        ; $6CE3: $23

jr_066_6CE4:
    nop                                           ; $6CE4: $00
    dec h                                         ; $6CE5: $25
    nop                                           ; $6CE6: $00
    adc h                                         ; $6CE7: $8C
    jr nz, jr_066_6C72                            ; $6CE8: $20 $88

    add hl, bc                                    ; $6CEA: $09
    inc b                                         ; $6CEB: $04
    ld b, l                                       ; $6CEC: $45
    dec b                                         ; $6CED: $05
    ld b, l                                       ; $6CEE: $45
    dec b                                         ; $6CEF: $05
    add h                                         ; $6CF0: $84
    ld a, [bc]                                    ; $6CF1: $0A
    inc bc                                        ; $6CF2: $03
    ld hl, $2420                                  ; $6CF3: $21 $20 $24
    add l                                         ; $6CF6: $85
    jr nz, jr_066_6CFC                            ; $6CF7: $20 $03

    ld hl, $2120                                  ; $6CF9: $21 $20 $21

jr_066_6CFC:
    add h                                         ; $6CFC: $84
    dec h                                         ; $6CFD: $25
    inc b                                         ; $6CFE: $04
    ld [hl+], a                                   ; $6CFF: $22

jr_066_6D00:
    jr nz, jr_066_6D02                            ; $6D00: $20 $00

jr_066_6D02:
    jr nz, jr_066_6C8D                            ; $6D02: $20 $89

    nop                                           ; $6D04: $00
    ld [$2505], sp                                ; $6D05: $08 $05 $25
    dec b                                         ; $6D08: $05
    ld [bc], a                                    ; $6D09: $02
    dec h                                         ; $6D0A: $25
    nop                                           ; $6D0B: $00
    dec h                                         ; $6D0C: $25
    nop                                           ; $6D0D: $00
    sub b                                         ; $6D0E: $90
    jr nz, jr_066_6C94                            ; $6D0F: $20 $83

    add hl, hl                                    ; $6D11: $29
    dec b                                         ; $6D12: $05
    add hl, bc                                    ; $6D13: $09
    dec b                                         ; $6D14: $05
    dec b                                         ; $6D15: $05
    ld [$8421], sp                                ; $6D16: $08 $21 $84
    ld a, [bc]                                    ; $6D19: $0A
    adc b                                         ; $6D1A: $88
    jr nz, jr_066_6D20                            ; $6D1B: $20 $03

    dec h                                         ; $6D1D: $25
    ld h, l                                       ; $6D1E: $65
    dec h                                         ; $6D1F: $25

jr_066_6D20:
    add d                                         ; $6D20: $82
    ld h, l                                       ; $6D21: $65
    ld b, $22                                     ; $6D22: $06 $22
    dec h                                         ; $6D24: $25
    dec h                                         ; $6D25: $25
    jr nz, jr_066_6D28                            ; $6D26: $20 $00

jr_066_6D28:
    jr nz, jr_066_6CAF                            ; $6D28: $20 $85

    nop                                           ; $6D2A: $00
    ld [bc], a                                    ; $6D2B: $02
    inc bc                                        ; $6D2C: $03
    inc hl                                        ; $6D2D: $23
    add d                                         ; $6D2E: $82
    ld a, [bc]                                    ; $6D2F: $0A
    ld [bc], a                                    ; $6D30: $02
    dec b                                         ; $6D31: $05
    dec h                                         ; $6D32: $25
    add d                                         ; $6D33: $82
    ld a, [bc]                                    ; $6D34: $0A
    ld [bc], a                                    ; $6D35: $02
    dec h                                         ; $6D36: $25
    inc hl                                        ; $6D37: $23
    add d                                         ; $6D38: $82
    ld a, [bc]                                    ; $6D39: $0A
    add d                                         ; $6D3A: $82
    inc hl                                        ; $6D3B: $23
    add d                                         ; $6D3C: $82

jr_066_6D3D:
    ld a, [bc]                                    ; $6D3D: $0A
    adc b                                         ; $6D3E: $88
    jr nz, jr_066_6CC7                            ; $6D3F: $20 $86

    add hl, bc                                    ; $6D41: $09
    add d                                         ; $6D42: $82
    jr nz, jr_066_6CC7                            ; $6D43: $20 $82

    dec b                                         ; $6D45: $05
    ld [bc], a                                    ; $6D46: $02
    ld [bc], a                                    ; $6D47: $02
    dec b                                         ; $6D48: $05
    add h                                         ; $6D49: $84
    ld a, [bc]                                    ; $6D4A: $0A
    adc b                                         ; $6D4B: $88
    jr nz, jr_066_6CD0                            ; $6D4C: $20 $82

    dec h                                         ; $6D4E: $25
    ld [bc], a                                    ; $6D4F: $02
    ld hl, $8508                                  ; $6D50: $21 $08 $85
    jr nz, @+$04                                  ; $6D53: $20 $02

    nop                                           ; $6D55: $00
    jr nz, jr_066_6CDA                            ; $6D56: $20 $82

    nop                                           ; $6D58: $00
    inc bc                                        ; $6D59: $03

jr_066_6D5A:
    ld bc, $0100                                  ; $6D5A: $01 $00 $01
    add l                                         ; $6D5D: $85
    dec c                                         ; $6D5E: $0D
    inc bc                                        ; $6D5F: $03
    jr nz, jr_066_6D6F                            ; $6D60: $20 $0D

    jr nz, @-$79                                  ; $6D62: $20 $85

    dec c                                         ; $6D64: $0D

jr_066_6D65:
    ld b, $20                                     ; $6D65: $06 $20
    dec c                                         ; $6D67: $0D
    jr nz, jr_066_6D8B                            ; $6D68: $20 $21

    jr nz, jr_066_6D8D                            ; $6D6A: $20 $21

    adc b                                         ; $6D6C: $88
    jr nz, jr_066_6D72                            ; $6D6D: $20 $03

jr_066_6D6F:
    add hl, hl                                    ; $6D6F: $29
    jr nz, @+$22                                  ; $6D70: $20 $20

jr_066_6D72:
    add d                                         ; $6D72: $82
    add hl, hl                                    ; $6D73: $29

jr_066_6D74:
    ld [bc], a                                    ; $6D74: $02
    ld [bc], a                                    ; $6D75: $02
    ld b, l                                       ; $6D76: $45
    add d                                         ; $6D77: $82
    dec b                                         ; $6D78: $05
    add h                                         ; $6D79: $84

jr_066_6D7A:
    ld a, [bc]                                    ; $6D7A: $0A
    add d                                         ; $6D7B: $82
    jr nz, jr_066_6D00                            ; $6D7C: $20 $82

jr_066_6D7E:
    nop                                           ; $6D7E: $00
    add e                                         ; $6D7F: $83
    jr nz, @+$07                                  ; $6D80: $20 $05

    nop                                           ; $6D82: $00
    jr nz, jr_066_6DA5                            ; $6D83: $20 $20

    nop                                           ; $6D85: $00
    ld bc, $2083                                  ; $6D86: $01 $83 $20
    inc bc                                        ; $6D89: $03

jr_066_6D8A:
    nop                                           ; $6D8A: $00

jr_066_6D8B:
    jr nz, jr_066_6DCD                            ; $6D8B: $20 $40

jr_066_6D8D:
    add e                                         ; $6D8D: $83
    nop                                           ; $6D8E: $00
    add e                                         ; $6D8F: $83

jr_066_6D90:
    ld bc, $0D82                                  ; $6D90: $01 $82 $0D
    add d                                         ; $6D93: $82
    jr nz, jr_066_6D97                            ; $6D94: $20 $01

    dec l                                         ; $6D96: $2D

jr_066_6D97:
    add e                                         ; $6D97: $83
    jr nz, @-$7C                                  ; $6D98: $20 $82

    dec c                                         ; $6D9A: $0D
    add d                                         ; $6D9B: $82
    jr nz, jr_066_6D9F                            ; $6D9C: $20 $01

    dec l                                         ; $6D9E: $2D

jr_066_6D9F:
    add e                                         ; $6D9F: $83
    jr nz, @+$04                                  ; $6DA0: $20 $02

    ld hl, $8220                                  ; $6DA2: $21 $20 $82

jr_066_6DA5:
    ld hl, $2083                                  ; $6DA5: $21 $83 $20
    ld bc, $8808                                  ; $6DA8: $01 $08 $88
    add hl, hl                                    ; $6DAB: $29
    add h                                         ; $6DAC: $84

jr_066_6DAD:
    nop                                           ; $6DAD: $00
    inc bc                                        ; $6DAE: $03
    jr nz, jr_066_6DB1                            ; $6DAF: $20 $00

jr_066_6DB1:
    jr nz, jr_066_6D3D                            ; $6DB1: $20 $8A

    nop                                           ; $6DB3: $00
    add e                                         ; $6DB4: $83
    ld bc, $2003                                  ; $6DB5: $01 $03 $20
    nop                                           ; $6DB8: $00
    ld hl, $0082                                  ; $6DB9: $21 $82 $00
    inc bc                                        ; $6DBC: $03
    ld b, c                                       ; $6DBD: $41
    nop                                           ; $6DBE: $00
    nop                                           ; $6DBF: $00
    add d                                         ; $6DC0: $82
    ld bc, $0382                                  ; $6DC1: $01 $82 $03
    sub b                                         ; $6DC4: $90
    ld a, [bc]                                    ; $6DC5: $0A
    add d                                         ; $6DC6: $82
    ld hl, $2382                                  ; $6DC7: $21 $82 $23
    ld bc, $8321                                  ; $6DCA: $01 $21 $83

jr_066_6DCD:
    jr nz, @-$7C                                  ; $6DCD: $20 $82

    add hl, bc                                    ; $6DCF: $09
    ld [bc], a                                    ; $6DD0: $02
    add hl, hl                                    ; $6DD1: $29
    add hl, bc                                    ; $6DD2: $09
    add h                                         ; $6DD3: $84
    jr nz, jr_066_6D5A                            ; $6DD4: $20 $84

    ld a, [bc]                                    ; $6DD6: $0A
    inc bc                                        ; $6DD7: $03
    jr nz, jr_066_6DDA                            ; $6DD8: $20 $00

jr_066_6DDA:
    jr nz, jr_066_6D65                            ; $6DDA: $20 $89

    nop                                           ; $6DDC: $00
    ld [bc], a                                    ; $6DDD: $02

jr_066_6DDE:
    ld bc, $8221                                  ; $6DDE: $01 $21 $82
    ld bc, $2103                                  ; $6DE1: $01 $03 $21
    nop                                           ; $6DE4: $00
    ld hl, $0082                                  ; $6DE5: $21 $82 $00
    ld [bc], a                                    ; $6DE8: $02
    inc bc                                        ; $6DE9: $03
    nop                                           ; $6DEA: $00
    add d                                         ; $6DEB: $82
    inc bc                                        ; $6DEC: $03
    add e                                         ; $6DED: $83
    ld a, [bc]                                    ; $6DEE: $0A
    add d                                         ; $6DEF: $82
    jr nz, jr_066_6D74                            ; $6DF0: $20 $82

    add hl, hl                                    ; $6DF2: $29
    add h                                         ; $6DF3: $84
    ld a, [bc]                                    ; $6DF4: $0A
    add d                                         ; $6DF5: $82
    jr nz, jr_066_6D7A                            ; $6DF6: $20 $82

    add hl, bc                                    ; $6DF8: $09
    add d                                         ; $6DF9: $82
    jr nz, jr_066_6D7E                            ; $6DFA: $20 $82

jr_066_6DFC:
    add hl, bc                                    ; $6DFC: $09
    ld [bc], a                                    ; $6DFD: $02
    ld a, [bc]                                    ; $6DFE: $0A
    inc hl                                        ; $6DFF: $23
    add d                                         ; $6E00: $82
    ld a, [bc]                                    ; $6E01: $0A
    inc b                                         ; $6E02: $04
    inc hl                                        ; $6E03: $23
    jr nz, jr_066_6E29                            ; $6E04: $20 $23

    jr nz, jr_066_6D8A                            ; $6E06: $20 $82

jr_066_6E08:
    add hl, hl                                    ; $6E08: $29
    add d                                         ; $6E09: $82
    jr nz, jr_066_6D90                            ; $6E0A: $20 $84

    add hl, hl                                    ; $6E0C: $29
    add h                                         ; $6E0D: $84
    ld a, [bc]                                    ; $6E0E: $0A
    inc bc                                        ; $6E0F: $03
    jr nz, jr_066_6E12                            ; $6E10: $20 $00

jr_066_6E12:
    jr nz, @-$79                                  ; $6E12: $20 $85

    nop                                           ; $6E14: $00
    ld [bc], a                                    ; $6E15: $02
    inc bc                                        ; $6E16: $03
    inc hl                                        ; $6E17: $23
    add d                                         ; $6E18: $82
    ld a, [bc]                                    ; $6E19: $0A
    add d                                         ; $6E1A: $82
    inc hl                                        ; $6E1B: $23
    add d                                         ; $6E1C: $82
    ld a, [bc]                                    ; $6E1D: $0A
    add d                                         ; $6E1E: $82
    inc hl                                        ; $6E1F: $23

jr_066_6E20:
    add d                                         ; $6E20: $82
    ld a, [bc]                                    ; $6E21: $0A
    ld bc, $8303                                  ; $6E22: $01 $03 $83
    ld a, [bc]                                    ; $6E25: $0A
    add l                                         ; $6E26: $85
    add hl, hl                                    ; $6E27: $29
    add l                                         ; $6E28: $85

jr_066_6E29:
    jr nz, jr_066_6DAD                            ; $6E29: $20 $82

    add hl, bc                                    ; $6E2B: $09
    add l                                         ; $6E2C: $85
    jr nz, jr_066_6E32                            ; $6E2D: $20 $03

jr_066_6E2F:
    add hl, bc                                    ; $6E2F: $09
    jr nz, jr_066_6E52                            ; $6E30: $20 $20

jr_066_6E32:
    add h                                         ; $6E32: $84
    add hl, bc                                    ; $6E33: $09
    ld [bc], a                                    ; $6E34: $02
    ld a, [bc]                                    ; $6E35: $0A
    inc hl                                        ; $6E36: $23
    add d                                         ; $6E37: $82
    ld a, [bc]                                    ; $6E38: $0A
    inc bc                                        ; $6E39: $03
    add hl, hl                                    ; $6E3A: $29
    add hl, bc                                    ; $6E3B: $09
    add hl, hl                                    ; $6E3C: $29
    add d                                         ; $6E3D: $82
    add hl, bc                                    ; $6E3E: $09

jr_066_6E3F:
    inc bc                                        ; $6E3F: $03
    dec bc                                        ; $6E40: $0B
    add hl, bc                                    ; $6E41: $09
    add hl, bc                                    ; $6E42: $09
    add h                                         ; $6E43: $84
    ld a, [bc]                                    ; $6E44: $0A
    inc bc                                        ; $6E45: $03
    jr nz, jr_066_6E88                            ; $6E46: $20 $40

    jr nz, @-$7C                                  ; $6E48: $20 $82

    nop                                           ; $6E4A: $00
    inc bc                                        ; $6E4B: $03
    ld bc, $0400                                  ; $6E4C: $01 $00 $04
    sub b                                         ; $6E4F: $90
    ld a, [bc]                                    ; $6E50: $0A
    ld [bc], a                                    ; $6E51: $02

jr_066_6E52:
    add hl, hl                                    ; $6E52: $29
    add hl, bc                                    ; $6E53: $09
    add d                                         ; $6E54: $82
    add hl, hl                                    ; $6E55: $29
    add d                                         ; $6E56: $82
    jr nz, @+$04                                  ; $6E57: $20 $02

    add hl, hl                                    ; $6E59: $29
    jr nz, jr_066_6DDE                            ; $6E5A: $20 $82

    add hl, bc                                    ; $6E5C: $09
    adc c                                         ; $6E5D: $89
    jr nz, jr_066_6E62                            ; $6E5E: $20 $02

    add hl, bc                                    ; $6E60: $09
    add hl, hl                                    ; $6E61: $29

jr_066_6E62:
    add e                                         ; $6E62: $83
    add hl, bc                                    ; $6E63: $09
    add h                                         ; $6E64: $84
    ld a, [bc]                                    ; $6E65: $0A
    inc b                                         ; $6E66: $04
    add hl, hl                                    ; $6E67: $29
    add hl, bc                                    ; $6E68: $09
    ld l, c                                       ; $6E69: $69
    ld c, c                                       ; $6E6A: $49
    add d                                         ; $6E6B: $82
    add hl, bc                                    ; $6E6C: $09
    ld [bc], a                                    ; $6E6D: $02
    ld c, c                                       ; $6E6E: $49
    dec hl                                        ; $6E6F: $2B
    add h                                         ; $6E70: $84
    ld a, [bc]                                    ; $6E71: $0A
    inc bc                                        ; $6E72: $03

jr_066_6E73:
    jr nz, jr_066_6E75                            ; $6E73: $20 $00

jr_066_6E75:
    jr nz, jr_066_6DFC                            ; $6E75: $20 $85

    nop                                           ; $6E77: $00
    add d                                         ; $6E78: $82
    inc bc                                        ; $6E79: $03
    add d                                         ; $6E7A: $82
    nop                                           ; $6E7B: $00
    add d                                         ; $6E7C: $82
    inc bc                                        ; $6E7D: $03
    add d                                         ; $6E7E: $82
    inc b                                         ; $6E7F: $04
    inc b                                         ; $6E80: $04
    inc hl                                        ; $6E81: $23
    inc bc                                        ; $6E82: $03
    inc h                                         ; $6E83: $24
    jr nz, jr_066_6E08                            ; $6E84: $20 $82

    inc bc                                        ; $6E86: $03
    ld [bc], a                                    ; $6E87: $02

jr_066_6E88:
    jr nz, jr_066_6E94                            ; $6E88: $20 $0A

    add d                                         ; $6E8A: $82

jr_066_6E8B:
    add hl, hl                                    ; $6E8B: $29
    ld bc, $8620                                  ; $6E8C: $01 $20 $86
    add hl, hl                                    ; $6E8F: $29
    inc b                                         ; $6E90: $04
    jr nz, @+$2B                                  ; $6E91: $20 $29

    add hl, hl                                    ; $6E93: $29

jr_066_6E94:
    jr nz, jr_066_6E20                            ; $6E94: $20 $8A

    add hl, bc                                    ; $6E96: $09
    dec b                                         ; $6E97: $05
    jr nz, jr_066_6EBD                            ; $6E98: $20 $23

    inc bc                                        ; $6E9A: $03
    ld a, [bc]                                    ; $6E9B: $0A
    nop                                           ; $6E9C: $00
    add d                                         ; $6E9D: $82
    inc bc                                        ; $6E9E: $03
    add d                                         ; $6E9F: $82
    inc b                                         ; $6EA0: $04
    ld [$0323], sp                                ; $6EA1: $08 $23 $03
    inc h                                         ; $6EA4: $24
    nop                                           ; $6EA5: $00
    inc bc                                        ; $6EA6: $03
    inc hl                                        ; $6EA7: $23
    nop                                           ; $6EA8: $00
    jr nz, jr_066_6E2F                            ; $6EA9: $20 $84

jr_066_6EAB:
    ld a, [bc]                                    ; $6EAB: $0A
    ld bc, $8700                                  ; $6EAC: $01 $00 $87
    jr nz, jr_066_6EB3                            ; $6EAF: $20 $02

    inc b                                         ; $6EB1: $04
    nop                                           ; $6EB2: $00

jr_066_6EB3:
    add d                                         ; $6EB3: $82
    jr nz, jr_066_6EB7                            ; $6EB4: $20 $01

    inc h                                         ; $6EB6: $24

jr_066_6EB7:
    add h                                         ; $6EB7: $84
    jr nz, @+$04                                  ; $6EB8: $20 $02

    inc hl                                        ; $6EBA: $23
    jr nz, jr_066_6E3F                            ; $6EBB: $20 $82

jr_066_6EBD:
    inc hl                                        ; $6EBD: $23
    dec b                                         ; $6EBE: $05
    ld a, [bc]                                    ; $6EBF: $0A
    inc hl                                        ; $6EC0: $23
    inc hl                                        ; $6EC1: $23
    jr nz, jr_066_6EED                            ; $6EC2: $20 $29

    add d                                         ; $6EC4: $82
    jr nz, @-$7C                                  ; $6EC5: $20 $82

    add hl, hl                                    ; $6EC7: $29
    add d                                         ; $6EC8: $82
    jr nz, @-$7C                                  ; $6EC9: $20 $82

    add hl, bc                                    ; $6ECB: $09
    add d                                         ; $6ECC: $82
    jr nz, jr_066_6ED0                            ; $6ECD: $20 $01

    add hl, bc                                    ; $6ECF: $09

jr_066_6ED0:
    add e                                         ; $6ED0: $83
    jr nz, jr_066_6ED4                            ; $6ED1: $20 $01

    ld a, [bc]                                    ; $6ED3: $0A

jr_066_6ED4:
    add h                                         ; $6ED4: $84
    inc bc                                        ; $6ED5: $03
    dec b                                         ; $6ED6: $05
    nop                                           ; $6ED7: $00
    inc bc                                        ; $6ED8: $03
    jr nz, jr_066_6EDF                            ; $6ED9: $20 $04

    nop                                           ; $6EDB: $00
    add d                                         ; $6EDC: $82
    jr nz, jr_066_6EE0                            ; $6EDD: $20 $01

jr_066_6EDF:
    inc h                                         ; $6EDF: $24

jr_066_6EE0:
    add a                                         ; $6EE0: $87
    jr nz, jr_066_6E73                            ; $6EE1: $20 $90

    ld a, [bc]                                    ; $6EE3: $0A
    add a                                         ; $6EE4: $87
    jr nz, jr_066_6EF0                            ; $6EE5: $20 $09

    nop                                           ; $6EE7: $00
    jr nz, jr_066_6F0D                            ; $6EE8: $20 $23

    nop                                           ; $6EEA: $00
    inc hl                                        ; $6EEB: $23
    ld a, [bc]                                    ; $6EEC: $0A

jr_066_6EED:
    dec bc                                        ; $6EED: $0B
    dec hl                                        ; $6EEE: $2B
    add hl, bc                                    ; $6EEF: $09

jr_066_6EF0:
    add d                                         ; $6EF0: $82

jr_066_6EF1:
    dec bc                                        ; $6EF1: $0B
    add d                                         ; $6EF2: $82
    add hl, bc                                    ; $6EF3: $09
    add d                                         ; $6EF4: $82
    dec bc                                        ; $6EF5: $0B
    dec bc                                        ; $6EF6: $0B
    add hl, bc                                    ; $6EF7: $09
    add hl, hl                                    ; $6EF8: $29
    dec hl                                        ; $6EF9: $2B
    ld a, [bc]                                    ; $6EFA: $0A
    add hl, hl                                    ; $6EFB: $29
    dec bc                                        ; $6EFC: $0B
    inc bc                                        ; $6EFD: $03
    nop                                           ; $6EFE: $00
    inc bc                                        ; $6EFF: $03
    jr nz, jr_066_6F02                            ; $6F00: $20 $00

jr_066_6F02:
    add e                                         ; $6F02: $83
    jr nz, jr_066_6E8B                            ; $6F03: $20 $86

    ld a, [bc]                                    ; $6F05: $0A
    ld [bc], a                                    ; $6F06: $02
    dec bc                                        ; $6F07: $0B
    dec hl                                        ; $6F08: $2B
    add d                                         ; $6F09: $82
    ld a, [bc]                                    ; $6F0A: $0A
    inc b                                         ; $6F0B: $04
    dec hl                                        ; $6F0C: $2B

jr_066_6F0D:
    ld a, [bc]                                    ; $6F0D: $0A
    dec bc                                        ; $6F0E: $0B
    ld c, $82                                     ; $6F0F: $0E $82
    add hl, bc                                    ; $6F11: $09
    add d                                         ; $6F12: $82
    ld a, [bc]                                    ; $6F13: $0A
    add d                                         ; $6F14: $82
    ld c, $05                                     ; $6F15: $0E $05
    dec bc                                        ; $6F17: $0B
    ld c, $09                                     ; $6F18: $0E $09
    ld c, $0A                                     ; $6F1A: $0E $0A
    add d                                         ; $6F1C: $82
    ld c, $03                                     ; $6F1D: $0E $03
    add hl, bc                                    ; $6F1F: $09
    dec bc                                        ; $6F20: $0B
    dec bc                                        ; $6F21: $0B
    add d                                         ; $6F22: $82
    add hl, bc                                    ; $6F23: $09
    inc bc                                        ; $6F24: $03
    jr nz, jr_066_6F67                            ; $6F25: $20 $40

    jr nz, jr_066_6EAB                            ; $6F27: $20 $82

    nop                                           ; $6F29: $00
    rlca                                          ; $6F2A: $07

jr_066_6F2B:
    ld bc, $0400                                  ; $6F2B: $01 $00 $04
    dec hl                                        ; $6F2E: $2B
    add hl, bc                                    ; $6F2F: $09
    ld a, [bc]                                    ; $6F30: $0A
    dec bc                                        ; $6F31: $0B
    add d                                         ; $6F32: $82
    add hl, bc                                    ; $6F33: $09
    add d                                         ; $6F34: $82
    dec bc                                        ; $6F35: $0B
    ld [bc], a                                    ; $6F36: $02
    add hl, bc                                    ; $6F37: $09
    add hl, hl                                    ; $6F38: $29
    add d                                         ; $6F39: $82
    dec bc                                        ; $6F3A: $0B
    rlca                                          ; $6F3B: $07
    add hl, hl                                    ; $6F3C: $29
    dec bc                                        ; $6F3D: $0B
    dec hl                                        ; $6F3E: $2B
    ld a, [bc]                                    ; $6F3F: $0A
    ld hl, $2420                                  ; $6F40: $21 $20 $24
    add l                                         ; $6F43: $85
    jr nz, jr_066_6F4A                            ; $6F44: $20 $04

    ld a, [bc]                                    ; $6F46: $0A
    dec hl                                        ; $6F47: $2B
    ld a, [bc]                                    ; $6F48: $0A
    dec hl                                        ; $6F49: $2B

jr_066_6F4A:
    add h                                         ; $6F4A: $84
    add hl, bc                                    ; $6F4B: $09
    inc b                                         ; $6F4C: $04
    add hl, hl                                    ; $6F4D: $29
    dec bc                                        ; $6F4E: $0B
    add hl, hl                                    ; $6F4F: $29
    dec bc                                        ; $6F50: $0B
    add d                                         ; $6F51: $82
    add hl, bc                                    ; $6F52: $09
    add d                                         ; $6F53: $82
    dec bc                                        ; $6F54: $0B
    ld [bc], a                                    ; $6F55: $02
    add hl, bc                                    ; $6F56: $09
    add hl, hl                                    ; $6F57: $29
    add d                                         ; $6F58: $82
    dec bc                                        ; $6F59: $0B
    add d                                         ; $6F5A: $82
    add hl, bc                                    ; $6F5B: $09
    add d                                         ; $6F5C: $82
    dec bc                                        ; $6F5D: $0B
    ld [bc], a                                    ; $6F5E: $02
    add hl, bc                                    ; $6F5F: $09
    add hl, hl                                    ; $6F60: $29
    add d                                         ; $6F61: $82
    dec bc                                        ; $6F62: $0B
    add d                                         ; $6F63: $82
    add hl, bc                                    ; $6F64: $09
    add d                                         ; $6F65: $82
    dec bc                                        ; $6F66: $0B

jr_066_6F67:
    inc bc                                        ; $6F67: $03
    jr nz, jr_066_6F6A                            ; $6F68: $20 $00

jr_066_6F6A:
    jr nz, jr_066_6EF1                            ; $6F6A: $20 $85

    nop                                           ; $6F6C: $00
    add d                                         ; $6F6D: $82
    inc bc                                        ; $6F6E: $03
    add d                                         ; $6F6F: $82
    nop                                           ; $6F70: $00
    add d                                         ; $6F71: $82
    inc bc                                        ; $6F72: $03
    add d                                         ; $6F73: $82
    inc b                                         ; $6F74: $04
    rlca                                          ; $6F75: $07
    inc hl                                        ; $6F76: $23
    inc bc                                        ; $6F77: $03
    inc h                                         ; $6F78: $24
    nop                                           ; $6F79: $00
    inc bc                                        ; $6F7A: $03
    inc hl                                        ; $6F7B: $23
    nop                                           ; $6F7C: $00
    adc c                                         ; $6F7D: $89
    jr nz, jr_066_6F87                            ; $6F7E: $20 $07

    ld a, [bc]                                    ; $6F80: $0A
    dec hl                                        ; $6F81: $2B
    ld a, [bc]                                    ; $6F82: $0A
    dec hl                                        ; $6F83: $2B
    ld l, c                                       ; $6F84: $69
    ld c, c                                       ; $6F85: $49
    ld l, c                                       ; $6F86: $69

jr_066_6F87:
    add d                                         ; $6F87: $82
    ld c, c                                       ; $6F88: $49
    inc bc                                        ; $6F89: $03
    dec bc                                        ; $6F8A: $0B
    ld c, c                                       ; $6F8B: $49
    dec bc                                        ; $6F8C: $0B
    sub h                                         ; $6F8D: $94
    ld a, [bc]                                    ; $6F8E: $0A
    add h                                         ; $6F8F: $84
    jr nz, jr_066_6F93                            ; $6F90: $20 $01

    nop                                           ; $6F92: $00

jr_066_6F93:
    add a                                         ; $6F93: $87
    jr nz, jr_066_6F98                            ; $6F94: $20 $02

    inc b                                         ; $6F96: $04
    nop                                           ; $6F97: $00

jr_066_6F98:
    add d                                         ; $6F98: $82
    jr nz, jr_066_6F9C                            ; $6F99: $20 $01

    inc h                                         ; $6F9B: $24

jr_066_6F9C:
    adc a                                         ; $6F9C: $8F
    jr nz, jr_066_6F2B                            ; $6F9D: $20 $8C

    ld a, [bc]                                    ; $6F9F: $0A
    nop                                           ; $6FA0: $00

    db $84, $EE, $03, $FE, $3D, $FE, $82, $2D, $2D, $FE, $3D, $FE, $3C, $3B, $2C, $EE
    db $3B, $3C, $EE, $2C, $00, $01, $10, $11, $05, $04, $15, $14, $01, $00, $11, $10
    db $29, $2A, $39, $3A, $2A, $29, $3A, $39, $27, $28, $37, $1F, $28, $27, $1F, $37
    db $00, $01, $10, $11, $08, $09, $82, $FF, $02, $09, $08, $82, $FF, $04, $01, $00
    db $11, $10, $84, $FE, $84, $80, $82, $FE, $21, $2E, $3E, $2C, $EE, $3C, $3B, $EE
    db $2C, $3B, $3C, $02, $03, $12, $13, $04, $05, $14, $15, $03, $02, $13, $12, $0A
    db $0B, $1A, $1B, $0B, $0A, $1B, $1A, $EE, $2A, $EE, $82, $3A, $07, $EE, $2A, $EE
    db $02, $03, $12, $13, $82, $FF, $02, $0A, $0B, $82, $FF, $09, $0B, $0A, $03, $02
    db $13, $12, $EE, $48, $EE, $82, $58, $05, $EE, $48, $EE, $3E, $2E, $82, $FE, $84
    db $80, $02, $31, $0F, $82, $EE, $02, $0F, $31, $82, $EE, $28, $22, $23, $32, $26
    db $23, $22, $EE, $32, $0C, $0D, $1C, $1D, $0D, $0C, $1D, $1C, $EE, $47, $EE, $57
    db $47, $EE, $57, $EE, $04, $05, $14, $15, $0C, $0D, $1C, $1D, $0D, $0C, $1D, $1C
    db $05, $04, $1D, $14, $82, $EE, $02, $4A, $4B, $82, $EE, $25, $5A, $5B, $44, $45
    db $54, $53, $45, $44, $52, $54, $46, $47, $56, $51, $47, $46, $50, $56, $0E, $36
    db $1E, $1F, $26, $0E, $1F, $1E, $24, $33, $34, $1B, $33, $24, $1B, $34, $EE, $57
    db $EE, $82, $57, $15, $EE, $57, $EE, $0E, $0F, $1E, $1F, $2B, $2C, $3B, $EF, $2C
    db $2B, $EF, $3B, $0F, $0E, $1F, $1E, $4B, $4A, $82, $EE, $02, $5B, $5A, $82, $EE
    db $1A, $54, $53, $44, $45, $52, $54, $45, $44, $56, $51, $46, $47, $50, $56, $47
    db $46, $20, $21, $30, $EE, $21, $20, $26, $30, $35, $25, $82, $FE, $02, $25, $35
    db $82, $FE, $82, $EE, $19, $60, $61, $60, $61, $70, $71, $20, $21, $30, $31, $3B
    db $EF, $2B, $2C, $EF, $3B, $2C, $2B, $21, $20, $31, $30, $EE, $49, $EE, $82, $59
    db $02, $EE, $49, $82, $EE, $21, $4F, $5E, $5F, $4F, $EE, $5F, $5E, $EE, $4D, $5C
    db $5D, $4D, $EE, $5D, $5C, $27, $28, $37, $38, $28, $27, $38, $37, $06, $07, $60
    db $61, $08, $09, $60, $61, $72, $73, $82, $EE, $2E, $62, $63, $70, $71, $22, $23
    db $32, $33, $24, $25, $34, $35, $24, $25, $34, $35, $23, $22, $33, $32, $40, $55
    db $57, $42, $55, $41, $43, $57, $5E, $5F, $EE, $4F, $5F, $5E, $4F, $EE, $5C, $5D
    db $EE, $4D, $5D, $5C, $4D, $EE, $36, $26, $84, $EE, $0A, $36, $26, $72, $73, $16
    db $17, $72, $73, $18, $19, $82, $EE, $28, $29, $39, $62, $63, $72, $73, $FF, $13
    db $09, $05, $13, $FF, $05, $09, $16, $17, $06, $07, $17, $16, $07, $06, $57, $52
    db $50, $55, $53, $57, $55, $51, $42, $43, $52, $53, $40, $41, $50, $51, $2F, $3F
    db $82, $EE, $02, $3F, $2F, $82, $EE, $0B, $6E, $6F, $7E, $7F, $6F, $6E, $7F, $7E
    db $EE, $38, $EE, $82, $38, $02, $EE, $38, $83, $EE, $02, $39, $29, $84, $EE, $10
    db $09, $05, $FF, $13, $05, $09, $13, $FF, $06, $07, $16, $17, $07, $06, $17, $16
    db $82, $EE, $02, $60, $61, $82, $EE, $0E, $62, $EE, $65, $66, $75, $76, $EE, $3E
    db $3D, $FE, $3E, $EE, $FE, $3D, $82, $EE, $0A, $2F, $3F, $CC, $CD, $DC, $DD, $CD
    db $CC, $DD, $DC, $82, $FE, $02, $35, $25, $82, $FE, $02, $25, $35, $84, $80, $84
    db $FF, $03, $03, $FF, $03, $82, $FF, $03, $03, $FF, $03, $83, $FF, $29, $13, $FF
    db $FF, $13, $FF, $70, $71, $63, $64, $72, $EE, $73, $EE, $67, $68, $77, $78, $3D
    db $FE, $EE, $3E, $FE, $3D, $3E, $EE, $FE, $E7, $FE, $E7, $E3, $E4, $F3, $F4, $E4
    db $E3, $F4, $F3, $E7, $FE, $E7, $FE, $88, $80, $82, $EE, $02, $29, $39, $82, $EE
    db $02, $39, $29, $82, $FF, $82, $09, $02, $FF, $13, $82, $FF, $01, $13, $83, $FF
    db $01, $50, $84, $EE, $03, $50, $EE, $EE, $8C, $80, $07, $FE, $E6, $FE, $E7, $E3
    db $E4, $E3, $82, $E4, $07, $E3, $E4, $E3, $E6, $FE, $E7, $FE, $88, $80, $84, $EE
    db $84, $FF, $04, $EF, $40, $EF, $50, $82, $41, $82, $51, $06, $40, $EF, $50, $EF
    db $50, $51, $82, $EE, $02, $51, $50, $82, $EE, $0C, $73, $74, $63, $64, $FE, $74
    db $FE, $64, $73, $EF, $63, $EF, $94, $80, $08, $62, $EF, $72, $73, $EF, $62, $73
    db $72, $85, $EF, $03, $42, $EF, $42, $82, $43, $82, $53, $0C, $42, $EF, $42, $EF
    db $65, $51, $75, $76, $51, $65, $76, $75, $84, $EF, $84, $FE, $04, $43, $42, $53
    db $52, $82, $EF, $02, $51, $50, $82, $FE, $82, $41, $90, $80, $0C, $60, $EF, $60
    db $EF, $60, $61, $70, $71, $62, $42, $72, $52, $82, $53, $82, $44, $06, $42, $62
    db $52, $72, $EF, $66, $82, $EF, $01, $66, $85, $EF, $12, $50, $51, $42, $43, $52
    db $53, $FE, $48, $FE, $58, $47, $46, $57, $56, $45, $44, $55, $54, $88, $80, $03
    db $60, $EE, $60, $82, $EE, $0D, $60, $EE, $60, $EF, $60, $EF, $60, $65, $EE, $75
    db $76, $63, $64, $83, $EE, $03, $65, $76, $75, $84, $80, $82, $EF, $0D, $60, $61
    db $44, $45, $54, $55, $46, $47, $56, $57, $48, $FE, $58, $82, $FE, $0B, $4D, $FE
    db $68, $4C, $4B, $6A, $69, $4A, $49, $5A, $77, $88, $80, $07, $72, $73, $60, $EF
    db $73, $72, $EF, $82, $60, $0B, $EF, $60, $EF, $60, $EF, $72, $73, $EF, $60, $73
    db $72, $88, $80, $12, $70, $71, $72, $62, $49, $4A, $59, $5A, $4B, $4C, $5B, $5C
    db $4D, $FE, $5D, $41, $FE, $40, $82, $41, $82, $EE, $06, $5D, $FF, $4F, $4E, $5F
    db $5E, $82, $EB, $82, $FB, $94, $EE, $84, $FE, $82, $EC, $82, $FC, $82, $ED, $82
    db $FD, $84, $0C, $08, $6B, $63, $6B, $63, $03, $0B, $03, $0B, $83, $63, $05, $6B
    db $43, $43, $4B, $43, $84, $04, $88, $24, $84, $02, $84, $22, $84, $0C, $84, $2C
    db $88, $09, $82, $29, $82, $09, $84, $29, $84, $0B, $84, $00, $82, $4B, $82, $43
    db $02, $23, $2B, $82, $23, $01, $0B, $83, $03, $88, $04, $84, $24, $83, $03, $05
    db $04, $23, $23, $24, $23, $84, $0C, $84, $6C, $88, $09, $88, $29, $08, $0E, $03
    db $0E, $03, $63, $6E, $63, $6E, $82, $23, $82, $2B, $84, $00, $82, $23, $82, $2E
    db $82, $03, $82, $0E, $83, $03, $07, $05, $23, $23, $28, $23, $03, $04, $82, $03
    db $01, $24, $83, $23, $83, $0A, $05, $4A, $2A, $0A, $2A, $0A, $88, $09, $88, $29
    db $82, $0B, $82, $03, $82, $0E, $86, $03, $84, $23, $84, $03, $84, $23, $02, $03
    db $05, $82, $03, $01, $25, $83, $23, $84, $04, $84, $24, $83, $0A, $05, $2A, $0A
    db $0A, $2A, $0A, $84, $08, $84, $0C, $84, $2C, $84, $28, $82, $63, $82, $6B, $82
    db $63, $82, $6E, $84, $43, $84, $63, $84, $43, $84, $63, $83, $04, $05, $28, $24
    db $24, $25, $24, $82, $03, $82, $0B, $82, $23, $82, $0B, $88, $0A, $84, $08, $84
    db $4C, $84, $6C, $84, $28, $09, $0B, $03, $0B, $03, $63, $6B, $63, $6B, $0C, $83
    db $03, $02, $23, $0C, $82, $23, $01, $0E, $83, $03, $02, $23, $0E, $82, $23, $84
    db $05, $84, $25, $82, $03, $82, $0A, $82, $04, $8A, $0A, $88, $08, $88, $28, $05
    db $03, $63, $63, $03, $43, $82, $03, $83, $43, $02, $4C, $43, $83, $63, $05, $4C
    db $43, $43, $4E, $43, $83, $63, $03, $4E, $05, $05, $84, $0D, $82, $05, $82, $0A
    db $82, $03, $82, $0A, $82, $03, $84, $0C, $84, $0A, $82, $29, $02, $69, $29, $83
    db $09, $01, $49, $83, $48, $06, $49, $68, $68, $69, $68, $23, $82, $03, $01, $23
    db $8E, $03, $82, $4B, $82, $23, $82, $6B, $84, $03, $84, $23, $08, $6C, $0B, $6C
    db $4B, $2B, $6C, $6B, $6C, $84, $2C, $84, $08, $0A, $29, $69, $29, $69, $49, $09
    db $49, $09, $08, $09, $82, $08, $01, $29, $83, $28, $82, $0E, $82, $06, $82, $0E
    db $02, $06, $0E, $84, $06, $05, $4B, $03, $43, $4B, $23, $82, $6B, $03, $63, $4B
    db $4B, $82, $43, $84, $02, $84, $22, $82, $4B, $82, $43, $82, $4B, $82, $63, $84
    db $00, $88, $09, $84, $29, $83, $09, $01, $29, $84, $09, $85, $06, $03, $0E, $06
    db $0E, $84, $06, $0C, $03, $4B, $4B, $43, $6B, $23, $63, $6B, $4B, $05, $4B, $05
    db $84, $02, $84, $22, $04, $25, $4B, $25, $4B, $88, $00, $84, $08, $84, $28, $06
    db $29, $09, $49, $69, $09, $69, $82, $09, $01, $49, $83, $09, $02, $23, $0E, $82
    db $2E, $02, $0E, $03, $82, $0E, $8C, $00, $03, $4B, $02, $4B, $85, $02, $85, $22
    db $03, $4B, $22, $4B, $88, $00, $84, $08, $85, $0E, $02, $06, $0E, $82, $06, $02
    db $26, $06, $82, $26, $03, $0E, $26, $0E, $82, $23, $82, $2E, $82, $03, $82, $0E
    db $84, $46, $03, $4E, $66, $4E, $82, $66, $03, $6E, $66, $6E, $94, $00, $02, $06
    db $0E, $82, $06, $01, $2E, $83, $26, $85, $0E, $02, $06, $0E, $82, $06, $02, $26
    db $06, $82, $26, $05, $0E, $26, $0E, $06, $23, $82, $06, $01, $03, $83, $26, $84
    db $2E, $84, $0E, $84, $23, $82, $2B, $82, $23, $82, $2B, $82, $02, $90, $00, $04
    db $06, $0E, $06, $0E, $84, $03, $85, $06, $02, $26, $06, $85, $26, $02, $0E, $06
    db $82, $0E, $01, $26, $83, $2E, $82, $0B, $86, $03, $03, $2B, $23, $2B, $89, $23
    db $88, $00, $0E, $03, $08, $03, $08, $28, $23, $28, $23, $2E, $26, $2E, $26, $03
    db $08, $84, $03, $82, $6C, $01, $08, $83, $23, $84, $00, $82, $0B, $8B, $03, $06
    db $0B, $03, $0B, $2B, $23, $2B, $89, $23, $88, $00, $83, $46, $0B, $4E, $66, $66
    db $6E, $66, $06, $0E, $06, $0E, $06, $0E, $82, $06, $01, $2E, $83, $26, $85, $00
    db $03, $05, $00, $05, $8D, $03, $05, $0B, $03, $02, $2B, $03, $82, $02, $82, $4B
    db $02, $23, $0B, $84, $23, $04, $0A, $2A, $0A, $2A, $94, $0C, $84, $0B, $08, $0A
    db $2A, $0A, $2A, $0A, $2A, $0A, $2A, $00

    ld [hl-], a                                   ; $7629: $32
    jp nz, $2701                                  ; $762A: $C2 $01 $27

    ld e, $D0                                     ; $762D: $1E $D0
    rlca                                          ; $762F: $07
    add d                                         ; $7630: $82
    ld [$0C03], sp                                ; $7631: $08 $03 $0C
    dec c                                         ; $7634: $0D
    dec hl                                        ; $7635: $2B
    add d                                         ; $7636: $82
    ld [$0A03], sp                                ; $7637: $08 $03 $0A
    ld [$8D2B], sp                                ; $763A: $08 $2B $8D
    ld [$5B02], sp                                ; $763D: $08 $02 $5B
    ld e, h                                       ; $7640: $5C
    adc a                                         ; $7641: $8F
    ld [$7A08], sp                                ; $7642: $08 $08 $7A
    ld a, e                                       ; $7645: $7B
    ld a, h                                       ; $7646: $7C
    ld a, l                                       ; $7647: $7D
    ld l, d                                       ; $7648: $6A
    ld l, e                                       ; $7649: $6B
    ld l, h                                       ; $764A: $6C
    ld l, l                                       ; $764B: $6D
    add h                                         ; $764C: $84
    ld [$1C03], sp                                ; $764D: $08 $03 $1C
    dec e                                         ; $7650: $1D
    dec sp                                        ; $7651: $3B
    add d                                         ; $7652: $82
    ld [$1A03], sp                                ; $7653: $08 $03 $1A
    ld [$8C3B], sp                                ; $7656: $08 $3B $8C
    ld [$6A04], sp                                ; $7659: $08 $04 $6A
    ld l, e                                       ; $765C: $6B
    ld l, h                                       ; $765D: $6C
    ld l, l                                       ; $765E: $6D
    adc a                                         ; $765F: $8F
    ld [$8B07], sp                                ; $7660: $08 $07 $8B
    adc h                                         ; $7663: $8C
    ld [$7B7A], sp                                ; $7664: $08 $7A $7B
    ld a, h                                       ; $7667: $7C
    ld a, l                                       ; $7668: $7D
    add h                                         ; $7669: $84
    ld [$2C03], sp                                ; $766A: $08 $03 $2C
    dec l                                         ; $766D: $2D
    ld c, e                                       ; $766E: $4B
    add d                                         ; $766F: $82
    ld [$2A03], sp                                ; $7670: $08 $03 $2A
    ld [$834B], sp                                ; $7673: $08 $4B $83
    ld [$1E07], sp                                ; $7676: $08 $07 $1E
    ld h, [hl]                                    ; $7679: $66
    ld b, e                                       ; $767A: $43
    ld b, h                                       ; $767B: $44
    ld b, l                                       ; $767C: $45
    ld h, c                                       ; $767D: $61
    rra                                           ; $767E: $1F
    add d                                         ; $767F: $82
    ld [$7A0E], sp                                ; $7680: $08 $0E $7A
    ld a, e                                       ; $7683: $7B
    ld a, h                                       ; $7684: $7C
    ld a, l                                       ; $7685: $7D
    ld [$661E], sp                                ; $7686: $08 $1E $66
    ld b, e                                       ; $7689: $43
    ld b, h                                       ; $768A: $44
    ld b, l                                       ; $768B: $45
    ld b, e                                       ; $768C: $43
    ld b, h                                       ; $768D: $44
    ld b, l                                       ; $768E: $45
    ld h, c                                       ; $768F: $61
    add l                                         ; $7690: $85
    ld [$9B02], sp                                ; $7691: $08 $02 $9B
    sbc h                                         ; $7694: $9C
    add d                                         ; $7695: $82
    ld [$8B02], sp                                ; $7696: $08 $02 $8B
    adc h                                         ; $7699: $8C
    add l                                         ; $769A: $85
    ld [$3C02], sp                                ; $769B: $08 $02 $3C
    dec a                                         ; $769E: $3D
    add e                                         ; $769F: $83
    ld [$3A01], sp                                ; $76A0: $08 $01 $3A
    add h                                         ; $76A3: $84
    ld [$1E09], sp                                ; $76A4: $08 $09 $1E
    ld de, $5355                                  ; $76A7: $11 $55 $53
    ld d, h                                       ; $76AA: $54
    ld d, l                                       ; $76AB: $55
    ld b, d                                       ; $76AC: $42
    rla                                           ; $76AD: $17
    rra                                           ; $76AE: $1F
    add d                                         ; $76AF: $82
    ld [$8B0E], sp                                ; $76B0: $08 $0E $8B
    adc h                                         ; $76B3: $8C
    ld [$111E], sp                                ; $76B4: $08 $1E $11
    ld b, [hl]                                    ; $76B7: $46
    ld d, e                                       ; $76B8: $53
    ld d, l                                       ; $76B9: $55
    sub [hl]                                      ; $76BA: $96
    add [hl]                                      ; $76BB: $86
    ld d, h                                       ; $76BC: $54
    ld d, l                                       ; $76BD: $55
    ld b, d                                       ; $76BE: $42
    rla                                           ; $76BF: $17
    add d                                         ; $76C0: $82
    ld [$8D08], sp                                ; $76C1: $08 $08 $8D
    adc [hl]                                      ; $76C4: $8E
    xor e                                         ; $76C5: $AB
    xor h                                         ; $76C6: $AC
    adc l                                         ; $76C7: $8D
    adc [hl]                                      ; $76C8: $8E
    sbc e                                         ; $76C9: $9B
    sbc h                                         ; $76CA: $9C
    add [hl]                                      ; $76CB: $86
    ld [$4D01], sp                                ; $76CC: $08 $01 $4D
    add e                                         ; $76CF: $83
    ld [$4A01], sp                                ; $76D0: $08 $01 $4A
    add e                                         ; $76D3: $83
    ld [$1E1E], sp                                ; $76D4: $08 $1E $1E
    ld de, $5655                                  ; $76D7: $11 $55 $56
    ld h, e                                       ; $76DA: $63
    ld h, h                                       ; $76DB: $64
    ld h, l                                       ; $76DC: $65
    ld d, l                                       ; $76DD: $55
    ld b, d                                       ; $76DE: $42
    rla                                           ; $76DF: $17
    rra                                           ; $76E0: $1F
    ld [$9C9B], sp                                ; $76E1: $08 $9B $9C
    ld [$4611], sp                                ; $76E4: $08 $11 $46
    ld d, [hl]                                    ; $76E7: $56
    ld h, e                                       ; $76E8: $63
    ld h, h                                       ; $76E9: $64

jr_066_76EA:
    ld h, l                                       ; $76EA: $65
    ld h, e                                       ; $76EB: $63
    ld h, h                                       ; $76EC: $64
    ld h, l                                       ; $76ED: $65
    ld d, d                                       ; $76EE: $52
    ld b, d                                       ; $76EF: $42
    rla                                           ; $76F0: $17
    ld [$9E9D], sp                                ; $76F1: $08 $9D $9E
    add d                                         ; $76F4: $82
    ld [$9D06], sp                                ; $76F5: $08 $06 $9D
    sbc [hl]                                      ; $76F8: $9E
    xor e                                         ; $76F9: $AB
    xor h                                         ; $76FA: $AC
    adc l                                         ; $76FB: $8D
    adc [hl]                                      ; $76FC: $8E
    add h                                         ; $76FD: $84
    ld [$5D01], sp                                ; $76FE: $08 $01 $5D
    add a                                         ; $7701: $87
    ld [$1113], sp                                ; $7702: $08 $13 $11
    ld d, l                                       ; $7705: $55
    ld d, [hl]                                    ; $7706: $56
    inc hl                                        ; $7707: $23
    inc [hl]                                      ; $7708: $34
    ld [hl], h                                    ; $7709: $74
    inc h                                         ; $770A: $24
    dec h                                         ; $770B: $25

jr_066_770C:
    ld d, d                                       ; $770C: $52
    ld d, e                                       ; $770D: $53
    rla                                           ; $770E: $17
    rra                                           ; $770F: $1F
    xor e                                         ; $7710: $AB
    xor h                                         ; $7711: $AC
    ld [$3236], sp                                ; $7712: $08 $36 $32
    inc hl                                        ; $7715: $23
    inc [hl]                                      ; $7716: $34
    add h                                         ; $7717: $84
    ld [hl], h                                    ; $7718: $74
    rlca                                          ; $7719: $07
    inc h                                         ; $771A: $24
    dec h                                         ; $771B: $25
    ld d, l                                       ; $771C: $55
    ld b, d                                       ; $771D: $42
    rla                                           ; $771E: $17
    xor e                                         ; $771F: $AB
    xor h                                         ; $7720: $AC
    add d                                         ; $7721: $82
    ld [$AB02], sp                                ; $7722: $08 $02 $AB
    xor h                                         ; $7725: $AC
    add d                                         ; $7726: $82
    ld [$9D02], sp                                ; $7727: $08 $02 $9D
    sbc [hl]                                      ; $772A: $9E
    adc h                                         ; $772B: $8C
    ld [$2104], sp                                ; $772C: $08 $04 $21
    ld d, l                                       ; $772F: $55
    inc hl                                        ; $7730: $23
    jr nc, @-$7B                                  ; $7731: $30 $83

    nop                                           ; $7733: $00
    ld b, $5A                                     ; $7734: $06 $5A
    dec h                                         ; $7736: $25
    ld d, d                                       ; $7737: $52
    sub [hl]                                      ; $7738: $96
    rla                                           ; $7739: $17
    rra                                           ; $773A: $1F
    add d                                         ; $773B: $82
    ld [$360F], sp                                ; $773C: $08 $0F $36
    scf                                           ; $773F: $37
    ld c, b                                       ; $7740: $48
    adc c                                         ; $7741: $89
    adc d                                         ; $7742: $8A
    nop                                           ; $7743: $00
    xor c                                         ; $7744: $A9
    xor d                                         ; $7745: $AA
    nop                                           ; $7746: $00
    ld e, d                                       ; $7747: $5A
    dec h                                         ; $7748: $25
    sub [hl]                                      ; $7749: $96
    ld b, d                                       ; $774A: $42
    ld b, e                                       ; $774B: $43
    ld b, h                                       ; $774C: $44
    add d                                         ; $774D: $82
    ld b, e                                       ; $774E: $43
    ld [bc], a                                    ; $774F: $02
    ld h, c                                       ; $7750: $61
    rra                                           ; $7751: $1F
    add d                                         ; $7752: $82
    ld [$AB02], sp                                ; $7753: $08 $02 $AB
    xor h                                         ; $7756: $AC
    add l                                         ; $7757: $85
    ld [$1E0A], sp                                ; $7758: $08 $0A $1E
    ld h, [hl]                                    ; $775B: $66
    ld b, e                                       ; $775C: $43
    ld b, l                                       ; $775D: $45
    ld h, c                                       ; $775E: $61
    rra                                           ; $775F: $1F
    ld [$3231], sp                                ; $7760: $08 $31 $32
    jr jr_066_76EA                                ; $7763: $18 $85

    nop                                           ; $7765: $00
    dec b                                         ; $7766: $05
    ld e, d                                       ; $7767: $5A
    dec h                                         ; $7768: $25
    ld d, d                                       ; $7769: $52
    ld d, e                                       ; $776A: $53
    inc sp                                        ; $776B: $33
    add d                                         ; $776C: $82
    ld [$3208], sp                                ; $776D: $08 $08 $32
    scf                                           ; $7770: $37
    jr c, jr_066_770C                             ; $7771: $38 $99

    sbc d                                         ; $7773: $9A
    cp l                                          ; $7774: $BD
    cp c                                          ; $7775: $B9
    cp d                                          ; $7776: $BA
    add d                                         ; $7777: $82
    nop                                           ; $7778: $00
    ld a, [bc]                                    ; $7779: $0A
    ld e, d                                       ; $777A: $5A
    dec h                                         ; $777B: $25
    ld d, d                                       ; $777C: $52
    ld d, e                                       ; $777D: $53
    add [hl]                                      ; $777E: $86
    ld d, e                                       ; $777F: $53
    ld d, l                                       ; $7780: $55
    ld b, d                                       ; $7781: $42
    rla                                           ; $7782: $17
    rra                                           ; $7783: $1F
    add a                                         ; $7784: $87
    ld [$1E0C], sp                                ; $7785: $08 $0C $1E
    ld de, $5655                                  ; $7788: $11 $55 $56
    ld d, l                                       ; $778B: $55
    ld b, d                                       ; $778C: $42
    rla                                           ; $778D: $17
    rra                                           ; $778E: $1F

jr_066_778F:
    dec h                                         ; $778F: $25
    ld d, $3F                                     ; $7790: $16 $3F
    db $10                                        ; $7792: $10
    add l                                         ; $7793: $85
    nop                                           ; $7794: $00
    inc b                                         ; $7795: $04
    ld e, d                                       ; $7796: $5A
    dec h                                         ; $7797: $25
    ld d, d                                       ; $7798: $52
    ld b, a                                       ; $7799: $47
    add d                                         ; $779A: $82
    ld [$3603], sp                                ; $779B: $08 $03 $36
    scf                                           ; $779E: $37
    jr c, @-$76                                   ; $779F: $38 $88

    nop                                           ; $77A1: $00
    ld a, [bc]                                    ; $77A2: $0A
    ld e, d                                       ; $77A3: $5A
    dec h                                         ; $77A4: $25
    ld h, e                                       ; $77A5: $63
    ld h, h                                       ; $77A6: $64

jr_066_77A7:
    ld h, e                                       ; $77A7: $63
    ld d, l                                       ; $77A8: $55
    ld d, d                                       ; $77A9: $52
    ld b, d                                       ; $77AA: $42
    rla                                           ; $77AB: $17
    rra                                           ; $77AC: $1F
    add l                                         ; $77AD: $85
    ld [$1E04], sp                                ; $77AE: $08 $04 $1E
    ld de, $5655                                  ; $77B1: $11 $55 $56
    add d                                         ; $77B4: $82
    ld h, h                                       ; $77B5: $64
    ld [$4252], sp                                ; $77B6: $08 $52 $42
    rla                                           ; $77B9: $17
    rra                                           ; $77BA: $1F
    dec h                                         ; $77BB: $25
    ld d, $3F                                     ; $77BC: $16 $3F
    db $10                                        ; $77BE: $10
    add l                                         ; $77BF: $85
    nop                                           ; $77C0: $00
    ld [$255A], sp                                ; $77C1: $08 $5A $25
    ld d, e                                       ; $77C4: $53
    ld e, b                                       ; $77C5: $58
    ld l, b                                       ; $77C6: $68
    ld b, [hl]                                    ; $77C7: $46
    ld b, a                                       ; $77C8: $47
    jr c, @-$75                                   ; $77C9: $38 $89

jr_066_77CB:
    nop                                           ; $77CB: $00
    ld bc, $8372                                  ; $77CC: $01 $72 $83
    ld [hl], h                                    ; $77CF: $74
    ld b, $24                                     ; $77D0: $06 $24
    dec h                                         ; $77D2: $25
    ld d, d                                       ; $77D3: $52

jr_066_77D4:
    ld d, l                                       ; $77D4: $55
    rla                                           ; $77D5: $17
    rra                                           ; $77D6: $1F
    add h                                         ; $77D7: $84
    ld [$350F], sp                                ; $77D8: $08 $0F $35
    ld d, l                                       ; $77DB: $55
    ld d, [hl]                                    ; $77DC: $56
    inc hl                                        ; $77DD: $23
    inc [hl]                                      ; $77DE: $34
    inc h                                         ; $77DF: $24
    dec h                                         ; $77E0: $25
    ld d, d                                       ; $77E1: $52
    ld b, d                                       ; $77E2: $42
    rla                                           ; $77E3: $17
    ld [$1625], sp                                ; $77E4: $08 $25 $16
    ccf                                           ; $77E7: $3F
    rlca                                          ; $77E8: $07
    add d                                         ; $77E9: $82

jr_066_77EA:
    nop                                           ; $77EA: $00
    inc c                                         ; $77EB: $0C
    adc c                                         ; $77EC: $89
    adc d                                         ; $77ED: $8A
    nop                                           ; $77EE: $00
    ld h, a                                       ; $77EF: $67
    ld sp, $8655                                  ; $77F0: $31 $55 $86
    ld d, [hl]                                    ; $77F3: $56
    inc hl                                        ; $77F4: $23
    ld h, b                                       ; $77F5: $60
    nop                                           ; $77F6: $00
    db $EB                                        ; $77F7: $EB
    add e                                         ; $77F8: $83
    nop                                           ; $77F9: $00
    ld bc, $88EC                                  ; $77FA: $01 $EC $88
    nop                                           ; $77FD: $00
    ld b, $5A                                     ; $77FE: $06 $5A
    dec h                                         ; $7800: $25
    ld d, d                                       ; $7801: $52
    add [hl]                                      ; $7802: $86
    rla                                           ; $7803: $17
    rra                                           ; $7804: $1F
    add e                                         ; $7805: $83
    ld [$2104], sp                                ; $7806: $08 $04 $21
    ld d, l                                       ; $7809: $55
    inc hl                                        ; $780A: $23
    jr nc, jr_066_778F                            ; $780B: $30 $82

    nop                                           ; $780D: $00

jr_066_780E:
    inc b                                         ; $780E: $04
    ld e, d                                       ; $780F: $5A
    dec h                                         ; $7810: $25
    ld d, d                                       ; $7811: $52
    daa                                           ; $7812: $27
    add d                                         ; $7813: $82
    ld [$360E], sp                                ; $7814: $08 $0E $36
    scf                                           ; $7817: $37
    jr c, jr_066_781A                             ; $7818: $38 $00

jr_066_781A:
    adc a                                         ; $781A: $8F
    sbc c                                         ; $781B: $99
    sbc d                                         ; $781C: $9A
    nop                                           ; $781D: $00
    halt                                          ; $781E: $76
    ld b, c                                       ; $781F: $41
    ld d, e                                       ; $7820: $53
    ld d, [hl]                                    ; $7821: $56
    inc hl                                        ; $7822: $23
    jr nc, jr_066_77A7                            ; $7823: $30 $82

    nop                                           ; $7825: $00
    inc b                                         ; $7826: $04
    ld l, [hl]                                    ; $7827: $6E
    nop                                           ; $7828: $00

jr_066_7829:
    nop                                           ; $7829: $00
    ld c, c                                       ; $782A: $49
    adc d                                         ; $782B: $8A
    nop                                           ; $782C: $00
    ld [bc], a                                    ; $782D: $02
    ld e, d                                       ; $782E: $5A
    dec h                                         ; $782F: $25

jr_066_7830:
    add d                                         ; $7830: $82
    ld d, d                                       ; $7831: $52
    ld bc, $8317                                  ; $7832: $01 $17 $83
    ld [$3103], sp                                ; $7835: $08 $03 $31
    ld [hl-], a                                   ; $7838: $32
    ld c, b                                       ; $7839: $48
    add h                                         ; $783A: $84
    nop                                           ; $783B: $00
    ld [$255A], sp                                ; $783C: $08 $5A $25
    ld d, e                                       ; $783F: $53
    ld e, b                                       ; $7840: $58
    ld l, b                                       ; $7841: $68
    ld b, [hl]                                    ; $7842: $46
    ld b, a                                       ; $7843: $47
    jr c, jr_066_77CB                             ; $7844: $38 $85

    nop                                           ; $7846: $00
    dec b                                         ; $7847: $05
    ld d, b                                       ; $7848: $50
    dec h                                         ; $7849: $25
    ld h, l                                       ; $784A: $65

jr_066_784B:
    inc hl                                        ; $784B: $23
    jr nc, jr_066_77D4                            ; $784C: $30 $86

    nop                                           ; $784E: $00
    inc bc                                        ; $784F: $03
    ld e, c                                       ; $7850: $59
    rst $00                                       ; $7851: $C7

jr_066_7852:
    ret z                                         ; $7852: $C8

    add e                                         ; $7853: $83
    nop                                           ; $7854: $00
    ld bc, $85E9                                  ; $7855: $01 $E9 $85
    nop                                           ; $7858: $00
    inc b                                         ; $7859: $04
    ld e, d                                       ; $785A: $5A
    dec h                                         ; $785B: $25
    ld d, d                                       ; $785C: $52
    ld [hl-], a                                   ; $785D: $32
    add e                                         ; $785E: $83
    ld [$2103], sp                                ; $785F: $08 $03 $21
    ld [hl+], a                                   ; $7862: $22
    jr c, jr_066_77EA                             ; $7863: $38 $85

    nop                                           ; $7865: $00
    add hl, bc                                    ; $7866: $09
    ld h, a                                       ; $7867: $67
    ld sp, $5655                                  ; $7868: $31 $55 $56
    sub [hl]                                      ; $786B: $96
    inc hl                                        ; $786C: $23
    ld h, b                                       ; $786D: $60
    nop                                           ; $786E: $00
    db $EC                                        ; $786F: $EC
    add h                                         ; $7870: $84
    nop                                           ; $7871: $00
    inc bc                                        ; $7872: $03
    ld [hl], d                                    ; $7873: $72
    ld [hl], h                                    ; $7874: $74
    ld b, b                                       ; $7875: $40
    add [hl]                                      ; $7876: $86
    nop                                           ; $7877: $00
    ld b, $E9                                     ; $7878: $06 $E9
    ld l, c                                       ; $787A: $69
    rst $10                                       ; $787B: $D7
    ret c                                         ; $787C: $D8

    set 5, h                                      ; $787D: $CB $EC
    adc b                                         ; $787F: $88
    nop                                           ; $7880: $00
    inc bc                                        ; $7881: $03
    ld h, a                                       ; $7882: $67
    ld h, $86                                     ; $7883: $26 $86
    add e                                         ; $7885: $83
    ld [$3103], sp                                ; $7886: $08 $03 $31
    ld [hl+], a                                   ; $7889: $22
    jr c, jr_066_780E                             ; $788A: $38 $82

    nop                                           ; $788C: $00
    add hl, bc                                    ; $788D: $09
    cp e                                          ; $788E: $BB
    cp h                                          ; $788F: $BC
    nop                                           ; $7890: $00
    halt                                          ; $7891: $76
    ld b, c                                       ; $7892: $41
    add [hl]                                      ; $7893: $86
    ld d, e                                       ; $7894: $53
    inc hl                                        ; $7895: $23
    jr nc, jr_066_7829                            ; $7896: $30 $91

    nop                                           ; $7898: $00
    ld b, $79                                     ; $7899: $06 $79
    nop                                           ; $789B: $00
    rst $00                                       ; $789C: $C7
    ret z                                         ; $789D: $C8

    ret                                           ; $789E: $C9


    jp z, $0087                                   ; $789F: $CA $87 $00

    inc bc                                        ; $78A2: $03
    halt                                          ; $78A3: $76
    ld sp, $8355                                  ; $78A4: $31 $55 $83
    ld [$3103], sp                                ; $78A7: $08 $03 $31
    ld [hl-], a                                   ; $78AA: $32
    jr c, jr_066_7830                             ; $78AB: $38 $83

    nop                                           ; $78AD: $00
    rlca                                          ; $78AE: $07
    ld e, a                                       ; $78AF: $5F
    nop                                           ; $78B0: $00
    ld d, b                                       ; $78B1: $50
    dec h                                         ; $78B2: $25
    ld h, l                                       ; $78B3: $65
    inc hl                                        ; $78B4: $23
    jr nc, jr_066_784B                            ; $78B5: $30 $94

    nop                                           ; $78B7: $00
    ld b, $D7                                     ; $78B8: $06 $D7
    ret c                                         ; $78BA: $D8

    reti                                          ; $78BB: $D9


    jp c, $CCDB                                   ; $78BC: $DA $DB $CC

    add l                                         ; $78BF: $85
    nop                                           ; $78C0: $00
    inc bc                                        ; $78C1: $03
    halt                                          ; $78C2: $76
    ld h, $37                                     ; $78C3: $26 $37
    add e                                         ; $78C5: $83
    ld [$3103], sp                                ; $78C6: $08 $03 $31
    ld [hl-], a                                   ; $78C9: $32
    jr c, jr_066_7852                             ; $78CA: $38 $86

    nop                                           ; $78CC: $00
    inc bc                                        ; $78CD: $03
    ld [hl], d                                    ; $78CE: $72
    ld [hl], h                                    ; $78CF: $74
    ld b, b                                       ; $78D0: $40
    add [hl]                                      ; $78D1: $86
    nop                                           ; $78D2: $00
    ld bc, $8406                                  ; $78D3: $01 $06 $84
    ld [hl], e                                    ; $78D6: $73
    ld bc, $8905                                  ; $78D7: $01 $05 $89
    nop                                           ; $78DA: $00
    ld [$00EC], sp                                ; $78DB: $08 $EC $00
    call z, $FE00                                 ; $78DE: $CC $00 $FE
    sub a                                         ; $78E1: $97
    sbc b                                         ; $78E2: $98
    res 0, e                                      ; $78E3: $CB $83
    nop                                           ; $78E5: $00
    inc bc                                        ; $78E6: $03
    halt                                          ; $78E7: $76
    ld sp, $8346                                  ; $78E8: $31 $46 $83
    ld [$2103], sp                                ; $78EB: $08 $03 $21
    ld [hl+], a                                   ; $78EE: $22
    ld bc, $008E                                  ; $78EF: $01 $8E $00
    ld [$3E20], sp                                ; $78F2: $08 $20 $3E
    ld [de], a                                    ; $78F5: $12
    inc de                                        ; $78F6: $13
    inc d                                         ; $78F7: $14
    ld d, $3F                                     ; $78F8: $16 $3F
    inc bc                                        ; $78FA: $03
    add l                                         ; $78FB: $85
    ld [hl], e                                    ; $78FC: $73
    ld bc, $8405                                  ; $78FD: $01 $05 $84
    nop                                           ; $7900: $00
    dec b                                         ; $7901: $05
    jp hl                                         ; $7902: $E9


    db $DB                                        ; $7903: $DB
    db $EB                                        ; $7904: $EB
    and a                                         ; $7905: $A7
    xor b                                         ; $7906: $A8
    add h                                         ; $7907: $84
    nop                                           ; $7908: $00
    inc bc                                        ; $7909: $03
    halt                                          ; $790A: $76
    ld sp, $8386                                  ; $790B: $31 $86 $83
    ld [$2504], sp                                ; $790E: $08 $04 $25
    ld d, $33                                     ; $7911: $16 $33
    rlca                                          ; $7913: $07
    adc h                                         ; $7914: $8C

jr_066_7915:
    nop                                           ; $7915: $00
    inc b                                         ; $7916: $04
    jr nz, jr_066_7957                            ; $7917: $20 $3E

    ld [de], a                                    ; $7919: $12
    inc hl                                        ; $791A: $23
    add d                                         ; $791B: $82
    ld [$2501], sp                                ; $791C: $08 $01 $25
    add h                                         ; $791F: $84
    inc de                                        ; $7920: $13
    dec b                                         ; $7921: $05
    inc d                                         ; $7922: $14
    dec d                                         ; $7923: $15
    ld d, $3F                                     ; $7924: $16 $3F
    db $10                                        ; $7926: $10
    add l                                         ; $7927: $85
    nop                                           ; $7928: $00
    inc b                                         ; $7929: $04
    db $EB                                        ; $792A: $EB
    or a                                          ; $792B: $B7
    cp b                                          ; $792C: $B8
    jp hl                                         ; $792D: $E9


    add e                                         ; $792E: $83
    nop                                           ; $792F: $00
    inc bc                                        ; $7930: $03
    halt                                          ; $7931: $76
    ld sp, $8453                                  ; $7932: $31 $53 $84
    ld [$3105], sp                                ; $7935: $08 $05 $31
    ld [hl+], a                                   ; $7938: $22
    jr c, jr_066_793B                             ; $7939: $38 $00

jr_066_793B:
    ld l, [hl]                                    ; $793B: $6E
    add d                                         ; $793C: $82
    nop                                           ; $793D: $00
    ld bc, $86EA                                  ; $793E: $01 $EA $86
    nop                                           ; $7941: $00

jr_066_7942:
    inc b                                         ; $7942: $04
    jr nz, jr_066_7983                            ; $7943: $20 $3E

    ld [de], a                                    ; $7945: $12
    inc hl                                        ; $7946: $23
    adc d                                         ; $7947: $8A
    ld [$2504], sp                                ; $7948: $08 $04 $25
    ld d, $3F                                     ; $794B: $16 $3F
    db $10                                        ; $794D: $10
    add h                                         ; $794E: $84
    nop                                           ; $794F: $00
    inc b                                         ; $7950: $04
    call z, $C9DB                                 ; $7951: $CC $DB $C9
    jp z, $0083                                   ; $7954: $CA $83 $00

jr_066_7957:
    inc bc                                        ; $7957: $03
    halt                                          ; $7958: $76
    ld b, [hl]                                    ; $7959: $46
    ld [hl-], a                                   ; $795A: $32
    add h                                         ; $795B: $84
    ld [$3105], sp                                ; $795C: $08 $05 $31
    ld [hl-], a                                   ; $795F: $32
    jr c, jr_066_7962                             ; $7960: $38 $00

jr_066_7962:
    ld a, a                                       ; $7962: $7F
    add e                                         ; $7963: $83
    nop                                           ; $7964: $00
    inc bc                                        ; $7965: $03
    rst $00                                       ; $7966: $C7
    ret z                                         ; $7967: $C8

    res 0, d                                      ; $7968: $CB $82
    nop                                           ; $796A: $00
    inc b                                         ; $796B: $04
    ld h, d                                       ; $796C: $62
    ld a, $12                                     ; $796D: $3E $12
    inc hl                                        ; $796F: $23
    add e                                         ; $7970: $83
    ld [$1E0D], sp                                ; $7971: $08 $0D $1E
    ld de, $5513                                  ; $7974: $11 $13 $55
    add [hl]                                      ; $7977: $86
    inc de                                        ; $7978: $13
    ld d, l                                       ; $7979: $55
    rla                                           ; $797A: $17
    rra                                           ; $797B: $1F
    dec h                                         ; $797C: $25
    ld d, $3F                                     ; $797D: $16 $3F
    db $10                                        ; $797F: $10
    add l                                         ; $7980: $85
    nop                                           ; $7981: $00
    ld [bc], a                                    ; $7982: $02

jr_066_7983:
    reti                                          ; $7983: $D9


jr_066_7984:
    jp c, $0083                                   ; $7984: $DA $83 $00

    inc bc                                        ; $7987: $03
    halt                                          ; $7988: $76
    ld sp, $8437                                  ; $7989: $31 $37 $84
    ld [$2103], sp                                ; $798C: $08 $03 $21
    ld [hl+], a                                   ; $798F: $22
    jr c, jr_066_7915                             ; $7990: $38 $83

    nop                                           ; $7992: $00
    dec b                                         ; $7993: $05
    call z, $D7DB                                 ; $7994: $CC $DB $D7
    ret c                                         ; $7997: $D8

    ld [$0082], a                                 ; $7998: $EA $82 $00
    dec bc                                        ; $799B: $0B
    halt                                          ; $799C: $76
    ld b, c                                       ; $799D: $41
    ld b, d                                       ; $799E: $42
    ld e, b                                       ; $799F: $58
    ld b, e                                       ; $79A0: $43
    ld b, h                                       ; $79A1: $44
    ld b, l                                       ; $79A2: $45
    ld l, b                                       ; $79A3: $68
    ld b, [hl]                                    ; $79A4: $46
    ld d, [hl]                                    ; $79A5: $56
    sub [hl]                                      ; $79A6: $96
    add d                                         ; $79A7: $82
    ld h, h                                       ; $79A8: $64
    ld [$9652], sp                                ; $79A9: $08 $52 $96
    rla                                           ; $79AC: $17
    rra                                           ; $79AD: $1F
    dec h                                         ; $79AE: $25
    ld d, $3F                                     ; $79AF: $16 $3F
    db $10                                        ; $79B1: $10
    adc c                                         ; $79B2: $89
    nop                                           ; $79B3: $00
    inc bc                                        ; $79B4: $03

jr_066_79B5:
    halt                                          ; $79B5: $76
    ld h, $32                                     ; $79B6: $26 $32
    add h                                         ; $79B8: $84
    ld [$3103], sp                                ; $79B9: $08 $03 $31
    ld [hl+], a                                   ; $79BC: $22
    jr c, jr_066_7942                             ; $79BD: $38 $83

    nop                                           ; $79BF: $00
    inc b                                         ; $79C0: $04
    adc b                                         ; $79C1: $88
    rst $00                                       ; $79C2: $C7
    ret z                                         ; $79C3: $C8

    db $EC                                        ; $79C4: $EC
    add e                                         ; $79C5: $83
    nop                                           ; $79C6: $00
    ld d, $50                                     ; $79C7: $16 $50
    dec h                                         ; $79C9: $25
    ld d, d                                       ; $79CA: $52
    ld d, e                                       ; $79CB: $53
    ld d, l                                       ; $79CC: $55
    add [hl]                                      ; $79CD: $86
    ld d, h                                       ; $79CE: $54
    ld d, l                                       ; $79CF: $55
    ld d, [hl]                                    ; $79D0: $56
    inc hl                                        ; $79D1: $23
    inc [hl]                                      ; $79D2: $34
    ld [hl], h                                    ; $79D3: $74
    inc h                                         ; $79D4: $24
    dec h                                         ; $79D5: $25
    ld d, d                                       ; $79D6: $52
    ld d, l                                       ; $79D7: $55
    rla                                           ; $79D8: $17
    rra                                           ; $79D9: $1F
    dec h                                         ; $79DA: $25
    ld d, $3F                                     ; $79DB: $16 $3F
    db $10                                        ; $79DD: $10
    add h                                         ; $79DE: $84
    nop                                           ; $79DF: $00
    ld bc, $83EB                                  ; $79E0: $01 $EB $83
    nop                                           ; $79E3: $00
    inc bc                                        ; $79E4: $03
    halt                                          ; $79E5: $76
    ld sp, $8453                                  ; $79E6: $31 $53 $84
    ld [$2103], sp                                ; $79E9: $08 $03 $21
    ld [hl+], a                                   ; $79EC: $22
    jr c, @-$7B                                   ; $79ED: $38 $83

    nop                                           ; $79EF: $00
    dec b                                         ; $79F0: $05
    jp hl                                         ; $79F1: $E9


    rst $10                                       ; $79F2: $D7
    ret c                                         ; $79F3: $D8

    nop                                           ; $79F4: $00
    call z, $0083                                 ; $79F5: $CC $83 $00
    ld [bc], a                                    ; $79F8: $02
    ld e, d                                       ; $79F9: $5A
    dec h                                         ; $79FA: $25
    add l                                         ; $79FB: $85
    ld h, h                                       ; $79FC: $64
    ld [bc], a                                    ; $79FD: $02
    inc hl                                        ; $79FE: $23
    jr nc, jr_066_7984                            ; $79FF: $30 $83

    nop                                           ; $7A01: $00
    ld a, [bc]                                    ; $7A02: $0A
    ld e, d                                       ; $7A03: $5A

jr_066_7A04:
    dec h                                         ; $7A04: $25
    sub [hl]                                      ; $7A05: $96
    ld b, d                                       ; $7A06: $42
    rla                                           ; $7A07: $17
    ld [$1625], sp                                ; $7A08: $08 $25 $16
    ccf                                           ; $7A0B: $3F
    rlca                                          ; $7A0C: $07
    add a                                         ; $7A0D: $87
    nop                                           ; $7A0E: $00
    inc bc                                        ; $7A0F: $03
    halt                                          ; $7A10: $76
    ld h, $32                                     ; $7A11: $26 $32
    add h                                         ; $7A13: $84
    ld [$3103], sp                                ; $7A14: $08 $03 $31
    ld [hl-], a                                   ; $7A17: $32
    ld bc, $0086                                  ; $7A18: $01 $86 $00
    ld bc, $85CB                                  ; $7A1B: $01 $CB $85
    nop                                           ; $7A1E: $00
    ld bc, $8572                                  ; $7A1F: $01 $72 $85
    ld [hl], h                                    ; $7A22: $74
    ld bc, $8540                                  ; $7A23: $01 $40 $85
    nop                                           ; $7A26: $00
    inc b                                         ; $7A27: $04
    ld e, d                                       ; $7A28: $5A
    dec h                                         ; $7A29: $25
    add [hl]                                      ; $7A2A: $86
    scf                                           ; $7A2B: $37

jr_066_7A2C:
    add d                                         ; $7A2C: $82
    ld [$2603], sp                                ; $7A2D: $08 $03 $26
    daa                                           ; $7A30: $27
    jr c, jr_066_79B5                             ; $7A31: $38 $82

    nop                                           ; $7A33: $00
    ld bc, $84BC                                  ; $7A34: $01 $BC $84
    nop                                           ; $7A37: $00
    inc bc                                        ; $7A38: $03
    ld [bc], a                                    ; $7A39: $02
    ld sp, $8432                                  ; $7A3A: $31 $32 $84

jr_066_7A3D:
    ld [$2504], sp                                ; $7A3D: $08 $04 $25
    ld d, $3F                                     ; $7A40: $16 $3F
    db $10                                        ; $7A42: $10
    add e                                         ; $7A43: $83
    nop                                           ; $7A44: $00
    ld bc, $856F                                  ; $7A45: $01 $6F $85
    nop                                           ; $7A48: $00
    ld bc, $8977                                  ; $7A49: $01 $77 $89
    nop                                           ; $7A4C: $00
    dec c                                         ; $7A4D: $0D
    ld e, a                                       ; $7A4E: $5F
    cp h                                          ; $7A4F: $BC
    nop                                           ; $7A50: $00
    cp $00                                        ; $7A51: $FE $00
    ld h, a                                       ; $7A53: $67
    ld sp, $0837                                  ; $7A54: $31 $37 $08
    ld e, $36                                     ; $7A57: $1E $36
    scf                                           ; $7A59: $37
    jr c, @-$78                                   ; $7A5A: $38 $86

    nop                                           ; $7A5C: $00
    inc b                                         ; $7A5D: $04
    ld h, d                                       ; $7A5E: $62
    ld a, $12                                     ; $7A5F: $3E $12
    ld [hl-], a                                   ; $7A61: $32

jr_066_7A62:
    add l                                         ; $7A62: $85
    ld [$2504], sp                                ; $7A63: $08 $04 $25
    ld d, $3F                                     ; $7A66: $16 $3F
    rlca                                          ; $7A68: $07
    add d                                         ; $7A69: $82
    nop                                           ; $7A6A: $00
    ld bc, $8E7F                                  ; $7A6B: $01 $7F $8E
    nop                                           ; $7A6E: $00
    ld [bc], a                                    ; $7A6F: $02
    sbc a                                         ; $7A70: $9F
    cp e                                          ; $7A71: $BB
    add h                                         ; $7A72: $84
    nop                                           ; $7A73: $00
    ld [$3102], sp                                ; $7A74: $08 $02 $31
    scf                                           ; $7A77: $37
    ld [$2611], sp                                ; $7A78: $08 $11 $26
    daa                                           ; $7A7B: $27
    jr c, jr_066_7A04                             ; $7A7C: $38 $86

    nop                                           ; $7A7E: $00
    inc b                                         ; $7A7F: $04
    halt                                          ; $7A80: $76
    ld hl, $2312                                  ; $7A81: $21 $12 $23
    add d                                         ; $7A84: $82
    ld [$8D02], sp                                ; $7A85: $08 $02 $8D
    adc [hl]                                      ; $7A88: $8E
    add d                                         ; $7A89: $82
    ld [$2606], sp                                ; $7A8A: $08 $06 $26
    daa                                           ; $7A8D: $27
    jr c, jr_066_7A90                             ; $7A8E: $38 $00

jr_066_7A90:
    cp e                                          ; $7A90: $BB
    cp h                                          ; $7A91: $BC

jr_066_7A92:
    adc l                                         ; $7A92: $8D
    nop                                           ; $7A93: $00
    ld b, $87                                     ; $7A94: $06 $87
    nop                                           ; $7A96: $00
    nop                                           ; $7A97: $00
    ld b, $73                                     ; $7A98: $06 $73
    ld [hl], e                                    ; $7A9A: $73
    add hl, bc                                    ; $7A9B: $09
    inc b                                         ; $7A9C: $04
    ld a, $52                                     ; $7A9D: $3E $52
    inc hl                                        ; $7A9F: $23
    ld de, $4626                                  ; $7AA0: $11 $26 $46
    ld b, a                                       ; $7AA3: $47
    jr c, jr_066_7A2C                             ; $7AA4: $38 $86

    nop                                           ; $7AA6: $00
    inc bc                                        ; $7AA7: $03
    ld [bc], a                                    ; $7AA8: $02
    ld hl, $8322                                  ; $7AA9: $21 $22 $83
    ld [$9D02], sp                                ; $7AAC: $08 $02 $9D
    sbc [hl]                                      ; $7AAF: $9E
    add d                                         ; $7AB0: $82
    ld [$2203], sp                                ; $7AB1: $08 $03 $22
    daa                                           ; $7AB4: $27
    jr c, jr_066_7A3D                             ; $7AB5: $38 $86

    nop                                           ; $7AB7: $00
    ld bc, $8406                                  ; $7AB8: $01 $06 $84
    ld [hl], e                                    ; $7ABB: $73
    ld bc, $8605                                  ; $7ABC: $01 $05 $86
    nop                                           ; $7ABF: $00
    dec c                                         ; $7AC0: $0D
    jr nz, @+$40                                  ; $7AC1: $20 $3E

    ld [de], a                                    ; $7AC3: $12
    inc de                                        ; $7AC4: $13
    inc d                                         ; $7AC5: $14
    ld [de], a                                    ; $7AC6: $12
    inc hl                                        ; $7AC7: $23
    ld de, $8646                                  ; $7AC8: $11 $46 $86
    ld d, [hl]                                    ; $7ACB: $56
    inc hl                                        ; $7ACC: $23
    ld h, b                                       ; $7ACD: $60
    add l                                         ; $7ACE: $85
    nop                                           ; $7ACF: $00
    inc b                                         ; $7AD0: $04
    jr nz, @+$40                                  ; $7AD1: $20 $3E

    ld b, [hl]                                    ; $7AD3: $46
    ld [hl-], a                                   ; $7AD4: $32
    add e                                         ; $7AD5: $83
    ld [$AB07], sp                                ; $7AD6: $08 $07 $AB
    xor h                                         ; $7AD9: $AC
    ld [$361E], sp                                ; $7ADA: $08 $1E $36
    scf                                           ; $7ADD: $37
    jr c, jr_066_7A62                             ; $7ADE: $38 $82

    nop                                           ; $7AE0: $00
    dec bc                                        ; $7AE1: $0B
    ld l, [hl]                                    ; $7AE2: $6E
    nop                                           ; $7AE3: $00
    nop                                           ; $7AE4: $00
    jr nz, jr_066_7B25                            ; $7AE5: $20 $3E

    ld [de], a                                    ; $7AE7: $12
    inc de                                        ; $7AE8: $13
    inc d                                         ; $7AE9: $14
    ld d, $3F                                     ; $7AEA: $16 $3F
    db $10                                        ; $7AEC: $10
    add h                                         ; $7AED: $84
    nop                                           ; $7AEE: $00
    inc b                                         ; $7AEF: $04
    jr nz, jr_066_7B30                            ; $7AF0: $20 $3E

    ld [de], a                                    ; $7AF2: $12
    inc hl                                        ; $7AF3: $23
    add e                                         ; $7AF4: $83
    ld [$1106], sp                                ; $7AF5: $08 $06 $11
    ld b, [hl]                                    ; $7AF8: $46
    sub [hl]                                      ; $7AF9: $96
    ld h, h                                       ; $7AFA: $64
    inc hl                                        ; $7AFB: $23
    jr nc, @-$79                                  ; $7AFC: $30 $85

    nop                                           ; $7AFE: $00
    dec b                                         ; $7AFF: $05
    jr nz, jr_066_7B40                            ; $7B00: $20 $3E

    ld [de], a                                    ; $7B02: $12
    ld d, d                                       ; $7B03: $52
    inc hl                                        ; $7B04: $23
    add l                                         ; $7B05: $85
    ld [$1E05], sp                                ; $7B06: $08 $05 $1E
    ld de, $4746                                  ; $7B09: $11 $46 $47
    jr c, jr_066_7A92                             ; $7B0C: $38 $84

jr_066_7B0E:
    nop                                           ; $7B0E: $00
    inc b                                         ; $7B0F: $04
    jr nz, @+$40                                  ; $7B10: $20 $3E

    ld [de], a                                    ; $7B12: $12
    inc hl                                        ; $7B13: $23
    add d                                         ; $7B14: $82
    ld [$2504], sp                                ; $7B15: $08 $04 $25
    ld d, $3F                                     ; $7B18: $16 $3F
    db $10                                        ; $7B1A: $10
    add d                                         ; $7B1B: $82
    nop                                           ; $7B1C: $00
    dec c                                         ; $7B1D: $0D
    jr nz, jr_066_7B5E                            ; $7B1E: $20 $3E

    ld [de], a                                    ; $7B20: $12
    inc hl                                        ; $7B21: $23
    ld e, $66                                     ; $7B22: $1E $66
    ld b, e                                       ; $7B24: $43

jr_066_7B25:
    ld b, h                                       ; $7B25: $44
    ld b, [hl]                                    ; $7B26: $46
    ld d, [hl]                                    ; $7B27: $56
    inc hl                                        ; $7B28: $23
    inc [hl]                                      ; $7B29: $34
    ld b, b                                       ; $7B2A: $40
    add d                                         ; $7B2B: $82
    nop                                           ; $7B2C: $00
    ld [$00BB], sp                                ; $7B2D: $08 $BB $00

jr_066_7B30:
    nop                                           ; $7B30: $00
    jr nz, @+$40                                  ; $7B31: $20 $3E

    ld [de], a                                    ; $7B33: $12
    ld b, [hl]                                    ; $7B34: $46
    inc hl                                        ; $7B35: $23
    add l                                         ; $7B36: $85
    ld [$1E06], sp                                ; $7B37: $08 $06 $1E
    ld de, $5646                                  ; $7B3A: $11 $46 $56
    inc hl                                        ; $7B3D: $23
    ld h, b                                       ; $7B3E: $60
    add e                                         ; $7B3F: $83

jr_066_7B40:
    nop                                           ; $7B40: $00
    jr jr_066_7B63                                ; $7B41: $18 $20

    ld a, $22                                     ; $7B43: $3E $22
    inc hl                                        ; $7B45: $23
    call $CFCE                                    ; $7B46: $CD $CE $CF
    ld [$1625], sp                                ; $7B49: $08 $25 $16
    ccf                                           ; $7B4C: $3F
    inc bc                                        ; $7B4D: $03
    inc b                                         ; $7B4E: $04
    ld a, $12                                     ; $7B4F: $3E $12
    inc hl                                        ; $7B51: $23
    ld e, $11                                     ; $7B52: $1E $11
    ld b, [hl]                                    ; $7B54: $46
    ld d, h                                       ; $7B55: $54
    sub [hl]                                      ; $7B56: $96
    ld d, l                                       ; $7B57: $55
    inc hl                                        ; $7B58: $23
    jr nc, @-$7A                                  ; $7B59: $30 $84

    nop                                           ; $7B5B: $00
    rlca                                          ; $7B5C: $07
    cp e                                          ; $7B5D: $BB

jr_066_7B5E:
    nop                                           ; $7B5E: $00
    ld h, d                                       ; $7B5F: $62
    ld a, $12                                     ; $7B60: $3E $12
    ld d, d                                       ; $7B62: $52

jr_066_7B63:
    inc hl                                        ; $7B63: $23
    add l                                         ; $7B64: $85
    ld [$1E06], sp                                ; $7B65: $08 $06 $1E
    ld de, $5546                                  ; $7B68: $11 $46 $55
    inc hl                                        ; $7B6B: $23
    jr nc, @-$7B                                  ; $7B6C: $30 $83

    nop                                           ; $7B6E: $00
    ld [$3E20], sp                                ; $7B6F: $08 $20 $3E
    ld [hl+], a                                   ; $7B72: $22
    inc hl                                        ; $7B73: $23
    ld [$DEDD], sp                                ; $7B74: $08 $DD $DE
    rst $18                                       ; $7B77: $DF
    add d                                         ; $7B78: $82
    ld [$250A], sp                                ; $7B79: $08 $0A $25
    ld d, $13                                     ; $7B7C: $16 $13
    inc d                                         ; $7B7E: $14
    ld [de], a                                    ; $7B7F: $12
    inc hl                                        ; $7B80: $23
    ld [$5511], sp                                ; $7B81: $08 $11 $55
    ld d, [hl]                                    ; $7B84: $56
    add d                                         ; $7B85: $82
    ld h, h                                       ; $7B86: $64
    ld [bc], a                                    ; $7B87: $02
    inc hl                                        ; $7B88: $23
    jr nc, jr_066_7B0E                            ; $7B89: $30 $83

    nop                                           ; $7B8B: $00
    ld bc, $836E                                  ; $7B8C: $01 $6E $83
    nop                                           ; $7B8F: $00
    inc b                                         ; $7B90: $04
    halt                                          ; $7B91: $76
    ld b, c                                       ; $7B92: $41
    ld [de], a                                    ; $7B93: $12
    inc hl                                        ; $7B94: $23
    add l                                         ; $7B95: $85
    ld [$1E0D], sp                                ; $7B96: $08 $0D $1E
    ld de, $5646                                  ; $7B99: $11 $46 $56
    inc hl                                        ; $7B9C: $23
    jr nc, jr_066_7B9F                            ; $7B9D: $30 $00

jr_066_7B9F:
    ld e, a                                       ; $7B9F: $5F
    nop                                           ; $7BA0: $00
    jr nz, jr_066_7BE1                            ; $7BA1: $20 $3E

    ld [de], a                                    ; $7BA3: $12
    inc hl                                        ; $7BA4: $23
    add d                                         ; $7BA5: $82
    ld [$ED05], sp                                ; $7BA6: $08 $05 $ED
    xor $CD                                       ; $7BA9: $EE $CD
    adc $CF                                       ; $7BAB: $CE $CF
    add a                                         ; $7BAD: $87
    ld [$3608], sp                                ; $7BAE: $08 $08 $36
    ld d, [hl]                                    ; $7BB1: $56
    inc hl                                        ; $7BB2: $23
    inc [hl]                                      ; $7BB3: $34
    ld [hl], h                                    ; $7BB4: $74
    ld b, b                                       ; $7BB5: $40
    nop                                           ; $7BB6: $00
    ld c, a                                       ; $7BB7: $4F
    add [hl]                                      ; $7BB8: $86
    nop                                           ; $7BB9: $00
    inc b                                         ; $7BBA: $04
    halt                                          ; $7BBB: $76
    ld b, c                                       ; $7BBC: $41
    add [hl]                                      ; $7BBD: $86
    rla                                           ; $7BBE: $17
    add l                                         ; $7BBF: $85
    ld [$1105], sp                                ; $7BC0: $08 $05 $11
    ld d, l                                       ; $7BC3: $55
    ld d, [hl]                                    ; $7BC4: $56
    inc hl                                        ; $7BC5: $23
    jr nc, @-$7B                                  ; $7BC6: $30 $83

    nop                                           ; $7BC8: $00
    inc b                                         ; $7BC9: $04
    jr nz, jr_066_7C0A                            ; $7BCA: $20 $3E

    ld [de], a                                    ; $7BCC: $12
    inc hl                                        ; $7BCD: $23
    add l                                         ; $7BCE: $85
    ld [$DD03], sp                                ; $7BCF: $08 $03 $DD
    sbc $DF                                       ; $7BD2: $DE $DF
    add a                                         ; $7BD4: $87
    ld [$3603], sp                                ; $7BD5: $08 $03 $36
    scf                                           ; $7BD8: $37
    jr @-$73                                      ; $7BD9: $18 $8B

    nop                                           ; $7BDB: $00
    dec b                                         ; $7BDC: $05
    ld d, b                                       ; $7BDD: $50
    dec h                                         ; $7BDE: $25
    ld d, d                                       ; $7BDF: $52
    ld b, [hl]                                    ; $7BE0: $46

jr_066_7BE1:
    rla                                           ; $7BE1: $17
    add h                                         ; $7BE2: $84
    ld [$5582], sp                                ; $7BE3: $08 $82 $55
    ld [bc], a                                    ; $7BE6: $02
    inc hl                                        ; $7BE7: $23
    jr nc, @-$7B                                  ; $7BE8: $30 $83

    nop                                           ; $7BEA: $00
    inc b                                         ; $7BEB: $04
    jr nz, @+$40                                  ; $7BEC: $20 $3E

    ld [hl+], a                                   ; $7BEE: $22
    inc hl                                        ; $7BEF: $23
    add e                                         ; $7BF0: $83
    ld [$CD06], sp                                ; $7BF1: $08 $06 $CD
    adc $CF                                       ; $7BF4: $CE $CF
    db $ED                                        ; $7BF6: $ED
    xor $EF                                       ; $7BF7: $EE $EF
    add d                                         ; $7BF9: $82
    ld [$8D02], sp                                ; $7BFA: $08 $02 $8D
    adc [hl]                                      ; $7BFD: $8E
    add e                                         ; $7BFE: $83
    ld [$2504], sp                                ; $7BFF: $08 $04 $25
    ld d, $3F                                     ; $7C02: $16 $3F
    inc bc                                        ; $7C04: $03
    add a                                         ; $7C05: $87
    ld [hl], e                                    ; $7C06: $73
    ld b, $05                                     ; $7C07: $06 $05
    nop                                           ; $7C09: $00

jr_066_7C0A:
    adc a                                         ; $7C0A: $8F
    nop                                           ; $7C0B: $00
    ld e, d                                       ; $7C0C: $5A
    dec h                                         ; $7C0D: $25
    add d                                         ; $7C0E: $82
    ld b, d                                       ; $7C0F: $42

jr_066_7C10:
    add h                                         ; $7C10: $84
    ld [$2603], sp                                ; $7C11: $08 $03 $26
    daa                                           ; $7C14: $27
    ld c, b                                       ; $7C15: $48
    add d                                         ; $7C16: $82
    nop                                           ; $7C17: $00
    dec b                                         ; $7C18: $05
    ld c, a                                       ; $7C19: $4F
    ld h, d                                       ; $7C1A: $62
    ld a, $12                                     ; $7C1B: $3E $12
    inc hl                                        ; $7C1D: $23
    add h                                         ; $7C1E: $84
    ld [$DD03], sp                                ; $7C1F: $08 $03 $DD
    sbc $DF                                       ; $7C22: $DE $DF
    add l                                         ; $7C24: $85

jr_066_7C25:
    ld [$9D02], sp                                ; $7C25: $08 $02 $9D
    sbc [hl]                                      ; $7C28: $9E
    add h                                         ; $7C29: $84
    ld [$2503], sp                                ; $7C2A: $08 $03 $25
    dec d                                         ; $7C2D: $15
    dec d                                         ; $7C2E: $15
    add h                                         ; $7C2F: $84
    inc de                                        ; $7C30: $13
    dec b                                         ; $7C31: $05
    inc d                                         ; $7C32: $14
    dec d                                         ; $7C33: $15
    ld d, $3F                                     ; $7C34: $16 $3F
    db $10                                        ; $7C36: $10
    add e                                         ; $7C37: $83
    nop                                           ; $7C38: $00
    inc bc                                        ; $7C39: $03
    ld h, a                                       ; $7C3A: $67
    ld b, c                                       ; $7C3B: $41
    ld b, d                                       ; $7C3C: $42
    add h                                         ; $7C3D: $84
    ld [$3603], sp                                ; $7C3E: $08 $03 $36
    scf                                           ; $7C41: $37
    jr c, @-$7B                                   ; $7C42: $38 $83

    nop                                           ; $7C44: $00
    inc bc                                        ; $7C45: $03
    halt                                          ; $7C46: $76
    ld hl, $8522                                  ; $7C47: $21 $22 $85
    ld [$ED03], sp                                ; $7C4A: $08 $03 $ED
    xor $EF                                       ; $7C4D: $EE $EF
    add l                                         ; $7C4F: $85
    ld [$AB04], sp                                ; $7C50: $08 $04 $AB
    xor h                                         ; $7C53: $AC
    adc l                                         ; $7C54: $8D
    adc [hl]                                      ; $7C55: $8E
    adc d                                         ; $7C56: $8A
    ld [$2505], sp                                ; $7C57: $08 $05 $25
    ld d, $96                                     ; $7C5A: $16 $96
    ccf                                           ; $7C5C: $3F
    rlca                                          ; $7C5D: $07
    add d                                         ; $7C5E: $82
    nop                                           ; $7C5F: $00
    inc bc                                        ; $7C60: $03
    halt                                          ; $7C61: $76
    ld b, c                                       ; $7C62: $41
    ld b, [hl]                                    ; $7C63: $46
    add h                                         ; $7C64: $84
    ld [$2609], sp                                ; $7C65: $08 $09 $26
    ld [hl+], a                                   ; $7C68: $22
    jr c, jr_066_7C6B                             ; $7C69: $38 $00

jr_066_7C6B:
    cp h                                          ; $7C6B: $BC
    nop                                           ; $7C6C: $00
    halt                                          ; $7C6D: $76
    ld sp, $8A32                                  ; $7C6E: $31 $32 $8A
    ld [$8D02], sp                                ; $7C71: $08 $02 $8D
    adc [hl]                                      ; $7C74: $8E
    add e                                         ; $7C75: $83
    ld [$9D02], sp                                ; $7C76: $08 $02 $9D
    sbc [hl]                                      ; $7C79: $9E
    adc e                                         ; $7C7A: $8B
    ld [$2509], sp                                ; $7C7B: $08 $09 $25
    ld h, $27                                     ; $7C7E: $26 $27
    jr c, jr_066_7C82                             ; $7C80: $38 $00

jr_066_7C82:
    cp h                                          ; $7C82: $BC
    halt                                          ; $7C83: $76
    ld b, c                                       ; $7C84: $41
    ld b, d                                       ; $7C85: $42
    add h                                         ; $7C86: $84
    ld [$3603], sp                                ; $7C87: $08 $03 $36
    scf                                           ; $7C8A: $37
    jr c, jr_066_7C10                             ; $7C8B: $38 $83

    nop                                           ; $7C8D: $00
    inc bc                                        ; $7C8E: $03
    halt                                          ; $7C8F: $76
    ld sp, $8A32                                  ; $7C90: $31 $32 $8A
    ld [$9D02], sp                                ; $7C93: $08 $02 $9D
    sbc [hl]                                      ; $7C96: $9E
    add e                                         ; $7C97: $83
    ld [$AB02], sp                                ; $7C98: $08 $02 $AB
    xor h                                         ; $7C9B: $AC
    adc h                                         ; $7C9C: $8C
    ld [$2603], sp                                ; $7C9D: $08 $03 $26
    daa                                           ; $7CA0: $27
    jr c, jr_066_7C25                             ; $7CA1: $38 $82

    nop                                           ; $7CA3: $00
    inc bc                                        ; $7CA4: $03
    halt                                          ; $7CA5: $76
    ld b, c                                       ; $7CA6: $41
    ld b, [hl]                                    ; $7CA7: $46
    add h                                         ; $7CA8: $84
    ld [$3200], sp                                ; $7CA9: $08 $00 $32
    ret nc                                        ; $7CAC: $D0

    rlca                                          ; $7CAD: $07
    adc l                                         ; $7CAE: $8D
    ld [$C182], sp                                ; $7CAF: $08 $82 $C1
    xor c                                         ; $7CB2: $A9
    ld [$0002], sp                                ; $7CB3: $08 $02 $00
    ld [$0082], sp                                ; $7CB6: $08 $82 $00
    add e                                         ; $7CB9: $83
    ld [$0084], sp                                ; $7CBA: $08 $84 $00
    add e                                         ; $7CBD: $83
    ld [$0086], sp                                ; $7CBE: $08 $86 $00
    sbc h                                         ; $7CC1: $9C
    ld [$0086], sp                                ; $7CC2: $08 $86 $00
    inc bc                                        ; $7CC5: $03
    ld b, b                                       ; $7CC6: $40
    ld [$8508], sp                                ; $7CC7: $08 $08 $85
    nop                                           ; $7CCA: $00
    add h                                         ; $7CCB: $84
    ld [$0082], sp                                ; $7CCC: $08 $82 $00
    add h                                         ; $7CCF: $84
    ld [$0006], sp                                ; $7CD0: $08 $06 $00
    ld [$0008], sp                                ; $7CD3: $08 $08 $00
    ld [$8308], sp                                ; $7CD6: $08 $08 $83
    nop                                           ; $7CD9: $00
    adc [hl]                                      ; $7CDA: $8E
    ld [$008A], sp                                ; $7CDB: $08 $8A $00
    add d                                         ; $7CDE: $82
    ld [$0085], sp                                ; $7CDF: $08 $85 $00
    add h                                         ; $7CE2: $84
    ld [$0082], sp                                ; $7CE3: $08 $82 $00
    add h                                         ; $7CE6: $84
    ld [$0003], sp                                ; $7CE7: $08 $03 $00
    ld [$8708], sp                                ; $7CEA: $08 $08 $87
    nop                                           ; $7CED: $00
    adc l                                         ; $7CEE: $8D
    ld [$008A], sp                                ; $7CEF: $08 $8A $00
    add e                                         ; $7CF2: $83
    ld [$0084], sp                                ; $7CF3: $08 $84 $00
    add h                                         ; $7CF6: $84
    ld [$0082], sp                                ; $7CF7: $08 $82 $00
    ld bc, $8408                                  ; $7CFA: $01 $08 $84
    nop                                           ; $7CFD: $00
    add d                                         ; $7CFE: $82
    ld [$0087], sp                                ; $7CFF: $08 $87 $00
    ld bc, $8408                                  ; $7D02: $01 $08 $84
    nop                                           ; $7D05: $00
    add d                                         ; $7D06: $82
    ld [$0083], sp                                ; $7D07: $08 $83 $00
    add h                                         ; $7D0A: $84
    ld [$4101], sp                                ; $7D0B: $08 $01 $41
    add l                                         ; $7D0E: $85
    nop                                           ; $7D0F: $00
    inc bc                                        ; $7D10: $03
    ld [rRAMG], sp                                ; $7D11: $08 $00 $00
    add e                                         ; $7D14: $83
    ld [$0085], sp                                ; $7D15: $08 $85 $00
    add e                                         ; $7D18: $83
    ld [$008F], sp                                ; $7D19: $08 $8F $00
    add d                                         ; $7D1C: $82
    ld [$008A], sp                                ; $7D1D: $08 $8A $00
    add h                                         ; $7D20: $84
    ld [$0083], sp                                ; $7D21: $08 $83 $00
    add e                                         ; $7D24: $83
    ld [$0001], sp                                ; $7D25: $08 $01 $00
    add h                                         ; $7D28: $84
    ld [$0086], sp                                ; $7D29: $08 $86 $00
    add e                                         ; $7D2C: $83
    ld [$0086], sp                                ; $7D2D: $08 $86 $00
    add e                                         ; $7D30: $83
    ld [$0084], sp                                ; $7D31: $08 $84 $00
    add h                                         ; $7D34: $84
    ld [$0089], sp                                ; $7D35: $08 $89 $00
    add h                                         ; $7D38: $84
    ld [$0082], sp                                ; $7D39: $08 $82 $00
    adc c                                         ; $7D3C: $89
    ld [$0086], sp                                ; $7D3D: $08 $86 $00
    add e                                         ; $7D40: $83
    ld [$0086], sp                                ; $7D41: $08 $86 $00
    add e                                         ; $7D44: $83
    ld [$0084], sp                                ; $7D45: $08 $84 $00
    add h                                         ; $7D48: $84
    ld [$0089], sp                                ; $7D49: $08 $89 $00
    add h                                         ; $7D4C: $84
    ld [$0082], sp                                ; $7D4D: $08 $82 $00
    adc b                                         ; $7D50: $88
    ld [$0082], sp                                ; $7D51: $08 $82 $00
    ld bc, $8408                                  ; $7D54: $01 $08 $84
    nop                                           ; $7D57: $00
    add h                                         ; $7D58: $84
    ld [$0086], sp                                ; $7D59: $08 $86 $00
    add d                                         ; $7D5C: $82
    ld [$0083], sp                                ; $7D5D: $08 $83 $00
    adc b                                         ; $7D60: $88
    ld [$0082], sp                                ; $7D61: $08 $82 $00
    ld bc, $8308                                  ; $7D64: $01 $08 $83
    nop                                           ; $7D67: $00
    add l                                         ; $7D68: $85
    ld [$0084], sp                                ; $7D69: $08 $84 $00
    add l                                         ; $7D6C: $85
    ld [$0082], sp                                ; $7D6D: $08 $82 $00
    ld bc, $8408                                  ; $7D70: $01 $08 $84
    nop                                           ; $7D73: $00
    add h                                         ; $7D74: $84
    ld [$0085], sp                                ; $7D75: $08 $85 $00
    add h                                         ; $7D78: $84
    ld [$0082], sp                                ; $7D79: $08 $82 $00
    adc b                                         ; $7D7C: $88
    ld [$0082], sp                                ; $7D7D: $08 $82 $00
    adc c                                         ; $7D80: $89
    ld [$0084], sp                                ; $7D81: $08 $84 $00
    add d                                         ; $7D84: $82
    ld [$0001], sp                                ; $7D85: $08 $01 $00
    add e                                         ; $7D88: $83
    ld [$0002], sp                                ; $7D89: $08 $02 $00
    ld [$0084], sp                                ; $7D8C: $08 $84 $00
    add e                                         ; $7D8F: $83
    ld [$0085], sp                                ; $7D90: $08 $85 $00
    adc h                                         ; $7D93: $8C
    ld [$0082], sp                                ; $7D94: $08 $82 $00
    inc bc                                        ; $7D97: $03
    ld [rRAMG], sp                                ; $7D98: $08 $00 $00
    add a                                         ; $7D9B: $87
    ld [$0089], sp                                ; $7D9C: $08 $89 $00
    add e                                         ; $7D9F: $83
    ld [$0086], sp                                ; $7DA0: $08 $86 $00
    add d                                         ; $7DA3: $82
    ld [$0083], sp                                ; $7DA4: $08 $83 $00
    ld [bc], a                                    ; $7DA7: $02
    ld [$8400], sp                                ; $7DA8: $08 $00 $84
    ld [$0001], sp                                ; $7DAB: $08 $01 $00
    add l                                         ; $7DAE: $85
    ld [$008B], sp                                ; $7DAF: $08 $8B $00
    add e                                         ; $7DB2: $83
    ld [$008A], sp                                ; $7DB3: $08 $8A $00
    add e                                         ; $7DB6: $83
    ld [$0089], sp                                ; $7DB7: $08 $89 $00
    add a                                         ; $7DBA: $87
    ld [$0083], sp                                ; $7DBB: $08 $83 $00
    add e                                         ; $7DBE: $83
    ld [$008B], sp                                ; $7DBF: $08 $8B $00
    add h                                         ; $7DC2: $84
    ld [$0002], sp                                ; $7DC3: $08 $02 $00
    ld [$0085], sp                                ; $7DC6: $08 $85 $00
    add [hl]                                      ; $7DC9: $86
    ld [$0087], sp                                ; $7DCA: $08 $87 $00
    adc b                                         ; $7DCD: $88
    ld [$0084], sp                                ; $7DCE: $08 $84 $00
    add h                                         ; $7DD1: $84
    ld [$008A], sp                                ; $7DD2: $08 $8A $00
    add h                                         ; $7DD5: $84
    ld [$0003], sp                                ; $7DD6: $08 $03 $00
    ld [$8408], sp                                ; $7DD9: $08 $08 $84
    nop                                           ; $7DDC: $00
    add a                                         ; $7DDD: $87
    ld [$0084], sp                                ; $7DDE: $08 $84 $00
    add [hl]                                      ; $7DE1: $86
    ld [$0088], sp                                ; $7DE2: $08 $88 $00
    add h                                         ; $7DE5: $84
    ld [$008B], sp                                ; $7DE6: $08 $8B $00
    add e                                         ; $7DE9: $83
    ld [$008A], sp                                ; $7DEA: $08 $8A $00
    add h                                         ; $7DED: $84
    ld [$0084], sp                                ; $7DEE: $08 $84 $00
    add l                                         ; $7DF1: $85
    ld [$0087], sp                                ; $7DF2: $08 $87 $00
    ld [bc], a                                    ; $7DF5: $02
    ld [$8400], sp                                ; $7DF6: $08 $00 $84
    ld [$008C], sp                                ; $7DF9: $08 $8C $00
    inc bc                                        ; $7DFC: $03
    ret nz                                        ; $7DFD: $C0

    ld [$8A08], sp                                ; $7DFE: $08 $08 $8A
    nop                                           ; $7E01: $00
    add h                                         ; $7E02: $84
    ld [$0083], sp                                ; $7E03: $08 $83 $00
    add h                                         ; $7E06: $84
    ld [$008A], sp                                ; $7E07: $08 $8A $00
    add h                                         ; $7E0A: $84
    ld [$0087], sp                                ; $7E0B: $08 $87 $00
    ld bc, $8408                                  ; $7E0E: $01 $08 $84
    nop                                           ; $7E11: $00
    ld bc, $83C0                                  ; $7E12: $01 $C0 $83
    ld [$0089], sp                                ; $7E15: $08 $89 $00
    add l                                         ; $7E18: $85
    ld [$0082], sp                                ; $7E19: $08 $82 $00
    add e                                         ; $7E1C: $83
    ld [$008D], sp                                ; $7E1D: $08 $8D $00
    ld bc, $8708                                  ; $7E20: $01 $08 $87
    nop                                           ; $7E23: $00
    adc d                                         ; $7E24: $8A
    ld [$0082], sp                                ; $7E25: $08 $82 $00
    ld bc, $8508                                  ; $7E28: $01 $08 $85
    nop                                           ; $7E2B: $00
    add l                                         ; $7E2C: $85
    ld [$0083], sp                                ; $7E2D: $08 $83 $00
    add e                                         ; $7E30: $83
    ld [$0086], sp                                ; $7E31: $08 $86 $00
    inc bc                                        ; $7E34: $03
    ld [rRAMG], sp                                ; $7E35: $08 $00 $00
    add d                                         ; $7E38: $82
    ld [$0088], sp                                ; $7E39: $08 $88 $00
    adc h                                         ; $7E3C: $8C
    ld [$0087], sp                                ; $7E3D: $08 $87 $00
    add [hl]                                      ; $7E40: $86
    ld [$0084], sp                                ; $7E41: $08 $84 $00
    add d                                         ; $7E44: $82
    ld [$0086], sp                                ; $7E45: $08 $86 $00
    ld [bc], a                                    ; $7E48: $02
    ld [$8300], sp                                ; $7E49: $08 $00 $83
    ld [$0088], sp                                ; $7E4C: $08 $88 $00
    add e                                         ; $7E4F: $83
    ld [$0003], sp                                ; $7E50: $08 $03 $00
    ld [$8208], sp                                ; $7E53: $08 $08 $82
    nop                                           ; $7E56: $00
    add l                                         ; $7E57: $85
    ld [$0086], sp                                ; $7E58: $08 $86 $00
    add [hl]                                      ; $7E5B: $86
    ld [$0084], sp                                ; $7E5C: $08 $84 $00
    add h                                         ; $7E5F: $84
    ld [$0084], sp                                ; $7E60: $08 $84 $00
    add l                                         ; $7E63: $85
    ld [$0088], sp                                ; $7E64: $08 $88 $00
    add d                                         ; $7E67: $82
    ld [$0086], sp                                ; $7E68: $08 $86 $00
    add [hl]                                      ; $7E6B: $86
    ld [$0086], sp                                ; $7E6C: $08 $86 $00
    add d                                         ; $7E6F: $82
    ld [$0087], sp                                ; $7E70: $08 $87 $00
    add l                                         ; $7E73: $85
    ld [$0001], sp                                ; $7E74: $08 $01 $00
    add a                                         ; $7E77: $87
    ld [$0087], sp                                ; $7E78: $08 $87 $00
    add e                                         ; $7E7B: $83
    ld [$0085], sp                                ; $7E7C: $08 $85 $00
    add a                                         ; $7E7F: $87
    ld [$0083], sp                                ; $7E80: $08 $83 $00
    add d                                         ; $7E83: $82
    ld [$008C], sp                                ; $7E84: $08 $8C $00
    adc e                                         ; $7E87: $8B
    ld [$0087], sp                                ; $7E88: $08 $87 $00
    add e                                         ; $7E8B: $83
    ld [$0085], sp                                ; $7E8C: $08 $85 $00
    adc b                                         ; $7E8F: $88
    ld [$0001], sp                                ; $7E90: $08 $01 $00
    add h                                         ; $7E93: $84
    ld [$0084], sp                                ; $7E94: $08 $84 $00
    add d                                         ; $7E97: $82
    ld [$0085], sp                                ; $7E98: $08 $85 $00
    adc c                                         ; $7E9B: $89
    ld [$0089], sp                                ; $7E9C: $08 $89 $00
    add d                                         ; $7E9F: $82
    ld [$0086], sp                                ; $7EA0: $08 $86 $00
    adc l                                         ; $7EA3: $8D
    ld [$0084], sp                                ; $7EA4: $08 $84 $00
    add d                                         ; $7EA7: $82
    ld [$0085], sp                                ; $7EA8: $08 $85 $00
    add d                                         ; $7EAB: $82
    ld [$0097], sp                                ; $7EAC: $08 $97 $00
    adc [hl]                                      ; $7EAF: $8E
    ld [$0084], sp                                ; $7EB0: $08 $84 $00
    add d                                         ; $7EB3: $82
    ld [$008F], sp                                ; $7EB4: $08 $8F $00
    ld bc, $8408                                  ; $7EB7: $01 $08 $84
    nop                                           ; $7EBA: $00
    ld bc, $8308                                  ; $7EBB: $01 $08 $83
    nop                                           ; $7EBE: $00
    add d                                         ; $7EBF: $82
    ld [$0083], sp                                ; $7EC0: $08 $83 $00
    sub b                                         ; $7EC3: $90
    ld [$0083], sp                                ; $7EC4: $08 $83 $00
    add e                                         ; $7EC7: $83
    ld [$008E], sp                                ; $7EC8: $08 $8E $00
    add d                                         ; $7ECB: $82
    ld [$0001], sp                                ; $7ECC: $08 $01 $00
    add e                                         ; $7ECF: $83
    ld [$0082], sp                                ; $7ED0: $08 $82 $00
    add h                                         ; $7ED3: $84
    ld [$0083], sp                                ; $7ED4: $08 $83 $00
    add h                                         ; $7ED7: $84
    ld [$0084], sp                                ; $7ED8: $08 $84 $00
    add d                                         ; $7EDB: $82
    ld [$0001], sp                                ; $7EDC: $08 $01 $00
    add h                                         ; $7EDF: $84
    ld [$0083], sp                                ; $7EE0: $08 $83 $00
    add e                                         ; $7EE3: $83
    ld [$0086], sp                                ; $7EE4: $08 $86 $00
    add d                                         ; $7EE7: $82
    ld [$0085], sp                                ; $7EE8: $08 $85 $00
    adc l                                         ; $7EEB: $8D
    ld [$0084], sp                                ; $7EEC: $08 $84 $00
    add e                                         ; $7EEF: $83
    ld [$0088], sp                                ; $7EF0: $08 $88 $00
    add e                                         ; $7EF3: $83
    ld [$008A], sp                                ; $7EF4: $08 $8A $00
    add h                                         ; $7EF7: $84
    ld [$0084], sp                                ; $7EF8: $08 $84 $00
    adc l                                         ; $7EFB: $8D
    ld [$0086], sp                                ; $7EFC: $08 $86 $00
    add d                                         ; $7EFF: $82
    ld [$0088], sp                                ; $7F00: $08 $88 $00
    add d                                         ; $7F03: $82
    ld [$0087], sp                                ; $7F04: $08 $87 $00
    inc bc                                        ; $7F07: $03
    ld [rRAMG], sp                                ; $7F08: $08 $00 $00
    adc l                                         ; $7F0B: $8D
    ld [$0084], sp                                ; $7F0C: $08 $84 $00
    add h                                         ; $7F0F: $84
    ld [$0082], sp                                ; $7F10: $08 $82 $00
    dec b                                         ; $7F13: $05
    ld [rRAMG], sp                                ; $7F14: $08 $00 $00
    ld [$8200], sp                                ; $7F17: $08 $00 $82
    ld [$4202], sp                                ; $7F1A: $08 $02 $42
    ld [$0086], sp                                ; $7F1D: $08 $86 $00
    add d                                         ; $7F20: $82
    ld [$0087], sp                                ; $7F21: $08 $87 $00
    inc bc                                        ; $7F24: $03
    ld [rRAMG], sp                                ; $7F25: $08 $00 $00
    adc e                                         ; $7F28: $8B
    ld [$0088], sp                                ; $7F29: $08 $88 $00
    add d                                         ; $7F2C: $82
    ld [$0082], sp                                ; $7F2D: $08 $82 $00
    adc c                                         ; $7F30: $89
    ld [$0086], sp                                ; $7F31: $08 $86 $00
    add e                                         ; $7F34: $83
    ld [$0082], sp                                ; $7F35: $08 $82 $00
    inc bc                                        ; $7F38: $03
    ld [rRAMG], sp                                ; $7F39: $08 $00 $00
    add e                                         ; $7F3C: $83
    ld [$0082], sp                                ; $7F3D: $08 $82 $00
    inc bc                                        ; $7F40: $03
    ld [rRAMG], sp                                ; $7F41: $08 $00 $00
    add d                                         ; $7F44: $82
    ld [$0003], sp                                ; $7F45: $08 $03 $00
    ld [$8308], sp                                ; $7F48: $08 $08 $83
    nop                                           ; $7F4B: $00
    add d                                         ; $7F4C: $82
    ld [$0083], sp                                ; $7F4D: $08 $83 $00
    ld [bc], a                                    ; $7F50: $02
    ld [$8300], sp                                ; $7F51: $08 $00 $83
    ld [$0001], sp                                ; $7F54: $08 $01 $00
    adc c                                         ; $7F57: $89
    ld [$0086], sp                                ; $7F58: $08 $86 $00
    add e                                         ; $7F5B: $83
    ld [$0082], sp                                ; $7F5C: $08 $82 $00
    add [hl]                                      ; $7F5F: $86
    ld [$0085], sp                                ; $7F60: $08 $85 $00
    add d                                         ; $7F63: $82
    ld [$0085], sp                                ; $7F64: $08 $85 $00
    add e                                         ; $7F67: $83
    ld [$0083], sp                                ; $7F68: $08 $83 $00
    ld [bc], a                                    ; $7F6B: $02
    ld [$8300], sp                                ; $7F6C: $08 $00 $83
    ld [$0086], sp                                ; $7F6F: $08 $86 $00
    add e                                         ; $7F72: $83
    ld [$0087], sp                                ; $7F73: $08 $87 $00
    add e                                         ; $7F76: $83
    ld [$0082], sp                                ; $7F77: $08 $82 $00
    add l                                         ; $7F7A: $85
    ld [$0086], sp                                ; $7F7B: $08 $86 $00
    add e                                         ; $7F7E: $83
    ld [$0084], sp                                ; $7F7F: $08 $84 $00
    add e                                         ; $7F82: $83
    ld [$4306], sp                                ; $7F83: $08 $06 $43
    nop                                           ; $7F86: $00
    nop                                           ; $7F87: $00
    ld [rRAMG], sp                                ; $7F88: $08 $00 $00
    add e                                         ; $7F8B: $83
    ld [$0085], sp                                ; $7F8C: $08 $85 $00
    add h                                         ; $7F8F: $84
    ld [$0086], sp                                ; $7F90: $08 $86 $00
    adc c                                         ; $7F93: $89
    ld [$0088], sp                                ; $7F94: $08 $88 $00
    add d                                         ; $7F97: $82
    ld [$0084], sp                                ; $7F98: $08 $84 $00
    add e                                         ; $7F9B: $83
    ld [$0086], sp                                ; $7F9C: $08 $86 $00
    add e                                         ; $7F9F: $83
    ld [$0084], sp                                ; $7FA0: $08 $84 $00
    add l                                         ; $7FA3: $85
    ld [$0086], sp                                ; $7FA4: $08 $86 $00
    adc b                                         ; $7FA7: $88
    ld [$008C], sp                                ; $7FA8: $08 $8C $00
    ld bc, $8808                                  ; $7FAB: $01 $08 $88
    nop                                           ; $7FAE: $00
    add d                                         ; $7FAF: $82
    ld [$0001], sp                                ; $7FB0: $08 $01 $00
    add e                                         ; $7FB3: $83
    ld [$0082], sp                                ; $7FB4: $08 $82 $00
    ld [bc], a                                    ; $7FB7: $02
    ld [$8400], sp                                ; $7FB8: $08 $00 $84
    ld [$0091], sp                                ; $7FBB: $08 $91 $00
    add d                                         ; $7FBE: $82
    ld [$0086], sp                                ; $7FBF: $08 $86 $00
    add e                                         ; $7FC2: $83
    ld [$0002], sp                                ; $7FC3: $08 $02 $00
    ld [$0089], sp                                ; $7FC6: $08 $89 $00
    add d                                         ; $7FC9: $82
    ld [$0085], sp                                ; $7FCA: $08 $85 $00
    add h                                         ; $7FCD: $84
    ld [$0084], sp                                ; $7FCE: $08 $84 $00
    ld bc, $8408                                  ; $7FD1: $01 $08 $84
    nop                                           ; $7FD4: $00
    add l                                         ; $7FD5: $85
    ld [$0083], sp                                ; $7FD6: $08 $83 $00
    add d                                         ; $7FD9: $82
    ld [$0085], sp                                ; $7FDA: $08 $85 $00
    add h                                         ; $7FDD: $84
    ld [$0002], sp                                ; $7FDE: $08 $02 $00
    ld [$0083], sp                                ; $7FE1: $08 $83 $00
    add h                                         ; $7FE4: $84
    ld [$0082], sp                                ; $7FE5: $08 $82 $00
    add d                                         ; $7FE8: $82
    ld [$0002], sp                                ; $7FE9: $08 $02 $00
    ld [$0082], sp                                ; $7FEC: $08 $82 $00
    ld bc, $9344                                  ; $7FEF: $01 $44 $93
    ld [$0001], sp                                ; $7FF2: $08 $01 $00
    sbc c                                         ; $7FF5: $99
    ld [$0002], sp                                ; $7FF6: $08 $02 $00
    ld [$0083], sp                                ; $7FF9: $08 $83 $00
    or h                                          ; $7FFC: $B4
    ld [rRAMG], sp                                ; $7FFD: $08 $00 $00
