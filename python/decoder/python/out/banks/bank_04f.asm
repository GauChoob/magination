SECTION "ROM Bank $04f", ROMX[$4000], BANK[$4f]

    db $3C, $4F, $7C, $1E, $5C, $7C, $A1, $6F, $66, $DB, $44, $73, $38, $4A, $7A, $3C
    db $4F, $7C, $1E, $5C, $7C, $A1, $6F, $66, $FF, $6C, $70, $5E, $7A, $79, $3C, $4F
    db $7C, $1E, $5C, $7C, $A1, $6F, $66, $B3, $63, $79, $BF, $73, $7B, $3C, $4F, $7C
    db $1E, $5C, $7C, $A1, $6F, $66, $6C, $63, $6E, $97, $57, $79

    inc a                                         ; $403C: $3C
    ld c, a                                       ; $403D: $4F
    ld a, h                                       ; $403E: $7C
    ld e, $5C                                     ; $403F: $1E $5C
    ld a, h                                       ; $4041: $7C
    and c                                         ; $4042: $A1
    ld l, a                                       ; $4043: $6F
    ld h, [hl]                                    ; $4044: $66
    sbc l                                         ; $4045: $9D
    ld l, l                                       ; $4046: $6D
    ld l, [hl]                                    ; $4047: $6E
    sub h                                         ; $4048: $94
    ld a, [hl]                                    ; $4049: $7E
    ld a, b                                       ; $404A: $78
    inc a                                         ; $404B: $3C
    ld c, a                                       ; $404C: $4F
    ld a, h                                       ; $404D: $7C
    ld e, $5C                                     ; $404E: $1E $5C
    ld a, h                                       ; $4050: $7C
    and c                                         ; $4051: $A1
    ld l, a                                       ; $4052: $6F
    ld h, [hl]                                    ; $4053: $66
    ld e, b                                       ; $4054: $58
    ld [hl], h                                    ; $4055: $74
    ld l, [hl]                                    ; $4056: $6E
    ld b, c                                       ; $4057: $41
    ld l, b                                       ; $4058: $68
    ld a, d                                       ; $4059: $7A
    inc a                                         ; $405A: $3C
    ld c, a                                       ; $405B: $4F
    ld a, h                                       ; $405C: $7C
    ld e, $5C                                     ; $405D: $1E $5C
    ld a, h                                       ; $405F: $7C
    and c                                         ; $4060: $A1
    ld l, a                                       ; $4061: $6F
    ld h, [hl]                                    ; $4062: $66
    push hl                                       ; $4063: $E5
    ld h, a                                       ; $4064: $67
    ld h, c                                       ; $4065: $61
    nop                                           ; $4066: $00
    ld b, b                                       ; $4067: $40
    ld [hl], a                                    ; $4068: $77
    inc a                                         ; $4069: $3C
    ld c, a                                       ; $406A: $4F
    ld a, h                                       ; $406B: $7C
    ld e, $5C                                     ; $406C: $1E $5C
    ld a, h                                       ; $406E: $7C
    and c                                         ; $406F: $A1
    ld l, a                                       ; $4070: $6F
    ld h, [hl]                                    ; $4071: $66
    and h                                         ; $4072: $A4
    ld d, [hl]                                    ; $4073: $56
    ld a, c                                       ; $4074: $79
    sub d                                         ; $4075: $92
    ld a, d                                       ; $4076: $7A
    ld a, e                                       ; $4077: $7B
    db $FC                                        ; $4078: $FC
    ld c, d                                       ; $4079: $4A
    ld a, h                                       ; $407A: $7C
    ld l, e                                       ; $407B: $6B
    ld h, l                                       ; $407C: $65
    ld a, h                                       ; $407D: $7C
    and c                                         ; $407E: $A1
    ld l, a                                       ; $407F: $6F
    ld h, [hl]                                    ; $4080: $66
    sub a                                         ; $4081: $97
    ld l, h                                       ; $4082: $6C
    ld a, b                                       ; $4083: $78
    ld a, $7B                                     ; $4084: $3E $7B
    ld a, e                                       ; $4086: $7B
    db $FC                                        ; $4087: $FC
    ld c, d                                       ; $4088: $4A
    ld a, h                                       ; $4089: $7C
    ld l, e                                       ; $408A: $6B
    ld h, l                                       ; $408B: $65
    ld a, h                                       ; $408C: $7C
    and c                                         ; $408D: $A1
    ld l, a                                       ; $408E: $6F
    ld h, [hl]                                    ; $408F: $66
    ld a, c                                       ; $4090: $79
    ld e, c                                       ; $4091: $59
    ld a, c                                       ; $4092: $79
    ld a, $7B                                     ; $4093: $3E $7B
    ld a, e                                       ; $4095: $7B
    ld a, h                                       ; $4096: $7C
    ld d, l                                       ; $4097: $55
    ld a, h                                       ; $4098: $7C
    adc c                                         ; $4099: $89
    ld e, a                                       ; $409A: $5F
    ld a, h                                       ; $409B: $7C
    ld l, e                                       ; $409C: $6B
    ld l, h                                       ; $409D: $6C
    ld h, h                                       ; $409E: $64
    or e                                          ; $409F: $B3
    ld b, c                                       ; $40A0: $41
    ld a, e                                       ; $40A1: $7B
    add [hl]                                      ; $40A2: $86
    ld h, b                                       ; $40A3: $60
    ld a, h                                       ; $40A4: $7C
    inc a                                         ; $40A5: $3C
    ld c, a                                       ; $40A6: $4F
    ld a, h                                       ; $40A7: $7C
    ld e, $5C                                     ; $40A8: $1E $5C
    ld a, h                                       ; $40AA: $7C
    and c                                         ; $40AB: $A1
    ld l, a                                       ; $40AC: $6F
    ld h, [hl]                                    ; $40AD: $66
    ld a, [c]                                     ; $40AE: $F2
    ld a, [hl]                                    ; $40AF: $7E
    ld [hl], h                                    ; $40B0: $74
    dec b                                         ; $40B1: $05
    ld d, [hl]                                    ; $40B2: $56
    ld a, e                                       ; $40B3: $7B
    inc a                                         ; $40B4: $3C
    ld c, a                                       ; $40B5: $4F
    ld a, h                                       ; $40B6: $7C
    ld e, $5C                                     ; $40B7: $1E $5C
    ld a, h                                       ; $40B9: $7C
    and c                                         ; $40BA: $A1
    ld l, a                                       ; $40BB: $6F
    ld h, [hl]                                    ; $40BC: $66
    ld l, a                                       ; $40BD: $6F
    ld a, b                                       ; $40BE: $78
    ld a, b                                       ; $40BF: $78
    ld a, [$7B5C]                                 ; $40C0: $FA $5C $7B
    ld a, h                                       ; $40C3: $7C
    ld c, [hl]                                    ; $40C4: $4E
    ld a, h                                       ; $40C5: $7C
    ld h, e                                       ; $40C6: $63
    ld h, h                                       ; $40C7: $64
    ld a, h                                       ; $40C8: $7C
    di                                            ; $40C9: $F3
    ld d, c                                       ; $40CA: $51
    ld l, b                                       ; $40CB: $68
    dec c                                         ; $40CC: $0D
    ld b, l                                       ; $40CD: $45
    ld a, e                                       ; $40CE: $7B
    ld [hl], $5B                                  ; $40CF: $36 $5B
    ld a, h                                       ; $40D1: $7C
    ld a, h                                       ; $40D2: $7C
    ld c, [hl]                                    ; $40D3: $4E
    ld a, h                                       ; $40D4: $7C
    ld h, e                                       ; $40D5: $63
    ld h, h                                       ; $40D6: $64
    ld a, h                                       ; $40D7: $7C
    di                                            ; $40D8: $F3
    ld d, c                                       ; $40D9: $51
    ld l, b                                       ; $40DA: $68
    inc c                                         ; $40DB: $0C
    ld c, e                                       ; $40DC: $4B
    ld a, e                                       ; $40DD: $7B
    rla                                           ; $40DE: $17
    ld h, c                                       ; $40DF: $61
    ld a, h                                       ; $40E0: $7C
    cp h                                          ; $40E1: $BC
    ld c, [hl]                                    ; $40E2: $4E
    ld a, h                                       ; $40E3: $7C
    or h                                          ; $40E4: $B4
    ld l, h                                       ; $40E5: $6C
    ld a, e                                       ; $40E6: $7B
    cp h                                          ; $40E7: $BC
    ld h, l                                       ; $40E8: $65
    ld h, e                                       ; $40E9: $63
    ld b, h                                       ; $40EA: $44
    ld b, c                                       ; $40EB: $41
    ld a, b                                       ; $40EC: $78
    ld bc, $7B55                                  ; $40ED: $01 $55 $7B
    cp h                                          ; $40F0: $BC
    ld c, [hl]                                    ; $40F1: $4E
    ld a, h                                       ; $40F2: $7C
    or h                                          ; $40F3: $B4
    ld l, h                                       ; $40F4: $6C
    ld a, e                                       ; $40F5: $7B
    cp h                                          ; $40F6: $BC
    ld h, l                                       ; $40F7: $65
    ld h, e                                       ; $40F8: $63
    pop af                                        ; $40F9: $F1
    ld l, b                                       ; $40FA: $68
    ld [hl], a                                    ; $40FB: $77
    rst $30                                       ; $40FC: $F7
    ld d, d                                       ; $40FD: $52
    ld a, e                                       ; $40FE: $7B
    cp h                                          ; $40FF: $BC
    ld c, [hl]                                    ; $4100: $4E
    ld a, h                                       ; $4101: $7C
    or h                                          ; $4102: $B4
    ld l, h                                       ; $4103: $6C
    ld a, e                                       ; $4104: $7B
    cp h                                          ; $4105: $BC
    ld h, l                                       ; $4106: $65
    ld h, e                                       ; $4107: $63
    xor h                                         ; $4108: $AC
    ld [hl], d                                    ; $4109: $72
    ld [hl], l                                    ; $410A: $75
    inc de                                        ; $410B: $13
    ld [hl], h                                    ; $410C: $74
    ld a, d                                       ; $410D: $7A
    cp h                                          ; $410E: $BC
    ld c, [hl]                                    ; $410F: $4E
    ld a, h                                       ; $4110: $7C
    or h                                          ; $4111: $B4
    ld l, h                                       ; $4112: $6C
    ld a, e                                       ; $4113: $7B
    cp h                                          ; $4114: $BC
    ld h, l                                       ; $4115: $65
    ld h, e                                       ; $4116: $63
    ld l, $75                                     ; $4117: $2E $75
    halt                                          ; $4119: $76
    ld a, a                                       ; $411A: $7F
    ld b, h                                       ; $411B: $44
    ld a, e                                       ; $411C: $7B
    cp h                                          ; $411D: $BC
    ld c, [hl]                                    ; $411E: $4E
    ld a, h                                       ; $411F: $7C
    or h                                          ; $4120: $B4
    ld l, h                                       ; $4121: $6C
    ld a, e                                       ; $4122: $7B
    cp h                                          ; $4123: $BC
    ld h, l                                       ; $4124: $65
    ld h, e                                       ; $4125: $63
    ld d, a                                       ; $4126: $57
    ld c, e                                       ; $4127: $4B
    ld [hl], l                                    ; $4128: $75
    ld d, b                                       ; $4129: $50
    ld e, d                                       ; $412A: $5A
    ld a, d                                       ; $412B: $7A
    cp h                                          ; $412C: $BC
    ld c, [hl]                                    ; $412D: $4E
    ld a, h                                       ; $412E: $7C
    or h                                          ; $412F: $B4
    ld l, h                                       ; $4130: $6C
    ld a, e                                       ; $4131: $7B
    cp h                                          ; $4132: $BC
    ld h, l                                       ; $4133: $65
    ld h, e                                       ; $4134: $63
    ld d, d                                       ; $4135: $52
    ld a, [hl]                                    ; $4136: $7E
    ld l, d                                       ; $4137: $6A
    add $6F                                       ; $4138: $C6 $6F
    ld a, d                                       ; $413A: $7A
    cp h                                          ; $413B: $BC
    ld c, [hl]                                    ; $413C: $4E
    ld a, h                                       ; $413D: $7C
    or h                                          ; $413E: $B4
    ld l, h                                       ; $413F: $6C
    ld a, e                                       ; $4140: $7B
    cp h                                          ; $4141: $BC
    ld h, l                                       ; $4142: $65
    ld h, e                                       ; $4143: $63
    rst $20                                       ; $4144: $E7
    ld d, b                                       ; $4145: $50
    ld [hl], l                                    ; $4146: $75
    add hl, hl                                    ; $4147: $29
    ld l, d                                       ; $4148: $6A
    ld a, d                                       ; $4149: $7A
    cp h                                          ; $414A: $BC
    ld c, [hl]                                    ; $414B: $4E
    ld a, h                                       ; $414C: $7C
    or h                                          ; $414D: $B4
    ld l, h                                       ; $414E: $6C
    ld a, e                                       ; $414F: $7B
    cp h                                          ; $4150: $BC
    ld h, l                                       ; $4151: $65
    ld h, e                                       ; $4152: $63
    dec h                                         ; $4153: $25
    ld d, e                                       ; $4154: $53
    ld [hl], e                                    ; $4155: $73
    ret                                           ; $4156: $C9


    ld h, d                                       ; $4157: $62
    ld a, c                                       ; $4158: $79
    cp h                                          ; $4159: $BC
    ld c, [hl]                                    ; $415A: $4E
    ld a, h                                       ; $415B: $7C
    or h                                          ; $415C: $B4
    ld l, h                                       ; $415D: $6C
    ld a, e                                       ; $415E: $7B
    cp h                                          ; $415F: $BC
    ld h, l                                       ; $4160: $65
    ld h, e                                       ; $4161: $63
    ld d, b                                       ; $4162: $50
    ld h, a                                       ; $4163: $67
    ld a, c                                       ; $4164: $79
    ld a, b                                       ; $4165: $78
    ld e, l                                       ; $4166: $5D
    ld a, h                                       ; $4167: $7C
    cp h                                          ; $4168: $BC
    ld c, [hl]                                    ; $4169: $4E
    ld a, h                                       ; $416A: $7C
    or h                                          ; $416B: $B4
    ld l, h                                       ; $416C: $6C
    ld a, e                                       ; $416D: $7B
    cp h                                          ; $416E: $BC
    ld h, l                                       ; $416F: $65
    ld h, e                                       ; $4170: $63
    db $E4                                        ; $4171: $E4
    ld d, b                                       ; $4172: $50
    ld a, c                                       ; $4173: $79
    ld a, l                                       ; $4174: $7D
    ld [hl], h                                    ; $4175: $74
    ld a, e                                       ; $4176: $7B
    cp h                                          ; $4177: $BC
    ld c, [hl]                                    ; $4178: $4E
    ld a, h                                       ; $4179: $7C
    or h                                          ; $417A: $B4
    ld l, h                                       ; $417B: $6C
    ld a, e                                       ; $417C: $7B
    cp h                                          ; $417D: $BC
    ld h, l                                       ; $417E: $65
    ld h, e                                       ; $417F: $63
    ld [hl], e                                    ; $4180: $73
    ld d, d                                       ; $4181: $52
    ld a, e                                       ; $4182: $7B
    ld [hl+], a                                   ; $4183: $22
    ld h, b                                       ; $4184: $60
    ld a, h                                       ; $4185: $7C
    cp h                                          ; $4186: $BC
    ld c, [hl]                                    ; $4187: $4E
    ld a, h                                       ; $4188: $7C
    or h                                          ; $4189: $B4
    ld l, h                                       ; $418A: $6C
    ld a, e                                       ; $418B: $7B
    cp h                                          ; $418C: $BC
    ld h, l                                       ; $418D: $65
    ld h, e                                       ; $418E: $63
    inc hl                                        ; $418F: $23
    ld c, e                                       ; $4190: $4B
    ld a, b                                       ; $4191: $78
    sub d                                         ; $4192: $92
    ld l, a                                       ; $4193: $6F
    ld a, e                                       ; $4194: $7B
    ld a, h                                       ; $4195: $7C
    ld c, a                                       ; $4196: $4F
    ld a, h                                       ; $4197: $7C
    scf                                           ; $4198: $37
    ld h, h                                       ; $4199: $64
    ld a, h                                       ; $419A: $7C
    nop                                           ; $419B: $00
    ld b, b                                       ; $419C: $40
    ld h, d                                       ; $419D: $62
    cp c                                          ; $419E: $B9
    ld e, h                                       ; $419F: $5C
    ld [hl], d                                    ; $41A0: $72
    inc b                                         ; $41A1: $04
    ld l, e                                       ; $41A2: $6B
    ld a, e                                       ; $41A3: $7B
    ld a, h                                       ; $41A4: $7C
    ld c, a                                       ; $41A5: $4F
    ld a, h                                       ; $41A6: $7C
    scf                                           ; $41A7: $37
    ld h, h                                       ; $41A8: $64
    ld a, h                                       ; $41A9: $7C
    nop                                           ; $41AA: $00
    ld b, b                                       ; $41AB: $40
    ld h, d                                       ; $41AC: $62
    ret nc                                        ; $41AD: $D0

    ld l, l                                       ; $41AE: $6D
    ld l, a                                       ; $41AF: $6F
    rst $38                                       ; $41B0: $FF
    ld [hl], d                                    ; $41B1: $72
    ld a, e                                       ; $41B2: $7B
    ld a, h                                       ; $41B3: $7C
    ld c, a                                       ; $41B4: $4F
    ld a, h                                       ; $41B5: $7C
    scf                                           ; $41B6: $37
    ld h, h                                       ; $41B7: $64
    ld a, h                                       ; $41B8: $7C
    nop                                           ; $41B9: $00
    ld b, b                                       ; $41BA: $40
    ld h, d                                       ; $41BB: $62
    ld c, [hl]                                    ; $41BC: $4E
    ld [hl], l                                    ; $41BD: $75
    ld [hl], c                                    ; $41BE: $71
    ld e, d                                       ; $41BF: $5A
    ld h, l                                       ; $41C0: $65
    ld a, e                                       ; $41C1: $7B
    ld a, h                                       ; $41C2: $7C
    ld c, a                                       ; $41C3: $4F
    ld a, h                                       ; $41C4: $7C
    scf                                           ; $41C5: $37
    ld h, h                                       ; $41C6: $64
    ld a, h                                       ; $41C7: $7C
    nop                                           ; $41C8: $00
    ld b, b                                       ; $41C9: $40
    ld h, d                                       ; $41CA: $62
    ld [$5249], a                                 ; $41CB: $EA $49 $52
    ld h, h                                       ; $41CE: $64
    ld e, a                                       ; $41CF: $5F
    ld [hl], l                                    ; $41D0: $75
    ld a, h                                       ; $41D1: $7C
    ld c, a                                       ; $41D2: $4F
    ld a, h                                       ; $41D3: $7C
    scf                                           ; $41D4: $37
    ld h, h                                       ; $41D5: $64
    ld a, h                                       ; $41D6: $7C
    nop                                           ; $41D7: $00
    ld b, b                                       ; $41D8: $40
    ld h, d                                       ; $41D9: $62
    ld a, d                                       ; $41DA: $7A
    ld [hl], a                                    ; $41DB: $77
    ld [hl], e                                    ; $41DC: $73
    rst $10                                       ; $41DD: $D7
    ld e, a                                       ; $41DE: $5F
    ld a, e                                       ; $41DF: $7B
    ld a, h                                       ; $41E0: $7C
    ld c, a                                       ; $41E1: $4F
    ld a, h                                       ; $41E2: $7C
    scf                                           ; $41E3: $37
    ld h, h                                       ; $41E4: $64
    ld a, h                                       ; $41E5: $7C
    nop                                           ; $41E6: $00
    ld b, b                                       ; $41E7: $40
    ld h, d                                       ; $41E8: $62
    sbc d                                         ; $41E9: $9A
    ld c, [hl]                                    ; $41EA: $4E
    ld l, [hl]                                    ; $41EB: $6E
    sub c                                         ; $41EC: $91
    ld b, b                                       ; $41ED: $40
    ld a, e                                       ; $41EE: $7B
    cp h                                          ; $41EF: $BC
    ld c, d                                       ; $41F0: $4A
    ld a, h                                       ; $41F1: $7C
    ld d, h                                       ; $41F2: $54
    ld h, a                                       ; $41F3: $67
    ld a, h                                       ; $41F4: $7C
    db $FD                                        ; $41F5: $FD
    ld c, e                                       ; $41F6: $4B
    ld l, b                                       ; $41F7: $68
    dec d                                         ; $41F8: $15
    ld e, a                                       ; $41F9: $5F
    ld a, c                                       ; $41FA: $79
    db $F4                                        ; $41FB: $F4
    ld l, l                                       ; $41FC: $6D
    ld a, e                                       ; $41FD: $7B
    inc a                                         ; $41FE: $3C
    ld d, l                                       ; $41FF: $55
    ld a, h                                       ; $4200: $7C
    adc c                                         ; $4201: $89
    ld e, a                                       ; $4202: $5F
    ld a, h                                       ; $4203: $7C
    ld l, e                                       ; $4204: $6B
    ld l, h                                       ; $4205: $6C
    ld h, h                                       ; $4206: $64
    sub c                                         ; $4207: $91
    ld e, a                                       ; $4208: $5F
    ld h, a                                       ; $4209: $67
    dec b                                         ; $420A: $05
    ld a, l                                       ; $420B: $7D
    ld [hl], d                                    ; $420C: $72
    cp h                                          ; $420D: $BC
    ld c, d                                       ; $420E: $4A
    ld a, h                                       ; $420F: $7C
    ld d, h                                       ; $4210: $54
    ld h, a                                       ; $4211: $67
    ld a, h                                       ; $4212: $7C
    db $FD                                        ; $4213: $FD
    ld c, e                                       ; $4214: $4B
    ld l, b                                       ; $4215: $68
    sbc [hl]                                      ; $4216: $9E
    ld h, d                                       ; $4217: $62
    ld a, e                                       ; $4218: $7B
    push bc                                       ; $4219: $C5
    ld a, a                                       ; $421A: $7F
    ld a, e                                       ; $421B: $7B
    inc a                                         ; $421C: $3C
    ld c, a                                       ; $421D: $4F
    ld a, h                                       ; $421E: $7C
    ld e, $5C                                     ; $421F: $1E $5C
    ld a, h                                       ; $4221: $7C
    and c                                         ; $4222: $A1
    ld l, a                                       ; $4223: $6F
    ld h, [hl]                                    ; $4224: $66
    ld d, h                                       ; $4225: $54
    ld e, e                                       ; $4226: $5B
    ld [hl], h                                    ; $4227: $74
    add hl, sp                                    ; $4228: $39
    ld d, e                                       ; $4229: $53
    ld a, d                                       ; $422A: $7A
    ld a, h                                       ; $422B: $7C
    ld e, c                                       ; $422C: $59
    ld a, h                                       ; $422D: $7C
    inc bc                                        ; $422E: $03
    ld h, e                                       ; $422F: $63
    ld a, h                                       ; $4230: $7C
    dec a                                         ; $4231: $3D
    ld e, a                                       ; $4232: $5F
    ld h, d                                       ; $4233: $62
    sbc [hl]                                      ; $4234: $9E
    ld h, a                                       ; $4235: $67
    ld [hl], c                                    ; $4236: $71
    reti                                          ; $4237: $D9


    ld [hl], b                                    ; $4238: $70
    ld [hl], a                                    ; $4239: $77
    db $FC                                        ; $423A: $FC
    ld c, h                                       ; $423B: $4C
    ld a, h                                       ; $423C: $7C
    cp e                                          ; $423D: $BB
    ld h, h                                       ; $423E: $64
    ld a, h                                       ; $423F: $7C
    db $EB                                        ; $4240: $EB
    ld b, [hl]                                    ; $4241: $46
    ld h, [hl]                                    ; $4242: $66
    jp c, Jump_04F_6D57                           ; $4243: $DA $57 $6D

    ld e, d                                       ; $4246: $5A
    ld [hl], a                                    ; $4247: $77
    ld [hl], a                                    ; $4248: $77
    db $FC                                        ; $4249: $FC
    ld c, h                                       ; $424A: $4C
    ld a, h                                       ; $424B: $7C
    cp e                                          ; $424C: $BB
    ld h, h                                       ; $424D: $64
    ld a, h                                       ; $424E: $7C
    db $EB                                        ; $424F: $EB
    ld b, [hl]                                    ; $4250: $46
    ld h, [hl]                                    ; $4251: $66
    sbc c                                         ; $4252: $99
    ld [hl], h                                    ; $4253: $74
    ld l, e                                       ; $4254: $6B
    ld b, l                                       ; $4255: $45
    ld l, d                                       ; $4256: $6A
    ld [hl], a                                    ; $4257: $77

    db $3C, $4B, $7C, $13, $65, $7C, $A1, $6F, $66, $00, $40, $70, $06, $42, $79

    inc a                                         ; $4267: $3C
    ld c, a                                       ; $4268: $4F
    ld a, h                                       ; $4269: $7C
    ld e, $5C                                     ; $426A: $1E $5C
    ld a, h                                       ; $426C: $7C
    and c                                         ; $426D: $A1
    ld l, a                                       ; $426E: $6F
    ld h, [hl]                                    ; $426F: $66
    adc c                                         ; $4270: $89
    ld e, b                                       ; $4271: $58
    ld a, e                                       ; $4272: $7B
    adc $61                                       ; $4273: $CE $61
    ld a, h                                       ; $4275: $7C
    cp h                                          ; $4276: $BC
    ld c, [hl]                                    ; $4277: $4E
    ld a, h                                       ; $4278: $7C
    or h                                          ; $4279: $B4
    ld l, h                                       ; $427A: $6C
    ld a, e                                       ; $427B: $7B
    cp h                                          ; $427C: $BC
    ld h, l                                       ; $427D: $65
    ld h, e                                       ; $427E: $63
    db $D3                                        ; $427F: $D3
    ld h, b                                       ; $4280: $60
    ld [hl], a                                    ; $4281: $77
    jr nz, jr_04F_42F4                            ; $4282: $20 $70

    ld a, c                                       ; $4284: $79

    db $FC, $4E, $7C, $2F, $67, $7C, $89, $7A, $68, $FC, $49, $6F, $84, $7B, $78, $3C
    db $4A, $7C, $9E, $67, $7C, $D0, $4D, $66, $41, $4F, $76, $B4, $63, $7A

    cp h                                          ; $42A3: $BC
    ld c, d                                       ; $42A4: $4A
    ld a, h                                       ; $42A5: $7C
    ld d, h                                       ; $42A6: $54
    ld h, a                                       ; $42A7: $67
    ld a, h                                       ; $42A8: $7C
    db $FD                                        ; $42A9: $FD
    ld c, e                                       ; $42AA: $4B
    ld l, b                                       ; $42AB: $68
    ld e, h                                       ; $42AC: $5C
    ld [hl], b                                    ; $42AD: $70
    ld a, e                                       ; $42AE: $7B
    sbc b                                         ; $42AF: $98
    ld h, [hl]                                    ; $42B0: $66
    ld a, h                                       ; $42B1: $7C
    ld a, h                                       ; $42B2: $7C
    ld c, [hl]                                    ; $42B3: $4E
    ld a, h                                       ; $42B4: $7C
    ld h, e                                       ; $42B5: $63
    ld h, h                                       ; $42B6: $64
    ld a, h                                       ; $42B7: $7C
    di                                            ; $42B8: $F3
    ld d, c                                       ; $42B9: $51
    ld l, b                                       ; $42BA: $68
    sub l                                         ; $42BB: $95
    ld a, d                                       ; $42BC: $7A
    ld [hl], d                                    ; $42BD: $72
    jr @+$79                                      ; $42BE: $18 $77

    ld a, d                                       ; $42C0: $7A

    db $3C, $4A, $7C, $9E, $67, $7C, $D0, $4D, $66, $9B, $41, $7A, $45, $61, $7C, $3C
    db $4A, $7C, $9E, $67, $7C, $D0, $4D, $66, $DF, $6A, $79, $90, $7D, $7B

    inc a                                         ; $42DF: $3C
    ld c, d                                       ; $42E0: $4A
    ld a, h                                       ; $42E1: $7C
    sbc [hl]                                      ; $42E2: $9E
    ld h, a                                       ; $42E3: $67
    ld a, h                                       ; $42E4: $7C
    ret nc                                        ; $42E5: $D0

    ld c, l                                       ; $42E6: $4D
    ld h, [hl]                                    ; $42E7: $66
    ld a, [hl-]                                   ; $42E8: $3A
    ld d, h                                       ; $42E9: $54
    halt                                          ; $42EA: $76
    halt                                          ; $42EB: $76
    ld e, l                                       ; $42EC: $5D
    ld a, e                                       ; $42ED: $7B
    ld a, h                                       ; $42EE: $7C
    ld c, [hl]                                    ; $42EF: $4E
    ld a, h                                       ; $42F0: $7C
    ld h, e                                       ; $42F1: $63
    ld h, h                                       ; $42F2: $64
    ld a, h                                       ; $42F3: $7C

jr_04F_42F4:
    di                                            ; $42F4: $F3
    ld d, c                                       ; $42F5: $51
    ld l, b                                       ; $42F6: $68
    dec a                                         ; $42F7: $3D
    ld [hl], d                                    ; $42F8: $72
    ld a, d                                       ; $42F9: $7A
    dec e                                         ; $42FA: $1D
    ld e, [hl]                                    ; $42FB: $5E
    ld a, h                                       ; $42FC: $7C

    db $3C, $4A, $7C, $9E, $67, $7C, $D0, $4D, $66, $FF, $47, $72, $27, $72, $77, $3C
    db $4A, $7C, $9E, $67, $7C, $D0, $4D, $66, $62, $62, $7A, $B0, $5D, $7C, $FC, $4E
    db $7C, $2F, $67, $7C, $89, $7A, $68, $E9, $41, $75, $31, $4D, $7B, $3C, $4A, $7C
    db $9E, $67, $7C, $D0, $4D, $66, $5F, $5F, $7B, $7F, $69, $7C, $BC, $4A, $7C, $54
    db $67, $7C, $FD, $4B, $68, $56, $76, $78, $4E, $60, $7B

    ld a, h                                       ; $4348: $7C
    ld e, d                                       ; $4349: $5A
    ld a, h                                       ; $434A: $7C
    ld a, d                                       ; $434B: $7A
    ld b, [hl]                                    ; $434C: $46
    ld a, h                                       ; $434D: $7C
    jp Jump_04F_6177                              ; $434E: $C3 $77 $61


    ret nc                                        ; $4351: $D0

    ld a, l                                       ; $4352: $7D
    ld [hl], a                                    ; $4353: $77
    or d                                          ; $4354: $B2
    ld h, c                                       ; $4355: $61
    ld a, e                                       ; $4356: $7B
    ld a, h                                       ; $4357: $7C
    ld e, d                                       ; $4358: $5A
    ld a, h                                       ; $4359: $7C
    ld a, d                                       ; $435A: $7A
    ld b, [hl]                                    ; $435B: $46
    ld a, h                                       ; $435C: $7C
    jp Jump_04F_6177                              ; $435D: $C3 $77 $61


    ret nz                                        ; $4360: $C0

    ld [hl], l                                    ; $4361: $75
    ld [hl], b                                    ; $4362: $70
    ld l, b                                       ; $4363: $68
    ld b, d                                       ; $4364: $42
    ld a, d                                       ; $4365: $7A

    db $BC, $4A, $7C, $54, $67, $7C, $FD, $4B, $68, $3C, $61, $7B, $6A, $41, $7C, $BC
    db $4A, $7C, $54, $67, $7C, $FD, $4B, $68, $4B, $75, $7A, $0E, $43, $7C, $BC, $4A
    db $7C, $54, $67, $7C, $FD, $4B, $68, $10, $61, $7A, $53, $76, $7B, $BC, $49, $7C
    db $BC, $5F, $7C, $43, $5B, $70, $41, $77, $74, $AC, $6C, $7A, $BC, $4A, $7C, $54
    db $67, $7C, $FD, $4B, $68, $73, $49, $7A, $3F, $72, $7B, $BC, $4A, $7C, $54, $67
    db $7C, $FD, $4B, $68, $66, $60, $7A, $FC, $52, $7C

    inc a                                         ; $43C0: $3C
    ld d, b                                       ; $43C1: $50
    ld a, h                                       ; $43C2: $7C
    dec bc                                        ; $43C3: $0B
    ld h, h                                       ; $43C4: $64
    ld a, h                                       ; $43C5: $7C
    db $FD                                        ; $43C6: $FD
    ld c, e                                       ; $43C7: $4B
    ld l, b                                       ; $43C8: $68
    inc sp                                        ; $43C9: $33
    ld b, e                                       ; $43CA: $43
    ld a, d                                       ; $43CB: $7A
    ld c, c                                       ; $43CC: $49
    ld l, h                                       ; $43CD: $6C
    ld a, e                                       ; $43CE: $7B
    cp h                                          ; $43CF: $BC
    ld c, d                                       ; $43D0: $4A
    ld a, h                                       ; $43D1: $7C
    ld d, h                                       ; $43D2: $54
    ld h, a                                       ; $43D3: $67
    ld a, h                                       ; $43D4: $7C
    db $FD                                        ; $43D5: $FD
    ld c, e                                       ; $43D6: $4B
    ld l, b                                       ; $43D7: $68
    ld b, a                                       ; $43D8: $47
    ld a, a                                       ; $43D9: $7F
    ld a, d                                       ; $43DA: $7A
    ret                                           ; $43DB: $C9


    ld b, d                                       ; $43DC: $42
    ld a, h                                       ; $43DD: $7C

    db $BC, $4A, $7C, $54, $67, $7C, $FD, $4B, $68, $59, $46, $7A, $EA, $7B, $7B

    cp h                                          ; $43ED: $BC
    ld c, d                                       ; $43EE: $4A
    ld a, h                                       ; $43EF: $7C
    ld d, h                                       ; $43F0: $54
    ld h, a                                       ; $43F1: $67
    ld a, h                                       ; $43F2: $7C
    db $FD                                        ; $43F3: $FD
    ld c, e                                       ; $43F4: $4B
    ld l, b                                       ; $43F5: $68
    jr z, jr_04F_4449                             ; $43F6: $28 $51

    ld a, b                                       ; $43F8: $78
    jr z, jr_04F_445D                             ; $43F9: $28 $62

    ld a, e                                       ; $43FB: $7B
    cp h                                          ; $43FC: $BC
    ld c, d                                       ; $43FD: $4A

Call_04F_43FE:
    ld a, h                                       ; $43FE: $7C
    ld d, h                                       ; $43FF: $54
    ld h, a                                       ; $4400: $67
    ld a, h                                       ; $4401: $7C
    db $FD                                        ; $4402: $FD
    ld c, e                                       ; $4403: $4B
    ld l, b                                       ; $4404: $68
    daa                                           ; $4405: $27
    ld b, [hl]                                    ; $4406: $46
    ld a, e                                       ; $4407: $7B
    ld sp, hl                                     ; $4408: $F9
    ld e, d                                       ; $4409: $5A
    ld a, h                                       ; $440A: $7C
    ld a, h                                       ; $440B: $7C
    ld e, b                                       ; $440C: $58
    ld a, h                                       ; $440D: $7C
    rst $28                                       ; $440E: $EF
    ld e, a                                       ; $440F: $5F
    ld a, h                                       ; $4410: $7C
    dec [hl]                                      ; $4411: $35
    ld c, a                                       ; $4412: $4F
    ld h, e                                       ; $4413: $63
    ldh a, [rSCX]                                 ; $4414: $F0 $43
    ld a, e                                       ; $4416: $7B
    db $E3                                        ; $4417: $E3
    ld a, l                                       ; $4418: $7D
    ld a, e                                       ; $4419: $7B
    cp h                                          ; $441A: $BC
    ld c, c                                       ; $441B: $49
    ld a, h                                       ; $441C: $7C
    cp h                                          ; $441D: $BC
    ld e, a                                       ; $441E: $5F
    ld a, h                                       ; $441F: $7C
    ld b, e                                       ; $4420: $43
    ld e, e                                       ; $4421: $5B
    ld [hl], b                                    ; $4422: $70
    and [hl]                                      ; $4423: $A6
    ld a, l                                       ; $4424: $7D
    ld a, c                                       ; $4425: $79
    ccf                                           ; $4426: $3F
    ld e, l                                       ; $4427: $5D
    ld a, h                                       ; $4428: $7C
    cp h                                          ; $4429: $BC
    ld c, d                                       ; $442A: $4A
    ld a, h                                       ; $442B: $7C
    ld d, h                                       ; $442C: $54
    ld h, a                                       ; $442D: $67
    ld a, h                                       ; $442E: $7C
    db $FD                                        ; $442F: $FD
    ld c, e                                       ; $4430: $4B
    ld l, b                                       ; $4431: $68
    ld a, b                                       ; $4432: $78
    ld [hl], h                                    ; $4433: $74
    ld a, c                                       ; $4434: $79
    ld [bc], a                                    ; $4435: $02
    ld e, h                                       ; $4436: $5C
    ld a, e                                       ; $4437: $7B
    cp h                                          ; $4438: $BC
    ld c, d                                       ; $4439: $4A
    ld a, h                                       ; $443A: $7C
    ld d, h                                       ; $443B: $54
    ld h, a                                       ; $443C: $67
    ld a, h                                       ; $443D: $7C
    db $FD                                        ; $443E: $FD
    ld c, e                                       ; $443F: $4B
    ld l, b                                       ; $4440: $68
    ld [c], a                                     ; $4441: $E2
    ld a, c                                       ; $4442: $79
    ld a, e                                       ; $4443: $7B
    call z, Call_04F_7C5C                         ; $4444: $CC $5C $7C
    inc a                                         ; $4447: $3C
    ld c, a                                       ; $4448: $4F

jr_04F_4449:
    ld a, h                                       ; $4449: $7C
    ld e, $5C                                     ; $444A: $1E $5C
    ld a, h                                       ; $444C: $7C
    and c                                         ; $444D: $A1
    ld l, a                                       ; $444E: $6F
    ld h, [hl]                                    ; $444F: $66
    ld c, d                                       ; $4450: $4A
    ld h, e                                       ; $4451: $63
    ld [hl], e                                    ; $4452: $73
    add [hl]                                      ; $4453: $86
    ld d, [hl]                                    ; $4454: $56
    ld a, e                                       ; $4455: $7B
    cp h                                          ; $4456: $BC
    ld d, d                                       ; $4457: $52
    ld a, h                                       ; $4458: $7C
    rst $10                                       ; $4459: $D7
    ld h, d                                       ; $445A: $62
    ld a, h                                       ; $445B: $7C
    xor c                                         ; $445C: $A9

jr_04F_445D:
    ld e, l                                       ; $445D: $5D
    ld h, h                                       ; $445E: $64
    nop                                           ; $445F: $00
    ld b, b                                       ; $4460: $40
    ld h, [hl]                                    ; $4461: $66
    adc c                                         ; $4462: $89
    ld a, e                                       ; $4463: $7B
    ld [hl], b                                    ; $4464: $70
    db $FC                                        ; $4465: $FC
    ld d, b                                       ; $4466: $50
    ld a, h                                       ; $4467: $7C
    db $EB                                        ; $4468: $EB
    ld l, b                                       ; $4469: $68
    ld a, h                                       ; $446A: $7C
    nop                                           ; $446B: $00
    ld b, b                                       ; $446C: $40
    ld h, l                                       ; $446D: $65
    xor [hl]                                      ; $446E: $AE
    ld l, [hl]                                    ; $446F: $6E
    ld h, d                                       ; $4470: $62
    jp nc, Jump_04F_7261                          ; $4471: $D2 $61 $72

    db $FC                                        ; $4474: $FC
    ld e, b                                       ; $4475: $58
    ld a, h                                       ; $4476: $7C
    xor e                                         ; $4477: $AB
    ld h, d                                       ; $4478: $62
    ld a, h                                       ; $4479: $7C
    ld c, c                                       ; $447A: $49
    ld h, d                                       ; $447B: $62
    ld h, [hl]                                    ; $447C: $66
    sbc h                                         ; $447D: $9C
    ld h, h                                       ; $447E: $64
    ld a, c                                       ; $447F: $79
    ld l, c                                       ; $4480: $69
    ld [hl], a                                    ; $4481: $77
    ld a, e                                       ; $4482: $7B
    db $FC                                        ; $4483: $FC
    ld e, b                                       ; $4484: $58
    ld a, h                                       ; $4485: $7C
    xor e                                         ; $4486: $AB
    ld h, d                                       ; $4487: $62
    ld a, h                                       ; $4488: $7C
    ld c, c                                       ; $4489: $49
    ld h, d                                       ; $448A: $62
    ld h, [hl]                                    ; $448B: $66
    pop hl                                        ; $448C: $E1
    ld e, l                                       ; $448D: $5D
    halt                                          ; $448E: $76
    ld e, a                                       ; $448F: $5F
    ld [hl], e                                    ; $4490: $73
    ld a, e                                       ; $4491: $7B
    db $FC                                        ; $4492: $FC
    ld e, b                                       ; $4493: $58
    ld a, h                                       ; $4494: $7C
    xor e                                         ; $4495: $AB
    ld h, d                                       ; $4496: $62
    ld a, h                                       ; $4497: $7C
    ld c, c                                       ; $4498: $49
    ld h, d                                       ; $4499: $62
    ld h, [hl]                                    ; $449A: $66
    ld [hl], c                                    ; $449B: $71
    ld l, b                                       ; $449C: $68
    ld a, e                                       ; $449D: $7B
    ld d, l                                       ; $449E: $55
    ld e, a                                       ; $449F: $5F
    ld a, h                                       ; $44A0: $7C
    db $FC                                        ; $44A1: $FC
    ld e, b                                       ; $44A2: $58
    ld a, h                                       ; $44A3: $7C
    xor e                                         ; $44A4: $AB
    ld h, d                                       ; $44A5: $62
    ld a, h                                       ; $44A6: $7C
    ld c, c                                       ; $44A7: $49
    ld h, d                                       ; $44A8: $62
    ld h, [hl]                                    ; $44A9: $66
    push hl                                       ; $44AA: $E5
    ld l, b                                       ; $44AB: $68
    ld a, d                                       ; $44AC: $7A
    adc c                                         ; $44AD: $89
    ld a, [hl]                                    ; $44AE: $7E
    ld a, e                                       ; $44AF: $7B
    db $FC                                        ; $44B0: $FC
    ld e, b                                       ; $44B1: $58
    ld a, h                                       ; $44B2: $7C
    xor e                                         ; $44B3: $AB
    ld h, d                                       ; $44B4: $62
    ld a, h                                       ; $44B5: $7C
    ld c, c                                       ; $44B6: $49
    ld h, d                                       ; $44B7: $62
    ld h, [hl]                                    ; $44B8: $66
    ld a, c                                       ; $44B9: $79
    ld b, a                                       ; $44BA: $47
    ld a, b                                       ; $44BB: $78
    ld a, [hl]                                    ; $44BC: $7E
    ld e, h                                       ; $44BD: $5C
    ld a, e                                       ; $44BE: $7B
    db $FC                                        ; $44BF: $FC
    ld e, b                                       ; $44C0: $58
    ld a, h                                       ; $44C1: $7C
    xor e                                         ; $44C2: $AB
    ld h, d                                       ; $44C3: $62
    ld a, h                                       ; $44C4: $7C
    ld c, c                                       ; $44C5: $49
    ld h, d                                       ; $44C6: $62
    ld h, [hl]                                    ; $44C7: $66
    ld a, $66                                     ; $44C8: $3E $66
    ld a, e                                       ; $44CA: $7B
    ld e, b                                       ; $44CB: $58
    ld e, h                                       ; $44CC: $5C
    ld a, h                                       ; $44CD: $7C
    db $FC                                        ; $44CE: $FC
    ld e, b                                       ; $44CF: $58
    ld a, h                                       ; $44D0: $7C
    xor e                                         ; $44D1: $AB
    ld h, d                                       ; $44D2: $62
    ld a, h                                       ; $44D3: $7C
    ld c, c                                       ; $44D4: $49
    ld h, d                                       ; $44D5: $62
    ld h, [hl]                                    ; $44D6: $66
    ld a, a                                       ; $44D7: $7F
    halt                                          ; $44D8: $76
    ld a, d                                       ; $44D9: $7A
    ld d, e                                       ; $44DA: $53
    ld b, e                                       ; $44DB: $43
    ld a, h                                       ; $44DC: $7C
    db $FC                                        ; $44DD: $FC
    ld d, b                                       ; $44DE: $50
    ld a, h                                       ; $44DF: $7C
    db $EB                                        ; $44E0: $EB
    ld l, b                                       ; $44E1: $68
    ld a, h                                       ; $44E2: $7C
    nop                                           ; $44E3: $00
    ld b, b                                       ; $44E4: $40
    ld h, l                                       ; $44E5: $65
    call nz, $786E                                ; $44E6: $C4 $6E $78
    or h                                          ; $44E9: $B4
    ld b, l                                       ; $44EA: $45
    ld a, h                                       ; $44EB: $7C
    cp h                                          ; $44EC: $BC
    ld d, b                                       ; $44ED: $50
    ld a, h                                       ; $44EE: $7C
    or e                                          ; $44EF: $B3
    ld h, e                                       ; $44F0: $63
    ld a, h                                       ; $44F1: $7C
    inc [hl]                                      ; $44F2: $34
    ld l, l                                       ; $44F3: $6D
    ld h, e                                       ; $44F4: $63
    jp Jump_04F_744A                              ; $44F5: $C3 $4A $74


    jp $7A51                                      ; $44F8: $C3 $51 $7A


    cp h                                          ; $44FB: $BC
    ld d, b                                       ; $44FC: $50
    ld a, h                                       ; $44FD: $7C
    or e                                          ; $44FE: $B3
    ld h, e                                       ; $44FF: $63
    ld a, h                                       ; $4500: $7C
    inc [hl]                                      ; $4501: $34
    ld l, l                                       ; $4502: $6D
    ld h, e                                       ; $4503: $63
    dec sp                                        ; $4504: $3B
    ld h, c                                       ; $4505: $61
    ld [hl], b                                    ; $4506: $70
    pop de                                        ; $4507: $D1
    ld d, d                                       ; $4508: $52
    ld a, c                                       ; $4509: $79
    cp h                                          ; $450A: $BC
    ld d, b                                       ; $450B: $50
    ld a, h                                       ; $450C: $7C
    or e                                          ; $450D: $B3
    ld h, e                                       ; $450E: $63
    ld a, h                                       ; $450F: $7C
    inc [hl]                                      ; $4510: $34
    ld l, l                                       ; $4511: $6D
    ld h, e                                       ; $4512: $63
    inc bc                                        ; $4513: $03
    ld l, h                                       ; $4514: $6C
    halt                                          ; $4515: $76
    rst $20                                       ; $4516: $E7
    ld h, h                                       ; $4517: $64
    ld a, e                                       ; $4518: $7B
    cp h                                          ; $4519: $BC
    ld d, b                                       ; $451A: $50
    ld a, h                                       ; $451B: $7C
    or e                                          ; $451C: $B3
    ld h, e                                       ; $451D: $63
    ld a, h                                       ; $451E: $7C
    inc [hl]                                      ; $451F: $34
    ld l, l                                       ; $4520: $6D
    ld h, e                                       ; $4521: $63
    nop                                           ; $4522: $00
    ld b, b                                       ; $4523: $40
    ld [hl], c                                    ; $4524: $71
    ret nz                                        ; $4525: $C0

    ld l, e                                       ; $4526: $6B
    ld a, c                                       ; $4527: $79
    cp h                                          ; $4528: $BC
    ld d, b                                       ; $4529: $50
    ld a, h                                       ; $452A: $7C
    or e                                          ; $452B: $B3
    ld h, e                                       ; $452C: $63
    ld a, h                                       ; $452D: $7C
    inc [hl]                                      ; $452E: $34
    ld l, l                                       ; $452F: $6D
    ld h, e                                       ; $4530: $63
    nop                                           ; $4531: $00
    ld b, b                                       ; $4532: $40
    ld l, a                                       ; $4533: $6F
    db $FD                                        ; $4534: $FD
    ld c, l                                       ; $4535: $4D
    ld a, c                                       ; $4536: $79
    cp h                                          ; $4537: $BC
    ld d, b                                       ; $4538: $50
    ld a, h                                       ; $4539: $7C
    or e                                          ; $453A: $B3
    ld h, e                                       ; $453B: $63
    ld a, h                                       ; $453C: $7C
    inc [hl]                                      ; $453D: $34
    ld l, l                                       ; $453E: $6D
    ld h, e                                       ; $453F: $63
    nop                                           ; $4540: $00
    ld b, b                                       ; $4541: $40
    ld [hl], d                                    ; $4542: $72
    add hl, sp                                    ; $4543: $39
    ld e, l                                       ; $4544: $5D
    ld a, c                                       ; $4545: $79
    cp h                                          ; $4546: $BC
    ld d, b                                       ; $4547: $50
    ld a, h                                       ; $4548: $7C
    or e                                          ; $4549: $B3
    ld h, e                                       ; $454A: $63
    ld a, h                                       ; $454B: $7C
    inc [hl]                                      ; $454C: $34
    ld l, l                                       ; $454D: $6D
    ld h, e                                       ; $454E: $63
    call c, $7266                                 ; $454F: $DC $66 $72
    sub c                                         ; $4552: $91
    ld b, l                                       ; $4553: $45
    ld a, d                                       ; $4554: $7A
    cp h                                          ; $4555: $BC
    ld d, b                                       ; $4556: $50
    ld a, h                                       ; $4557: $7C
    or e                                          ; $4558: $B3
    ld h, e                                       ; $4559: $63
    ld a, h                                       ; $455A: $7C
    inc [hl]                                      ; $455B: $34
    ld l, l                                       ; $455C: $6D
    ld h, e                                       ; $455D: $63
    jp c, Jump_04F_7164                           ; $455E: $DA $64 $71

    db $DD                                        ; $4561: $DD
    ld l, e                                       ; $4562: $6B
    ld a, e                                       ; $4563: $7B
    cp h                                          ; $4564: $BC
    ld d, b                                       ; $4565: $50
    ld a, h                                       ; $4566: $7C
    or e                                          ; $4567: $B3
    ld h, e                                       ; $4568: $63
    ld a, h                                       ; $4569: $7C
    inc [hl]                                      ; $456A: $34
    ld l, l                                       ; $456B: $6D
    ld h, e                                       ; $456C: $63
    sub $67                                       ; $456D: $D6 $67
    ld [hl], e                                    ; $456F: $73
    inc d                                         ; $4570: $14
    ld h, e                                       ; $4571: $63
    ld a, e                                       ; $4572: $7B
    cp h                                          ; $4573: $BC
    ld d, b                                       ; $4574: $50
    ld a, h                                       ; $4575: $7C
    or e                                          ; $4576: $B3
    ld h, e                                       ; $4577: $63
    ld a, h                                       ; $4578: $7C
    inc [hl]                                      ; $4579: $34
    ld l, l                                       ; $457A: $6D
    ld h, e                                       ; $457B: $63
    ld b, b                                       ; $457C: $40
    ld c, l                                       ; $457D: $4D
    ld [hl], d                                    ; $457E: $72
    or h                                          ; $457F: $B4
    ld a, b                                       ; $4580: $78
    ld a, c                                       ; $4581: $79
    cp h                                          ; $4582: $BC
    ld d, b                                       ; $4583: $50
    ld a, h                                       ; $4584: $7C
    or e                                          ; $4585: $B3
    ld h, e                                       ; $4586: $63
    ld a, h                                       ; $4587: $7C
    inc [hl]                                      ; $4588: $34
    ld l, l                                       ; $4589: $6D
    ld h, e                                       ; $458A: $63
    add sp, $68                                   ; $458B: $E8 $68
    halt                                          ; $458D: $76
    cp [hl]                                       ; $458E: $BE
    ld [hl], b                                    ; $458F: $70
    ld a, e                                       ; $4590: $7B
    cp h                                          ; $4591: $BC
    ld d, b                                       ; $4592: $50
    ld a, h                                       ; $4593: $7C
    or e                                          ; $4594: $B3
    ld h, e                                       ; $4595: $63
    ld a, h                                       ; $4596: $7C
    inc [hl]                                      ; $4597: $34
    ld l, l                                       ; $4598: $6D
    ld h, e                                       ; $4599: $63
    dec c                                         ; $459A: $0D
    ld a, l                                       ; $459B: $7D
    ld [hl], l                                    ; $459C: $75
    jp c, Jump_04F_7A72                           ; $459D: $DA $72 $7A

    cp h                                          ; $45A0: $BC
    ld d, b                                       ; $45A1: $50
    ld a, h                                       ; $45A2: $7C
    or e                                          ; $45A3: $B3
    ld h, e                                       ; $45A4: $63
    ld a, h                                       ; $45A5: $7C
    inc [hl]                                      ; $45A6: $34
    ld l, l                                       ; $45A7: $6D
    ld h, e                                       ; $45A8: $63
    daa                                           ; $45A9: $27
    ld e, [hl]                                    ; $45AA: $5E
    ld a, c                                       ; $45AB: $79
    jp hl                                         ; $45AC: $E9


    ld a, h                                       ; $45AD: $7C
    ld a, e                                       ; $45AE: $7B
    cp h                                          ; $45AF: $BC
    ld d, b                                       ; $45B0: $50
    ld a, h                                       ; $45B1: $7C
    or e                                          ; $45B2: $B3
    ld h, e                                       ; $45B3: $63
    ld a, h                                       ; $45B4: $7C
    inc [hl]                                      ; $45B5: $34
    ld l, l                                       ; $45B6: $6D
    ld h, e                                       ; $45B7: $63
    ld c, d                                       ; $45B8: $4A
    ld d, a                                       ; $45B9: $57
    ld [hl], h                                    ; $45BA: $74
    rst $28                                       ; $45BB: $EF
    ld d, c                                       ; $45BC: $51
    ld a, e                                       ; $45BD: $7B
    cp h                                          ; $45BE: $BC
    ld d, b                                       ; $45BF: $50
    ld a, h                                       ; $45C0: $7C
    or e                                          ; $45C1: $B3
    ld h, e                                       ; $45C2: $63
    ld a, h                                       ; $45C3: $7C
    inc [hl]                                      ; $45C4: $34
    ld l, l                                       ; $45C5: $6D
    ld h, e                                       ; $45C6: $63
    ld d, a                                       ; $45C7: $57
    ld [hl], c                                    ; $45C8: $71
    ld [hl], h                                    ; $45C9: $74
    ld c, h                                       ; $45CA: $4C
    ld l, l                                       ; $45CB: $6D
    ld a, d                                       ; $45CC: $7A
    cp h                                          ; $45CD: $BC
    ld d, b                                       ; $45CE: $50
    ld a, h                                       ; $45CF: $7C
    or e                                          ; $45D0: $B3
    ld h, e                                       ; $45D1: $63
    ld a, h                                       ; $45D2: $7C
    inc [hl]                                      ; $45D3: $34
    ld l, l                                       ; $45D4: $6D
    ld h, e                                       ; $45D5: $63
    ccf                                           ; $45D6: $3F
    ld e, b                                       ; $45D7: $58
    ld [hl], l                                    ; $45D8: $75
    db $E3                                        ; $45D9: $E3
    ld c, b                                       ; $45DA: $48
    ld a, e                                       ; $45DB: $7B
    cp h                                          ; $45DC: $BC
    ld d, b                                       ; $45DD: $50
    ld a, h                                       ; $45DE: $7C
    or e                                          ; $45DF: $B3
    ld h, e                                       ; $45E0: $63
    ld a, h                                       ; $45E1: $7C
    inc [hl]                                      ; $45E2: $34
    ld l, l                                       ; $45E3: $6D
    ld h, e                                       ; $45E4: $63
    ld l, [hl]                                    ; $45E5: $6E
    ld c, [hl]                                    ; $45E6: $4E
    ld [hl], e                                    ; $45E7: $73
    ld [hl], a                                    ; $45E8: $77
    ld [hl], e                                    ; $45E9: $73
    ld a, d                                       ; $45EA: $7A
    cp h                                          ; $45EB: $BC
    ld d, b                                       ; $45EC: $50
    ld a, h                                       ; $45ED: $7C
    or e                                          ; $45EE: $B3
    ld h, e                                       ; $45EF: $63
    ld a, h                                       ; $45F0: $7C
    inc [hl]                                      ; $45F1: $34
    ld l, l                                       ; $45F2: $6D
    ld h, e                                       ; $45F3: $63
    cp b                                          ; $45F4: $B8
    ld b, c                                       ; $45F5: $41
    halt                                          ; $45F6: $76
    adc [hl]                                      ; $45F7: $8E
    ld a, l                                       ; $45F8: $7D
    ld a, d                                       ; $45F9: $7A
    ld a, h                                       ; $45FA: $7C
    ld c, [hl]                                    ; $45FB: $4E
    ld a, h                                       ; $45FC: $7C
    ld h, e                                       ; $45FD: $63
    ld h, h                                       ; $45FE: $64
    ld a, h                                       ; $45FF: $7C
    di                                            ; $4600: $F3
    ld d, c                                       ; $4601: $51
    ld l, b                                       ; $4602: $68
    ld l, e                                       ; $4603: $6B
    ld d, c                                       ; $4604: $51
    ld a, e                                       ; $4605: $7B
    ld b, l                                       ; $4606: $45
    ld h, [hl]                                    ; $4607: $66
    ld a, h                                       ; $4608: $7C
    cp h                                          ; $4609: $BC
    ld d, b                                       ; $460A: $50
    ld a, h                                       ; $460B: $7C
    or e                                          ; $460C: $B3
    ld h, e                                       ; $460D: $63
    ld a, h                                       ; $460E: $7C
    inc [hl]                                      ; $460F: $34
    ld l, l                                       ; $4610: $6D
    ld h, e                                       ; $4611: $63
    pop hl                                        ; $4612: $E1
    ld l, a                                       ; $4613: $6F
    ld [hl], c                                    ; $4614: $71
    db $ED                                        ; $4615: $ED
    ld c, a                                       ; $4616: $4F
    ld a, c                                       ; $4617: $79
    cp h                                          ; $4618: $BC
    ld d, b                                       ; $4619: $50
    ld a, h                                       ; $461A: $7C
    or e                                          ; $461B: $B3
    ld h, e                                       ; $461C: $63
    ld a, h                                       ; $461D: $7C
    inc [hl]                                      ; $461E: $34
    ld l, l                                       ; $461F: $6D
    ld h, e                                       ; $4620: $63
    ld c, l                                       ; $4621: $4D
    ld l, [hl]                                    ; $4622: $6E
    ld [hl], d                                    ; $4623: $72
    ld [c], a                                     ; $4624: $E2
    ld a, b                                       ; $4625: $78
    ld a, d                                       ; $4626: $7A
    cp h                                          ; $4627: $BC
    ld d, b                                       ; $4628: $50
    ld a, h                                       ; $4629: $7C
    or e                                          ; $462A: $B3
    ld h, e                                       ; $462B: $63
    ld a, h                                       ; $462C: $7C
    inc [hl]                                      ; $462D: $34
    ld l, l                                       ; $462E: $6D
    ld h, e                                       ; $462F: $63
    rst $10                                       ; $4630: $D7
    ld [hl], d                                    ; $4631: $72
    ld [hl], b                                    ; $4632: $70
    add b                                         ; $4633: $80
    ld l, l                                       ; $4634: $6D
    ld a, c                                       ; $4635: $79
    ld a, h                                       ; $4636: $7C
    ld c, [hl]                                    ; $4637: $4E
    ld a, h                                       ; $4638: $7C
    ld h, e                                       ; $4639: $63
    ld h, h                                       ; $463A: $64
    ld a, h                                       ; $463B: $7C
    di                                            ; $463C: $F3
    ld d, c                                       ; $463D: $51
    ld l, b                                       ; $463E: $68
    ld [hl], c                                    ; $463F: $71
    ld l, l                                       ; $4640: $6D
    ld [hl], l                                    ; $4641: $75
    inc a                                         ; $4642: $3C
    ld a, e                                       ; $4643: $7B
    ld a, d                                       ; $4644: $7A
    ld a, h                                       ; $4645: $7C
    ld c, [hl]                                    ; $4646: $4E
    ld a, h                                       ; $4647: $7C
    ld h, e                                       ; $4648: $63
    ld h, h                                       ; $4649: $64
    ld a, h                                       ; $464A: $7C
    di                                            ; $464B: $F3
    ld d, c                                       ; $464C: $51
    ld l, b                                       ; $464D: $68
    sbc d                                         ; $464E: $9A
    ld b, l                                       ; $464F: $45
    ld a, e                                       ; $4650: $7B
    ld [hl], e                                    ; $4651: $73
    ld h, c                                       ; $4652: $61
    ld a, h                                       ; $4653: $7C
    cp h                                          ; $4654: $BC
    ld d, b                                       ; $4655: $50
    ld a, h                                       ; $4656: $7C
    or e                                          ; $4657: $B3
    ld h, e                                       ; $4658: $63
    ld a, h                                       ; $4659: $7C
    inc [hl]                                      ; $465A: $34
    ld l, l                                       ; $465B: $6D
    ld h, e                                       ; $465C: $63
    xor a                                         ; $465D: $AF
    ld a, h                                       ; $465E: $7C
    ld l, h                                       ; $465F: $6C
    jp z, Jump_04F_7864                           ; $4660: $CA $64 $78

    ld a, h                                       ; $4663: $7C
    ld c, [hl]                                    ; $4664: $4E
    ld a, h                                       ; $4665: $7C
    ld h, e                                       ; $4666: $63
    ld h, h                                       ; $4667: $64
    ld a, h                                       ; $4668: $7C
    di                                            ; $4669: $F3
    ld d, c                                       ; $466A: $51
    ld l, b                                       ; $466B: $68
    ld h, b                                       ; $466C: $60
    ld d, b                                       ; $466D: $50
    ld a, e                                       ; $466E: $7B
    ld a, [de]                                    ; $466F: $1A
    ld h, [hl]                                    ; $4670: $66
    ld a, h                                       ; $4671: $7C
    cp h                                          ; $4672: $BC
    ld d, b                                       ; $4673: $50
    ld a, h                                       ; $4674: $7C
    or e                                          ; $4675: $B3
    ld h, e                                       ; $4676: $63
    ld a, h                                       ; $4677: $7C
    inc [hl]                                      ; $4678: $34
    ld l, l                                       ; $4679: $6D
    ld h, e                                       ; $467A: $63
    inc hl                                        ; $467B: $23
    ld a, b                                       ; $467C: $78
    ld [hl], d                                    ; $467D: $72
    adc d                                         ; $467E: $8A
    ld a, c                                       ; $467F: $79
    ld a, c                                       ; $4680: $79
    cp h                                          ; $4681: $BC
    ld d, b                                       ; $4682: $50
    ld a, h                                       ; $4683: $7C
    or e                                          ; $4684: $B3
    ld h, e                                       ; $4685: $63
    ld a, h                                       ; $4686: $7C
    inc [hl]                                      ; $4687: $34
    ld l, l                                       ; $4688: $6D
    ld h, e                                       ; $4689: $63
    sbc a                                         ; $468A: $9F
    ld c, b                                       ; $468B: $48
    ld [hl], h                                    ; $468C: $74
    or h                                          ; $468D: $B4
    ld b, [hl]                                    ; $468E: $46
    ld a, e                                       ; $468F: $7B
    inc a                                         ; $4690: $3C
    ld e, b                                       ; $4691: $58
    ld a, h                                       ; $4692: $7C
    db $10                                        ; $4693: $10
    ld l, c                                       ; $4694: $69
    ld a, h                                       ; $4695: $7C
    nop                                           ; $4696: $00
    ld b, b                                       ; $4697: $40
    ld h, e                                       ; $4698: $63
    ld b, a                                       ; $4699: $47
    ld e, a                                       ; $469A: $5F
    ld [hl], d                                    ; $469B: $72
    reti                                          ; $469C: $D9


    ld c, a                                       ; $469D: $4F
    ld a, e                                       ; $469E: $7B
    db $FC                                        ; $469F: $FC
    ld e, b                                       ; $46A0: $58
    ld a, h                                       ; $46A1: $7C
    xor e                                         ; $46A2: $AB
    ld h, d                                       ; $46A3: $62
    ld a, h                                       ; $46A4: $7C
    ld c, c                                       ; $46A5: $49
    ld h, d                                       ; $46A6: $62
    ld h, [hl]                                    ; $46A7: $66
    ld b, [hl]                                    ; $46A8: $46
    ld l, c                                       ; $46A9: $69
    ld a, b                                       ; $46AA: $78
    ld e, $74                                     ; $46AB: $1E $74
    ld a, e                                       ; $46AD: $7B
    ld a, h                                       ; $46AE: $7C
    ld c, [hl]                                    ; $46AF: $4E
    ld a, h                                       ; $46B0: $7C
    ld h, e                                       ; $46B1: $63
    ld h, h                                       ; $46B2: $64
    ld a, h                                       ; $46B3: $7C
    di                                            ; $46B4: $F3
    ld d, c                                       ; $46B5: $51
    ld l, b                                       ; $46B6: $68
    or $4E                                        ; $46B7: $F6 $4E
    ld a, c                                       ; $46B9: $79
    adc b                                         ; $46BA: $88
    ld d, a                                       ; $46BB: $57
    ld a, e                                       ; $46BC: $7B
    inc a                                         ; $46BD: $3C
    ld e, b                                       ; $46BE: $58
    ld a, h                                       ; $46BF: $7C
    db $10                                        ; $46C0: $10
    ld l, c                                       ; $46C1: $69
    ld a, h                                       ; $46C2: $7C
    nop                                           ; $46C3: $00
    ld b, b                                       ; $46C4: $40
    ld h, e                                       ; $46C5: $63
    and c                                         ; $46C6: $A1
    ld d, b                                       ; $46C7: $50
    ld l, a                                       ; $46C8: $6F
    cp h                                          ; $46C9: $BC
    ld e, a                                       ; $46CA: $5F
    ld a, d                                       ; $46CB: $7A
    ld a, h                                       ; $46CC: $7C
    ld e, b                                       ; $46CD: $58
    ld a, h                                       ; $46CE: $7C
    rst $28                                       ; $46CF: $EF
    ld e, a                                       ; $46D0: $5F
    ld a, h                                       ; $46D1: $7C
    dec [hl]                                      ; $46D2: $35
    ld c, a                                       ; $46D3: $4F
    ld h, e                                       ; $46D4: $63
    add hl, hl                                    ; $46D5: $29
    halt                                          ; $46D6: $76
    ld h, [hl]                                    ; $46D7: $66
    or b                                          ; $46D8: $B0
    ld e, d                                       ; $46D9: $5A
    halt                                          ; $46DA: $76
    ld a, h                                       ; $46DB: $7C
    ld e, b                                       ; $46DC: $58
    ld a, h                                       ; $46DD: $7C
    rst $28                                       ; $46DE: $EF
    ld e, a                                       ; $46DF: $5F
    ld a, h                                       ; $46E0: $7C
    dec [hl]                                      ; $46E1: $35
    ld c, a                                       ; $46E2: $4F
    ld h, e                                       ; $46E3: $63
    nop                                           ; $46E4: $00
    ld c, c                                       ; $46E5: $49
    ld d, e                                       ; $46E6: $53
    sub d                                         ; $46E7: $92
    ld h, l                                       ; $46E8: $65
    ld [hl], e                                    ; $46E9: $73
    db $FC                                        ; $46EA: $FC
    ld e, b                                       ; $46EB: $58
    ld a, h                                       ; $46EC: $7C
    xor e                                         ; $46ED: $AB
    ld h, d                                       ; $46EE: $62
    ld a, h                                       ; $46EF: $7C
    ld c, c                                       ; $46F0: $49
    ld h, d                                       ; $46F1: $62
    ld h, [hl]                                    ; $46F2: $66
    ld l, d                                       ; $46F3: $6A
    ld e, d                                       ; $46F4: $5A
    ld a, c                                       ; $46F5: $79
    ld [hl], $7E                                  ; $46F6: $36 $7E
    ld a, e                                       ; $46F8: $7B
    ld a, h                                       ; $46F9: $7C
    ld e, b                                       ; $46FA: $58
    ld a, h                                       ; $46FB: $7C
    rst $28                                       ; $46FC: $EF
    ld e, a                                       ; $46FD: $5F
    ld a, h                                       ; $46FE: $7C
    dec [hl]                                      ; $46FF: $35
    ld c, a                                       ; $4700: $4F
    ld h, e                                       ; $4701: $63
    ld c, h                                       ; $4702: $4C
    ld e, e                                       ; $4703: $5B
    ld [hl], a                                    ; $4704: $77
    sub l                                         ; $4705: $95
    ld b, b                                       ; $4706: $40
    ld a, h                                       ; $4707: $7C
    ld a, h                                       ; $4708: $7C
    ld e, b                                       ; $4709: $58
    ld a, h                                       ; $470A: $7C
    rst $28                                       ; $470B: $EF
    ld e, a                                       ; $470C: $5F
    ld a, h                                       ; $470D: $7C
    dec [hl]                                      ; $470E: $35
    ld c, a                                       ; $470F: $4F
    ld h, e                                       ; $4710: $63
    ld h, [hl]                                    ; $4711: $66
    ld c, h                                       ; $4712: $4C
    ld l, h                                       ; $4713: $6C
    ld hl, $7A47                                  ; $4714: $21 $47 $7A
    ld a, h                                       ; $4717: $7C
    ld e, b                                       ; $4718: $58
    ld a, h                                       ; $4719: $7C
    rst $28                                       ; $471A: $EF
    ld e, a                                       ; $471B: $5F
    ld a, h                                       ; $471C: $7C
    dec [hl]                                      ; $471D: $35
    ld c, a                                       ; $471E: $4F
    ld h, e                                       ; $471F: $63
    db $DB                                        ; $4720: $DB
    ld d, c                                       ; $4721: $51
    ld a, c                                       ; $4722: $79
    sub h                                         ; $4723: $94
    ld a, e                                       ; $4724: $7B
    ld a, e                                       ; $4725: $7B
    ret nz                                        ; $4726: $C0

    ld a, a                                       ; $4727: $7F
    ld d, d                                       ; $4728: $52
    ld d, e                                       ; $4729: $53
    ld h, d                                       ; $472A: $62
    ld a, h                                       ; $472B: $7C
    and h                                         ; $472C: $A4
    ld b, l                                       ; $472D: $45
    ld l, c                                       ; $472E: $69
    inc [hl]                                      ; $472F: $34
    ld e, b                                       ; $4730: $58
    ld a, b                                       ; $4731: $78
    ld hl, sp+$41                                 ; $4732: $F8 $41
    ld a, h                                       ; $4734: $7C
    cp h                                          ; $4735: $BC
    ld d, d                                       ; $4736: $52
    ld a, h                                       ; $4737: $7C
    rst $10                                       ; $4738: $D7
    ld h, d                                       ; $4739: $62
    ld a, h                                       ; $473A: $7C
    xor c                                         ; $473B: $A9
    ld e, l                                       ; $473C: $5D
    ld h, h                                       ; $473D: $64
    ld c, d                                       ; $473E: $4A
    ld e, h                                       ; $473F: $5C
    ld a, c                                       ; $4740: $79
    ld a, d                                       ; $4741: $7A
    ld a, b                                       ; $4742: $78
    ld a, e                                       ; $4743: $7B
    db $FC                                        ; $4744: $FC
    ld e, b                                       ; $4745: $58
    ld a, h                                       ; $4746: $7C
    xor e                                         ; $4747: $AB
    ld h, d                                       ; $4748: $62
    ld a, h                                       ; $4749: $7C
    ld c, c                                       ; $474A: $49
    ld h, d                                       ; $474B: $62
    ld h, [hl]                                    ; $474C: $66
    ld a, [de]                                    ; $474D: $1A
    ld e, a                                       ; $474E: $5F
    ld a, b                                       ; $474F: $78
    ld a, [hl-]                                   ; $4750: $3A
    ld [hl], l                                    ; $4751: $75
    ld a, e                                       ; $4752: $7B
    cp h                                          ; $4753: $BC
    ld c, [hl]                                    ; $4754: $4E
    ld a, h                                       ; $4755: $7C
    or h                                          ; $4756: $B4
    ld l, h                                       ; $4757: $6C
    ld a, e                                       ; $4758: $7B
    cp h                                          ; $4759: $BC
    ld h, l                                       ; $475A: $65
    ld h, e                                       ; $475B: $63
    dec de                                        ; $475C: $1B
    ld a, h                                       ; $475D: $7C
    ld h, e                                       ; $475E: $63
    or $42                                        ; $475F: $F6 $42
    ld [hl], a                                    ; $4761: $77
    cp h                                          ; $4762: $BC
    ld c, [hl]                                    ; $4763: $4E
    ld a, h                                       ; $4764: $7C
    or h                                          ; $4765: $B4
    ld l, h                                       ; $4766: $6C
    ld a, e                                       ; $4767: $7B
    cp h                                          ; $4768: $BC
    ld h, l                                       ; $4769: $65
    ld h, e                                       ; $476A: $63
    rla                                           ; $476B: $17
    ld l, h                                       ; $476C: $6C
    ld l, e                                       ; $476D: $6B
    nop                                           ; $476E: $00
    ld b, b                                       ; $476F: $40
    ld [hl], l                                    ; $4770: $75
    cp h                                          ; $4771: $BC
    ld c, [hl]                                    ; $4772: $4E
    ld a, h                                       ; $4773: $7C
    or h                                          ; $4774: $B4
    ld l, h                                       ; $4775: $6C
    ld a, e                                       ; $4776: $7B
    cp h                                          ; $4777: $BC
    ld h, l                                       ; $4778: $65
    ld h, e                                       ; $4779: $63
    ld l, h                                       ; $477A: $6C
    ld a, [hl]                                    ; $477B: $7E
    ld [hl], b                                    ; $477C: $70
    call z, Call_04F_7B65                         ; $477D: $CC $65 $7B
    cp h                                          ; $4780: $BC
    ld c, [hl]                                    ; $4781: $4E
    ld a, h                                       ; $4782: $7C
    or h                                          ; $4783: $B4
    ld l, h                                       ; $4784: $6C
    ld a, e                                       ; $4785: $7B
    cp h                                          ; $4786: $BC
    ld h, l                                       ; $4787: $65
    ld h, e                                       ; $4788: $63
    xor $62                                       ; $4789: $EE $62
    ld [hl], l                                    ; $478B: $75
    rra                                           ; $478C: $1F
    ld l, l                                       ; $478D: $6D
    ld a, e                                       ; $478E: $7B
    cp h                                          ; $478F: $BC
    ld c, [hl]                                    ; $4790: $4E
    ld a, h                                       ; $4791: $7C
    or h                                          ; $4792: $B4
    ld l, h                                       ; $4793: $6C
    ld a, e                                       ; $4794: $7B
    cp h                                          ; $4795: $BC
    ld h, l                                       ; $4796: $65
    ld h, e                                       ; $4797: $63
    pop de                                        ; $4798: $D1
    ld h, a                                       ; $4799: $67
    ld l, e                                       ; $479A: $6B
    ld d, e                                       ; $479B: $53
    ld a, e                                       ; $479C: $7B
    ld [hl], l                                    ; $479D: $75
    cp h                                          ; $479E: $BC
    ld c, [hl]                                    ; $479F: $4E
    ld a, h                                       ; $47A0: $7C
    or h                                          ; $47A1: $B4
    ld l, h                                       ; $47A2: $6C
    ld a, e                                       ; $47A3: $7B
    cp h                                          ; $47A4: $BC
    ld h, l                                       ; $47A5: $65
    ld h, e                                       ; $47A6: $63
    dec hl                                        ; $47A7: $2B
    ld e, a                                       ; $47A8: $5F
    ld l, e                                       ; $47A9: $6B
    ld [hl+], a                                   ; $47AA: $22
    ld d, c                                       ; $47AB: $51
    ld [hl], h                                    ; $47AC: $74
    cp h                                          ; $47AD: $BC
    ld c, [hl]                                    ; $47AE: $4E
    ld a, h                                       ; $47AF: $7C
    or h                                          ; $47B0: $B4
    ld l, h                                       ; $47B1: $6C
    ld a, e                                       ; $47B2: $7B
    cp h                                          ; $47B3: $BC
    ld h, l                                       ; $47B4: $65
    ld h, e                                       ; $47B5: $63
    ld [bc], a                                    ; $47B6: $02
    ld a, d                                       ; $47B7: $7A
    ld l, l                                       ; $47B8: $6D
    sbc $71                                       ; $47B9: $DE $71
    ld a, c                                       ; $47BB: $79
    cp h                                          ; $47BC: $BC
    ld c, [hl]                                    ; $47BD: $4E
    ld a, h                                       ; $47BE: $7C
    or h                                          ; $47BF: $B4
    ld l, h                                       ; $47C0: $6C
    ld a, e                                       ; $47C1: $7B
    cp h                                          ; $47C2: $BC
    ld h, l                                       ; $47C3: $65
    ld h, e                                       ; $47C4: $63
    adc d                                         ; $47C5: $8A
    ld c, l                                       ; $47C6: $4D
    ld l, e                                       ; $47C7: $6B
    ld b, h                                       ; $47C8: $44
    ld b, a                                       ; $47C9: $47
    ld [hl], e                                    ; $47CA: $73
    cp h                                          ; $47CB: $BC
    ld c, [hl]                                    ; $47CC: $4E
    ld a, h                                       ; $47CD: $7C
    or h                                          ; $47CE: $B4
    ld l, h                                       ; $47CF: $6C
    ld a, e                                       ; $47D0: $7B
    cp h                                          ; $47D1: $BC
    ld h, l                                       ; $47D2: $65
    ld h, e                                       ; $47D3: $63
    cp b                                          ; $47D4: $B8
    ld a, c                                       ; $47D5: $79
    ld l, d                                       ; $47D6: $6A
    or d                                          ; $47D7: $B2
    ld e, h                                       ; $47D8: $5C
    ld [hl], a                                    ; $47D9: $77
    ret nz                                        ; $47DA: $C0

    ld a, a                                       ; $47DB: $7F
    ld d, d                                       ; $47DC: $52
    ld d, e                                       ; $47DD: $53
    ld h, d                                       ; $47DE: $62
    ld a, h                                       ; $47DF: $7C
    and h                                         ; $47E0: $A4
    ld b, l                                       ; $47E1: $45
    ld l, c                                       ; $47E2: $69
    ld l, e                                       ; $47E3: $6B
    ld d, [hl]                                    ; $47E4: $56
    ld l, e                                       ; $47E5: $6B
    ld sp, $7064                                  ; $47E6: $31 $64 $70
    db $FC                                        ; $47E9: $FC
    ld c, b                                       ; $47EA: $48
    ld a, h                                       ; $47EB: $7C
    ei                                            ; $47EC: $FB
    ld h, c                                       ; $47ED: $61
    ld a, h                                       ; $47EE: $7C
    xor d                                         ; $47EF: $AA
    ld [hl], h                                    ; $47F0: $74
    ld h, e                                       ; $47F1: $63
    ret nc                                        ; $47F2: $D0

    ld e, d                                       ; $47F3: $5A
    ld l, e                                       ; $47F4: $6B
    ret nc                                        ; $47F5: $D0

    ld d, a                                       ; $47F6: $57
    ld [hl], e                                    ; $47F7: $73
    db $FC                                        ; $47F8: $FC
    ld c, b                                       ; $47F9: $48
    ld a, h                                       ; $47FA: $7C
    ei                                            ; $47FB: $FB
    ld h, c                                       ; $47FC: $61
    ld a, h                                       ; $47FD: $7C
    xor d                                         ; $47FE: $AA
    ld [hl], h                                    ; $47FF: $74
    ld h, e                                       ; $4800: $63
    ld h, h                                       ; $4801: $64
    ld a, l                                       ; $4802: $7D
    ld [hl], c                                    ; $4803: $71
    rla                                           ; $4804: $17
    ld l, a                                       ; $4805: $6F
    halt                                          ; $4806: $76
    db $FC                                        ; $4807: $FC
    ld c, b                                       ; $4808: $48
    ld a, h                                       ; $4809: $7C
    ei                                            ; $480A: $FB
    ld h, c                                       ; $480B: $61
    ld a, h                                       ; $480C: $7C
    xor d                                         ; $480D: $AA
    ld [hl], h                                    ; $480E: $74
    ld h, e                                       ; $480F: $63
    nop                                           ; $4810: $00
    ld b, b                                       ; $4811: $40
    ld [hl], h                                    ; $4812: $74
    add [hl]                                      ; $4813: $86
    ld d, e                                       ; $4814: $53
    ld a, b                                       ; $4815: $78
    db $FC                                        ; $4816: $FC
    ld c, b                                       ; $4817: $48
    ld a, h                                       ; $4818: $7C
    ei                                            ; $4819: $FB
    ld h, c                                       ; $481A: $61
    ld a, h                                       ; $481B: $7C
    xor d                                         ; $481C: $AA
    ld [hl], h                                    ; $481D: $74
    ld h, e                                       ; $481E: $63
    pop bc                                        ; $481F: $C1
    ld c, e                                       ; $4820: $4B
    ld a, d                                       ; $4821: $7A
    xor a                                         ; $4822: $AF
    ld [hl], h                                    ; $4823: $74
    ld a, d                                       ; $4824: $7A
    db $FC                                        ; $4825: $FC
    ld b, [hl]                                    ; $4826: $46
    ld a, h                                       ; $4827: $7C
    and c                                         ; $4828: $A1
    ld l, b                                       ; $4829: $68
    ld a, h                                       ; $482A: $7C
    ld h, c                                       ; $482B: $61
    ld l, d                                       ; $482C: $6A
    ld [hl], c                                    ; $482D: $71
    ld b, d                                       ; $482E: $42
    ld c, [hl]                                    ; $482F: $4E
    ld a, e                                       ; $4830: $7B
    ld a, $42                                     ; $4831: $3E $42
    ld a, h                                       ; $4833: $7C
    db $FC                                        ; $4834: $FC
    ld b, [hl]                                    ; $4835: $46
    ld a, h                                       ; $4836: $7C
    and c                                         ; $4837: $A1
    ld l, b                                       ; $4838: $68
    ld a, h                                       ; $4839: $7C
    ld h, c                                       ; $483A: $61
    ld l, d                                       ; $483B: $6A
    ld [hl], c                                    ; $483C: $71
    xor d                                         ; $483D: $AA
    ld d, h                                       ; $483E: $54
    ld a, d                                       ; $483F: $7A
    nop                                           ; $4840: $00
    ld b, b                                       ; $4841: $40
    ld a, h                                       ; $4842: $7C
    db $FC                                        ; $4843: $FC
    ld b, [hl]                                    ; $4844: $46
    ld a, h                                       ; $4845: $7C
    and c                                         ; $4846: $A1
    ld l, b                                       ; $4847: $68
    ld a, h                                       ; $4848: $7C
    ld h, c                                       ; $4849: $61
    ld l, d                                       ; $484A: $6A
    ld [hl], c                                    ; $484B: $71
    dec l                                         ; $484C: $2D
    halt                                          ; $484D: $76
    ld a, c                                       ; $484E: $79
    adc d                                         ; $484F: $8A
    ld l, l                                       ; $4850: $6D
    ld a, e                                       ; $4851: $7B
    db $FC                                        ; $4852: $FC
    ld b, [hl]                                    ; $4853: $46
    ld a, h                                       ; $4854: $7C
    and c                                         ; $4855: $A1
    ld l, b                                       ; $4856: $68
    ld a, h                                       ; $4857: $7C
    ld h, c                                       ; $4858: $61
    ld l, d                                       ; $4859: $6A
    ld [hl], c                                    ; $485A: $71
    ld b, e                                       ; $485B: $43
    ld b, d                                       ; $485C: $42
    ld a, e                                       ; $485D: $7B
    ld h, e                                       ; $485E: $63
    ld b, h                                       ; $485F: $44
    ld a, h                                       ; $4860: $7C
    db $FC                                        ; $4861: $FC
    ld b, [hl]                                    ; $4862: $46
    ld a, h                                       ; $4863: $7C
    and c                                         ; $4864: $A1
    ld l, b                                       ; $4865: $68
    ld a, h                                       ; $4866: $7C
    ld h, c                                       ; $4867: $61
    ld l, d                                       ; $4868: $6A
    ld [hl], c                                    ; $4869: $71
    db $FD                                        ; $486A: $FD
    ld c, d                                       ; $486B: $4A
    ld a, d                                       ; $486C: $7A
    call c, Call_04F_7B74                         ; $486D: $DC $74 $7B
    db $FC                                        ; $4870: $FC
    ld b, [hl]                                    ; $4871: $46
    ld a, h                                       ; $4872: $7C
    and c                                         ; $4873: $A1
    ld l, b                                       ; $4874: $68
    ld a, h                                       ; $4875: $7C
    ld h, c                                       ; $4876: $61
    ld l, d                                       ; $4877: $6A
    ld [hl], c                                    ; $4878: $71
    ld c, $5D                                     ; $4879: $0E $5D
    ld a, d                                       ; $487B: $7A
    or $75                                        ; $487C: $F6 $75
    ld a, e                                       ; $487E: $7B
    db $FC                                        ; $487F: $FC
    ld c, b                                       ; $4880: $48
    ld a, h                                       ; $4881: $7C
    ei                                            ; $4882: $FB
    ld h, c                                       ; $4883: $61
    ld a, h                                       ; $4884: $7C
    xor d                                         ; $4885: $AA
    ld [hl], h                                    ; $4886: $74
    ld h, e                                       ; $4887: $63
    call nz, Call_04F_7843                        ; $4888: $C4 $43 $78
    ret                                           ; $488B: $C9


    ld b, h                                       ; $488C: $44
    ld a, d                                       ; $488D: $7A
    db $FC                                        ; $488E: $FC
    ld b, [hl]                                    ; $488F: $46
    ld a, h                                       ; $4890: $7C
    and c                                         ; $4891: $A1
    ld l, b                                       ; $4892: $68
    ld a, h                                       ; $4893: $7C
    ld h, c                                       ; $4894: $61
    ld l, d                                       ; $4895: $6A
    ld [hl], c                                    ; $4896: $71
    ld d, d                                       ; $4897: $52
    ld c, a                                       ; $4898: $4F
    ld a, e                                       ; $4899: $7B
    ld l, $45                                     ; $489A: $2E $45
    ld a, h                                       ; $489C: $7C
    cp h                                          ; $489D: $BC
    ld c, b                                       ; $489E: $48
    ld a, h                                       ; $489F: $7C
    daa                                           ; $48A0: $27
    ld h, d                                       ; $48A1: $62
    ld a, h                                       ; $48A2: $7C
    ld b, l                                       ; $48A3: $45
    ld d, [hl]                                    ; $48A4: $56
    ld h, h                                       ; $48A5: $64
    ld hl, $7067                                  ; $48A6: $21 $67 $70
    ld a, a                                       ; $48A9: $7F
    ld d, d                                       ; $48AA: $52
    ld a, d                                       ; $48AB: $7A
    cp h                                          ; $48AC: $BC
    ld c, b                                       ; $48AD: $48
    ld a, h                                       ; $48AE: $7C
    daa                                           ; $48AF: $27
    ld h, d                                       ; $48B0: $62
    ld a, h                                       ; $48B1: $7C
    ld b, l                                       ; $48B2: $45
    ld d, [hl]                                    ; $48B3: $56
    ld h, h                                       ; $48B4: $64
    call z, Call_04F_7350                         ; $48B5: $CC $50 $73
    ld hl, sp+$6F                                 ; $48B8: $F8 $6F
    ld a, e                                       ; $48BA: $7B
    cp h                                          ; $48BB: $BC
    ld c, b                                       ; $48BC: $48
    ld a, h                                       ; $48BD: $7C
    daa                                           ; $48BE: $27
    ld h, d                                       ; $48BF: $62
    ld a, h                                       ; $48C0: $7C
    ld b, l                                       ; $48C1: $45
    ld d, [hl]                                    ; $48C2: $56
    ld h, h                                       ; $48C3: $64
    rst $00                                       ; $48C4: $C7
    ld d, b                                       ; $48C5: $50
    ld l, c                                       ; $48C6: $69
    ld a, d                                       ; $48C7: $7A
    ld d, a                                       ; $48C8: $57
    halt                                          ; $48C9: $76
    cp h                                          ; $48CA: $BC
    ld c, b                                       ; $48CB: $48
    ld a, h                                       ; $48CC: $7C
    daa                                           ; $48CD: $27
    ld h, d                                       ; $48CE: $62
    ld a, h                                       ; $48CF: $7C
    ld b, l                                       ; $48D0: $45
    ld d, [hl]                                    ; $48D1: $56
    ld h, h                                       ; $48D2: $64
    rrca                                          ; $48D3: $0F
    ld h, d                                       ; $48D4: $62
    ld [hl], c                                    ; $48D5: $71
    db $EB                                        ; $48D6: $EB
    ld l, l                                       ; $48D7: $6D
    ld a, d                                       ; $48D8: $7A
    cp h                                          ; $48D9: $BC
    ld c, b                                       ; $48DA: $48
    ld a, h                                       ; $48DB: $7C
    daa                                           ; $48DC: $27
    ld h, d                                       ; $48DD: $62
    ld a, h                                       ; $48DE: $7C
    ld b, l                                       ; $48DF: $45
    ld d, [hl]                                    ; $48E0: $56
    ld h, h                                       ; $48E1: $64
    ld e, c                                       ; $48E2: $59
    ld l, h                                       ; $48E3: $6C
    ld [hl], e                                    ; $48E4: $73
    ld b, $51                                     ; $48E5: $06 $51
    ld a, d                                       ; $48E7: $7A
    cp h                                          ; $48E8: $BC
    ld c, b                                       ; $48E9: $48
    ld a, h                                       ; $48EA: $7C
    daa                                           ; $48EB: $27
    ld h, d                                       ; $48EC: $62
    ld a, h                                       ; $48ED: $7C
    ld b, l                                       ; $48EE: $45
    ld d, [hl]                                    ; $48EF: $56
    ld h, h                                       ; $48F0: $64
    ld e, a                                       ; $48F1: $5F
    ld h, e                                       ; $48F2: $63
    ld l, l                                       ; $48F3: $6D
    rst $20                                       ; $48F4: $E7
    ld b, a                                       ; $48F5: $47
    ld a, d                                       ; $48F6: $7A
    cp h                                          ; $48F7: $BC
    ld c, b                                       ; $48F8: $48
    ld a, h                                       ; $48F9: $7C
    daa                                           ; $48FA: $27
    ld h, d                                       ; $48FB: $62
    ld a, h                                       ; $48FC: $7C
    ld b, l                                       ; $48FD: $45
    ld d, [hl]                                    ; $48FE: $56
    ld h, h                                       ; $48FF: $64
    sub e                                         ; $4900: $93
    ld e, e                                       ; $4901: $5B
    ld l, c                                       ; $4902: $69
    ld e, a                                       ; $4903: $5F
    ld a, [hl]                                    ; $4904: $7E
    ld l, [hl]                                    ; $4905: $6E
    cp h                                          ; $4906: $BC
    ld c, b                                       ; $4907: $48
    ld a, h                                       ; $4908: $7C
    daa                                           ; $4909: $27
    ld h, d                                       ; $490A: $62
    ld a, h                                       ; $490B: $7C
    ld b, l                                       ; $490C: $45
    ld d, [hl]                                    ; $490D: $56
    ld h, h                                       ; $490E: $64
    dec bc                                        ; $490F: $0B
    ld e, d                                       ; $4910: $5A
    ld [hl], l                                    ; $4911: $75
    call nz, Call_04F_7B77                        ; $4912: $C4 $77 $7B
    cp h                                          ; $4915: $BC
    ld c, b                                       ; $4916: $48
    ld a, h                                       ; $4917: $7C
    daa                                           ; $4918: $27
    ld h, d                                       ; $4919: $62
    ld a, h                                       ; $491A: $7C
    ld b, l                                       ; $491B: $45
    ld d, [hl]                                    ; $491C: $56
    ld h, h                                       ; $491D: $64
    db $DD                                        ; $491E: $DD
    ld a, e                                       ; $491F: $7B
    ld d, e                                       ; $4920: $53
    rst $30                                       ; $4921: $F7
    ld c, a                                       ; $4922: $4F
    ld a, b                                       ; $4923: $78
    cp h                                          ; $4924: $BC
    ld c, b                                       ; $4925: $48
    ld a, h                                       ; $4926: $7C
    daa                                           ; $4927: $27
    ld h, d                                       ; $4928: $62
    ld a, h                                       ; $4929: $7C
    ld b, l                                       ; $492A: $45
    ld d, [hl]                                    ; $492B: $56
    ld h, h                                       ; $492C: $64
    reti                                          ; $492D: $D9


    ld [hl], h                                    ; $492E: $74
    ld l, b                                       ; $492F: $68
    jr nc, jr_04F_49A1                            ; $4930: $30 $6F

    ld [hl], l                                    ; $4932: $75
    ld a, h                                       ; $4933: $7C
    ld c, [hl]                                    ; $4934: $4E
    ld a, h                                       ; $4935: $7C
    ld h, e                                       ; $4936: $63
    ld h, h                                       ; $4937: $64
    ld a, h                                       ; $4938: $7C
    di                                            ; $4939: $F3
    ld d, c                                       ; $493A: $51
    ld l, b                                       ; $493B: $68
    ld l, c                                       ; $493C: $69
    ld h, a                                       ; $493D: $67
    ld l, a                                       ; $493E: $6F
    push bc                                       ; $493F: $C5
    ld a, [hl]                                    ; $4940: $7E
    ld [hl], l                                    ; $4941: $75
    cp h                                          ; $4942: $BC
    ld c, b                                       ; $4943: $48
    ld a, h                                       ; $4944: $7C
    daa                                           ; $4945: $27
    ld h, d                                       ; $4946: $62
    ld a, h                                       ; $4947: $7C
    ld b, l                                       ; $4948: $45
    ld d, [hl]                                    ; $4949: $56
    ld h, h                                       ; $494A: $64
    ld a, b                                       ; $494B: $78
    ld e, a                                       ; $494C: $5F
    halt                                          ; $494D: $76
    dec c                                         ; $494E: $0D
    ld [hl], a                                    ; $494F: $77
    ld a, e                                       ; $4950: $7B
    cp h                                          ; $4951: $BC
    ld c, b                                       ; $4952: $48
    ld a, h                                       ; $4953: $7C
    daa                                           ; $4954: $27
    ld h, d                                       ; $4955: $62
    ld a, h                                       ; $4956: $7C
    ld b, l                                       ; $4957: $45
    ld d, [hl]                                    ; $4958: $56
    ld h, h                                       ; $4959: $64
    ld [c], a                                     ; $495A: $E2
    ld b, d                                       ; $495B: $42
    ld [hl], c                                    ; $495C: $71
    inc bc                                        ; $495D: $03
    ld h, b                                       ; $495E: $60
    ld a, c                                       ; $495F: $79
    cp h                                          ; $4960: $BC
    ld c, b                                       ; $4961: $48
    ld a, h                                       ; $4962: $7C
    daa                                           ; $4963: $27
    ld h, d                                       ; $4964: $62
    ld a, h                                       ; $4965: $7C
    ld b, l                                       ; $4966: $45
    ld d, [hl]                                    ; $4967: $56
    ld h, h                                       ; $4968: $64
    sbc c                                         ; $4969: $99
    ld a, c                                       ; $496A: $79
    ld [hl], l                                    ; $496B: $75
    ld e, l                                       ; $496C: $5D
    ld l, [hl]                                    ; $496D: $6E
    ld a, e                                       ; $496E: $7B
    cp h                                          ; $496F: $BC
    ld c, b                                       ; $4970: $48
    ld a, h                                       ; $4971: $7C
    daa                                           ; $4972: $27
    ld h, d                                       ; $4973: $62
    ld a, h                                       ; $4974: $7C
    ld b, l                                       ; $4975: $45
    ld d, [hl]                                    ; $4976: $56
    ld h, h                                       ; $4977: $64
    jr nc, jr_04F_49E1                            ; $4978: $30 $67

    ld l, l                                       ; $497A: $6D
    adc b                                         ; $497B: $88
    ld a, h                                       ; $497C: $7C
    ld [hl], a                                    ; $497D: $77
    cp h                                          ; $497E: $BC
    ld c, b                                       ; $497F: $48
    ld a, h                                       ; $4980: $7C
    daa                                           ; $4981: $27
    ld h, d                                       ; $4982: $62
    ld a, h                                       ; $4983: $7C
    ld b, l                                       ; $4984: $45
    ld d, [hl]                                    ; $4985: $56
    ld h, h                                       ; $4986: $64
    rst $28                                       ; $4987: $EF
    ld a, l                                       ; $4988: $7D
    ld h, d                                       ; $4989: $62
    ld c, b                                       ; $498A: $48
    ld d, b                                       ; $498B: $50
    ld a, d                                       ; $498C: $7A
    cp h                                          ; $498D: $BC
    ld c, b                                       ; $498E: $48
    ld a, h                                       ; $498F: $7C
    daa                                           ; $4990: $27
    ld h, d                                       ; $4991: $62
    ld a, h                                       ; $4992: $7C
    ld b, l                                       ; $4993: $45
    ld d, [hl]                                    ; $4994: $56
    ld h, h                                       ; $4995: $64
    ld d, h                                       ; $4996: $54
    ld b, h                                       ; $4997: $44
    ld [hl], h                                    ; $4998: $74
    ld h, c                                       ; $4999: $61
    ld d, l                                       ; $499A: $55
    ld a, d                                       ; $499B: $7A
    cp h                                          ; $499C: $BC
    ld c, b                                       ; $499D: $48
    ld a, h                                       ; $499E: $7C
    daa                                           ; $499F: $27
    ld h, d                                       ; $49A0: $62

jr_04F_49A1:
    ld a, h                                       ; $49A1: $7C
    ld b, l                                       ; $49A2: $45
    ld d, [hl]                                    ; $49A3: $56
    ld h, h                                       ; $49A4: $64
    cp d                                          ; $49A5: $BA
    ld a, l                                       ; $49A6: $7D
    ld l, l                                       ; $49A7: $6D
    ld b, l                                       ; $49A8: $45
    ld a, a                                       ; $49A9: $7F
    ld a, c                                       ; $49AA: $79
    cp h                                          ; $49AB: $BC
    ld c, b                                       ; $49AC: $48
    ld a, h                                       ; $49AD: $7C
    daa                                           ; $49AE: $27
    ld h, d                                       ; $49AF: $62
    ld a, h                                       ; $49B0: $7C
    ld b, l                                       ; $49B1: $45
    ld d, [hl]                                    ; $49B2: $56
    ld h, h                                       ; $49B3: $64
    halt                                          ; $49B4: $76
    ld e, d                                       ; $49B5: $5A
    ld l, a                                       ; $49B6: $6F
    ld e, h                                       ; $49B7: $5C
    ld e, c                                       ; $49B8: $59
    ld a, b                                       ; $49B9: $78
    ld a, h                                       ; $49BA: $7C
    ld c, c                                       ; $49BB: $49
    ld a, h                                       ; $49BC: $7C
    db $E4                                        ; $49BD: $E4
    ld e, e                                       ; $49BE: $5B
    ld a, h                                       ; $49BF: $7C
    push de                                       ; $49C0: $D5
    ld l, a                                       ; $49C1: $6F
    ld h, c                                       ; $49C2: $61
    jp z, Jump_04F_655C                           ; $49C3: $CA $5C $65

    ld h, a                                       ; $49C6: $67
    ld a, d                                       ; $49C7: $7A
    ld l, a                                       ; $49C8: $6F
    cp h                                          ; $49C9: $BC
    ld d, b                                       ; $49CA: $50
    ld a, h                                       ; $49CB: $7C
    or e                                          ; $49CC: $B3
    ld h, e                                       ; $49CD: $63
    ld a, h                                       ; $49CE: $7C
    inc [hl]                                      ; $49CF: $34
    ld l, l                                       ; $49D0: $6D
    ld h, e                                       ; $49D1: $63
    ld bc, $7178                                  ; $49D2: $01 $78 $71
    ld b, b                                       ; $49D5: $40
    ld l, a                                       ; $49D6: $6F
    ld a, c                                       ; $49D7: $79
    db $FC                                        ; $49D8: $FC
    ld b, [hl]                                    ; $49D9: $46
    ld a, h                                       ; $49DA: $7C
    and c                                         ; $49DB: $A1
    ld l, b                                       ; $49DC: $68
    ld a, h                                       ; $49DD: $7C
    ld h, c                                       ; $49DE: $61
    ld l, d                                       ; $49DF: $6A
    ld [hl], c                                    ; $49E0: $71

jr_04F_49E1:
    ld a, [hl+]                                   ; $49E1: $2A
    ld l, d                                       ; $49E2: $6A
    ld a, e                                       ; $49E3: $7B
    db $ED                                        ; $49E4: $ED
    ld e, [hl]                                    ; $49E5: $5E
    ld a, h                                       ; $49E6: $7C
    db $FC                                        ; $49E7: $FC
    ld b, [hl]                                    ; $49E8: $46
    ld a, h                                       ; $49E9: $7C
    and c                                         ; $49EA: $A1
    ld l, b                                       ; $49EB: $68
    ld a, h                                       ; $49EC: $7C
    ld h, c                                       ; $49ED: $61
    ld l, d                                       ; $49EE: $6A
    ld [hl], c                                    ; $49EF: $71
    sub a                                         ; $49F0: $97
    ld l, d                                       ; $49F1: $6A
    ld a, e                                       ; $49F2: $7B
    add l                                         ; $49F3: $85
    ld e, [hl]                                    ; $49F4: $5E
    ld a, h                                       ; $49F5: $7C
    ld a, h                                       ; $49F6: $7C
    ld c, c                                       ; $49F7: $49
    ld a, h                                       ; $49F8: $7C
    db $E4                                        ; $49F9: $E4
    ld e, e                                       ; $49FA: $5B
    ld a, h                                       ; $49FB: $7C
    push de                                       ; $49FC: $D5
    ld l, a                                       ; $49FD: $6F
    ld h, c                                       ; $49FE: $61
    sbc d                                         ; $49FF: $9A
    ld h, a                                       ; $4A00: $67
    ld [hl], a                                    ; $4A01: $77
    ld c, a                                       ; $4A02: $4F
    ld l, c                                       ; $4A03: $69
    ld a, e                                       ; $4A04: $7B
    ld a, h                                       ; $4A05: $7C
    ld c, c                                       ; $4A06: $49
    ld a, h                                       ; $4A07: $7C
    db $E4                                        ; $4A08: $E4
    ld e, e                                       ; $4A09: $5B
    ld a, h                                       ; $4A0A: $7C
    push de                                       ; $4A0B: $D5
    ld l, a                                       ; $4A0C: $6F
    ld h, c                                       ; $4A0D: $61
    ld [hl], b                                    ; $4A0E: $70
    ld l, c                                       ; $4A0F: $69
    ld l, b                                       ; $4A10: $68
    ld a, b                                       ; $4A11: $78
    ld e, h                                       ; $4A12: $5C
    ld [hl], c                                    ; $4A13: $71
    ld a, h                                       ; $4A14: $7C
    ld c, c                                       ; $4A15: $49
    ld a, h                                       ; $4A16: $7C
    db $E4                                        ; $4A17: $E4
    ld e, e                                       ; $4A18: $5B
    ld a, h                                       ; $4A19: $7C
    push de                                       ; $4A1A: $D5
    ld l, a                                       ; $4A1B: $6F
    ld h, c                                       ; $4A1C: $61
    or h                                          ; $4A1D: $B4
    ld b, e                                       ; $4A1E: $43
    ld l, [hl]                                    ; $4A1F: $6E
    jp hl                                         ; $4A20: $E9


    ld h, h                                       ; $4A21: $64
    ld [hl], a                                    ; $4A22: $77
    ld a, h                                       ; $4A23: $7C
    ld c, c                                       ; $4A24: $49
    ld a, h                                       ; $4A25: $7C
    db $E4                                        ; $4A26: $E4
    ld e, e                                       ; $4A27: $5B
    ld a, h                                       ; $4A28: $7C
    push de                                       ; $4A29: $D5
    ld l, a                                       ; $4A2A: $6F
    ld h, c                                       ; $4A2B: $61
    nop                                           ; $4A2C: $00
    ld b, b                                       ; $4A2D: $40
    ld l, h                                       ; $4A2E: $6C
    sub l                                         ; $4A2F: $95
    ld d, h                                       ; $4A30: $54
    ld [hl], l                                    ; $4A31: $75
    db $FC                                        ; $4A32: $FC
    ld b, [hl]                                    ; $4A33: $46
    ld a, h                                       ; $4A34: $7C
    and c                                         ; $4A35: $A1
    ld l, b                                       ; $4A36: $68
    ld a, h                                       ; $4A37: $7C
    ld h, c                                       ; $4A38: $61
    ld l, d                                       ; $4A39: $6A
    ld [hl], c                                    ; $4A3A: $71
    dec [hl]                                      ; $4A3B: $35
    ld l, b                                       ; $4A3C: $68
    ld a, c                                       ; $4A3D: $79
    push hl                                       ; $4A3E: $E5
    ld e, [hl]                                    ; $4A3F: $5E
    ld a, e                                       ; $4A40: $7B
    ld a, h                                       ; $4A41: $7C
    ld c, c                                       ; $4A42: $49
    ld a, h                                       ; $4A43: $7C
    db $E4                                        ; $4A44: $E4
    ld e, e                                       ; $4A45: $5B
    ld a, h                                       ; $4A46: $7C
    push de                                       ; $4A47: $D5
    ld l, a                                       ; $4A48: $6F
    ld h, c                                       ; $4A49: $61
    ld h, d                                       ; $4A4A: $62
    ld e, c                                       ; $4A4B: $59
    ld h, a                                       ; $4A4C: $67
    sbc c                                         ; $4A4D: $99
    ld d, a                                       ; $4A4E: $57
    ld [hl], d                                    ; $4A4F: $72
    db $FC                                        ; $4A50: $FC
    ld b, [hl]                                    ; $4A51: $46
    ld a, h                                       ; $4A52: $7C
    and c                                         ; $4A53: $A1
    ld l, b                                       ; $4A54: $68
    ld a, h                                       ; $4A55: $7C
    ld h, c                                       ; $4A56: $61
    ld l, d                                       ; $4A57: $6A
    ld [hl], c                                    ; $4A58: $71
    cp l                                          ; $4A59: $BD
    ld l, c                                       ; $4A5A: $69
    ld a, e                                       ; $4A5B: $7B
    cp c                                          ; $4A5C: $B9
    ld e, [hl]                                    ; $4A5D: $5E
    ld a, h                                       ; $4A5E: $7C
    ld a, h                                       ; $4A5F: $7C
    ld c, c                                       ; $4A60: $49
    ld a, h                                       ; $4A61: $7C
    db $E4                                        ; $4A62: $E4
    ld e, e                                       ; $4A63: $5B
    ld a, h                                       ; $4A64: $7C
    push de                                       ; $4A65: $D5
    ld l, a                                       ; $4A66: $6F
    ld h, c                                       ; $4A67: $61
    cp b                                          ; $4A68: $B8
    ld e, l                                       ; $4A69: $5D
    ld l, a                                       ; $4A6A: $6F
    and $59                                       ; $4A6B: $E6 $59
    ld [hl], a                                    ; $4A6D: $77
    ld a, h                                       ; $4A6E: $7C
    ld c, c                                       ; $4A6F: $49
    ld a, h                                       ; $4A70: $7C
    db $E4                                        ; $4A71: $E4
    ld e, e                                       ; $4A72: $5B
    ld a, h                                       ; $4A73: $7C
    push de                                       ; $4A74: $D5
    ld l, a                                       ; $4A75: $6F
    ld h, c                                       ; $4A76: $61
    ld sp, $7049                                  ; $4A77: $31 $49 $70
    sub d                                         ; $4A7A: $92
    ld d, d                                       ; $4A7B: $52
    halt                                          ; $4A7C: $76
    ld a, h                                       ; $4A7D: $7C
    ld c, c                                       ; $4A7E: $49
    ld a, h                                       ; $4A7F: $7C
    db $E4                                        ; $4A80: $E4
    ld e, e                                       ; $4A81: $5B
    ld a, h                                       ; $4A82: $7C
    push de                                       ; $4A83: $D5
    ld l, a                                       ; $4A84: $6F
    ld h, c                                       ; $4A85: $61
    ld [hl], l                                    ; $4A86: $75
    ld [hl], e                                    ; $4A87: $73
    ld [hl], a                                    ; $4A88: $77
    cp d                                          ; $4A89: $BA
    ld c, l                                       ; $4A8A: $4D
    ld a, e                                       ; $4A8B: $7B
    ld a, h                                       ; $4A8C: $7C
    ld b, a                                       ; $4A8D: $47
    ld a, h                                       ; $4A8E: $7C
    dec [hl]                                      ; $4A8F: $35
    ld l, c                                       ; $4A90: $69
    ld a, h                                       ; $4A91: $7C
    ret                                           ; $4A92: $C9


    ld a, d                                       ; $4A93: $7A
    ld d, b                                       ; $4A94: $50
    ld b, b                                       ; $4A95: $40
    ld a, h                                       ; $4A96: $7C
    ld a, e                                       ; $4A97: $7B
    jp z, Jump_04F_7C6D                           ; $4A98: $CA $6D $7C

    ld a, h                                       ; $4A9B: $7C
    ld b, a                                       ; $4A9C: $47
    ld a, h                                       ; $4A9D: $7C
    dec [hl]                                      ; $4A9E: $35
    ld l, c                                       ; $4A9F: $69
    ld a, h                                       ; $4AA0: $7C
    ret                                           ; $4AA1: $C9


    ld a, d                                       ; $4AA2: $7A
    ld d, b                                       ; $4AA3: $50
    nop                                           ; $4AA4: $00
    ld c, l                                       ; $4AA5: $4D
    ld a, c                                       ; $4AA6: $79
    add hl, bc                                    ; $4AA7: $09
    ld l, d                                       ; $4AA8: $6A
    ld a, h                                       ; $4AA9: $7C
    ld a, h                                       ; $4AAA: $7C
    ld b, a                                       ; $4AAB: $47
    ld a, h                                       ; $4AAC: $7C
    dec [hl]                                      ; $4AAD: $35
    ld l, c                                       ; $4AAE: $69
    ld a, h                                       ; $4AAF: $7C
    ret                                           ; $4AB0: $C9


    ld a, d                                       ; $4AB1: $7A
    ld d, b                                       ; $4AB2: $50
    adc c                                         ; $4AB3: $89
    ld a, c                                       ; $4AB4: $79
    ld a, e                                       ; $4AB5: $7B
    cp h                                          ; $4AB6: $BC
    ld l, l                                       ; $4AB7: $6D
    ld a, h                                       ; $4AB8: $7C
    ld a, h                                       ; $4AB9: $7C
    ld b, a                                       ; $4ABA: $47
    ld a, h                                       ; $4ABB: $7C
    dec [hl]                                      ; $4ABC: $35
    ld l, c                                       ; $4ABD: $69
    ld a, h                                       ; $4ABE: $7C
    ret                                           ; $4ABF: $C9


    ld a, d                                       ; $4AC0: $7A
    ld d, b                                       ; $4AC1: $50
    ld a, [bc]                                    ; $4AC2: $0A
    ld b, h                                       ; $4AC3: $44
    ld a, c                                       ; $4AC4: $79
    rst $20                                       ; $4AC5: $E7
    ld l, c                                       ; $4AC6: $69
    ld a, h                                       ; $4AC7: $7C
    ld a, h                                       ; $4AC8: $7C
    ld b, a                                       ; $4AC9: $47
    ld a, h                                       ; $4ACA: $7C
    dec [hl]                                      ; $4ACB: $35
    ld l, c                                       ; $4ACC: $69
    ld a, h                                       ; $4ACD: $7C
    ret                                           ; $4ACE: $C9


    ld a, d                                       ; $4ACF: $7A
    ld d, b                                       ; $4AD0: $50
    db $EB                                        ; $4AD1: $EB
    ld e, b                                       ; $4AD2: $58
    ld a, d                                       ; $4AD3: $7A
    db $E3                                        ; $4AD4: $E3
    ld l, l                                       ; $4AD5: $6D
    ld a, h                                       ; $4AD6: $7C
    cp h                                          ; $4AD7: $BC
    ld c, [hl]                                    ; $4AD8: $4E
    ld a, h                                       ; $4AD9: $7C
    or h                                          ; $4ADA: $B4
    ld l, h                                       ; $4ADB: $6C
    ld a, e                                       ; $4ADC: $7B
    cp h                                          ; $4ADD: $BC
    ld h, l                                       ; $4ADE: $65
    ld h, e                                       ; $4ADF: $63
    ld d, a                                       ; $4AE0: $57
    ld c, [hl]                                    ; $4AE1: $4E
    ld [hl], c                                    ; $4AE2: $71
    ld l, d                                       ; $4AE3: $6A
    ld h, [hl]                                    ; $4AE4: $66
    ld a, c                                       ; $4AE5: $79
    inc a                                         ; $4AE6: $3C
    ld b, a                                       ; $4AE7: $47
    ld a, h                                       ; $4AE8: $7C
    ld a, a                                       ; $4AE9: $7F
    ld h, d                                       ; $4AEA: $62
    ld a, h                                       ; $4AEB: $7C
    ld [hl], h                                    ; $4AEC: $74
    ld d, a                                       ; $4AED: $57
    ld h, d                                       ; $4AEE: $62
    ld [$514B], a                                 ; $4AEF: $EA $4B $51
    ld c, $7B                                     ; $4AF2: $0E $7B
    ld h, h                                       ; $4AF4: $64
    inc a                                         ; $4AF5: $3C
    ld b, a                                       ; $4AF6: $47
    ld a, h                                       ; $4AF7: $7C
    ld a, a                                       ; $4AF8: $7F
    ld h, d                                       ; $4AF9: $62
    ld a, h                                       ; $4AFA: $7C
    ld [hl], h                                    ; $4AFB: $74
    ld d, a                                       ; $4AFC: $57
    ld h, d                                       ; $4AFD: $62
    ld b, d                                       ; $4AFE: $42
    ld d, e                                       ; $4AFF: $53
    ld d, d                                       ; $4B00: $52
    adc b                                         ; $4B01: $88
    ld e, l                                       ; $4B02: $5D
    ld l, d                                       ; $4B03: $6A
    inc a                                         ; $4B04: $3C
    ld b, a                                       ; $4B05: $47
    ld a, h                                       ; $4B06: $7C
    ld a, a                                       ; $4B07: $7F
    ld h, d                                       ; $4B08: $62
    ld a, h                                       ; $4B09: $7C
    ld [hl], h                                    ; $4B0A: $74
    ld d, a                                       ; $4B0B: $57
    ld h, d                                       ; $4B0C: $62
    or c                                          ; $4B0D: $B1
    ld [hl], l                                    ; $4B0E: $75
    ld [hl], d                                    ; $4B0F: $72
    db $EC                                        ; $4B10: $EC
    ld h, l                                       ; $4B11: $65
    ld a, b                                       ; $4B12: $78
    inc a                                         ; $4B13: $3C
    ld b, a                                       ; $4B14: $47
    ld a, h                                       ; $4B15: $7C
    ld a, a                                       ; $4B16: $7F
    ld h, d                                       ; $4B17: $62
    ld a, h                                       ; $4B18: $7C
    ld [hl], h                                    ; $4B19: $74
    ld d, a                                       ; $4B1A: $57
    ld h, d                                       ; $4B1B: $62
    add hl, de                                    ; $4B1C: $19
    ld l, d                                       ; $4B1D: $6A
    ld [hl], e                                    ; $4B1E: $73
    ld e, e                                       ; $4B1F: $5B
    ld e, e                                       ; $4B20: $5B
    ld a, c                                       ; $4B21: $79
    inc a                                         ; $4B22: $3C
    ld b, a                                       ; $4B23: $47
    ld a, h                                       ; $4B24: $7C
    ld a, a                                       ; $4B25: $7F
    ld h, d                                       ; $4B26: $62
    ld a, h                                       ; $4B27: $7C
    ld [hl], h                                    ; $4B28: $74
    ld d, a                                       ; $4B29: $57
    ld h, d                                       ; $4B2A: $62
    add hl, de                                    ; $4B2B: $19
    ld l, d                                       ; $4B2C: $6A
    ld [hl], e                                    ; $4B2D: $73
    ld e, e                                       ; $4B2E: $5B
    ld e, e                                       ; $4B2F: $5B
    ld a, c                                       ; $4B30: $79
    ld a, h                                       ; $4B31: $7C
    ld c, b                                       ; $4B32: $48
    ld a, h                                       ; $4B33: $7C
    ld c, b                                       ; $4B34: $48
    ld l, h                                       ; $4B35: $6C
    ld a, h                                       ; $4B36: $7C
    ld e, l                                       ; $4B37: $5D
    ld b, [hl]                                    ; $4B38: $46
    ld h, a                                       ; $4B39: $67
    and a                                         ; $4B3A: $A7
    ld h, e                                       ; $4B3B: $63
    ld a, b                                       ; $4B3C: $78
    or c                                          ; $4B3D: $B1
    ld b, c                                       ; $4B3E: $41
    ld a, h                                       ; $4B3F: $7C
    inc a                                         ; $4B40: $3C
    ld c, c                                       ; $4B41: $49
    ld a, h                                       ; $4B42: $7C
    ld a, h                                       ; $4B43: $7C
    ld l, b                                       ; $4B44: $68
    ld a, h                                       ; $4B45: $7C
    cp [hl]                                       ; $4B46: $BE
    ld [hl], b                                    ; $4B47: $70
    ld l, c                                       ; $4B48: $69
    or h                                          ; $4B49: $B4
    ld a, d                                       ; $4B4A: $7A
    ld [hl], c                                    ; $4B4B: $71
    xor l                                         ; $4B4C: $AD
    ld c, b                                       ; $4B4D: $48
    ld a, d                                       ; $4B4E: $7A
    inc a                                         ; $4B4F: $3C
    ld c, c                                       ; $4B50: $49
    ld a, h                                       ; $4B51: $7C
    ld a, h                                       ; $4B52: $7C
    ld l, b                                       ; $4B53: $68
    ld a, h                                       ; $4B54: $7C
    cp [hl]                                       ; $4B55: $BE
    ld [hl], b                                    ; $4B56: $70
    ld l, c                                       ; $4B57: $69
    dec e                                         ; $4B58: $1D
    ld e, d                                       ; $4B59: $5A
    ld [hl], e                                    ; $4B5A: $73
    add hl, bc                                    ; $4B5B: $09
    ld e, b                                       ; $4B5C: $58
    ld a, e                                       ; $4B5D: $7B
    inc a                                         ; $4B5E: $3C
    ld c, c                                       ; $4B5F: $49
    ld a, h                                       ; $4B60: $7C
    ld a, h                                       ; $4B61: $7C
    ld l, b                                       ; $4B62: $68
    ld a, h                                       ; $4B63: $7C
    cp [hl]                                       ; $4B64: $BE
    ld [hl], b                                    ; $4B65: $70
    ld l, c                                       ; $4B66: $69
    or $5D                                        ; $4B67: $F6 $5D
    ld a, b                                       ; $4B69: $78
    ld [hl], c                                    ; $4B6A: $71
    ld b, l                                       ; $4B6B: $45
    ld a, h                                       ; $4B6C: $7C
    inc a                                         ; $4B6D: $3C
    ld c, c                                       ; $4B6E: $49
    ld a, h                                       ; $4B6F: $7C
    ld a, h                                       ; $4B70: $7C
    ld l, b                                       ; $4B71: $68
    ld a, h                                       ; $4B72: $7C
    cp [hl]                                       ; $4B73: $BE
    ld [hl], b                                    ; $4B74: $70
    ld l, c                                       ; $4B75: $69
    or c                                          ; $4B76: $B1
    ld d, h                                       ; $4B77: $54
    ld h, [hl]                                    ; $4B78: $66
    nop                                           ; $4B79: $00
    ld b, b                                       ; $4B7A: $40
    ld [hl], e                                    ; $4B7B: $73
    inc a                                         ; $4B7C: $3C
    ld c, c                                       ; $4B7D: $49
    ld a, h                                       ; $4B7E: $7C
    ld a, h                                       ; $4B7F: $7C
    ld l, b                                       ; $4B80: $68
    ld a, h                                       ; $4B81: $7C
    cp [hl]                                       ; $4B82: $BE
    ld [hl], b                                    ; $4B83: $70
    ld l, c                                       ; $4B84: $69
    add h                                         ; $4B85: $84
    ld h, d                                       ; $4B86: $62
    ld a, b                                       ; $4B87: $78
    db $EB                                        ; $4B88: $EB
    ld b, h                                       ; $4B89: $44
    ld a, h                                       ; $4B8A: $7C
    db $FC                                        ; $4B8B: $FC
    ld b, a                                       ; $4B8C: $47
    ld a, h                                       ; $4B8D: $7C
    call nc, Call_04F_697F                        ; $4B8E: $D4 $7F $69
    jr nc, jr_04F_4BF9                            ; $4B91: $30 $66

    ld l, c                                       ; $4B93: $69
    inc b                                         ; $4B94: $04
    ld a, h                                       ; $4B95: $7C
    ld a, c                                       ; $4B96: $79
    sub a                                         ; $4B97: $97
    ld h, l                                       ; $4B98: $65
    ld a, h                                       ; $4B99: $7C
    ld a, h                                       ; $4B9A: $7C
    ld c, [hl]                                    ; $4B9B: $4E
    ld a, h                                       ; $4B9C: $7C
    ld h, e                                       ; $4B9D: $63
    ld h, h                                       ; $4B9E: $64
    ld a, h                                       ; $4B9F: $7C
    di                                            ; $4BA0: $F3
    ld d, c                                       ; $4BA1: $51
    ld l, b                                       ; $4BA2: $68
    db $EB                                        ; $4BA3: $EB
    ld c, e                                       ; $4BA4: $4B
    halt                                          ; $4BA5: $76
    ld h, h                                       ; $4BA6: $64
    ld [hl], b                                    ; $4BA7: $70
    ld a, d                                       ; $4BA8: $7A
    ld a, h                                       ; $4BA9: $7C
    ld c, [hl]                                    ; $4BAA: $4E
    ld a, h                                       ; $4BAB: $7C
    ld h, e                                       ; $4BAC: $63
    ld h, h                                       ; $4BAD: $64
    ld a, h                                       ; $4BAE: $7C
    di                                            ; $4BAF: $F3
    ld d, c                                       ; $4BB0: $51
    ld l, b                                       ; $4BB1: $68
    dec bc                                        ; $4BB2: $0B
    ld d, a                                       ; $4BB3: $57
    ld a, b                                       ; $4BB4: $78
    add e                                         ; $4BB5: $83
    ld d, l                                       ; $4BB6: $55
    ld a, e                                       ; $4BB7: $7B
    db $FC                                        ; $4BB8: $FC
    ld c, a                                       ; $4BB9: $4F
    ld a, h                                       ; $4BBA: $7C
    adc a                                         ; $4BBB: $8F
    ld h, h                                       ; $4BBC: $64
    ld a, h                                       ; $4BBD: $7C
    nop                                           ; $4BBE: $00
    ld b, b                                       ; $4BBF: $40
    ld h, h                                       ; $4BC0: $64
    rst $28                                       ; $4BC1: $EF
    ld d, e                                       ; $4BC2: $53
    ld l, l                                       ; $4BC3: $6D
    ld [$7650], a                                 ; $4BC4: $EA $50 $76
    db $FC                                        ; $4BC7: $FC
    ld c, a                                       ; $4BC8: $4F
    ld a, h                                       ; $4BC9: $7C
    adc a                                         ; $4BCA: $8F
    ld h, h                                       ; $4BCB: $64
    ld a, h                                       ; $4BCC: $7C
    nop                                           ; $4BCD: $00
    ld b, b                                       ; $4BCE: $40
    ld h, h                                       ; $4BCF: $64
    ld d, b                                       ; $4BD0: $50
    ld [hl], l                                    ; $4BD1: $75
    ld [hl], h                                    ; $4BD2: $74
    rra                                           ; $4BD3: $1F
    ld c, h                                       ; $4BD4: $4C
    ld a, e                                       ; $4BD5: $7B
    db $FC                                        ; $4BD6: $FC
    ld c, a                                       ; $4BD7: $4F
    ld a, h                                       ; $4BD8: $7C
    adc a                                         ; $4BD9: $8F
    ld h, h                                       ; $4BDA: $64
    ld a, h                                       ; $4BDB: $7C
    nop                                           ; $4BDC: $00
    ld b, b                                       ; $4BDD: $40
    ld h, h                                       ; $4BDE: $64
    nop                                           ; $4BDF: $00
    ld b, b                                       ; $4BE0: $40
    halt                                          ; $4BE1: $76
    ld b, l                                       ; $4BE2: $45
    ld c, l                                       ; $4BE3: $4D
    ld a, d                                       ; $4BE4: $7A
    db $FC                                        ; $4BE5: $FC
    ld c, a                                       ; $4BE6: $4F
    ld a, h                                       ; $4BE7: $7C
    adc a                                         ; $4BE8: $8F
    ld h, h                                       ; $4BE9: $64
    ld a, h                                       ; $4BEA: $7C
    nop                                           ; $4BEB: $00
    ld b, b                                       ; $4BEC: $40
    ld h, h                                       ; $4BED: $64
    ld a, d                                       ; $4BEE: $7A
    ld b, [hl]                                    ; $4BEF: $46
    ld [hl], h                                    ; $4BF0: $74
    ld hl, sp+$66                                 ; $4BF1: $F8 $66
    ld a, d                                       ; $4BF3: $7A
    ld a, h                                       ; $4BF4: $7C
    ld c, [hl]                                    ; $4BF5: $4E
    ld a, h                                       ; $4BF6: $7C
    ld h, e                                       ; $4BF7: $63
    ld h, h                                       ; $4BF8: $64

jr_04F_4BF9:
    ld a, h                                       ; $4BF9: $7C
    di                                            ; $4BFA: $F3
    ld d, c                                       ; $4BFB: $51
    ld l, b                                       ; $4BFC: $68
    nop                                           ; $4BFD: $00
    ld b, b                                       ; $4BFE: $40
    ld a, c                                       ; $4BFF: $79
    rra                                           ; $4C00: $1F
    ld a, b                                       ; $4C01: $78
    ld a, e                                       ; $4C02: $7B
    ld a, h                                       ; $4C03: $7C
    ld c, [hl]                                    ; $4C04: $4E
    ld a, h                                       ; $4C05: $7C
    ld h, e                                       ; $4C06: $63
    ld h, h                                       ; $4C07: $64
    ld a, h                                       ; $4C08: $7C
    di                                            ; $4C09: $F3
    ld d, c                                       ; $4C0A: $51
    ld l, b                                       ; $4C0B: $68
    add h                                         ; $4C0C: $84
    ld e, d                                       ; $4C0D: $5A
    ld a, b                                       ; $4C0E: $78
    ld a, a                                       ; $4C0F: $7F
    ld d, h                                       ; $4C10: $54
    ld a, e                                       ; $4C11: $7B
    ld a, h                                       ; $4C12: $7C
    ld c, [hl]                                    ; $4C13: $4E
    ld a, h                                       ; $4C14: $7C
    ld h, e                                       ; $4C15: $63
    ld h, h                                       ; $4C16: $64
    ld a, h                                       ; $4C17: $7C
    di                                            ; $4C18: $F3
    ld d, c                                       ; $4C19: $51
    ld l, b                                       ; $4C1A: $68
    jr c, jr_04F_4C75                             ; $4C1B: $38 $58

    ld a, d                                       ; $4C1D: $7A
    sub a                                         ; $4C1E: $97
    ld b, e                                       ; $4C1F: $43
    ld a, h                                       ; $4C20: $7C
    ld a, h                                       ; $4C21: $7C
    ld c, [hl]                                    ; $4C22: $4E
    ld a, h                                       ; $4C23: $7C
    ld h, e                                       ; $4C24: $63
    ld h, h                                       ; $4C25: $64
    ld a, h                                       ; $4C26: $7C
    di                                            ; $4C27: $F3
    ld d, c                                       ; $4C28: $51
    ld l, b                                       ; $4C29: $68
    ld e, b                                       ; $4C2A: $58
    ld h, h                                       ; $4C2B: $64
    ld [hl], d                                    ; $4C2C: $72
    ld h, e                                       ; $4C2D: $63
    ld l, d                                       ; $4C2E: $6A
    ld a, b                                       ; $4C2F: $78
    ld a, h                                       ; $4C30: $7C
    ld c, [hl]                                    ; $4C31: $4E
    ld a, h                                       ; $4C32: $7C
    ld h, e                                       ; $4C33: $63
    ld h, h                                       ; $4C34: $64
    ld a, h                                       ; $4C35: $7C
    di                                            ; $4C36: $F3
    ld d, c                                       ; $4C37: $51
    ld l, b                                       ; $4C38: $68
    adc b                                         ; $4C39: $88
    ld c, a                                       ; $4C3A: $4F
    ld a, d                                       ; $4C3B: $7A
    add sp, $60                                   ; $4C3C: $E8 $60
    ld a, h                                       ; $4C3E: $7C
    ld a, h                                       ; $4C3F: $7C
    ld c, [hl]                                    ; $4C40: $4E
    ld a, h                                       ; $4C41: $7C
    ld h, e                                       ; $4C42: $63
    ld h, h                                       ; $4C43: $64
    ld a, h                                       ; $4C44: $7C
    di                                            ; $4C45: $F3
    ld d, c                                       ; $4C46: $51
    ld l, b                                       ; $4C47: $68
    ld h, [hl]                                    ; $4C48: $66
    ld [hl], a                                    ; $4C49: $77
    ld a, b                                       ; $4C4A: $78
    ld bc, $7B68                                  ; $4C4B: $01 $68 $7B
    db $FC                                        ; $4C4E: $FC
    ld c, l                                       ; $4C4F: $4D
    ld a, h                                       ; $4C50: $7C
    ld h, [hl]                                    ; $4C51: $66
    ld l, h                                       ; $4C52: $6C
    ld a, h                                       ; $4C53: $7C
    inc d                                         ; $4C54: $14
    ld b, e                                       ; $4C55: $43
    ld [hl], b                                    ; $4C56: $70
    ld a, $46                                     ; $4C57: $3E $46
    ld a, b                                       ; $4C59: $78
    db $FC                                        ; $4C5A: $FC
    ld l, c                                       ; $4C5B: $69
    ld a, c                                       ; $4C5C: $79
    ld a, h                                       ; $4C5D: $7C
    ld c, [hl]                                    ; $4C5E: $4E
    ld a, h                                       ; $4C5F: $7C
    ld h, e                                       ; $4C60: $63
    ld h, h                                       ; $4C61: $64
    ld a, h                                       ; $4C62: $7C
    di                                            ; $4C63: $F3
    ld d, c                                       ; $4C64: $51
    ld l, b                                       ; $4C65: $68
    ld h, b                                       ; $4C66: $60
    ld l, [hl]                                    ; $4C67: $6E
    ld a, c                                       ; $4C68: $79
    cp e                                          ; $4C69: $BB
    ld b, [hl]                                    ; $4C6A: $46
    ld a, h                                       ; $4C6B: $7C
    ld a, h                                       ; $4C6C: $7C
    ld c, [hl]                                    ; $4C6D: $4E
    ld a, h                                       ; $4C6E: $7C
    ld h, e                                       ; $4C6F: $63
    ld h, h                                       ; $4C70: $64
    ld a, h                                       ; $4C71: $7C
    di                                            ; $4C72: $F3
    ld d, c                                       ; $4C73: $51
    ld l, b                                       ; $4C74: $68

jr_04F_4C75:
    adc b                                         ; $4C75: $88
    ld e, b                                       ; $4C76: $58
    ld a, c                                       ; $4C77: $79
    inc hl                                        ; $4C78: $23
    ld b, c                                       ; $4C79: $41
    ld a, h                                       ; $4C7A: $7C
    ld a, h                                       ; $4C7B: $7C
    ld c, [hl]                                    ; $4C7C: $4E
    ld a, h                                       ; $4C7D: $7C
    ld h, e                                       ; $4C7E: $63
    ld h, h                                       ; $4C7F: $64
    ld a, h                                       ; $4C80: $7C
    di                                            ; $4C81: $F3
    ld d, c                                       ; $4C82: $51
    ld l, b                                       ; $4C83: $68
    ld [$7943], sp                                ; $4C84: $08 $43 $79
    or b                                          ; $4C87: $B0
    halt                                          ; $4C88: $76
    ld a, e                                       ; $4C89: $7B
    db $FC                                        ; $4C8A: $FC
    ld c, l                                       ; $4C8B: $4D
    ld a, h                                       ; $4C8C: $7C
    ld h, [hl]                                    ; $4C8D: $66
    ld l, h                                       ; $4C8E: $6C
    ld a, h                                       ; $4C8F: $7C
    inc d                                         ; $4C90: $14
    ld b, e                                       ; $4C91: $43
    ld [hl], b                                    ; $4C92: $70
    rra                                           ; $4C93: $1F
    ld a, e                                       ; $4C94: $7B
    ld [hl], h                                    ; $4C95: $74
    ld bc, $7A5B                                  ; $4C96: $01 $5B $7A
    ld a, h                                       ; $4C99: $7C
    ld c, [hl]                                    ; $4C9A: $4E
    ld a, h                                       ; $4C9B: $7C
    ld h, e                                       ; $4C9C: $63
    ld h, h                                       ; $4C9D: $64
    ld a, h                                       ; $4C9E: $7C
    di                                            ; $4C9F: $F3
    ld d, c                                       ; $4CA0: $51
    ld l, b                                       ; $4CA1: $68
    dec a                                         ; $4CA2: $3D
    ld [hl], d                                    ; $4CA3: $72
    ld a, d                                       ; $4CA4: $7A
    dec e                                         ; $4CA5: $1D
    ld e, [hl]                                    ; $4CA6: $5E
    ld a, h                                       ; $4CA7: $7C

    db $7C, $50, $7C, $DE, $6C, $7C, $23, $46, $70, $FD, $53, $7B, $C5, $69, $7C

    ld a, h                                       ; $4CB7: $7C
    ld c, [hl]                                    ; $4CB8: $4E
    ld a, h                                       ; $4CB9: $7C
    ld h, e                                       ; $4CBA: $63
    ld h, h                                       ; $4CBB: $64
    ld a, h                                       ; $4CBC: $7C
    di                                            ; $4CBD: $F3
    ld d, c                                       ; $4CBE: $51
    ld l, b                                       ; $4CBF: $68
    cp e                                          ; $4CC0: $BB
    ld d, h                                       ; $4CC1: $54
    ld a, c                                       ; $4CC2: $79
    xor [hl]                                      ; $4CC3: $AE
    ld a, a                                       ; $4CC4: $7F
    halt                                          ; $4CC5: $76
    ld a, h                                       ; $4CC6: $7C
    ld c, [hl]                                    ; $4CC7: $4E
    ld a, h                                       ; $4CC8: $7C
    ld h, e                                       ; $4CC9: $63
    ld h, h                                       ; $4CCA: $64
    ld a, h                                       ; $4CCB: $7C
    di                                            ; $4CCC: $F3
    ld d, c                                       ; $4CCD: $51
    ld l, b                                       ; $4CCE: $68
    sbc [hl]                                      ; $4CCF: $9E
    ld e, c                                       ; $4CD0: $59
    ld a, d                                       ; $4CD1: $7A
    add h                                         ; $4CD2: $84
    ld b, d                                       ; $4CD3: $42
    ld a, h                                       ; $4CD4: $7C

    db $BC, $4F, $7C, $0D, $68, $7C, $10, $53, $67, $2F, $79, $7B, $BF, $66, $7C, $BC
    db $4F, $7C, $0D, $68, $7C, $10, $53, $67, $45, $75, $73, $19, $69, $79, $BC, $4F
    db $7C, $0D, $68, $7C, $10, $53, $67, $94, $54, $6C, $F1, $69, $75, $BC, $4F, $7C
    db $0D, $68, $7C, $10, $53, $67, $2A, $74, $6F, $3E, $60, $78

    ld a, h                                       ; $4D11: $7C
    ld d, h                                       ; $4D12: $54
    ld a, h                                       ; $4D13: $7C
    rst $18                                       ; $4D14: $DF
    ld h, e                                       ; $4D15: $63
    ld a, h                                       ; $4D16: $7C
    rst $18                                       ; $4D17: $DF
    ld c, [hl]                                    ; $4D18: $4E
    ld h, h                                       ; $4D19: $64
    ei                                            ; $4D1A: $FB
    ld d, e                                       ; $4D1B: $53
    ld l, d                                       ; $4D1C: $6A
    ld [hl], h                                    ; $4D1D: $74
    ld e, a                                       ; $4D1E: $5F
    ld [hl], a                                    ; $4D1F: $77
    inc a                                         ; $4D20: $3C
    ld c, b                                       ; $4D21: $48
    ld a, h                                       ; $4D22: $7C
    ld [hl], b                                    ; $4D23: $70
    ld e, e                                       ; $4D24: $5B
    ld a, h                                       ; $4D25: $7C
    ld h, d                                       ; $4D26: $62
    ld a, d                                       ; $4D27: $7A
    ld d, c                                       ; $4D28: $51
    ret                                           ; $4D29: $C9


    ld [hl], l                                    ; $4D2A: $75
    ld l, c                                       ; $4D2B: $69
    and [hl]                                      ; $4D2C: $A6
    ld a, b                                       ; $4D2D: $78
    ld [hl], a                                    ; $4D2E: $77
    cp h                                          ; $4D2F: $BC
    ld c, d                                       ; $4D30: $4A
    ld a, h                                       ; $4D31: $7C
    ld d, h                                       ; $4D32: $54
    ld h, a                                       ; $4D33: $67
    ld a, h                                       ; $4D34: $7C
    db $FD                                        ; $4D35: $FD
    ld c, e                                       ; $4D36: $4B
    ld l, b                                       ; $4D37: $68
    push hl                                       ; $4D38: $E5
    ld [hl], l                                    ; $4D39: $75
    ld a, d                                       ; $4D3A: $7A
    add sp, $7A                                   ; $4D3B: $E8 $7A
    ld a, e                                       ; $4D3D: $7B
    inc a                                         ; $4D3E: $3C
    ld d, l                                       ; $4D3F: $55
    ld a, h                                       ; $4D40: $7C
    adc c                                         ; $4D41: $89
    ld e, a                                       ; $4D42: $5F
    ld a, h                                       ; $4D43: $7C
    ld l, e                                       ; $4D44: $6B
    ld l, h                                       ; $4D45: $6C
    ld h, h                                       ; $4D46: $64
    inc h                                         ; $4D47: $24
    ld l, l                                       ; $4D48: $6D
    ld [hl], c                                    ; $4D49: $71
    ld a, l                                       ; $4D4A: $7D
    ld a, d                                       ; $4D4B: $7A
    ld a, b                                       ; $4D4C: $78
    ld a, h                                       ; $4D4D: $7C
    ld d, l                                       ; $4D4E: $55
    ld a, h                                       ; $4D4F: $7C
    adc c                                         ; $4D50: $89
    ld e, a                                       ; $4D51: $5F
    ld a, h                                       ; $4D52: $7C
    ld l, e                                       ; $4D53: $6B
    ld l, h                                       ; $4D54: $6C
    ld h, h                                       ; $4D55: $64
    jp c, Jump_04F_676B                           ; $4D56: $DA $6B $67

    rlca                                          ; $4D59: $07
    ld d, l                                       ; $4D5A: $55
    ld [hl], d                                    ; $4D5B: $72
    inc a                                         ; $4D5C: $3C
    ld d, l                                       ; $4D5D: $55
    ld a, h                                       ; $4D5E: $7C
    adc c                                         ; $4D5F: $89
    ld e, a                                       ; $4D60: $5F
    ld a, h                                       ; $4D61: $7C
    ld l, e                                       ; $4D62: $6B
    ld l, h                                       ; $4D63: $6C
    ld h, h                                       ; $4D64: $64
    ld b, e                                       ; $4D65: $43
    ld c, a                                       ; $4D66: $4F
    ld [hl], b                                    ; $4D67: $70
    ld e, e                                       ; $4D68: $5B
    ld b, a                                       ; $4D69: $47
    ld [hl], a                                    ; $4D6A: $77
    cp h                                          ; $4D6B: $BC
    ld d, b                                       ; $4D6C: $50
    ld a, h                                       ; $4D6D: $7C
    or e                                          ; $4D6E: $B3
    ld h, e                                       ; $4D6F: $63
    ld a, h                                       ; $4D70: $7C
    inc [hl]                                      ; $4D71: $34
    ld l, l                                       ; $4D72: $6D
    ld h, e                                       ; $4D73: $63
    ld sp, hl                                     ; $4D74: $F9
    ld e, a                                       ; $4D75: $5F
    ld l, [hl]                                    ; $4D76: $6E
    add hl, bc                                    ; $4D77: $09
    ld c, d                                       ; $4D78: $4A
    ld a, c                                       ; $4D79: $79
    inc a                                         ; $4D7A: $3C
    ld d, e                                       ; $4D7B: $53
    ld a, h                                       ; $4D7C: $7C
    add a                                         ; $4D7D: $87
    ld h, e                                       ; $4D7E: $63
    ld a, h                                       ; $4D7F: $7C
    jp Jump_04F_6356                              ; $4D80: $C3 $56 $63


    add d                                         ; $4D83: $82
    ld h, e                                       ; $4D84: $63
    ld l, e                                       ; $4D85: $6B
    db $10                                        ; $4D86: $10
    ld a, [hl]                                    ; $4D87: $7E
    ld [hl], e                                    ; $4D88: $73
    cp h                                          ; $4D89: $BC
    ld c, d                                       ; $4D8A: $4A
    ld a, h                                       ; $4D8B: $7C
    ld d, h                                       ; $4D8C: $54
    ld h, a                                       ; $4D8D: $67
    ld a, h                                       ; $4D8E: $7C
    db $FD                                        ; $4D8F: $FD
    ld c, e                                       ; $4D90: $4B
    ld l, b                                       ; $4D91: $68
    sub [hl]                                      ; $4D92: $96
    ld c, e                                       ; $4D93: $4B
    ld a, e                                       ; $4D94: $7B
    cp h                                          ; $4D95: $BC
    ld e, d                                       ; $4D96: $5A
    ld a, h                                       ; $4D97: $7C
    inc a                                         ; $4D98: $3C
    ld d, l                                       ; $4D99: $55
    ld a, h                                       ; $4D9A: $7C
    adc c                                         ; $4D9B: $89
    ld e, a                                       ; $4D9C: $5F
    ld a, h                                       ; $4D9D: $7C
    ld l, e                                       ; $4D9E: $6B
    ld l, h                                       ; $4D9F: $6C
    ld h, h                                       ; $4DA0: $64
    jr nc, jr_04F_4E07                            ; $4DA1: $30 $64

    ld l, a                                       ; $4DA3: $6F
    ld a, a                                       ; $4DA4: $7F
    ld e, b                                       ; $4DA5: $58
    ld [hl], a                                    ; $4DA6: $77
    ld a, h                                       ; $4DA7: $7C
    ld d, l                                       ; $4DA8: $55
    ld a, h                                       ; $4DA9: $7C
    adc c                                         ; $4DAA: $89
    ld e, a                                       ; $4DAB: $5F
    ld a, h                                       ; $4DAC: $7C
    dec bc                                        ; $4DAD: $0B
    ld h, l                                       ; $4DAE: $65
    ld h, h                                       ; $4DAF: $64
    dec d                                         ; $4DB0: $15
    ld c, e                                       ; $4DB1: $4B
    ld l, [hl]                                    ; $4DB2: $6E
    db $D3                                        ; $4DB3: $D3
    ld d, d                                       ; $4DB4: $52
    ld [hl], a                                    ; $4DB5: $77
    ld a, h                                       ; $4DB6: $7C
    ld d, e                                       ; $4DB7: $53
    ld a, h                                       ; $4DB8: $7C
    ld e, e                                       ; $4DB9: $5B
    ld h, e                                       ; $4DBA: $63
    ld a, h                                       ; $4DBB: $7C
    ld d, $75                                     ; $4DBC: $16 $75
    ld l, d                                       ; $4DBE: $6A
    xor b                                         ; $4DBF: $A8
    ld b, [hl]                                    ; $4DC0: $46
    ld l, a                                       ; $4DC1: $6F
    adc e                                         ; $4DC2: $8B
    ld l, a                                       ; $4DC3: $6F
    ld [hl], a                                    ; $4DC4: $77
    cp h                                          ; $4DC5: $BC
    ld d, h                                       ; $4DC6: $54
    ld a, h                                       ; $4DC7: $7C
    adc c                                         ; $4DC8: $89
    ld e, a                                       ; $4DC9: $5F
    ld a, h                                       ; $4DCA: $7C
    ld l, e                                       ; $4DCB: $6B
    ld l, h                                       ; $4DCC: $6C
    ld h, h                                       ; $4DCD: $64
    ei                                            ; $4DCE: $FB
    ld d, c                                       ; $4DCF: $51
    ld l, e                                       ; $4DD0: $6B
    add hl, hl                                    ; $4DD1: $29
    ld h, c                                       ; $4DD2: $61
    ld [hl], l                                    ; $4DD3: $75
    ld a, h                                       ; $4DD4: $7C
    ld c, h                                       ; $4DD5: $4C
    ld a, h                                       ; $4DD6: $7C
    ld [hl-], a                                   ; $4DD7: $32
    ld l, b                                       ; $4DD8: $68
    ld a, h                                       ; $4DD9: $7C
    ld b, b                                       ; $4DDA: $40
    ld e, [hl]                                    ; $4DDB: $5E
    ld h, e                                       ; $4DDC: $63
    add hl, bc                                    ; $4DDD: $09
    ld l, a                                       ; $4DDE: $6F
    ld d, c                                       ; $4DDF: $51
    ld l, $42                                     ; $4DE0: $2E $42
    ld [hl], h                                    ; $4DE2: $74
    inc a                                         ; $4DE3: $3C
    ld c, h                                       ; $4DE4: $4C
    ld a, h                                       ; $4DE5: $7C
    ld [hl-], a                                   ; $4DE6: $32
    ld l, b                                       ; $4DE7: $68
    ld a, h                                       ; $4DE8: $7C
    ld b, b                                       ; $4DE9: $40
    ld e, [hl]                                    ; $4DEA: $5E
    ld h, e                                       ; $4DEB: $63
    add hl, bc                                    ; $4DEC: $09
    ld l, a                                       ; $4DED: $6F
    ld d, c                                       ; $4DEE: $51
    ld l, $42                                     ; $4DEF: $2E $42
    ld [hl], h                                    ; $4DF1: $74
    cp h                                          ; $4DF2: $BC
    ld c, e                                       ; $4DF3: $4B
    ld a, h                                       ; $4DF4: $7C
    ld a, [bc]                                    ; $4DF5: $0A
    ld h, a                                       ; $4DF6: $67
    ld a, h                                       ; $4DF7: $7C
    jp c, Jump_04F_536B                           ; $4DF8: $DA $6B $53

    ld b, b                                       ; $4DFB: $40
    ld d, h                                       ; $4DFC: $54
    ld [hl], a                                    ; $4DFD: $77
    ld [hl+], a                                   ; $4DFE: $22
    ld b, c                                       ; $4DFF: $41
    ld a, e                                       ; $4E00: $7B
    cp h                                          ; $4E01: $BC
    ld c, e                                       ; $4E02: $4B
    ld a, h                                       ; $4E03: $7C
    ld a, [bc]                                    ; $4E04: $0A
    ld h, a                                       ; $4E05: $67
    ld a, h                                       ; $4E06: $7C

jr_04F_4E07:
    jp c, Jump_04F_536B                           ; $4E07: $DA $6B $53

    ld e, b                                       ; $4E0A: $58
    ld h, a                                       ; $4E0B: $67
    halt                                          ; $4E0C: $76
    or c                                          ; $4E0D: $B1
    ld e, e                                       ; $4E0E: $5B
    ld a, d                                       ; $4E0F: $7A
    cp h                                          ; $4E10: $BC
    ld c, e                                       ; $4E11: $4B
    ld a, h                                       ; $4E12: $7C
    ld a, [bc]                                    ; $4E13: $0A
    ld h, a                                       ; $4E14: $67
    ld a, h                                       ; $4E15: $7C
    jp c, Jump_04F_536B                           ; $4E16: $DA $6B $53

    jp nz, Jump_04F_7774                          ; $4E19: $C2 $74 $77

    add d                                         ; $4E1C: $82
    ld c, d                                       ; $4E1D: $4A
    ld a, e                                       ; $4E1E: $7B
    ld a, h                                       ; $4E1F: $7C
    ld e, c                                       ; $4E20: $59
    ld a, h                                       ; $4E21: $7C
    inc bc                                        ; $4E22: $03
    ld h, e                                       ; $4E23: $63
    ld a, h                                       ; $4E24: $7C
    dec a                                         ; $4E25: $3D
    ld e, a                                       ; $4E26: $5F
    ld h, d                                       ; $4E27: $62
    ld [de], a                                    ; $4E28: $12
    ld e, c                                       ; $4E29: $59
    ld l, [hl]                                    ; $4E2A: $6E
    db $EC                                        ; $4E2B: $EC
    ld c, c                                       ; $4E2C: $49
    ld a, b                                       ; $4E2D: $78
    ld a, h                                       ; $4E2E: $7C
    ld e, c                                       ; $4E2F: $59
    ld a, h                                       ; $4E30: $7C
    inc bc                                        ; $4E31: $03
    ld h, e                                       ; $4E32: $63
    ld a, h                                       ; $4E33: $7C
    dec a                                         ; $4E34: $3D
    ld e, a                                       ; $4E35: $5F
    ld h, d                                       ; $4E36: $62
    ld a, c                                       ; $4E37: $79
    ld c, c                                       ; $4E38: $49
    ld [hl], l                                    ; $4E39: $75
    ld [bc], a                                    ; $4E3A: $02
    ld [hl], c                                    ; $4E3B: $71
    ld a, d                                       ; $4E3C: $7A
    ld a, h                                       ; $4E3D: $7C
    ld e, c                                       ; $4E3E: $59
    ld a, h                                       ; $4E3F: $7C
    inc bc                                        ; $4E40: $03
    ld h, e                                       ; $4E41: $63
    ld a, h                                       ; $4E42: $7C
    dec a                                         ; $4E43: $3D
    ld e, a                                       ; $4E44: $5F
    ld h, d                                       ; $4E45: $62
    add sp, $57                                   ; $4E46: $E8 $57
    ld l, b                                       ; $4E48: $68
    nop                                           ; $4E49: $00
    ld h, c                                       ; $4E4A: $61
    ld [hl], e                                    ; $4E4B: $73
    ld a, h                                       ; $4E4C: $7C
    ld e, c                                       ; $4E4D: $59
    ld a, h                                       ; $4E4E: $7C
    inc bc                                        ; $4E4F: $03
    ld h, e                                       ; $4E50: $63
    ld a, h                                       ; $4E51: $7C
    dec a                                         ; $4E52: $3D
    ld e, a                                       ; $4E53: $5F
    ld h, d                                       ; $4E54: $62
    and [hl]                                      ; $4E55: $A6
    ld c, a                                       ; $4E56: $4F
    ld h, d                                       ; $4E57: $62
    ld a, $4C                                     ; $4E58: $3E $4C
    ld [hl], b                                    ; $4E5A: $70
    ld a, h                                       ; $4E5B: $7C
    ld e, c                                       ; $4E5C: $59
    ld a, h                                       ; $4E5D: $7C
    inc bc                                        ; $4E5E: $03
    ld h, e                                       ; $4E5F: $63
    ld a, h                                       ; $4E60: $7C
    dec a                                         ; $4E61: $3D
    ld e, a                                       ; $4E62: $5F
    ld h, d                                       ; $4E63: $62
    inc h                                         ; $4E64: $24
    halt                                          ; $4E65: $76
    ld [hl], l                                    ; $4E66: $75
    cp $43                                        ; $4E67: $FE $43
    ld a, d                                       ; $4E69: $7A
    ld a, h                                       ; $4E6A: $7C
    ld e, c                                       ; $4E6B: $59
    ld a, h                                       ; $4E6C: $7C
    inc bc                                        ; $4E6D: $03
    ld h, e                                       ; $4E6E: $63
    ld a, h                                       ; $4E6F: $7C
    dec a                                         ; $4E70: $3D
    ld e, a                                       ; $4E71: $5F
    ld h, d                                       ; $4E72: $62
    dec sp                                        ; $4E73: $3B
    ld d, e                                       ; $4E74: $53
    ld [hl], h                                    ; $4E75: $74
    ld a, [c]                                     ; $4E76: $F2
    ld d, e                                       ; $4E77: $53
    ld a, d                                       ; $4E78: $7A
    ld a, h                                       ; $4E79: $7C
    ld e, c                                       ; $4E7A: $59
    ld a, h                                       ; $4E7B: $7C
    inc bc                                        ; $4E7C: $03
    ld h, e                                       ; $4E7D: $63
    ld a, h                                       ; $4E7E: $7C
    dec a                                         ; $4E7F: $3D
    ld e, a                                       ; $4E80: $5F
    ld h, d                                       ; $4E81: $62
    ld a, c                                       ; $4E82: $79
    ld l, e                                       ; $4E83: $6B
    ld l, c                                       ; $4E84: $69
    ret nc                                        ; $4E85: $D0

    ld b, e                                       ; $4E86: $43
    ld [hl], l                                    ; $4E87: $75
    ld a, h                                       ; $4E88: $7C
    ld e, c                                       ; $4E89: $59
    ld a, h                                       ; $4E8A: $7C
    inc bc                                        ; $4E8B: $03
    ld h, e                                       ; $4E8C: $63
    ld a, h                                       ; $4E8D: $7C
    dec a                                         ; $4E8E: $3D
    ld e, a                                       ; $4E8F: $5F
    ld h, d                                       ; $4E90: $62
    ld c, d                                       ; $4E91: $4A
    ld c, b                                       ; $4E92: $48
    ld l, h                                       ; $4E93: $6C
    call c, Call_04F_7655                         ; $4E94: $DC $55 $76
    ld a, h                                       ; $4E97: $7C
    ld e, c                                       ; $4E98: $59
    ld a, h                                       ; $4E99: $7C
    inc bc                                        ; $4E9A: $03
    ld h, e                                       ; $4E9B: $63
    ld a, h                                       ; $4E9C: $7C
    dec a                                         ; $4E9D: $3D
    ld e, a                                       ; $4E9E: $5F
    ld h, d                                       ; $4E9F: $62
    push de                                       ; $4EA0: $D5
    ld h, [hl]                                    ; $4EA1: $66
    ld l, [hl]                                    ; $4EA2: $6E
    ld a, [hl]                                    ; $4EA3: $7E
    ld l, e                                       ; $4EA4: $6B
    ld a, b                                       ; $4EA5: $78
    ld a, h                                       ; $4EA6: $7C
    ld e, c                                       ; $4EA7: $59
    ld a, h                                       ; $4EA8: $7C
    inc bc                                        ; $4EA9: $03
    ld h, e                                       ; $4EAA: $63
    ld a, h                                       ; $4EAB: $7C
    dec a                                         ; $4EAC: $3D
    ld e, a                                       ; $4EAD: $5F
    ld h, d                                       ; $4EAE: $62
    xor e                                         ; $4EAF: $AB
    ld [hl], e                                    ; $4EB0: $73
    halt                                          ; $4EB1: $76
    nop                                           ; $4EB2: $00
    ld b, b                                       ; $4EB3: $40
    ld a, d                                       ; $4EB4: $7A
    db $FC                                        ; $4EB5: $FC
    ld c, h                                       ; $4EB6: $4C
    ld a, h                                       ; $4EB7: $7C
    cp e                                          ; $4EB8: $BB
    ld h, h                                       ; $4EB9: $64
    ld a, h                                       ; $4EBA: $7C
    db $EB                                        ; $4EBB: $EB
    ld b, [hl]                                    ; $4EBC: $46
    ld h, [hl]                                    ; $4EBD: $66
    dec bc                                        ; $4EBE: $0B
    ld a, e                                       ; $4EBF: $7B
    ld l, [hl]                                    ; $4EC0: $6E
    ld a, [bc]                                    ; $4EC1: $0A
    ld h, a                                       ; $4EC2: $67
    ld a, b                                       ; $4EC3: $78
    cp h                                          ; $4EC4: $BC
    ld e, c                                       ; $4EC5: $59
    ld a, h                                       ; $4EC6: $7C
    ld a, c                                       ; $4EC7: $79
    ld h, a                                       ; $4EC8: $67
    ld a, h                                       ; $4EC9: $7C
    ld [hl], b                                    ; $4ECA: $70
    ld b, a                                       ; $4ECB: $47
    ld h, h                                       ; $4ECC: $64
    nop                                           ; $4ECD: $00
    ld e, b                                       ; $4ECE: $58
    ld h, c                                       ; $4ECF: $61
    inc a                                         ; $4ED0: $3C
    ld l, d                                       ; $4ED1: $6A
    ld l, [hl]                                    ; $4ED2: $6E
    cp h                                          ; $4ED3: $BC
    ld e, c                                       ; $4ED4: $59
    ld a, h                                       ; $4ED5: $7C
    ld a, c                                       ; $4ED6: $79
    ld h, a                                       ; $4ED7: $67
    ld a, h                                       ; $4ED8: $7C
    ld [hl], b                                    ; $4ED9: $70
    ld b, a                                       ; $4EDA: $47
    ld h, h                                       ; $4EDB: $64
    ld c, a                                       ; $4EDC: $4F
    ld h, e                                       ; $4EDD: $63
    ld d, e                                       ; $4EDE: $53
    adc h                                         ; $4EDF: $8C
    ld e, a                                       ; $4EE0: $5F
    ld l, l                                       ; $4EE1: $6D
    cp h                                          ; $4EE2: $BC
    ld e, c                                       ; $4EE3: $59
    ld a, h                                       ; $4EE4: $7C
    ld a, c                                       ; $4EE5: $79
    ld h, a                                       ; $4EE6: $67
    ld a, h                                       ; $4EE7: $7C
    ld [hl], b                                    ; $4EE8: $70
    ld b, a                                       ; $4EE9: $47
    ld h, h                                       ; $4EEA: $64
    ld b, h                                       ; $4EEB: $44
    ld b, a                                       ; $4EEC: $47
    ld h, l                                       ; $4EED: $65
    xor e                                         ; $4EEE: $AB
    ld a, h                                       ; $4EEF: $7C
    ld h, [hl]                                    ; $4EF0: $66
    inc a                                         ; $4EF1: $3C
    ld d, [hl]                                    ; $4EF2: $56
    ld a, h                                       ; $4EF3: $7C
    ld a, [bc]                                    ; $4EF4: $0A
    ld h, a                                       ; $4EF5: $67
    ld a, h                                       ; $4EF6: $7C
    jp c, Jump_04F_536B                           ; $4EF7: $DA $6B $53

    inc a                                         ; $4EFA: $3C
    ld l, [hl]                                    ; $4EFB: $6E
    ld [hl], a                                    ; $4EFC: $77
    call nz, Call_04F_7B6E                        ; $4EFD: $C4 $6E $7B
    ld a, h                                       ; $4F00: $7C
    ld b, a                                       ; $4F01: $47
    ld a, h                                       ; $4F02: $7C
    dec [hl]                                      ; $4F03: $35
    ld l, c                                       ; $4F04: $69
    ld a, h                                       ; $4F05: $7C
    ret                                           ; $4F06: $C9


    ld a, d                                       ; $4F07: $7A
    ld d, b                                       ; $4F08: $50
    ret c                                         ; $4F09: $D8

    ld l, l                                       ; $4F0A: $6D
    ld a, h                                       ; $4F0B: $7C
    ld [$7C6D], a                                 ; $4F0C: $EA $6D $7C
    cp h                                          ; $4F0F: $BC
    ld c, l                                       ; $4F10: $4D
    ld a, h                                       ; $4F11: $7C
    push hl                                       ; $4F12: $E5
    ld h, [hl]                                    ; $4F13: $66
    ld a, h                                       ; $4F14: $7C
    nop                                           ; $4F15: $00
    ld b, [hl]                                    ; $4F16: $46
    ld l, b                                       ; $4F17: $68
    ld e, b                                       ; $4F18: $58
    ld c, b                                       ; $4F19: $48
    ld a, e                                       ; $4F1A: $7B
    rlca                                          ; $4F1B: $07
    ld e, e                                       ; $4F1C: $5B
    ld a, e                                       ; $4F1D: $7B
    cp h                                          ; $4F1E: $BC
    ld c, h                                       ; $4F1F: $4C
    ld a, h                                       ; $4F20: $7C
    add sp, $67                                   ; $4F21: $E8 $67
    ld a, h                                       ; $4F23: $7C
    nop                                           ; $4F24: $00
    ld h, a                                       ; $4F25: $67
    ld h, d                                       ; $4F26: $62
    pop hl                                        ; $4F27: $E1
    ld d, c                                       ; $4F28: $51
    ld d, e                                       ; $4F29: $53
    jr nc, jr_04F_4FA5                            ; $4F2A: $30 $79

    ld [hl], h                                    ; $4F2C: $74
    ld a, h                                       ; $4F2D: $7C
    ld c, e                                       ; $4F2E: $4B
    ld a, h                                       ; $4F2F: $7C
    rst $20                                       ; $4F30: $E7
    ld h, h                                       ; $4F31: $64
    ld a, h                                       ; $4F32: $7C
    cp c                                          ; $4F33: $B9
    ld h, l                                       ; $4F34: $65
    ld h, a                                       ; $4F35: $67
    pop de                                        ; $4F36: $D1
    ld e, l                                       ; $4F37: $5D
    ld l, b                                       ; $4F38: $68
    ld d, a                                       ; $4F39: $57
    ld l, c                                       ; $4F3A: $69
    ld [hl], d                                    ; $4F3B: $72
    ld a, h                                       ; $4F3C: $7C
    ld c, e                                       ; $4F3D: $4B
    ld a, h                                       ; $4F3E: $7C
    rst $20                                       ; $4F3F: $E7
    ld h, h                                       ; $4F40: $64
    ld a, h                                       ; $4F41: $7C
    cp c                                          ; $4F42: $B9
    ld h, l                                       ; $4F43: $65
    ld h, a                                       ; $4F44: $67
    cp a                                          ; $4F45: $BF
    ld d, d                                       ; $4F46: $52
    ld [hl], l                                    ; $4F47: $75
    xor [hl]                                      ; $4F48: $AE
    ld l, l                                       ; $4F49: $6D
    ld a, b                                       ; $4F4A: $78
    ld a, h                                       ; $4F4B: $7C
    ld c, e                                       ; $4F4C: $4B
    ld a, h                                       ; $4F4D: $7C
    rst $20                                       ; $4F4E: $E7
    ld h, h                                       ; $4F4F: $64
    ld a, h                                       ; $4F50: $7C
    cp c                                          ; $4F51: $B9
    ld h, l                                       ; $4F52: $65
    ld h, a                                       ; $4F53: $67
    adc [hl]                                      ; $4F54: $8E
    ld l, l                                       ; $4F55: $6D
    halt                                          ; $4F56: $76
    pop af                                        ; $4F57: $F1
    ld e, l                                       ; $4F58: $5D
    ld a, e                                       ; $4F59: $7B
    ld a, h                                       ; $4F5A: $7C
    ld c, e                                       ; $4F5B: $4B
    ld a, h                                       ; $4F5C: $7C
    rst $20                                       ; $4F5D: $E7
    ld h, h                                       ; $4F5E: $64
    ld a, h                                       ; $4F5F: $7C
    cp c                                          ; $4F60: $B9
    ld h, l                                       ; $4F61: $65
    ld h, a                                       ; $4F62: $67
    ld sp, $767E                                  ; $4F63: $31 $7E $76
    sub $7C                                       ; $4F66: $D6 $7C
    ld a, c                                       ; $4F68: $79
    ld a, h                                       ; $4F69: $7C
    ld c, e                                       ; $4F6A: $4B
    ld a, h                                       ; $4F6B: $7C
    rst $20                                       ; $4F6C: $E7
    ld h, h                                       ; $4F6D: $64
    ld a, h                                       ; $4F6E: $7C
    cp c                                          ; $4F6F: $B9
    ld h, l                                       ; $4F70: $65
    ld h, a                                       ; $4F71: $67
    and d                                         ; $4F72: $A2
    ld c, d                                       ; $4F73: $4A
    ld [hl], d                                    ; $4F74: $72
    add h                                         ; $4F75: $84
    ld h, l                                       ; $4F76: $65
    ld a, c                                       ; $4F77: $79
    ld a, h                                       ; $4F78: $7C
    ld c, e                                       ; $4F79: $4B
    ld a, h                                       ; $4F7A: $7C
    rst $20                                       ; $4F7B: $E7
    ld h, h                                       ; $4F7C: $64
    ld a, h                                       ; $4F7D: $7C
    cp c                                          ; $4F7E: $B9
    ld h, l                                       ; $4F7F: $65
    ld h, a                                       ; $4F80: $67
    ld [hl], e                                    ; $4F81: $73
    ld h, h                                       ; $4F82: $64
    ld a, e                                       ; $4F83: $7B
    jr c, jr_04F_4FCC                             ; $4F84: $38 $46

    ld a, h                                       ; $4F86: $7C
    ld a, h                                       ; $4F87: $7C
    ld c, e                                       ; $4F88: $4B
    ld a, h                                       ; $4F89: $7C
    rst $20                                       ; $4F8A: $E7
    ld h, h                                       ; $4F8B: $64
    ld a, h                                       ; $4F8C: $7C
    cp c                                          ; $4F8D: $B9
    ld h, l                                       ; $4F8E: $65
    ld h, a                                       ; $4F8F: $67
    or b                                          ; $4F90: $B0
    ld h, [hl]                                    ; $4F91: $66
    ld a, e                                       ; $4F92: $7B
    ld b, $5D                                     ; $4F93: $06 $5D
    ld a, h                                       ; $4F95: $7C
    ld a, h                                       ; $4F96: $7C
    ld c, e                                       ; $4F97: $4B
    ld a, h                                       ; $4F98: $7C
    rst $20                                       ; $4F99: $E7
    ld h, h                                       ; $4F9A: $64
    ld a, h                                       ; $4F9B: $7C
    cp c                                          ; $4F9C: $B9
    ld h, l                                       ; $4F9D: $65
    ld h, a                                       ; $4F9E: $67
    pop hl                                        ; $4F9F: $E1
    ld d, l                                       ; $4FA0: $55
    ld a, b                                       ; $4FA1: $78
    rra                                           ; $4FA2: $1F
    ld b, h                                       ; $4FA3: $44
    ld a, h                                       ; $4FA4: $7C

jr_04F_4FA5:
    ld a, h                                       ; $4FA5: $7C
    ld c, e                                       ; $4FA6: $4B
    ld a, h                                       ; $4FA7: $7C
    rst $20                                       ; $4FA8: $E7
    ld h, h                                       ; $4FA9: $64
    ld a, h                                       ; $4FAA: $7C
    cp c                                          ; $4FAB: $B9
    ld h, l                                       ; $4FAC: $65
    ld h, a                                       ; $4FAD: $67
    dec a                                         ; $4FAE: $3D
    ld a, e                                       ; $4FAF: $7B
    ld [hl], a                                    ; $4FB0: $77
    and $50                                       ; $4FB1: $E6 $50
    ld a, e                                       ; $4FB3: $7B
    db $FC                                        ; $4FB4: $FC
    ld c, e                                       ; $4FB5: $4B
    ld a, h                                       ; $4FB6: $7C
    sub d                                         ; $4FB7: $92
    ld e, h                                       ; $4FB8: $5C
    ld a, h                                       ; $4FB9: $7C
    ld d, b                                       ; $4FBA: $50
    halt                                          ; $4FBB: $76
    ld h, d                                       ; $4FBC: $62
    add $57                                       ; $4FBD: $C6 $57
    ld d, c                                       ; $4FBF: $51
    xor [hl]                                      ; $4FC0: $AE
    ld e, d                                       ; $4FC1: $5A
    ld d, e                                       ; $4FC2: $53
    db $FC                                        ; $4FC3: $FC
    ld c, e                                       ; $4FC4: $4B
    ld a, h                                       ; $4FC5: $7C
    sub d                                         ; $4FC6: $92
    ld e, h                                       ; $4FC7: $5C
    ld a, h                                       ; $4FC8: $7C
    ld d, b                                       ; $4FC9: $50
    halt                                          ; $4FCA: $76
    ld h, d                                       ; $4FCB: $62

jr_04F_4FCC:
    rrca                                          ; $4FCC: $0F
    ld [hl], e                                    ; $4FCD: $73
    ld [hl], e                                    ; $4FCE: $73
    ld b, d                                       ; $4FCF: $42
    ld h, [hl]                                    ; $4FD0: $66
    ld [hl], a                                    ; $4FD1: $77
    db $FC                                        ; $4FD2: $FC
    ld c, e                                       ; $4FD3: $4B
    ld a, h                                       ; $4FD4: $7C
    sub d                                         ; $4FD5: $92
    ld e, h                                       ; $4FD6: $5C
    ld a, h                                       ; $4FD7: $7C
    ld d, b                                       ; $4FD8: $50
    halt                                          ; $4FD9: $76
    ld h, d                                       ; $4FDA: $62
    rra                                           ; $4FDB: $1F
    ld c, l                                       ; $4FDC: $4D
    ld [hl], a                                    ; $4FDD: $77
    sub l                                         ; $4FDE: $95
    ld a, h                                       ; $4FDF: $7C
    ld a, e                                       ; $4FE0: $7B
    db $FC                                        ; $4FE1: $FC
    ld c, h                                       ; $4FE2: $4C
    ld a, h                                       ; $4FE3: $7C
    cp e                                          ; $4FE4: $BB
    ld h, h                                       ; $4FE5: $64
    ld a, h                                       ; $4FE6: $7C
    db $EB                                        ; $4FE7: $EB
    ld b, [hl]                                    ; $4FE8: $46
    ld h, [hl]                                    ; $4FE9: $66
    ld d, h                                       ; $4FEA: $54
    ld b, e                                       ; $4FEB: $43
    ld l, a                                       ; $4FEC: $6F
    jr z, jr_04F_5057                             ; $4FED: $28 $68

    ld a, b                                       ; $4FEF: $78
    db $FC                                        ; $4FF0: $FC
    ld c, h                                       ; $4FF1: $4C
    ld a, h                                       ; $4FF2: $7C
    cp e                                          ; $4FF3: $BB
    ld h, h                                       ; $4FF4: $64
    ld a, h                                       ; $4FF5: $7C
    db $EB                                        ; $4FF6: $EB
    ld b, [hl]                                    ; $4FF7: $46
    ld h, [hl]                                    ; $4FF8: $66
    dec b                                         ; $4FF9: $05
    ld h, a                                       ; $4FFA: $67
    ld l, d                                       ; $4FFB: $6A
    pop de                                        ; $4FFC: $D1
    ld e, h                                       ; $4FFD: $5C
    ld a, b                                       ; $4FFE: $78
    db $FC                                        ; $4FFF: $FC
    ld c, h                                       ; $5000: $4C
    ld a, h                                       ; $5001: $7C
    cp e                                          ; $5002: $BB
    ld h, h                                       ; $5003: $64
    ld a, h                                       ; $5004: $7C
    db $EB                                        ; $5005: $EB
    ld b, [hl]                                    ; $5006: $46
    ld h, [hl]                                    ; $5007: $66
    xor d                                         ; $5008: $AA
    ld e, c                                       ; $5009: $59
    ld [hl], c                                    ; $500A: $71
    ld d, l                                       ; $500B: $55
    ld [hl], l                                    ; $500C: $75
    ld a, c                                       ; $500D: $79
    db $FC                                        ; $500E: $FC
    ld c, h                                       ; $500F: $4C
    ld a, h                                       ; $5010: $7C
    cp e                                          ; $5011: $BB
    ld h, h                                       ; $5012: $64
    ld a, h                                       ; $5013: $7C
    db $EB                                        ; $5014: $EB
    ld b, [hl]                                    ; $5015: $46
    ld h, [hl]                                    ; $5016: $66
    inc a                                         ; $5017: $3C
    ld [hl], e                                    ; $5018: $73
    ld [hl], d                                    ; $5019: $72
    ld h, b                                       ; $501A: $60
    ld e, h                                       ; $501B: $5C
    ld a, d                                       ; $501C: $7A
    db $FC                                        ; $501D: $FC
    ld c, h                                       ; $501E: $4C
    ld a, h                                       ; $501F: $7C
    cp e                                          ; $5020: $BB
    ld h, h                                       ; $5021: $64
    ld a, h                                       ; $5022: $7C
    db $EB                                        ; $5023: $EB
    ld b, [hl]                                    ; $5024: $46
    ld h, [hl]                                    ; $5025: $66
    nop                                           ; $5026: $00
    ld b, b                                       ; $5027: $40
    ld d, d                                       ; $5028: $52
    push de                                       ; $5029: $D5
    ld [hl], b                                    ; $502A: $70
    ld [hl], e                                    ; $502B: $73
    db $FC                                        ; $502C: $FC
    ld c, h                                       ; $502D: $4C
    ld a, h                                       ; $502E: $7C
    cp e                                          ; $502F: $BB
    ld h, h                                       ; $5030: $64
    ld a, h                                       ; $5031: $7C
    db $EB                                        ; $5032: $EB
    ld b, [hl]                                    ; $5033: $46
    ld h, [hl]                                    ; $5034: $66
    ld b, b                                       ; $5035: $40
    ld c, d                                       ; $5036: $4A
    ld [hl], a                                    ; $5037: $77
    sub c                                         ; $5038: $91
    ld h, a                                       ; $5039: $67
    ld a, e                                       ; $503A: $7B

    db $3C, $5A, $7C, $2F, $63, $7C, $5A, $70, $6B, $B8, $4C, $67, $ED, $6F, $70

    inc a                                         ; $504A: $3C
    ld c, a                                       ; $504B: $4F
    ld a, h                                       ; $504C: $7C
    ld e, $5C                                     ; $504D: $1E $5C
    ld a, h                                       ; $504F: $7C
    and c                                         ; $5050: $A1
    ld l, a                                       ; $5051: $6F
    ld h, [hl]                                    ; $5052: $66
    ld sp, hl                                     ; $5053: $F9
    ld l, d                                       ; $5054: $6A
    ld l, l                                       ; $5055: $6D
    inc bc                                        ; $5056: $03

jr_04F_5057:
    ld b, c                                       ; $5057: $41
    ld a, c                                       ; $5058: $79
    inc a                                         ; $5059: $3C
    ld d, d                                       ; $505A: $52
    ld a, h                                       ; $505B: $7C
    add $68                                       ; $505C: $C6 $68
    ld a, h                                       ; $505E: $7C
    nop                                           ; $505F: $00
    ld b, b                                       ; $5060: $40
    ld l, e                                       ; $5061: $6B
    ld a, e                                       ; $5062: $7B
    ld d, l                                       ; $5063: $55
    ld [hl], e                                    ; $5064: $73
    ld h, [hl]                                    ; $5065: $66
    ld e, [hl]                                    ; $5066: $5E
    ld a, d                                       ; $5067: $7A
    inc a                                         ; $5068: $3C
    ld d, a                                       ; $5069: $57
    ld a, h                                       ; $506A: $7C
    jp Jump_04F_7C67                              ; $506B: $C3 $67 $7C


    ld b, a                                       ; $506E: $47
    ld h, d                                       ; $506F: $62
    ld l, d                                       ; $5070: $6A
    ld [hl], l                                    ; $5071: $75
    ld d, d                                       ; $5072: $52
    ld [hl], d                                    ; $5073: $72
    and [hl]                                      ; $5074: $A6
    ld a, d                                       ; $5075: $7A
    ld a, d                                       ; $5076: $7A
    db $FC                                        ; $5077: $FC
    ld c, c                                       ; $5078: $49
    ld a, h                                       ; $5079: $7C
    ccf                                           ; $507A: $3F
    ld h, l                                       ; $507B: $65
    ld a, h                                       ; $507C: $7C
    rst $38                                       ; $507D: $FF
    ld [hl], b                                    ; $507E: $70
    ld l, a                                       ; $507F: $6F
    db $10                                        ; $5080: $10
    ld l, d                                       ; $5081: $6A
    ld [hl], b                                    ; $5082: $70
    ld [hl-], a                                   ; $5083: $32
    ld a, e                                       ; $5084: $7B
    ld a, c                                       ; $5085: $79
    cp h                                          ; $5086: $BC
    ld d, l                                       ; $5087: $55
    ld a, h                                       ; $5088: $7C
    ld a, [hl+]                                   ; $5089: $2A
    ld l, h                                       ; $508A: $6C
    ld a, h                                       ; $508B: $7C
    ret                                           ; $508C: $C9


    ld e, b                                       ; $508D: $58
    ld l, d                                       ; $508E: $6A
    dec e                                         ; $508F: $1D
    ld d, d                                       ; $5090: $52
    ld l, [hl]                                    ; $5091: $6E
    nop                                           ; $5092: $00
    ld [hl], c                                    ; $5093: $71
    ld a, c                                       ; $5094: $79
    db $FC                                        ; $5095: $FC
    ld d, [hl]                                    ; $5096: $56
    ld a, h                                       ; $5097: $7C
    ret nz                                        ; $5098: $C0

    ld l, h                                       ; $5099: $6C
    ld a, h                                       ; $509A: $7C
    daa                                           ; $509B: $27
    ld l, a                                       ; $509C: $6F
    ld l, b                                       ; $509D: $68
    inc bc                                        ; $509E: $03
    ld c, h                                       ; $509F: $4C
    ld a, c                                       ; $50A0: $79
    push bc                                       ; $50A1: $C5
    ld h, b                                       ; $50A2: $60
    ld a, e                                       ; $50A3: $7B
    db $FC                                        ; $50A4: $FC
    ld d, l                                       ; $50A5: $55
    ld a, h                                       ; $50A6: $7C
    jp Jump_04F_7C65                              ; $50A7: $C3 $65 $7C


    push af                                       ; $50AA: $F5
    ld e, a                                       ; $50AB: $5F
    ld h, c                                       ; $50AC: $61
    or b                                          ; $50AD: $B0
    ld h, e                                       ; $50AE: $63
    ld l, b                                       ; $50AF: $68
    rst $00                                       ; $50B0: $C7
    ld h, l                                       ; $50B1: $65
    halt                                          ; $50B2: $76
    db $FC                                        ; $50B3: $FC
    ld d, l                                       ; $50B4: $55
    ld a, h                                       ; $50B5: $7C
    jp Jump_04F_7C65                              ; $50B6: $C3 $65 $7C


    push af                                       ; $50B9: $F5
    ld e, a                                       ; $50BA: $5F
    ld h, c                                       ; $50BB: $61
    ld l, [hl]                                    ; $50BC: $6E
    ld b, h                                       ; $50BD: $44
    ld [hl], a                                    ; $50BE: $77
    bit 5, d                                      ; $50BF: $CB $6A
    ld a, d                                       ; $50C1: $7A
    db $FC                                        ; $50C2: $FC
    ld d, l                                       ; $50C3: $55
    ld a, h                                       ; $50C4: $7C
    jp Jump_04F_7C65                              ; $50C5: $C3 $65 $7C


    push af                                       ; $50C8: $F5
    ld e, a                                       ; $50C9: $5F
    ld h, c                                       ; $50CA: $61
    or a                                          ; $50CB: $B7
    ld e, e                                       ; $50CC: $5B
    ld l, l                                       ; $50CD: $6D
    ld e, d                                       ; $50CE: $5A
    ld c, h                                       ; $50CF: $4C
    ld a, b                                       ; $50D0: $78
    db $FC                                        ; $50D1: $FC
    ld d, l                                       ; $50D2: $55
    ld a, h                                       ; $50D3: $7C
    jp Jump_04F_7C65                              ; $50D4: $C3 $65 $7C


    push af                                       ; $50D7: $F5
    ld e, a                                       ; $50D8: $5F
    ld h, c                                       ; $50D9: $61
    add l                                         ; $50DA: $85
    ld b, d                                       ; $50DB: $42
    ld a, b                                       ; $50DC: $78
    dec bc                                        ; $50DD: $0B
    ld h, e                                       ; $50DE: $63
    ld a, d                                       ; $50DF: $7A
    db $FC                                        ; $50E0: $FC
    ld d, a                                       ; $50E1: $57
    ld a, h                                       ; $50E2: $7C
    db $FC                                        ; $50E3: $FC
    ld l, h                                       ; $50E4: $6C
    ld a, h                                       ; $50E5: $7C
    ei                                            ; $50E6: $FB
    ld l, b                                       ; $50E7: $68
    ld h, [hl]                                    ; $50E8: $66
    rlca                                          ; $50E9: $07
    ld c, a                                       ; $50EA: $4F
    ld [hl], h                                    ; $50EB: $74
    xor h                                         ; $50EC: $AC
    ld h, l                                       ; $50ED: $65
    ld a, d                                       ; $50EE: $7A
    db $FC                                        ; $50EF: $FC
    ld d, a                                       ; $50F0: $57
    ld a, h                                       ; $50F1: $7C
    db $FC                                        ; $50F2: $FC
    ld l, h                                       ; $50F3: $6C
    ld a, h                                       ; $50F4: $7C
    ei                                            ; $50F5: $FB
    ld l, b                                       ; $50F6: $68
    ld h, [hl]                                    ; $50F7: $66
    db $FD                                        ; $50F8: $FD
    ld [hl], b                                    ; $50F9: $70
    ld l, [hl]                                    ; $50FA: $6E
    add $53                                       ; $50FB: $C6 $53
    ld a, c                                       ; $50FD: $79
    db $FC                                        ; $50FE: $FC
    ld d, a                                       ; $50FF: $57
    ld a, h                                       ; $5100: $7C
    db $FC                                        ; $5101: $FC
    ld l, h                                       ; $5102: $6C
    ld a, h                                       ; $5103: $7C
    ei                                            ; $5104: $FB
    ld l, b                                       ; $5105: $68
    ld h, [hl]                                    ; $5106: $66
    inc h                                         ; $5107: $24
    ld b, l                                       ; $5108: $45
    halt                                          ; $5109: $76
    ldh [rBCPS], a                                ; $510A: $E0 $68
    ld a, e                                       ; $510C: $7B
    db $FC                                        ; $510D: $FC
    ld d, a                                       ; $510E: $57
    ld a, h                                       ; $510F: $7C
    db $FC                                        ; $5110: $FC
    ld l, h                                       ; $5111: $6C
    ld a, h                                       ; $5112: $7C
    ei                                            ; $5113: $FB
    ld l, b                                       ; $5114: $68
    ld h, [hl]                                    ; $5115: $66
    db $DD                                        ; $5116: $DD
    ld h, c                                       ; $5117: $61
    ld a, c                                       ; $5118: $79
    and a                                         ; $5119: $A7
    ld b, h                                       ; $511A: $44
    ld a, h                                       ; $511B: $7C
    db $FC                                        ; $511C: $FC
    ld d, a                                       ; $511D: $57
    ld a, h                                       ; $511E: $7C
    db $FC                                        ; $511F: $FC
    ld l, h                                       ; $5120: $6C
    ld a, h                                       ; $5121: $7C
    ei                                            ; $5122: $FB
    ld l, b                                       ; $5123: $68
    ld h, [hl]                                    ; $5124: $66
    rst $18                                       ; $5125: $DF
    ld [hl], a                                    ; $5126: $77
    ld [hl], l                                    ; $5127: $75
    dec a                                         ; $5128: $3D
    ld a, l                                       ; $5129: $7D
    ld a, e                                       ; $512A: $7B
    db $FC                                        ; $512B: $FC
    ld d, a                                       ; $512C: $57
    ld a, h                                       ; $512D: $7C
    db $FC                                        ; $512E: $FC
    ld l, h                                       ; $512F: $6C
    ld a, h                                       ; $5130: $7C
    ei                                            ; $5131: $FB
    ld l, b                                       ; $5132: $68
    ld h, [hl]                                    ; $5133: $66
    ld b, h                                       ; $5134: $44
    ld e, a                                       ; $5135: $5F
    ld [hl], c                                    ; $5136: $71
    adc b                                         ; $5137: $88
    ld e, d                                       ; $5138: $5A
    ld a, e                                       ; $5139: $7B
    db $FC                                        ; $513A: $FC
    ld d, a                                       ; $513B: $57
    ld a, h                                       ; $513C: $7C
    db $FC                                        ; $513D: $FC
    ld l, h                                       ; $513E: $6C
    ld a, h                                       ; $513F: $7C
    ei                                            ; $5140: $FB
    ld l, b                                       ; $5141: $68
    ld h, [hl]                                    ; $5142: $66
    dec d                                         ; $5143: $15
    ld a, a                                       ; $5144: $7F
    ld [hl], a                                    ; $5145: $77
    call c, Call_04F_7C40                         ; $5146: $DC $40 $7C
    db $FC                                        ; $5149: $FC
    ld d, a                                       ; $514A: $57
    ld a, h                                       ; $514B: $7C
    db $FC                                        ; $514C: $FC
    ld l, h                                       ; $514D: $6C
    ld a, h                                       ; $514E: $7C
    ei                                            ; $514F: $FB
    ld l, b                                       ; $5150: $68
    ld h, [hl]                                    ; $5151: $66
    adc h                                         ; $5152: $8C
    ld c, [hl]                                    ; $5153: $4E
    ld [hl], a                                    ; $5154: $77
    db $DB                                        ; $5155: $DB
    ld b, e                                       ; $5156: $43
    ld a, h                                       ; $5157: $7C
    db $FC                                        ; $5158: $FC
    ld d, a                                       ; $5159: $57
    ld a, h                                       ; $515A: $7C
    db $FC                                        ; $515B: $FC
    ld l, h                                       ; $515C: $6C
    ld a, h                                       ; $515D: $7C
    ei                                            ; $515E: $FB
    ld l, b                                       ; $515F: $68
    ld h, [hl]                                    ; $5160: $66
    ret c                                         ; $5161: $D8

    ld b, [hl]                                    ; $5162: $46
    halt                                          ; $5163: $76
    sbc b                                         ; $5164: $98
    ld [hl], l                                    ; $5165: $75
    ld a, e                                       ; $5166: $7B
    ld a, h                                       ; $5167: $7C
    ld d, a                                       ; $5168: $57
    ld a, h                                       ; $5169: $7C
    xor d                                         ; $516A: $AA
    ld e, e                                       ; $516B: $5B
    ld a, h                                       ; $516C: $7C
    push de                                       ; $516D: $D5
    ld b, a                                       ; $516E: $47
    ld h, d                                       ; $516F: $62
    sbc [hl]                                      ; $5170: $9E
    ld l, d                                       ; $5171: $6A
    ld l, a                                       ; $5172: $6F
    push bc                                       ; $5173: $C5
    ld [hl], b                                    ; $5174: $70
    ld [hl], d                                    ; $5175: $72
    ld a, h                                       ; $5176: $7C
    ld d, a                                       ; $5177: $57
    ld a, h                                       ; $5178: $7C
    xor d                                         ; $5179: $AA
    ld e, e                                       ; $517A: $5B
    ld a, h                                       ; $517B: $7C
    push de                                       ; $517C: $D5
    ld b, a                                       ; $517D: $47
    ld h, d                                       ; $517E: $62
    and e                                         ; $517F: $A3
    ld e, b                                       ; $5180: $58
    ld l, h                                       ; $5181: $6C
    push hl                                       ; $5182: $E5
    ld c, h                                       ; $5183: $4C
    ld [hl], h                                    ; $5184: $74
    ld a, h                                       ; $5185: $7C
    ld d, a                                       ; $5186: $57
    ld a, h                                       ; $5187: $7C
    xor d                                         ; $5188: $AA
    ld e, e                                       ; $5189: $5B
    ld a, h                                       ; $518A: $7C
    push de                                       ; $518B: $D5
    ld b, a                                       ; $518C: $47
    ld h, d                                       ; $518D: $62
    rst $28                                       ; $518E: $EF
    ld l, l                                       ; $518F: $6D
    ld d, b                                       ; $5190: $50
    add e                                         ; $5191: $83
    ld e, e                                       ; $5192: $5B
    ld h, [hl]                                    ; $5193: $66
    ld a, h                                       ; $5194: $7C
    ld d, a                                       ; $5195: $57
    ld a, h                                       ; $5196: $7C
    xor d                                         ; $5197: $AA
    ld e, e                                       ; $5198: $5B
    ld a, h                                       ; $5199: $7C
    push de                                       ; $519A: $D5
    ld b, a                                       ; $519B: $47
    ld h, d                                       ; $519C: $62
    add l                                         ; $519D: $85
    ld [hl], d                                    ; $519E: $72
    ld l, l                                       ; $519F: $6D
    ld d, [hl]                                    ; $51A0: $56
    ld [hl], e                                    ; $51A1: $73
    ld [hl], h                                    ; $51A2: $74
    ld a, h                                       ; $51A3: $7C
    ld d, a                                       ; $51A4: $57
    ld a, h                                       ; $51A5: $7C
    xor d                                         ; $51A6: $AA
    ld e, e                                       ; $51A7: $5B
    ld a, h                                       ; $51A8: $7C
    push de                                       ; $51A9: $D5
    ld b, a                                       ; $51AA: $47
    ld h, d                                       ; $51AB: $62
    ld c, b                                       ; $51AC: $48
    ld c, e                                       ; $51AD: $4B
    ld l, c                                       ; $51AE: $69
    db $EC                                        ; $51AF: $EC
    ld l, h                                       ; $51B0: $6C
    ld [hl], a                                    ; $51B1: $77
    ld a, h                                       ; $51B2: $7C
    ld d, a                                       ; $51B3: $57
    ld a, h                                       ; $51B4: $7C
    xor d                                         ; $51B5: $AA
    ld e, e                                       ; $51B6: $5B
    ld a, h                                       ; $51B7: $7C
    push de                                       ; $51B8: $D5
    ld b, a                                       ; $51B9: $47
    ld h, d                                       ; $51BA: $62
    adc [hl]                                      ; $51BB: $8E
    ld [hl], a                                    ; $51BC: $77
    ld d, d                                       ; $51BD: $52
    nop                                           ; $51BE: $00
    ld c, a                                       ; $51BF: $4F
    ld l, d                                       ; $51C0: $6A
    ld a, h                                       ; $51C1: $7C
    ld d, a                                       ; $51C2: $57
    ld a, h                                       ; $51C3: $7C
    xor d                                         ; $51C4: $AA
    ld e, e                                       ; $51C5: $5B
    ld a, h                                       ; $51C6: $7C
    push de                                       ; $51C7: $D5
    ld b, a                                       ; $51C8: $47
    ld h, d                                       ; $51C9: $62
    db $E4                                        ; $51CA: $E4
    ld h, b                                       ; $51CB: $60
    ld l, c                                       ; $51CC: $69
    add [hl]                                      ; $51CD: $86
    ld e, h                                       ; $51CE: $5C
    ld l, [hl]                                    ; $51CF: $6E
    ld a, h                                       ; $51D0: $7C
    ld d, a                                       ; $51D1: $57
    ld a, h                                       ; $51D2: $7C
    xor d                                         ; $51D3: $AA
    ld e, e                                       ; $51D4: $5B
    ld a, h                                       ; $51D5: $7C
    push de                                       ; $51D6: $D5
    ld b, a                                       ; $51D7: $47
    ld h, d                                       ; $51D8: $62
    ld h, [hl]                                    ; $51D9: $66
    ld b, a                                       ; $51DA: $47
    ld l, [hl]                                    ; $51DB: $6E
    ldh [$7B], a                                  ; $51DC: $E0 $7B
    ld [hl], e                                    ; $51DE: $73
    ld a, h                                       ; $51DF: $7C
    ld d, a                                       ; $51E0: $57
    ld a, h                                       ; $51E1: $7C
    xor d                                         ; $51E2: $AA
    ld e, e                                       ; $51E3: $5B
    ld a, h                                       ; $51E4: $7C
    push de                                       ; $51E5: $D5
    ld b, a                                       ; $51E6: $47
    ld h, d                                       ; $51E7: $62
    ret nz                                        ; $51E8: $C0

    ld l, e                                       ; $51E9: $6B
    ld l, d                                       ; $51EA: $6A
    and l                                         ; $51EB: $A5
    ld a, b                                       ; $51EC: $78
    ld [hl], b                                    ; $51ED: $70
    ld a, h                                       ; $51EE: $7C
    ld d, a                                       ; $51EF: $57
    ld a, h                                       ; $51F0: $7C
    xor d                                         ; $51F1: $AA
    ld e, e                                       ; $51F2: $5B
    ld a, h                                       ; $51F3: $7C
    push de                                       ; $51F4: $D5
    ld b, a                                       ; $51F5: $47
    ld h, d                                       ; $51F6: $62
    nop                                           ; $51F7: $00
    ld b, b                                       ; $51F8: $40
    ld d, c                                       ; $51F9: $51
    db $ED                                        ; $51FA: $ED
    ld a, b                                       ; $51FB: $78
    ld h, l                                       ; $51FC: $65
    ld a, h                                       ; $51FD: $7C
    ld d, a                                       ; $51FE: $57
    ld a, h                                       ; $51FF: $7C
    xor d                                         ; $5200: $AA
    ld e, e                                       ; $5201: $5B
    ld a, h                                       ; $5202: $7C
    push de                                       ; $5203: $D5
    ld b, a                                       ; $5204: $47
    ld h, d                                       ; $5205: $62
    ld l, a                                       ; $5206: $6F
    ld [hl], b                                    ; $5207: $70
    ld l, d                                       ; $5208: $6A
    jp nz, Jump_04F_7145                          ; $5209: $C2 $45 $71

    ld a, h                                       ; $520C: $7C
    ld d, a                                       ; $520D: $57
    ld a, h                                       ; $520E: $7C
    xor d                                         ; $520F: $AA
    ld e, e                                       ; $5210: $5B
    ld a, h                                       ; $5211: $7C
    push de                                       ; $5212: $D5
    ld b, a                                       ; $5213: $47
    ld h, d                                       ; $5214: $62
    push af                                       ; $5215: $F5
    ld h, b                                       ; $5216: $60
    ld l, a                                       ; $5217: $6F
    or l                                          ; $5218: $B5
    ld b, l                                       ; $5219: $45
    ld [hl], l                                    ; $521A: $75
    ld a, h                                       ; $521B: $7C
    ld d, a                                       ; $521C: $57
    ld a, h                                       ; $521D: $7C
    xor d                                         ; $521E: $AA
    ld e, e                                       ; $521F: $5B
    ld a, h                                       ; $5220: $7C
    push de                                       ; $5221: $D5
    ld b, a                                       ; $5222: $47
    ld h, d                                       ; $5223: $62
    nop                                           ; $5224: $00
    ld b, b                                       ; $5225: $40
    ld l, [hl]                                    ; $5226: $6E
    inc [hl]                                      ; $5227: $34
    ld c, l                                       ; $5228: $4D
    ld [hl], l                                    ; $5229: $75
    ld a, h                                       ; $522A: $7C
    ld d, a                                       ; $522B: $57
    ld a, h                                       ; $522C: $7C
    xor d                                         ; $522D: $AA
    ld e, e                                       ; $522E: $5B
    ld a, h                                       ; $522F: $7C
    push de                                       ; $5230: $D5
    ld b, a                                       ; $5231: $47
    ld h, d                                       ; $5232: $62
    sbc a                                         ; $5233: $9F
    ld c, b                                       ; $5234: $48
    ld [hl], c                                    ; $5235: $71
    sub a                                         ; $5236: $97
    ld c, l                                       ; $5237: $4D
    halt                                          ; $5238: $76
    ld a, h                                       ; $5239: $7C
    ld d, a                                       ; $523A: $57
    ld a, h                                       ; $523B: $7C
    xor d                                         ; $523C: $AA
    ld e, e                                       ; $523D: $5B
    ld a, h                                       ; $523E: $7C
    push de                                       ; $523F: $D5
    ld b, a                                       ; $5240: $47
    ld h, d                                       ; $5241: $62
    sub b                                         ; $5242: $90
    ld h, e                                       ; $5243: $63
    ld d, c                                       ; $5244: $51
    ld a, [hl]                                    ; $5245: $7E
    ld c, [hl]                                    ; $5246: $4E
    ld h, l                                       ; $5247: $65
    ld a, h                                       ; $5248: $7C
    ld d, a                                       ; $5249: $57
    ld a, h                                       ; $524A: $7C
    xor d                                         ; $524B: $AA
    ld e, e                                       ; $524C: $5B
    ld a, h                                       ; $524D: $7C
    push de                                       ; $524E: $D5
    ld b, a                                       ; $524F: $47
    ld h, d                                       ; $5250: $62
    sbc b                                         ; $5251: $98
    ld b, h                                       ; $5252: $44
    ld l, e                                       ; $5253: $6B
    ld b, [hl]                                    ; $5254: $46
    halt                                          ; $5255: $76
    ld l, l                                       ; $5256: $6D
    cp h                                          ; $5257: $BC
    ld d, a                                       ; $5258: $57
    ld a, h                                       ; $5259: $7C
    ld d, a                                       ; $525A: $57
    ld l, b                                       ; $525B: $68
    ld a, h                                       ; $525C: $7C
    sbc h                                         ; $525D: $9C
    ld b, a                                       ; $525E: $47
    ld h, e                                       ; $525F: $63
    inc a                                         ; $5260: $3C
    ld c, d                                       ; $5261: $4A
    halt                                          ; $5262: $76
    inc b                                         ; $5263: $04
    ld h, l                                       ; $5264: $65
    ld a, d                                       ; $5265: $7A
    cp h                                          ; $5266: $BC
    ld d, a                                       ; $5267: $57
    ld a, h                                       ; $5268: $7C
    ld d, a                                       ; $5269: $57
    ld l, b                                       ; $526A: $68
    ld a, h                                       ; $526B: $7C
    sbc h                                         ; $526C: $9C
    ld b, a                                       ; $526D: $47
    ld h, e                                       ; $526E: $63
    rst $00                                       ; $526F: $C7
    ld [hl], e                                    ; $5270: $73
    ld h, h                                       ; $5271: $64
    sbc d                                         ; $5272: $9A
    ld d, l                                       ; $5273: $55
    ld l, [hl]                                    ; $5274: $6E
    cp h                                          ; $5275: $BC
    ld c, [hl]                                    ; $5276: $4E
    ld a, h                                       ; $5277: $7C
    or h                                          ; $5278: $B4
    ld l, h                                       ; $5279: $6C
    ld a, e                                       ; $527A: $7B
    cp h                                          ; $527B: $BC
    ld h, l                                       ; $527C: $65
    ld h, e                                       ; $527D: $63
    add hl, bc                                    ; $527E: $09
    ld a, l                                       ; $527F: $7D
    ld [hl], h                                    ; $5280: $74
    ld h, [hl]                                    ; $5281: $66
    ld d, c                                       ; $5282: $51
    ld [hl], a                                    ; $5283: $77
    inc a                                         ; $5284: $3C
    ld b, a                                       ; $5285: $47
    ld a, h                                       ; $5286: $7C
    ld a, a                                       ; $5287: $7F
    ld h, d                                       ; $5288: $62
    ld a, h                                       ; $5289: $7C
    ld [hl], h                                    ; $528A: $74
    ld d, a                                       ; $528B: $57
    ld h, d                                       ; $528C: $62
    jr jr_04F_52E6                                ; $528D: $18 $57

    ld [hl], a                                    ; $528F: $77
    ldh a, [$60]                                  ; $5290: $F0 $60
    ld a, c                                       ; $5292: $79
    cp h                                          ; $5293: $BC
    ld c, [hl]                                    ; $5294: $4E
    ld a, h                                       ; $5295: $7C
    or h                                          ; $5296: $B4
    ld l, h                                       ; $5297: $6C
    ld a, e                                       ; $5298: $7B
    cp h                                          ; $5299: $BC
    ld h, l                                       ; $529A: $65
    ld h, e                                       ; $529B: $63
    rst $28                                       ; $529C: $EF
    ld [hl], b                                    ; $529D: $70
    ld [hl], l                                    ; $529E: $75
    sbc c                                         ; $529F: $99
    ld l, e                                       ; $52A0: $6B
    ld [hl], a                                    ; $52A1: $77
    inc a                                         ; $52A2: $3C
    ld b, a                                       ; $52A3: $47
    ld a, h                                       ; $52A4: $7C
    ld a, a                                       ; $52A5: $7F
    ld h, d                                       ; $52A6: $62
    ld a, h                                       ; $52A7: $7C
    ld [hl], h                                    ; $52A8: $74
    ld d, a                                       ; $52A9: $57
    ld h, d                                       ; $52AA: $62
    dec h                                         ; $52AB: $25
    ld [hl], d                                    ; $52AC: $72
    halt                                          ; $52AD: $76
    halt                                          ; $52AE: $76
    ld a, [hl]                                    ; $52AF: $7E
    ld a, c                                       ; $52B0: $79
    cp h                                          ; $52B1: $BC
    ld c, [hl]                                    ; $52B2: $4E
    ld a, h                                       ; $52B3: $7C
    or h                                          ; $52B4: $B4
    ld l, h                                       ; $52B5: $6C
    ld a, e                                       ; $52B6: $7B
    cp h                                          ; $52B7: $BC
    ld h, l                                       ; $52B8: $65
    ld h, e                                       ; $52B9: $63
    ld c, a                                       ; $52BA: $4F
    ld e, c                                       ; $52BB: $59
    ld [hl], h                                    ; $52BC: $74
    ld hl, $7A7E                                  ; $52BD: $21 $7E $7A
    cp h                                          ; $52C0: $BC
    ld c, [hl]                                    ; $52C1: $4E
    ld a, h                                       ; $52C2: $7C
    or h                                          ; $52C3: $B4
    ld l, h                                       ; $52C4: $6C
    ld a, e                                       ; $52C5: $7B
    cp h                                          ; $52C6: $BC
    ld h, l                                       ; $52C7: $65
    ld h, e                                       ; $52C8: $63
    db $ED                                        ; $52C9: $ED
    ld a, l                                       ; $52CA: $7D
    ld h, a                                       ; $52CB: $67
    or h                                          ; $52CC: $B4
    ld a, [hl]                                    ; $52CD: $7E
    ld a, d                                       ; $52CE: $7A
    cp h                                          ; $52CF: $BC
    ld c, [hl]                                    ; $52D0: $4E
    ld a, h                                       ; $52D1: $7C
    or h                                          ; $52D2: $B4
    ld l, h                                       ; $52D3: $6C
    ld a, e                                       ; $52D4: $7B
    cp h                                          ; $52D5: $BC
    ld h, l                                       ; $52D6: $65
    ld h, e                                       ; $52D7: $63
    rla                                           ; $52D8: $17
    ld e, c                                       ; $52D9: $59
    halt                                          ; $52DA: $76
    add e                                         ; $52DB: $83
    ld c, h                                       ; $52DC: $4C
    ld a, d                                       ; $52DD: $7A
    cp h                                          ; $52DE: $BC
    ld c, [hl]                                    ; $52DF: $4E
    ld a, h                                       ; $52E0: $7C
    or h                                          ; $52E1: $B4
    ld l, h                                       ; $52E2: $6C
    ld a, e                                       ; $52E3: $7B
    cp h                                          ; $52E4: $BC
    ld h, l                                       ; $52E5: $65

jr_04F_52E6:
    ld h, e                                       ; $52E6: $63
    cpl                                           ; $52E7: $2F
    ld [hl], h                                    ; $52E8: $74
    ld a, b                                       ; $52E9: $78
    add l                                         ; $52EA: $85
    ld e, e                                       ; $52EB: $5B
    ld a, e                                       ; $52EC: $7B
    db $FC                                        ; $52ED: $FC
    ld c, e                                       ; $52EE: $4B
    ld a, h                                       ; $52EF: $7C
    sub d                                         ; $52F0: $92
    ld e, h                                       ; $52F1: $5C
    ld a, h                                       ; $52F2: $7C
    ld d, b                                       ; $52F3: $50
    halt                                          ; $52F4: $76
    ld h, d                                       ; $52F5: $62
    adc $48                                       ; $52F6: $CE $48
    ld [hl], a                                    ; $52F8: $77
    dec b                                         ; $52F9: $05
    ld [hl], a                                    ; $52FA: $77
    ld a, c                                       ; $52FB: $79
    db $FC                                        ; $52FC: $FC
    ld c, e                                       ; $52FD: $4B
    ld a, h                                       ; $52FE: $7C
    sub d                                         ; $52FF: $92
    ld e, h                                       ; $5300: $5C
    ld a, h                                       ; $5301: $7C
    ld d, b                                       ; $5302: $50
    halt                                          ; $5303: $76
    ld h, d                                       ; $5304: $62
    ld a, l                                       ; $5305: $7D
    ld b, c                                       ; $5306: $41
    ld [hl], a                                    ; $5307: $77
    or h                                          ; $5308: $B4
    ld d, h                                       ; $5309: $54
    ld a, b                                       ; $530A: $78
    cp h                                          ; $530B: $BC
    ld d, a                                       ; $530C: $57
    ld a, h                                       ; $530D: $7C
    ld d, a                                       ; $530E: $57
    ld l, b                                       ; $530F: $68
    ld a, h                                       ; $5310: $7C
    sbc h                                         ; $5311: $9C
    ld b, a                                       ; $5312: $47
    ld h, e                                       ; $5313: $63
    sbc $4F                                       ; $5314: $DE $4F
    ld [hl], d                                    ; $5316: $72
    adc a                                         ; $5317: $8F
    ld a, l                                       ; $5318: $7D
    ld a, b                                       ; $5319: $78
    cp h                                          ; $531A: $BC
    ld d, a                                       ; $531B: $57
    ld a, h                                       ; $531C: $7C
    ld d, a                                       ; $531D: $57
    ld l, b                                       ; $531E: $68
    ld a, h                                       ; $531F: $7C
    sbc h                                         ; $5320: $9C
    ld b, a                                       ; $5321: $47
    ld h, e                                       ; $5322: $63
    xor a                                         ; $5323: $AF
    ld b, d                                       ; $5324: $42
    ld [hl], d                                    ; $5325: $72
    adc d                                         ; $5326: $8A
    ld a, h                                       ; $5327: $7C
    ld a, b                                       ; $5328: $78
    cp h                                          ; $5329: $BC
    ld d, a                                       ; $532A: $57
    ld a, h                                       ; $532B: $7C
    ld d, a                                       ; $532C: $57
    ld l, b                                       ; $532D: $68
    ld a, h                                       ; $532E: $7C
    sbc h                                         ; $532F: $9C
    ld b, a                                       ; $5330: $47
    ld h, e                                       ; $5331: $63
    ld c, d                                       ; $5332: $4A
    ld [hl], a                                    ; $5333: $77
    ld l, a                                       ; $5334: $6F
    jp c, Jump_04F_786F                           ; $5335: $DA $6F $78

    cp h                                          ; $5338: $BC
    ld d, a                                       ; $5339: $57
    ld a, h                                       ; $533A: $7C
    ld d, a                                       ; $533B: $57
    ld l, b                                       ; $533C: $68
    ld a, h                                       ; $533D: $7C
    sbc h                                         ; $533E: $9C
    ld b, a                                       ; $533F: $47
    ld h, e                                       ; $5340: $63
    nop                                           ; $5341: $00
    ld b, b                                       ; $5342: $40
    ld h, a                                       ; $5343: $67
    xor [hl]                                      ; $5344: $AE
    ld a, c                                       ; $5345: $79
    ld [hl], e                                    ; $5346: $73
    cp h                                          ; $5347: $BC
    ld d, a                                       ; $5348: $57
    ld a, h                                       ; $5349: $7C
    ld d, a                                       ; $534A: $57
    ld l, b                                       ; $534B: $68
    ld a, h                                       ; $534C: $7C
    sbc h                                         ; $534D: $9C
    ld b, a                                       ; $534E: $47
    ld h, e                                       ; $534F: $63
    ld c, $61                                     ; $5350: $0E $61
    halt                                          ; $5352: $76
    ld sp, hl                                     ; $5353: $F9
    ld a, a                                       ; $5354: $7F
    ld l, a                                       ; $5355: $6F
    cp h                                          ; $5356: $BC
    ld d, a                                       ; $5357: $57
    ld a, h                                       ; $5358: $7C
    ld d, a                                       ; $5359: $57
    ld l, b                                       ; $535A: $68
    ld a, h                                       ; $535B: $7C
    sbc h                                         ; $535C: $9C
    ld b, a                                       ; $535D: $47
    ld h, e                                       ; $535E: $63
    call nc, Call_04F_6B78                        ; $535F: $D4 $78 $6B
    sbc a                                         ; $5362: $9F
    ld [hl], b                                    ; $5363: $70
    halt                                          ; $5364: $76
    cp h                                          ; $5365: $BC
    ld d, a                                       ; $5366: $57
    ld a, h                                       ; $5367: $7C
    ld d, a                                       ; $5368: $57
    ld l, b                                       ; $5369: $68
    ld a, h                                       ; $536A: $7C

Jump_04F_536B:
    sbc h                                         ; $536B: $9C
    ld b, a                                       ; $536C: $47
    ld h, e                                       ; $536D: $63
    nop                                           ; $536E: $00
    ld h, b                                       ; $536F: $60
    ld d, b                                       ; $5370: $50
    xor b                                         ; $5371: $A8
    ld d, l                                       ; $5372: $55
    ld h, l                                       ; $5373: $65
    cp h                                          ; $5374: $BC
    ld d, a                                       ; $5375: $57
    ld a, h                                       ; $5376: $7C
    ld d, a                                       ; $5377: $57
    ld l, b                                       ; $5378: $68
    ld a, h                                       ; $5379: $7C
    sbc h                                         ; $537A: $9C
    ld b, a                                       ; $537B: $47
    ld h, e                                       ; $537C: $63
    dec c                                         ; $537D: $0D
    ld c, h                                       ; $537E: $4C
    ld [hl], e                                    ; $537F: $73
    cp h                                          ; $5380: $BC
    ld [hl], d                                    ; $5381: $72
    ld a, c                                       ; $5382: $79
    cp h                                          ; $5383: $BC
    ld d, a                                       ; $5384: $57
    ld a, h                                       ; $5385: $7C
    ld d, a                                       ; $5386: $57
    ld l, b                                       ; $5387: $68
    ld a, h                                       ; $5388: $7C
    sbc h                                         ; $5389: $9C
    ld b, a                                       ; $538A: $47
    ld h, e                                       ; $538B: $63
    ld sp, $6F57                                  ; $538C: $31 $57 $6F
    ld b, e                                       ; $538F: $43
    ld [hl], l                                    ; $5390: $75
    ld a, b                                       ; $5391: $78
    cp h                                          ; $5392: $BC
    ld d, a                                       ; $5393: $57
    ld a, h                                       ; $5394: $7C
    ld d, a                                       ; $5395: $57
    ld l, b                                       ; $5396: $68
    ld a, h                                       ; $5397: $7C
    sbc h                                         ; $5398: $9C
    ld b, a                                       ; $5399: $47
    ld h, e                                       ; $539A: $63
    ld b, $54                                     ; $539B: $06 $54
    ld [hl], c                                    ; $539D: $71
    ld sp, hl                                     ; $539E: $F9
    ld a, a                                       ; $539F: $7F
    ld h, a                                       ; $53A0: $67
    cp h                                          ; $53A1: $BC
    ld d, a                                       ; $53A2: $57
    ld a, h                                       ; $53A3: $7C
    ld d, a                                       ; $53A4: $57
    ld l, b                                       ; $53A5: $68
    ld a, h                                       ; $53A6: $7C
    sbc h                                         ; $53A7: $9C
    ld b, a                                       ; $53A8: $47
    ld h, e                                       ; $53A9: $63
    ccf                                           ; $53AA: $3F
    ld e, [hl]                                    ; $53AB: $5E
    ld [hl], b                                    ; $53AC: $70
    ld b, $4B                                     ; $53AD: $06 $4B
    ld a, c                                       ; $53AF: $79
    cp h                                          ; $53B0: $BC
    ld d, a                                       ; $53B1: $57
    ld a, h                                       ; $53B2: $7C
    ld d, a                                       ; $53B3: $57
    ld l, b                                       ; $53B4: $68
    ld a, h                                       ; $53B5: $7C
    sbc h                                         ; $53B6: $9C
    ld b, a                                       ; $53B7: $47
    ld h, e                                       ; $53B8: $63
    ld e, c                                       ; $53B9: $59
    ld b, l                                       ; $53BA: $45
    ld [hl], d                                    ; $53BB: $72
    jr z, jr_04F_542D                             ; $53BC: $28 $6F

    ld a, d                                       ; $53BE: $7A
    cp h                                          ; $53BF: $BC
    ld d, a                                       ; $53C0: $57
    ld a, h                                       ; $53C1: $7C
    ld d, a                                       ; $53C2: $57
    ld l, b                                       ; $53C3: $68
    ld a, h                                       ; $53C4: $7C
    sbc h                                         ; $53C5: $9C
    ld b, a                                       ; $53C6: $47
    ld h, e                                       ; $53C7: $63
    xor d                                         ; $53C8: $AA
    ld c, c                                       ; $53C9: $49
    ld [hl], e                                    ; $53CA: $73
    ld e, b                                       ; $53CB: $58
    ld d, d                                       ; $53CC: $52
    ld a, b                                       ; $53CD: $78
    cp h                                          ; $53CE: $BC
    ld d, a                                       ; $53CF: $57
    ld a, h                                       ; $53D0: $7C
    ld d, a                                       ; $53D1: $57
    ld l, b                                       ; $53D2: $68
    ld a, h                                       ; $53D3: $7C
    sbc h                                         ; $53D4: $9C
    ld b, a                                       ; $53D5: $47
    ld h, e                                       ; $53D6: $63
    or e                                          ; $53D7: $B3
    ld [hl], a                                    ; $53D8: $77
    ld l, [hl]                                    ; $53D9: $6E
    ld h, c                                       ; $53DA: $61
    ld h, c                                       ; $53DB: $61
    ld a, b                                       ; $53DC: $78
    inc a                                         ; $53DD: $3C
    ld b, a                                       ; $53DE: $47
    ld a, h                                       ; $53DF: $7C
    ld a, a                                       ; $53E0: $7F
    ld h, d                                       ; $53E1: $62
    ld a, h                                       ; $53E2: $7C
    ld [hl], h                                    ; $53E3: $74
    ld d, a                                       ; $53E4: $57
    ld h, d                                       ; $53E5: $62
    nop                                           ; $53E6: $00
    ld b, b                                       ; $53E7: $40
    ld a, b                                       ; $53E8: $78
    ld a, d                                       ; $53E9: $7A
    ld d, e                                       ; $53EA: $53
    ld a, e                                       ; $53EB: $7B
    cp h                                          ; $53EC: $BC
    ld d, a                                       ; $53ED: $57
    ld a, h                                       ; $53EE: $7C
    ld d, a                                       ; $53EF: $57
    ld l, b                                       ; $53F0: $68
    ld a, h                                       ; $53F1: $7C
    sbc h                                         ; $53F2: $9C
    ld b, a                                       ; $53F3: $47
    ld h, e                                       ; $53F4: $63
    nop                                           ; $53F5: $00
    ld d, b                                       ; $53F6: $50
    ld l, l                                       ; $53F7: $6D
    ld l, c                                       ; $53F8: $69
    ld [hl], h                                    ; $53F9: $74
    ld [hl], l                                    ; $53FA: $75
    ld a, h                                       ; $53FB: $7C
    ld c, l                                       ; $53FC: $4D
    ld a, h                                       ; $53FD: $7C
    adc a                                         ; $53FE: $8F
    ld h, h                                       ; $53FF: $64
    ld a, h                                       ; $5400: $7C
    nop                                           ; $5401: $00
    ld b, b                                       ; $5402: $40
    ld h, h                                       ; $5403: $64
    xor h                                         ; $5404: $AC
    ld d, l                                       ; $5405: $55
    ld [hl], a                                    ; $5406: $77
    jp nc, $7B42                                  ; $5407: $D2 $42 $7B

    ld a, h                                       ; $540A: $7C
    ld c, l                                       ; $540B: $4D
    ld a, h                                       ; $540C: $7C
    adc a                                         ; $540D: $8F
    ld h, h                                       ; $540E: $64
    ld a, h                                       ; $540F: $7C
    nop                                           ; $5410: $00
    ld b, b                                       ; $5411: $40
    ld h, h                                       ; $5412: $64
    ld c, $76                                     ; $5413: $0E $76
    ld [hl], a                                    ; $5415: $77
    ei                                            ; $5416: $FB
    ld a, h                                       ; $5417: $7C
    ld a, d                                       ; $5418: $7A
    ld a, h                                       ; $5419: $7C
    ld c, l                                       ; $541A: $4D
    ld a, h                                       ; $541B: $7C
    adc a                                         ; $541C: $8F
    ld h, h                                       ; $541D: $64
    ld a, h                                       ; $541E: $7C
    nop                                           ; $541F: $00
    ld b, b                                       ; $5420: $40
    ld h, h                                       ; $5421: $64
    ld sp, $7762                                  ; $5422: $31 $62 $77
    nop                                           ; $5425: $00
    ld b, b                                       ; $5426: $40
    ld a, e                                       ; $5427: $7B
    ld a, h                                       ; $5428: $7C
    ld c, l                                       ; $5429: $4D
    ld a, h                                       ; $542A: $7C
    adc a                                         ; $542B: $8F
    ld h, h                                       ; $542C: $64

jr_04F_542D:
    ld a, h                                       ; $542D: $7C
    nop                                           ; $542E: $00
    ld b, b                                       ; $542F: $40
    ld h, h                                       ; $5430: $64
    ld [hl], c                                    ; $5431: $71
    ld l, e                                       ; $5432: $6B
    ld a, e                                       ; $5433: $7B
    ld d, h                                       ; $5434: $54
    ld h, b                                       ; $5435: $60
    ld a, h                                       ; $5436: $7C
    ld a, h                                       ; $5437: $7C
    ld c, l                                       ; $5438: $4D
    ld a, h                                       ; $5439: $7C
    adc a                                         ; $543A: $8F
    ld h, h                                       ; $543B: $64
    ld a, h                                       ; $543C: $7C
    nop                                           ; $543D: $00
    ld b, b                                       ; $543E: $40
    ld h, h                                       ; $543F: $64
    ld [hl], a                                    ; $5440: $77
    ld l, d                                       ; $5441: $6A
    halt                                          ; $5442: $76
    or c                                          ; $5443: $B1
    ld [hl], a                                    ; $5444: $77
    ld a, d                                       ; $5445: $7A
    ld a, h                                       ; $5446: $7C
    ld c, l                                       ; $5447: $4D
    ld a, h                                       ; $5448: $7C
    adc a                                         ; $5449: $8F
    ld h, h                                       ; $544A: $64
    ld a, h                                       ; $544B: $7C
    nop                                           ; $544C: $00
    ld b, b                                       ; $544D: $40
    ld h, h                                       ; $544E: $64
    ld l, a                                       ; $544F: $6F
    ld b, e                                       ; $5450: $43
    halt                                          ; $5451: $76
    cp c                                          ; $5452: $B9
    ld h, c                                       ; $5453: $61
    ld a, d                                       ; $5454: $7A
    ld a, h                                       ; $5455: $7C
    ld c, l                                       ; $5456: $4D
    ld a, h                                       ; $5457: $7C
    adc a                                         ; $5458: $8F
    ld h, h                                       ; $5459: $64
    ld a, h                                       ; $545A: $7C
    nop                                           ; $545B: $00
    ld b, b                                       ; $545C: $40
    ld h, h                                       ; $545D: $64
    adc d                                         ; $545E: $8A
    ld l, [hl]                                    ; $545F: $6E
    ld a, d                                       ; $5460: $7A
    add hl, hl                                    ; $5461: $29
    ld a, a                                       ; $5462: $7F
    ld a, e                                       ; $5463: $7B
    ld a, h                                       ; $5464: $7C
    ld c, l                                       ; $5465: $4D
    ld a, h                                       ; $5466: $7C
    adc a                                         ; $5467: $8F
    ld h, h                                       ; $5468: $64
    ld a, h                                       ; $5469: $7C
    nop                                           ; $546A: $00
    ld b, b                                       ; $546B: $40
    ld h, h                                       ; $546C: $64
    jp $784E                                      ; $546D: $C3 $4E $78


    rst $18                                       ; $5470: $DF
    ld [hl], c                                    ; $5471: $71
    ld a, e                                       ; $5472: $7B
    ld a, h                                       ; $5473: $7C
    ld c, l                                       ; $5474: $4D
    ld a, h                                       ; $5475: $7C
    adc a                                         ; $5476: $8F
    ld h, h                                       ; $5477: $64
    ld a, h                                       ; $5478: $7C
    nop                                           ; $5479: $00
    ld b, b                                       ; $547A: $40
    ld h, h                                       ; $547B: $64
    jr nc, jr_04F_54CF                            ; $547C: $30 $51

    ld [hl], c                                    ; $547E: $71
    ld bc, $7845                                  ; $547F: $01 $45 $78
    ld a, h                                       ; $5482: $7C
    ld c, l                                       ; $5483: $4D
    ld a, h                                       ; $5484: $7C
    adc a                                         ; $5485: $8F
    ld h, h                                       ; $5486: $64
    ld a, h                                       ; $5487: $7C
    nop                                           ; $5488: $00
    ld b, b                                       ; $5489: $40
    ld h, h                                       ; $548A: $64
    dec h                                         ; $548B: $25
    ld b, h                                       ; $548C: $44
    ld l, h                                       ; $548D: $6C
    xor e                                         ; $548E: $AB
    ld e, e                                       ; $548F: $5B
    ld a, b                                       ; $5490: $78
    ld a, h                                       ; $5491: $7C
    ld c, l                                       ; $5492: $4D
    ld a, h                                       ; $5493: $7C
    adc a                                         ; $5494: $8F
    ld h, h                                       ; $5495: $64
    ld a, h                                       ; $5496: $7C
    nop                                           ; $5497: $00
    ld b, b                                       ; $5498: $40
    ld h, h                                       ; $5499: $64
    or c                                          ; $549A: $B1
    ld l, e                                       ; $549B: $6B
    ld [hl], l                                    ; $549C: $75
    ld [hl], e                                    ; $549D: $73
    ld a, a                                       ; $549E: $7F
    ld [hl], d                                    ; $549F: $72
    ld a, h                                       ; $54A0: $7C
    ld c, l                                       ; $54A1: $4D
    ld a, h                                       ; $54A2: $7C
    adc a                                         ; $54A3: $8F
    ld h, h                                       ; $54A4: $64
    ld a, h                                       ; $54A5: $7C
    nop                                           ; $54A6: $00
    ld b, b                                       ; $54A7: $40
    ld h, h                                       ; $54A8: $64
    ld a, l                                       ; $54A9: $7D
    ld a, l                                       ; $54AA: $7D
    ld l, a                                       ; $54AB: $6F
    or b                                          ; $54AC: $B0
    ld d, l                                       ; $54AD: $55
    ld a, c                                       ; $54AE: $79
    ld a, h                                       ; $54AF: $7C
    ld c, l                                       ; $54B0: $4D
    ld a, h                                       ; $54B1: $7C
    adc a                                         ; $54B2: $8F
    ld h, h                                       ; $54B3: $64
    ld a, h                                       ; $54B4: $7C
    nop                                           ; $54B5: $00
    ld b, b                                       ; $54B6: $40
    ld h, h                                       ; $54B7: $64
    ld d, $49                                     ; $54B8: $16 $49
    ld l, e                                       ; $54BA: $6B
    or e                                          ; $54BB: $B3
    ld a, h                                       ; $54BC: $7C
    halt                                          ; $54BD: $76
    ld a, h                                       ; $54BE: $7C
    ld c, l                                       ; $54BF: $4D
    ld a, h                                       ; $54C0: $7C
    adc a                                         ; $54C1: $8F
    ld h, h                                       ; $54C2: $64
    ld a, h                                       ; $54C3: $7C
    nop                                           ; $54C4: $00
    ld b, b                                       ; $54C5: $40
    ld h, h                                       ; $54C6: $64
    ld b, e                                       ; $54C7: $43
    ld d, l                                       ; $54C8: $55
    ld [hl], h                                    ; $54C9: $74
    rst $08                                       ; $54CA: $CF
    ld d, [hl]                                    ; $54CB: $56
    ld a, d                                       ; $54CC: $7A
    ld a, h                                       ; $54CD: $7C
    ld c, l                                       ; $54CE: $4D

jr_04F_54CF:
    ld a, h                                       ; $54CF: $7C
    adc a                                         ; $54D0: $8F
    ld h, h                                       ; $54D1: $64
    ld a, h                                       ; $54D2: $7C
    nop                                           ; $54D3: $00
    ld b, b                                       ; $54D4: $40
    ld h, h                                       ; $54D5: $64
    cpl                                           ; $54D6: $2F
    ld d, [hl]                                    ; $54D7: $56
    ld l, c                                       ; $54D8: $69
    dec [hl]                                      ; $54D9: $35
    ld h, h                                       ; $54DA: $64
    halt                                          ; $54DB: $76
    ld a, h                                       ; $54DC: $7C
    ld c, l                                       ; $54DD: $4D
    ld a, h                                       ; $54DE: $7C
    adc a                                         ; $54DF: $8F
    ld h, h                                       ; $54E0: $64
    ld a, h                                       ; $54E1: $7C
    nop                                           ; $54E2: $00
    ld b, b                                       ; $54E3: $40
    ld h, h                                       ; $54E4: $64
    ld l, d                                       ; $54E5: $6A
    ld d, [hl]                                    ; $54E6: $56
    ld [hl], l                                    ; $54E7: $75
    jp z, Jump_04F_7B4E                           ; $54E8: $CA $4E $7B

    ld a, h                                       ; $54EB: $7C
    ld c, l                                       ; $54EC: $4D
    ld a, h                                       ; $54ED: $7C
    adc a                                         ; $54EE: $8F
    ld h, h                                       ; $54EF: $64
    ld a, h                                       ; $54F0: $7C
    nop                                           ; $54F1: $00
    ld b, b                                       ; $54F2: $40
    ld h, h                                       ; $54F3: $64
    sbc d                                         ; $54F4: $9A
    ld [hl], d                                    ; $54F5: $72
    ld [hl], c                                    ; $54F6: $71
    db $DD                                        ; $54F7: $DD
    ld [hl], a                                    ; $54F8: $77
    ld a, c                                       ; $54F9: $79
    ld a, h                                       ; $54FA: $7C
    ld c, l                                       ; $54FB: $4D
    ld a, h                                       ; $54FC: $7C
    adc a                                         ; $54FD: $8F
    ld h, h                                       ; $54FE: $64
    ld a, h                                       ; $54FF: $7C
    nop                                           ; $5500: $00
    ld b, b                                       ; $5501: $40
    ld h, h                                       ; $5502: $64
    rrca                                          ; $5503: $0F
    ld c, a                                       ; $5504: $4F
    ld [hl], l                                    ; $5505: $75
    ld d, d                                       ; $5506: $52
    ld h, [hl]                                    ; $5507: $66
    ld a, d                                       ; $5508: $7A
    ld a, h                                       ; $5509: $7C
    ld c, l                                       ; $550A: $4D
    ld a, h                                       ; $550B: $7C
    adc a                                         ; $550C: $8F
    ld h, h                                       ; $550D: $64
    ld a, h                                       ; $550E: $7C
    nop                                           ; $550F: $00
    ld b, b                                       ; $5510: $40
    ld h, h                                       ; $5511: $64
    sbc [hl]                                      ; $5512: $9E
    ld e, l                                       ; $5513: $5D
    ld [hl], l                                    ; $5514: $75
    sbc l                                         ; $5515: $9D
    ld h, a                                       ; $5516: $67
    ld a, d                                       ; $5517: $7A
    ld a, h                                       ; $5518: $7C
    ld c, l                                       ; $5519: $4D
    ld a, h                                       ; $551A: $7C
    adc a                                         ; $551B: $8F
    ld h, h                                       ; $551C: $64
    ld a, h                                       ; $551D: $7C
    nop                                           ; $551E: $00
    ld b, b                                       ; $551F: $40
    ld h, h                                       ; $5520: $64
    db $EB                                        ; $5521: $EB
    ld d, e                                       ; $5522: $53
    ld l, a                                       ; $5523: $6F
    ld sp, hl                                     ; $5524: $F9
    ld c, a                                       ; $5525: $4F
    ld [hl], a                                    ; $5526: $77
    ld a, h                                       ; $5527: $7C
    ld c, l                                       ; $5528: $4D
    ld a, h                                       ; $5529: $7C
    adc a                                         ; $552A: $8F
    ld h, h                                       ; $552B: $64
    ld a, h                                       ; $552C: $7C
    nop                                           ; $552D: $00
    ld b, b                                       ; $552E: $40
    ld h, h                                       ; $552F: $64
    ld a, e                                       ; $5530: $7B
    ld c, e                                       ; $5531: $4B
    ld [hl], c                                    ; $5532: $71
    adc $40                                       ; $5533: $CE $40
    ld a, d                                       ; $5535: $7A
    ld a, h                                       ; $5536: $7C
    ld c, l                                       ; $5537: $4D
    ld a, h                                       ; $5538: $7C
    adc a                                         ; $5539: $8F
    ld h, h                                       ; $553A: $64
    ld a, h                                       ; $553B: $7C
    nop                                           ; $553C: $00
    ld b, b                                       ; $553D: $40
    ld h, h                                       ; $553E: $64
    jp nc, Jump_04F_726B                          ; $553F: $D2 $6B $72

    ld a, [c]                                     ; $5542: $F2
    ld a, c                                       ; $5543: $79
    ld [hl], a                                    ; $5544: $77
    ld a, h                                       ; $5545: $7C
    ld c, l                                       ; $5546: $4D
    ld a, h                                       ; $5547: $7C
    adc a                                         ; $5548: $8F
    ld h, h                                       ; $5549: $64
    ld a, h                                       ; $554A: $7C
    nop                                           ; $554B: $00
    ld b, b                                       ; $554C: $40
    ld h, h                                       ; $554D: $64
    push de                                       ; $554E: $D5
    ld e, e                                       ; $554F: $5B
    ld [hl], l                                    ; $5550: $75
    ld l, b                                       ; $5551: $68
    ld a, h                                       ; $5552: $7C
    ld a, d                                       ; $5553: $7A
    ld a, h                                       ; $5554: $7C
    ld c, l                                       ; $5555: $4D
    ld a, h                                       ; $5556: $7C
    adc a                                         ; $5557: $8F
    ld h, h                                       ; $5558: $64
    ld a, h                                       ; $5559: $7C
    nop                                           ; $555A: $00
    ld b, b                                       ; $555B: $40
    ld h, h                                       ; $555C: $64
    adc l                                         ; $555D: $8D
    ld h, e                                       ; $555E: $63
    ld [hl], a                                    ; $555F: $77
    rlca                                          ; $5560: $07
    ld d, a                                       ; $5561: $57
    ld a, e                                       ; $5562: $7B
    ld a, h                                       ; $5563: $7C
    ld c, l                                       ; $5564: $4D
    ld a, h                                       ; $5565: $7C
    adc a                                         ; $5566: $8F
    ld h, h                                       ; $5567: $64
    ld a, h                                       ; $5568: $7C
    nop                                           ; $5569: $00
    ld b, b                                       ; $556A: $40
    ld h, h                                       ; $556B: $64
    ld c, c                                       ; $556C: $49
    ld e, h                                       ; $556D: $5C

jr_04F_556E:
    halt                                          ; $556E: $76
    ld a, [hl-]                                   ; $556F: $3A
    ld a, d                                       ; $5570: $7A
    ld a, e                                       ; $5571: $7B
    ld a, h                                       ; $5572: $7C
    ld c, l                                       ; $5573: $4D
    ld a, h                                       ; $5574: $7C
    adc a                                         ; $5575: $8F
    ld h, h                                       ; $5576: $64
    ld a, h                                       ; $5577: $7C
    nop                                           ; $5578: $00
    ld b, b                                       ; $5579: $40
    ld h, h                                       ; $557A: $64
    push hl                                       ; $557B: $E5
    ld b, l                                       ; $557C: $45
    ld [hl], a                                    ; $557D: $77
    ld l, e                                       ; $557E: $6B
    ld e, [hl]                                    ; $557F: $5E
    ld a, e                                       ; $5580: $7B
    ld a, h                                       ; $5581: $7C
    ld c, l                                       ; $5582: $4D
    ld a, h                                       ; $5583: $7C
    adc a                                         ; $5584: $8F
    ld h, h                                       ; $5585: $64
    ld a, h                                       ; $5586: $7C
    nop                                           ; $5587: $00
    ld b, b                                       ; $5588: $40
    ld h, h                                       ; $5589: $64
    ld b, b                                       ; $558A: $40
    ld b, a                                       ; $558B: $47
    ld a, e                                       ; $558C: $7B
    and d                                         ; $558D: $A2
    ld l, c                                       ; $558E: $69
    ld a, h                                       ; $558F: $7C
    inc a                                         ; $5590: $3C
    ld c, l                                       ; $5591: $4D
    ld a, h                                       ; $5592: $7C
    and d                                         ; $5593: $A2
    ld l, h                                       ; $5594: $6C
    ld a, h                                       ; $5595: $7C
    ld c, a                                       ; $5596: $4F
    ld c, l                                       ; $5597: $4D
    ld l, a                                       ; $5598: $6F
    or c                                          ; $5599: $B1
    ld c, e                                       ; $559A: $4B
    ld [hl], a                                    ; $559B: $77
    add h                                         ; $559C: $84
    ld l, h                                       ; $559D: $6C
    ld a, h                                       ; $559E: $7C
    nop                                           ; $559F: $00
    nop                                           ; $55A0: $00
    ld bc, $0200                                  ; $55A1: $01 $00 $02
    ld bc, $0103                                  ; $55A4: $01 $03 $01
    dec b                                         ; $55A7: $05
    inc bc                                        ; $55A8: $03
    ld a, [hl-]                                   ; $55A9: $3A
    rlca                                          ; $55AA: $07
    ld b, $07                                     ; $55AB: $06 $07
    ld b, c                                       ; $55AD: $41
    ld c, $C0                                     ; $55AE: $0E $C0
    ld h, b                                       ; $55B0: $60
    ret nz                                        ; $55B1: $C0

    ldh [$A0], a                                  ; $55B2: $E0 $A0
    ret nz                                        ; $55B4: $C0

    ret nz                                        ; $55B5: $C0

    add b                                         ; $55B6: $80
    nop                                           ; $55B7: $00
    add b                                         ; $55B8: $80
    add b                                         ; $55B9: $80
    nop                                           ; $55BA: $00
    nop                                           ; $55BB: $00
    nop                                           ; $55BC: $00
    nop                                           ; $55BD: $00
    nop                                           ; $55BE: $00
    dec a                                         ; $55BF: $3D
    ld c, $32                                     ; $55C0: $0E $32
    inc e                                         ; $55C2: $1C
    ld [hl], h                                    ; $55C3: $74
    jr c, jr_04F_556E                             ; $55C4: $38 $A8

    ld [hl], b                                    ; $55C6: $70
    ret nc                                        ; $55C7: $D0

    ld h, b                                       ; $55C8: $60
    ret nc                                        ; $55C9: $D0

    ld h, b                                       ; $55CA: $60
    adc $70                                       ; $55CB: $CE $70
    ld a, c                                       ; $55CD: $79
    ld a, $17                                     ; $55CE: $3E $17
    rrca                                          ; $55D0: $0F
    ld b, $01                                     ; $55D1: $06 $01
    ld bc, $0000                                  ; $55D3: $01 $00 $00
    nop                                           ; $55D6: $00
    nop                                           ; $55D7: $00
    nop                                           ; $55D8: $00
    nop                                           ; $55D9: $00
    nop                                           ; $55DA: $00
    nop                                           ; $55DB: $00
    nop                                           ; $55DC: $00
    nop                                           ; $55DD: $00
    nop                                           ; $55DE: $00
    rst $38                                       ; $55DF: $FF
    cp $8A                                        ; $55E0: $FE $8A
    rst $30                                       ; $55E2: $F7
    push af                                       ; $55E3: $F5
    inc bc                                        ; $55E4: $03
    ld bc, $0000                                  ; $55E5: $01 $00 $00
    nop                                           ; $55E8: $00
    nop                                           ; $55E9: $00
    nop                                           ; $55EA: $00
    nop                                           ; $55EB: $00
    nop                                           ; $55EC: $00
    nop                                           ; $55ED: $00
    nop                                           ; $55EE: $00
    nop                                           ; $55EF: $00
    nop                                           ; $55F0: $00
    add b                                         ; $55F1: $80
    nop                                           ; $55F2: $00
    rst $28                                       ; $55F3: $EF
    rst $18                                       ; $55F4: $DF
    ld [hl], a                                    ; $55F5: $77
    rst $38                                       ; $55F6: $FF
    add h                                         ; $55F7: $84
    ld a, e                                       ; $55F8: $7B
    jr nz, jr_04F_55FB                            ; $55F9: $20 $00

jr_04F_55FB:
    nop                                           ; $55FB: $00
    nop                                           ; $55FC: $00
    nop                                           ; $55FD: $00
    nop                                           ; $55FE: $00
    nop                                           ; $55FF: $00
    nop                                           ; $5600: $00
    ld h, b                                       ; $5601: $60
    nop                                           ; $5602: $00
    or $F8                                        ; $5603: $F6 $F8
    cp $FF                                        ; $5605: $FE $FF
    ld c, e                                       ; $5607: $4B
    or a                                          ; $5608: $B7
    dec c                                         ; $5609: $0D
    inc bc                                        ; $560A: $03
    ld [bc], a                                    ; $560B: $02
    ld bc, $0001                                  ; $560C: $01 $01 $00

jr_04F_560F:
    nop                                           ; $560F: $00
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    nop                                           ; $5613: $00
    nop                                           ; $5614: $00
    nop                                           ; $5615: $00
    nop                                           ; $5616: $00
    ret nz                                        ; $5617: $C0

    add b                                         ; $5618: $80
    ld b, b                                       ; $5619: $40
    ret nz                                        ; $561A: $C0

    ld h, b                                       ; $561B: $60
    ret nz                                        ; $561C: $C0

    jr nz, jr_04F_560F                            ; $561D: $20 $F0

    sub b                                         ; $561F: $90
    ld a, b                                       ; $5620: $78
    ld e, b                                       ; $5621: $58
    jr c, @+$30                                   ; $5622: $38 $2E

    jr jr_04F_563A                                ; $5624: $18 $14

    ld c, $0D                                     ; $5626: $0E $0D
    ld b, $1D                                     ; $5628: $06 $1D
    ld b, $7E                                     ; $562A: $06 $7E
    jr @-$0E                                      ; $562C: $18 $F0

    ldh [rTAC], a                                 ; $562E: $E0 $07
    rlca                                          ; $5630: $07
    ld [$0B0F], sp                                ; $5631: $08 $0F $0B
    inc e                                         ; $5634: $1C
    inc a                                         ; $5635: $3C
    db $10                                        ; $5636: $10
    jr z, jr_04F_5651                             ; $5637: $28 $18

    inc l                                         ; $5639: $2C

jr_04F_563A:
    jr jr_04F_5656                                ; $563A: $18 $1A

    inc c                                         ; $563C: $0C
    ld b, $0C                                     ; $563D: $06 $0C
    ld b, $0C                                     ; $563F: $06 $0C
    ld d, $0C                                     ; $5641: $16 $0C
    inc e                                         ; $5643: $1C
    inc c                                         ; $5644: $0C
    ld e, $0C                                     ; $5645: $1E $0C
    ld b, $0C                                     ; $5647: $06 $0C
    ld c, $04                                     ; $5649: $0E $04
    rrca                                          ; $564B: $0F
    ld b, $03                                     ; $564C: $06 $03
    ld b, $03                                     ; $564E: $06 $03
    rlca                                          ; $5650: $07

jr_04F_5651:
    ld [$0A07], sp                                ; $5651: $08 $07 $0A
    rlca                                          ; $5654: $07
    inc b                                         ; $5655: $04

jr_04F_5656:
    inc bc                                        ; $5656: $03
    inc bc                                        ; $5657: $03
    nop                                           ; $5658: $00
    nop                                           ; $5659: $00
    nop                                           ; $565A: $00
    nop                                           ; $565B: $00
    nop                                           ; $565C: $00
    nop                                           ; $565D: $00
    nop                                           ; $565E: $00
    nop                                           ; $565F: $00
    add b                                         ; $5660: $80

jr_04F_5661:
    ldh [rSVBK], a                                ; $5661: $E0 $70
    jr jr_04F_5661                                ; $5663: $18 $FC

    and a                                         ; $5665: $A7
    cp $E1                                        ; $5666: $FE $E1
    rra                                           ; $5668: $1F
    db $10                                        ; $5669: $10
    rrca                                          ; $566A: $0F
    rrca                                          ; $566B: $0F
    nop                                           ; $566C: $00
    nop                                           ; $566D: $00
    nop                                           ; $566E: $00
    nop                                           ; $566F: $00
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    nop                                           ; $5672: $00
    nop                                           ; $5673: $00
    nop                                           ; $5674: $00
    nop                                           ; $5675: $00
    nop                                           ; $5676: $00
    add b                                         ; $5677: $80
    nop                                           ; $5678: $00
    ret nz                                        ; $5679: $C0

    add b                                         ; $567A: $80
    and b                                         ; $567B: $A0
    ret nz                                        ; $567C: $C0

    ret nc                                        ; $567D: $D0

    ld h, b                                       ; $567E: $60
    jr nz, jr_04F_56F1                            ; $567F: $20 $70

    jr z, @+$32                                   ; $5681: $28 $30

    db $10                                        ; $5683: $10
    jr c, jr_04F_56BA                             ; $5684: $38 $34

    jr @+$36                                      ; $5686: $18 $34

    jr @+$26                                      ; $5688: $18 $24

    jr jr_04F_56A2                                ; $568A: $18 $16

    ld [$000C], sp                                ; $568C: $08 $0C $00
    inc d                                         ; $568F: $14
    ld [$060C], sp                                ; $5690: $08 $0C $06
    ld [bc], a                                    ; $5693: $02
    ld b, $06                                     ; $5694: $06 $06
    ld [bc], a                                    ; $5696: $02
    ld [bc], a                                    ; $5697: $02
    ld [bc], a                                    ; $5698: $02
    rlca                                          ; $5699: $07
    ld [bc], a                                    ; $569A: $02
    ld b, $02                                     ; $569B: $06 $02
    ld [bc], a                                    ; $569D: $02
    ld b, $0D                                     ; $569E: $06 $0D
    ld b, $1A                                     ; $56A0: $06 $1A

jr_04F_56A2:
    inc c                                         ; $56A2: $0C
    jr @+$0E                                      ; $56A3: $18 $0C

    db $10                                        ; $56A5: $10
    jr @+$32                                      ; $56A6: $18 $30

    db $10                                        ; $56A8: $10
    ld [hl], b                                    ; $56A9: $70
    nop                                           ; $56AA: $00
    jr nc, jr_04F_570D                            ; $56AB: $30 $60

    ldh [$60], a                                  ; $56AD: $E0 $60
    ld bc, $0000                                  ; $56AF: $01 $00 $00
    ld bc, $0100                                  ; $56B2: $01 $00 $01
    ld bc, $0201                                  ; $56B5: $01 $01 $02
    nop                                           ; $56B8: $00
    nop                                           ; $56B9: $00

jr_04F_56BA:
    ld [bc], a                                    ; $56BA: $02
    ld b, $00                                     ; $56BB: $06 $00
    inc b                                         ; $56BD: $04
    ld [bc], a                                    ; $56BE: $02
    ld b, $04                                     ; $56BF: $06 $04
    inc d                                         ; $56C1: $14
    ld [$100C], sp                                ; $56C2: $08 $0C $10
    jr jr_04F_56D7                                ; $56C5: $18 $10

    ld a, b                                       ; $56C7: $78
    db $10                                        ; $56C8: $10
    ld [hl], b                                    ; $56C9: $70
    db $10                                        ; $56CA: $10
    ld b, b                                       ; $56CB: $40
    jr nc, jr_04F_56EE                            ; $56CC: $30 $20

    ld h, b                                       ; $56CE: $60
    nop                                           ; $56CF: $00
    ld h, b                                       ; $56D0: $60
    ld b, b                                       ; $56D1: $40
    ld b, b                                       ; $56D2: $40
    ret nz                                        ; $56D3: $C0

    ld b, b                                       ; $56D4: $40
    add b                                         ; $56D5: $80
    ld h, b                                       ; $56D6: $60

jr_04F_56D7:
    ldh a, [rNR41]                                ; $56D7: $F0 $20
    ret c                                         ; $56D9: $D8

    jr nc, @+$6A                                  ; $56DA: $30 $68

    jr jr_04F_56A2                                ; $56DC: $18 $C4

    ld [$0684], sp                                ; $56DE: $08 $84 $06
    ld a, a                                       ; $56E1: $7F
    ld [bc], a                                    ; $56E2: $02
    ld bc, $0002                                  ; $56E3: $01 $02 $00
    ld bc, $0000                                  ; $56E6: $01 $00 $00
    nop                                           ; $56E9: $00
    nop                                           ; $56EA: $00
    nop                                           ; $56EB: $00
    nop                                           ; $56EC: $00
    nop                                           ; $56ED: $00

jr_04F_56EE:
    nop                                           ; $56EE: $00
    nop                                           ; $56EF: $00
    nop                                           ; $56F0: $00

jr_04F_56F1:
    ret nz                                        ; $56F1: $C0

    nop                                           ; $56F2: $00
    stop                                          ; $56F3: $10 $00
    ldh a, [rP1]                                  ; $56F5: $F0 $00
    inc b                                         ; $56F7: $04
    ld hl, sp+$60                                 ; $56F8: $F8 $60
    rlca                                          ; $56FA: $07
    dec e                                         ; $56FB: $1D
    ld [bc], a                                    ; $56FC: $02
    nop                                           ; $56FD: $00
    nop                                           ; $56FE: $00
    nop                                           ; $56FF: $00
    nop                                           ; $5700: $00
    nop                                           ; $5701: $00
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    nop                                           ; $5704: $00
    nop                                           ; $5705: $00
    nop                                           ; $5706: $00
    nop                                           ; $5707: $00
    nop                                           ; $5708: $00
    nop                                           ; $5709: $00
    add b                                         ; $570A: $80
    ld h, b                                       ; $570B: $60
    ld b, b                                       ; $570C: $40

jr_04F_570D:
    or b                                          ; $570D: $B0
    ld h, b                                       ; $570E: $60
    jr nc, jr_04F_5729                            ; $570F: $30 $18

    ld [$0E0C], sp                                ; $5711: $08 $0C $0E
    inc b                                         ; $5714: $04
    ld [bc], a                                    ; $5715: $02
    ld b, $01                                     ; $5716: $06 $01
    ld [bc], a                                    ; $5718: $02
    ld bc, $0001                                  ; $5719: $01 $01 $00
    nop                                           ; $571C: $00
    nop                                           ; $571D: $00
    nop                                           ; $571E: $00
    ld b, b                                       ; $571F: $40
    ld h, b                                       ; $5720: $60
    ld h, b                                       ; $5721: $60
    jr nz, jr_04F_5724                            ; $5722: $20 $00

jr_04F_5724:
    jr nc, jr_04F_574E                            ; $5724: $30 $28

    db $10                                        ; $5726: $10
    jr c, jr_04F_5729                             ; $5727: $38 $00

jr_04F_5729:
    nop                                           ; $5729: $00
    nop                                           ; $572A: $00
    inc b                                         ; $572B: $04
    nop                                           ; $572C: $00
    nop                                           ; $572D: $00
    nop                                           ; $572E: $00
    nop                                           ; $572F: $00
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    nop                                           ; $5732: $00
    nop                                           ; $5733: $00
    nop                                           ; $5734: $00
    inc bc                                        ; $5735: $03
    nop                                           ; $5736: $00
    inc b                                         ; $5737: $04
    nop                                           ; $5738: $00
    nop                                           ; $5739: $00
    ld [$0010], sp                                ; $573A: $08 $10 $00
    jr nz, jr_04F_573F                            ; $573D: $20 $00

jr_04F_573F:
    ldh [rP1], a                                  ; $573F: $E0 $00
    ldh [rP1], a                                  ; $5741: $E0 $00
    jr nz, @+$42                                  ; $5743: $20 $40

    jr nz, jr_04F_5747                            ; $5745: $20 $00

jr_04F_5747:
    jr nc, jr_04F_5769                            ; $5747: $30 $20

    ld [$0810], sp                                ; $5749: $08 $10 $08
    nop                                           ; $574C: $00
    inc b                                         ; $574D: $04

jr_04F_574E:
    nop                                           ; $574E: $00
    nop                                           ; $574F: $00
    inc b                                         ; $5750: $04
    ld [bc], a                                    ; $5751: $02
    nop                                           ; $5752: $00
    inc bc                                        ; $5753: $03
    nop                                           ; $5754: $00
    ld bc, $0102                                  ; $5755: $01 $02 $01
    ld [bc], a                                    ; $5758: $02
    inc bc                                        ; $5759: $03
    nop                                           ; $575A: $00
    ld [bc], a                                    ; $575B: $02
    ld bc, $0102                                  ; $575C: $01 $02 $01
    ld [bc], a                                    ; $575F: $02
    nop                                           ; $5760: $00
    ld [bc], a                                    ; $5761: $02
    nop                                           ; $5762: $00
    ld [bc], a                                    ; $5763: $02
    nop                                           ; $5764: $00
    ld b, $00                                     ; $5765: $06 $00
    inc b                                         ; $5767: $04
    inc b                                         ; $5768: $04

jr_04F_5769:
    nop                                           ; $5769: $00
    ld [$0800], sp                                ; $576A: $08 $00 $08
    ld [$1000], sp                                ; $576D: $08 $00 $10
    nop                                           ; $5770: $00
    nop                                           ; $5771: $00
    db $10                                        ; $5772: $10
    jr nz, jr_04F_5775                            ; $5773: $20 $00

jr_04F_5775:
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    ld b, b                                       ; $5777: $40
    nop                                           ; $5778: $00
    nop                                           ; $5779: $00
    ld b, b                                       ; $577A: $40
    nop                                           ; $577B: $00
    ld b, b                                       ; $577C: $40
    nop                                           ; $577D: $00
    ld b, b                                       ; $577E: $40
    nop                                           ; $577F: $00
    nop                                           ; $5780: $00
    jr nz, jr_04F_5783                            ; $5781: $20 $00

jr_04F_5783:
    nop                                           ; $5783: $00
    ld [$0003], sp                                ; $5784: $08 $03 $00
    nop                                           ; $5787: $00
    nop                                           ; $5788: $00
    nop                                           ; $5789: $00
    nop                                           ; $578A: $00
    nop                                           ; $578B: $00
    nop                                           ; $578C: $00
    nop                                           ; $578D: $00
    nop                                           ; $578E: $00
    nop                                           ; $578F: $00
    nop                                           ; $5790: $00
    nop                                           ; $5791: $00
    nop                                           ; $5792: $00
    nop                                           ; $5793: $00
    nop                                           ; $5794: $00
    nop                                           ; $5795: $00
    nop                                           ; $5796: $00
    add b                                         ; $5797: $80
    nop                                           ; $5798: $00
    nop                                           ; $5799: $00
    nop                                           ; $579A: $00
    nop                                           ; $579B: $00
    nop                                           ; $579C: $00
    stop                                          ; $579D: $10 $00
    ld [$0800], sp                                ; $579F: $08 $00 $08
    nop                                           ; $57A2: $00
    nop                                           ; $57A3: $00
    nop                                           ; $57A4: $00
    nop                                           ; $57A5: $00
    nop                                           ; $57A6: $00
    nop                                           ; $57A7: $00
    nop                                           ; $57A8: $00
    nop                                           ; $57A9: $00
    nop                                           ; $57AA: $00
    nop                                           ; $57AB: $00
    nop                                           ; $57AC: $00
    nop                                           ; $57AD: $00
    nop                                           ; $57AE: $00
    nop                                           ; $57AF: $00
    nop                                           ; $57B0: $00
    nop                                           ; $57B1: $00
    nop                                           ; $57B2: $00
    nop                                           ; $57B3: $00
    nop                                           ; $57B4: $00
    nop                                           ; $57B5: $00
    nop                                           ; $57B6: $00
    nop                                           ; $57B7: $00
    nop                                           ; $57B8: $00
    nop                                           ; $57B9: $00
    nop                                           ; $57BA: $00
    ld [bc], a                                    ; $57BB: $02
    nop                                           ; $57BC: $00
    nop                                           ; $57BD: $00
    nop                                           ; $57BE: $00
    nop                                           ; $57BF: $00
    nop                                           ; $57C0: $00
    nop                                           ; $57C1: $00
    nop                                           ; $57C2: $00
    nop                                           ; $57C3: $00
    nop                                           ; $57C4: $00
    nop                                           ; $57C5: $00
    nop                                           ; $57C6: $00
    nop                                           ; $57C7: $00
    nop                                           ; $57C8: $00
    nop                                           ; $57C9: $00
    nop                                           ; $57CA: $00
    nop                                           ; $57CB: $00
    nop                                           ; $57CC: $00
    nop                                           ; $57CD: $00
    add b                                         ; $57CE: $80
    nop                                           ; $57CF: $00
    nop                                           ; $57D0: $00
    inc b                                         ; $57D1: $04
    nop                                           ; $57D2: $00
    nop                                           ; $57D3: $00
    nop                                           ; $57D4: $00
    nop                                           ; $57D5: $00
    nop                                           ; $57D6: $00
    nop                                           ; $57D7: $00
    nop                                           ; $57D8: $00
    ld [$180C], sp                                ; $57D9: $08 $0C $18
    ld [rRAMG], sp                                ; $57DC: $08 $00 $00
    nop                                           ; $57DF: $00
    nop                                           ; $57E0: $00
    nop                                           ; $57E1: $00
    jr nz, jr_04F_57E4                            ; $57E2: $20 $00

jr_04F_57E4:
    nop                                           ; $57E4: $00
    stop                                          ; $57E5: $10 $00
    nop                                           ; $57E7: $00
    nop                                           ; $57E8: $00
    db $10                                        ; $57E9: $10
    jr nc, jr_04F_57EC                            ; $57EA: $30 $00

jr_04F_57EC:
    jr nz, jr_04F_57EE                            ; $57EC: $20 $00

jr_04F_57EE:
    nop                                           ; $57EE: $00
    nop                                           ; $57EF: $00
    nop                                           ; $57F0: $00
    nop                                           ; $57F1: $00
    nop                                           ; $57F2: $00
    nop                                           ; $57F3: $00
    nop                                           ; $57F4: $00
    nop                                           ; $57F5: $00
    ld bc, $0001                                  ; $57F6: $01 $01 $00
    nop                                           ; $57F9: $00
    ld e, $20                                     ; $57FA: $1E $20
    nop                                           ; $57FC: $00
    nop                                           ; $57FD: $00
    nop                                           ; $57FE: $00
    nop                                           ; $57FF: $00
    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    ldh [rP1], a                                  ; $5803: $E0 $00
    db $10                                        ; $5805: $10
    inc c                                         ; $5806: $0C
    nop                                           ; $5807: $00
    inc b                                         ; $5808: $04
    ld [bc], a                                    ; $5809: $02
    nop                                           ; $580A: $00
    inc b                                         ; $580B: $04
    nop                                           ; $580C: $00
    nop                                           ; $580D: $00
    ld [rRAMG], sp                                ; $580E: $08 $00 $00
    nop                                           ; $5811: $00
    nop                                           ; $5812: $00
    nop                                           ; $5813: $00
    nop                                           ; $5814: $00
    nop                                           ; $5815: $00
    nop                                           ; $5816: $00
    nop                                           ; $5817: $00
    stop                                          ; $5818: $10 $00
    ld [$0808], sp                                ; $581A: $08 $08 $08
    nop                                           ; $581D: $00
    nop                                           ; $581E: $00
    inc c                                         ; $581F: $0C
    nop                                           ; $5820: $00
    nop                                           ; $5821: $00
    inc b                                         ; $5822: $04
    nop                                           ; $5823: $00
    inc b                                         ; $5824: $04
    inc b                                         ; $5825: $04
    nop                                           ; $5826: $00
    ld [$1008], sp                                ; $5827: $08 $08 $10
    db $10                                        ; $582A: $10
    db $10                                        ; $582B: $10
    jr nc, jr_04F_582E                            ; $582C: $30 $00

jr_04F_582E:
    nop                                           ; $582E: $00
    nop                                           ; $582F: $00
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    nop                                           ; $5832: $00
    nop                                           ; $5833: $00
    nop                                           ; $5834: $00
    nop                                           ; $5835: $00
    nop                                           ; $5836: $00
    nop                                           ; $5837: $00
    nop                                           ; $5838: $00
    inc bc                                        ; $5839: $03
    nop                                           ; $583A: $00
    nop                                           ; $583B: $00
    inc b                                         ; $583C: $04
    ld [rRAMG], sp                                ; $583D: $08 $00 $00
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    nop                                           ; $5844: $00
    nop                                           ; $5845: $00
    nop                                           ; $5846: $00
    nop                                           ; $5847: $00
    nop                                           ; $5848: $00
    ld b, b                                       ; $5849: $40
    and b                                         ; $584A: $A0
    nop                                           ; $584B: $00
    stop                                          ; $584C: $10 $00
    stop                                          ; $584E: $10 $00
    ld [$0008], sp                                ; $5850: $08 $08 $00
    ld [rRAMG], sp                                ; $5853: $08 $00 $00
    db $10                                        ; $5856: $10
    stop                                          ; $5857: $10 $00
    nop                                           ; $5859: $00
    db $10                                        ; $585A: $10
    db $10                                        ; $585B: $10
    stop                                          ; $585C: $10 $00
    db $10                                        ; $585E: $10
    jr nz, jr_04F_5861                            ; $585F: $20 $00

jr_04F_5861:
    jr nz, jr_04F_5863                            ; $5861: $20 $00

jr_04F_5863:
    jr nz, jr_04F_5865                            ; $5863: $20 $00

jr_04F_5865:
    stop                                          ; $5865: $10 $00
    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    stop                                          ; $5869: $10 $00
    db $10                                        ; $586B: $10
    stop                                          ; $586C: $10 $00
    db $10                                        ; $586E: $10
    jr nc, jr_04F_5871                            ; $586F: $30 $00

jr_04F_5871:
    nop                                           ; $5871: $00
    jr nz, jr_04F_5874                            ; $5872: $20 $00

jr_04F_5874:
    jr nz, jr_04F_58B6                            ; $5874: $20 $40

    nop                                           ; $5876: $00
    nop                                           ; $5877: $00
    ld b, b                                       ; $5878: $40
    nop                                           ; $5879: $00
    ld b, b                                       ; $587A: $40
    jr nz, jr_04F_58AD                            ; $587B: $20 $30

    nop                                           ; $587D: $00
    nop                                           ; $587E: $00
    inc b                                         ; $587F: $04
    jr jr_04F_5886                                ; $5880: $18 $04

    nop                                           ; $5882: $00
    nop                                           ; $5883: $00
    nop                                           ; $5884: $00
    nop                                           ; $5885: $00

jr_04F_5886:
    ld [bc], a                                    ; $5886: $02
    nop                                           ; $5887: $00
    ld [bc], a                                    ; $5888: $02
    inc b                                         ; $5889: $04
    ld b, $04                                     ; $588A: $06 $04
    inc b                                         ; $588C: $04
    nop                                           ; $588D: $00
    nop                                           ; $588E: $00
    nop                                           ; $588F: $00
    nop                                           ; $5890: $00
    nop                                           ; $5891: $00
    nop                                           ; $5892: $00
    nop                                           ; $5893: $00
    nop                                           ; $5894: $00
    nop                                           ; $5895: $00
    nop                                           ; $5896: $00
    nop                                           ; $5897: $00
    nop                                           ; $5898: $00
    ld b, b                                       ; $5899: $40
    jr nz, jr_04F_58FC                            ; $589A: $20 $60

    nop                                           ; $589C: $00
    nop                                           ; $589D: $00
    nop                                           ; $589E: $00
    add hl, sp                                    ; $589F: $39
    nop                                           ; $58A0: $00
    ld b, [hl]                                    ; $58A1: $46
    add hl, de                                    ; $58A2: $19
    ld c, h                                       ; $58A3: $4C
    ccf                                           ; $58A4: $3F
    dec e                                         ; $58A5: $1D
    ccf                                           ; $58A6: $3F
    add hl, sp                                    ; $58A7: $39
    ld e, $0A                                     ; $58A8: $1E $0A
    inc e                                         ; $58AA: $1C
    ld a, [bc]                                    ; $58AB: $0A
    inc c                                         ; $58AC: $0C

jr_04F_58AD:
    ld [bc], a                                    ; $58AD: $02
    inc b                                         ; $58AE: $04
    inc h                                         ; $58AF: $24
    jp $E753                                      ; $58B0: $C3 $53 $E7


    rst $28                                       ; $58B3: $EF
    rst $30                                       ; $58B4: $F7
    rst $38                                       ; $58B5: $FF

jr_04F_58B6:
    rst $30                                       ; $58B6: $F7
    ld a, [$64F7]                                 ; $58B7: $FA $F7 $64
    ld [hl], d                                    ; $58BA: $72
    jr nc, @+$22                                  ; $58BB: $30 $20

    nop                                           ; $58BD: $00
    nop                                           ; $58BE: $00
    nop                                           ; $58BF: $00
    nop                                           ; $58C0: $00
    daa                                           ; $58C1: $27
    add hl, de                                    ; $58C2: $19
    ld e, a                                       ; $58C3: $5F
    ccf                                           ; $58C4: $3F
    ld e, a                                       ; $58C5: $5F
    ccf                                           ; $58C6: $3F
    dec l                                         ; $58C7: $2D
    ld e, $08                                     ; $58C8: $1E $08
    inc e                                         ; $58CA: $1C
    ld [de], a                                    ; $58CB: $12
    inc c                                         ; $58CC: $0C
    ld b, $00                                     ; $58CD: $06 $00
    ld bc, $E7C3                                  ; $58CF: $01 $C3 $E7
    rst $20                                       ; $58D2: $E7
    rst $30                                       ; $58D3: $F7
    rst $30                                       ; $58D4: $F7
    rst $38                                       ; $58D5: $FF
    rst $38                                       ; $58D6: $FF
    rst $30                                       ; $58D7: $F7
    rst $30                                       ; $58D8: $F7
    ld [hl], d                                    ; $58D9: $72
    ld [hl], d                                    ; $58DA: $72
    nop                                           ; $58DB: $00
    jr nz, jr_04F_58DE                            ; $58DC: $20 $00

jr_04F_58DE:
    nop                                           ; $58DE: $00
    ld d, $00                                     ; $58DF: $16 $00
    add hl, hl                                    ; $58E1: $29
    rra                                           ; $58E2: $1F
    ld e, a                                       ; $58E3: $5F
    ccf                                           ; $58E4: $3F
    ld e, a                                       ; $58E5: $5F
    ccf                                           ; $58E6: $3F
    ld e, a                                       ; $58E7: $5F
    ccf                                           ; $58E8: $3F
    ld e, a                                       ; $58E9: $5F
    ccf                                           ; $58EA: $3F
    add hl, hl                                    ; $58EB: $29
    rra                                           ; $58EC: $1F
    ld d, $00                                     ; $58ED: $16 $00
    ld bc, $E3C3                                  ; $58EF: $01 $C3 $E3
    rst $20                                       ; $58F2: $E7
    rst $38                                       ; $58F3: $FF
    rst $30                                       ; $58F4: $F7
    rst $38                                       ; $58F5: $FF
    rst $38                                       ; $58F6: $FF
    rst $38                                       ; $58F7: $FF
    rst $38                                       ; $58F8: $FF
    rst $38                                       ; $58F9: $FF
    rst $30                                       ; $58FA: $F7
    db $E3                                        ; $58FB: $E3

jr_04F_58FC:
    rst $20                                       ; $58FC: $E7
    ld bc, $00C3                                  ; $58FD: $01 $C3 $00
    nop                                           ; $5900: $00
    ld bc, $0100                                  ; $5901: $01 $00 $01
    nop                                           ; $5904: $00
    ld bc, $9100                                  ; $5905: $01 $00 $91
    ld h, b                                       ; $5908: $60
    ld d, h                                       ; $5909: $54
    dec sp                                        ; $590A: $3B
    ld c, $1F                                     ; $590B: $0E $1F
    rla                                           ; $590D: $17
    rrca                                          ; $590E: $0F
    ret nz                                        ; $590F: $C0

    nop                                           ; $5910: $00
    add b                                         ; $5911: $80
    ld b, b                                       ; $5912: $40
    ld h, b                                       ; $5913: $60
    ret nz                                        ; $5914: $C0

    ld h, b                                       ; $5915: $60
    ldh [rSVBK], a                                ; $5916: $E0 $70
    ldh a, [$7C]                                  ; $5918: $F0 $7C
    ld hl, sp-$42                                 ; $591A: $F8 $BE
    db $FC                                        ; $591C: $FC
    ret c                                         ; $591D: $D8

    adc h                                         ; $591E: $8C
    rla                                           ; $591F: $17
    rrca                                          ; $5920: $0F
    ld a, [de]                                    ; $5921: $1A
    rlca                                          ; $5922: $07
    inc e                                         ; $5923: $1C
    inc bc                                        ; $5924: $03
    rra                                           ; $5925: $1F
    nop                                           ; $5926: $00
    ld de, $2D0E                                  ; $5927: $11 $0E $2D
    ld e, $5D                                     ; $592A: $1E $5D
    ld a, $F8                                     ; $592C: $3E $F8
    nop                                           ; $592E: $00
    nop                                           ; $592F: $00
    nop                                           ; $5930: $00
    ld h, b                                       ; $5931: $60
    nop                                           ; $5932: $00
    jr z, jr_04F_5945                             ; $5933: $28 $10

    ld l, d                                       ; $5935: $6A
    inc e                                         ; $5936: $1C
    ld l, h                                       ; $5937: $6C
    rra                                           ; $5938: $1F
    ld hl, $321E                                  ; $5939: $21 $1E $32
    inc c                                         ; $593C: $0C
    ld c, $00                                     ; $593D: $0E $00
    ld [$1400], sp                                ; $593F: $08 $00 $14
    ld [$1864], sp                                ; $5942: $08 $64 $18

jr_04F_5945:
    sbc b                                         ; $5945: $98
    inc a                                         ; $5946: $3C
    sbc $3C                                       ; $5947: $DE $3C
    ret nz                                        ; $5949: $C0

    ld c, $00                                     ; $594A: $0E $00
    nop                                           ; $594C: $00
    nop                                           ; $594D: $00
    nop                                           ; $594E: $00
    nop                                           ; $594F: $00
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    nop                                           ; $5952: $00
    ld bc, $0900                                  ; $5953: $01 $00 $09
    rlca                                          ; $5956: $07
    inc bc                                        ; $5957: $03
    nop                                           ; $5958: $00
    nop                                           ; $5959: $00
    nop                                           ; $595A: $00
    nop                                           ; $595B: $00
    nop                                           ; $595C: $00
    nop                                           ; $595D: $00
    nop                                           ; $595E: $00
    nop                                           ; $595F: $00
    nop                                           ; $5960: $00
    ld hl, sp+$00                                 ; $5961: $F8 $00
    ld [$C8F0], sp                                ; $5963: $08 $F0 $C8
    ldh a, [rBCPS]                                ; $5966: $F0 $68
    ldh a, [$3C]                                  ; $5968: $F0 $3C
    nop                                           ; $596A: $00
    nop                                           ; $596B: $00
    nop                                           ; $596C: $00
    ld e, $00                                     ; $596D: $1E $00
    nop                                           ; $596F: $00
    nop                                           ; $5970: $00
    nop                                           ; $5971: $00
    nop                                           ; $5972: $00
    nop                                           ; $5973: $00
    nop                                           ; $5974: $00
    nop                                           ; $5975: $00
    nop                                           ; $5976: $00
    stop                                          ; $5977: $10 $00
    jr jr_04F_597B                                ; $5979: $18 $00

jr_04F_597B:
    jr jr_04F_597D                                ; $597B: $18 $00

jr_04F_597D:
    inc c                                         ; $597D: $0C
    nop                                           ; $597E: $00
    ret nz                                        ; $597F: $C0

    nop                                           ; $5980: $00
    ld h, b                                       ; $5981: $60
    nop                                           ; $5982: $00
    jr c, jr_04F_5985                             ; $5983: $38 $00

jr_04F_5985:
    nop                                           ; $5985: $00
    nop                                           ; $5986: $00
    nop                                           ; $5987: $00
    nop                                           ; $5988: $00
    nop                                           ; $5989: $00
    nop                                           ; $598A: $00
    nop                                           ; $598B: $00
    nop                                           ; $598C: $00
    nop                                           ; $598D: $00
    nop                                           ; $598E: $00
    nop                                           ; $598F: $00
    nop                                           ; $5990: $00
    nop                                           ; $5991: $00
    nop                                           ; $5992: $00
    ld b, [hl]                                    ; $5993: $46
    jr c, jr_04F_59B5                             ; $5994: $38 $1F

    nop                                           ; $5996: $00
    nop                                           ; $5997: $00
    nop                                           ; $5998: $00
    nop                                           ; $5999: $00
    nop                                           ; $599A: $00
    nop                                           ; $599B: $00
    nop                                           ; $599C: $00
    nop                                           ; $599D: $00
    nop                                           ; $599E: $00
    ld a, [bc]                                    ; $599F: $0A
    rlca                                          ; $59A0: $07
    dec d                                         ; $59A1: $15
    ld c, $0A                                     ; $59A2: $0E $0A
    inc e                                         ; $59A4: $1C
    inc b                                         ; $59A5: $04
    jr jr_04F_59E0                                ; $59A6: $18 $38

    db $10                                        ; $59A8: $10
    jr jr_04F_59DB                                ; $59A9: $18 $30

    db $10                                        ; $59AB: $10
    jr nc, jr_04F_59DE                            ; $59AC: $30 $30

    ld h, b                                       ; $59AE: $60
    ld b, b                                       ; $59AF: $40
    ld [hl], b                                    ; $59B0: $70
    jr nz, jr_04F_5A23                            ; $59B1: $20 $70

    jr z, jr_04F_59E5                             ; $59B3: $28 $30

jr_04F_59B5:
    jr nz, jr_04F_59CF                            ; $59B5: $20 $18

    inc [hl]                                      ; $59B7: $34
    jr jr_04F_59C4                                ; $59B8: $18 $0A

    inc e                                         ; $59BA: $1C
    add hl, bc                                    ; $59BB: $09
    ld b, $06                                     ; $59BC: $06 $06
    inc bc                                        ; $59BE: $03
    ld d, b                                       ; $59BF: $50
    ldh [$A0], a                                  ; $59C0: $E0 $A0
    ld [hl], b                                    ; $59C2: $70
    ld d, b                                       ; $59C3: $50

jr_04F_59C4:
    jr c, @+$2E                                   ; $59C4: $38 $2C

    jr jr_04F_59E4                                ; $59C6: $18 $1C

    inc c                                         ; $59C8: $0C
    inc c                                         ; $59C9: $0C
    ld b, $07                                     ; $59CA: $06 $07
    ld [bc], a                                    ; $59CC: $02
    ld b, $03                                     ; $59CD: $06 $03

jr_04F_59CF:
    inc bc                                        ; $59CF: $03
    inc bc                                        ; $59D0: $03
    ld bc, $0103                                  ; $59D1: $01 $03 $01
    inc bc                                        ; $59D4: $03
    add hl, bc                                    ; $59D5: $09
    rlca                                          ; $59D6: $07
    rla                                           ; $59D7: $17
    ld c, $1A                                     ; $59D8: $0E $1A
    inc a                                         ; $59DA: $3C

jr_04F_59DB:
    and b                                         ; $59DB: $A0
    ld a, b                                       ; $59DC: $78
    ld d, b                                       ; $59DD: $50

jr_04F_59DE:
    ldh [rP1], a                                  ; $59DE: $E0 $00

jr_04F_59E0:
    nop                                           ; $59E0: $00
    nop                                           ; $59E1: $00
    nop                                           ; $59E2: $00
    dec b                                         ; $59E3: $05

jr_04F_59E4:
    inc bc                                        ; $59E4: $03

jr_04F_59E5:
    rla                                           ; $59E5: $17
    rrca                                          ; $59E6: $0F
    add hl, bc                                    ; $59E7: $09
    ld e, $B0                                     ; $59E8: $1E $B0
    ld a, b                                       ; $59EA: $78
    ld h, b                                       ; $59EB: $60
    ldh a, [rP1]                                  ; $59EC: $F0 $00
    ldh [rSC], a                                  ; $59EE: $E0 $02
    ld bc, $0305                                  ; $59F0: $01 $05 $03
    and $CF                                       ; $59F3: $E6 $CF
    adc c                                         ; $59F5: $89
    cp $7C                                        ; $59F6: $FE $7C
    nop                                           ; $59F8: $00
    nop                                           ; $59F9: $00
    nop                                           ; $59FA: $00
    nop                                           ; $59FB: $00
    nop                                           ; $59FC: $00
    nop                                           ; $59FD: $00
    nop                                           ; $59FE: $00
    ld a, [bc]                                    ; $59FF: $0A
    rlca                                          ; $5A00: $07
    jr z, @+$21                                   ; $5A01: $28 $1F

    ld e, c                                       ; $5A03: $59
    ld a, $38                                     ; $5A04: $3E $38
    ld a, h                                       ; $5A06: $7C
    ld [hl], b                                    ; $5A07: $70
    ld a, h                                       ; $5A08: $7C
    ld hl, sp+$7C                                 ; $5A09: $F8 $7C
    ld a, e                                       ; $5A0B: $7B
    db $FC                                        ; $5A0C: $FC
    ld [hl], c                                    ; $5A0D: $71
    adc $1B                                       ; $5A0E: $CE $1B
    rlca                                          ; $5A10: $07
    inc sp                                        ; $5A11: $33
    rrca                                          ; $5A12: $0F
    ld [hl], e                                    ; $5A13: $73
    rrca                                          ; $5A14: $0F
    ld [hl], c                                    ; $5A15: $71
    rrca                                          ; $5A16: $0F
    ld e, b                                       ; $5A17: $58
    daa                                           ; $5A18: $27
    adc h                                         ; $5A19: $8C
    ld [hl], e                                    ; $5A1A: $73
    ld h, [hl]                                    ; $5A1B: $66
    cp c                                          ; $5A1C: $B9
    add b                                         ; $5A1D: $80
    rst $38                                       ; $5A1E: $FF
    nop                                           ; $5A1F: $00
    ld bc, $0102                                  ; $5A20: $01 $02 $01

jr_04F_5A23:
    ld [bc], a                                    ; $5A23: $02
    ld bc, $0003                                  ; $5A24: $01 $03 $00
    ld bc, $0000                                  ; $5A27: $01 $00 $00
    nop                                           ; $5A2A: $00
    nop                                           ; $5A2B: $00
    nop                                           ; $5A2C: $00
    nop                                           ; $5A2D: $00
    nop                                           ; $5A2E: $00
    add e                                         ; $5A2F: $83
    db $FC                                        ; $5A30: $FC
    adc c                                         ; $5A31: $89
    cp $C5                                        ; $5A32: $FE $C5
    ld a, [$FE61]                                 ; $5A34: $FA $61 $FE
    ei                                            ; $5A37: $FB
    ld a, [hl]                                    ; $5A38: $7E
    rst $10                                       ; $5A39: $D7
    ld [hl+], a                                   ; $5A3A: $22
    ld b, $03                                     ; $5A3B: $06 $03
    ld b, $03                                     ; $5A3D: $06 $03
    ld b, $03                                     ; $5A3F: $06 $03
    ld b, $03                                     ; $5A41: $06 $03
    ld [bc], a                                    ; $5A43: $02
    inc bc                                        ; $5A44: $03
    inc bc                                        ; $5A45: $03
    inc bc                                        ; $5A46: $03
    inc bc                                        ; $5A47: $03
    inc bc                                        ; $5A48: $03
    inc bc                                        ; $5A49: $03
    inc bc                                        ; $5A4A: $03
    inc bc                                        ; $5A4B: $03
    inc bc                                        ; $5A4C: $03
    inc bc                                        ; $5A4D: $03
    ld bc, $0103                                  ; $5A4E: $01 $03 $01
    ld bc, $0101                                  ; $5A51: $01 $01 $01
    ld bc, $0101                                  ; $5A54: $01 $01 $01
    ld bc, $0101                                  ; $5A57: $01 $01 $01
    ld bc, $0000                                  ; $5A5A: $01 $00 $00
    nop                                           ; $5A5D: $00
    nop                                           ; $5A5E: $00
    nop                                           ; $5A5F: $00
    nop                                           ; $5A60: $00
    nop                                           ; $5A61: $00
    nop                                           ; $5A62: $00
    nop                                           ; $5A63: $00
    nop                                           ; $5A64: $00
    ld bc, $0200                                  ; $5A65: $01 $00 $02
    ld bc, $0300                                  ; $5A68: $01 $00 $03
    inc b                                         ; $5A6B: $04
    inc bc                                        ; $5A6C: $03
    ld b, $01                                     ; $5A6D: $06 $01
    stop                                          ; $5A6F: $10 $00
    ld a, b                                       ; $5A71: $78
    nop                                           ; $5A72: $00
    ldh a, [rP1]                                  ; $5A73: $F0 $00
    ld [hl], a                                    ; $5A75: $77
    add b                                         ; $5A76: $80
    ld a, a                                       ; $5A77: $7F
    add b                                         ; $5A78: $80
    ld a, [hl]                                    ; $5A79: $7E
    add c                                         ; $5A7A: $81
    ld a, [hl]                                    ; $5A7B: $7E
    add c                                         ; $5A7C: $81
    ld a, c                                       ; $5A7D: $79
    add a                                         ; $5A7E: $87
    ld [bc], a                                    ; $5A7F: $02
    ld bc, $0003                                  ; $5A80: $01 $03 $00
    inc bc                                        ; $5A83: $03
    ld [$100F], sp                                ; $5A84: $08 $0F $10
    inc hl                                        ; $5A87: $23
    inc e                                         ; $5A88: $1C
    nop                                           ; $5A89: $00
    ccf                                           ; $5A8A: $3F
    ld [bc], a                                    ; $5A8B: $02
    ccf                                           ; $5A8C: $3F
    jr nc, @+$41                                  ; $5A8D: $30 $3F

    ld sp, hl                                     ; $5A8F: $F9
    rlca                                          ; $5A90: $07
    pop af                                        ; $5A91: $F1
    rrca                                          ; $5A92: $0F
    di                                            ; $5A93: $F3
    rrca                                          ; $5A94: $0F
    pop af                                        ; $5A95: $F1
    ld c, $C7                                     ; $5A96: $0E $C7
    jr c, @-$17                                   ; $5A98: $38 $E7

    jr jr_04F_5AC3                                ; $5A9A: $18 $27

    ret c                                         ; $5A9C: $D8

    ld de, $10EE                                  ; $5A9D: $11 $EE $10
    ccf                                           ; $5AA0: $3F
    jr nc, jr_04F_5AC2                            ; $5AA1: $30 $1F

    rrca                                          ; $5AA3: $0F
    inc e                                         ; $5AA4: $1C
    inc e                                         ; $5AA5: $1C
    rrca                                          ; $5AA6: $0F
    add hl, bc                                    ; $5AA7: $09

jr_04F_5AA8:
    ld b, $01                                     ; $5AA8: $06 $01
    ld [bc], a                                    ; $5AAA: $02
    nop                                           ; $5AAB: $00
    nop                                           ; $5AAC: $00
    nop                                           ; $5AAD: $00
    nop                                           ; $5AAE: $00
    jr jr_04F_5AA8                                ; $5AAF: $18 $F7

    call z, $D933                                 ; $5AB1: $CC $33 $D9
    ld [hl], $05                                  ; $5AB4: $36 $05
    cp $94                                        ; $5AB6: $FE $94
    ld l, a                                       ; $5AB8: $6F
    rst $18                                       ; $5AB9: $DF
    rlca                                          ; $5ABA: $07
    ld bc, $0307                                  ; $5ABB: $01 $07 $03
    dec b                                         ; $5ABE: $05
    inc bc                                        ; $5ABF: $03
    dec b                                         ; $5AC0: $05
    inc bc                                        ; $5AC1: $03

jr_04F_5AC2:
    dec b                                         ; $5AC2: $05

jr_04F_5AC3:
    inc bc                                        ; $5AC3: $03
    rlca                                          ; $5AC4: $07
    inc bc                                        ; $5AC5: $03
    rlca                                          ; $5AC6: $07
    inc bc                                        ; $5AC7: $03
    inc bc                                        ; $5AC8: $03
    inc bc                                        ; $5AC9: $03
    inc bc                                        ; $5ACA: $03
    nop                                           ; $5ACB: $00
    ld bc, $0001                                  ; $5ACC: $01 $01 $00
    nop                                           ; $5ACF: $00
    nop                                           ; $5AD0: $00
    nop                                           ; $5AD1: $00
    nop                                           ; $5AD2: $00
    nop                                           ; $5AD3: $00
    nop                                           ; $5AD4: $00
    rrca                                          ; $5AD5: $0F
    nop                                           ; $5AD6: $00
    rra                                           ; $5AD7: $1F
    nop                                           ; $5AD8: $00
    ccf                                           ; $5AD9: $3F
    nop                                           ; $5ADA: $00
    ld a, e                                       ; $5ADB: $7B
    inc b                                         ; $5ADC: $04
    ld a, a                                       ; $5ADD: $7F
    nop                                           ; $5ADE: $00
    nop                                           ; $5ADF: $00
    nop                                           ; $5AE0: $00
    nop                                           ; $5AE1: $00
    nop                                           ; $5AE2: $00
    nop                                           ; $5AE3: $00
    nop                                           ; $5AE4: $00
    ldh [rP1], a                                  ; $5AE5: $E0 $00
    ldh a, [rP1]                                  ; $5AE7: $F0 $00
    add b                                         ; $5AE9: $80
    nop                                           ; $5AEA: $00
    ld hl, sp+$00                                 ; $5AEB: $F8 $00
    ld hl, sp+$00                                 ; $5AED: $F8 $00
    ld a, a                                       ; $5AEF: $7F
    nop                                           ; $5AF0: $00
    ld a, a                                       ; $5AF1: $7F
    nop                                           ; $5AF2: $00
    rst $38                                       ; $5AF3: $FF
    nop                                           ; $5AF4: $00
    db $FD                                        ; $5AF5: $FD
    ld [bc], a                                    ; $5AF6: $02
    rst $38                                       ; $5AF7: $FF
    nop                                           ; $5AF8: $00
    scf                                           ; $5AF9: $37
    ret nz                                        ; $5AFA: $C0

    rra                                           ; $5AFB: $1F
    ldh [rSCY], a                                 ; $5AFC: $E0 $42
    db $FD                                        ; $5AFE: $FD
    adc [hl]                                      ; $5AFF: $8E
    nop                                           ; $5B00: $00
    add [hl]                                      ; $5B01: $86
    nop                                           ; $5B02: $00
    add d                                         ; $5B03: $82
    nop                                           ; $5B04: $00
    add e                                         ; $5B05: $83
    nop                                           ; $5B06: $00
    jp $E400                                      ; $5B07: $C3 $00 $E4


    inc bc                                        ; $5B0A: $03
    ldh [rTAC], a                                 ; $5B0B: $E0 $07
    ld l, d                                       ; $5B0D: $6A
    add a                                         ; $5B0E: $87
    nop                                           ; $5B0F: $00
    nop                                           ; $5B10: $00
    nop                                           ; $5B11: $00
    nop                                           ; $5B12: $00
    nop                                           ; $5B13: $00
    nop                                           ; $5B14: $00
    nop                                           ; $5B15: $00
    ld bc, $0101                                  ; $5B16: $01 $01 $01
    inc bc                                        ; $5B19: $03
    ld bc, $0103                                  ; $5B1A: $01 $03 $01
    ld bc, $4F01                                  ; $5B1D: $01 $01 $4F
    ccf                                           ; $5B20: $3F
    and c                                         ; $5B21: $A1
    ld a, [hl]                                    ; $5B22: $7E
    ld e, a                                       ; $5B23: $5F
    pop hl                                        ; $5B24: $E1
    rst $18                                       ; $5B25: $DF
    db $E3                                        ; $5B26: $E3
    xor e                                         ; $5B27: $AB
    rst $38                                       ; $5B28: $FF
    cp a                                          ; $5B29: $BF
    rst $38                                       ; $5B2A: $FF
    rst $38                                       ; $5B2B: $FF
    rst $38                                       ; $5B2C: $FF
    rst $38                                       ; $5B2D: $FF
    rst $38                                       ; $5B2E: $FF
    rst $00                                       ; $5B2F: $C7
    ld hl, sp-$19                                 ; $5B30: $F8 $E7
    ld hl, sp-$1D                                 ; $5B32: $F8 $E3
    db $FC                                        ; $5B34: $FC
    di                                            ; $5B35: $F3
    db $FC                                        ; $5B36: $FC
    sbc c                                         ; $5B37: $99
    or $82                                        ; $5B38: $F6 $82
    ld sp, hl                                     ; $5B3A: $F9
    rst $00                                       ; $5B3B: $C7
    ld sp, hl                                     ; $5B3C: $F9
    ei                                            ; $5B3D: $FB
    rst $38                                       ; $5B3E: $FF
    ld a, [c]                                     ; $5B3F: $F2
    rrca                                          ; $5B40: $0F
    ld [c], a                                     ; $5B41: $E2
    rra                                           ; $5B42: $1F
    ldh [$1F], a                                  ; $5B43: $E0 $1F
    db $EC                                        ; $5B45: $EC
    inc de                                        ; $5B46: $13
    ret nz                                        ; $5B47: $C0

    ccf                                           ; $5B48: $3F
    inc c                                         ; $5B49: $0C
    di                                            ; $5B4A: $F3
    rst $28                                       ; $5B4B: $EF
    ldh a, [$EF]                                  ; $5B4C: $F0 $EF
    ldh a, [rIE]                                  ; $5B4E: $F0 $FF
    rst $38                                       ; $5B50: $FF
    db $E3                                        ; $5B51: $E3
    rst $38                                       ; $5B52: $FF
    sbc b                                         ; $5B53: $98
    rst $20                                       ; $5B54: $E7
    inc e                                         ; $5B55: $1C
    db $E3                                        ; $5B56: $E3
    adc [hl]                                      ; $5B57: $8E
    ld [hl], c                                    ; $5B58: $71
    adc a                                         ; $5B59: $8F
    ld [hl], b                                    ; $5B5A: $70
    ld b, a                                       ; $5B5B: $47
    jr c, jr_04F_5BA5                             ; $5B5C: $38 $47

    jr c, jr_04F_5B93                             ; $5B5E: $38 $33

    rst $38                                       ; $5B60: $FF
    ld b, e                                       ; $5B61: $43
    cp a                                          ; $5B62: $BF
    cp l                                          ; $5B63: $BD
    jp $FF40                                      ; $5B64: $C3 $40 $FF


    or b                                          ; $5B67: $B0
    ld a, a                                       ; $5B68: $7F
    add b                                         ; $5B69: $80
    ld a, a                                       ; $5B6A: $7F
    add b                                         ; $5B6B: $80
    ld a, a                                       ; $5B6C: $7F
    pop af                                        ; $5B6D: $F1
    ld c, $E7                                     ; $5B6E: $0E $E7
    ld hl, sp-$09                                 ; $5B70: $F8 $F7
    ld hl, sp-$49                                 ; $5B72: $F8 $B7
    ld hl, sp+$33                                 ; $5B74: $F8 $33
    db $FC                                        ; $5B76: $FC
    ld c, b                                       ; $5B77: $48
    rst $38                                       ; $5B78: $FF
    dec bc                                        ; $5B79: $0B
    rst $38                                       ; $5B7A: $FF
    rlca                                          ; $5B7B: $07
    rst $38                                       ; $5B7C: $FF
    rlca                                          ; $5B7D: $07
    rst $38                                       ; $5B7E: $FF
    inc hl                                        ; $5B7F: $23
    inc e                                         ; $5B80: $1C
    inc de                                        ; $5B81: $13
    inc c                                         ; $5B82: $0C
    ld c, $00                                     ; $5B83: $0E $00
    nop                                           ; $5B85: $00
    nop                                           ; $5B86: $00
    nop                                           ; $5B87: $00
    nop                                           ; $5B88: $00
    nop                                           ; $5B89: $00
    nop                                           ; $5B8A: $00
    nop                                           ; $5B8B: $00
    nop                                           ; $5B8C: $00
    nop                                           ; $5B8D: $00
    nop                                           ; $5B8E: $00
    db $FC                                        ; $5B8F: $FC
    nop                                           ; $5B90: $00
    ldh a, [rP1]                                  ; $5B91: $F0 $00

jr_04F_5B93:
    nop                                           ; $5B93: $00
    nop                                           ; $5B94: $00
    nop                                           ; $5B95: $00
    nop                                           ; $5B96: $00
    nop                                           ; $5B97: $00
    nop                                           ; $5B98: $00
    nop                                           ; $5B99: $00
    nop                                           ; $5B9A: $00
    nop                                           ; $5B9B: $00
    nop                                           ; $5B9C: $00
    nop                                           ; $5B9D: $00
    nop                                           ; $5B9E: $00
    ld b, a                                       ; $5B9F: $47
    ccf                                           ; $5BA0: $3F
    dec bc                                        ; $5BA1: $0B
    rlca                                          ; $5BA2: $07
    inc bc                                        ; $5BA3: $03
    rlca                                          ; $5BA4: $07

jr_04F_5BA5:
    inc bc                                        ; $5BA5: $03
    rlca                                          ; $5BA6: $07
    inc b                                         ; $5BA7: $04
    ld b, $04                                     ; $5BA8: $06 $04
    nop                                           ; $5BAA: $00
    nop                                           ; $5BAB: $00
    nop                                           ; $5BAC: $00
    nop                                           ; $5BAD: $00
    nop                                           ; $5BAE: $00
    nop                                           ; $5BAF: $00
    nop                                           ; $5BB0: $00
    inc e                                         ; $5BB1: $1C
    nop                                           ; $5BB2: $00
    jr jr_04F_5BB5                                ; $5BB3: $18 $00

jr_04F_5BB5:
    nop                                           ; $5BB5: $00
    nop                                           ; $5BB6: $00
    add b                                         ; $5BB7: $80
    nop                                           ; $5BB8: $00
    jr nz, jr_04F_5BBB                            ; $5BB9: $20 $00

jr_04F_5BBB:
    ld h, [hl]                                    ; $5BBB: $66
    nop                                           ; $5BBC: $00
    nop                                           ; $5BBD: $00
    nop                                           ; $5BBE: $00
    ld [bc], a                                    ; $5BBF: $02
    nop                                           ; $5BC0: $00
    ld [bc], a                                    ; $5BC1: $02
    nop                                           ; $5BC2: $00
    nop                                           ; $5BC3: $00
    nop                                           ; $5BC4: $00
    inc bc                                        ; $5BC5: $03
    nop                                           ; $5BC6: $00
    inc bc                                        ; $5BC7: $03
    nop                                           ; $5BC8: $00
    inc bc                                        ; $5BC9: $03
    nop                                           ; $5BCA: $00
    ld h, e                                       ; $5BCB: $63
    nop                                           ; $5BCC: $00
    cp $01                                        ; $5BCD: $FE $01
    inc c                                         ; $5BCF: $0C
    nop                                           ; $5BD0: $00

jr_04F_5BD1:
    inc c                                         ; $5BD1: $0C
    nop                                           ; $5BD2: $00
    inc c                                         ; $5BD3: $0C
    nop                                           ; $5BD4: $00
    inc bc                                        ; $5BD5: $03
    nop                                           ; $5BD6: $00
    rst $00                                       ; $5BD7: $C7
    nop                                           ; $5BD8: $00
    rst $28                                       ; $5BD9: $EF
    nop                                           ; $5BDA: $00
    rst $38                                       ; $5BDB: $FF
    nop                                           ; $5BDC: $00
    ld a, c                                       ; $5BDD: $79
    add b                                         ; $5BDE: $80
    nop                                           ; $5BDF: $00
    nop                                           ; $5BE0: $00
    nop                                           ; $5BE1: $00
    nop                                           ; $5BE2: $00
    nop                                           ; $5BE3: $00
    nop                                           ; $5BE4: $00
    nop                                           ; $5BE5: $00
    nop                                           ; $5BE6: $00
    inc bc                                        ; $5BE7: $03
    nop                                           ; $5BE8: $00
    rlca                                          ; $5BE9: $07
    nop                                           ; $5BEA: $00
    adc [hl]                                      ; $5BEB: $8E
    nop                                           ; $5BEC: $00
    rst $18                                       ; $5BED: $DF
    nop                                           ; $5BEE: $00
    rlca                                          ; $5BEF: $07
    nop                                           ; $5BF0: $00
    rlca                                          ; $5BF1: $07
    nop                                           ; $5BF2: $00
    rrca                                          ; $5BF3: $0F
    nop                                           ; $5BF4: $00
    rra                                           ; $5BF5: $1F
    nop                                           ; $5BF6: $00
    ld e, $01                                     ; $5BF7: $1E $01
    ld e, $01                                     ; $5BF9: $1E $01
    jr jr_04F_5C04                                ; $5BFB: $18 $07

    ld [$FC07], sp                                ; $5BFD: $08 $07 $FC
    inc bc                                        ; $5C00: $03
    call z, $1803                                 ; $5C01: $CC $03 $18

jr_04F_5C04:
    rlca                                          ; $5C04: $07

jr_04F_5C05:
    ldh a, [rIF]                                  ; $5C05: $F0 $0F
    add b                                         ; $5C07: $80
    ld a, a                                       ; $5C08: $7F
    ld h, b                                       ; $5C09: $60
    sbc a                                         ; $5C0A: $9F
    ld b, b                                       ; $5C0B: $40
    cp a                                          ; $5C0C: $BF
    ld [bc], a                                    ; $5C0D: $02
    db $FD                                        ; $5C0E: $FD
    jr c, jr_04F_5BD1                             ; $5C0F: $38 $C0

    ccf                                           ; $5C11: $3F
    ret nz                                        ; $5C12: $C0

    ccf                                           ; $5C13: $3F
    ret nz                                        ; $5C14: $C0

    ccf                                           ; $5C15: $3F
    ret nz                                        ; $5C16: $C0

    ld a, a                                       ; $5C17: $7F
    add b                                         ; $5C18: $80
    daa                                           ; $5C19: $27
    ret nz                                        ; $5C1A: $C0

    sub l                                         ; $5C1B: $95
    ld h, d                                       ; $5C1C: $62
    ld c, $F1                                     ; $5C1D: $0E $F1
    db $FD                                        ; $5C1F: $FD
    ld [bc], a                                    ; $5C20: $02
    ccf                                           ; $5C21: $3F
    nop                                           ; $5C22: $00
    ccf                                           ; $5C23: $3F
    nop                                           ; $5C24: $00
    ccf                                           ; $5C25: $3F
    nop                                           ; $5C26: $00
    rst $38                                       ; $5C27: $FF
    nop                                           ; $5C28: $00
    rst $38                                       ; $5C29: $FF
    nop                                           ; $5C2A: $00
    ccf                                           ; $5C2B: $3F
    ret nz                                        ; $5C2C: $C0

    ccf                                           ; $5C2D: $3F
    ret nz                                        ; $5C2E: $C0

    ld [$0807], sp                                ; $5C2F: $08 $07 $08
    rlca                                          ; $5C32: $07
    ld [$0907], sp                                ; $5C33: $08 $07 $09
    ld b, $03                                     ; $5C36: $06 $03
    inc b                                         ; $5C38: $04
    rlca                                          ; $5C39: $07
    nop                                           ; $5C3A: $00
    rlca                                          ; $5C3B: $07
    nop                                           ; $5C3C: $00
    inc bc                                        ; $5C3D: $03
    nop                                           ; $5C3E: $00
    rlca                                          ; $5C3F: $07
    ld hl, sp-$02                                 ; $5C40: $F8 $FE
    nop                                           ; $5C42: $00
    rst $38                                       ; $5C43: $FF
    nop                                           ; $5C44: $00
    rst $38                                       ; $5C45: $FF
    nop                                           ; $5C46: $00
    sbc l                                         ; $5C47: $9D
    nop                                           ; $5C48: $00
    adc a                                         ; $5C49: $8F
    nop                                           ; $5C4A: $00
    rst $18                                       ; $5C4B: $DF
    nop                                           ; $5C4C: $00
    db $FC                                        ; $5C4D: $FC
    nop                                           ; $5C4E: $00
    inc c                                         ; $5C4F: $0C
    di                                            ; $5C50: $F3
    sbc h                                         ; $5C51: $9C
    ld h, e                                       ; $5C52: $63
    ld a, l                                       ; $5C53: $7D
    ld [bc], a                                    ; $5C54: $02
    rst $38                                       ; $5C55: $FF
    nop                                           ; $5C56: $00
    rst $38                                       ; $5C57: $FF
    nop                                           ; $5C58: $00
    rst $38                                       ; $5C59: $FF
    nop                                           ; $5C5A: $00
    rst $38                                       ; $5C5B: $FF
    nop                                           ; $5C5C: $00
    ccf                                           ; $5C5D: $3F
    nop                                           ; $5C5E: $00
    rra                                           ; $5C5F: $1F
    ldh [rNR32], a                                ; $5C60: $E0 $1C
    ldh [$DC], a                                  ; $5C62: $E0 $DC
    jr nz, jr_04F_5C05                            ; $5C64: $20 $9F

    ld h, b                                       ; $5C66: $60
    rst $38                                       ; $5C67: $FF
    nop                                           ; $5C68: $00
    rst $38                                       ; $5C69: $FF
    nop                                           ; $5C6A: $00
    db $FC                                        ; $5C6B: $FC
    inc bc                                        ; $5C6C: $03
    ld hl, sp+$07                                 ; $5C6D: $F8 $07
    db $FC                                        ; $5C6F: $FC
    nop                                           ; $5C70: $00
    db $FC                                        ; $5C71: $FC
    nop                                           ; $5C72: $00
    ld a, $00                                     ; $5C73: $3E $00
    jr jr_04F_5C77                                ; $5C75: $18 $00

jr_04F_5C77:
    nop                                           ; $5C77: $00
    nop                                           ; $5C78: $00
    nop                                           ; $5C79: $00
    nop                                           ; $5C7A: $00
    nop                                           ; $5C7B: $00
    nop                                           ; $5C7C: $00
    nop                                           ; $5C7D: $00
    nop                                           ; $5C7E: $00
    db $FC                                        ; $5C7F: $FC
    inc bc                                        ; $5C80: $03
    cp h                                          ; $5C81: $BC
    ld b, e                                       ; $5C82: $43
    inc c                                         ; $5C83: $0C
    inc bc                                        ; $5C84: $03
    inc b                                         ; $5C85: $04
    inc bc                                        ; $5C86: $03
    nop                                           ; $5C87: $00
    rlca                                          ; $5C88: $07
    ld bc, $0606                                  ; $5C89: $01 $06 $06
    nop                                           ; $5C8C: $00
    nop                                           ; $5C8D: $00
    nop                                           ; $5C8E: $00
    nop                                           ; $5C8F: $00
    nop                                           ; $5C90: $00
    nop                                           ; $5C91: $00
    nop                                           ; $5C92: $00
    nop                                           ; $5C93: $00
    nop                                           ; $5C94: $00
    ld b, $00                                     ; $5C95: $06 $00
    ld b, $00                                     ; $5C97: $06 $00
    inc c                                         ; $5C99: $0C
    nop                                           ; $5C9A: $00
    inc c                                         ; $5C9B: $0C
    nop                                           ; $5C9C: $00
    inc c                                         ; $5C9D: $0C
    nop                                           ; $5C9E: $00
    nop                                           ; $5C9F: $00
    nop                                           ; $5CA0: $00
    nop                                           ; $5CA1: $00
    nop                                           ; $5CA2: $00
    nop                                           ; $5CA3: $00
    nop                                           ; $5CA4: $00
    nop                                           ; $5CA5: $00
    nop                                           ; $5CA6: $00
    nop                                           ; $5CA7: $00
    nop                                           ; $5CA8: $00
    ld bc, $0F00                                  ; $5CA9: $01 $00 $0F
    nop                                           ; $5CAC: $00
    rra                                           ; $5CAD: $1F
    nop                                           ; $5CAE: $00
    inc b                                         ; $5CAF: $04
    nop                                           ; $5CB0: $00
    nop                                           ; $5CB1: $00
    nop                                           ; $5CB2: $00
    nop                                           ; $5CB3: $00
    nop                                           ; $5CB4: $00
    ld b, $00                                     ; $5CB5: $06 $00
    rrca                                          ; $5CB7: $0F
    nop                                           ; $5CB8: $00
    rrca                                          ; $5CB9: $0F
    nop                                           ; $5CBA: $00
    rst $38                                       ; $5CBB: $FF
    nop                                           ; $5CBC: $00
    rst $08                                       ; $5CBD: $CF
    nop                                           ; $5CBE: $00
    nop                                           ; $5CBF: $00
    nop                                           ; $5CC0: $00
    nop                                           ; $5CC1: $00
    nop                                           ; $5CC2: $00
    nop                                           ; $5CC3: $00
    nop                                           ; $5CC4: $00
    nop                                           ; $5CC5: $00
    nop                                           ; $5CC6: $00
    ld b, $00                                     ; $5CC7: $06 $00
    rst $20                                       ; $5CC9: $E7
    nop                                           ; $5CCA: $00
    db $E3                                        ; $5CCB: $E3
    nop                                           ; $5CCC: $00
    ldh [rP1], a                                  ; $5CCD: $E0 $00
    nop                                           ; $5CCF: $00
    nop                                           ; $5CD0: $00
    nop                                           ; $5CD1: $00
    nop                                           ; $5CD2: $00
    nop                                           ; $5CD3: $00
    nop                                           ; $5CD4: $00
    nop                                           ; $5CD5: $00
    nop                                           ; $5CD6: $00
    nop                                           ; $5CD7: $00
    nop                                           ; $5CD8: $00
    inc b                                         ; $5CD9: $04
    nop                                           ; $5CDA: $00
    add d                                         ; $5CDB: $82
    nop                                           ; $5CDC: $00
    add [hl]                                      ; $5CDD: $86
    nop                                           ; $5CDE: $00
    inc a                                         ; $5CDF: $3C
    nop                                           ; $5CE0: $00
    jr c, jr_04F_5CE3                             ; $5CE1: $38 $00

jr_04F_5CE3:
    ld a, b                                       ; $5CE3: $78
    nop                                           ; $5CE4: $00
    ld a, a                                       ; $5CE5: $7F
    nop                                           ; $5CE6: $00
    ld a, a                                       ; $5CE7: $7F
    nop                                           ; $5CE8: $00
    ld a, a                                       ; $5CE9: $7F
    nop                                           ; $5CEA: $00
    ld a, a                                       ; $5CEB: $7F
    nop                                           ; $5CEC: $00
    ld a, a                                       ; $5CED: $7F
    nop                                           ; $5CEE: $00
    rra                                           ; $5CEF: $1F
    nop                                           ; $5CF0: $00
    ccf                                           ; $5CF1: $3F
    nop                                           ; $5CF2: $00
    ld a, a                                       ; $5CF3: $7F
    nop                                           ; $5CF4: $00
    rst $38                                       ; $5CF5: $FF
    nop                                           ; $5CF6: $00
    rst $38                                       ; $5CF7: $FF
    nop                                           ; $5CF8: $00
    rst $38                                       ; $5CF9: $FF
    nop                                           ; $5CFA: $00
    rst $38                                       ; $5CFB: $FF
    nop                                           ; $5CFC: $00
    adc a                                         ; $5CFD: $8F
    ld [hl], b                                    ; $5CFE: $70
    ld hl, sp+$00                                 ; $5CFF: $F8 $00
    ld hl, sp+$00                                 ; $5D01: $F8 $00
    db $FC                                        ; $5D03: $FC
    nop                                           ; $5D04: $00
    cp h                                          ; $5D05: $BC
    nop                                           ; $5D06: $00
    adc [hl]                                      ; $5D07: $8E
    nop                                           ; $5D08: $00
    rst $00                                       ; $5D09: $C7
    nop                                           ; $5D0A: $00
    rst $28                                       ; $5D0B: $EF
    nop                                           ; $5D0C: $00
    rst $38                                       ; $5D0D: $FF
    nop                                           ; $5D0E: $00
    adc a                                         ; $5D0F: $8F
    nop                                           ; $5D10: $00
    rra                                           ; $5D11: $1F
    nop                                           ; $5D12: $00
    rrca                                          ; $5D13: $0F
    nop                                           ; $5D14: $00
    rra                                           ; $5D15: $1F
    nop                                           ; $5D16: $00
    ld h, e                                       ; $5D17: $63
    nop                                           ; $5D18: $00
    di                                            ; $5D19: $F3
    nop                                           ; $5D1A: $00
    ldh a, [rP1]                                  ; $5D1B: $F0 $00
    ldh a, [rP1]                                  ; $5D1D: $F0 $00
    ld a, a                                       ; $5D1F: $7F
    nop                                           ; $5D20: $00
    ld a, a                                       ; $5D21: $7F
    nop                                           ; $5D22: $00
    ccf                                           ; $5D23: $3F
    nop                                           ; $5D24: $00
    cpl                                           ; $5D25: $2F
    db $10                                        ; $5D26: $10
    ld h, $18                                     ; $5D27: $26 $18
    ld h, $18                                     ; $5D29: $26 $18
    daa                                           ; $5D2B: $27
    jr jr_04F_5D6D                                ; $5D2C: $18 $3F

    nop                                           ; $5D2E: $00
    cp a                                          ; $5D2F: $BF
    ld b, b                                       ; $5D30: $40
    pop af                                        ; $5D31: $F1
    nop                                           ; $5D32: $00
    ldh a, [rP1]                                  ; $5D33: $F0 $00
    add sp, $00                                   ; $5D35: $E8 $00
    ld [hl-], a                                   ; $5D37: $32
    nop                                           ; $5D38: $00
    inc de                                        ; $5D39: $13
    nop                                           ; $5D3A: $00
    nop                                           ; $5D3B: $00
    nop                                           ; $5D3C: $00
    ld [$FF00], sp                                ; $5D3D: $08 $00 $FF
    nop                                           ; $5D40: $00
    rst $38                                       ; $5D41: $FF
    nop                                           ; $5D42: $00
    rst $38                                       ; $5D43: $FF
    nop                                           ; $5D44: $00
    rra                                           ; $5D45: $1F
    nop                                           ; $5D46: $00
    ld a, a                                       ; $5D47: $7F
    nop                                           ; $5D48: $00
    cp a                                          ; $5D49: $BF
    nop                                           ; $5D4A: $00
    rrca                                          ; $5D4B: $0F
    nop                                           ; $5D4C: $00
    rrca                                          ; $5D4D: $0F
    nop                                           ; $5D4E: $00
    ld hl, sp+$00                                 ; $5D4F: $F8 $00
    ld hl, sp+$00                                 ; $5D51: $F8 $00
    ld hl, sp+$00                                 ; $5D53: $F8 $00
    ld hl, sp+$00                                 ; $5D55: $F8 $00
    cp $00                                        ; $5D57: $FE $00
    cp a                                          ; $5D59: $BF
    nop                                           ; $5D5A: $00
    rst $38                                       ; $5D5B: $FF
    nop                                           ; $5D5C: $00
    rst $28                                       ; $5D5D: $EF
    nop                                           ; $5D5E: $00
    rra                                           ; $5D5F: $1F
    nop                                           ; $5D60: $00
    rra                                           ; $5D61: $1F
    nop                                           ; $5D62: $00
    ld c, $00                                     ; $5D63: $0E $00
    nop                                           ; $5D65: $00
    nop                                           ; $5D66: $00
    nop                                           ; $5D67: $00
    nop                                           ; $5D68: $00
    nop                                           ; $5D69: $00
    nop                                           ; $5D6A: $00
    nop                                           ; $5D6B: $00
    nop                                           ; $5D6C: $00

jr_04F_5D6D:
    nop                                           ; $5D6D: $00
    nop                                           ; $5D6E: $00
    inc c                                         ; $5D6F: $0C
    nop                                           ; $5D70: $00
    inc e                                         ; $5D71: $1C
    nop                                           ; $5D72: $00
    inc e                                         ; $5D73: $1C
    nop                                           ; $5D74: $00
    inc e                                         ; $5D75: $1C
    nop                                           ; $5D76: $00
    nop                                           ; $5D77: $00
    nop                                           ; $5D78: $00
    nop                                           ; $5D79: $00
    nop                                           ; $5D7A: $00
    nop                                           ; $5D7B: $00
    nop                                           ; $5D7C: $00
    nop                                           ; $5D7D: $00
    nop                                           ; $5D7E: $00
    cp $01                                        ; $5D7F: $FE $01
    cp $01                                        ; $5D81: $FE $01
    cp $01                                        ; $5D83: $FE $01
    ld c, $01                                     ; $5D85: $0E $01
    rrca                                          ; $5D87: $0F
    nop                                           ; $5D88: $00
    rrca                                          ; $5D89: $0F
    nop                                           ; $5D8A: $00
    rrca                                          ; $5D8B: $0F
    nop                                           ; $5D8C: $00
    ld c, $00                                     ; $5D8D: $0E $00
    nop                                           ; $5D8F: $00

jr_04F_5D90:
    nop                                           ; $5D90: $00
    nop                                           ; $5D91: $00
    nop                                           ; $5D92: $00
    nop                                           ; $5D93: $00
    nop                                           ; $5D94: $00
    ld bc, $0202                                  ; $5D95: $01 $02 $02
    ld bc, $0304                                  ; $5D98: $01 $04 $03
    dec bc                                        ; $5D9B: $0B
    ld b, $16                                     ; $5D9C: $06 $16
    rrca                                          ; $5D9E: $0F
    nop                                           ; $5D9F: $00
    nop                                           ; $5DA0: $00
    nop                                           ; $5DA1: $00
    nop                                           ; $5DA2: $00
    and b                                         ; $5DA3: $A0
    ld [hl], b                                    ; $5DA4: $70
    ld a, b                                       ; $5DA5: $78
    db $F4                                        ; $5DA6: $F4
    call nc, $1238                                ; $5DA7: $D4 $38 $12
    inc c                                         ; $5DAA: $0C
    inc c                                         ; $5DAB: $0C
    ld b, $DE                                     ; $5DAC: $06 $DE
    ld a, $00                                     ; $5DAE: $3E $00
    nop                                           ; $5DB0: $00
    nop                                           ; $5DB1: $00
    nop                                           ; $5DB2: $00
    nop                                           ; $5DB3: $00
    nop                                           ; $5DB4: $00
    nop                                           ; $5DB5: $00
    nop                                           ; $5DB6: $00
    ld [bc], a                                    ; $5DB7: $02
    inc c                                         ; $5DB8: $0C
    inc b                                         ; $5DB9: $04
    ld c, $0A                                     ; $5DBA: $0E $0A
    inc b                                         ; $5DBC: $04
    nop                                           ; $5DBD: $00
    nop                                           ; $5DBE: $00
    dec bc                                        ; $5DBF: $0B
    inc e                                         ; $5DC0: $1C
    inc d                                         ; $5DC1: $14
    add hl, bc                                    ; $5DC2: $09
    ld a, [bc]                                    ; $5DC3: $0A
    dec e                                         ; $5DC4: $1D
    dec b                                         ; $5DC5: $05
    ld [bc], a                                    ; $5DC6: $02
    inc b                                         ; $5DC7: $04
    ld [bc], a                                    ; $5DC8: $02
    ld [$0606], sp                                ; $5DC9: $08 $06 $06
    inc c                                         ; $5DCC: $0C
    inc b                                         ; $5DCD: $04
    inc c                                         ; $5DCE: $0C
    ld a, [hl]                                    ; $5DCF: $7E
    cp $FF                                        ; $5DD0: $FE $FF
    cp $C4                                        ; $5DD2: $FE $C4
    dec sp                                        ; $5DD4: $3B
    ld a, [hl+]                                   ; $5DD5: $2A
    ld de, $1020                                  ; $5DD6: $11 $20 $10
    nop                                           ; $5DD9: $00
    jr nc, @+$12                                  ; $5DDA: $30 $10

    jr nz, jr_04F_5DDE                            ; $5DDC: $20 $00

jr_04F_5DDE:
    jr nz, jr_04F_5DE0                            ; $5DDE: $20 $00

jr_04F_5DE0:
    nop                                           ; $5DE0: $00
    nop                                           ; $5DE1: $00
    nop                                           ; $5DE2: $00
    nop                                           ; $5DE3: $00
    nop                                           ; $5DE4: $00
    ld d, b                                       ; $5DE5: $50
    jr nz, jr_04F_5D90                            ; $5DE6: $20 $A8

    ld [hl], b                                    ; $5DE8: $70
    ld l, h                                       ; $5DE9: $6C
    sbc [hl]                                      ; $5DEA: $9E
    ld d, $0C                                     ; $5DEB: $16 $0C
    ld a, [bc]                                    ; $5DED: $0A
    inc d                                         ; $5DEE: $14
    ld [$4004], sp                                ; $5DEF: $08 $04 $40
    adc h                                         ; $5DF2: $8C
    and h                                         ; $5DF3: $A4
    ld c, b                                       ; $5DF4: $48
    db $10                                        ; $5DF5: $10
    ld l, b                                       ; $5DF6: $68
    inc b                                         ; $5DF7: $04
    ld [$0C08], sp                                ; $5DF8: $08 $08 $0C
    inc e                                         ; $5DFB: $1C
    inc c                                         ; $5DFC: $0C
    ld [$401C], sp                                ; $5DFD: $08 $1C $40
    jr nz, jr_04F_5E02                            ; $5E00: $20 $00

jr_04F_5E02:
    ld h, b                                       ; $5E02: $60
    jr nz, jr_04F_5E45                            ; $5E03: $20 $40

    nop                                           ; $5E05: $00
    ld b, b                                       ; $5E06: $40
    add b                                         ; $5E07: $80
    ld b, b                                       ; $5E08: $40
    nop                                           ; $5E09: $00
    ret nz                                        ; $5E0A: $C0

    ld b, b                                       ; $5E0B: $40
    add b                                         ; $5E0C: $80
    nop                                           ; $5E0D: $00
    ret nz                                        ; $5E0E: $C0

    ld [bc], a                                    ; $5E0F: $02
    rlca                                          ; $5E10: $07
    dec b                                         ; $5E11: $05
    ld [bc], a                                    ; $5E12: $02
    nop                                           ; $5E13: $00
    inc bc                                        ; $5E14: $03
    ld [bc], a                                    ; $5E15: $02
    ld bc, $0301                                  ; $5E16: $01 $01 $03
    ld bc, $0000                                  ; $5E19: $01 $00 $00
    ld bc, $0000                                  ; $5E1C: $01 $00 $00
    jr z, jr_04F_5E31                             ; $5E1F: $28 $10

    inc d                                         ; $5E21: $14
    jr c, @+$2C                                   ; $5E22: $38 $2A

    inc d                                         ; $5E24: $14
    adc h                                         ; $5E25: $8C
    rla                                           ; $5E26: $17
    ld d, [hl]                                    ; $5E27: $56
    adc l                                         ; $5E28: $8D
    adc b                                         ; $5E29: $88
    call nz, $8040                                ; $5E2A: $C4 $40 $80
    nop                                           ; $5E2D: $00
    nop                                           ; $5E2E: $00
    nop                                           ; $5E2F: $00
    nop                                           ; $5E30: $00

jr_04F_5E31:
    nop                                           ; $5E31: $00
    nop                                           ; $5E32: $00
    nop                                           ; $5E33: $00
    nop                                           ; $5E34: $00
    db $10                                        ; $5E35: $10
    jr nz, jr_04F_5E68                            ; $5E36: $20 $30

    jr c, jr_04F_5E82                             ; $5E38: $38 $48

    jr nc, jr_04F_5E66                            ; $5E3A: $30 $2A

    ld b, h                                       ; $5E3C: $44
    ld de, $000F                                  ; $5E3D: $11 $0F $00
    ld h, b                                       ; $5E40: $60
    ld d, b                                       ; $5E41: $50
    ld h, b                                       ; $5E42: $60
    jr nz, @+$5A                                  ; $5E43: $20 $58

jr_04F_5E45:
    ld [$1010], sp                                ; $5E45: $08 $10 $10
    ld [$0804], sp                                ; $5E48: $08 $04 $08
    ld e, b                                       ; $5E4B: $58
    inc l                                         ; $5E4C: $2C
    ld a, $CD                                     ; $5E4D: $3E $CD
    nop                                           ; $5E4F: $00
    nop                                           ; $5E50: $00
    nop                                           ; $5E51: $00
    nop                                           ; $5E52: $00
    nop                                           ; $5E53: $00
    nop                                           ; $5E54: $00
    nop                                           ; $5E55: $00
    nop                                           ; $5E56: $00
    nop                                           ; $5E57: $00
    ld b, $07                                     ; $5E58: $06 $07
    ld b, $06                                     ; $5E5A: $06 $06
    rlca                                          ; $5E5C: $07
    ld [bc], a                                    ; $5E5D: $02
    rlca                                          ; $5E5E: $07
    ld a, [hl+]                                   ; $5E5F: $2A
    dec e                                         ; $5E60: $1D
    jr jr_04F_5E9F                                ; $5E61: $18 $3C

    inc [hl]                                      ; $5E63: $34
    jr c, jr_04F_5E76                             ; $5E64: $38 $10

jr_04F_5E66:
    jr nz, jr_04F_5E68                            ; $5E66: $20 $00

jr_04F_5E68:
    jr nc, jr_04F_5E6A                            ; $5E68: $30 $00

jr_04F_5E6A:
    nop                                           ; $5E6A: $00
    nop                                           ; $5E6B: $00
    nop                                           ; $5E6C: $00
    nop                                           ; $5E6D: $00
    nop                                           ; $5E6E: $00
    db $DD                                        ; $5E6F: $DD
    ld a, $2C                                     ; $5E70: $3E $2C
    ld d, d                                       ; $5E72: $52
    ld h, b                                       ; $5E73: $60
    db $10                                        ; $5E74: $10
    cp b                                          ; $5E75: $B8

jr_04F_5E76:
    ld [hl], b                                    ; $5E76: $70
    ld [hl], b                                    ; $5E77: $70
    ld hl, sp-$10                                 ; $5E78: $F8 $F0
    ldh [$C0], a                                  ; $5E7A: $E0 $C0
    ldh [$A0], a                                  ; $5E7C: $E0 $A0
    ret nz                                        ; $5E7E: $C0

    dec b                                         ; $5E7F: $05
    ld [bc], a                                    ; $5E80: $02
    nop                                           ; $5E81: $00

jr_04F_5E82:
    ld [bc], a                                    ; $5E82: $02
    nop                                           ; $5E83: $00
    ld [bc], a                                    ; $5E84: $02
    nop                                           ; $5E85: $00
    nop                                           ; $5E86: $00
    ld b, b                                       ; $5E87: $40
    jr nz, jr_04F_5EBA                            ; $5E88: $20 $30

    ld h, b                                       ; $5E8A: $60
    inc [hl]                                      ; $5E8B: $34
    ld a, b                                       ; $5E8C: $78
    jr z, jr_04F_5EAB                             ; $5E8D: $28 $1C

    nop                                           ; $5E8F: $00
    nop                                           ; $5E90: $00
    nop                                           ; $5E91: $00
    nop                                           ; $5E92: $00
    ld [bc], a                                    ; $5E93: $02
    inc h                                         ; $5E94: $24
    ld d, h                                       ; $5E95: $54
    ld [hl+], a                                   ; $5E96: $22
    inc h                                         ; $5E97: $24
    ld a, [hl]                                    ; $5E98: $7E
    xor d                                         ; $5E99: $AA
    ld b, h                                       ; $5E9A: $44
    ld l, b                                       ; $5E9B: $68
    call nz, $F8F4                                ; $5E9C: $C4 $F4 $F8

jr_04F_5E9F:
    inc d                                         ; $5E9F: $14
    ld [$0408], sp                                ; $5EA0: $08 $08 $04
    inc b                                         ; $5EA3: $04
    ld [rRAMG], sp                                ; $5EA4: $08 $00 $00
    nop                                           ; $5EA7: $00
    nop                                           ; $5EA8: $00
    nop                                           ; $5EA9: $00
    nop                                           ; $5EAA: $00

jr_04F_5EAB:
    nop                                           ; $5EAB: $00
    nop                                           ; $5EAC: $00
    nop                                           ; $5EAD: $00
    nop                                           ; $5EAE: $00
    ld a, h                                       ; $5EAF: $7C
    ld hl, sp-$48                                 ; $5EB0: $F8 $B8
    ld a, h                                       ; $5EB2: $7C
    inc l                                         ; $5EB3: $2C
    inc e                                         ; $5EB4: $1C
    inc e                                         ; $5EB5: $1C
    inc c                                         ; $5EB6: $0C
    inc c                                         ; $5EB7: $0C
    inc c                                         ; $5EB8: $0C
    inc e                                         ; $5EB9: $1C

jr_04F_5EBA:
    inc c                                         ; $5EBA: $0C
    ld [$001C], sp                                ; $5EBB: $08 $1C $00
    nop                                           ; $5EBE: $00
    nop                                           ; $5EBF: $00
    nop                                           ; $5EC0: $00
    nop                                           ; $5EC1: $00
    inc c                                         ; $5EC2: $0C
    ld [$0004], sp                                ; $5EC3: $08 $04 $00
    nop                                           ; $5EC6: $00
    nop                                           ; $5EC7: $00
    nop                                           ; $5EC8: $00
    nop                                           ; $5EC9: $00
    nop                                           ; $5ECA: $00
    nop                                           ; $5ECB: $00
    ld b, $0A                                     ; $5ECC: $06 $0A
    inc b                                         ; $5ECE: $04
    nop                                           ; $5ECF: $00
    nop                                           ; $5ED0: $00
    nop                                           ; $5ED1: $00
    nop                                           ; $5ED2: $00
    nop                                           ; $5ED3: $00
    nop                                           ; $5ED4: $00
    nop                                           ; $5ED5: $00
    nop                                           ; $5ED6: $00
    nop                                           ; $5ED7: $00
    nop                                           ; $5ED8: $00
    ld [bc], a                                    ; $5ED9: $02
    ld bc, $0304                                  ; $5EDA: $01 $04 $03
    cpl                                           ; $5EDD: $2F
    ld e, $15                                     ; $5EDE: $1E $15
    ld c, $0F                                     ; $5EE0: $0E $0F
    dec de                                        ; $5EE2: $1B
    rla                                           ; $5EE3: $17
    dec bc                                        ; $5EE4: $0B
    dec de                                        ; $5EE5: $1B
    ld c, $29                                     ; $5EE6: $0E $29
    ld e, $5B                                     ; $5EE8: $1E $5B
    inc a                                         ; $5EEA: $3C
    inc [hl]                                      ; $5EEB: $34
    ld a, c                                       ; $5EEC: $79
    ld e, b                                       ; $5EED: $58
    inc h                                         ; $5EEE: $24
    cp [hl]                                       ; $5EEF: $BE
    ld a, [hl]                                    ; $5EF0: $7E
    rst $38                                       ; $5EF1: $FF
    cp $FE                                        ; $5EF2: $FE $FE
    rst $38                                       ; $5EF4: $FF
    ld a, [$D4FC]                                 ; $5EF5: $FA $FC $D4
    add sp, $20                                   ; $5EF8: $E8 $20
    ret z                                         ; $5EFA: $C8

    sub b                                         ; $5EFB: $90
    ld [$1008], sp                                ; $5EFC: $08 $08 $10
    nop                                           ; $5EFF: $00
    nop                                           ; $5F00: $00
    nop                                           ; $5F01: $00
    ld bc, $0001                                  ; $5F02: $01 $01 $00
    ld [bc], a                                    ; $5F05: $02
    ld bc, $0301                                  ; $5F06: $01 $01 $03
    inc bc                                        ; $5F09: $03
    inc bc                                        ; $5F0A: $03
    ld bc, $0002                                  ; $5F0B: $01 $02 $00
    ld [bc], a                                    ; $5F0E: $02
    add b                                         ; $5F0F: $80
    ld h, b                                       ; $5F10: $60
    pop hl                                        ; $5F11: $E1
    ret nz                                        ; $5F12: $C0

    ld [bc], a                                    ; $5F13: $02
    pop bc                                        ; $5F14: $C1
    jp $A607                                      ; $5F15: $C3 $07 $A6


    ld b, e                                       ; $5F18: $43
    push hl                                       ; $5F19: $E5
    ld a, [c]                                     ; $5F1A: $F2
    ld a, d                                       ; $5F1B: $7A
    or $A4                                        ; $5F1C: $F6 $A4
    ld [hl], d                                    ; $5F1E: $72
    nop                                           ; $5F1F: $00
    db $10                                        ; $5F20: $10
    jr nz, @-$2E                                  ; $5F21: $20 $D0

    ret nc                                        ; $5F23: $D0

    jr nc, @+$22                                  ; $5F24: $30 $20

    jr nc, jr_04F_5F38                            ; $5F26: $30 $10

    jr nz, jr_04F_5F3A                            ; $5F28: $20 $10

    jr nz, jr_04F_5F2C                            ; $5F2A: $20 $00

jr_04F_5F2C:
    jr nc, jr_04F_5F2E                            ; $5F2C: $30 $00

jr_04F_5F2E:
    nop                                           ; $5F2E: $00
    dec b                                         ; $5F2F: $05
    ld [bc], a                                    ; $5F30: $02
    ld [bc], a                                    ; $5F31: $02
    dec b                                         ; $5F32: $05
    nop                                           ; $5F33: $00

Jump_04F_5F34:
    nop                                           ; $5F34: $00
    nop                                           ; $5F35: $00
    nop                                           ; $5F36: $00
    nop                                           ; $5F37: $00

jr_04F_5F38:
    nop                                           ; $5F38: $00
    nop                                           ; $5F39: $00

jr_04F_5F3A:
    nop                                           ; $5F3A: $00
    nop                                           ; $5F3B: $00
    nop                                           ; $5F3C: $00
    nop                                           ; $5F3D: $00
    nop                                           ; $5F3E: $00
    ld d, b                                       ; $5F3F: $50
    jr nz, @+$2A                                  ; $5F40: $20 $28

    db $10                                        ; $5F42: $10
    jr nc, jr_04F_5F5D                            ; $5F43: $30 $18

    jr jr_04F_5F77                                ; $5F45: $18 $30

    jr jr_04F_5F79                                ; $5F47: $18 $30

    jr nc, jr_04F_5F63                            ; $5F49: $30 $18

    ld [$1010], sp                                ; $5F4B: $08 $10 $10
    ld [rRAMG], sp                                ; $5F4E: $08 $00 $00
    nop                                           ; $5F51: $00
    nop                                           ; $5F52: $00
    nop                                           ; $5F53: $00
    nop                                           ; $5F54: $00
    nop                                           ; $5F55: $00
    nop                                           ; $5F56: $00
    nop                                           ; $5F57: $00
    nop                                           ; $5F58: $00
    nop                                           ; $5F59: $00
    nop                                           ; $5F5A: $00
    nop                                           ; $5F5B: $00
    nop                                           ; $5F5C: $00

jr_04F_5F5D:
    nop                                           ; $5F5D: $00
    jr nc, jr_04F_5F60                            ; $5F5E: $30 $00

jr_04F_5F60:
    nop                                           ; $5F60: $00
    nop                                           ; $5F61: $00
    nop                                           ; $5F62: $00

jr_04F_5F63:
    nop                                           ; $5F63: $00
    nop                                           ; $5F64: $00
    nop                                           ; $5F65: $00
    nop                                           ; $5F66: $00
    nop                                           ; $5F67: $00
    nop                                           ; $5F68: $00
    jr nz, @+$42                                  ; $5F69: $20 $40

    ld e, d                                       ; $5F6B: $5A
    inc a                                         ; $5F6C: $3C
    cp l                                          ; $5F6D: $BD
    ld a, [hl]                                    ; $5F6E: $7E
    nop                                           ; $5F6F: $00
    nop                                           ; $5F70: $00
    nop                                           ; $5F71: $00
    nop                                           ; $5F72: $00
    nop                                           ; $5F73: $00
    nop                                           ; $5F74: $00
    nop                                           ; $5F75: $00
    nop                                           ; $5F76: $00

jr_04F_5F77:
    nop                                           ; $5F77: $00
    nop                                           ; $5F78: $00

jr_04F_5F79:
    nop                                           ; $5F79: $00
    nop                                           ; $5F7A: $00
    nop                                           ; $5F7B: $00
    ld bc, $0001                                  ; $5F7C: $01 $01 $00
    jr jr_04F_5FB1                                ; $5F7F: $18 $30

    ld sp, $0C18                                  ; $5F81: $31 $18 $0C
    add hl, de                                    ; $5F84: $19
    add hl, de                                    ; $5F85: $19
    inc c                                         ; $5F86: $0C
    dec b                                         ; $5F87: $05
    ld [$050A], sp                                ; $5F88: $08 $0A $05
    inc b                                         ; $5F8B: $04
    adc a                                         ; $5F8C: $8F
    ld c, [hl]                                    ; $5F8D: $4E
    add a                                         ; $5F8E: $87
    ld h, [hl]                                    ; $5F8F: $66
    rst $38                                       ; $5F90: $FF
    push af                                       ; $5F91: $F5
    adc $80                                       ; $5F92: $CE $80
    ret nz                                        ; $5F94: $C0

    ld b, b                                       ; $5F95: $40
    add b                                         ; $5F96: $80
    nop                                           ; $5F97: $00
    add b                                         ; $5F98: $80
    ret nz                                        ; $5F99: $C0

    add b                                         ; $5F9A: $80
    ld d, h                                       ; $5F9B: $54
    add sp, $68                                   ; $5F9C: $E8 $68
    db $FC                                        ; $5F9E: $FC
    nop                                           ; $5F9F: $00
    nop                                           ; $5FA0: $00
    nop                                           ; $5FA1: $00
    nop                                           ; $5FA2: $00
    nop                                           ; $5FA3: $00
    nop                                           ; $5FA4: $00
    nop                                           ; $5FA5: $00
    nop                                           ; $5FA6: $00
    nop                                           ; $5FA7: $00
    nop                                           ; $5FA8: $00
    inc b                                         ; $5FA9: $04
    ld [$0C0A], sp                                ; $5FAA: $08 $0A $0C
    dec b                                         ; $5FAD: $05
    ld c, $27                                     ; $5FAE: $0E $27
    rst $08                                       ; $5FB0: $CF

jr_04F_5FB1:
    rst $08                                       ; $5FB1: $CF
    ld h, a                                       ; $5FB2: $67
    ld h, a                                       ; $5FB3: $67
    rst $08                                       ; $5FB4: $CF
    adc d                                         ; $5FB5: $8A
    ld h, a                                       ; $5FB6: $67
    ld d, l                                       ; $5FB7: $55
    ld [hl+], a                                   ; $5FB8: $22
    cpl                                           ; $5FB9: $2F
    ld a, $5E                                     ; $5FBA: $3E $5E
    cpl                                           ; $5FBC: $2F
    ld a, [hl-]                                   ; $5FBD: $3A
    ld l, h                                       ; $5FBE: $6C
    or h                                          ; $5FBF: $B4
    ret z                                         ; $5FC0: $C8

    ret nz                                        ; $5FC1: $C0

    add b                                         ; $5FC2: $80
    nop                                           ; $5FC3: $00
    add b                                         ; $5FC4: $80
    add b                                         ; $5FC5: $80
    nop                                           ; $5FC6: $00
    nop                                           ; $5FC7: $00
    nop                                           ; $5FC8: $00
    nop                                           ; $5FC9: $00
    nop                                           ; $5FCA: $00
    nop                                           ; $5FCB: $00
    nop                                           ; $5FCC: $00
    nop                                           ; $5FCD: $00
    nop                                           ; $5FCE: $00
    ld a, [bc]                                    ; $5FCF: $0A
    rlca                                          ; $5FD0: $07
    dec b                                         ; $5FD1: $05
    ld [bc], a                                    ; $5FD2: $02
    nop                                           ; $5FD3: $00
    ld [bc], a                                    ; $5FD4: $02
    nop                                           ; $5FD5: $00
    nop                                           ; $5FD6: $00
    nop                                           ; $5FD7: $00
    nop                                           ; $5FD8: $00
    nop                                           ; $5FD9: $00
    nop                                           ; $5FDA: $00
    nop                                           ; $5FDB: $00
    nop                                           ; $5FDC: $00
    nop                                           ; $5FDD: $00
    nop                                           ; $5FDE: $00
    ld [hl], h                                    ; $5FDF: $74
    jr c, jr_04F_601B                             ; $5FE0: $38 $39

    ld [hl], b                                    ; $5FE2: $70
    jr nz, @+$73                                  ; $5FE3: $20 $71

    ld d, c                                       ; $5FE5: $51
    jr nz, jr_04F_5FE8                            ; $5FE6: $20 $00

jr_04F_5FE8:
    jr nz, jr_04F_5FEA                            ; $5FE8: $20 $00

jr_04F_5FEA:
    nop                                           ; $5FEA: $00
    nop                                           ; $5FEB: $00
    nop                                           ; $5FEC: $00
    nop                                           ; $5FED: $00
    nop                                           ; $5FEE: $00
    nop                                           ; $5FEF: $00
    nop                                           ; $5FF0: $00
    nop                                           ; $5FF1: $00
    ret nz                                        ; $5FF2: $C0

    ret nz                                        ; $5FF3: $C0

    add b                                         ; $5FF4: $80
    nop                                           ; $5FF5: $00
    add b                                         ; $5FF6: $80
    nop                                           ; $5FF7: $00
    nop                                           ; $5FF8: $00
    nop                                           ; $5FF9: $00
    nop                                           ; $5FFA: $00
    nop                                           ; $5FFB: $00
    nop                                           ; $5FFC: $00
    nop                                           ; $5FFD: $00
    nop                                           ; $5FFE: $00
    nop                                           ; $5FFF: $00
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    nop                                           ; $6004: $00
    ld hl, sp-$01                                 ; $6005: $F8 $FF
    ld hl, sp-$01                                 ; $6007: $F8 $FF
    nop                                           ; $6009: $00
    nop                                           ; $600A: $00
    nop                                           ; $600B: $00
    nop                                           ; $600C: $00
    nop                                           ; $600D: $00
    nop                                           ; $600E: $00
    nop                                           ; $600F: $00
    nop                                           ; $6010: $00
    nop                                           ; $6011: $00
    nop                                           ; $6012: $00
    nop                                           ; $6013: $00
    nop                                           ; $6014: $00
    add hl, sp                                    ; $6015: $39
    rst $38                                       ; $6016: $FF
    adc a                                         ; $6017: $8F
    ld [hl], b                                    ; $6018: $70
    nop                                           ; $6019: $00
    nop                                           ; $601A: $00

jr_04F_601B:
    nop                                           ; $601B: $00
    nop                                           ; $601C: $00
    nop                                           ; $601D: $00
    nop                                           ; $601E: $00
    nop                                           ; $601F: $00
    nop                                           ; $6020: $00
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    nop                                           ; $6023: $00
    nop                                           ; $6024: $00
    rst $38                                       ; $6025: $FF
    rst $38                                       ; $6026: $FF
    ld b, c                                       ; $6027: $41
    cp a                                          ; $6028: $BF
    nop                                           ; $6029: $00
    nop                                           ; $602A: $00
    nop                                           ; $602B: $00
    nop                                           ; $602C: $00
    nop                                           ; $602D: $00
    nop                                           ; $602E: $00
    nop                                           ; $602F: $00
    nop                                           ; $6030: $00
    nop                                           ; $6031: $00
    nop                                           ; $6032: $00
    nop                                           ; $6033: $00
    nop                                           ; $6034: $00
    db $FC                                        ; $6035: $FC
    rst $38                                       ; $6036: $FF
    ld b, $FF                                     ; $6037: $06 $FF
    nop                                           ; $6039: $00
    nop                                           ; $603A: $00
    nop                                           ; $603B: $00
    nop                                           ; $603C: $00
    nop                                           ; $603D: $00
    nop                                           ; $603E: $00
    nop                                           ; $603F: $00
    nop                                           ; $6040: $00
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00
    nop                                           ; $6043: $00
    nop                                           ; $6044: $00
    cpl                                           ; $6045: $2F
    ret nz                                        ; $6046: $C0

    rst $38                                       ; $6047: $FF
    rst $38                                       ; $6048: $FF
    nop                                           ; $6049: $00
    nop                                           ; $604A: $00
    nop                                           ; $604B: $00
    nop                                           ; $604C: $00
    nop                                           ; $604D: $00
    nop                                           ; $604E: $00
    nop                                           ; $604F: $00
    nop                                           ; $6050: $00
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    nop                                           ; $6053: $00
    nop                                           ; $6054: $00
    ld hl, sp+$07                                 ; $6055: $F8 $07
    rst $38                                       ; $6057: $FF
    rst $38                                       ; $6058: $FF
    nop                                           ; $6059: $00
    nop                                           ; $605A: $00
    nop                                           ; $605B: $00
    nop                                           ; $605C: $00
    nop                                           ; $605D: $00
    nop                                           ; $605E: $00
    nop                                           ; $605F: $00
    nop                                           ; $6060: $00
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    nop                                           ; $6063: $00
    nop                                           ; $6064: $00
    inc bc                                        ; $6065: $03
    db $FC                                        ; $6066: $FC
    ld sp, hl                                     ; $6067: $F9
    rst $38                                       ; $6068: $FF
    nop                                           ; $6069: $00
    nop                                           ; $606A: $00
    nop                                           ; $606B: $00
    nop                                           ; $606C: $00
    nop                                           ; $606D: $00
    nop                                           ; $606E: $00
    nop                                           ; $606F: $00
    nop                                           ; $6070: $00
    nop                                           ; $6071: $00
    nop                                           ; $6072: $00
    nop                                           ; $6073: $00
    nop                                           ; $6074: $00
    xor l                                         ; $6075: $AD
    ld d, e                                       ; $6076: $53
    rlca                                          ; $6077: $07
    ld hl, sp+$00                                 ; $6078: $F8 $00
    nop                                           ; $607A: $00
    nop                                           ; $607B: $00
    nop                                           ; $607C: $00
    nop                                           ; $607D: $00
    nop                                           ; $607E: $00
    nop                                           ; $607F: $00
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    nop                                           ; $6082: $00
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    nop                                           ; $6087: $00
    nop                                           ; $6088: $00
    nop                                           ; $6089: $00
    nop                                           ; $608A: $00
    nop                                           ; $608B: $00
    nop                                           ; $608C: $00
    rst $38                                       ; $608D: $FF
    ld a, a                                       ; $608E: $7F
    inc b                                         ; $608F: $04
    inc b                                         ; $6090: $04
    ld b, $04                                     ; $6091: $06 $04
    rlca                                          ; $6093: $07
    ld b, $0F                                     ; $6094: $06 $0F
    rla                                           ; $6096: $17
    ld a, a                                       ; $6097: $7F
    cpl                                           ; $6098: $2F
    rra                                           ; $6099: $1F
    dec de                                        ; $609A: $1B
    rra                                           ; $609B: $1F
    rrca                                          ; $609C: $0F
    rst $38                                       ; $609D: $FF
    rst $38                                       ; $609E: $FF
    nop                                           ; $609F: $00

jr_04F_60A0:
    nop                                           ; $60A0: $00
    nop                                           ; $60A1: $00
    nop                                           ; $60A2: $00
    nop                                           ; $60A3: $00
    nop                                           ; $60A4: $00
    nop                                           ; $60A5: $00
    nop                                           ; $60A6: $00
    ld h, b                                       ; $60A7: $60
    nop                                           ; $60A8: $00
    ld [hl], b                                    ; $60A9: $70
    jr nz, jr_04F_611C                            ; $60AA: $20 $70

    jr nc, @+$3A                                  ; $60AC: $30 $38

    ld d, b                                       ; $60AE: $50
    nop                                           ; $60AF: $00
    nop                                           ; $60B0: $00
    nop                                           ; $60B1: $00
    nop                                           ; $60B2: $00
    ld [bc], a                                    ; $60B3: $02
    ld bc, $0000                                  ; $60B4: $01 $00 $00
    ld [bc], a                                    ; $60B7: $02
    ld bc, $0304                                  ; $60B8: $01 $04 $03
    rlca                                          ; $60BB: $07
    inc bc                                        ; $60BC: $03
    rla                                           ; $60BD: $17
    rrca                                          ; $60BE: $0F
    jr c, jr_04F_60D9                             ; $60BF: $38 $18

    inc e                                         ; $60C1: $1C
    jr jr_04F_60A0                                ; $60C2: $18 $DC

    adc h                                         ; $60C4: $8C
    cp $6C                                        ; $60C5: $FE $6C
    cp $3E                                        ; $60C7: $FE $3E
    cp $9E                                        ; $60C9: $FE $9E
    rst $38                                       ; $60CB: $FF
    rst $38                                       ; $60CC: $FF
    rst $38                                       ; $60CD: $FF
    rst $38                                       ; $60CE: $FF
    nop                                           ; $60CF: $00
    nop                                           ; $60D0: $00
    nop                                           ; $60D1: $00
    nop                                           ; $60D2: $00
    nop                                           ; $60D3: $00
    nop                                           ; $60D4: $00
    nop                                           ; $60D5: $00
    nop                                           ; $60D6: $00
    nop                                           ; $60D7: $00
    nop                                           ; $60D8: $00

jr_04F_60D9:
    nop                                           ; $60D9: $00
    nop                                           ; $60DA: $00
    ld b, $00                                     ; $60DB: $06 $00
    inc bc                                        ; $60DD: $03
    nop                                           ; $60DE: $00
    nop                                           ; $60DF: $00
    nop                                           ; $60E0: $00
    nop                                           ; $60E1: $00
    nop                                           ; $60E2: $00
    nop                                           ; $60E3: $00
    nop                                           ; $60E4: $00
    ld [$0800], sp                                ; $60E5: $08 $00 $08
    inc b                                         ; $60E8: $04
    ld [bc], a                                    ; $60E9: $02
    inc b                                         ; $60EA: $04
    add b                                         ; $60EB: $80
    ld b, $07                                     ; $60EC: $06 $07
    add d                                         ; $60EE: $82
    ld bc, $0000                                  ; $60EF: $01 $00 $00
    nop                                           ; $60F2: $00
    nop                                           ; $60F3: $00
    nop                                           ; $60F4: $00
    inc c                                         ; $60F5: $0C
    nop                                           ; $60F6: $00
    ld bc, $0106                                  ; $60F7: $01 $06 $01
    inc bc                                        ; $60FA: $03
    nop                                           ; $60FB: $00
    ld bc, $0000                                  ; $60FC: $01 $00 $00
    ld b, a                                       ; $60FF: $47
    add e                                         ; $6100: $83
    and l                                         ; $6101: $A5
    ld b, e                                       ; $6102: $43
    ld h, c                                       ; $6103: $61
    inc bc                                        ; $6104: $03
    rlca                                          ; $6105: $07
    inc bc                                        ; $6106: $03
    ld bc, $A203                                  ; $6107: $01 $03 $A2
    pop bc                                        ; $610A: $C1
    ld h, b                                       ; $610B: $60
    ld hl, sp+$18                                 ; $610C: $F8 $18
    ld a, h                                       ; $610E: $7C
    nop                                           ; $610F: $00
    nop                                           ; $6110: $00
    nop                                           ; $6111: $00
    add b                                         ; $6112: $80
    ret nz                                        ; $6113: $C0

    add b                                         ; $6114: $80
    ldh [$C0], a                                  ; $6115: $E0 $C0
    ldh a, [$E0]                                  ; $6117: $F0 $E0
    ret nz                                        ; $6119: $C0

    ldh a, [$F0]                                  ; $611A: $F0 $F0

jr_04F_611C:
    nop                                           ; $611C: $00
    jr nz, jr_04F_611F                            ; $611D: $20 $00

jr_04F_611F:
    nop                                           ; $611F: $00
    nop                                           ; $6120: $00
    nop                                           ; $6121: $00
    nop                                           ; $6122: $00
    nop                                           ; $6123: $00
    nop                                           ; $6124: $00
    nop                                           ; $6125: $00
    nop                                           ; $6126: $00
    nop                                           ; $6127: $00
    nop                                           ; $6128: $00
    ld [bc], a                                    ; $6129: $02
    ld bc, $0100                                  ; $612A: $01 $00 $01
    nop                                           ; $612D: $00
    nop                                           ; $612E: $00
    ld e, $7C                                     ; $612F: $1E $7C
    cp h                                          ; $6131: $BC
    ld a, [hl]                                    ; $6132: $7E
    rst $38                                       ; $6133: $FF
    ld a, a                                       ; $6134: $7F
    ld a, a                                       ; $6135: $7F
    inc sp                                        ; $6136: $33
    ld b, c                                       ; $6137: $41
    jr c, jr_04F_61B9                             ; $6138: $38 $7F

    rst $38                                       ; $613A: $FF
    rst $38                                       ; $613B: $FF
    rst $38                                       ; $613C: $FF
    nop                                           ; $613D: $00
    nop                                           ; $613E: $00
    nop                                           ; $613F: $00
    jr nz, jr_04F_6166                            ; $6140: $20 $24

    nop                                           ; $6142: $00
    call nz, $C484                                ; $6143: $C4 $84 $C4
    call nz, RST_00                               ; $6146: $C4 $00 $00
    adc b                                         ; $6149: $88
    adc b                                         ; $614A: $88
    add b                                         ; $614B: $80
    add b                                         ; $614C: $80
    rst $38                                       ; $614D: $FF
    ld a, a                                       ; $614E: $7F
    nop                                           ; $614F: $00
    nop                                           ; $6150: $00
    nop                                           ; $6151: $00
    nop                                           ; $6152: $00
    ld [$0E00], sp                                ; $6153: $08 $00 $0E
    nop                                           ; $6156: $00
    rrca                                          ; $6157: $0F
    nop                                           ; $6158: $00
    inc b                                         ; $6159: $04
    inc bc                                        ; $615A: $03
    ld [bc], a                                    ; $615B: $02
    ld bc, $0001                                  ; $615C: $01 $01 $00
    nop                                           ; $615F: $00
    nop                                           ; $6160: $00
    ld b, b                                       ; $6161: $40

jr_04F_6162:
    nop                                           ; $6162: $00
    ld h, b                                       ; $6163: $60
    nop                                           ; $6164: $00
    ld d, b                                       ; $6165: $50

jr_04F_6166:
    jr nz, jr_04F_61B8                            ; $6166: $20 $50

    jr nc, jr_04F_6162                            ; $6168: $30 $F8

    db $10                                        ; $616A: $10
    ld e, h                                       ; $616B: $5C
    cp b                                          ; $616C: $B8
    db $10                                        ; $616D: $10
    ld a, h                                       ; $616E: $7C
    nop                                           ; $616F: $00
    nop                                           ; $6170: $00

jr_04F_6171:
    nop                                           ; $6171: $00
    nop                                           ; $6172: $00
    nop                                           ; $6173: $00
    nop                                           ; $6174: $00
    nop                                           ; $6175: $00
    nop                                           ; $6176: $00

Jump_04F_6177:
    nop                                           ; $6177: $00
    nop                                           ; $6178: $00
    nop                                           ; $6179: $00
    nop                                           ; $617A: $00
    jr c, jr_04F_617D                             ; $617B: $38 $00

jr_04F_617D:
    jr @+$09                                      ; $617D: $18 $07

    nop                                           ; $617F: $00
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    nop                                           ; $6183: $00
    nop                                           ; $6184: $00
    jr jr_04F_6187                                ; $6185: $18 $00

jr_04F_6187:
    ld [bc], a                                    ; $6187: $02
    inc c                                         ; $6188: $0C
    dec b                                         ; $6189: $05
    ld [bc], a                                    ; $618A: $02
    ld bc, $8000                                  ; $618B: $01 $00 $80
    nop                                           ; $618E: $00
    inc h                                         ; $618F: $24
    inc e                                         ; $6190: $1C
    inc e                                         ; $6191: $1C
    nop                                           ; $6192: $00
    ld [rRAMG], sp                                ; $6193: $08 $00 $00
    nop                                           ; $6196: $00
    nop                                           ; $6197: $00
    nop                                           ; $6198: $00
    nop                                           ; $6199: $00
    nop                                           ; $619A: $00
    nop                                           ; $619B: $00
    nop                                           ; $619C: $00
    nop                                           ; $619D: $00
    nop                                           ; $619E: $00
    nop                                           ; $619F: $00
    inc bc                                        ; $61A0: $03
    nop                                           ; $61A1: $00
    nop                                           ; $61A2: $00
    nop                                           ; $61A3: $00
    nop                                           ; $61A4: $00
    nop                                           ; $61A5: $00
    nop                                           ; $61A6: $00
    nop                                           ; $61A7: $00
    nop                                           ; $61A8: $00
    nop                                           ; $61A9: $00
    ld bc, $0000                                  ; $61AA: $01 $00 $00
    nop                                           ; $61AD: $00
    nop                                           ; $61AE: $00
    jr nz, jr_04F_6171                            ; $61AF: $20 $C0

    jr nz, jr_04F_61B3                            ; $61B1: $20 $00

jr_04F_61B3:
    nop                                           ; $61B3: $00
    nop                                           ; $61B4: $00
    nop                                           ; $61B5: $00
    nop                                           ; $61B6: $00
    nop                                           ; $61B7: $00

jr_04F_61B8:
    nop                                           ; $61B8: $00

jr_04F_61B9:
    ld [hl], h                                    ; $61B9: $74
    ld hl, sp-$61                                 ; $61BA: $F8 $9F
    ld a, a                                       ; $61BC: $7F
    nop                                           ; $61BD: $00
    nop                                           ; $61BE: $00
    ret nz                                        ; $61BF: $C0

    nop                                           ; $61C0: $00
    sub b                                         ; $61C1: $90
    ld h, b                                       ; $61C2: $60
    ld [hl], h                                    ; $61C3: $74
    jr c, jr_04F_61CE                             ; $61C4: $38 $08

    nop                                           ; $61C6: $00
    nop                                           ; $61C7: $00
    nop                                           ; $61C8: $00
    nop                                           ; $61C9: $00
    nop                                           ; $61CA: $00
    nop                                           ; $61CB: $00
    ret nz                                        ; $61CC: $C0

    nop                                           ; $61CD: $00

jr_04F_61CE:
    nop                                           ; $61CE: $00
    nop                                           ; $61CF: $00
    nop                                           ; $61D0: $00
    nop                                           ; $61D1: $00
    nop                                           ; $61D2: $00
    nop                                           ; $61D3: $00
    nop                                           ; $61D4: $00
    nop                                           ; $61D5: $00
    nop                                           ; $61D6: $00
    nop                                           ; $61D7: $00
    nop                                           ; $61D8: $00
    nop                                           ; $61D9: $00
    nop                                           ; $61DA: $00
    nop                                           ; $61DB: $00
    nop                                           ; $61DC: $00
    inc bc                                        ; $61DD: $03
    inc bc                                        ; $61DE: $03
    nop                                           ; $61DF: $00
    nop                                           ; $61E0: $00
    nop                                           ; $61E1: $00
    nop                                           ; $61E2: $00
    nop                                           ; $61E3: $00
    nop                                           ; $61E4: $00
    nop                                           ; $61E5: $00
    nop                                           ; $61E6: $00
    nop                                           ; $61E7: $00
    nop                                           ; $61E8: $00
    nop                                           ; $61E9: $00
    nop                                           ; $61EA: $00
    nop                                           ; $61EB: $00
    nop                                           ; $61EC: $00
    nop                                           ; $61ED: $00
    nop                                           ; $61EE: $00
    nop                                           ; $61EF: $00
    nop                                           ; $61F0: $00
    nop                                           ; $61F1: $00
    nop                                           ; $61F2: $00
    nop                                           ; $61F3: $00
    nop                                           ; $61F4: $00
    nop                                           ; $61F5: $00
    nop                                           ; $61F6: $00
    nop                                           ; $61F7: $00
    nop                                           ; $61F8: $00
    jr nz, jr_04F_61FB                            ; $61F9: $20 $00

jr_04F_61FB:
    ld b, b                                       ; $61FB: $40
    nop                                           ; $61FC: $00
    jr nz, jr_04F_61FF                            ; $61FD: $20 $00

jr_04F_61FF:
    ld [rROMB0], sp                                ; $61FF: $08 $00 $20
    inc b                                         ; $6202: $04
    ld [bc], a                                    ; $6203: $02
    nop                                           ; $6204: $00
    ld bc, $0000                                  ; $6205: $01 $00 $00
    nop                                           ; $6208: $00
    ld [bc], a                                    ; $6209: $02
    nop                                           ; $620A: $00
    nop                                           ; $620B: $00
    nop                                           ; $620C: $00
    nop                                           ; $620D: $00
    nop                                           ; $620E: $00
    ld [rRAMG], sp                                ; $620F: $08 $00 $00
    nop                                           ; $6212: $00
    inc c                                         ; $6213: $0C
    nop                                           ; $6214: $00
    ld [rRAMG], sp                                ; $6215: $08 $00 $00
    nop                                           ; $6218: $00
    nop                                           ; $6219: $00
    nop                                           ; $621A: $00
    nop                                           ; $621B: $00
    nop                                           ; $621C: $00
    nop                                           ; $621D: $00
    nop                                           ; $621E: $00
    nop                                           ; $621F: $00
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00
    nop                                           ; $6222: $00
    nop                                           ; $6223: $00
    nop                                           ; $6224: $00
    nop                                           ; $6225: $00
    nop                                           ; $6226: $00
    adc h                                         ; $6227: $8C
    nop                                           ; $6228: $00
    ld [hl], c                                    ; $6229: $71
    nop                                           ; $622A: $00
    ld c, $00                                     ; $622B: $0E $00
    nop                                           ; $622D: $00
    nop                                           ; $622E: $00
    jr nz, jr_04F_6231                            ; $622F: $20 $00

jr_04F_6231:
    ld [$0400], sp                                ; $6231: $08 $00 $04
    nop                                           ; $6234: $00
    nop                                           ; $6235: $00
    nop                                           ; $6236: $00
    nop                                           ; $6237: $00
    nop                                           ; $6238: $00
    nop                                           ; $6239: $00
    nop                                           ; $623A: $00
    ld b, b                                       ; $623B: $40
    nop                                           ; $623C: $00
    nop                                           ; $623D: $00
    nop                                           ; $623E: $00
    nop                                           ; $623F: $00
    nop                                           ; $6240: $00
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    nop                                           ; $6243: $00
    nop                                           ; $6244: $00
    nop                                           ; $6245: $00
    nop                                           ; $6246: $00
    nop                                           ; $6247: $00
    nop                                           ; $6248: $00
    add b                                         ; $6249: $80
    nop                                           ; $624A: $00
    ld h, b                                       ; $624B: $60
    nop                                           ; $624C: $00
    jr c, jr_04F_624F                             ; $624D: $38 $00

jr_04F_624F:
    nop                                           ; $624F: $00
    nop                                           ; $6250: $00
    nop                                           ; $6251: $00
    nop                                           ; $6252: $00
    nop                                           ; $6253: $00
    nop                                           ; $6254: $00
    nop                                           ; $6255: $00
    nop                                           ; $6256: $00
    nop                                           ; $6257: $00
    nop                                           ; $6258: $00
    rlca                                          ; $6259: $07
    nop                                           ; $625A: $00
    nop                                           ; $625B: $00
    nop                                           ; $625C: $00
    nop                                           ; $625D: $00
    nop                                           ; $625E: $00
    nop                                           ; $625F: $00
    nop                                           ; $6260: $00
    nop                                           ; $6261: $00
    nop                                           ; $6262: $00
    nop                                           ; $6263: $00
    nop                                           ; $6264: $00
    nop                                           ; $6265: $00
    nop                                           ; $6266: $00
    nop                                           ; $6267: $00
    nop                                           ; $6268: $00
    cp b                                          ; $6269: $B8
    ld b, b                                       ; $626A: $40
    ld b, d                                       ; $626B: $42
    inc a                                         ; $626C: $3C
    nop                                           ; $626D: $00
    nop                                           ; $626E: $00
    ld c, $00                                     ; $626F: $0E $00
    nop                                           ; $6271: $00
    nop                                           ; $6272: $00
    nop                                           ; $6273: $00
    nop                                           ; $6274: $00
    nop                                           ; $6275: $00
    nop                                           ; $6276: $00
    nop                                           ; $6277: $00
    nop                                           ; $6278: $00
    nop                                           ; $6279: $00
    nop                                           ; $627A: $00
    nop                                           ; $627B: $00
    nop                                           ; $627C: $00
    nop                                           ; $627D: $00
    nop                                           ; $627E: $00
    nop                                           ; $627F: $00
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    nop                                           ; $6283: $00
    nop                                           ; $6284: $00
    nop                                           ; $6285: $00

jr_04F_6286:
    nop                                           ; $6286: $00
    nop                                           ; $6287: $00
    nop                                           ; $6288: $00
    nop                                           ; $6289: $00
    nop                                           ; $628A: $00
    nop                                           ; $628B: $00
    nop                                           ; $628C: $00
    ld [$0008], sp                                ; $628D: $08 $08 $00
    nop                                           ; $6290: $00
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    nop                                           ; $6293: $00
    nop                                           ; $6294: $00
    nop                                           ; $6295: $00
    nop                                           ; $6296: $00
    ld bc, $0100                                  ; $6297: $01 $00 $01
    ld bc, $0301                                  ; $629A: $01 $01 $03
    rlca                                          ; $629D: $07
    ld [bc], a                                    ; $629E: $02
    dec b                                         ; $629F: $05
    inc bc                                        ; $62A0: $03
    dec e                                         ; $62A1: $1D
    ld c, $38                                     ; $62A2: $0E $38
    jr nc, jr_04F_6286                            ; $62A4: $30 $E0

    ld h, b                                       ; $62A6: $60
    add e                                         ; $62A7: $83

jr_04F_62A8:
    pop bc                                        ; $62A8: $C1
    adc [hl]                                      ; $62A9: $8E
    rlca                                          ; $62AA: $07
    inc c                                         ; $62AB: $0C
    jr @+$12                                      ; $62AC: $18 $10

    jr nc, jr_04F_62A8                            ; $62AE: $30 $F8

    db $FC                                        ; $62B0: $FC
    ld b, $0F                                     ; $62B1: $06 $0F
    ld [bc], a                                    ; $62B3: $02
    ld bc, $0000                                  ; $62B4: $01 $00 $00
    ldh a, [$F8]                                  ; $62B7: $F0 $F8
    ld e, $0E                                     ; $62B9: $1E $0E
    inc bc                                        ; $62BB: $03
    inc bc                                        ; $62BC: $03
    ld bc, $0000                                  ; $62BD: $01 $00 $00
    nop                                           ; $62C0: $00
    nop                                           ; $62C1: $00
    nop                                           ; $62C2: $00
    ret nz                                        ; $62C3: $C0

    add b                                         ; $62C4: $80
    ret nz                                        ; $62C5: $C0

    ld h, b                                       ; $62C6: $60
    jr nz, jr_04F_62F9                            ; $62C7: $20 $30

    db $10                                        ; $62C9: $10
    jr @+$1A                                      ; $62CA: $18 $18

    ld [$8C80], sp                                ; $62CC: $08 $80 $8C
    inc b                                         ; $62CF: $04
    ld b, $04                                     ; $62D0: $06 $04
    inc b                                         ; $62D2: $04
    inc b                                         ; $62D3: $04
    inc c                                         ; $62D4: $0C
    inc c                                         ; $62D5: $0C
    ld [$0805], sp                                ; $62D6: $08 $05 $08
    jr @+$0B                                      ; $62D9: $18 $09

    ld de, $1109                                  ; $62DB: $11 $09 $11
    add hl, bc                                    ; $62DE: $09
    ld h, b                                       ; $62DF: $60
    ld hl, $4762                                  ; $62E0: $21 $62 $47
    ld c, $C4                                     ; $62E3: $0E $C4
    sbc h                                         ; $62E5: $9C
    adc b                                         ; $62E6: $88
    add c                                         ; $62E7: $81
    sbc b                                         ; $62E8: $98
    add hl, de                                    ; $62E9: $19
    sub c                                         ; $62EA: $91
    or b                                          ; $62EB: $B0
    inc de                                        ; $62EC: $13
    inc hl                                        ; $62ED: $23
    ld [de], a                                    ; $62EE: $12
    ld hl, sp-$10                                 ; $62EF: $F8 $F0
    sbc h                                         ; $62F1: $9C
    inc c                                         ; $62F2: $0C
    ld [bc], a                                    ; $62F3: $02
    ld b, $02                                     ; $62F4: $06 $02
    inc bc                                        ; $62F6: $03
    pop hl                                        ; $62F7: $E1
    pop af                                        ; $62F8: $F1

jr_04F_62F9:
    db $10                                        ; $62F9: $10
    sbc c                                         ; $62FA: $99
    dec e                                         ; $62FB: $1D
    ld [$080C], sp                                ; $62FC: $08 $0C $08

jr_04F_62FF:
    ld b, [hl]                                    ; $62FF: $46
    call nz, Call_04F_6600                        ; $6300: $C4 $00 $66
    halt                                          ; $6303: $76
    ld [hl+], a                                   ; $6304: $22
    inc bc                                        ; $6305: $03
    ld [hl-], a                                   ; $6306: $32
    ld sp, $1B12                                  ; $6307: $31 $12 $1B
    sub c                                         ; $630A: $91
    sbc c                                         ; $630B: $99
    sub c                                         ; $630C: $91
    adc c                                         ; $630D: $89
    sub c                                         ; $630E: $91
    nop                                           ; $630F: $00
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    nop                                           ; $6312: $00
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00
    nop                                           ; $6315: $00
    nop                                           ; $6316: $00
    ld [$1800], sp                                ; $6317: $08 $00 $18
    ld [$1019], sp                                ; $631A: $08 $19 $10
    ld [de], a                                    ; $631D: $12
    ld sp, $0000                                  ; $631E: $31 $00 $00
    nop                                           ; $6321: $00
    nop                                           ; $6322: $00
    dec b                                         ; $6323: $05
    inc bc                                        ; $6324: $03
    inc b                                         ; $6325: $04
    rra                                           ; $6326: $1F
    inc c                                         ; $6327: $0C
    jr c, @-$6E                                   ; $6328: $38 $90

    ld h, b                                       ; $632A: $60
    ld [bc], a                                    ; $632B: $02
    jp $8F14                                      ; $632C: $C3 $14 $8F


    nop                                           ; $632F: $00
    nop                                           ; $6330: $00
    add h                                         ; $6331: $84
    ld e, b                                       ; $6332: $58
    ld l, [hl]                                    ; $6333: $6E
    rst $38                                       ; $6334: $FF
    or a                                          ; $6335: $B7
    inc bc                                        ; $6336: $03
    nop                                           ; $6337: $00
    nop                                           ; $6338: $00

jr_04F_6339:
    ld l, b                                       ; $6339: $68
    sub b                                         ; $633A: $90
    call Call_04F_43FE                            ; $633B: $CD $FE $43
    rlca                                          ; $633E: $07
    nop                                           ; $633F: $00
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    nop                                           ; $6343: $00
    nop                                           ; $6344: $00
    and b                                         ; $6345: $A0
    ret nz                                        ; $6346: $C0

    jr nc, jr_04F_6339                            ; $6347: $30 $F0

    jr nc, @+$1A                                  ; $6349: $30 $18

    nop                                           ; $634B: $00
    inc c                                         ; $634C: $0C
    call z, $3286                                 ; $634D: $CC $86 $32
    inc hl                                        ; $6350: $23
    ld [hl+], a                                   ; $6351: $22
    ld h, [hl]                                    ; $6352: $66
    ld l, [hl]                                    ; $6353: $6E
    ld b, h                                       ; $6354: $44
    ret nz                                        ; $6355: $C0

Jump_04F_6356:
    ld c, h                                       ; $6356: $4C
    inc c                                         ; $6357: $0C
    ret z                                         ; $6358: $C8

    ret z                                         ; $6359: $C8

    adc c                                         ; $635A: $89
    adc b                                         ; $635B: $88
    adc c                                         ; $635C: $89
    sbc c                                         ; $635D: $99
    adc c                                         ; $635E: $89
    inc [hl]                                      ; $635F: $34
    jr jr_04F_63D2                                ; $6360: $18 $70

    ld hl, $4366                                  ; $6362: $21 $66 $43
    adc l                                         ; $6365: $8D
    add $98                                       ; $6366: $C6 $98
    adc h                                         ; $6368: $8C
    adc b                                         ; $6369: $88
    sbc c                                         ; $636A: $99
    add hl, de                                    ; $636B: $19
    sub c                                         ; $636C: $91
    jr jr_04F_62FF                                ; $636D: $18 $90

    ld bc, $AC00                                  ; $636F: $01 $00 $AC
    ld [hl], b                                    ; $6372: $70
    sbc $BC                                       ; $6373: $DE $BC
    ld a, [bc]                                    ; $6375: $0A
    rlca                                          ; $6376: $07
    inc bc                                        ; $6377: $03
    ld bc, $F140                                  ; $6378: $01 $40 $F1
    reti                                          ; $637B: $D9


    jr c, @+$1F                                   ; $637C: $38 $1D

    ld [wVBlank_HandlerFunc+1], sp                                ; $637E: $08 $E3 $C6
    ld [hl+], a                                   ; $6381: $22
    ld h, e                                       ; $6382: $63
    jr nz, @+$35                                  ; $6383: $20 $33

    inc de                                        ; $6385: $13
    ld sp, $1199                                  ; $6386: $31 $99 $11
    ld de, $8199                                  ; $6389: $11 $99 $81
    sbc c                                         ; $638C: $99
    add c                                         ; $638D: $81
    sbc c                                         ; $638E: $99
    nop                                           ; $638F: $00
    nop                                           ; $6390: $00
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00
    nop                                           ; $6393: $00
    ld bc, $0702                                  ; $6394: $01 $02 $07
    ld b, $0C                                     ; $6397: $06 $0C
    ld [$3018], sp                                ; $6399: $08 $18 $30
    db $10                                        ; $639C: $10
    ld sp, $1F21                                  ; $639D: $31 $21 $1F
    rlca                                          ; $63A0: $07
    or h                                          ; $63A1: $B4
    ld a, b                                       ; $63A2: $78
    and b                                         ; $63A3: $A0
    ret nz                                        ; $63A4: $C0

    rlca                                          ; $63A5: $07
    nop                                           ; $63A6: $00
    ld l, $1F                                     ; $63A7: $2E $1F
    jr z, jr_04F_641B                             ; $63A9: $28 $70

    and b                                         ; $63AB: $A0
    ret nz                                        ; $63AC: $C0

    inc bc                                        ; $63AD: $03
    add a                                         ; $63AE: $87
    nop                                           ; $63AF: $00

Jump_04F_63B0:
    nop                                           ; $63B0: $00
    nop                                           ; $63B1: $00
    nop                                           ; $63B2: $00
    nop                                           ; $63B3: $00
    nop                                           ; $63B4: $00

jr_04F_63B5:
    ldh [rP1], a                                  ; $63B5: $E0 $00
    jr z, jr_04F_63B5                             ; $63B7: $28 $FC

    rra                                           ; $63B9: $1F
    rlca                                          ; $63BA: $07
    nop                                           ; $63BB: $00
    ld bc, $E0D0                                  ; $63BC: $01 $D0 $E0
    nop                                           ; $63BF: $00
    nop                                           ; $63C0: $00
    nop                                           ; $63C1: $00
    nop                                           ; $63C2: $00
    nop                                           ; $63C3: $00
    nop                                           ; $63C4: $00
    nop                                           ; $63C5: $00
    nop                                           ; $63C6: $00
    nop                                           ; $63C7: $00
    nop                                           ; $63C8: $00
    add b                                         ; $63C9: $80
    nop                                           ; $63CA: $00
    add b                                         ; $63CB: $80
    ret nz                                        ; $63CC: $C0

    ldh a, [$60]                                  ; $63CD: $F0 $60
    inc bc                                        ; $63CF: $03
    ld h, d                                       ; $63D0: $62
    ld h, [hl]                                    ; $63D1: $66

jr_04F_63D2:
    ld b, [hl]                                    ; $63D2: $46
    ld b, h                                       ; $63D3: $44
    call nz, $CC84                                ; $63D4: $C4 $84 $CC
    adc h                                         ; $63D7: $8C
    adc b                                         ; $63D8: $88
    adc b                                         ; $63D9: $88
    adc b                                         ; $63DA: $88
    adc b                                         ; $63DB: $88
    adc b                                         ; $63DC: $88
    adc b                                         ; $63DD: $88
    adc b                                         ; $63DE: $88
    ld a, [bc]                                    ; $63DF: $0A
    inc e                                         ; $63E0: $1C
    jr nc, jr_04F_6413                            ; $63E1: $30 $30

    ld b, e                                       ; $63E3: $43
    ld h, b                                       ; $63E4: $60
    jp $C647                                      ; $63E5: $C3 $47 $C6


    adc h                                         ; $63E8: $8C
    adc b                                         ; $63E9: $88
    adc b                                         ; $63EA: $88
    adc b                                         ; $63EB: $88
    adc b                                         ; $63EC: $88
    ret z                                         ; $63ED: $C8

    adc h                                         ; $63EE: $8C
    ld e, b                                       ; $63EF: $58
    inc a                                         ; $63F0: $3C
    inc bc                                        ; $63F1: $03
    ld b, $C3                                     ; $63F2: $06 $C3
    ld bc, $F068                                  ; $63F4: $01 $68 $F0
    inc l                                         ; $63F7: $2C
    jr jr_04F_6406                                ; $63F8: $18 $0C

    ld b, $86                                     ; $63FA: $06 $86
    jp nz, Jump_04F_63B0                          ; $63FC: $C2 $B0 $63

    jr c, jr_04F_6411                             ; $63FF: $38 $10

    ld [$0C18], sp                                ; $6401: $08 $18 $0C
    adc h                                         ; $6404: $8C
    add [hl]                                      ; $6405: $86

jr_04F_6406:
    call nz, $4266                                ; $6406: $C4 $66 $42
    ld h, e                                       ; $6409: $63
    ld [hl+], a                                   ; $640A: $22
    jr nc, @+$25                                  ; $640B: $30 $23

    inc de                                        ; $640D: $13
    ld sp, $0000                                  ; $640E: $31 $00 $00

jr_04F_6411:
    nop                                           ; $6411: $00
    nop                                           ; $6412: $00

jr_04F_6413:
    ld bc, $0101                                  ; $6413: $01 $01 $01
    inc bc                                        ; $6416: $03
    inc bc                                        ; $6417: $03
    ld b, $0C                                     ; $6418: $06 $0C
    inc c                                         ; $641A: $0C

jr_04F_641B:
    inc e                                         ; $641B: $1C
    ld [$1809], sp                                ; $641C: $08 $09 $18
    cpl                                           ; $641F: $2F
    rra                                           ; $6420: $1F
    db $F4                                        ; $6421: $F4
    ld a, b                                       ; $6422: $78
    and b                                         ; $6423: $A0
    ret nz                                        ; $6424: $C0

    ld bc, $0F00                                  ; $6425: $01 $00 $0F
    rra                                           ; $6428: $1F
    jr nc, @+$3A                                  ; $6429: $30 $38

    ldh [$60], a                                  ; $642B: $E0 $60
    add e                                         ; $642D: $83
    pop bc                                        ; $642E: $C1
    add sp, -$10                                  ; $642F: $E8 $F0
    inc l                                         ; $6431: $2C
    ld e, $07                                     ; $6432: $1E $07
    inc bc                                        ; $6434: $03
    add c                                         ; $6435: $81
    nop                                           ; $6436: $00
    db $F4                                        ; $6437: $F4
    ld hl, sp+$14                                 ; $6438: $F8 $14
    ld c, $07                                     ; $643A: $0E $07
    inc bc                                        ; $643C: $03
    add b                                         ; $643D: $80
    pop hl                                        ; $643E: $E1
    nop                                           ; $643F: $00
    nop                                           ; $6440: $00

jr_04F_6441:
    nop                                           ; $6441: $00
    nop                                           ; $6442: $00
    nop                                           ; $6443: $00
    add b                                         ; $6444: $80
    ldh [$C0], a                                  ; $6445: $E0 $C0
    ld [hl], b                                    ; $6447: $70
    jr nz, jr_04F_644A                            ; $6448: $20 $00

jr_04F_644A:
    nop                                           ; $644A: $00
    add b                                         ; $644B: $80
    nop                                           ; $644C: $00
    ld b, b                                       ; $644D: $40
    add b                                         ; $644E: $80
    ld de, $3919                                  ; $644F: $11 $19 $39
    ld de, $3301                                  ; $6452: $11 $01 $33
    ld [hl+], a                                   ; $6455: $22
    inc de                                        ; $6456: $13
    ld sp, $3112                                  ; $6457: $31 $12 $31
    inc sp                                        ; $645A: $33
    ld [hl+], a                                   ; $645B: $22
    inc sp                                        ; $645C: $33
    add hl, sp                                    ; $645D: $39
    ld [de], a                                    ; $645E: $12
    rrca                                          ; $645F: $0F
    add a                                         ; $6460: $87
    ld [$389C], sp                                ; $6461: $08 $9C $38
    stop                                          ; $6464: $10 $00
    ld sp, $3323                                  ; $6466: $31 $23 $33

jr_04F_6469:
    ld b, [hl]                                    ; $6469: $46
    ld [hl+], a                                   ; $646A: $22
    nop                                           ; $646B: $00
    ld [hl], $21                                  ; $646C: $36 $21
    ld [hl-], a                                   ; $646E: $32
    jr c, jr_04F_6469                             ; $646F: $38 $F8

    ld b, $0C                                     ; $6471: $06 $0C
    rlca                                          ; $6473: $07
    ld [bc], a                                    ; $6474: $02
    db $D3                                        ; $6475: $D3
    pop hl                                        ; $6476: $E1
    ld hl, sp+$31                                 ; $6477: $F8 $31
    dec c                                         ; $6479: $0D
    jr @+$06                                      ; $647A: $18 $04

    inc c                                         ; $647C: $0C
    ld c, b                                       ; $647D: $48
    ld h, [hl]                                    ; $647E: $66
    jr nz, jr_04F_6441                            ; $647F: $20 $C0

    nop                                           ; $6481: $00
    ld h, b                                       ; $6482: $60
    nop                                           ; $6483: $00
    jr nc, @-$5E                                  ; $6484: $30 $A0

    jr jr_04F_6498                                ; $6486: $18 $10

    sbc b                                         ; $6488: $98
    sbc h                                         ; $6489: $9C
    adc b                                         ; $648A: $88
    ld b, b                                       ; $648B: $40
    call z, $CC04                                 ; $648C: $CC $04 $CC
    nop                                           ; $648F: $00
    nop                                           ; $6490: $00
    ld [bc], a                                    ; $6491: $02
    ld bc, $0708                                  ; $6492: $01 $08 $07
    ld a, $0C                                     ; $6495: $3E $0C
    ld c, [hl]                                    ; $6497: $4E

jr_04F_6498:
    jr c, @+$52                                   ; $6498: $38 $50

    jr c, @-$46                                   ; $649A: $38 $B8

    ld [hl], b                                    ; $649C: $70
    and b                                         ; $649D: $A0
    ld [hl], b                                    ; $649E: $70
    ldh [rP1], a                                  ; $649F: $E0 $00
    ld b, b                                       ; $64A1: $40
    add b                                         ; $64A2: $80
    nop                                           ; $64A3: $00
    nop                                           ; $64A4: $00
    nop                                           ; $64A5: $00
    nop                                           ; $64A6: $00
    nop                                           ; $64A7: $00
    nop                                           ; $64A8: $00
    nop                                           ; $64A9: $00
    nop                                           ; $64AA: $00
    nop                                           ; $64AB: $00
    nop                                           ; $64AC: $00
    nop                                           ; $64AD: $00
    nop                                           ; $64AE: $00
    nop                                           ; $64AF: $00
    nop                                           ; $64B0: $00
    jr jr_04F_64D3                                ; $64B1: $18 $20

    ld [de], a                                    ; $64B3: $12
    inc c                                         ; $64B4: $0C
    add hl, bc                                    ; $64B5: $09
    ld b, $00                                     ; $64B6: $06 $00
    inc bc                                        ; $64B8: $03
    nop                                           ; $64B9: $00
    inc bc                                        ; $64BA: $03
    ld bc, $0100                                  ; $64BB: $01 $00 $01
    nop                                           ; $64BE: $00
    jr nc, jr_04F_6521                            ; $64BF: $30 $60

    nop                                           ; $64C1: $00
    ld [hl], b                                    ; $64C2: $70
    db $10                                        ; $64C3: $10
    jr nz, jr_04F_64C6                            ; $64C4: $20 $00

jr_04F_64C6:
    nop                                           ; $64C6: $00
    nop                                           ; $64C7: $00
    nop                                           ; $64C8: $00
    nop                                           ; $64C9: $00
    nop                                           ; $64CA: $00
    nop                                           ; $64CB: $00
    nop                                           ; $64CC: $00
    nop                                           ; $64CD: $00
    nop                                           ; $64CE: $00
    nop                                           ; $64CF: $00
    nop                                           ; $64D0: $00
    nop                                           ; $64D1: $00
    nop                                           ; $64D2: $00

jr_04F_64D3:
    nop                                           ; $64D3: $00
    nop                                           ; $64D4: $00
    inc bc                                        ; $64D5: $03
    nop                                           ; $64D6: $00
    ld [hl], l                                    ; $64D7: $75
    inc bc                                        ; $64D8: $03
    ld d, [hl]                                    ; $64D9: $56
    inc hl                                        ; $64DA: $23
    xor $07                                       ; $64DB: $EE $07
    ld b, $0F                                     ; $64DD: $06 $0F
    db $10                                        ; $64DF: $10
    rrca                                          ; $64E0: $0F
    inc e                                         ; $64E1: $1C
    ccf                                           ; $64E2: $3F
    ld a, [$FC3F]                                 ; $64E3: $FA $3F $FC
    ld a, a                                       ; $64E6: $7F
    ld a, [hl]                                    ; $64E7: $7E
    rst $38                                       ; $64E8: $FF
    cp $FF                                        ; $64E9: $FE $FF
    rst $38                                       ; $64EB: $FF
    rst $38                                       ; $64EC: $FF
    cp $FF                                        ; $64ED: $FE $FF
    ld [$2CC0], sp                                ; $64EF: $08 $C0 $2C
    ret nz                                        ; $64F2: $C0

    add $C0                                       ; $64F3: $C6 $C0
    ld [bc], a                                    ; $64F5: $02
    ret nz                                        ; $64F6: $C0

    and b                                         ; $64F7: $A0
    ret nz                                        ; $64F8: $C0

    nop                                           ; $64F9: $00
    ret nz                                        ; $64FA: $C0

    ld b, b                                       ; $64FB: $40
    add b                                         ; $64FC: $80
    nop                                           ; $64FD: $00
    add b                                         ; $64FE: $80
    dec e                                         ; $64FF: $1D
    ld c, $3B                                     ; $6500: $0E $3B
    inc e                                         ; $6502: $1C
    ld b, [hl]                                    ; $6503: $46
    add hl, sp                                    ; $6504: $39
    ld a, [hl-]                                   ; $6505: $3A
    dec b                                         ; $6506: $05
    dec d                                         ; $6507: $15
    rrca                                          ; $6508: $0F
    inc b                                         ; $6509: $04
    rrca                                          ; $650A: $0F
    ld b, $0F                                     ; $650B: $06 $0F
    dec b                                         ; $650D: $05
    inc bc                                        ; $650E: $03
    cp $FF                                        ; $650F: $FE $FF
    rst $38                                       ; $6511: $FF
    cp $FF                                        ; $6512: $FE $FF
    cp $FF                                        ; $6514: $FE $FF
    cp $FC                                        ; $6516: $FE $FC
    rst $38                                       ; $6518: $FF
    cp $FF                                        ; $6519: $FE $FF
    nop                                           ; $651B: $00
    rst $38                                       ; $651C: $FF
    ld e, [hl]                                    ; $651D: $5E
    rst $38                                       ; $651E: $FF
    nop                                           ; $651F: $00
    nop                                           ; $6520: $00

jr_04F_6521:
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    nop                                           ; $6528: $00
    nop                                           ; $6529: $00
    nop                                           ; $652A: $00
    jr c, jr_04F_652D                             ; $652B: $38 $00

jr_04F_652D:
    jr nc, jr_04F_652F                            ; $652D: $30 $00

jr_04F_652F:
    inc c                                         ; $652F: $0C
    inc bc                                        ; $6530: $03
    ld a, [bc]                                    ; $6531: $0A
    ld bc, $0E01                                  ; $6532: $01 $01 $0E
    ld b, $0C                                     ; $6535: $06 $0C
    ld [bc], a                                    ; $6537: $02
    inc c                                         ; $6538: $0C
    rra                                           ; $6539: $1F
    nop                                           ; $653A: $00
    ld a, [hl+]                                   ; $653B: $2A
    ld de, $391F                                  ; $653C: $11 $1F $39
    ld [hl], b                                    ; $653F: $70
    rst $38                                       ; $6540: $FF
    sbc [hl]                                      ; $6541: $9E
    ld a, a                                       ; $6542: $7F
    sub e                                         ; $6543: $93
    ld l, a                                       ; $6544: $6F
    and [hl]                                      ; $6545: $A6
    ld b, c                                       ; $6546: $41
    ld [bc], a                                    ; $6547: $02
    add c                                         ; $6548: $81
    nop                                           ; $6549: $00
    add c                                         ; $654A: $81
    nop                                           ; $654B: $00
    add e                                         ; $654C: $83
    ld a, b                                       ; $654D: $78
    add a                                         ; $654E: $87
    ld b, b                                       ; $654F: $40
    add b                                         ; $6550: $80
    add c                                         ; $6551: $81
    nop                                           ; $6552: $00
    ld c, b                                       ; $6553: $48
    add a                                         ; $6554: $87
    jp z, $1000                                   ; $6555: $CA $00 $10

    add d                                         ; $6558: $82
    ld [bc], a                                    ; $6559: $02
    rst $00                                       ; $655A: $C7
    add b                                         ; $655B: $80

Jump_04F_655C:
    jp nz, $804A                                  ; $655C: $C2 $4A $80

    ld h, b                                       ; $655F: $60
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00
    ret nz                                        ; $6562: $C0

    add b                                         ; $6563: $80
    nop                                           ; $6564: $00
    add b                                         ; $6565: $80
    nop                                           ; $6566: $00
    ld b, b                                       ; $6567: $40
    nop                                           ; $6568: $00
    jr jr_04F_656B                                ; $6569: $18 $00

jr_04F_656B:
    inc d                                         ; $656B: $14
    ld [$041A], sp                                ; $656C: $08 $1A $04
    ld e, c                                       ; $656F: $59
    ccf                                           ; $6570: $3F
    dec l                                         ; $6571: $2D
    rra                                           ; $6572: $1F
    jr jr_04F_657C                                ; $6573: $18 $07

    inc bc                                        ; $6575: $03
    nop                                           ; $6576: $00
    ld bc, $0300                                  ; $6577: $01 $00 $03
    nop                                           ; $657A: $00
    rlca                                          ; $657B: $07

jr_04F_657C:
    nop                                           ; $657C: $00
    dec b                                         ; $657D: $05
    ld [bc], a                                    ; $657E: $02
    ld b, c                                       ; $657F: $41
    cp $C1                                        ; $6580: $FE $C1
    ld a, $46                                     ; $6582: $3E $46
    db $FC                                        ; $6584: $FC
    inc l                                         ; $6585: $2C
    rst $38                                       ; $6586: $FF
    push de                                       ; $6587: $D5
    ccf                                           ; $6588: $3F

jr_04F_6589:
    ld l, $DB                                     ; $6589: $2E $DB

jr_04F_658B:
    add hl, hl                                    ; $658B: $29
    db $D3                                        ; $658C: $D3
    ldh a, [$C5]                                  ; $658D: $F0 $C5
    add b                                         ; $658F: $80
    nop                                           ; $6590: $00
    add b                                         ; $6591: $80
    nop                                           ; $6592: $00
    add b                                         ; $6593: $80
    nop                                           ; $6594: $00
    nop                                           ; $6595: $00
    add b                                         ; $6596: $80
    ret z                                         ; $6597: $C8

    add b                                         ; $6598: $80
    ret z                                         ; $6599: $C8

    add b                                         ; $659A: $80
    ld h, d                                       ; $659B: $62
    add c                                         ; $659C: $81
    ldh a, [$03]                                  ; $659D: $F0 $03
    add hl, bc                                    ; $659F: $09
    ld b, $13                                     ; $65A0: $06 $13
    inc c                                         ; $65A2: $0C
    add hl, de                                    ; $65A3: $19
    ld c, $13                                     ; $65A4: $0E $13
    inc c                                         ; $65A6: $0C
    ld c, $00                                     ; $65A7: $0E $00
    ld b, $00                                     ; $65A9: $06 $00
    nop                                           ; $65AB: $00
    nop                                           ; $65AC: $00
    nop                                           ; $65AD: $00
    nop                                           ; $65AE: $00
    db $FC                                        ; $65AF: $FC
    call nz, $C426                                ; $65B0: $C4 $26 $C4
    ld h, a                                       ; $65B3: $67
    add $49                                       ; $65B4: $C6 $49
    ld b, [hl]                                    ; $65B6: $46
    and b                                         ; $65B7: $A0
    ld c, a                                       ; $65B8: $4F
    inc h                                         ; $65B9: $24
    rrca                                          ; $65BA: $0F
    ld a, [hl+]                                   ; $65BB: $2A
    dec b                                         ; $65BC: $05
    add hl, de                                    ; $65BD: $19
    nop                                           ; $65BE: $00
    sub b                                         ; $65BF: $90
    inc bc                                        ; $65C0: $03
    ldh a, [$03]                                  ; $65C1: $F0 $03
    pop hl                                        ; $65C3: $E1
    ld [bc], a                                    ; $65C4: $02
    jr nz, jr_04F_6589                            ; $65C5: $20 $C2

    jr nc, jr_04F_658B                            ; $65C7: $30 $C2

    jp nz, $8000                                  ; $65C9: $C2 $00 $80

    nop                                           ; $65CC: $00
    nop                                           ; $65CD: $00
    nop                                           ; $65CE: $00
    sub b                                         ; $65CF: $90
    nop                                           ; $65D0: $00
    stop                                          ; $65D1: $10 $00
    and b                                         ; $65D3: $A0
    nop                                           ; $65D4: $00
    nop                                           ; $65D5: $00
    nop                                           ; $65D6: $00
    nop                                           ; $65D7: $00
    nop                                           ; $65D8: $00
    add b                                         ; $65D9: $80
    nop                                           ; $65DA: $00
    nop                                           ; $65DB: $00
    nop                                           ; $65DC: $00
    nop                                           ; $65DD: $00
    nop                                           ; $65DE: $00
    nop                                           ; $65DF: $00
    nop                                           ; $65E0: $00
    inc bc                                        ; $65E1: $03
    nop                                           ; $65E2: $00
    dec c                                         ; $65E3: $0D
    ld [bc], a                                    ; $65E4: $02
    inc d                                         ; $65E5: $14
    nop                                           ; $65E6: $00
    inc l                                         ; $65E7: $2C
    db $10                                        ; $65E8: $10
    ld h, b                                       ; $65E9: $60
    db $10                                        ; $65EA: $10
    ld b, b                                       ; $65EB: $40
    jr nc, jr_04F_65EE                            ; $65EC: $30 $00

jr_04F_65EE:
    ld h, b                                       ; $65EE: $60
    ld b, b                                       ; $65EF: $40
    nop                                           ; $65F0: $00
    ret nz                                        ; $65F1: $C0

    nop                                           ; $65F2: $00
    nop                                           ; $65F3: $00
    nop                                           ; $65F4: $00
    nop                                           ; $65F5: $00
    nop                                           ; $65F6: $00
    nop                                           ; $65F7: $00
    nop                                           ; $65F8: $00
    nop                                           ; $65F9: $00
    nop                                           ; $65FA: $00
    nop                                           ; $65FB: $00
    nop                                           ; $65FC: $00
    nop                                           ; $65FD: $00
    nop                                           ; $65FE: $00
    nop                                           ; $65FF: $00

Call_04F_6600:
    nop                                           ; $6600: $00
    ld [$1E00], sp                                ; $6601: $08 $00 $1E
    nop                                           ; $6604: $00
    dec b                                         ; $6605: $05
    ld [bc], a                                    ; $6606: $02
    ld b, $01                                     ; $6607: $06 $01
    nop                                           ; $6609: $00
    nop                                           ; $660A: $00
    nop                                           ; $660B: $00
    nop                                           ; $660C: $00
    nop                                           ; $660D: $00
    nop                                           ; $660E: $00
    nop                                           ; $660F: $00
    ld h, b                                       ; $6610: $60
    ld d, b                                       ; $6611: $50
    jr nz, jr_04F_6614                            ; $6612: $20 $00

jr_04F_6614:
    nop                                           ; $6614: $00
    nop                                           ; $6615: $00
    nop                                           ; $6616: $00
    nop                                           ; $6617: $00
    nop                                           ; $6618: $00
    nop                                           ; $6619: $00
    nop                                           ; $661A: $00
    nop                                           ; $661B: $00
    nop                                           ; $661C: $00
    nop                                           ; $661D: $00
    nop                                           ; $661E: $00
    nop                                           ; $661F: $00
    nop                                           ; $6620: $00
    nop                                           ; $6621: $00
    nop                                           ; $6622: $00
    nop                                           ; $6623: $00
    nop                                           ; $6624: $00
    ld [bc], a                                    ; $6625: $02
    nop                                           ; $6626: $00
    daa                                           ; $6627: $27
    nop                                           ; $6628: $00
    ld a, l                                       ; $6629: $7D
    inc bc                                        ; $662A: $03
    ccf                                           ; $662B: $3F
    rlca                                          ; $662C: $07
    inc de                                        ; $662D: $13
    rrca                                          ; $662E: $0F
    inc e                                         ; $662F: $1C
    inc bc                                        ; $6630: $03
    jr nc, @+$21                                  ; $6631: $30 $1F

    inc a                                         ; $6633: $3C
    ccf                                           ; $6634: $3F
    db $FC                                        ; $6635: $FC
    ccf                                           ; $6636: $3F
    cp $FF                                        ; $6637: $FE $FF
    rst $38                                       ; $6639: $FF
    rst $38                                       ; $663A: $FF
    cp $FF                                        ; $663B: $FE $FF
    db $FC                                        ; $663D: $FC
    rst $38                                       ; $663E: $FF
    db $10                                        ; $663F: $10
    rrca                                          ; $6640: $0F
    ld [hl], $09                                  ; $6641: $36 $09
    ld [hl], $09                                  ; $6643: $36 $09
    inc d                                         ; $6645: $14

jr_04F_6646:
    dec bc                                        ; $6646: $0B
    db $10                                        ; $6647: $10
    rrca                                          ; $6648: $0F
    inc c                                         ; $6649: $0C
    inc bc                                        ; $664A: $03
    ld [$0807], sp                                ; $664B: $08 $07 $08
    inc bc                                        ; $664E: $03
    cp $FF                                        ; $664F: $FE $FF
    cp $FC                                        ; $6651: $FE $FC
    ld a, [hl]                                    ; $6653: $7E
    cp $FE                                        ; $6654: $FE $FE
    cp $FC                                        ; $6656: $FE $FC
    rst $38                                       ; $6658: $FF
    ld a, c                                       ; $6659: $79
    cp $39                                        ; $665A: $FE $39
    cp $01                                        ; $665C: $FE $01
    cp $04                                        ; $665E: $FE $04
    inc bc                                        ; $6660: $03
    dec c                                         ; $6661: $0D
    ld [bc], a                                    ; $6662: $02
    rrca                                          ; $6663: $0F
    nop                                           ; $6664: $00
    rlca                                          ; $6665: $07
    nop                                           ; $6666: $00
    rrca                                          ; $6667: $0F
    nop                                           ; $6668: $00
    rrca                                          ; $6669: $0F
    nop                                           ; $666A: $00
    ld a, $01                                     ; $666B: $3E $01
    inc d                                         ; $666D: $14
    dec hl                                        ; $666E: $2B
    inc c                                         ; $666F: $0C
    rst $38                                       ; $6670: $FF
    nop                                           ; $6671: $00
    rst $38                                       ; $6672: $FF
    xor b                                         ; $6673: $A8
    ld d, a                                       ; $6674: $57
    ldh [$03], a                                  ; $6675: $E0 $03
    add d                                         ; $6677: $82
    ld bc, $0180                                  ; $6678: $01 $80 $01
    ld b, b                                       ; $667B: $40
    add e                                         ; $667C: $83
    jr nc, jr_04F_6646                            ; $667D: $30 $C7

    add b                                         ; $667F: $80
    nop                                           ; $6680: $00
    ret nz                                        ; $6681: $C0

    nop                                           ; $6682: $00
    jp nz, $C700                                  ; $6683: $C2 $00 $C7

    nop                                           ; $6686: $00
    add $00                                       ; $6687: $C6 $00
    nop                                           ; $6689: $00
    add b                                         ; $668A: $80
    nop                                           ; $668B: $00
    add b                                         ; $668C: $80
    ld b, b                                       ; $668D: $40
    add b                                         ; $668E: $80
    nop                                           ; $668F: $00
    nop                                           ; $6690: $00
    add b                                         ; $6691: $80
    nop                                           ; $6692: $00
    add b                                         ; $6693: $80
    nop                                           ; $6694: $00
    nop                                           ; $6695: $00
    nop                                           ; $6696: $00
    nop                                           ; $6697: $00
    nop                                           ; $6698: $00
    ld [$1800], sp                                ; $6699: $08 $00 $18
    nop                                           ; $669C: $00
    inc c                                         ; $669D: $0C
    nop                                           ; $669E: $00
    db $10                                        ; $669F: $10
    ccf                                           ; $66A0: $3F
    jr nc, @+$11                                  ; $66A1: $30 $0F

    ld [bc], a                                    ; $66A3: $02
    dec b                                         ; $66A4: $05
    inc bc                                        ; $66A5: $03
    nop                                           ; $66A6: $00
    ld bc, $0100                                  ; $66A7: $01 $00 $01
    nop                                           ; $66AA: $00
    rlca                                          ; $66AB: $07
    nop                                           ; $66AC: $00
    rlca                                          ; $66AD: $07
    nop                                           ; $66AE: $00
    nop                                           ; $66AF: $00
    rst $38                                       ; $66B0: $FF
    ld bc, $01FE                                  ; $66B1: $01 $FE $01
    cp $88                                        ; $66B4: $FE $88
    ld a, a                                       ; $66B6: $7F
    add h                                         ; $66B7: $84
    ld a, a                                       ; $66B8: $7F
    sub b                                         ; $66B9: $90
    ld l, a                                       ; $66BA: $6F
    inc a                                         ; $66BB: $3C
    jp $C03F                                      ; $66BC: $C3 $3F $C0


    add b                                         ; $66BF: $80
    nop                                           ; $66C0: $00
    add b                                         ; $66C1: $80
    nop                                           ; $66C2: $00
    nop                                           ; $66C3: $00
    nop                                           ; $66C4: $00
    nop                                           ; $66C5: $00
    nop                                           ; $66C6: $00
    nop                                           ; $66C7: $00
    add b                                         ; $66C8: $80
    ret nz                                        ; $66C9: $C0

    nop                                           ; $66CA: $00
    ret nz                                        ; $66CB: $C0

    nop                                           ; $66CC: $00
    ldh [rSC], a                                  ; $66CD: $E0 $02
    ld c, $01                                     ; $66CF: $0E $01
    inc d                                         ; $66D1: $14
    dec bc                                        ; $66D2: $0B
    rla                                           ; $66D3: $17
    ld [$000F], sp                                ; $66D4: $08 $0F $00
    ld b, $00                                     ; $66D7: $06 $00
    nop                                           ; $66D9: $00
    nop                                           ; $66DA: $00
    nop                                           ; $66DB: $00
    nop                                           ; $66DC: $00
    nop                                           ; $66DD: $00
    nop                                           ; $66DE: $00
    ccf                                           ; $66DF: $3F
    ret nz                                        ; $66E0: $C0

    ccf                                           ; $66E1: $3F
    ret nz                                        ; $66E2: $C0

    dec h                                         ; $66E3: $25
    jp nz, $07E8                                  ; $66E4: $C2 $E8 $07

    db $10                                        ; $66E7: $10
    rlca                                          ; $66E8: $07
    ld a, [de]                                    ; $66E9: $1A
    dec b                                         ; $66EA: $05
    ld [$0002], sp                                ; $66EB: $08 $02 $00
    nop                                           ; $66EE: $00
    ldh [rSC], a                                  ; $66EF: $E0 $02
    ldh [rP1], a                                  ; $66F1: $E0 $00
    ld [c], a                                     ; $66F3: $E2
    nop                                           ; $66F4: $00
    ld b, c                                       ; $66F5: $41
    add b                                         ; $66F6: $80
    ret nz                                        ; $66F7: $C0

    nop                                           ; $66F8: $00
    ld b, b                                       ; $66F9: $40
    add b                                         ; $66FA: $80
    nop                                           ; $66FB: $00
    nop                                           ; $66FC: $00
    nop                                           ; $66FD: $00
    nop                                           ; $66FE: $00
    nop                                           ; $66FF: $00
    nop                                           ; $6700: $00
    nop                                           ; $6701: $00
    nop                                           ; $6702: $00
    nop                                           ; $6703: $00
    nop                                           ; $6704: $00
    nop                                           ; $6705: $00
    nop                                           ; $6706: $00
    ld bc, $0600                                  ; $6707: $01 $00 $06
    ld bc, $012F                                  ; $670A: $01 $2F $01
    inc sp                                        ; $670D: $33
    dec c                                         ; $670E: $0D
    stop                                          ; $670F: $10 $00
    jr nz, jr_04F_6715                            ; $6711: $20 $02

    ld [de], a                                    ; $6713: $12
    inc c                                         ; $6714: $0C

jr_04F_6715:
    ld [hl], b                                    ; $6715: $70
    ld a, $30                                     ; $6716: $3E $30
    ld a, a                                       ; $6718: $7F
    ret nz                                        ; $6719: $C0

    ccf                                           ; $671A: $3F
    ldh a, [$FC]                                  ; $671B: $F0 $FC
    ldh a, [$FC]                                  ; $671D: $F0 $FC
    add hl, hl                                    ; $671F: $29
    rlca                                          ; $6720: $07
    ld c, $01                                     ; $6721: $0E $01
    inc c                                         ; $6723: $0C
    inc bc                                        ; $6724: $03
    ld [$0C07], sp                                ; $6725: $08 $07 $0C
    inc bc                                        ; $6728: $03
    ld [$1607], sp                                ; $6729: $08 $07 $16
    ld bc, $010E                                  ; $672C: $01 $0E $01
    pop af                                        ; $672F: $F1
    db $FC                                        ; $6730: $FC
    add sp, -$08                                  ; $6731: $E8 $F8
    cp h                                          ; $6733: $BC
    db $FC                                        ; $6734: $FC
    ld e, b                                       ; $6735: $58
    ld hl, sp-$64                                 ; $6736: $F8 $9C
    ld hl, sp+$04                                 ; $6738: $F8 $04
    ld hl, sp+$06                                 ; $673A: $F8 $06
    ld hl, sp+$0C                                 ; $673C: $F8 $0C
    ldh a, [rNR34]                                ; $673E: $F0 $1E
    ld bc, $010E                                  ; $6740: $01 $0E $01
    ld c, $00                                     ; $6743: $0E $00
    inc c                                         ; $6745: $0C
    nop                                           ; $6746: $00
    dec b                                         ; $6747: $05
    nop                                           ; $6748: $00
    rlca                                          ; $6749: $07
    nop                                           ; $674A: $00
    rrca                                          ; $674B: $0F
    nop                                           ; $674C: $00
    rra                                           ; $674D: $1F
    nop                                           ; $674E: $00
    ld [$1EF0], sp                                ; $674F: $08 $F0 $1E
    ret nz                                        ; $6752: $C0

    inc a                                         ; $6753: $3C
    nop                                           ; $6754: $00
    ld e, $00                                     ; $6755: $1E $00
    inc b                                         ; $6757: $04
    nop                                           ; $6758: $00
    add d                                         ; $6759: $82
    nop                                           ; $675A: $00
    add [hl]                                      ; $675B: $86
    nop                                           ; $675C: $00
    add a                                         ; $675D: $87
    nop                                           ; $675E: $00
    cpl                                           ; $675F: $2F
    nop                                           ; $6760: $00
    ld l, $01                                     ; $6761: $2E $01
    rrca                                          ; $6763: $0F
    nop                                           ; $6764: $00
    inc bc                                        ; $6765: $03
    nop                                           ; $6766: $00
    inc bc                                        ; $6767: $03
    nop                                           ; $6768: $00
    inc bc                                        ; $6769: $03
    nop                                           ; $676A: $00

Jump_04F_676B:
    rlca                                          ; $676B: $07
    nop                                           ; $676C: $00
    inc bc                                        ; $676D: $03
    nop                                           ; $676E: $00
    pop bc                                        ; $676F: $C1
    ld [bc], a                                    ; $6770: $02
    adc d                                         ; $6771: $8A
    ld [hl], b                                    ; $6772: $70
    add b                                         ; $6773: $80
    ld a, h                                       ; $6774: $7C
    add b                                         ; $6775: $80
    ld a, d                                       ; $6776: $7A
    call nz, $9C38                                ; $6777: $C4 $38 $9C
    ld h, b                                       ; $677A: $60
    rst $38                                       ; $677B: $FF
    nop                                           ; $677C: $00
    cp $00                                        ; $677D: $FE $00
    rlca                                          ; $677F: $07
    nop                                           ; $6780: $00
    dec bc                                        ; $6781: $0B
    nop                                           ; $6782: $00
    ld c, $00                                     ; $6783: $0E $00
    ld b, $00                                     ; $6785: $06 $00
    inc b                                         ; $6787: $04
    nop                                           ; $6788: $00
    nop                                           ; $6789: $00
    nop                                           ; $678A: $00
    nop                                           ; $678B: $00
    nop                                           ; $678C: $00
    nop                                           ; $678D: $00
    nop                                           ; $678E: $00
    rst $38                                       ; $678F: $FF
    nop                                           ; $6790: $00
    rst $38                                       ; $6791: $FF
    nop                                           ; $6792: $00
    rst $38                                       ; $6793: $FF
    nop                                           ; $6794: $00
    ld a, $00                                     ; $6795: $3E $00
    rrca                                          ; $6797: $0F
    nop                                           ; $6798: $00
    ld bc, $0000                                  ; $6799: $01 $00 $00
    nop                                           ; $679C: $00
    nop                                           ; $679D: $00
    nop                                           ; $679E: $00
    jr nz, jr_04F_67B9                            ; $679F: $20 $18

    jr nz, jr_04F_67BB                            ; $67A1: $20 $18

    ld h, b                                       ; $67A3: $60
    jr @+$66                                      ; $67A4: $18 $64

    jr jr_04F_67B0                                ; $67A6: $18 $08

    jr nc, jr_04F_67E2                            ; $67A8: $30 $38

    nop                                           ; $67AA: $00
    inc e                                         ; $67AB: $1C
    jr nz, jr_04F_67C6                            ; $67AC: $20 $18

    nop                                           ; $67AE: $00
    dec e                                         ; $67AF: $1D

jr_04F_67B0:
    nop                                           ; $67B0: $00
    ld e, $00                                     ; $67B1: $1E $00
    rra                                           ; $67B3: $1F
    nop                                           ; $67B4: $00
    rrca                                          ; $67B5: $0F
    nop                                           ; $67B6: $00
    ld a, $00                                     ; $67B7: $3E $00

jr_04F_67B9:
    inc a                                         ; $67B9: $3C
    nop                                           ; $67BA: $00

jr_04F_67BB:
    db $FC                                        ; $67BB: $FC
    nop                                           ; $67BC: $00
    ldh a, [rP1]                                  ; $67BD: $F0 $00
    cp b                                          ; $67BF: $B8
    nop                                           ; $67C0: $00
    ld a, b                                       ; $67C1: $78
    nop                                           ; $67C2: $00
    cp d                                          ; $67C3: $BA
    nop                                           ; $67C4: $00
    ld b, h                                       ; $67C5: $44

jr_04F_67C6:
    nop                                           ; $67C6: $00
    ld c, [hl]                                    ; $67C7: $4E
    nop                                           ; $67C8: $00
    ld b, $00                                     ; $67C9: $06 $00
    ld b, $00                                     ; $67CB: $06 $00
    rrca                                          ; $67CD: $0F
    nop                                           ; $67CE: $00
    rrca                                          ; $67CF: $0F
    nop                                           ; $67D0: $00
    ld c, $00                                     ; $67D1: $0E $00
    ld [rRAMG], sp                                ; $67D3: $08 $00 $00
    nop                                           ; $67D6: $00
    nop                                           ; $67D7: $00
    nop                                           ; $67D8: $00
    nop                                           ; $67D9: $00
    nop                                           ; $67DA: $00
    nop                                           ; $67DB: $00
    nop                                           ; $67DC: $00
    nop                                           ; $67DD: $00
    nop                                           ; $67DE: $00
    nop                                           ; $67DF: $00
    nop                                           ; $67E0: $00
    nop                                           ; $67E1: $00

jr_04F_67E2:
    nop                                           ; $67E2: $00
    nop                                           ; $67E3: $00
    nop                                           ; $67E4: $00
    ld b, b                                       ; $67E5: $40
    nop                                           ; $67E6: $00
    ld b, b                                       ; $67E7: $40
    nop                                           ; $67E8: $00
    ld h, b                                       ; $67E9: $60
    nop                                           ; $67EA: $00
    ld [hl], b                                    ; $67EB: $70
    nop                                           ; $67EC: $00
    ld d, b                                       ; $67ED: $50
    jr nz, jr_04F_67F0                            ; $67EE: $20 $00

jr_04F_67F0:
    nop                                           ; $67F0: $00
    nop                                           ; $67F1: $00
    nop                                           ; $67F2: $00
    nop                                           ; $67F3: $00
    nop                                           ; $67F4: $00
    nop                                           ; $67F5: $00
    nop                                           ; $67F6: $00
    nop                                           ; $67F7: $00
    nop                                           ; $67F8: $00
    jr nz, jr_04F_67FB                            ; $67F9: $20 $00

jr_04F_67FB:
    jr nc, jr_04F_67FD                            ; $67FB: $30 $00

jr_04F_67FD:
    ld d, b                                       ; $67FD: $50
    jr nz, jr_04F_6849                            ; $67FE: $20 $49

    jr nc, jr_04F_6871                            ; $6800: $30 $6F

    db $10                                        ; $6802: $10
    dec a                                         ; $6803: $3D
    ld [bc], a                                    ; $6804: $02
    rra                                           ; $6805: $1F
    rlca                                          ; $6806: $07
    ld c, $07                                     ; $6807: $0E $07
    ld c, $07                                     ; $6809: $0E $07
    inc c                                         ; $680B: $0C

jr_04F_680C:
    inc bc                                        ; $680C: $03
    dec c                                         ; $680D: $0D
    ld [bc], a                                    ; $680E: $02
    ld [hl], b                                    ; $680F: $70
    nop                                           ; $6810: $00
    ret nc                                        ; $6811: $D0

jr_04F_6812:
    jr nz, jr_04F_680C                            ; $6812: $20 $F8

    jr nz, jr_04F_6812                            ; $6814: $20 $FC

    ld [hl], b                                    ; $6816: $70
    db $FC                                        ; $6817: $FC
    ldh a, [rIE]                                  ; $6818: $F0 $FF
    ld hl, sp-$01                                 ; $681A: $F8 $FF
    db $FC                                        ; $681C: $FC
    rst $38                                       ; $681D: $FF
    ld a, a                                       ; $681E: $7F
    nop                                           ; $681F: $00
    nop                                           ; $6820: $00
    ld bc, $0100                                  ; $6821: $01 $00 $01
    nop                                           ; $6824: $00
    ld [bc], a                                    ; $6825: $02
    ld bc, $0304                                  ; $6826: $01 $04 $03
    adc [hl]                                      ; $6829: $8E
    rlca                                          ; $682A: $07
    ld a, h                                       ; $682B: $7C
    adc a                                         ; $682C: $8F
    dec a                                         ; $682D: $3D
    cp $E0                                        ; $682E: $FE $E0
    nop                                           ; $6830: $00
    and b                                         ; $6831: $A0
    ld b, b                                       ; $6832: $40
    ld h, b                                       ; $6833: $60
    add b                                         ; $6834: $80
    ld b, b                                       ; $6835: $40
    add b                                         ; $6836: $80
    ret nz                                        ; $6837: $C0

    nop                                           ; $6838: $00
    add b                                         ; $6839: $80
    nop                                           ; $683A: $00
    add b                                         ; $683B: $80
    nop                                           ; $683C: $00
    add b                                         ; $683D: $80
    nop                                           ; $683E: $00
    rst $38                                       ; $683F: $FF
    nop                                           ; $6840: $00
    dec a                                         ; $6841: $3D
    jp nz, $E39D                                  ; $6842: $C2 $9D $E3

    add a                                         ; $6845: $87
    ld a, a                                       ; $6846: $7F
    rra                                           ; $6847: $1F
    rst $38                                       ; $6848: $FF

jr_04F_6849:
    sbc e                                         ; $6849: $9B
    ld a, a                                       ; $684A: $7F
    add l                                         ; $684B: $85
    ld a, a                                       ; $684C: $7F
    sbc a                                         ; $684D: $9F
    ld a, a                                       ; $684E: $7F
    cp a                                          ; $684F: $BF
    ld a, a                                       ; $6850: $7F
    adc a                                         ; $6851: $8F
    ld a, [hl]                                    ; $6852: $7E
    push hl                                       ; $6853: $E5
    cp $F3                                        ; $6854: $FE $F3
    db $FD                                        ; $6856: $FD
    pop af                                        ; $6857: $F1
    rst $38                                       ; $6858: $FF
    rst $30                                       ; $6859: $F7
    ei                                            ; $685A: $FB
    rst $38                                       ; $685B: $FF
    di                                            ; $685C: $F3
    rst $38                                       ; $685D: $FF
    di                                            ; $685E: $F3
    dec a                                         ; $685F: $3D
    cp $79                                        ; $6860: $FE $79
    cp $F9                                        ; $6862: $FE $F9
    cp $F9                                        ; $6864: $FE $F9
    cp $F8                                        ; $6866: $FE $F8
    rst $38                                       ; $6868: $FF
    di                                            ; $6869: $F3
    rst $38                                       ; $686A: $FF
    and $FF                                       ; $686B: $E6 $FF
    rst $38                                       ; $686D: $FF
    rst $38                                       ; $686E: $FF
    nop                                           ; $686F: $00
    nop                                           ; $6870: $00

jr_04F_6871:
    ld bc, $0300                                  ; $6871: $01 $00 $03
    nop                                           ; $6874: $00
    ld b, $00                                     ; $6875: $06 $00
    cp $00                                        ; $6877: $FE $00
    ld l, h                                       ; $6879: $6C
    sub b                                         ; $687A: $90
    ld a, b                                       ; $687B: $78
    add b                                         ; $687C: $80
    cp b                                          ; $687D: $B8
    ret nz                                        ; $687E: $C0

    nop                                           ; $687F: $00
    nop                                           ; $6880: $00
    nop                                           ; $6881: $00
    nop                                           ; $6882: $00
    nop                                           ; $6883: $00
    nop                                           ; $6884: $00
    nop                                           ; $6885: $00
    nop                                           ; $6886: $00
    nop                                           ; $6887: $00
    nop                                           ; $6888: $00
    inc bc                                        ; $6889: $03
    nop                                           ; $688A: $00
    ld c, $01                                     ; $688B: $0E $01
    ld a, a                                       ; $688D: $7F
    inc bc                                        ; $688E: $03
    ld bc, $0300                                  ; $688F: $01 $00 $03
    ld bc, $030F                                  ; $6892: $01 $0F $03
    dec sp                                        ; $6895: $3B
    rrca                                          ; $6896: $0F
    di                                            ; $6897: $F3
    rra                                           ; $6898: $1F
    ld h, a                                       ; $6899: $67
    rst $38                                       ; $689A: $FF
    sbc h                                         ; $689B: $9C
    rst $38                                       ; $689C: $FF
    dec sp                                        ; $689D: $3B
    rst $38                                       ; $689E: $FF
    rst $38                                       ; $689F: $FF
    rst $38                                       ; $68A0: $FF
    rst $38                                       ; $68A1: $FF
    rst $38                                       ; $68A2: $FF
    ld sp, hl                                     ; $68A3: $F9
    rst $38                                       ; $68A4: $FF
    rst $38                                       ; $68A5: $FF
    rst $38                                       ; $68A6: $FF
    rst $38                                       ; $68A7: $FF
    rst $38                                       ; $68A8: $FF
    or $FF                                        ; $68A9: $F6 $FF
    db $FC                                        ; $68AB: $FC
    rst $38                                       ; $68AC: $FF
    db $FC                                        ; $68AD: $FC
    rst $38                                       ; $68AE: $FF
    di                                            ; $68AF: $F3
    rst $38                                       ; $68B0: $FF
    rst $30                                       ; $68B1: $F7
    rst $38                                       ; $68B2: $FF
    rst $28                                       ; $68B3: $EF
    rst $38                                       ; $68B4: $FF
    rst $28                                       ; $68B5: $EF
    rst $38                                       ; $68B6: $FF
    xor $FF                                       ; $68B7: $EE $FF
    jp c, $9DFD                                   ; $68B9: $DA $FD $9D

    ei                                            ; $68BC: $FB
    rrca                                          ; $68BD: $0F
    di                                            ; $68BE: $F3
    rst $38                                       ; $68BF: $FF
    rst $38                                       ; $68C0: $FF
    rst $30                                       ; $68C1: $F7
    rst $38                                       ; $68C2: $FF
    or $EB                                        ; $68C3: $F6 $EB
    rst $38                                       ; $68C5: $FF
    ret nz                                        ; $68C6: $C0

    ld hl, sp+$00                                 ; $68C7: $F8 $00
    ld a, b                                       ; $68C9: $78
    add b                                         ; $68CA: $80
    ldh a, [$80]                                  ; $68CB: $F0 $80
    ldh a, [$80]                                  ; $68CD: $F0 $80
    ldh a, [$80]                                  ; $68CF: $F0 $80
    ld h, b                                       ; $68D1: $60
    add b                                         ; $68D2: $80
    and b                                         ; $68D3: $A0
    ld b, b                                       ; $68D4: $40
    ldh a, [rP1]                                  ; $68D5: $F0 $00
    ld hl, sp+$00                                 ; $68D7: $F8 $00
    nop                                           ; $68D9: $00
    nop                                           ; $68DA: $00
    nop                                           ; $68DB: $00
    nop                                           ; $68DC: $00
    nop                                           ; $68DD: $00
    nop                                           ; $68DE: $00
    nop                                           ; $68DF: $00
    nop                                           ; $68E0: $00
    nop                                           ; $68E1: $00
    nop                                           ; $68E2: $00
    nop                                           ; $68E3: $00
    nop                                           ; $68E4: $00
    nop                                           ; $68E5: $00
    nop                                           ; $68E6: $00
    ld bc, $0300                                  ; $68E7: $01 $00 $03
    nop                                           ; $68EA: $00
    rrca                                          ; $68EB: $0F
    nop                                           ; $68EC: $00
    inc a                                         ; $68ED: $3C
    nop                                           ; $68EE: $00

jr_04F_68EF:
    nop                                           ; $68EF: $00
    nop                                           ; $68F0: $00
    rlca                                          ; $68F1: $07
    nop                                           ; $68F2: $00
    dec sp                                        ; $68F3: $3B
    inc b                                         ; $68F4: $04
    rst $38                                       ; $68F5: $FF
    rrca                                          ; $68F6: $0F
    rst $08                                       ; $68F7: $CF
    ccf                                           ; $68F8: $3F
    rra                                           ; $68F9: $1F
    rst $38                                       ; $68FA: $FF
    rst $38                                       ; $68FB: $FF
    ccf                                           ; $68FC: $3F
    db $D3                                        ; $68FD: $D3
    ccf                                           ; $68FE: $3F
    db $EB                                        ; $68FF: $EB
    rra                                           ; $6900: $1F
    sbc b                                         ; $6901: $98
    ld a, a                                       ; $6902: $7F
    sbc h                                         ; $6903: $9C
    rst $38                                       ; $6904: $FF
    rst $38                                       ; $6905: $FF
    rst $38                                       ; $6906: $FF
    rst $38                                       ; $6907: $FF
    rst $38                                       ; $6908: $FF
    di                                            ; $6909: $F3
    rst $38                                       ; $690A: $FF
    rst $28                                       ; $690B: $EF
    rst $30                                       ; $690C: $F7
    rst $30                                       ; $690D: $F7
    rst $08                                       ; $690E: $CF
    rst $10                                       ; $690F: $D7
    rst $38                                       ; $6910: $FF
    rrca                                          ; $6911: $0F
    rst $38                                       ; $6912: $FF
    ld a, [hl]                                    ; $6913: $7E
    rst $38                                       ; $6914: $FF
    ld sp, hl                                     ; $6915: $F9
    rst $38                                       ; $6916: $FF
    rst $30                                       ; $6917: $F7
    rst $38                                       ; $6918: $FF
    rst $08                                       ; $6919: $CF
    rst $38                                       ; $691A: $FF
    rst $38                                       ; $691B: $FF
    rst $38                                       ; $691C: $FF
    rst $38                                       ; $691D: $FF
    rst $38                                       ; $691E: $FF
    pop af                                        ; $691F: $F1
    cp $73                                        ; $6920: $FE $73
    db $FC                                        ; $6922: $FC
    db $E3                                        ; $6923: $E3
    db $FC                                        ; $6924: $FC
    rst $20                                       ; $6925: $E7
    ld hl, sp-$19                                 ; $6926: $F8 $E7
    ld hl, sp-$04                                 ; $6928: $F8 $FC
    ldh [$FC], a                                  ; $692A: $E0 $FC
    ret nz                                        ; $692C: $C0

    jr c, jr_04F_68EF                             ; $692D: $38 $C0

    cp e                                          ; $692F: $BB
    ld b, c                                       ; $6930: $41
    ld b, c                                       ; $6931: $41
    and b                                         ; $6932: $A0
    pop bc                                        ; $6933: $C1
    nop                                           ; $6934: $00
    add b                                         ; $6935: $80
    nop                                           ; $6936: $00
    nop                                           ; $6937: $00
    nop                                           ; $6938: $00
    nop                                           ; $6939: $00
    nop                                           ; $693A: $00
    nop                                           ; $693B: $00
    nop                                           ; $693C: $00
    nop                                           ; $693D: $00
    nop                                           ; $693E: $00
    ldh a, [$C0]                                  ; $693F: $F0 $C0
    ldh a, [$C0]                                  ; $6941: $F0 $C0
    ldh [$C0], a                                  ; $6943: $E0 $C0
    and b                                         ; $6945: $A0
    ld b, b                                       ; $6946: $40
    or b                                          ; $6947: $B0
    ld b, b                                       ; $6948: $40

jr_04F_6949:
    ld [hl], b                                    ; $6949: $70
    nop                                           ; $694A: $00
    jr nc, jr_04F_694D                            ; $694B: $30 $00

jr_04F_694D:
    jr nc, jr_04F_694F                            ; $694D: $30 $00

jr_04F_694F:
    ld sp, $0300                                  ; $694F: $31 $00 $03
    ld bc, $0307                                  ; $6952: $01 $07 $03
    rrca                                          ; $6955: $0F
    rlca                                          ; $6956: $07
    rra                                           ; $6957: $1F
    rlca                                          ; $6958: $07
    inc de                                        ; $6959: $13
    inc c                                         ; $695A: $0C
    ld e, $00                                     ; $695B: $1E $00
    nop                                           ; $695D: $00
    nop                                           ; $695E: $00
    rst $20                                       ; $695F: $E7
    jr jr_04F_6949                                ; $6960: $18 $E7

    sbc b                                         ; $6962: $98
    jp $A1FC                                      ; $6963: $C3 $FC $A1


    sbc $F0                                       ; $6966: $DE $F0
    rrca                                          ; $6968: $0F
    jr c, jr_04F_6972                             ; $6969: $38 $07

    inc c                                         ; $696B: $0C
    inc bc                                        ; $696C: $03
    inc c                                         ; $696D: $0C
    rlca                                          ; $696E: $07
    rst $38                                       ; $696F: $FF
    rrca                                          ; $6970: $0F
    rst $28                                       ; $6971: $EF

jr_04F_6972:
    inc e                                         ; $6972: $1C
    rst $10                                       ; $6973: $D7
    jr c, jr_04F_69F1                             ; $6974: $38 $7B

    add h                                         ; $6976: $84
    ld [hl], e                                    ; $6977: $73
    adc h                                         ; $6978: $8C
    inc hl                                        ; $6979: $23
    call c, $FF00                                 ; $697A: $DC $00 $FF
    nop                                           ; $697D: $00
    rst $38                                       ; $697E: $FF

Call_04F_697F:
    sbc h                                         ; $697F: $9C
    rst $38                                       ; $6980: $FF
    pop hl                                        ; $6981: $E1
    ld a, a                                       ; $6982: $7F
    rst $30                                       ; $6983: $F7
    rra                                           ; $6984: $1F
    rst $28                                       ; $6985: $EF
    rra                                           ; $6986: $1F
    rst $38                                       ; $6987: $FF
    ld c, $FB                                     ; $6988: $0E $FB
    inc c                                         ; $698A: $0C
    di                                            ; $698B: $F3
    inc c                                         ; $698C: $0C
    ld l, [hl]                                    ; $698D: $6E
    sbc h                                         ; $698E: $9C
    jr c, @-$3E                                   ; $698F: $38 $C0

    or b                                          ; $6991: $B0
    ret nz                                        ; $6992: $C0

    and b                                         ; $6993: $A0
    ret nz                                        ; $6994: $C0

    ld b, b                                       ; $6995: $40
    add b                                         ; $6996: $80
    ret nz                                        ; $6997: $C0

    nop                                           ; $6998: $00
    add b                                         ; $6999: $80
    nop                                           ; $699A: $00
    nop                                           ; $699B: $00
    nop                                           ; $699C: $00
    nop                                           ; $699D: $00
    nop                                           ; $699E: $00
    ld b, $03                                     ; $699F: $06 $03
    inc bc                                        ; $69A1: $03
    ld bc, $0001                                  ; $69A2: $01 $01 $00
    nop                                           ; $69A5: $00
    nop                                           ; $69A6: $00
    nop                                           ; $69A7: $00
    nop                                           ; $69A8: $00
    nop                                           ; $69A9: $00
    nop                                           ; $69AA: $00
    nop                                           ; $69AB: $00
    nop                                           ; $69AC: $00
    nop                                           ; $69AD: $00
    nop                                           ; $69AE: $00
    nop                                           ; $69AF: $00
    rst $38                                       ; $69B0: $FF
    nop                                           ; $69B1: $00
    rst $38                                       ; $69B2: $FF
    ldh [$7F], a                                  ; $69B3: $E0 $7F
    ld a, a                                       ; $69B5: $7F
    rlca                                          ; $69B6: $07
    rlca                                          ; $69B7: $07
    nop                                           ; $69B8: $00
    nop                                           ; $69B9: $00
    nop                                           ; $69BA: $00
    nop                                           ; $69BB: $00
    nop                                           ; $69BC: $00
    nop                                           ; $69BD: $00
    nop                                           ; $69BE: $00
    ld b, [hl]                                    ; $69BF: $46
    ld hl, sp+$5C                                 ; $69C0: $F8 $5C
    ldh [$F8], a                                  ; $69C2: $E0 $F8
    add b                                         ; $69C4: $80
    ldh a, [rP1]                                  ; $69C5: $F0 $00
    nop                                           ; $69C7: $00
    nop                                           ; $69C8: $00
    nop                                           ; $69C9: $00
    nop                                           ; $69CA: $00
    nop                                           ; $69CB: $00
    nop                                           ; $69CC: $00
    nop                                           ; $69CD: $00
    nop                                           ; $69CE: $00
    nop                                           ; $69CF: $00
    nop                                           ; $69D0: $00
    nop                                           ; $69D1: $00
    nop                                           ; $69D2: $00
    ld bc, $7100                                  ; $69D3: $01 $00 $71
    nop                                           ; $69D6: $00
    ld e, b                                       ; $69D7: $58
    jr nz, @+$5E                                  ; $69D8: $20 $5C

    jr c, jr_04F_6A5A                             ; $69DA: $38 $7E

    inc e                                         ; $69DC: $1C
    ccf                                           ; $69DD: $3F
    ld e, $00                                     ; $69DE: $1E $00
    nop                                           ; $69E0: $00
    nop                                           ; $69E1: $00
    nop                                           ; $69E2: $00
    add b                                         ; $69E3: $80
    nop                                           ; $69E4: $00
    add b                                         ; $69E5: $80
    nop                                           ; $69E6: $00
    ret nz                                        ; $69E7: $C0

    nop                                           ; $69E8: $00
    ret nz                                        ; $69E9: $C0

jr_04F_69EA:
    nop                                           ; $69EA: $00
    ld h, b                                       ; $69EB: $60
    nop                                           ; $69EC: $00
    ld [hl], b                                    ; $69ED: $70
    nop                                           ; $69EE: $00
    nop                                           ; $69EF: $00
    nop                                           ; $69F0: $00

jr_04F_69F1:
    nop                                           ; $69F1: $00
    nop                                           ; $69F2: $00
    nop                                           ; $69F3: $00
    nop                                           ; $69F4: $00
    nop                                           ; $69F5: $00
    nop                                           ; $69F6: $00
    nop                                           ; $69F7: $00
    nop                                           ; $69F8: $00
    ld bc, $0300                                  ; $69F9: $01 $00 $03
    ld bc, $0306                                  ; $69FC: $01 $06 $03
    rra                                           ; $69FF: $1F
    ld c, $17                                     ; $6A00: $0E $17
    inc c                                         ; $6A02: $0C
    dec sp                                        ; $6A03: $3B
    inc b                                         ; $6A04: $04
    jr nc, jr_04F_6A16                            ; $6A05: $30 $0F

    ldh [$1F], a                                  ; $6A07: $E0 $1F
    jp $07BC                                      ; $6A09: $C3 $BC $07


    ld hl, sp+$0F                                 ; $6A0C: $F8 $0F
    ldh a, [$D8]                                  ; $6A0E: $F0 $D8
    jr nz, jr_04F_69EA                            ; $6A10: $20 $D8

    jr nz, jr_04F_6A60                            ; $6A12: $20 $4C

    ldh a, [$EC]                                  ; $6A14: $F0 $EC

jr_04F_6A16:
    ldh a, [$7C]                                  ; $6A16: $F0 $7C
    ld hl, sp+$7A                                 ; $6A18: $F8 $7A
    db $FC                                        ; $6A1A: $FC
    cp $F8                                        ; $6A1B: $FE $F8
    cp $F8                                        ; $6A1D: $FE $F8
    inc b                                         ; $6A1F: $04
    inc bc                                        ; $6A20: $03
    inc c                                         ; $6A21: $0C
    rlca                                          ; $6A22: $07
    inc c                                         ; $6A23: $0C
    rlca                                          ; $6A24: $07
    ld [$0807], sp                                ; $6A25: $08 $07 $08
    rlca                                          ; $6A28: $07
    jr jr_04F_6A3A                                ; $6A29: $18 $0F

    jr jr_04F_6A3C                                ; $6A2B: $18 $0F

    jr jr_04F_6A3E                                ; $6A2D: $18 $0F

    rlca                                          ; $6A2F: $07
    ld hl, sp+$1F                                 ; $6A30: $F8 $1F
    ldh [$3B], a                                  ; $6A32: $E0 $3B
    call nz, $E61D                                ; $6A34: $C4 $1D $E6
    dec bc                                        ; $6A37: $0B
    rst $30                                       ; $6A38: $F7
    rlca                                          ; $6A39: $07

jr_04F_6A3A:
    ei                                            ; $6A3A: $FB
    ccf                                           ; $6A3B: $3F

jr_04F_6A3C:
    pop bc                                        ; $6A3C: $C1
    ccf                                           ; $6A3D: $3F

jr_04F_6A3E:
    pop bc                                        ; $6A3E: $C1
    rst $38                                       ; $6A3F: $FF
    db $FC                                        ; $6A40: $FC
    ld sp, hl                                     ; $6A41: $F9
    cp $F9                                        ; $6A42: $FE $F9
    ld a, [hl]                                    ; $6A44: $7E
    cp [hl]                                       ; $6A45: $BE
    ld a, a                                       ; $6A46: $7F
    ld e, a                                       ; $6A47: $5F
    cp a                                          ; $6A48: $BF
    call c, $F9FF                                 ; $6A49: $DC $FF $F9
    rst $38                                       ; $6A4C: $FF
    ld sp, hl                                     ; $6A4D: $F9
    rst $38                                       ; $6A4E: $FF
    nop                                           ; $6A4F: $00
    nop                                           ; $6A50: $00
    add b                                         ; $6A51: $80
    nop                                           ; $6A52: $00
    add b                                         ; $6A53: $80
    nop                                           ; $6A54: $00
    add b                                         ; $6A55: $80
    nop                                           ; $6A56: $00
    ret nz                                        ; $6A57: $C0

    nop                                           ; $6A58: $00
    ret nz                                        ; $6A59: $C0

jr_04F_6A5A:
    nop                                           ; $6A5A: $00
    ldh [$80], a                                  ; $6A5B: $E0 $80
    and b                                         ; $6A5D: $A0
    ret nz                                        ; $6A5E: $C0

    inc c                                         ; $6A5F: $0C

jr_04F_6A60:
    rlca                                          ; $6A60: $07
    rrca                                          ; $6A61: $0F
    inc bc                                        ; $6A62: $03
    inc c                                         ; $6A63: $0C
    inc bc                                        ; $6A64: $03
    ld c, $01                                     ; $6A65: $0E $01
    ld b, $01                                     ; $6A67: $06 $01
    inc bc                                        ; $6A69: $03
    nop                                           ; $6A6A: $00
    ld bc, $0000                                  ; $6A6B: $01 $00 $00
    nop                                           ; $6A6E: $00
    ld a, a                                       ; $6A6F: $7F
    add c                                         ; $6A70: $81
    cp $03                                        ; $6A71: $FE $03
    cp $03                                        ; $6A73: $FE $03
    ld [hl], l                                    ; $6A75: $75
    adc a                                         ; $6A76: $8F
    cp c                                          ; $6A77: $B9
    rst $38                                       ; $6A78: $FF
    sbc l                                         ; $6A79: $9D
    rst $38                                       ; $6A7A: $FF
    db $FC                                        ; $6A7B: $FC
    rra                                           ; $6A7C: $1F
    ld a, [hl]                                    ; $6A7D: $7E
    rrca                                          ; $6A7E: $0F
    ld sp, hl                                     ; $6A7F: $F9
    rst $38                                       ; $6A80: $FF
    db $FD                                        ; $6A81: $FD
    rst $38                                       ; $6A82: $FF
    call c, $DDFF                                 ; $6A83: $DC $FF $DD
    rst $38                                       ; $6A86: $FF
    xor $FF                                       ; $6A87: $EE $FF
    rst $30                                       ; $6A89: $F7
    rst $38                                       ; $6A8A: $FF
    rst $30                                       ; $6A8B: $F7
    rst $38                                       ; $6A8C: $FF
    ei                                            ; $6A8D: $FB
    rst $38                                       ; $6A8E: $FF
    ld d, b                                       ; $6A8F: $50
    ldh [$30], a                                  ; $6A90: $E0 $30
    ldh [$B8], a                                  ; $6A92: $E0 $B8
    ldh [$D8], a                                  ; $6A94: $E0 $D8
    ldh a, [$CC]                                  ; $6A96: $F0 $CC
    ld hl, sp+$64                                 ; $6A98: $F8 $64
    ld hl, sp-$42                                 ; $6A9A: $F8 $BE
    db $FC                                        ; $6A9C: $FC
    cp a                                          ; $6A9D: $BF
    cp $36                                        ; $6A9E: $FE $36
    rrca                                          ; $6AA0: $0F
    jr jr_04F_6AAA                                ; $6AA1: $18 $07

    rlca                                          ; $6AA3: $07
    nop                                           ; $6AA4: $00
    inc bc                                        ; $6AA5: $03
    nop                                           ; $6AA6: $00
    ld bc, $0000                                  ; $6AA7: $01 $00 $00

jr_04F_6AAA:
    nop                                           ; $6AAA: $00
    nop                                           ; $6AAB: $00
    nop                                           ; $6AAC: $00
    nop                                           ; $6AAD: $00
    nop                                           ; $6AAE: $00
    ld a, l                                       ; $6AAF: $7D
    rst $38                                       ; $6AB0: $FF
    ld a, a                                       ; $6AB1: $7F
    rst $38                                       ; $6AB2: $FF
    rst $38                                       ; $6AB3: $FF
    ccf                                           ; $6AB4: $3F
    db $E3                                        ; $6AB5: $E3
    rra                                           ; $6AB6: $1F
    ldh [$1F], a                                  ; $6AB7: $E0 $1F
    ld a, b                                       ; $6AB9: $78
    rlca                                          ; $6ABA: $07
    ld e, $01                                     ; $6ABB: $1E $01
    rra                                           ; $6ABD: $1F
    nop                                           ; $6ABE: $00
    rst $38                                       ; $6ABF: $FF
    rst $38                                       ; $6AC0: $FF
    rst $38                                       ; $6AC1: $FF
    rst $38                                       ; $6AC2: $FF
    rst $38                                       ; $6AC3: $FF
    rst $38                                       ; $6AC4: $FF
    rst $38                                       ; $6AC5: $FF
    rst $38                                       ; $6AC6: $FF
    rst $18                                       ; $6AC7: $DF
    rst $38                                       ; $6AC8: $FF
    ei                                            ; $6AC9: $FB
    rst $38                                       ; $6ACA: $FF
    dec sp                                        ; $6ACB: $3B
    rst $38                                       ; $6ACC: $FF
    rra                                           ; $6ACD: $1F
    rst $38                                       ; $6ACE: $FF
    db $ED                                        ; $6ACF: $ED
    ld d, $01                                     ; $6AD0: $16 $01
    cp $03                                        ; $6AD2: $FE $03
    db $FC                                        ; $6AD4: $FC
    or a                                          ; $6AD5: $B7
    ld hl, sp-$49                                 ; $6AD6: $F8 $B7
    ld hl, sp-$21                                 ; $6AD8: $F8 $DF
    ld hl, sp-$47                                 ; $6ADA: $F8 $B9
    cp $FF                                        ; $6ADC: $FE $FF
    db $FC                                        ; $6ADE: $FC
    nop                                           ; $6ADF: $00
    nop                                           ; $6AE0: $00
    inc bc                                        ; $6AE1: $03
    nop                                           ; $6AE2: $00
    ld b, $01                                     ; $6AE3: $06 $01
    inc c                                         ; $6AE5: $0C
    inc bc                                        ; $6AE6: $03
    rst $38                                       ; $6AE7: $FF
    nop                                           ; $6AE8: $00
    cp $38                                        ; $6AE9: $FE $38
    ld a, [hl-]                                   ; $6AEB: $3A
    db $FC                                        ; $6AEC: $FC
    adc a                                         ; $6AED: $8F
    ld a, b                                       ; $6AEE: $78
    nop                                           ; $6AEF: $00
    nop                                           ; $6AF0: $00
    ld hl, sp+$00                                 ; $6AF1: $F8 $00
    ld h, b                                       ; $6AF3: $60
    add b                                         ; $6AF4: $80
    ret nz                                        ; $6AF5: $C0

    nop                                           ; $6AF6: $00
    nop                                           ; $6AF7: $00
    nop                                           ; $6AF8: $00
    nop                                           ; $6AF9: $00
    nop                                           ; $6AFA: $00
    nop                                           ; $6AFB: $00
    nop                                           ; $6AFC: $00
    nop                                           ; $6AFD: $00
    nop                                           ; $6AFE: $00
    dec c                                         ; $6AFF: $0D
    ld [bc], a                                    ; $6B00: $02
    ld b, $01                                     ; $6B01: $06 $01
    ld bc, $0102                                  ; $6B03: $01 $02 $01
    nop                                           ; $6B06: $00
    ld bc, $0000                                  ; $6B07: $01 $00 $00
    nop                                           ; $6B0A: $00
    ld bc, $0700                                  ; $6B0B: $01 $00 $07
    ld bc, $FF7F                                  ; $6B0E: $01 $7F $FF
    ccf                                           ; $6B11: $3F
    rst $38                                       ; $6B12: $FF
    rra                                           ; $6B13: $1F
    rst $38                                       ; $6B14: $FF
    ld h, e                                       ; $6B15: $63
    rst $38                                       ; $6B16: $FF
    db $FC                                        ; $6B17: $FC
    ld a, a                                       ; $6B18: $7F
    sbc $3F                                       ; $6B19: $DE $3F
    cp a                                          ; $6B1B: $BF
    rst $18                                       ; $6B1C: $DF
    rst $08                                       ; $6B1D: $CF
    rst $38                                       ; $6B1E: $FF
    rst $38                                       ; $6B1F: $FF
    db $FC                                        ; $6B20: $FC
    db $FC                                        ; $6B21: $FC
    rst $38                                       ; $6B22: $FF
    db $FD                                        ; $6B23: $FD
    rst $38                                       ; $6B24: $FF
    ld sp, hl                                     ; $6B25: $F9
    rst $38                                       ; $6B26: $FF
    jp $E73F                                      ; $6B27: $C3 $3F $E7


    rra                                           ; $6B2A: $1F
    db $EB                                        ; $6B2B: $EB
    rst $30                                       ; $6B2C: $F7
    rst $38                                       ; $6B2D: $FF
    ld sp, hl                                     ; $6B2E: $F9
    cp $70                                        ; $6B2F: $FE $70
    rst $38                                       ; $6B31: $FF
    ld hl, sp-$03                                 ; $6B32: $F8 $FD
    cp $FF                                        ; $6B34: $FE $FF
    ld hl, sp-$04                                 ; $6B36: $F8 $FC
    ldh [$F8], a                                  ; $6B38: $E0 $F8
    ret nz                                        ; $6B3A: $C0

    ldh [$80], a                                  ; $6B3B: $E0 $80
    ldh [$80], a                                  ; $6B3D: $E0 $80
    nop                                           ; $6B3F: $00
    nop                                           ; $6B40: $00
    add b                                         ; $6B41: $80
    nop                                           ; $6B42: $00
    ld h, b                                       ; $6B43: $60
    add b                                         ; $6B44: $80
    ret nz                                        ; $6B45: $C0

    nop                                           ; $6B46: $00
    nop                                           ; $6B47: $00
    nop                                           ; $6B48: $00
    nop                                           ; $6B49: $00
    nop                                           ; $6B4A: $00
    nop                                           ; $6B4B: $00
    nop                                           ; $6B4C: $00
    nop                                           ; $6B4D: $00
    nop                                           ; $6B4E: $00
    rra                                           ; $6B4F: $1F
    rlca                                          ; $6B50: $07
    daa                                           ; $6B51: $27
    rra                                           ; $6B52: $1F
    rst $38                                       ; $6B53: $FF
    nop                                           ; $6B54: $00
    di                                            ; $6B55: $F3
    nop                                           ; $6B56: $00
    nop                                           ; $6B57: $00
    nop                                           ; $6B58: $00
    nop                                           ; $6B59: $00
    nop                                           ; $6B5A: $00
    nop                                           ; $6B5B: $00
    nop                                           ; $6B5C: $00
    nop                                           ; $6B5D: $00
    nop                                           ; $6B5E: $00
    rst $18                                       ; $6B5F: $DF
    rst $28                                       ; $6B60: $EF
    rst $38                                       ; $6B61: $FF
    rrca                                          ; $6B62: $0F
    rst $38                                       ; $6B63: $FF
    rlca                                          ; $6B64: $07
    rst $38                                       ; $6B65: $FF
    inc bc                                        ; $6B66: $03
    add hl, sp                                    ; $6B67: $39
    rlca                                          ; $6B68: $07
    rrca                                          ; $6B69: $0F
    inc bc                                        ; $6B6A: $03
    rrca                                          ; $6B6B: $0F
    rlca                                          ; $6B6C: $07
    dec bc                                        ; $6B6D: $0B
    rlca                                          ; $6B6E: $07
    db $FC                                        ; $6B6F: $FC
    rst $38                                       ; $6B70: $FF
    cp $FF                                        ; $6B71: $FE $FF
    rst $38                                       ; $6B73: $FF
    rst $38                                       ; $6B74: $FF
    cp a                                          ; $6B75: $BF
    rst $38                                       ; $6B76: $FF
    sbc a                                         ; $6B77: $9F

Call_04F_6B78:
    rst $38                                       ; $6B78: $FF
    pop bc                                        ; $6B79: $C1
    rst $38                                       ; $6B7A: $FF
    ldh [rIE], a                                  ; $6B7B: $E0 $FF

jr_04F_6B7D:
    xor a                                         ; $6B7D: $AF
    ldh a, [rNR41]                                ; $6B7E: $F0 $20
    ret nz                                        ; $6B80: $C0

    ld b, b                                       ; $6B81: $40
    add b                                         ; $6B82: $80
    ret nz                                        ; $6B83: $C0

    add b                                         ; $6B84: $80
    ret nz                                        ; $6B85: $C0

    add b                                         ; $6B86: $80
    ldh [$C0], a                                  ; $6B87: $E0 $C0
    ldh a, [$E0]                                  ; $6B89: $F0 $E0
    jr z, jr_04F_6B7D                             ; $6B8B: $28 $F0

    add [hl]                                      ; $6B8D: $86
    ld a, b                                       ; $6B8E: $78
    dec e                                         ; $6B8F: $1D
    inc bc                                        ; $6B90: $03
    dec de                                        ; $6B91: $1B
    inc b                                         ; $6B92: $04
    rra                                           ; $6B93: $1F
    nop                                           ; $6B94: $00
    add hl, de                                    ; $6B95: $19
    nop                                           ; $6B96: $00
    stop                                          ; $6B97: $10 $00
    nop                                           ; $6B99: $00
    nop                                           ; $6B9A: $00
    nop                                           ; $6B9B: $00
    nop                                           ; $6B9C: $00
    nop                                           ; $6B9D: $00
    nop                                           ; $6B9E: $00
    sub b                                         ; $6B9F: $90
    ldh [rSVBK], a                                ; $6BA0: $E0 $70
    add b                                         ; $6BA2: $80
    ldh a, [rP1]                                  ; $6BA3: $F0 $00
    ret nc                                        ; $6BA5: $D0

    jr nz, @-$0E                                  ; $6BA6: $20 $F0

    nop                                           ; $6BA8: $00
    jr c, jr_04F_6BAB                             ; $6BA9: $38 $00

jr_04F_6BAB:
    inc e                                         ; $6BAB: $1C
    nop                                           ; $6BAC: $00
    ld b, $00                                     ; $6BAD: $06 $00
    di                                            ; $6BAF: $F3
    inc c                                         ; $6BB0: $0C
    dec e                                         ; $6BB1: $1D
    ld [bc], a                                    ; $6BB2: $02
    rlca                                          ; $6BB3: $07
    nop                                           ; $6BB4: $00
    nop                                           ; $6BB5: $00
    nop                                           ; $6BB6: $00
    nop                                           ; $6BB7: $00
    nop                                           ; $6BB8: $00
    nop                                           ; $6BB9: $00
    nop                                           ; $6BBA: $00
    nop                                           ; $6BBB: $00
    nop                                           ; $6BBC: $00
    nop                                           ; $6BBD: $00
    nop                                           ; $6BBE: $00
    inc [hl]                                      ; $6BBF: $34
    ld [$0678], sp                                ; $6BC0: $08 $78 $06
    ld e, l                                       ; $6BC3: $5D
    ld [hl-], a                                   ; $6BC4: $32
    ret z                                         ; $6BC5: $C8

    ccf                                           ; $6BC6: $3F
    ld l, h                                       ; $6BC7: $6C
    sbc a                                         ; $6BC8: $9F
    or a                                          ; $6BC9: $B7
    ld a, h                                       ; $6BCA: $7C
    ld b, b                                       ; $6BCB: $40
    ld a, $3A                                     ; $6BCC: $3E $3A
    inc b                                         ; $6BCE: $04
    inc h                                         ; $6BCF: $24
    jr jr_04F_6C36                                ; $6BD0: $18 $64

    ld a, [de]                                    ; $6BD2: $1A
    or e                                          ; $6BD3: $B3
    ld c, [hl]                                    ; $6BD4: $4E
    inc h                                         ; $6BD5: $24
    rst $38                                       ; $6BD6: $FF
    inc h                                         ; $6BD7: $24
    ei                                            ; $6BD8: $FB
    ld e, a                                       ; $6BD9: $5F
    ldh a, [rOBP0]                                ; $6BDA: $F0 $48
    ld [hl], $28                                  ; $6BDC: $36 $28
    inc e                                         ; $6BDE: $1C
    inc a                                         ; $6BDF: $3C
    nop                                           ; $6BE0: $00
    inc d                                         ; $6BE1: $14
    ld l, [hl]                                    ; $6BE2: $6E
    ld b, l                                       ; $6BE3: $45
    ld a, $1D                                     ; $6BE4: $3E $1D
    ld a, [$CF33]                                 ; $6BE6: $FA $33 $CF
    ld a, [hl-]                                   ; $6BE9: $3A
    rst $00                                       ; $6BEA: $C7
    dec bc                                        ; $6BEB: $0B
    ld [hl], h                                    ; $6BEC: $74
    inc e                                         ; $6BED: $1C
    jr c, jr_04F_6C1C                             ; $6BEE: $38 $2C

    db $10                                        ; $6BF0: $10
    ld e, d                                       ; $6BF1: $5A
    inc a                                         ; $6BF2: $3C
    dec e                                         ; $6BF3: $1D
    ld a, d                                       ; $6BF4: $7A
    ld d, b                                       ; $6BF5: $50
    rst $28                                       ; $6BF6: $EF
    ld c, [hl]                                    ; $6BF7: $4E
    cp a                                          ; $6BF8: $BF
    rst $28                                       ; $6BF9: $EF
    ld e, $09                                     ; $6BFA: $1E $09
    halt                                          ; $6BFC: $76
    inc b                                         ; $6BFD: $04
    jr c, jr_04F_6C34                             ; $6BFE: $38 $34

    ld [$3A64], sp                                ; $6C00: $08 $64 $3A
    ret                                           ; $6C03: $C9


    halt                                          ; $6C04: $76
    ld [bc], a                                    ; $6C05: $02
    rst $38                                       ; $6C06: $FF
    jr c, @+$01                                   ; $6C07: $38 $FF

    sbc c                                         ; $6C09: $99
    ld a, [hl]                                    ; $6C0A: $7E
    ld [hl], $58                                  ; $6C0B: $36 $58
    inc a                                         ; $6C0D: $3C
    nop                                           ; $6C0E: $00
    inc a                                         ; $6C0F: $3C
    nop                                           ; $6C10: $00
    ld e, $60                                     ; $6C11: $1E $60
    cp a                                          ; $6C13: $BF
    ld e, b                                       ; $6C14: $58
    add hl, bc                                    ; $6C15: $09
    cp $74                                        ; $6C16: $FE $74
    rst $28                                       ; $6C18: $EF
    ldh a, [$6D]                                  ; $6C19: $F0 $6D
    ld [de], a                                    ; $6C1B: $12

jr_04F_6C1C:
    ld l, h                                       ; $6C1C: $6C
    ld [hl-], a                                   ; $6C1D: $32
    inc c                                         ; $6C1E: $0C
    inc [hl]                                      ; $6C1F: $34
    ld [$047A], sp                                ; $6C20: $08 $7A $04
    sub e                                         ; $6C23: $93
    ld l, h                                       ; $6C24: $6C
    ld h, $F9                                     ; $6C25: $26 $F9
    or h                                          ; $6C27: $B4
    ei                                            ; $6C28: $FB
    ld [de], a                                    ; $6C29: $12
    rst $20                                       ; $6C2A: $E7
    ld e, h                                       ; $6C2B: $5C
    ld [hl+], a                                   ; $6C2C: $22
    ld [bc], a                                    ; $6C2D: $02
    inc a                                         ; $6C2E: $3C
    inc a                                         ; $6C2F: $3C
    nop                                           ; $6C30: $00
    ld a, h                                       ; $6C31: $7C
    ld [bc], a                                    ; $6C32: $02
    rst $18                                       ; $6C33: $DF

jr_04F_6C34:
    inc h                                         ; $6C34: $24
    sub b                                         ; $6C35: $90

jr_04F_6C36:
    rst $28                                       ; $6C36: $EF
    jp nc, $CCEF                                  ; $6C37: $D2 $EF $CC

    rra                                           ; $6C3A: $1F
    jr nc, @+$50                                  ; $6C3B: $30 $4E

    inc h                                         ; $6C3D: $24
    jr jr_04F_6C44                                ; $6C3E: $18 $04

    nop                                           ; $6C40: $00
    inc d                                         ; $6C41: $14
    ld c, $24                                     ; $6C42: $0E $24

jr_04F_6C44:
    jr nc, jr_04F_6C46                            ; $6C44: $30 $00

jr_04F_6C46:
    jr nc, @+$14                                  ; $6C46: $30 $12

    ld [hl-], a                                   ; $6C48: $32
    ld [bc], a                                    ; $6C49: $02
    inc [hl]                                      ; $6C4A: $34
    stop                                          ; $6C4B: $10 $00
    nop                                           ; $6C4D: $00
    nop                                           ; $6C4E: $00
    nop                                           ; $6C4F: $00
    nop                                           ; $6C50: $00
    nop                                           ; $6C51: $00
    nop                                           ; $6C52: $00
    inc e                                         ; $6C53: $1C
    nop                                           ; $6C54: $00
    inc a                                         ; $6C55: $3C
    nop                                           ; $6C56: $00
    nop                                           ; $6C57: $00
    nop                                           ; $6C58: $00
    jr nz, jr_04F_6C5D                            ; $6C59: $20 $02

    ld [de], a                                    ; $6C5B: $12
    nop                                           ; $6C5C: $00

jr_04F_6C5D:
    nop                                           ; $6C5D: $00
    nop                                           ; $6C5E: $00
    nop                                           ; $6C5F: $00
    nop                                           ; $6C60: $00
    nop                                           ; $6C61: $00
    nop                                           ; $6C62: $00
    nop                                           ; $6C63: $00
    nop                                           ; $6C64: $00
    ld b, b                                       ; $6C65: $40
    nop                                           ; $6C66: $00
    nop                                           ; $6C67: $00
    nop                                           ; $6C68: $00
    inc b                                         ; $6C69: $04
    nop                                           ; $6C6A: $00
    jr nz, jr_04F_6C6D                            ; $6C6B: $20 $00

jr_04F_6C6D:
    nop                                           ; $6C6D: $00
    nop                                           ; $6C6E: $00
    nop                                           ; $6C6F: $00
    nop                                           ; $6C70: $00
    nop                                           ; $6C71: $00
    nop                                           ; $6C72: $00
    ld h, b                                       ; $6C73: $60
    inc e                                         ; $6C74: $1C
    call z, $E23F                                 ; $6C75: $CC $3F $E2
    add c                                         ; $6C78: $81
    ld h, b                                       ; $6C79: $60
    add b                                         ; $6C7A: $80
    ld b, b                                       ; $6C7B: $40
    add b                                         ; $6C7C: $80
    add b                                         ; $6C7D: $80
    ld b, b                                       ; $6C7E: $40
    nop                                           ; $6C7F: $00
    nop                                           ; $6C80: $00
    nop                                           ; $6C81: $00
    nop                                           ; $6C82: $00
    nop                                           ; $6C83: $00
    nop                                           ; $6C84: $00
    add b                                         ; $6C85: $80
    nop                                           ; $6C86: $00
    ldh [$C0], a                                  ; $6C87: $E0 $C0
    ld c, b                                       ; $6C89: $48
    jr nc, @+$12                                  ; $6C8A: $30 $10

    inc c                                         ; $6C8C: $0C
    ld [bc], a                                    ; $6C8D: $02
    rlca                                          ; $6C8E: $07
    ldh [rP1], a                                  ; $6C8F: $E0 $00
    db $10                                        ; $6C91: $10
    jr nz, jr_04F_6CFC                            ; $6C92: $20 $68

    sub b                                         ; $6C94: $90
    inc b                                         ; $6C95: $04
    ret z                                         ; $6C96: $C8

    ld b, h                                       ; $6C97: $44
    inc hl                                        ; $6C98: $23
    dec hl                                        ; $6C99: $2B
    ld de, $000F                                  ; $6C9A: $11 $0F $00
    add b                                         ; $6C9D: $80
    nop                                           ; $6C9E: $00
    inc bc                                        ; $6C9F: $03
    ld bc, $0001                                  ; $6CA0: $01 $01 $00
    nop                                           ; $6CA3: $00
    nop                                           ; $6CA4: $00
    nop                                           ; $6CA5: $00
    nop                                           ; $6CA6: $00
    add b                                         ; $6CA7: $80
    nop                                           ; $6CA8: $00
    and b                                         ; $6CA9: $A0
    ret nz                                        ; $6CAA: $C0

    ld [hl], h                                    ; $6CAB: $74
    ld hl, sp+$3D                                 ; $6CAC: $F8 $3D
    ld a, [hl]                                    ; $6CAE: $7E
    ret nz                                        ; $6CAF: $C0

    add b                                         ; $6CB0: $80
    ldh [$C0], a                                  ; $6CB1: $E0 $C0
    ldh a, [$60]                                  ; $6CB3: $F0 $60
    ld a, b                                       ; $6CB5: $78
    jr nc, jr_04F_6CEC                            ; $6CB6: $30 $34

    jr jr_04F_6CD2                                ; $6CB8: $18 $18

    inc e                                         ; $6CBA: $1C
    jr z, jr_04F_6CDB                             ; $6CBB: $28 $1E

    ld a, $0F                                     ; $6CBD: $3E $0F
    ld [bc], a                                    ; $6CBF: $02
    ld bc, $0003                                  ; $6CC0: $01 $03 $00
    inc bc                                        ; $6CC3: $03

jr_04F_6CC4:
    nop                                           ; $6CC4: $00
    inc bc                                        ; $6CC5: $03
    nop                                           ; $6CC6: $00
    ld bc, $0000                                  ; $6CC7: $01 $00 $00
    nop                                           ; $6CCA: $00
    inc bc                                        ; $6CCB: $03
    nop                                           ; $6CCC: $00
    ld [de], a                                    ; $6CCD: $12
    inc c                                         ; $6CCE: $0C
    ld d, $08                                     ; $6CCF: $16 $08
    adc l                                         ; $6CD1: $8D

jr_04F_6CD2:
    inc bc                                        ; $6CD2: $03
    ld b, d                                       ; $6CD3: $42
    ld bc, $0000                                  ; $6CD4: $01 $00 $00
    sbc c                                         ; $6CD7: $99
    nop                                           ; $6CD8: $00
    sbc a                                         ; $6CD9: $9F
    ld a, a                                       ; $6CDA: $7F

jr_04F_6CDB:
    sbc b                                         ; $6CDB: $98
    rlca                                          ; $6CDC: $07
    nop                                           ; $6CDD: $00
    nop                                           ; $6CDE: $00
    ld c, a                                       ; $6CDF: $4F
    ccf                                           ; $6CE0: $3F
    rst $08                                       ; $6CE1: $CF
    rst $38                                       ; $6CE2: $FF
    ld a, a                                       ; $6CE3: $7F
    rst $38                                       ; $6CE4: $FF
    inc de                                        ; $6CE5: $13
    jr c, jr_04F_6D5C                             ; $6CE6: $38 $74

    ei                                            ; $6CE8: $FB
    db $EB                                        ; $6CE9: $EB
    rst $30                                       ; $6CEA: $F7
    ld c, a                                       ; $6CEB: $4F

jr_04F_6CEC:
    add a                                         ; $6CEC: $87
    rra                                           ; $6CED: $1F
    ccf                                           ; $6CEE: $3F
    adc [hl]                                      ; $6CEF: $8E
    rst $38                                       ; $6CF0: $FF
    rst $38                                       ; $6CF1: $FF
    cp $FF                                        ; $6CF2: $FE $FF
    cp $DE                                        ; $6CF4: $FE $DE
    inc a                                         ; $6CF6: $3C
    add b                                         ; $6CF7: $80
    ret nz                                        ; $6CF8: $C0

    ret nz                                        ; $6CF9: $C0

    add b                                         ; $6CFA: $80
    add b                                         ; $6CFB: $80

jr_04F_6CFC:
    add b                                         ; $6CFC: $80
    add b                                         ; $6CFD: $80
    nop                                           ; $6CFE: $00
    ld e, b                                       ; $6CFF: $58
    jr nc, jr_04F_6CC4                            ; $6D00: $30 $C2

    ld h, c                                       ; $6D02: $61
    rst $00                                       ; $6D03: $C7
    rst $38                                       ; $6D04: $FF
    ld a, a                                       ; $6D05: $7F
    rst $38                                       ; $6D06: $FF
    nop                                           ; $6D07: $00
    nop                                           ; $6D08: $00
    nop                                           ; $6D09: $00
    nop                                           ; $6D0A: $00
    nop                                           ; $6D0B: $00
    nop                                           ; $6D0C: $00
    nop                                           ; $6D0D: $00
    nop                                           ; $6D0E: $00
    jr nz, jr_04F_6D11                            ; $6D0F: $20 $00

jr_04F_6D11:
    ld sp, $FCCF                                  ; $6D11: $31 $CF $FC
    rst $38                                       ; $6D14: $FF
    sbc b                                         ; $6D15: $98
    ldh [rNR42], a                                ; $6D16: $E0 $21
    nop                                           ; $6D18: $00
    nop                                           ; $6D19: $00
    nop                                           ; $6D1A: $00
    rlca                                          ; $6D1B: $07
    nop                                           ; $6D1C: $00
    inc bc                                        ; $6D1D: $03
    nop                                           ; $6D1E: $00

jr_04F_6D1F:
    ld a, d                                       ; $6D1F: $7A
    db $FC                                        ; $6D20: $FC
    ld hl, sp-$10                                 ; $6D21: $F8 $F0
    sbc h                                         ; $6D23: $9C
    jr nc, jr_04F_6D49                            ; $6D24: $30 $23

    or $23                                        ; $6D26: $F6 $23
    rst $00                                       ; $6D28: $C7
    ld c, $07                                     ; $6D29: $0E $07
    cp h                                          ; $6D2B: $BC
    ld a, a                                       ; $6D2C: $7F
    jr z, jr_04F_6D1F                             ; $6D2D: $28 $F0

    ld h, e                                       ; $6D2F: $63
    nop                                           ; $6D30: $00
    rlca                                          ; $6D31: $07
    ccf                                           ; $6D32: $3F
    ld [de], a                                    ; $6D33: $12
    inc c                                         ; $6D34: $0C
    nop                                           ; $6D35: $00
    nop                                           ; $6D36: $00
    nop                                           ; $6D37: $00
    nop                                           ; $6D38: $00
    nop                                           ; $6D39: $00
    nop                                           ; $6D3A: $00
    nop                                           ; $6D3B: $00
    nop                                           ; $6D3C: $00
    nop                                           ; $6D3D: $00
    nop                                           ; $6D3E: $00
    ret nz                                        ; $6D3F: $C0

    ldh [rP1], a                                  ; $6D40: $E0 $00
    add b                                         ; $6D42: $80
    nop                                           ; $6D43: $00
    nop                                           ; $6D44: $00
    nop                                           ; $6D45: $00
    nop                                           ; $6D46: $00
    nop                                           ; $6D47: $00
    nop                                           ; $6D48: $00

jr_04F_6D49:
    nop                                           ; $6D49: $00
    nop                                           ; $6D4A: $00
    nop                                           ; $6D4B: $00
    nop                                           ; $6D4C: $00
    nop                                           ; $6D4D: $00
    nop                                           ; $6D4E: $00
    inc c                                         ; $6D4F: $0C
    nop                                           ; $6D50: $00
    inc h                                         ; $6D51: $24
    ld a, $42                                     ; $6D52: $3E $42
    jr nz, @+$12                                  ; $6D54: $20 $10

    ld h, b                                       ; $6D56: $60

Jump_04F_6D57:
    ld [hl], $60                                  ; $6D57: $36 $60
    ld h, b                                       ; $6D59: $60
    jr nc, jr_04F_6D8D                            ; $6D5A: $30 $31

jr_04F_6D5C:
    ld a, $18                                     ; $6D5C: $3E $18
    jr c, jr_04F_6D60                             ; $6D5E: $38 $00

jr_04F_6D60:
    nop                                           ; $6D60: $00
    nop                                           ; $6D61: $00
    nop                                           ; $6D62: $00
    nop                                           ; $6D63: $00
    nop                                           ; $6D64: $00
    ld [$0A00], sp                                ; $6D65: $08 $00 $0A
    inc b                                         ; $6D68: $04
    and b                                         ; $6D69: $A0
    ld b, e                                       ; $6D6A: $43
    pop bc                                        ; $6D6B: $C1
    nop                                           ; $6D6C: $00
    nop                                           ; $6D6D: $00
    nop                                           ; $6D6E: $00
    nop                                           ; $6D6F: $00
    nop                                           ; $6D70: $00
    nop                                           ; $6D71: $00
    nop                                           ; $6D72: $00
    nop                                           ; $6D73: $00
    nop                                           ; $6D74: $00
    nop                                           ; $6D75: $00
    nop                                           ; $6D76: $00
    nop                                           ; $6D77: $00
    nop                                           ; $6D78: $00
    add b                                         ; $6D79: $80
    nop                                           ; $6D7A: $00
    nop                                           ; $6D7B: $00
    ret nz                                        ; $6D7C: $C0

    jr nc, @+$62                                  ; $6D7D: $30 $60

    ld e, $3C                                     ; $6D7F: $1E $3C
    rrca                                          ; $6D81: $0F
    ld [hl], e                                    ; $6D82: $73
    sub d                                         ; $6D83: $92
    ld b, c                                       ; $6D84: $41
    ldh [rLCDC], a                                ; $6D85: $E0 $40
    ret nz                                        ; $6D87: $C0

    ld [hl], b                                    ; $6D88: $70
    ld b, a                                       ; $6D89: $47
    ld h, b                                       ; $6D8A: $60
    ld c, l                                       ; $6D8B: $4D
    inc sp                                        ; $6D8C: $33

jr_04F_6D8D:
    ld l, $11                                     ; $6D8D: $2E $11
    nop                                           ; $6D8F: $00
    nop                                           ; $6D90: $00
    ret nz                                        ; $6D91: $C0

    nop                                           ; $6D92: $00
    ldh a, [$E0]                                  ; $6D93: $F0 $E0
    ldh a, [$7C]                                  ; $6D95: $F0 $7C
    ld e, [hl]                                    ; $6D97: $5E
    ccf                                           ; $6D98: $3F
    rst $38                                       ; $6D99: $FF
    rrca                                          ; $6D9A: $0F
    rst $00                                       ; $6D9B: $C7
    rst $38                                       ; $6D9C: $FF
    ld a, a                                       ; $6D9D: $7F
    rst $38                                       ; $6D9E: $FF
    jr jr_04F_6DD1                                ; $6D9F: $18 $30

    inc c                                         ; $6DA1: $0C
    jr jr_04F_6DAA                                ; $6DA2: $18 $06

    inc c                                         ; $6DA4: $0C
    rla                                           ; $6DA5: $17
    ld c, $DA                                     ; $6DA6: $0E $DA
    rlca                                          ; $6DA8: $07
    rst $38                                       ; $6DA9: $FF

jr_04F_6DAA:
    cp $FC                                        ; $6DAA: $FE $FC
    cp $98                                        ; $6DAC: $FE $98
    ldh [rP1], a                                  ; $6DAE: $E0 $00
    nop                                           ; $6DB0: $00
    nop                                           ; $6DB1: $00
    nop                                           ; $6DB2: $00
    nop                                           ; $6DB3: $00
    ld bc, $0300                                  ; $6DB4: $01 $00 $03
    ld bc, $0F06                                  ; $6DB7: $01 $06 $0F
    ld b, $0D                                     ; $6DBA: $06 $0D
    rlca                                          ; $6DBC: $07
    rlca                                          ; $6DBD: $07
    inc bc                                        ; $6DBE: $03
    ld e, b                                       ; $6DBF: $58
    inc b                                         ; $6DC0: $04
    sub e                                         ; $6DC1: $93
    ld c, h                                       ; $6DC2: $4C
    dec de                                        ; $6DC3: $1B
    rst $20                                       ; $6DC4: $E7
    ld b, c                                       ; $6DC5: $41
    add e                                         ; $6DC6: $83
    ld bc, $0706                                  ; $6DC7: $01 $06 $07
    nop                                           ; $6DCA: $00
    pop hl                                        ; $6DCB: $E1
    rst $38                                       ; $6DCC: $FF
    rst $38                                       ; $6DCD: $FF
    rst $38                                       ; $6DCE: $FF
    inc h                                         ; $6DCF: $24
    rra                                           ; $6DD0: $1F

jr_04F_6DD1:
    ld [de], a                                    ; $6DD1: $12
    inc c                                         ; $6DD2: $0C
    ld sp, hl                                     ; $6DD3: $F9
    db $FC                                        ; $6DD4: $FC
    db $DD                                        ; $6DD5: $DD
    ldh [$D2], a                                  ; $6DD6: $E0 $D2
    inc c                                         ; $6DD8: $0C
    cp b                                          ; $6DD9: $B8
    ld a, a                                       ; $6DDA: $7F
    rst $38                                       ; $6DDB: $FF
    rst $38                                       ; $6DDC: $FF
    rst $38                                       ; $6DDD: $FF
    cp $80                                        ; $6DDE: $FE $80
    nop                                           ; $6DE0: $00
    nop                                           ; $6DE1: $00
    nop                                           ; $6DE2: $00
    ld h, b                                       ; $6DE3: $60
    add b                                         ; $6DE4: $80
    jr jr_04F_6E17                                ; $6DE5: $18 $30

    jr jr_04F_6E59                                ; $6DE7: $18 $70

    ldh [$F0], a                                  ; $6DE9: $E0 $F0
    and b                                         ; $6DEB: $A0
    ret nz                                        ; $6DEC: $C0

    nop                                           ; $6DED: $00
    nop                                           ; $6DEE: $00
    ld a, a                                       ; $6DEF: $7F
    nop                                           ; $6DF0: $00
    nop                                           ; $6DF1: $00
    nop                                           ; $6DF2: $00
    nop                                           ; $6DF3: $00
    nop                                           ; $6DF4: $00
    dec b                                         ; $6DF5: $05
    ld [bc], a                                    ; $6DF6: $02
    add hl, bc                                    ; $6DF7: $09
    ld bc, $0401                                  ; $6DF8: $01 $01 $04
    dec b                                         ; $6DFB: $05
    inc bc                                        ; $6DFC: $03
    ld [bc], a                                    ; $6DFD: $02
    ld bc, $3EF0                                  ; $6DFE: $01 $F0 $3E
    jr z, jr_04F_6E21                             ; $6E01: $28 $1E

    add d                                         ; $6E03: $82
    ld a, h                                       ; $6E04: $7C
    ldh a, [$0C]                                  ; $6E05: $F0 $0C
    db $FC                                        ; $6E07: $FC
    ld hl, sp+$20                                 ; $6E08: $F8 $20
    ldh a, [$30]                                  ; $6E0A: $F0 $30
    ldh [rLCDC], a                                ; $6E0C: $E0 $40
    ldh [rP1], a                                  ; $6E0E: $E0 $00
    nop                                           ; $6E10: $00
    inc bc                                        ; $6E11: $03
    nop                                           ; $6E12: $00
    inc bc                                        ; $6E13: $03
    nop                                           ; $6E14: $00
    nop                                           ; $6E15: $00
    nop                                           ; $6E16: $00

jr_04F_6E17:
    nop                                           ; $6E17: $00
    nop                                           ; $6E18: $00
    nop                                           ; $6E19: $00
    nop                                           ; $6E1A: $00
    nop                                           ; $6E1B: $00
    nop                                           ; $6E1C: $00
    nop                                           ; $6E1D: $00
    nop                                           ; $6E1E: $00
    ld b, b                                       ; $6E1F: $40
    nop                                           ; $6E20: $00

jr_04F_6E21:
    add b                                         ; $6E21: $80
    nop                                           ; $6E22: $00
    nop                                           ; $6E23: $00
    nop                                           ; $6E24: $00

jr_04F_6E25:
    nop                                           ; $6E25: $00
    nop                                           ; $6E26: $00
    nop                                           ; $6E27: $00
    nop                                           ; $6E28: $00
    nop                                           ; $6E29: $00
    nop                                           ; $6E2A: $00
    nop                                           ; $6E2B: $00
    nop                                           ; $6E2C: $00
    nop                                           ; $6E2D: $00
    nop                                           ; $6E2E: $00
    nop                                           ; $6E2F: $00
    nop                                           ; $6E30: $00
    nop                                           ; $6E31: $00
    nop                                           ; $6E32: $00
    nop                                           ; $6E33: $00
    nop                                           ; $6E34: $00
    nop                                           ; $6E35: $00
    nop                                           ; $6E36: $00
    ld [bc], a                                    ; $6E37: $02
    ld bc, $0703                                  ; $6E38: $01 $03 $07
    rrca                                          ; $6E3B: $0F
    rlca                                          ; $6E3C: $07
    rrca                                          ; $6E3D: $0F
    rlca                                          ; $6E3E: $07
    nop                                           ; $6E3F: $00
    nop                                           ; $6E40: $00
    nop                                           ; $6E41: $00
    nop                                           ; $6E42: $00
    nop                                           ; $6E43: $00
    nop                                           ; $6E44: $00
    ld e, a                                       ; $6E45: $5F
    ccf                                           ; $6E46: $3F
    pop af                                        ; $6E47: $F1
    cp $60                                        ; $6E48: $FE $60
    add b                                         ; $6E4A: $80
    add b                                         ; $6E4B: $80
    nop                                           ; $6E4C: $00
    sbc b                                         ; $6E4D: $98
    ldh [rP1], a                                  ; $6E4E: $E0 $00
    nop                                           ; $6E50: $00
    nop                                           ; $6E51: $00
    nop                                           ; $6E52: $00
    nop                                           ; $6E53: $00
    nop                                           ; $6E54: $00
    add h                                         ; $6E55: $84
    jp $07C8                                      ; $6E56: $C3 $C8 $07


jr_04F_6E59:
    nop                                           ; $6E59: $00
    nop                                           ; $6E5A: $00
    nop                                           ; $6E5B: $00
    nop                                           ; $6E5C: $00
    dec a                                         ; $6E5D: $3D
    ld [bc], a                                    ; $6E5E: $02
    nop                                           ; $6E5F: $00
    nop                                           ; $6E60: $00
    nop                                           ; $6E61: $00
    nop                                           ; $6E62: $00
    jr nz, jr_04F_6E25                            ; $6E63: $20 $C0

    ld [hl], h                                    ; $6E65: $74
    ld hl, sp+$1C                                 ; $6E66: $F8 $1C
    cp $16                                        ; $6E68: $FE $16
    rrca                                          ; $6E6A: $0F
    inc bc                                        ; $6E6B: $03
    rlca                                          ; $6E6C: $07
    rst $08                                       ; $6E6D: $CF
    ccf                                           ; $6E6E: $3F
    rst $38                                       ; $6E6F: $FF
    rst $38                                       ; $6E70: $FF
    ld a, a                                       ; $6E71: $7F
    rst $38                                       ; $6E72: $FF
    ld [c], a                                     ; $6E73: $E2
    db $FC                                        ; $6E74: $FC
    db $FC                                        ; $6E75: $FC
    rst $38                                       ; $6E76: $FF
    ld e, a                                       ; $6E77: $5F
    ccf                                           ; $6E78: $3F
    dec hl                                        ; $6E79: $2B
    rra                                           ; $6E7A: $1F
    inc e                                         ; $6E7B: $1C
    ccf                                           ; $6E7C: $3F
    nop                                           ; $6E7D: $00
    ccf                                           ; $6E7E: $3F
    rst $38                                       ; $6E7F: $FF
    rst $38                                       ; $6E80: $FF
    ldh a, [rIE]                                  ; $6E81: $F0 $FF
    nop                                           ; $6E83: $00
    nop                                           ; $6E84: $00
    nop                                           ; $6E85: $00
    add b                                         ; $6E86: $80
    sub $E1                                       ; $6E87: $D6 $E1
    cp a                                          ; $6E89: $BF
    ret nz                                        ; $6E8A: $C0

    jp nz, $3F01                                  ; $6E8B: $C2 $01 $3F

    ret nz                                        ; $6E8E: $C0

    ld sp, hl                                     ; $6E8F: $F9
    cp $20                                        ; $6E90: $FE $20
    ret c                                         ; $6E92: $D8

    inc e                                         ; $6E93: $1C
    nop                                           ; $6E94: $00
    db $E4                                        ; $6E95: $E4
    jr jr_04F_6EC8                                ; $6E96: $18 $30

    ret nz                                        ; $6E98: $C0

    nop                                           ; $6E99: $00
    nop                                           ; $6E9A: $00
    ld b, b                                       ; $6E9B: $40
    add b                                         ; $6E9C: $80
    add b                                         ; $6E9D: $80
    ret nz                                        ; $6E9E: $C0

    nop                                           ; $6E9F: $00
    nop                                           ; $6EA0: $00
    nop                                           ; $6EA1: $00
    nop                                           ; $6EA2: $00
    ld [bc], a                                    ; $6EA3: $02
    ld bc, $070E                                  ; $6EA4: $01 $0E $07
    ld c, $07                                     ; $6EA7: $0E $07
    rlca                                          ; $6EA9: $07
    inc bc                                        ; $6EAA: $03
    nop                                           ; $6EAB: $00
    nop                                           ; $6EAC: $00
    nop                                           ; $6EAD: $00
    nop                                           ; $6EAE: $00
    ld b, b                                       ; $6EAF: $40
    ccf                                           ; $6EB0: $3F
    ccf                                           ; $6EB1: $3F
    rra                                           ; $6EB2: $1F
    rra                                           ; $6EB3: $1F
    rst $38                                       ; $6EB4: $FF
    sbc [hl]                                      ; $6EB5: $9E
    rrca                                          ; $6EB6: $0F
    add a                                         ; $6EB7: $87
    rrca                                          ; $6EB8: $0F
    rst $38                                       ; $6EB9: $FF
    rst $38                                       ; $6EBA: $FF
    rst $08                                       ; $6EBB: $CF
    ccf                                           ; $6EBC: $3F
    rlca                                          ; $6EBD: $07
    rlca                                          ; $6EBE: $07
    inc sp                                        ; $6EBF: $33
    rst $08                                       ; $6EC0: $CF
    ei                                            ; $6EC1: $FB
    db $FC                                        ; $6EC2: $FC
    inc h                                         ; $6EC3: $24
    ret nz                                        ; $6EC4: $C0

    sub e                                         ; $6EC5: $93
    ld h, b                                       ; $6EC6: $60
    rst $38                                       ; $6EC7: $FF

jr_04F_6EC8:
    rst $38                                       ; $6EC8: $FF
    rst $38                                       ; $6EC9: $FF
    rst $38                                       ; $6ECA: $FF
    db $FC                                        ; $6ECB: $FC
    rst $38                                       ; $6ECC: $FF
    db $EC                                        ; $6ECD: $EC
    ldh a, [$60]                                  ; $6ECE: $F0 $60
    add b                                         ; $6ED0: $80
    add h                                         ; $6ED1: $84
    ld a, b                                       ; $6ED2: $78
    inc h                                         ; $6ED3: $24
    ld e, $0E                                     ; $6ED4: $1E $0E
    rlca                                          ; $6ED6: $07
    db $FC                                        ; $6ED7: $FC
    cp $CC                                        ; $6ED8: $FE $CC
    ldh a, [rNR41]                                ; $6EDA: $F0 $20
    ret nz                                        ; $6EDC: $C0

    db $10                                        ; $6EDD: $10
    jr c, jr_04F_6EE3                             ; $6EDE: $38 $03

    rlca                                          ; $6EE0: $07
    rla                                           ; $6EE1: $17
    rrca                                          ; $6EE2: $0F

jr_04F_6EE3:
    dec bc                                        ; $6EE3: $0B
    rlca                                          ; $6EE4: $07
    ld [bc], a                                    ; $6EE5: $02
    ld bc, $0100                                  ; $6EE6: $01 $00 $01
    nop                                           ; $6EE9: $00
    nop                                           ; $6EEA: $00
    nop                                           ; $6EEB: $00
    nop                                           ; $6EEC: $00
    nop                                           ; $6EED: $00
    nop                                           ; $6EEE: $00
    ld [c], a                                     ; $6EEF: $E2
    db $FC                                        ; $6EF0: $FC
    ld [hl+], a                                   ; $6EF1: $22
    ret nz                                        ; $6EF2: $C0

    ld b, b                                       ; $6EF3: $40
    add b                                         ; $6EF4: $80
    add b                                         ; $6EF5: $80
    nop                                           ; $6EF6: $00
    ld h, b                                       ; $6EF7: $60
    add b                                         ; $6EF8: $80
    adc b                                         ; $6EF9: $88
    ld [hl], b                                    ; $6EFA: $70
    and b                                         ; $6EFB: $A0
    ld b, b                                       ; $6EFC: $40
    ldh [rP1], a                                  ; $6EFD: $E0 $00
    jr nz, jr_04F_6F19                            ; $6EFF: $20 $18

    call nz, Call_04F_7838                        ; $6F01: $C4 $38 $78
    nop                                           ; $6F04: $00
    nop                                           ; $6F05: $00
    nop                                           ; $6F06: $00
    nop                                           ; $6F07: $00
    nop                                           ; $6F08: $00
    nop                                           ; $6F09: $00
    nop                                           ; $6F0A: $00
    nop                                           ; $6F0B: $00
    nop                                           ; $6F0C: $00
    nop                                           ; $6F0D: $00
    nop                                           ; $6F0E: $00
    nop                                           ; $6F0F: $00
    nop                                           ; $6F10: $00
    stop                                          ; $6F11: $10 $00
    inc d                                         ; $6F13: $14
    ld [rRAMG], sp                                ; $6F14: $08 $00 $00
    nop                                           ; $6F17: $00
    nop                                           ; $6F18: $00

jr_04F_6F19:
    nop                                           ; $6F19: $00
    nop                                           ; $6F1A: $00
    nop                                           ; $6F1B: $00
    nop                                           ; $6F1C: $00
    nop                                           ; $6F1D: $00
    nop                                           ; $6F1E: $00
    nop                                           ; $6F1F: $00
    nop                                           ; $6F20: $00
    nop                                           ; $6F21: $00
    nop                                           ; $6F22: $00
    nop                                           ; $6F23: $00
    nop                                           ; $6F24: $00
    nop                                           ; $6F25: $00
    nop                                           ; $6F26: $00
    nop                                           ; $6F27: $00
    nop                                           ; $6F28: $00
    nop                                           ; $6F29: $00
    nop                                           ; $6F2A: $00
    inc c                                         ; $6F2B: $0C
    nop                                           ; $6F2C: $00
    dec e                                         ; $6F2D: $1D
    nop                                           ; $6F2E: $00
    nop                                           ; $6F2F: $00
    nop                                           ; $6F30: $00
    nop                                           ; $6F31: $00
    nop                                           ; $6F32: $00
    nop                                           ; $6F33: $00
    nop                                           ; $6F34: $00
    inc h                                         ; $6F35: $24
    nop                                           ; $6F36: $00
    ld a, a                                       ; $6F37: $7F
    nop                                           ; $6F38: $00
    db $FD                                        ; $6F39: $FD
    ld [bc], a                                    ; $6F3A: $02
    adc c                                         ; $6F3B: $89
    halt                                          ; $6F3C: $76
    xor l                                         ; $6F3D: $AD
    ld a, [hl]                                    ; $6F3E: $7E
    nop                                           ; $6F3F: $00
    nop                                           ; $6F40: $00
    nop                                           ; $6F41: $00
    nop                                           ; $6F42: $00
    ld a, [bc]                                    ; $6F43: $0A
    nop                                           ; $6F44: $00
    add hl, de                                    ; $6F45: $19
    ld b, $31                                     ; $6F46: $06 $31
    ld c, $11                                     ; $6F48: $0E $11
    ld l, $01                                     ; $6F4A: $2E $01
    ld a, [hl]                                    ; $6F4C: $7E
    add c                                         ; $6F4D: $81
    ld a, [hl]                                    ; $6F4E: $7E
    nop                                           ; $6F4F: $00
    nop                                           ; $6F50: $00
    jr nz, jr_04F_6F93                            ; $6F51: $20 $40

    sub b                                         ; $6F53: $90
    ld h, b                                       ; $6F54: $60
    sub b                                         ; $6F55: $90
    ld h, b                                       ; $6F56: $60
    sub b                                         ; $6F57: $90
    ld h, b                                       ; $6F58: $60
    and b                                         ; $6F59: $A0
    ld b, b                                       ; $6F5A: $40
    ldh [rP1], a                                  ; $6F5B: $E0 $00
    ret nz                                        ; $6F5D: $C0

    nop                                           ; $6F5E: $00
    ld [bc], a                                    ; $6F5F: $02
    add hl, de                                    ; $6F60: $19
    inc b                                         ; $6F61: $04
    dec sp                                        ; $6F62: $3B
    ld d, c                                       ; $6F63: $51
    ccf                                           ; $6F64: $3F
    daa                                           ; $6F65: $27
    ld a, a                                       ; $6F66: $7F
    rst $20                                       ; $6F67: $E7
    ld a, a                                       ; $6F68: $7F
    sbc e                                         ; $6F69: $9B
    ld h, a                                       ; $6F6A: $67
    inc c                                         ; $6F6B: $0C
    inc bc                                        ; $6F6C: $03
    rrca                                          ; $6F6D: $0F
    nop                                           ; $6F6E: $00
    ld a, l                                       ; $6F6F: $7D
    cp $FC                                        ; $6F70: $FE $FC
    rst $38                                       ; $6F72: $FF
    db $FC                                        ; $6F73: $FC
    rst $38                                       ; $6F74: $FF
    rst $38                                       ; $6F75: $FF
    rst $38                                       ; $6F76: $FF
    ldh a, [rIE]                                  ; $6F77: $F0 $FF
    jr nz, @+$01                                  ; $6F79: $20 $FF

    ld a, $C0                                     ; $6F7B: $3E $C0
    add b                                         ; $6F7D: $80
    nop                                           ; $6F7E: $00
    inc bc                                        ; $6F7F: $03
    db $FC                                        ; $6F80: $FC
    rla                                           ; $6F81: $17
    add sp, $1F                                   ; $6F82: $E8 $1F
    ldh [$3F], a                                  ; $6F84: $E0 $3F
    ret nz                                        ; $6F86: $C0

    ld b, b                                       ; $6F87: $40
    add b                                         ; $6F88: $80
    add b                                         ; $6F89: $80
    nop                                           ; $6F8A: $00
    nop                                           ; $6F8B: $00
    nop                                           ; $6F8C: $00
    nop                                           ; $6F8D: $00
    nop                                           ; $6F8E: $00
    ld b, b                                       ; $6F8F: $40
    add b                                         ; $6F90: $80
    ret nz                                        ; $6F91: $C0

    nop                                           ; $6F92: $00

jr_04F_6F93:
    add b                                         ; $6F93: $80
    nop                                           ; $6F94: $00
    add b                                         ; $6F95: $80
    nop                                           ; $6F96: $00
    nop                                           ; $6F97: $00
    nop                                           ; $6F98: $00
    nop                                           ; $6F99: $00
    nop                                           ; $6F9A: $00
    nop                                           ; $6F9B: $00
    nop                                           ; $6F9C: $00
    nop                                           ; $6F9D: $00
    nop                                           ; $6F9E: $00
    ld bc, $0300                                  ; $6F9F: $01 $00 $03
    nop                                           ; $6FA2: $00
    rlca                                          ; $6FA3: $07
    nop                                           ; $6FA4: $00
    rlca                                          ; $6FA5: $07
    nop                                           ; $6FA6: $00
    rlca                                          ; $6FA7: $07
    nop                                           ; $6FA8: $00
    rlca                                          ; $6FA9: $07
    nop                                           ; $6FAA: $00
    rlca                                          ; $6FAB: $07
    nop                                           ; $6FAC: $00
    rrca                                          ; $6FAD: $0F
    nop                                           ; $6FAE: $00
    ldh [rP1], a                                  ; $6FAF: $E0 $00
    ret nz                                        ; $6FB1: $C0

    nop                                           ; $6FB2: $00
    add b                                         ; $6FB3: $80
    nop                                           ; $6FB4: $00
    nop                                           ; $6FB5: $00
    nop                                           ; $6FB6: $00
    nop                                           ; $6FB7: $00
    nop                                           ; $6FB8: $00
    nop                                           ; $6FB9: $00
    nop                                           ; $6FBA: $00
    nop                                           ; $6FBB: $00
    nop                                           ; $6FBC: $00
    nop                                           ; $6FBD: $00
    nop                                           ; $6FBE: $00
    nop                                           ; $6FBF: $00
    nop                                           ; $6FC0: $00
    nop                                           ; $6FC1: $00
    nop                                           ; $6FC2: $00
    nop                                           ; $6FC3: $00
    nop                                           ; $6FC4: $00

jr_04F_6FC5:
    nop                                           ; $6FC5: $00
    nop                                           ; $6FC6: $00
    nop                                           ; $6FC7: $00
    nop                                           ; $6FC8: $00
    rrca                                          ; $6FC9: $0F
    nop                                           ; $6FCA: $00
    rlca                                          ; $6FCB: $07
    nop                                           ; $6FCC: $00
    inc bc                                        ; $6FCD: $03
    nop                                           ; $6FCE: $00
    rrca                                          ; $6FCF: $0F
    nop                                           ; $6FD0: $00
    rrca                                          ; $6FD1: $0F
    nop                                           ; $6FD2: $00
    rrca                                          ; $6FD3: $0F
    nop                                           ; $6FD4: $00
    rlca                                          ; $6FD5: $07
    nop                                           ; $6FD6: $00
    inc bc                                        ; $6FD7: $03
    nop                                           ; $6FD8: $00

jr_04F_6FD9:
    ld bc, $0000                                  ; $6FD9: $01 $00 $00
    nop                                           ; $6FDC: $00
    nop                                           ; $6FDD: $00
    nop                                           ; $6FDE: $00
    inc bc                                        ; $6FDF: $03
    nop                                           ; $6FE0: $00
    ld bc, $0000                                  ; $6FE1: $01 $00 $00
    nop                                           ; $6FE4: $00
    add b                                         ; $6FE5: $80
    nop                                           ; $6FE6: $00
    pop bc                                        ; $6FE7: $C1
    nop                                           ; $6FE8: $00
    ret nz                                        ; $6FE9: $C0

    nop                                           ; $6FEA: $00
    sbc b                                         ; $6FEB: $98
    nop                                           ; $6FEC: $00
    nop                                           ; $6FED: $00
    nop                                           ; $6FEE: $00
    ld [c], a                                     ; $6FEF: $E2
    ld bc, $01FE                                  ; $6FF0: $01 $FE $01
    ld [hl], b                                    ; $6FF3: $70
    rrca                                          ; $6FF4: $0F
    jr nc, jr_04F_7006                            ; $6FF5: $30 $0F

    jr c, jr_04F_7000                             ; $6FF7: $38 $07

    jr c, jr_04F_7002                             ; $6FF9: $38 $07

    inc a                                         ; $6FFB: $3C
    inc bc                                        ; $6FFC: $03
    jr c, jr_04F_7002                             ; $6FFD: $38 $03

    ret nz                                        ; $6FFF: $C0

jr_04F_7000:
    nop                                           ; $7000: $00
    ld h, b                                       ; $7001: $60

jr_04F_7002:
    add b                                         ; $7002: $80
    jr nc, jr_04F_6FC5                            ; $7003: $30 $C0

    db $10                                        ; $7005: $10

jr_04F_7006:
    ldh [rNR10], a                                ; $7006: $E0 $10
    ldh [$08], a                                  ; $7008: $E0 $08
    ldh a, [rLCDC]                                ; $700A: $F0 $40
    ld hl, sp+$44                                 ; $700C: $F8 $44
    ld hl, sp+$00                                 ; $700E: $F8 $00
    nop                                           ; $7010: $00
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    inc c                                         ; $7013: $0C
    nop                                           ; $7014: $00
    inc c                                         ; $7015: $0C
    nop                                           ; $7016: $00
    inc e                                         ; $7017: $1C
    nop                                           ; $7018: $00
    inc d                                         ; $7019: $14
    ld [$0834], sp                                ; $701A: $08 $34 $08
    inc [hl]                                      ; $701D: $34
    ld [$0339], sp                                ; $701E: $08 $39 $03
    ld a, [hl-]                                   ; $7021: $3A
    ld bc, $017A                                  ; $7022: $01 $7A $01
    ld a, d                                       ; $7025: $7A
    ld bc, $017A                                  ; $7026: $01 $7A $01
    ld a, d                                       ; $7029: $7A
    ld bc, $017A                                  ; $702A: $01 $7A $01
    jp z, $4031                                   ; $702D: $CA $31 $40

    db $FC                                        ; $7030: $FC
    ld b, b                                       ; $7031: $40
    db $FC                                        ; $7032: $FC
    ld b, d                                       ; $7033: $42
    db $FC                                        ; $7034: $FC
    ld b, d                                       ; $7035: $42
    db $FC                                        ; $7036: $FC
    ld b, e                                       ; $7037: $43
    db $FC                                        ; $7038: $FC
    ld b, e                                       ; $7039: $43
    db $FC                                        ; $703A: $FC
    ld b, e                                       ; $703B: $43
    db $FC                                        ; $703C: $FC
    ld h, e                                       ; $703D: $63
    db $FC                                        ; $703E: $FC
    nop                                           ; $703F: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    nop                                           ; $7043: $00
    nop                                           ; $7044: $00
    nop                                           ; $7045: $00
    ld bc, $0301                                  ; $7046: $01 $01 $03
    rlca                                          ; $7049: $07
    inc bc                                        ; $704A: $03
    dec bc                                        ; $704B: $0B
    rlca                                          ; $704C: $07
    rla                                           ; $704D: $17
    rrca                                          ; $704E: $0F
    ld b, a                                       ; $704F: $47
    jr c, jr_04F_6FD9                             ; $7050: $38 $87

    ld a, b                                       ; $7052: $78
    ld b, a                                       ; $7053: $47
    ld hl, sp-$19                                 ; $7054: $F8 $E7
    ld hl, sp-$1A                                 ; $7056: $F8 $E6
    ld sp, hl                                     ; $7058: $F9
    db $F4                                        ; $7059: $F4
    ei                                            ; $705A: $FB
    ldh [rIE], a                                  ; $705B: $E0 $FF
    ldh [rIE], a                                  ; $705D: $E0 $FF
    adc [hl]                                      ; $705F: $8E
    ld [hl], c                                    ; $7060: $71
    sbc [hl]                                      ; $7061: $9E
    ld h, c                                       ; $7062: $61
    ld b, $F9                                     ; $7063: $06 $F9
    rrca                                          ; $7065: $0F
    pop af                                        ; $7066: $F1
    dec a                                         ; $7067: $3D
    jp $D72A                                      ; $7068: $C3 $2A $D7


    ld b, b                                       ; $706B: $40
    cp a                                          ; $706C: $BF
    ld bc, $C2FE                                  ; $706D: $01 $FE $C2
    db $FC                                        ; $7070: $FC
    add [hl]                                      ; $7071: $86
    ld hl, sp-$7C                                 ; $7072: $F8 $84
    ld hl, sp+$04                                 ; $7074: $F8 $04
    ld hl, sp+$08                                 ; $7076: $F8 $08
    ldh a, [rP1]                                  ; $7078: $F0 $00
    ldh a, [$F0]                                  ; $707A: $F0 $F0
    nop                                           ; $707C: $00
    ldh [rP1], a                                  ; $707D: $E0 $00
    nop                                           ; $707F: $00
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    ld [bc], a                                    ; $7085: $02
    ld bc, $0106                                  ; $7086: $01 $06 $01
    rra                                           ; $7089: $1F
    nop                                           ; $708A: $00
    ccf                                           ; $708B: $3F
    nop                                           ; $708C: $00
    ld e, $00                                     ; $708D: $1E $00
    cpl                                           ; $708F: $2F
    rra                                           ; $7090: $1F
    ld a, $7F                                     ; $7091: $3E $7F
    ld a, h                                       ; $7093: $7C
    rst $38                                       ; $7094: $FF
    ld a, [c]                                     ; $7095: $F2
    db $FC                                        ; $7096: $FC
    ld h, a                                       ; $7097: $67
    ld hl, sp+$10                                 ; $7098: $F8 $10
    ldh [$80], a                                  ; $709A: $E0 $80
    nop                                           ; $709C: $00
    nop                                           ; $709D: $00
    nop                                           ; $709E: $00
    rst $30                                       ; $709F: $F7
    ld hl, sp-$80                                 ; $70A0: $F8 $80
    rst $38                                       ; $70A2: $FF
    rst $08                                       ; $70A3: $CF
    ccf                                           ; $70A4: $3F
    rst $08                                       ; $70A5: $CF
    ccf                                           ; $70A6: $3F
    add b                                         ; $70A7: $80
    ld a, a                                       ; $70A8: $7F
    adc a                                         ; $70A9: $8F
    ld [hl], b                                    ; $70AA: $70
    nop                                           ; $70AB: $00
    nop                                           ; $70AC: $00
    nop                                           ; $70AD: $00
    nop                                           ; $70AE: $00
    ld bc, $07FE                                  ; $70AF: $01 $FE $07
    ld hl, sp+$0F                                 ; $70B2: $F8 $0F
    ldh a, [$3F]                                  ; $70B4: $F0 $3F
    ret nz                                        ; $70B6: $C0

    ldh a, [rP1]                                  ; $70B7: $F0 $00
    add b                                         ; $70B9: $80
    nop                                           ; $70BA: $00
    nop                                           ; $70BB: $00
    nop                                           ; $70BC: $00
    nop                                           ; $70BD: $00
    nop                                           ; $70BE: $00
    ldh [rP1], a                                  ; $70BF: $E0 $00
    ret nz                                        ; $70C1: $C0

    nop                                           ; $70C2: $00
    add b                                         ; $70C3: $80
    nop                                           ; $70C4: $00
    add b                                         ; $70C5: $80
    nop                                           ; $70C6: $00
    nop                                           ; $70C7: $00
    nop                                           ; $70C8: $00
    nop                                           ; $70C9: $00
    nop                                           ; $70CA: $00
    nop                                           ; $70CB: $00
    nop                                           ; $70CC: $00
    nop                                           ; $70CD: $00
    nop                                           ; $70CE: $00
    nop                                           ; $70CF: $00
    nop                                           ; $70D0: $00
    nop                                           ; $70D1: $00
    nop                                           ; $70D2: $00
    nop                                           ; $70D3: $00
    nop                                           ; $70D4: $00
    nop                                           ; $70D5: $00
    nop                                           ; $70D6: $00
    nop                                           ; $70D7: $00
    nop                                           ; $70D8: $00
    nop                                           ; $70D9: $00
    nop                                           ; $70DA: $00
    rra                                           ; $70DB: $1F
    nop                                           ; $70DC: $00
    rra                                           ; $70DD: $1F
    nop                                           ; $70DE: $00
    nop                                           ; $70DF: $00
    nop                                           ; $70E0: $00

jr_04F_70E1:
    nop                                           ; $70E1: $00
    nop                                           ; $70E2: $00
    nop                                           ; $70E3: $00
    nop                                           ; $70E4: $00
    nop                                           ; $70E5: $00
    nop                                           ; $70E6: $00
    nop                                           ; $70E7: $00
    nop                                           ; $70E8: $00
    ld b, $01                                     ; $70E9: $06 $01
    ret nz                                        ; $70EB: $C0

    ccf                                           ; $70EC: $3F
    jr nz, @+$01                                  ; $70ED: $20 $FF

    nop                                           ; $70EF: $00
    nop                                           ; $70F0: $00
    nop                                           ; $70F1: $00
    nop                                           ; $70F2: $00
    nop                                           ; $70F3: $00
    nop                                           ; $70F4: $00
    nop                                           ; $70F5: $00
    nop                                           ; $70F6: $00
    sub b                                         ; $70F7: $90
    ld h, b                                       ; $70F8: $60
    ld e, b                                       ; $70F9: $58
    ldh [$58], a                                  ; $70FA: $E0 $58
    ldh [$30], a                                  ; $70FC: $E0 $30
    ret nz                                        ; $70FE: $C0

    ld a, [hl-]                                   ; $70FF: $3A
    ld bc, $0B75                                  ; $7100: $01 $75 $0B
    ld b, e                                       ; $7103: $43
    ccf                                           ; $7104: $3F
    ld b, a                                       ; $7105: $47
    ccf                                           ; $7106: $3F
    rst $20                                       ; $7107: $E7
    rra                                           ; $7108: $1F
    rst $28                                       ; $7109: $EF
    rra                                           ; $710A: $1F
    sbc a                                         ; $710B: $9F
    ld a, a                                       ; $710C: $7F
    sbc a                                         ; $710D: $9F
    ld a, a                                       ; $710E: $7F
    ldh [rIE], a                                  ; $710F: $E0 $FF
    ldh [rIE], a                                  ; $7111: $E0 $FF
    pop af                                        ; $7113: $F1
    rst $38                                       ; $7114: $FF
    db $E3                                        ; $7115: $E3
    rst $38                                       ; $7116: $FF
    db $E3                                        ; $7117: $E3
    rst $38                                       ; $7118: $FF
    add e                                         ; $7119: $83
    rst $38                                       ; $711A: $FF
    di                                            ; $711B: $F3
    rst $38                                       ; $711C: $FF
    ld a, [c]                                     ; $711D: $F2
    db $FD                                        ; $711E: $FD
    jr c, jr_04F_70E1                             ; $711F: $38 $C0

    inc c                                         ; $7121: $0C
    ldh a, [$F6]                                  ; $7122: $F0 $F6
    ld hl, sp-$05                                 ; $7124: $F8 $FB
    db $FC                                        ; $7126: $FC
    cp $FF                                        ; $7127: $FE $FF
    rst $38                                       ; $7129: $FF
    rst $38                                       ; $712A: $FF
    rst $38                                       ; $712B: $FF
    rst $38                                       ; $712C: $FF
    rst $38                                       ; $712D: $FF
    rst $38                                       ; $712E: $FF
    nop                                           ; $712F: $00
    nop                                           ; $7130: $00
    nop                                           ; $7131: $00
    nop                                           ; $7132: $00
    nop                                           ; $7133: $00
    nop                                           ; $7134: $00
    nop                                           ; $7135: $00
    nop                                           ; $7136: $00
    add b                                         ; $7137: $80
    nop                                           ; $7138: $00
    ret nz                                        ; $7139: $C0

    add b                                         ; $713A: $80
    ret nz                                        ; $713B: $C0

    ret nz                                        ; $713C: $C0

    ret nz                                        ; $713D: $C0

    ldh [$BF], a                                  ; $713E: $E0 $BF
    ld a, a                                       ; $7140: $7F
    cp a                                          ; $7141: $BF
    ld a, a                                       ; $7142: $7F
    cp [hl]                                       ; $7143: $BE
    ld a, a                                       ; $7144: $7F

Jump_04F_7145:
    ccf                                           ; $7145: $3F
    ld a, a                                       ; $7146: $7F
    ld a, a                                       ; $7147: $7F
    ccf                                           ; $7148: $3F
    ld e, a                                       ; $7149: $5F
    ccf                                           ; $714A: $3F
    cpl                                           ; $714B: $2F
    rra                                           ; $714C: $1F
    db $10                                        ; $714D: $10
    rrca                                          ; $714E: $0F
    di                                            ; $714F: $F3
    db $FC                                        ; $7150: $FC
    ld a, [$FBFC]                                 ; $7151: $FA $FC $FB
    db $FC                                        ; $7154: $FC
    db $FC                                        ; $7155: $FC
    rst $38                                       ; $7156: $FF
    rst $38                                       ; $7157: $FF
    rst $38                                       ; $7158: $FF
    cp $FF                                        ; $7159: $FE $FF
    rst $38                                       ; $715B: $FF
    cp $3E                                        ; $715C: $FE $3E
    cp $7F                                        ; $715E: $FE $7F
    rst $38                                       ; $7160: $FF
    cp e                                          ; $7161: $BB
    ld a, a                                       ; $7162: $7F
    cp e                                          ; $7163: $BB

Jump_04F_7164:
    ld a, a                                       ; $7164: $7F
    ld a, l                                       ; $7165: $7D
    rst $38                                       ; $7166: $FF
    ld a, a                                       ; $7167: $7F
    rst $38                                       ; $7168: $FF
    ccf                                           ; $7169: $3F
    rst $38                                       ; $716A: $FF
    sbc a                                         ; $716B: $9F
    ccf                                           ; $716C: $3F
    rlca                                          ; $716D: $07
    ccf                                           ; $716E: $3F
    ldh [$E0], a                                  ; $716F: $E0 $E0
    ldh [$F0], a                                  ; $7171: $E0 $F0
    ld sp, hl                                     ; $7173: $F9
    ldh a, [$F1]                                  ; $7174: $F0 $F1
    ld hl, sp-$0A                                 ; $7176: $F8 $F6
    ld sp, hl                                     ; $7178: $F9
    cp $F9                                        ; $7179: $FE $F9
    ld a, [$FBFD]                                 ; $717B: $FA $FD $FB
    db $FC                                        ; $717E: $FC
    ld e, a                                       ; $717F: $5F
    ld a, $5E                                     ; $7180: $3E $5E
    ccf                                           ; $7182: $3F
    ld e, [hl]                                    ; $7183: $5E
    ccf                                           ; $7184: $3F
    ld a, a                                       ; $7185: $7F
    rra                                           ; $7186: $1F
    ld l, [hl]                                    ; $7187: $6E
    rra                                           ; $7188: $1F
    ld h, c                                       ; $7189: $61
    ld e, $62                                     ; $718A: $1E $62
    inc e                                         ; $718C: $1C
    ld h, d                                       ; $718D: $62
    inc e                                         ; $718E: $1C
    ld b, $3F                                     ; $718F: $06 $3F
    ld l, $1F                                     ; $7191: $2E $1F
    ld e, h                                       ; $7193: $5C
    cp a                                          ; $7194: $BF
    jr c, @+$01                                   ; $7195: $38 $FF

    ld bc, $B9FF                                  ; $7197: $01 $FF $B9
    rlca                                          ; $719A: $07
    dec de                                        ; $719B: $1B
    rlca                                          ; $719C: $07
    ld sp, $FF0F                                  ; $719D: $31 $0F $FF
    db $FC                                        ; $71A0: $FC
    db $FD                                        ; $71A1: $FD
    cp $FD                                        ; $71A2: $FE $FD
    cp $FD                                        ; $71A4: $FE $FD
    cp $FD                                        ; $71A6: $FE $FD
    cp $FD                                        ; $71A8: $FE $FD
    cp $FD                                        ; $71AA: $FE $FD
    cp $FC                                        ; $71AC: $FE $FC
    cp $00                                        ; $71AE: $FE $00
    nop                                           ; $71B0: $00
    ld bc, $0300                                  ; $71B1: $01 $00 $03
    nop                                           ; $71B4: $00
    rrca                                          ; $71B5: $0F
    nop                                           ; $71B6: $00
    rrca                                          ; $71B7: $0F
    nop                                           ; $71B8: $00
    rlca                                          ; $71B9: $07
    nop                                           ; $71BA: $00
    rrca                                          ; $71BB: $0F
    nop                                           ; $71BC: $00
    rrca                                          ; $71BD: $0F
    nop                                           ; $71BE: $00
    inc bc                                        ; $71BF: $03
    inc a                                         ; $71C0: $3C
    add e                                         ; $71C1: $83
    inc a                                         ; $71C2: $3C
    sbc b                                         ; $71C3: $98
    ccf                                           ; $71C4: $3F
    add c                                         ; $71C5: $81
    ld a, $DF                                     ; $71C6: $3E $DF

jr_04F_71C8:
    jr nz, jr_04F_71C8                            ; $71C8: $20 $FE

    nop                                           ; $71CA: $00
    ldh a, [rP1]                                  ; $71CB: $F0 $00
    ret nz                                        ; $71CD: $C0

    nop                                           ; $71CE: $00
    push af                                       ; $71CF: $F5
    rrca                                          ; $71D0: $0F
    adc a                                         ; $71D1: $8F
    ld a, a                                       ; $71D2: $7F
    db $10                                        ; $71D3: $10
    rst $38                                       ; $71D4: $FF
    nop                                           ; $71D5: $00
    rst $38                                       ; $71D6: $FF
    ldh a, [rP1]                                  ; $71D7: $F0 $00
    jr nc, jr_04F_71DB                            ; $71D9: $30 $00

jr_04F_71DB:
    ld h, b                                       ; $71DB: $60
    nop                                           ; $71DC: $00
    pop hl                                        ; $71DD: $E1
    nop                                           ; $71DE: $00
    ld a, [$F8FC]                                 ; $71DF: $FA $FC $F8
    db $FC                                        ; $71E2: $FC
    inc d                                         ; $71E3: $14
    ld hl, sp+$00                                 ; $71E4: $F8 $00
    ld hl, sp+$48                                 ; $71E6: $F8 $48
    jr nc, jr_04F_71EA                            ; $71E8: $30 $00

jr_04F_71EA:
    ld [hl], b                                    ; $71EA: $70
    add b                                         ; $71EB: $80
    ld h, b                                       ; $71EC: $60
    jr nz, @-$3E                                  ; $71ED: $20 $C0

    rrca                                          ; $71EF: $0F
    nop                                           ; $71F0: $00
    rlca                                          ; $71F1: $07
    nop                                           ; $71F2: $00
    ld b, $01                                     ; $71F3: $06 $01
    inc bc                                        ; $71F5: $03
    nop                                           ; $71F6: $00
    nop                                           ; $71F7: $00
    nop                                           ; $71F8: $00

jr_04F_71F9:
    nop                                           ; $71F9: $00
    nop                                           ; $71FA: $00
    nop                                           ; $71FB: $00
    nop                                           ; $71FC: $00
    nop                                           ; $71FD: $00
    nop                                           ; $71FE: $00
    ld bc, $0700                                  ; $71FF: $01 $00 $07
    nop                                           ; $7202: $00
    ld a, a                                       ; $7203: $7F
    add b                                         ; $7204: $80
    rlca                                          ; $7205: $07
    ld hl, sp-$0E                                 ; $7206: $F8 $F2
    dec c                                         ; $7208: $0D
    ld a, [hl]                                    ; $7209: $7E
    ld bc, $007F                                  ; $720A: $01 $7F $00
    nop                                           ; $720D: $00
    nop                                           ; $720E: $00
    add $01                                       ; $720F: $C6 $01
    adc h                                         ; $7211: $8C
    inc bc                                        ; $7212: $03
    inc de                                        ; $7213: $13
    inc c                                         ; $7214: $0C
    sub $28                                       ; $7215: $D6 $28
    jr jr_04F_71F9                                ; $7217: $18 $E0

    ld [hl], b                                    ; $7219: $70
    add b                                         ; $721A: $80
    nop                                           ; $721B: $00
    nop                                           ; $721C: $00
    nop                                           ; $721D: $00
    nop                                           ; $721E: $00
    nop                                           ; $721F: $00
    nop                                           ; $7220: $00
    nop                                           ; $7221: $00
    nop                                           ; $7222: $00
    ld e, $00                                     ; $7223: $1E $00
    rra                                           ; $7225: $1F
    nop                                           ; $7226: $00
    ld bc, $0000                                  ; $7227: $01 $00 $00
    nop                                           ; $722A: $00
    nop                                           ; $722B: $00
    nop                                           ; $722C: $00
    ld e, $00                                     ; $722D: $1E $00
    nop                                           ; $722F: $00
    nop                                           ; $7230: $00
    nop                                           ; $7231: $00
    nop                                           ; $7232: $00
    nop                                           ; $7233: $00
    nop                                           ; $7234: $00
    ldh [rP1], a                                  ; $7235: $E0 $00
    ldh a, [rP1]                                  ; $7237: $F0 $00
    ld [hl], b                                    ; $7239: $70
    nop                                           ; $723A: $00
    jr c, jr_04F_723D                             ; $723B: $38 $00

jr_04F_723D:
    inc e                                         ; $723D: $1C
    nop                                           ; $723E: $00
    nop                                           ; $723F: $00
    nop                                           ; $7240: $00
    nop                                           ; $7241: $00
    nop                                           ; $7242: $00
    inc bc                                        ; $7243: $03
    nop                                           ; $7244: $00
    rlca                                          ; $7245: $07
    nop                                           ; $7246: $00
    ld [bc], a                                    ; $7247: $02
    inc c                                         ; $7248: $0C
    ld [bc], a                                    ; $7249: $02
    inc e                                         ; $724A: $1C
    nop                                           ; $724B: $00
    inc e                                         ; $724C: $1C
    ld [$001C], sp                                ; $724D: $08 $1C $00
    nop                                           ; $7250: $00
    nop                                           ; $7251: $00
    nop                                           ; $7252: $00
    add b                                         ; $7253: $80
    nop                                           ; $7254: $00
    nop                                           ; $7255: $00
    nop                                           ; $7256: $00
    nop                                           ; $7257: $00
    nop                                           ; $7258: $00
    nop                                           ; $7259: $00
    nop                                           ; $725A: $00
    nop                                           ; $725B: $00
    nop                                           ; $725C: $00
    nop                                           ; $725D: $00
    nop                                           ; $725E: $00
    jr jr_04F_7268                                ; $725F: $18 $07

Jump_04F_7261:
    jr jr_04F_726A                                ; $7261: $18 $07

    ld [bc], a                                    ; $7263: $02
    ld bc, $0001                                  ; $7264: $01 $01 $00
    nop                                           ; $7267: $00

jr_04F_7268:
    nop                                           ; $7268: $00
    nop                                           ; $7269: $00

jr_04F_726A:
    nop                                           ; $726A: $00

Jump_04F_726B:
    nop                                           ; $726B: $00
    nop                                           ; $726C: $00
    nop                                           ; $726D: $00
    nop                                           ; $726E: $00
    inc e                                         ; $726F: $1C
    add b                                         ; $7270: $80
    ld c, $C0                                     ; $7271: $0E $C0
    ld c, $E0                                     ; $7273: $0E $E0
    rla                                           ; $7275: $17
    ldh [rNR22], a                                ; $7276: $E0 $17
    ldh [$83], a                                  ; $7278: $E0 $83
    ld [hl], b                                    ; $727A: $70
    inc de                                        ; $727B: $13
    ld h, b                                       ; $727C: $60
    inc de                                        ; $727D: $13
    ld h, b                                       ; $727E: $60
    ld a, [hl+]                                   ; $727F: $2A
    inc e                                         ; $7280: $1C
    dec l                                         ; $7281: $2D
    ld e, $34                                     ; $7282: $1E $34
    rrca                                          ; $7284: $0F
    db $10                                        ; $7285: $10
    rrca                                          ; $7286: $0F
    add hl, de                                    ; $7287: $19
    rlca                                          ; $7288: $07
    ld c, $01                                     ; $7289: $0E $01
    ld b, $01                                     ; $728B: $06 $01
    ld bc, $0100                                  ; $728D: $01 $00 $01
    nop                                           ; $7290: $00
    rrca                                          ; $7291: $0F
    nop                                           ; $7292: $00
    inc bc                                        ; $7293: $03
    db $FC                                        ; $7294: $FC
    ld bc, $F8FE                                  ; $7295: $01 $FE $F8
    rst $38                                       ; $7298: $FF
    xor $FF                                       ; $7299: $EE $FF
    nop                                           ; $729B: $00
    rst $38                                       ; $729C: $FF
    nop                                           ; $729D: $00
    rst $38                                       ; $729E: $FF
    ld b, b                                       ; $729F: $40
    nop                                           ; $72A0: $00
    ret nz                                        ; $72A1: $C0

    nop                                           ; $72A2: $00
    add c                                         ; $72A3: $81
    nop                                           ; $72A4: $00
    add e                                         ; $72A5: $83
    nop                                           ; $72A6: $00
    rrca                                          ; $72A7: $0F
    ldh a, [rTAC]                                 ; $72A8: $F0 $07
    ld hl, sp+$06                                 ; $72AA: $F8 $06
    ld hl, sp+$08                                 ; $72AC: $F8 $08
    ldh a, [$73]                                  ; $72AE: $F0 $73
    nop                                           ; $72B0: $00
    di                                            ; $72B1: $F3
    nop                                           ; $72B2: $00
    ldh a, [rP1]                                  ; $72B3: $F0 $00
    ldh [rP1], a                                  ; $72B5: $E0 $00
    ret nz                                        ; $72B7: $C0

    nop                                           ; $72B8: $00
    add b                                         ; $72B9: $80
    nop                                           ; $72BA: $00
    nop                                           ; $72BB: $00
    nop                                           ; $72BC: $00
    nop                                           ; $72BD: $00
    nop                                           ; $72BE: $00
    ret nz                                        ; $72BF: $C0

    nop                                           ; $72C0: $00
    nop                                           ; $72C1: $00
    nop                                           ; $72C2: $00
    ld bc, $0F00                                  ; $72C3: $01 $00 $0F
    nop                                           ; $72C6: $00
    ld a, a                                       ; $72C7: $7F
    nop                                           ; $72C8: $00
    ccf                                           ; $72C9: $3F
    nop                                           ; $72CA: $00
    ld [rRAMG], sp                                ; $72CB: $08 $00 $00
    nop                                           ; $72CE: $00
    jr nc, jr_04F_72D1                            ; $72CF: $30 $00

jr_04F_72D1:
    ld [hl], b                                    ; $72D1: $70
    nop                                           ; $72D2: $00
    ldh a, [rP1]                                  ; $72D3: $F0 $00
    ldh a, [rP1]                                  ; $72D5: $F0 $00
    ldh [rP1], a                                  ; $72D7: $E0 $00
    add b                                         ; $72D9: $80
    nop                                           ; $72DA: $00
    nop                                           ; $72DB: $00
    nop                                           ; $72DC: $00
    nop                                           ; $72DD: $00
    nop                                           ; $72DE: $00
    nop                                           ; $72DF: $00
    nop                                           ; $72E0: $00
    nop                                           ; $72E1: $00
    nop                                           ; $72E2: $00
    nop                                           ; $72E3: $00
    nop                                           ; $72E4: $00
    ld bc, $0700                                  ; $72E5: $01 $00 $07
    nop                                           ; $72E8: $00
    ld bc, $0C00                                  ; $72E9: $01 $00 $0C
    inc bc                                        ; $72EC: $03
    nop                                           ; $72ED: $00
    rra                                           ; $72EE: $1F
    nop                                           ; $72EF: $00
    nop                                           ; $72F0: $00
    nop                                           ; $72F1: $00
    nop                                           ; $72F2: $00
    and $18                                       ; $72F3: $E6 $18
    rra                                           ; $72F5: $1F
    ldh [$80], a                                  ; $72F6: $E0 $80
    nop                                           ; $72F8: $00
    ret nz                                        ; $72F9: $C0

    nop                                           ; $72FA: $00
    ld de, $09E0                                  ; $72FB: $11 $E0 $09
    ldh a, [$65]                                  ; $72FE: $F0 $65
    jr jr_04F_7313                                ; $7300: $18 $11

    inc c                                         ; $7302: $0C
    ld bc, $040C                                  ; $7303: $01 $0C $04
    nop                                           ; $7306: $00
    nop                                           ; $7307: $00
    nop                                           ; $7308: $00
    nop                                           ; $7309: $00
    nop                                           ; $730A: $00
    nop                                           ; $730B: $00
    nop                                           ; $730C: $00
    nop                                           ; $730D: $00
    nop                                           ; $730E: $00
    ld b, b                                       ; $730F: $40
    add b                                         ; $7310: $80
    nop                                           ; $7311: $00
    ret nz                                        ; $7312: $C0

jr_04F_7313:
    nop                                           ; $7313: $00
    ret nz                                        ; $7314: $C0

    ld b, b                                       ; $7315: $40
    add b                                         ; $7316: $80
    nop                                           ; $7317: $00
    nop                                           ; $7318: $00
    nop                                           ; $7319: $00
    nop                                           ; $731A: $00
    nop                                           ; $731B: $00
    nop                                           ; $731C: $00
    nop                                           ; $731D: $00
    nop                                           ; $731E: $00
    nop                                           ; $731F: $00
    nop                                           ; $7320: $00
    nop                                           ; $7321: $00
    nop                                           ; $7322: $00
    nop                                           ; $7323: $00
    nop                                           ; $7324: $00
    rlca                                          ; $7325: $07
    rlca                                          ; $7326: $07
    ld bc, $0301                                  ; $7327: $01 $01 $03
    inc bc                                        ; $732A: $03
    ld b, $06                                     ; $732B: $06 $06
    ld [$6008], sp                                ; $732D: $08 $08 $60
    ldh [$7E], a                                  ; $7330: $E0 $7E
    ld a, a                                       ; $7332: $7F
    db $FC                                        ; $7333: $FC
    db $FC                                        ; $7334: $FC
    ldh a, [$F0]                                  ; $7335: $F0 $F0
    ret nz                                        ; $7337: $C0

    ret nz                                        ; $7338: $C0

    nop                                           ; $7339: $00
    nop                                           ; $733A: $00
    nop                                           ; $733B: $00
    nop                                           ; $733C: $00
    nop                                           ; $733D: $00
    nop                                           ; $733E: $00
    nop                                           ; $733F: $00
    nop                                           ; $7340: $00
    nop                                           ; $7341: $00
    nop                                           ; $7342: $00
    nop                                           ; $7343: $00
    nop                                           ; $7344: $00
    nop                                           ; $7345: $00
    nop                                           ; $7346: $00
    nop                                           ; $7347: $00
    nop                                           ; $7348: $00
    nop                                           ; $7349: $00
    nop                                           ; $734A: $00
    rlca                                          ; $734B: $07
    ld bc, $0101                                  ; $734C: $01 $01 $01
    ld [bc], a                                    ; $734F: $02

Call_04F_7350:
    nop                                           ; $7350: $00
    nop                                           ; $7351: $00
    ld [bc], a                                    ; $7352: $02
    ld bc, $4000                                  ; $7353: $01 $00 $40
    ld bc, $1120                                  ; $7356: $01 $20 $11
    ld de, $0B19                                  ; $7359: $11 $19 $0B
    rra                                           ; $735C: $1F
    rrca                                          ; $735D: $0F
    rst $08                                       ; $735E: $CF
    nop                                           ; $735F: $00
    nop                                           ; $7360: $00
    nop                                           ; $7361: $00
    nop                                           ; $7362: $00
    nop                                           ; $7363: $00
    nop                                           ; $7364: $00
    nop                                           ; $7365: $00
    nop                                           ; $7366: $00
    nop                                           ; $7367: $00
    add b                                         ; $7368: $80
    add b                                         ; $7369: $80
    add b                                         ; $736A: $80
    add b                                         ; $736B: $80
    ret nz                                        ; $736C: $C0

    ret nz                                        ; $736D: $C0

    ldh [rP1], a                                  ; $736E: $E0 $00
    nop                                           ; $7370: $00
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    nop                                           ; $7373: $00
    inc bc                                        ; $7374: $03
    inc bc                                        ; $7375: $03
    rlca                                          ; $7376: $07
    ld c, $0E                                     ; $7377: $0E $0E
    ld c, $0F                                     ; $7379: $0E $0F
    ld b, $06                                     ; $737B: $06 $06
    nop                                           ; $737D: $00
    ld [$7F6F], sp                                ; $737E: $08 $6F $7F
    ld a, a                                       ; $7381: $7F
    ld a, a                                       ; $7382: $7F
    rst $38                                       ; $7383: $FF
    rst $38                                       ; $7384: $FF
    cp $FF                                        ; $7385: $FE $FF
    ld hl, sp-$08                                 ; $7387: $F8 $F8
    ret nz                                        ; $7389: $C0

    ret nz                                        ; $738A: $C0

    nop                                           ; $738B: $00
    nop                                           ; $738C: $00
    nop                                           ; $738D: $00
    nop                                           ; $738E: $00
    add sp, -$04                                  ; $738F: $E8 $FC
    db $FC                                        ; $7391: $FC
    rst $38                                       ; $7392: $FF
    ldh [$F0], a                                  ; $7393: $E0 $F0
    nop                                           ; $7395: $00
    nop                                           ; $7396: $00
    nop                                           ; $7397: $00
    nop                                           ; $7398: $00
    nop                                           ; $7399: $00
    nop                                           ; $739A: $00
    nop                                           ; $739B: $00
    nop                                           ; $739C: $00
    nop                                           ; $739D: $00
    nop                                           ; $739E: $00
    nop                                           ; $739F: $00
    nop                                           ; $73A0: $00
    nop                                           ; $73A1: $00
    nop                                           ; $73A2: $00
    ld bc, $0000                                  ; $73A3: $01 $00 $00
    nop                                           ; $73A6: $00
    nop                                           ; $73A7: $00
    nop                                           ; $73A8: $00
    nop                                           ; $73A9: $00
    nop                                           ; $73AA: $00
    ld bc, $0000                                  ; $73AB: $01 $00 $00
    nop                                           ; $73AE: $00
    inc b                                         ; $73AF: $04
    ld b, $04                                     ; $73B0: $06 $04
    ld [bc], a                                    ; $73B2: $02
    add b                                         ; $73B3: $80
    ld b, b                                       ; $73B4: $40
    nop                                           ; $73B5: $00
    ld b, b                                       ; $73B6: $40
    nop                                           ; $73B7: $00
    nop                                           ; $73B8: $00
    ld [rRAMG], sp                                ; $73B9: $08 $00 $00
    nop                                           ; $73BC: $00
    nop                                           ; $73BD: $00
    nop                                           ; $73BE: $00
    ld [bc], a                                    ; $73BF: $02
    nop                                           ; $73C0: $00
    nop                                           ; $73C1: $00
    ld [bc], a                                    ; $73C2: $02
    nop                                           ; $73C3: $00
    ld [bc], a                                    ; $73C4: $02
    ld bc, $0303                                  ; $73C5: $01 $03 $03
    ld bc, $0100                                  ; $73C8: $01 $00 $01
    nop                                           ; $73CB: $00
    ld bc, $1F0B                                  ; $73CC: $01 $0B $1F
    add b                                         ; $73CF: $80
    nop                                           ; $73D0: $00
    add b                                         ; $73D1: $80
    nop                                           ; $73D2: $00
    nop                                           ; $73D3: $00
    add b                                         ; $73D4: $80
    ld [$8880], sp                                ; $73D5: $08 $80 $88
    sbc b                                         ; $73D8: $98

jr_04F_73D9:
    db $10                                        ; $73D9: $10
    cp b                                          ; $73DA: $B8
    ld hl, sp-$10                                 ; $73DB: $F8 $F0
    ld a, [c]                                     ; $73DD: $F2
    ldh a, [rP1]                                  ; $73DE: $F0 $00
    nop                                           ; $73E0: $00
    nop                                           ; $73E1: $00
    nop                                           ; $73E2: $00
    nop                                           ; $73E3: $00
    nop                                           ; $73E4: $00
    nop                                           ; $73E5: $00
    nop                                           ; $73E6: $00
    nop                                           ; $73E7: $00
    nop                                           ; $73E8: $00
    nop                                           ; $73E9: $00
    inc bc                                        ; $73EA: $03
    ld [bc], a                                    ; $73EB: $02
    ld b, $00                                     ; $73EC: $06 $00
    ld [rRAMG], sp                                ; $73EE: $08 $00 $00
    ld bc, $0703                                  ; $73F1: $01 $03 $07
    rrca                                          ; $73F4: $0F
    inc c                                         ; $73F5: $0C
    inc a                                         ; $73F6: $3C
    jr nz, jr_04F_73D9                            ; $73F7: $20 $E0

    add b                                         ; $73F9: $80
    add b                                         ; $73FA: $80
    nop                                           ; $73FB: $00
    nop                                           ; $73FC: $00
    nop                                           ; $73FD: $00
    nop                                           ; $73FE: $00
    ld a, a                                       ; $73FF: $7F
    rst $38                                       ; $7400: $FF
    sub $FF                                       ; $7401: $D6 $FF
    nop                                           ; $7403: $00
    add b                                         ; $7404: $80
    nop                                           ; $7405: $00
    nop                                           ; $7406: $00
    nop                                           ; $7407: $00
    nop                                           ; $7408: $00
    nop                                           ; $7409: $00
    nop                                           ; $740A: $00
    nop                                           ; $740B: $00
    nop                                           ; $740C: $00
    nop                                           ; $740D: $00
    nop                                           ; $740E: $00
    ld a, [c]                                     ; $740F: $F2
    db $F4                                        ; $7410: $F4
    ld hl, sp-$04                                 ; $7411: $F8 $FC
    ld a, b                                       ; $7413: $78
    db $FC                                        ; $7414: $FC
    ld [hl], b                                    ; $7415: $70
    jr c, jr_04F_7430                             ; $7416: $38 $18

    jr c, jr_04F_742A                             ; $7418: $38 $10

    jr c, jr_04F_744C                             ; $741A: $38 $30

    ld a, b                                       ; $741C: $78
    jr nz, jr_04F_748F                            ; $741D: $20 $70

    nop                                           ; $741F: $00
    nop                                           ; $7420: $00
    nop                                           ; $7421: $00
    nop                                           ; $7422: $00
    nop                                           ; $7423: $00
    ld bc, $0301                                  ; $7424: $01 $01 $03
    inc bc                                        ; $7427: $03
    rlca                                          ; $7428: $07
    rrca                                          ; $7429: $0F

jr_04F_742A:
    rrca                                          ; $742A: $0F
    ld e, $1E                                     ; $742B: $1E $1E
    ld a, h                                       ; $742D: $7C
    ld a, h                                       ; $742E: $7C
    ld h, b                                       ; $742F: $60

jr_04F_7430:
    ldh a, [$C0]                                  ; $7430: $F0 $C0
    ldh [$C0], a                                  ; $7432: $E0 $C0
    ldh [$C0], a                                  ; $7434: $E0 $C0
    ret nz                                        ; $7436: $C0

    nop                                           ; $7437: $00
    add b                                         ; $7438: $80
    nop                                           ; $7439: $00
    nop                                           ; $743A: $00
    nop                                           ; $743B: $00
    nop                                           ; $743C: $00
    nop                                           ; $743D: $00
    nop                                           ; $743E: $00
    nop                                           ; $743F: $00
    nop                                           ; $7440: $00
    nop                                           ; $7441: $00
    nop                                           ; $7442: $00
    nop                                           ; $7443: $00
    nop                                           ; $7444: $00
    nop                                           ; $7445: $00
    nop                                           ; $7446: $00
    nop                                           ; $7447: $00
    nop                                           ; $7448: $00
    nop                                           ; $7449: $00

Jump_04F_744A:
    nop                                           ; $744A: $00
    nop                                           ; $744B: $00

jr_04F_744C:
    ld bc, $0200                                  ; $744C: $01 $00 $02
    nop                                           ; $744F: $00
    nop                                           ; $7450: $00
    inc bc                                        ; $7451: $03
    inc bc                                        ; $7452: $03
    rlca                                          ; $7453: $07
    rlca                                          ; $7454: $07
    ld c, $0E                                     ; $7455: $0E $0E
    jr c, jr_04F_7491                             ; $7457: $38 $38

    jr nz, jr_04F_74BB                            ; $7459: $20 $60

    nop                                           ; $745B: $00
    add b                                         ; $745C: $80
    nop                                           ; $745D: $00
    nop                                           ; $745E: $00
    ldh [$F0], a                                  ; $745F: $E0 $F0
    ldh [$E0], a                                  ; $7461: $E0 $E0
    add b                                         ; $7463: $80
    add b                                         ; $7464: $80
    nop                                           ; $7465: $00
    nop                                           ; $7466: $00
    nop                                           ; $7467: $00
    nop                                           ; $7468: $00
    nop                                           ; $7469: $00
    nop                                           ; $746A: $00
    nop                                           ; $746B: $00
    nop                                           ; $746C: $00
    nop                                           ; $746D: $00
    nop                                           ; $746E: $00
    nop                                           ; $746F: $00
    nop                                           ; $7470: $00
    nop                                           ; $7471: $00
    nop                                           ; $7472: $00
    nop                                           ; $7473: $00
    nop                                           ; $7474: $00
    nop                                           ; $7475: $00
    nop                                           ; $7476: $00
    nop                                           ; $7477: $00
    nop                                           ; $7478: $00
    nop                                           ; $7479: $00
    nop                                           ; $747A: $00
    nop                                           ; $747B: $00
    ld [$0002], sp                                ; $747C: $08 $02 $00
    nop                                           ; $747F: $00
    nop                                           ; $7480: $00
    ld [bc], a                                    ; $7481: $02
    nop                                           ; $7482: $00
    nop                                           ; $7483: $00
    nop                                           ; $7484: $00
    nop                                           ; $7485: $00
    nop                                           ; $7486: $00
    nop                                           ; $7487: $00
    nop                                           ; $7488: $00
    nop                                           ; $7489: $00
    nop                                           ; $748A: $00
    nop                                           ; $748B: $00
    nop                                           ; $748C: $00
    nop                                           ; $748D: $00
    nop                                           ; $748E: $00

jr_04F_748F:
    add h                                         ; $748F: $84
    nop                                           ; $7490: $00

jr_04F_7491:
    nop                                           ; $7491: $00
    inc b                                         ; $7492: $04
    ld [rRAMG], sp                                ; $7493: $08 $00 $00
    nop                                           ; $7496: $00
    stop                                          ; $7497: $10 $00
    nop                                           ; $7499: $00
    nop                                           ; $749A: $00
    nop                                           ; $749B: $00
    nop                                           ; $749C: $00
    nop                                           ; $749D: $00
    nop                                           ; $749E: $00
    nop                                           ; $749F: $00
    nop                                           ; $74A0: $00
    inc b                                         ; $74A1: $04
    nop                                           ; $74A2: $00
    nop                                           ; $74A3: $00
    nop                                           ; $74A4: $00
    ld [rRAMG], sp                                ; $74A5: $08 $00 $00
    nop                                           ; $74A8: $00
    nop                                           ; $74A9: $00
    nop                                           ; $74AA: $00
    nop                                           ; $74AB: $00
    nop                                           ; $74AC: $00
    nop                                           ; $74AD: $00
    nop                                           ; $74AE: $00
    nop                                           ; $74AF: $00
    nop                                           ; $74B0: $00
    nop                                           ; $74B1: $00
    nop                                           ; $74B2: $00
    nop                                           ; $74B3: $00
    nop                                           ; $74B4: $00
    nop                                           ; $74B5: $00
    nop                                           ; $74B6: $00
    nop                                           ; $74B7: $00
    nop                                           ; $74B8: $00
    db $10                                        ; $74B9: $10
    db $10                                        ; $74BA: $10

jr_04F_74BB:
    jr nc, jr_04F_74ED                            ; $74BB: $30 $30

    ld [bc], a                                    ; $74BD: $02
    ld [bc], a                                    ; $74BE: $02
    nop                                           ; $74BF: $00
    nop                                           ; $74C0: $00
    nop                                           ; $74C1: $00
    ld b, b                                       ; $74C2: $40
    ld h, b                                       ; $74C3: $60
    ld h, b                                       ; $74C4: $60
    ld b, b                                       ; $74C5: $40
    ld b, b                                       ; $74C6: $40
    nop                                           ; $74C7: $00
    nop                                           ; $74C8: $00
    nop                                           ; $74C9: $00
    nop                                           ; $74CA: $00
    nop                                           ; $74CB: $00
    nop                                           ; $74CC: $00
    nop                                           ; $74CD: $00
    nop                                           ; $74CE: $00
    ld bc, $0A01                                  ; $74CF: $01 $01 $0A
    ld a, [bc]                                    ; $74D2: $0A
    inc d                                         ; $74D3: $14
    inc d                                         ; $74D4: $14
    ld [$1008], sp                                ; $74D5: $08 $08 $10
    db $10                                        ; $74D8: $10
    ld h, h                                       ; $74D9: $64
    ld h, h                                       ; $74DA: $64
    add b                                         ; $74DB: $80
    add b                                         ; $74DC: $80
    ld [$4008], sp                                ; $74DD: $08 $08 $40
    ld b, b                                       ; $74E0: $40
    nop                                           ; $74E1: $00
    nop                                           ; $74E2: $00
    nop                                           ; $74E3: $00
    nop                                           ; $74E4: $00
    jr nz, jr_04F_7507                            ; $74E5: $20 $20

    nop                                           ; $74E7: $00
    nop                                           ; $74E8: $00
    ld b, b                                       ; $74E9: $40
    ld b, b                                       ; $74EA: $40
    nop                                           ; $74EB: $00
    nop                                           ; $74EC: $00

jr_04F_74ED:
    nop                                           ; $74ED: $00
    nop                                           ; $74EE: $00
    nop                                           ; $74EF: $00
    nop                                           ; $74F0: $00
    nop                                           ; $74F1: $00
    nop                                           ; $74F2: $00
    nop                                           ; $74F3: $00
    nop                                           ; $74F4: $00
    nop                                           ; $74F5: $00
    nop                                           ; $74F6: $00
    ld [bc], a                                    ; $74F7: $02
    ld [bc], a                                    ; $74F8: $02
    ld [bc], a                                    ; $74F9: $02
    ld [bc], a                                    ; $74FA: $02
    nop                                           ; $74FB: $00
    inc b                                         ; $74FC: $04
    nop                                           ; $74FD: $00
    nop                                           ; $74FE: $00
    inc b                                         ; $74FF: $04
    inc b                                         ; $7500: $04
    jr nz, jr_04F_7523                            ; $7501: $20 $20

    nop                                           ; $7503: $00
    nop                                           ; $7504: $00
    ret nz                                        ; $7505: $C0

    ret nz                                        ; $7506: $C0

jr_04F_7507:
    add b                                         ; $7507: $80
    add b                                         ; $7508: $80
    nop                                           ; $7509: $00
    nop                                           ; $750A: $00
    nop                                           ; $750B: $00
    nop                                           ; $750C: $00
    nop                                           ; $750D: $00
    nop                                           ; $750E: $00
    nop                                           ; $750F: $00
    nop                                           ; $7510: $00
    nop                                           ; $7511: $00
    nop                                           ; $7512: $00
    nop                                           ; $7513: $00
    nop                                           ; $7514: $00
    nop                                           ; $7515: $00
    nop                                           ; $7516: $00
    nop                                           ; $7517: $00
    nop                                           ; $7518: $00
    nop                                           ; $7519: $00
    nop                                           ; $751A: $00
    ld b, $00                                     ; $751B: $06 $00
    ld b, $00                                     ; $751D: $06 $00
    nop                                           ; $751F: $00
    nop                                           ; $7520: $00
    nop                                           ; $7521: $00
    nop                                           ; $7522: $00

jr_04F_7523:
    nop                                           ; $7523: $00
    nop                                           ; $7524: $00
    nop                                           ; $7525: $00
    nop                                           ; $7526: $00
    nop                                           ; $7527: $00
    nop                                           ; $7528: $00
    nop                                           ; $7529: $00
    nop                                           ; $752A: $00
    nop                                           ; $752B: $00
    nop                                           ; $752C: $00
    ld h, b                                       ; $752D: $60
    ld h, b                                       ; $752E: $60
    inc b                                         ; $752F: $04
    ld [bc], a                                    ; $7530: $02
    ld b, $03                                     ; $7531: $06 $03
    inc bc                                        ; $7533: $03
    rlca                                          ; $7534: $07
    rlca                                          ; $7535: $07
    rlca                                          ; $7536: $07
    rlca                                          ; $7537: $07
    rlca                                          ; $7538: $07
    scf                                           ; $7539: $37
    ld l, a                                       ; $753A: $6F
    ld a, a                                       ; $753B: $7F
    rst $38                                       ; $753C: $FF
    rst $38                                       ; $753D: $FF
    rst $38                                       ; $753E: $FF
    jr nz, jr_04F_7581                            ; $753F: $20 $40

    nop                                           ; $7541: $00
    ret nz                                        ; $7542: $C0

    ret nz                                        ; $7543: $C0

    ret nz                                        ; $7544: $C0

    ldh [$C0], a                                  ; $7545: $E0 $C0
    ret c                                         ; $7547: $D8

    ldh [$FC], a                                  ; $7548: $E0 $FC
    ret z                                         ; $754A: $C8

    ld l, b                                       ; $754B: $68
    sbc h                                         ; $754C: $9C
    sbc [hl]                                      ; $754D: $9E
    db $FC                                        ; $754E: $FC
    di                                            ; $754F: $F3
    rst $38                                       ; $7550: $FF
    ld h, l                                       ; $7551: $65
    ei                                            ; $7552: $FB
    sub $6F                                       ; $7553: $D6 $6F
    jp hl                                         ; $7555: $E9


    ld a, [hl]                                    ; $7556: $7E
    or b                                          ; $7557: $B0
    ret nz                                        ; $7558: $C0

    nop                                           ; $7559: $00
    nop                                           ; $755A: $00
    nop                                           ; $755B: $00
    nop                                           ; $755C: $00
    nop                                           ; $755D: $00
    nop                                           ; $755E: $00
    ccf                                           ; $755F: $3F
    cp $38                                        ; $7560: $FE $38
    cp $1E                                        ; $7562: $FE $1E
    ld hl, sp+$28                                 ; $7564: $F8 $28
    stop                                          ; $7566: $10 $00
    nop                                           ; $7568: $00
    jr z, jr_04F_757B                             ; $7569: $28 $10

    nop                                           ; $756B: $00
    nop                                           ; $756C: $00
    nop                                           ; $756D: $00
    nop                                           ; $756E: $00
    nop                                           ; $756F: $00
    nop                                           ; $7570: $00
    nop                                           ; $7571: $00
    nop                                           ; $7572: $00
    nop                                           ; $7573: $00
    nop                                           ; $7574: $00
    nop                                           ; $7575: $00
    ld bc, $0103                                  ; $7576: $01 $03 $01
    rlca                                          ; $7579: $07
    inc bc                                        ; $757A: $03

jr_04F_757B:
    rlca                                          ; $757B: $07
    inc bc                                        ; $757C: $03
    inc bc                                        ; $757D: $03
    rlca                                          ; $757E: $07
    nop                                           ; $757F: $00
    nop                                           ; $7580: $00

jr_04F_7581:
    jr z, jr_04F_7593                             ; $7581: $28 $10

    ei                                            ; $7583: $FB
    ld a, h                                       ; $7584: $7C
    rst $38                                       ; $7585: $FF
    rst $38                                       ; $7586: $FF
    cp $FF                                        ; $7587: $FE $FF
    db $DD                                        ; $7589: $DD
    cp [hl]                                       ; $758A: $BE
    and $98                                       ; $758B: $E6 $98
    jp nz, $3880                                  ; $758D: $C2 $80 $38

    nop                                           ; $7590: $00
    and h                                         ; $7591: $A4
    ld a, b                                       ; $7592: $78

jr_04F_7593:
    ld h, b                                       ; $7593: $60
    ld hl, sp-$10                                 ; $7594: $F8 $F0
    ld sp, hl                                     ; $7596: $F9
    ld [hl], l                                    ; $7597: $75
    ei                                            ; $7598: $FB
    ld [hl], d                                    ; $7599: $72
    ld sp, hl                                     ; $759A: $F9
    ld hl, sp+$78                                 ; $759B: $F8 $78
    jr c, jr_04F_760F                             ; $759D: $38 $70

    nop                                           ; $759F: $00
    nop                                           ; $75A0: $00
    nop                                           ; $75A1: $00
    nop                                           ; $75A2: $00
    nop                                           ; $75A3: $00
    nop                                           ; $75A4: $00
    add b                                         ; $75A5: $80
    nop                                           ; $75A6: $00
    add b                                         ; $75A7: $80
    add b                                         ; $75A8: $80
    add b                                         ; $75A9: $80
    nop                                           ; $75AA: $00
    nop                                           ; $75AB: $00
    nop                                           ; $75AC: $00
    nop                                           ; $75AD: $00
    nop                                           ; $75AE: $00
    rlca                                          ; $75AF: $07
    inc bc                                        ; $75B0: $03
    ld bc, $0103                                  ; $75B1: $01 $03 $01
    nop                                           ; $75B4: $00
    nop                                           ; $75B5: $00
    nop                                           ; $75B6: $00
    nop                                           ; $75B7: $00
    nop                                           ; $75B8: $00
    nop                                           ; $75B9: $00
    nop                                           ; $75BA: $00
    nop                                           ; $75BB: $00
    nop                                           ; $75BC: $00
    nop                                           ; $75BD: $00
    nop                                           ; $75BE: $00
    and c                                         ; $75BF: $A1
    adc $90                                       ; $75C0: $CE $90
    adc $8D                                       ; $75C2: $CE $8D
    ld [de], a                                    ; $75C4: $12
    ld [de], a                                    ; $75C5: $12
    dec c                                         ; $75C6: $0D
    ld a, [bc]                                    ; $75C7: $0A
    dec e                                         ; $75C8: $1D
    jr @+$3F                                      ; $75C9: $18 $3D

    jr c, jr_04F_75EA                             ; $75CB: $38 $1D

    ld e, c                                       ; $75CD: $59
    inc a                                         ; $75CE: $3C
    ld [hl], b                                    ; $75CF: $70
    jr nz, jr_04F_7602                            ; $75D0: $20 $30

    ld h, b                                       ; $75D2: $60
    ld h, b                                       ; $75D3: $60
    ldh [rLCDC], a                                ; $75D4: $E0 $40
    and b                                         ; $75D6: $A0
    ld c, h                                       ; $75D7: $4C
    and b                                         ; $75D8: $A0
    sbc b                                         ; $75D9: $98
    and b                                         ; $75DA: $A0
    ld [$C0B0], sp                                ; $75DB: $08 $B0 $C0
    or b                                          ; $75DE: $B0
    nop                                           ; $75DF: $00
    nop                                           ; $75E0: $00
    nop                                           ; $75E1: $00
    nop                                           ; $75E2: $00
    nop                                           ; $75E3: $00
    ld bc, $0101                                  ; $75E4: $01 $01 $01
    ld bc, $0100                                  ; $75E7: $01 $00 $01

jr_04F_75EA:
    nop                                           ; $75EA: $00
    nop                                           ; $75EB: $00
    nop                                           ; $75EC: $00
    nop                                           ; $75ED: $00
    nop                                           ; $75EE: $00
    ld a, d                                       ; $75EF: $7A
    dec a                                         ; $75F0: $3D
    ld a, d                                       ; $75F1: $7A
    dec a                                         ; $75F2: $3D
    db $FC                                        ; $75F3: $FC
    rst $38                                       ; $75F4: $FF
    rst $38                                       ; $75F5: $FF
    rst $38                                       ; $75F6: $FF
    rst $38                                       ; $75F7: $FF
    rst $38                                       ; $75F8: $FF
    ld sp, hl                                     ; $75F9: $F9
    add a                                         ; $75FA: $87
    ld bc, $0000                                  ; $75FB: $01 $00 $00
    nop                                           ; $75FE: $00
    db $E4                                        ; $75FF: $E4
    sub b                                         ; $7600: $90
    xor b                                         ; $7601: $A8

jr_04F_7602:
    sub $AE                                       ; $7602: $D6 $AE
    rst $18                                       ; $7604: $DF
    sbc a                                         ; $7605: $9F
    rst $38                                       ; $7606: $FF
    cp $FF                                        ; $7607: $FE $FF
    ld a, [c]                                     ; $7609: $F2
    db $FC                                        ; $760A: $FC
    ld [hl], b                                    ; $760B: $70
    ldh [$60], a                                  ; $760C: $E0 $60
    nop                                           ; $760E: $00

jr_04F_760F:
    nop                                           ; $760F: $00
    nop                                           ; $7610: $00
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    ret nz                                        ; $7613: $C0

    nop                                           ; $7614: $00
    ret nz                                        ; $7615: $C0

    ret nz                                        ; $7616: $C0

    add b                                         ; $7617: $80
    nop                                           ; $7618: $00
    nop                                           ; $7619: $00
    nop                                           ; $761A: $00
    nop                                           ; $761B: $00
    nop                                           ; $761C: $00
    nop                                           ; $761D: $00
    nop                                           ; $761E: $00
    nop                                           ; $761F: $00
    nop                                           ; $7620: $00
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    nop                                           ; $7623: $00
    jr nz, jr_04F_7656                            ; $7624: $20 $30

    ld h, b                                       ; $7626: $60
    ld b, b                                       ; $7627: $40
    ld h, b                                       ; $7628: $60
    rlca                                          ; $7629: $07
    ld [bc], a                                    ; $762A: $02
    ld [bc], a                                    ; $762B: $02
    ld bc, $0805                                  ; $762C: $01 $05 $08
    ld bc, $1E07                                  ; $762F: $01 $07 $1E
    rrca                                          ; $7632: $0F
    dec c                                         ; $7633: $0D
    ld e, $3E                                     ; $7634: $1E $3E
    rra                                           ; $7636: $1F
    ld a, $3F                                     ; $7637: $3E $3F
    ld a, a                                       ; $7639: $7F
    ld a, $3C                                     ; $763A: $3E $3C
    ld a, a                                       ; $763C: $7F
    inc a                                         ; $763D: $3C
    ld a, a                                       ; $763E: $7F
    ld [$BCFC], sp                                ; $763F: $08 $FC $BC
    ld a, [hl]                                    ; $7642: $7E
    dec a                                         ; $7643: $3D
    cp $79                                        ; $7644: $FE $79
    cp a                                          ; $7646: $BF
    or h                                          ; $7647: $B4
    ld a, e                                       ; $7648: $7B
    or c                                          ; $7649: $B1
    ld a, [hl]                                    ; $764A: $7E
    dec a                                         ; $764B: $3D
    cp $3C                                        ; $764C: $FE $3C
    cp $0F                                        ; $764E: $FE $0F
    add b                                         ; $7650: $80
    sbc e                                         ; $7651: $9B
    rlca                                          ; $7652: $07
    rrca                                          ; $7653: $0F
    sbc a                                         ; $7654: $9F

Call_04F_7655:
    add e                                         ; $7655: $83

jr_04F_7656:
    rst $18                                       ; $7656: $DF
    add l                                         ; $7657: $85
    ei                                            ; $7658: $FB
    di                                            ; $7659: $F3
    rst $38                                       ; $765A: $FF
    ld a, h                                       ; $765B: $7C
    rst $38                                       ; $765C: $FF
    ld a, l                                       ; $765D: $7D
    cp $00                                        ; $765E: $FE $00
    nop                                           ; $7660: $00
    nop                                           ; $7661: $00
    add b                                         ; $7662: $80
    and b                                         ; $7663: $A0
    ret nz                                        ; $7664: $C0

    ldh [$F0], a                                  ; $7665: $E0 $F0
    db $FC                                        ; $7667: $FC
    ld hl, sp-$02                                 ; $7668: $F8 $FE
    db $FC                                        ; $766A: $FC
    cp $FE                                        ; $766B: $FE $FE
    ld a, l                                       ; $766D: $7D
    cp $3C                                        ; $766E: $FE $3C
    ld a, a                                       ; $7670: $7F
    ld a, [hl]                                    ; $7671: $7E
    ld a, a                                       ; $7672: $7F
    ld hl, $067E                                  ; $7673: $21 $7E $06
    add hl, sp                                    ; $7676: $39
    inc e                                         ; $7677: $1C
    ld [bc], a                                    ; $7678: $02
    nop                                           ; $7679: $00
    nop                                           ; $767A: $00
    nop                                           ; $767B: $00
    nop                                           ; $767C: $00
    nop                                           ; $767D: $00
    nop                                           ; $767E: $00
    cp [hl]                                       ; $767F: $BE
    ld a, h                                       ; $7680: $7C
    ld a, [hl]                                    ; $7681: $7E
    db $FC                                        ; $7682: $FC
    ld a, [hl]                                    ; $7683: $7E
    db $FC                                        ; $7684: $FC
    ld a, h                                       ; $7685: $7C
    db $FC                                        ; $7686: $FC
    push bc                                       ; $7687: $C5
    ld a, b                                       ; $7688: $78
    ld a, [hl-]                                   ; $7689: $3A
    ld h, c                                       ; $768A: $61
    dec b                                         ; $768B: $05
    jr c, jr_04F_7699                             ; $768C: $38 $0B

    nop                                           ; $768E: $00
    ld a, l                                       ; $768F: $7D
    cp $7B                                        ; $7690: $FE $7B
    db $FC                                        ; $7692: $FC
    ld a, h                                       ; $7693: $7C
    cp $FC                                        ; $7694: $FE $FC
    cp $78                                        ; $7696: $FE $78
    db $FC                                        ; $7698: $FC

jr_04F_7699:
    ld [hl], b                                    ; $7699: $70
    ld hl, sp+$10                                 ; $769A: $F8 $10
    ldh [$30], a                                  ; $769C: $E0 $30
    nop                                           ; $769E: $00
    ld a, e                                       ; $769F: $7B
    db $FC                                        ; $76A0: $FC
    ld a, [hl]                                    ; $76A1: $7E
    ld sp, hl                                     ; $76A2: $F9
    ld [hl], l                                    ; $76A3: $75
    ld a, [$7CA2]                                 ; $76A4: $FA $A2 $7C
    ld hl, sp+$00                                 ; $76A7: $F8 $00
    ldh a, [rP1]                                  ; $76A9: $F0 $00
    ld h, b                                       ; $76AB: $60
    nop                                           ; $76AC: $00
    nop                                           ; $76AD: $00
    nop                                           ; $76AE: $00
    add hl, bc                                    ; $76AF: $09
    ld b, $0F                                     ; $76B0: $06 $0F
    ld b, $0D                                     ; $76B2: $06 $0D
    ld b, $05                                     ; $76B4: $06 $05
    inc c                                         ; $76B6: $0C
    ld [$0005], sp                                ; $76B7: $08 $05 $00
    ld bc, $0100                                  ; $76BA: $01 $00 $01
    nop                                           ; $76BD: $00
    nop                                           ; $76BE: $00
    nop                                           ; $76BF: $00
    nop                                           ; $76C0: $00
    and b                                         ; $76C1: $A0
    ld b, b                                       ; $76C2: $40
    ret nz                                        ; $76C3: $C0

    ret nz                                        ; $76C4: $C0

    add b                                         ; $76C5: $80
    ret nz                                        ; $76C6: $C0

    add b                                         ; $76C7: $80
    add b                                         ; $76C8: $80
    nop                                           ; $76C9: $00
    add b                                         ; $76CA: $80
    add b                                         ; $76CB: $80
    nop                                           ; $76CC: $00
    nop                                           ; $76CD: $00
    nop                                           ; $76CE: $00
    ld [bc], a                                    ; $76CF: $02
    nop                                           ; $76D0: $00
    ld b, d                                       ; $76D1: $42
    ld hl, $4182                                  ; $76D2: $21 $82 $41
    ld [bc], a                                    ; $76D5: $02
    ld bc, $0102                                  ; $76D6: $01 $02 $01
    nop                                           ; $76D9: $00
    ld bc, $0102                                  ; $76DA: $01 $02 $01
    ld [bc], a                                    ; $76DD: $02
    ld bc, $0000                                  ; $76DE: $01 $00 $00
    nop                                           ; $76E1: $00
    nop                                           ; $76E2: $00
    nop                                           ; $76E3: $00
    nop                                           ; $76E4: $00
    inc c                                         ; $76E5: $0C
    nop                                           ; $76E6: $00
    nop                                           ; $76E7: $00
    ld [rRAMG], sp                                ; $76E8: $08 $00 $00
    ld b, b                                       ; $76EB: $40
    ret nz                                        ; $76EC: $C0

    add b                                         ; $76ED: $80
    ret nz                                        ; $76EE: $C0

    nop                                           ; $76EF: $00
    nop                                           ; $76F0: $00
    nop                                           ; $76F1: $00
    nop                                           ; $76F2: $00
    ld [bc], a                                    ; $76F3: $02
    nop                                           ; $76F4: $00
    ld [bc], a                                    ; $76F5: $02
    nop                                           ; $76F6: $00
    nop                                           ; $76F7: $00
    nop                                           ; $76F8: $00
    ld a, [hl+]                                   ; $76F9: $2A
    db $10                                        ; $76FA: $10
    ld d, $3B                                     ; $76FB: $16 $3B
    ld e, $3F                                     ; $76FD: $1E $3F
    inc de                                        ; $76FF: $13
    jr jr_04F_771F                                ; $7700: $18 $1D

    jr c, @+$3A                                   ; $7702: $38 $38

    inc a                                         ; $7704: $3C
    jr jr_04F_7743                                ; $7705: $18 $3C

    jr jr_04F_7745                                ; $7707: $18 $3C

    ld a, b                                       ; $7709: $78
    inc a                                         ; $770A: $3C
    ld e, $3C                                     ; $770B: $1E $3C
    inc e                                         ; $770D: $1C
    ccf                                           ; $770E: $3F
    nop                                           ; $770F: $00
    ret nz                                        ; $7710: $C0

    ret nz                                        ; $7711: $C0

    nop                                           ; $7712: $00
    ret nz                                        ; $7713: $C0

    nop                                           ; $7714: $00
    nop                                           ; $7715: $00
    ld b, b                                       ; $7716: $40
    ld b, b                                       ; $7717: $40
    nop                                           ; $7718: $00
    ld h, h                                       ; $7719: $64
    inc bc                                        ; $771A: $03
    ld [bc], a                                    ; $771B: $02
    ld h, c                                       ; $771C: $61
    ld h, c                                       ; $771D: $61
    ret nz                                        ; $771E: $C0

jr_04F_771F:
    ld b, b                                       ; $771F: $40
    nop                                           ; $7720: $00
    stop                                          ; $7721: $10 $00
    jr c, jr_04F_7735                             ; $7723: $38 $10

    jr jr_04F_7757                                ; $7725: $18 $30

    nop                                           ; $7727: $00
    jr c, jr_04F_772A                             ; $7728: $38 $00

jr_04F_772A:
    jr jr_04F_77A0                                ; $772A: $18 $74

    sbc b                                         ; $772C: $98
    ldh a, [$FC]                                  ; $772D: $F0 $FC
    ld a, b                                       ; $772F: $78
    ccf                                           ; $7730: $3F
    dec a                                         ; $7731: $3D
    ld a, e                                       ; $7732: $7B
    ld a, l                                       ; $7733: $7D
    ld a, e                                       ; $7734: $7B

jr_04F_7735:
    db $FD                                        ; $7735: $FD
    ld a, e                                       ; $7736: $7B
    adc b                                         ; $7737: $88
    ld a, a                                       ; $7738: $7F
    ld a, $1F                                     ; $7739: $3E $1F
    ld b, $0F                                     ; $773B: $06 $0F
    ld b, $00                                     ; $773D: $06 $00
    rra                                           ; $773F: $1F
    ccf                                           ; $7740: $3F
    rla                                           ; $7741: $17
    ccf                                           ; $7742: $3F

jr_04F_7743:
    inc sp                                        ; $7743: $33
    ccf                                           ; $7744: $3F

jr_04F_7745:
    ld a, d                                       ; $7745: $7A
    scf                                           ; $7746: $37
    add hl, hl                                    ; $7747: $29
    halt                                          ; $7748: $76
    and l                                         ; $7749: $A5
    ld a, [hl]                                    ; $774A: $7E
    ld a, a                                       ; $774B: $7F
    ccf                                           ; $774C: $3F
    ld a, $3F                                     ; $774D: $3E $3F

jr_04F_774F:
    ldh [$C0], a                                  ; $774F: $E0 $C0
    pop bc                                        ; $7751: $C1
    ret nz                                        ; $7752: $C0

    pop af                                        ; $7753: $F1
    rst $00                                       ; $7754: $C7
    ld e, e                                       ; $7755: $5B
    rst $20                                       ; $7756: $E7

jr_04F_7757:
    daa                                           ; $7757: $27
    rst $18                                       ; $7758: $DF
    rst $38                                       ; $7759: $FF
    rra                                           ; $775A: $1F
    dec [hl]                                      ; $775B: $35
    ei                                            ; $775C: $FB
    jr jr_04F_774F                                ; $775D: $18 $F0

    ld [hl], d                                    ; $775F: $72
    db $FC                                        ; $7760: $FC
    db $E4                                        ; $7761: $E4
    ld hl, sp-$18                                 ; $7762: $F8 $E8
    ldh a, [$E4]                                  ; $7764: $F0 $E4
    ldh a, [$D0]                                  ; $7766: $F0 $D0
    ldh [rP1], a                                  ; $7768: $E0 $00
    ret nz                                        ; $776A: $C0

    nop                                           ; $776B: $00
    add b                                         ; $776C: $80
    nop                                           ; $776D: $00
    nop                                           ; $776E: $00
    nop                                           ; $776F: $00
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00
    nop                                           ; $7772: $00
    nop                                           ; $7773: $00

Jump_04F_7774:
    nop                                           ; $7774: $00
    nop                                           ; $7775: $00
    nop                                           ; $7776: $00
    ld bc, $0300                                  ; $7777: $01 $00 $03
    nop                                           ; $777A: $00
    inc bc                                        ; $777B: $03
    nop                                           ; $777C: $00
    inc bc                                        ; $777D: $03
    nop                                           ; $777E: $00
    nop                                           ; $777F: $00
    nop                                           ; $7780: $00
    nop                                           ; $7781: $00
    nop                                           ; $7782: $00
    nop                                           ; $7783: $00
    nop                                           ; $7784: $00
    nop                                           ; $7785: $00
    nop                                           ; $7786: $00
    nop                                           ; $7787: $00
    nop                                           ; $7788: $00
    nop                                           ; $7789: $00
    nop                                           ; $778A: $00
    add b                                         ; $778B: $80
    nop                                           ; $778C: $00
    add b                                         ; $778D: $80
    nop                                           ; $778E: $00
    ld bc, $0200                                  ; $778F: $01 $00 $02
    nop                                           ; $7792: $00
    ldh [rP1], a                                  ; $7793: $E0 $00
    ld b, b                                       ; $7795: $40
    ldh [rTMA], a                                 ; $7796: $E0 $06
    ld h, b                                       ; $7798: $60
    nop                                           ; $7799: $00
    ld b, $00                                     ; $779A: $06 $00
    nop                                           ; $779C: $00
    nop                                           ; $779D: $00
    nop                                           ; $779E: $00
    pop bc                                        ; $779F: $C1

jr_04F_77A0:
    ld [bc], a                                    ; $77A0: $02

jr_04F_77A1:
    ld [bc], a                                    ; $77A1: $02
    nop                                           ; $77A2: $00
    dec b                                         ; $77A3: $05
    ld [bc], a                                    ; $77A4: $02
    inc bc                                        ; $77A5: $03
    inc b                                         ; $77A6: $04
    nop                                           ; $77A7: $00
    nop                                           ; $77A8: $00
    inc de                                        ; $77A9: $13
    inc c                                         ; $77AA: $0C
    inc l                                         ; $77AB: $2C
    rra                                           ; $77AC: $1F
    ld c, $00                                     ; $77AD: $0E $00
    add [hl]                                      ; $77AF: $86
    nop                                           ; $77B0: $00
    nop                                           ; $77B1: $00
    add b                                         ; $77B2: $80
    nop                                           ; $77B3: $00
    add b                                         ; $77B4: $80
    ld b, b                                       ; $77B5: $40
    add b                                         ; $77B6: $80
    nop                                           ; $77B7: $00
    ld b, b                                       ; $77B8: $40
    nop                                           ; $77B9: $00
    nop                                           ; $77BA: $00
    add c                                         ; $77BB: $81
    nop                                           ; $77BC: $00
    nop                                           ; $77BD: $00
    nop                                           ; $77BE: $00
    nop                                           ; $77BF: $00
    nop                                           ; $77C0: $00
    nop                                           ; $77C1: $00
    nop                                           ; $77C2: $00
    nop                                           ; $77C3: $00
    nop                                           ; $77C4: $00
    ld e, $28                                     ; $77C5: $1E $28
    dec c                                         ; $77C7: $0D
    ld a, [hl]                                    ; $77C8: $7E
    ldh a, [$FC]                                  ; $77C9: $F0 $FC
    sub b                                         ; $77CB: $90
    ld h, b                                       ; $77CC: $60
    nop                                           ; $77CD: $00
    nop                                           ; $77CE: $00
    nop                                           ; $77CF: $00
    nop                                           ; $77D0: $00
    nop                                           ; $77D1: $00
    nop                                           ; $77D2: $00
    nop                                           ; $77D3: $00
    nop                                           ; $77D4: $00
    nop                                           ; $77D5: $00
    nop                                           ; $77D6: $00
    ld b, b                                       ; $77D7: $40
    nop                                           ; $77D8: $00
    nop                                           ; $77D9: $00
    nop                                           ; $77DA: $00
    nop                                           ; $77DB: $00
    nop                                           ; $77DC: $00
    nop                                           ; $77DD: $00
    nop                                           ; $77DE: $00
    nop                                           ; $77DF: $00
    nop                                           ; $77E0: $00
    nop                                           ; $77E1: $00
    nop                                           ; $77E2: $00

jr_04F_77E3:
    nop                                           ; $77E3: $00
    nop                                           ; $77E4: $00
    nop                                           ; $77E5: $00
    nop                                           ; $77E6: $00

jr_04F_77E7:
    nop                                           ; $77E7: $00
    nop                                           ; $77E8: $00
    nop                                           ; $77E9: $00
    nop                                           ; $77EA: $00

jr_04F_77EB:
    inc c                                         ; $77EB: $0C
    nop                                           ; $77EC: $00
    nop                                           ; $77ED: $00
    nop                                           ; $77EE: $00

jr_04F_77EF:
    nop                                           ; $77EF: $00
    nop                                           ; $77F0: $00
    nop                                           ; $77F1: $00
    nop                                           ; $77F2: $00
    nop                                           ; $77F3: $00
    nop                                           ; $77F4: $00
    nop                                           ; $77F5: $00
    nop                                           ; $77F6: $00
    nop                                           ; $77F7: $00
    nop                                           ; $77F8: $00
    nop                                           ; $77F9: $00
    nop                                           ; $77FA: $00
    nop                                           ; $77FB: $00
    nop                                           ; $77FC: $00
    nop                                           ; $77FD: $00
    nop                                           ; $77FE: $00
    nop                                           ; $77FF: $00
    nop                                           ; $7800: $00
    nop                                           ; $7801: $00
    nop                                           ; $7802: $00
    nop                                           ; $7803: $00
    nop                                           ; $7804: $00
    nop                                           ; $7805: $00
    nop                                           ; $7806: $00
    nop                                           ; $7807: $00
    nop                                           ; $7808: $00
    nop                                           ; $7809: $00
    nop                                           ; $780A: $00
    ld b, b                                       ; $780B: $40
    nop                                           ; $780C: $00
    nop                                           ; $780D: $00
    nop                                           ; $780E: $00
    nop                                           ; $780F: $00
    nop                                           ; $7810: $00
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    nop                                           ; $7813: $00
    nop                                           ; $7814: $00
    nop                                           ; $7815: $00
    nop                                           ; $7816: $00
    ld b, b                                       ; $7817: $40
    ld d, b                                       ; $7818: $50
    add b                                         ; $7819: $80
    ld [$4400], sp                                ; $781A: $08 $00 $44
    jr nz, jr_04F_77A1                            ; $781D: $20 $82

    nop                                           ; $781F: $00
    nop                                           ; $7820: $00
    nop                                           ; $7821: $00
    nop                                           ; $7822: $00

jr_04F_7823:
    nop                                           ; $7823: $00
    nop                                           ; $7824: $00
    nop                                           ; $7825: $00
    nop                                           ; $7826: $00

jr_04F_7827:
    ld bc, $0000                                  ; $7827: $01 $00 $00
    nop                                           ; $782A: $00

jr_04F_782B:
    nop                                           ; $782B: $00
    ld bc, $0000                                  ; $782C: $01 $00 $00
    nop                                           ; $782F: $00
    ld b, c                                       ; $7830: $41
    and d                                         ; $7831: $A2
    add b                                         ; $7832: $80
    ld bc, $A040                                  ; $7833: $01 $40 $A0
    add b                                         ; $7836: $80
    db $10                                        ; $7837: $10

Call_04F_7838:
    ld b, b                                       ; $7838: $40
    and b                                         ; $7839: $A0
    add b                                         ; $783A: $80
    db $10                                        ; $783B: $10
    ld b, b                                       ; $783C: $40
    and b                                         ; $783D: $A0
    add b                                         ; $783E: $80
    nop                                           ; $783F: $00
    nop                                           ; $7840: $00
    nop                                           ; $7841: $00
    add b                                         ; $7842: $80

Call_04F_7843:
    nop                                           ; $7843: $00
    ld b, b                                       ; $7844: $40
    add b                                         ; $7845: $80
    jr nz, jr_04F_7888                            ; $7846: $20 $40

    db $10                                        ; $7848: $10
    jr nz, jr_04F_7853                            ; $7849: $20 $08

    ld d, b                                       ; $784B: $50
    inc b                                         ; $784C: $04
    jr z, @+$04                                   ; $784D: $28 $02

    ld bc, $0001                                  ; $784F: $01 $01 $00
    nop                                           ; $7852: $00

jr_04F_7853:
    ld bc, $0201                                  ; $7853: $01 $01 $02
    nop                                           ; $7856: $00
    nop                                           ; $7857: $00
    ld bc, $0200                                  ; $7858: $01 $00 $02
    nop                                           ; $785B: $00
    ld bc, $0200                                  ; $785C: $01 $00 $02
    db $10                                        ; $785F: $10
    ld b, b                                       ; $7860: $40
    jr z, jr_04F_77E3                             ; $7861: $28 $80

    db $10                                        ; $7863: $10

Jump_04F_7864:
    ld b, b                                       ; $7864: $40
    jr z, jr_04F_77E7                             ; $7865: $28 $80

    db $10                                        ; $7867: $10
    ld b, b                                       ; $7868: $40
    jr z, jr_04F_77EB                             ; $7869: $28 $80

    inc d                                         ; $786B: $14
    ld b, b                                       ; $786C: $40
    jr z, jr_04F_77EF                             ; $786D: $28 $80

Jump_04F_786F:
    inc d                                         ; $786F: $14
    ld bc, $000A                                  ; $7870: $01 $0A $00
    dec b                                         ; $7873: $05
    nop                                           ; $7874: $00
    ld [bc], a                                    ; $7875: $02
    nop                                           ; $7876: $00
    dec b                                         ; $7877: $05
    nop                                           ; $7878: $00
    ld [bc], a                                    ; $7879: $02
    nop                                           ; $787A: $00
    ld bc, $0000                                  ; $787B: $01 $00 $00
    nop                                           ; $787E: $00
    nop                                           ; $787F: $00
    nop                                           ; $7880: $00
    nop                                           ; $7881: $00
    add b                                         ; $7882: $80
    nop                                           ; $7883: $00
    ld b, b                                       ; $7884: $40
    add b                                         ; $7885: $80
    jr nz, jr_04F_78C8                            ; $7886: $20 $40

jr_04F_7888:
    db $10                                        ; $7888: $10
    and b                                         ; $7889: $A0
    ld [$0450], sp                                ; $788A: $08 $50 $04
    xor b                                         ; $788D: $A8
    ld [bc], a                                    ; $788E: $02
    nop                                           ; $788F: $00
    ld bc, $0200                                  ; $7890: $01 $00 $02
    inc b                                         ; $7893: $04
    ld bc, $0200                                  ; $7894: $01 $00 $02
    nop                                           ; $7897: $00
    dec b                                         ; $7898: $05
    nop                                           ; $7899: $00
    ld [bc], a                                    ; $789A: $02
    nop                                           ; $789B: $00
    dec b                                         ; $789C: $05
    nop                                           ; $789D: $00
    ld [bc], a                                    ; $789E: $02
    ld d, h                                       ; $789F: $54
    nop                                           ; $78A0: $00
    jr z, jr_04F_7823                             ; $78A1: $28 $80

    ld d, h                                       ; $78A3: $54
    nop                                           ; $78A4: $00
    jr z, jr_04F_7827                             ; $78A5: $28 $80

    ld d, h                                       ; $78A7: $54
    nop                                           ; $78A8: $00
    jr z, jr_04F_782B                             ; $78A9: $28 $80

    ld d, h                                       ; $78AB: $54
    nop                                           ; $78AC: $00
    xor b                                         ; $78AD: $A8
    nop                                           ; $78AE: $00
    ld d, h                                       ; $78AF: $54
    ld bc, $002A                                  ; $78B0: $01 $2A $00
    dec d                                         ; $78B3: $15
    nop                                           ; $78B4: $00
    ld a, [bc]                                    ; $78B5: $0A
    nop                                           ; $78B6: $00
    dec b                                         ; $78B7: $05
    nop                                           ; $78B8: $00
    ld [bc], a                                    ; $78B9: $02
    nop                                           ; $78BA: $00
    ld bc, $0000                                  ; $78BB: $01 $00 $00
    nop                                           ; $78BE: $00
    nop                                           ; $78BF: $00
    nop                                           ; $78C0: $00
    add b                                         ; $78C1: $80
    nop                                           ; $78C2: $00
    ld b, b                                       ; $78C3: $40
    nop                                           ; $78C4: $00
    and b                                         ; $78C5: $A0
    nop                                           ; $78C6: $00
    ld d, b                                       ; $78C7: $50

jr_04F_78C8:
    nop                                           ; $78C8: $00
    xor b                                         ; $78C9: $A8
    nop                                           ; $78CA: $00
    ld d, h                                       ; $78CB: $54
    nop                                           ; $78CC: $00
    xor d                                         ; $78CD: $AA
    nop                                           ; $78CE: $00
    nop                                           ; $78CF: $00
    dec b                                         ; $78D0: $05
    ld [$0102], sp                                ; $78D1: $08 $02 $01
    inc b                                         ; $78D4: $04
    ld [bc], a                                    ; $78D5: $02
    ld [$0005], sp                                ; $78D6: $08 $05 $00
    ld a, [bc]                                    ; $78D9: $0A
    nop                                           ; $78DA: $00
    dec b                                         ; $78DB: $05
    nop                                           ; $78DC: $00
    ld a, [bc]                                    ; $78DD: $0A
    nop                                           ; $78DE: $00
    ld d, h                                       ; $78DF: $54
    nop                                           ; $78E0: $00
    xor b                                         ; $78E1: $A8
    nop                                           ; $78E2: $00
    ld d, h                                       ; $78E3: $54
    nop                                           ; $78E4: $00
    xor b                                         ; $78E5: $A8
    nop                                           ; $78E6: $00
    ld d, h                                       ; $78E7: $54
    nop                                           ; $78E8: $00
    xor b                                         ; $78E9: $A8
    nop                                           ; $78EA: $00
    ld d, b                                       ; $78EB: $50
    nop                                           ; $78EC: $00
    xor b                                         ; $78ED: $A8
    nop                                           ; $78EE: $00
    dec d                                         ; $78EF: $15
    nop                                           ; $78F0: $00
    ld a, [bc]                                    ; $78F1: $0A
    nop                                           ; $78F2: $00
    dec d                                         ; $78F3: $15
    nop                                           ; $78F4: $00
    ld a, [bc]                                    ; $78F5: $0A
    nop                                           ; $78F6: $00
    dec d                                         ; $78F7: $15
    nop                                           ; $78F8: $00
    ld a, [bc]                                    ; $78F9: $0A
    nop                                           ; $78FA: $00
    stop                                          ; $78FB: $10 $00
    nop                                           ; $78FD: $00
    nop                                           ; $78FE: $00
    ld d, b                                       ; $78FF: $50
    nop                                           ; $7900: $00
    and b                                         ; $7901: $A0
    nop                                           ; $7902: $00
    ld b, b                                       ; $7903: $40
    nop                                           ; $7904: $00
    add b                                         ; $7905: $80
    nop                                           ; $7906: $00
    nop                                           ; $7907: $00
    nop                                           ; $7908: $00
    nop                                           ; $7909: $00
    nop                                           ; $790A: $00
    nop                                           ; $790B: $00
    nop                                           ; $790C: $00
    nop                                           ; $790D: $00
    nop                                           ; $790E: $00
    nop                                           ; $790F: $00
    nop                                           ; $7910: $00
    nop                                           ; $7911: $00
    nop                                           ; $7912: $00
    ld bc, $0B00                                  ; $7913: $01 $00 $0B
    rlca                                          ; $7916: $07
    cpl                                           ; $7917: $2F
    rra                                           ; $7918: $1F
    ccf                                           ; $7919: $3F
    ld a, a                                       ; $791A: $7F
    ld a, a                                       ; $791B: $7F
    rst $38                                       ; $791C: $FF
    rst $38                                       ; $791D: $FF
    rst $38                                       ; $791E: $FF
    nop                                           ; $791F: $00
    nop                                           ; $7920: $00
    inc de                                        ; $7921: $13
    rrca                                          ; $7922: $0F
    ccf                                           ; $7923: $3F
    rst $38                                       ; $7924: $FF
    rst $38                                       ; $7925: $FF
    rst $38                                       ; $7926: $FF
    rst $38                                       ; $7927: $FF
    rst $38                                       ; $7928: $FF
    rst $38                                       ; $7929: $FF
    rst $38                                       ; $792A: $FF
    rst $38                                       ; $792B: $FF
    rst $38                                       ; $792C: $FF
    rst $38                                       ; $792D: $FF
    rst $38                                       ; $792E: $FF
    ld h, c                                       ; $792F: $61
    rra                                           ; $7930: $1F
    rst $38                                       ; $7931: $FF
    rst $38                                       ; $7932: $FF
    rst $38                                       ; $7933: $FF
    rst $38                                       ; $7934: $FF
    rst $38                                       ; $7935: $FF
    rst $38                                       ; $7936: $FF
    rst $38                                       ; $7937: $FF
    rst $38                                       ; $7938: $FF
    rst $38                                       ; $7939: $FF
    rst $38                                       ; $793A: $FF
    rst $38                                       ; $793B: $FF
    rst $38                                       ; $793C: $FF
    rst $38                                       ; $793D: $FF
    rst $38                                       ; $793E: $FF
    rst $38                                       ; $793F: $FF
    rst $38                                       ; $7940: $FF
    rst $38                                       ; $7941: $FF
    rst $38                                       ; $7942: $FF
    rst $38                                       ; $7943: $FF
    rst $38                                       ; $7944: $FF
    rst $38                                       ; $7945: $FF
    rst $38                                       ; $7946: $FF
    rst $38                                       ; $7947: $FF
    rst $38                                       ; $7948: $FF
    rst $38                                       ; $7949: $FF
    rst $38                                       ; $794A: $FF
    rst $38                                       ; $794B: $FF
    rst $38                                       ; $794C: $FF
    rst $38                                       ; $794D: $FF
    rst $38                                       ; $794E: $FF
    nop                                           ; $794F: $00
    nop                                           ; $7950: $00
    nop                                           ; $7951: $00
    nop                                           ; $7952: $00
    nop                                           ; $7953: $00
    nop                                           ; $7954: $00
    ld [bc], a                                    ; $7955: $02
    ld bc, $070F                                  ; $7956: $01 $0F $07
    rra                                           ; $7959: $1F
    dec bc                                        ; $795A: $0B
    ld e, $09                                     ; $795B: $1E $09
    ld a, [de]                                    ; $795D: $1A
    dec e                                         ; $795E: $1D
    nop                                           ; $795F: $00
    nop                                           ; $7960: $00
    dec bc                                        ; $7961: $0B
    inc b                                         ; $7962: $04
    rlca                                          ; $7963: $07
    ld e, $35                                     ; $7964: $1E $35
    sbc [hl]                                      ; $7966: $9E
    ret z                                         ; $7967: $C8

    cp [hl]                                       ; $7968: $BE
    ld b, [hl]                                    ; $7969: $46
    db $FC                                        ; $796A: $FC
    xor b                                         ; $796B: $A8
    call c, $F028                                 ; $796C: $DC $28 $F0
    nop                                           ; $796F: $00
    nop                                           ; $7970: $00
    nop                                           ; $7971: $00
    nop                                           ; $7972: $00
    nop                                           ; $7973: $00
    nop                                           ; $7974: $00
    ld bc, $0100                                  ; $7975: $01 $00 $01
    ld bc, $0103                                  ; $7978: $01 $03 $01
    ld [bc], a                                    ; $797B: $02
    ld bc, $0F15                                  ; $797C: $01 $15 $0F
    stop                                          ; $797F: $10 $00
    ld l, b                                       ; $7981: $68
    jr nc, @-$02                                  ; $7982: $30 $FC

    ld a, b                                       ; $7984: $78
    sbc b                                         ; $7985: $98
    db $FC                                        ; $7986: $FC
    nop                                           ; $7987: $00
    ld hl, sp-$1E                                 ; $7988: $F8 $E2
    or c                                          ; $798A: $B1
    or [hl]                                       ; $798B: $B6
    ld a, c                                       ; $798C: $79
    ret c                                         ; $798D: $D8

    jr nc, jr_04F_7990                            ; $798E: $30 $00

jr_04F_7990:
    nop                                           ; $7990: $00
    nop                                           ; $7991: $00
    nop                                           ; $7992: $00
    nop                                           ; $7993: $00
    nop                                           ; $7994: $00
    ld b, $01                                     ; $7995: $06 $01
    inc bc                                        ; $7997: $03
    rlca                                          ; $7998: $07
    dec c                                         ; $7999: $0D
    rlca                                          ; $799A: $07
    ld a, [bc]                                    ; $799B: $0A
    dec c                                         ; $799C: $0D
    add hl, de                                    ; $799D: $19
    ld c, $03                                     ; $799E: $0E $03
    nop                                           ; $79A0: $00
    ld [bc], a                                    ; $79A1: $02
    ld bc, $40A6                                  ; $79A2: $01 $A6 $40
    call z, $60C0                                 ; $79A5: $CC $C0 $60
    ld hl, sp+$7A                                 ; $79A8: $F8 $7A
    ldh a, [rPCM12]                               ; $79AA: $F0 $76
    sbc h                                         ; $79AC: $9C
    adc $3C                                       ; $79AD: $CE $3C
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
    ld [bc], a                                    ; $79B9: $02
    inc b                                         ; $79BA: $04
    rla                                           ; $79BB: $17
    rrca                                          ; $79BC: $0F
    add hl, de                                    ; $79BD: $19
    rrca                                          ; $79BE: $0F
    nop                                           ; $79BF: $00
    jr nc, jr_04F_79C2                            ; $79C0: $30 $00

jr_04F_79C2:
    jr nz, jr_04F_79EA                            ; $79C2: $20 $26

    nop                                           ; $79C4: $00
    ld h, [hl]                                    ; $79C5: $66
    ld b, $EF                                     ; $79C6: $06 $EF
    ld a, [hl]                                    ; $79C8: $7E
    or d                                          ; $79C9: $B2
    rst $38                                       ; $79CA: $FF
    db $DB                                        ; $79CB: $DB
    ld h, $C6                                     ; $79CC: $26 $C6
    inc a                                         ; $79CE: $3C
    nop                                           ; $79CF: $00
    nop                                           ; $79D0: $00
    nop                                           ; $79D1: $00
    nop                                           ; $79D2: $00
    nop                                           ; $79D3: $00
    nop                                           ; $79D4: $00
    inc b                                         ; $79D5: $04
    nop                                           ; $79D6: $00
    nop                                           ; $79D7: $00
    inc c                                         ; $79D8: $0C
    nop                                           ; $79D9: $00
    rlca                                          ; $79DA: $07
    ld [bc], a                                    ; $79DB: $02
    inc bc                                        ; $79DC: $03
    ld bc, $0706                                  ; $79DD: $01 $06 $07
    nop                                           ; $79E0: $00
    dec sp                                        ; $79E1: $3B
    ld c, $3F                                     ; $79E2: $0E $3F
    ld a, $73                                     ; $79E4: $3E $73
    ld a, $86                                     ; $79E6: $3E $86
    ld a, h                                       ; $79E8: $7C
    db $E4                                        ; $79E9: $E4

jr_04F_79EA:
    ret c                                         ; $79EA: $D8

    xor h                                         ; $79EB: $AC
    ld d, b                                       ; $79EC: $50
    xor b                                         ; $79ED: $A8
    ld a, h                                       ; $79EE: $7C
    nop                                           ; $79EF: $00
    nop                                           ; $79F0: $00
    nop                                           ; $79F1: $00
    nop                                           ; $79F2: $00
    ld bc, $0200                                  ; $79F3: $01 $00 $02
    ld bc, $0304                                  ; $79F6: $01 $04 $03
    ld b, $07                                     ; $79F9: $06 $07
    rlca                                          ; $79FB: $07
    inc bc                                        ; $79FC: $03
    rlca                                          ; $79FD: $07
    ld [bc], a                                    ; $79FE: $02
    ld [hl], b                                    ; $79FF: $70
    nop                                           ; $7A00: $00
    ld a, b                                       ; $7A01: $78
    ld [hl], b                                    ; $7A02: $70
    sbc b                                         ; $7A03: $98
    ldh a, [$EE]                                  ; $7A04: $F0 $EE
    or b                                          ; $7A06: $B0
    sub a                                         ; $7A07: $97
    xor $AA                                       ; $7A08: $EE $AA
    ld a, a                                       ; $7A0A: $7F
    reti                                          ; $7A0B: $D9


    ld h, [hl]                                    ; $7A0C: $66
    sub $3C                                       ; $7A0D: $D6 $3C
    nop                                           ; $7A0F: $00
    nop                                           ; $7A10: $00
    nop                                           ; $7A11: $00
    nop                                           ; $7A12: $00
    nop                                           ; $7A13: $00
    nop                                           ; $7A14: $00
    ld bc, $0F03                                  ; $7A15: $01 $03 $0F
    rlca                                          ; $7A18: $07
    ld a, [de]                                    ; $7A19: $1A
    dec c                                         ; $7A1A: $0D
    ld a, [bc]                                    ; $7A1B: $0A
    dec e                                         ; $7A1C: $1D
    rla                                           ; $7A1D: $17
    inc e                                         ; $7A1E: $1C
    inc bc                                        ; $7A1F: $03
    nop                                           ; $7A20: $00
    inc bc                                        ; $7A21: $03
    ld c, $11                                     ; $7A22: $0E $11
    ld e, $28                                     ; $7A24: $1E $28
    or [hl]                                       ; $7A26: $B6
    halt                                          ; $7A27: $76
    xor h                                         ; $7A28: $AC
    ld l, b                                       ; $7A29: $68
    sbc h                                         ; $7A2A: $9C
    ld hl, sp-$80                                 ; $7A2B: $F8 $80
    ld a, h                                       ; $7A2D: $7C
    ldh a, [rP1]                                  ; $7A2E: $F0 $00
    nop                                           ; $7A30: $00
    nop                                           ; $7A31: $00
    nop                                           ; $7A32: $00
    ld bc, $0000                                  ; $7A33: $01 $00 $00
    ld bc, $0103                                  ; $7A36: $01 $03 $01
    ld bc, $0103                                  ; $7A39: $01 $03 $01
    ld [bc], a                                    ; $7A3C: $02
    rlca                                          ; $7A3D: $07
    dec de                                        ; $7A3E: $1B
    nop                                           ; $7A3F: $00
    jr nz, jr_04F_7A6A                            ; $7A40: $20 $28

    ld [hl], b                                    ; $7A42: $70
    sbc b                                         ; $7A43: $98
    ldh a, [$D8]                                  ; $7A44: $F0 $D8
    or b                                          ; $7A46: $B0
    jp z, Jump_04F_5F34                           ; $7A47: $CA $34 $5F

    xor [hl]                                      ; $7A4A: $AE
    and d                                         ; $7A4B: $A2
    ld a, [hl]                                    ; $7A4C: $7E
    ld c, d                                       ; $7A4D: $4A
    cp h                                          ; $7A4E: $BC
    dec a                                         ; $7A4F: $3D
    ld e, $15                                     ; $7A50: $1E $15
    ld c, $17                                     ; $7A52: $0E $17
    add hl, bc                                    ; $7A54: $09
    ld bc, $273F                                  ; $7A55: $01 $3F $27
    ld a, d                                       ; $7A58: $7A
    ld l, [hl]                                    ; $7A59: $6E
    ld a, h                                       ; $7A5A: $7C
    ld a, [hl]                                    ; $7A5B: $7E
    ld a, h                                       ; $7A5C: $7C
    adc b                                         ; $7A5D: $88
    ld [hl], b                                    ; $7A5E: $70
    ldh a, [rNR41]                                ; $7A5F: $F0 $20
    add b                                         ; $7A61: $80
    ld h, b                                       ; $7A62: $60
    ld h, b                                       ; $7A63: $60
    ret nz                                        ; $7A64: $C0

    ld [$20B0], sp                                ; $7A65: $08 $B0 $20
    stop                                          ; $7A68: $10 $00

jr_04F_7A6A:
    nop                                           ; $7A6A: $00
    nop                                           ; $7A6B: $00
    nop                                           ; $7A6C: $00
    nop                                           ; $7A6D: $00
    nop                                           ; $7A6E: $00
    inc a                                         ; $7A6F: $3C
    dec de                                        ; $7A70: $1B
    ld [hl], b                                    ; $7A71: $70

Jump_04F_7A72:
    cpl                                           ; $7A72: $2F
    db $DD                                        ; $7A73: $DD
    ld l, [hl]                                    ; $7A74: $6E
    ld a, h                                       ; $7A75: $7C
    rst $30                                       ; $7A76: $F7
    add hl, hl                                    ; $7A77: $29
    ld [hl], a                                    ; $7A78: $77
    ld d, e                                       ; $7A79: $53
    dec c                                         ; $7A7A: $0D
    ld a, [de]                                    ; $7A7B: $1A
    rrca                                          ; $7A7C: $0F

jr_04F_7A7D:
    inc b                                         ; $7A7D: $04
    ld c, $D0                                     ; $7A7E: $0E $D0
    jr nz, jr_04F_7AE2                            ; $7A80: $20 $60

    ret nz                                        ; $7A82: $C0

    ld b, b                                       ; $7A83: $40
    ldh [$C0], a                                  ; $7A84: $E0 $C0
    ld h, b                                       ; $7A86: $60
    and b                                         ; $7A87: $A0
    ret nz                                        ; $7A88: $C0

    ret nz                                        ; $7A89: $C0

    add b                                         ; $7A8A: $80
    nop                                           ; $7A8B: $00
    nop                                           ; $7A8C: $00
    nop                                           ; $7A8D: $00
    nop                                           ; $7A8E: $00
    dec d                                         ; $7A8F: $15
    ld c, $0A                                     ; $7A90: $0E $0A
    dec b                                         ; $7A92: $05
    rla                                           ; $7A93: $17
    add hl, de                                    ; $7A94: $19
    dec [hl]                                      ; $7A95: $35
    ld a, [hl-]                                   ; $7A96: $3A
    ld a, a                                       ; $7A97: $7F
    inc h                                         ; $7A98: $24
    ld l, h                                       ; $7A99: $6C
    inc a                                         ; $7A9A: $3C
    ld [hl], b                                    ; $7A9B: $70
    ld a, b                                       ; $7A9C: $78
    or b                                          ; $7A9D: $B0
    ld b, b                                       ; $7A9E: $40
    jr z, jr_04F_7A7D                             ; $7A9F: $28 $DC

    ld a, b                                       ; $7AA1: $78
    cp b                                          ; $7AA2: $B8
    ld hl, sp-$68                                 ; $7AA3: $F8 $98
    add sp, -$10                                  ; $7AA5: $E8 $F0
    ld h, b                                       ; $7AA7: $60
    ret nz                                        ; $7AA8: $C0

    add b                                         ; $7AA9: $80
    nop                                           ; $7AAA: $00
    nop                                           ; $7AAB: $00
    nop                                           ; $7AAC: $00
    nop                                           ; $7AAD: $00
    nop                                           ; $7AAE: $00
    ld a, $19                                     ; $7AAF: $3E $19
    ld a, d                                       ; $7AB1: $7A
    daa                                           ; $7AB2: $27
    ld l, a                                       ; $7AB3: $6F
    ld a, [hl]                                    ; $7AB4: $7E
    jr c, jr_04F_7B2E                             ; $7AB5: $38 $77

    ld a, a                                       ; $7AB7: $7F
    inc b                                         ; $7AB8: $04
    rra                                           ; $7AB9: $1F
    dec c                                         ; $7ABA: $0D
    ld e, $0F                                     ; $7ABB: $1E $0F
    inc c                                         ; $7ABD: $0C
    ld b, $5C                                     ; $7ABE: $06 $5C
    ld hl, sp+$58                                 ; $7AC0: $F8 $58
    ret nz                                        ; $7AC2: $C0

    add b                                         ; $7AC3: $80
    ld b, b                                       ; $7AC4: $40
    ret nz                                        ; $7AC5: $C0

    ret nz                                        ; $7AC6: $C0

    ret nz                                        ; $7AC7: $C0

    add b                                         ; $7AC8: $80
    nop                                           ; $7AC9: $00
    add b                                         ; $7ACA: $80
    nop                                           ; $7ACB: $00
    nop                                           ; $7ACC: $00
    nop                                           ; $7ACD: $00
    nop                                           ; $7ACE: $00
    ld [$2307], sp                                ; $7ACF: $08 $07 $23
    dec e                                         ; $7AD2: $1D
    inc [hl]                                      ; $7AD3: $34
    dec sp                                        ; $7AD4: $3B
    ld [hl], d                                    ; $7AD5: $72
    dec a                                         ; $7AD6: $3D
    ld h, a                                       ; $7AD7: $67
    inc a                                         ; $7AD8: $3C
    inc a                                         ; $7AD9: $3C
    ld a, b                                       ; $7ADA: $78
    adc b                                         ; $7ADB: $88
    ld [hl], b                                    ; $7ADC: $70
    ldh [rP1], a                                  ; $7ADD: $E0 $00
    call c, Call_04F_7838                         ; $7ADF: $DC $38 $78

jr_04F_7AE2:
    adc b                                         ; $7AE2: $88
    db $10                                        ; $7AE3: $10
    ld hl, sp-$38                                 ; $7AE4: $F8 $C8
    ldh a, [$B0]                                  ; $7AE6: $F0 $B0
    ret nz                                        ; $7AE8: $C0

    add b                                         ; $7AE9: $80
    nop                                           ; $7AEA: $00
    nop                                           ; $7AEB: $00
    nop                                           ; $7AEC: $00
    nop                                           ; $7AED: $00
    nop                                           ; $7AEE: $00
    rra                                           ; $7AEF: $1F
    inc b                                         ; $7AF0: $04
    ld a, l                                       ; $7AF1: $7D
    ld c, $45                                     ; $7AF2: $0E $45
    adc [hl]                                      ; $7AF4: $8E
    inc b                                         ; $7AF5: $04
    rrca                                          ; $7AF6: $0F
    ld h, $1D                                     ; $7AF7: $26 $1D
    dec a                                         ; $7AF9: $3D
    rra                                           ; $7AFA: $1F
    dec e                                         ; $7AFB: $1D
    ld e, $10                                     ; $7AFC: $1E $10
    inc c                                         ; $7AFE: $0C
    db $F4                                        ; $7AFF: $F4
    ret c                                         ; $7B00: $D8

    sbc b                                         ; $7B01: $98
    ldh [rLCDC], a                                ; $7B02: $E0 $40
    add b                                         ; $7B04: $80
    ret nz                                        ; $7B05: $C0

    add b                                         ; $7B06: $80
    ret nz                                        ; $7B07: $C0

    add b                                         ; $7B08: $80
    add b                                         ; $7B09: $80
    nop                                           ; $7B0A: $00
    nop                                           ; $7B0B: $00
    nop                                           ; $7B0C: $00
    nop                                           ; $7B0D: $00
    nop                                           ; $7B0E: $00
    inc de                                        ; $7B0F: $13
    inc a                                         ; $7B10: $3C
    ld a, [bc]                                    ; $7B11: $0A

jr_04F_7B12:
    dec a                                         ; $7B12: $3D
    ld b, a                                       ; $7B13: $47
    rrca                                          ; $7B14: $0F
    rra                                           ; $7B15: $1F
    rrca                                          ; $7B16: $0F
    add hl, de                                    ; $7B17: $19
    inc bc                                        ; $7B18: $03
    ld h, $03                                     ; $7B19: $26 $03
    nop                                           ; $7B1B: $00
    ld b, b                                       ; $7B1C: $40
    ld b, b                                       ; $7B1D: $40
    add b                                         ; $7B1E: $80
    db $FC                                        ; $7B1F: $FC
    jr c, jr_04F_7B12                             ; $7B20: $38 $F0

    jr jr_04F_7B94                                ; $7B22: $18 $70

    ret nc                                        ; $7B24: $D0

    ld h, b                                       ; $7B25: $60
    ldh a, [$80]                                  ; $7B26: $F0 $80
    ldh [$80], a                                  ; $7B28: $E0 $80
    nop                                           ; $7B2A: $00
    nop                                           ; $7B2B: $00
    nop                                           ; $7B2C: $00
    nop                                           ; $7B2D: $00

jr_04F_7B2E:
    nop                                           ; $7B2E: $00
    add hl, de                                    ; $7B2F: $19
    ld a, $7F                                     ; $7B30: $3E $7F
    jr nc, @-$18                                  ; $7B32: $30 $E6

    ld a, l                                       ; $7B34: $7D
    ld l, [hl]                                    ; $7B35: $6E
    rst $38                                       ; $7B36: $FF
    jp hl                                         ; $7B37: $E9


    halt                                          ; $7B38: $76
    ld [hl+], a                                   ; $7B39: $22
    ld h, b                                       ; $7B3A: $60
    ld h, $00                                     ; $7B3B: $26 $00
    ld [bc], a                                    ; $7B3D: $02
    inc b                                         ; $7B3E: $04
    cp h                                          ; $7B3F: $BC
    ld e, b                                       ; $7B40: $58
    ld hl, sp-$10                                 ; $7B41: $F8 $F0
    ldh [$F0], a                                  ; $7B43: $E0 $F0
    ld h, b                                       ; $7B45: $60
    nop                                           ; $7B46: $00
    nop                                           ; $7B47: $00
    nop                                           ; $7B48: $00
    nop                                           ; $7B49: $00
    nop                                           ; $7B4A: $00
    nop                                           ; $7B4B: $00
    nop                                           ; $7B4C: $00
    nop                                           ; $7B4D: $00

Jump_04F_7B4E:
    nop                                           ; $7B4E: $00
    nop                                           ; $7B4F: $00
    nop                                           ; $7B50: $00
    nop                                           ; $7B51: $00
    nop                                           ; $7B52: $00
    nop                                           ; $7B53: $00
    nop                                           ; $7B54: $00
    rrca                                          ; $7B55: $0F
    nop                                           ; $7B56: $00
    ld [hl], a                                    ; $7B57: $77
    rrca                                          ; $7B58: $0F
    rst $18                                       ; $7B59: $DF
    ccf                                           ; $7B5A: $3F
    ccf                                           ; $7B5B: $3F
    nop                                           ; $7B5C: $00
    ld bc, $0700                                  ; $7B5D: $01 $00 $07
    nop                                           ; $7B60: $00
    jr c, jr_04F_7B6A                             ; $7B61: $38 $07

    ret nz                                        ; $7B63: $C0

    ccf                                           ; $7B64: $3F

Call_04F_7B65:
    rst $38                                       ; $7B65: $FF
    nop                                           ; $7B66: $00
    add sp, -$09                                  ; $7B67: $E8 $F7
    rst $30                                       ; $7B69: $F7

jr_04F_7B6A:
    rrca                                          ; $7B6A: $0F
    ld a, a                                       ; $7B6B: $7F
    cp $BE                                        ; $7B6C: $FE $BE

Call_04F_7B6E:
    ld a, c                                       ; $7B6E: $79
    ldh a, [rP1]                                  ; $7B6F: $F0 $00
    rrca                                          ; $7B71: $0F
    ldh a, [rP1]                                  ; $7B72: $F0 $00

Call_04F_7B74:
    rst $38                                       ; $7B74: $FF
    nop                                           ; $7B75: $00
    rst $38                                       ; $7B76: $FF

Call_04F_7B77:
    ld hl, sp+$07                                 ; $7B77: $F8 $07
    ld a, a                                       ; $7B79: $7F
    add b                                         ; $7B7A: $80
    add e                                         ; $7B7B: $83
    ld a, h                                       ; $7B7C: $7C
    rst $38                                       ; $7B7D: $FF
    ld hl, sp+$01                                 ; $7B7E: $F8 $01
    nop                                           ; $7B80: $00
    rst $20                                       ; $7B81: $E7
    nop                                           ; $7B82: $00
    ld a, a                                       ; $7B83: $7F
    add b                                         ; $7B84: $80
    xor a                                         ; $7B85: $AF
    ld d, b                                       ; $7B86: $50
    ld e, a                                       ; $7B87: $5F
    and b                                         ; $7B88: $A0
    cp $01                                        ; $7B89: $FE $01
    ld hl, sp+$07                                 ; $7B8B: $F8 $07
    ldh [$1F], a                                  ; $7B8D: $E0 $1F
    rst $38                                       ; $7B8F: $FF
    nop                                           ; $7B90: $00
    nop                                           ; $7B91: $00
    rst $38                                       ; $7B92: $FF
    ret nz                                        ; $7B93: $C0

jr_04F_7B94:
    ccf                                           ; $7B94: $3F
    cp h                                          ; $7B95: $BC
    ld b, e                                       ; $7B96: $43
    ld a, h                                       ; $7B97: $7C
    sub e                                         ; $7B98: $93
    ld hl, sp+$07                                 ; $7B99: $F8 $07
    nop                                           ; $7B9B: $00
    rst $38                                       ; $7B9C: $FF
    rrca                                          ; $7B9D: $0F
    ldh a, [$80]                                  ; $7B9E: $F0 $80
    nop                                           ; $7BA0: $00
    ld h, b                                       ; $7BA1: $60
    add b                                         ; $7BA2: $80
    sbc b                                         ; $7BA3: $98
    ldh [$64], a                                  ; $7BA4: $E0 $64
    ld hl, sp+$32                                 ; $7BA6: $F8 $32
    db $FC                                        ; $7BA8: $FC
    ld a, [bc]                                    ; $7BA9: $0A
    db $FC                                        ; $7BAA: $FC
    ld [bc], a                                    ; $7BAB: $02
    db $FC                                        ; $7BAC: $FC
    cp $00                                        ; $7BAD: $FE $00
    ld a, e                                       ; $7BAF: $7B
    nop                                           ; $7BB0: $00
    nop                                           ; $7BB1: $00
    nop                                           ; $7BB2: $00
    ld bc, $0700                                  ; $7BB3: $01 $00 $07
    nop                                           ; $7BB6: $00
    ld c, $01                                     ; $7BB7: $0E $01
    jr c, @+$09                                   ; $7BB9: $38 $07

    ld h, e                                       ; $7BBB: $63
    inc e                                         ; $7BBC: $1C
    rst $08                                       ; $7BBD: $CF
    jr nc, @+$01                                  ; $7BBE: $30 $FF

    nop                                           ; $7BC0: $00
    ld a, $01                                     ; $7BC1: $3E $01
    rst $38                                       ; $7BC3: $FF
    nop                                           ; $7BC4: $00
    adc a                                         ; $7BC5: $8F
    ld [hl], b                                    ; $7BC6: $70
    ccf                                           ; $7BC7: $3F
    ret nz                                        ; $7BC8: $C0

    rst $38                                       ; $7BC9: $FF
    nop                                           ; $7BCA: $00
    rst $38                                       ; $7BCB: $FF
    nop                                           ; $7BCC: $00
    rst $38                                       ; $7BCD: $FF
    nop                                           ; $7BCE: $00
    ld b, c                                       ; $7BCF: $41
    cp [hl]                                       ; $7BD0: $BE
    xor a                                         ; $7BD1: $AF
    ld d, b                                       ; $7BD2: $50
    rst $38                                       ; $7BD3: $FF
    nop                                           ; $7BD4: $00
    rst $38                                       ; $7BD5: $FF
    nop                                           ; $7BD6: $00
    rst $38                                       ; $7BD7: $FF
    nop                                           ; $7BD8: $00
    rst $38                                       ; $7BD9: $FF
    nop                                           ; $7BDA: $00
    rst $38                                       ; $7BDB: $FF
    nop                                           ; $7BDC: $00
    rst $38                                       ; $7BDD: $FF
    nop                                           ; $7BDE: $00
    rst $38                                       ; $7BDF: $FF
    nop                                           ; $7BE0: $00
    rst $38                                       ; $7BE1: $FF
    nop                                           ; $7BE2: $00
    rst $38                                       ; $7BE3: $FF
    nop                                           ; $7BE4: $00
    rst $38                                       ; $7BE5: $FF
    nop                                           ; $7BE6: $00
    rst $38                                       ; $7BE7: $FF
    nop                                           ; $7BE8: $00
    rst $38                                       ; $7BE9: $FF
    nop                                           ; $7BEA: $00
    rst $38                                       ; $7BEB: $FF
    nop                                           ; $7BEC: $00
    db $FC                                        ; $7BED: $FC
    inc bc                                        ; $7BEE: $03
    cp $00                                        ; $7BEF: $FE $00
    ld hl, sp+$00                                 ; $7BF1: $F8 $00
    ldh a, [rP1]                                  ; $7BF3: $F0 $00
    ldh [rP1], a                                  ; $7BF5: $E0 $00
    ldh [rP1], a                                  ; $7BF7: $E0 $00
    ret nz                                        ; $7BF9: $C0

    nop                                           ; $7BFA: $00
    ld b, b                                       ; $7BFB: $40
    add b                                         ; $7BFC: $80
    add b                                         ; $7BFD: $80
    nop                                           ; $7BFE: $00
    ld bc, $0300                                  ; $7BFF: $01 $00 $03
    nop                                           ; $7C02: $00
    rlca                                          ; $7C03: $07
    nop                                           ; $7C04: $00
    rrca                                          ; $7C05: $0F
    nop                                           ; $7C06: $00
    inc c                                         ; $7C07: $0C
    nop                                           ; $7C08: $00
    nop                                           ; $7C09: $00
    nop                                           ; $7C0A: $00
    nop                                           ; $7C0B: $00
    nop                                           ; $7C0C: $00
    ld bc, $9F00                                  ; $7C0D: $01 $00 $9F
    ld h, b                                       ; $7C10: $60
    ld a, a                                       ; $7C11: $7F
    add b                                         ; $7C12: $80
    db $FC                                        ; $7C13: $FC
    inc bc                                        ; $7C14: $03
    jr nc, jr_04F_7C26                            ; $7C15: $30 $0F

    ld h, l                                       ; $7C17: $65
    ld a, [de]                                    ; $7C18: $1A
    swap h                                        ; $7C19: $CB $34
    sub a                                         ; $7C1B: $97
    ld l, b                                       ; $7C1C: $68
    sbc a                                         ; $7C1D: $9F
    ld h, b                                       ; $7C1E: $60
    rst $38                                       ; $7C1F: $FF
    nop                                           ; $7C20: $00
    rst $38                                       ; $7C21: $FF
    nop                                           ; $7C22: $00
    ld a, a                                       ; $7C23: $7F
    add b                                         ; $7C24: $80
    rst $38                                       ; $7C25: $FF

jr_04F_7C26:
    nop                                           ; $7C26: $00
    rst $38                                       ; $7C27: $FF
    nop                                           ; $7C28: $00
    or $08                                        ; $7C29: $F6 $08
    db $EC                                        ; $7C2B: $EC
    db $10                                        ; $7C2C: $10
    call c, $E720                                 ; $7C2D: $DC $20 $E7
    nop                                           ; $7C30: $00
    add l                                         ; $7C31: $85
    inc bc                                        ; $7C32: $03
    adc e                                         ; $7C33: $8B
    ld b, $0F                                     ; $7C34: $06 $0F
    ld bc, $0F17                                  ; $7C36: $01 $17 $0F
    dec bc                                        ; $7C39: $0B
    rlca                                          ; $7C3A: $07
    dec bc                                        ; $7C3B: $0B
    inc b                                         ; $7C3C: $04
    dec c                                         ; $7C3D: $0D
    inc bc                                        ; $7C3E: $03
    inc e                                         ; $7C3F: $1C

Call_04F_7C40:
    db $E3                                        ; $7C40: $E3
    db $F4                                        ; $7C41: $F4
    set 1, c                                      ; $7C42: $CB $C9
    ld [hl], $F9                                  ; $7C44: $36 $F9
    and $EA                                       ; $7C46: $E6 $EA
    sub h                                         ; $7C48: $94
    ld [$F434], a                                 ; $7C49: $EA $34 $F4
    add sp, -$18                                  ; $7C4C: $E8 $E8
    ret nc                                        ; $7C4E: $D0

    add b                                         ; $7C4F: $80
    nop                                           ; $7C50: $00
    add b                                         ; $7C51: $80
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

Call_04F_7C5C:
    nop                                           ; $7C5C: $00
    nop                                           ; $7C5D: $00
    nop                                           ; $7C5E: $00
    ld bc, $0300                                  ; $7C5F: $01 $00 $03
    nop                                           ; $7C62: $00
    inc bc                                        ; $7C63: $03
    nop                                           ; $7C64: $00

Jump_04F_7C65:
    rlca                                          ; $7C65: $07
    nop                                           ; $7C66: $00

Jump_04F_7C67:
    ld b, $00                                     ; $7C67: $06 $00
    nop                                           ; $7C69: $00
    nop                                           ; $7C6A: $00
    nop                                           ; $7C6B: $00
    nop                                           ; $7C6C: $00

Jump_04F_7C6D:
    nop                                           ; $7C6D: $00
    nop                                           ; $7C6E: $00
    ccf                                           ; $7C6F: $3F
    ret nz                                        ; $7C70: $C0

    ld a, [hl]                                    ; $7C71: $7E
    add b                                         ; $7C72: $80
    pop af                                        ; $7C73: $F1
    nop                                           ; $7C74: $00
    add c                                         ; $7C75: $81
    nop                                           ; $7C76: $00
    nop                                           ; $7C77: $00
    nop                                           ; $7C78: $00
    nop                                           ; $7C79: $00
    nop                                           ; $7C7A: $00
    nop                                           ; $7C7B: $00
    nop                                           ; $7C7C: $00
    nop                                           ; $7C7D: $00
    nop                                           ; $7C7E: $00
    cp b                                          ; $7C7F: $B8
    ld b, b                                       ; $7C80: $40
    ldh a, [rP1]                                  ; $7C81: $F0 $00
    ret nz                                        ; $7C83: $C0

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
    rlca                                          ; $7C8F: $07
    inc bc                                        ; $7C90: $03
    dec bc                                        ; $7C91: $0B
    rlca                                          ; $7C92: $07
    add hl, bc                                    ; $7C93: $09
    ld b, $16                                     ; $7C94: $06 $16
    ld [$0038], sp                                ; $7C96: $08 $38 $00
    nop                                           ; $7C99: $00
    nop                                           ; $7C9A: $00
    nop                                           ; $7C9B: $00
    nop                                           ; $7C9C: $00
    nop                                           ; $7C9D: $00
    nop                                           ; $7C9E: $00
    or b                                          ; $7C9F: $B0
    ret nz                                        ; $7CA0: $C0

    ld b, b                                       ; $7CA1: $40
    add b                                         ; $7CA2: $80
    add b                                         ; $7CA3: $80
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
    inc c                                         ; $7CB9: $0C
    nop                                           ; $7CBA: $00
    ld [hl-], a                                   ; $7CBB: $32
    inc c                                         ; $7CBC: $0C
    ld b, h                                       ; $7CBD: $44
    jr c, jr_04F_7CC0                             ; $7CBE: $38 $00

jr_04F_7CC0:
    nop                                           ; $7CC0: $00
    nop                                           ; $7CC1: $00

jr_04F_7CC2:
    nop                                           ; $7CC2: $00
    nop                                           ; $7CC3: $00
    nop                                           ; $7CC4: $00
    nop                                           ; $7CC5: $00
    nop                                           ; $7CC6: $00
    nop                                           ; $7CC7: $00
    nop                                           ; $7CC8: $00
    nop                                           ; $7CC9: $00
    nop                                           ; $7CCA: $00
    inc bc                                        ; $7CCB: $03
    nop                                           ; $7CCC: $00
    add hl, bc                                    ; $7CCD: $09
    rlca                                          ; $7CCE: $07
    nop                                           ; $7CCF: $00
    nop                                           ; $7CD0: $00
    nop                                           ; $7CD1: $00
    nop                                           ; $7CD2: $00
    nop                                           ; $7CD3: $00
    nop                                           ; $7CD4: $00
    ld b, $00                                     ; $7CD5: $06 $00
    add hl, bc                                    ; $7CD7: $09
    ld b, $0E                                     ; $7CD8: $06 $0E
    rlca                                          ; $7CDA: $07
    db $EB                                        ; $7CDB: $EB
    rlca                                          ; $7CDC: $07
    sbc $E1                                       ; $7CDD: $DE $E1
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
    add b                                         ; $7CE9: $80
    nop                                           ; $7CEA: $00
    ld b, b                                       ; $7CEB: $40
    add b                                         ; $7CEC: $80
    ret nz                                        ; $7CED: $C0

    add b                                         ; $7CEE: $80
    nop                                           ; $7CEF: $00
    nop                                           ; $7CF0: $00
    rlca                                          ; $7CF1: $07
    nop                                           ; $7CF2: $00
    dec bc                                        ; $7CF3: $0B
    rlca                                          ; $7CF4: $07
    rla                                           ; $7CF5: $17
    rrca                                          ; $7CF6: $0F
    rla                                           ; $7CF7: $17
    rrca                                          ; $7CF8: $0F
    dec c                                         ; $7CF9: $0D
    inc bc                                        ; $7CFA: $03
    dec sp                                        ; $7CFB: $3B
    nop                                           ; $7CFC: $00
    call nc, $0038                                ; $7CFD: $D4 $38 $00
    nop                                           ; $7D00: $00
    add b                                         ; $7D01: $80
    nop                                           ; $7D02: $00
    ld b, b                                       ; $7D03: $40
    add b                                         ; $7D04: $80
    and b                                         ; $7D05: $A0
    ret nz                                        ; $7D06: $C0

    ret nc                                        ; $7D07: $D0

    ldh [$EC], a                                  ; $7D08: $E0 $EC
    ldh a, [$FE]                                  ; $7D0A: $F0 $FE
    nop                                           ; $7D0C: $00
    dec b                                         ; $7D0D: $05
    ld [bc], a                                    ; $7D0E: $02
    nop                                           ; $7D0F: $00
    nop                                           ; $7D10: $00
    nop                                           ; $7D11: $00
    nop                                           ; $7D12: $00
    inc c                                         ; $7D13: $0C
    nop                                           ; $7D14: $00
    ld [hl-], a                                   ; $7D15: $32
    inc c                                         ; $7D16: $0C
    ld d, h                                       ; $7D17: $54
    jr c, jr_04F_7CC2                             ; $7D18: $38 $A8

    ld [hl], b                                    ; $7D1A: $70
    ld [hl], b                                    ; $7D1B: $70
    nop                                           ; $7D1C: $00
    nop                                           ; $7D1D: $00
    nop                                           ; $7D1E: $00
    ld bc, $0300                                  ; $7D1F: $01 $00 $03
    nop                                           ; $7D22: $00
    add hl, de                                    ; $7D23: $19
    nop                                           ; $7D24: $00
    inc h                                         ; $7D25: $24
    jr jr_04F_7D40                                ; $7D26: $18 $18

    nop                                           ; $7D28: $00
    add e                                         ; $7D29: $83
    nop                                           ; $7D2A: $00
    push bc                                       ; $7D2B: $C5
    inc bc                                        ; $7D2C: $03
    adc e                                         ; $7D2D: $8B
    rlca                                          ; $7D2E: $07
    add hl, sp                                    ; $7D2F: $39
    nop                                           ; $7D30: $00
    sbc [hl]                                      ; $7D31: $9E
    ld bc, $1F2F                                  ; $7D32: $01 $2F $1F
    ld e, a                                       ; $7D35: $5F
    ccf                                           ; $7D36: $3F
    ld [hl], $0F                                  ; $7D37: $36 $0F
    rst $28                                       ; $7D39: $EF
    nop                                           ; $7D3A: $00
    reti                                          ; $7D3B: $D9


    ldh [$F4], a                                  ; $7D3C: $E0 $F4
    ld hl, sp-$29                                 ; $7D3E: $F8 $D7

jr_04F_7D40:
    rrca                                          ; $7D40: $0F
    cp a                                          ; $7D41: $BF
    rst $08                                       ; $7D42: $CF
    rst $10                                       ; $7D43: $D7
    adc a                                         ; $7D44: $8F
    ld c, e                                       ; $7D45: $4B
    add a                                         ; $7D46: $87
    cp $00                                        ; $7D47: $FE $00
    cp l                                          ; $7D49: $BD
    ld a, [hl]                                    ; $7D4A: $7E
    ld a, [hl]                                    ; $7D4B: $7E
    rst $38                                       ; $7D4C: $FF
    cp a                                          ; $7D4D: $BF
    ld a, a                                       ; $7D4E: $7F
    push af                                       ; $7D4F: $F5
    ld hl, sp-$05                                 ; $7D50: $F8 $FB
    db $FC                                        ; $7D52: $FC
    rst $38                                       ; $7D53: $FF
    rst $38                                       ; $7D54: $FF
    rst $38                                       ; $7D55: $FF
    rst $38                                       ; $7D56: $FF
    rst $18                                       ; $7D57: $DF
    ccf                                           ; $7D58: $3F
    ccf                                           ; $7D59: $3F
    rra                                           ; $7D5A: $1F
    rst $18                                       ; $7D5B: $DF
    ccf                                           ; $7D5C: $3F
    ld a, a                                       ; $7D5D: $7F
    sbc a                                         ; $7D5E: $9F
    and b                                         ; $7D5F: $A0
    ret nz                                        ; $7D60: $C0

    ret nc                                        ; $7D61: $D0

    ldh [$E8], a                                  ; $7D62: $E0 $E8
    ldh a, [$F8]                                  ; $7D64: $F0 $F8
    ldh a, [$F4]                                  ; $7D66: $F0 $F4
    ld hl, sp-$04                                 ; $7D68: $F8 $FC
    ld hl, sp-$06                                 ; $7D6A: $F8 $FA
    db $FC                                        ; $7D6C: $FC
    cp $FC                                        ; $7D6D: $FE $FC
    nop                                           ; $7D6F: $00
    nop                                           ; $7D70: $00
    nop                                           ; $7D71: $00
    nop                                           ; $7D72: $00
    rlca                                          ; $7D73: $07
    nop                                           ; $7D74: $00
    dec de                                        ; $7D75: $1B
    rlca                                          ; $7D76: $07
    ld h, $1F                                     ; $7D77: $26 $1F
    db $FC                                        ; $7D79: $FC
    nop                                           ; $7D7A: $00
    ld a, d                                       ; $7D7B: $7A
    db $FC                                        ; $7D7C: $FC
    rst $38                                       ; $7D7D: $FF
    ld a, [hl]                                    ; $7D7E: $7E
    inc bc                                        ; $7D7F: $03
    nop                                           ; $7D80: $00
    dec b                                         ; $7D81: $05
    inc bc                                        ; $7D82: $03
    adc e                                         ; $7D83: $8B
    rlca                                          ; $7D84: $07
    ld b, l                                       ; $7D85: $45
    add e                                         ; $7D86: $83
    add e                                         ; $7D87: $83
    nop                                           ; $7D88: $00
    rlca                                          ; $7D89: $07
    nop                                           ; $7D8A: $00
    dec de                                        ; $7D8B: $1B
    rlca                                          ; $7D8C: $07
    cpl                                           ; $7D8D: $2F
    rra                                           ; $7D8E: $1F
    ld a, e                                       ; $7D8F: $7B
    db $FC                                        ; $7D90: $FC
    db $FC                                        ; $7D91: $FC
    rst $38                                       ; $7D92: $FF
    rst $30                                       ; $7D93: $F7
    ld hl, sp-$18                                 ; $7D94: $F8 $E8
    ldh a, [$F0]                                  ; $7D96: $F0 $F0
    nop                                           ; $7D98: $00
    ret nz                                        ; $7D99: $C0

    nop                                           ; $7D9A: $00
    and c                                         ; $7D9B: $A1
    ret nz                                        ; $7D9C: $C0

    db $D3                                        ; $7D9D: $D3
    pop hl                                        ; $7D9E: $E1
    inc bc                                        ; $7D9F: $03
    ld bc, $01BF                                  ; $7DA0: $01 $BF $01
    ld e, e                                       ; $7DA3: $5B
    dec a                                         ; $7DA4: $3D
    cpl                                           ; $7DA5: $2F
    rra                                           ; $7DA6: $1F
    rla                                           ; $7DA7: $17
    rrca                                          ; $7DA8: $0F
    ld a, a                                       ; $7DA9: $7F
    rlca                                          ; $7DAA: $07
    cp a                                          ; $7DAB: $BF
    ld a, a                                       ; $7DAC: $7F
    rst $38                                       ; $7DAD: $FF
    rst $38                                       ; $7DAE: $FF
    add b                                         ; $7DAF: $80
    nop                                           ; $7DB0: $00
    ldh [$80], a                                  ; $7DB1: $E0 $80
    ret nc                                        ; $7DB3: $D0

    ldh [$E8], a                                  ; $7DB4: $E0 $E8
    ldh a, [$F4]                                  ; $7DB6: $F0 $F4
    ld hl, sp-$04                                 ; $7DB8: $F8 $FC
    ld hl, sp-$06                                 ; $7DBA: $F8 $FA
    db $FC                                        ; $7DBC: $FC
    cp $FC                                        ; $7DBD: $FE $FC
    nop                                           ; $7DBF: $00
    nop                                           ; $7DC0: $00
    nop                                           ; $7DC1: $00
    nop                                           ; $7DC2: $00
    ld c, $00                                     ; $7DC3: $0E $00
    dec d                                         ; $7DC5: $15
    ld c, $0A                                     ; $7DC6: $0E $0A
    inc b                                         ; $7DC8: $04
    push hl                                       ; $7DC9: $E5
    nop                                           ; $7DCA: $00
    jp nc, $F5E1                                  ; $7DCB: $D2 $E1 $F5

    db $E3                                        ; $7DCE: $E3
    rlca                                          ; $7DCF: $07
    nop                                           ; $7DD0: $00
    dec de                                        ; $7DD1: $1B
    rlca                                          ; $7DD2: $07
    ld l, [hl]                                    ; $7DD3: $6E
    rra                                           ; $7DD4: $1F
    cp l                                          ; $7DD5: $BD
    ld a, [hl]                                    ; $7DD6: $7E
    sbc [hl]                                      ; $7DD7: $9E
    ld h, b                                       ; $7DD8: $60
    ldh [rP1], a                                  ; $7DD9: $E0 $00
    ld h, b                                       ; $7DDB: $60
    add b                                         ; $7DDC: $80
    ret nc                                        ; $7DDD: $D0

    ldh [$80], a                                  ; $7DDE: $E0 $80
    nop                                           ; $7DE0: $00
    ld b, c                                       ; $7DE1: $41
    add b                                         ; $7DE2: $80
    add d                                         ; $7DE3: $82
    ld bc, $0102                                  ; $7DE4: $01 $02 $01
    ld bc, $0000                                  ; $7DE7: $01 $00 $00
    nop                                           ; $7DEA: $00
    ld [bc], a                                    ; $7DEB: $02
    ld bc, $0305                                  ; $7DEC: $01 $05 $03
    rst $20                                       ; $7DEF: $E7
    nop                                           ; $7DF0: $00
    ld e, e                                       ; $7DF1: $5B
    rst $20                                       ; $7DF2: $E7
    rst $38                                       ; $7DF3: $FF
    rst $38                                       ; $7DF4: $FF

jr_04F_7DF5:
    rst $38                                       ; $7DF5: $FF
    rst $38                                       ; $7DF6: $FF
    ld a, a                                       ; $7DF7: $7F
    rst $38                                       ; $7DF8: $FF
    cp a                                          ; $7DF9: $BF
    ld a, a                                       ; $7DFA: $7F
    rst $38                                       ; $7DFB: $FF
    rst $38                                       ; $7DFC: $FF
    rst $38                                       ; $7DFD: $FF
    rst $38                                       ; $7DFE: $FF
    ldh a, [rP1]                                  ; $7DFF: $F0 $00
    add sp, -$10                                  ; $7E01: $E8 $F0
    db $F4                                        ; $7E03: $F4
    ld hl, sp-$06                                 ; $7E04: $F8 $FA
    db $FC                                        ; $7E06: $FC
    cp $FC                                        ; $7E07: $FE $FC
    db $FD                                        ; $7E09: $FD
    cp $FF                                        ; $7E0A: $FE $FF
    cp $FD                                        ; $7E0C: $FE $FD
    cp $00                                        ; $7E0E: $FE $00
    nop                                           ; $7E10: $00
    nop                                           ; $7E11: $00
    nop                                           ; $7E12: $00
    nop                                           ; $7E13: $00
    nop                                           ; $7E14: $00
    inc bc                                        ; $7E15: $03
    rlca                                          ; $7E16: $07
    rlca                                          ; $7E17: $07
    rrca                                          ; $7E18: $0F
    rrca                                          ; $7E19: $0F
    rra                                           ; $7E1A: $1F
    rra                                           ; $7E1B: $1F
    rra                                           ; $7E1C: $1F
    rra                                           ; $7E1D: $1F
    rra                                           ; $7E1E: $1F
    nop                                           ; $7E1F: $00
    nop                                           ; $7E20: $00
    nop                                           ; $7E21: $00
    nop                                           ; $7E22: $00
    ld [bc], a                                    ; $7E23: $02
    ld bc, $0000                                  ; $7E24: $01 $00 $00
    nop                                           ; $7E27: $00
    nop                                           ; $7E28: $00
    nop                                           ; $7E29: $00
    nop                                           ; $7E2A: $00
    jr nz, jr_04F_7E2D                            ; $7E2B: $20 $00

jr_04F_7E2D:
    nop                                           ; $7E2D: $00
    jr nz, jr_04F_7E30                            ; $7E2E: $20 $00

jr_04F_7E30:
    nop                                           ; $7E30: $00
    nop                                           ; $7E31: $00
    nop                                           ; $7E32: $00
    jr nz, jr_04F_7DF5                            ; $7E33: $20 $C0

    ld h, b                                       ; $7E35: $60
    ldh a, [$30]                                  ; $7E36: $F0 $30
    jr c, jr_04F_7E52                             ; $7E38: $38 $18

    inc a                                         ; $7E3A: $3C
    inc e                                         ; $7E3B: $1C
    inc a                                         ; $7E3C: $3C
    inc e                                         ; $7E3D: $1C
    inc a                                         ; $7E3E: $3C
    nop                                           ; $7E3F: $00
    jr nc, jr_04F_7E52                            ; $7E40: $30 $10

    jr nc, jr_04F_7E5C                            ; $7E42: $30 $18

    rra                                           ; $7E44: $1F
    rrca                                          ; $7E45: $0F
    rra                                           ; $7E46: $1F
    rlca                                          ; $7E47: $07
    rrca                                          ; $7E48: $0F
    inc bc                                        ; $7E49: $03
    rlca                                          ; $7E4A: $07
    nop                                           ; $7E4B: $00
    nop                                           ; $7E4C: $00
    nop                                           ; $7E4D: $00
    nop                                           ; $7E4E: $00
    inc a                                         ; $7E4F: $3C
    inc a                                         ; $7E50: $3C
    inc a                                         ; $7E51: $3C

jr_04F_7E52:
    ld a, h                                       ; $7E52: $7C
    ld hl, sp-$04                                 ; $7E53: $F8 $FC
    db $FC                                        ; $7E55: $FC
    ld hl, sp-$10                                 ; $7E56: $F8 $F0
    ld hl, sp-$30                                 ; $7E58: $F8 $D0
    ldh [rP1], a                                  ; $7E5A: $E0 $00

jr_04F_7E5C:
    nop                                           ; $7E5C: $00
    nop                                           ; $7E5D: $00
    nop                                           ; $7E5E: $00
    nop                                           ; $7E5F: $00
    nop                                           ; $7E60: $00
    ld b, b                                       ; $7E61: $40
    nop                                           ; $7E62: $00
    nop                                           ; $7E63: $00
    stop                                          ; $7E64: $10 $00
    ld [$0400], sp                                ; $7E66: $08 $00 $04
    nop                                           ; $7E69: $00
    ld b, $02                                     ; $7E6A: $06 $02
    ld b, $02                                     ; $7E6C: $06 $02
    ld [bc], a                                    ; $7E6E: $02
    nop                                           ; $7E6F: $00
    nop                                           ; $7E70: $00
    ld b, b                                       ; $7E71: $40
    nop                                           ; $7E72: $00
    nop                                           ; $7E73: $00
    nop                                           ; $7E74: $00
    nop                                           ; $7E75: $00
    jr nz, jr_04F_7E78                            ; $7E76: $20 $00

jr_04F_7E78:
    stop                                          ; $7E78: $10 $00
    inc c                                         ; $7E7A: $0C
    inc bc                                        ; $7E7B: $03
    rlca                                          ; $7E7C: $07
    nop                                           ; $7E7D: $00
    nop                                           ; $7E7E: $00
    ld [bc], a                                    ; $7E7F: $02
    ld [bc], a                                    ; $7E80: $02
    ld [bc], a                                    ; $7E81: $02
    ld b, $04                                     ; $7E82: $06 $04
    ld b, $04                                     ; $7E84: $06 $04
    inc c                                         ; $7E86: $0C
    ld [$301C], sp                                ; $7E87: $08 $1C $30
    ld a, b                                       ; $7E8A: $78
    ret nz                                        ; $7E8B: $C0

    ldh [rP1], a                                  ; $7E8C: $E0 $00
    nop                                           ; $7E8E: $00
    nop                                           ; $7E8F: $00
    ld bc, $0100                                  ; $7E90: $01 $00 $01
    nop                                           ; $7E93: $00
    ld bc, $0200                                  ; $7E94: $01 $00 $02
    nop                                           ; $7E97: $00
    ld b, $00                                     ; $7E98: $06 $00
    inc c                                         ; $7E9A: $0C
    nop                                           ; $7E9B: $00
    jr jr_04F_7E9E                                ; $7E9C: $18 $00

jr_04F_7E9E:
    ldh [rP1], a                                  ; $7E9E: $E0 $00
    nop                                           ; $7EA0: $00
    nop                                           ; $7EA1: $00
    nop                                           ; $7EA2: $00
    nop                                           ; $7EA3: $00
    nop                                           ; $7EA4: $00
    db $10                                        ; $7EA5: $10
    ld [$180C], sp                                ; $7EA6: $08 $0C $18
    ld [rRAMG], sp                                ; $7EA9: $08 $00 $00
    nop                                           ; $7EAC: $00
    nop                                           ; $7EAD: $00
    nop                                           ; $7EAE: $00
    nop                                           ; $7EAF: $00
    nop                                           ; $7EB0: $00
    nop                                           ; $7EB1: $00
    nop                                           ; $7EB2: $00
    inc b                                         ; $7EB3: $04
    jr @+$20                                      ; $7EB4: $18 $1E

    inc a                                         ; $7EB6: $3C
    ld e, $3C                                     ; $7EB7: $1E $3C
    jr c, jr_04F_7ED7                             ; $7EB9: $38 $1C

    jr jr_04F_7EBD                                ; $7EBB: $18 $00

jr_04F_7EBD:
    nop                                           ; $7EBD: $00
    nop                                           ; $7EBE: $00
    nop                                           ; $7EBF: $00
    nop                                           ; $7EC0: $00
    inc h                                         ; $7EC1: $24
    jr jr_04F_7F40                                ; $7EC2: $18 $7C

    ld a, $3F                                     ; $7EC4: $3E $3F
    ld a, [hl]                                    ; $7EC6: $7E
    ccf                                           ; $7EC7: $3F
    ld a, [hl]                                    ; $7EC8: $7E
    ld a, h                                       ; $7EC9: $7C
    ld a, $1A                                     ; $7ECA: $3E $1A
    inc a                                         ; $7ECC: $3C
    jr jr_04F_7ECF                                ; $7ECD: $18 $00

jr_04F_7ECF:
    ld a, [hl-]                                   ; $7ECF: $3A
    inc e                                         ; $7ED0: $1C
    ccf                                           ; $7ED1: $3F
    ld a, [hl]                                    ; $7ED2: $7E
    cp $7F                                        ; $7ED3: $FE $7F
    ld a, a                                       ; $7ED5: $7F
    rst $38                                       ; $7ED6: $FF

jr_04F_7ED7:
    ld a, a                                       ; $7ED7: $7F
    rst $38                                       ; $7ED8: $FF
    ld a, a                                       ; $7ED9: $7F
    rst $38                                       ; $7EDA: $FF
    cp $7F                                        ; $7EDB: $FE $7F
    ld e, h                                       ; $7EDD: $5C
    ld a, $00                                     ; $7EDE: $3E $00
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

jr_04F_7F40:
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
