SECTION "ROM Bank $01e", ROMX[$4000], BANK[$1e]

    ld [bc], a                                    ; $4000: $02
    nop                                           ; $4001: $00
    daa                                           ; $4002: $27
    dec d                                         ; $4003: $15
    dec d                                         ; $4004: $15
    ld b, l                                       ; $4005: $45
    ld [de], a                                    ; $4006: $12
    ld a, a                                       ; $4007: $7F
    ld [hl], c                                    ; $4008: $71
    ld bc, $1418                                  ; $4009: $01 $18 $14
    ld b, l                                       ; $400C: $45
    cpl                                           ; $400D: $2F
    adc a                                         ; $400E: $8F
    ld b, l                                       ; $400F: $45
    ld bc, $0A04                                  ; $4010: $01 $04 $0A
    ld b, l                                       ; $4013: $45
    ld e, $BC                                     ; $4014: $1E $BC
    ld l, h                                       ; $4016: $6C
    sbc e                                         ; $4017: $9B
    cp b                                          ; $4018: $B8
    ld b, h                                       ; $4019: $44
    sbc a                                         ; $401A: $9F
    ld d, a                                       ; $401B: $57
    ld h, c                                       ; $401C: $61
    ld l, [hl]                                    ; $401D: $6E
    ld l, [hl]                                    ; $401E: $6E
    ld h, c                                       ; $401F: $61
    jr nz, jr_01E_4095                            ; $4020: $20 $73

    ld h, l                                       ; $4022: $65
    ld h, l                                       ; $4023: $65
    jr nz, jr_01E_409D                            ; $4024: $20 $77

    ld l, b                                       ; $4026: $68
    ld h, c                                       ; $4027: $61
    ld [hl], h                                    ; $4028: $74
    rst $38                                       ; $4029: $FF
    ld [hl], h                                    ; $402A: $74
    ld l, b                                       ; $402B: $68
    ld h, l                                       ; $402C: $65
    jr nz, jr_01E_407B                            ; $402D: $20 $4C

    ld h, c                                       ; $402F: $61
    halt                                          ; $4030: $76
    ld h, c                                       ; $4031: $61
    cp $41                                        ; $4032: $FE $41
    ld [hl], d                                    ; $4034: $72
    ld h, d                                       ; $4035: $62
    ld l, a                                       ; $4036: $6F
    ld l, h                                       ; $4037: $6C
    ld l, h                                       ; $4038: $6C
    jr nz, jr_01E_40AF                            ; $4039: $20 $74

    ld h, c                                       ; $403B: $61
    ld [hl], l                                    ; $403C: $75
    ld h, a                                       ; $403D: $67
    ld l, b                                       ; $403E: $68
    ld [hl], h                                    ; $403F: $74
    rst $38                                       ; $4040: $FF
    ld l, l                                       ; $4041: $6D
    ld h, l                                       ; $4042: $65
    jr nz, jr_01E_40AD                            ; $4043: $20 $68

    ld l, a                                       ; $4045: $6F
    ld [hl], a                                    ; $4046: $77
    jr nz, jr_01E_40BD                            ; $4047: $20 $74

    ld l, a                                       ; $4049: $6F
    jr nz, @+$66                                  ; $404A: $20 $64

    ld l, a                                       ; $404C: $6F
    ccf                                           ; $404D: $3F
    ccf                                           ; $404E: $3F
    cp $FD                                        ; $404F: $FE $FD
    sbc e                                         ; $4051: $9B
    ld a, b                                       ; $4052: $78
    ld [hl], b                                    ; $4053: $70
    sbc a                                         ; $4054: $9F
    jr nz, jr_01E_40AA                            ; $4055: $20 $53

    ld [hl], l                                    ; $4057: $75
    ld [hl], d                                    ; $4058: $72
    ld h, l                                       ; $4059: $65
    rst $38                                       ; $405A: $FF
    jr nz, jr_01E_40A6                            ; $405B: $20 $49

    daa                                           ; $405D: $27
    ld l, l                                       ; $405E: $6D
    jr nz, jr_01E_40C3                            ; $405F: $20 $62

    ld [hl], l                                    ; $4061: $75
    ld [hl], e                                    ; $4062: $73
    ld a, c                                       ; $4063: $79
    ld l, $2E                                     ; $4064: $2E $2E
    ld l, $FD                                     ; $4066: $2E $FD
    sbc h                                         ; $4068: $9C
    ld [bc], a                                    ; $4069: $02
    ld e, $70                                     ; $406A: $1E $70
    ld b, b                                       ; $406C: $40
    ld e, $EB                                     ; $406D: $1E $EB
    ld b, b                                       ; $406F: $40
    sbc c                                         ; $4070: $99
    sbc e                                         ; $4071: $9B
    ld a, b                                       ; $4072: $78
    ld [hl], b                                    ; $4073: $70
    sbc a                                         ; $4074: $9F
    ld d, e                                       ; $4075: $53
    ld [hl], l                                    ; $4076: $75
    ld [hl], d                                    ; $4077: $72
    ld h, l                                       ; $4078: $65
    ld l, $FE                                     ; $4079: $2E $FE

jr_01E_407B:
    db $FD                                        ; $407B: $FD
    sbc e                                         ; $407C: $9B
    cp b                                          ; $407D: $B8
    ld b, h                                       ; $407E: $44
    sbc a                                         ; $407F: $9F
    daa                                           ; $4080: $27
    ld l, e                                       ; $4081: $6B
    ld h, c                                       ; $4082: $61
    ld a, c                                       ; $4083: $79
    inc l                                         ; $4084: $2C
    jr nz, jr_01E_40FA                            ; $4085: $20 $73

    ld [hl], h                                    ; $4087: $74
    ld h, c                                       ; $4088: $61
    ld l, [hl]                                    ; $4089: $6E
    ld h, h                                       ; $408A: $64
    rst $38                                       ; $408B: $FF
    ld h, d                                       ; $408C: $62
    ld h, c                                       ; $408D: $61
    ld h, e                                       ; $408E: $63
    ld l, e                                       ; $408F: $6B
    jr nz, jr_01E_40F3                            ; $4090: $20 $61

    jr nz, jr_01E_4100                            ; $4092: $20 $6C

    ld l, c                                       ; $4094: $69

jr_01E_4095:
    ld [hl], h                                    ; $4095: $74
    ld [hl], h                                    ; $4096: $74
    ld l, h                                       ; $4097: $6C
    ld h, l                                       ; $4098: $65
    ld hl, $FDFE                                  ; $4099: $21 $FE $FD
    sbc e                                         ; $409C: $9B

jr_01E_409D:
    ld a, b                                       ; $409D: $78
    ld [hl], b                                    ; $409E: $70
    sbc a                                         ; $409F: $9F
    ld d, a                                       ; $40A0: $57
    ld l, b                                       ; $40A1: $68
    ld a, c                                       ; $40A2: $79
    ccf                                           ; $40A3: $3F
    cp $FD                                        ; $40A4: $FE $FD

jr_01E_40A6:
    sbc e                                         ; $40A6: $9B
    cp b                                          ; $40A7: $B8
    ld b, h                                       ; $40A8: $44
    sbc a                                         ; $40A9: $9F

jr_01E_40AA:
    ld d, h                                       ; $40AA: $54
    ld [hl], d                                    ; $40AB: $72
    ld [hl], l                                    ; $40AC: $75

jr_01E_40AD:
    ld [hl], e                                    ; $40AD: $73
    ld [hl], h                                    ; $40AE: $74

jr_01E_40AF:
    jr nz, jr_01E_411E                            ; $40AF: $20 $6D

    ld h, l                                       ; $40B1: $65
    ld l, $2E                                     ; $40B2: $2E $2E
    ld l, $FE                                     ; $40B4: $2E $FE
    db $FD                                        ; $40B6: $FD
    sbc e                                         ; $40B7: $9B
    ld a, b                                       ; $40B8: $78
    ld [hl], b                                    ; $40B9: $70
    sbc a                                         ; $40BA: $9F
    ld c, a                                       ; $40BB: $4F
    ld l, e                                       ; $40BC: $6B

jr_01E_40BD:
    ld h, c                                       ; $40BD: $61
    ld a, c                                       ; $40BE: $79
    ld l, $2E                                     ; $40BF: $2E $2E
    ld l, $2E                                     ; $40C1: $2E $2E

jr_01E_40C3:
    cp $FD                                        ; $40C3: $FE $FD
    sbc d                                         ; $40C5: $9A
    rlca                                          ; $40C6: $07
    nop                                           ; $40C7: $00
    ld l, e                                       ; $40C8: $6B
    ld c, d                                       ; $40C9: $4A
    add hl, bc                                    ; $40CA: $09
    nop                                           ; $40CB: $00
    ld e, $D4                                     ; $40CC: $1E $D4
    ld c, d                                       ; $40CE: $4A
    ld h, b                                       ; $40CF: $60
    ld bc, $B89B                                  ; $40D0: $01 $9B $B8
    ld b, h                                       ; $40D3: $44
    sbc a                                         ; $40D4: $9F
    ld c, b                                       ; $40D5: $48
    ld h, l                                       ; $40D6: $65
    ld [hl], d                                    ; $40D7: $72
    ld h, l                                       ; $40D8: $65
    jr nz, @+$69                                  ; $40D9: $20 $67

    ld l, a                                       ; $40DB: $6F
    ld h, l                                       ; $40DC: $65
    ld [hl], e                                    ; $40DD: $73
    ld l, $2E                                     ; $40DE: $2E $2E
    ld l, $2E                                     ; $40E0: $2E $2E
    cp $FD                                        ; $40E2: $FE $FD
    sbc d                                         ; $40E4: $9A
    add hl, bc                                    ; $40E5: $09
    ld [bc], a                                    ; $40E6: $02
    ld e, $E5                                     ; $40E7: $1E $E5
    ld c, d                                       ; $40E9: $4A
    ld b, d                                       ; $40EA: $42
    sbc c                                         ; $40EB: $99
    sbc e                                         ; $40EC: $9B
    ld a, b                                       ; $40ED: $78
    ld [hl], b                                    ; $40EE: $70
    sbc a                                         ; $40EF: $9F
    ld c, c                                       ; $40F0: $49
    daa                                           ; $40F1: $27
    ld l, l                                       ; $40F2: $6D

jr_01E_40F3:
    jr nz, jr_01E_4157                            ; $40F3: $20 $62

    ld [hl], l                                    ; $40F5: $75
    ld [hl], e                                    ; $40F6: $73
    ld a, c                                       ; $40F7: $79

jr_01E_40F8:
    ld l, $2E                                     ; $40F8: $2E $2E

jr_01E_40FA:
    ld l, $FE                                     ; $40FA: $2E $FE
    db $FD                                        ; $40FC: $FD
    sbc e                                         ; $40FD: $9B
    cp b                                          ; $40FE: $B8
    ld b, h                                       ; $40FF: $44

jr_01E_4100:
    sbc a                                         ; $4100: $9F
    ld e, c                                       ; $4101: $59
    ld l, a                                       ; $4102: $6F
    ld [hl], l                                    ; $4103: $75
    daa                                           ; $4104: $27
    ld [hl], d                                    ; $4105: $72
    ld h, l                                       ; $4106: $65
    jr nz, jr_01E_4176                            ; $4107: $20 $6D

    ld h, l                                       ; $4109: $65
    ld h, c                                       ; $410A: $61
    ld l, [hl]                                    ; $410B: $6E
    ld hl, $FDFE                                  ; $410C: $21 $FE $FD
    sbc d                                         ; $410F: $9A
    add hl, bc                                    ; $4110: $09
    ld [bc], a                                    ; $4111: $02
    ld e, $42                                     ; $4112: $1E $42
    ld c, e                                       ; $4114: $4B
    ld b, d                                       ; $4115: $42
    sbc e                                         ; $4116: $9B
    cp b                                          ; $4117: $B8
    ld b, h                                       ; $4118: $44
    sbc a                                         ; $4119: $9F
    ld d, h                                       ; $411A: $54
    ld l, a                                       ; $411B: $6F
    ld l, h                                       ; $411C: $6C
    ld h, h                                       ; $411D: $64

jr_01E_411E:
    jr nz, jr_01E_4199                            ; $411E: $20 $79

    ld l, a                                       ; $4120: $6F
    ld [hl], l                                    ; $4121: $75
    ld l, $2E                                     ; $4122: $2E $2E
    ld l, $FE                                     ; $4124: $2E $FE
    db $FD                                        ; $4126: $FD
    sbc e                                         ; $4127: $9B
    ld a, b                                       ; $4128: $78
    ld [hl], b                                    ; $4129: $70
    sbc a                                         ; $412A: $9F
    ld l, $2E                                     ; $412B: $2E $2E
    ld l, $2E                                     ; $412D: $2E $2E
    ld l, $2E                                     ; $412F: $2E $2E
    ld l, $2E                                     ; $4131: $2E $2E
    ld l, $2E                                     ; $4133: $2E $2E
    ld l, $FE                                     ; $4135: $2E $FE
    db $FD                                        ; $4137: $FD
    sbc d                                         ; $4138: $9A
    ld e, b                                       ; $4139: $58
    ld bc, $0007                                  ; $413A: $01 $07 $00
    add c                                         ; $413D: $81
    ld e, l                                       ; $413E: $5D
    add hl, bc                                    ; $413F: $09
    nop                                           ; $4140: $00
    jr nz, jr_01E_40F8                            ; $4141: $20 $B5

    ld d, b                                       ; $4143: $50
    ld b, d                                       ; $4144: $42
    sbc e                                         ; $4145: $9B
    add hl, de                                    ; $4146: $19
    ld c, [hl]                                    ; $4147: $4E
    sbc a                                         ; $4148: $9F
    ld d, a                                       ; $4149: $57
    ld b, c                                       ; $414A: $41
    ld c, c                                       ; $414B: $49
    ld d, h                                       ; $414C: $54
    ld hl, $2121                                  ; $414D: $21 $21 $21
    cp $49                                        ; $4150: $FE $49
    jr nz, jr_01E_41CB                            ; $4152: $20 $77

    ld h, c                                       ; $4154: $61
    ld l, [hl]                                    ; $4155: $6E
    ld l, [hl]                                    ; $4156: $6E

jr_01E_4157:
    ld h, c                                       ; $4157: $61
    jr nz, @+$75                                  ; $4158: $20 $73

    ld h, l                                       ; $415A: $65
    ld h, l                                       ; $415B: $65
    ld hl, $FDFE                                  ; $415C: $21 $FE $FD
    sbc e                                         ; $415F: $9B
    cp b                                          ; $4160: $B8
    ld b, h                                       ; $4161: $44
    sbc a                                         ; $4162: $9F
    ld b, a                                       ; $4163: $47
    ld h, l                                       ; $4164: $65
    ld [hl], h                                    ; $4165: $74
    jr nz, jr_01E_41D7                            ; $4166: $20 $6F

    ld [hl], l                                    ; $4168: $75
    ld [hl], h                                    ; $4169: $74
    ld [hl], h                                    ; $416A: $74
    ld h, c                                       ; $416B: $61
    rst $38                                       ; $416C: $FF
    ld l, l                                       ; $416D: $6D
    ld a, c                                       ; $416E: $79
    jr nz, jr_01E_41E8                            ; $416F: $20 $77

    ld h, c                                       ; $4171: $61
    ld a, c                                       ; $4172: $79
    ld hl, $FDFE                                  ; $4173: $21 $FE $FD

jr_01E_4176:
    sbc e                                         ; $4176: $9B
    add hl, de                                    ; $4177: $19
    ld c, [hl]                                    ; $4178: $4E
    sbc a                                         ; $4179: $9F
    ld c, [hl]                                    ; $417A: $4E
    ld c, a                                       ; $417B: $4F
    ld hl, $4920                                  ; $417C: $21 $20 $49
    jr nz, @+$75                                  ; $417F: $20 $73

    ld h, c                                       ; $4181: $61
    ld l, c                                       ; $4182: $69
    ld h, h                                       ; $4183: $64
    rst $38                                       ; $4184: $FF
    ld c, c                                       ; $4185: $49
    jr nz, jr_01E_41FF                            ; $4186: $20 $77

    ld h, c                                       ; $4188: $61
    ld l, [hl]                                    ; $4189: $6E
    ld l, [hl]                                    ; $418A: $6E
    ld h, c                                       ; $418B: $61
    jr nz, jr_01E_4201                            ; $418C: $20 $73

    ld h, l                                       ; $418E: $65
    ld h, l                                       ; $418F: $65
    ld hl, $FDFE                                  ; $4190: $21 $FE $FD
    sbc e                                         ; $4193: $9B
    cp b                                          ; $4194: $B8
    ld b, h                                       ; $4195: $44
    sbc a                                         ; $4196: $9F
    ld b, h                                       ; $4197: $44
    ld l, a                                       ; $4198: $6F

jr_01E_4199:
    ld l, [hl]                                    ; $4199: $6E
    daa                                           ; $419A: $27
    ld [hl], h                                    ; $419B: $74
    jr nz, jr_01E_4211                            ; $419C: $20 $73

    ld h, c                                       ; $419E: $61
    ld a, c                                       ; $419F: $79
    jr nz, @+$4B                                  ; $41A0: $20 $49

    rst $38                                       ; $41A2: $FF
    ld h, h                                       ; $41A3: $64
    ld l, c                                       ; $41A4: $69
    ld h, h                                       ; $41A5: $64
    ld l, [hl]                                    ; $41A6: $6E
    daa                                           ; $41A7: $27
    ld [hl], h                                    ; $41A8: $74
    jr nz, @+$79                                  ; $41A9: $20 $77

    ld h, c                                       ; $41AB: $61
    ld [hl], d                                    ; $41AC: $72
    ld l, [hl]                                    ; $41AD: $6E
    cp $79                                        ; $41AE: $FE $79
    ld l, a                                       ; $41B0: $6F
    ld [hl], l                                    ; $41B1: $75
    ld l, $2E                                     ; $41B2: $2E $2E
    ld l, $2E                                     ; $41B4: $2E $2E
    ld l, $FE                                     ; $41B6: $2E $FE
    db $FD                                        ; $41B8: $FD
    sbc d                                         ; $41B9: $9A
    ld e, b                                       ; $41BA: $58
    inc c                                         ; $41BB: $0C
    ld b, d                                       ; $41BC: $42
    sbc e                                         ; $41BD: $9B
    add hl, de                                    ; $41BE: $19
    ld c, [hl]                                    ; $41BF: $4E
    sbc a                                         ; $41C0: $9F
    ld b, c                                       ; $41C1: $41
    ld c, c                                       ; $41C2: $49
    ld c, c                                       ; $41C3: $49
    ld c, c                                       ; $41C4: $49
    ld c, c                                       ; $41C5: $49
    ld b, a                                       ; $41C6: $47
    ld b, a                                       ; $41C7: $47
    ld b, a                                       ; $41C8: $47
    ld c, b                                       ; $41C9: $48
    ld c, b                                       ; $41CA: $48

jr_01E_41CB:
    ld c, b                                       ; $41CB: $48
    ld hl, $FF21                                  ; $41CC: $21 $21 $FF
    db $FD                                        ; $41CF: $FD
    sbc d                                         ; $41D0: $9A
    ld b, d                                       ; $41D1: $42
    sbc e                                         ; $41D2: $9B
    add hl, de                                    ; $41D3: $19
    ld c, [hl]                                    ; $41D4: $4E
    sbc a                                         ; $41D5: $9F
    ld d, b                                       ; $41D6: $50

jr_01E_41D7:
    ld l, b                                       ; $41D7: $68
    ld h, l                                       ; $41D8: $65
    ld [hl], a                                    ; $41D9: $77
    ld l, $2E                                     ; $41DA: $2E $2E
    ld l, $2E                                     ; $41DC: $2E $2E
    ld l, $FE                                     ; $41DE: $2E $FE
    db $FD                                        ; $41E0: $FD
    sbc d                                         ; $41E1: $9A
    ld e, b                                       ; $41E2: $58
    scf                                           ; $41E3: $37
    ld b, d                                       ; $41E4: $42
    sbc e                                         ; $41E5: $9B
    cp b                                          ; $41E6: $B8
    ld b, h                                       ; $41E7: $44

jr_01E_41E8:
    sbc a                                         ; $41E8: $9F
    ld c, c                                       ; $41E9: $49
    jr nz, @+$76                                  ; $41EA: $20 $74

    ld l, a                                       ; $41EC: $6F
    ld l, h                                       ; $41ED: $6C
    ld h, h                                       ; $41EE: $64
    jr nz, jr_01E_4259                            ; $41EF: $20 $68

    ld l, c                                       ; $41F1: $69
    ld l, l                                       ; $41F2: $6D
    ld l, $2E                                     ; $41F3: $2E $2E
    ld l, $FE                                     ; $41F5: $2E $FE
    db $FD                                        ; $41F7: $FD
    sbc d                                         ; $41F8: $9A
    ld e, b                                       ; $41F9: $58
    ld bc, $9B42                                  ; $41FA: $01 $42 $9B
    sbc c                                         ; $41FD: $99
    ld b, c                                       ; $41FE: $41

jr_01E_41FF:
    sbc a                                         ; $41FF: $9F
    ld b, c                                       ; $4200: $41

jr_01E_4201:
    ld [hl], h                                    ; $4201: $74
    jr nz, jr_01E_4278                            ; $4202: $20 $74

    ld l, b                                       ; $4204: $68
    ld l, c                                       ; $4205: $69
    ld [hl], e                                    ; $4206: $73
    jr nz, jr_01E_427B                            ; $4207: $20 $72

    ld h, c                                       ; $4209: $61
    ld [hl], h                                    ; $420A: $74
    ld h, l                                       ; $420B: $65
    inc l                                         ; $420C: $2C
    rst $38                                       ; $420D: $FF
    ld a, c                                       ; $420E: $79
    ld l, a                                       ; $420F: $6F
    ld [hl], l                                    ; $4210: $75

jr_01E_4211:
    daa                                           ; $4211: $27
    ld l, h                                       ; $4212: $6C
    ld l, h                                       ; $4213: $6C
    jr nz, jr_01E_4283                            ; $4214: $20 $6D

    ld h, c                                       ; $4216: $61
    ld l, e                                       ; $4217: $6B
    ld h, l                                       ; $4218: $65
    cp $6D                                        ; $4219: $FE $6D
    ld h, l                                       ; $421B: $65
    jr nz, jr_01E_428A                            ; $421C: $20 $6C

    ld l, a                                       ; $421E: $6F
    ld [hl], e                                    ; $421F: $73
    ld h, l                                       ; $4220: $65
    jr nz, jr_01E_4290                            ; $4221: $20 $6D

    ld a, c                                       ; $4223: $79
    jr nz, jr_01E_4290                            ; $4224: $20 $6A

    ld l, a                                       ; $4226: $6F
    ld h, d                                       ; $4227: $62
    rst $38                                       ; $4228: $FF
    ld h, c                                       ; $4229: $61
    ld [hl], e                                    ; $422A: $73
    jr nz, jr_01E_4270                            ; $422B: $20 $43

    ld h, c                                       ; $422D: $61
    ld l, h                                       ; $422E: $6C
    ld h, h                                       ; $422F: $64
    jr nz, jr_01E_4279                            ; $4230: $20 $47

    ld [hl], l                                    ; $4232: $75
    ld h, c                                       ; $4233: $61
    ld [hl], d                                    ; $4234: $72
    ld h, h                                       ; $4235: $64
    ld hl, $FDFE                                  ; $4236: $21 $FE $FD
    sbc d                                         ; $4239: $9A
    ld e, b                                       ; $423A: $58
    ld bc, $9B42                                  ; $423B: $01 $42 $9B
    add hl, de                                    ; $423E: $19
    ld c, [hl]                                    ; $423F: $4E
    sbc a                                         ; $4240: $9F
    ld c, b                                       ; $4241: $48
    ld h, l                                       ; $4242: $65
    jr nz, jr_01E_42B9                            ; $4243: $20 $74

    ld l, b                                       ; $4245: $68
    ld l, c                                       ; $4246: $69
    ld l, [hl]                                    ; $4247: $6E
    ld l, e                                       ; $4248: $6B
    ld [hl], e                                    ; $4249: $73
    jr nz, jr_01E_42B4                            ; $424A: $20 $68

    ld h, l                                       ; $424C: $65
    rst $38                                       ; $424D: $FF
    ld l, c                                       ; $424E: $69
    ld [hl], e                                    ; $424F: $73
    jr nz, jr_01E_42C5                            ; $4250: $20 $73

    ld [hl], l                                    ; $4252: $75
    ld h, e                                       ; $4253: $63
    ld l, b                                       ; $4254: $68
    jr nz, jr_01E_42B8                            ; $4255: $20 $61

    cp $68                                        ; $4257: $FE $68

jr_01E_4259:
    ld l, a                                       ; $4259: $6F
    ld [hl], h                                    ; $425A: $74
    ld [hl], e                                    ; $425B: $73
    ld l, b                                       ; $425C: $68
    ld l, a                                       ; $425D: $6F
    ld [hl], h                                    ; $425E: $74
    ld hl, $FDFE                                  ; $425F: $21 $FE $FD
    sbc d                                         ; $4262: $9A
    ld e, b                                       ; $4263: $58
    ld bc, $9B42                                  ; $4264: $01 $42 $9B
    add hl, bc                                    ; $4267: $09
    ld b, b                                       ; $4268: $40
    sbc a                                         ; $4269: $9F
    ld d, b                                       ; $426A: $50
    ld l, h                                       ; $426B: $6C
    ld h, l                                       ; $426C: $65
    ld h, c                                       ; $426D: $61
    ld [hl], e                                    ; $426E: $73
    ld h, l                                       ; $426F: $65

jr_01E_4270:
    jr nz, jr_01E_42E9                            ; $4270: $20 $77

    ld h, c                                       ; $4272: $61
    ld [hl], h                                    ; $4273: $74
    ld h, e                                       ; $4274: $63
    ld l, b                                       ; $4275: $68
    rst $38                                       ; $4276: $FF
    ld h, [hl]                                    ; $4277: $66

jr_01E_4278:
    ld [hl], d                                    ; $4278: $72

jr_01E_4279:
    ld l, a                                       ; $4279: $6F
    ld l, l                                       ; $427A: $6D

jr_01E_427B:
    jr nz, jr_01E_42E5                            ; $427B: $20 $68

    ld h, l                                       ; $427D: $65
    ld [hl], d                                    ; $427E: $72
    ld h, l                                       ; $427F: $65
    ld l, $20                                     ; $4280: $2E $20
    ld c, c                                       ; $4282: $49

jr_01E_4283:
    cp $68                                        ; $4283: $FE $68
    ld l, a                                       ; $4285: $6F
    ld [hl], b                                    ; $4286: $70
    ld h, l                                       ; $4287: $65
    jr nz, jr_01E_4303                            ; $4288: $20 $79

jr_01E_428A:
    ld l, a                                       ; $428A: $6F
    ld [hl], l                                    ; $428B: $75
    jr nz, jr_01E_4305                            ; $428C: $20 $77

    ld l, c                                       ; $428E: $69
    ld l, h                                       ; $428F: $6C

jr_01E_4290:
    ld l, h                                       ; $4290: $6C
    rst $38                                       ; $4291: $FF
    ld h, l                                       ; $4292: $65
    ld l, [hl]                                    ; $4293: $6E
    ld l, d                                       ; $4294: $6A
    ld l, a                                       ; $4295: $6F
    ld a, c                                       ; $4296: $79
    jr nz, jr_01E_4302                            ; $4297: $20 $69

    ld [hl], h                                    ; $4299: $74
    ld l, $FE                                     ; $429A: $2E $FE
    db $FD                                        ; $429C: $FD
    sbc d                                         ; $429D: $9A
    ld e, b                                       ; $429E: $58
    ld bc, $9B42                                  ; $429F: $01 $42 $9B
    add hl, bc                                    ; $42A2: $09
    ld b, b                                       ; $42A3: $40
    sbc a                                         ; $42A4: $9F
    ld c, h                                       ; $42A5: $4C
    ld b, c                                       ; $42A6: $41
    ld b, h                                       ; $42A7: $44
    ld c, c                                       ; $42A8: $49
    ld b, l                                       ; $42A9: $45
    ld d, e                                       ; $42AA: $53
    jr nz, @+$43                                  ; $42AB: $20 $41

    ld c, [hl]                                    ; $42AD: $4E
    ld b, h                                       ; $42AE: $44
    rst $38                                       ; $42AF: $FF
    ld b, a                                       ; $42B0: $47
    ld b, l                                       ; $42B1: $45
    ld c, [hl]                                    ; $42B2: $4E
    ld d, h                                       ; $42B3: $54

jr_01E_42B4:
    ld c, h                                       ; $42B4: $4C
    ld b, l                                       ; $42B5: $45
    ld c, l                                       ; $42B6: $4D
    ld b, l                                       ; $42B7: $45

jr_01E_42B8:
    ld c, [hl]                                    ; $42B8: $4E

jr_01E_42B9:
    ld hl, $54FE                                  ; $42B9: $21 $FE $54
    ld l, b                                       ; $42BC: $68
    ld h, l                                       ; $42BD: $65
    jr nz, jr_01E_430E                            ; $42BE: $20 $4E

    ld h, c                                       ; $42C0: $61
    ld h, a                                       ; $42C1: $67
    ld h, c                                       ; $42C2: $61
    ld l, l                                       ; $42C3: $6D
    ld h, c                                       ; $42C4: $61

jr_01E_42C5:
    ld [hl], h                                    ; $42C5: $74
    rst $38                                       ; $42C6: $FF
    ld d, e                                       ; $42C7: $53
    ld [hl], h                                    ; $42C8: $74
    ld h, c                                       ; $42C9: $61
    ld h, a                                       ; $42CA: $67
    ld h, l                                       ; $42CB: $65
    jr nz, jr_01E_430F                            ; $42CC: $20 $41

    ld h, e                                       ; $42CE: $63
    ld [hl], h                                    ; $42CF: $74
    ld l, a                                       ; $42D0: $6F
    ld [hl], d                                    ; $42D1: $72
    daa                                           ; $42D2: $27
    ld [hl], e                                    ; $42D3: $73
    cp $47                                        ; $42D4: $FE $47
    ld [hl], l                                    ; $42D6: $75
    ld l, c                                       ; $42D7: $69
    ld l, h                                       ; $42D8: $6C
    ld h, h                                       ; $42D9: $64
    jr nz, jr_01E_434C                            ; $42DA: $20 $70

    ld [hl], d                                    ; $42DC: $72
    ld l, a                                       ; $42DD: $6F
    ld [hl], l                                    ; $42DE: $75
    ld h, h                                       ; $42DF: $64
    ld l, h                                       ; $42E0: $6C
    ld a, c                                       ; $42E1: $79
    rst $38                                       ; $42E2: $FF
    ld [hl], b                                    ; $42E3: $70
    ld [hl], d                                    ; $42E4: $72

jr_01E_42E5:
    ld h, l                                       ; $42E5: $65
    ld [hl], e                                    ; $42E6: $73
    ld h, l                                       ; $42E7: $65
    ld l, [hl]                                    ; $42E8: $6E

jr_01E_42E9:
    ld [hl], h                                    ; $42E9: $74
    ld [hl], e                                    ; $42EA: $73
    jr nz, jr_01E_434E                            ; $42EB: $20 $61

    cp $73                                        ; $42ED: $FE $73
    ld [hl], b                                    ; $42EF: $70
    ld h, l                                       ; $42F0: $65
    ld h, e                                       ; $42F1: $63
    ld l, c                                       ; $42F2: $69
    ld h, c                                       ; $42F3: $61
    ld l, h                                       ; $42F4: $6C
    rst $38                                       ; $42F5: $FF
    ld [hl], b                                    ; $42F6: $70
    ld [hl], d                                    ; $42F7: $72
    ld l, a                                       ; $42F8: $6F
    ld h, h                                       ; $42F9: $64
    ld [hl], l                                    ; $42FA: $75
    ld h, e                                       ; $42FB: $63
    ld [hl], h                                    ; $42FC: $74
    ld l, c                                       ; $42FD: $69
    ld l, a                                       ; $42FE: $6F
    ld l, [hl]                                    ; $42FF: $6E
    cp $74                                        ; $4300: $FE $74

jr_01E_4302:
    ld l, a                                       ; $4302: $6F

jr_01E_4303:
    jr nz, jr_01E_436D                            ; $4303: $20 $68

jr_01E_4305:
    ld l, a                                       ; $4305: $6F
    ld l, [hl]                                    ; $4306: $6E
    ld l, a                                       ; $4307: $6F
    ld [hl], d                                    ; $4308: $72
    jr nz, jr_01E_434E                            ; $4309: $20 $43

    ld h, c                                       ; $430B: $61
    ld l, h                                       ; $430C: $6C
    ld h, h                                       ; $430D: $64

jr_01E_430E:
    daa                                           ; $430E: $27

jr_01E_430F:
    ld [hl], e                                    ; $430F: $73
    rst $38                                       ; $4310: $FF
    ld l, [hl]                                    ; $4311: $6E
    ld h, l                                       ; $4312: $65
    ld [hl], a                                    ; $4313: $77
    jr nz, jr_01E_437E                            ; $4314: $20 $68

    ld h, l                                       ; $4316: $65
    ld [hl], d                                    ; $4317: $72
    ld l, a                                       ; $4318: $6F
    inc l                                         ; $4319: $2C
    jr nz, jr_01E_4370                            ; $431A: $20 $54

    ld l, a                                       ; $431C: $6F
    ld l, [hl]                                    ; $431D: $6E
    ld a, c                                       ; $431E: $79
    ld hl, $FDFE                                  ; $431F: $21 $FE $FD
    sbc d                                         ; $4322: $9A
    ld e, b                                       ; $4323: $58
    ld [bc], a                                    ; $4324: $02
    ld b, d                                       ; $4325: $42
    sbc e                                         ; $4326: $9B
    add hl, bc                                    ; $4327: $09
    ld b, b                                       ; $4328: $40
    sbc a                                         ; $4329: $9F
    ld e, c                                       ; $432A: $59
    ld h, l                                       ; $432B: $65
    ld [hl], e                                    ; $432C: $73
    inc l                                         ; $432D: $2C
    jr nz, jr_01E_43A4                            ; $432E: $20 $74

    ld l, b                                       ; $4330: $68
    ld l, a                                       ; $4331: $6F
    ld [hl], l                                    ; $4332: $75
    ld h, a                                       ; $4333: $67
    ld l, b                                       ; $4334: $68
    rst $38                                       ; $4335: $FF
    ld l, a                                       ; $4336: $6F
    ld [hl], d                                    ; $4337: $72
    ld l, c                                       ; $4338: $69
    ld h, a                                       ; $4339: $67
    ld l, c                                       ; $433A: $69
    ld l, [hl]                                    ; $433B: $6E
    ld h, c                                       ; $433C: $61
    ld l, h                                       ; $433D: $6C
    ld l, h                                       ; $433E: $6C
    ld a, c                                       ; $433F: $79
    jr nz, jr_01E_43B1                            ; $4340: $20 $6F

    ld [hl], l                                    ; $4342: $75
    ld [hl], d                                    ; $4343: $72
    cp $74                                        ; $4344: $FE $74
    ld l, a                                       ; $4346: $6F
    ld [hl], a                                    ; $4347: $77
    ld l, [hl]                                    ; $4348: $6E
    ld [hl], e                                    ; $4349: $73
    ld [hl], b                                    ; $434A: $70
    ld h, l                                       ; $434B: $65

jr_01E_434C:
    ld l, a                                       ; $434C: $6F
    ld [hl], b                                    ; $434D: $70

jr_01E_434E:
    ld l, h                                       ; $434E: $6C
    ld h, l                                       ; $434F: $65
    rst $38                                       ; $4350: $FF
    ld h, [hl]                                    ; $4351: $66
    ld [hl], d                                    ; $4352: $72
    ld l, a                                       ; $4353: $6F
    ld [hl], a                                    ; $4354: $77
    ld l, [hl]                                    ; $4355: $6E
    ld h, l                                       ; $4356: $65
    ld h, h                                       ; $4357: $64
    jr nz, jr_01E_43CF                            ; $4358: $20 $75

    ld [hl], b                                    ; $435A: $70
    ld l, a                                       ; $435B: $6F
    ld l, [hl]                                    ; $435C: $6E
    cp $68                                        ; $435D: $FE $68
    ld l, c                                       ; $435F: $69
    ld l, l                                       ; $4360: $6D
    inc l                                         ; $4361: $2C
    jr nz, jr_01E_43D8                            ; $4362: $20 $74

    ld l, b                                       ; $4364: $68
    ld l, c                                       ; $4365: $69
    ld [hl], e                                    ; $4366: $73
    jr nz, jr_01E_43CB                            ; $4367: $20 $62

    ld [hl], d                                    ; $4369: $72
    ld h, c                                       ; $436A: $61
    halt                                          ; $436B: $76
    ld h, l                                       ; $436C: $65

jr_01E_436D:
    rst $38                                       ; $436D: $FF
    ld [hl], b                                    ; $436E: $70
    ld h, l                                       ; $436F: $65

jr_01E_4370:
    ld [hl], d                                    ; $4370: $72
    ld [hl], e                                    ; $4371: $73
    ld l, a                                       ; $4372: $6F
    ld l, [hl]                                    ; $4373: $6E
    jr nz, jr_01E_43DE                            ; $4374: $20 $68

    ld h, c                                       ; $4376: $61
    ld [hl], e                                    ; $4377: $73
    cp $73                                        ; $4378: $FE $73
    ld h, c                                       ; $437A: $61
    halt                                          ; $437B: $76
    ld h, l                                       ; $437C: $65
    ld h, h                                       ; $437D: $64

jr_01E_437E:
    jr nz, @+$71                                  ; $437E: $20 $6F

    ld [hl], l                                    ; $4380: $75
    ld [hl], d                                    ; $4381: $72
    jr nz, jr_01E_43F8                            ; $4382: $20 $74

    ld l, a                                       ; $4384: $6F
    ld [hl], a                                    ; $4385: $77
    ld l, [hl]                                    ; $4386: $6E
    rst $38                                       ; $4387: $FF
    ld h, [hl]                                    ; $4388: $66
    ld [hl], d                                    ; $4389: $72
    ld l, a                                       ; $438A: $6F
    ld l, l                                       ; $438B: $6D
    jr nz, jr_01E_43F3                            ; $438C: $20 $65

    halt                                          ; $438E: $76
    ld l, c                                       ; $438F: $69
    ld l, h                                       ; $4390: $6C
    jr nz, jr_01E_4401                            ; $4391: $20 $6E

    ld l, a                                       ; $4393: $6F
    ld [hl], h                                    ; $4394: $74
    cp $6A                                        ; $4395: $FE $6A
    ld [hl], l                                    ; $4397: $75
    ld [hl], e                                    ; $4398: $73
    ld [hl], h                                    ; $4399: $74
    jr nz, @+$71                                  ; $439A: $20 $6F

    ld l, [hl]                                    ; $439C: $6E
    ld h, e                                       ; $439D: $63
    ld h, l                                       ; $439E: $65
    inc l                                         ; $439F: $2C
    jr nz, jr_01E_4404                            ; $43A0: $20 $62

    ld [hl], l                                    ; $43A2: $75
    ld [hl], h                                    ; $43A3: $74

jr_01E_43A4:
    rst $38                                       ; $43A4: $FF
    ld [hl], h                                    ; $43A5: $74
    ld [hl], a                                    ; $43A6: $77
    ld l, c                                       ; $43A7: $69
    ld h, e                                       ; $43A8: $63
    ld h, l                                       ; $43A9: $65
    ld hl, $FDFE                                  ; $43AA: $21 $FE $FD
    sbc d                                         ; $43AD: $9A
    sbc e                                         ; $43AE: $9B
    add hl, bc                                    ; $43AF: $09
    ld b, b                                       ; $43B0: $40

jr_01E_43B1:
    sbc a                                         ; $43B1: $9F
    ld c, d                                       ; $43B2: $4A
    ld l, a                                       ; $43B3: $6F
    ld l, c                                       ; $43B4: $69
    ld l, [hl]                                    ; $43B5: $6E
    jr nz, jr_01E_442D                            ; $43B6: $20 $75

    ld [hl], e                                    ; $43B8: $73
    jr nz, jr_01E_4429                            ; $43B9: $20 $6E

    ld l, a                                       ; $43BB: $6F
    ld [hl], a                                    ; $43BC: $77
    inc l                                         ; $43BD: $2C
    rst $38                                       ; $43BE: $FF
    ld h, c                                       ; $43BF: $61
    ld [hl], e                                    ; $43C0: $73
    jr nz, jr_01E_443A                            ; $43C1: $20 $77

    ld h, l                                       ; $43C3: $65
    jr nz, jr_01E_4436                            ; $43C4: $20 $70

    ld l, a                                       ; $43C6: $6F
    ld [hl], d                                    ; $43C7: $72
    ld [hl], h                                    ; $43C8: $74
    ld [hl], d                                    ; $43C9: $72
    ld h, c                                       ; $43CA: $61

jr_01E_43CB:
    ld a, c                                       ; $43CB: $79
    cp $68                                        ; $43CC: $FE $68
    ld l, c                                       ; $43CE: $69

jr_01E_43CF:
    ld [hl], e                                    ; $43CF: $73
    jr nz, jr_01E_4439                            ; $43D0: $20 $67

    ld h, c                                       ; $43D2: $61
    ld l, h                                       ; $43D3: $6C
    ld l, h                                       ; $43D4: $6C
    ld h, c                                       ; $43D5: $61
    ld l, [hl]                                    ; $43D6: $6E
    ld [hl], h                                    ; $43D7: $74

jr_01E_43D8:
    rst $38                                       ; $43D8: $FF
    ld h, l                                       ; $43D9: $65
    ld h, [hl]                                    ; $43DA: $66
    ld h, [hl]                                    ; $43DB: $66
    ld l, a                                       ; $43DC: $6F
    ld [hl], d                                    ; $43DD: $72

jr_01E_43DE:
    ld [hl], h                                    ; $43DE: $74
    ld [hl], e                                    ; $43DF: $73
    jr nz, jr_01E_4451                            ; $43E0: $20 $6F

    ld h, [hl]                                    ; $43E2: $66
    cp $68                                        ; $43E3: $FE $68
    ld h, l                                       ; $43E5: $65
    ld [hl], d                                    ; $43E6: $72
    ld l, a                                       ; $43E7: $6F
    ld l, c                                       ; $43E8: $69
    ld [hl], e                                    ; $43E9: $73
    ld l, l                                       ; $43EA: $6D
    jr nz, @+$71                                  ; $43EB: $20 $6F

    ld l, [hl]                                    ; $43ED: $6E
    jr nz, jr_01E_4464                            ; $43EE: $20 $74

    ld l, b                                       ; $43F0: $68
    ld l, c                                       ; $43F1: $69
    ld [hl], e                                    ; $43F2: $73

jr_01E_43F3:
    rst $38                                       ; $43F3: $FF
    halt                                          ; $43F4: $76
    ld h, l                                       ; $43F5: $65
    ld [hl], d                                    ; $43F6: $72
    ld a, c                                       ; $43F7: $79

jr_01E_43F8:
    jr nz, jr_01E_446D                            ; $43F8: $20 $73

    ld [hl], h                                    ; $43FA: $74
    ld h, c                                       ; $43FB: $61
    ld h, a                                       ; $43FC: $67
    ld h, l                                       ; $43FD: $65
    ld hl, $FDFE                                  ; $43FE: $21 $FE $FD

jr_01E_4401:
    sbc d                                         ; $4401: $9A
    ld e, b                                       ; $4402: $58
    inc bc                                        ; $4403: $03

jr_01E_4404:
    ld b, d                                       ; $4404: $42
    sbc e                                         ; $4405: $9B
    add hl, bc                                    ; $4406: $09
    ld b, b                                       ; $4407: $40
    sbc a                                         ; $4408: $9F
    ld b, c                                       ; $4409: $41
    jr nz, jr_01E_447E                            ; $440A: $20 $72

    ld h, l                                       ; $440C: $65
    ld l, h                                       ; $440D: $6C
    ld h, l                                       ; $440E: $65
    ld l, [hl]                                    ; $440F: $6E
    ld [hl], h                                    ; $4410: $74
    ld l, h                                       ; $4411: $6C
    ld h, l                                       ; $4412: $65
    ld [hl], e                                    ; $4413: $73
    ld [hl], e                                    ; $4414: $73
    rst $38                                       ; $4415: $FF
    db $FD                                        ; $4416: $FD
    sbc a                                         ; $4417: $9F
    ld h, c                                       ; $4418: $61
    ld [hl], h                                    ; $4419: $74
    ld [hl], h                                    ; $441A: $74
    ld h, c                                       ; $441B: $61
    ld h, e                                       ; $441C: $63
    ld l, e                                       ; $441D: $6B
    jr nz, jr_01E_4482                            ; $441E: $20 $62

    ld a, c                                       ; $4420: $79
    jr nz, jr_01E_4497                            ; $4421: $20 $74

    ld l, b                                       ; $4423: $68
    ld h, l                                       ; $4424: $65
    cp $FD                                        ; $4425: $FE $FD
    sbc a                                         ; $4427: $9F
    ld d, e                                       ; $4428: $53

jr_01E_4429:
    ld l, b                                       ; $4429: $68
    ld h, c                                       ; $442A: $61
    ld h, h                                       ; $442B: $64
    ld l, a                                       ; $442C: $6F

jr_01E_442D:
    ld [hl], a                                    ; $442D: $77
    jr nz, jr_01E_447D                            ; $442E: $20 $4D

    ld h, c                                       ; $4430: $61
    ld h, a                                       ; $4431: $67
    ld l, c                                       ; $4432: $69
    ld hl, $FDFF                                  ; $4433: $21 $FF $FD

jr_01E_4436:
    sbc a                                         ; $4436: $9F
    ld d, h                                       ; $4437: $54
    ld l, b                                       ; $4438: $68

jr_01E_4439:
    ld h, l                                       ; $4439: $65

jr_01E_443A:
    ld [hl], d                                    ; $443A: $72
    ld h, l                                       ; $443B: $65
    jr nz, jr_01E_44B5                            ; $443C: $20 $77

    ld h, l                                       ; $443E: $65
    ld [hl], d                                    ; $443F: $72
    ld h, l                                       ; $4440: $65
    cp $FD                                        ; $4441: $FE $FD
    sbc a                                         ; $4443: $9F
    ld l, b                                       ; $4444: $68
    ld [hl], l                                    ; $4445: $75
    ld l, [hl]                                    ; $4446: $6E
    ld h, h                                       ; $4447: $64
    ld [hl], d                                    ; $4448: $72
    ld h, l                                       ; $4449: $65
    ld h, h                                       ; $444A: $64
    ld [hl], e                                    ; $444B: $73
    jr nz, jr_01E_44BD                            ; $444C: $20 $6F

    ld h, [hl]                                    ; $444E: $66
    rst $38                                       ; $444F: $FF
    db $FD                                        ; $4450: $FD

jr_01E_4451:
    sbc a                                         ; $4451: $9F
    ld [hl], h                                    ; $4452: $74
    ld l, b                                       ; $4453: $68
    ld h, l                                       ; $4454: $65
    ld l, l                                       ; $4455: $6D
    inc l                                         ; $4456: $2C
    jr nz, jr_01E_44BA                            ; $4457: $20 $61

    ld l, [hl]                                    ; $4459: $6E
    ld h, h                                       ; $445A: $64
    jr nz, jr_01E_44D1                            ; $445B: $20 $74

    ld l, b                                       ; $445D: $68
    ld h, l                                       ; $445E: $65
    ld a, c                                       ; $445F: $79
    cp $FD                                        ; $4460: $FE $FD
    sbc a                                         ; $4462: $9F
    ld [hl], a                                    ; $4463: $77

jr_01E_4464:
    ld h, l                                       ; $4464: $65
    ld [hl], d                                    ; $4465: $72
    ld h, l                                       ; $4466: $65
    jr nz, @+$71                                  ; $4467: $20 $6F

    ld [hl], l                                    ; $4469: $75
    ld [hl], h                                    ; $446A: $74
    jr nz, jr_01E_44E1                            ; $446B: $20 $74

jr_01E_446D:
    ld l, a                                       ; $446D: $6F
    rst $38                                       ; $446E: $FF
    db $FD                                        ; $446F: $FD
    sbc a                                         ; $4470: $9F
    ld h, h                                       ; $4471: $64
    ld h, l                                       ; $4472: $65
    ld [hl], e                                    ; $4473: $73
    ld [hl], h                                    ; $4474: $74
    ld [hl], d                                    ; $4475: $72
    ld l, a                                       ; $4476: $6F
    ld a, c                                       ; $4477: $79
    cp $FD                                        ; $4478: $FE $FD
    sbc a                                         ; $447A: $9F
    ld h, l                                       ; $447B: $65
    halt                                          ; $447C: $76

jr_01E_447D:
    ld h, l                                       ; $447D: $65

jr_01E_447E:
    ld [hl], d                                    ; $447E: $72
    ld a, c                                       ; $447F: $79
    ld [hl], h                                    ; $4480: $74
    ld l, b                                       ; $4481: $68

jr_01E_4482:
    ld l, c                                       ; $4482: $69
    ld l, [hl]                                    ; $4483: $6E
    ld h, a                                       ; $4484: $67
    ld hl, $FDFF                                  ; $4485: $21 $FF $FD
    sbc a                                         ; $4488: $9F
    ld b, e                                       ; $4489: $43
    ld l, a                                       ; $448A: $6F
    ld [hl], l                                    ; $448B: $75
    ld l, h                                       ; $448C: $6C
    ld h, h                                       ; $448D: $64
    jr nz, jr_01E_44FE                            ; $448E: $20 $6E

    ld l, a                                       ; $4490: $6F
    jr nz, jr_01E_4502                            ; $4491: $20 $6F

    ld l, [hl]                                    ; $4493: $6E
    ld h, l                                       ; $4494: $65
    cp $FD                                        ; $4495: $FE $FD

jr_01E_4497:
    sbc a                                         ; $4497: $9F
    ld l, b                                       ; $4498: $68
    ld h, l                                       ; $4499: $65
    ld l, h                                       ; $449A: $6C
    ld [hl], b                                    ; $449B: $70
    jr nz, jr_01E_4513                            ; $449C: $20 $75

    ld [hl], e                                    ; $449E: $73
    ccf                                           ; $449F: $3F
    jr nz, jr_01E_44F1                            ; $44A0: $20 $4F

    ld l, b                                       ; $44A2: $68
    jr nz, @+$76                                  ; $44A3: $20 $74

    ld l, b                                       ; $44A5: $68
    ld h, l                                       ; $44A6: $65
    rst $38                                       ; $44A7: $FF
    db $FD                                        ; $44A8: $FD
    sbc a                                         ; $44A9: $9F
    ld h, e                                       ; $44AA: $63
    ld [hl], d                                    ; $44AB: $72
    ld [hl], l                                    ; $44AC: $75
    ld h, l                                       ; $44AD: $65
    ld l, h                                       ; $44AE: $6C
    ld [hl], h                                    ; $44AF: $74
    ld a, c                                       ; $44B0: $79
    ld hl, $FDFE                                  ; $44B1: $21 $FE $FD
    sbc d                                         ; $44B4: $9A

jr_01E_44B5:
    ld e, b                                       ; $44B5: $58
    inc b                                         ; $44B6: $04
    ld b, d                                       ; $44B7: $42
    sbc e                                         ; $44B8: $9B
    add hl, bc                                    ; $44B9: $09

jr_01E_44BA:
    ld b, b                                       ; $44BA: $40
    sbc a                                         ; $44BB: $9F
    ld d, h                                       ; $44BC: $54

jr_01E_44BD:
    ld l, b                                       ; $44BD: $68
    ld h, l                                       ; $44BE: $65
    ld l, [hl]                                    ; $44BF: $6E
    jr nz, jr_01E_4516                            ; $44C0: $20 $54

    ld l, a                                       ; $44C2: $6F
    ld l, [hl]                                    ; $44C3: $6E
    ld a, c                                       ; $44C4: $79
    jr nz, jr_01E_452A                            ; $44C5: $20 $63

    ld h, c                                       ; $44C7: $61
    ld l, l                                       ; $44C8: $6D
    ld h, l                                       ; $44C9: $65
    ld hl, $FDFF                                  ; $44CA: $21 $FF $FD
    sbc a                                         ; $44CD: $9F
    ld d, h                                       ; $44CE: $54
    ld l, b                                       ; $44CF: $68
    ld h, l                                       ; $44D0: $65

jr_01E_44D1:
    jr nz, @+$64                                  ; $44D1: $20 $62

    ld [hl], d                                    ; $44D3: $72
    ld h, c                                       ; $44D4: $61
    halt                                          ; $44D5: $76
    ld h, l                                       ; $44D6: $65
    jr nz, jr_01E_454C                            ; $44D7: $20 $73

    ld l, a                                       ; $44D9: $6F
    ld [hl], l                                    ; $44DA: $75
    ld l, h                                       ; $44DB: $6C
    cp $FD                                        ; $44DC: $FE $FD
    sbc a                                         ; $44DE: $9F
    ld [hl], d                                    ; $44DF: $72
    ld [hl], l                                    ; $44E0: $75

jr_01E_44E1:
    ld [hl], e                                    ; $44E1: $73
    ld l, b                                       ; $44E2: $68
    ld h, l                                       ; $44E3: $65
    ld [hl], e                                    ; $44E4: $73
    jr nz, jr_01E_455B                            ; $44E5: $20 $74

    ld l, a                                       ; $44E7: $6F
    jr nz, jr_01E_455D                            ; $44E8: $20 $73

    ld h, c                                       ; $44EA: $61
    halt                                          ; $44EB: $76
    ld h, l                                       ; $44EC: $65
    rst $38                                       ; $44ED: $FF
    db $FD                                        ; $44EE: $FD
    sbc a                                         ; $44EF: $9F
    ld [hl], l                                    ; $44F0: $75

jr_01E_44F1:
    ld [hl], e                                    ; $44F1: $73
    jr nz, jr_01E_4555                            ; $44F2: $20 $61

    ld l, h                                       ; $44F4: $6C
    ld l, h                                       ; $44F5: $6C
    ld hl, $5420                                  ; $44F6: $21 $20 $54
    ld l, b                                       ; $44F9: $68
    ld h, l                                       ; $44FA: $65
    cp $FD                                        ; $44FB: $FE $FD
    sbc a                                         ; $44FD: $9F

jr_01E_44FE:
    ld d, e                                       ; $44FE: $53
    ld l, b                                       ; $44FF: $68
    ld h, c                                       ; $4500: $61
    ld h, h                                       ; $4501: $64

jr_01E_4502:
    ld l, a                                       ; $4502: $6F
    ld [hl], a                                    ; $4503: $77
    jr nz, jr_01E_4553                            ; $4504: $20 $4D

    ld h, c                                       ; $4506: $61
    ld h, a                                       ; $4507: $67
    ld l, c                                       ; $4508: $69
    jr nz, @+$63                                  ; $4509: $20 $61

    ld [hl], d                                    ; $450B: $72
    ld h, l                                       ; $450C: $65
    rst $38                                       ; $450D: $FF
    db $FD                                        ; $450E: $FD
    sbc a                                         ; $450F: $9F
    ld h, h                                       ; $4510: $64
    ld h, l                                       ; $4511: $65
    ld h, [hl]                                    ; $4512: $66

jr_01E_4513:
    ld h, l                                       ; $4513: $65
    ld h, c                                       ; $4514: $61
    ld [hl], h                                    ; $4515: $74

jr_01E_4516:
    ld h, l                                       ; $4516: $65
    ld h, h                                       ; $4517: $64
    ld hl, $FDFE                                  ; $4518: $21 $FE $FD
    sbc d                                         ; $451B: $9A
    ld b, b                                       ; $451C: $40
    jr z, jr_01E_44BA                             ; $451D: $28 $9B

    jr z, jr_01E_4596                             ; $451F: $28 $75

    sbc a                                         ; $4521: $9F
    ld c, b                                       ; $4522: $48
    ld h, l                                       ; $4523: $65
    ld a, c                                       ; $4524: $79
    inc l                                         ; $4525: $2C
    jr nz, jr_01E_4571                            ; $4526: $20 $49

    jr nz, jr_01E_4592                            ; $4528: $20 $68

jr_01E_452A:
    ld h, l                                       ; $452A: $65
    ld l, h                                       ; $452B: $6C
    ld [hl], b                                    ; $452C: $70
    ld h, l                                       ; $452D: $65
    ld h, h                                       ; $452E: $64
    rst $38                                       ; $452F: $FF
    ld [hl], h                                    ; $4530: $74
    ld l, a                                       ; $4531: $6F
    ld l, a                                       ; $4532: $6F
    ld hl, $FDFE                                  ; $4533: $21 $FE $FD
    sbc d                                         ; $4536: $9A
    ld e, b                                       ; $4537: $58
    dec b                                         ; $4538: $05
    ld b, d                                       ; $4539: $42
    sbc e                                         ; $453A: $9B
    add hl, bc                                    ; $453B: $09
    ld b, b                                       ; $453C: $40
    sbc a                                         ; $453D: $9F
    ld b, c                                       ; $453E: $41
    ld l, b                                       ; $453F: $68
    jr nz, @+$6A                                  ; $4540: $20 $68

    ld h, c                                       ; $4542: $61
    ld hl, $5420                                  ; $4543: $21 $20 $54
    ld h, c                                       ; $4546: $61
    ld l, e                                       ; $4547: $6B
    ld h, l                                       ; $4548: $65
    rst $38                                       ; $4549: $FF
    ld [hl], h                                    ; $454A: $74
    ld l, b                                       ; $454B: $68

jr_01E_454C:
    ld h, c                                       ; $454C: $61
    ld [hl], h                                    ; $454D: $74
    inc l                                         ; $454E: $2C
    jr nz, jr_01E_45CA                            ; $454F: $20 $79

    ld l, a                                       ; $4551: $6F
    ld [hl], l                                    ; $4552: $75

jr_01E_4553:
    cp $6F                                        ; $4553: $FE $6F

jr_01E_4555:
    ld h, h                                       ; $4555: $64
    ld l, c                                       ; $4556: $69
    ld h, [hl]                                    ; $4557: $66
    ld h, l                                       ; $4558: $65
    ld [hl], d                                    ; $4559: $72
    ld l, a                                       ; $455A: $6F

jr_01E_455B:
    ld [hl], l                                    ; $455B: $75
    ld [hl], e                                    ; $455C: $73

jr_01E_455D:
    rst $38                                       ; $455D: $FF
    ld d, e                                       ; $455E: $53
    ld l, b                                       ; $455F: $68
    ld h, c                                       ; $4560: $61
    ld h, h                                       ; $4561: $64
    ld l, a                                       ; $4562: $6F
    ld [hl], a                                    ; $4563: $77
    jr nz, jr_01E_45AC                            ; $4564: $20 $46

    ld l, c                                       ; $4566: $69
    ld h, l                                       ; $4567: $65
    ld l, [hl]                                    ; $4568: $6E
    ld h, h                                       ; $4569: $64
    ld [hl], e                                    ; $456A: $73
    ld hl, $FE21                                  ; $456B: $21 $21 $FE
    ld d, [hl]                                    ; $456E: $56
    ld l, c                                       ; $456F: $69
    ld h, e                                       ; $4570: $63

jr_01E_4571:
    ld [hl], h                                    ; $4571: $74
    ld l, a                                       ; $4572: $6F
    ld [hl], d                                    ; $4573: $72
    ld a, c                                       ; $4574: $79
    ld hl, $2121                                  ; $4575: $21 $21 $21
    jr nz, jr_01E_45CE                            ; $4578: $20 $54

    ld l, b                                       ; $457A: $68
    ld h, l                                       ; $457B: $65
    rst $38                                       ; $457C: $FF
    ld h, h                                       ; $457D: $64
    ld h, c                                       ; $457E: $61
    ld a, c                                       ; $457F: $79
    jr nz, jr_01E_45EB                            ; $4580: $20 $69

    ld [hl], e                                    ; $4582: $73
    jr nz, jr_01E_45FC                            ; $4583: $20 $77

    ld l, a                                       ; $4585: $6F
    ld l, [hl]                                    ; $4586: $6E
    ld hl, $FDFE                                  ; $4587: $21 $FE $FD
    sbc d                                         ; $458A: $9A
    ld e, b                                       ; $458B: $58
    ld [hl-], a                                   ; $458C: $32
    ld b, d                                       ; $458D: $42
    sbc e                                         ; $458E: $9B
    add hl, bc                                    ; $458F: $09
    ld b, b                                       ; $4590: $40
    sbc a                                         ; $4591: $9F

jr_01E_4592:
    ld d, h                                       ; $4592: $54
    ld l, b                                       ; $4593: $68
    ld h, l                                       ; $4594: $65
    ld l, [hl]                                    ; $4595: $6E

jr_01E_4596:
    inc l                                         ; $4596: $2C
    jr nz, jr_01E_45FA                            ; $4597: $20 $61

    jr nz, @+$69                                  ; $4599: $20 $67

    ld h, l                                       ; $459B: $65
    ld a, c                                       ; $459C: $79
    ld [hl], e                                    ; $459D: $73
    ld h, l                                       ; $459E: $65
    ld [hl], d                                    ; $459F: $72
    rst $38                                       ; $45A0: $FF
    ld h, c                                       ; $45A1: $61
    ld [hl], b                                    ; $45A2: $70
    ld [hl], b                                    ; $45A3: $70
    ld h, l                                       ; $45A4: $65
    ld h, c                                       ; $45A5: $61
    ld [hl], d                                    ; $45A6: $72
    ld h, l                                       ; $45A7: $65
    ld h, h                                       ; $45A8: $64
    ld hl, $4F20                                  ; $45A9: $21 $20 $4F

jr_01E_45AC:
    ld l, b                                       ; $45AC: $68
    inc l                                         ; $45AD: $2C
    cp $77                                        ; $45AE: $FE $77
    ld l, b                                       ; $45B0: $68
    ld h, c                                       ; $45B1: $61
    ld [hl], h                                    ; $45B2: $74
    jr nz, jr_01E_4629                            ; $45B3: $20 $74

    ld l, a                                       ; $45B5: $6F
    jr nz, jr_01E_461C                            ; $45B6: $20 $64

    ld l, a                                       ; $45B8: $6F
    ccf                                           ; $45B9: $3F
    jr nz, jr_01E_4604                            ; $45BA: $20 $48

    ld l, a                                       ; $45BC: $6F
    ld [hl], a                                    ; $45BD: $77
    rst $38                                       ; $45BE: $FF
    ld h, e                                       ; $45BF: $63
    ld h, c                                       ; $45C0: $61
    ld l, [hl]                                    ; $45C1: $6E
    jr nz, jr_01E_4629                            ; $45C2: $20 $65

    halt                                          ; $45C4: $76
    ld l, c                                       ; $45C5: $69
    ld l, h                                       ; $45C6: $6C
    jr nz, jr_01E_462B                            ; $45C7: $20 $62

    ld h, l                                       ; $45C9: $65

jr_01E_45CA:
    cp $73                                        ; $45CA: $FE $73
    ld [hl], h                                    ; $45CC: $74
    ld l, a                                       ; $45CD: $6F

jr_01E_45CE:
    ld [hl], b                                    ; $45CE: $70
    ld [hl], b                                    ; $45CF: $70
    ld h, l                                       ; $45D0: $65
    ld h, h                                       ; $45D1: $64
    ccf                                           ; $45D2: $3F
    cp $FD                                        ; $45D3: $FE $FD
    sbc d                                         ; $45D5: $9A
    ld e, b                                       ; $45D6: $58
    ld b, $42                                     ; $45D7: $06 $42
    sbc e                                         ; $45D9: $9B
    add hl, bc                                    ; $45DA: $09
    ld b, b                                       ; $45DB: $40
    sbc a                                         ; $45DC: $9F
    ld c, a                                       ; $45DD: $4F
    ld l, [hl]                                    ; $45DE: $6E
    ld h, e                                       ; $45DF: $63
    ld h, l                                       ; $45E0: $65
    jr nz, jr_01E_4644                            ; $45E1: $20 $61

    ld h, a                                       ; $45E3: $67
    ld h, c                                       ; $45E4: $61
    ld l, c                                       ; $45E5: $69
    ld l, [hl]                                    ; $45E6: $6E
    inc l                                         ; $45E7: $2C
    rst $38                                       ; $45E8: $FF
    ld l, h                                       ; $45E9: $6C
    ld l, c                                       ; $45EA: $69

jr_01E_45EB:
    ld l, e                                       ; $45EB: $6B
    ld h, l                                       ; $45EC: $65
    jr nz, jr_01E_4650                            ; $45ED: $20 $61

    ld l, [hl]                                    ; $45EF: $6E
    cp $75                                        ; $45F0: $FE $75
    ld l, [hl]                                    ; $45F2: $6E
    ld h, [hl]                                    ; $45F3: $66
    ld h, c                                       ; $45F4: $61
    ld l, h                                       ; $45F5: $6C
    ld [hl], h                                    ; $45F6: $74
    ld h, l                                       ; $45F7: $65
    ld [hl], d                                    ; $45F8: $72
    ld l, c                                       ; $45F9: $69

jr_01E_45FA:
    ld l, [hl]                                    ; $45FA: $6E
    ld h, a                                       ; $45FB: $67

jr_01E_45FC:
    rst $38                                       ; $45FC: $FF
    ld l, b                                       ; $45FD: $68
    ld h, l                                       ; $45FE: $65
    ld [hl], d                                    ; $45FF: $72
    ld l, a                                       ; $4600: $6F
    jr nz, @+$71                                  ; $4601: $20 $6F

    ld h, [hl]                                    ; $4603: $66

jr_01E_4604:
    jr nz, @+$6E                                  ; $4604: $20 $6C

    ld h, l                                       ; $4606: $65
    ld h, a                                       ; $4607: $67
    ld h, l                                       ; $4608: $65
    ld l, [hl]                                    ; $4609: $6E
    ld h, h                                       ; $460A: $64
    inc l                                         ; $460B: $2C
    cp $54                                        ; $460C: $FE $54
    ld l, a                                       ; $460E: $6F
    ld l, [hl]                                    ; $460F: $6E
    ld a, c                                       ; $4610: $79
    jr nz, jr_01E_4686                            ; $4611: $20 $73

    ld h, c                                       ; $4613: $61
    halt                                          ; $4614: $76
    ld h, l                                       ; $4615: $65
    ld [hl], e                                    ; $4616: $73
    jr nz, jr_01E_468D                            ; $4617: $20 $74

    ld l, b                                       ; $4619: $68
    ld h, l                                       ; $461A: $65
    rst $38                                       ; $461B: $FF

jr_01E_461C:
    ld h, h                                       ; $461C: $64
    ld h, c                                       ; $461D: $61
    ld a, c                                       ; $461E: $79
    ld hl, $FDFE                                  ; $461F: $21 $FE $FD
    sbc d                                         ; $4622: $9A
    sbc e                                         ; $4623: $9B
    add hl, bc                                    ; $4624: $09
    ld b, b                                       ; $4625: $40
    sbc a                                         ; $4626: $9F
    ld d, [hl]                                    ; $4627: $56
    ld l, c                                       ; $4628: $69

jr_01E_4629:
    ld h, e                                       ; $4629: $63
    ld [hl], h                                    ; $462A: $74

jr_01E_462B:
    ld l, a                                       ; $462B: $6F
    ld [hl], d                                    ; $462C: $72
    ld a, c                                       ; $462D: $79
    ld hl, $2121                                  ; $462E: $21 $21 $21
    jr nz, jr_01E_4687                            ; $4631: $20 $54

    ld l, b                                       ; $4633: $68
    ld h, l                                       ; $4634: $65
    rst $38                                       ; $4635: $FF
    ld [hl], h                                    ; $4636: $74
    ld l, a                                       ; $4637: $6F
    ld [hl], a                                    ; $4638: $77
    ld l, [hl]                                    ; $4639: $6E
    jr nz, jr_01E_46A5                            ; $463A: $20 $69

    ld [hl], e                                    ; $463C: $73
    dec l                                         ; $463D: $2D
    dec l                                         ; $463E: $2D
    cp $FD                                        ; $463F: $FE $FD
    sbc e                                         ; $4641: $9B
    cp b                                          ; $4642: $B8
    ld e, l                                       ; $4643: $5D

jr_01E_4644:
    sbc a                                         ; $4644: $9F
    ld c, a                                       ; $4645: $4F
    ld l, b                                       ; $4646: $68
    inc l                                         ; $4647: $2C
    jr nz, jr_01E_46BE                            ; $4648: $20 $74

    ld l, b                                       ; $464A: $68
    ld l, c                                       ; $464B: $69
    ld [hl], e                                    ; $464C: $73
    jr nz, jr_01E_46B8                            ; $464D: $20 $69

    ld [hl], e                                    ; $464F: $73

jr_01E_4650:
    jr nz, jr_01E_46C5                            ; $4650: $20 $73

    ld l, a                                       ; $4652: $6F
    rst $38                                       ; $4653: $FF
    ld [hl], b                                    ; $4654: $70
    ld h, c                                       ; $4655: $61
    ld [hl], h                                    ; $4656: $74
    ld l, b                                       ; $4657: $68
    ld h, l                                       ; $4658: $65
    ld [hl], h                                    ; $4659: $74
    ld l, c                                       ; $465A: $69
    ld h, e                                       ; $465B: $63
    ld hl, $FE21                                  ; $465C: $21 $21 $FE
    db $FD                                        ; $465F: $FD
    sbc d                                         ; $4660: $9A
    ld e, b                                       ; $4661: $58
    rlca                                          ; $4662: $07
    ld b, d                                       ; $4663: $42
    sbc e                                         ; $4664: $9B
    cp b                                          ; $4665: $B8
    ld e, l                                       ; $4666: $5D
    sbc a                                         ; $4667: $9F
    ld c, a                                       ; $4668: $4F
    ld [hl], l                                    ; $4669: $75
    ld [hl], h                                    ; $466A: $74
    jr nz, @+$71                                  ; $466B: $20 $6F

    ld h, [hl]                                    ; $466D: $66
    jr nz, jr_01E_46DD                            ; $466E: $20 $6D

    ld a, c                                       ; $4670: $79
    jr nz, jr_01E_46EA                            ; $4671: $20 $77

    ld h, c                                       ; $4673: $61
    ld a, c                                       ; $4674: $79
    inc l                                         ; $4675: $2C
    cp $79                                        ; $4676: $FE $79
    ld l, a                                       ; $4678: $6F
    ld [hl], l                                    ; $4679: $75
    jr nz, jr_01E_46F3                            ; $467A: $20 $77

    ld [hl], d                                    ; $467C: $72
    ld h, l                                       ; $467D: $65
    ld [hl], h                                    ; $467E: $74
    ld h, e                                       ; $467F: $63
    ld l, b                                       ; $4680: $68
    ld h, l                                       ; $4681: $65
    ld h, h                                       ; $4682: $64
    rst $38                                       ; $4683: $FF
    ld h, e                                       ; $4684: $63
    ld l, b                                       ; $4685: $68

jr_01E_4686:
    ld h, c                                       ; $4686: $61

jr_01E_4687:
    ld [hl], d                                    ; $4687: $72
    ld l, h                                       ; $4688: $6C
    ld h, c                                       ; $4689: $61
    ld [hl], h                                    ; $468A: $74
    ld h, c                                       ; $468B: $61
    ld l, [hl]                                    ; $468C: $6E

jr_01E_468D:
    ld [hl], e                                    ; $468D: $73
    ld hl, $FDFE                                  ; $468E: $21 $FE $FD
    sbc d                                         ; $4691: $9A
    ld e, b                                       ; $4692: $58
    ld b, [hl]                                    ; $4693: $46
    ld b, d                                       ; $4694: $42
    sbc e                                         ; $4695: $9B
    cp b                                          ; $4696: $B8
    ld e, l                                       ; $4697: $5D
    sbc a                                         ; $4698: $9F
    ld d, a                                       ; $4699: $57
    ld h, l                                       ; $469A: $65
    jr nz, @+$6F                                  ; $469B: $20 $6D

    ld h, l                                       ; $469D: $65
    ld h, l                                       ; $469E: $65
    ld [hl], h                                    ; $469F: $74
    jr nz, jr_01E_4703                            ; $46A0: $20 $61

    ld h, a                                       ; $46A2: $67
    ld h, c                                       ; $46A3: $61
    ld l, c                                       ; $46A4: $69

jr_01E_46A5:
    ld l, [hl]                                    ; $46A5: $6E
    inc l                                         ; $46A6: $2C
    rst $38                                       ; $46A7: $FF
    ld b, a                                       ; $46A8: $47
    ld [hl], d                                    ; $46A9: $72
    ld h, l                                       ; $46AA: $65
    ld h, c                                       ; $46AB: $61
    ld [hl], h                                    ; $46AC: $74
    jr nz, jr_01E_46FC                            ; $46AD: $20 $4D

    ld h, c                                       ; $46AF: $61
    ld h, a                                       ; $46B0: $67
    ld [hl], l                                    ; $46B1: $75
    ld [hl], e                                    ; $46B2: $73
    cp $4B                                        ; $46B3: $FE $4B
    ld a, c                                       ; $46B5: $79
    ld [hl], d                                    ; $46B6: $72
    ld l, a                                       ; $46B7: $6F

jr_01E_46B8:
    ld [hl], e                                    ; $46B8: $73
    ld hl, $FDFE                                  ; $46B9: $21 $FE $FD
    sbc e                                         ; $46BC: $9B
    add hl, bc                                    ; $46BD: $09

jr_01E_46BE:
    ld b, b                                       ; $46BE: $40
    sbc a                                         ; $46BF: $9F
    ld c, e                                       ; $46C0: $4B
    ld a, c                                       ; $46C1: $79
    ld [hl], d                                    ; $46C2: $72
    ld l, a                                       ; $46C3: $6F
    ld [hl], e                                    ; $46C4: $73

jr_01E_46C5:
    ccf                                           ; $46C5: $3F
    jr nz, jr_01E_4721                            ; $46C6: $20 $59

    ld l, a                                       ; $46C8: $6F
    ld [hl], l                                    ; $46C9: $75
    jr nz, jr_01E_4739                            ; $46CA: $20 $6D

    ld h, l                                       ; $46CC: $65
    ld h, c                                       ; $46CD: $61
    ld l, [hl]                                    ; $46CE: $6E
    rst $38                                       ; $46CF: $FF
    ld d, h                                       ; $46D0: $54
    ld l, a                                       ; $46D1: $6F
    ld l, [hl]                                    ; $46D2: $6E
    ld a, c                                       ; $46D3: $79
    jr nz, @+$6B                                  ; $46D4: $20 $69

    ld [hl], e                                    ; $46D6: $73
    jr nz, jr_01E_474D                            ; $46D7: $20 $74

    ld l, b                                       ; $46D9: $68
    ld h, l                                       ; $46DA: $65
    cp $6C                                        ; $46DB: $FE $6C

jr_01E_46DD:
    ld h, l                                       ; $46DD: $65
    ld h, a                                       ; $46DE: $67
    ld h, l                                       ; $46DF: $65
    ld l, [hl]                                    ; $46E0: $6E
    ld h, h                                       ; $46E1: $64
    ld h, c                                       ; $46E2: $61
    ld [hl], d                                    ; $46E3: $72
    ld a, c                                       ; $46E4: $79
    jr nz, @+$49                                  ; $46E5: $20 $47

    ld [hl], d                                    ; $46E7: $72
    ld h, l                                       ; $46E8: $65
    ld h, c                                       ; $46E9: $61

jr_01E_46EA:
    ld [hl], h                                    ; $46EA: $74
    rst $38                                       ; $46EB: $FF
    ld c, l                                       ; $46EC: $4D
    ld h, c                                       ; $46ED: $61
    ld h, a                                       ; $46EE: $67
    ld [hl], l                                    ; $46EF: $75
    ld [hl], e                                    ; $46F0: $73
    jr nz, @+$4D                                  ; $46F1: $20 $4B

jr_01E_46F3:
    ld a, c                                       ; $46F3: $79
    ld [hl], d                                    ; $46F4: $72
    ld l, a                                       ; $46F5: $6F
    ld [hl], e                                    ; $46F6: $73
    ccf                                           ; $46F7: $3F
    cp $FD                                        ; $46F8: $FE $FD
    sbc d                                         ; $46FA: $9A
    ld e, b                                       ; $46FB: $58

jr_01E_46FC:
    ld [$9B42], sp                                ; $46FC: $08 $42 $9B
    cp b                                          ; $46FF: $B8
    ld e, l                                       ; $4700: $5D
    sbc a                                         ; $4701: $9F
    ld d, e                                       ; $4702: $53

jr_01E_4703:
    ld c, c                                       ; $4703: $49
    ld c, h                                       ; $4704: $4C
    ld b, l                                       ; $4705: $45
    ld c, [hl]                                    ; $4706: $4E
    ld b, e                                       ; $4707: $43
    ld b, l                                       ; $4708: $45
    ld hl, $FDFE                                  ; $4709: $21 $FE $FD
    sbc d                                         ; $470C: $9A
    ld e, b                                       ; $470D: $58
    ld d, b                                       ; $470E: $50
    ld b, d                                       ; $470F: $42
    sbc e                                         ; $4710: $9B
    cp b                                          ; $4711: $B8
    ld e, l                                       ; $4712: $5D
    sbc a                                         ; $4713: $9F
    ld c, b                                       ; $4714: $48
    ld h, c                                       ; $4715: $61
    ld l, [hl]                                    ; $4716: $6E
    ld h, h                                       ; $4717: $64
    jr nz, jr_01E_4789                            ; $4718: $20 $6F

    halt                                          ; $471A: $76
    ld h, l                                       ; $471B: $65
    ld [hl], d                                    ; $471C: $72
    jr nz, jr_01E_4793                            ; $471D: $20 $74

    ld l, b                                       ; $471F: $68
    ld h, l                                       ; $4720: $65

jr_01E_4721:
    rst $38                                       ; $4721: $FF
    ld b, a                                       ; $4722: $47
    ld [hl], d                                    ; $4723: $72
    ld h, l                                       ; $4724: $65
    ld h, c                                       ; $4725: $61
    ld [hl], h                                    ; $4726: $74
    jr nz, jr_01E_4776                            ; $4727: $20 $4D

    ld h, c                                       ; $4729: $61
    ld h, a                                       ; $472A: $67
    ld [hl], l                                    ; $472B: $75
    ld [hl], e                                    ; $472C: $73
    ld l, $FE                                     ; $472D: $2E $FE
    db $FD                                        ; $472F: $FD
    sbc d                                         ; $4730: $9A
    ld e, b                                       ; $4731: $58
    add hl, bc                                    ; $4732: $09
    ld b, d                                       ; $4733: $42
    sbc e                                         ; $4734: $9B
    jr z, jr_01E_47AC                             ; $4735: $28 $75

    sbc a                                         ; $4737: $9F
    ld c, [hl]                                    ; $4738: $4E

jr_01E_4739:
    ld h, l                                       ; $4739: $65
    halt                                          ; $473A: $76
    ld h, l                                       ; $473B: $65
    ld [hl], d                                    ; $473C: $72
    ld hl, $5720                                  ; $473D: $21 $20 $57
    ld l, b                                       ; $4740: $68
    ld l, a                                       ; $4741: $6F
    jr nz, jr_01E_47A5                            ; $4742: $20 $61

    ld [hl], d                                    ; $4744: $72
    ld h, l                                       ; $4745: $65
    rst $38                                       ; $4746: $FF
    ld a, c                                       ; $4747: $79
    ld l, a                                       ; $4748: $6F
    ld [hl], l                                    ; $4749: $75
    ccf                                           ; $474A: $3F
    cp $FD                                        ; $474B: $FE $FD

jr_01E_474D:
    sbc d                                         ; $474D: $9A
    ld e, b                                       ; $474E: $58
    ld a, [bc]                                    ; $474F: $0A
    ld b, d                                       ; $4750: $42
    sbc e                                         ; $4751: $9B
    ld l, c                                       ; $4752: $69
    ld c, c                                       ; $4753: $49
    sbc a                                         ; $4754: $9F
    ld hl, $FE21                                  ; $4755: $21 $21 $FE
    db $FD                                        ; $4758: $FD
    sbc e                                         ; $4759: $9B
    ld sp, hl                                     ; $475A: $F9
    ld c, d                                       ; $475B: $4A
    sbc a                                         ; $475C: $9F
    ld d, [hl]                                    ; $475D: $56
    dec l                                         ; $475E: $2D
    ld d, [hl]                                    ; $475F: $56
    ld h, c                                       ; $4760: $61
    ld l, h                                       ; $4761: $6C
    ld l, e                                       ; $4762: $6B
    ld h, c                                       ; $4763: $61
    ld l, [hl]                                    ; $4764: $6E
    ld hl, $FE21                                  ; $4765: $21 $21 $FE
    db $FD                                        ; $4768: $FD
    ld e, b                                       ; $4769: $58
    ld l, [hl]                                    ; $476A: $6E
    sbc e                                         ; $476B: $9B
    cp b                                          ; $476C: $B8
    ld e, l                                       ; $476D: $5D
    sbc a                                         ; $476E: $9F
    ld b, [hl]                                    ; $476F: $46
    ld l, a                                       ; $4770: $6F
    ld l, a                                       ; $4771: $6F
    ld l, h                                       ; $4772: $6C
    ld [hl], e                                    ; $4773: $73
    jr nz, jr_01E_47ED                            ; $4774: $20 $77

jr_01E_4776:
    ld l, c                                       ; $4776: $69
    ld l, h                                       ; $4777: $6C
    ld l, h                                       ; $4778: $6C
    jr nz, jr_01E_47DD                            ; $4779: $20 $62

    ld h, l                                       ; $477B: $65
    rst $38                                       ; $477C: $FF
    ld h, h                                       ; $477D: $64
    ld h, l                                       ; $477E: $65
    ld h, c                                       ; $477F: $61
    ld l, h                                       ; $4780: $6C
    ld [hl], h                                    ; $4781: $74
    jr nz, jr_01E_47FB                            ; $4782: $20 $77

    ld l, c                                       ; $4784: $69
    ld [hl], h                                    ; $4785: $74
    ld l, b                                       ; $4786: $68
    ld l, $FE                                     ; $4787: $2E $FE

jr_01E_4789:
    ld d, a                                       ; $4789: $57
    ld h, l                                       ; $478A: $65
    ld l, h                                       ; $478B: $6C
    ld l, h                                       ; $478C: $6C
    jr nz, jr_01E_47DA                            ; $478D: $20 $4B

    ld a, c                                       ; $478F: $79
    ld [hl], d                                    ; $4790: $72
    ld l, a                                       ; $4791: $6F
    ld [hl], e                                    ; $4792: $73

jr_01E_4793:
    inc l                                         ; $4793: $2C
    rst $38                                       ; $4794: $FF
    ld [hl], a                                    ; $4795: $77
    ld l, c                                       ; $4796: $69
    ld l, h                                       ; $4797: $6C
    ld l, h                                       ; $4798: $6C
    jr nz, @+$7B                                  ; $4799: $20 $79

    ld l, a                                       ; $479B: $6F
    ld [hl], l                                    ; $479C: $75
    jr nz, @+$65                                  ; $479D: $20 $63

    ld l, a                                       ; $479F: $6F
    ld l, l                                       ; $47A0: $6D
    ld h, l                                       ; $47A1: $65
    cp $77                                        ; $47A2: $FE $77
    ld l, c                                       ; $47A4: $69

jr_01E_47A5:
    ld [hl], h                                    ; $47A5: $74
    ld l, b                                       ; $47A6: $68
    jr nz, jr_01E_4816                            ; $47A7: $20 $6D

    ld h, l                                       ; $47A9: $65
    jr nz, jr_01E_481A                            ; $47AA: $20 $6E

jr_01E_47AC:
    ld l, a                                       ; $47AC: $6F
    ld [hl], a                                    ; $47AD: $77
    ccf                                           ; $47AE: $3F
    jr nz, @+$51                                  ; $47AF: $20 $4F

    ld [hl], d                                    ; $47B1: $72
    rst $38                                       ; $47B2: $FF
    ld [hl], e                                    ; $47B3: $73
    ld l, b                                       ; $47B4: $68
    ld h, c                                       ; $47B5: $61
    ld l, h                                       ; $47B6: $6C
    ld l, h                                       ; $47B7: $6C
    jr nz, jr_01E_4803                            ; $47B8: $20 $49

    jr nz, jr_01E_482C                            ; $47BA: $20 $70

    ld [hl], l                                    ; $47BC: $75
    ld l, [hl]                                    ; $47BD: $6E
    ld l, c                                       ; $47BE: $69
    ld [hl], e                                    ; $47BF: $73
    ld l, b                                       ; $47C0: $68
    cp $6D                                        ; $47C1: $FE $6D
    ld l, a                                       ; $47C3: $6F
    ld [hl], d                                    ; $47C4: $72
    ld h, l                                       ; $47C5: $65
    jr nz, jr_01E_4837                            ; $47C6: $20 $6F

    ld h, [hl]                                    ; $47C8: $66
    jr nz, @+$76                                  ; $47C9: $20 $74

    ld l, b                                       ; $47CB: $68
    ld h, l                                       ; $47CC: $65
    ld l, l                                       ; $47CD: $6D
    ccf                                           ; $47CE: $3F
    cp $FD                                        ; $47CF: $FE $FD
    sbc d                                         ; $47D1: $9A
    ld e, b                                       ; $47D2: $58
    dec bc                                        ; $47D3: $0B
    ld b, d                                       ; $47D4: $42
    sbc a                                         ; $47D5: $9F
    jr nz, @+$48                                  ; $47D6: $20 $46

    ld l, c                                       ; $47D8: $69
    ld h, a                                       ; $47D9: $67

jr_01E_47DA:
    ld l, b                                       ; $47DA: $68
    ld [hl], h                                    ; $47DB: $74
    rst $38                                       ; $47DC: $FF

jr_01E_47DD:
    jr nz, jr_01E_4831                            ; $47DD: $20 $52

    ld [hl], l                                    ; $47DF: $75
    ld l, [hl]                                    ; $47E0: $6E
    db $FD                                        ; $47E1: $FD
    sbc h                                         ; $47E2: $9C
    ld [bc], a                                    ; $47E3: $02
    ld e, $F1                                     ; $47E4: $1E $F1
    ld b, a                                       ; $47E6: $47
    ld e, $EA                                     ; $47E7: $1E $EA
    ld b, a                                       ; $47E9: $47
    sbc d                                         ; $47EA: $9A
    add hl, bc                                    ; $47EB: $09
    ld a, [bc]                                    ; $47EC: $0A

jr_01E_47ED:
    ld e, $A6                                     ; $47ED: $1E $A6
    ld c, a                                       ; $47EF: $4F
    ld b, d                                       ; $47F0: $42
    sbc d                                         ; $47F1: $9A
    add hl, bc                                    ; $47F2: $09
    ld a, [bc]                                    ; $47F3: $0A
    ld e, $F5                                     ; $47F4: $1E $F5
    ld c, a                                       ; $47F6: $4F
    ld b, d                                       ; $47F7: $42
    sbc e                                         ; $47F8: $9B
    ld a, b                                       ; $47F9: $78
    ld [hl], b                                    ; $47FA: $70

jr_01E_47FB:
    sbc a                                         ; $47FB: $9F
    ld c, [hl]                                    ; $47FC: $4E
    ld l, a                                       ; $47FD: $6F
    ld hl, $4920                                  ; $47FE: $21 $20 $49
    jr nz, @+$79                                  ; $4801: $20 $77

jr_01E_4803:
    ld l, a                                       ; $4803: $6F
    ld l, [hl]                                    ; $4804: $6E
    daa                                           ; $4805: $27
    ld [hl], h                                    ; $4806: $74
    rst $38                                       ; $4807: $FF
    ld l, h                                       ; $4808: $6C
    ld h, l                                       ; $4809: $65
    ld [hl], h                                    ; $480A: $74
    jr nz, @+$7B                                  ; $480B: $20 $79

    ld l, a                                       ; $480D: $6F
    ld [hl], l                                    ; $480E: $75
    jr nz, jr_01E_4878                            ; $480F: $20 $67

    ld h, l                                       ; $4811: $65
    ld [hl], h                                    ; $4812: $74
    cp $61                                        ; $4813: $FE $61
    ld [hl], a                                    ; $4815: $77

jr_01E_4816:
    ld h, c                                       ; $4816: $61
    ld a, c                                       ; $4817: $79
    jr nz, jr_01E_4891                            ; $4818: $20 $77

jr_01E_481A:
    ld l, c                                       ; $481A: $69
    ld [hl], h                                    ; $481B: $74
    ld l, b                                       ; $481C: $68
    jr nz, jr_01E_4893                            ; $481D: $20 $74

    ld l, b                                       ; $481F: $68
    ld l, c                                       ; $4820: $69
    ld [hl], e                                    ; $4821: $73
    ld hl, $FDFE                                  ; $4822: $21 $FE $FD
    sbc e                                         ; $4825: $9B
    cp b                                          ; $4826: $B8
    ld e, l                                       ; $4827: $5D
    sbc a                                         ; $4828: $9F
    ld b, [hl]                                    ; $4829: $46
    ld c, a                                       ; $482A: $4F
    ld c, a                                       ; $482B: $4F

jr_01E_482C:
    ld c, h                                       ; $482C: $4C
    ld hl, $FDFE                                  ; $482D: $21 $FE $FD
    sbc d                                         ; $4830: $9A

jr_01E_4831:
    ld e, b                                       ; $4831: $58
    dec c                                         ; $4832: $0D
    ld b, d                                       ; $4833: $42
    sbc e                                         ; $4834: $9B
    cp b                                          ; $4835: $B8
    ld e, l                                       ; $4836: $5D

jr_01E_4837:
    sbc a                                         ; $4837: $9F
    ld b, l                                       ; $4838: $45
    ld l, [hl]                                    ; $4839: $6E
    ld l, a                                       ; $483A: $6F
    ld [hl], l                                    ; $483B: $75
    ld h, a                                       ; $483C: $67
    ld l, b                                       ; $483D: $68
    jr nz, jr_01E_48AF                            ; $483E: $20 $6F

    ld h, [hl]                                    ; $4840: $66
    jr nz, @+$76                                  ; $4841: $20 $74

    ld l, b                                       ; $4843: $68
    ld l, c                                       ; $4844: $69
    ld [hl], e                                    ; $4845: $73
    ld l, $FF                                     ; $4846: $2E $FF
    ld d, e                                       ; $4848: $53
    ld h, l                                       ; $4849: $65
    ld l, c                                       ; $484A: $69
    ld a, d                                       ; $484B: $7A
    ld h, l                                       ; $484C: $65
    jr nz, @+$6A                                  ; $484D: $20 $68

    ld l, c                                       ; $484F: $69
    ld l, l                                       ; $4850: $6D
    ld hl, $FDFE                                  ; $4851: $21 $FE $FD
    sbc d                                         ; $4854: $9A
    ld d, [hl]                                    ; $4855: $56
    dec b                                         ; $4856: $05
    ld b, d                                       ; $4857: $42
    sbc e                                         ; $4858: $9B
    cp b                                          ; $4859: $B8
    ld e, l                                       ; $485A: $5D
    sbc a                                         ; $485B: $9F
    ld e, c                                       ; $485C: $59
    ld l, a                                       ; $485D: $6F
    ld [hl], l                                    ; $485E: $75
    jr nz, jr_01E_48C9                            ; $485F: $20 $68

    ld h, c                                       ; $4861: $61
    halt                                          ; $4862: $76
    ld h, l                                       ; $4863: $65
    jr nz, jr_01E_48C8                            ; $4864: $20 $62

    ld h, l                                       ; $4866: $65
    ld h, l                                       ; $4867: $65
    ld l, [hl]                                    ; $4868: $6E
    rst $38                                       ; $4869: $FF
    ld [hl], e                                    ; $486A: $73
    ld [hl], l                                    ; $486B: $75
    ld h, e                                       ; $486C: $63
    ld l, b                                       ; $486D: $68
    jr nz, jr_01E_48D1                            ; $486E: $20 $61

    cp $6E                                        ; $4870: $FE $6E
    ld [hl], l                                    ; $4872: $75
    ld l, c                                       ; $4873: $69
    ld [hl], e                                    ; $4874: $73
    ld h, c                                       ; $4875: $61
    ld l, [hl]                                    ; $4876: $6E
    ld h, e                                       ; $4877: $63

jr_01E_4878:
    ld h, l                                       ; $4878: $65
    ld l, $FF                                     ; $4879: $2E $FF
    ld c, [hl]                                    ; $487B: $4E
    ld l, a                                       ; $487C: $6F
    ld [hl], d                                    ; $487D: $72
    ld l, l                                       ; $487E: $6D
    ld h, c                                       ; $487F: $61
    ld l, h                                       ; $4880: $6C
    ld l, h                                       ; $4881: $6C
    ld a, c                                       ; $4882: $79
    jr nz, jr_01E_48CE                            ; $4883: $20 $49

    cp $77                                        ; $4885: $FE $77
    ld l, a                                       ; $4887: $6F
    ld [hl], l                                    ; $4888: $75
    ld l, h                                       ; $4889: $6C
    ld h, h                                       ; $488A: $64
    jr nz, jr_01E_48F7                            ; $488B: $20 $6A

    ld [hl], l                                    ; $488D: $75
    ld [hl], e                                    ; $488E: $73
    ld [hl], h                                    ; $488F: $74
    rst $38                                       ; $4890: $FF

jr_01E_4891:
    ld h, l                                       ; $4891: $65
    ld [hl], d                                    ; $4892: $72

jr_01E_4893:
    ld h, c                                       ; $4893: $61
    ld h, h                                       ; $4894: $64
    ld l, c                                       ; $4895: $69
    ld h, e                                       ; $4896: $63
    ld h, c                                       ; $4897: $61
    ld [hl], h                                    ; $4898: $74
    ld h, l                                       ; $4899: $65
    jr nz, jr_01E_4915                            ; $489A: $20 $79

    ld l, a                                       ; $489C: $6F
    ld [hl], l                                    ; $489D: $75
    cp $66                                        ; $489E: $FE $66
    ld [hl], d                                    ; $48A0: $72
    ld l, a                                       ; $48A1: $6F
    ld l, l                                       ; $48A2: $6D
    jr nz, jr_01E_4912                            ; $48A3: $20 $6D

    ld a, c                                       ; $48A5: $79
    jr nz, jr_01E_4914                            ; $48A6: $20 $6C

    ld l, c                                       ; $48A8: $69
    ld h, [hl]                                    ; $48A9: $66
    ld h, l                                       ; $48AA: $65
    rst $38                                       ; $48AB: $FF
    ld [hl], d                                    ; $48AC: $72
    ld l, c                                       ; $48AD: $69
    ld h, a                                       ; $48AE: $67

jr_01E_48AF:
    ld l, b                                       ; $48AF: $68
    ld [hl], h                                    ; $48B0: $74
    jr nz, @+$6A                                  ; $48B1: $20 $68

    ld h, l                                       ; $48B3: $65
    ld [hl], d                                    ; $48B4: $72
    ld h, l                                       ; $48B5: $65
    ld l, $2E                                     ; $48B6: $2E $2E
    ld l, $FE                                     ; $48B8: $2E $FE
    db $FD                                        ; $48BA: $FD
    sbc d                                         ; $48BB: $9A
    ld e, b                                       ; $48BC: $58
    rrca                                          ; $48BD: $0F
    ld b, d                                       ; $48BE: $42
    sbc e                                         ; $48BF: $9B
    cp b                                          ; $48C0: $B8
    ld e, l                                       ; $48C1: $5D
    sbc a                                         ; $48C2: $9F
    ld l, $2E                                     ; $48C3: $2E $2E
    ld l, $62                                     ; $48C5: $2E $62
    ld [hl], l                                    ; $48C7: $75

jr_01E_48C8:
    ld [hl], h                                    ; $48C8: $74

jr_01E_48C9:
    jr nz, jr_01E_490C                            ; $48C9: $20 $41

    ld h, a                                       ; $48CB: $67
    ld [hl], d                                    ; $48CC: $72
    ld h, c                                       ; $48CD: $61

jr_01E_48CE:
    ld l, l                                       ; $48CE: $6D
    rst $38                                       ; $48CF: $FF
    ld l, b                                       ; $48D0: $68

jr_01E_48D1:
    ld h, c                                       ; $48D1: $61
    ld [hl], e                                    ; $48D2: $73
    jr nz, @+$71                                  ; $48D3: $20 $6F

    ld [hl], h                                    ; $48D5: $74
    ld l, b                                       ; $48D6: $68
    ld h, l                                       ; $48D7: $65
    ld [hl], d                                    ; $48D8: $72
    jr nz, jr_01E_494B                            ; $48D9: $20 $70

    ld l, h                                       ; $48DB: $6C
    ld h, c                                       ; $48DC: $61
    ld l, [hl]                                    ; $48DD: $6E
    ld [hl], e                                    ; $48DE: $73
    cp $66                                        ; $48DF: $FE $66
    ld l, a                                       ; $48E1: $6F
    ld [hl], d                                    ; $48E2: $72
    jr nz, jr_01E_495E                            ; $48E3: $20 $79

    ld l, a                                       ; $48E5: $6F
    ld [hl], l                                    ; $48E6: $75
    ld l, $FF                                     ; $48E7: $2E $FF
    db $FD                                        ; $48E9: $FD
    sbc d                                         ; $48EA: $9A
    ld e, b                                       ; $48EB: $58
    db $10                                        ; $48EC: $10
    ld b, d                                       ; $48ED: $42
    sbc e                                         ; $48EE: $9B
    ld a, b                                       ; $48EF: $78
    ld [hl], b                                    ; $48F0: $70
    sbc a                                         ; $48F1: $9F
    ld d, l                                       ; $48F2: $55
    ld l, b                                       ; $48F3: $68
    ld l, b                                       ; $48F4: $68
    ld l, $2E                                     ; $48F5: $2E $2E

jr_01E_48F7:
    ld l, $FE                                     ; $48F7: $2E $FE
    ld c, h                                       ; $48F9: $4C
    ld l, a                                       ; $48FA: $6F
    ld l, a                                       ; $48FB: $6F
    ld l, e                                       ; $48FC: $6B
    jr nz, jr_01E_4974                            ; $48FD: $20 $75

    ld [hl], b                                    ; $48FF: $70
    jr nz, @+$76                                  ; $4900: $20 $74

    ld l, b                                       ; $4902: $68
    ld h, l                                       ; $4903: $65
    ld [hl], d                                    ; $4904: $72
    ld h, l                                       ; $4905: $65
    ld hl, $41FF                                  ; $4906: $21 $FF $41
    jr nz, jr_01E_4951                            ; $4909: $20 $46

    ld l, h                                       ; $490B: $6C

jr_01E_490C:
    ld h, c                                       ; $490C: $61
    ld l, l                                       ; $490D: $6D
    ld h, l                                       ; $490E: $65
    jr nz, jr_01E_4959                            ; $490F: $20 $48

    ld a, c                                       ; $4911: $79

jr_01E_4912:
    ld [hl], d                                    ; $4912: $72
    ld h, l                                       ; $4913: $65

jr_01E_4914:
    ld l, [hl]                                    ; $4914: $6E

jr_01E_4915:
    ld hl, $FDFE                                  ; $4915: $21 $FE $FD
    sbc d                                         ; $4918: $9A
    ld e, b                                       ; $4919: $58
    ld de, $AA58                                  ; $491A: $11 $58 $AA
    add hl, bc                                    ; $491D: $09
    nop                                           ; $491E: $00
    ld e, $30                                     ; $491F: $1E $30
    ld c, [hl]                                    ; $4921: $4E
    ld b, d                                       ; $4922: $42
    sbc e                                         ; $4923: $9B
    cp b                                          ; $4924: $B8
    ld e, l                                       ; $4925: $5D
    sbc a                                         ; $4926: $9F
    ld e, c                                       ; $4927: $59
    ld l, a                                       ; $4928: $6F
    ld [hl], l                                    ; $4929: $75
    jr nz, jr_01E_49A3                            ; $492A: $20 $77

    ld l, a                                       ; $492C: $6F
    ld l, [hl]                                    ; $492D: $6E
    daa                                           ; $492E: $27
    ld [hl], h                                    ; $492F: $74
    jr nz, jr_01E_4999                            ; $4930: $20 $67

    ld h, l                                       ; $4932: $65
    ld [hl], h                                    ; $4933: $74
    rst $38                                       ; $4934: $FF
    ld h, c                                       ; $4935: $61
    ld [hl], a                                    ; $4936: $77
    ld h, c                                       ; $4937: $61
    ld a, c                                       ; $4938: $79
    jr nz, jr_01E_49AE                            ; $4939: $20 $73

    ld l, a                                       ; $493B: $6F
    jr nz, jr_01E_49A3                            ; $493C: $20 $65

    ld h, c                                       ; $493E: $61
    ld [hl], e                                    ; $493F: $73
    ld l, c                                       ; $4940: $69
    ld l, h                                       ; $4941: $6C
    ld a, c                                       ; $4942: $79
    ld l, $FE                                     ; $4943: $2E $FE
    ld b, a                                       ; $4945: $47
    ld [hl], d                                    ; $4946: $72
    ld h, c                                       ; $4947: $61
    ld h, d                                       ; $4948: $62
    jr nz, jr_01E_49B3                            ; $4949: $20 $68

jr_01E_494B:
    ld l, c                                       ; $494B: $69
    ld l, l                                       ; $494C: $6D
    ld hl, $FDFE                                  ; $494D: $21 $FE $FD
    sbc d                                         ; $4950: $9A

jr_01E_4951:
    ld d, [hl]                                    ; $4951: $56
    dec b                                         ; $4952: $05
    ld b, d                                       ; $4953: $42
    sbc e                                         ; $4954: $9B
    cp b                                          ; $4955: $B8
    ld e, l                                       ; $4956: $5D
    sbc a                                         ; $4957: $9F
    ld c, c                                       ; $4958: $49

jr_01E_4959:
    jr nz, jr_01E_49BE                            ; $4959: $20 $63

    ld h, c                                       ; $495B: $61
    ld l, [hl]                                    ; $495C: $6E
    daa                                           ; $495D: $27

jr_01E_495E:
    ld [hl], h                                    ; $495E: $74
    jr nz, jr_01E_49C3                            ; $495F: $20 $62

    ld h, l                                       ; $4961: $65
    ld l, h                                       ; $4962: $6C
    ld l, c                                       ; $4963: $69
    ld h, l                                       ; $4964: $65
    halt                                          ; $4965: $76
    ld h, l                                       ; $4966: $65
    rst $38                                       ; $4967: $FF
    ld c, c                                       ; $4968: $49
    jr nz, jr_01E_49D3                            ; $4969: $20 $68

    ld h, c                                       ; $496B: $61
    halt                                          ; $496C: $76
    ld h, l                                       ; $496D: $65
    jr nz, jr_01E_49E4                            ; $496E: $20 $74

    ld l, a                                       ; $4970: $6F
    jr nz, jr_01E_49DF                            ; $4971: $20 $6C

    ld h, l                                       ; $4973: $65

jr_01E_4974:
    ld [hl], h                                    ; $4974: $74
    cp $79                                        ; $4975: $FE $79
    ld l, a                                       ; $4977: $6F
    ld [hl], l                                    ; $4978: $75
    jr nz, jr_01E_49E7                            ; $4979: $20 $6C

    ld l, c                                       ; $497B: $69
    halt                                          ; $497C: $76
    ld h, l                                       ; $497D: $65
    jr nz, jr_01E_49F4                            ; $497E: $20 $74

    ld l, b                                       ; $4980: $68
    ld l, c                                       ; $4981: $69
    ld [hl], e                                    ; $4982: $73
    rst $38                                       ; $4983: $FF
    ld [hl], h                                    ; $4984: $74
    ld l, c                                       ; $4985: $69
    ld l, l                                       ; $4986: $6D
    ld h, l                                       ; $4987: $65
    ld l, $2E                                     ; $4988: $2E $2E
    ld l, $FE                                     ; $498A: $2E $FE
    db $FD                                        ; $498C: $FD
    sbc d                                         ; $498D: $9A
    ld e, b                                       ; $498E: $58
    inc de                                        ; $498F: $13
    ld b, d                                       ; $4990: $42
    sbc e                                         ; $4991: $9B
    cp b                                          ; $4992: $B8
    ld e, l                                       ; $4993: $5D
    sbc a                                         ; $4994: $9F
    ld l, $2E                                     ; $4995: $2E $2E
    ld l, $62                                     ; $4997: $2E $62

jr_01E_4999:
    ld [hl], l                                    ; $4999: $75
    ld [hl], h                                    ; $499A: $74
    jr nz, jr_01E_4A06                            ; $499B: $20 $69

    ld [hl], h                                    ; $499D: $74
    jr nz, jr_01E_4A13                            ; $499E: $20 $73

    ld h, l                                       ; $49A0: $65
    ld h, l                                       ; $49A1: $65
    ld l, l                                       ; $49A2: $6D

jr_01E_49A3:
    ld [hl], e                                    ; $49A3: $73
    rst $38                                       ; $49A4: $FF
    ld b, c                                       ; $49A5: $41
    ld h, a                                       ; $49A6: $67
    ld [hl], d                                    ; $49A7: $72
    ld h, c                                       ; $49A8: $61
    ld l, l                                       ; $49A9: $6D
    jr nz, jr_01E_4A14                            ; $49AA: $20 $68

    ld h, c                                       ; $49AC: $61
    ld [hl], e                                    ; $49AD: $73

jr_01E_49AE:
    cp $73                                        ; $49AE: $FE $73
    ld l, a                                       ; $49B0: $6F
    ld l, l                                       ; $49B1: $6D
    ld h, l                                       ; $49B2: $65

jr_01E_49B3:
    ld [hl], h                                    ; $49B3: $74
    ld l, b                                       ; $49B4: $68
    ld l, c                                       ; $49B5: $69
    ld l, [hl]                                    ; $49B6: $6E
    ld h, a                                       ; $49B7: $67
    jr nz, jr_01E_4A1F                            ; $49B8: $20 $65

    ld l, h                                       ; $49BA: $6C
    ld [hl], e                                    ; $49BB: $73
    ld h, l                                       ; $49BC: $65
    rst $38                                       ; $49BD: $FF

jr_01E_49BE:
    ld l, c                                       ; $49BE: $69
    ld l, [hl]                                    ; $49BF: $6E
    jr nz, @+$75                                  ; $49C0: $20 $73

    ld [hl], h                                    ; $49C2: $74

jr_01E_49C3:
    ld l, a                                       ; $49C3: $6F
    ld [hl], d                                    ; $49C4: $72
    ld h, l                                       ; $49C5: $65
    jr nz, @+$68                                  ; $49C6: $20 $66

    ld l, a                                       ; $49C8: $6F
    ld [hl], d                                    ; $49C9: $72
    cp $79                                        ; $49CA: $FE $79
    ld l, a                                       ; $49CC: $6F
    ld [hl], l                                    ; $49CD: $75
    ld l, $FE                                     ; $49CE: $2E $FE
    db $FD                                        ; $49D0: $FD
    sbc d                                         ; $49D1: $9A
    ld e, b                                       ; $49D2: $58

jr_01E_49D3:
    inc d                                         ; $49D3: $14
    ld b, d                                       ; $49D4: $42
    sub e                                         ; $49D5: $93
    ld h, l                                       ; $49D6: $65
    rlca                                          ; $49D7: $07
    ld c, b                                       ; $49D8: $48
    ld c, a                                       ; $49D9: $4F
    ld h, h                                       ; $49DA: $64
    db $EB                                        ; $49DB: $EB
    ld c, d                                       ; $49DC: $4A
    ld h, [hl]                                    ; $49DD: $66
    ret nz                                        ; $49DE: $C0

jr_01E_49DF:
    ld e, h                                       ; $49DF: $5C
    ld hl, $0005                                  ; $49E0: $21 $05 $00
    add c                                         ; $49E3: $81

jr_01E_49E4:
    ld e, l                                       ; $49E4: $5D
    dec b                                         ; $49E5: $05
    dec b                                         ; $49E6: $05

jr_01E_49E7:
    call $00D0                                    ; $49E7: $CD $D0 $00
    jr nz, jr_01E_49E7                            ; $49EA: $20 $FB

    ld d, b                                       ; $49EC: $50
    ld [hl+], a                                   ; $49ED: $22
    dec b                                         ; $49EE: $05
    ld b, b                                       ; $49EF: $40
    dec bc                                        ; $49F0: $0B
    nop                                           ; $49F1: $00
    dec b                                         ; $49F2: $05
    ld [bc], a                                    ; $49F3: $02

jr_01E_49F4:
    db $ED                                        ; $49F4: $ED
    ld h, e                                       ; $49F5: $63
    ld a, [de]                                    ; $49F6: $1A
    inc de                                        ; $49F7: $13
    ld [de], a                                    ; $49F8: $12
    db $D3                                        ; $49F9: $D3
    nop                                           ; $49FA: $00
    ld e, $C6                                     ; $49FB: $1E $C6
    ld c, d                                       ; $49FD: $4A
    ld e, $CB                                     ; $49FE: $1E $CB
    ld c, d                                       ; $4A00: $4A
    dec bc                                        ; $4A01: $0B
    ld [bc], a                                    ; $4A02: $02
    dec b                                         ; $4A03: $05
    inc bc                                        ; $4A04: $03
    ld l, e                                       ; $4A05: $6B

jr_01E_4A06:
    ld c, d                                       ; $4A06: $4A
    ld b, b                                       ; $4A07: $40
    ld e, h                                       ; $4A08: $5C
    and b                                         ; $4A09: $A0
    sbc $30                                       ; $4A0A: $DE $30
    ld e, $38                                     ; $4A0C: $1E $38
    ld c, e                                       ; $4A0E: $4B
    ld [hl+], a                                   ; $4A0F: $22
    dec b                                         ; $4A10: $05
    ld b, b                                       ; $4A11: $40
    dec b                                         ; $4A12: $05

jr_01E_4A13:
    inc b                                         ; $4A13: $04

jr_01E_4A14:
    ld l, e                                       ; $4A14: $6B
    ld c, d                                       ; $4A15: $4A
    ld [de], a                                    ; $4A16: $12
    inc de                                        ; $4A17: $13
    ld a, [bc]                                    ; $4A18: $0A
    db $D3                                        ; $4A19: $D3
    ld h, b                                       ; $4A1A: $60
    ld e, $4A                                     ; $4A1B: $1E $4A
    ld c, e                                       ; $4A1D: $4B
    ld [hl+], a                                   ; $4A1E: $22

jr_01E_4A1F:
    dec b                                         ; $4A1F: $05
    ld b, b                                       ; $4A20: $40
    dec b                                         ; $4A21: $05
    dec b                                         ; $4A22: $05
    db $ED                                        ; $4A23: $ED
    ld h, e                                       ; $4A24: $63
    jr @+$15                                      ; $4A25: $18 $13

    db $10                                        ; $4A27: $10
    db $D3                                        ; $4A28: $D3
    nop                                           ; $4A29: $00
    ld e, $09                                     ; $4A2A: $1E $09
    ld c, e                                       ; $4A2C: $4B
    ld e, $BE                                     ; $4A2D: $1E $BE
    ld c, d                                       ; $4A2F: $4A
    dec b                                         ; $4A30: $05
    ld b, $ED                                     ; $4A31: $06 $ED
    ld h, e                                       ; $4A33: $63
    ld b, $13                                     ; $4A34: $06 $13
    cp $D2                                        ; $4A36: $FE $D2
    ld h, b                                       ; $4A38: $60
    ld e, $B1                                     ; $4A39: $1E $B1
    ld c, d                                       ; $4A3B: $4A
    ld e, $B6                                     ; $4A3C: $1E $B6
    ld c, d                                       ; $4A3E: $4A
    dec b                                         ; $4A3F: $05
    rlca                                          ; $4A40: $07
    db $ED                                        ; $4A41: $ED
    ld h, e                                       ; $4A42: $63
    jr @+$0B                                      ; $4A43: $18 $09

    add b                                         ; $4A45: $80
    pop de                                        ; $4A46: $D1
    sub b                                         ; $4A47: $90
    ld [de], a                                    ; $4A48: $12
    push bc                                       ; $4A49: $C5
    ld l, b                                       ; $4A4A: $68
    ld [de], a                                    ; $4A4B: $12
    jp z, $0568                                   ; $4A4C: $CA $68 $05

    ld [$63CE], sp                                ; $4A4F: $08 $CE $63
    ld bc, $2901                                  ; $4A52: $01 $01 $29
    ret nc                                        ; $4A55: $D0

    and h                                         ; $4A56: $A4
    ld l, $E3                                     ; $4A57: $2E $E3
    ld d, l                                       ; $4A59: $55
    ld [hl+], a                                   ; $4A5A: $22
    dec b                                         ; $4A5B: $05
    ld b, b                                       ; $4A5C: $40
    dec b                                         ; $4A5D: $05
    add hl, bc                                    ; $4A5E: $09
    adc $63                                       ; $4A5F: $CE $63
    ld bc, $2901                                  ; $4A61: $01 $01 $29
    ret nc                                        ; $4A64: $D0

    and h                                         ; $4A65: $A4
    ld l, $E3                                     ; $4A66: $2E $E3
    ld d, l                                       ; $4A68: $55
    ld [hl+], a                                   ; $4A69: $22
    dec b                                         ; $4A6A: $05
    ld b, b                                       ; $4A6B: $40
    dec b                                         ; $4A6C: $05
    ld a, [bc]                                    ; $4A6D: $0A
    adc $63                                       ; $4A6E: $CE $63
    ld bc, $2901                                  ; $4A70: $01 $01 $29
    ret nc                                        ; $4A73: $D0

    and h                                         ; $4A74: $A4
    ld l, $E3                                     ; $4A75: $2E $E3
    ld d, l                                       ; $4A77: $55
    ld [hl+], a                                   ; $4A78: $22
    dec b                                         ; $4A79: $05
    ld b, b                                       ; $4A7A: $40
    dec bc                                        ; $4A7B: $0B
    rlca                                          ; $4A7C: $07
    dec bc                                        ; $4A7D: $0B
    ld [$090B], sp                                ; $4A7E: $08 $0B $09
    dec bc                                        ; $4A81: $0B
    ld a, [bc]                                    ; $4A82: $0A
    ld l, e                                       ; $4A83: $6B
    jr nc, jr_01E_4A91                            ; $4A84: $30 $0B

    jr nz, jr_01E_4AC8                            ; $4A86: $20 $40

    nop                                           ; $4A88: $00
    add b                                         ; $4A89: $80
    nop                                           ; $4A8A: $00
    ld l, e                                       ; $4A8B: $6B
    jr nc, jr_01E_4ADD                            ; $4A8C: $30 $4F

    xor a                                         ; $4A8E: $AF
    ld a, h                                       ; $4A8F: $7C
    nop                                           ; $4A90: $00

jr_01E_4A91:
    add e                                         ; $4A91: $83
    nop                                           ; $4A92: $00
    ld l, e                                       ; $4A93: $6B

jr_01E_4A94:
    jr nc, jr_01E_4AA1                            ; $4A94: $30 $0B

    jr nc, jr_01E_4AE7                            ; $4A96: $30 $4F

    nop                                           ; $4A98: $00
    add [hl]                                      ; $4A99: $86
    nop                                           ; $4A9A: $00
    ld l, e                                       ; $4A9B: $6B
    inc d                                         ; $4A9C: $14
    dec bc                                        ; $4A9D: $0B
    ldh [rLYC], a                                 ; $4A9E: $E0 $45
    nop                                           ; $4AA0: $00

jr_01E_4AA1:
    adc c                                         ; $4AA1: $89
    nop                                           ; $4AA2: $00
    ld l, e                                       ; $4AA3: $6B
    ld b, $0D                                     ; $4AA4: $06 $0D
    ld [hl], b                                    ; $4AA6: $70
    ld e, e                                       ; $4AA7: $5B
    ld b, b                                       ; $4AA8: $40
    adc d                                         ; $4AA9: $8A
    nop                                           ; $4AAA: $00
    nop                                           ; $4AAB: $00
    add d                                         ; $4AAC: $82
    rra                                           ; $4AAD: $1F
    db $10                                        ; $4AAE: $10
    sub h                                         ; $4AAF: $94
    ld b, d                                       ; $4AB0: $42
    inc d                                         ; $4AB1: $14
    rrca                                          ; $4AB2: $0F
    dec c                                         ; $4AB3: $0D
    ld a, h                                       ; $4AB4: $7C
    ld b, d                                       ; $4AB5: $42
    ld e, e                                       ; $4AB6: $5B
    ld e, $3D                                     ; $4AB7: $1E $3D
    ld b, d                                       ; $4AB9: $42
    ld b, l                                       ; $4ABA: $45
    rrca                                          ; $4ABB: $0F
    ccf                                           ; $4ABC: $3F
    ld a, h                                       ; $4ABD: $7C
    ld e, e                                       ; $4ABE: $5B
    ld e, $E5                                     ; $4ABF: $1E $E5
    ld b, c                                       ; $4AC1: $41
    ld b, l                                       ; $4AC2: $45
    db $10                                        ; $4AC3: $10
    add $63                                       ; $4AC4: $C6 $63
    inc d                                         ; $4AC6: $14
    db $10                                        ; $4AC7: $10

jr_01E_4AC8:
    adc d                                         ; $4AC8: $8A
    ld h, e                                       ; $4AC9: $63
    ld b, d                                       ; $4ACA: $42
    ld e, e                                       ; $4ACB: $5B
    ld e, $17                                     ; $4ACC: $1E $17
    ld b, b                                       ; $4ACE: $40
    ld b, l                                       ; $4ACF: $45
    db $10                                        ; $4AD0: $10
    add $63                                       ; $4AD1: $C6 $63
    ld b, d                                       ; $4AD3: $42
    dec d                                         ; $4AD4: $15
    jr nz, jr_01E_4B4E                            ; $4AD5: $20 $77

    ld d, b                                       ; $4AD7: $50
    db $10                                        ; $4AD8: $10
    jr nz, @+$4F                                  ; $4AD9: $20 $4D

    ld d, b                                       ; $4ADB: $50
    inc d                                         ; $4ADC: $14

jr_01E_4ADD:
    jr nz, jr_01E_4A94                            ; $4ADD: $20 $B5

    ld d, b                                       ; $4ADF: $50
    nop                                           ; $4AE0: $00
    nop                                           ; $4AE1: $00
    ld d, [hl]                                    ; $4AE2: $56
    ld bc, $1542                                  ; $4AE3: $01 $42 $15
    db $10                                        ; $4AE6: $10

jr_01E_4AE7:
    adc d                                         ; $4AE7: $8A
    ld h, e                                       ; $4AE8: $63
    nop                                           ; $4AE9: $00
    nop                                           ; $4AEA: $00
    dec bc                                        ; $4AEB: $0B
    inc b                                         ; $4AEC: $04
    ld h, b                                       ; $4AED: $60
    ld b, e                                       ; $4AEE: $43
    dec d                                         ; $4AEF: $15
    db $10                                        ; $4AF0: $10
    ld d, [hl]                                    ; $4AF1: $56
    ld h, e                                       ; $4AF2: $63
    ld [$6610], sp                                ; $4AF3: $08 $10 $66
    ld h, e                                       ; $4AF6: $63
    ld [$5610], sp                                ; $4AF7: $08 $10 $56
    ld h, e                                       ; $4AFA: $63
    ld [$8A10], sp                                ; $4AFB: $08 $10 $8A
    ld h, e                                       ; $4AFE: $63
    nop                                           ; $4AFF: $00
    nop                                           ; $4B00: $00
    ld d, [hl]                                    ; $4B01: $56
    dec c                                         ; $4B02: $0D
    dec bc                                        ; $4B03: $0B
    inc bc                                        ; $4B04: $03
    ld b, b                                       ; $4B05: $40
    ld b, b                                       ; $4B06: $40
    add hl, de                                    ; $4B07: $19
    ld b, d                                       ; $4B08: $42
    inc d                                         ; $4B09: $14
    db $10                                        ; $4B0A: $10
    adc d                                         ; $4B0B: $8A
    ld h, e                                       ; $4B0C: $63
    add e                                         ; $4B0D: $83
    inc a                                         ; $4B0E: $3C
    inc b                                         ; $4B0F: $04
    nop                                           ; $4B10: $00
    nop                                           ; $4B11: $00
    add hl, bc                                    ; $4B12: $09
    inc bc                                        ; $4B13: $03
    ld e, $38                                     ; $4B14: $1E $38
    ld c, e                                       ; $4B16: $4B
    add hl, bc                                    ; $4B17: $09
    inc b                                         ; $4B18: $04
    ld e, $4A                                     ; $4B19: $1E $4A
    ld c, e                                       ; $4B1B: $4B
    dec d                                         ; $4B1C: $15
    db $10                                        ; $4B1D: $10
    ld h, $63                                     ; $4B1E: $26 $63
    jr nz, jr_01E_4B32                            ; $4B20: $20 $10

    adc d                                         ; $4B22: $8A
    ld h, e                                       ; $4B23: $63
    nop                                           ; $4B24: $00
    nop                                           ; $4B25: $00
    ld e, e                                       ; $4B26: $5B
    ld e, $16                                     ; $4B27: $1E $16
    ld b, c                                       ; $4B29: $41
    ld h, d                                       ; $4B2A: $62
    ld bc, $1E5A                                  ; $4B2B: $01 $5A $1E
    ld [hl-], a                                   ; $4B2E: $32
    ld c, e                                       ; $4B2F: $4B
    ld [de], a                                    ; $4B30: $12
    ld b, d                                       ; $4B31: $42

jr_01E_4B32:
    add hl, bc                                    ; $4B32: $09
    dec b                                         ; $4B33: $05
    ld e, $C6                                     ; $4B34: $1E $C6
    ld c, d                                       ; $4B36: $4A
    ld b, d                                       ; $4B37: $42
    ld d, $40                                     ; $4B38: $16 $40
    ld a, [hl-]                                   ; $4B3A: $3A
    ld [hl], b                                    ; $4B3B: $70
    ld a, b                                       ; $4B3C: $78
    cp $00                                        ; $4B3D: $FE $00
    nop                                           ; $4B3F: $00
    add hl, de                                    ; $4B40: $19
    ld b, d                                       ; $4B41: $42
    dec d                                         ; $4B42: $15
    db $10                                        ; $4B43: $10
    sub h                                         ; $4B44: $94
    ld h, e                                       ; $4B45: $63
    ld b, b                                       ; $4B46: $40
    nop                                           ; $4B47: $00
    ld [de], a                                    ; $4B48: $12
    ld b, d                                       ; $4B49: $42
    dec d                                         ; $4B4A: $15
    rrca                                          ; $4B4B: $0F
    rst $18                                       ; $4B4C: $DF
    ld a, e                                       ; $4B4D: $7B

jr_01E_4B4E:
    jr nz, jr_01E_4B5F                            ; $4B4E: $20 $0F

    dec c                                         ; $4B50: $0D
    ld a, h                                       ; $4B51: $7C
    nop                                           ; $4B52: $00
    nop                                           ; $4B53: $00
    ld e, e                                       ; $4B54: $5B
    ld e, $45                                     ; $4B55: $1E $45
    ld b, c                                       ; $4B57: $41
    ld h, d                                       ; $4B58: $62
    inc c                                         ; $4B59: $0C
    ld d, [hl]                                    ; $4B5A: $56
    ld b, e                                       ; $4B5B: $43
    ld h, b                                       ; $4B5C: $60
    dec c                                         ; $4B5D: $0D
    dec d                                         ; $4B5E: $15

jr_01E_4B5F:
    rrca                                          ; $4B5F: $0F
    rst $08                                       ; $4B60: $CF
    ld a, e                                       ; $4B61: $7B
    inc d                                         ; $4B62: $14
    nop                                           ; $4B63: $00
    ld e, e                                       ; $4B64: $5B
    ld e, $BD                                     ; $4B65: $1E $BD
    ld b, c                                       ; $4B67: $41
    dec d                                         ; $4B68: $15
    rrca                                          ; $4B69: $0F
    rst $08                                       ; $4B6A: $CF
    ld a, e                                       ; $4B6B: $7B
    ld l, l                                       ; $4B6C: $6D
    rrca                                          ; $4B6D: $0F
    inc bc                                        ; $4B6E: $03
    ld a, h                                       ; $4B6F: $7C
    db $10                                        ; $4B70: $10
    rrca                                          ; $4B71: $0F
    dec c                                         ; $4B72: $0D
    ld a, h                                       ; $4B73: $7C
    jr z, jr_01E_4B76                             ; $4B74: $28 $00

jr_01E_4B76:
    ld e, e                                       ; $4B76: $5B
    ld e, $D2                                     ; $4B77: $1E $D2
    ld b, c                                       ; $4B79: $41
    ld h, d                                       ; $4B7A: $62
    scf                                           ; $4B7B: $37
    dec bc                                        ; $4B7C: $0B
    dec b                                         ; $4B7D: $05
    ld b, b                                       ; $4B7E: $40
    ld [$060B], sp                                ; $4B7F: $08 $0B $06
    ld b, b                                       ; $4B82: $40
    inc b                                         ; $4B83: $04
    add hl, de                                    ; $4B84: $19
    ld b, d                                       ; $4B85: $42
    xor h                                         ; $4B86: $AC
    or d                                          ; $4B87: $B2
    and d                                         ; $4B88: $A2
    ld bc, $044B                                  ; $4B89: $01 $4B $04
    ld e, $10                                     ; $4B8C: $1E $10
    nop                                           ; $4B8E: $00
    push de                                       ; $4B8F: $D5
    ld c, c                                       ; $4B90: $49
    rst $38                                       ; $4B91: $FF
    sub e                                         ; $4B92: $93
    ld h, l                                       ; $4B93: $65
    rlca                                          ; $4B94: $07
    ld c, b                                       ; $4B95: $48
    ld c, a                                       ; $4B96: $4F
    ld h, h                                       ; $4B97: $64
    db $EB                                        ; $4B98: $EB
    ld c, d                                       ; $4B99: $4A
    ld h, [hl]                                    ; $4B9A: $66
    ret nz                                        ; $4B9B: $C0

    ld e, h                                       ; $4B9C: $5C
    ld hl, $0005                                  ; $4B9D: $21 $05 $00
    add c                                         ; $4BA0: $81
    ld e, l                                       ; $4BA1: $5D
    dec b                                         ; $4BA2: $05
    dec b                                         ; $4BA3: $05

jr_01E_4BA4:
    call $00D0                                    ; $4BA4: $CD $D0 $00
    jr nz, jr_01E_4BA4                            ; $4BA7: $20 $FB

    ld d, b                                       ; $4BA9: $50
    ld [hl+], a                                   ; $4BAA: $22
    dec b                                         ; $4BAB: $05
    ld b, b                                       ; $4BAC: $40
    dec b                                         ; $4BAD: $05
    ld [$63CE], sp                                ; $4BAE: $08 $CE $63
    ld bc, $2901                                  ; $4BB1: $01 $01 $29
    ret nc                                        ; $4BB4: $D0

    and h                                         ; $4BB5: $A4
    ld l, $E3                                     ; $4BB6: $2E $E3
    ld d, l                                       ; $4BB8: $55
    ld [hl+], a                                   ; $4BB9: $22
    dec b                                         ; $4BBA: $05
    ld b, b                                       ; $4BBB: $40
    dec b                                         ; $4BBC: $05
    add hl, bc                                    ; $4BBD: $09
    adc $63                                       ; $4BBE: $CE $63
    ld bc, $2901                                  ; $4BC0: $01 $01 $29
    ret nc                                        ; $4BC3: $D0

    and h                                         ; $4BC4: $A4
    ld l, $E3                                     ; $4BC5: $2E $E3
    ld d, l                                       ; $4BC7: $55
    ld [hl+], a                                   ; $4BC8: $22
    dec b                                         ; $4BC9: $05
    ld b, b                                       ; $4BCA: $40
    dec b                                         ; $4BCB: $05
    ld a, [bc]                                    ; $4BCC: $0A
    adc $63                                       ; $4BCD: $CE $63
    ld bc, $2901                                  ; $4BCF: $01 $01 $29
    ret nc                                        ; $4BD2: $D0

    and h                                         ; $4BD3: $A4
    ld l, $E3                                     ; $4BD4: $2E $E3
    ld d, l                                       ; $4BD6: $55
    ld [hl+], a                                   ; $4BD7: $22
    dec b                                         ; $4BD8: $05
    ld b, b                                       ; $4BD9: $40
    ld l, e                                       ; $4BDA: $6B
    ld b, $0D                                     ; $4BDB: $06 $0D
    ld [hl], b                                    ; $4BDD: $70
    ld e, e                                       ; $4BDE: $5B
    ld b, b                                       ; $4BDF: $40
    adc d                                         ; $4BE0: $8A
    nop                                           ; $4BE1: $00
    dec bc                                        ; $4BE2: $0B
    nop                                           ; $4BE3: $00
    dec bc                                        ; $4BE4: $0B
    ld [$090B], sp                                ; $4BE5: $08 $0B $09
    dec bc                                        ; $4BE8: $0B
    ld a, [bc]                                    ; $4BE9: $0A
    nop                                           ; $4BEA: $00
    rra                                           ; $4BEB: $1F
    dec e                                         ; $4BEC: $1D
    add d                                         ; $4BED: $82
    sub h                                         ; $4BEE: $94
    ld b, d                                       ; $4BEF: $42
    sub e                                         ; $4BF0: $93
    ld b, e                                       ; $4BF1: $43
    ld a, [bc]                                    ; $4BF2: $0A
    nop                                           ; $4BF3: $00
    and l                                         ; $4BF4: $A5
    and c                                         ; $4BF5: $A1
    ld [$FE1E], sp                                ; $4BF6: $08 $1E $FE
    ld c, e                                       ; $4BF9: $4B
    xor a                                         ; $4BFA: $AF
    and l                                         ; $4BFB: $A5
    and c                                         ; $4BFC: $A1
    inc b                                         ; $4BFD: $04
    ld h, l                                       ; $4BFE: $65
    rlca                                          ; $4BFF: $07
    ld c, b                                       ; $4C00: $48
    ld c, a                                       ; $4C01: $4F
    ld h, h                                       ; $4C02: $64
    db $EB                                        ; $4C03: $EB
    ld c, d                                       ; $4C04: $4A
    ld h, [hl]                                    ; $4C05: $66
    ret nz                                        ; $4C06: $C0

    ld e, h                                       ; $4C07: $5C
    ld hl, $0005                                  ; $4C08: $21 $05 $00
    ld l, e                                       ; $4C0B: $6B
    ld c, d                                       ; $4C0C: $4A
    ld hl, $C911                                  ; $4C0D: $21 $11 $C9
    jp nc, $1E00                                  ; $4C10: $D2 $00 $1E

    rra                                           ; $4C13: $1F

jr_01E_4C14:
    ld c, [hl]                                    ; $4C14: $4E
    ld [hl+], a                                   ; $4C15: $22
    dec b                                         ; $4C16: $05
    ld b, b                                       ; $4C17: $40
    dec b                                         ; $4C18: $05
    ld [bc], a                                    ; $4C19: $02
    ld l, e                                       ; $4C1A: $6B
    ld c, d                                       ; $4C1B: $4A
    jr nz, jr_01E_4C2F                            ; $4C1C: $20 $11

    ret z                                         ; $4C1E: $C8

    jp nc, $1E00                                  ; $4C1F: $D2 $00 $1E

    ld e, d                                       ; $4C22: $5A
    ld c, [hl]                                    ; $4C23: $4E
    ld [hl+], a                                   ; $4C24: $22
    dec b                                         ; $4C25: $05
    ld b, b                                       ; $4C26: $40
    dec b                                         ; $4C27: $05
    inc bc                                        ; $4C28: $03
    ld l, e                                       ; $4C29: $6B
    ld c, d                                       ; $4C2A: $4A
    rra                                           ; $4C2B: $1F
    ld de, $D2C7                                  ; $4C2C: $11 $C7 $D2

jr_01E_4C2F:
    jr nc, jr_01E_4C4F                            ; $4C2F: $30 $1E

    ld l, b                                       ; $4C31: $68
    ld c, l                                       ; $4C32: $4D
    ld [hl+], a                                   ; $4C33: $22
    dec b                                         ; $4C34: $05
    ld b, b                                       ; $4C35: $40
    dec b                                         ; $4C36: $05
    inc b                                         ; $4C37: $04
    ld l, e                                       ; $4C38: $6B
    ld c, d                                       ; $4C39: $4A
    inc hl                                        ; $4C3A: $23
    ld de, $D2CB                                  ; $4C3B: $11 $CB $D2
    jr nc, @+$20                                  ; $4C3E: $30 $1E

    or [hl]                                       ; $4C40: $B6
    ld c, l                                       ; $4C41: $4D
    ld [hl+], a                                   ; $4C42: $22
    dec b                                         ; $4C43: $05
    ld b, b                                       ; $4C44: $40
    dec b                                         ; $4C45: $05
    dec b                                         ; $4C46: $05
    ld l, e                                       ; $4C47: $6B
    ld c, d                                       ; $4C48: $4A
    ld [hl+], a                                   ; $4C49: $22
    ld [de], a                                    ; $4C4A: $12
    ld a, [c]                                     ; $4C4B: $F2
    jp nc, $1E60                                  ; $4C4C: $D2 $60 $1E

jr_01E_4C4F:
    ld hl, sp+$4D                                 ; $4C4F: $F8 $4D
    ld [hl+], a                                   ; $4C51: $22
    dec b                                         ; $4C52: $05
    ld b, b                                       ; $4C53: $40
    dec b                                         ; $4C54: $05
    ld b, $6B                                     ; $4C55: $06 $6B
    ld c, d                                       ; $4C57: $4A
    ld e, $07                                     ; $4C58: $1E $07
    ld [hl], $D1                                  ; $4C5A: $36 $D1
    nop                                           ; $4C5C: $00
    jr nz, jr_01E_4C14                            ; $4C5D: $20 $B5

    ld d, b                                       ; $4C5F: $50
    ld [hl+], a                                   ; $4C60: $22
    dec b                                         ; $4C61: $05
    ld b, b                                       ; $4C62: $40
    dec b                                         ; $4C63: $05
    rlca                                          ; $4C64: $07
    ld l, e                                       ; $4C65: $6B
    ld c, d                                       ; $4C66: $4A
    ld hl, $3907                                  ; $4C67: $21 $07 $39
    pop de                                        ; $4C6A: $D1
    adc e                                         ; $4C6B: $8B
    ld e, $2E                                     ; $4C6C: $1E $2E
    ld d, c                                       ; $4C6E: $51
    ld [hl+], a                                   ; $4C6F: $22
    dec b                                         ; $4C70: $05
    ld b, b                                       ; $4C71: $40
    dec b                                         ; $4C72: $05
    ld [$4A6B], sp                                ; $4C73: $08 $6B $4A
    dec h                                         ; $4C76: $25
    rlca                                          ; $4C77: $07
    dec a                                         ; $4C78: $3D
    pop de                                        ; $4C79: $D1
    or [hl]                                       ; $4C7A: $B6
    ld e, $29                                     ; $4C7B: $1E $29
    ld d, d                                       ; $4C7D: $52
    ld [hl+], a                                   ; $4C7E: $22
    dec b                                         ; $4C7F: $05
    ld b, b                                       ; $4C80: $40
    dec b                                         ; $4C81: $05
    add hl, bc                                    ; $4C82: $09
    ld l, e                                       ; $4C83: $6B
    ld c, d                                       ; $4C84: $4A
    ld [hl+], a                                   ; $4C85: $22
    add hl, bc                                    ; $4C86: $09

jr_01E_4C87:
    adc d                                         ; $4C87: $8A
    pop de                                        ; $4C88: $D1
    or [hl]                                       ; $4C89: $B6
    ld de, $7610                                  ; $4C8A: $11 $10 $76
    ld [hl+], a                                   ; $4C8D: $22
    dec b                                         ; $4C8E: $05
    ld b, b                                       ; $4C8F: $40
    dec b                                         ; $4C90: $05
    ld a, [bc]                                    ; $4C91: $0A
    ld l, e                                       ; $4C92: $6B
    ld c, d                                       ; $4C93: $4A
    ld hl, $8909                                  ; $4C94: $21 $09 $89
    pop de                                        ; $4C97: $D1
    or [hl]                                       ; $4C98: $B6
    ld e, $28                                     ; $4C99: $1E $28
    ld c, a                                       ; $4C9B: $4F
    ld [hl+], a                                   ; $4C9C: $22
    dec b                                         ; $4C9D: $05
    ld b, b                                       ; $4C9E: $40
    dec b                                         ; $4C9F: $05
    dec bc                                        ; $4CA0: $0B
    ld l, e                                       ; $4CA1: $6B
    ld c, d                                       ; $4CA2: $4A
    ld [hl+], a                                   ; $4CA3: $22
    rlca                                          ; $4CA4: $07
    ld a, [hl-]                                   ; $4CA5: $3A
    pop de                                        ; $4CA6: $D1
    ld h, b                                       ; $4CA7: $60
    ld e, $0A                                     ; $4CA8: $1E $0A
    ld c, l                                       ; $4CAA: $4D
    ld [hl+], a                                   ; $4CAB: $22
    dec b                                         ; $4CAC: $05
    ld b, b                                       ; $4CAD: $40
    dec b                                         ; $4CAE: $05
    ld [de], a                                    ; $4CAF: $12
    ld l, e                                       ; $4CB0: $6B
    ld c, d                                       ; $4CB1: $4A
    jr nz, jr_01E_4CBB                            ; $4CB2: $20 $07

    jr c, jr_01E_4C87                             ; $4CB4: $38 $D1

    ld h, b                                       ; $4CB6: $60
    ld e, $3A                                     ; $4CB7: $1E $3A
    ld c, l                                       ; $4CB9: $4D
    ld [hl+], a                                   ; $4CBA: $22

jr_01E_4CBB:
    dec b                                         ; $4CBB: $05
    ld b, b                                       ; $4CBC: $40
    ld l, e                                       ; $4CBD: $6B
    ld a, [de]                                    ; $4CBE: $1A
    inc c                                         ; $4CBF: $0C
    ldh a, [rOCPD]                                ; $4CC0: $F0 $6B
    nop                                           ; $4CC2: $00
    add b                                         ; $4CC3: $80
    nop                                           ; $4CC4: $00
    ld l, e                                       ; $4CC5: $6B
    jr z, jr_01E_4CD4                             ; $4CC6: $28 $0C

    or b                                          ; $4CC8: $B0
    ld d, a                                       ; $4CC9: $57
    nop                                           ; $4CCA: $00
    add e                                         ; $4CCB: $83
    nop                                           ; $4CCC: $00
    ld l, e                                       ; $4CCD: $6B
    dec hl                                        ; $4CCE: $2B
    dec bc                                        ; $4CCF: $0B
    db $10                                        ; $4CD0: $10
    ld l, d                                       ; $4CD1: $6A
    nop                                           ; $4CD2: $00
    add [hl]                                      ; $4CD3: $86

jr_01E_4CD4:
    nop                                           ; $4CD4: $00
    ld l, e                                       ; $4CD5: $6B
    dec hl                                        ; $4CD6: $2B
    dec bc                                        ; $4CD7: $0B
    jr nc, jr_01E_4D29                            ; $4CD8: $30 $4F

    or b                                          ; $4CDA: $B0
    adc b                                         ; $4CDB: $88
    nop                                           ; $4CDC: $00
    ld l, e                                       ; $4CDD: $6B
    ld a, [hl+]                                   ; $4CDE: $2A
    inc c                                         ; $4CDF: $0C
    ldh a, [rOBP0]                                ; $4CE0: $F0 $48
    ld h, b                                       ; $4CE2: $60
    adc e                                         ; $4CE3: $8B
    nop                                           ; $4CE4: $00
    dec bc                                        ; $4CE5: $0B
    nop                                           ; $4CE6: $00
    dec bc                                        ; $4CE7: $0B
    ld [bc], a                                    ; $4CE8: $02
    dec bc                                        ; $4CE9: $0B
    inc bc                                        ; $4CEA: $03
    dec bc                                        ; $4CEB: $0B
    inc b                                         ; $4CEC: $04
    dec bc                                        ; $4CED: $0B
    dec b                                         ; $4CEE: $05
    add d                                         ; $4CEF: $82
    ld l, a                                       ; $4CF0: $6F
    ld b, $00                                     ; $4CF1: $06 $00
    nop                                           ; $4CF3: $00
    ld l, a                                       ; $4CF4: $6F
    add a                                         ; $4CF5: $87
    nop                                           ; $4CF6: $00
    nop                                           ; $4CF7: $00
    halt                                          ; $4CF8: $76
    ld [$7687], sp                                ; $4CF9: $08 $87 $76
    ld [$9406], sp                                ; $4CFC: $08 $06 $94
    rra                                           ; $4CFF: $1F
    dec e                                         ; $4D00: $1D
    ld h, b                                       ; $4D01: $60
    ld h, h                                       ; $4D02: $64
    ld b, b                                       ; $4D03: $40
    jr nz, jr_01E_4D4B                            ; $4D04: $20 $45

    inc e                                         ; $4D06: $1C
    xor c                                         ; $4D07: $A9
    ld b, d                                       ; $4D08: $42
    ld b, d                                       ; $4D09: $42
    dec d                                         ; $4D0A: $15
    db $10                                        ; $4D0B: $10
    ret z                                         ; $4D0C: $C8

    ld c, [hl]                                    ; $4D0D: $4E
    ld d, b                                       ; $4D0E: $50
    db $10                                        ; $4D0F: $10
    ld [hl], h                                    ; $4D10: $74
    ld c, a                                       ; $4D11: $4F
    nop                                           ; $4D12: $00
    nop                                           ; $4D13: $00
    ld h, b                                       ; $4D14: $60
    dec b                                         ; $4D15: $05
    ld b, b                                       ; $4D16: $40
    ld [$1015], sp                                ; $4D17: $08 $15 $10
    ld [$284F], sp                                ; $4D1A: $08 $4F $28
    db $10                                        ; $4D1D: $10
    ret c                                         ; $4D1E: $D8

    ld c, [hl]                                    ; $4D1F: $4E
    inc b                                         ; $4D20: $04
    db $10                                        ; $4D21: $10
    ld c, h                                       ; $4D22: $4C
    ld c, a                                       ; $4D23: $4F
    nop                                           ; $4D24: $00
    nop                                           ; $4D25: $00
    ld b, d                                       ; $4D26: $42
    dec d                                         ; $4D27: $15
    db $10                                        ; $4D28: $10

jr_01E_4D29:
    ld [$204F], sp                                ; $4D29: $08 $4F $20
    db $10                                        ; $4D2C: $10
    jr jr_01E_4D7E                                ; $4D2D: $18 $4F

    jr nz, jr_01E_4D41                            ; $4D2F: $20 $10

    ret z                                         ; $4D31: $C8

    ld c, [hl]                                    ; $4D32: $4E
    inc b                                         ; $4D33: $04
    db $10                                        ; $4D34: $10
    ld b, d                                       ; $4D35: $42
    ld c, a                                       ; $4D36: $4F
    nop                                           ; $4D37: $00
    nop                                           ; $4D38: $00
    ld b, d                                       ; $4D39: $42
    dec d                                         ; $4D3A: $15
    db $10                                        ; $4D3B: $10
    ret z                                         ; $4D3C: $C8

    ld c, [hl]                                    ; $4D3D: $4E
    ld h, b                                       ; $4D3E: $60
    db $10                                        ; $4D3F: $10
    ld b, d                                       ; $4D40: $42

jr_01E_4D41:
    ld c, a                                       ; $4D41: $4F
    nop                                           ; $4D42: $00
    nop                                           ; $4D43: $00
    ld h, b                                       ; $4D44: $60
    dec b                                         ; $4D45: $05
    dec d                                         ; $4D46: $15
    db $10                                        ; $4D47: $10
    ld [$204F], sp                                ; $4D48: $08 $4F $20

jr_01E_4D4B:
    db $10                                        ; $4D4B: $10
    add sp, $4E                                   ; $4D4C: $E8 $4E
    inc b                                         ; $4D4E: $04
    db $10                                        ; $4D4F: $10
    ld d, [hl]                                    ; $4D50: $56
    ld c, a                                       ; $4D51: $4F
    nop                                           ; $4D52: $00
    nop                                           ; $4D53: $00
    ld b, d                                       ; $4D54: $42
    dec d                                         ; $4D55: $15
    db $10                                        ; $4D56: $10
    ld [$284F], sp                                ; $4D57: $08 $4F $28
    db $10                                        ; $4D5A: $10
    jr jr_01E_4DAC                                ; $4D5B: $18 $4F

    db $10                                        ; $4D5D: $10
    db $10                                        ; $4D5E: $10
    cp b                                          ; $4D5F: $B8
    ld c, [hl]                                    ; $4D60: $4E
    inc b                                         ; $4D61: $04
    db $10                                        ; $4D62: $10
    jr c, jr_01E_4DB4                             ; $4D63: $38 $4F

    nop                                           ; $4D65: $00
    nop                                           ; $4D66: $00
    ld b, d                                       ; $4D67: $42
    inc d                                         ; $4D68: $14
    db $10                                        ; $4D69: $10
    dec d                                         ; $4D6A: $15
    ld [hl], b                                    ; $4D6B: $70
    ld h, b                                       ; $4D6C: $60
    inc bc                                        ; $4D6D: $03
    ld b, b                                       ; $4D6E: $40
    ld d, b                                       ; $4D6F: $50
    dec d                                         ; $4D70: $15
    db $10                                        ; $4D71: $10
    push de                                       ; $4D72: $D5
    ld l, a                                       ; $4D73: $6F
    ld [$0510], sp                                ; $4D74: $08 $10 $05
    ld [hl], b                                    ; $4D77: $70
    ld [$1510], sp                                ; $4D78: $08 $10 $15
    ld [hl], b                                    ; $4D7B: $70
    nop                                           ; $4D7C: $00
    nop                                           ; $4D7D: $00

jr_01E_4D7E:
    ld h, d                                       ; $4D7E: $62
    add hl, bc                                    ; $4D7F: $09
    ld b, b                                       ; $4D80: $40
    ld [$1015], sp                                ; $4D81: $08 $15 $10
    push bc                                       ; $4D84: $C5
    ld l, a                                       ; $4D85: $6F
    ld [$1510], sp                                ; $4D86: $08 $10 $15
    ld [hl], b                                    ; $4D89: $70
    nop                                           ; $4D8A: $00
    nop                                           ; $4D8B: $00
    ld h, d                                       ; $4D8C: $62
    ld l, [hl]                                    ; $4D8D: $6E
    ld b, b                                       ; $4D8E: $40
    ld [$1015], sp                                ; $4D8F: $08 $15 $10
    inc sp                                        ; $4D92: $33
    ld [hl], b                                    ; $4D93: $70
    jr jr_01E_4DA6                                ; $4D94: $18 $10

    dec d                                         ; $4D96: $15
    ld [hl], b                                    ; $4D97: $70
    nop                                           ; $4D98: $00
    nop                                           ; $4D99: $00
    ld h, d                                       ; $4D9A: $62
    xor d                                         ; $4D9B: $AA
    ld e, h                                       ; $4D9C: $5C
    nop                                           ; $4D9D: $00
    ld [bc], a                                    ; $4D9E: $02
    dec d                                         ; $4D9F: $15
    db $10                                        ; $4DA0: $10
    rra                                           ; $4DA1: $1F
    ld [hl], b                                    ; $4DA2: $70
    db $10                                        ; $4DA3: $10
    db $10                                        ; $4DA4: $10
    ld d, c                                       ; $4DA5: $51

jr_01E_4DA6:
    ld [hl], b                                    ; $4DA6: $70
    db $10                                        ; $4DA7: $10
    db $10                                        ; $4DA8: $10
    push af                                       ; $4DA9: $F5
    ld l, a                                       ; $4DAA: $6F
    inc c                                         ; $4DAB: $0C

jr_01E_4DAC:
    db $10                                        ; $4DAC: $10
    sub l                                         ; $4DAD: $95
    ld l, a                                       ; $4DAE: $6F
    ld [$5110], sp                                ; $4DAF: $08 $10 $51
    ld [hl], b                                    ; $4DB2: $70
    nop                                           ; $4DB3: $00

jr_01E_4DB4:
    nop                                           ; $4DB4: $00
    ld b, d                                       ; $4DB5: $42
    inc d                                         ; $4DB6: $14
    db $10                                        ; $4DB7: $10
    dec d                                         ; $4DB8: $15
    ld [hl], b                                    ; $4DB9: $70
    ld h, b                                       ; $4DBA: $60
    inc bc                                        ; $4DBB: $03
    ld b, b                                       ; $4DBC: $40
    ld e, b                                       ; $4DBD: $58
    dec d                                         ; $4DBE: $15
    db $10                                        ; $4DBF: $10
    push de                                       ; $4DC0: $D5
    ld l, a                                       ; $4DC1: $6F
    ld [$F510], sp                                ; $4DC2: $08 $10 $F5
    ld l, a                                       ; $4DC5: $6F
    ld [$1510], sp                                ; $4DC6: $08 $10 $15
    ld [hl], b                                    ; $4DC9: $70
    nop                                           ; $4DCA: $00
    nop                                           ; $4DCB: $00
    ld h, d                                       ; $4DCC: $62
    add hl, bc                                    ; $4DCD: $09
    ld b, b                                       ; $4DCE: $40
    db $10                                        ; $4DCF: $10
    dec d                                         ; $4DD0: $15
    db $10                                        ; $4DD1: $10
    or l                                          ; $4DD2: $B5
    ld l, a                                       ; $4DD3: $6F
    ld [$1510], sp                                ; $4DD4: $08 $10 $15

jr_01E_4DD7:
    ld [hl], b                                    ; $4DD7: $70
    nop                                           ; $4DD8: $00
    nop                                           ; $4DD9: $00
    ld h, d                                       ; $4DDA: $62
    ld l, [hl]                                    ; $4DDB: $6E
    dec d                                         ; $4DDC: $15
    db $10                                        ; $4DDD: $10
    add hl, hl                                    ; $4DDE: $29
    ld [hl], b                                    ; $4DDF: $70
    jr nz, jr_01E_4DF2                            ; $4DE0: $20 $10

    dec d                                         ; $4DE2: $15
    ld [hl], b                                    ; $4DE3: $70
    nop                                           ; $4DE4: $00
    nop                                           ; $4DE5: $00
    ld e, h                                       ; $4DE6: $5C
    nop                                           ; $4DE7: $00
    ld [bc], a                                    ; $4DE8: $02
    dec d                                         ; $4DE9: $15
    db $10                                        ; $4DEA: $10
    ld d, c                                       ; $4DEB: $51
    ld [hl], b                                    ; $4DEC: $70
    jr nc, jr_01E_4DFF                            ; $4DED: $30 $10

    and l                                         ; $4DEF: $A5
    ld l, a                                       ; $4DF0: $6F
    db $10                                        ; $4DF1: $10

jr_01E_4DF2:
    db $10                                        ; $4DF2: $10
    add hl, hl                                    ; $4DF3: $29
    ld [hl], b                                    ; $4DF4: $70
    nop                                           ; $4DF5: $00
    nop                                           ; $4DF6: $00
    ld b, d                                       ; $4DF7: $42
    inc d                                         ; $4DF8: $14
    rrca                                          ; $4DF9: $0F
    db $10                                        ; $4DFA: $10
    ld l, l                                       ; $4DFB: $6D
    ld h, b                                       ; $4DFC: $60
    inc bc                                        ; $4DFD: $03
    ld b, b                                       ; $4DFE: $40

jr_01E_4DFF:
    ld d, b                                       ; $4DFF: $50
    dec d                                         ; $4E00: $15
    rrca                                          ; $4E01: $0F
    ret nc                                        ; $4E02: $D0

    ld l, h                                       ; $4E03: $6C
    db $10                                        ; $4E04: $10
    rrca                                          ; $4E05: $0F
    ldh a, [$6C]                                  ; $4E06: $F0 $6C
    ld [$100F], sp                                ; $4E08: $08 $0F $10
    ld l, l                                       ; $4E0B: $6D
    nop                                           ; $4E0C: $00

jr_01E_4E0D:
    nop                                           ; $4E0D: $00
    ld h, d                                       ; $4E0E: $62
    add hl, bc                                    ; $4E0F: $09
    ld e, e                                       ; $4E10: $5B
    ld e, $34                                     ; $4E11: $1E $34
    ld b, a                                       ; $4E13: $47
    dec d                                         ; $4E14: $15

jr_01E_4E15:
    rrca                                          ; $4E15: $0F
    sub b                                         ; $4E16: $90
    ld l, h                                       ; $4E17: $6C
    db $10                                        ; $4E18: $10
    rrca                                          ; $4E19: $0F
    db $10                                        ; $4E1A: $10
    ld l, l                                       ; $4E1B: $6D
    nop                                           ; $4E1C: $00
    nop                                           ; $4E1D: $00
    ld b, d                                       ; $4E1E: $42
    inc d                                         ; $4E1F: $14
    jr nz, @-$3F                                  ; $4E20: $20 $BF

    ld d, b                                       ; $4E22: $50
    ld h, d                                       ; $4E23: $62
    ld bc, $2015                                  ; $4E24: $01 $15 $20
    rst $20                                       ; $4E27: $E7
    ld d, b                                       ; $4E28: $50
    db $10                                        ; $4E29: $10
    jr nz, jr_01E_4DD7                            ; $4E2A: $20 $AB

    ld d, b                                       ; $4E2C: $50
    nop                                           ; $4E2D: $00
    nop                                           ; $4E2E: $00
    ld b, d                                       ; $4E2F: $42
    ld d, $20                                     ; $4E30: $16 $20
    ld [hl], a                                    ; $4E32: $77
    ld d, b                                       ; $4E33: $50
    db $10                                        ; $4E34: $10
    cp $01                                        ; $4E35: $FE $01
    nop                                           ; $4E37: $00
    dec b                                         ; $4E38: $05
    ld a, [bc]                                    ; $4E39: $0A
    ld l, e                                       ; $4E3A: $6B
    ld c, d                                       ; $4E3B: $4A
    inc e                                         ; $4E3C: $1C
    ld de, $D2C4                                  ; $4E3D: $11 $C4 $D2
    or [hl]                                       ; $4E40: $B6
    ld e, $B7                                     ; $4E41: $1E $B7
    ld c, a                                       ; $4E43: $4F
    ld [hl+], a                                   ; $4E44: $22
    dec b                                         ; $4E45: $05
    ld b, b                                       ; $4E46: $40
    dec d                                         ; $4E47: $15
    jr nz, jr_01E_4EC1                            ; $4E48: $20 $77

    ld d, b                                       ; $4E4A: $50
    db $10                                        ; $4E4B: $10
    jr nz, jr_01E_4E0D                            ; $4E4C: $20 $BF

    ld d, b                                       ; $4E4E: $50
    db $10                                        ; $4E4F: $10
    jr nz, jr_01E_4E8F                            ; $4E50: $20 $3D

    ld d, b                                       ; $4E52: $50
    db $10                                        ; $4E53: $10
    jr nz, jr_01E_4E15                            ; $4E54: $20 $BF

    ld d, b                                       ; $4E56: $50
    nop                                           ; $4E57: $00
    nop                                           ; $4E58: $00
    ld b, d                                       ; $4E59: $42
    inc d                                         ; $4E5A: $14
    dec h                                         ; $4E5B: $25
    ld c, b                                       ; $4E5C: $48
    ld d, c                                       ; $4E5D: $51
    ld b, b                                       ; $4E5E: $40
    jr nz, jr_01E_4EBC                            ; $4E5F: $20 $5B

    ld e, $66                                     ; $4E61: $1E $66
    ld b, d                                       ; $4E63: $42
    ld h, d                                       ; $4E64: $62
    ld bc, $2516                                  ; $4E65: $01 $16 $25
    xor d                                         ; $4E68: $AA
    ld d, b                                       ; $4E69: $50
    ld b, b                                       ; $4E6A: $40
    nop                                           ; $4E6B: $00
    rst $38                                       ; $4E6C: $FF
    nop                                           ; $4E6D: $00
    dec bc                                        ; $4E6E: $0B
    ld b, $0B                                     ; $4E6F: $06 $0B
    rlca                                          ; $4E71: $07
    dec bc                                        ; $4E72: $0B
    ld [$2516], sp                                ; $4E73: $08 $16 $25
    xor d                                         ; $4E76: $AA
    ld d, b                                       ; $4E77: $50
    jr nz, jr_01E_4E7A                            ; $4E78: $20 $00

jr_01E_4E7A:
    rst $38                                       ; $4E7A: $FF
    dec h                                         ; $4E7B: $25
    jp c, $1050                                   ; $4E7C: $DA $50 $10

    nop                                           ; $4E7F: $00
    nop                                           ; $4E80: $00
    dec h                                         ; $4E81: $25
    inc [hl]                                      ; $4E82: $34
    ld d, c                                       ; $4E83: $51
    ld b, b                                       ; $4E84: $40
    nop                                           ; $4E85: $00
    nop                                           ; $4E86: $00
    nop                                           ; $4E87: $00
    halt                                          ; $4E88: $76
    jr nz, @-$77                                  ; $4E89: $20 $87

    ld b, b                                       ; $4E8B: $40
    jr nz, jr_01E_4EA3                            ; $4E8C: $20 $15

    dec h                                         ; $4E8E: $25

jr_01E_4E8F:
    ld h, [hl]                                    ; $4E8F: $66
    ld d, c                                       ; $4E90: $51
    db $10                                        ; $4E91: $10
    dec h                                         ; $4E92: $25
    inc [hl]                                      ; $4E93: $34
    ld d, c                                       ; $4E94: $51
    db $10                                        ; $4E95: $10
    dec h                                         ; $4E96: $25
    ld [hl], b                                    ; $4E97: $70
    ld d, c                                       ; $4E98: $51
    stop                                          ; $4E99: $10 $00
    ld e, e                                       ; $4E9B: $5B
    ld e, $A1                                     ; $4E9C: $1E $A1
    ld b, d                                       ; $4E9E: $42
    dec d                                         ; $4E9F: $15
    dec h                                         ; $4EA0: $25
    inc [hl]                                      ; $4EA1: $34
    ld d, c                                       ; $4EA2: $51

jr_01E_4EA3:
    db $10                                        ; $4EA3: $10
    dec h                                         ; $4EA4: $25
    ld h, [hl]                                    ; $4EA5: $66
    ld d, c                                       ; $4EA6: $51
    db $10                                        ; $4EA7: $10
    dec h                                         ; $4EA8: $25
    inc [hl]                                      ; $4EA9: $34
    ld d, c                                       ; $4EAA: $51
    stop                                          ; $4EAB: $10 $00
    ld h, d                                       ; $4EAD: $62
    ld [bc], a                                    ; $4EAE: $02
    ld e, e                                       ; $4EAF: $5B
    ld e, $26                                     ; $4EB0: $1E $26
    ld b, e                                       ; $4EB2: $43
    ld h, d                                       ; $4EB3: $62
    inc bc                                        ; $4EB4: $03
    dec d                                         ; $4EB5: $15
    dec h                                         ; $4EB6: $25
    jp z, Jump_01E_5850                           ; $4EB7: $CA $50 $58

    nop                                           ; $4EBA: $00
    ld d, [hl]                                    ; $4EBB: $56

jr_01E_4EBC:
    ld bc, $2515                                  ; $4EBC: $01 $15 $25
    cp d                                          ; $4EBF: $BA
    ld d, b                                       ; $4EC0: $50

jr_01E_4EC1:
    jr c, @+$27                                   ; $4EC1: $38 $25

    ld e, h                                       ; $4EC3: $5C
    ld d, c                                       ; $4EC4: $51
    nop                                           ; $4EC5: $00
    nop                                           ; $4EC6: $00
    ld b, b                                       ; $4EC7: $40
    ld b, b                                       ; $4EC8: $40
    halt                                          ; $4EC9: $76
    jr nz, @+$08                                  ; $4ECA: $20 $06

    ld b, b                                       ; $4ECC: $40
    jr nz, @+$21                                  ; $4ECD: $20 $1F

    jr nz, jr_01E_4F2C                            ; $4ECF: $20 $5B

    ld e, $05                                     ; $4ED1: $1E $05
    ld b, h                                       ; $4ED3: $44
    ld h, d                                       ; $4ED4: $62
    inc b                                         ; $4ED5: $04
    xor a                                         ; $4ED6: $AF
    dec h                                         ; $4ED7: $25
    and c                                         ; $4ED8: $A1
    ld [bc], a                                    ; $4ED9: $02
    ld e, e                                       ; $4EDA: $5B
    ld e, $B8                                     ; $4EDB: $1E $B8
    ld b, h                                       ; $4EDD: $44
    ld h, d                                       ; $4EDE: $62
    dec b                                         ; $4EDF: $05
    xor a                                         ; $4EE0: $AF
    dec h                                         ; $4EE1: $25
    and c                                         ; $4EE2: $A1
    ld [bc], a                                    ; $4EE3: $02
    ld h, b                                       ; $4EE4: $60
    ld [bc], a                                    ; $4EE5: $02
    ld e, e                                       ; $4EE6: $5B
    ld e, $3A                                     ; $4EE7: $1E $3A
    ld b, l                                       ; $4EE9: $45
    ld h, d                                       ; $4EEA: $62
    ld [hl-], a                                   ; $4EEB: $32
    ld l, e                                       ; $4EEC: $6B
    ld [$C00D], sp                                ; $4EED: $08 $0D $C0
    ld d, a                                       ; $4EF0: $57
    ld h, b                                       ; $4EF1: $60
    adc e                                         ; $4EF2: $8B
    nop                                           ; $4EF3: $00
    ld b, b                                       ; $4EF4: $40
    ld [$090B], sp                                ; $4EF5: $08 $0B $09
    ld e, e                                       ; $4EF8: $5B
    ld e, $8E                                     ; $4EF9: $1E $8E
    ld b, l                                       ; $4EFB: $45
    ld h, d                                       ; $4EFC: $62
    ld b, $40                                     ; $4EFD: $06 $40
    ld b, b                                       ; $4EFF: $40
    ld e, e                                       ; $4F00: $5B
    ld e, $D9                                     ; $4F01: $1E $D9
    ld b, l                                       ; $4F03: $45
    ld h, d                                       ; $4F04: $62
    rlca                                          ; $4F05: $07
    inc h                                         ; $4F06: $24
    jr nz, jr_01E_4F74                            ; $4F07: $20 $6B

    add hl, hl                                    ; $4F09: $29
    ld a, [bc]                                    ; $4F0A: $0A
    ld [hl], b                                    ; $4F0B: $70
    ld l, e                                       ; $4F0C: $6B
    ld h, b                                       ; $4F0D: $60
    adc e                                         ; $4F0E: $8B
    nop                                           ; $4F0F: $00
    dec d                                         ; $4F10: $15
    dec h                                         ; $4F11: $25
    cp d                                          ; $4F12: $BA
    ld d, b                                       ; $4F13: $50
    db $10                                        ; $4F14: $10
    dec h                                         ; $4F15: $25
    jp c, $2050                                   ; $4F16: $DA $50 $20

    dec h                                         ; $4F19: $25
    ld e, h                                       ; $4F1A: $5C
    ld d, c                                       ; $4F1B: $51
    nop                                           ; $4F1C: $00
    nop                                           ; $4F1D: $00
    ld h, d                                       ; $4F1E: $62
    ld d, b                                       ; $4F1F: $50
    dec d                                         ; $4F20: $15
    dec h                                         ; $4F21: $25
    ld a, [bc]                                    ; $4F22: $0A
    ld d, c                                       ; $4F23: $51
    stop                                          ; $4F24: $10 $00
    add hl, de                                    ; $4F26: $19
    ld b, d                                       ; $4F27: $42
    dec d                                         ; $4F28: $15
    rrca                                          ; $4F29: $0F
    xor e                                         ; $4F2A: $AB
    ld c, c                                       ; $4F2B: $49

jr_01E_4F2C:
    db $10                                        ; $4F2C: $10
    rrca                                          ; $4F2D: $0F
    ld a, l                                       ; $4F2E: $7D
    ld c, b                                       ; $4F2F: $48
    nop                                           ; $4F30: $00
    nop                                           ; $4F31: $00
    rra                                           ; $4F32: $1F
    jr jr_01E_4F90                                ; $4F33: $18 $5B

    ld e, $64                                     ; $4F35: $1E $64
    ld b, [hl]                                    ; $4F37: $46
    ld h, d                                       ; $4F38: $62
    ld b, [hl]                                    ; $4F39: $46
    dec d                                         ; $4F3A: $15
    rrca                                          ; $4F3B: $0F
    rst $30                                       ; $4F3C: $F7
    ld c, b                                       ; $4F3D: $48
    db $10                                        ; $4F3E: $10
    rrca                                          ; $4F3F: $0F
    or a                                          ; $4F40: $B7
    ld c, b                                       ; $4F41: $48
    jr nz, jr_01E_4F53                            ; $4F42: $20 $0F

    ld a, l                                       ; $4F44: $7D
    ld c, b                                       ; $4F45: $48
    inc b                                         ; $4F46: $04
    rrca                                          ; $4F47: $0F
    and a                                         ; $4F48: $A7
    ld c, b                                       ; $4F49: $48
    jr nz, jr_01E_4F5B                            ; $4F4A: $20 $0F

    ld a, l                                       ; $4F4C: $7D
    ld c, b                                       ; $4F4D: $48
    ld b, b                                       ; $4F4E: $40
    nop                                           ; $4F4F: $00
    ld d, $0F                                     ; $4F50: $16 $0F
    rst $30                                       ; $4F52: $F7

jr_01E_4F53:
    ld c, b                                       ; $4F53: $48
    ld b, b                                       ; $4F54: $40
    nop                                           ; $4F55: $00
    ld bc, $7D0F                                  ; $4F56: $01 $0F $7D
    ld c, b                                       ; $4F59: $48
    nop                                           ; $4F5A: $00

jr_01E_4F5B:
    nop                                           ; $4F5B: $00
    nop                                           ; $4F5C: $00
    nop                                           ; $4F5D: $00
    add e                                         ; $4F5E: $83
    stop                                          ; $4F5F: $10 $00
    ld bc, $5B00                                  ; $4F61: $01 $00 $5B
    ld e, $95                                     ; $4F64: $1E $95
    ld b, [hl]                                    ; $4F66: $46
    ld h, d                                       ; $4F67: $62
    ld [$0F14], sp                                ; $4F68: $08 $14 $0F
    and a                                         ; $4F6B: $A7
    ld c, b                                       ; $4F6C: $48
    ld e, e                                       ; $4F6D: $5B
    ld e, $FE                                     ; $4F6E: $1E $FE
    ld b, [hl]                                    ; $4F70: $46
    ld h, d                                       ; $4F71: $62
    ld d, b                                       ; $4F72: $50
    inc d                                         ; $4F73: $14

jr_01E_4F74:
    rrca                                          ; $4F74: $0F
    ld a, l                                       ; $4F75: $7D
    ld c, b                                       ; $4F76: $48
    ld e, e                                       ; $4F77: $5B
    ld e, $10                                     ; $4F78: $1E $10
    ld b, a                                       ; $4F7A: $47
    ld h, d                                       ; $4F7B: $62
    ld a, [bc]                                    ; $4F7C: $0A
    add hl, bc                                    ; $4F7D: $09
    dec b                                         ; $4F7E: $05
    rrca                                          ; $4F7F: $0F
    ld h, b                                       ; $4F80: $60
    ld l, l                                       ; $4F81: $6D
    ld l, a                                       ; $4F82: $6F
    rrca                                          ; $4F83: $0F
    rst $38                                       ; $4F84: $FF
    ld a, a                                       ; $4F85: $7F
    halt                                          ; $4F86: $76
    ld h, b                                       ; $4F87: $60
    rrca                                          ; $4F88: $0F
    inc c                                         ; $4F89: $0C
    dec b                                         ; $4F8A: $05
    ld l, e                                       ; $4F8B: $6B
    dec l                                         ; $4F8C: $2D
    inc c                                         ; $4F8D: $0C
    ldh a, [rVBK]                                 ; $4F8E: $F0 $4F

jr_01E_4F90:
    nop                                           ; $4F90: $00
    add [hl]                                      ; $4F91: $86
    nop                                           ; $4F92: $00
    ld b, b                                       ; $4F93: $40
    dec l                                         ; $4F94: $2D
    dec bc                                        ; $4F95: $0B
    dec bc                                        ; $4F96: $0B
    ld e, e                                       ; $4F97: $5B
    ld e, $51                                     ; $4F98: $1E $51
    ld b, a                                       ; $4F9A: $47
    ld b, b                                       ; $4F9B: $40
    ld [$120B], sp                                ; $4F9C: $08 $0B $12
    ld h, d                                       ; $4F9F: $62
    dec bc                                        ; $4FA0: $0B
    ld e, e                                       ; $4FA1: $5B
    ld e, $D5                                     ; $4FA2: $1E $D5
    ld b, a                                       ; $4FA4: $47
    ld b, d                                       ; $4FA5: $42
    inc d                                         ; $4FA6: $14
    rrca                                          ; $4FA7: $0F
    ld a, l                                       ; $4FA8: $7D
    ld c, b                                       ; $4FA9: $48
    ld e, e                                       ; $4FAA: $5B
    ld e, $EE                                     ; $4FAB: $1E $EE
    ld c, b                                       ; $4FAD: $48
    ld h, d                                       ; $4FAE: $62
    xor d                                         ; $4FAF: $AA
    dec d                                         ; $4FB0: $15
    rrca                                          ; $4FB1: $0F
    xor e                                         ; $4FB2: $AB
    ld c, c                                       ; $4FB3: $49
    stop                                          ; $4FB4: $10 $00
    ld b, d                                       ; $4FB6: $42
    dec d                                         ; $4FB7: $15
    rrca                                          ; $4FB8: $0F
    xor e                                         ; $4FB9: $AB
    ld c, c                                       ; $4FBA: $49
    db $10                                        ; $4FBB: $10
    rrca                                          ; $4FBC: $0F
    or a                                          ; $4FBD: $B7
    ld c, b                                       ; $4FBE: $48
    nop                                           ; $4FBF: $00
    nop                                           ; $4FC0: $00
    ld e, e                                       ; $4FC1: $5B
    ld e, $23                                     ; $4FC2: $1E $23
    ld c, c                                       ; $4FC4: $49
    ld h, b                                       ; $4FC5: $60
    dec b                                         ; $4FC6: $05
    add hl, bc                                    ; $4FC7: $09
    dec bc                                        ; $4FC8: $0B
    ld e, $27                                     ; $4FC9: $1E $27
    ld c, l                                       ; $4FCB: $4D
    add hl, bc                                    ; $4FCC: $09
    ld [de], a                                    ; $4FCD: $12
    ld e, $55                                     ; $4FCE: $1E $55
    ld c, l                                       ; $4FD0: $4D
    ld e, e                                       ; $4FD1: $5B
    ld e, $54                                     ; $4FD2: $1E $54
    ld c, c                                       ; $4FD4: $49
    ld h, d                                       ; $4FD5: $62
    inc de                                        ; $4FD6: $13
    dec d                                         ; $4FD7: $15
    rrca                                          ; $4FD8: $0F
    or a                                          ; $4FD9: $B7
    ld c, b                                       ; $4FDA: $48
    db $10                                        ; $4FDB: $10
    rrca                                          ; $4FDC: $0F
    rlca                                          ; $4FDD: $07
    ld c, c                                       ; $4FDE: $49
    db $10                                        ; $4FDF: $10
    rrca                                          ; $4FE0: $0F
    or a                                          ; $4FE1: $B7
    ld c, b                                       ; $4FE2: $48
    nop                                           ; $4FE3: $00
    nop                                           ; $4FE4: $00
    ld e, e                                       ; $4FE5: $5B
    ld e, $91                                     ; $4FE6: $1E $91

jr_01E_4FE8:
    ld c, c                                       ; $4FE8: $49
    ld h, d                                       ; $4FE9: $62
    inc d                                         ; $4FEA: $14
    ld l, [hl]                                    ; $4FEB: $6E
    rrca                                          ; $4FEC: $0F
    rst $38                                       ; $4FED: $FF
    ld a, a                                       ; $4FEE: $7F
    halt                                          ; $4FEF: $76
    jr nz, jr_01E_5001                            ; $4FF0: $20 $0F

    ld d, [hl]                                    ; $4FF2: $56
    ld h, h                                       ; $4FF3: $64
    ld b, d                                       ; $4FF4: $42
    inc d                                         ; $4FF5: $14
    rrca                                          ; $4FF6: $0F
    ld a, l                                       ; $4FF7: $7D
    ld c, b                                       ; $4FF8: $48
    ld e, e                                       ; $4FF9: $5B
    ld e, $F8                                     ; $4FFA: $1E $F8
    ld b, a                                       ; $4FFC: $47
    ld h, d                                       ; $4FFD: $62
    dec c                                         ; $4FFE: $0D
    add hl, bc                                    ; $4FFF: $09
    inc bc                                        ; $5000: $03

jr_01E_5001:
    db $10                                        ; $5001: $10
    ld h, l                                       ; $5002: $65

jr_01E_5003:
    ld [hl], b                                    ; $5003: $70
    add hl, bc                                    ; $5004: $09
    inc b                                         ; $5005: $04
    db $10                                        ; $5006: $10
    ld h, l                                       ; $5007: $65
    ld [hl], b                                    ; $5008: $70
    ld l, a                                       ; $5009: $6F
    rrca                                          ; $500A: $0F
    rst $38                                       ; $500B: $FF
    ld a, a                                       ; $500C: $7F
    halt                                          ; $500D: $76
    ld h, b                                       ; $500E: $60
    rrca                                          ; $500F: $0F
    inc c                                         ; $5010: $0C
    inc bc                                        ; $5011: $03
    inc c                                         ; $5012: $0C
    inc b                                         ; $5013: $04
    xor h                                         ; $5014: $AC
    and h                                         ; $5015: $A4
    and d                                         ; $5016: $A2
    dec b                                         ; $5017: $05
    ld e, e                                       ; $5018: $5B
    ld e, $34                                     ; $5019: $1E $34
    ld c, b                                       ; $501B: $48
    ld h, b                                       ; $501C: $60
    dec b                                         ; $501D: $05
    dec d                                         ; $501E: $15
    rrca                                          ; $501F: $0F
    ld a, l                                       ; $5020: $7D
    ld c, b                                       ; $5021: $48
    ld h, b                                       ; $5022: $60
    rrca                                          ; $5023: $0F
    rst $30                                       ; $5024: $F7
    ld c, b                                       ; $5025: $48
    jr jr_01E_5037                                ; $5026: $18 $0F

    ld a, l                                       ; $5028: $7D
    ld c, b                                       ; $5029: $48
    nop                                           ; $502A: $00
    nop                                           ; $502B: $00
    ld e, e                                       ; $502C: $5B
    ld e, $58                                     ; $502D: $1E $58
    ld c, b                                       ; $502F: $48
    ld h, d                                       ; $5030: $62
    rrca                                          ; $5031: $0F

jr_01E_5032:
    ld e, e                                       ; $5032: $5B
    ld e, $BF                                     ; $5033: $1E $BF
    ld c, b                                       ; $5035: $48
    ld h, d                                       ; $5036: $62

jr_01E_5037:
    db $10                                        ; $5037: $10
    ld l, [hl]                                    ; $5038: $6E
    rrca                                          ; $5039: $0F
    rst $38                                       ; $503A: $FF
    ld a, a                                       ; $503B: $7F
    halt                                          ; $503C: $76
    jr nz, jr_01E_504E                            ; $503D: $20 $0F

    ld d, [hl]                                    ; $503F: $56
    ld h, h                                       ; $5040: $64
    ld b, d                                       ; $5041: $42
    dec d                                         ; $5042: $15
    jr nz, jr_01E_5032                            ; $5043: $20 $ED

    ld c, a                                       ; $5045: $4F
    ld [$5D20], sp                                ; $5046: $08 $20 $5D
    ld d, b                                       ; $5049: $50
    ld [$C920], sp                                ; $504A: $08 $20 $C9
    ld d, b                                       ; $504D: $50

jr_01E_504E:
    ld d, b                                       ; $504E: $50
    nop                                           ; $504F: $00

jr_01E_5050:
    xor [hl]                                      ; $5050: $AE
    dec h                                         ; $5051: $25
    and c                                         ; $5052: $A1
    db $FD                                        ; $5053: $FD
    dec d                                         ; $5054: $15
    jr nz, jr_01E_4FE8                            ; $5055: $20 $91

    ld d, b                                       ; $5057: $50
    jr z, jr_01E_507A                             ; $5058: $28 $20

    ld e, l                                       ; $505A: $5D
    ld d, b                                       ; $505B: $50
    ld hl, $7720                                  ; $505C: $21 $20 $77
    ld d, b                                       ; $505F: $50
    jr z, jr_01E_5082                             ; $5060: $28 $20

    ld c, l                                       ; $5062: $4D
    ld d, b                                       ; $5063: $50

jr_01E_5064:
    jr nz, jr_01E_5066                            ; $5064: $20 $00

jr_01E_5066:
    ld b, e                                       ; $5066: $43
    ld a, [bc]                                    ; $5067: $0A
    nop                                           ; $5068: $00
    dec h                                         ; $5069: $25
    and c                                         ; $506A: $A1
    ld [bc], a                                    ; $506B: $02
    ld e, $54                                     ; $506C: $1E $54
    ld d, b                                       ; $506E: $50
    dec d                                         ; $506F: $15
    jr nz, jr_01E_5003                            ; $5070: $20 $91

    ld d, b                                       ; $5072: $50
    ld [$5D20], sp                                ; $5073: $08 $20 $5D
    ld d, b                                       ; $5076: $50
    jr nz, @+$22                                  ; $5077: $20 $20

    ret                                           ; $5079: $C9


jr_01E_507A:
    ld d, b                                       ; $507A: $50
    jr z, jr_01E_509D                             ; $507B: $28 $20

    ld [hl], c                                    ; $507D: $71

jr_01E_507E:
    ld d, l                                       ; $507E: $55
    inc d                                         ; $507F: $14
    jr nz, @-$35                                  ; $5080: $20 $C9

jr_01E_5082:
    ld d, b                                       ; $5082: $50
    jr nz, jr_01E_50A5                            ; $5083: $20 $20

    pop af                                        ; $5085: $F1
    ld d, b                                       ; $5086: $50
    ld b, b                                       ; $5087: $40
    jr nz, jr_01E_5050                            ; $5088: $20 $C6

    ld d, h                                       ; $508A: $54

jr_01E_508B:
    jr nz, jr_01E_50AD                            ; $508B: $20 $20

    add $54                                       ; $508D: $C6 $54
    jr nz, @+$22                                  ; $508F: $20 $20

    add $54                                       ; $5091: $C6 $54
    jr nz, jr_01E_5095                            ; $5093: $20 $00

jr_01E_5095:
    ld h, d                                       ; $5095: $62
    ld b, $15                                     ; $5096: $06 $15
    jr nz, jr_01E_508B                            ; $5098: $20 $F1

    ld d, b                                       ; $509A: $50
    jr nz, jr_01E_50BD                            ; $509B: $20 $20

jr_01E_509D:
    or e                                          ; $509D: $B3
    ld c, a                                       ; $509E: $4F
    jr nz, jr_01E_50C1                            ; $509F: $20 $20

    ret                                           ; $50A1: $C9


    ld d, b                                       ; $50A2: $50
    jr nz, jr_01E_50C5                            ; $50A3: $20 $20

jr_01E_50A5:
    db $ED                                        ; $50A5: $ED
    ld c, a                                       ; $50A6: $4F
    inc b                                         ; $50A7: $04

jr_01E_50A8:
    jr nz, jr_01E_5064                            ; $50A8: $20 $BA

    ld d, [hl]                                    ; $50AA: $56
    rla                                           ; $50AB: $17
    nop                                           ; $50AC: $00

jr_01E_50AD:
    add hl, bc                                    ; $50AD: $09
    add hl, bc                                    ; $50AE: $09
    ld de, $7647                                  ; $50AF: $11 $47 $76
    dec d                                         ; $50B2: $15
    jr nz, jr_01E_507E                            ; $50B3: $20 $C9

    ld d, b                                       ; $50B5: $50
    ld [$DD20], sp                                ; $50B6: $08 $20 $DD
    ld d, b                                       ; $50B9: $50
    ld [$C920], sp                                ; $50BA: $08 $20 $C9

jr_01E_50BD:
    ld d, b                                       ; $50BD: $50
    ld [$F120], sp                                ; $50BE: $08 $20 $F1

jr_01E_50C1:
    ld d, b                                       ; $50C1: $50

jr_01E_50C2:
    ld [$C920], sp                                ; $50C2: $08 $20 $C9

jr_01E_50C5:
    ld d, b                                       ; $50C5: $50
    ld [$DD20], sp                                ; $50C6: $08 $20 $DD
    ld d, b                                       ; $50C9: $50

jr_01E_50CA:
    ld [$C920], sp                                ; $50CA: $08 $20 $C9
    ld d, b                                       ; $50CD: $50

jr_01E_50CE:
    ld [$F120], sp                                ; $50CE: $08 $20 $F1
    ld d, b                                       ; $50D1: $50
    ld [$C920], sp                                ; $50D2: $08 $20 $C9
    ld d, b                                       ; $50D5: $50

jr_01E_50D6:
    ld [$B520], sp                                ; $50D6: $08 $20 $B5
    ld d, b                                       ; $50D9: $50

jr_01E_50DA:
    ld [$9920], sp                                ; $50DA: $08 $20 $99
    ld d, h                                       ; $50DD: $54
    jr nz, @+$22                                  ; $50DE: $20 $20

    sbc c                                         ; $50E0: $99
    ld d, h                                       ; $50E1: $54

jr_01E_50E2:
    jr nz, @+$22                                  ; $50E2: $20 $20

    sbc c                                         ; $50E4: $99
    ld d, h                                       ; $50E5: $54
    jr nz, jr_01E_50E8                            ; $50E6: $20 $00

jr_01E_50E8:
    ld h, d                                       ; $50E8: $62
    rlca                                          ; $50E9: $07
    dec d                                         ; $50EA: $15
    jr nz, jr_01E_50CA                            ; $50EB: $20 $DD

    ld c, a                                       ; $50ED: $4F
    inc b                                         ; $50EE: $04
    jr nz, jr_01E_50E2                            ; $50EF: $20 $F1

    ld d, b                                       ; $50F1: $50
    db $10                                        ; $50F2: $10
    jr nz, @-$3F                                  ; $50F3: $20 $BF

    ld d, b                                       ; $50F5: $50
    db $10                                        ; $50F6: $10
    jr nz, jr_01E_50D6                            ; $50F7: $20 $DD

    ld d, b                                       ; $50F9: $50
    db $10                                        ; $50FA: $10
    jr nz, jr_01E_50A8                            ; $50FB: $20 $AB

    ld d, b                                       ; $50FD: $50
    db $10                                        ; $50FE: $10
    jr nz, @-$2B                                  ; $50FF: $20 $D3

    ld d, b                                       ; $5101: $50
    db $10                                        ; $5102: $10
    jr nz, jr_01E_50CE                            ; $5103: $20 $C9

    ld d, b                                       ; $5105: $50
    db $10                                        ; $5106: $10
    jr nz, @-$17                                  ; $5107: $20 $E7

    ld d, b                                       ; $5109: $50
    db $10                                        ; $510A: $10
    jr nz, jr_01E_50C2                            ; $510B: $20 $B5

    ld d, b                                       ; $510D: $50
    db $10                                        ; $510E: $10
    jr nz, jr_01E_50DA                            ; $510F: $20 $C9

    ld d, b                                       ; $5111: $50
    nop                                           ; $5112: $00
    nop                                           ; $5113: $00
    dec bc                                        ; $5114: $0B
    ld a, [bc]                                    ; $5115: $0A
    dec d                                         ; $5116: $15
    jr nz, jr_01E_50E2                            ; $5117: $20 $C9

    ld d, b                                       ; $5119: $50
    db $10                                        ; $511A: $10
    jr nz, @-$53                                  ; $511B: $20 $AB

    ld d, b                                       ; $511D: $50
    nop                                           ; $511E: $00
    nop                                           ; $511F: $00
    ld h, d                                       ; $5120: $62
    ld b, [hl]                                    ; $5121: $46
    dec d                                         ; $5122: $15
    jr nz, @-$53                                  ; $5123: $20 $AB

    ld d, b                                       ; $5125: $50
    db $10                                        ; $5126: $10
    jr nz, jr_01E_50C2                            ; $5127: $20 $99

    ld e, [hl]                                    ; $5129: $5E
    ld b, b                                       ; $512A: $40
    nop                                           ; $512B: $00
    add hl, de                                    ; $512C: $19
    ld b, d                                       ; $512D: $42
    inc d                                         ; $512E: $14
    ld de, $4CAC                                  ; $512F: $11 $AC $4C
    ld h, b                                       ; $5132: $60
    ld bc, $1115                                  ; $5133: $01 $15 $11
    ld b, d                                       ; $5136: $42
    ld c, h                                       ; $5137: $4C
    ld [$3211], sp                                ; $5138: $08 $11 $32
    ld c, h                                       ; $513B: $4C
    jr nc, @+$13                                  ; $513C: $30 $11

    ret nz                                        ; $513E: $C0

    ld c, h                                       ; $513F: $4C
    ld e, b                                       ; $5140: $58
    ld de, $4D24                                  ; $5141: $11 $24 $4D
    jr z, jr_01E_5157                             ; $5144: $28 $11

    add d                                         ; $5146: $82
    ld c, h                                       ; $5147: $4C
    db $10                                        ; $5148: $10
    ld de, $4C62                                  ; $5149: $11 $62 $4C
    db $10                                        ; $514C: $10
    ld de, $4C92                                  ; $514D: $11 $92 $4C
    jr z, jr_01E_5163                             ; $5150: $28 $11

    ld [hl], d                                    ; $5152: $72
    ld c, h                                       ; $5153: $4C
    jr nz, jr_01E_5167                            ; $5154: $20 $11

    add d                                         ; $5156: $82

jr_01E_5157:
    ld c, h                                       ; $5157: $4C
    ld [$F211], sp                                ; $5158: $08 $11 $F2
    ld c, h                                       ; $515B: $4C
    jr z, @+$13                                   ; $515C: $28 $11

    sub d                                         ; $515E: $92
    ld c, h                                       ; $515F: $4C
    ld [$6211], sp                                ; $5160: $08 $11 $62

jr_01E_5163:
    ld c, h                                       ; $5163: $4C
    jr nz, @+$13                                  ; $5164: $20 $11

    add d                                         ; $5166: $82

jr_01E_5167:
    ld c, h                                       ; $5167: $4C
    jr z, jr_01E_516A                             ; $5168: $28 $00

jr_01E_516A:
    dec d                                         ; $516A: $15
    ld de, $4C72                                  ; $516B: $11 $72 $4C
    jr nz, jr_01E_5181                            ; $516E: $20 $11

    sub d                                         ; $5170: $92
    ld c, h                                       ; $5171: $4C
    add hl, hl                                    ; $5172: $29
    ld de, $4C62                                  ; $5173: $11 $62 $4C
    jr nz, jr_01E_5189                            ; $5176: $20 $11

    add d                                         ; $5178: $82
    ld c, h                                       ; $5179: $4C
    jr z, jr_01E_517C                             ; $517A: $28 $00

jr_01E_517C:
    ld b, e                                       ; $517C: $43
    ld a, [bc]                                    ; $517D: $0A
    nop                                           ; $517E: $00
    dec h                                         ; $517F: $25
    and c                                         ; $5180: $A1

jr_01E_5181:
    ld [bc], a                                    ; $5181: $02
    ld e, $6A                                     ; $5182: $1E $6A
    ld d, c                                       ; $5184: $51
    add hl, bc                                    ; $5185: $09
    ld b, $1E                                     ; $5186: $06 $1E
    ld b, d                                       ; $5188: $42

jr_01E_5189:
    ld d, b                                       ; $5189: $50
    dec d                                         ; $518A: $15
    ld de, $4C72                                  ; $518B: $11 $72 $4C
    db $10                                        ; $518E: $10
    ld de, $4CA2                                  ; $518F: $11 $A2 $4C
    jr z, @+$13                                   ; $5192: $28 $11

    call nc, $284C                                ; $5194: $D4 $4C $28
    nop                                           ; $5197: $00
    dec d                                         ; $5198: $15
    ld de, $4C62                                  ; $5199: $11 $62 $4C
    db $10                                        ; $519C: $10
    ld de, $4C92                                  ; $519D: $11 $92 $4C
    jr z, jr_01E_51B3                             ; $51A0: $28 $11

    ld [hl], d                                    ; $51A2: $72
    ld c, h                                       ; $51A3: $4C
    ld hl, $8211                                  ; $51A4: $21 $11 $82
    ld c, h                                       ; $51A7: $4C
    jr z, jr_01E_51BB                             ; $51A8: $28 $11

    ld h, d                                       ; $51AA: $62
    ld c, h                                       ; $51AB: $4C
    stop                                          ; $51AC: $10 $00
    ld b, e                                       ; $51AE: $43
    ld a, [bc]                                    ; $51AF: $0A
    nop                                           ; $51B0: $00
    dec h                                         ; $51B1: $25
    and c                                         ; $51B2: $A1

jr_01E_51B3:
    ld [bc], a                                    ; $51B3: $02
    ld e, $98                                     ; $51B4: $1E $98
    ld d, c                                       ; $51B6: $51
    dec d                                         ; $51B7: $15
    ld de, $4C62                                  ; $51B8: $11 $62 $4C

jr_01E_51BB:
    ld [$C011], sp                                ; $51BB: $08 $11 $C0
    ld c, h                                       ; $51BE: $4C
    jr nz, jr_01E_51D2                            ; $51BF: $20 $11

    add sp, $4C                                   ; $51C1: $E8 $4C
    ld d, b                                       ; $51C3: $50
    nop                                           ; $51C4: $00
    ld h, d                                       ; $51C5: $62
    ld b, $15                                     ; $51C6: $06 $15
    ld de, $4C32                                  ; $51C8: $11 $32 $4C
    db $10                                        ; $51CB: $10
    ld de, $4CE8                                  ; $51CC: $11 $E8 $4C
    jr nz, jr_01E_51E2                            ; $51CF: $20 $11

    ret nz                                        ; $51D1: $C0

jr_01E_51D2:
    ld c, h                                       ; $51D2: $4C
    ld h, b                                       ; $51D3: $60
    ld de, $4C52                                  ; $51D4: $11 $52 $4C
    jr nz, jr_01E_51EA                            ; $51D7: $20 $11

    ret nz                                        ; $51D9: $C0

    ld c, h                                       ; $51DA: $4C
    ld b, b                                       ; $51DB: $40
    ld de, $4D24                                  ; $51DC: $11 $24 $4D
    jr nz, @+$13                                  ; $51DF: $20 $11

    inc h                                         ; $51E1: $24

jr_01E_51E2:
    ld c, l                                       ; $51E2: $4D
    jr nz, jr_01E_51F6                            ; $51E3: $20 $11

    inc h                                         ; $51E5: $24
    ld c, l                                       ; $51E6: $4D
    jr nz, jr_01E_51E9                            ; $51E7: $20 $00

jr_01E_51E9:
    ld h, d                                       ; $51E9: $62

jr_01E_51EA:
    rlca                                          ; $51EA: $07
    dec d                                         ; $51EB: $15
    ld de, $4C42                                  ; $51EC: $11 $42 $4C
    inc b                                         ; $51EF: $04
    ld de, $4CE8                                  ; $51F0: $11 $E8 $4C
    ld d, $11                                     ; $51F3: $16 $11
    or [hl]                                       ; $51F5: $B6

jr_01E_51F6:
    ld c, h                                       ; $51F6: $4C
    db $10                                        ; $51F7: $10
    ld de, $4CD4                                  ; $51F8: $11 $D4 $4C
    db $10                                        ; $51FB: $10
    ld de, $4CAC                                  ; $51FC: $11 $AC $4C
    db $10                                        ; $51FF: $10
    ld de, $4CCA                                  ; $5200: $11 $CA $4C
    db $10                                        ; $5203: $10
    ld de, $4CC0                                  ; $5204: $11 $C0 $4C
    db $10                                        ; $5207: $10
    ld de, $4CDE                                  ; $5208: $11 $DE $4C
    db $10                                        ; $520B: $10
    ld de, $4CA2                                  ; $520C: $11 $A2 $4C
    db $10                                        ; $520F: $10
    ld de, $4CB6                                  ; $5210: $11 $B6 $4C
    db $10                                        ; $5213: $10
    ld de, $4CA2                                  ; $5214: $11 $A2 $4C
    nop                                           ; $5217: $00
    nop                                           ; $5218: $00
    ld h, d                                       ; $5219: $62
    ld b, [hl]                                    ; $521A: $46
    dec d                                         ; $521B: $15
    ld de, $4CA2                                  ; $521C: $11 $A2 $4C
    inc [hl]                                      ; $521F: $34
    ld de, $4D56                                  ; $5220: $11 $56 $4D
    ld b, b                                       ; $5223: $40
    nop                                           ; $5224: $00
    ld d, [hl]                                    ; $5225: $56
    inc bc                                        ; $5226: $03
    add hl, de                                    ; $5227: $19
    ld b, d                                       ; $5228: $42
    inc d                                         ; $5229: $14
    db $10                                        ; $522A: $10
    ld a, [c]                                     ; $522B: $F2
    ld b, d                                       ; $522C: $42
    ld h, b                                       ; $522D: $60
    ld bc, $1015                                  ; $522E: $01 $15 $10
    adc b                                         ; $5231: $88
    ld b, d                                       ; $5232: $42
    jr z, @+$12                                   ; $5233: $28 $10

    ld a, b                                       ; $5235: $78
    ld b, d                                       ; $5236: $42
    jr nc, jr_01E_5249                            ; $5237: $30 $10

    db $FC                                        ; $5239: $FC
    ld b, d                                       ; $523A: $42
    ld e, b                                       ; $523B: $58
    db $10                                        ; $523C: $10
    ret z                                         ; $523D: $C8

    ld b, d                                       ; $523E: $42
    jr nz, jr_01E_5251                            ; $523F: $20 $10

    xor b                                         ; $5241: $A8
    ld b, d                                       ; $5242: $42
    ld [$0610], sp                                ; $5243: $08 $10 $06
    ld b, e                                       ; $5246: $43
    jr nz, jr_01E_5259                            ; $5247: $20 $10

jr_01E_5249:
    cp b                                          ; $5249: $B8
    ld b, d                                       ; $524A: $42
    jr jr_01E_525D                                ; $524B: $18 $10

    ret c                                         ; $524D: $D8

    ld b, d                                       ; $524E: $42
    db $10                                        ; $524F: $10
    db $10                                        ; $5250: $10

jr_01E_5251:
    ld b, $43                                     ; $5251: $06 $43
    jr nc, jr_01E_5265                            ; $5253: $30 $10

    ret c                                         ; $5255: $D8

    ld b, d                                       ; $5256: $42
    jr jr_01E_5269                                ; $5257: $18 $10

jr_01E_5259:
    xor b                                         ; $5259: $A8
    ld b, d                                       ; $525A: $42
    jr nz, jr_01E_526D                            ; $525B: $20 $10

jr_01E_525D:
    ret z                                         ; $525D: $C8

    ld b, d                                       ; $525E: $42
    jr jr_01E_5261                                ; $525F: $18 $00

jr_01E_5261:
    dec d                                         ; $5261: $15
    db $10                                        ; $5262: $10
    ret z                                         ; $5263: $C8

    ld b, d                                       ; $5264: $42

jr_01E_5265:
    db $10                                        ; $5265: $10
    db $10                                        ; $5266: $10
    cp b                                          ; $5267: $B8
    ld b, d                                       ; $5268: $42

jr_01E_5269:
    jr nz, jr_01E_527B                            ; $5269: $20 $10

    ret c                                         ; $526B: $D8

    ld b, d                                       ; $526C: $42

jr_01E_526D:
    add hl, hl                                    ; $526D: $29
    db $10                                        ; $526E: $10
    xor b                                         ; $526F: $A8
    ld b, d                                       ; $5270: $42
    jr nz, jr_01E_5283                            ; $5271: $20 $10

    ret z                                         ; $5273: $C8

    ld b, d                                       ; $5274: $42
    jr jr_01E_5277                                ; $5275: $18 $00

jr_01E_5277:
    ld b, e                                       ; $5277: $43
    ld a, [bc]                                    ; $5278: $0A
    nop                                           ; $5279: $00
    dec h                                         ; $527A: $25

jr_01E_527B:
    and c                                         ; $527B: $A1
    ld [bc], a                                    ; $527C: $02
    ld e, $61                                     ; $527D: $1E $61
    ld d, d                                       ; $527F: $52
    dec d                                         ; $5280: $15
    db $10                                        ; $5281: $10
    ret z                                         ; $5282: $C8

jr_01E_5283:
    ld b, d                                       ; $5283: $42
    ld [$3810], sp                                ; $5284: $08 $10 $38
    ld b, e                                       ; $5287: $43
    ld e, b                                       ; $5288: $58
    nop                                           ; $5289: $00
    dec d                                         ; $528A: $15
    db $10                                        ; $528B: $10
    ret c                                         ; $528C: $D8

    ld b, d                                       ; $528D: $42
    jr nz, @+$12                                  ; $528E: $20 $10

    cp b                                          ; $5290: $B8
    ld b, d                                       ; $5291: $42
    jr nz, jr_01E_52A4                            ; $5292: $20 $10

    ret z                                         ; $5294: $C8

    ld b, d                                       ; $5295: $42
    add hl, hl                                    ; $5296: $29
    db $10                                        ; $5297: $10
    xor b                                         ; $5298: $A8
    ld b, d                                       ; $5299: $42
    jr nz, jr_01E_52AC                            ; $529A: $20 $10

    ret c                                         ; $529C: $D8

    ld b, d                                       ; $529D: $42
    ld [$4300], sp                                ; $529E: $08 $00 $43
    ld a, [bc]                                    ; $52A1: $0A
    nop                                           ; $52A2: $00
    dec h                                         ; $52A3: $25

jr_01E_52A4:
    and c                                         ; $52A4: $A1
    ld [bc], a                                    ; $52A5: $02
    ld e, $8A                                     ; $52A6: $1E $8A
    ld d, d                                       ; $52A8: $52
    dec d                                         ; $52A9: $15
    db $10                                        ; $52AA: $10
    ret c                                         ; $52AB: $D8

jr_01E_52AC:
    ld b, d                                       ; $52AC: $42
    jr nz, jr_01E_52BF                            ; $52AD: $20 $10

    cp b                                          ; $52AF: $B8
    ld b, d                                       ; $52B0: $42
    jr nz, @+$12                                  ; $52B1: $20 $10

    ret z                                         ; $52B3: $C8

    ld b, d                                       ; $52B4: $42
    inc e                                         ; $52B5: $1C
    nop                                           ; $52B6: $00
    ld d, [hl]                                    ; $52B7: $56
    ld [bc], a                                    ; $52B8: $02
    dec d                                         ; $52B9: $15
    db $10                                        ; $52BA: $10
    sbc h                                         ; $52BB: $9C
    ld b, e                                       ; $52BC: $43
    ld b, b                                       ; $52BD: $40
    nop                                           ; $52BE: $00

jr_01E_52BF:
    add hl, de                                    ; $52BF: $19
    ld b, d                                       ; $52C0: $42
    ld [bc], a                                    ; $52C1: $02
    ld [$001B], sp                                ; $52C2: $08 $1B $00
    inc l                                         ; $52C5: $2C
    ld b, l                                       ; $52C6: $45
    ld [de], a                                    ; $52C7: $12
    ld a, a                                       ; $52C8: $7F
    ld [hl], c                                    ; $52C9: $71
    ld bc, $1413                                  ; $52CA: $01 $13 $14
    ld b, l                                       ; $52CD: $45
    cpl                                           ; $52CE: $2F
    adc a                                         ; $52CF: $8F
    ld b, l                                       ; $52D0: $45
    sbc e                                         ; $52D1: $9B
    jr z, jr_01E_5349                             ; $52D2: $28 $75

    sbc a                                         ; $52D4: $9F
    ld c, a                                       ; $52D5: $4F
    ld [hl], d                                    ; $52D6: $72
    ld l, a                                       ; $52D7: $6F
    ld [hl], h                                    ; $52D8: $74
    ld l, b                                       ; $52D9: $68
    ld h, l                                       ; $52DA: $65
    jr nz, @+$6B                                  ; $52DB: $20 $69

    ld [hl], e                                    ; $52DD: $73
    jr nz, jr_01E_534A                            ; $52DE: $20 $6A

    ld [hl], l                                    ; $52E0: $75
    ld [hl], e                                    ; $52E1: $73
    ld [hl], h                                    ; $52E2: $74
    rst $38                                       ; $52E3: $FF
    ld h, c                                       ; $52E4: $61
    ld h, e                                       ; $52E5: $63
    ld [hl], d                                    ; $52E6: $72
    ld l, a                                       ; $52E7: $6F
    ld [hl], e                                    ; $52E8: $73
    ld [hl], e                                    ; $52E9: $73
    jr nz, @+$76                                  ; $52EA: $20 $74

    ld l, b                                       ; $52EC: $68
    ld h, l                                       ; $52ED: $65
    jr nz, jr_01E_5363                            ; $52EE: $20 $73

    ld h, l                                       ; $52F0: $65
    ld h, c                                       ; $52F1: $61
    inc l                                         ; $52F2: $2C
    cp $45                                        ; $52F3: $FE $45
    ld h, c                                       ; $52F5: $61
    ld [hl], e                                    ; $52F6: $73
    ld [hl], h                                    ; $52F7: $74
    jr nz, jr_01E_5369                            ; $52F8: $20 $6F

    ld h, [hl]                                    ; $52FA: $66
    jr nz, jr_01E_5365                            ; $52FB: $20 $68

    ld h, l                                       ; $52FD: $65
    ld [hl], d                                    ; $52FE: $72
    ld h, l                                       ; $52FF: $65
    ld l, $FE                                     ; $5300: $2E $FE
    ld e, c                                       ; $5302: $59
    ld l, a                                       ; $5303: $6F
    ld [hl], l                                    ; $5304: $75
    jr nz, jr_01E_536A                            ; $5305: $20 $63

    ld h, c                                       ; $5307: $61
    ld l, [hl]                                    ; $5308: $6E
    jr nz, jr_01E_5372                            ; $5309: $20 $67

    ld h, l                                       ; $530B: $65
    ld [hl], h                                    ; $530C: $74
    jr nz, jr_01E_5383                            ; $530D: $20 $74

    ld l, a                                       ; $530F: $6F
    rst $38                                       ; $5310: $FF
    ld l, c                                       ; $5311: $69
    ld [hl], h                                    ; $5312: $74
    jr nz, jr_01E_537B                            ; $5313: $20 $66

    ld [hl], d                                    ; $5315: $72
    ld l, a                                       ; $5316: $6F
    ld l, l                                       ; $5317: $6D
    jr nz, jr_01E_538E                            ; $5318: $20 $74

    ld l, b                                       ; $531A: $68
    ld h, l                                       ; $531B: $65
    cp $64                                        ; $531C: $FE $64
    ld l, a                                       ; $531E: $6F
    ld h, e                                       ; $531F: $63
    ld l, e                                       ; $5320: $6B
    ld [hl], e                                    ; $5321: $73
    jr nz, jr_01E_5390                            ; $5322: $20 $6C

    ld l, a                                       ; $5324: $6F
    ld h, e                                       ; $5325: $63
    ld h, c                                       ; $5326: $61
    ld [hl], h                                    ; $5327: $74
    ld h, l                                       ; $5328: $65
    ld h, h                                       ; $5329: $64
    rst $38                                       ; $532A: $FF
    ld h, h                                       ; $532B: $64
    ld l, a                                       ; $532C: $6F
    ld [hl], a                                    ; $532D: $77
    ld l, [hl]                                    ; $532E: $6E
    jr nz, jr_01E_53A5                            ; $532F: $20 $74

    ld l, b                                       ; $5331: $68
    ld h, c                                       ; $5332: $61
    ld [hl], h                                    ; $5333: $74
    jr nz, jr_01E_53AD                            ; $5334: $20 $77

    ld h, c                                       ; $5336: $61
    ld a, c                                       ; $5337: $79
    ld l, $FE                                     ; $5338: $2E $FE
    ld c, a                                       ; $533A: $4F
    ld l, b                                       ; $533B: $68
    inc l                                         ; $533C: $2C
    jr nz, jr_01E_53A0                            ; $533D: $20 $61

    ld l, [hl]                                    ; $533F: $6E
    ld h, h                                       ; $5340: $64
    jr nz, @+$76                                  ; $5341: $20 $74

    ld [hl], d                                    ; $5343: $72
    ld a, c                                       ; $5344: $79
    jr nz, jr_01E_53B5                            ; $5345: $20 $6E

    ld l, a                                       ; $5347: $6F
    ld [hl], h                                    ; $5348: $74

jr_01E_5349:
    rst $38                                       ; $5349: $FF

jr_01E_534A:
    ld [hl], h                                    ; $534A: $74
    ld l, a                                       ; $534B: $6F
    jr nz, jr_01E_53C3                            ; $534C: $20 $75

    ld [hl], b                                    ; $534E: $70
    ld [hl], e                                    ; $534F: $73
    ld h, l                                       ; $5350: $65
    ld [hl], h                                    ; $5351: $74
    jr nz, jr_01E_53C8                            ; $5352: $20 $74

    ld l, b                                       ; $5354: $68
    ld h, l                                       ; $5355: $65
    cp $66                                        ; $5356: $FE $66
    ld h, l                                       ; $5358: $65
    ld [hl], d                                    ; $5359: $72
    ld [hl], d                                    ; $535A: $72
    ld a, c                                       ; $535B: $79
    ld l, l                                       ; $535C: $6D
    ld h, c                                       ; $535D: $61
    ld l, [hl]                                    ; $535E: $6E
    ld l, $FE                                     ; $535F: $2E $FE
    ld c, b                                       ; $5361: $48
    ld h, l                                       ; $5362: $65

jr_01E_5363:
    jr nz, jr_01E_53C8                            ; $5363: $20 $63

jr_01E_5365:
    ld h, c                                       ; $5365: $61
    ld l, [hl]                                    ; $5366: $6E
    jr nz, @+$64                                  ; $5367: $20 $62

jr_01E_5369:
    ld h, l                                       ; $5369: $65

jr_01E_536A:
    jr nz, @+$78                                  ; $536A: $20 $76

    ld h, l                                       ; $536C: $65
    ld [hl], d                                    ; $536D: $72
    ld a, c                                       ; $536E: $79
    rst $38                                       ; $536F: $FF
    ld [hl], h                                    ; $5370: $74
    ld h, l                                       ; $5371: $65

jr_01E_5372:
    ld l, l                                       ; $5372: $6D
    ld [hl], b                                    ; $5373: $70
    ld h, l                                       ; $5374: $65
    ld [hl], d                                    ; $5375: $72
    ld h, c                                       ; $5376: $61
    ld l, l                                       ; $5377: $6D
    ld h, l                                       ; $5378: $65
    ld l, [hl]                                    ; $5379: $6E
    ld [hl], h                                    ; $537A: $74

jr_01E_537B:
    ld h, c                                       ; $537B: $61
    ld l, h                                       ; $537C: $6C
    ld l, $FE                                     ; $537D: $2E $FE
    ld d, a                                       ; $537F: $57
    ld h, l                                       ; $5380: $65
    ld l, h                                       ; $5381: $6C
    ld l, h                                       ; $5382: $6C

jr_01E_5383:
    inc l                                         ; $5383: $2C
    jr nz, jr_01E_53ED                            ; $5384: $20 $67

    ld l, a                                       ; $5386: $6F
    ld l, a                                       ; $5387: $6F
    ld h, h                                       ; $5388: $64
    jr nz, jr_01E_53F7                            ; $5389: $20 $6C

    ld [hl], l                                    ; $538B: $75
    ld h, e                                       ; $538C: $63
    ld l, e                                       ; $538D: $6B

jr_01E_538E:
    rst $38                                       ; $538E: $FF
    ld [hl], h                                    ; $538F: $74

jr_01E_5390:
    ld l, a                                       ; $5390: $6F
    jr nz, jr_01E_540C                            ; $5391: $20 $79

    ld l, a                                       ; $5393: $6F
    ld [hl], l                                    ; $5394: $75
    ld hl, $FDFE                                  ; $5395: $21 $FE $FD
    sbc d                                         ; $5398: $9A
    ld e, b                                       ; $5399: $58
    ld bc, $9B42                                  ; $539A: $01 $42 $9B
    jr z, jr_01E_5414                             ; $539D: $28 $75

    sbc a                                         ; $539F: $9F

jr_01E_53A0:
    ld d, h                                       ; $53A0: $54
    ld l, a                                       ; $53A1: $6F
    ld l, [hl]                                    ; $53A2: $6E
    ld a, c                                       ; $53A3: $79
    inc l                                         ; $53A4: $2C

jr_01E_53A5:
    jr nz, jr_01E_5420                            ; $53A5: $20 $79

    ld l, a                                       ; $53A7: $6F
    ld [hl], l                                    ; $53A8: $75
    daa                                           ; $53A9: $27
    ld [hl], d                                    ; $53AA: $72
    ld h, l                                       ; $53AB: $65
    rst $38                                       ; $53AC: $FF

jr_01E_53AD:
    ld h, d                                       ; $53AD: $62
    ld h, c                                       ; $53AE: $61
    ld h, e                                       ; $53AF: $63
    ld l, e                                       ; $53B0: $6B
    ld hl, $4420                                  ; $53B1: $21 $20 $44
    ld l, c                                       ; $53B4: $69

jr_01E_53B5:
    ld h, h                                       ; $53B5: $64
    jr nz, jr_01E_5431                            ; $53B6: $20 $79

    ld l, a                                       ; $53B8: $6F
    ld [hl], l                                    ; $53B9: $75
    cp $66                                        ; $53BA: $FE $66
    ld l, c                                       ; $53BC: $69
    ld l, [hl]                                    ; $53BD: $6E
    ld h, h                                       ; $53BE: $64
    jr nz, jr_01E_5435                            ; $53BF: $20 $74

    ld l, b                                       ; $53C1: $68
    ld h, l                                       ; $53C2: $65

jr_01E_53C3:
    jr nz, jr_01E_5427                            ; $53C3: $20 $62

    ld l, a                                       ; $53C5: $6F
    ld l, a                                       ; $53C6: $6F
    ld [hl], h                                    ; $53C7: $74

jr_01E_53C8:
    ld [hl], e                                    ; $53C8: $73
    ccf                                           ; $53C9: $3F
    cp $FD                                        ; $53CA: $FE $FD
    sbc e                                         ; $53CC: $9B
    ld a, b                                       ; $53CD: $78
    ld [hl], b                                    ; $53CE: $70
    sbc a                                         ; $53CF: $9F
    ld e, c                                       ; $53D0: $59
    ld h, l                                       ; $53D1: $65
    ld h, c                                       ; $53D2: $61
    ld l, b                                       ; $53D3: $68
    ld l, $FE                                     ; $53D4: $2E $FE
    db $FD                                        ; $53D6: $FD
    sbc e                                         ; $53D7: $9B
    jr z, jr_01E_544F                             ; $53D8: $28 $75

    sbc a                                         ; $53DA: $9F
    ld b, a                                       ; $53DB: $47
    ld [hl], d                                    ; $53DC: $72
    ld h, l                                       ; $53DD: $65
    ld h, c                                       ; $53DE: $61
    ld [hl], h                                    ; $53DF: $74
    ld hl, $53FE                                  ; $53E0: $21 $FE $53
    ld l, a                                       ; $53E3: $6F
    jr nz, jr_01E_5447                            ; $53E4: $20 $61

    ld [hl], d                                    ; $53E6: $72
    ld h, l                                       ; $53E7: $65
    jr nz, jr_01E_5463                            ; $53E8: $20 $79

    ld l, a                                       ; $53EA: $6F
    ld [hl], l                                    ; $53EB: $75
    rst $38                                       ; $53EC: $FF

jr_01E_53ED:
    ld [hl], d                                    ; $53ED: $72
    ld h, l                                       ; $53EE: $65
    ld h, c                                       ; $53EF: $61
    ld h, h                                       ; $53F0: $64
    ld a, c                                       ; $53F1: $79
    jr nz, jr_01E_5468                            ; $53F2: $20 $74

    ld l, a                                       ; $53F4: $6F
    jr nz, jr_01E_545E                            ; $53F5: $20 $67

jr_01E_53F7:
    ld l, c                                       ; $53F7: $69
    halt                                          ; $53F8: $76
    ld h, l                                       ; $53F9: $65
    cp $62                                        ; $53FA: $FE $62
    ld h, c                                       ; $53FC: $61
    ld h, e                                       ; $53FD: $63
    ld l, e                                       ; $53FE: $6B
    jr nz, jr_01E_5475                            ; $53FF: $20 $74

    ld l, b                                       ; $5401: $68
    ld h, l                                       ; $5402: $65
    jr nz, jr_01E_5470                            ; $5403: $20 $6B

    ld h, l                                       ; $5405: $65
    ld a, c                                       ; $5406: $79
    rst $38                                       ; $5407: $FF
    ld a, c                                       ; $5408: $79
    ld h, l                                       ; $5409: $65
    ld [hl], h                                    ; $540A: $74
    ccf                                           ; $540B: $3F

jr_01E_540C:
    cp $FD                                        ; $540C: $FE $FD
    sbc d                                         ; $540E: $9A
    sbc a                                         ; $540F: $9F
    jr nz, jr_01E_5459                            ; $5410: $20 $47

    ld l, c                                       ; $5412: $69
    halt                                          ; $5413: $76

jr_01E_5414:
    ld h, l                                       ; $5414: $65
    jr nz, jr_01E_5480                            ; $5415: $20 $69

    ld [hl], h                                    ; $5417: $74
    jr nz, @+$70                                  ; $5418: $20 $6E

    ld l, a                                       ; $541A: $6F
    ld [hl], a                                    ; $541B: $77
    rst $38                                       ; $541C: $FF
    jr nz, jr_01E_5466                            ; $541D: $20 $47

    ld l, c                                       ; $541F: $69

jr_01E_5420:
    halt                                          ; $5420: $76
    ld h, l                                       ; $5421: $65
    jr nz, @+$6B                                  ; $5422: $20 $69

    ld [hl], h                                    ; $5424: $74
    jr nz, jr_01E_5493                            ; $5425: $20 $6C

jr_01E_5427:
    ld h, c                                       ; $5427: $61
    ld [hl], h                                    ; $5428: $74
    ld h, l                                       ; $5429: $65
    ld [hl], d                                    ; $542A: $72
    db $FD                                        ; $542B: $FD
    sbc h                                         ; $542C: $9C
    ld [bc], a                                    ; $542D: $02
    ld e, $34                                     ; $542E: $1E $34
    ld d, h                                       ; $5430: $54

jr_01E_5431:
    ld e, $DB                                     ; $5431: $1E $DB
    ld d, h                                       ; $5433: $54
    sbc e                                         ; $5434: $9B

jr_01E_5435:
    ld a, b                                       ; $5435: $78
    ld [hl], b                                    ; $5436: $70
    sbc a                                         ; $5437: $9F
    ld c, a                                       ; $5438: $4F
    ld l, e                                       ; $5439: $6B
    ld h, c                                       ; $543A: $61
    ld a, c                                       ; $543B: $79
    inc l                                         ; $543C: $2C
    jr nz, @+$6A                                  ; $543D: $20 $68

    ld h, l                                       ; $543F: $65
    ld [hl], d                                    ; $5440: $72
    ld h, l                                       ; $5441: $65
    jr nz, jr_01E_54BD                            ; $5442: $20 $79

    ld l, a                                       ; $5444: $6F
    ld [hl], l                                    ; $5445: $75
    rst $38                                       ; $5446: $FF

jr_01E_5447:
    ld h, a                                       ; $5447: $67
    ld l, a                                       ; $5448: $6F
    ld l, $FE                                     ; $5449: $2E $FE
    db $FD                                        ; $544B: $FD
    sbc d                                         ; $544C: $9A
    xor [hl]                                      ; $544D: $AE
    and l                                         ; $544E: $A5

jr_01E_544F:
    and c                                         ; $544F: $A1
    rst $30                                       ; $5450: $F7
    adc b                                         ; $5451: $88
    nop                                           ; $5452: $00
    dec e                                         ; $5453: $1D
    ld bc, $549F                                  ; $5454: $01 $9F $54
    ld l, a                                       ; $5457: $6F
    ld l, [hl]                                    ; $5458: $6E

jr_01E_5459:
    ld a, c                                       ; $5459: $79
    jr nz, jr_01E_54C8                            ; $545A: $20 $6C

    ld l, a                                       ; $545C: $6F
    ld [hl], e                                    ; $545D: $73

jr_01E_545E:
    ld [hl], h                                    ; $545E: $74
    rst $38                                       ; $545F: $FF
    ld b, c                                       ; $5460: $41
    ld [hl], e                                    ; $5461: $73
    ld l, b                                       ; $5462: $68

jr_01E_5463:
    ld h, a                                       ; $5463: $67
    ld h, c                                       ; $5464: $61
    ld [hl], d                                    ; $5465: $72

jr_01E_5466:
    daa                                           ; $5466: $27
    ld [hl], e                                    ; $5467: $73

jr_01E_5468:
    jr nz, jr_01E_54B5                            ; $5468: $20 $4B

    ld h, l                                       ; $546A: $65
    ld a, c                                       ; $546B: $79
    ld hl, $FDFE                                  ; $546C: $21 $FE $FD
    sbc e                                         ; $546F: $9B

jr_01E_5470:
    jr z, jr_01E_54E7                             ; $5470: $28 $75

    sbc a                                         ; $5472: $9F
    ld d, h                                       ; $5473: $54
    ld l, b                                       ; $5474: $68

jr_01E_5475:
    ld h, c                                       ; $5475: $61
    ld l, [hl]                                    ; $5476: $6E
    ld l, e                                       ; $5477: $6B
    ld [hl], e                                    ; $5478: $73
    ld l, $20                                     ; $5479: $2E $20
    ld c, c                                       ; $547B: $49
    ld h, [hl]                                    ; $547C: $66
    jr nz, jr_01E_54C8                            ; $547D: $20 $49

    rst $38                                       ; $547F: $FF

jr_01E_5480:
    ld h, e                                       ; $5480: $63
    ld h, c                                       ; $5481: $61
    ld l, [hl]                                    ; $5482: $6E
    jr nz, jr_01E_54F5                            ; $5483: $20 $70

    ld [hl], l                                    ; $5485: $75
    ld [hl], h                                    ; $5486: $74
    jr nz, jr_01E_54FD                            ; $5487: $20 $74

    ld l, b                                       ; $5489: $68
    ld l, c                                       ; $548A: $69
    ld [hl], e                                    ; $548B: $73
    cp $62                                        ; $548C: $FE $62
    ld h, c                                       ; $548E: $61
    ld h, e                                       ; $548F: $63
    ld l, e                                       ; $5490: $6B
    jr nz, jr_01E_5504                            ; $5491: $20 $71

jr_01E_5493:
    ld [hl], l                                    ; $5493: $75
    ld l, c                                       ; $5494: $69
    ld h, e                                       ; $5495: $63
    ld l, e                                       ; $5496: $6B
    ld l, h                                       ; $5497: $6C
    ld a, c                                       ; $5498: $79
    inc l                                         ; $5499: $2C
    rst $38                                       ; $549A: $FF
    ld b, c                                       ; $549B: $41
    ld [hl], e                                    ; $549C: $73
    ld l, b                                       ; $549D: $68
    ld h, a                                       ; $549E: $67
    ld h, c                                       ; $549F: $61
    ld [hl], d                                    ; $54A0: $72
    jr nz, jr_01E_551A                            ; $54A1: $20 $77

    ld l, c                                       ; $54A3: $69
    ld l, h                                       ; $54A4: $6C
    ld l, h                                       ; $54A5: $6C
    cp $6E                                        ; $54A6: $FE $6E
    ld h, l                                       ; $54A8: $65
    halt                                          ; $54A9: $76
    ld h, l                                       ; $54AA: $65
    ld [hl], d                                    ; $54AB: $72
    jr nz, jr_01E_551C                            ; $54AC: $20 $6E

    ld l, a                                       ; $54AE: $6F
    ld [hl], h                                    ; $54AF: $74
    ld l, c                                       ; $54B0: $69
    ld h, e                                       ; $54B1: $63
    ld h, l                                       ; $54B2: $65
    rst $38                                       ; $54B3: $FF
    ld l, c                                       ; $54B4: $69

jr_01E_54B5:
    ld [hl], h                                    ; $54B5: $74
    jr nz, @+$79                                  ; $54B6: $20 $77

    ld h, c                                       ; $54B8: $61
    ld [hl], e                                    ; $54B9: $73
    jr nz, jr_01E_5523                            ; $54BA: $20 $67

    ld l, a                                       ; $54BC: $6F

jr_01E_54BD:
    ld l, [hl]                                    ; $54BD: $6E
    ld h, l                                       ; $54BE: $65
    ld l, $FE                                     ; $54BF: $2E $FE
    ld d, e                                       ; $54C1: $53
    ld h, l                                       ; $54C2: $65
    ld h, l                                       ; $54C3: $65
    jr nz, jr_01E_553F                            ; $54C4: $20 $79

    ld l, a                                       ; $54C6: $6F
    ld [hl], l                                    ; $54C7: $75

jr_01E_54C8:
    jr nz, jr_01E_5536                            ; $54C8: $20 $6C

    ld h, c                                       ; $54CA: $61
    ld [hl], h                                    ; $54CB: $74
    ld h, l                                       ; $54CC: $65
    ld [hl], d                                    ; $54CD: $72
    inc l                                         ; $54CE: $2C
    rst $38                                       ; $54CF: $FF
    ld d, h                                       ; $54D0: $54
    ld l, a                                       ; $54D1: $6F
    ld l, [hl]                                    ; $54D2: $6E
    ld a, c                                       ; $54D3: $79
    ld hl, $FDFE                                  ; $54D4: $21 $FE $FD
    sbc d                                         ; $54D7: $9A
    ld e, b                                       ; $54D8: $58
    ld bc, $9B42                                  ; $54D9: $01 $42 $9B
    ld a, b                                       ; $54DC: $78
    ld [hl], b                                    ; $54DD: $70
    sbc a                                         ; $54DE: $9F
    ld c, c                                       ; $54DF: $49
    daa                                           ; $54E0: $27
    ld l, h                                       ; $54E1: $6C
    ld l, h                                       ; $54E2: $6C
    jr nz, @+$69                                  ; $54E3: $20 $67

    ld l, c                                       ; $54E5: $69
    halt                                          ; $54E6: $76

jr_01E_54E7:
    ld h, l                                       ; $54E7: $65
    jr nz, jr_01E_5553                            ; $54E8: $20 $69

    ld [hl], h                                    ; $54EA: $74
    rst $38                                       ; $54EB: $FF
    ld h, d                                       ; $54EC: $62
    ld h, c                                       ; $54ED: $61
    ld h, e                                       ; $54EE: $63
    ld l, e                                       ; $54EF: $6B
    jr nz, jr_01E_555E                            ; $54F0: $20 $6C

    ld h, c                                       ; $54F2: $61
    ld [hl], h                                    ; $54F3: $74
    ld h, l                                       ; $54F4: $65

jr_01E_54F5:
    ld [hl], d                                    ; $54F5: $72
    ld l, $FE                                     ; $54F6: $2E $FE
    db $FD                                        ; $54F8: $FD
    sbc e                                         ; $54F9: $9B
    jr z, jr_01E_5571                             ; $54FA: $28 $75

    sbc a                                         ; $54FC: $9F

jr_01E_54FD:
    ld c, a                                       ; $54FD: $4F
    ld l, e                                       ; $54FE: $6B
    ld h, c                                       ; $54FF: $61
    ld a, c                                       ; $5500: $79
    inc l                                         ; $5501: $2C
    jr nz, jr_01E_5566                            ; $5502: $20 $62

jr_01E_5504:
    ld [hl], l                                    ; $5504: $75
    ld [hl], h                                    ; $5505: $74
    jr nz, jr_01E_556C                            ; $5506: $20 $64

    ld l, a                                       ; $5508: $6F
    ld l, [hl]                                    ; $5509: $6E
    daa                                           ; $550A: $27
    ld [hl], h                                    ; $550B: $74
    rst $38                                       ; $550C: $FF
    ld [hl], h                                    ; $550D: $74
    ld h, c                                       ; $550E: $61
    ld l, e                                       ; $550F: $6B
    ld h, l                                       ; $5510: $65
    jr nz, @+$76                                  ; $5511: $20 $74

    ld l, a                                       ; $5513: $6F
    ld l, a                                       ; $5514: $6F
    jr nz, jr_01E_5583                            ; $5515: $20 $6C

    ld l, a                                       ; $5517: $6F
    ld l, [hl]                                    ; $5518: $6E
    ld h, a                                       ; $5519: $67

jr_01E_551A:
    ld l, $FE                                     ; $551A: $2E $FE

jr_01E_551C:
    ld c, c                                       ; $551C: $49
    daa                                           ; $551D: $27
    ld l, h                                       ; $551E: $6C
    ld l, h                                       ; $551F: $6C
    jr nz, jr_01E_5584                            ; $5520: $20 $62

    ld h, l                                       ; $5522: $65

jr_01E_5523:
    jr nz, jr_01E_558E                            ; $5523: $20 $69

    ld l, [hl]                                    ; $5525: $6E
    jr nz, jr_01E_559C                            ; $5526: $20 $74

    ld l, a                                       ; $5528: $6F
    ld [hl], a                                    ; $5529: $77
    ld l, [hl]                                    ; $552A: $6E
    rst $38                                       ; $552B: $FF
    ld [hl], e                                    ; $552C: $73
    ld l, a                                       ; $552D: $6F
    jr nz, jr_01E_55A7                            ; $552E: $20 $77

    ld l, b                                       ; $5530: $68
    ld h, l                                       ; $5531: $65
    ld l, [hl]                                    ; $5532: $6E
    jr nz, jr_01E_55AE                            ; $5533: $20 $79

    ld l, a                                       ; $5535: $6F

jr_01E_5536:
    ld [hl], l                                    ; $5536: $75
    daa                                           ; $5537: $27
    ld [hl], d                                    ; $5538: $72
    ld h, l                                       ; $5539: $65
    cp $72                                        ; $553A: $FE $72
    ld h, l                                       ; $553C: $65
    ld h, c                                       ; $553D: $61
    ld h, h                                       ; $553E: $64

jr_01E_553F:
    ld a, c                                       ; $553F: $79
    jr nz, jr_01E_55B6                            ; $5540: $20 $74

    ld l, a                                       ; $5542: $6F
    jr nz, jr_01E_55AC                            ; $5543: $20 $67

    ld l, c                                       ; $5545: $69
    halt                                          ; $5546: $76
    ld h, l                                       ; $5547: $65
    rst $38                                       ; $5548: $FF
    ld l, c                                       ; $5549: $69
    ld [hl], h                                    ; $554A: $74
    jr nz, jr_01E_55AF                            ; $554B: $20 $62

    ld h, c                                       ; $554D: $61
    ld h, e                                       ; $554E: $63
    ld l, e                                       ; $554F: $6B
    inc l                                         ; $5550: $2C
    jr nz, jr_01E_55BD                            ; $5551: $20 $6A

jr_01E_5553:
    ld [hl], l                                    ; $5553: $75
    ld [hl], e                                    ; $5554: $73
    ld [hl], h                                    ; $5555: $74
    cp $66                                        ; $5556: $FE $66
    ld l, c                                       ; $5558: $69
    ld l, [hl]                                    ; $5559: $6E
    ld h, h                                       ; $555A: $64
    jr nz, jr_01E_55CA                            ; $555B: $20 $6D

    ld h, l                                       ; $555D: $65

jr_01E_555E:
    ld l, $FE                                     ; $555E: $2E $FE
    db $FD                                        ; $5560: $FD
    sbc d                                         ; $5561: $9A
    ld e, b                                       ; $5562: $58
    ld bc, $9342                                  ; $5563: $01 $42 $93

jr_01E_5566:
    ld l, d                                       ; $5566: $6A
    ei                                            ; $5567: $FB
    ld h, c                                       ; $5568: $61
    ld a, h                                       ; $5569: $7C
    db $FC                                        ; $556A: $FC
    ld c, b                                       ; $556B: $48

jr_01E_556C:
    ld a, h                                       ; $556C: $7C
    dec bc                                        ; $556D: $0B
    nop                                           ; $556E: $00
    add d                                         ; $556F: $82
    sub h                                         ; $5570: $94

jr_01E_5571:
    ld b, d                                       ; $5571: $42
    xor h                                         ; $5572: $AC
    or d                                          ; $5573: $B2
    and d                                         ; $5574: $A2
    ld bc, $0843                                  ; $5575: $01 $43 $08
    ld a, [bc]                                    ; $5578: $0A
    nop                                           ; $5579: $00
    xor h                                         ; $557A: $AC
    and c                                         ; $557B: $A1
    ld b, b                                       ; $557C: $40
    rrca                                          ; $557D: $0F
    inc b                                         ; $557E: $04
    dec b                                         ; $557F: $05
    rrca                                          ; $5580: $0F
    ld e, $8F                                     ; $5581: $1E $8F

jr_01E_5583:
    ld d, [hl]                                    ; $5583: $56

jr_01E_5584:
    sub e                                         ; $5584: $93
    ld h, l                                       ; $5585: $65
    ld d, $48                                     ; $5586: $16 $48
    ld c, a                                       ; $5588: $4F
    ld h, h                                       ; $5589: $64
    ld hl, sp+$4A                                 ; $558A: $F8 $4A
    ld h, [hl]                                    ; $558C: $66
    ret nz                                        ; $558D: $C0

jr_01E_558E:
    ld e, h                                       ; $558E: $5C
    ld hl, $0005                                  ; $558F: $21 $05 $00
    add c                                         ; $5592: $81
    ld e, l                                       ; $5593: $5D
    dec b                                         ; $5594: $05
    dec b                                         ; $5595: $05

jr_01E_5596:
    ld l, c                                       ; $5596: $69
    ret nc                                        ; $5597: $D0

    nop                                           ; $5598: $00
    jr nz, jr_01E_5596                            ; $5599: $20 $FB

    ld d, b                                       ; $559B: $50

jr_01E_559C:
    ld [hl+], a                                   ; $559C: $22
    dec b                                         ; $559D: $05
    ld b, b                                       ; $559E: $40
    dec b                                         ; $559F: $05
    ld [$63CE], sp                                ; $55A0: $08 $CE $63
    ld bc, $1501                                  ; $55A3: $01 $01 $15
    ret nc                                        ; $55A6: $D0

jr_01E_55A7:
    and h                                         ; $55A7: $A4
    ld l, $E3                                     ; $55A8: $2E $E3
    ld d, l                                       ; $55AA: $55
    ld [hl+], a                                   ; $55AB: $22

jr_01E_55AC:
    dec b                                         ; $55AC: $05
    ld b, b                                       ; $55AD: $40

jr_01E_55AE:
    dec b                                         ; $55AE: $05

jr_01E_55AF:
    add hl, bc                                    ; $55AF: $09
    adc $63                                       ; $55B0: $CE $63
    ld bc, $1501                                  ; $55B2: $01 $01 $15
    ret nc                                        ; $55B5: $D0

jr_01E_55B6:
    and h                                         ; $55B6: $A4
    ld l, $E3                                     ; $55B7: $2E $E3
    ld d, l                                       ; $55B9: $55
    ld [hl+], a                                   ; $55BA: $22
    dec b                                         ; $55BB: $05
    ld b, b                                       ; $55BC: $40

jr_01E_55BD:
    dec b                                         ; $55BD: $05
    ld a, [bc]                                    ; $55BE: $0A
    adc $63                                       ; $55BF: $CE $63
    ld bc, $1501                                  ; $55C1: $01 $01 $15
    ret nc                                        ; $55C4: $D0

    and h                                         ; $55C5: $A4
    ld l, $E3                                     ; $55C6: $2E $E3
    ld d, l                                       ; $55C8: $55
    ld [hl+], a                                   ; $55C9: $22

jr_01E_55CA:
    dec b                                         ; $55CA: $05
    ld b, b                                       ; $55CB: $40
    ld l, e                                       ; $55CC: $6B
    ld b, $0D                                     ; $55CD: $06 $0D
    ld [hl], b                                    ; $55CF: $70
    ld e, e                                       ; $55D0: $5B
    ld b, b                                       ; $55D1: $40
    adc d                                         ; $55D2: $8A
    nop                                           ; $55D3: $00
    dec bc                                        ; $55D4: $0B
    nop                                           ; $55D5: $00
    dec bc                                        ; $55D6: $0B
    ld [$090B], sp                                ; $55D7: $08 $0B $09
    rra                                           ; $55DA: $1F
    dec e                                         ; $55DB: $1D
    dec bc                                        ; $55DC: $0B
    ld a, [bc]                                    ; $55DD: $0A
    nop                                           ; $55DE: $00
    add d                                         ; $55DF: $82
    sub h                                         ; $55E0: $94
    ld b, d                                       ; $55E1: $42
    xor h                                         ; $55E2: $AC
    or d                                          ; $55E3: $B2
    and d                                         ; $55E4: $A2
    ld bc, $0EA9                                  ; $55E5: $01 $A9 $0E
    nop                                           ; $55E8: $00
    sub e                                         ; $55E9: $93
    ld h, l                                       ; $55EA: $65
    ld d, $48                                     ; $55EB: $16 $48
    ld c, a                                       ; $55ED: $4F
    ld h, h                                       ; $55EE: $64
    ld hl, sp+$4A                                 ; $55EF: $F8 $4A
    ld h, [hl]                                    ; $55F1: $66
    ret nz                                        ; $55F2: $C0

    ld e, h                                       ; $55F3: $5C
    ld hl, $0005                                  ; $55F4: $21 $05 $00
    ld l, e                                       ; $55F7: $6B
    ld c, d                                       ; $55F8: $4A
    ld a, [bc]                                    ; $55F9: $0A
    inc bc                                        ; $55FA: $03
    ld b, [hl]                                    ; $55FB: $46
    ret nc                                        ; $55FC: $D0

    nop                                           ; $55FD: $00
    ld e, $5F                                     ; $55FE: $1E $5F
    ld d, [hl]                                    ; $5600: $56
    ld [hl+], a                                   ; $5601: $22
    dec b                                         ; $5602: $05
    ld b, b                                       ; $5603: $40
    dec b                                         ; $5604: $05
    ld [bc], a                                    ; $5605: $02
    ld l, e                                       ; $5606: $6B
    ld c, d                                       ; $5607: $4A
    add hl, bc                                    ; $5608: $09
    inc bc                                        ; $5609: $03
    ld b, l                                       ; $560A: $45
    ret nc                                        ; $560B: $D0

    nop                                           ; $560C: $00
    ld e, $72                                     ; $560D: $1E $72
    ld d, [hl]                                    ; $560F: $56
    ld [hl+], a                                   ; $5610: $22
    dec b                                         ; $5611: $05
    ld b, b                                       ; $5612: $40
    dec b                                         ; $5613: $05
    ld [$63CE], sp                                ; $5614: $08 $CE $63
    ld bc, $1501                                  ; $5617: $01 $01 $15
    ret nc                                        ; $561A: $D0

    and h                                         ; $561B: $A4
    ld l, $E3                                     ; $561C: $2E $E3
    ld d, l                                       ; $561E: $55
    ld [hl+], a                                   ; $561F: $22
    dec b                                         ; $5620: $05

jr_01E_5621:
    ld b, b                                       ; $5621: $40
    dec b                                         ; $5622: $05
    add hl, bc                                    ; $5623: $09
    adc $63                                       ; $5624: $CE $63
    ld bc, $1501                                  ; $5626: $01 $01 $15
    ret nc                                        ; $5629: $D0

    and h                                         ; $562A: $A4
    ld l, $E3                                     ; $562B: $2E $E3
    ld d, l                                       ; $562D: $55
    ld [hl+], a                                   ; $562E: $22
    dec b                                         ; $562F: $05
    ld b, b                                       ; $5630: $40
    dec b                                         ; $5631: $05
    ld a, [bc]                                    ; $5632: $0A
    adc $63                                       ; $5633: $CE $63
    ld bc, $1501                                  ; $5635: $01 $01 $15
    ret nc                                        ; $5638: $D0

    and h                                         ; $5639: $A4
    ld l, $E3                                     ; $563A: $2E $E3
    ld d, l                                       ; $563C: $55
    ld [hl+], a                                   ; $563D: $22
    dec b                                         ; $563E: $05
    ld b, b                                       ; $563F: $40
    ld l, e                                       ; $5640: $6B

jr_01E_5641:
    dec hl                                        ; $5641: $2B
    dec bc                                        ; $5642: $0B
    db $10                                        ; $5643: $10
    ld l, d                                       ; $5644: $6A
    nop                                           ; $5645: $00
    add b                                         ; $5646: $80
    nop                                           ; $5647: $00
    ld l, e                                       ; $5648: $6B
    ld b, $0D                                     ; $5649: $06 $0D
    ld [hl], b                                    ; $564B: $70
    ld e, e                                       ; $564C: $5B
    ld b, b                                       ; $564D: $40
    adc d                                         ; $564E: $8A
    nop                                           ; $564F: $00
    dec bc                                        ; $5650: $0B

jr_01E_5651:
    nop                                           ; $5651: $00
    dec bc                                        ; $5652: $0B
    ld [bc], a                                    ; $5653: $02
    dec bc                                        ; $5654: $0B
    ld [$090B], sp                                ; $5655: $08 $0B $09
    dec bc                                        ; $5658: $0B
    ld a, [bc]                                    ; $5659: $0A
    add d                                         ; $565A: $82
    rra                                           ; $565B: $1F
    dec e                                         ; $565C: $1D
    sub h                                         ; $565D: $94
    ld b, d                                       ; $565E: $42
    inc d                                         ; $565F: $14
    jr nz, jr_01E_5621                            ; $5660: $20 $BF

    ld d, b                                       ; $5662: $50
    ld h, d                                       ; $5663: $62
    ld bc, $0840                                  ; $5664: $01 $40 $08
    dec d                                         ; $5667: $15
    jr nz, jr_01E_5651                            ; $5668: $20 $E7

    ld d, b                                       ; $566A: $50
    db $10                                        ; $566B: $10
    jr nz, @-$53                                  ; $566C: $20 $AB

    ld d, b                                       ; $566E: $50
    nop                                           ; $566F: $00
    nop                                           ; $5670: $00
    ld b, d                                       ; $5671: $42
    inc d                                         ; $5672: $14
    rrca                                          ; $5673: $0F
    ld l, $6D                                     ; $5674: $2E $6D
    ld b, b                                       ; $5676: $40
    db $10                                        ; $5677: $10
    ld e, e                                       ; $5678: $5B
    ld e, $D1                                     ; $5679: $1E $D1
    ld d, d                                       ; $567B: $52
    ld h, d                                       ; $567C: $62
    ld bc, $0F15                                  ; $567D: $01 $15 $0F
    sub b                                         ; $5680: $90
    ld l, h                                       ; $5681: $6C
    ld h, b                                       ; $5682: $60
    nop                                           ; $5683: $00
    rlca                                          ; $5684: $07
    nop                                           ; $5685: $00
    add c                                         ; $5686: $81
    ld e, l                                       ; $5687: $5D
    add hl, bc                                    ; $5688: $09
    nop                                           ; $5689: $00
    jr nz, jr_01E_5641                            ; $568A: $20 $B5

    ld d, b                                       ; $568C: $50
    add hl, de                                    ; $568D: $19
    ld b, d                                       ; $568E: $42
    xor a                                         ; $568F: $AF
    xor h                                         ; $5690: $AC
    and c                                         ; $5691: $A1
    ld b, b                                       ; $5692: $40
    sub e                                         ; $5693: $93
    ld h, l                                       ; $5694: $65
    ld d, $48                                     ; $5695: $16 $48
    ld c, a                                       ; $5697: $4F
    ld h, h                                       ; $5698: $64
    ld hl, sp+$4A                                 ; $5699: $F8 $4A
    ld h, [hl]                                    ; $569B: $66
    ret nz                                        ; $569C: $C0

    ld e, h                                       ; $569D: $5C
    ld hl, $0005                                  ; $569E: $21 $05 $00
    ld l, e                                       ; $56A1: $6B
    ld c, d                                       ; $56A2: $4A
    ld a, [bc]                                    ; $56A3: $0A
    inc d                                         ; $56A4: $14
    sbc d                                         ; $56A5: $9A
    pop de                                        ; $56A6: $D1
    nop                                           ; $56A7: $00
    ld e, $09                                     ; $56A8: $1E $09
    ld d, a                                       ; $56AA: $57
    ld [hl+], a                                   ; $56AB: $22
    dec b                                         ; $56AC: $05
    ld b, b                                       ; $56AD: $40
    dec b                                         ; $56AE: $05
    ld [bc], a                                    ; $56AF: $02
    ld l, e                                       ; $56B0: $6B
    ld c, d                                       ; $56B1: $4A
    ld a, [bc]                                    ; $56B2: $0A
    add hl, bc                                    ; $56B3: $09
    cp [hl]                                       ; $56B4: $BE
    ret nc                                        ; $56B5: $D0

    nop                                           ; $56B6: $00
    ld e, $14                                     ; $56B7: $1E $14
    ld d, a                                       ; $56B9: $57
    ld [hl+], a                                   ; $56BA: $22

jr_01E_56BB:
    dec b                                         ; $56BB: $05
    ld b, b                                       ; $56BC: $40
    dec b                                         ; $56BD: $05
    ld [$63CE], sp                                ; $56BE: $08 $CE $63
    ld bc, $1501                                  ; $56C1: $01 $01 $15
    ret nc                                        ; $56C4: $D0

    and h                                         ; $56C5: $A4
    ld l, $E3                                     ; $56C6: $2E $E3
    ld d, l                                       ; $56C8: $55
    ld [hl+], a                                   ; $56C9: $22
    dec b                                         ; $56CA: $05
    ld b, b                                       ; $56CB: $40
    dec b                                         ; $56CC: $05
    add hl, bc                                    ; $56CD: $09
    adc $63                                       ; $56CE: $CE $63
    ld bc, $1501                                  ; $56D0: $01 $01 $15
    ret nc                                        ; $56D3: $D0

    and h                                         ; $56D4: $A4
    ld l, $E3                                     ; $56D5: $2E $E3
    ld d, l                                       ; $56D7: $55
    ld [hl+], a                                   ; $56D8: $22
    dec b                                         ; $56D9: $05
    ld b, b                                       ; $56DA: $40
    dec b                                         ; $56DB: $05
    ld a, [bc]                                    ; $56DC: $0A
    adc $63                                       ; $56DD: $CE $63

jr_01E_56DF:
    ld bc, $1501                                  ; $56DF: $01 $01 $15
    ret nc                                        ; $56E2: $D0

    and h                                         ; $56E3: $A4
    ld l, $E3                                     ; $56E4: $2E $E3
    ld d, l                                       ; $56E6: $55
    ld [hl+], a                                   ; $56E7: $22
    dec b                                         ; $56E8: $05
    ld b, b                                       ; $56E9: $40
    ld l, e                                       ; $56EA: $6B
    dec hl                                        ; $56EB: $2B
    dec bc                                        ; $56EC: $0B
    db $10                                        ; $56ED: $10
    ld l, d                                       ; $56EE: $6A
    nop                                           ; $56EF: $00
    add b                                         ; $56F0: $80
    nop                                           ; $56F1: $00
    ld l, e                                       ; $56F2: $6B
    ld b, $0D                                     ; $56F3: $06 $0D
    ld [hl], b                                    ; $56F5: $70
    ld e, e                                       ; $56F6: $5B
    ld b, b                                       ; $56F7: $40
    adc d                                         ; $56F8: $8A
    nop                                           ; $56F9: $00
    dec bc                                        ; $56FA: $0B
    nop                                           ; $56FB: $00
    dec bc                                        ; $56FC: $0B
    ld [bc], a                                    ; $56FD: $02
    dec bc                                        ; $56FE: $0B
    ld [$090B], sp                                ; $56FF: $08 $0B $09
    dec bc                                        ; $5702: $0B
    ld a, [bc]                                    ; $5703: $0A
    add d                                         ; $5704: $82
    rra                                           ; $5705: $1F
    dec e                                         ; $5706: $1D
    sub h                                         ; $5707: $94
    ld b, d                                       ; $5708: $42
    dec d                                         ; $5709: $15
    jr nz, @-$4B                                  ; $570A: $20 $B3

    ld c, a                                       ; $570C: $4F
    ld b, b                                       ; $570D: $40
    jr nz, jr_01E_56BB                            ; $570E: $20 $AB

    ld d, b                                       ; $5710: $50
    nop                                           ; $5711: $00
    nop                                           ; $5712: $00
    ld b, d                                       ; $5713: $42
    ld b, b                                       ; $5714: $40
    db $10                                        ; $5715: $10
    dec d                                         ; $5716: $15
    rrca                                          ; $5717: $0F
    ldh [$6C], a                                  ; $5718: $E0 $6C
    jr nc, @+$11                                  ; $571A: $30 $0F

    ld a, [de]                                    ; $571C: $1A
    ld l, l                                       ; $571D: $6D
    nop                                           ; $571E: $00
    nop                                           ; $571F: $00
    ld e, e                                       ; $5720: $5B
    ld e, $9C                                     ; $5721: $1E $9C
    ld d, e                                       ; $5723: $53
    ld h, d                                       ; $5724: $62
    ld bc, $0F15                                  ; $5725: $01 $15 $0F
    ret nc                                        ; $5728: $D0

    ld l, h                                       ; $5729: $6C
    jr nc, jr_01E_572C                            ; $572A: $30 $00

jr_01E_572C:
    rlca                                          ; $572C: $07
    nop                                           ; $572D: $00
    add c                                         ; $572E: $81
    ld e, l                                       ; $572F: $5D
    add hl, bc                                    ; $5730: $09
    nop                                           ; $5731: $00
    jr nz, jr_01E_56DF                            ; $5732: $20 $AB

    ld d, b                                       ; $5734: $50
    add hl, de                                    ; $5735: $19
    ld b, d                                       ; $5736: $42
    ld [bc], a                                    ; $5737: $02
    ld b, $1D                                     ; $5738: $06 $1D
    dec bc                                        ; $573A: $0B
    ld [de], a                                    ; $573B: $12
    ld b, l                                       ; $573C: $45
    ld [de], a                                    ; $573D: $12
    ld a, a                                       ; $573E: $7F
    ld [hl], c                                    ; $573F: $71
    sbc e                                         ; $5740: $9B
    ld a, b                                       ; $5741: $78
    ld [hl], b                                    ; $5742: $70
    sbc a                                         ; $5743: $9F
    ld c, h                                       ; $5744: $4C
    ld h, c                                       ; $5745: $61
    ld l, e                                       ; $5746: $6B
    ld h, l                                       ; $5747: $65
    ld [hl], e                                    ; $5748: $73
    jr nz, jr_01E_57BA                            ; $5749: $20 $6F

    ld h, [hl]                                    ; $574B: $66
    jr nz, jr_01E_57B4                            ; $574C: $20 $66

    ld l, c                                       ; $574E: $69
    ld [hl], d                                    ; $574F: $72
    ld h, l                                       ; $5750: $65
    rst $38                                       ; $5751: $FF
    ld h, c                                       ; $5752: $61
    ld l, [hl]                                    ; $5753: $6E
    ld h, h                                       ; $5754: $64
    jr nz, @+$74                                  ; $5755: $20 $72

    ld l, a                                       ; $5757: $6F
    ld h, e                                       ; $5758: $63
    ld l, e                                       ; $5759: $6B
    ld l, $FE                                     ; $575A: $2E $FE
    ld b, e                                       ; $575C: $43
    ld l, a                                       ; $575D: $6F
    ld a, d                                       ; $575E: $7A
    ld a, c                                       ; $575F: $79
    ld hl, $FDFE                                  ; $5760: $21 $FE $FD
    sbc d                                         ; $5763: $9A
    ld b, d                                       ; $5764: $42
    sbc e                                         ; $5765: $9B
    ld a, b                                       ; $5766: $78
    ld [hl], b                                    ; $5767: $70
    sbc a                                         ; $5768: $9F
    ld c, c                                       ; $5769: $49
    daa                                           ; $576A: $27
    ld l, l                                       ; $576B: $6D
    jr nz, jr_01E_57E1                            ; $576C: $20 $73

    ld [hl], l                                    ; $576E: $75
    ld [hl], d                                    ; $576F: $72
    ld [hl], b                                    ; $5770: $70
    ld [hl], d                                    ; $5771: $72
    ld l, c                                       ; $5772: $69
    ld [hl], e                                    ; $5773: $73
    ld h, l                                       ; $5774: $65
    ld h, h                                       ; $5775: $64
    rst $38                                       ; $5776: $FF
    ld [hl], h                                    ; $5777: $74
    ld l, b                                       ; $5778: $68
    ld l, c                                       ; $5779: $69
    ld [hl], e                                    ; $577A: $73
    jr nz, jr_01E_57F1                            ; $577B: $20 $74

    ld l, b                                       ; $577D: $68
    ld l, c                                       ; $577E: $69
    ld l, [hl]                                    ; $577F: $6E
    ld h, a                                       ; $5780: $67
    cp $77                                        ; $5781: $FE $77
    ld l, a                                       ; $5783: $6F
    ld [hl], d                                    ; $5784: $72
    ld l, e                                       ; $5785: $6B
    ld [hl], e                                    ; $5786: $73
    ld l, $20                                     ; $5787: $2E $20
    ld c, c                                       ; $5789: $49
    ld [hl], h                                    ; $578A: $74
    daa                                           ; $578B: $27
    ld [hl], e                                    ; $578C: $73
    rst $38                                       ; $578D: $FF
    ld h, c                                       ; $578E: $61
    ld l, h                                       ; $578F: $6C
    ld l, h                                       ; $5790: $6C
    jr nz, jr_01E_5800                            ; $5791: $20 $6D

    ld h, l                                       ; $5793: $65
    ld l, h                                       ; $5794: $6C
    ld [hl], h                                    ; $5795: $74
    ld a, c                                       ; $5796: $79
    ld hl, $FDFE                                  ; $5797: $21 $FE $FD
    sbc d                                         ; $579A: $9A
    ld b, d                                       ; $579B: $42
    sbc e                                         ; $579C: $9B
    ld a, b                                       ; $579D: $78
    ld [hl], b                                    ; $579E: $70
    sbc a                                         ; $579F: $9F
    ld d, h                                       ; $57A0: $54
    ld l, a                                       ; $57A1: $6F
    ld l, a                                       ; $57A2: $6F
    jr nz, jr_01E_580D                            ; $57A3: $20 $68

    ld l, a                                       ; $57A5: $6F
    ld [hl], h                                    ; $57A6: $74
    jr nz, jr_01E_581D                            ; $57A7: $20 $74

    ld l, a                                       ; $57A9: $6F
    rst $38                                       ; $57AA: $FF
    ld l, [hl]                                    ; $57AB: $6E
    ld h, c                                       ; $57AC: $61
    ld [hl], b                                    ; $57AD: $70
    jr nz, @+$71                                  ; $57AE: $20 $6F

    ld l, [hl]                                    ; $57B0: $6E
    ld l, $FE                                     ; $57B1: $2E $FE
    db $FD                                        ; $57B3: $FD

jr_01E_57B4:
    sbc d                                         ; $57B4: $9A
    ld b, d                                       ; $57B5: $42
    sbc e                                         ; $57B6: $9B
    ld a, b                                       ; $57B7: $78
    ld [hl], b                                    ; $57B8: $70
    sbc a                                         ; $57B9: $9F

jr_01E_57BA:
    ld c, b                                       ; $57BA: $48
    ld l, l                                       ; $57BB: $6D
    ld [hl], b                                    ; $57BC: $70
    ld l, b                                       ; $57BD: $68
    ld hl, $4EFF                                  ; $57BE: $21 $FF $4E
    ld l, a                                       ; $57C1: $6F
    ld [hl], h                                    ; $57C2: $74
    ld l, b                                       ; $57C3: $68
    ld l, c                                       ; $57C4: $69
    ld l, [hl]                                    ; $57C5: $6E
    ld h, a                                       ; $57C6: $67
    ld hl, $49FE                                  ; $57C7: $21 $FE $49
    ld [hl], h                                    ; $57CA: $74
    daa                                           ; $57CB: $27
    ld [hl], e                                    ; $57CC: $73
    jr nz, jr_01E_5837                            ; $57CD: $20 $68

    ld h, c                                       ; $57CF: $61
    ld [hl], d                                    ; $57D0: $72
    ld h, h                                       ; $57D1: $64
    ld l, h                                       ; $57D2: $6C
    ld a, c                                       ; $57D3: $79
    rst $38                                       ; $57D4: $FF
    ld [hl], a                                    ; $57D5: $77
    ld l, a                                       ; $57D6: $6F
    ld [hl], d                                    ; $57D7: $72
    ld [hl], h                                    ; $57D8: $74
    ld l, b                                       ; $57D9: $68
    jr nz, jr_01E_5849                            ; $57DA: $20 $6D

    ld a, c                                       ; $57DC: $79
    jr nz, jr_01E_5844                            ; $57DD: $20 $65

    ld h, [hl]                                    ; $57DF: $66
    ld h, [hl]                                    ; $57E0: $66

jr_01E_57E1:
    ld l, a                                       ; $57E1: $6F
    ld [hl], d                                    ; $57E2: $72
    ld [hl], h                                    ; $57E3: $74
    cp $74                                        ; $57E4: $FE $74
    ld l, a                                       ; $57E6: $6F
    jr nz, jr_01E_585B                            ; $57E7: $20 $72

    ld l, a                                       ; $57E9: $6F
    ld l, a                                       ; $57EA: $6F
    ld [hl], h                                    ; $57EB: $74
    jr nz, jr_01E_584F                            ; $57EC: $20 $61

    ld [hl], d                                    ; $57EE: $72
    ld l, a                                       ; $57EF: $6F
    ld [hl], l                                    ; $57F0: $75

jr_01E_57F1:
    ld l, [hl]                                    ; $57F1: $6E
    ld h, h                                       ; $57F2: $64
    rst $38                                       ; $57F3: $FF
    ld [hl], e                                    ; $57F4: $73
    ld [hl], h                                    ; $57F5: $74
    ld [hl], d                                    ; $57F6: $72
    ld h, c                                       ; $57F7: $61
    ld l, [hl]                                    ; $57F8: $6E
    ld h, a                                       ; $57F9: $67
    ld h, l                                       ; $57FA: $65
    ld [hl], d                                    ; $57FB: $72
    daa                                           ; $57FC: $27
    ld [hl], e                                    ; $57FD: $73
    cp $68                                        ; $57FE: $FE $68

jr_01E_5800:
    ld l, a                                       ; $5800: $6F
    ld [hl], l                                    ; $5801: $75
    ld [hl], e                                    ; $5802: $73
    ld h, l                                       ; $5803: $65
    ld [hl], e                                    ; $5804: $73
    ld l, $FE                                     ; $5805: $2E $FE
    ld c, c                                       ; $5807: $49
    ld l, [hl]                                    ; $5808: $6E
    ld h, e                                       ; $5809: $63
    ld l, a                                       ; $580A: $6F
    ld l, [hl]                                    ; $580B: $6E
    ld [hl], e                                    ; $580C: $73

jr_01E_580D:
    ld l, c                                       ; $580D: $69
    ld h, h                                       ; $580E: $64
    ld h, l                                       ; $580F: $65
    ld [hl], d                                    ; $5810: $72
    ld h, c                                       ; $5811: $61
    ld [hl], h                                    ; $5812: $74
    ld h, l                                       ; $5813: $65
    rst $38                                       ; $5814: $FF
    ld [hl], e                                    ; $5815: $73
    ld [hl], h                                    ; $5816: $74
    ld [hl], d                                    ; $5817: $72
    ld h, c                                       ; $5818: $61
    ld l, [hl]                                    ; $5819: $6E
    ld h, a                                       ; $581A: $67
    ld h, l                                       ; $581B: $65
    ld [hl], d                                    ; $581C: $72

jr_01E_581D:
    ld [hl], e                                    ; $581D: $73
    ld hl, $FDFE                                  ; $581E: $21 $FE $FD
    sbc d                                         ; $5821: $9A
    ld b, d                                       ; $5822: $42
    sbc e                                         ; $5823: $9B
    ld a, b                                       ; $5824: $78
    ld [hl], b                                    ; $5825: $70
    sbc a                                         ; $5826: $9F
    ld c, c                                       ; $5827: $49
    daa                                           ; $5828: $27
    ld h, h                                       ; $5829: $64
    jr nz, jr_01E_589F                            ; $582A: $20 $73

    ld l, c                                       ; $582C: $69
    ld [hl], h                                    ; $582D: $74
    jr nz, @+$68                                  ; $582E: $20 $66

    ld l, a                                       ; $5830: $6F
    ld [hl], d                                    ; $5831: $72
    rst $38                                       ; $5832: $FF
    ld h, c                                       ; $5833: $61
    jr nz, @+$75                                  ; $5834: $20 $73

    ld [hl], b                                    ; $5836: $70

jr_01E_5837:
    ld h, l                                       ; $5837: $65
    ld l, h                                       ; $5838: $6C
    ld l, h                                       ; $5839: $6C
    ld l, $2E                                     ; $583A: $2E $2E
    ld l, $FE                                     ; $583C: $2E $FE
    ld b, d                                       ; $583E: $42
    ld [hl], l                                    ; $583F: $75
    ld [hl], h                                    ; $5840: $74
    jr nz, @+$4B                                  ; $5841: $20 $49

    daa                                           ; $5843: $27

jr_01E_5844:
    ld l, l                                       ; $5844: $6D
    jr nz, jr_01E_58A8                            ; $5845: $20 $61

    ld h, [hl]                                    ; $5847: $66
    ld [hl], d                                    ; $5848: $72

jr_01E_5849:
    ld h, c                                       ; $5849: $61
    ld l, c                                       ; $584A: $69
    ld h, h                                       ; $584B: $64
    rst $38                                       ; $584C: $FF
    ld c, c                                       ; $584D: $49
    daa                                           ; $584E: $27

jr_01E_584F:
    ld h, h                                       ; $584F: $64

Jump_01E_5850:
    jr nz, @+$6F                                  ; $5850: $20 $6D

    ld h, l                                       ; $5852: $65
    ld l, h                                       ; $5853: $6C
    ld [hl], h                                    ; $5854: $74
    ld l, $FE                                     ; $5855: $2E $FE
    db $FD                                        ; $5857: $FD
    sbc d                                         ; $5858: $9A
    ld b, d                                       ; $5859: $42
    sbc e                                         ; $585A: $9B

jr_01E_585B:
    ld a, b                                       ; $585B: $78
    ld [hl], b                                    ; $585C: $70
    sbc a                                         ; $585D: $9F
    ld c, e                                       ; $585E: $4B
    ld l, c                                       ; $585F: $69
    ld h, h                                       ; $5860: $64
    ld l, [hl]                                    ; $5861: $6E
    ld h, l                                       ; $5862: $65
    ld a, c                                       ; $5863: $79
    jr nz, jr_01E_58D9                            ; $5864: $20 $73

    ld l, b                                       ; $5866: $68
    ld h, c                                       ; $5867: $61
    ld [hl], b                                    ; $5868: $70
    ld h, l                                       ; $5869: $65
    ld h, h                                       ; $586A: $64
    rst $38                                       ; $586B: $FF
    ld h, e                                       ; $586C: $63
    ld l, a                                       ; $586D: $6F
    ld l, l                                       ; $586E: $6D
    ld h, [hl]                                    ; $586F: $66
    ld l, a                                       ; $5870: $6F
    ld [hl], d                                    ; $5871: $72
    ld [hl], h                                    ; $5872: $74
    ld l, $FE                                     ; $5873: $2E $FE
    db $FD                                        ; $5875: $FD
    sbc d                                         ; $5876: $9A
    ld b, d                                       ; $5877: $42
    sbc e                                         ; $5878: $9B
    ret c                                         ; $5879: $D8

    ld h, b                                       ; $587A: $60
    sbc a                                         ; $587B: $9F
    ld d, h                                       ; $587C: $54
    ld l, a                                       ; $587D: $6F
    ld l, [hl]                                    ; $587E: $6E
    ld a, c                                       ; $587F: $79
    ld hl, $5720                                  ; $5880: $21 $20 $57
    ld h, l                                       ; $5883: $65
    jr nz, jr_01E_58E7                            ; $5884: $20 $61

    ld [hl], d                                    ; $5886: $72
    ld h, l                                       ; $5887: $65
    rst $38                                       ; $5888: $FF
    ld l, c                                       ; $5889: $69
    ld l, [hl]                                    ; $588A: $6E
    jr nz, jr_01E_5906                            ; $588B: $20 $79

    ld l, a                                       ; $588D: $6F
    ld [hl], l                                    ; $588E: $75
    ld [hl], d                                    ; $588F: $72
    jr nz, jr_01E_58F6                            ; $5890: $20 $64

    ld h, l                                       ; $5892: $65
    ld h, d                                       ; $5893: $62
    ld [hl], h                                    ; $5894: $74
    ld l, $FE                                     ; $5895: $2E $FE
    ld c, c                                       ; $5897: $49
    ld [hl], e                                    ; $5898: $73
    jr nz, jr_01E_590F                            ; $5899: $20 $74

    ld l, b                                       ; $589B: $68
    ld h, l                                       ; $589C: $65
    ld [hl], d                                    ; $589D: $72
    ld h, l                                       ; $589E: $65

jr_01E_589F:
    rst $38                                       ; $589F: $FF
    ld h, c                                       ; $58A0: $61
    ld l, [hl]                                    ; $58A1: $6E
    ld a, c                                       ; $58A2: $79
    ld [hl], h                                    ; $58A3: $74
    ld l, b                                       ; $58A4: $68
    ld l, c                                       ; $58A5: $69
    ld l, [hl]                                    ; $58A6: $6E
    ld h, a                                       ; $58A7: $67

jr_01E_58A8:
    jr nz, jr_01E_58F3                            ; $58A8: $20 $49

    jr nz, jr_01E_590F                            ; $58AA: $20 $63

    ld h, c                                       ; $58AC: $61
    ld l, [hl]                                    ; $58AD: $6E
    cp $74                                        ; $58AE: $FE $74
    ld h, l                                       ; $58B0: $65
    ld l, h                                       ; $58B1: $6C
    ld l, h                                       ; $58B2: $6C
    jr nz, jr_01E_592E                            ; $58B3: $20 $79

    ld l, a                                       ; $58B5: $6F
    ld [hl], l                                    ; $58B6: $75
    jr nz, jr_01E_591A                            ; $58B7: $20 $61

    ld h, d                                       ; $58B9: $62
    ld l, a                                       ; $58BA: $6F
    ld [hl], l                                    ; $58BB: $75
    ld [hl], h                                    ; $58BC: $74
    ccf                                           ; $58BD: $3F
    cp $FD                                        ; $58BE: $FE $FD
    sbc d                                         ; $58C0: $9A
    ld b, l                                       ; $58C1: $45
    ld l, $6C                                     ; $58C2: $2E $6C
    ld b, b                                       ; $58C4: $40
    sbc e                                         ; $58C5: $9B
    ret c                                         ; $58C6: $D8

    ld h, b                                       ; $58C7: $60
    sbc a                                         ; $58C8: $9F
    ld c, h                                       ; $58C9: $4C
    ld h, c                                       ; $58CA: $61
    halt                                          ; $58CB: $76
    ld h, c                                       ; $58CC: $61
    jr nz, jr_01E_5910                            ; $58CD: $20 $41

    ld [hl], d                                    ; $58CF: $72
    ld h, d                                       ; $58D0: $62
    ld l, a                                       ; $58D1: $6F
    ld l, h                                       ; $58D2: $6C
    ld l, h                                       ; $58D3: $6C
    ld [hl], e                                    ; $58D4: $73
    rst $38                                       ; $58D5: $FF
    ld h, c                                       ; $58D6: $61
    ld [hl], d                                    ; $58D7: $72
    ld h, l                                       ; $58D8: $65

jr_01E_58D9:
    jr nz, @+$78                                  ; $58D9: $20 $76

    ld h, l                                       ; $58DB: $65
    ld [hl], d                                    ; $58DC: $72
    ld a, c                                       ; $58DD: $79
    jr nz, jr_01E_5954                            ; $58DE: $20 $74

    ld l, c                                       ; $58E0: $69
    ld l, l                                       ; $58E1: $6D
    ld l, c                                       ; $58E2: $69
    ld h, h                                       ; $58E3: $64
    ld l, $FE                                     ; $58E4: $2E $FE
    db $FD                                        ; $58E6: $FD

jr_01E_58E7:
    sbc d                                         ; $58E7: $9A
    sbc e                                         ; $58E8: $9B
    ret c                                         ; $58E9: $D8

    ld h, b                                       ; $58EA: $60
    sbc a                                         ; $58EB: $9F
    ld c, c                                       ; $58EC: $49
    ld [hl], e                                    ; $58ED: $73
    jr nz, @+$76                                  ; $58EE: $20 $74

    ld l, b                                       ; $58F0: $68
    ld h, l                                       ; $58F1: $65
    ld [hl], d                                    ; $58F2: $72

jr_01E_58F3:
    ld h, l                                       ; $58F3: $65
    rst $38                                       ; $58F4: $FF
    ld h, c                                       ; $58F5: $61

jr_01E_58F6:
    ld l, [hl]                                    ; $58F6: $6E
    ld a, c                                       ; $58F7: $79
    ld [hl], h                                    ; $58F8: $74
    ld l, b                                       ; $58F9: $68
    ld l, c                                       ; $58FA: $69
    ld l, [hl]                                    ; $58FB: $6E
    ld h, a                                       ; $58FC: $67
    jr nz, @+$67                                  ; $58FD: $20 $65

    ld l, h                                       ; $58FF: $6C
    ld [hl], e                                    ; $5900: $73
    ld h, l                                       ; $5901: $65
    cp $79                                        ; $5902: $FE $79
    ld l, a                                       ; $5904: $6F
    ld [hl], l                                    ; $5905: $75

jr_01E_5906:
    jr nz, jr_01E_597F                            ; $5906: $20 $77

    ld h, c                                       ; $5908: $61
    ld l, [hl]                                    ; $5909: $6E
    ld [hl], h                                    ; $590A: $74
    jr nz, jr_01E_5981                            ; $590B: $20 $74

    ld l, a                                       ; $590D: $6F
    rst $38                                       ; $590E: $FF

jr_01E_590F:
    ld l, e                                       ; $590F: $6B

jr_01E_5910:
    ld l, a                                       ; $5910: $6F
    ld l, [hl]                                    ; $5911: $6E
    ld [hl], a                                    ; $5912: $77
    jr nz, jr_01E_5976                            ; $5913: $20 $61

    ld h, d                                       ; $5915: $62
    ld l, a                                       ; $5916: $6F
    ld [hl], l                                    ; $5917: $75
    ld [hl], h                                    ; $5918: $74
    ccf                                           ; $5919: $3F

jr_01E_591A:
    cp $FD                                        ; $591A: $FE $FD
    sbc d                                         ; $591C: $9A
    ld b, l                                       ; $591D: $45
    ld l, $6C                                     ; $591E: $2E $6C
    ld b, b                                       ; $5920: $40
    sbc e                                         ; $5921: $9B
    ret c                                         ; $5922: $D8

    ld h, b                                       ; $5923: $60
    sbc a                                         ; $5924: $9F
    ld c, [hl]                                    ; $5925: $4E
    ld l, a                                       ; $5926: $6F
    ld h, d                                       ; $5927: $62
    ld l, a                                       ; $5928: $6F
    ld h, h                                       ; $5929: $64
    ld a, c                                       ; $592A: $79
    jr nz, jr_01E_59A4                            ; $592B: $20 $77

    ld h, c                                       ; $592D: $61

jr_01E_592E:
    ld l, [hl]                                    ; $592E: $6E
    ld [hl], h                                    ; $592F: $74
    ld [hl], e                                    ; $5930: $73
    rst $38                                       ; $5931: $FF
    ld a, c                                       ; $5932: $79
    ld l, a                                       ; $5933: $6F
    ld [hl], l                                    ; $5934: $75
    jr nz, jr_01E_599F                            ; $5935: $20 $68

    ld h, l                                       ; $5937: $65
    ld [hl], d                                    ; $5938: $72
    ld h, l                                       ; $5939: $65
    ld l, $FE                                     ; $593A: $2E $FE
    ld b, a                                       ; $593C: $47
    ld l, a                                       ; $593D: $6F
    jr nz, jr_01E_59A1                            ; $593E: $20 $61

    ld [hl], a                                    ; $5940: $77
    ld h, c                                       ; $5941: $61
    ld a, c                                       ; $5942: $79
    ld hl, $FDFE                                  ; $5943: $21 $FE $FD
    sbc d                                         ; $5946: $9A
    ld e, b                                       ; $5947: $58
    ld bc, $9B42                                  ; $5948: $01 $42 $9B
    ret c                                         ; $594B: $D8

    ld h, b                                       ; $594C: $60
    sbc a                                         ; $594D: $9F
    ld c, c                                       ; $594E: $49
    ld [hl], e                                    ; $594F: $73
    jr nz, jr_01E_59C6                            ; $5950: $20 $74

    ld l, b                                       ; $5952: $68
    ld h, l                                       ; $5953: $65

jr_01E_5954:
    ld [hl], d                                    ; $5954: $72
    ld h, l                                       ; $5955: $65
    rst $38                                       ; $5956: $FF
    ld h, c                                       ; $5957: $61
    ld l, [hl]                                    ; $5958: $6E
    ld a, c                                       ; $5959: $79
    ld [hl], h                                    ; $595A: $74
    ld l, b                                       ; $595B: $68
    ld l, c                                       ; $595C: $69
    ld l, [hl]                                    ; $595D: $6E
    ld h, a                                       ; $595E: $67
    jr nz, jr_01E_59DA                            ; $595F: $20 $79

    ld l, a                                       ; $5961: $6F
    ld [hl], l                                    ; $5962: $75
    cp $77                                        ; $5963: $FE $77
    ld h, c                                       ; $5965: $61
    ld l, [hl]                                    ; $5966: $6E
    ld [hl], h                                    ; $5967: $74
    jr nz, jr_01E_59DE                            ; $5968: $20 $74

    ld l, a                                       ; $596A: $6F
    jr nz, jr_01E_59D8                            ; $596B: $20 $6B

    ld l, [hl]                                    ; $596D: $6E
    ld l, a                                       ; $596E: $6F
    ld [hl], a                                    ; $596F: $77
    rst $38                                       ; $5970: $FF
    ld h, c                                       ; $5971: $61
    ld h, d                                       ; $5972: $62
    ld l, a                                       ; $5973: $6F
    ld [hl], l                                    ; $5974: $75
    ld [hl], h                                    ; $5975: $74

jr_01E_5976:
    ccf                                           ; $5976: $3F
    cp $FD                                        ; $5977: $FE $FD
    sbc d                                         ; $5979: $9A
    ld b, l                                       ; $597A: $45
    ld l, $6C                                     ; $597B: $2E $6C
    ld b, b                                       ; $597D: $40
    sbc e                                         ; $597E: $9B

jr_01E_597F:
    ret c                                         ; $597F: $D8

    ld h, b                                       ; $5980: $60

jr_01E_5981:
    sbc a                                         ; $5981: $9F
    ld d, a                                       ; $5982: $57
    ld l, b                                       ; $5983: $68
    ld a, c                                       ; $5984: $79
    jr nz, jr_01E_59EB                            ; $5985: $20 $64

    ld l, a                                       ; $5987: $6F
    ld l, [hl]                                    ; $5988: $6E
    daa                                           ; $5989: $27
    ld [hl], h                                    ; $598A: $74
    jr nz, jr_01E_5A06                            ; $598B: $20 $79

    ld l, a                                       ; $598D: $6F
    ld [hl], l                                    ; $598E: $75
    rst $38                                       ; $598F: $FF
    ld h, d                                       ; $5990: $62
    ld [hl], l                                    ; $5991: $75
    ld l, c                                       ; $5992: $69
    ld l, h                                       ; $5993: $6C
    ld h, h                                       ; $5994: $64
    jr nz, jr_01E_59F8                            ; $5995: $20 $61

    jr nz, jr_01E_59FB                            ; $5997: $20 $62

    ld [hl], d                                    ; $5999: $72
    ld l, c                                       ; $599A: $69
    ld h, h                                       ; $599B: $64
    ld h, a                                       ; $599C: $67
    ld h, l                                       ; $599D: $65
    ccf                                           ; $599E: $3F

jr_01E_599F:
    cp $FD                                        ; $599F: $FE $FD

jr_01E_59A1:
    sbc d                                         ; $59A1: $9A
    sbc e                                         ; $59A2: $9B
    ret c                                         ; $59A3: $D8

jr_01E_59A4:
    ld h, b                                       ; $59A4: $60
    sbc a                                         ; $59A5: $9F
    ld c, c                                       ; $59A6: $49
    ld [hl], e                                    ; $59A7: $73
    jr nz, jr_01E_5A1E                            ; $59A8: $20 $74

    ld l, b                                       ; $59AA: $68
    ld h, l                                       ; $59AB: $65
    ld [hl], d                                    ; $59AC: $72
    ld h, l                                       ; $59AD: $65
    rst $38                                       ; $59AE: $FF
    ld h, c                                       ; $59AF: $61
    ld l, [hl]                                    ; $59B0: $6E
    ld a, c                                       ; $59B1: $79
    ld [hl], h                                    ; $59B2: $74
    ld l, b                                       ; $59B3: $68
    ld l, c                                       ; $59B4: $69
    ld l, [hl]                                    ; $59B5: $6E
    ld h, a                                       ; $59B6: $67
    jr nz, @+$7B                                  ; $59B7: $20 $79

    ld l, a                                       ; $59B9: $6F
    ld [hl], l                                    ; $59BA: $75
    cp $77                                        ; $59BB: $FE $77
    ld h, c                                       ; $59BD: $61
    ld l, [hl]                                    ; $59BE: $6E
    ld [hl], h                                    ; $59BF: $74
    jr nz, jr_01E_5A36                            ; $59C0: $20 $74

    ld l, a                                       ; $59C2: $6F
    jr nz, jr_01E_5A30                            ; $59C3: $20 $6B

    ld l, [hl]                                    ; $59C5: $6E

jr_01E_59C6:
    ld l, a                                       ; $59C6: $6F
    ld [hl], a                                    ; $59C7: $77
    rst $38                                       ; $59C8: $FF
    ld h, c                                       ; $59C9: $61
    ld h, d                                       ; $59CA: $62
    ld l, a                                       ; $59CB: $6F
    ld [hl], l                                    ; $59CC: $75
    ld [hl], h                                    ; $59CD: $74
    ccf                                           ; $59CE: $3F
    cp $FD                                        ; $59CF: $FE $FD
    sbc d                                         ; $59D1: $9A
    ld b, l                                       ; $59D2: $45
    ld l, $6C                                     ; $59D3: $2E $6C
    ld b, b                                       ; $59D5: $40
    sbc e                                         ; $59D6: $9B
    ret c                                         ; $59D7: $D8

jr_01E_59D8:
    ld h, b                                       ; $59D8: $60
    sbc a                                         ; $59D9: $9F

jr_01E_59DA:
    ld d, a                                       ; $59DA: $57
    ld h, l                                       ; $59DB: $65
    ld l, h                                       ; $59DC: $6C
    ld h, e                                       ; $59DD: $63

jr_01E_59DE:
    ld l, a                                       ; $59DE: $6F
    ld l, l                                       ; $59DF: $6D
    ld h, l                                       ; $59E0: $65
    jr nz, jr_01E_5A45                            ; $59E1: $20 $62

    ld h, c                                       ; $59E3: $61
    ld h, e                                       ; $59E4: $63
    ld l, e                                       ; $59E5: $6B
    rst $38                                       ; $59E6: $FF
    ld d, h                                       ; $59E7: $54
    ld l, a                                       ; $59E8: $6F
    ld l, [hl]                                    ; $59E9: $6E
    ld a, c                                       ; $59EA: $79

jr_01E_59EB:
    ld l, $FE                                     ; $59EB: $2E $FE
    db $FD                                        ; $59ED: $FD
    sbc d                                         ; $59EE: $9A
    sbc e                                         ; $59EF: $9B
    ret c                                         ; $59F0: $D8

    ld h, b                                       ; $59F1: $60
    sbc a                                         ; $59F2: $9F
    ld c, c                                       ; $59F3: $49
    ld [hl], e                                    ; $59F4: $73
    jr nz, jr_01E_5A6B                            ; $59F5: $20 $74

    ld l, b                                       ; $59F7: $68

jr_01E_59F8:
    ld h, l                                       ; $59F8: $65
    ld [hl], d                                    ; $59F9: $72
    ld h, l                                       ; $59FA: $65

jr_01E_59FB:
    rst $38                                       ; $59FB: $FF
    ld h, c                                       ; $59FC: $61
    ld l, [hl]                                    ; $59FD: $6E
    ld a, c                                       ; $59FE: $79
    ld [hl], h                                    ; $59FF: $74
    ld l, b                                       ; $5A00: $68
    ld l, c                                       ; $5A01: $69
    ld l, [hl]                                    ; $5A02: $6E
    ld h, a                                       ; $5A03: $67
    jr nz, jr_01E_5A7F                            ; $5A04: $20 $79

jr_01E_5A06:
    ld l, a                                       ; $5A06: $6F
    ld [hl], l                                    ; $5A07: $75
    cp $77                                        ; $5A08: $FE $77
    ld h, c                                       ; $5A0A: $61
    ld l, [hl]                                    ; $5A0B: $6E
    ld [hl], h                                    ; $5A0C: $74
    jr nz, @+$76                                  ; $5A0D: $20 $74

    ld l, a                                       ; $5A0F: $6F
    jr nz, jr_01E_5A7D                            ; $5A10: $20 $6B

    ld l, [hl]                                    ; $5A12: $6E
    ld l, a                                       ; $5A13: $6F
    ld [hl], a                                    ; $5A14: $77
    rst $38                                       ; $5A15: $FF
    ld h, c                                       ; $5A16: $61
    ld h, d                                       ; $5A17: $62
    ld l, a                                       ; $5A18: $6F
    ld [hl], l                                    ; $5A19: $75
    ld [hl], h                                    ; $5A1A: $74
    ccf                                           ; $5A1B: $3F
    cp $FD                                        ; $5A1C: $FE $FD

jr_01E_5A1E:
    sbc d                                         ; $5A1E: $9A
    ld b, l                                       ; $5A1F: $45
    ld l, $6C                                     ; $5A20: $2E $6C
    ld b, b                                       ; $5A22: $40
    sub e                                         ; $5A23: $93
    ld h, l                                       ; $5A24: $65
    dec h                                         ; $5A25: $25
    ld c, b                                       ; $5A26: $48
    ld c, a                                       ; $5A27: $4F
    ld h, h                                       ; $5A28: $64
    ld bc, $694B                                  ; $5A29: $01 $4B $69
    ld b, $4B                                     ; $5A2C: $06 $4B
    ld h, [hl]                                    ; $5A2E: $66
    ret nz                                        ; $5A2F: $C0

jr_01E_5A30:
    ld e, h                                       ; $5A30: $5C
    ld hl, $0005                                  ; $5A31: $21 $05 $00
    add c                                         ; $5A34: $81
    ld e, l                                       ; $5A35: $5D

jr_01E_5A36:
    ld c, $01                                     ; $5A36: $0E $01

jr_01E_5A38:
    ld a, [de]                                    ; $5A38: $1A
    ret nc                                        ; $5A39: $D0

    nop                                           ; $5A3A: $00
    jr nz, jr_01E_5A38                            ; $5A3B: $20 $FB

    ld d, b                                       ; $5A3D: $50
    ld [hl+], a                                   ; $5A3E: $22
    dec b                                         ; $5A3F: $05
    ld b, b                                       ; $5A40: $40
    dec b                                         ; $5A41: $05
    ld [bc], a                                    ; $5A42: $02
    db $ED                                        ; $5A43: $ED
    ld h, e                                       ; $5A44: $63

jr_01E_5A45:
    add hl, bc                                    ; $5A45: $09
    inc bc                                        ; $5A46: $03
    dec l                                         ; $5A47: $2D
    ret nc                                        ; $5A48: $D0

    nop                                           ; $5A49: $00
    ld e, $86                                     ; $5A4A: $1E $86
    ld e, e                                       ; $5A4C: $5B
    ld e, $62                                     ; $5A4D: $1E $62
    ld e, d                                       ; $5A4F: $5A
    dec bc                                        ; $5A50: $0B
    nop                                           ; $5A51: $00
    dec bc                                        ; $5A52: $0B
    ld [bc], a                                    ; $5A53: $02
    ld l, e                                       ; $5A54: $6B
    jr nz, jr_01E_5A63                            ; $5A55: $20 $0C

    ldh a, [rBCPD]                                ; $5A57: $F0 $69
    nop                                           ; $5A59: $00
    add b                                         ; $5A5A: $80
    nop                                           ; $5A5B: $00
    nop                                           ; $5A5C: $00
    add d                                         ; $5A5D: $82
    rra                                           ; $5A5E: $1F
    dec e                                         ; $5A5F: $1D
    sub h                                         ; $5A60: $94
    ld b, d                                       ; $5A61: $42
    ld e, e                                       ; $5A62: $5B

jr_01E_5A63:
    ld e, $78                                     ; $5A63: $1E $78
    ld e, b                                       ; $5A65: $58
    ld b, l                                       ; $5A66: $45
    dec h                                         ; $5A67: $25
    rst $20                                       ; $5A68: $E7
    ld c, [hl]                                    ; $5A69: $4E
    sub e                                         ; $5A6A: $93

jr_01E_5A6B:
    ld h, l                                       ; $5A6B: $65
    dec h                                         ; $5A6C: $25
    ld c, b                                       ; $5A6D: $48
    ld c, a                                       ; $5A6E: $4F
    ld h, h                                       ; $5A6F: $64
    ld bc, $694B                                  ; $5A70: $01 $4B $69
    ld b, $4B                                     ; $5A73: $06 $4B
    ld h, [hl]                                    ; $5A75: $66
    ret nz                                        ; $5A76: $C0

    ld e, h                                       ; $5A77: $5C
    ld hl, $0005                                  ; $5A78: $21 $05 $00
    add c                                         ; $5A7B: $81
    ld e, l                                       ; $5A7C: $5D

jr_01E_5A7D:
    ld c, $01                                     ; $5A7D: $0E $01

jr_01E_5A7F:
    ld a, [de]                                    ; $5A7F: $1A
    ret nc                                        ; $5A80: $D0

    nop                                           ; $5A81: $00
    jr nz, jr_01E_5A7F                            ; $5A82: $20 $FB

    ld d, b                                       ; $5A84: $50
    ld [hl+], a                                   ; $5A85: $22
    dec b                                         ; $5A86: $05
    ld b, b                                       ; $5A87: $40
    dec b                                         ; $5A88: $05
    ld [bc], a                                    ; $5A89: $02
    db $ED                                        ; $5A8A: $ED
    ld h, e                                       ; $5A8B: $63
    add hl, bc                                    ; $5A8C: $09
    inc bc                                        ; $5A8D: $03
    dec l                                         ; $5A8E: $2D
    ret nc                                        ; $5A8F: $D0

    nop                                           ; $5A90: $00
    ld e, $86                                     ; $5A91: $1E $86
    ld e, e                                       ; $5A93: $5B
    ld e, $A9                                     ; $5A94: $1E $A9
    ld e, d                                       ; $5A96: $5A
    dec bc                                        ; $5A97: $0B
    nop                                           ; $5A98: $00
    dec bc                                        ; $5A99: $0B
    ld [bc], a                                    ; $5A9A: $02
    ld l, e                                       ; $5A9B: $6B
    jr nz, jr_01E_5AAA                            ; $5A9C: $20 $0C

    ldh a, [rBCPD]                                ; $5A9E: $F0 $69
    nop                                           ; $5AA0: $00
    add b                                         ; $5AA1: $80
    nop                                           ; $5AA2: $00
    nop                                           ; $5AA3: $00
    add d                                         ; $5AA4: $82
    rra                                           ; $5AA5: $1F
    dec e                                         ; $5AA6: $1D
    sub h                                         ; $5AA7: $94
    ld b, d                                       ; $5AA8: $42
    ld e, e                                       ; $5AA9: $5B

jr_01E_5AAA:
    ld e, $C5                                     ; $5AAA: $1E $C5
    ld e, b                                       ; $5AAC: $58
    ld b, l                                       ; $5AAD: $45
    dec h                                         ; $5AAE: $25
    rst $20                                       ; $5AAF: $E7
    ld c, [hl]                                    ; $5AB0: $4E
    sub e                                         ; $5AB1: $93
    ld h, l                                       ; $5AB2: $65
    dec h                                         ; $5AB3: $25
    ld c, b                                       ; $5AB4: $48
    ld c, a                                       ; $5AB5: $4F
    ld h, h                                       ; $5AB6: $64
    ld bc, $694B                                  ; $5AB7: $01 $4B $69
    ld b, $4B                                     ; $5ABA: $06 $4B
    ld h, [hl]                                    ; $5ABC: $66
    ret nz                                        ; $5ABD: $C0

    ld e, h                                       ; $5ABE: $5C
    ld hl, $0005                                  ; $5ABF: $21 $05 $00
    add c                                         ; $5AC2: $81
    ld e, l                                       ; $5AC3: $5D
    ld c, $01                                     ; $5AC4: $0E $01

jr_01E_5AC6:
    ld a, [de]                                    ; $5AC6: $1A
    ret nc                                        ; $5AC7: $D0

    nop                                           ; $5AC8: $00
    jr nz, jr_01E_5AC6                            ; $5AC9: $20 $FB

    ld d, b                                       ; $5ACB: $50
    ld [hl+], a                                   ; $5ACC: $22
    dec b                                         ; $5ACD: $05
    ld b, b                                       ; $5ACE: $40
    dec b                                         ; $5ACF: $05
    ld [bc], a                                    ; $5AD0: $02
    db $ED                                        ; $5AD1: $ED
    ld h, e                                       ; $5AD2: $63
    add hl, bc                                    ; $5AD3: $09
    inc bc                                        ; $5AD4: $03
    dec l                                         ; $5AD5: $2D
    ret nc                                        ; $5AD6: $D0

    nop                                           ; $5AD7: $00
    ld e, $86                                     ; $5AD8: $1E $86
    ld e, e                                       ; $5ADA: $5B
    ld e, $F0                                     ; $5ADB: $1E $F0
    ld e, d                                       ; $5ADD: $5A
    dec bc                                        ; $5ADE: $0B
    nop                                           ; $5ADF: $00
    dec bc                                        ; $5AE0: $0B
    ld [bc], a                                    ; $5AE1: $02
    ld l, e                                       ; $5AE2: $6B
    jr nz, jr_01E_5AF1                            ; $5AE3: $20 $0C

    ldh a, [rBCPD]                                ; $5AE5: $F0 $69
    nop                                           ; $5AE7: $00
    add b                                         ; $5AE8: $80
    nop                                           ; $5AE9: $00
    nop                                           ; $5AEA: $00
    add d                                         ; $5AEB: $82
    rra                                           ; $5AEC: $1F
    dec e                                         ; $5AED: $1D
    sub h                                         ; $5AEE: $94
    ld b, d                                       ; $5AEF: $42
    ld e, e                                       ; $5AF0: $5B

jr_01E_5AF1:
    ld e, $21                                     ; $5AF1: $1E $21
    ld e, c                                       ; $5AF3: $59
    ld b, l                                       ; $5AF4: $45
    dec h                                         ; $5AF5: $25
    rst $20                                       ; $5AF6: $E7
    ld c, [hl]                                    ; $5AF7: $4E
    sub e                                         ; $5AF8: $93
    ld h, l                                       ; $5AF9: $65
    dec h                                         ; $5AFA: $25
    ld c, b                                       ; $5AFB: $48
    ld c, a                                       ; $5AFC: $4F
    ld h, h                                       ; $5AFD: $64
    ld bc, $694B                                  ; $5AFE: $01 $4B $69
    ld b, $4B                                     ; $5B01: $06 $4B
    ld h, [hl]                                    ; $5B03: $66
    ret nz                                        ; $5B04: $C0

    ld e, h                                       ; $5B05: $5C
    ld hl, $0005                                  ; $5B06: $21 $05 $00
    add c                                         ; $5B09: $81
    ld e, l                                       ; $5B0A: $5D
    ld c, $01                                     ; $5B0B: $0E $01

jr_01E_5B0D:
    ld a, [de]                                    ; $5B0D: $1A
    ret nc                                        ; $5B0E: $D0

    nop                                           ; $5B0F: $00
    jr nz, jr_01E_5B0D                            ; $5B10: $20 $FB

    ld d, b                                       ; $5B12: $50
    ld [hl+], a                                   ; $5B13: $22
    dec b                                         ; $5B14: $05
    ld b, b                                       ; $5B15: $40
    dec b                                         ; $5B16: $05
    ld [bc], a                                    ; $5B17: $02
    db $ED                                        ; $5B18: $ED
    ld h, e                                       ; $5B19: $63
    add hl, bc                                    ; $5B1A: $09
    inc bc                                        ; $5B1B: $03
    dec l                                         ; $5B1C: $2D
    ret nc                                        ; $5B1D: $D0

    nop                                           ; $5B1E: $00
    ld e, $86                                     ; $5B1F: $1E $86
    ld e, e                                       ; $5B21: $5B
    ld e, $37                                     ; $5B22: $1E $37
    ld e, e                                       ; $5B24: $5B
    dec bc                                        ; $5B25: $0B
    nop                                           ; $5B26: $00
    dec bc                                        ; $5B27: $0B
    ld [bc], a                                    ; $5B28: $02
    ld l, e                                       ; $5B29: $6B
    jr nz, jr_01E_5B38                            ; $5B2A: $20 $0C

    ldh a, [rBCPD]                                ; $5B2C: $F0 $69
    nop                                           ; $5B2E: $00
    add b                                         ; $5B2F: $80
    nop                                           ; $5B30: $00
    nop                                           ; $5B31: $00
    add d                                         ; $5B32: $82
    rra                                           ; $5B33: $1F
    dec e                                         ; $5B34: $1D
    sub h                                         ; $5B35: $94
    ld b, d                                       ; $5B36: $42
    ld e, e                                       ; $5B37: $5B

jr_01E_5B38:
    ld e, $4A                                     ; $5B38: $1E $4A
    ld e, c                                       ; $5B3A: $59
    ld b, l                                       ; $5B3B: $45
    dec h                                         ; $5B3C: $25
    rst $20                                       ; $5B3D: $E7
    ld c, [hl]                                    ; $5B3E: $4E
    sub e                                         ; $5B3F: $93
    ld h, l                                       ; $5B40: $65
    dec h                                         ; $5B41: $25
    ld c, b                                       ; $5B42: $48
    ld c, a                                       ; $5B43: $4F
    ld h, h                                       ; $5B44: $64
    ld bc, $694B                                  ; $5B45: $01 $4B $69
    ld b, $4B                                     ; $5B48: $06 $4B
    ld h, [hl]                                    ; $5B4A: $66
    ret nz                                        ; $5B4B: $C0

    ld e, h                                       ; $5B4C: $5C
    ld hl, $0005                                  ; $5B4D: $21 $05 $00
    add c                                         ; $5B50: $81
    ld e, l                                       ; $5B51: $5D
    ld c, $01                                     ; $5B52: $0E $01

jr_01E_5B54:
    ld a, [de]                                    ; $5B54: $1A
    ret nc                                        ; $5B55: $D0

    nop                                           ; $5B56: $00
    jr nz, jr_01E_5B54                            ; $5B57: $20 $FB

    ld d, b                                       ; $5B59: $50
    ld [hl+], a                                   ; $5B5A: $22
    dec b                                         ; $5B5B: $05
    ld b, b                                       ; $5B5C: $40
    dec b                                         ; $5B5D: $05
    ld [bc], a                                    ; $5B5E: $02
    db $ED                                        ; $5B5F: $ED
    ld h, e                                       ; $5B60: $63
    add hl, bc                                    ; $5B61: $09
    inc bc                                        ; $5B62: $03
    dec l                                         ; $5B63: $2D
    ret nc                                        ; $5B64: $D0

    nop                                           ; $5B65: $00
    ld e, $86                                     ; $5B66: $1E $86
    ld e, e                                       ; $5B68: $5B
    ld e, $7E                                     ; $5B69: $1E $7E
    ld e, e                                       ; $5B6B: $5B
    dec bc                                        ; $5B6C: $0B
    nop                                           ; $5B6D: $00
    dec bc                                        ; $5B6E: $0B
    ld [bc], a                                    ; $5B6F: $02
    ld l, e                                       ; $5B70: $6B
    jr nz, jr_01E_5B7F                            ; $5B71: $20 $0C

    ldh a, [rBCPD]                                ; $5B73: $F0 $69
    nop                                           ; $5B75: $00
    add b                                         ; $5B76: $80
    nop                                           ; $5B77: $00
    nop                                           ; $5B78: $00
    add d                                         ; $5B79: $82
    rra                                           ; $5B7A: $1F
    dec e                                         ; $5B7B: $1D
    sub h                                         ; $5B7C: $94
    ld b, d                                       ; $5B7D: $42
    ld e, e                                       ; $5B7E: $5B

jr_01E_5B7F:
    ld e, $7E                                     ; $5B7F: $1E $7E
    ld e, c                                       ; $5B81: $59
    ld b, l                                       ; $5B82: $45
    dec h                                         ; $5B83: $25
    rst $20                                       ; $5B84: $E7
    ld c, [hl]                                    ; $5B85: $4E
    dec d                                         ; $5B86: $15
    dec h                                         ; $5B87: $25
    xor e                                         ; $5B88: $AB
    ld c, [hl]                                    ; $5B89: $4E
    ld b, b                                       ; $5B8A: $40
    nop                                           ; $5B8B: $00
    ld b, l                                       ; $5B8C: $45
    ld e, $86                                     ; $5B8D: $1E $86
    ld e, e                                       ; $5B8F: $5B
    ld c, e                                       ; $5B90: $4B
    inc b                                         ; $5B91: $04
    ld e, $0B                                     ; $5B92: $1E $0B
    nop                                           ; $5B94: $00
    inc hl                                        ; $5B95: $23
    ld e, d                                       ; $5B96: $5A
    ld e, $0C                                     ; $5B97: $1E $0C
    nop                                           ; $5B99: $00
    ld l, d                                       ; $5B9A: $6A
    ld e, d                                       ; $5B9B: $5A
    ld e, $0D                                     ; $5B9C: $1E $0D
    nop                                           ; $5B9E: $00
    ccf                                           ; $5B9F: $3F
    ld e, e                                       ; $5BA0: $5B
    ld e, $0E                                     ; $5BA1: $1E $0E
    nop                                           ; $5BA3: $00
    ld hl, sp+$5A                                 ; $5BA4: $F8 $5A
    ld e, $0F                                     ; $5BA6: $1E $0F
    nop                                           ; $5BA8: $00
    ld hl, sp+$5A                                 ; $5BA9: $F8 $5A
    ld e, $10                                     ; $5BAB: $1E $10
    nop                                           ; $5BAD: $00
    nop                                           ; $5BAE: $00
    ld e, h                                       ; $5BAF: $5C
    rst $38                                       ; $5BB0: $FF
    ld b, e                                       ; $5BB1: $43
    nop                                           ; $5BB2: $00
    and l                                         ; $5BB3: $A5
    and c                                         ; $5BB4: $A1
    inc b                                         ; $5BB5: $04
    ld e, $B1                                     ; $5BB6: $1E $B1
    ld e, d                                       ; $5BB8: $5A
    sub e                                         ; $5BB9: $93
    ld h, l                                       ; $5BBA: $65
    dec h                                         ; $5BBB: $25
    ld c, b                                       ; $5BBC: $48
    ld c, a                                       ; $5BBD: $4F
    ld h, h                                       ; $5BBE: $64
    ld bc, $694B                                  ; $5BBF: $01 $4B $69
    ld b, $4B                                     ; $5BC2: $06 $4B
    ld h, [hl]                                    ; $5BC4: $66
    ret nz                                        ; $5BC5: $C0

    ld e, h                                       ; $5BC6: $5C
    ld hl, $0005                                  ; $5BC7: $21 $05 $00
    add c                                         ; $5BCA: $81
    ld e, l                                       ; $5BCB: $5D
    ld c, $01                                     ; $5BCC: $0E $01

jr_01E_5BCE:
    ld a, [de]                                    ; $5BCE: $1A
    ret nc                                        ; $5BCF: $D0

    nop                                           ; $5BD0: $00
    jr nz, jr_01E_5BCE                            ; $5BD1: $20 $FB

    ld d, b                                       ; $5BD3: $50
    ld [hl+], a                                   ; $5BD4: $22
    dec b                                         ; $5BD5: $05
    ld b, b                                       ; $5BD6: $40
    dec b                                         ; $5BD7: $05
    ld [bc], a                                    ; $5BD8: $02
    db $ED                                        ; $5BD9: $ED
    ld h, e                                       ; $5BDA: $63
    add hl, bc                                    ; $5BDB: $09
    inc bc                                        ; $5BDC: $03
    dec l                                         ; $5BDD: $2D
    ret nc                                        ; $5BDE: $D0

    nop                                           ; $5BDF: $00
    ld e, $86                                     ; $5BE0: $1E $86
    ld e, e                                       ; $5BE2: $5B
    ld e, $F8                                     ; $5BE3: $1E $F8
    ld e, e                                       ; $5BE5: $5B
    dec bc                                        ; $5BE6: $0B
    nop                                           ; $5BE7: $00
    dec bc                                        ; $5BE8: $0B
    ld [bc], a                                    ; $5BE9: $02
    ld l, e                                       ; $5BEA: $6B
    jr nz, jr_01E_5BF9                            ; $5BEB: $20 $0C

    ldh a, [rBCPD]                                ; $5BED: $F0 $69
    nop                                           ; $5BEF: $00
    add b                                         ; $5BF0: $80
    nop                                           ; $5BF1: $00
    nop                                           ; $5BF2: $00
    add d                                         ; $5BF3: $82
    rra                                           ; $5BF4: $1F
    dec e                                         ; $5BF5: $1D
    sub h                                         ; $5BF6: $94
    ld b, d                                       ; $5BF7: $42
    ld e, e                                       ; $5BF8: $5B

jr_01E_5BF9:
    ld e, $D6                                     ; $5BF9: $1E $D6
    ld e, c                                       ; $5BFB: $59
    ld b, l                                       ; $5BFC: $45
    dec h                                         ; $5BFD: $25
    rst $20                                       ; $5BFE: $E7
    ld c, [hl]                                    ; $5BFF: $4E
    sub e                                         ; $5C00: $93
    ld h, l                                       ; $5C01: $65
    dec h                                         ; $5C02: $25
    ld c, b                                       ; $5C03: $48
    ld c, a                                       ; $5C04: $4F
    ld h, h                                       ; $5C05: $64
    ld bc, $694B                                  ; $5C06: $01 $4B $69
    ld b, $4B                                     ; $5C09: $06 $4B
    ld h, [hl]                                    ; $5C0B: $66
    ret nz                                        ; $5C0C: $C0

    ld e, h                                       ; $5C0D: $5C
    ld hl, $0005                                  ; $5C0E: $21 $05 $00
    add c                                         ; $5C11: $81
    ld e, l                                       ; $5C12: $5D
    ld c, $01                                     ; $5C13: $0E $01

jr_01E_5C15:
    ld a, [de]                                    ; $5C15: $1A
    ret nc                                        ; $5C16: $D0

    nop                                           ; $5C17: $00
    jr nz, jr_01E_5C15                            ; $5C18: $20 $FB

    ld d, b                                       ; $5C1A: $50
    ld [hl+], a                                   ; $5C1B: $22
    dec b                                         ; $5C1C: $05
    ld b, b                                       ; $5C1D: $40
    dec b                                         ; $5C1E: $05
    ld [bc], a                                    ; $5C1F: $02
    db $ED                                        ; $5C20: $ED
    ld h, e                                       ; $5C21: $63
    add hl, bc                                    ; $5C22: $09
    inc bc                                        ; $5C23: $03
    dec l                                         ; $5C24: $2D
    ret nc                                        ; $5C25: $D0

    nop                                           ; $5C26: $00
    ld e, $86                                     ; $5C27: $1E $86
    ld e, e                                       ; $5C29: $5B
    ld e, $3F                                     ; $5C2A: $1E $3F
    ld e, h                                       ; $5C2C: $5C
    dec bc                                        ; $5C2D: $0B
    nop                                           ; $5C2E: $00
    dec bc                                        ; $5C2F: $0B
    ld [bc], a                                    ; $5C30: $02
    ld l, e                                       ; $5C31: $6B
    jr nz, jr_01E_5C40                            ; $5C32: $20 $0C

    ldh a, [rBCPD]                                ; $5C34: $F0 $69
    nop                                           ; $5C36: $00
    add b                                         ; $5C37: $80
    nop                                           ; $5C38: $00
    nop                                           ; $5C39: $00
    add d                                         ; $5C3A: $82
    rra                                           ; $5C3B: $1F
    db $10                                        ; $5C3C: $10
    sub h                                         ; $5C3D: $94
    ld b, d                                       ; $5C3E: $42
    ld e, e                                       ; $5C3F: $5B

jr_01E_5C40:
    ld e, $47                                     ; $5C40: $1E $47
    ld e, h                                       ; $5C42: $5C
    ld b, l                                       ; $5C43: $45
    dec h                                         ; $5C44: $25
    rst $20                                       ; $5C45: $E7
    ld c, [hl]                                    ; $5C46: $4E
    sbc e                                         ; $5C47: $9B
    ret c                                         ; $5C48: $D8

    ld h, b                                       ; $5C49: $60
    sbc a                                         ; $5C4A: $9F
    ld d, b                                       ; $5C4B: $50
    ld h, c                                       ; $5C4C: $61
    ld [hl], d                                    ; $5C4D: $72
    ld [hl], h                                    ; $5C4E: $74
    ld a, c                                       ; $5C4F: $79
    jr nz, jr_01E_5CC1                            ; $5C50: $20 $6F

    ld l, [hl]                                    ; $5C52: $6E
    inc l                                         ; $5C53: $2C
    jr nz, jr_01E_5CBA                            ; $5C54: $20 $64

    ld [hl], l                                    ; $5C56: $75
    ld h, h                                       ; $5C57: $64
    ld h, l                                       ; $5C58: $65
    ld hl, $FDFE                                  ; $5C59: $21 $FE $FD
    sbc d                                         ; $5C5C: $9A
    sbc e                                         ; $5C5D: $9B
    ret c                                         ; $5C5E: $D8

    ld h, b                                       ; $5C5F: $60
    sbc a                                         ; $5C60: $9F
    ld c, c                                       ; $5C61: $49
    ld [hl], e                                    ; $5C62: $73
    jr nz, jr_01E_5CD9                            ; $5C63: $20 $74

    ld l, b                                       ; $5C65: $68
    ld h, l                                       ; $5C66: $65
    ld [hl], d                                    ; $5C67: $72
    ld h, l                                       ; $5C68: $65
    rst $38                                       ; $5C69: $FF
    ld h, c                                       ; $5C6A: $61
    ld l, [hl]                                    ; $5C6B: $6E
    ld a, c                                       ; $5C6C: $79
    ld [hl], h                                    ; $5C6D: $74
    ld l, b                                       ; $5C6E: $68
    ld l, c                                       ; $5C6F: $69
    ld l, [hl]                                    ; $5C70: $6E
    ld h, a                                       ; $5C71: $67
    jr nz, jr_01E_5CED                            ; $5C72: $20 $79

    ld l, a                                       ; $5C74: $6F
    ld [hl], l                                    ; $5C75: $75
    cp $77                                        ; $5C76: $FE $77
    ld h, c                                       ; $5C78: $61
    ld l, [hl]                                    ; $5C79: $6E
    ld [hl], h                                    ; $5C7A: $74
    jr nz, jr_01E_5CF1                            ; $5C7B: $20 $74

    ld l, a                                       ; $5C7D: $6F
    jr nz, jr_01E_5CEB                            ; $5C7E: $20 $6B

    ld l, [hl]                                    ; $5C80: $6E
    ld l, a                                       ; $5C81: $6F
    ld [hl], a                                    ; $5C82: $77
    rst $38                                       ; $5C83: $FF
    ld h, c                                       ; $5C84: $61
    ld h, d                                       ; $5C85: $62
    ld l, a                                       ; $5C86: $6F
    ld [hl], l                                    ; $5C87: $75
    ld [hl], h                                    ; $5C88: $74
    ccf                                           ; $5C89: $3F
    cp $FD                                        ; $5C8A: $FE $FD
    sbc d                                         ; $5C8C: $9A
    ld b, l                                       ; $5C8D: $45
    ld l, $6C                                     ; $5C8E: $2E $6C
    ld b, b                                       ; $5C90: $40
    ld [bc], a                                    ; $5C91: $02
    ld b, $0C                                     ; $5C92: $06 $0C
    dec bc                                        ; $5C94: $0B
    jr jr_01E_5CDC                                ; $5C95: $18 $45

    ld [de], a                                    ; $5C97: $12
    ld a, a                                       ; $5C98: $7F
    ld [hl], c                                    ; $5C99: $71
    sbc a                                         ; $5C9A: $9F
    ld b, d                                       ; $5C9B: $42
    ld l, c                                       ; $5C9C: $69
    ld [hl], d                                    ; $5C9D: $72
    ld h, h                                       ; $5C9E: $64
    ld [hl], e                                    ; $5C9F: $73
    ld a, [hl-]                                   ; $5CA0: $3A
    cp $77                                        ; $5CA1: $FE $77
    ld l, b                                       ; $5CA3: $68
    ld a, c                                       ; $5CA4: $79
    jr nz, jr_01E_5D1E                            ; $5CA5: $20 $77

    ld h, l                                       ; $5CA7: $65
    jr nz, jr_01E_5D0E                            ; $5CA8: $20 $64

    ld l, a                                       ; $5CAA: $6F
    ld l, [hl]                                    ; $5CAB: $6E
    daa                                           ; $5CAC: $27
    ld [hl], h                                    ; $5CAD: $74
    rst $38                                       ; $5CAE: $FF
    ld [hl], e                                    ; $5CAF: $73
    ld h, l                                       ; $5CB0: $65
    ld h, l                                       ; $5CB1: $65
    jr nz, jr_01E_5D15                            ; $5CB2: $20 $61

    ld l, [hl]                                    ; $5CB4: $6E
    ld a, c                                       ; $5CB5: $79
    ld l, $FE                                     ; $5CB6: $2E $FE
    db $FD                                        ; $5CB8: $FD
    sbc d                                         ; $5CB9: $9A

jr_01E_5CBA:
    ld b, d                                       ; $5CBA: $42
    sbc e                                         ; $5CBB: $9B
    ld a, b                                       ; $5CBC: $78
    ld [hl], b                                    ; $5CBD: $70
    sbc a                                         ; $5CBE: $9F
    ld c, b                                       ; $5CBF: $48
    ld a, c                                       ; $5CC0: $79

jr_01E_5CC1:
    ld [hl], b                                    ; $5CC1: $70
    ld l, [hl]                                    ; $5CC2: $6E
    ld l, a                                       ; $5CC3: $6F
    ld [hl], h                                    ; $5CC4: $74
    ld l, c                                       ; $5CC5: $69
    ld h, e                                       ; $5CC6: $63
    ld l, $FE                                     ; $5CC7: $2E $FE
    ld c, c                                       ; $5CC9: $49
    jr nz, jr_01E_5D43                            ; $5CCA: $20 $77

    ld h, c                                       ; $5CCC: $61
    ld l, [hl]                                    ; $5CCD: $6E
    ld [hl], h                                    ; $5CCE: $74
    jr nz, jr_01E_5D45                            ; $5CCF: $20 $74

    ld l, a                                       ; $5CD1: $6F
    rst $38                                       ; $5CD2: $FF
    ld l, h                                       ; $5CD3: $6C
    ld l, a                                       ; $5CD4: $6F
    ld l, a                                       ; $5CD5: $6F
    ld l, e                                       ; $5CD6: $6B
    jr nz, @+$63                                  ; $5CD7: $20 $61

jr_01E_5CD9:
    ld h, a                                       ; $5CD9: $67
    ld h, c                                       ; $5CDA: $61
    ld l, c                                       ; $5CDB: $69

jr_01E_5CDC:
    ld l, [hl]                                    ; $5CDC: $6E
    ld l, $FE                                     ; $5CDD: $2E $FE
    db $FD                                        ; $5CDF: $FD
    sbc d                                         ; $5CE0: $9A
    ld b, d                                       ; $5CE1: $42
    sbc e                                         ; $5CE2: $9B
    ld a, b                                       ; $5CE3: $78
    ld [hl], b                                    ; $5CE4: $70
    sbc a                                         ; $5CE5: $9F
    ld b, c                                       ; $5CE6: $41
    jr nz, jr_01E_5D56                            ; $5CE7: $20 $6D

    ld l, a                                       ; $5CE9: $6F
    ld l, h                                       ; $5CEA: $6C

jr_01E_5CEB:
    ld [hl], h                                    ; $5CEB: $74
    ld h, l                                       ; $5CEC: $65

jr_01E_5CED:
    ld l, [hl]                                    ; $5CED: $6E
    rst $38                                       ; $5CEE: $FF
    ld [hl], h                                    ; $5CEF: $74
    ld h, c                                       ; $5CF0: $61

jr_01E_5CF1:
    ld h, d                                       ; $5CF1: $62
    ld l, h                                       ; $5CF2: $6C
    ld h, l                                       ; $5CF3: $65
    ld l, $FE                                     ; $5CF4: $2E $FE
    ld c, b                                       ; $5CF6: $48
    ld l, a                                       ; $5CF7: $6F
    ld [hl], a                                    ; $5CF8: $77
    jr nz, jr_01E_5D71                            ; $5CF9: $20 $76

    ld h, l                                       ; $5CFB: $65
    ld [hl], d                                    ; $5CFC: $72
    ld a, c                                       ; $5CFD: $79
    rst $38                                       ; $5CFE: $FF
    ld l, h                                       ; $5CFF: $6C
    ld h, c                                       ; $5D00: $61
    ld [hl], e                                    ; $5D01: $73
    ld [hl], h                                    ; $5D02: $74
    jr nz, jr_01E_5D7E                            ; $5D03: $20 $79

    ld h, l                                       ; $5D05: $65
    ld h, c                                       ; $5D06: $61
    ld [hl], d                                    ; $5D07: $72
    ld l, $FE                                     ; $5D08: $2E $FE
    db $FD                                        ; $5D0A: $FD
    sbc d                                         ; $5D0B: $9A
    ld b, d                                       ; $5D0C: $42
    sbc e                                         ; $5D0D: $9B

jr_01E_5D0E:
    ld a, b                                       ; $5D0E: $78
    ld [hl], b                                    ; $5D0F: $70
    sbc a                                         ; $5D10: $9F
    ld c, c                                       ; $5D11: $49
    jr nz, jr_01E_5D8B                            ; $5D12: $20 $77

    ld l, a                                       ; $5D14: $6F

jr_01E_5D15:
    ld l, [hl]                                    ; $5D15: $6E
    ld h, h                                       ; $5D16: $64
    ld h, l                                       ; $5D17: $65
    ld [hl], d                                    ; $5D18: $72
    rst $38                                       ; $5D19: $FF
    ld [hl], a                                    ; $5D1A: $77
    ld l, b                                       ; $5D1B: $68
    ld h, c                                       ; $5D1C: $61
    ld [hl], h                                    ; $5D1D: $74

jr_01E_5D1E:
    daa                                           ; $5D1E: $27
    ld [hl], e                                    ; $5D1F: $73
    jr nz, jr_01E_5D8B                            ; $5D20: $20 $69

    ld l, [hl]                                    ; $5D22: $6E
    jr nz, jr_01E_5D52                            ; $5D23: $20 $2D

    cp $4F                                        ; $5D25: $FE $4F
    ld d, a                                       ; $5D27: $57
    ld hl, $2021                                  ; $5D28: $21 $21 $20
    jr nz, jr_01E_5D75                            ; $5D2B: $20 $48

    ld l, a                                       ; $5D2D: $6F
    ld [hl], h                                    ; $5D2E: $74
    ld hl, $FDFE                                  ; $5D2F: $21 $FE $FD
    sbc d                                         ; $5D32: $9A
    ld b, d                                       ; $5D33: $42
    sbc a                                         ; $5D34: $9F
    ld b, [hl]                                    ; $5D35: $46
    ld l, c                                       ; $5D36: $69
    ld [hl], d                                    ; $5D37: $72
    ld h, l                                       ; $5D38: $65
    jr nz, jr_01E_5D8B                            ; $5D39: $20 $50

    ld [hl], d                                    ; $5D3B: $72
    ld l, a                                       ; $5D3C: $6F
    ld l, a                                       ; $5D3D: $6F
    ld h, [hl]                                    ; $5D3E: $66
    ld l, c                                       ; $5D3F: $69
    ld l, [hl]                                    ; $5D40: $6E
    ld h, a                                       ; $5D41: $67
    rst $38                                       ; $5D42: $FF

jr_01E_5D43:
    ld e, c                                       ; $5D43: $59
    ld l, a                                       ; $5D44: $6F

jr_01E_5D45:
    ld [hl], l                                    ; $5D45: $75
    ld [hl], d                                    ; $5D46: $72
    jr nz, jr_01E_5D8C                            ; $5D47: $20 $43

    ld l, b                                       ; $5D49: $68
    ld l, c                                       ; $5D4A: $69
    ld l, h                                       ; $5D4B: $6C
    ld h, h                                       ; $5D4C: $64
    ld [hl], d                                    ; $5D4D: $72
    ld h, l                                       ; $5D4E: $65
    ld l, [hl]                                    ; $5D4F: $6E
    ld l, $FE                                     ; $5D50: $2E $FE

jr_01E_5D52:
    db $FD                                        ; $5D52: $FD
    sbc d                                         ; $5D53: $9A
    ld b, d                                       ; $5D54: $42
    sbc e                                         ; $5D55: $9B

jr_01E_5D56:
    ld l, c                                       ; $5D56: $69
    ld c, c                                       ; $5D57: $49
    sbc a                                         ; $5D58: $9F
    ld d, l                                       ; $5D59: $55
    ld l, b                                       ; $5D5A: $68
    inc l                                         ; $5D5B: $2C
    jr nz, @+$7B                                  ; $5D5C: $20 $79

    ld l, a                                       ; $5D5E: $6F
    ld [hl], l                                    ; $5D5F: $75
    ld [hl], d                                    ; $5D60: $72
    jr nz, jr_01E_5DD1                            ; $5D61: $20 $6E

    ld h, c                                       ; $5D63: $61
    ld l, l                                       ; $5D64: $6D
    ld h, l                                       ; $5D65: $65
    daa                                           ; $5D66: $27
    ld [hl], e                                    ; $5D67: $73
    rst $38                                       ; $5D68: $FF
    ld c, d                                       ; $5D69: $4A
    ld l, a                                       ; $5D6A: $6F
    ld l, [hl]                                    ; $5D6B: $6E
    ld h, l                                       ; $5D6C: $65
    ld a, c                                       ; $5D6D: $79
    inc l                                         ; $5D6E: $2C
    jr nz, jr_01E_5DE3                            ; $5D6F: $20 $72

jr_01E_5D71:
    ld l, c                                       ; $5D71: $69
    ld h, a                                       ; $5D72: $67
    ld l, b                                       ; $5D73: $68
    ld [hl], h                                    ; $5D74: $74

jr_01E_5D75:
    ccf                                           ; $5D75: $3F
    cp $FD                                        ; $5D76: $FE $FD
    sbc e                                         ; $5D78: $9B
    ld a, b                                       ; $5D79: $78
    ld [hl], b                                    ; $5D7A: $70
    sbc a                                         ; $5D7B: $9F
    ld c, c                                       ; $5D7C: $49
    ld [hl], h                                    ; $5D7D: $74

jr_01E_5D7E:
    daa                                           ; $5D7E: $27
    ld [hl], e                                    ; $5D7F: $73
    jr nz, jr_01E_5DD6                            ; $5D80: $20 $54

    ld l, a                                       ; $5D82: $6F
    ld l, [hl]                                    ; $5D83: $6E
    ld a, c                                       ; $5D84: $79
    ld l, $FF                                     ; $5D85: $2E $FF
    ld d, a                                       ; $5D87: $57
    ld l, b                                       ; $5D88: $68
    ld h, c                                       ; $5D89: $61
    ld [hl], h                                    ; $5D8A: $74

jr_01E_5D8B:
    daa                                           ; $5D8B: $27

jr_01E_5D8C:
    ld [hl], e                                    ; $5D8C: $73
    jr nz, jr_01E_5E08                            ; $5D8D: $20 $79

    ld l, a                                       ; $5D8F: $6F
    ld [hl], l                                    ; $5D90: $75
    ld [hl], d                                    ; $5D91: $72
    ld [hl], e                                    ; $5D92: $73
    ccf                                           ; $5D93: $3F
    cp $FD                                        ; $5D94: $FE $FD
    sbc e                                         ; $5D96: $9B
    ld l, c                                       ; $5D97: $69
    ld c, c                                       ; $5D98: $49
    sbc a                                         ; $5D99: $9F
    ld c, a                                       ; $5D9A: $4F
    ld l, b                                       ; $5D9B: $68
    ld l, $20                                     ; $5D9C: $2E $20
    ld c, l                                       ; $5D9E: $4D
    ld a, c                                       ; $5D9F: $79
    jr nz, jr_01E_5E10                            ; $5DA0: $20 $6E

    ld h, c                                       ; $5DA2: $61
    ld l, l                                       ; $5DA3: $6D
    ld h, l                                       ; $5DA4: $65
    jr nz, jr_01E_5E10                            ; $5DA5: $20 $69

    ld [hl], e                                    ; $5DA7: $73
    rst $38                                       ; $5DA8: $FF
    ld c, e                                       ; $5DA9: $4B
    ld h, c                                       ; $5DAA: $61
    ld [hl], d                                    ; $5DAB: $72
    ld a, c                                       ; $5DAC: $79
    ld l, [hl]                                    ; $5DAD: $6E
    inc l                                         ; $5DAE: $2C
    jr nz, jr_01E_5E12                            ; $5DAF: $20 $61

    ld l, [hl]                                    ; $5DB1: $6E
    ld h, h                                       ; $5DB2: $64
    jr nz, jr_01E_5E29                            ; $5DB3: $20 $74

    ld l, b                                       ; $5DB5: $68
    ld h, c                                       ; $5DB6: $61
    ld [hl], h                                    ; $5DB7: $74
    cp $6F                                        ; $5DB8: $FE $6F
    halt                                          ; $5DBA: $76
    ld h, l                                       ; $5DBB: $65
    ld [hl], d                                    ; $5DBC: $72
    jr nz, @+$76                                  ; $5DBD: $20 $74

    ld l, b                                       ; $5DBF: $68
    ld h, l                                       ; $5DC0: $65
    ld [hl], d                                    ; $5DC1: $72
    ld h, l                                       ; $5DC2: $65
    jr nz, jr_01E_5E2E                            ; $5DC3: $20 $69

    ld [hl], e                                    ; $5DC5: $73
    rst $38                                       ; $5DC6: $FF
    ld l, l                                       ; $5DC7: $6D
    ld a, c                                       ; $5DC8: $79
    jr nz, jr_01E_5E3E                            ; $5DC9: $20 $73

    ld l, c                                       ; $5DCB: $69
    ld [hl], e                                    ; $5DCC: $73
    ld [hl], h                                    ; $5DCD: $74
    ld h, l                                       ; $5DCE: $65
    ld [hl], d                                    ; $5DCF: $72
    inc l                                         ; $5DD0: $2C

jr_01E_5DD1:
    cp $45                                        ; $5DD1: $FE $45
    ld [hl], d                                    ; $5DD3: $72
    ld a, c                                       ; $5DD4: $79
    ld l, [hl]                                    ; $5DD5: $6E

jr_01E_5DD6:
    ld l, $20                                     ; $5DD6: $2E $20
    ld c, [hl]                                    ; $5DD8: $4E
    ld l, c                                       ; $5DD9: $69
    ld h, e                                       ; $5DDA: $63
    ld h, l                                       ; $5DDB: $65
    rst $38                                       ; $5DDC: $FF
    ld [hl], h                                    ; $5DDD: $74
    ld l, a                                       ; $5DDE: $6F
    jr nz, jr_01E_5E4E                            ; $5DDF: $20 $6D

    ld h, l                                       ; $5DE1: $65
    ld h, l                                       ; $5DE2: $65

jr_01E_5DE3:
    ld [hl], h                                    ; $5DE3: $74
    jr nz, jr_01E_5E5F                            ; $5DE4: $20 $79

    ld h, c                                       ; $5DE6: $61
    ld hl, $FDFE                                  ; $5DE7: $21 $FE $FD
    sbc d                                         ; $5DEA: $9A
    ld e, b                                       ; $5DEB: $58
    ld bc, $9B42                                  ; $5DEC: $01 $42 $9B
    ld sp, hl                                     ; $5DEF: $F9
    ld c, d                                       ; $5DF0: $4A
    sbc a                                         ; $5DF1: $9F
    ld c, b                                       ; $5DF2: $48
    ld h, l                                       ; $5DF3: $65
    ld a, c                                       ; $5DF4: $79
    inc l                                         ; $5DF5: $2C
    jr nz, jr_01E_5E71                            ; $5DF6: $20 $79

    ld l, a                                       ; $5DF8: $6F
    ld [hl], l                                    ; $5DF9: $75
    daa                                           ; $5DFA: $27
    ld [hl], d                                    ; $5DFB: $72
    ld h, l                                       ; $5DFC: $65
    rst $38                                       ; $5DFD: $FF
    ld d, h                                       ; $5DFE: $54
    ld l, a                                       ; $5DFF: $6F
    ld l, [hl]                                    ; $5E00: $6E
    ld a, c                                       ; $5E01: $79
    inc l                                         ; $5E02: $2C
    jr nz, @+$74                                  ; $5E03: $20 $72

    ld l, c                                       ; $5E05: $69
    ld h, a                                       ; $5E06: $67
    ld l, b                                       ; $5E07: $68

jr_01E_5E08:
    ld [hl], h                                    ; $5E08: $74
    ccf                                           ; $5E09: $3F
    cp $FD                                        ; $5E0A: $FE $FD
    sbc e                                         ; $5E0C: $9B
    ld a, b                                       ; $5E0D: $78
    ld [hl], b                                    ; $5E0E: $70
    sbc a                                         ; $5E0F: $9F

jr_01E_5E10:
    ld d, h                                       ; $5E10: $54
    ld l, b                                       ; $5E11: $68

jr_01E_5E12:
    ld h, c                                       ; $5E12: $61
    ld [hl], h                                    ; $5E13: $74
    daa                                           ; $5E14: $27
    ld [hl], e                                    ; $5E15: $73
    jr nz, jr_01E_5E8A                            ; $5E16: $20 $72

    ld l, c                                       ; $5E18: $69
    ld h, a                                       ; $5E19: $67
    ld l, b                                       ; $5E1A: $68
    ld [hl], h                                    ; $5E1B: $74
    ld l, $FF                                     ; $5E1C: $2E $FF
    ld d, a                                       ; $5E1E: $57
    ld l, b                                       ; $5E1F: $68
    ld l, a                                       ; $5E20: $6F
    jr nz, jr_01E_5E84                            ; $5E21: $20 $61

    ld [hl], d                                    ; $5E23: $72
    ld h, l                                       ; $5E24: $65
    jr nz, jr_01E_5EA0                            ; $5E25: $20 $79

    ld l, a                                       ; $5E27: $6F
    ld [hl], l                                    ; $5E28: $75

jr_01E_5E29:
    ccf                                           ; $5E29: $3F
    cp $FD                                        ; $5E2A: $FE $FD
    sbc e                                         ; $5E2C: $9B
    ld sp, hl                                     ; $5E2D: $F9

jr_01E_5E2E:
    ld c, d                                       ; $5E2E: $4A
    sbc a                                         ; $5E2F: $9F
    ld c, l                                       ; $5E30: $4D
    ld a, c                                       ; $5E31: $79
    jr nz, jr_01E_5EA2                            ; $5E32: $20 $6E

    ld h, c                                       ; $5E34: $61
    ld l, l                                       ; $5E35: $6D
    ld h, l                                       ; $5E36: $65
    jr nz, jr_01E_5EA2                            ; $5E37: $20 $69

    ld [hl], e                                    ; $5E39: $73
    rst $38                                       ; $5E3A: $FF
    ld b, l                                       ; $5E3B: $45
    ld [hl], d                                    ; $5E3C: $72
    ld a, c                                       ; $5E3D: $79

jr_01E_5E3E:
    ld l, [hl]                                    ; $5E3E: $6E
    inc l                                         ; $5E3F: $2C
    jr nz, @+$63                                  ; $5E40: $20 $61

    ld l, [hl]                                    ; $5E42: $6E
    ld h, h                                       ; $5E43: $64
    jr nz, jr_01E_5EBA                            ; $5E44: $20 $74

    ld l, b                                       ; $5E46: $68
    ld h, c                                       ; $5E47: $61
    ld [hl], h                                    ; $5E48: $74
    cp $6F                                        ; $5E49: $FE $6F
    halt                                          ; $5E4B: $76
    ld h, l                                       ; $5E4C: $65
    ld [hl], d                                    ; $5E4D: $72

jr_01E_5E4E:
    jr nz, jr_01E_5EC4                            ; $5E4E: $20 $74

    ld l, b                                       ; $5E50: $68
    ld h, l                                       ; $5E51: $65
    ld [hl], d                                    ; $5E52: $72
    ld h, l                                       ; $5E53: $65
    jr nz, jr_01E_5EBF                            ; $5E54: $20 $69

    ld [hl], e                                    ; $5E56: $73
    rst $38                                       ; $5E57: $FF
    ld l, l                                       ; $5E58: $6D
    ld a, c                                       ; $5E59: $79
    jr nz, jr_01E_5ECF                            ; $5E5A: $20 $73

    ld l, c                                       ; $5E5C: $69
    ld [hl], e                                    ; $5E5D: $73
    ld [hl], h                                    ; $5E5E: $74

jr_01E_5E5F:
    ld h, l                                       ; $5E5F: $65
    ld [hl], d                                    ; $5E60: $72
    inc l                                         ; $5E61: $2C
    cp $4B                                        ; $5E62: $FE $4B
    ld h, c                                       ; $5E64: $61
    ld [hl], d                                    ; $5E65: $72
    ld a, c                                       ; $5E66: $79
    ld l, [hl]                                    ; $5E67: $6E
    ld l, $20                                     ; $5E68: $2E $20
    ld c, [hl]                                    ; $5E6A: $4E
    ld l, c                                       ; $5E6B: $69
    ld h, e                                       ; $5E6C: $63
    ld h, l                                       ; $5E6D: $65
    rst $38                                       ; $5E6E: $FF
    ld [hl], h                                    ; $5E6F: $74
    ld l, a                                       ; $5E70: $6F

jr_01E_5E71:
    jr nz, jr_01E_5EE0                            ; $5E71: $20 $6D

    ld h, l                                       ; $5E73: $65
    ld h, l                                       ; $5E74: $65
    ld [hl], h                                    ; $5E75: $74
    jr nz, jr_01E_5EF1                            ; $5E76: $20 $79

    ld h, c                                       ; $5E78: $61
    ld hl, $FDFE                                  ; $5E79: $21 $FE $FD
    sbc d                                         ; $5E7C: $9A
    ld e, b                                       ; $5E7D: $58
    ld bc, $9B42                                  ; $5E7E: $01 $42 $9B
    ld l, c                                       ; $5E81: $69
    ld c, c                                       ; $5E82: $49
    sbc a                                         ; $5E83: $9F

jr_01E_5E84:
    ld c, [hl]                                    ; $5E84: $4E
    ld l, c                                       ; $5E85: $69
    ld h, e                                       ; $5E86: $63
    ld h, l                                       ; $5E87: $65
    jr nz, jr_01E_5EFA                            ; $5E88: $20 $70

jr_01E_5E8A:
    ld l, h                                       ; $5E8A: $6C
    ld h, c                                       ; $5E8B: $61
    ld h, e                                       ; $5E8C: $63
    ld h, l                                       ; $5E8D: $65
    inc l                                         ; $5E8E: $2C
    rst $38                                       ; $5E8F: $FF
    ld l, c                                       ; $5E90: $69
    ld [hl], e                                    ; $5E91: $73
    ld l, [hl]                                    ; $5E92: $6E
    daa                                           ; $5E93: $27
    ld [hl], h                                    ; $5E94: $74
    jr nz, jr_01E_5F0B                            ; $5E95: $20 $74

    ld l, b                                       ; $5E97: $68
    ld l, c                                       ; $5E98: $69
    ld [hl], e                                    ; $5E99: $73
    ccf                                           ; $5E9A: $3F
    cp $49                                        ; $5E9B: $FE $49
    ld [hl], h                                    ; $5E9D: $74
    daa                                           ; $5E9E: $27
    ld [hl], e                                    ; $5E9F: $73

jr_01E_5EA0:
    jr nz, jr_01E_5F03                            ; $5EA0: $20 $61

jr_01E_5EA2:
    jr nz, jr_01E_5F10                            ; $5EA2: $20 $6C

    ld l, c                                       ; $5EA4: $69
    ld [hl], h                                    ; $5EA5: $74
    ld [hl], h                                    ; $5EA6: $74
    ld l, h                                       ; $5EA7: $6C
    ld h, l                                       ; $5EA8: $65
    rst $38                                       ; $5EA9: $FF
    ld [hl], l                                    ; $5EAA: $75
    ld l, [hl]                                    ; $5EAB: $6E
    ld h, e                                       ; $5EAC: $63
    ld l, a                                       ; $5EAD: $6F
    ld l, l                                       ; $5EAE: $6D
    ld h, [hl]                                    ; $5EAF: $66
    ld l, a                                       ; $5EB0: $6F
    ld [hl], d                                    ; $5EB1: $72
    ld [hl], h                                    ; $5EB2: $74
    ld h, c                                       ; $5EB3: $61
    ld h, d                                       ; $5EB4: $62
    ld l, h                                       ; $5EB5: $6C
    ld h, l                                       ; $5EB6: $65
    cp $61                                        ; $5EB7: $FE $61
    ld l, [hl]                                    ; $5EB9: $6E

jr_01E_5EBA:
    ld h, h                                       ; $5EBA: $64
    jr nz, jr_01E_5F30                            ; $5EBB: $20 $73

    ld l, l                                       ; $5EBD: $6D
    ld h, l                                       ; $5EBE: $65

jr_01E_5EBF:
    ld l, h                                       ; $5EBF: $6C
    ld l, h                                       ; $5EC0: $6C
    ld a, c                                       ; $5EC1: $79
    jr nz, jr_01E_5F25                            ; $5EC2: $20 $61

jr_01E_5EC4:
    ld [hl], h                                    ; $5EC4: $74
    rst $38                                       ; $5EC5: $FF
    ld h, [hl]                                    ; $5EC6: $66
    ld l, c                                       ; $5EC7: $69
    ld [hl], d                                    ; $5EC8: $72
    ld [hl], e                                    ; $5EC9: $73
    ld [hl], h                                    ; $5ECA: $74
    inc l                                         ; $5ECB: $2C
    jr nz, jr_01E_5F30                            ; $5ECC: $20 $62

    ld [hl], l                                    ; $5ECE: $75

jr_01E_5ECF:
    ld [hl], h                                    ; $5ECF: $74
    jr nz, jr_01E_5F4B                            ; $5ED0: $20 $79

    ld l, a                                       ; $5ED2: $6F
    ld [hl], l                                    ; $5ED3: $75
    cp $67                                        ; $5ED4: $FE $67
    ld h, l                                       ; $5ED6: $65
    ld [hl], h                                    ; $5ED7: $74
    jr nz, jr_01E_5F4F                            ; $5ED8: $20 $75

    ld [hl], e                                    ; $5EDA: $73
    ld h, l                                       ; $5EDB: $65
    ld h, h                                       ; $5EDC: $64
    jr nz, jr_01E_5F53                            ; $5EDD: $20 $74

    ld l, a                                       ; $5EDF: $6F

jr_01E_5EE0:
    jr nz, jr_01E_5F4B                            ; $5EE0: $20 $69

    ld [hl], h                                    ; $5EE2: $74
    ld l, $FE                                     ; $5EE3: $2E $FE
    db $FD                                        ; $5EE5: $FD
    sbc d                                         ; $5EE6: $9A
    ld e, b                                       ; $5EE7: $58
    ld bc, $9B42                                  ; $5EE8: $01 $42 $9B
    ld sp, hl                                     ; $5EEB: $F9
    ld c, d                                       ; $5EEC: $4A
    sbc a                                         ; $5EED: $9F
    ld c, e                                       ; $5EEE: $4B
    ld h, c                                       ; $5EEF: $61
    ld [hl], d                                    ; $5EF0: $72

jr_01E_5EF1:
    ld a, c                                       ; $5EF1: $79
    ld l, [hl]                                    ; $5EF2: $6E
    jr nz, jr_01E_5F5D                            ; $5EF3: $20 $68

    ld h, c                                       ; $5EF5: $61
    ld [hl], h                                    ; $5EF6: $74
    ld h, l                                       ; $5EF7: $65
    ld h, h                                       ; $5EF8: $64
    rst $38                                       ; $5EF9: $FF

jr_01E_5EFA:
    ld [hl], h                                    ; $5EFA: $74
    ld l, b                                       ; $5EFB: $68
    ld l, c                                       ; $5EFC: $69
    ld [hl], e                                    ; $5EFD: $73
    jr nz, jr_01E_5F70                            ; $5EFE: $20 $70

    ld l, h                                       ; $5F00: $6C
    ld h, c                                       ; $5F01: $61
    ld h, e                                       ; $5F02: $63

jr_01E_5F03:
    ld h, l                                       ; $5F03: $65
    jr nz, jr_01E_5F67                            ; $5F04: $20 $61

    ld [hl], h                                    ; $5F06: $74
    cp $66                                        ; $5F07: $FE $66
    ld l, c                                       ; $5F09: $69
    ld [hl], d                                    ; $5F0A: $72

jr_01E_5F0B:
    ld [hl], e                                    ; $5F0B: $73
    ld [hl], h                                    ; $5F0C: $74
    jr nz, jr_01E_5F71                            ; $5F0D: $20 $62

    ld [hl], l                                    ; $5F0F: $75

jr_01E_5F10:
    ld [hl], h                                    ; $5F10: $74
    jr nz, jr_01E_5F81                            ; $5F11: $20 $6E

    ld l, a                                       ; $5F13: $6F
    ld [hl], a                                    ; $5F14: $77
    rst $38                                       ; $5F15: $FF
    ld [hl], e                                    ; $5F16: $73
    ld l, b                                       ; $5F17: $68
    ld h, l                                       ; $5F18: $65
    jr nz, jr_01E_5F87                            ; $5F19: $20 $6C

    ld l, a                                       ; $5F1B: $6F
    halt                                          ; $5F1C: $76
    ld h, l                                       ; $5F1D: $65
    ld [hl], e                                    ; $5F1E: $73
    jr nz, jr_01E_5F8A                            ; $5F1F: $20 $69

    ld [hl], h                                    ; $5F21: $74
    cp $68                                        ; $5F22: $FE $68
    ld h, l                                       ; $5F24: $65

jr_01E_5F25:
    ld [hl], d                                    ; $5F25: $72
    ld h, l                                       ; $5F26: $65
    ld l, $20                                     ; $5F27: $2E $20
    ld c, c                                       ; $5F29: $49
    ld [hl], e                                    ; $5F2A: $73
    ld l, [hl]                                    ; $5F2B: $6E
    daa                                           ; $5F2C: $27
    ld [hl], h                                    ; $5F2D: $74
    rst $38                                       ; $5F2E: $FF
    ld [hl], e                                    ; $5F2F: $73

jr_01E_5F30:
    ld l, b                                       ; $5F30: $68
    ld h, l                                       ; $5F31: $65
    jr nz, jr_01E_5FAB                            ; $5F32: $20 $77

    ld h, l                                       ; $5F34: $65
    ld l, c                                       ; $5F35: $69
    ld [hl], d                                    ; $5F36: $72
    ld h, h                                       ; $5F37: $64
    ccf                                           ; $5F38: $3F
    cp $FD                                        ; $5F39: $FE $FD
    sbc e                                         ; $5F3B: $9B
    ld l, c                                       ; $5F3C: $69
    ld c, c                                       ; $5F3D: $49
    sbc a                                         ; $5F3E: $9F
    ld c, c                                       ; $5F3F: $49
    jr nz, jr_01E_5FAA                            ; $5F40: $20 $68

    ld h, l                                       ; $5F42: $65
    ld h, c                                       ; $5F43: $61
    ld [hl], d                                    ; $5F44: $72
    ld h, h                                       ; $5F45: $64
    jr nz, jr_01E_5FBC                            ; $5F46: $20 $74

    ld l, b                                       ; $5F48: $68
    ld h, c                                       ; $5F49: $61
    ld [hl], h                                    ; $5F4A: $74

jr_01E_5F4B:
    ld hl, $FDFE                                  ; $5F4B: $21 $FE $FD
    sbc e                                         ; $5F4E: $9B

jr_01E_5F4F:
    ld sp, hl                                     ; $5F4F: $F9
    ld c, d                                       ; $5F50: $4A
    sbc a                                         ; $5F51: $9F
    ld d, h                                       ; $5F52: $54

jr_01E_5F53:
    ld h, l                                       ; $5F53: $65
    ld h, l                                       ; $5F54: $65
    jr nz, jr_01E_5FBF                            ; $5F55: $20 $68

    ld h, l                                       ; $5F57: $65
    ld h, l                                       ; $5F58: $65
    ld l, $2E                                     ; $5F59: $2E $2E
    ld l, $FE                                     ; $5F5B: $2E $FE

jr_01E_5F5D:
    db $FD                                        ; $5F5D: $FD
    sbc d                                         ; $5F5E: $9A
    ld e, b                                       ; $5F5F: $58
    ld bc, $9B42                                  ; $5F60: $01 $42 $9B
    ld l, c                                       ; $5F63: $69
    ld c, c                                       ; $5F64: $49
    sbc a                                         ; $5F65: $9F
    ld d, a                                       ; $5F66: $57

jr_01E_5F67:
    ld h, l                                       ; $5F67: $65
    daa                                           ; $5F68: $27
    ld [hl], d                                    ; $5F69: $72
    ld h, l                                       ; $5F6A: $65
    jr nz, jr_01E_5FE1                            ; $5F6B: $20 $74

    ld l, b                                       ; $5F6D: $68
    ld l, c                                       ; $5F6E: $69
    ld l, [hl]                                    ; $5F6F: $6E

jr_01E_5F70:
    ld l, e                                       ; $5F70: $6B

jr_01E_5F71:
    ld l, c                                       ; $5F71: $69
    ld l, [hl]                                    ; $5F72: $6E
    ld h, a                                       ; $5F73: $67
    rst $38                                       ; $5F74: $FF
    ld h, c                                       ; $5F75: $61
    ld h, d                                       ; $5F76: $62
    ld l, a                                       ; $5F77: $6F
    ld [hl], l                                    ; $5F78: $75
    ld [hl], h                                    ; $5F79: $74
    jr nz, jr_01E_5FF2                            ; $5F7A: $20 $76

    ld l, c                                       ; $5F7C: $69
    ld [hl], e                                    ; $5F7D: $73
    ld l, c                                       ; $5F7E: $69
    ld [hl], h                                    ; $5F7F: $74
    ld l, c                                       ; $5F80: $69

jr_01E_5F81:
    ld l, [hl]                                    ; $5F81: $6E
    ld h, a                                       ; $5F82: $67
    cp $56                                        ; $5F83: $FE $56
    ld h, c                                       ; $5F85: $61
    ld [hl], e                                    ; $5F86: $73

jr_01E_5F87:
    ld l, b                                       ; $5F87: $68
    jr nz, jr_01E_5FD8                            ; $5F88: $20 $4E

jr_01E_5F8A:
    ld h, c                                       ; $5F8A: $61
    ld [hl], d                                    ; $5F8B: $72
    ld l, a                                       ; $5F8C: $6F
    ld l, a                                       ; $5F8D: $6F
    ld l, l                                       ; $5F8E: $6D
    jr nz, jr_01E_5FF7                            ; $5F8F: $20 $66

    ld l, a                                       ; $5F91: $6F
    ld [hl], d                                    ; $5F92: $72
    rst $38                                       ; $5F93: $FF
    ld h, c                                       ; $5F94: $61
    jr nz, jr_01E_6003                            ; $5F95: $20 $6C

    ld l, c                                       ; $5F97: $69
    ld [hl], h                                    ; $5F98: $74
    ld [hl], h                                    ; $5F99: $74
    ld l, h                                       ; $5F9A: $6C
    ld h, l                                       ; $5F9B: $65
    jr nz, @+$79                                  ; $5F9C: $20 $77

    ld l, b                                       ; $5F9E: $68
    ld l, c                                       ; $5F9F: $69
    ld l, h                                       ; $5FA0: $6C
    ld h, l                                       ; $5FA1: $65
    ld l, $FE                                     ; $5FA2: $2E $FE
    db $FD                                        ; $5FA4: $FD
    sbc d                                         ; $5FA5: $9A
    ld e, b                                       ; $5FA6: $58
    ld bc, $9B42                                  ; $5FA7: $01 $42 $9B

jr_01E_5FAA:
    ld sp, hl                                     ; $5FAA: $F9

jr_01E_5FAB:
    ld c, d                                       ; $5FAB: $4A
    sbc a                                         ; $5FAC: $9F
    ld c, c                                       ; $5FAD: $49
    jr nz, jr_01E_6027                            ; $5FAE: $20 $77

    ld l, a                                       ; $5FB0: $6F
    ld l, [hl]                                    ; $5FB1: $6E
    ld h, h                                       ; $5FB2: $64
    ld h, l                                       ; $5FB3: $65
    ld [hl], d                                    ; $5FB4: $72
    jr nz, jr_01E_6020                            ; $5FB5: $20 $69

    ld h, [hl]                                    ; $5FB7: $66
    rst $38                                       ; $5FB8: $FF
    ld h, e                                       ; $5FB9: $63
    ld l, a                                       ; $5FBA: $6F
    ld [hl], l                                    ; $5FBB: $75

jr_01E_5FBC:
    ld [hl], e                                    ; $5FBC: $73
    ld l, c                                       ; $5FBD: $69
    ld l, [hl]                                    ; $5FBE: $6E

jr_01E_5FBF:
    jr nz, @+$56                                  ; $5FBF: $20 $54

    ld [hl], d                                    ; $5FC1: $72
    ld a, c                                       ; $5FC2: $79
    ld l, [hl]                                    ; $5FC3: $6E
    cp $73                                        ; $5FC4: $FE $73
    ld [hl], h                                    ; $5FC6: $74
    ld l, c                                       ; $5FC7: $69
    ld l, h                                       ; $5FC8: $6C
    ld l, h                                       ; $5FC9: $6C
    jr nz, jr_01E_6034                            ; $5FCA: $20 $68

    ld h, c                                       ; $5FCC: $61
    ld [hl], e                                    ; $5FCD: $73
    jr nz, jr_01E_6044                            ; $5FCE: $20 $74

    ld l, b                                       ; $5FD0: $68
    ld h, c                                       ; $5FD1: $61
    ld [hl], h                                    ; $5FD2: $74
    rst $38                                       ; $5FD3: $FF
    ld [hl], a                                    ; $5FD4: $77
    ld h, l                                       ; $5FD5: $65
    ld l, c                                       ; $5FD6: $69
    ld [hl], d                                    ; $5FD7: $72

jr_01E_5FD8:
    ld h, h                                       ; $5FD8: $64
    jr nz, jr_01E_603D                            ; $5FD9: $20 $62

    ld h, c                                       ; $5FDB: $61
    ld h, a                                       ; $5FDC: $67
    ccf                                           ; $5FDD: $3F
    cp $FD                                        ; $5FDE: $FE $FD
    sbc d                                         ; $5FE0: $9A

jr_01E_5FE1:
    ld e, b                                       ; $5FE1: $58
    ld bc, $9B42                                  ; $5FE2: $01 $42 $9B
    cp b                                          ; $5FE5: $B8
    ld b, h                                       ; $5FE6: $44
    sbc a                                         ; $5FE7: $9F
    ld c, b                                       ; $5FE8: $48
    ld h, l                                       ; $5FE9: $65
    ld a, c                                       ; $5FEA: $79
    inc l                                         ; $5FEB: $2C
    jr nz, jr_01E_6067                            ; $5FEC: $20 $79

    ld l, a                                       ; $5FEE: $6F
    ld [hl], l                                    ; $5FEF: $75
    daa                                           ; $5FF0: $27
    ld [hl], d                                    ; $5FF1: $72

jr_01E_5FF2:
    ld h, l                                       ; $5FF2: $65
    rst $38                                       ; $5FF3: $FF
    ld [hl], h                                    ; $5FF4: $74
    ld l, b                                       ; $5FF5: $68
    ld h, c                                       ; $5FF6: $61

jr_01E_5FF7:
    ld [hl], h                                    ; $5FF7: $74
    jr nz, jr_01E_606E                            ; $5FF8: $20 $74

    ld l, b                                       ; $5FFA: $68
    ld l, c                                       ; $5FFB: $69
    ld h, l                                       ; $5FFC: $65
    ld h, [hl]                                    ; $5FFD: $66
    jr nz, jr_01E_6067                            ; $5FFE: $20 $67

    ld [hl], l                                    ; $6000: $75
    ld a, c                                       ; $6001: $79
    inc l                                         ; $6002: $2C

jr_01E_6003:
    cp $61                                        ; $6003: $FE $61
    ld [hl], d                                    ; $6005: $72
    ld h, l                                       ; $6006: $65
    ld l, [hl]                                    ; $6007: $6E
    daa                                           ; $6008: $27
    ld [hl], h                                    ; $6009: $74
    jr nz, jr_01E_6085                            ; $600A: $20 $79

    ld l, a                                       ; $600C: $6F
    ld [hl], l                                    ; $600D: $75
    ccf                                           ; $600E: $3F
    cp $FD                                        ; $600F: $FE $FD
    sbc d                                         ; $6011: $9A
    ld e, b                                       ; $6012: $58
    ld bc, $9B42                                  ; $6013: $01 $42 $9B
    cp b                                          ; $6016: $B8
    ld b, h                                       ; $6017: $44
    sbc a                                         ; $6018: $9F
    ld d, a                                       ; $6019: $57
    ld l, b                                       ; $601A: $68
    ld h, c                                       ; $601B: $61
    ld [hl], h                                    ; $601C: $74
    jr nz, jr_01E_6087                            ; $601D: $20 $68

    ld h, c                                       ; $601F: $61

jr_01E_6020:
    ld [hl], b                                    ; $6020: $70
    ld [hl], b                                    ; $6021: $70
    ld h, l                                       ; $6022: $65
    ld l, [hl]                                    ; $6023: $6E
    ld h, l                                       ; $6024: $65
    ld h, h                                       ; $6025: $64
    rst $38                                       ; $6026: $FF

jr_01E_6027:
    ld [hl], h                                    ; $6027: $74
    ld l, a                                       ; $6028: $6F
    jr nz, @+$47                                  ; $6029: $20 $45

    ld [hl], d                                    ; $602B: $72
    ld a, c                                       ; $602C: $79
    ld l, [hl]                                    ; $602D: $6E
    jr nz, jr_01E_6091                            ; $602E: $20 $61

    ld l, [hl]                                    ; $6030: $6E
    ld h, h                                       ; $6031: $64
    cp $4B                                        ; $6032: $FE $4B

jr_01E_6034:
    ld h, c                                       ; $6034: $61
    ld [hl], d                                    ; $6035: $72
    ld a, c                                       ; $6036: $79
    ld l, [hl]                                    ; $6037: $6E
    ccf                                           ; $6038: $3F
    jr nz, jr_01E_607F                            ; $6039: $20 $44

    ld l, c                                       ; $603B: $69
    ld h, h                                       ; $603C: $64

jr_01E_603D:
    rst $38                                       ; $603D: $FF
    ld [hl], h                                    ; $603E: $74
    ld l, b                                       ; $603F: $68
    ld h, l                                       ; $6040: $65
    ld a, c                                       ; $6041: $79
    jr nz, jr_01E_60AB                            ; $6042: $20 $67

jr_01E_6044:
    ld l, a                                       ; $6044: $6F
    jr nz, jr_01E_60A8                            ; $6045: $20 $61

    ld l, [hl]                                    ; $6047: $6E
    ld h, h                                       ; $6048: $64
    cp $76                                        ; $6049: $FE $76
    ld l, c                                       ; $604B: $69
    ld [hl], e                                    ; $604C: $73
    ld l, c                                       ; $604D: $69
    ld [hl], h                                    ; $604E: $74
    jr nz, @+$56                                  ; $604F: $20 $54

    ld [hl], d                                    ; $6051: $72
    ld a, c                                       ; $6052: $79
    ld l, [hl]                                    ; $6053: $6E
    rst $38                                       ; $6054: $FF
    ld h, c                                       ; $6055: $61
    ld h, a                                       ; $6056: $67
    ld h, c                                       ; $6057: $61
    ld l, c                                       ; $6058: $69
    ld l, [hl]                                    ; $6059: $6E
    ccf                                           ; $605A: $3F
    cp $FD                                        ; $605B: $FE $FD
    sbc d                                         ; $605D: $9A
    ld e, b                                       ; $605E: $58
    ld bc, $9342                                  ; $605F: $01 $42 $93
    ld h, l                                       ; $6062: $65
    inc [hl]                                      ; $6063: $34
    ld c, b                                       ; $6064: $48
    ld c, a                                       ; $6065: $4F
    ld h, h                                       ; $6066: $64

jr_01E_6067:
    rra                                           ; $6067: $1F
    ld c, e                                       ; $6068: $4B
    ld l, c                                       ; $6069: $69
    inc h                                         ; $606A: $24
    ld c, e                                       ; $606B: $4B
    ld h, [hl]                                    ; $606C: $66
    ret nz                                        ; $606D: $C0

jr_01E_606E:
    ld e, h                                       ; $606E: $5C
    ld hl, $0005                                  ; $606F: $21 $05 $00
    add c                                         ; $6072: $81
    ld e, l                                       ; $6073: $5D
    ld c, $01                                     ; $6074: $0E $01

jr_01E_6076:
    ld e, $D0                                     ; $6076: $1E $D0
    nop                                           ; $6078: $00
    jr nz, jr_01E_6076                            ; $6079: $20 $FB

    ld d, b                                       ; $607B: $50
    ld [hl+], a                                   ; $607C: $22
    dec b                                         ; $607D: $05
    ld b, b                                       ; $607E: $40

jr_01E_607F:
    dec b                                         ; $607F: $05
    ld [bc], a                                    ; $6080: $02
    db $ED                                        ; $6081: $ED
    ld h, e                                       ; $6082: $63
    ld [bc], a                                    ; $6083: $02
    dec b                                         ; $6084: $05

jr_01E_6085:
    ld d, d                                       ; $6085: $52
    ret nc                                        ; $6086: $D0

jr_01E_6087:
    nop                                           ; $6087: $00
    db $10                                        ; $6088: $10
    ld b, a                                       ; $6089: $47
    ld [hl], b                                    ; $608A: $70
    ld e, $B1                                     ; $608B: $1E $B1
    ld h, b                                       ; $608D: $60
    dec b                                         ; $608E: $05
    inc bc                                        ; $608F: $03
    db $ED                                        ; $6090: $ED

jr_01E_6091:
    ld h, e                                       ; $6091: $63
    inc bc                                        ; $6092: $03
    rlca                                          ; $6093: $07
    ld [hl], e                                    ; $6094: $73
    ret nc                                        ; $6095: $D0

    nop                                           ; $6096: $00
    db $10                                        ; $6097: $10
    rra                                           ; $6098: $1F
    ld [hl], b                                    ; $6099: $70
    ld e, $E9                                     ; $609A: $1E $E9
    ld h, b                                       ; $609C: $60
    dec bc                                        ; $609D: $0B
    nop                                           ; $609E: $00
    dec bc                                        ; $609F: $0B
    ld [bc], a                                    ; $60A0: $02
    dec bc                                        ; $60A1: $0B
    inc bc                                        ; $60A2: $03
    ld l, e                                       ; $60A3: $6B
    jr nc, jr_01E_60B2                            ; $60A4: $30 $0C

    or b                                          ; $60A6: $B0
    ld d, a                                       ; $60A7: $57

jr_01E_60A8:
    nop                                           ; $60A8: $00
    add b                                         ; $60A9: $80
    nop                                           ; $60AA: $00

jr_01E_60AB:
    nop                                           ; $60AB: $00
    add d                                         ; $60AC: $82
    rra                                           ; $60AD: $1F
    dec e                                         ; $60AE: $1D
    sub h                                         ; $60AF: $94
    ld b, d                                       ; $60B0: $42
    inc d                                         ; $60B1: $14

jr_01E_60B2:
    db $10                                        ; $60B2: $10
    ld b, a                                       ; $60B3: $47
    ld [hl], b                                    ; $60B4: $70
    ld c, e                                       ; $60B5: $4B
    ld bc, $A2A4                                  ; $60B6: $01 $A4 $A2
    ld e, $00                                     ; $60B9: $1E $00
    nop                                           ; $60BB: $00
    ret                                           ; $60BC: $C9


    ld h, b                                       ; $60BD: $60
    ld e, $01                                     ; $60BE: $1E $01
    nop                                           ; $60C0: $00
    push de                                       ; $60C1: $D5
    ld h, b                                       ; $60C2: $60
    ld e, $02                                     ; $60C3: $1E $02
    nop                                           ; $60C5: $00
    pop hl                                        ; $60C6: $E1
    ld h, b                                       ; $60C7: $60
    rst $38                                       ; $60C8: $FF
    xor h                                         ; $60C9: $AC
    and h                                         ; $60CA: $A4
    and d                                         ; $60CB: $A2
    ld bc, $1E5B                                  ; $60CC: $01 $5B $1E
    ld d, l                                       ; $60CF: $55
    ld e, l                                       ; $60D0: $5D
    ld b, l                                       ; $60D1: $45
    db $10                                        ; $60D2: $10
    ld [hl], b                                    ; $60D3: $70
    ld [hl], b                                    ; $60D4: $70
    xor h                                         ; $60D5: $AC
    and h                                         ; $60D6: $A4
    and d                                         ; $60D7: $A2
    ld [bc], a                                    ; $60D8: $02
    ld e, e                                       ; $60D9: $5B
    ld e, $80                                     ; $60DA: $1E $80
    ld e, [hl]                                    ; $60DC: $5E
    ld b, l                                       ; $60DD: $45
    db $10                                        ; $60DE: $10
    ld [hl], b                                    ; $60DF: $70
    ld [hl], b                                    ; $60E0: $70
    ld e, e                                       ; $60E1: $5B
    ld e, $62                                     ; $60E2: $1E $62
    ld e, a                                       ; $60E4: $5F
    ld b, l                                       ; $60E5: $45
    db $10                                        ; $60E6: $10
    ld [hl], b                                    ; $60E7: $70
    ld [hl], b                                    ; $60E8: $70
    inc d                                         ; $60E9: $14
    db $10                                        ; $60EA: $10
    rra                                           ; $60EB: $1F
    ld [hl], b                                    ; $60EC: $70
    ld c, e                                       ; $60ED: $4B
    ld bc, $A2A4                                  ; $60EE: $01 $A4 $A2
    ld e, $00                                     ; $60F1: $1E $00
    nop                                           ; $60F3: $00
    ld bc, $1E61                                  ; $60F4: $01 $61 $1E
    ld bc, $0D00                                  ; $60F7: $01 $00 $0D
    ld h, c                                       ; $60FA: $61
    ld e, $02                                     ; $60FB: $1E $02
    nop                                           ; $60FD: $00
    add hl, de                                    ; $60FE: $19
    ld h, c                                       ; $60FF: $61
    rst $38                                       ; $6100: $FF
    xor h                                         ; $6101: $AC
    and h                                         ; $6102: $A4
    and d                                         ; $6103: $A2
    ld bc, $1E5B                                  ; $6104: $01 $5B $1E
    xor $5D                                       ; $6107: $EE $5D
    ld b, l                                       ; $6109: $45
    db $10                                        ; $610A: $10
    ld [hl], b                                    ; $610B: $70
    ld [hl], b                                    ; $610C: $70
    xor h                                         ; $610D: $AC
    and h                                         ; $610E: $A4
    and d                                         ; $610F: $A2
    ld [bc], a                                    ; $6110: $02
    ld e, e                                       ; $6111: $5B
    ld e, $EA                                     ; $6112: $1E $EA
    ld e, [hl]                                    ; $6114: $5E
    ld b, l                                       ; $6115: $45
    db $10                                        ; $6116: $10
    ld [hl], b                                    ; $6117: $70
    ld [hl], b                                    ; $6118: $70
    ld e, e                                       ; $6119: $5B
    ld e, $A9                                     ; $611A: $1E $A9
    ld e, a                                       ; $611C: $5F
    ld b, l                                       ; $611D: $45
    db $10                                        ; $611E: $10
    ld [hl], b                                    ; $611F: $70
    ld [hl], b                                    ; $6120: $70
    sub e                                         ; $6121: $93
    ld h, l                                       ; $6122: $65
    inc [hl]                                      ; $6123: $34
    ld c, b                                       ; $6124: $48
    ld c, a                                       ; $6125: $4F
    ld h, h                                       ; $6126: $64
    rra                                           ; $6127: $1F
    ld c, e                                       ; $6128: $4B
    ld l, c                                       ; $6129: $69
    inc h                                         ; $612A: $24
    ld c, e                                       ; $612B: $4B
    ld h, [hl]                                    ; $612C: $66
    ret nz                                        ; $612D: $C0

    ld e, h                                       ; $612E: $5C
    ld hl, $0005                                  ; $612F: $21 $05 $00
    add c                                         ; $6132: $81
    ld e, l                                       ; $6133: $5D
    ld c, $01                                     ; $6134: $0E $01

jr_01E_6136:
    ld e, $D0                                     ; $6136: $1E $D0
    nop                                           ; $6138: $00
    jr nz, jr_01E_6136                            ; $6139: $20 $FB

    ld d, b                                       ; $613B: $50
    ld [hl+], a                                   ; $613C: $22
    dec b                                         ; $613D: $05
    ld b, b                                       ; $613E: $40
    dec b                                         ; $613F: $05
    ld [bc], a                                    ; $6140: $02
    db $ED                                        ; $6141: $ED
    ld h, e                                       ; $6142: $63
    dec bc                                        ; $6143: $0B
    inc b                                         ; $6144: $04
    ld c, e                                       ; $6145: $4B
    ret nc                                        ; $6146: $D0

    nop                                           ; $6147: $00
    db $10                                        ; $6148: $10
    add b                                         ; $6149: $80
    ld h, e                                       ; $614A: $63
    ld e, $60                                     ; $614B: $1E $60
    ld h, c                                       ; $614D: $61
    dec bc                                        ; $614E: $0B
    nop                                           ; $614F: $00
    dec bc                                        ; $6150: $0B
    ld [bc], a                                    ; $6151: $02
    ld l, e                                       ; $6152: $6B
    jr nc, jr_01E_6160                            ; $6153: $30 $0B

    jr nz, jr_01E_6197                            ; $6155: $20 $40

    nop                                           ; $6157: $00
    add b                                         ; $6158: $80
    nop                                           ; $6159: $00
    nop                                           ; $615A: $00
    add d                                         ; $615B: $82
    rra                                           ; $615C: $1F
    dec e                                         ; $615D: $1D
    sub h                                         ; $615E: $94
    ld b, d                                       ; $615F: $42

jr_01E_6160:
    ld e, e                                       ; $6160: $5B
    ld e, $E4                                     ; $6161: $1E $E4
    ld e, a                                       ; $6163: $5F
    ld b, l                                       ; $6164: $45
    db $10                                        ; $6165: $10
    add $63                                       ; $6166: $C6 $63
    ld c, e                                       ; $6168: $4B
    inc b                                         ; $6169: $04
    ld e, $0B                                     ; $616A: $1E $0B
    nop                                           ; $616C: $00
    ld h, c                                       ; $616D: $61
    ld h, b                                       ; $616E: $60
    ld e, $0C                                     ; $616F: $1E $0C
    nop                                           ; $6171: $00
    ld h, c                                       ; $6172: $61
    ld h, b                                       ; $6173: $60
    ld e, $0D                                     ; $6174: $1E $0D
    nop                                           ; $6176: $00
    ld h, c                                       ; $6177: $61
    ld h, b                                       ; $6178: $60
    ld e, $0E                                     ; $6179: $1E $0E
    nop                                           ; $617B: $00
    ld h, c                                       ; $617C: $61
    ld h, b                                       ; $617D: $60
    ld e, $0F                                     ; $617E: $1E $0F
    nop                                           ; $6180: $00
    ld h, c                                       ; $6181: $61
    ld h, b                                       ; $6182: $60
    rst $38                                       ; $6183: $FF
    ld b, e                                       ; $6184: $43
    nop                                           ; $6185: $00
    and l                                         ; $6186: $A5
    and c                                         ; $6187: $A1
    inc b                                         ; $6188: $04
    ld e, $21                                     ; $6189: $1E $21
    ld h, c                                       ; $618B: $61
    sub e                                         ; $618C: $93
    ld h, l                                       ; $618D: $65
    inc [hl]                                      ; $618E: $34
    ld c, b                                       ; $618F: $48
    ld c, a                                       ; $6190: $4F
    ld h, h                                       ; $6191: $64
    rra                                           ; $6192: $1F
    ld c, e                                       ; $6193: $4B
    ld l, c                                       ; $6194: $69
    inc h                                         ; $6195: $24
    ld c, e                                       ; $6196: $4B

jr_01E_6197:
    ld h, [hl]                                    ; $6197: $66
    ret nz                                        ; $6198: $C0

    ld e, h                                       ; $6199: $5C
    ld hl, $0005                                  ; $619A: $21 $05 $00
    add c                                         ; $619D: $81

jr_01E_619E:
    ld e, l                                       ; $619E: $5D

jr_01E_619F:
    ld c, $01                                     ; $619F: $0E $01

jr_01E_61A1:
    ld e, $D0                                     ; $61A1: $1E $D0
    nop                                           ; $61A3: $00
    jr nz, jr_01E_61A1                            ; $61A4: $20 $FB

    ld d, b                                       ; $61A6: $50
    ld [hl+], a                                   ; $61A7: $22
    dec b                                         ; $61A8: $05
    ld b, b                                       ; $61A9: $40
    dec b                                         ; $61AA: $05
    ld [bc], a                                    ; $61AB: $02
    db $ED                                        ; $61AC: $ED

jr_01E_61AD:
    ld h, e                                       ; $61AD: $63
    dec bc                                        ; $61AE: $0B
    inc b                                         ; $61AF: $04
    ld c, e                                       ; $61B0: $4B
    ret nc                                        ; $61B1: $D0

    nop                                           ; $61B2: $00
    db $10                                        ; $61B3: $10
    add b                                         ; $61B4: $80
    ld h, e                                       ; $61B5: $63
    ld e, $CB                                     ; $61B6: $1E $CB
    ld h, c                                       ; $61B8: $61
    dec bc                                        ; $61B9: $0B
    nop                                           ; $61BA: $00
    dec bc                                        ; $61BB: $0B
    ld [bc], a                                    ; $61BC: $02
    ld l, e                                       ; $61BD: $6B
    jr nc, jr_01E_61CB                            ; $61BE: $30 $0B

    jr nz, jr_01E_6202                            ; $61C0: $20 $40

    nop                                           ; $61C2: $00
    add b                                         ; $61C3: $80
    nop                                           ; $61C4: $00
    nop                                           ; $61C5: $00
    add d                                         ; $61C6: $82
    rra                                           ; $61C7: $1F
    dec e                                         ; $61C8: $1D
    sub h                                         ; $61C9: $94
    ld b, d                                       ; $61CA: $42

jr_01E_61CB:
    ld e, e                                       ; $61CB: $5B
    ld e, $15                                     ; $61CC: $1E $15
    ld h, b                                       ; $61CE: $60
    ld b, l                                       ; $61CF: $45
    db $10                                        ; $61D0: $10
    add $63                                       ; $61D1: $C6 $63
    ld [bc], a                                    ; $61D3: $02
    ld a, [bc]                                    ; $61D4: $0A
    rla                                           ; $61D5: $17
    rrca                                          ; $61D6: $0F
    inc e                                         ; $61D7: $1C
    ld b, l                                       ; $61D8: $45
    ld [de], a                                    ; $61D9: $12
    ld a, a                                       ; $61DA: $7F
    ld [hl], c                                    ; $61DB: $71
    ld b, e                                       ; $61DC: $43
    nop                                           ; $61DD: $00
    and l                                         ; $61DE: $A5
    and c                                         ; $61DF: $A1
    ld [$041E], sp                                ; $61E0: $08 $1E $04
    ld h, d                                       ; $61E3: $62
    rlca                                          ; $61E4: $07
    nop                                           ; $61E5: $00
    ld l, e                                       ; $61E6: $6B
    ld c, d                                       ; $61E7: $4A
    add hl, bc                                    ; $61E8: $09
    nop                                           ; $61E9: $00
    jr nz, jr_01E_619F                            ; $61EA: $20 $B3

    ld c, a                                       ; $61EC: $4F
    ld b, b                                       ; $61ED: $40
    db $10                                        ; $61EE: $10
    add hl, bc                                    ; $61EF: $09
    nop                                           ; $61F0: $00
    jr nz, jr_01E_619E                            ; $61F1: $20 $AB

    ld d, b                                       ; $61F3: $50
    ld e, e                                       ; $61F4: $5B
    ld e, $74                                     ; $61F5: $1E $74
    ld h, l                                       ; $61F7: $65
    ld h, d                                       ; $61F8: $62
    inc bc                                        ; $61F9: $03
    rlca                                          ; $61FA: $07
    nop                                           ; $61FB: $00
    add c                                         ; $61FC: $81
    ld e, l                                       ; $61FD: $5D
    add hl, bc                                    ; $61FE: $09
    nop                                           ; $61FF: $00
    jr nz, jr_01E_61AD                            ; $6200: $20 $AB

jr_01E_6202:
    ld d, b                                       ; $6202: $50
    ld b, d                                       ; $6203: $42
    ld [bc], a                                    ; $6204: $02
    ld a, [bc]                                    ; $6205: $0A
    rla                                           ; $6206: $17
    rrca                                          ; $6207: $0F
    inc e                                         ; $6208: $1C
    ld b, l                                       ; $6209: $45
    ld [de], a                                    ; $620A: $12
    ld [$4376], sp                                ; $620B: $08 $76 $43
    nop                                           ; $620E: $00
    and l                                         ; $620F: $A5
    and c                                         ; $6210: $A1
    ld [$241E], sp                                ; $6211: $08 $1E $24
    ld h, d                                       ; $6214: $62
    xor a                                         ; $6215: $AF
    and l                                         ; $6216: $A5
    and c                                         ; $6217: $A1
    ld [$0087], sp                                ; $6218: $08 $87 $00
    dec e                                         ; $621B: $1D
    ld bc, $1E5B                                  ; $621C: $01 $5B $1E
    and a                                         ; $621F: $A7
    ld h, l                                       ; $6220: $65
    ld h, d                                       ; $6221: $62
    ld [bc], a                                    ; $6222: $02
    ld b, d                                       ; $6223: $42
    ld b, d                                       ; $6224: $42
    ld b, e                                       ; $6225: $43
    ld a, [bc]                                    ; $6226: $0A
    nop                                           ; $6227: $00
    and l                                         ; $6228: $A5
    and c                                         ; $6229: $A1
    ld [$351E], sp                                ; $622A: $08 $1E $35
    ld h, d                                       ; $622D: $62
    ld e, e                                       ; $622E: $5B
    ld e, $F9                                     ; $622F: $1E $F9
    ld h, [hl]                                    ; $6231: $66
    ld h, d                                       ; $6232: $62
    ld [bc], a                                    ; $6233: $02
    ld b, d                                       ; $6234: $42
    ld e, e                                       ; $6235: $5B
    ld e, $BD                                     ; $6236: $1E $BD
    ld h, a                                       ; $6238: $67
    ld h, d                                       ; $6239: $62
    ld bc, $A442                                  ; $623A: $01 $42 $A4
    dec hl                                        ; $623D: $2B
    and e                                         ; $623E: $A3
    ld bc, $0200                                  ; $623F: $01 $00 $02
    add c                                         ; $6242: $81
    ret nc                                        ; $6243: $D0

    sbc e                                         ; $6244: $9B
    ld a, b                                       ; $6245: $78
    ld [hl], b                                    ; $6246: $70
    sbc a                                         ; $6247: $9F
    ld b, c                                       ; $6248: $41
    jr nz, @+$74                                  ; $6249: $20 $72

    ld l, c                                       ; $624B: $69
    ld h, a                                       ; $624C: $67
    ld l, b                                       ; $624D: $68
    ld [hl], h                                    ; $624E: $74
    rst $38                                       ; $624F: $FF
    ld [hl], b                                    ; $6250: $70
    ld [hl], d                                    ; $6251: $72
    ld l, a                                       ; $6252: $6F
    ld [hl], b                                    ; $6253: $70
    ld h, l                                       ; $6254: $65
    ld [hl], d                                    ; $6255: $72
    jr nz, jr_01E_62BA                            ; $6256: $20 $62

    ld h, l                                       ; $6258: $65
    ld h, h                                       ; $6259: $64
    ld l, $FE                                     ; $625A: $2E $FE
    db $FD                                        ; $625C: $FD
    sbc d                                         ; $625D: $9A
    ld b, d                                       ; $625E: $42
    sbc e                                         ; $625F: $9B
    ld a, b                                       ; $6260: $78
    ld [hl], b                                    ; $6261: $70
    sbc a                                         ; $6262: $9F
    ld c, a                                       ; $6263: $4F
    ld l, h                                       ; $6264: $6C
    ld h, h                                       ; $6265: $64
    jr nz, jr_01E_62D5                            ; $6266: $20 $6D

    ld h, c                                       ; $6268: $61
    ld l, [hl]                                    ; $6269: $6E
    rst $38                                       ; $626A: $FF
    ld [hl], h                                    ; $626B: $74
    ld l, b                                       ; $626C: $68
    ld l, c                                       ; $626D: $69
    ld l, [hl]                                    ; $626E: $6E
    ld h, a                                       ; $626F: $67
    ld [hl], e                                    ; $6270: $73
    ld l, $FE                                     ; $6271: $2E $FE
    db $FD                                        ; $6273: $FD
    sbc d                                         ; $6274: $9A
    ld b, d                                       ; $6275: $42
    sbc e                                         ; $6276: $9B
    ld a, b                                       ; $6277: $78
    ld [hl], b                                    ; $6278: $70
    sbc a                                         ; $6279: $9F
    ld d, l                                       ; $627A: $55
    ld h, a                                       ; $627B: $67
    ld l, b                                       ; $627C: $68
    ld hl, $5420                                  ; $627D: $21 $20 $54
    ld l, b                                       ; $6280: $68
    ld h, l                                       ; $6281: $65
    rst $38                                       ; $6282: $FF
    ld h, h                                       ; $6283: $64
    ld [hl], d                                    ; $6284: $72
    ld h, c                                       ; $6285: $61
    ld [hl], a                                    ; $6286: $77
    ld h, l                                       ; $6287: $65
    ld [hl], d                                    ; $6288: $72
    ld [hl], e                                    ; $6289: $73
    jr nz, @+$63                                  ; $628A: $20 $61

    ld [hl], d                                    ; $628C: $72
    ld h, l                                       ; $628D: $65
    cp $73                                        ; $628E: $FE $73
    ld [hl], h                                    ; $6290: $74
    ld [hl], l                                    ; $6291: $75
    ld h, e                                       ; $6292: $63
    ld l, e                                       ; $6293: $6B
    ld hl, $FDFE                                  ; $6294: $21 $FE $FD
    sbc d                                         ; $6297: $9A
    ld b, d                                       ; $6298: $42
    sbc e                                         ; $6299: $9B
    ld a, b                                       ; $629A: $78
    ld [hl], b                                    ; $629B: $70
    sbc a                                         ; $629C: $9F
    ld d, d                                       ; $629D: $52
    ld l, c                                       ; $629E: $69
    ld h, e                                       ; $629F: $63
    ld l, e                                       ; $62A0: $6B
    ld h, l                                       ; $62A1: $65
    ld [hl], h                                    ; $62A2: $74
    ld a, c                                       ; $62A3: $79
    ld l, $FE                                     ; $62A4: $2E $FE
    db $FD                                        ; $62A6: $FD
    sbc d                                         ; $62A7: $9A
    ld b, d                                       ; $62A8: $42
    sbc e                                         ; $62A9: $9B
    ld a, b                                       ; $62AA: $78
    ld [hl], b                                    ; $62AB: $70
    sbc a                                         ; $62AC: $9F
    ld c, h                                       ; $62AD: $4C
    ld l, a                                       ; $62AE: $6F
    ld l, a                                       ; $62AF: $6F
    ld l, e                                       ; $62B0: $6B
    ld [hl], e                                    ; $62B1: $73
    jr nz, jr_01E_6326                            ; $62B2: $20 $72

    ld l, a                                       ; $62B4: $6F
    ld [hl], l                                    ; $62B5: $75
    ld h, a                                       ; $62B6: $67
    ld l, b                                       ; $62B7: $68
    rst $38                                       ; $62B8: $FF
    ld h, c                                       ; $62B9: $61

jr_01E_62BA:
    ld l, [hl]                                    ; $62BA: $6E
    ld h, h                                       ; $62BB: $64
    jr nz, jr_01E_6327                            ; $62BC: $20 $69

    ld [hl], h                                    ; $62BE: $74
    ld h, e                                       ; $62BF: $63
    ld l, b                                       ; $62C0: $68
    ld a, c                                       ; $62C1: $79
    ld l, $FE                                     ; $62C2: $2E $FE
    db $FD                                        ; $62C4: $FD
    sbc d                                         ; $62C5: $9A
    ld b, d                                       ; $62C6: $42
    sbc e                                         ; $62C7: $9B
    ld a, b                                       ; $62C8: $78
    ld [hl], b                                    ; $62C9: $70
    sbc a                                         ; $62CA: $9F
    ld c, l                                       ; $62CB: $4D
    ld h, l                                       ; $62CC: $65
    ld l, h                                       ; $62CD: $6C
    ld [hl], h                                    ; $62CE: $74
    ld a, c                                       ; $62CF: $79
    ld l, $FE                                     ; $62D0: $2E $FE
    db $FD                                        ; $62D2: $FD
    sbc d                                         ; $62D3: $9A
    ld b, d                                       ; $62D4: $42

jr_01E_62D5:
    sbc e                                         ; $62D5: $9B
    ld a, b                                       ; $62D6: $78
    ld [hl], b                                    ; $62D7: $70
    sbc a                                         ; $62D8: $9F
    ld c, h                                       ; $62D9: $4C
    ld l, a                                       ; $62DA: $6F
    ld [hl], h                                    ; $62DB: $74
    daa                                           ; $62DC: $27
    ld [hl], e                                    ; $62DD: $73
    jr nz, jr_01E_634F                            ; $62DE: $20 $6F

    ld h, [hl]                                    ; $62E0: $66
    jr nz, jr_01E_6345                            ; $62E1: $20 $62

    ld l, c                                       ; $62E3: $69
    ld h, a                                       ; $62E4: $67
    rst $38                                       ; $62E5: $FF
    ld [hl], e                                    ; $62E6: $73
    ld [hl], l                                    ; $62E7: $75
    ld l, h                                       ; $62E8: $6C
    ld h, [hl]                                    ; $62E9: $66
    ld [hl], l                                    ; $62EA: $75
    ld [hl], d                                    ; $62EB: $72
    jr nz, jr_01E_6361                            ; $62EC: $20 $73

    ld [hl], b                                    ; $62EE: $70
    ld h, l                                       ; $62EF: $65
    ld [hl], a                                    ; $62F0: $77
    ld l, c                                       ; $62F1: $69
    ld l, [hl]                                    ; $62F2: $6E
    ld h, a                                       ; $62F3: $67
    cp $76                                        ; $62F4: $FE $76
    ld h, l                                       ; $62F6: $65
    ld l, [hl]                                    ; $62F7: $6E
    ld [hl], h                                    ; $62F8: $74
    ld [hl], e                                    ; $62F9: $73
    jr nz, @+$71                                  ; $62FA: $20 $6F

    ld [hl], l                                    ; $62FC: $75
    ld [hl], h                                    ; $62FD: $74
    rst $38                                       ; $62FE: $FF
    ld [hl], h                                    ; $62FF: $74
    ld l, b                                       ; $6300: $68
    ld h, l                                       ; $6301: $65
    ld [hl], d                                    ; $6302: $72
    ld h, l                                       ; $6303: $65
    ld l, $FE                                     ; $6304: $2E $FE
    ld e, c                                       ; $6306: $59
    ld [hl], l                                    ; $6307: $75
    ld [hl], b                                    ; $6308: $70
    ld l, $FE                                     ; $6309: $2E $FE
    db $FD                                        ; $630B: $FD
    sbc d                                         ; $630C: $9A
    ld b, d                                       ; $630D: $42
    sbc e                                         ; $630E: $9B
    ld a, b                                       ; $630F: $78
    ld [hl], b                                    ; $6310: $70
    sbc a                                         ; $6311: $9F
    ld c, l                                       ; $6312: $4D
    ld [hl], l                                    ; $6313: $75
    ld [hl], e                                    ; $6314: $73
    ld [hl], h                                    ; $6315: $74
    daa                                           ; $6316: $27
    halt                                          ; $6317: $76
    ld h, l                                       ; $6318: $65
    jr nz, jr_01E_6382                            ; $6319: $20 $67

    ld l, a                                       ; $631B: $6F
    ld [hl], h                                    ; $631C: $74
    ld [hl], h                                    ; $631D: $74
    ld h, l                                       ; $631E: $65
    ld l, [hl]                                    ; $631F: $6E
    rst $38                                       ; $6320: $FF
    ld h, c                                       ; $6321: $61
    jr nz, jr_01E_6386                            ; $6322: $20 $62

    ld h, c                                       ; $6324: $61
    ld [hl], d                                    ; $6325: $72

jr_01E_6326:
    ld h, a                                       ; $6326: $67

jr_01E_6327:
    ld h, c                                       ; $6327: $61
    ld l, c                                       ; $6328: $69
    ld l, [hl]                                    ; $6329: $6E
    jr nz, jr_01E_639B                            ; $632A: $20 $6F

    ld l, [hl]                                    ; $632C: $6E
    cp $74                                        ; $632D: $FE $74
    ld l, b                                       ; $632F: $68
    ld l, c                                       ; $6330: $69
    ld [hl], e                                    ; $6331: $73
    jr nz, jr_01E_63A6                            ; $6332: $20 $72

    ld h, l                                       ; $6334: $65
    ld h, c                                       ; $6335: $61
    ld l, h                                       ; $6336: $6C
    rst $38                                       ; $6337: $FF
    ld h, l                                       ; $6338: $65
    ld [hl], e                                    ; $6339: $73
    ld [hl], h                                    ; $633A: $74
    ld h, c                                       ; $633B: $61
    ld [hl], h                                    ; $633C: $74
    ld h, l                                       ; $633D: $65
    ld l, $FE                                     ; $633E: $2E $FE
    db $FD                                        ; $6340: $FD
    sbc d                                         ; $6341: $9A
    ld b, d                                       ; $6342: $42
    sbc a                                         ; $6343: $9F
    ld c, h                                       ; $6344: $4C

jr_01E_6345:
    ld h, c                                       ; $6345: $61
    halt                                          ; $6346: $76
    ld h, c                                       ; $6347: $61
    ld l, [hl]                                    ; $6348: $6E
    ld h, l                                       ; $6349: $65
    ld [hl], h                                    ; $634A: $74
    ld l, c                                       ; $634B: $69
    ld h, e                                       ; $634C: $63
    ld [hl], e                                    ; $634D: $73
    ld a, [hl-]                                   ; $634E: $3A

jr_01E_634F:
    cp $61                                        ; $634F: $FE $61
    ld l, [hl]                                    ; $6351: $6E
    jr nz, jr_01E_63C3                            ; $6352: $20 $6F

    ld h, h                                       ; $6354: $64
    ld a, c                                       ; $6355: $79
    ld [hl], e                                    ; $6356: $73
    ld [hl], e                                    ; $6357: $73
    ld h, l                                       ; $6358: $65
    ld a, c                                       ; $6359: $79
    jr nz, @+$6B                                  ; $635A: $20 $69

    ld l, [hl]                                    ; $635C: $6E
    ld [hl], h                                    ; $635D: $74
    ld l, a                                       ; $635E: $6F
    rst $38                                       ; $635F: $FF
    ld [hl], h                                    ; $6360: $74

jr_01E_6361:
    ld l, b                                       ; $6361: $68
    ld h, l                                       ; $6362: $65
    jr nz, @+$6F                                  ; $6363: $20 $6D

    ld l, c                                       ; $6365: $69
    ld l, [hl]                                    ; $6366: $6E
    ld h, h                                       ; $6367: $64
    daa                                           ; $6368: $27
    ld [hl], e                                    ; $6369: $73
    jr nz, jr_01E_63D4                            ; $636A: $20 $68

    ld l, a                                       ; $636C: $6F
    ld [hl], h                                    ; $636D: $74
    inc l                                         ; $636E: $2C
    cp $6D                                        ; $636F: $FE $6D
    ld l, a                                       ; $6371: $6F
    ld l, h                                       ; $6372: $6C
    ld [hl], h                                    ; $6373: $74
    ld h, l                                       ; $6374: $65
    ld l, [hl]                                    ; $6375: $6E
    jr nz, jr_01E_63EA                            ; $6376: $20 $72

    ld h, l                                       ; $6378: $65
    ld h, a                                       ; $6379: $67
    ld l, c                                       ; $637A: $69
    ld l, a                                       ; $637B: $6F
    ld l, [hl]                                    ; $637C: $6E
    ld [hl], e                                    ; $637D: $73
    ld l, $FE                                     ; $637E: $2E $FE
    db $FD                                        ; $6380: $FD
    sbc d                                         ; $6381: $9A

jr_01E_6382:
    ld b, d                                       ; $6382: $42
    sbc e                                         ; $6383: $9B
    add hl, bc                                    ; $6384: $09
    ld b, b                                       ; $6385: $40

jr_01E_6386:
    sbc a                                         ; $6386: $9F
    ld d, e                                       ; $6387: $53
    ld l, a                                       ; $6388: $6F
    ld [hl], d                                    ; $6389: $72
    ld [hl], d                                    ; $638A: $72
    ld a, c                                       ; $638B: $79
    jr nz, jr_01E_63EF                            ; $638C: $20 $61

    ld h, d                                       ; $638E: $62
    ld l, a                                       ; $638F: $6F
    ld [hl], l                                    ; $6390: $75
    ld [hl], h                                    ; $6391: $74
    rst $38                                       ; $6392: $FF
    ld [hl], a                                    ; $6393: $77
    ld l, b                                       ; $6394: $68
    ld h, c                                       ; $6395: $61
    ld [hl], h                                    ; $6396: $74
    jr nz, jr_01E_63E2                            ; $6397: $20 $49

    jr nz, jr_01E_640E                            ; $6399: $20 $73

jr_01E_639B:
    ld h, c                                       ; $639B: $61
    ld l, c                                       ; $639C: $69
    ld h, h                                       ; $639D: $64
    cp $65                                        ; $639E: $FE $65
    ld h, c                                       ; $63A0: $61
    ld [hl], d                                    ; $63A1: $72
    ld l, h                                       ; $63A2: $6C
    ld l, c                                       ; $63A3: $69
    ld h, l                                       ; $63A4: $65
    ld [hl], d                                    ; $63A5: $72

jr_01E_63A6:
    ld l, $FE                                     ; $63A6: $2E $FE
    db $FD                                        ; $63A8: $FD
    sbc d                                         ; $63A9: $9A
    ld e, b                                       ; $63AA: $58
    ld bc, $9B42                                  ; $63AB: $01 $42 $9B
    ld a, b                                       ; $63AE: $78
    ld [hl], b                                    ; $63AF: $70
    sbc a                                         ; $63B0: $9F
    ld c, a                                       ; $63B1: $4F
    ld l, b                                       ; $63B2: $68
    jr nz, jr_01E_6423                            ; $63B3: $20 $6E

    ld l, a                                       ; $63B5: $6F
    inc l                                         ; $63B6: $2C
    jr nz, jr_01E_6402                            ; $63B7: $20 $49

    rst $38                                       ; $63B9: $FF
    ld l, a                                       ; $63BA: $6F
    halt                                          ; $63BB: $76
    ld h, l                                       ; $63BC: $65
    ld [hl], d                                    ; $63BD: $72
    ld [hl], e                                    ; $63BE: $73
    ld l, h                                       ; $63BF: $6C
    ld h, l                                       ; $63C0: $65
    ld [hl], b                                    ; $63C1: $70
    ld [hl], h                                    ; $63C2: $74

jr_01E_63C3:
    ld hl, $5420                                  ; $63C3: $21 $20 $54
    ld l, b                                       ; $63C6: $68
    ld h, l                                       ; $63C7: $65
    ld a, c                                       ; $63C8: $79
    cp $73                                        ; $63C9: $FE $73
    ld [hl], h                                    ; $63CB: $74
    ld h, c                                       ; $63CC: $61
    ld [hl], d                                    ; $63CD: $72
    ld [hl], h                                    ; $63CE: $74
    ld h, l                                       ; $63CF: $65
    ld h, h                                       ; $63D0: $64
    jr nz, @+$76                                  ; $63D1: $20 $74

    ld l, b                                       ; $63D3: $68

jr_01E_63D4:
    ld h, l                                       ; $63D4: $65
    rst $38                                       ; $63D5: $FF
    ld [hl], b                                    ; $63D6: $70
    ld h, c                                       ; $63D7: $61
    ld [hl], d                                    ; $63D8: $72
    ld [hl], h                                    ; $63D9: $74
    ld a, c                                       ; $63DA: $79
    jr nz, jr_01E_6454                            ; $63DB: $20 $77

    ld l, c                                       ; $63DD: $69
    ld [hl], h                                    ; $63DE: $74
    ld l, b                                       ; $63DF: $68
    ld l, a                                       ; $63E0: $6F
    ld [hl], l                                    ; $63E1: $75

jr_01E_63E2:
    ld [hl], h                                    ; $63E2: $74
    cp $6D                                        ; $63E3: $FE $6D
    ld h, l                                       ; $63E5: $65
    ld hl, $FDFE                                  ; $63E6: $21 $FE $FD
    sbc d                                         ; $63E9: $9A

jr_01E_63EA:
    rlca                                          ; $63EA: $07
    nop                                           ; $63EB: $00
    add c                                         ; $63EC: $81
    ld e, l                                       ; $63ED: $5D
    add hl, bc                                    ; $63EE: $09

jr_01E_63EF:
    nop                                           ; $63EF: $00
    jr nz, @-$49                                  ; $63F0: $20 $B5

    ld d, b                                       ; $63F2: $50
    ld b, d                                       ; $63F3: $42
    sbc e                                         ; $63F4: $9B
    add hl, bc                                    ; $63F5: $09
    ld b, b                                       ; $63F6: $40
    sbc a                                         ; $63F7: $9F
    ld c, b                                       ; $63F8: $48
    ld h, c                                       ; $63F9: $61
    jr nz, jr_01E_6464                            ; $63FA: $20 $68

    ld h, c                                       ; $63FC: $61
    jr nz, jr_01E_6467                            ; $63FD: $20 $68

    ld h, c                                       ; $63FF: $61
    ld l, $2E                                     ; $6400: $2E $2E

jr_01E_6402:
    ld l, $20                                     ; $6402: $2E $20
    ld l, c                                       ; $6404: $69
    ld h, [hl]                                    ; $6405: $66
    rst $38                                       ; $6406: $FF
    ld a, c                                       ; $6407: $79
    ld l, a                                       ; $6408: $6F
    ld [hl], l                                    ; $6409: $75
    jr nz, jr_01E_6483                            ; $640A: $20 $77

    ld h, c                                       ; $640C: $61
    ld l, [hl]                                    ; $640D: $6E

jr_01E_640E:
    ld [hl], h                                    ; $640E: $74
    jr nz, jr_01E_6479                            ; $640F: $20 $68

    ld h, l                                       ; $6411: $65
    ld l, h                                       ; $6412: $6C
    ld [hl], b                                    ; $6413: $70
    cp $66                                        ; $6414: $FE $66
    ld l, c                                       ; $6416: $69
    ld l, [hl]                                    ; $6417: $6E
    ld h, h                                       ; $6418: $64
    ld l, c                                       ; $6419: $69
    ld l, [hl]                                    ; $641A: $6E
    ld h, a                                       ; $641B: $67
    jr nz, jr_01E_647F                            ; $641C: $20 $61

    jr nz, jr_01E_646C                            ; $641E: $20 $4C

    ld h, c                                       ; $6420: $61
    halt                                          ; $6421: $76
    ld h, c                                       ; $6422: $61

jr_01E_6423:
    rst $38                                       ; $6423: $FF
    ld b, c                                       ; $6424: $41
    ld [hl], d                                    ; $6425: $72
    ld h, d                                       ; $6426: $62
    ld l, a                                       ; $6427: $6F
    ld l, h                                       ; $6428: $6C
    ld l, h                                       ; $6429: $6C
    inc l                                         ; $642A: $2C
    jr nz, jr_01E_6476                            ; $642B: $20 $49

    jr nz, jr_01E_6493                            ; $642D: $20 $64

    ld l, a                                       ; $642F: $6F
    ld [hl], l                                    ; $6430: $75
    ld h, d                                       ; $6431: $62
    ld [hl], h                                    ; $6432: $74
    cp $79                                        ; $6433: $FE $79
    ld l, a                                       ; $6435: $6F
    ld [hl], l                                    ; $6436: $75
    daa                                           ; $6437: $27
    ld l, h                                       ; $6438: $6C
    ld l, h                                       ; $6439: $6C
    jr nz, jr_01E_64A3                            ; $643A: $20 $67

    ld h, l                                       ; $643C: $65
    ld [hl], h                                    ; $643D: $74
    jr nz, @+$6B                                  ; $643E: $20 $69

    ld [hl], h                                    ; $6440: $74
    rst $38                                       ; $6441: $FF
    ld h, [hl]                                    ; $6442: $66
    ld [hl], d                                    ; $6443: $72
    ld l, a                                       ; $6444: $6F
    ld l, l                                       ; $6445: $6D
    jr nz, @+$63                                  ; $6446: $20 $61

    ld l, [hl]                                    ; $6448: $6E
    ld a, c                                       ; $6449: $79
    ld l, a                                       ; $644A: $6F
    ld l, [hl]                                    ; $644B: $6E
    ld h, l                                       ; $644C: $65
    jr nz, jr_01E_64B8                            ; $644D: $20 $69

    ld l, [hl]                                    ; $644F: $6E
    cp $74                                        ; $6450: $FE $74
    ld l, a                                       ; $6452: $6F
    ld [hl], a                                    ; $6453: $77

jr_01E_6454:
    ld l, [hl]                                    ; $6454: $6E
    ld l, $20                                     ; $6455: $2E $20
    ld c, [hl]                                    ; $6457: $4E
    ld l, a                                       ; $6458: $6F
    ld h, d                                       ; $6459: $62
    ld l, a                                       ; $645A: $6F
    ld h, h                                       ; $645B: $64
    ld a, c                                       ; $645C: $79
    cp $65                                        ; $645D: $FE $65
    ld a, b                                       ; $645F: $78
    ld h, e                                       ; $6460: $63
    ld h, l                                       ; $6461: $65
    ld [hl], b                                    ; $6462: $70
    ld [hl], h                                    ; $6463: $74

jr_01E_6464:
    jr nz, jr_01E_64BC                            ; $6464: $20 $56

    ld h, c                                       ; $6466: $61

jr_01E_6467:
    ld l, h                                       ; $6467: $6C
    ld l, e                                       ; $6468: $6B
    ld h, c                                       ; $6469: $61
    ld l, [hl]                                    ; $646A: $6E
    rst $38                                       ; $646B: $FF

jr_01E_646C:
    ld l, b                                       ; $646C: $68
    ld h, c                                       ; $646D: $61
    ld [hl], e                                    ; $646E: $73
    jr nz, jr_01E_64D6                            ; $646F: $20 $65

    halt                                          ; $6471: $76
    ld h, l                                       ; $6472: $65
    ld [hl], d                                    ; $6473: $72
    jr nz, jr_01E_64D9                            ; $6474: $20 $63

jr_01E_6476:
    ld h, c                                       ; $6476: $61
    ld [hl], l                                    ; $6477: $75
    ld h, a                                       ; $6478: $67

jr_01E_6479:
    ld l, b                                       ; $6479: $68
    ld [hl], h                                    ; $647A: $74
    cp $6F                                        ; $647B: $FE $6F
    ld l, [hl]                                    ; $647D: $6E
    ld h, l                                       ; $647E: $65

jr_01E_647F:
    ld l, $FE                                     ; $647F: $2E $FE
    db $FD                                        ; $6481: $FD
    sbc d                                         ; $6482: $9A

jr_01E_6483:
    ld e, b                                       ; $6483: $58
    ld bc, $9B42                                  ; $6484: $01 $42 $9B
    add hl, bc                                    ; $6487: $09
    ld b, b                                       ; $6488: $40
    sbc a                                         ; $6489: $9F
    ld e, c                                       ; $648A: $59
    ld c, a                                       ; $648B: $4F
    ld d, l                                       ; $648C: $55
    ld hl, $4920                                  ; $648D: $21 $20 $49
    jr nz, @+$6D                                  ; $6490: $20 $6B

    ld l, [hl]                                    ; $6492: $6E

jr_01E_6493:
    ld h, l                                       ; $6493: $65
    ld [hl], a                                    ; $6494: $77
    jr nz, jr_01E_6510                            ; $6495: $20 $79

    ld l, a                                       ; $6497: $6F
    ld [hl], l                                    ; $6498: $75
    rst $38                                       ; $6499: $FF
    ld [hl], e                                    ; $649A: $73
    ld [hl], h                                    ; $649B: $74
    ld l, a                                       ; $649C: $6F
    ld l, h                                       ; $649D: $6C
    ld h, l                                       ; $649E: $65
    jr nz, jr_01E_6515                            ; $649F: $20 $74

    ld l, b                                       ; $64A1: $68
    ld h, c                                       ; $64A2: $61

jr_01E_64A3:
    ld [hl], h                                    ; $64A3: $74
    jr nz, jr_01E_6511                            ; $64A4: $20 $6B

    ld h, l                                       ; $64A6: $65
    ld a, c                                       ; $64A7: $79
    ld l, $FE                                     ; $64A8: $2E $FE
    ld b, a                                       ; $64AA: $47
    ld h, l                                       ; $64AB: $65
    ld [hl], h                                    ; $64AC: $74
    jr nz, jr_01E_651E                            ; $64AD: $20 $6F

    ld [hl], l                                    ; $64AF: $75
    ld [hl], h                                    ; $64B0: $74
    jr nz, @+$71                                  ; $64B1: $20 $6F

    ld h, [hl]                                    ; $64B3: $66
    jr nz, jr_01E_6523                            ; $64B4: $20 $6D

    ld a, c                                       ; $64B6: $79
    rst $38                                       ; $64B7: $FF

jr_01E_64B8:
    ld [hl], h                                    ; $64B8: $74
    ld l, a                                       ; $64B9: $6F
    ld [hl], a                                    ; $64BA: $77
    ld l, [hl]                                    ; $64BB: $6E

jr_01E_64BC:
    ld hl, $5920                                  ; $64BC: $21 $20 $59
    ld l, a                                       ; $64BF: $6F
    ld [hl], l                                    ; $64C0: $75
    jr nz, @+$6F                                  ; $64C1: $20 $6D

    ld h, c                                       ; $64C3: $61
    ld l, e                                       ; $64C4: $6B
    ld h, l                                       ; $64C5: $65
    cp $6D                                        ; $64C6: $FE $6D
    ld h, l                                       ; $64C8: $65
    jr nz, jr_01E_653E                            ; $64C9: $20 $73

    ld l, c                                       ; $64CB: $69
    ld h, e                                       ; $64CC: $63
    ld l, e                                       ; $64CD: $6B
    ld hl, $FDFE                                  ; $64CE: $21 $FE $FD
    sbc d                                         ; $64D1: $9A
    ld e, b                                       ; $64D2: $58
    ld bc, $9B42                                  ; $64D3: $01 $42 $9B

jr_01E_64D6:
    add hl, bc                                    ; $64D6: $09
    ld b, b                                       ; $64D7: $40
    sbc a                                         ; $64D8: $9F

jr_01E_64D9:
    ld c, b                                       ; $64D9: $48
    ld h, c                                       ; $64DA: $61
    halt                                          ; $64DB: $76
    ld h, l                                       ; $64DC: $65
    ld l, [hl]                                    ; $64DD: $6E
    daa                                           ; $64DE: $27
    ld [hl], h                                    ; $64DF: $74
    jr nz, @+$7B                                  ; $64E0: $20 $79

    ld l, a                                       ; $64E2: $6F
    ld [hl], l                                    ; $64E3: $75
    rst $38                                       ; $64E4: $FF
    ld h, e                                       ; $64E5: $63
    ld l, h                                       ; $64E6: $6C
    ld l, a                                       ; $64E7: $6F
    ld [hl], e                                    ; $64E8: $73
    ld h, l                                       ; $64E9: $65
    ld h, h                                       ; $64EA: $64
    jr nz, jr_01E_6561                            ; $64EB: $20 $74

    ld l, b                                       ; $64ED: $68
    ld h, c                                       ; $64EE: $61
    ld [hl], h                                    ; $64EF: $74
    cp $67                                        ; $64F0: $FE $67
    ld h, l                                       ; $64F2: $65
    ld a, c                                       ; $64F3: $79
    ld [hl], e                                    ; $64F4: $73
    ld h, l                                       ; $64F5: $65
    ld [hl], d                                    ; $64F6: $72
    jr nz, jr_01E_6572                            ; $64F7: $20 $79

    ld h, l                                       ; $64F9: $65
    ld [hl], h                                    ; $64FA: $74
    ccf                                           ; $64FB: $3F
    cp $FD                                        ; $64FC: $FE $FD
    sbc d                                         ; $64FE: $9A
    ld e, b                                       ; $64FF: $58
    ld bc, $9B42                                  ; $6500: $01 $42 $9B
    add hl, bc                                    ; $6503: $09
    ld b, b                                       ; $6504: $40
    sbc a                                         ; $6505: $9F
    ld b, a                                       ; $6506: $47
    ld l, a                                       ; $6507: $6F
    jr nz, jr_01E_656B                            ; $6508: $20 $61

    ld [hl], a                                    ; $650A: $77
    ld h, c                                       ; $650B: $61
    ld a, c                                       ; $650C: $79
    ld l, $20                                     ; $650D: $2E $20
    ld c, c                                       ; $650F: $49

jr_01E_6510:
    daa                                           ; $6510: $27

jr_01E_6511:
    ld l, l                                       ; $6511: $6D
    rst $38                                       ; $6512: $FF
    ld [hl], h                                    ; $6513: $74
    ld [hl], d                                    ; $6514: $72

jr_01E_6515:
    ld a, c                                       ; $6515: $79
    ld l, c                                       ; $6516: $69
    ld l, [hl]                                    ; $6517: $6E
    ld h, a                                       ; $6518: $67
    jr nz, jr_01E_658F                            ; $6519: $20 $74

    ld l, a                                       ; $651B: $6F
    jr nz, @+$74                                  ; $651C: $20 $72

jr_01E_651E:
    ld h, l                                       ; $651E: $65
    ld h, c                                       ; $651F: $61
    ld h, h                                       ; $6520: $64
    ld l, $FE                                     ; $6521: $2E $FE

jr_01E_6523:
    db $FD                                        ; $6523: $FD
    sbc d                                         ; $6524: $9A
    ld e, b                                       ; $6525: $58
    ld bc, $9B42                                  ; $6526: $01 $42 $9B
    add hl, bc                                    ; $6529: $09
    ld b, b                                       ; $652A: $40
    sbc a                                         ; $652B: $9F
    ld e, c                                       ; $652C: $59
    ld l, a                                       ; $652D: $6F
    ld [hl], l                                    ; $652E: $75
    jr nz, jr_01E_659E                            ; $652F: $20 $6D

    ld h, c                                       ; $6531: $61
    ld h, h                                       ; $6532: $64
    ld h, l                                       ; $6533: $65
    jr nz, @+$6B                                  ; $6534: $20 $69

    ld [hl], h                                    ; $6536: $74
    ld hl, $57FF                                  ; $6537: $21 $FF $57
    ld l, a                                       ; $653A: $6F
    ld l, [hl]                                    ; $653B: $6E
    ld h, h                                       ; $653C: $64
    ld h, l                                       ; $653D: $65

jr_01E_653E:
    ld [hl], d                                    ; $653E: $72
    ld h, [hl]                                    ; $653F: $66
    ld [hl], l                                    ; $6540: $75
    ld l, h                                       ; $6541: $6C
    ld hl, $50FE                                  ; $6542: $21 $FE $50
    ld l, h                                       ; $6545: $6C
    ld h, l                                       ; $6546: $65
    ld h, c                                       ; $6547: $61
    ld [hl], e                                    ; $6548: $73
    ld h, l                                       ; $6549: $65
    jr nz, @+$75                                  ; $654A: $20 $73

    ld [hl], h                                    ; $654C: $74
    ld h, c                                       ; $654D: $61
    ld a, c                                       ; $654E: $79
    jr nz, @+$6B                                  ; $654F: $20 $69

    ld l, [hl]                                    ; $6551: $6E
    rst $38                                       ; $6552: $FF
    ld [hl], h                                    ; $6553: $74
    ld l, a                                       ; $6554: $6F
    ld [hl], a                                    ; $6555: $77
    ld l, [hl]                                    ; $6556: $6E
    jr nz, @+$63                                  ; $6557: $20 $61

    ld [hl], e                                    ; $6559: $73
    jr nz, jr_01E_65C8                            ; $655A: $20 $6C

    ld l, a                                       ; $655C: $6F
    ld l, [hl]                                    ; $655D: $6E
    ld h, a                                       ; $655E: $67
    cp $61                                        ; $655F: $FE $61

jr_01E_6561:
    ld [hl], e                                    ; $6561: $73
    jr nz, jr_01E_65DD                            ; $6562: $20 $79

    ld l, a                                       ; $6564: $6F
    ld [hl], l                                    ; $6565: $75
    daa                                           ; $6566: $27
    ld h, h                                       ; $6567: $64
    jr nz, jr_01E_65D6                            ; $6568: $20 $6C

    ld l, c                                       ; $656A: $69

jr_01E_656B:
    ld l, e                                       ; $656B: $6B
    ld h, l                                       ; $656C: $65
    ld l, $FE                                     ; $656D: $2E $FE
    db $FD                                        ; $656F: $FD
    sbc d                                         ; $6570: $9A
    ld e, b                                       ; $6571: $58

jr_01E_6572:
    ld bc, $9B42                                  ; $6572: $01 $42 $9B
    ld a, b                                       ; $6575: $78
    ld [hl], b                                    ; $6576: $70
    sbc a                                         ; $6577: $9F
    ld d, h                                       ; $6578: $54
    ld l, b                                       ; $6579: $68
    ld h, c                                       ; $657A: $61
    ld [hl], h                                    ; $657B: $74
    jr nz, jr_01E_65E9                            ; $657C: $20 $6B

    ld h, l                                       ; $657E: $65
    ld a, c                                       ; $657F: $79
    jr nz, @+$6F                                  ; $6580: $20 $6D

    ld [hl], l                                    ; $6582: $75
    ld [hl], e                                    ; $6583: $73
    ld [hl], h                                    ; $6584: $74
    rst $38                                       ; $6585: $FF
    ld h, d                                       ; $6586: $62
    ld h, l                                       ; $6587: $65
    jr nz, jr_01E_65EB                            ; $6588: $20 $61

    ld [hl], d                                    ; $658A: $72
    ld l, a                                       ; $658B: $6F
    ld [hl], l                                    ; $658C: $75
    ld l, [hl]                                    ; $658D: $6E
    ld h, h                                       ; $658E: $64

jr_01E_658F:
    jr nz, jr_01E_65F9                            ; $658F: $20 $68

    ld h, l                                       ; $6591: $65
    ld [hl], d                                    ; $6592: $72
    ld h, l                                       ; $6593: $65
    cp $73                                        ; $6594: $FE $73
    ld l, a                                       ; $6596: $6F
    ld l, l                                       ; $6597: $6D
    ld h, l                                       ; $6598: $65
    ld [hl], a                                    ; $6599: $77
    ld l, b                                       ; $659A: $68
    ld h, l                                       ; $659B: $65
    ld [hl], d                                    ; $659C: $72
    ld h, l                                       ; $659D: $65

jr_01E_659E:
    ld l, $2E                                     ; $659E: $2E $2E
    ld l, $FE                                     ; $65A0: $2E $FE
    db $FD                                        ; $65A2: $FD
    sbc d                                         ; $65A3: $9A
    ld e, b                                       ; $65A4: $58
    inc bc                                        ; $65A5: $03
    ld b, d                                       ; $65A6: $42
    sbc a                                         ; $65A7: $9F
    ld d, h                                       ; $65A8: $54
    ld l, a                                       ; $65A9: $6F
    ld l, [hl]                                    ; $65AA: $6E
    ld a, c                                       ; $65AB: $79
    jr nz, jr_01E_6615                            ; $65AC: $20 $67

    ld l, a                                       ; $65AE: $6F
    ld [hl], h                                    ; $65AF: $74
    rst $38                                       ; $65B0: $FF
    ld b, c                                       ; $65B1: $41
    ld [hl], e                                    ; $65B2: $73
    ld l, b                                       ; $65B3: $68
    ld h, a                                       ; $65B4: $67
    ld h, c                                       ; $65B5: $61
    ld [hl], d                                    ; $65B6: $72
    daa                                           ; $65B7: $27
    ld [hl], e                                    ; $65B8: $73
    jr nz, jr_01E_6606                            ; $65B9: $20 $4B

    ld h, l                                       ; $65BB: $65
    ld a, c                                       ; $65BC: $79
    ld hl, $FDFE                                  ; $65BD: $21 $FE $FD
    sbc d                                         ; $65C0: $9A
    ld e, b                                       ; $65C1: $58
    ld [bc], a                                    ; $65C2: $02
    dec bc                                        ; $65C3: $0B
    ld [bc], a                                    ; $65C4: $02
    ld b, d                                       ; $65C5: $42
    sbc e                                         ; $65C6: $9B
    add hl, de                                    ; $65C7: $19

jr_01E_65C8:
    ld c, [hl]                                    ; $65C8: $4E
    sbc a                                         ; $65C9: $9F
    ld c, b                                       ; $65CA: $48
    ld h, l                                       ; $65CB: $65
    ld a, c                                       ; $65CC: $79
    inc l                                         ; $65CD: $2C
    jr nz, @+$79                                  ; $65CE: $20 $77

    ld l, b                                       ; $65D0: $68
    ld h, c                                       ; $65D1: $61
    ld [hl], h                                    ; $65D2: $74
    jr nz, jr_01E_6636                            ; $65D3: $20 $61

    ld [hl], d                                    ; $65D5: $72

jr_01E_65D6:
    ld h, l                                       ; $65D6: $65
    rst $38                                       ; $65D7: $FF
    ld a, c                                       ; $65D8: $79
    ld l, a                                       ; $65D9: $6F
    ld [hl], l                                    ; $65DA: $75
    jr nz, jr_01E_6641                            ; $65DB: $20 $64

jr_01E_65DD:
    ld l, a                                       ; $65DD: $6F
    ld l, c                                       ; $65DE: $69
    ld l, [hl]                                    ; $65DF: $6E
    ld h, a                                       ; $65E0: $67
    jr nz, jr_01E_664B                            ; $65E1: $20 $68

    ld h, l                                       ; $65E3: $65
    ld [hl], d                                    ; $65E4: $72
    ld h, l                                       ; $65E5: $65
    ccf                                           ; $65E6: $3F
    cp $FD                                        ; $65E7: $FE $FD

jr_01E_65E9:
    sbc e                                         ; $65E9: $9B
    ld a, b                                       ; $65EA: $78

jr_01E_65EB:
    ld [hl], b                                    ; $65EB: $70
    sbc a                                         ; $65EC: $9F
    ld c, c                                       ; $65ED: $49
    ld l, $2E                                     ; $65EE: $2E $2E

jr_01E_65F0:
    ld l, $20                                     ; $65F0: $2E $20
    ld [hl], l                                    ; $65F2: $75
    ld l, b                                       ; $65F3: $68
    ld l, $2E                                     ; $65F4: $2E $2E
    ld l, $FF                                     ; $65F6: $2E $FF
    ld h, l                                       ; $65F8: $65

jr_01E_65F9:
    ld [hl], d                                    ; $65F9: $72
    ld [hl], d                                    ; $65FA: $72
    ld l, $2E                                     ; $65FB: $2E $2E
    ld l, $FE                                     ; $65FD: $2E $FE
    db $FD                                        ; $65FF: $FD
    sbc e                                         ; $6600: $9B
    add hl, de                                    ; $6601: $19
    ld c, [hl]                                    ; $6602: $4E
    sbc a                                         ; $6603: $9F
    ld c, a                                       ; $6604: $4F
    ld l, b                                       ; $6605: $68

jr_01E_6606:
    inc l                                         ; $6606: $2C
    jr nz, jr_01E_6652                            ; $6607: $20 $49

    jr nz, jr_01E_6672                            ; $6609: $20 $67

    ld h, l                                       ; $660B: $65
    ld [hl], h                                    ; $660C: $74
    jr nz, jr_01E_6678                            ; $660D: $20 $69

    ld [hl], h                                    ; $660F: $74
    ld l, $FE                                     ; $6610: $2E $FE
    ld e, c                                       ; $6612: $59
    ld l, a                                       ; $6613: $6F
    ld [hl], l                                    ; $6614: $75

jr_01E_6615:
    daa                                           ; $6615: $27
    ld [hl], d                                    ; $6616: $72
    ld h, l                                       ; $6617: $65
    jr nz, @+$76                                  ; $6618: $20 $74

    ld h, c                                       ; $661A: $61
    ld l, e                                       ; $661B: $6B
    ld l, c                                       ; $661C: $69
    ld l, [hl]                                    ; $661D: $6E
    ld h, a                                       ; $661E: $67
    rst $38                                       ; $661F: $FF
    ld [hl], h                                    ; $6620: $74
    ld l, b                                       ; $6621: $68
    ld h, l                                       ; $6622: $65
    jr nz, jr_01E_6690                            ; $6623: $20 $6B

    ld h, l                                       ; $6625: $65
    ld a, c                                       ; $6626: $79
    inc l                                         ; $6627: $2C
    jr nz, jr_01E_6692                            ; $6628: $20 $68

    ld [hl], l                                    ; $662A: $75
    ld l, b                                       ; $662B: $68
    ccf                                           ; $662C: $3F
    cp $44                                        ; $662D: $FE $44
    ld l, a                                       ; $662F: $6F
    ld l, [hl]                                    ; $6630: $6E
    daa                                           ; $6631: $27
    ld [hl], h                                    ; $6632: $74
    jr nz, jr_01E_66AC                            ; $6633: $20 $77

    ld l, a                                       ; $6635: $6F

jr_01E_6636:
    ld [hl], d                                    ; $6636: $72
    ld [hl], d                                    ; $6637: $72
    ld a, c                                       ; $6638: $79
    inc l                                         ; $6639: $2C
    jr nz, @+$4B                                  ; $663A: $20 $49

    cp $77                                        ; $663C: $FE $77
    ld l, a                                       ; $663E: $6F
    ld l, [hl]                                    ; $663F: $6E
    daa                                           ; $6640: $27

jr_01E_6641:
    ld [hl], h                                    ; $6641: $74
    jr nz, jr_01E_66B6                            ; $6642: $20 $72

    ld h, c                                       ; $6644: $61
    ld [hl], h                                    ; $6645: $74
    jr nz, @+$7B                                  ; $6646: $20 $79

    ld l, a                                       ; $6648: $6F
    ld [hl], l                                    ; $6649: $75
    rst $38                                       ; $664A: $FF

jr_01E_664B:
    ld l, a                                       ; $664B: $6F
    ld [hl], l                                    ; $664C: $75
    ld [hl], h                                    ; $664D: $74
    ld l, $FE                                     ; $664E: $2E $FE
    db $FD                                        ; $6650: $FD
    sbc d                                         ; $6651: $9A

jr_01E_6652:
    ld b, b                                       ; $6652: $40
    jr nz, jr_01E_65F0                            ; $6653: $20 $9B

    add hl, de                                    ; $6655: $19
    ld c, [hl]                                    ; $6656: $4E
    sbc a                                         ; $6657: $9F
    ld c, c                                       ; $6658: $49
    ld l, [hl]                                    ; $6659: $6E
    jr nz, jr_01E_66C2                            ; $665A: $20 $66

    ld h, c                                       ; $665C: $61
    ld h, e                                       ; $665D: $63
    ld [hl], h                                    ; $665E: $74
    inc l                                         ; $665F: $2C
    jr nz, jr_01E_66CB                            ; $6660: $20 $69

    ld h, [hl]                                    ; $6662: $66
    jr nz, jr_01E_66AE                            ; $6663: $20 $49

    rst $38                                       ; $6665: $FF
    ld [hl], a                                    ; $6666: $77
    ld h, l                                       ; $6667: $65
    ld [hl], d                                    ; $6668: $72
    ld h, l                                       ; $6669: $65
    jr nz, jr_01E_66E5                            ; $666A: $20 $79

    ld l, a                                       ; $666C: $6F
    ld [hl], l                                    ; $666D: $75
    inc l                                         ; $666E: $2C
    jr nz, jr_01E_66BA                            ; $666F: $20 $49

    daa                                           ; $6671: $27

jr_01E_6672:
    ld h, h                                       ; $6672: $64
    cp $68                                        ; $6673: $FE $68
    ld l, a                                       ; $6675: $6F
    ld l, h                                       ; $6676: $6C
    ld h, h                                       ; $6677: $64

jr_01E_6678:
    jr nz, jr_01E_66E9                            ; $6678: $20 $6F

    ld l, [hl]                                    ; $667A: $6E
    jr nz, jr_01E_66F1                            ; $667B: $20 $74

    ld l, a                                       ; $667D: $6F
    rst $38                                       ; $667E: $FF
    ld [hl], h                                    ; $667F: $74
    ld l, b                                       ; $6680: $68
    ld h, c                                       ; $6681: $61
    ld [hl], h                                    ; $6682: $74
    ld hl, $5420                                  ; $6683: $21 $20 $54
    ld l, b                                       ; $6686: $68
    ld h, c                                       ; $6687: $61
    ld [hl], h                                    ; $6688: $74
    jr nz, jr_01E_66F6                            ; $6689: $20 $6B

    ld h, l                                       ; $668B: $65
    ld a, c                                       ; $668C: $79
    cp $75                                        ; $668D: $FE $75
    ld l, [hl]                                    ; $668F: $6E

jr_01E_6690:
    ld l, h                                       ; $6690: $6C
    ld l, a                                       ; $6691: $6F

jr_01E_6692:
    ld h, e                                       ; $6692: $63
    ld l, e                                       ; $6693: $6B
    ld [hl], e                                    ; $6694: $73
    jr nz, @+$63                                  ; $6695: $20 $61

    ld l, h                                       ; $6697: $6C
    ld l, l                                       ; $6698: $6D
    ld l, a                                       ; $6699: $6F
    ld [hl], e                                    ; $669A: $73
    ld [hl], h                                    ; $669B: $74
    rst $38                                       ; $669C: $FF
    ld h, l                                       ; $669D: $65
    halt                                          ; $669E: $76
    ld h, l                                       ; $669F: $65
    ld [hl], d                                    ; $66A0: $72
    ld a, c                                       ; $66A1: $79
    jr nz, jr_01E_6710                            ; $66A2: $20 $6C

    ld l, a                                       ; $66A4: $6F
    ld h, e                                       ; $66A5: $63
    ld l, e                                       ; $66A6: $6B
    ld h, l                                       ; $66A7: $65
    ld h, h                                       ; $66A8: $64
    cp $64                                        ; $66A9: $FE $64
    ld l, a                                       ; $66AB: $6F

jr_01E_66AC:
    ld l, a                                       ; $66AC: $6F
    ld [hl], d                                    ; $66AD: $72

jr_01E_66AE:
    jr nz, jr_01E_6719                            ; $66AE: $20 $69

    ld l, [hl]                                    ; $66B0: $6E
    jr nz, jr_01E_6727                            ; $66B1: $20 $74

    ld l, b                                       ; $66B3: $68
    ld h, l                                       ; $66B4: $65
    rst $38                                       ; $66B5: $FF

jr_01E_66B6:
    ld [hl], a                                    ; $66B6: $77
    ld l, a                                       ; $66B7: $6F
    ld [hl], d                                    ; $66B8: $72
    ld l, h                                       ; $66B9: $6C

jr_01E_66BA:
    ld h, h                                       ; $66BA: $64
    ld hl, $5420                                  ; $66BB: $21 $20 $54
    ld l, a                                       ; $66BE: $6F
    ld l, a                                       ; $66BF: $6F
    cp $62                                        ; $66C0: $FE $62

jr_01E_66C2:
    ld h, c                                       ; $66C2: $61
    ld h, h                                       ; $66C3: $64
    jr nz, jr_01E_673F                            ; $66C4: $20 $79

    ld l, a                                       ; $66C6: $6F
    ld [hl], l                                    ; $66C7: $75
    jr nz, jr_01E_6731                            ; $66C8: $20 $67

    ld l, a                                       ; $66CA: $6F

jr_01E_66CB:
    ld [hl], h                                    ; $66CB: $74
    rst $38                                       ; $66CC: $FF
    ld l, c                                       ; $66CD: $69
    ld [hl], h                                    ; $66CE: $74
    jr nz, @+$64                                  ; $66CF: $20 $62

    ld h, l                                       ; $66D1: $65
    ld h, [hl]                                    ; $66D2: $66
    ld l, a                                       ; $66D3: $6F
    ld [hl], d                                    ; $66D4: $72
    ld h, l                                       ; $66D5: $65
    jr nz, @+$6F                                  ; $66D6: $20 $6D

    ld h, l                                       ; $66D8: $65
    inc l                                         ; $66D9: $2C
    cp $62                                        ; $66DA: $FE $62
    ld [hl], l                                    ; $66DC: $75
    ld [hl], h                                    ; $66DD: $74
    jr nz, jr_01E_6754                            ; $66DE: $20 $74

    ld l, b                                       ; $66E0: $68
    ld h, c                                       ; $66E1: $61
    ld [hl], h                                    ; $66E2: $74
    daa                                           ; $66E3: $27
    ld [hl], e                                    ; $66E4: $73

jr_01E_66E5:
    rst $38                                       ; $66E5: $FF
    ld l, h                                       ; $66E6: $6C
    ld l, c                                       ; $66E7: $69
    ld h, [hl]                                    ; $66E8: $66

jr_01E_66E9:
    ld h, l                                       ; $66E9: $65
    ld l, $20                                     ; $66EA: $2E $20
    ld d, e                                       ; $66EC: $53
    ld h, l                                       ; $66ED: $65
    ld h, l                                       ; $66EE: $65
    jr nz, jr_01E_676A                            ; $66EF: $20 $79

jr_01E_66F1:
    ld h, c                                       ; $66F1: $61
    ld hl, $FDFE                                  ; $66F2: $21 $FE $FD
    sbc d                                         ; $66F5: $9A

jr_01E_66F6:
    ld e, b                                       ; $66F6: $58
    ld bc, $9B42                                  ; $66F7: $01 $42 $9B
    ld a, b                                       ; $66FA: $78
    ld [hl], b                                    ; $66FB: $70
    sbc a                                         ; $66FC: $9F
    ld c, b                                       ; $66FD: $48
    ld h, l                                       ; $66FE: $65
    ld [hl], d                                    ; $66FF: $72
    ld h, l                                       ; $6700: $65
    daa                                           ; $6701: $27
    ld [hl], e                                    ; $6702: $73
    jr nz, jr_01E_6772                            ; $6703: $20 $6D

    ld a, c                                       ; $6705: $79
    rst $38                                       ; $6706: $FF
    ld h, e                                       ; $6707: $63
    ld l, b                                       ; $6708: $68
    ld h, c                                       ; $6709: $61
    ld l, [hl]                                    ; $670A: $6E
    ld h, e                                       ; $670B: $63
    ld h, l                                       ; $670C: $65
    jr nz, jr_01E_6783                            ; $670D: $20 $74

    ld l, a                                       ; $670F: $6F

jr_01E_6710:
    cp $72                                        ; $6710: $FE $72
    ld h, l                                       ; $6712: $65
    ld [hl], h                                    ; $6713: $74
    ld [hl], l                                    ; $6714: $75
    ld [hl], d                                    ; $6715: $72
    ld l, [hl]                                    ; $6716: $6E
    jr nz, jr_01E_678D                            ; $6717: $20 $74

jr_01E_6719:
    ld l, b                                       ; $6719: $68
    ld h, c                                       ; $671A: $61
    ld [hl], h                                    ; $671B: $74
    rst $38                                       ; $671C: $FF
    ld l, e                                       ; $671D: $6B
    ld h, l                                       ; $671E: $65
    ld a, c                                       ; $671F: $79
    ld l, $2E                                     ; $6720: $2E $2E
    ld l, $FE                                     ; $6722: $2E $FE
    db $FD                                        ; $6724: $FD
    sbc d                                         ; $6725: $9A
    sbc a                                         ; $6726: $9F

jr_01E_6727:
    jr nz, jr_01E_677B                            ; $6727: $20 $52

    ld h, l                                       ; $6729: $65
    ld [hl], h                                    ; $672A: $74
    ld [hl], l                                    ; $672B: $75
    ld [hl], d                                    ; $672C: $72
    ld l, [hl]                                    ; $672D: $6E
    jr nz, jr_01E_6799                            ; $672E: $20 $69

    ld [hl], h                                    ; $6730: $74

jr_01E_6731:
    rst $38                                       ; $6731: $FF
    jr nz, jr_01E_678B                            ; $6732: $20 $57

    ld h, c                                       ; $6734: $61
    ld l, c                                       ; $6735: $69
    ld [hl], h                                    ; $6736: $74
    jr nz, @+$6E                                  ; $6737: $20 $6C

    ld l, a                                       ; $6739: $6F
    ld l, [hl]                                    ; $673A: $6E
    ld h, a                                       ; $673B: $67
    ld h, l                                       ; $673C: $65
    ld [hl], d                                    ; $673D: $72
    db $FD                                        ; $673E: $FD

jr_01E_673F:
    sbc h                                         ; $673F: $9C
    ld [bc], a                                    ; $6740: $02
    ld e, $47                                     ; $6741: $1E $47
    ld h, a                                       ; $6743: $67
    ld e, $8C                                     ; $6744: $1E $8C
    ld h, a                                       ; $6746: $67
    sbc e                                         ; $6747: $9B
    ld a, b                                       ; $6748: $78
    ld [hl], b                                    ; $6749: $70
    sbc a                                         ; $674A: $9F
    ld c, c                                       ; $674B: $49
    daa                                           ; $674C: $27
    ld l, h                                       ; $674D: $6C
    ld l, h                                       ; $674E: $6C
    jr nz, jr_01E_67BB                            ; $674F: $20 $6A

    ld [hl], l                                    ; $6751: $75
    ld [hl], e                                    ; $6752: $73
    ld [hl], h                                    ; $6753: $74

jr_01E_6754:
    jr nz, jr_01E_67C6                            ; $6754: $20 $70

    ld [hl], l                                    ; $6756: $75
    ld [hl], h                                    ; $6757: $74
    rst $38                                       ; $6758: $FF
    ld [hl], h                                    ; $6759: $74
    ld l, b                                       ; $675A: $68
    ld l, c                                       ; $675B: $69
    ld [hl], e                                    ; $675C: $73
    jr nz, jr_01E_67C1                            ; $675D: $20 $62

    ld h, c                                       ; $675F: $61
    ld h, e                                       ; $6760: $63
    ld l, e                                       ; $6761: $6B
    ld l, $FE                                     ; $6762: $2E $FE
    db $FD                                        ; $6764: $FD
    sbc d                                         ; $6765: $9A
    sbc a                                         ; $6766: $9F
    ld d, h                                       ; $6767: $54
    ld l, a                                       ; $6768: $6F
    ld l, [hl]                                    ; $6769: $6E

jr_01E_676A:
    ld a, c                                       ; $676A: $79
    jr nz, jr_01E_67D9                            ; $676B: $20 $6C

    ld l, a                                       ; $676D: $6F
    ld [hl], e                                    ; $676E: $73
    ld [hl], h                                    ; $676F: $74
    rst $38                                       ; $6770: $FF
    ld b, c                                       ; $6771: $41

jr_01E_6772:
    ld [hl], e                                    ; $6772: $73
    ld l, b                                       ; $6773: $68
    ld h, a                                       ; $6774: $67
    ld h, c                                       ; $6775: $61
    ld [hl], d                                    ; $6776: $72
    daa                                           ; $6777: $27
    ld [hl], e                                    ; $6778: $73
    jr nz, jr_01E_67C6                            ; $6779: $20 $4B

jr_01E_677B:
    ld h, l                                       ; $677B: $65
    ld a, c                                       ; $677C: $79
    ld hl, $FDFE                                  ; $677D: $21 $FE $FD
    xor [hl]                                      ; $6780: $AE
    and l                                         ; $6781: $A5
    and c                                         ; $6782: $A1

jr_01E_6783:
    rst $30                                       ; $6783: $F7
    adc b                                         ; $6784: $88
    nop                                           ; $6785: $00
    dec e                                         ; $6786: $1D
    ld bc, $589A                                  ; $6787: $01 $9A $58
    ld [bc], a                                    ; $678A: $02

jr_01E_678B:
    ld b, d                                       ; $678B: $42
    sbc e                                         ; $678C: $9B

jr_01E_678D:
    ld a, b                                       ; $678D: $78
    ld [hl], b                                    ; $678E: $70
    sbc a                                         ; $678F: $9F
    ld c, c                                       ; $6790: $49
    daa                                           ; $6791: $27
    ld l, h                                       ; $6792: $6C
    ld l, h                                       ; $6793: $6C
    jr nz, jr_01E_6800                            ; $6794: $20 $6A

    ld [hl], l                                    ; $6796: $75
    ld [hl], e                                    ; $6797: $73
    ld [hl], h                                    ; $6798: $74

jr_01E_6799:
    jr nz, jr_01E_6803                            ; $6799: $20 $68

    ld h, c                                       ; $679B: $61
    ld l, [hl]                                    ; $679C: $6E
    ld h, a                                       ; $679D: $67
    rst $38                                       ; $679E: $FF
    ld l, a                                       ; $679F: $6F
    ld l, [hl]                                    ; $67A0: $6E
    jr nz, jr_01E_6817                            ; $67A1: $20 $74

    ld l, a                                       ; $67A3: $6F
    jr nz, jr_01E_681A                            ; $67A4: $20 $74

    ld l, b                                       ; $67A6: $68
    ld l, c                                       ; $67A7: $69
    ld [hl], e                                    ; $67A8: $73
    jr nz, jr_01E_680C                            ; $67A9: $20 $61

    cp $62                                        ; $67AB: $FE $62
    ld l, c                                       ; $67AD: $69
    ld [hl], h                                    ; $67AE: $74
    jr nz, jr_01E_681D                            ; $67AF: $20 $6C

    ld l, a                                       ; $67B1: $6F
    ld l, [hl]                                    ; $67B2: $6E
    ld h, a                                       ; $67B3: $67
    ld h, l                                       ; $67B4: $65
    ld [hl], d                                    ; $67B5: $72
    ld l, $FE                                     ; $67B6: $2E $FE
    db $FD                                        ; $67B8: $FD
    sbc d                                         ; $67B9: $9A
    ld e, b                                       ; $67BA: $58

jr_01E_67BB:
    ld [bc], a                                    ; $67BB: $02
    ld b, d                                       ; $67BC: $42
    sbc e                                         ; $67BD: $9B
    ld a, b                                       ; $67BE: $78
    ld [hl], b                                    ; $67BF: $70
    sbc a                                         ; $67C0: $9F

jr_01E_67C1:
    ld c, c                                       ; $67C1: $49
    jr nz, jr_01E_6825                            ; $67C2: $20 $61

    ld l, h                                       ; $67C4: $6C
    ld [hl], d                                    ; $67C5: $72

jr_01E_67C6:
    ld h, l                                       ; $67C6: $65
    ld h, c                                       ; $67C7: $61
    ld h, h                                       ; $67C8: $64
    ld a, c                                       ; $67C9: $79
    rst $38                                       ; $67CA: $FF
    ld h, a                                       ; $67CB: $67
    ld h, c                                       ; $67CC: $61
    halt                                          ; $67CD: $76
    ld h, l                                       ; $67CE: $65
    jr nz, jr_01E_683A                            ; $67CF: $20 $69

    ld [hl], h                                    ; $67D1: $74
    jr nz, jr_01E_6836                            ; $67D2: $20 $62

    ld h, c                                       ; $67D4: $61
    ld h, e                                       ; $67D5: $63
    ld l, e                                       ; $67D6: $6B
    ld l, $FE                                     ; $67D7: $2E $FE

jr_01E_67D9:
    ld c, l                                       ; $67D9: $4D
    ld a, c                                       ; $67DA: $79
    jr nz, jr_01E_6840                            ; $67DB: $20 $63

    ld l, a                                       ; $67DD: $6F
    ld l, [hl]                                    ; $67DE: $6E
    ld [hl], e                                    ; $67DF: $73
    ld h, e                                       ; $67E0: $63
    ld l, c                                       ; $67E1: $69
    ld h, l                                       ; $67E2: $65
    ld l, [hl]                                    ; $67E3: $6E
    ld h, e                                       ; $67E4: $63
    ld h, l                                       ; $67E5: $65
    rst $38                                       ; $67E6: $FF
    ld [hl], b                                    ; $67E7: $70
    ld [hl], d                                    ; $67E8: $72
    ld h, l                                       ; $67E9: $65
    halt                                          ; $67EA: $76
    ld h, l                                       ; $67EB: $65
    ld l, [hl]                                    ; $67EC: $6E
    ld [hl], h                                    ; $67ED: $74
    ld [hl], e                                    ; $67EE: $73
    jr nz, jr_01E_685E                            ; $67EF: $20 $6D

    ld h, l                                       ; $67F1: $65
    cp $66                                        ; $67F2: $FE $66
    ld [hl], d                                    ; $67F4: $72
    ld l, a                                       ; $67F5: $6F
    ld l, l                                       ; $67F6: $6D
    jr nz, jr_01E_686C                            ; $67F7: $20 $73

    ld [hl], h                                    ; $67F9: $74
    ld h, l                                       ; $67FA: $65
    ld h, c                                       ; $67FB: $61
    ld l, h                                       ; $67FC: $6C
    ld l, c                                       ; $67FD: $69
    ld l, [hl]                                    ; $67FE: $6E
    ld h, a                                       ; $67FF: $67

jr_01E_6800:
    rst $38                                       ; $6800: $FF
    ld l, c                                       ; $6801: $69
    ld [hl], h                                    ; $6802: $74

jr_01E_6803:
    jr nz, @+$63                                  ; $6803: $20 $61

    ld h, a                                       ; $6805: $67
    ld h, c                                       ; $6806: $61
    ld l, c                                       ; $6807: $69
    ld l, [hl]                                    ; $6808: $6E
    ld l, $FE                                     ; $6809: $2E $FE
    db $FD                                        ; $680B: $FD

jr_01E_680C:
    sbc d                                         ; $680C: $9A
    ld e, b                                       ; $680D: $58
    ld bc, $4342                                  ; $680E: $01 $42 $43
    nop                                           ; $6811: $00
    dec h                                         ; $6812: $25
    and c                                         ; $6813: $A1
    ld bc, $C11E                                  ; $6814: $01 $1E $C1

jr_01E_6817:
    ld l, d                                       ; $6817: $6A
    sub e                                         ; $6818: $93

jr_01E_6819:
    ld h, l                                       ; $6819: $65

jr_01E_681A:
    ld b, e                                       ; $681A: $43
    ld c, b                                       ; $681B: $48
    ld c, a                                       ; $681C: $4F

jr_01E_681D:
    ld h, h                                       ; $681D: $64
    add hl, sp                                    ; $681E: $39
    ld c, e                                       ; $681F: $4B
    ld l, c                                       ; $6820: $69
    ld [hl], b                                    ; $6821: $70
    ld c, e                                       ; $6822: $4B
    ld h, [hl]                                    ; $6823: $66
    ret nz                                        ; $6824: $C0

jr_01E_6825:
    ld e, h                                       ; $6825: $5C
    ld hl, $0005                                  ; $6826: $21 $05 $00
    ld l, e                                       ; $6829: $6B
    ld c, d                                       ; $682A: $4A
    inc b                                         ; $682B: $04
    ld [$D084], sp                                ; $682C: $08 $84 $D0
    nop                                           ; $682F: $00

jr_01E_6830:
    ld e, $3B                                     ; $6830: $1E $3B
    ld l, b                                       ; $6832: $68
    ld [hl+], a                                   ; $6833: $22
    dec b                                         ; $6834: $05
    ld b, b                                       ; $6835: $40

jr_01E_6836:
    dec bc                                        ; $6836: $0B

jr_01E_6837:
    nop                                           ; $6837: $00
    add d                                         ; $6838: $82
    sub h                                         ; $6839: $94

jr_01E_683A:
    ld b, d                                       ; $683A: $42
    rla                                           ; $683B: $17
    add hl, bc                                    ; $683C: $09
    cp $04                                        ; $683D: $FE $04
    add hl, bc                                    ; $683F: $09

jr_01E_6840:
    sub h                                         ; $6840: $94
    ret nc                                        ; $6841: $D0

    xor a                                         ; $6842: $AF
    dec h                                         ; $6843: $25
    and c                                         ; $6844: $A1
    ld bc, $2015                                  ; $6845: $01 $15 $20
    reti                                          ; $6848: $D9


    ld e, d                                       ; $6849: $5A
    ld b, b                                       ; $684A: $40
    jr nz, jr_01E_6830                            ; $684B: $20 $E3

    ld e, d                                       ; $684D: $5A
    jr nz, jr_01E_6850                            ; $684E: $20 $00

jr_01E_6850:
    rla                                           ; $6850: $17
    add hl, bc                                    ; $6851: $09
    inc b                                         ; $6852: $04
    inc b                                         ; $6853: $04
    ld [$D084], sp                                ; $6854: $08 $84 $D0
    dec d                                         ; $6857: $15
    jr nz, jr_01E_6837                            ; $6858: $20 $DD

    ld c, a                                       ; $685A: $4F
    ld [bc], a                                    ; $685B: $02
    jr nz, jr_01E_68D5                            ; $685C: $20 $77

jr_01E_685E:
    ld d, b                                       ; $685E: $50
    ld b, $00                                     ; $685F: $06 $00
    dec d                                         ; $6861: $15
    jr nz, jr_01E_6819                            ; $6862: $20 $B5

    ld d, b                                       ; $6864: $50
    jr jr_01E_6867                                ; $6865: $18 $00

jr_01E_6867:
    ld e, e                                       ; $6867: $5B
    ld e, $AD                                     ; $6868: $1E $AD
    ld h, e                                       ; $686A: $63
    ld b, d                                       ; $686B: $42

jr_01E_686C:
    sub e                                         ; $686C: $93
    ld h, l                                       ; $686D: $65
    ld b, e                                       ; $686E: $43
    ld c, b                                       ; $686F: $48
    ld c, a                                       ; $6870: $4F
    ld h, h                                       ; $6871: $64
    add hl, sp                                    ; $6872: $39
    ld c, e                                       ; $6873: $4B
    ld l, c                                       ; $6874: $69
    ld b, e                                       ; $6875: $43
    ld c, e                                       ; $6876: $4B
    ld h, [hl]                                    ; $6877: $66
    ret nz                                        ; $6878: $C0

    ld e, h                                       ; $6879: $5C
    ld hl, $0005                                  ; $687A: $21 $05 $00
    add c                                         ; $687D: $81
    ld e, l                                       ; $687E: $5D
    ld c, $01                                     ; $687F: $0E $01

jr_01E_6881:
    ld e, $D0                                     ; $6881: $1E $D0
    nop                                           ; $6883: $00
    jr nz, jr_01E_6881                            ; $6884: $20 $FB

    ld d, b                                       ; $6886: $50
    ld [hl+], a                                   ; $6887: $22
    dec b                                         ; $6888: $05
    ld b, b                                       ; $6889: $40
    dec b                                         ; $688A: $05
    ld [bc], a                                    ; $688B: $02
    db $ED                                        ; $688C: $ED
    ld h, e                                       ; $688D: $63
    inc c                                         ; $688E: $0C
    ld a, [bc]                                    ; $688F: $0A
    xor h                                         ; $6890: $AC
    ret nc                                        ; $6891: $D0

    nop                                           ; $6892: $00
    ld e, $CF                                     ; $6893: $1E $CF
    ld l, c                                       ; $6895: $69
    ld e, $AB                                     ; $6896: $1E $AB
    ld l, b                                       ; $6898: $68
    dec bc                                        ; $6899: $0B
    nop                                           ; $689A: $00
    dec bc                                        ; $689B: $0B
    ld [bc], a                                    ; $689C: $02
    ld l, e                                       ; $689D: $6B
    ld a, [de]                                    ; $689E: $1A
    inc c                                         ; $689F: $0C
    ldh a, [rOCPD]                                ; $68A0: $F0 $6B
    nop                                           ; $68A2: $00
    add b                                         ; $68A3: $80
    nop                                           ; $68A4: $00
    nop                                           ; $68A5: $00
    add d                                         ; $68A6: $82
    rra                                           ; $68A7: $1F
    dec e                                         ; $68A8: $1D
    sub h                                         ; $68A9: $94
    ld b, d                                       ; $68AA: $42
    ld e, e                                       ; $68AB: $5B
    ld e, $83                                     ; $68AC: $1E $83
    ld h, e                                       ; $68AE: $63
    ld b, l                                       ; $68AF: $45
    dec h                                         ; $68B0: $25
    ld a, d                                       ; $68B1: $7A
    ld d, c                                       ; $68B2: $51
    sub e                                         ; $68B3: $93
    ld h, l                                       ; $68B4: $65
    ld b, e                                       ; $68B5: $43
    ld c, b                                       ; $68B6: $48
    ld c, a                                       ; $68B7: $4F
    ld l, c                                       ; $68B8: $69
    ld b, e                                       ; $68B9: $43
    ld c, e                                       ; $68BA: $4B
    ld h, h                                       ; $68BB: $64
    add hl, sp                                    ; $68BC: $39
    ld c, e                                       ; $68BD: $4B
    ld h, [hl]                                    ; $68BE: $66
    ret nz                                        ; $68BF: $C0

    ld e, h                                       ; $68C0: $5C
    ld hl, $0005                                  ; $68C1: $21 $05 $00
    add c                                         ; $68C4: $81
    ld e, l                                       ; $68C5: $5D
    ld c, $01                                     ; $68C6: $0E $01

jr_01E_68C8:
    ld e, $D0                                     ; $68C8: $1E $D0
    nop                                           ; $68CA: $00
    jr nz, jr_01E_68C8                            ; $68CB: $20 $FB

    ld d, b                                       ; $68CD: $50
    ld [hl+], a                                   ; $68CE: $22
    dec b                                         ; $68CF: $05
    ld b, b                                       ; $68D0: $40
    dec b                                         ; $68D1: $05
    ld [bc], a                                    ; $68D2: $02
    db $ED                                        ; $68D3: $ED
    ld h, e                                       ; $68D4: $63

jr_01E_68D5:
    inc c                                         ; $68D5: $0C
    ld a, [bc]                                    ; $68D6: $0A
    xor h                                         ; $68D7: $AC
    ret nc                                        ; $68D8: $D0

    nop                                           ; $68D9: $00
    ld e, $CF                                     ; $68DA: $1E $CF
    ld l, c                                       ; $68DC: $69
    ld e, $F2                                     ; $68DD: $1E $F2
    ld l, b                                       ; $68DF: $68
    dec bc                                        ; $68E0: $0B
    nop                                           ; $68E1: $00
    dec bc                                        ; $68E2: $0B
    ld [bc], a                                    ; $68E3: $02
    ld l, e                                       ; $68E4: $6B
    ld a, [de]                                    ; $68E5: $1A
    inc c                                         ; $68E6: $0C
    ldh a, [rOCPD]                                ; $68E7: $F0 $6B
    nop                                           ; $68E9: $00
    add b                                         ; $68EA: $80
    nop                                           ; $68EB: $00
    nop                                           ; $68EC: $00
    add d                                         ; $68ED: $82
    rra                                           ; $68EE: $1F
    dec e                                         ; $68EF: $1D
    sub h                                         ; $68F0: $94
    ld b, d                                       ; $68F1: $42
    ld e, e                                       ; $68F2: $5B
    ld e, $F4                                     ; $68F3: $1E $F4
    ld h, e                                       ; $68F5: $63
    ld b, l                                       ; $68F6: $45
    dec h                                         ; $68F7: $25
    ld a, d                                       ; $68F8: $7A
    ld d, c                                       ; $68F9: $51
    sub e                                         ; $68FA: $93
    ld h, l                                       ; $68FB: $65
    ld b, e                                       ; $68FC: $43
    ld c, b                                       ; $68FD: $48
    ld c, a                                       ; $68FE: $4F
    ld h, h                                       ; $68FF: $64
    add hl, sp                                    ; $6900: $39
    ld c, e                                       ; $6901: $4B
    ld l, c                                       ; $6902: $69
    ld b, e                                       ; $6903: $43
    ld c, e                                       ; $6904: $4B
    ld h, [hl]                                    ; $6905: $66
    ret nz                                        ; $6906: $C0

    ld e, h                                       ; $6907: $5C
    ld hl, $0005                                  ; $6908: $21 $05 $00
    add c                                         ; $690B: $81
    ld e, l                                       ; $690C: $5D
    ld c, $01                                     ; $690D: $0E $01

jr_01E_690F:
    ld e, $D0                                     ; $690F: $1E $D0
    nop                                           ; $6911: $00
    jr nz, jr_01E_690F                            ; $6912: $20 $FB

    ld d, b                                       ; $6914: $50
    ld [hl+], a                                   ; $6915: $22
    dec b                                         ; $6916: $05
    ld b, b                                       ; $6917: $40
    dec b                                         ; $6918: $05
    ld [bc], a                                    ; $6919: $02
    db $ED                                        ; $691A: $ED
    ld h, e                                       ; $691B: $63
    inc c                                         ; $691C: $0C
    ld a, [bc]                                    ; $691D: $0A
    xor h                                         ; $691E: $AC
    ret nc                                        ; $691F: $D0

    nop                                           ; $6920: $00
    ld e, $CF                                     ; $6921: $1E $CF
    ld l, c                                       ; $6923: $69
    ld e, $39                                     ; $6924: $1E $39
    ld l, c                                       ; $6926: $69
    dec bc                                        ; $6927: $0B
    nop                                           ; $6928: $00
    dec bc                                        ; $6929: $0B
    ld [bc], a                                    ; $692A: $02
    ld l, e                                       ; $692B: $6B
    ld a, [de]                                    ; $692C: $1A
    inc c                                         ; $692D: $0C
    ldh a, [rOCPD]                                ; $692E: $F0 $6B
    nop                                           ; $6930: $00
    add b                                         ; $6931: $80
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    add d                                         ; $6934: $82
    rra                                           ; $6935: $1F
    dec e                                         ; $6936: $1D
    sub h                                         ; $6937: $94
    ld b, d                                       ; $6938: $42
    ld e, e                                       ; $6939: $5B
    ld e, $86                                     ; $693A: $1E $86
    ld h, h                                       ; $693C: $64
    ld b, l                                       ; $693D: $45
    dec h                                         ; $693E: $25
    ld a, d                                       ; $693F: $7A
    ld d, c                                       ; $6940: $51
    sub e                                         ; $6941: $93
    ld h, l                                       ; $6942: $65
    ld b, e                                       ; $6943: $43
    ld c, b                                       ; $6944: $48
    ld c, a                                       ; $6945: $4F
    ld l, c                                       ; $6946: $69
    ld b, e                                       ; $6947: $43
    ld c, e                                       ; $6948: $4B
    ld h, h                                       ; $6949: $64
    add hl, sp                                    ; $694A: $39
    ld c, e                                       ; $694B: $4B
    ld h, [hl]                                    ; $694C: $66
    ret nz                                        ; $694D: $C0

    ld e, h                                       ; $694E: $5C
    ld hl, $0005                                  ; $694F: $21 $05 $00
    add c                                         ; $6952: $81
    ld e, l                                       ; $6953: $5D
    ld c, $01                                     ; $6954: $0E $01

jr_01E_6956:
    ld e, $D0                                     ; $6956: $1E $D0
    nop                                           ; $6958: $00
    jr nz, jr_01E_6956                            ; $6959: $20 $FB

    ld d, b                                       ; $695B: $50
    ld [hl+], a                                   ; $695C: $22
    dec b                                         ; $695D: $05
    ld b, b                                       ; $695E: $40
    dec b                                         ; $695F: $05
    ld [bc], a                                    ; $6960: $02
    db $ED                                        ; $6961: $ED
    ld h, e                                       ; $6962: $63
    inc c                                         ; $6963: $0C
    ld a, [bc]                                    ; $6964: $0A
    xor h                                         ; $6965: $AC
    ret nc                                        ; $6966: $D0

    nop                                           ; $6967: $00
    ld e, $CF                                     ; $6968: $1E $CF
    ld l, c                                       ; $696A: $69
    ld e, $80                                     ; $696B: $1E $80
    ld l, c                                       ; $696D: $69
    dec bc                                        ; $696E: $0B
    nop                                           ; $696F: $00
    dec bc                                        ; $6970: $0B
    ld [bc], a                                    ; $6971: $02
    ld l, e                                       ; $6972: $6B
    ld a, [de]                                    ; $6973: $1A
    inc c                                         ; $6974: $0C
    ldh a, [rOCPD]                                ; $6975: $F0 $6B
    nop                                           ; $6977: $00
    add b                                         ; $6978: $80
    nop                                           ; $6979: $00
    nop                                           ; $697A: $00
    add d                                         ; $697B: $82
    rra                                           ; $697C: $1F
    dec e                                         ; $697D: $1D
    sub h                                         ; $697E: $94
    ld b, d                                       ; $697F: $42
    ld e, e                                       ; $6980: $5B
    ld e, $D5                                     ; $6981: $1E $D5
    ld h, h                                       ; $6983: $64
    ld b, l                                       ; $6984: $45
    dec h                                         ; $6985: $25
    ld a, d                                       ; $6986: $7A
    ld d, c                                       ; $6987: $51
    sub e                                         ; $6988: $93
    ld h, l                                       ; $6989: $65
    ld b, e                                       ; $698A: $43
    ld c, b                                       ; $698B: $48
    ld c, a                                       ; $698C: $4F
    ld h, h                                       ; $698D: $64
    add hl, sp                                    ; $698E: $39
    ld c, e                                       ; $698F: $4B
    ld l, c                                       ; $6990: $69
    ld b, e                                       ; $6991: $43
    ld c, e                                       ; $6992: $4B
    ld h, [hl]                                    ; $6993: $66
    ret nz                                        ; $6994: $C0

    ld e, h                                       ; $6995: $5C
    ld hl, $0005                                  ; $6996: $21 $05 $00
    add c                                         ; $6999: $81
    ld e, l                                       ; $699A: $5D
    ld c, $01                                     ; $699B: $0E $01

jr_01E_699D:
    ld e, $D0                                     ; $699D: $1E $D0
    nop                                           ; $699F: $00
    jr nz, jr_01E_699D                            ; $69A0: $20 $FB

    ld d, b                                       ; $69A2: $50
    ld [hl+], a                                   ; $69A3: $22
    dec b                                         ; $69A4: $05
    ld b, b                                       ; $69A5: $40
    dec b                                         ; $69A6: $05
    ld [bc], a                                    ; $69A7: $02
    db $ED                                        ; $69A8: $ED
    ld h, e                                       ; $69A9: $63
    inc c                                         ; $69AA: $0C
    ld a, [bc]                                    ; $69AB: $0A
    xor h                                         ; $69AC: $AC
    ret nc                                        ; $69AD: $D0

    nop                                           ; $69AE: $00
    ld e, $CF                                     ; $69AF: $1E $CF
    ld l, c                                       ; $69B1: $69
    ld e, $C7                                     ; $69B2: $1E $C7
    ld l, c                                       ; $69B4: $69
    dec bc                                        ; $69B5: $0B
    nop                                           ; $69B6: $00
    dec bc                                        ; $69B7: $0B
    ld [bc], a                                    ; $69B8: $02
    ld l, e                                       ; $69B9: $6B
    ld a, [de]                                    ; $69BA: $1A
    inc c                                         ; $69BB: $0C
    ldh a, [rOCPD]                                ; $69BC: $F0 $6B
    nop                                           ; $69BE: $00
    add b                                         ; $69BF: $80
    nop                                           ; $69C0: $00
    nop                                           ; $69C1: $00
    add d                                         ; $69C2: $82
    rra                                           ; $69C3: $1F
    dec e                                         ; $69C4: $1D
    sub h                                         ; $69C5: $94
    ld b, d                                       ; $69C6: $42
    ld e, e                                       ; $69C7: $5B
    ld e, $02                                     ; $69C8: $1E $02
    ld h, l                                       ; $69CA: $65
    ld b, l                                       ; $69CB: $45
    dec h                                         ; $69CC: $25
    ld a, d                                       ; $69CD: $7A
    ld d, c                                       ; $69CE: $51
    dec d                                         ; $69CF: $15
    dec h                                         ; $69D0: $25
    ld a, [hl+]                                   ; $69D1: $2A
    ld d, c                                       ; $69D2: $51
    ld b, b                                       ; $69D3: $40
    nop                                           ; $69D4: $00
    ld b, l                                       ; $69D5: $45
    ld e, $CF                                     ; $69D6: $1E $CF
    ld l, c                                       ; $69D8: $69
    ld c, e                                       ; $69D9: $4B
    inc b                                         ; $69DA: $04
    ld e, $0B                                     ; $69DB: $1E $0B
    nop                                           ; $69DD: $00
    ld l, h                                       ; $69DE: $6C
    ld l, b                                       ; $69DF: $68
    ld e, $0C                                     ; $69E0: $1E $0C
    nop                                           ; $69E2: $00
    or e                                          ; $69E3: $B3
    ld l, b                                       ; $69E4: $68
    ld e, $0D                                     ; $69E5: $1E $0D
    nop                                           ; $69E7: $00
    adc b                                         ; $69E8: $88
    ld l, c                                       ; $69E9: $69
    ld e, $0E                                     ; $69EA: $1E $0E
    nop                                           ; $69EC: $00
    adc b                                         ; $69ED: $88
    ld l, c                                       ; $69EE: $69
    ld e, $0F                                     ; $69EF: $1E $0F
    nop                                           ; $69F1: $00
    ld b, c                                       ; $69F2: $41
    ld l, c                                       ; $69F3: $69
    ld e, $10                                     ; $69F4: $1E $10
    nop                                           ; $69F6: $00
    pop bc                                        ; $69F7: $C1
    ld l, d                                       ; $69F8: $6A
    rst $38                                       ; $69F9: $FF
    ld b, e                                       ; $69FA: $43
    nop                                           ; $69FB: $00
    and l                                         ; $69FC: $A5
    and c                                         ; $69FD: $A1
    inc b                                         ; $69FE: $04
    ld e, $FA                                     ; $69FF: $1E $FA
    ld l, b                                       ; $6A01: $68
    sub e                                         ; $6A02: $93
    ld h, l                                       ; $6A03: $65
    ld b, e                                       ; $6A04: $43
    ld c, b                                       ; $6A05: $48
    ld c, a                                       ; $6A06: $4F
    ld h, h                                       ; $6A07: $64
    add hl, sp                                    ; $6A08: $39
    ld c, e                                       ; $6A09: $4B
    ld l, c                                       ; $6A0A: $69
    ld b, e                                       ; $6A0B: $43
    ld c, e                                       ; $6A0C: $4B
    ld h, [hl]                                    ; $6A0D: $66
    ret nz                                        ; $6A0E: $C0

    ld e, h                                       ; $6A0F: $5C
    ld hl, $0005                                  ; $6A10: $21 $05 $00
    add c                                         ; $6A13: $81
    ld e, l                                       ; $6A14: $5D
    ld c, $01                                     ; $6A15: $0E $01

jr_01E_6A17:
    ld e, $D0                                     ; $6A17: $1E $D0
    nop                                           ; $6A19: $00
    jr nz, jr_01E_6A17                            ; $6A1A: $20 $FB

    ld d, b                                       ; $6A1C: $50
    ld [hl+], a                                   ; $6A1D: $22
    dec b                                         ; $6A1E: $05
    ld b, b                                       ; $6A1F: $40
    dec b                                         ; $6A20: $05
    ld [bc], a                                    ; $6A21: $02
    db $ED                                        ; $6A22: $ED
    ld h, e                                       ; $6A23: $63
    inc c                                         ; $6A24: $0C
    ld a, [bc]                                    ; $6A25: $0A
    xor h                                         ; $6A26: $AC
    ret nc                                        ; $6A27: $D0

    nop                                           ; $6A28: $00
    ld e, $CF                                     ; $6A29: $1E $CF
    ld l, c                                       ; $6A2B: $69
    ld e, $41                                     ; $6A2C: $1E $41
    ld l, d                                       ; $6A2E: $6A
    dec bc                                        ; $6A2F: $0B
    nop                                           ; $6A30: $00
    dec bc                                        ; $6A31: $0B
    ld [bc], a                                    ; $6A32: $02
    ld l, e                                       ; $6A33: $6B
    ld a, [de]                                    ; $6A34: $1A
    inc c                                         ; $6A35: $0C
    ldh a, [rOCPD]                                ; $6A36: $F0 $6B

jr_01E_6A38:
    nop                                           ; $6A38: $00
    add b                                         ; $6A39: $80
    nop                                           ; $6A3A: $00
    nop                                           ; $6A3B: $00
    add d                                         ; $6A3C: $82
    rra                                           ; $6A3D: $1F
    dec e                                         ; $6A3E: $1D
    sub h                                         ; $6A3F: $94
    ld b, d                                       ; $6A40: $42
    ld e, e                                       ; $6A41: $5B
    ld e, $28                                     ; $6A42: $1E $28
    ld h, l                                       ; $6A44: $65
    ld b, l                                       ; $6A45: $45
    dec h                                         ; $6A46: $25
    ld a, d                                       ; $6A47: $7A
    ld d, c                                       ; $6A48: $51
    sub e                                         ; $6A49: $93
    ld h, l                                       ; $6A4A: $65
    ld b, e                                       ; $6A4B: $43
    ld c, b                                       ; $6A4C: $48
    ld c, a                                       ; $6A4D: $4F
    ld h, h                                       ; $6A4E: $64
    ld a, $4B                                     ; $6A4F: $3E $4B
    ld l, c                                       ; $6A51: $69
    ld b, e                                       ; $6A52: $43
    ld c, e                                       ; $6A53: $4B
    ld h, [hl]                                    ; $6A54: $66
    ret nz                                        ; $6A55: $C0

    ld e, h                                       ; $6A56: $5C
    ld hl, $0005                                  ; $6A57: $21 $05 $00
    add c                                         ; $6A5A: $81
    ld e, l                                       ; $6A5B: $5D
    dec bc                                        ; $6A5C: $0B
    ld c, $EB                                     ; $6A5D: $0E $EB
    ret nc                                        ; $6A5F: $D0

    nop                                           ; $6A60: $00
    jr nz, @-$03                                  ; $6A61: $20 $FB

    ld d, b                                       ; $6A63: $50
    ld [hl+], a                                   ; $6A64: $22
    dec b                                         ; $6A65: $05
    ld b, b                                       ; $6A66: $40
    dec b                                         ; $6A67: $05

jr_01E_6A68:
    ld [bc], a                                    ; $6A68: $02
    ld l, e                                       ; $6A69: $6B
    ld c, d                                       ; $6A6A: $4A
    dec bc                                        ; $6A6B: $0B
    db $10                                        ; $6A6C: $10
    dec bc                                        ; $6A6D: $0B
    pop de                                        ; $6A6E: $D1
    nop                                           ; $6A6F: $00
    ld e, $85                                     ; $6A70: $1E $85
    ld l, d                                       ; $6A72: $6A
    ld [hl+], a                                   ; $6A73: $22
    dec b                                         ; $6A74: $05
    ld b, b                                       ; $6A75: $40
    ld l, e                                       ; $6A76: $6B
    dec hl                                        ; $6A77: $2B
    dec bc                                        ; $6A78: $0B
    ret nc                                        ; $6A79: $D0

    ld c, c                                       ; $6A7A: $49
    nop                                           ; $6A7B: $00
    add b                                         ; $6A7C: $80
    nop                                           ; $6A7D: $00
    dec bc                                        ; $6A7E: $0B
    nop                                           ; $6A7F: $00
    add d                                         ; $6A80: $82
    rra                                           ; $6A81: $1F
    rla                                           ; $6A82: $17
    sub h                                         ; $6A83: $94
    ld b, d                                       ; $6A84: $42
    rlca                                          ; $6A85: $07
    nop                                           ; $6A86: $00
    ld l, e                                       ; $6A87: $6B
    ld c, d                                       ; $6A88: $4A
    add hl, bc                                    ; $6A89: $09
    nop                                           ; $6A8A: $00
    jr nz, jr_01E_6A38                            ; $6A8B: $20 $AB

    ld d, b                                       ; $6A8D: $50
    add e                                         ; $6A8E: $83
    stop                                          ; $6A8F: $10 $00
    ld bc, $1500                                  ; $6A91: $01 $00 $15
    ld de, $470C                                  ; $6A94: $11 $0C $47
    jr nz, jr_01E_6AAA                            ; $6A97: $20 $11

    adc h                                         ; $6A99: $8C
    ld b, a                                       ; $6A9A: $47
    jr nz, jr_01E_6AAE                            ; $6A9B: $20 $11

    ld c, h                                       ; $6A9D: $4C
    ld b, a                                       ; $6A9E: $47
    jr nz, jr_01E_6AB2                            ; $6A9F: $20 $11

    xor d                                         ; $6AA1: $AA
    ld b, a                                       ; $6AA2: $47
    nop                                           ; $6AA3: $00
    nop                                           ; $6AA4: $00
    add hl, bc                                    ; $6AA5: $09
    nop                                           ; $6AA6: $00
    jr nz, jr_01E_6A68                            ; $6AA7: $20 $BF

    ld d, b                                       ; $6AA9: $50

jr_01E_6AAA:
    ld e, e                                       ; $6AAA: $5B
    ld e, $C6                                     ; $6AAB: $1E $C6
    ld h, l                                       ; $6AAD: $65

jr_01E_6AAE:
    ld h, d                                       ; $6AAE: $62
    ld bc, $1115                                  ; $6AAF: $01 $15 $11

jr_01E_6AB2:
    inc e                                         ; $6AB2: $1C
    ld b, a                                       ; $6AB3: $47
    add b                                         ; $6AB4: $80
    nop                                           ; $6AB5: $00
    rlca                                          ; $6AB6: $07
    nop                                           ; $6AB7: $00
    add c                                         ; $6AB8: $81

jr_01E_6AB9:
    ld e, l                                       ; $6AB9: $5D
    add hl, bc                                    ; $6ABA: $09
    nop                                           ; $6ABB: $00
    jr nz, jr_01E_6AB9                            ; $6ABC: $20 $FB

    ld d, b                                       ; $6ABE: $50
    add hl, de                                    ; $6ABF: $19
    ld b, d                                       ; $6AC0: $42
    sub e                                         ; $6AC1: $93
    ld h, l                                       ; $6AC2: $65
    ld b, e                                       ; $6AC3: $43
    ld c, b                                       ; $6AC4: $48
    ld c, a                                       ; $6AC5: $4F
    ld h, h                                       ; $6AC6: $64
    add hl, sp                                    ; $6AC7: $39
    ld c, e                                       ; $6AC8: $4B
    ld l, c                                       ; $6AC9: $69
    ld [hl], b                                    ; $6ACA: $70
    ld c, e                                       ; $6ACB: $4B
    ld h, [hl]                                    ; $6ACC: $66
    ret nz                                        ; $6ACD: $C0

    ld e, h                                       ; $6ACE: $5C
    ld hl, $0005                                  ; $6ACF: $21 $05 $00
    add c                                         ; $6AD2: $81
    ld e, l                                       ; $6AD3: $5D
    dec bc                                        ; $6AD4: $0B
    ld c, $EB                                     ; $6AD5: $0E $EB
    ret nc                                        ; $6AD7: $D0

    nop                                           ; $6AD8: $00
    jr nz, @-$03                                  ; $6AD9: $20 $FB

    ld d, b                                       ; $6ADB: $50
    ld [hl+], a                                   ; $6ADC: $22
    dec b                                         ; $6ADD: $05
    ld b, b                                       ; $6ADE: $40
    dec bc                                        ; $6ADF: $0B
    nop                                           ; $6AE0: $00
    add d                                         ; $6AE1: $82
    rra                                           ; $6AE2: $1F
    db $10                                        ; $6AE3: $10
    sub h                                         ; $6AE4: $94
    ld b, d                                       ; $6AE5: $42
    ld bc, $1113                                  ; $6AE6: $01 $13 $11
    ld b, l                                       ; $6AE9: $45
    ld e, $86                                     ; $6AEA: $1E $86
    ld c, e                                       ; $6AEC: $4B
    sbc e                                         ; $6AED: $9B
    ld a, b                                       ; $6AEE: $78
    ld [hl], b                                    ; $6AEF: $70
    sbc a                                         ; $6AF0: $9F
    ld sp, $3A31                                  ; $6AF1: $31 $31 $3A
    jr nc, jr_01E_6B2B                            ; $6AF4: $30 $35

    ld l, $FE                                     ; $6AF6: $2E $FE
    ld b, d                                       ; $6AF8: $42
    ld [hl], l                                    ; $6AF9: $75
    ld [hl], h                                    ; $6AFA: $74
    jr nz, jr_01E_6B66                            ; $6AFB: $20 $69

    ld [hl], e                                    ; $6AFD: $73
    jr nz, jr_01E_6B69                            ; $6AFE: $20 $69

    ld [hl], h                                    ; $6B00: $74
    rst $38                                       ; $6B01: $FF
    ld b, c                                       ; $6B02: $41
    ld c, l                                       ; $6B03: $4D
    jr nz, jr_01E_6B75                            ; $6B04: $20 $6F

    ld [hl], d                                    ; $6B06: $72
    jr nz, jr_01E_6B59                            ; $6B07: $20 $50

    ld c, l                                       ; $6B09: $4D
    ccf                                           ; $6B0A: $3F
    cp $FD                                        ; $6B0B: $FE $FD
    sbc d                                         ; $6B0D: $9A
    ld b, d                                       ; $6B0E: $42
    sbc e                                         ; $6B0F: $9B
    ld a, b                                       ; $6B10: $78
    ld [hl], b                                    ; $6B11: $70
    sbc a                                         ; $6B12: $9F
    ld b, e                                       ; $6B13: $43
    ld l, h                                       ; $6B14: $6C
    ld l, a                                       ; $6B15: $6F
    ld [hl], h                                    ; $6B16: $74
    ld l, b                                       ; $6B17: $68
    ld l, c                                       ; $6B18: $69
    ld l, [hl]                                    ; $6B19: $6E
    ld h, a                                       ; $6B1A: $67
    ld l, $2E                                     ; $6B1B: $2E $2E
    ld l, $FF                                     ; $6B1D: $2E $FF
    ld b, e                                       ; $6B1F: $43
    ld l, a                                       ; $6B20: $6F
    ld l, h                                       ; $6B21: $6C
    ld l, a                                       ; $6B22: $6F
    ld [hl], d                                    ; $6B23: $72
    ld h, [hl]                                    ; $6B24: $66
    ld [hl], l                                    ; $6B25: $75
    ld l, h                                       ; $6B26: $6C
    ld l, $FE                                     ; $6B27: $2E $FE
    ld d, e                                       ; $6B29: $53
    ld [hl], h                                    ; $6B2A: $74

jr_01E_6B2B:
    ld [hl], d                                    ; $6B2B: $72
    ld l, c                                       ; $6B2C: $69
    ld l, e                                       ; $6B2D: $6B
    ld l, c                                       ; $6B2E: $69
    ld l, [hl]                                    ; $6B2F: $6E
    ld h, a                                       ; $6B30: $67
    ld l, $FF                                     ; $6B31: $2E $FF
    ld d, e                                       ; $6B33: $53
    ld l, h                                       ; $6B34: $6C
    ld h, l                                       ; $6B35: $65
    ld h, l                                       ; $6B36: $65
    halt                                          ; $6B37: $76
    ld h, l                                       ; $6B38: $65
    ld l, h                                       ; $6B39: $6C
    ld h, l                                       ; $6B3A: $65
    ld [hl], e                                    ; $6B3B: $73
    ld [hl], e                                    ; $6B3C: $73
    ld l, $FE                                     ; $6B3D: $2E $FE
    db $FD                                        ; $6B3F: $FD
    sbc d                                         ; $6B40: $9A
    ld b, d                                       ; $6B41: $42
    sbc a                                         ; $6B42: $9F
    ld b, e                                       ; $6B43: $43
    ld l, b                                       ; $6B44: $68
    ld l, c                                       ; $6B45: $69
    ld [hl], e                                    ; $6B46: $73
    ld h, l                                       ; $6B47: $65
    ld l, h                                       ; $6B48: $6C
    jr nz, jr_01E_6BC4                            ; $6B49: $20 $79

    ld l, a                                       ; $6B4B: $6F
    ld [hl], l                                    ; $6B4C: $75
    ld [hl], d                                    ; $6B4D: $72
    rst $38                                       ; $6B4E: $FF
    ld [hl], a                                    ; $6B4F: $77
    ld h, c                                       ; $6B50: $61
    ld a, c                                       ; $6B51: $79
    jr nz, jr_01E_6BC8                            ; $6B52: $20 $74

    ld l, a                                       ; $6B54: $6F
    jr nz, jr_01E_6BB8                            ; $6B55: $20 $61

    jr nz, jr_01E_6BC7                            ; $6B57: $20 $6E

jr_01E_6B59:
    ld h, l                                       ; $6B59: $65
    ld [hl], a                                    ; $6B5A: $77
    cp $6C                                        ; $6B5B: $FE $6C
    ld l, c                                       ; $6B5D: $69
    halt                                          ; $6B5E: $76
    ld l, c                                       ; $6B5F: $69
    ld l, [hl]                                    ; $6B60: $6E
    ld h, a                                       ; $6B61: $67
    jr nz, jr_01E_6BD6                            ; $6B62: $20 $72

    ld l, a                                       ; $6B64: $6F
    ld l, a                                       ; $6B65: $6F

jr_01E_6B66:
    ld l, l                                       ; $6B66: $6D
    rst $38                                       ; $6B67: $FF
    ld [hl], a                                    ; $6B68: $77

jr_01E_6B69:
    ld l, c                                       ; $6B69: $69
    ld [hl], h                                    ; $6B6A: $74
    ld l, b                                       ; $6B6B: $68
    jr nz, jr_01E_6BDD                            ; $6B6C: $20 $6F

    ld l, [hl]                                    ; $6B6E: $6E
    ld l, h                                       ; $6B6F: $6C
    ld a, c                                       ; $6B70: $79
    jr nz, jr_01E_6BD4                            ; $6B71: $20 $61

    cp $63                                        ; $6B73: $FE $63

jr_01E_6B75:
    ld l, b                                       ; $6B75: $68
    ld l, c                                       ; $6B76: $69
    ld [hl], e                                    ; $6B77: $73
    ld h, l                                       ; $6B78: $65
    ld l, h                                       ; $6B79: $6C
    ld hl, $FDFE                                  ; $6B7A: $21 $FE $FD
    sbc e                                         ; $6B7D: $9B
    ld a, b                                       ; $6B7E: $78
    ld [hl], b                                    ; $6B7F: $70
    sbc a                                         ; $6B80: $9F
    ld d, a                                       ; $6B81: $57
    ld l, a                                       ; $6B82: $6F
    ld [hl], a                                    ; $6B83: $77
    ld hl, $FDFE                                  ; $6B84: $21 $FE $FD
    sbc d                                         ; $6B87: $9A
    ld b, d                                       ; $6B88: $42
    sbc e                                         ; $6B89: $9B
    ld a, b                                       ; $6B8A: $78
    ld [hl], b                                    ; $6B8B: $70
    sbc a                                         ; $6B8C: $9F
    ld d, e                                       ; $6B8D: $53
    ld h, l                                       ; $6B8E: $65
    ld h, l                                       ; $6B8F: $65
    ld l, l                                       ; $6B90: $6D
    ld [hl], e                                    ; $6B91: $73
    jr nz, jr_01E_6C02                            ; $6B92: $20 $6E

    ld l, c                                       ; $6B94: $69
    ld h, e                                       ; $6B95: $63
    ld h, l                                       ; $6B96: $65
    ld l, $FF                                     ; $6B97: $2E $FF
    daa                                           ; $6B99: $27
    ld b, e                                       ; $6B9A: $43
    ld h, l                                       ; $6B9B: $65
    ld [hl], b                                    ; $6B9C: $70
    ld [hl], h                                    ; $6B9D: $74
    jr nz, jr_01E_6C06                            ; $6B9E: $20 $66

    ld l, a                                       ; $6BA0: $6F
    ld [hl], d                                    ; $6BA1: $72
    jr nz, @+$76                                  ; $6BA2: $20 $74

    ld l, b                                       ; $6BA4: $68
    ld h, l                                       ; $6BA5: $65
    cp $66                                        ; $6BA6: $FE $66
    ld l, c                                       ; $6BA8: $69
    ld [hl], d                                    ; $6BA9: $72
    ld h, l                                       ; $6BAA: $65
    jr nz, jr_01E_6C0E                            ; $6BAB: $20 $61

    ld l, [hl]                                    ; $6BAD: $6E
    ld h, h                                       ; $6BAE: $64
    jr nz, jr_01E_6C12                            ; $6BAF: $20 $61

    ld l, h                                       ; $6BB1: $6C
    ld l, h                                       ; $6BB2: $6C
    ld l, $FE                                     ; $6BB3: $2E $FE
    db $FD                                        ; $6BB5: $FD
    sbc d                                         ; $6BB6: $9A
    ld b, d                                       ; $6BB7: $42

jr_01E_6BB8:
    sbc e                                         ; $6BB8: $9B
    ld a, b                                       ; $6BB9: $78
    ld [hl], b                                    ; $6BBA: $70
    sbc a                                         ; $6BBB: $9F
    ld b, [hl]                                    ; $6BBC: $46
    ld l, c                                       ; $6BBD: $69
    ld l, h                                       ; $6BBE: $6C
    ld l, h                                       ; $6BBF: $6C
    ld h, l                                       ; $6BC0: $65
    ld h, h                                       ; $6BC1: $64
    jr nz, jr_01E_6C38                            ; $6BC2: $20 $74

jr_01E_6BC4:
    ld l, a                                       ; $6BC4: $6F
    jr nz, jr_01E_6C3B                            ; $6BC5: $20 $74

jr_01E_6BC7:
    ld l, b                                       ; $6BC7: $68

jr_01E_6BC8:
    ld h, l                                       ; $6BC8: $65
    rst $38                                       ; $6BC9: $FF
    ld h, d                                       ; $6BCA: $62
    ld [hl], d                                    ; $6BCB: $72
    ld l, c                                       ; $6BCC: $69
    ld l, l                                       ; $6BCD: $6D
    ld l, $FE                                     ; $6BCE: $2E $FE
    ld b, a                                       ; $6BD0: $47
    ld l, a                                       ; $6BD1: $6F
    ld l, a                                       ; $6BD2: $6F
    ld h, h                                       ; $6BD3: $64

jr_01E_6BD4:
    jr nz, jr_01E_6C4A                            ; $6BD4: $20 $74

jr_01E_6BD6:
    ld l, b                                       ; $6BD6: $68
    ld l, c                                       ; $6BD7: $69
    ld l, [hl]                                    ; $6BD8: $6E
    ld h, a                                       ; $6BD9: $67
    jr nz, jr_01E_6C45                            ; $6BDA: $20 $69

    ld [hl], h                                    ; $6BDC: $74

jr_01E_6BDD:
    daa                                           ; $6BDD: $27
    ld [hl], e                                    ; $6BDE: $73
    rst $38                                       ; $6BDF: $FF
    ld l, l                                       ; $6BE0: $6D
    ld h, l                                       ; $6BE1: $65
    ld l, h                                       ; $6BE2: $6C
    ld [hl], h                                    ; $6BE3: $74
    ld l, c                                       ; $6BE4: $69
    ld l, [hl]                                    ; $6BE5: $6E
    ld h, a                                       ; $6BE6: $67
    ld l, $FE                                     ; $6BE7: $2E $FE
    ld c, a                                       ; $6BE9: $4F
    ld [hl], h                                    ; $6BEA: $74
    ld l, b                                       ; $6BEB: $68
    ld h, l                                       ; $6BEC: $65
    ld [hl], d                                    ; $6BED: $72
    ld [hl], a                                    ; $6BEE: $77
    ld l, c                                       ; $6BEF: $69
    ld [hl], e                                    ; $6BF0: $73
    ld h, l                                       ; $6BF1: $65
    inc l                                         ; $6BF2: $2C
    jr nz, jr_01E_6C5E                            ; $6BF3: $20 $69

    ld [hl], h                                    ; $6BF5: $74
    daa                                           ; $6BF6: $27
    ld h, h                                       ; $6BF7: $64
    rst $38                                       ; $6BF8: $FF
    ld l, [hl]                                    ; $6BF9: $6E
    ld h, l                                       ; $6BFA: $65
    halt                                          ; $6BFB: $76
    ld h, l                                       ; $6BFC: $65
    ld [hl], d                                    ; $6BFD: $72
    jr nz, jr_01E_6C73                            ; $6BFE: $20 $73

    ld [hl], h                                    ; $6C00: $74
    ld h, c                                       ; $6C01: $61

jr_01E_6C02:
    ld a, c                                       ; $6C02: $79
    cp $63                                        ; $6C03: $FE $63
    ld l, h                                       ; $6C05: $6C

jr_01E_6C06:
    ld l, a                                       ; $6C06: $6F
    ld [hl], e                                    ; $6C07: $73
    ld h, l                                       ; $6C08: $65
    ld h, h                                       ; $6C09: $64
    ld l, $FE                                     ; $6C0A: $2E $FE
    db $FD                                        ; $6C0C: $FD
    sbc d                                         ; $6C0D: $9A

jr_01E_6C0E:
    ld b, d                                       ; $6C0E: $42
    sbc e                                         ; $6C0F: $9B
    jp hl                                         ; $6C10: $E9


    ld d, l                                       ; $6C11: $55

jr_01E_6C12:
    sbc a                                         ; $6C12: $9F
    ld c, c                                       ; $6C13: $49
    ld [hl], h                                    ; $6C14: $74
    daa                                           ; $6C15: $27
    ld [hl], e                                    ; $6C16: $73
    jr nz, jr_01E_6C92                            ; $6C17: $20 $79

    ld l, a                                       ; $6C19: $6F
    ld [hl], l                                    ; $6C1A: $75
    ld hl, $54FF                                  ; $6C1B: $21 $FF $54
    ld l, b                                       ; $6C1E: $68
    ld h, c                                       ; $6C1F: $61
    ld l, [hl]                                    ; $6C20: $6E
    ld l, e                                       ; $6C21: $6B
    jr nz, jr_01E_6C9D                            ; $6C22: $20 $79

    ld l, a                                       ; $6C24: $6F
    ld [hl], l                                    ; $6C25: $75
    jr nz, jr_01E_6C8E                            ; $6C26: $20 $66

    ld l, a                                       ; $6C28: $6F
    ld [hl], d                                    ; $6C29: $72
    cp $66                                        ; $6C2A: $FE $66
    ld [hl], d                                    ; $6C2C: $72
    ld h, l                                       ; $6C2D: $65
    ld h, l                                       ; $6C2E: $65
    ld l, c                                       ; $6C2F: $69
    ld l, [hl]                                    ; $6C30: $6E
    ld h, a                                       ; $6C31: $67
    jr nz, @+$6F                                  ; $6C32: $20 $6D

    ld h, l                                       ; $6C34: $65
    inc l                                         ; $6C35: $2C
    jr nz, @+$6B                                  ; $6C36: $20 $69

jr_01E_6C38:
    ld [hl], h                                    ; $6C38: $74
    rst $38                                       ; $6C39: $FF
    ld [hl], a                                    ; $6C3A: $77

jr_01E_6C3B:
    ld h, c                                       ; $6C3B: $61
    ld [hl], e                                    ; $6C3C: $73
    jr nz, jr_01E_6CB2                            ; $6C3D: $20 $73

    ld l, a                                       ; $6C3F: $6F
    jr nz, jr_01E_6CA5                            ; $6C40: $20 $63

    ld l, a                                       ; $6C42: $6F
    ld l, h                                       ; $6C43: $6C
    ld h, h                                       ; $6C44: $64

jr_01E_6C45:
    jr nz, jr_01E_6CB0                            ; $6C45: $20 $69

    ld l, [hl]                                    ; $6C47: $6E
    cp $74                                        ; $6C48: $FE $74

jr_01E_6C4A:
    ld l, b                                       ; $6C4A: $68
    ld h, c                                       ; $6C4B: $61
    ld [hl], h                                    ; $6C4C: $74
    jr nz, @+$66                                  ; $6C4D: $20 $64

    ld [hl], l                                    ; $6C4F: $75
    ld l, [hl]                                    ; $6C50: $6E
    ld h, a                                       ; $6C51: $67
    ld h, l                                       ; $6C52: $65
    ld l, a                                       ; $6C53: $6F
    ld l, [hl]                                    ; $6C54: $6E
    ld l, $FF                                     ; $6C55: $2E $FF
    ld c, b                                       ; $6C57: $48
    ld h, l                                       ; $6C58: $65
    ld [hl], d                                    ; $6C59: $72
    ld h, l                                       ; $6C5A: $65
    inc l                                         ; $6C5B: $2C
    jr nz, jr_01E_6CA7                            ; $6C5C: $20 $49

jr_01E_6C5E:
    jr nz, jr_01E_6CC8                            ; $6C5E: $20 $68

    ld h, c                                       ; $6C60: $61
    halt                                          ; $6C61: $76
    ld h, l                                       ; $6C62: $65
    cp $61                                        ; $6C63: $FE $61
    ld l, [hl]                                    ; $6C65: $6E
    jr nz, jr_01E_6CCD                            ; $6C66: $20 $65

    ld a, b                                       ; $6C68: $78
    ld [hl], h                                    ; $6C69: $74
    ld [hl], d                                    ; $6C6A: $72
    ld h, c                                       ; $6C6B: $61
    jr nz, jr_01E_6CDD                            ; $6C6C: $20 $6F

    ld l, [hl]                                    ; $6C6E: $6E
    ld h, l                                       ; $6C6F: $65
    rst $38                                       ; $6C70: $FF
    ld l, a                                       ; $6C71: $6F
    ld h, [hl]                                    ; $6C72: $66

jr_01E_6C73:
    jr nz, jr_01E_6CE9                            ; $6C73: $20 $74

    ld l, b                                       ; $6C75: $68
    ld h, l                                       ; $6C76: $65
    ld [hl], e                                    ; $6C77: $73
    ld h, l                                       ; $6C78: $65
    ld l, $FE                                     ; $6C79: $2E $FE
    db $FD                                        ; $6C7B: $FD
    add a                                         ; $6C7C: $87
    nop                                           ; $6C7D: $00
    dec d                                         ; $6C7E: $15
    ld bc, $789B                                  ; $6C7F: $01 $9B $78
    ld [hl], b                                    ; $6C82: $70
    sbc a                                         ; $6C83: $9F
    ld d, h                                       ; $6C84: $54
    ld l, a                                       ; $6C85: $6F
    ld l, [hl]                                    ; $6C86: $6E
    ld a, c                                       ; $6C87: $79
    jr nz, jr_01E_6CF1                            ; $6C88: $20 $67

    ld l, a                                       ; $6C8A: $6F
    ld [hl], h                                    ; $6C8B: $74
    jr nz, jr_01E_6CEF                            ; $6C8C: $20 $61

jr_01E_6C8E:
    rst $38                                       ; $6C8E: $FF
    db $FC                                        ; $6C8F: $FC
    cp $FD                                        ; $6C90: $FE $FD

jr_01E_6C92:
    sbc d                                         ; $6C92: $9A
    ld e, b                                       ; $6C93: $58
    ld bc, $9B42                                  ; $6C94: $01 $42 $9B
    jp hl                                         ; $6C97: $E9


    ld d, l                                       ; $6C98: $55
    sbc a                                         ; $6C99: $9F
    ld d, h                                       ; $6C9A: $54
    ld l, b                                       ; $6C9B: $68
    ld h, c                                       ; $6C9C: $61

jr_01E_6C9D:
    ld l, [hl]                                    ; $6C9D: $6E
    ld l, e                                       ; $6C9E: $6B
    ld [hl], e                                    ; $6C9F: $73
    jr nz, jr_01E_6D03                            ; $6CA0: $20 $61

    ld h, a                                       ; $6CA2: $67
    ld h, c                                       ; $6CA3: $61
    ld l, c                                       ; $6CA4: $69

jr_01E_6CA5:
    ld l, [hl]                                    ; $6CA5: $6E
    rst $38                                       ; $6CA6: $FF

jr_01E_6CA7:
    ld h, [hl]                                    ; $6CA7: $66
    ld l, a                                       ; $6CA8: $6F
    ld [hl], d                                    ; $6CA9: $72
    jr nz, @+$68                                  ; $6CAA: $20 $66

    ld [hl], d                                    ; $6CAC: $72
    ld h, l                                       ; $6CAD: $65
    ld h, l                                       ; $6CAE: $65
    ld l, c                                       ; $6CAF: $69

jr_01E_6CB0:
    ld l, [hl]                                    ; $6CB0: $6E
    ld h, a                                       ; $6CB1: $67

jr_01E_6CB2:
    jr nz, jr_01E_6D21                            ; $6CB2: $20 $6D

    ld h, l                                       ; $6CB4: $65
    ld hl, $FDFE                                  ; $6CB5: $21 $FE $FD
    sbc d                                         ; $6CB8: $9A
    ld e, b                                       ; $6CB9: $58
    ld bc, $9342                                  ; $6CBA: $01 $42 $93
    ld h, l                                       ; $6CBD: $65
    ld d, d                                       ; $6CBE: $52
    ld c, b                                       ; $6CBF: $48
    ld c, a                                       ; $6CC0: $4F
    ld h, h                                       ; $6CC1: $64
    sbc l                                         ; $6CC2: $9D
    ld c, e                                       ; $6CC3: $4B
    ld l, c                                       ; $6CC4: $69
    and d                                         ; $6CC5: $A2
    ld c, e                                       ; $6CC6: $4B
    ld h, [hl]                                    ; $6CC7: $66

jr_01E_6CC8:
    ret nz                                        ; $6CC8: $C0

    ld e, h                                       ; $6CC9: $5C
    ld hl, $0005                                  ; $6CCA: $21 $05 $00

jr_01E_6CCD:
    add c                                         ; $6CCD: $81
    ld e, l                                       ; $6CCE: $5D
    dec b                                         ; $6CCF: $05
    dec b                                         ; $6CD0: $05

jr_01E_6CD1:
    ld b, c                                       ; $6CD1: $41
    ret nc                                        ; $6CD2: $D0

    nop                                           ; $6CD3: $00
    jr nz, jr_01E_6CD1                            ; $6CD4: $20 $FB

    ld d, b                                       ; $6CD6: $50
    ld [hl+], a                                   ; $6CD7: $22
    dec b                                         ; $6CD8: $05
    ld b, b                                       ; $6CD9: $40
    dec b                                         ; $6CDA: $05
    ld [bc], a                                    ; $6CDB: $02
    db $ED                                        ; $6CDC: $ED

jr_01E_6CDD:
    ld h, e                                       ; $6CDD: $63
    ld [bc], a                                    ; $6CDE: $02
    ld [bc], a                                    ; $6CDF: $02
    ld a, [de]                                    ; $6CE0: $1A
    ret nc                                        ; $6CE1: $D0

    nop                                           ; $6CE2: $00
    ld e, $04                                     ; $6CE3: $1E $04
    ld l, l                                       ; $6CE5: $6D
    ld e, $29                                     ; $6CE6: $1E $29
    ld l, l                                       ; $6CE8: $6D

jr_01E_6CE9:
    ld l, e                                       ; $6CE9: $6B
    dec hl                                        ; $6CEA: $2B
    dec bc                                        ; $6CEB: $0B
    jr nz, jr_01E_6D35                            ; $6CEC: $20 $47

    nop                                           ; $6CEE: $00

jr_01E_6CEF:
    add b                                         ; $6CEF: $80
    nop                                           ; $6CF0: $00

jr_01E_6CF1:
    dec bc                                        ; $6CF1: $0B
    nop                                           ; $6CF2: $00
    nop                                           ; $6CF3: $00
    add d                                         ; $6CF4: $82
    rra                                           ; $6CF5: $1F
    dec e                                         ; $6CF6: $1D
    sub h                                         ; $6CF7: $94
    ld b, e                                       ; $6CF8: $43
    ld a, [bc]                                    ; $6CF9: $0A
    nop                                           ; $6CFA: $00
    and [hl]                                      ; $6CFB: $A6
    and c                                         ; $6CFC: $A1
    ld [bc], a                                    ; $6CFD: $02
    ld [hl+], a                                   ; $6CFE: $22
    inc b                                         ; $6CFF: $04
    ld b, b                                       ; $6D00: $40
    dec bc                                        ; $6D01: $0B
    ld [bc], a                                    ; $6D02: $02

jr_01E_6D03:
    ld b, d                                       ; $6D03: $42
    dec d                                         ; $6D04: $15
    ld de, $4501                                  ; $6D05: $11 $01 $45
    ld d, b                                       ; $6D08: $50
    ld de, $4529                                  ; $6D09: $11 $29 $45
    jr nc, @+$13                                  ; $6D0C: $30 $11

    ld bc, $6045                                  ; $6D0E: $01 $45 $60
    ld de, $4533                                  ; $6D11: $11 $33 $45
    jr nc, jr_01E_6D27                            ; $6D14: $30 $11

    sub c                                         ; $6D16: $91
    ld b, h                                       ; $6D17: $44
    db $10                                        ; $6D18: $10
    ld de, $4515                                  ; $6D19: $11 $15 $45
    ld h, b                                       ; $6D1C: $60
    ld de, $451F                                  ; $6D1D: $11 $1F $45
    ld b, b                                       ; $6D20: $40

jr_01E_6D21:
    ld de, $4481                                  ; $6D21: $11 $81 $44
    stop                                          ; $6D24: $10 $00
    ld b, [hl]                                    ; $6D26: $46

jr_01E_6D27:
    inc b                                         ; $6D27: $04
    ld l, l                                       ; $6D28: $6D
    ld b, e                                       ; $6D29: $43
    nop                                           ; $6D2A: $00
    or b                                          ; $6D2B: $B0
    and c                                         ; $6D2C: $A1
    ld [bc], a                                    ; $6D2D: $02
    ld e, $3D                                     ; $6D2E: $1E $3D
    ld l, l                                       ; $6D30: $6D
    xor a                                         ; $6D31: $AF
    or b                                          ; $6D32: $B0
    and c                                         ; $6D33: $A1
    ld [bc], a                                    ; $6D34: $02

jr_01E_6D35:
    ld e, e                                       ; $6D35: $5B
    ld e, $0F                                     ; $6D36: $1E $0F
    ld l, h                                       ; $6D38: $6C
    ld b, l                                       ; $6D39: $45
    ld de, $4551                                  ; $6D3A: $11 $51 $45
    ld e, e                                       ; $6D3D: $5B
    ld e, $96                                     ; $6D3E: $1E $96
    ld l, h                                       ; $6D40: $6C
    ld b, l                                       ; $6D41: $45
    ld de, $4551                                  ; $6D42: $11 $51 $45
    ld [bc], a                                    ; $6D45: $02
    inc b                                         ; $6D46: $04
    ld b, $11                                     ; $6D47: $06 $11
    ld c, $45                                     ; $6D49: $0E $45
    rla                                           ; $6D4B: $17
    jr nc, @+$6D                                  ; $6D4C: $30 $6B

    and h                                         ; $6D4E: $A4
    dec hl                                        ; $6D4F: $2B
    and e                                         ; $6D50: $A3
    ld [bc], a                                    ; $6D51: $02
    nop                                           ; $6D52: $00
    inc bc                                        ; $6D53: $03
    ld c, a                                       ; $6D54: $4F
    ret nc                                        ; $6D55: $D0

    sbc a                                         ; $6D56: $9F
    ld b, d                                       ; $6D57: $42
    ld b, d                                       ; $6D58: $42
    ld d, c                                       ; $6D59: $51
    jr nz, @+$45                                  ; $6D5A: $20 $43

    ld l, a                                       ; $6D5C: $6F
    ld l, a                                       ; $6D5D: $6F
    ld l, e                                       ; $6D5E: $6B
    ld h, d                                       ; $6D5F: $62
    ld l, a                                       ; $6D60: $6F
    ld l, a                                       ; $6D61: $6F
    ld l, e                                       ; $6D62: $6B
    ld [hl], e                                    ; $6D63: $73
    ld l, $FE                                     ; $6D64: $2E $FE
    db $FD                                        ; $6D66: $FD
    sbc e                                         ; $6D67: $9B
    ld a, b                                       ; $6D68: $78
    ld [hl], b                                    ; $6D69: $70
    sbc a                                         ; $6D6A: $9F
    ld c, c                                       ; $6D6B: $49
    daa                                           ; $6D6C: $27
    ld h, h                                       ; $6D6D: $64
    jr nz, jr_01E_6DD6                            ; $6D6E: $20 $66

    ld l, c                                       ; $6D70: $69
    ld h, a                                       ; $6D71: $67
    ld [hl], l                                    ; $6D72: $75
    ld [hl], d                                    ; $6D73: $72
    ld h, l                                       ; $6D74: $65
    ld l, $FE                                     ; $6D75: $2E $FE
    ld e, c                                       ; $6D77: $59
    ld h, l                                       ; $6D78: $65
    ld h, c                                       ; $6D79: $61
    ld l, b                                       ; $6D7A: $68
    ld l, $FE                                     ; $6D7B: $2E $FE
    db $FD                                        ; $6D7D: $FD
    sbc d                                         ; $6D7E: $9A
    ld b, d                                       ; $6D7F: $42
    sbc e                                         ; $6D80: $9B
    ld a, b                                       ; $6D81: $78
    ld [hl], b                                    ; $6D82: $70
    sbc a                                         ; $6D83: $9F
    ld c, c                                       ; $6D84: $49
    jr nz, jr_01E_6DF4                            ; $6D85: $20 $6D

    ld [hl], l                                    ; $6D87: $75
    ld [hl], e                                    ; $6D88: $73
    ld [hl], h                                    ; $6D89: $74
    jr nz, jr_01E_6DF5                            ; $6D8A: $20 $69

    ld l, [hl]                                    ; $6D8C: $6E
    ld [hl], e                                    ; $6D8D: $73
    ld [hl], b                                    ; $6D8E: $70
    ld h, l                                       ; $6D8F: $65
    ld h, e                                       ; $6D90: $63
    ld [hl], h                                    ; $6D91: $74
    rst $38                                       ; $6D92: $FF
    ld [hl], h                                    ; $6D93: $74
    ld l, b                                       ; $6D94: $68
    ld l, c                                       ; $6D95: $69
    ld [hl], e                                    ; $6D96: $73
    ld hl, $48FE                                  ; $6D97: $21 $FE $48
    ld l, l                                       ; $6D9A: $6D
    ld l, l                                       ; $6D9B: $6D
    ld l, $2E                                     ; $6D9C: $2E $2E
    ld l, $FE                                     ; $6D9E: $2E $FE
    ld c, [hl]                                    ; $6DA0: $4E
    ld l, a                                       ; $6DA1: $6F
    ld [hl], h                                    ; $6DA2: $74
    ld l, b                                       ; $6DA3: $68
    ld l, c                                       ; $6DA4: $69
    ld l, [hl]                                    ; $6DA5: $6E
    ld h, a                                       ; $6DA6: $67
    ld l, $FE                                     ; $6DA7: $2E $FE
    db $FD                                        ; $6DA9: $FD
    sbc d                                         ; $6DAA: $9A
    ld b, d                                       ; $6DAB: $42
    sbc e                                         ; $6DAC: $9B
    ld a, b                                       ; $6DAD: $78
    ld [hl], b                                    ; $6DAE: $70
    sbc a                                         ; $6DAF: $9F
    ld d, a                                       ; $6DB0: $57
    ld l, b                                       ; $6DB1: $68
    ld a, c                                       ; $6DB2: $79
    jr nz, jr_01E_6E19                            ; $6DB3: $20 $64

    ld l, a                                       ; $6DB5: $6F
    jr nz, jr_01E_6E01                            ; $6DB6: $20 $49

    jr nz, jr_01E_6E20                            ; $6DB8: $20 $66

    ld h, l                                       ; $6DBA: $65
    ld h, l                                       ; $6DBB: $65
    ld l, h                                       ; $6DBC: $6C
    rst $38                                       ; $6DBD: $FF
    ld [hl], h                                    ; $6DBE: $74
    ld l, b                                       ; $6DBF: $68
    ld h, l                                       ; $6DC0: $65
    jr nz, @+$77                                  ; $6DC1: $20 $75

    ld [hl], d                                    ; $6DC3: $72
    ld h, a                                       ; $6DC4: $67
    ld h, l                                       ; $6DC5: $65
    jr nz, jr_01E_6E3C                            ; $6DC6: $20 $74

    ld l, a                                       ; $6DC8: $6F
    cp $6D                                        ; $6DC9: $FE $6D
    ld h, l                                       ; $6DCB: $65
    ld [hl], e                                    ; $6DCC: $73
    ld [hl], e                                    ; $6DCD: $73
    jr nz, jr_01E_6E47                            ; $6DCE: $20 $77

    ld l, c                                       ; $6DD0: $69
    ld [hl], h                                    ; $6DD1: $74
    ld l, b                                       ; $6DD2: $68
    rst $38                                       ; $6DD3: $FF
    ld [hl], b                                    ; $6DD4: $70
    ld h, l                                       ; $6DD5: $65

jr_01E_6DD6:
    ld l, a                                       ; $6DD6: $6F
    ld [hl], b                                    ; $6DD7: $70
    ld l, h                                       ; $6DD8: $6C
    ld h, l                                       ; $6DD9: $65
    daa                                           ; $6DDA: $27
    ld [hl], e                                    ; $6DDB: $73
    jr nz, jr_01E_6E51                            ; $6DDC: $20 $73

    ld [hl], h                                    ; $6DDE: $74
    ld [hl], l                                    ; $6DDF: $75
    ld h, [hl]                                    ; $6DE0: $66
    ld h, [hl]                                    ; $6DE1: $66
    ccf                                           ; $6DE2: $3F
    cp $4F                                        ; $6DE3: $FE $4F
    ld l, b                                       ; $6DE5: $68
    jr nz, @+$79                                  ; $6DE6: $20 $77

    ld h, l                                       ; $6DE8: $65
    ld l, h                                       ; $6DE9: $6C
    ld l, h                                       ; $6DEA: $6C
    inc l                                         ; $6DEB: $2C
    jr nz, jr_01E_6E51                            ; $6DEC: $20 $63

    ld h, c                                       ; $6DEE: $61
    ld l, [hl]                                    ; $6DEF: $6E
    daa                                           ; $6DF0: $27
    ld [hl], h                                    ; $6DF1: $74
    rst $38                                       ; $6DF2: $FF
    ld h, d                                       ; $6DF3: $62

jr_01E_6DF4:
    ld h, l                                       ; $6DF4: $65

jr_01E_6DF5:
    jr nz, @+$6A                                  ; $6DF5: $20 $68

    ld h, l                                       ; $6DF7: $65
    ld l, h                                       ; $6DF8: $6C
    ld [hl], b                                    ; $6DF9: $70
    ld h, l                                       ; $6DFA: $65
    ld h, h                                       ; $6DFB: $64
    cp $49                                        ; $6DFC: $FE $49
    jr nz, jr_01E_6E67                            ; $6DFE: $20 $67

    ld [hl], l                                    ; $6E00: $75

jr_01E_6E01:
    ld h, l                                       ; $6E01: $65
    ld [hl], e                                    ; $6E02: $73
    ld [hl], e                                    ; $6E03: $73
    ld l, $FE                                     ; $6E04: $2E $FE
    db $FD                                        ; $6E06: $FD
    sbc d                                         ; $6E07: $9A
    ld b, d                                       ; $6E08: $42
    sbc e                                         ; $6E09: $9B
    ld a, b                                       ; $6E0A: $78
    ld [hl], b                                    ; $6E0B: $70
    sbc a                                         ; $6E0C: $9F
    ld d, e                                       ; $6E0D: $53
    ld l, a                                       ; $6E0E: $6F
    ld l, l                                       ; $6E0F: $6D
    ld h, l                                       ; $6E10: $65
    jr nz, jr_01E_6E82                            ; $6E11: $20 $6F

    ld h, [hl]                                    ; $6E13: $66
    jr nz, jr_01E_6E8A                            ; $6E14: $20 $74

    ld l, b                                       ; $6E16: $68
    ld h, l                                       ; $6E17: $65
    ld [hl], e                                    ; $6E18: $73

jr_01E_6E19:
    ld h, l                                       ; $6E19: $65
    rst $38                                       ; $6E1A: $FF
    ld h, h                                       ; $6E1B: $64
    ld [hl], d                                    ; $6E1C: $72
    ld h, c                                       ; $6E1D: $61
    ld [hl], a                                    ; $6E1E: $77
    ld h, l                                       ; $6E1F: $65

jr_01E_6E20:
    ld [hl], d                                    ; $6E20: $72
    ld [hl], e                                    ; $6E21: $73
    jr nz, jr_01E_6E85                            ; $6E22: $20 $61

    ld [hl], d                                    ; $6E24: $72
    ld h, l                                       ; $6E25: $65
    cp $6D                                        ; $6E26: $FE $6D
    ld h, l                                       ; $6E28: $65
    ld l, h                                       ; $6E29: $6C
    ld [hl], h                                    ; $6E2A: $74
    ld l, c                                       ; $6E2B: $69
    ld l, [hl]                                    ; $6E2C: $6E
    ld h, a                                       ; $6E2D: $67
    ld l, $FE                                     ; $6E2E: $2E $FE
    ld c, c                                       ; $6E30: $49
    jr nz, jr_01E_6EA7                            ; $6E31: $20 $74

    ld l, b                                       ; $6E33: $68
    ld l, c                                       ; $6E34: $69
    ld l, [hl]                                    ; $6E35: $6E
    ld l, e                                       ; $6E36: $6B
    jr nz, jr_01E_6E82                            ; $6E37: $20 $49

    daa                                           ; $6E39: $27
    ld l, h                                       ; $6E3A: $6C
    ld l, h                                       ; $6E3B: $6C

jr_01E_6E3C:
    rst $38                                       ; $6E3C: $FF
    ld l, h                                       ; $6E3D: $6C
    ld h, l                                       ; $6E3E: $65
    ld h, c                                       ; $6E3F: $61
    halt                                          ; $6E40: $76
    ld h, l                                       ; $6E41: $65
    jr nz, jr_01E_6EB8                            ; $6E42: $20 $74

    ld l, b                                       ; $6E44: $68
    ld l, c                                       ; $6E45: $69
    ld [hl], e                                    ; $6E46: $73

jr_01E_6E47:
    cp $61                                        ; $6E47: $FE $61
    ld l, h                                       ; $6E49: $6C
    ld l, a                                       ; $6E4A: $6F
    ld l, [hl]                                    ; $6E4B: $6E
    ld h, l                                       ; $6E4C: $65
    ld l, $FE                                     ; $6E4D: $2E $FE
    db $FD                                        ; $6E4F: $FD
    sbc d                                         ; $6E50: $9A

jr_01E_6E51:
    ld b, d                                       ; $6E51: $42
    sbc e                                         ; $6E52: $9B
    ld a, b                                       ; $6E53: $78
    ld [hl], b                                    ; $6E54: $70
    sbc a                                         ; $6E55: $9F
    ld b, e                                       ; $6E56: $43
    ld [hl], d                                    ; $6E57: $72
    ld h, c                                       ; $6E58: $61
    ld [hl], a                                    ; $6E59: $77
    ld l, h                                       ; $6E5A: $6C
    ld l, c                                       ; $6E5B: $69
    ld l, [hl]                                    ; $6E5C: $6E
    ld h, a                                       ; $6E5D: $67
    jr nz, jr_01E_6ED5                            ; $6E5E: $20 $75

    ld l, [hl]                                    ; $6E60: $6E
    ld h, h                                       ; $6E61: $64
    ld h, l                                       ; $6E62: $65
    ld [hl], d                                    ; $6E63: $72
    rst $38                                       ; $6E64: $FF
    ld [hl], e                                    ; $6E65: $73
    ld l, a                                       ; $6E66: $6F

jr_01E_6E67:
    ld l, l                                       ; $6E67: $6D
    ld h, l                                       ; $6E68: $65
    jr nz, jr_01E_6ECE                            ; $6E69: $20 $63

    ld l, a                                       ; $6E6B: $6F
    halt                                          ; $6E6C: $76
    ld h, l                                       ; $6E6D: $65
    ld [hl], d                                    ; $6E6E: $72
    ld [hl], e                                    ; $6E6F: $73
    cp $6A                                        ; $6E70: $FE $6A
    ld [hl], l                                    ; $6E72: $75
    ld [hl], e                                    ; $6E73: $73
    ld [hl], h                                    ; $6E74: $74
    jr nz, jr_01E_6EDB                            ; $6E75: $20 $64

    ld l, a                                       ; $6E77: $6F
    ld h, l                                       ; $6E78: $65
    ld [hl], e                                    ; $6E79: $73
    ld l, [hl]                                    ; $6E7A: $6E
    daa                                           ; $6E7B: $27
    ld [hl], h                                    ; $6E7C: $74
    rst $38                                       ; $6E7D: $FF
    ld [hl], e                                    ; $6E7E: $73
    ld h, l                                       ; $6E7F: $65
    ld h, l                                       ; $6E80: $65
    ld l, l                                       ; $6E81: $6D

jr_01E_6E82:
    jr nz, jr_01E_6EE5                            ; $6E82: $20 $61

    ld [hl], b                                    ; $6E84: $70

jr_01E_6E85:
    ld [hl], b                                    ; $6E85: $70
    ld h, l                                       ; $6E86: $65
    ld h, c                                       ; $6E87: $61
    ld l, h                                       ; $6E88: $6C
    ld l, c                                       ; $6E89: $69

jr_01E_6E8A:
    ld l, [hl]                                    ; $6E8A: $6E
    ld h, a                                       ; $6E8B: $67
    cp $72                                        ; $6E8C: $FE $72
    ld l, c                                       ; $6E8E: $69
    ld h, a                                       ; $6E8F: $67
    ld l, b                                       ; $6E90: $68
    ld [hl], h                                    ; $6E91: $74
    jr nz, jr_01E_6F02                            ; $6E92: $20 $6E

    ld l, a                                       ; $6E94: $6F
    ld [hl], a                                    ; $6E95: $77
    ld l, $FE                                     ; $6E96: $2E $FE
    ld d, a                                       ; $6E98: $57
    ld l, b                                       ; $6E99: $68
    ld h, l                                       ; $6E9A: $65
    ld [hl], a                                    ; $6E9B: $77
    ld l, $FE                                     ; $6E9C: $2E $FE
    db $FD                                        ; $6E9E: $FD
    sbc d                                         ; $6E9F: $9A
    ld b, d                                       ; $6EA0: $42
    sbc e                                         ; $6EA1: $9B
    ld a, b                                       ; $6EA2: $78
    ld [hl], b                                    ; $6EA3: $70
    sbc a                                         ; $6EA4: $9F
    ld d, h                                       ; $6EA5: $54
    ld l, b                                       ; $6EA6: $68

jr_01E_6EA7:
    ld l, c                                       ; $6EA7: $69
    ld [hl], e                                    ; $6EA8: $73
    jr nz, jr_01E_6F18                            ; $6EA9: $20 $6D

    ld [hl], l                                    ; $6EAB: $75
    ld [hl], e                                    ; $6EAC: $73
    ld [hl], h                                    ; $6EAD: $74
    jr nz, jr_01E_6F12                            ; $6EAE: $20 $62

    ld h, l                                       ; $6EB0: $65
    rst $38                                       ; $6EB1: $FF
    ld [hl], h                                    ; $6EB2: $74
    ld l, b                                       ; $6EB3: $68
    ld h, l                                       ; $6EB4: $65
    jr nz, jr_01E_6F2B                            ; $6EB5: $20 $74

    ld l, c                                       ; $6EB7: $69

jr_01E_6EB8:
    ld l, l                                       ; $6EB8: $6D
    ld h, l                                       ; $6EB9: $65
    jr nz, jr_01E_6F2B                            ; $6EBA: $20 $6F

    ld [hl], l                                    ; $6EBC: $75
    ld [hl], h                                    ; $6EBD: $74
    cp $63                                        ; $6EBE: $FE $63
    ld l, b                                       ; $6EC0: $68
    ld h, c                                       ; $6EC1: $61
    ld l, c                                       ; $6EC2: $69
    ld [hl], d                                    ; $6EC3: $72
    ld l, $FE                                     ; $6EC4: $2E $FE
    db $FD                                        ; $6EC6: $FD
    sbc d                                         ; $6EC7: $9A
    ld b, d                                       ; $6EC8: $42
    sbc e                                         ; $6EC9: $9B
    ld a, b                                       ; $6ECA: $78
    ld [hl], b                                    ; $6ECB: $70
    sbc a                                         ; $6ECC: $9F
    ld d, b                                       ; $6ECD: $50

jr_01E_6ECE:
    ld l, c                                       ; $6ECE: $69
    ld h, a                                       ; $6ECF: $67
    ld [hl], e                                    ; $6ED0: $73
    inc l                                         ; $6ED1: $2C
    jr nz, jr_01E_6F3B                            ; $6ED2: $20 $67

    ld l, a                                       ; $6ED4: $6F

jr_01E_6ED5:
    ld h, c                                       ; $6ED5: $61
    ld [hl], h                                    ; $6ED6: $74
    ld [hl], e                                    ; $6ED7: $73
    inc l                                         ; $6ED8: $2C
    rst $38                                       ; $6ED9: $FF
    ld h, c                                       ; $6EDA: $61

jr_01E_6EDB:
    ld l, [hl]                                    ; $6EDB: $6E
    ld h, h                                       ; $6EDC: $64
    jr nz, @+$65                                  ; $6EDD: $20 $63

    ld l, b                                       ; $6EDF: $68
    ld l, c                                       ; $6EE0: $69
    ld h, e                                       ; $6EE1: $63
    ld l, e                                       ; $6EE2: $6B
    ld h, l                                       ; $6EE3: $65
    ld l, [hl]                                    ; $6EE4: $6E

jr_01E_6EE5:
    ld [hl], e                                    ; $6EE5: $73
    ld l, $FE                                     ; $6EE6: $2E $FE
    ld c, a                                       ; $6EE8: $4F
    ld l, [hl]                                    ; $6EE9: $6E
    jr nz, jr_01E_6F52                            ; $6EEA: $20 $66

    ld l, c                                       ; $6EEC: $69
    ld [hl], d                                    ; $6EED: $72
    ld h, l                                       ; $6EEE: $65
    ld l, $FE                                     ; $6EEF: $2E $FE
    db $FD                                        ; $6EF1: $FD
    sbc d                                         ; $6EF2: $9A
    ld b, d                                       ; $6EF3: $42
    sbc e                                         ; $6EF4: $9B
    ret c                                         ; $6EF5: $D8

    ld h, b                                       ; $6EF6: $60
    sbc a                                         ; $6EF7: $9F
    ld d, a                                       ; $6EF8: $57
    ld l, a                                       ; $6EF9: $6F
    ld [hl], l                                    ; $6EFA: $75
    ld l, h                                       ; $6EFB: $6C
    ld h, h                                       ; $6EFC: $64
    jr nz, jr_01E_6F78                            ; $6EFD: $20 $79

    ld l, a                                       ; $6EFF: $6F
    ld [hl], l                                    ; $6F00: $75
    rst $38                                       ; $6F01: $FF

jr_01E_6F02:
    ld l, h                                       ; $6F02: $6C
    ld l, c                                       ; $6F03: $69
    ld l, e                                       ; $6F04: $6B
    ld h, l                                       ; $6F05: $65
    jr nz, jr_01E_6F7C                            ; $6F06: $20 $74

    ld l, a                                       ; $6F08: $6F
    jr nz, jr_01E_6F7D                            ; $6F09: $20 $72

    ld h, l                                       ; $6F0B: $65
    ld h, e                                       ; $6F0C: $63
    ld l, a                                       ; $6F0D: $6F
    ld [hl], d                                    ; $6F0E: $72
    ld h, h                                       ; $6F0F: $64
    cp $79                                        ; $6F10: $FE $79

jr_01E_6F12:
    ld l, a                                       ; $6F12: $6F
    ld [hl], l                                    ; $6F13: $75
    ld [hl], d                                    ; $6F14: $72
    jr nz, jr_01E_6F81                            ; $6F15: $20 $6A

    ld l, a                                       ; $6F17: $6F

jr_01E_6F18:
    ld [hl], l                                    ; $6F18: $75
    ld [hl], d                                    ; $6F19: $72
    ld l, [hl]                                    ; $6F1A: $6E
    ld h, l                                       ; $6F1B: $65
    ld a, c                                       ; $6F1C: $79
    rst $38                                       ; $6F1D: $FF
    ld h, c                                       ; $6F1E: $61
    ld l, [hl]                                    ; $6F1F: $6E
    ld h, h                                       ; $6F20: $64
    jr nz, @+$74                                  ; $6F21: $20 $72

    ld h, l                                       ; $6F23: $65
    ld h, e                                       ; $6F24: $63
    ld l, a                                       ; $6F25: $6F
    halt                                          ; $6F26: $76
    ld h, l                                       ; $6F27: $65
    ld [hl], d                                    ; $6F28: $72
    cp $6C                                        ; $6F29: $FE $6C

jr_01E_6F2B:
    ld l, a                                       ; $6F2B: $6F
    ld [hl], e                                    ; $6F2C: $73
    ld [hl], h                                    ; $6F2D: $74
    jr nz, @+$67                                  ; $6F2E: $20 $65

    ld l, [hl]                                    ; $6F30: $6E
    ld h, l                                       ; $6F31: $65
    ld [hl], d                                    ; $6F32: $72
    ld h, a                                       ; $6F33: $67
    ld a, c                                       ; $6F34: $79
    ccf                                           ; $6F35: $3F
    cp $FD                                        ; $6F36: $FE $FD
    sbc e                                         ; $6F38: $9B
    ld a, b                                       ; $6F39: $78
    ld [hl], b                                    ; $6F3A: $70

jr_01E_6F3B:
    sbc a                                         ; $6F3B: $9F
    jr nz, jr_01E_6F97                            ; $6F3C: $20 $59

    ld h, l                                       ; $6F3E: $65
    ld [hl], e                                    ; $6F3F: $73
    rst $38                                       ; $6F40: $FF
    jr nz, jr_01E_6F91                            ; $6F41: $20 $4E

    ld l, a                                       ; $6F43: $6F
    db $FD                                        ; $6F44: $FD
    sbc h                                         ; $6F45: $9C
    ld [bc], a                                    ; $6F46: $02
    ld e, $4D                                     ; $6F47: $1E $4D
    ld l, a                                       ; $6F49: $6F
    ld e, $78                                     ; $6F4A: $1E $78
    ld l, a                                       ; $6F4C: $6F
    sbc c                                         ; $6F4D: $99
    sbc e                                         ; $6F4E: $9B
    ret c                                         ; $6F4F: $D8

    ld h, b                                       ; $6F50: $60
    sbc a                                         ; $6F51: $9F

jr_01E_6F52:
    ld d, b                                       ; $6F52: $50
    ld l, h                                       ; $6F53: $6C
    ld h, l                                       ; $6F54: $65
    ld h, c                                       ; $6F55: $61
    ld [hl], e                                    ; $6F56: $73
    ld h, c                                       ; $6F57: $61
    ld l, [hl]                                    ; $6F58: $6E
    ld [hl], h                                    ; $6F59: $74
    rst $38                                       ; $6F5A: $FF
    ld h, h                                       ; $6F5B: $64
    ld [hl], d                                    ; $6F5C: $72
    ld h, l                                       ; $6F5D: $65
    ld h, c                                       ; $6F5E: $61
    ld l, l                                       ; $6F5F: $6D
    ld [hl], e                                    ; $6F60: $73
    ld hl, $FDFE                                  ; $6F61: $21 $FE $FD
    sbc d                                         ; $6F64: $9A
    sub [hl]                                      ; $6F65: $96
    ld e, $C1                                     ; $6F66: $1E $C1
    ld l, a                                       ; $6F68: $6F
    ld l, [hl]                                    ; $6F69: $6E
    rrca                                          ; $6F6A: $0F
    rst $38                                       ; $6F6B: $FF
    ld a, a                                       ; $6F6C: $7F
    halt                                          ; $6F6D: $76
    jr nz, jr_01E_6F7F                            ; $6F6E: $20 $0F

    sub d                                         ; $6F70: $92
    ld bc, $4040                                  ; $6F71: $01 $40 $40
    ld b, l                                       ; $6F74: $45
    ld e, $20                                     ; $6F75: $1E $20
    ld [hl], b                                    ; $6F77: $70

jr_01E_6F78:
    sbc c                                         ; $6F78: $99
    sbc e                                         ; $6F79: $9B
    ret c                                         ; $6F7A: $D8

    ld h, b                                       ; $6F7B: $60

jr_01E_6F7C:
    sbc a                                         ; $6F7C: $9F

jr_01E_6F7D:
    ld c, b                                       ; $6F7D: $48
    ld h, c                                       ; $6F7E: $61

jr_01E_6F7F:
    halt                                          ; $6F7F: $76
    ld h, l                                       ; $6F80: $65

jr_01E_6F81:
    jr nz, jr_01E_6FE4                            ; $6F81: $20 $61

    jr nz, jr_01E_6FEC                            ; $6F83: $20 $67

    ld [hl], d                                    ; $6F85: $72
    ld h, l                                       ; $6F86: $65
    ld h, c                                       ; $6F87: $61
    ld [hl], h                                    ; $6F88: $74
    rst $38                                       ; $6F89: $FF
    ld h, h                                       ; $6F8A: $64
    ld h, c                                       ; $6F8B: $61
    ld a, c                                       ; $6F8C: $79
    ld hl, $FE21                                  ; $6F8D: $21 $21 $FE
    db $FD                                        ; $6F90: $FD

jr_01E_6F91:
    sbc d                                         ; $6F91: $9A
    ld e, b                                       ; $6F92: $58
    ld bc, $9B42                                  ; $6F93: $01 $42 $9B
    ret c                                         ; $6F96: $D8

jr_01E_6F97:
    ld h, b                                       ; $6F97: $60
    sbc a                                         ; $6F98: $9F
    ld b, [hl]                                    ; $6F99: $46
    ld [hl], l                                    ; $6F9A: $75
    ld l, [hl]                                    ; $6F9B: $6E
    ld l, [hl]                                    ; $6F9C: $6E
    ld a, c                                       ; $6F9D: $79
    inc l                                         ; $6F9E: $2C
    jr nz, jr_01E_6FEA                            ; $6F9F: $20 $49

    jr nz, jr_01E_7007                            ; $6FA1: $20 $64

    ld l, c                                       ; $6FA3: $69
    ld h, h                                       ; $6FA4: $64
    ld l, [hl]                                    ; $6FA5: $6E
    daa                                           ; $6FA6: $27
    ld [hl], h                                    ; $6FA7: $74
    cp $73                                        ; $6FA8: $FE $73
    ld h, l                                       ; $6FAA: $65
    ld h, l                                       ; $6FAB: $65
    jr nz, jr_01E_7027                            ; $6FAC: $20 $79

    ld l, a                                       ; $6FAE: $6F
    ld [hl], l                                    ; $6FAF: $75
    jr nz, jr_01E_7015                            ; $6FB0: $20 $63

    ld l, a                                       ; $6FB2: $6F
    ld l, l                                       ; $6FB3: $6D
    ld h, l                                       ; $6FB4: $65
    cp $69                                        ; $6FB5: $FE $69
    ld l, [hl]                                    ; $6FB7: $6E
    ld l, $2E                                     ; $6FB8: $2E $2E
    ld l, $FE                                     ; $6FBA: $2E $FE
    db $FD                                        ; $6FBC: $FD
    ld b, l                                       ; $6FBD: $45
    ld e, $F7                                     ; $6FBE: $1E $F7
    ld l, [hl]                                    ; $6FC0: $6E
    dec b                                         ; $6FC1: $05
    nop                                           ; $6FC2: $00
    add c                                         ; $6FC3: $81
    ld e, l                                       ; $6FC4: $5D
    dec b                                         ; $6FC5: $05
    db $10                                        ; $6FC6: $10
    push bc                                       ; $6FC7: $C5
    ret nc                                        ; $6FC8: $D0

    nop                                           ; $6FC9: $00
    jr nz, jr_01E_6F81                            ; $6FCA: $20 $B5

    ld d, b                                       ; $6FCC: $50
    ld [hl+], a                                   ; $6FCD: $22
    dec b                                         ; $6FCE: $05
    ld b, b                                       ; $6FCF: $40
    ld [bc], a                                    ; $6FD0: $02
    dec b                                         ; $6FD1: $05
    dec b                                         ; $6FD2: $05
    db $10                                        ; $6FD3: $10
    db $10                                        ; $6FD4: $10
    xor h                                         ; $6FD5: $AC
    or d                                          ; $6FD6: $B2
    and d                                         ; $6FD7: $A2
    ld bc, $0F43                                  ; $6FD8: $01 $43 $0F
    inc b                                         ; $6FDB: $04
    dec b                                         ; $6FDC: $05
    rrca                                          ; $6FDD: $0F
    ld e, $35                                     ; $6FDE: $1E $35
    ld [hl], c                                    ; $6FE0: $71
    sub e                                         ; $6FE1: $93
    ld h, l                                       ; $6FE2: $65
    ld h, c                                       ; $6FE3: $61

jr_01E_6FE4:
    ld c, b                                       ; $6FE4: $48
    ld c, a                                       ; $6FE5: $4F
    ld h, h                                       ; $6FE6: $64
    or a                                          ; $6FE7: $B7
    ld c, e                                       ; $6FE8: $4B
    ld l, c                                       ; $6FE9: $69

jr_01E_6FEA:
    cp h                                          ; $6FEA: $BC
    ld c, e                                       ; $6FEB: $4B

jr_01E_6FEC:
    ld h, [hl]                                    ; $6FEC: $66
    ret nz                                        ; $6FED: $C0

    ld e, h                                       ; $6FEE: $5C
    ld hl, $0005                                  ; $6FEF: $21 $05 $00
    add c                                         ; $6FF2: $81
    ld e, l                                       ; $6FF3: $5D
    dec b                                         ; $6FF4: $05
    dec b                                         ; $6FF5: $05

jr_01E_6FF6:
    ld b, c                                       ; $6FF6: $41
    ret nc                                        ; $6FF7: $D0

    nop                                           ; $6FF8: $00
    jr nz, jr_01E_6FF6                            ; $6FF9: $20 $FB

    ld d, b                                       ; $6FFB: $50
    ld [hl+], a                                   ; $6FFC: $22
    dec b                                         ; $6FFD: $05
    ld b, b                                       ; $6FFE: $40
    dec bc                                        ; $6FFF: $0B
    nop                                           ; $7000: $00
    dec b                                         ; $7001: $05
    ld [bc], a                                    ; $7002: $02
    db $ED                                        ; $7003: $ED
    ld h, e                                       ; $7004: $63
    inc b                                         ; $7005: $04
    dec c                                         ; $7006: $0D

jr_01E_7007:
    and b                                         ; $7007: $A0
    ret nc                                        ; $7008: $D0

    nop                                           ; $7009: $00
    dec h                                         ; $700A: $25
    and c                                         ; $700B: $A1
    ld c, [hl]                                    ; $700C: $4E
    ld e, $B0                                     ; $700D: $1E $B0
    ld [hl], b                                    ; $700F: $70
    dec bc                                        ; $7010: $0B
    ld [bc], a                                    ; $7011: $02
    ld l, e                                       ; $7012: $6B
    jr nz, jr_01E_7021                            ; $7013: $20 $0C

jr_01E_7015:
    ldh a, [rBCPD]                                ; $7015: $F0 $69
    nop                                           ; $7017: $00
    add b                                         ; $7018: $80
    nop                                           ; $7019: $00
    nop                                           ; $701A: $00
    add d                                         ; $701B: $82
    rra                                           ; $701C: $1F
    dec e                                         ; $701D: $1D
    sub h                                         ; $701E: $94
    ld b, d                                       ; $701F: $42
    xor h                                         ; $7020: $AC

jr_01E_7021:
    or d                                          ; $7021: $B2
    and d                                         ; $7022: $A2
    ld bc, $6593                                  ; $7023: $01 $93 $65
    ld h, c                                       ; $7026: $61

jr_01E_7027:
    ld c, b                                       ; $7027: $48
    ld c, a                                       ; $7028: $4F
    ld h, h                                       ; $7029: $64
    or a                                          ; $702A: $B7
    ld c, e                                       ; $702B: $4B
    ld l, c                                       ; $702C: $69
    cp h                                          ; $702D: $BC
    ld c, e                                       ; $702E: $4B
    ld h, [hl]                                    ; $702F: $66
    ret nz                                        ; $7030: $C0

    ld e, h                                       ; $7031: $5C
    ld hl, $0F6F                                  ; $7032: $21 $6F $0F
    rst $38                                       ; $7035: $FF
    ld a, a                                       ; $7036: $7F
    dec b                                         ; $7037: $05
    nop                                           ; $7038: $00
    ld l, e                                       ; $7039: $6B
    ld c, d                                       ; $703A: $4A
    inc bc                                        ; $703B: $03
    inc b                                         ; $703C: $04
    inc sp                                        ; $703D: $33
    ret nc                                        ; $703E: $D0

    nop                                           ; $703F: $00
    ld e, $9E                                     ; $7040: $1E $9E
    ld [hl], b                                    ; $7042: $70
    ld [hl+], a                                   ; $7043: $22
    dec b                                         ; $7044: $05
    ld b, b                                       ; $7045: $40
    dec b                                         ; $7046: $05
    ld [bc], a                                    ; $7047: $02
    db $ED                                        ; $7048: $ED
    ld h, e                                       ; $7049: $63
    inc b                                         ; $704A: $04
    dec c                                         ; $704B: $0D
    and b                                         ; $704C: $A0
    ret nc                                        ; $704D: $D0

    nop                                           ; $704E: $00
    dec h                                         ; $704F: $25
    and c                                         ; $7050: $A1
    ld c, [hl]                                    ; $7051: $4E
    ld e, $B0                                     ; $7052: $1E $B0
    ld [hl], b                                    ; $7054: $70
    dec b                                         ; $7055: $05
    inc bc                                        ; $7056: $03
    db $ED                                        ; $7057: $ED
    ld h, e                                       ; $7058: $63
    ld b, $03                                     ; $7059: $06 $03
    ld a, [hl+]                                   ; $705B: $2A
    ret nc                                        ; $705C: $D0

    jr nz, @+$11                                  ; $705D: $20 $0F

    and b                                         ; $705F: $A0
    ld a, c                                       ; $7060: $79
    ld e, $8D                                     ; $7061: $1E $8D
    ld [hl], c                                    ; $7063: $71
    ld l, e                                       ; $7064: $6B

jr_01E_7065:
    jr nz, jr_01E_7073                            ; $7065: $20 $0C

    ldh a, [rBCPD]                                ; $7067: $F0 $69
    nop                                           ; $7069: $00
    add b                                         ; $706A: $80
    nop                                           ; $706B: $00
    ld l, e                                       ; $706C: $6B
    jr nc, jr_01E_707A                            ; $706D: $30 $0B

    ret nz                                        ; $706F: $C0

    ld [hl], a                                    ; $7070: $77
    nop                                           ; $7071: $00
    add d                                         ; $7072: $82

jr_01E_7073:
    nop                                           ; $7073: $00
    dec bc                                        ; $7074: $0B
    nop                                           ; $7075: $00
    dec bc                                        ; $7076: $0B
    ld [bc], a                                    ; $7077: $02
    add d                                         ; $7078: $82
    rra                                           ; $7079: $1F

jr_01E_707A:
    dec e                                         ; $707A: $1D
    sub h                                         ; $707B: $94
    ld b, e                                       ; $707C: $43
    db $10                                        ; $707D: $10

jr_01E_707E:
    inc b                                         ; $707E: $04
    dec b                                         ; $707F: $05
    rrca                                          ; $7080: $0F
    ld e, $8E                                     ; $7081: $1E $8E
    ld [hl], b                                    ; $7083: $70

jr_01E_7084:
    dec bc                                        ; $7084: $0B
    inc bc                                        ; $7085: $03
    ld [$F800], sp                                ; $7086: $08 $00 $F8
    db $FD                                        ; $7089: $FD
    inc b                                         ; $708A: $04
    dec b                                         ; $708B: $05
    ld b, b                                       ; $708C: $40
    ret nc                                        ; $708D: $D0

    halt                                          ; $708E: $76
    jr nz, @+$11                                  ; $708F: $20 $0F

    ld e, h                                       ; $7091: $5C
    nop                                           ; $7092: $00
    ld [bc], a                                    ; $7093: $02
    rlca                                          ; $7094: $07
    nop                                           ; $7095: $00
    add c                                         ; $7096: $81
    ld e, l                                       ; $7097: $5D
    add hl, bc                                    ; $7098: $09
    nop                                           ; $7099: $00
    jr nz, jr_01E_7065                            ; $709A: $20 $C9

jr_01E_709C:
    ld d, b                                       ; $709C: $50
    ld b, d                                       ; $709D: $42
    dec d                                         ; $709E: $15
    jr nz, jr_01E_7084                            ; $709F: $20 $E3

    ld e, d                                       ; $70A1: $5A
    ld b, b                                       ; $70A2: $40
    jr nz, jr_01E_707E                            ; $70A3: $20 $D9

    ld e, d                                       ; $70A5: $5A
    jr nz, jr_01E_70C8                            ; $70A6: $20 $20

    db $ED                                        ; $70A8: $ED
    ld e, d                                       ; $70A9: $5A
    stop                                          ; $70AA: $10 $00
    ld e, h                                       ; $70AC: $5C
    nop                                           ; $70AD: $00
    ld [bc], a                                    ; $70AE: $02
    ld b, d                                       ; $70AF: $42
    inc d                                         ; $70B0: $14
    dec h                                         ; $70B1: $25
    and c                                         ; $70B2: $A1
    ld c, [hl]                                    ; $70B3: $4E
    ld e, e                                       ; $70B4: $5B
    ld e, $F4                                     ; $70B5: $1E $F4
    ld l, [hl]                                    ; $70B7: $6E
    ld b, l                                       ; $70B8: $45

jr_01E_70B9:
    dec h                                         ; $70B9: $25
    rst $20                                       ; $70BA: $E7
    ld c, [hl]                                    ; $70BB: $4E
    sub e                                         ; $70BC: $93
    ld h, l                                       ; $70BD: $65
    ld h, c                                       ; $70BE: $61
    ld c, b                                       ; $70BF: $48
    ld c, a                                       ; $70C0: $4F
    ld h, h                                       ; $70C1: $64
    or a                                          ; $70C2: $B7
    ld c, e                                       ; $70C3: $4B
    ld l, c                                       ; $70C4: $69
    cp h                                          ; $70C5: $BC
    ld c, e                                       ; $70C6: $4B
    ld h, [hl]                                    ; $70C7: $66

jr_01E_70C8:
    ret nz                                        ; $70C8: $C0

    ld e, h                                       ; $70C9: $5C
    ld hl, $0005                                  ; $70CA: $21 $05 $00
    ld l, e                                       ; $70CD: $6B
    ld c, d                                       ; $70CE: $4A
    dec b                                         ; $70CF: $05

jr_01E_70D0:
    nop                                           ; $70D0: $00
    dec b                                         ; $70D1: $05
    ret nc                                        ; $70D2: $D0

    nop                                           ; $70D3: $00
    ld e, $06                                     ; $70D4: $1E $06
    ld [hl], c                                    ; $70D6: $71
    ld [hl+], a                                   ; $70D7: $22
    dec b                                         ; $70D8: $05
    ld b, b                                       ; $70D9: $40
    dec bc                                        ; $70DA: $0B
    nop                                           ; $70DB: $00
    dec b                                         ; $70DC: $05
    ld [bc], a                                    ; $70DD: $02
    db $ED                                        ; $70DE: $ED
    ld h, e                                       ; $70DF: $63
    inc b                                         ; $70E0: $04
    dec c                                         ; $70E1: $0D
    and b                                         ; $70E2: $A0
    ret nc                                        ; $70E3: $D0

    nop                                           ; $70E4: $00
    dec h                                         ; $70E5: $25
    and c                                         ; $70E6: $A1
    ld c, [hl]                                    ; $70E7: $4E
    ld e, $2D                                     ; $70E8: $1E $2D
    ld [hl], c                                    ; $70EA: $71
    dec bc                                        ; $70EB: $0B
    ld [bc], a                                    ; $70EC: $02
    ld l, e                                       ; $70ED: $6B
    jr nc, jr_01E_70FC                            ; $70EE: $30 $0C

    ldh a, [rBCPD]                                ; $70F0: $F0 $69
    nop                                           ; $70F2: $00
    add b                                         ; $70F3: $80
    nop                                           ; $70F4: $00
    add d                                         ; $70F5: $82
    rra                                           ; $70F6: $1F
    dec e                                         ; $70F7: $1D
    sub h                                         ; $70F8: $94
    ld e, h                                       ; $70F9: $5C
    nop                                           ; $70FA: $00
    ld [bc], a                                    ; $70FB: $02

jr_01E_70FC:
    rlca                                          ; $70FC: $07
    nop                                           ; $70FD: $00
    add c                                         ; $70FE: $81
    ld e, l                                       ; $70FF: $5D
    add hl, bc                                    ; $7100: $09
    nop                                           ; $7101: $00
    jr nz, jr_01E_70B9                            ; $7102: $20 $B5

    ld d, b                                       ; $7104: $50
    ld b, d                                       ; $7105: $42
    dec d                                         ; $7106: $15
    jr nz, @+$1D                                  ; $7107: $20 $1B

    ld d, l                                       ; $7109: $55
    jr jr_01E_710C                                ; $710A: $18 $00

jr_01E_710C:
    ld d, $20                                     ; $710C: $16 $20
    dec de                                        ; $710E: $1B
    ld d, l                                       ; $710F: $55
    jr jr_01E_7112                                ; $7110: $18 $00

jr_01E_7112:
    inc bc                                        ; $7112: $03
    nop                                           ; $7113: $00
    dec d                                         ; $7114: $15
    jr nz, jr_01E_709C                            ; $7115: $20 $85

    ld d, h                                       ; $7117: $54
    ld c, b                                       ; $7118: $48
    jr nz, jr_01E_70D0                            ; $7119: $20 $B5

    ld d, b                                       ; $711B: $50
    nop                                           ; $711C: $00
    nop                                           ; $711D: $00
    sbc a                                         ; $711E: $9F
    ld c, a                                       ; $711F: $4F
    ld [hl], l                                    ; $7120: $75
    ld h, e                                       ; $7121: $63
    ld l, b                                       ; $7122: $68
    ld l, $2E                                     ; $7123: $2E $2E
    ld l, $FE                                     ; $7125: $2E $FE
    db $FD                                        ; $7127: $FD
    sbc d                                         ; $7128: $9A
    ld e, h                                       ; $7129: $5C
    nop                                           ; $712A: $00
    ld [bc], a                                    ; $712B: $02
    ld b, d                                       ; $712C: $42
    ld e, e                                       ; $712D: $5B
    ld e, $95                                     ; $712E: $1E $95
    ld l, a                                       ; $7130: $6F
    ld b, l                                       ; $7131: $45
    dec h                                         ; $7132: $25
    rst $20                                       ; $7133: $E7
    ld c, [hl]                                    ; $7134: $4E
    sub e                                         ; $7135: $93
    ld h, l                                       ; $7136: $65
    ld h, c                                       ; $7137: $61
    ld c, b                                       ; $7138: $48
    ld c, a                                       ; $7139: $4F
    ld h, h                                       ; $713A: $64
    or a                                          ; $713B: $B7
    ld c, e                                       ; $713C: $4B
    ld l, c                                       ; $713D: $69
    cp h                                          ; $713E: $BC
    ld c, e                                       ; $713F: $4B
    ld h, [hl]                                    ; $7140: $66
    ret nz                                        ; $7141: $C0

    ld e, h                                       ; $7142: $5C
    ld hl, $0005                                  ; $7143: $21 $05 $00
    add c                                         ; $7146: $81
    ld e, l                                       ; $7147: $5D
    dec b                                         ; $7148: $05
    dec b                                         ; $7149: $05

jr_01E_714A:
    ld b, c                                       ; $714A: $41
    ret nc                                        ; $714B: $D0

    nop                                           ; $714C: $00
    jr nz, jr_01E_714A                            ; $714D: $20 $FB

    ld d, b                                       ; $714F: $50
    ld [hl+], a                                   ; $7150: $22
    dec b                                         ; $7151: $05
    ld b, b                                       ; $7152: $40
    dec b                                         ; $7153: $05
    ld [bc], a                                    ; $7154: $02
    db $ED                                        ; $7155: $ED
    ld h, e                                       ; $7156: $63
    inc b                                         ; $7157: $04
    dec c                                         ; $7158: $0D
    and b                                         ; $7159: $A0
    ret nc                                        ; $715A: $D0

    nop                                           ; $715B: $00
    dec h                                         ; $715C: $25
    and c                                         ; $715D: $A1
    ld c, [hl]                                    ; $715E: $4E
    ld e, $B0                                     ; $715F: $1E $B0
    ld [hl], b                                    ; $7161: $70
    dec b                                         ; $7162: $05
    inc bc                                        ; $7163: $03
    db $ED                                        ; $7164: $ED
    ld h, e                                       ; $7165: $63
    ld b, $03                                     ; $7166: $06 $03
    ld a, [hl+]                                   ; $7168: $2A
    ret nc                                        ; $7169: $D0

    jr nz, @+$11                                  ; $716A: $20 $0F

    and b                                         ; $716C: $A0
    ld a, c                                       ; $716D: $79
    ld e, $8D                                     ; $716E: $1E $8D
    ld [hl], c                                    ; $7170: $71
    ld l, e                                       ; $7171: $6B
    jr nz, jr_01E_7180                            ; $7172: $20 $0C

    ldh a, [rBCPD]                                ; $7174: $F0 $69
    nop                                           ; $7176: $00
    add b                                         ; $7177: $80
    nop                                           ; $7178: $00
    ld l, e                                       ; $7179: $6B
    jr nc, jr_01E_7187                            ; $717A: $30 $0B

    ret nz                                        ; $717C: $C0

    ld [hl], a                                    ; $717D: $77
    nop                                           ; $717E: $00
    add d                                         ; $717F: $82

jr_01E_7180:
    nop                                           ; $7180: $00
    dec bc                                        ; $7181: $0B
    nop                                           ; $7182: $00
    dec bc                                        ; $7183: $0B
    ld [bc], a                                    ; $7184: $02
    dec bc                                        ; $7185: $0B
    inc bc                                        ; $7186: $03

jr_01E_7187:
    nop                                           ; $7187: $00
    add d                                         ; $7188: $82
    rra                                           ; $7189: $1F
    dec e                                         ; $718A: $1D
    sub h                                         ; $718B: $94
    ld b, d                                       ; $718C: $42
    ld e, e                                       ; $718D: $5B
    ld e, $95                                     ; $718E: $1E $95
    ld [hl], c                                    ; $7190: $71
    ld b, l                                       ; $7191: $45
    rrca                                          ; $7192: $0F
    or h                                          ; $7193: $B4
    ld a, c                                       ; $7194: $79
    sbc e                                         ; $7195: $9B
    ld a, b                                       ; $7196: $78
    ld [hl], b                                    ; $7197: $70
    sbc a                                         ; $7198: $9F
    ld e, c                                       ; $7199: $59
    ld h, c                                       ; $719A: $61
    ld l, e                                       ; $719B: $6B
    ld l, c                                       ; $719C: $69
    ccf                                           ; $719D: $3F
    cp $FD                                        ; $719E: $FE $FD
    sbc e                                         ; $71A0: $9B
    ld hl, sp+$7C                                 ; $71A1: $F8 $7C
    sbc a                                         ; $71A3: $9F
    ld c, a                                       ; $71A4: $4F
    ld c, a                                       ; $71A5: $4F
    ld c, a                                       ; $71A6: $4F
    ld c, b                                       ; $71A7: $48
    ld c, b                                       ; $71A8: $48
    jr nz, jr_01E_7204                            ; $71A9: $20 $59

    ld b, l                                       ; $71AB: $45
    ld b, c                                       ; $71AC: $41
    ld c, b                                       ; $71AD: $48
    ld c, b                                       ; $71AE: $48
    ld hl, $48FF                                  ; $71AF: $21 $FF $48
    ld h, l                                       ; $71B2: $65
    ld a, c                                       ; $71B3: $79
    jr nz, jr_01E_71F8                            ; $71B4: $20 $42

    ld [hl], d                                    ; $71B6: $72
    ld l, a                                       ; $71B7: $6F
    ld [hl], h                                    ; $71B8: $74
    ld l, b                                       ; $71B9: $68
    ld h, l                                       ; $71BA: $65
    ld [hl], d                                    ; $71BB: $72
    inc l                                         ; $71BC: $2C
    cp $77                                        ; $71BD: $FE $77
    ld l, b                                       ; $71BF: $68
    ld h, c                                       ; $71C0: $61
    ld [hl], h                                    ; $71C1: $74
    ld h, e                                       ; $71C2: $63
    ld l, b                                       ; $71C3: $68
    ld h, c                                       ; $71C4: $61
    jr nz, jr_01E_722B                            ; $71C5: $20 $64

    ld l, a                                       ; $71C7: $6F
    ld l, c                                       ; $71C8: $69
    ld l, [hl]                                    ; $71C9: $6E
    daa                                           ; $71CA: $27
    rst $38                                       ; $71CB: $FF
    ld l, c                                       ; $71CC: $69
    ld l, [hl]                                    ; $71CD: $6E
    jr nz, jr_01E_7244                            ; $71CE: $20 $74

    ld l, b                                       ; $71D0: $68
    ld h, l                                       ; $71D1: $65
    jr nz, jr_01E_7237                            ; $71D2: $20 $63

    ld h, c                                       ; $71D4: $61
    ld l, h                                       ; $71D5: $6C
    ld h, h                                       ; $71D6: $64
    ccf                                           ; $71D7: $3F
    cp $FD                                        ; $71D8: $FE $FD
    sbc e                                         ; $71DA: $9B
    ld a, b                                       ; $71DB: $78
    ld [hl], b                                    ; $71DC: $70
    sbc a                                         ; $71DD: $9F
    ld c, c                                       ; $71DE: $49
    jr nz, jr_01E_7244                            ; $71DF: $20 $63

    ld l, a                                       ; $71E1: $6F
    ld [hl], l                                    ; $71E2: $75
    ld l, h                                       ; $71E3: $6C
    ld h, h                                       ; $71E4: $64
    jr nz, jr_01E_7248                            ; $71E5: $20 $61

    ld [hl], e                                    ; $71E7: $73
    ld l, e                                       ; $71E8: $6B
    jr nz, jr_01E_7264                            ; $71E9: $20 $79

    ld l, a                                       ; $71EB: $6F
    ld [hl], l                                    ; $71EC: $75
    rst $38                                       ; $71ED: $FF
    ld [hl], h                                    ; $71EE: $74
    ld l, b                                       ; $71EF: $68
    ld h, l                                       ; $71F0: $65
    jr nz, @+$75                                  ; $71F1: $20 $73

    ld h, c                                       ; $71F3: $61
    ld l, l                                       ; $71F4: $6D
    ld h, l                                       ; $71F5: $65
    jr nz, jr_01E_726C                            ; $71F6: $20 $74

jr_01E_71F8:
    ld l, b                                       ; $71F8: $68
    ld l, c                                       ; $71F9: $69
    ld l, [hl]                                    ; $71FA: $6E
    ld h, a                                       ; $71FB: $67
    ld l, $FE                                     ; $71FC: $2E $FE
    db $FD                                        ; $71FE: $FD
    sbc e                                         ; $71FF: $9B
    ld hl, sp+$7C                                 ; $7200: $F8 $7C
    sbc a                                         ; $7202: $9F
    ld d, h                                       ; $7203: $54

jr_01E_7204:
    ld [hl], d                                    ; $7204: $72
    ld h, c                                       ; $7205: $61
    ld l, c                                       ; $7206: $69
    ld l, [hl]                                    ; $7207: $6E
    ld l, c                                       ; $7208: $69
    ld l, [hl]                                    ; $7209: $6E
    ld h, a                                       ; $720A: $67
    rst $38                                       ; $720B: $FF
    ld l, l                                       ; $720C: $6D
    ld l, c                                       ; $720D: $69
    ld [hl], e                                    ; $720E: $73
    ld [hl], e                                    ; $720F: $73
    ld l, c                                       ; $7210: $69
    ld l, a                                       ; $7211: $6F
    ld l, [hl]                                    ; $7212: $6E
    inc l                                         ; $7213: $2C
    cp $62                                        ; $7214: $FE $62
    ld [hl], d                                    ; $7216: $72
    ld l, a                                       ; $7217: $6F
    ld [hl], h                                    ; $7218: $74
    ld l, b                                       ; $7219: $68
    ld h, l                                       ; $721A: $65
    ld [hl], d                                    ; $721B: $72
    ld l, $20                                     ; $721C: $2E $20
    ld b, h                                       ; $721E: $44
    ld c, c                                       ; $721F: $49
    ld b, a                                       ; $7220: $47
    jr nz, jr_01E_726C                            ; $7221: $20 $49

    ld d, h                                       ; $7223: $54
    rst $38                                       ; $7224: $FF
    ld d, a                                       ; $7225: $57
    ld c, a                                       ; $7226: $4F
    ld c, a                                       ; $7227: $4F
    ld hl, $53FE                                  ; $7228: $21 $FE $53

jr_01E_722B:
    ld h, c                                       ; $722B: $61
    ld l, h                                       ; $722C: $6C
    ld h, c                                       ; $722D: $61
    ld h, [hl]                                    ; $722E: $66
    ld a, c                                       ; $722F: $79
    daa                                           ; $7230: $27
    ld l, h                                       ; $7231: $6C
    ld l, h                                       ; $7232: $6C
    jr nz, jr_01E_7297                            ; $7233: $20 $62

    ld h, l                                       ; $7235: $65
    rst $38                                       ; $7236: $FF

jr_01E_7237:
    ld [hl], d                                    ; $7237: $72
    ld [hl], l                                    ; $7238: $75
    ld l, [hl]                                    ; $7239: $6E
    ld l, [hl]                                    ; $723A: $6E
    ld l, c                                       ; $723B: $69
    ld l, [hl]                                    ; $723C: $6E
    ld h, a                                       ; $723D: $67
    jr nz, jr_01E_72B4                            ; $723E: $20 $74

    ld l, b                                       ; $7240: $68
    ld h, l                                       ; $7241: $65
    cp $67                                        ; $7242: $FE $67

jr_01E_7244:
    ld [hl], d                                    ; $7244: $72
    ld l, a                                       ; $7245: $6F
    ld [hl], l                                    ; $7246: $75
    ld l, [hl]                                    ; $7247: $6E

jr_01E_7248:
    ld h, h                                       ; $7248: $64
    ld [hl], e                                    ; $7249: $73
    jr nz, jr_01E_72C0                            ; $724A: $20 $74

    ld l, c                                       ; $724C: $69
    ld l, h                                       ; $724D: $6C
    jr nz, jr_01E_7299                            ; $724E: $20 $49

    rst $38                                       ; $7250: $FF
    ld h, a                                       ; $7251: $67
    ld h, l                                       ; $7252: $65
    ld [hl], h                                    ; $7253: $74
    jr nz, jr_01E_72B8                            ; $7254: $20 $62

    ld h, c                                       ; $7256: $61
    ld h, e                                       ; $7257: $63
    ld l, e                                       ; $7258: $6B
    inc l                                         ; $7259: $2C
    jr nz, jr_01E_72CF                            ; $725A: $20 $73

    ld l, a                                       ; $725C: $6F
    jr nz, jr_01E_72C6                            ; $725D: $20 $67

    ld l, a                                       ; $725F: $6F
    cp $65                                        ; $7260: $FE $65
    ld h, c                                       ; $7262: $61
    ld [hl], e                                    ; $7263: $73

jr_01E_7264:
    ld a, c                                       ; $7264: $79
    jr nz, @+$71                                  ; $7265: $20 $6F

    ld l, [hl]                                    ; $7267: $6E
    jr nz, jr_01E_72D2                            ; $7268: $20 $68

    ld h, l                                       ; $726A: $65
    ld [hl], d                                    ; $726B: $72

jr_01E_726C:
    jr nz, jr_01E_72E2                            ; $726C: $20 $74

    ld l, c                                       ; $726E: $69
    ld l, h                                       ; $726F: $6C
    rst $38                                       ; $7270: $FF
    ld c, c                                       ; $7271: $49
    jr nz, jr_01E_72DB                            ; $7272: $20 $67

    ld h, l                                       ; $7274: $65
    ld [hl], h                                    ; $7275: $74
    jr nz, jr_01E_72DA                            ; $7276: $20 $62

    ld h, c                                       ; $7278: $61
    ld h, e                                       ; $7279: $63
    ld l, e                                       ; $727A: $6B
    inc l                                         ; $727B: $2C
    cp $62                                        ; $727C: $FE $62
    ld [hl], d                                    ; $727E: $72
    ld l, a                                       ; $727F: $6F
    ld [hl], h                                    ; $7280: $74
    ld l, b                                       ; $7281: $68
    ld h, l                                       ; $7282: $65
    ld [hl], d                                    ; $7283: $72
    ld l, $FE                                     ; $7284: $2E $FE
    db $FD                                        ; $7286: $FD
    sbc e                                         ; $7287: $9B
    ld a, b                                       ; $7288: $78
    ld [hl], b                                    ; $7289: $70
    sbc a                                         ; $728A: $9F
    ld d, l                                       ; $728B: $55
    ld l, b                                       ; $728C: $68
    ld l, b                                       ; $728D: $68
    inc l                                         ; $728E: $2C
    jr nz, jr_01E_7304                            ; $728F: $20 $73

    ld [hl], l                                    ; $7291: $75
    ld [hl], d                                    ; $7292: $72
    ld h, l                                       ; $7293: $65
    inc l                                         ; $7294: $2C
    jr nz, jr_01E_730A                            ; $7295: $20 $73

jr_01E_7297:
    ld h, l                                       ; $7297: $65
    ld h, l                                       ; $7298: $65

jr_01E_7299:
    rst $38                                       ; $7299: $FF
    ld a, c                                       ; $729A: $79
    ld l, a                                       ; $729B: $6F
    ld [hl], l                                    ; $729C: $75
    jr nz, jr_01E_7300                            ; $729D: $20 $61

    ld [hl], d                                    ; $729F: $72
    ld l, a                                       ; $72A0: $6F
    ld [hl], l                                    ; $72A1: $75
    ld l, [hl]                                    ; $72A2: $6E
    ld h, h                                       ; $72A3: $64
    ld l, $FE                                     ; $72A4: $2E $FE
    db $FD                                        ; $72A6: $FD
    sbc d                                         ; $72A7: $9A
    ld e, b                                       ; $72A8: $58
    ld bc, $0242                                  ; $72A9: $01 $42 $02
    dec b                                         ; $72AC: $05
    rlca                                          ; $72AD: $07
    inc c                                         ; $72AE: $0C
    ld [hl+], a                                   ; $72AF: $22
    ld b, l                                       ; $72B0: $45
    rla                                           ; $72B1: $17
    jr nc, jr_01E_731F                            ; $72B2: $30 $6B

jr_01E_72B4:
    ld b, e                                       ; $72B4: $43
    nop                                           ; $72B5: $00
    and l                                         ; $72B6: $A5
    and c                                         ; $72B7: $A1

jr_01E_72B8:
    inc b                                         ; $72B8: $04
    ld e, $C1                                     ; $72B9: $1E $C1
    ld [hl], d                                    ; $72BB: $72
    ld e, e                                       ; $72BC: $5B
    ld e, $C2                                     ; $72BD: $1E $C2
    ld [hl], h                                    ; $72BF: $74

jr_01E_72C0:
    ld b, d                                       ; $72C0: $42
    sbc e                                         ; $72C1: $9B
    sbc b                                         ; $72C2: $98
    ld e, d                                       ; $72C3: $5A
    sbc a                                         ; $72C4: $9F
    ld b, a                                       ; $72C5: $47

jr_01E_72C6:
    ld h, l                                       ; $72C6: $65
    ld [hl], h                                    ; $72C7: $74
    jr nz, jr_01E_7339                            ; $72C8: $20 $6F

    ld [hl], l                                    ; $72CA: $75
    ld [hl], h                                    ; $72CB: $74
    ld l, $FE                                     ; $72CC: $2E $FE
    ld d, h                                       ; $72CE: $54

jr_01E_72CF:
    ld l, b                                       ; $72CF: $68
    ld l, c                                       ; $72D0: $69
    ld h, l                                       ; $72D1: $65

jr_01E_72D2:
    halt                                          ; $72D2: $76
    ld h, l                                       ; $72D3: $65
    ld [hl], e                                    ; $72D4: $73
    jr nz, jr_01E_733F                            ; $72D5: $20 $68

    ld h, c                                       ; $72D7: $61
    halt                                          ; $72D8: $76
    ld h, l                                       ; $72D9: $65

jr_01E_72DA:
    rst $38                                       ; $72DA: $FF

jr_01E_72DB:
    ld l, [hl]                                    ; $72DB: $6E
    ld l, a                                       ; $72DC: $6F
    jr nz, jr_01E_7341                            ; $72DD: $20 $62

    ld [hl], l                                    ; $72DF: $75
    ld [hl], e                                    ; $72E0: $73
    ld l, c                                       ; $72E1: $69

jr_01E_72E2:
    ld l, [hl]                                    ; $72E2: $6E
    ld h, l                                       ; $72E3: $65
    ld [hl], e                                    ; $72E4: $73
    ld [hl], e                                    ; $72E5: $73
    cp $77                                        ; $72E6: $FE $77
    ld l, c                                       ; $72E8: $69
    ld [hl], h                                    ; $72E9: $74
    ld l, b                                       ; $72EA: $68
    jr nz, jr_01E_735A                            ; $72EB: $20 $6D

    ld h, l                                       ; $72ED: $65
    ld l, $FE                                     ; $72EE: $2E $FE
    db $FD                                        ; $72F0: $FD
    sbc d                                         ; $72F1: $9A
    ld b, d                                       ; $72F2: $42
    ld b, e                                       ; $72F3: $43
    nop                                           ; $72F4: $00
    and l                                         ; $72F5: $A5
    and c                                         ; $72F6: $A1
    inc b                                         ; $72F7: $04
    ld e, $00                                     ; $72F8: $1E $00
    ld [hl], e                                    ; $72FA: $73
    ld e, e                                       ; $72FB: $5B
    ld e, $85                                     ; $72FC: $1E $85
    halt                                          ; $72FE: $76
    ld b, d                                       ; $72FF: $42

jr_01E_7300:
    sbc e                                         ; $7300: $9B
    jp hl                                         ; $7301: $E9


    ld d, l                                       ; $7302: $55
    sbc a                                         ; $7303: $9F

jr_01E_7304:
    ld e, c                                       ; $7304: $59
    ld l, a                                       ; $7305: $6F
    ld [hl], l                                    ; $7306: $75
    jr nz, jr_01E_736A                            ; $7307: $20 $61

    ld [hl], d                                    ; $7309: $72

jr_01E_730A:
    ld h, l                                       ; $730A: $65
    jr nz, jr_01E_737B                            ; $730B: $20 $6E

    ld l, a                                       ; $730D: $6F
    ld [hl], h                                    ; $730E: $74
    rst $38                                       ; $730F: $FF
    ld [hl], a                                    ; $7310: $77
    ld h, l                                       ; $7311: $65
    ld l, h                                       ; $7312: $6C
    ld h, e                                       ; $7313: $63
    ld l, a                                       ; $7314: $6F
    ld l, l                                       ; $7315: $6D
    ld h, l                                       ; $7316: $65
    jr nz, jr_01E_7381                            ; $7317: $20 $68

    ld h, l                                       ; $7319: $65
    ld [hl], d                                    ; $731A: $72
    ld h, l                                       ; $731B: $65
    ld l, $FE                                     ; $731C: $2E $FE
    db $FD                                        ; $731E: $FD

jr_01E_731F:
    sbc d                                         ; $731F: $9A
    ld b, d                                       ; $7320: $42
    sbc e                                         ; $7321: $9B
    ld a, b                                       ; $7322: $78
    ld [hl], b                                    ; $7323: $70
    sbc a                                         ; $7324: $9F
    ld b, c                                       ; $7325: $41
    jr nz, jr_01E_738F                            ; $7326: $20 $67

    ld l, c                                       ; $7328: $69
    ld l, [hl]                                    ; $7329: $6E
    ld l, a                                       ; $732A: $6F
    ld [hl], l                                    ; $732B: $75
    ld [hl], d                                    ; $732C: $72
    ld l, l                                       ; $732D: $6D
    ld l, a                                       ; $732E: $6F
    ld [hl], l                                    ; $732F: $75
    ld [hl], e                                    ; $7330: $73
    ld l, h                                       ; $7331: $6C
    ld a, c                                       ; $7332: $79
    rst $38                                       ; $7333: $FF
    ld h, d                                       ; $7334: $62
    ld l, c                                       ; $7335: $69
    ld h, a                                       ; $7336: $67
    jr nz, jr_01E_739B                            ; $7337: $20 $62

jr_01E_7339:
    ld h, l                                       ; $7339: $65
    ld h, h                                       ; $733A: $64
    ld l, $FE                                     ; $733B: $2E $FE
    db $FD                                        ; $733D: $FD
    sbc d                                         ; $733E: $9A

jr_01E_733F:
    ld b, d                                       ; $733F: $42
    sbc e                                         ; $7340: $9B

jr_01E_7341:
    ld a, b                                       ; $7341: $78
    ld [hl], b                                    ; $7342: $70
    sbc a                                         ; $7343: $9F
    ld b, d                                       ; $7344: $42
    ld l, c                                       ; $7345: $69
    ld h, a                                       ; $7346: $67
    jr nz, jr_01E_73B1                            ; $7347: $20 $68

    ld h, c                                       ; $7349: $61
    ld l, l                                       ; $734A: $6D
    ld l, l                                       ; $734B: $6D
    ld h, l                                       ; $734C: $65
    ld [hl], d                                    ; $734D: $72
    ld [hl], e                                    ; $734E: $73
    ld l, $FE                                     ; $734F: $2E $FE
    ld d, h                                       ; $7351: $54
    ld l, c                                       ; $7352: $69
    ld l, [hl]                                    ; $7353: $6E
    ld a, c                                       ; $7354: $79
    jr nz, jr_01E_73BF                            ; $7355: $20 $68

    ld h, c                                       ; $7357: $61
    ld l, l                                       ; $7358: $6D
    ld l, l                                       ; $7359: $6D

jr_01E_735A:
    ld h, l                                       ; $735A: $65
    ld [hl], d                                    ; $735B: $72
    ld [hl], e                                    ; $735C: $73
    ld l, $FE                                     ; $735D: $2E $FE
    ld b, [hl]                                    ; $735F: $46
    ld [hl], l                                    ; $7360: $75
    ld [hl], d                                    ; $7361: $72
    ld [hl], d                                    ; $7362: $72
    ld a, c                                       ; $7363: $79
    rst $38                                       ; $7364: $FF
    ld l, b                                       ; $7365: $68
    ld h, c                                       ; $7366: $61
    ld l, l                                       ; $7367: $6D
    ld l, l                                       ; $7368: $6D
    ld h, l                                       ; $7369: $65

jr_01E_736A:
    ld [hl], d                                    ; $736A: $72
    ld [hl], e                                    ; $736B: $73
    ld l, $FE                                     ; $736C: $2E $FE
    ld d, e                                       ; $736E: $53
    ld [hl], c                                    ; $736F: $71
    ld [hl], l                                    ; $7370: $75
    ld l, c                                       ; $7371: $69
    ld [hl], e                                    ; $7372: $73
    ld l, b                                       ; $7373: $68
    ld a, c                                       ; $7374: $79
    rst $38                                       ; $7375: $FF
    ld l, b                                       ; $7376: $68
    ld h, c                                       ; $7377: $61
    ld l, l                                       ; $7378: $6D
    ld l, l                                       ; $7379: $6D
    ld h, l                                       ; $737A: $65

jr_01E_737B:
    ld [hl], d                                    ; $737B: $72
    ld [hl], e                                    ; $737C: $73
    ld l, $FE                                     ; $737D: $2E $FE
    db $FD                                        ; $737F: $FD
    sbc d                                         ; $7380: $9A

jr_01E_7381:
    ld b, d                                       ; $7381: $42
    sbc e                                         ; $7382: $9B
    ld a, b                                       ; $7383: $78
    ld [hl], b                                    ; $7384: $70
    sbc a                                         ; $7385: $9F
    ld d, d                                       ; $7386: $52
    ld l, a                                       ; $7387: $6F
    ld [hl], l                                    ; $7388: $75
    ld l, [hl]                                    ; $7389: $6E
    ld h, h                                       ; $738A: $64
    jr nz, jr_01E_73F5                            ; $738B: $20 $68

    ld h, c                                       ; $738D: $61
    ld l, l                                       ; $738E: $6D

jr_01E_738F:
    ld l, l                                       ; $738F: $6D
    ld h, l                                       ; $7390: $65
    ld [hl], d                                    ; $7391: $72
    ld [hl], e                                    ; $7392: $73
    inc l                                         ; $7393: $2C
    rst $38                                       ; $7394: $FF
    ld h, [hl]                                    ; $7395: $66
    ld l, h                                       ; $7396: $6C
    ld h, c                                       ; $7397: $61
    ld [hl], h                                    ; $7398: $74
    jr nz, @+$6A                                  ; $7399: $20 $68

jr_01E_739B:
    ld h, c                                       ; $739B: $61
    ld l, l                                       ; $739C: $6D
    ld l, l                                       ; $739D: $6D
    ld h, l                                       ; $739E: $65
    ld [hl], d                                    ; $739F: $72
    ld [hl], e                                    ; $73A0: $73
    inc l                                         ; $73A1: $2C
    cp $68                                        ; $73A2: $FE $68
    ld h, c                                       ; $73A4: $61
    ld l, l                                       ; $73A5: $6D
    ld l, l                                       ; $73A6: $6D
    ld h, l                                       ; $73A7: $65
    ld [hl], d                                    ; $73A8: $72
    ld [hl], e                                    ; $73A9: $73
    jr nz, jr_01E_7423                            ; $73AA: $20 $77

    ld l, c                                       ; $73AC: $69
    ld [hl], h                                    ; $73AD: $74
    ld l, b                                       ; $73AE: $68
    rst $38                                       ; $73AF: $FF
    ld [hl], b                                    ; $73B0: $70

jr_01E_73B1:
    ld l, a                                       ; $73B1: $6F
    ld l, c                                       ; $73B2: $69
    ld l, [hl]                                    ; $73B3: $6E
    ld [hl], h                                    ; $73B4: $74
    ld [hl], e                                    ; $73B5: $73
    ld l, $FE                                     ; $73B6: $2E $FE
    ld b, a                                       ; $73B8: $47
    ld h, l                                       ; $73B9: $65
    ld h, l                                       ; $73BA: $65
    ld a, d                                       ; $73BB: $7A
    ld h, l                                       ; $73BC: $65
    ld l, $2E                                     ; $73BD: $2E $2E

jr_01E_73BF:
    ld l, $FE                                     ; $73BF: $2E $FE
    db $FD                                        ; $73C1: $FD
    sbc d                                         ; $73C2: $9A
    ld b, d                                       ; $73C3: $42
    sbc e                                         ; $73C4: $9B
    ld a, b                                       ; $73C5: $78
    ld [hl], b                                    ; $73C6: $70
    sbc a                                         ; $73C7: $9F
    ld c, b                                       ; $73C8: $48
    ld l, l                                       ; $73C9: $6D
    ld l, l                                       ; $73CA: $6D
    ld l, $2E                                     ; $73CB: $2E $2E
    ld l, $FE                                     ; $73CD: $2E $FE
    ld c, b                                       ; $73CF: $48
    ld h, c                                       ; $73D0: $61
    ld l, l                                       ; $73D1: $6D
    ld l, l                                       ; $73D2: $6D
    ld h, l                                       ; $73D3: $65
    ld [hl], d                                    ; $73D4: $72
    ld [hl], e                                    ; $73D5: $73
    ld l, $2E                                     ; $73D6: $2E $2E
    ld l, $FE                                     ; $73D8: $2E $FE
    ld c, b                                       ; $73DA: $48
    ld h, c                                       ; $73DB: $61
    ld l, l                                       ; $73DC: $6D
    ld l, l                                       ; $73DD: $6D
    ld h, l                                       ; $73DE: $65
    ld [hl], d                                    ; $73DF: $72
    ld [hl], e                                    ; $73E0: $73
    ld l, $2E                                     ; $73E1: $2E $2E
    ld l, $FE                                     ; $73E3: $2E $FE
    ld l, $2E                                     ; $73E5: $2E $2E
    ld l, $FE                                     ; $73E7: $2E $FE
    ld c, l                                       ; $73E9: $4D
    ld l, a                                       ; $73EA: $6F
    ld [hl], d                                    ; $73EB: $72
    ld h, l                                       ; $73EC: $65
    jr nz, jr_01E_7457                            ; $73ED: $20 $68

    ld h, c                                       ; $73EF: $61
    ld l, l                                       ; $73F0: $6D
    ld l, l                                       ; $73F1: $6D
    ld h, l                                       ; $73F2: $65
    ld [hl], d                                    ; $73F3: $72
    ld [hl], e                                    ; $73F4: $73

jr_01E_73F5:
    ld l, $2E                                     ; $73F5: $2E $2E
    ld l, $FE                                     ; $73F7: $2E $FE
    db $FD                                        ; $73F9: $FD
    sbc d                                         ; $73FA: $9A
    ld b, d                                       ; $73FB: $42
    sbc a                                         ; $73FC: $9F
    ld b, [hl]                                    ; $73FD: $46
    ld l, a                                       ; $73FE: $6F
    ld [hl], d                                    ; $73FF: $72
    ld h, a                                       ; $7400: $67
    ld h, l                                       ; $7401: $65
    jr nz, jr_01E_7450                            ; $7402: $20 $4C

    ld l, c                                       ; $7404: $69
    ld l, e                                       ; $7405: $6B
    ld h, l                                       ; $7406: $65
    jr nz, jr_01E_7462                            ; $7407: $20 $59

    ld l, a                                       ; $7409: $6F
    ld [hl], l                                    ; $740A: $75
    rst $38                                       ; $740B: $FF
    ld c, l                                       ; $740C: $4D
    ld h, l                                       ; $740D: $65
    ld h, c                                       ; $740E: $61
    ld l, [hl]                                    ; $740F: $6E
    jr nz, jr_01E_745B                            ; $7410: $20 $49

    ld [hl], h                                    ; $7412: $74
    ld hl, $46FE                                  ; $7413: $21 $FE $46
    ld h, l                                       ; $7416: $65
    ld h, l                                       ; $7417: $65
    ld l, h                                       ; $7418: $6C
    jr nz, jr_01E_7487                            ; $7419: $20 $6C

    ld l, c                                       ; $741B: $69
    ld l, e                                       ; $741C: $6B
    ld h, l                                       ; $741D: $65
    rst $38                                       ; $741E: $FF
    ld a, c                                       ; $741F: $79
    ld l, a                                       ; $7420: $6F
    ld [hl], l                                    ; $7421: $75
    daa                                           ; $7422: $27

jr_01E_7423:
    ld [hl], d                                    ; $7423: $72
    ld h, l                                       ; $7424: $65
    jr nz, jr_01E_7497                            ; $7425: $20 $70

    ld [hl], l                                    ; $7427: $75
    ld [hl], h                                    ; $7428: $74
    ld [hl], h                                    ; $7429: $74
    ld l, c                                       ; $742A: $69
    ld l, [hl]                                    ; $742B: $6E
    ld h, a                                       ; $742C: $67
    cp $74                                        ; $742D: $FE $74
    ld l, b                                       ; $742F: $68
    ld h, l                                       ; $7430: $65
    jr nz, jr_01E_74A0                            ; $7431: $20 $6D

    ld l, a                                       ; $7433: $6F
    ld [hl], e                                    ; $7434: $73
    ld [hl], h                                    ; $7435: $74
    jr nz, jr_01E_74A1                            ; $7436: $20 $69

    ld l, [hl]                                    ; $7438: $6E
    ld [hl], h                                    ; $7439: $74
    ld l, a                                       ; $743A: $6F
    rst $38                                       ; $743B: $FF
    ld a, c                                       ; $743C: $79
    ld l, a                                       ; $743D: $6F
    ld [hl], l                                    ; $743E: $75
    ld [hl], d                                    ; $743F: $72
    jr nz, jr_01E_74A8                            ; $7440: $20 $66

    ld l, a                                       ; $7442: $6F
    ld [hl], d                                    ; $7443: $72
    ld h, a                                       ; $7444: $67
    ld l, c                                       ; $7445: $69
    ld l, [hl]                                    ; $7446: $6E
    ld h, a                                       ; $7447: $67
    cp $61                                        ; $7448: $FE $61
    ld l, [hl]                                    ; $744A: $6E
    ld h, h                                       ; $744B: $64
    jr nz, jr_01E_74BB                            ; $744C: $20 $6D

    ld h, c                                       ; $744E: $61
    ld l, e                                       ; $744F: $6B

jr_01E_7450:
    ld h, l                                       ; $7450: $65
    jr nz, jr_01E_74C2                            ; $7451: $20 $6F

    ld [hl], h                                    ; $7453: $74
    ld l, b                                       ; $7454: $68
    ld h, l                                       ; $7455: $65
    ld [hl], d                                    ; $7456: $72

jr_01E_7457:
    ld [hl], e                                    ; $7457: $73
    rst $38                                       ; $7458: $FF
    ld h, [hl]                                    ; $7459: $66
    ld h, l                                       ; $745A: $65

jr_01E_745B:
    ld h, l                                       ; $745B: $65
    ld l, h                                       ; $745C: $6C
    jr nz, jr_01E_74C8                            ; $745D: $20 $69

    ld [hl], h                                    ; $745F: $74
    jr nz, jr_01E_74D6                            ; $7460: $20 $74

jr_01E_7462:
    ld l, a                                       ; $7462: $6F
    ld l, a                                       ; $7463: $6F
    ld l, $FE                                     ; $7464: $2E $FE
    db $FD                                        ; $7466: $FD
    sbc d                                         ; $7467: $9A
    ld b, d                                       ; $7468: $42
    sbc e                                         ; $7469: $9B
    ld a, b                                       ; $746A: $78
    ld [hl], b                                    ; $746B: $70
    sbc a                                         ; $746C: $9F
    ld b, c                                       ; $746D: $41
    ld l, [hl]                                    ; $746E: $6E
    jr nz, jr_01E_74DA                            ; $746F: $20 $69

    ld h, h                                       ; $7471: $64
    ld h, h                                       ; $7472: $64
    ld a, c                                       ; $7473: $79
    jr nz, jr_01E_74D8                            ; $7474: $20 $62

    ld l, c                                       ; $7476: $69
    ld h, h                                       ; $7477: $64
    ld h, h                                       ; $7478: $64
    ld a, c                                       ; $7479: $79
    rst $38                                       ; $747A: $FF
    ld h, h                                       ; $747B: $64
    ld l, c                                       ; $747C: $69
    ld h, h                                       ; $747D: $64
    ld h, h                                       ; $747E: $64
    ld a, c                                       ; $747F: $79
    jr nz, jr_01E_74E4                            ; $7480: $20 $62

    ld h, l                                       ; $7482: $65
    ld h, h                                       ; $7483: $64
    ld l, $FE                                     ; $7484: $2E $FE
    db $FD                                        ; $7486: $FD

jr_01E_7487:
    sbc d                                         ; $7487: $9A
    ld b, d                                       ; $7488: $42
    sbc e                                         ; $7489: $9B
    ld a, b                                       ; $748A: $78
    ld [hl], b                                    ; $748B: $70
    sbc a                                         ; $748C: $9F
    ld d, h                                       ; $748D: $54
    ld l, b                                       ; $748E: $68
    ld l, c                                       ; $748F: $69
    ld [hl], e                                    ; $7490: $73
    jr nz, jr_01E_74FF                            ; $7491: $20 $6C

    ld h, c                                       ; $7493: $61
    halt                                          ; $7494: $76
    ld h, c                                       ; $7495: $61
    ld h, [hl]                                    ; $7496: $66

jr_01E_7497:
    ld [hl], d                                    ; $7497: $72
    ld l, a                                       ; $7498: $6F
    ld l, [hl]                                    ; $7499: $6E
    ld [hl], h                                    ; $749A: $74
    rst $38                                       ; $749B: $FF
    ld [hl], b                                    ; $749C: $70
    ld [hl], d                                    ; $749D: $72
    ld l, a                                       ; $749E: $6F
    ld [hl], b                                    ; $749F: $70

jr_01E_74A0:
    ld h, l                                       ; $74A0: $65

jr_01E_74A1:
    ld [hl], d                                    ; $74A1: $72
    ld [hl], h                                    ; $74A2: $74
    ld a, c                                       ; $74A3: $79
    jr nz, jr_01E_7513                            ; $74A4: $20 $6D

    ld [hl], l                                    ; $74A6: $75
    ld [hl], e                                    ; $74A7: $73

jr_01E_74A8:
    ld [hl], h                                    ; $74A8: $74
    cp $72                                        ; $74A9: $FE $72
    ld h, l                                       ; $74AB: $65
    ld h, c                                       ; $74AC: $61
    ld l, h                                       ; $74AD: $6C
    ld l, h                                       ; $74AE: $6C
    ld a, c                                       ; $74AF: $79
    jr nz, @+$64                                  ; $74B0: $20 $62

    ld h, l                                       ; $74B2: $65
    jr nz, jr_01E_751E                            ; $74B3: $20 $69

    ld l, [hl]                                    ; $74B5: $6E
    rst $38                                       ; $74B6: $FF
    ld h, h                                       ; $74B7: $64
    ld h, l                                       ; $74B8: $65
    ld l, l                                       ; $74B9: $6D
    ld h, c                                       ; $74BA: $61

jr_01E_74BB:
    ld l, [hl]                                    ; $74BB: $6E
    ld h, h                                       ; $74BC: $64
    ld l, $FE                                     ; $74BD: $2E $FE
    db $FD                                        ; $74BF: $FD
    sbc d                                         ; $74C0: $9A
    ld b, d                                       ; $74C1: $42

jr_01E_74C2:
    rlca                                          ; $74C2: $07
    nop                                           ; $74C3: $00
    ld l, e                                       ; $74C4: $6B
    ld c, d                                       ; $74C5: $4A
    add hl, bc                                    ; $74C6: $09
    nop                                           ; $74C7: $00

jr_01E_74C8:
    jr nz, @-$53                                  ; $74C8: $20 $AB

    ld d, b                                       ; $74CA: $50
    sbc e                                         ; $74CB: $9B
    sbc b                                         ; $74CC: $98
    ld e, d                                       ; $74CD: $5A
    sbc a                                         ; $74CE: $9F
    ld d, a                                       ; $74CF: $57
    ld h, l                                       ; $74D0: $65
    ld l, h                                       ; $74D1: $6C
    ld h, e                                       ; $74D2: $63
    ld l, a                                       ; $74D3: $6F
    ld l, l                                       ; $74D4: $6D
    ld h, l                                       ; $74D5: $65

jr_01E_74D6:
    jr nz, jr_01E_754C                            ; $74D6: $20 $74

jr_01E_74D8:
    ld l, a                                       ; $74D8: $6F
    rst $38                                       ; $74D9: $FF

jr_01E_74DA:
    ld c, l                                       ; $74DA: $4D
    ld h, c                                       ; $74DB: $61
    ld h, a                                       ; $74DC: $67
    ld h, c                                       ; $74DD: $61
    ld l, l                                       ; $74DE: $6D
    daa                                           ; $74DF: $27
    ld [hl], e                                    ; $74E0: $73
    jr nz, jr_01E_7535                            ; $74E1: $20 $52

    ld l, c                                       ; $74E3: $69

jr_01E_74E4:
    ld l, [hl]                                    ; $74E4: $6E
    ld h, a                                       ; $74E5: $67
    cp $53                                        ; $74E6: $FE $53
    ld l, b                                       ; $74E8: $68
    ld l, a                                       ; $74E9: $6F
    ld [hl], b                                    ; $74EA: $70
    ld l, $FE                                     ; $74EB: $2E $FE
    db $FD                                        ; $74ED: $FD
    sbc c                                         ; $74EE: $99
    sbc e                                         ; $74EF: $9B
    ld a, b                                       ; $74F0: $78
    ld [hl], b                                    ; $74F1: $70
    sbc a                                         ; $74F2: $9F
    jr nz, jr_01E_753B                            ; $74F3: $20 $46

    ld l, a                                       ; $74F5: $6F
    ld [hl], d                                    ; $74F6: $72
    ld h, a                                       ; $74F7: $67
    ld h, l                                       ; $74F8: $65
    jr nz, jr_01E_751B                            ; $74F9: $20 $20

    ld b, l                                       ; $74FB: $45
    ld [hl], c                                    ; $74FC: $71
    ld [hl], l                                    ; $74FD: $75
    ld l, c                                       ; $74FE: $69

jr_01E_74FF:
    ld [hl], b                                    ; $74FF: $70
    rst $38                                       ; $7500: $FF
    jr nz, @+$52                                  ; $7501: $20 $50

    ld l, a                                       ; $7503: $6F
    ld [hl], a                                    ; $7504: $77
    ld h, l                                       ; $7505: $65
    ld [hl], d                                    ; $7506: $72
    jr nz, @+$22                                  ; $7507: $20 $20

    ld b, h                                       ; $7509: $44
    ld l, a                                       ; $750A: $6F
    ld l, [hl]                                    ; $750B: $6E
    ld h, l                                       ; $750C: $65
    db $FD                                        ; $750D: $FD
    sbc h                                         ; $750E: $9C
    inc b                                         ; $750F: $04
    ld e, $37                                     ; $7510: $1E $37
    ld [hl], l                                    ; $7512: $75

jr_01E_7513:
    ld e, $1C                                     ; $7513: $1E $1C
    ld [hl], l                                    ; $7515: $75
    ld e, $32                                     ; $7516: $1E $32
    ld [hl], l                                    ; $7518: $75
    ld e, $6E                                     ; $7519: $1E $6E

jr_01E_751B:
    halt                                          ; $751B: $76
    sbc d                                         ; $751C: $9A
    adc a                                         ; $751D: $8F

jr_01E_751E:
    ld c, $00                                     ; $751E: $0E $00
    dec c                                         ; $7520: $0D
    inc bc                                        ; $7521: $03
    ld d, $29                                     ; $7522: $16 $29
    ld a, [hl+]                                   ; $7524: $2A
    ld a, [hl-]                                   ; $7525: $3A
    inc a                                         ; $7526: $3C
    rra                                           ; $7527: $1F
    ld a, $17                                     ; $7528: $3E $17
    ld h, $2B                                     ; $752A: $26 $2B
    ld l, $1B                                     ; $752C: $2E $1B
    ld b, l                                       ; $752E: $45
    ld e, $EE                                     ; $752F: $1E $EE
    ld [hl], h                                    ; $7531: $74
    sbc d                                         ; $7532: $9A
    adc l                                         ; $7533: $8D
    ld b, [hl]                                    ; $7534: $46

jr_01E_7535:
    xor $74                                       ; $7535: $EE $74
    sbc e                                         ; $7537: $9B
    sbc b                                         ; $7538: $98
    ld e, d                                       ; $7539: $5A
    sbc a                                         ; $753A: $9F

jr_01E_753B:
    ld d, a                                       ; $753B: $57
    ld l, b                                       ; $753C: $68
    ld h, c                                       ; $753D: $61
    ld [hl], h                                    ; $753E: $74
    jr nz, jr_01E_75B3                            ; $753F: $20 $72

    ld l, c                                       ; $7541: $69
    ld l, [hl]                                    ; $7542: $6E
    ld h, a                                       ; $7543: $67
    rst $38                                       ; $7544: $FF
    ld [hl], e                                    ; $7545: $73
    ld l, b                                       ; $7546: $68
    ld h, c                                       ; $7547: $61
    ld l, h                                       ; $7548: $6C
    ld l, h                                       ; $7549: $6C
    jr nz, @+$4B                                  ; $754A: $20 $49

jr_01E_754C:
    jr nz, jr_01E_75BB                            ; $754C: $20 $6D

    ld h, c                                       ; $754E: $61
    ld l, e                                       ; $754F: $6B
    ld h, l                                       ; $7550: $65
    ccf                                           ; $7551: $3F
    cp $FD                                        ; $7552: $FE $FD
    sbc d                                         ; $7554: $9A
    adc [hl]                                      ; $7555: $8E
    ld e, $4E                                     ; $7556: $1E $4E
    halt                                          ; $7558: $76
    ld e, $EE                                     ; $7559: $1E $EE
    ld [hl], h                                    ; $755B: $74
    ld l, c                                       ; $755C: $69
    nop                                           ; $755D: $00
    dec c                                         ; $755E: $0D
    inc bc                                        ; $755F: $03
    inc bc                                        ; $7560: $03
    inc bc                                        ; $7561: $03
    rst $38                                       ; $7562: $FF
    nop                                           ; $7563: $00
    ld h, h                                       ; $7564: $64
    nop                                           ; $7565: $00
    inc d                                         ; $7566: $14
    ld d, $16                                     ; $7567: $16 $16
    inc b                                         ; $7569: $04
    rst $38                                       ; $756A: $FF
    nop                                           ; $756B: $00
    ld h, h                                       ; $756C: $64
    nop                                           ; $756D: $00
    inc d                                         ; $756E: $14
    add hl, hl                                    ; $756F: $29
    add hl, hl                                    ; $7570: $29
    ld [bc], a                                    ; $7571: $02
    rst $38                                       ; $7572: $FF
    nop                                           ; $7573: $00
    ld h, h                                       ; $7574: $64
    nop                                           ; $7575: $00
    inc d                                         ; $7576: $14
    ld a, [hl+]                                   ; $7577: $2A
    ld a, [hl+]                                   ; $7578: $2A
    ld bc, $00FF                                  ; $7579: $01 $FF $00
    ld h, h                                       ; $757C: $64
    nop                                           ; $757D: $00
    inc d                                         ; $757E: $14
    ld a, [hl-]                                   ; $757F: $3A
    ld a, [hl-]                                   ; $7580: $3A
    inc bc                                        ; $7581: $03
    rst $38                                       ; $7582: $FF
    nop                                           ; $7583: $00
    ld h, h                                       ; $7584: $64
    nop                                           ; $7585: $00
    inc d                                         ; $7586: $14
    inc a                                         ; $7587: $3C
    inc a                                         ; $7588: $3C
    inc bc                                        ; $7589: $03
    ld bc, $6401                                  ; $758A: $01 $01 $64
    nop                                           ; $758D: $00
    inc d                                         ; $758E: $14
    rra                                           ; $758F: $1F
    rra                                           ; $7590: $1F
    inc bc                                        ; $7591: $03
    dec a                                         ; $7592: $3D
    ld bc, $0096                                  ; $7593: $01 $96 $00
    add hl, de                                    ; $7596: $19
    ld a, $3E                                     ; $7597: $3E $3E
    inc bc                                        ; $7599: $03
    add hl, sp                                    ; $759A: $39
    ld bc, $0096                                  ; $759B: $01 $96 $00
    add hl, de                                    ; $759E: $19
    rla                                           ; $759F: $17
    rla                                           ; $75A0: $17
    ld [bc], a                                    ; $75A1: $02
    inc bc                                        ; $75A2: $03
    ld bc, $0096                                  ; $75A3: $01 $96 $00
    add hl, de                                    ; $75A6: $19
    ld h, $26                                     ; $75A7: $26 $26
    inc bc                                        ; $75A9: $03
    ld c, a                                       ; $75AA: $4F
    ld bc, $0096                                  ; $75AB: $01 $96 $00
    add hl, de                                    ; $75AE: $19
    dec hl                                        ; $75AF: $2B
    dec hl                                        ; $75B0: $2B
    inc b                                         ; $75B1: $04
    rst $38                                       ; $75B2: $FF

jr_01E_75B3:
    nop                                           ; $75B3: $00
    sub [hl]                                      ; $75B4: $96
    nop                                           ; $75B5: $00
    add hl, de                                    ; $75B6: $19
    ld l, $2E                                     ; $75B7: $2E $2E
    inc bc                                        ; $75B9: $03
    ld a, [hl+]                                   ; $75BA: $2A

jr_01E_75BB:
    ld bc, $01C2                                  ; $75BB: $01 $C2 $01
    ld [hl-], a                                   ; $75BE: $32
    dec de                                        ; $75BF: $1B
    dec de                                        ; $75C0: $1B
    dec b                                         ; $75C1: $05
    dec b                                         ; $75C2: $05
    ld bc, $0226                                  ; $75C3: $01 $26 $02
    ld [hl-], a                                   ; $75C6: $32
    add hl, bc                                    ; $75C7: $09
    ld [bc], a                                    ; $75C8: $02
    ld e, $38                                     ; $75C9: $1E $38
    ld [hl], a                                    ; $75CB: $77
    ld e, l                                       ; $75CC: $5D
    sbc e                                         ; $75CD: $9B
    sbc b                                         ; $75CE: $98
    ld e, d                                       ; $75CF: $5A
    sbc a                                         ; $75D0: $9F
    ld d, h                                       ; $75D1: $54
    ld l, b                                       ; $75D2: $68
    ld h, l                                       ; $75D3: $65
    ld [hl], d                                    ; $75D4: $72
    ld h, l                                       ; $75D5: $65
    ld l, $20                                     ; $75D6: $2E $20
    ld e, c                                       ; $75D8: $59
    ld l, a                                       ; $75D9: $6F
    ld [hl], l                                    ; $75DA: $75
    ld [hl], d                                    ; $75DB: $72
    rst $38                                       ; $75DC: $FF
    db $FC                                        ; $75DD: $FC
    cp $69                                        ; $75DE: $FE $69
    ld [hl], e                                    ; $75E0: $73
    jr nz, jr_01E_7655                            ; $75E1: $20 $72

    ld h, l                                       ; $75E3: $65
    ld h, c                                       ; $75E4: $61
    ld h, h                                       ; $75E5: $64
    ld a, c                                       ; $75E6: $79
    ld l, $FE                                     ; $75E7: $2E $FE
    db $FD                                        ; $75E9: $FD
    ld b, e                                       ; $75EA: $43
    db $10                                        ; $75EB: $10
    inc b                                         ; $75EC: $04
    dec b                                         ; $75ED: $05
    inc c                                         ; $75EE: $0C
    ld e, $4B                                     ; $75EF: $1E $4B
    halt                                          ; $75F1: $76
    ld b, e                                       ; $75F2: $43
    db $10                                        ; $75F3: $10
    ld bc, wScript_RingMadeID                                  ; $75F4: $01 $26 $C7
    ld b, $2A                                     ; $75F7: $06 $2A
    nop                                           ; $75F9: $00
    ld e, $4B                                     ; $75FA: $1E $4B
    halt                                          ; $75FC: $76
    xor c                                         ; $75FD: $A9
    dec c                                         ; $75FE: $0D
    nop                                           ; $75FF: $00
    sbc d                                         ; $7600: $9A
    sbc e                                         ; $7601: $9B
    sbc b                                         ; $7602: $98
    ld e, d                                       ; $7603: $5A
    sbc a                                         ; $7604: $9F
    ld d, [hl]                                    ; $7605: $56
    ld h, c                                       ; $7606: $61
    ld l, h                                       ; $7607: $6C
    ld l, e                                       ; $7608: $6B
    ld h, c                                       ; $7609: $61
    ld l, [hl]                                    ; $760A: $6E
    jr nz, jr_01E_7684                            ; $760B: $20 $77

    ld h, c                                       ; $760D: $61
    ld [hl], e                                    ; $760E: $73
    jr nz, jr_01E_7679                            ; $760F: $20 $68

    ld h, l                                       ; $7611: $65
    ld [hl], d                                    ; $7612: $72
    ld h, l                                       ; $7613: $65
    rst $38                                       ; $7614: $FF
    ld l, h                                       ; $7615: $6C
    ld l, a                                       ; $7616: $6F
    ld l, a                                       ; $7617: $6F
    ld l, e                                       ; $7618: $6B
    ld l, c                                       ; $7619: $69
    ld l, [hl]                                    ; $761A: $6E
    ld h, a                                       ; $761B: $67
    jr nz, jr_01E_7684                            ; $761C: $20 $66

    ld l, a                                       ; $761E: $6F
    ld [hl], d                                    ; $761F: $72
    jr nz, @+$7B                                  ; $7620: $20 $79

    ld l, a                                       ; $7622: $6F
    ld [hl], l                                    ; $7623: $75
    cp $61                                        ; $7624: $FE $61
    jr nz, @+$6F                                  ; $7626: $20 $6D

    ld l, a                                       ; $7628: $6F
    ld l, l                                       ; $7629: $6D
    ld h, l                                       ; $762A: $65
    ld l, [hl]                                    ; $762B: $6E
    ld [hl], h                                    ; $762C: $74
    jr nz, jr_01E_7690                            ; $762D: $20 $61

    ld h, a                                       ; $762F: $67
    ld l, a                                       ; $7630: $6F
    ld l, $FF                                     ; $7631: $2E $FF
    ld e, c                                       ; $7633: $59
    ld l, a                                       ; $7634: $6F
    ld [hl], l                                    ; $7635: $75
    jr nz, jr_01E_76AB                            ; $7636: $20 $73

    ld l, b                                       ; $7638: $68
    ld l, a                                       ; $7639: $6F
    ld [hl], l                                    ; $763A: $75
    ld l, h                                       ; $763B: $6C
    ld h, h                                       ; $763C: $64
    jr nz, jr_01E_76A6                            ; $763D: $20 $67

    ld l, a                                       ; $763F: $6F
    cp $73                                        ; $7640: $FE $73
    ld h, l                                       ; $7642: $65
    ld h, l                                       ; $7643: $65
    jr nz, jr_01E_76AE                            ; $7644: $20 $68

    ld l, c                                       ; $7646: $69
    ld l, l                                       ; $7647: $6D
    ld l, $FE                                     ; $7648: $2E $FE
    db $FD                                        ; $764A: $FD
    ld b, [hl]                                    ; $764B: $46
    xor $74                                       ; $764C: $EE $74
    sbc e                                         ; $764E: $9B
    ld l, b                                       ; $764F: $68
    ld c, c                                       ; $7650: $49
    sbc a                                         ; $7651: $9F
    ld e, c                                       ; $7652: $59
    ld l, a                                       ; $7653: $6F
    ld [hl], l                                    ; $7654: $75

jr_01E_7655:
    ld [hl], d                                    ; $7655: $72

jr_01E_7656:
    jr nz, jr_01E_76AA                            ; $7656: $20 $52

    ld l, c                                       ; $7658: $69
    ld l, [hl]                                    ; $7659: $6E
    ld h, a                                       ; $765A: $67
    jr nz, jr_01E_769F                            ; $765B: $20 $42

    ld h, c                                       ; $765D: $61
    ld l, [hl]                                    ; $765E: $6E
    ld l, e                                       ; $765F: $6B
    rst $38                                       ; $7660: $FF
    ld l, c                                       ; $7661: $69
    ld [hl], e                                    ; $7662: $73
    jr nz, jr_01E_76CB                            ; $7663: $20 $66

    ld [hl], l                                    ; $7665: $75
    ld l, h                                       ; $7666: $6C
    ld l, h                                       ; $7667: $6C
    ld l, $FE                                     ; $7668: $2E $FE
    db $FD                                        ; $766A: $FD
    ld b, [hl]                                    ; $766B: $46
    xor $74                                       ; $766C: $EE $74
    sbc e                                         ; $766E: $9B
    sbc b                                         ; $766F: $98
    ld e, d                                       ; $7670: $5A
    sbc a                                         ; $7671: $9F
    ld b, e                                       ; $7672: $43
    ld l, a                                       ; $7673: $6F
    ld l, l                                       ; $7674: $6D
    ld h, l                                       ; $7675: $65
    jr nz, @+$63                                  ; $7676: $20 $61

    ld h, a                                       ; $7678: $67

jr_01E_7679:
    ld h, c                                       ; $7679: $61
    ld l, c                                       ; $767A: $69
    ld l, [hl]                                    ; $767B: $6E
    ld l, $FE                                     ; $767C: $2E $FE
    db $FD                                        ; $767E: $FD
    sbc d                                         ; $767F: $9A
    rlca                                          ; $7680: $07
    nop                                           ; $7681: $00
    add c                                         ; $7682: $81
    ld e, l                                       ; $7683: $5D

jr_01E_7684:
    ld b, d                                       ; $7684: $42
    rlca                                          ; $7685: $07
    nop                                           ; $7686: $00
    ld l, e                                       ; $7687: $6B
    ld c, d                                       ; $7688: $4A
    add hl, bc                                    ; $7689: $09
    nop                                           ; $768A: $00
    jr nz, jr_01E_7656                            ; $768B: $20 $C9

    ld d, b                                       ; $768D: $50
    sbc e                                         ; $768E: $9B
    jp hl                                         ; $768F: $E9


jr_01E_7690:
    ld d, l                                       ; $7690: $55
    sbc a                                         ; $7691: $9F
    ld b, a                                       ; $7692: $47
    ld l, a                                       ; $7693: $6F
    jr nz, jr_01E_76F7                            ; $7694: $20 $61

    ld l, b                                       ; $7696: $68
    ld h, l                                       ; $7697: $65
    ld h, c                                       ; $7698: $61
    ld h, h                                       ; $7699: $64
    ld l, $2E                                     ; $769A: $2E $2E
    ld l, $FF                                     ; $769C: $2E $FF
    ld b, d                                       ; $769E: $42

jr_01E_769F:
    ld [hl], l                                    ; $769F: $75
    ld a, c                                       ; $76A0: $79
    jr nz, @+$75                                  ; $76A1: $20 $73

    ld l, a                                       ; $76A3: $6F
    ld l, l                                       ; $76A4: $6D
    ld h, l                                       ; $76A5: $65

jr_01E_76A6:
    ld [hl], h                                    ; $76A6: $74
    ld l, b                                       ; $76A7: $68
    ld l, c                                       ; $76A8: $69
    ld l, [hl]                                    ; $76A9: $6E

jr_01E_76AA:
    ld h, a                                       ; $76AA: $67

jr_01E_76AB:
    ld hl, $FDFE                                  ; $76AB: $21 $FE $FD

jr_01E_76AE:
    sbc d                                         ; $76AE: $9A
    sub b                                         ; $76AF: $90
    ld e, $C5                                     ; $76B0: $1E $C5
    halt                                          ; $76B2: $76
    stop                                          ; $76B3: $10 $00
    dec b                                         ; $76B5: $05
    ld bc, $000F                                  ; $76B6: $01 $0F $00
    ld [bc], a                                    ; $76B9: $02
    inc hl                                        ; $76BA: $23
    nop                                           ; $76BB: $00
    inc bc                                        ; $76BC: $03
    inc a                                         ; $76BD: $3C
    nop                                           ; $76BE: $00
    add hl, bc                                    ; $76BF: $09
    dec b                                         ; $76C0: $05
    nop                                           ; $76C1: $00
    dec c                                         ; $76C2: $0D
    inc d                                         ; $76C3: $14
    nop                                           ; $76C4: $00
    sbc e                                         ; $76C5: $9B
    jp hl                                         ; $76C6: $E9


    ld d, l                                       ; $76C7: $55
    sbc a                                         ; $76C8: $9F
    ld b, e                                       ; $76C9: $43
    ld l, a                                       ; $76CA: $6F

jr_01E_76CB:
    ld l, l                                       ; $76CB: $6D
    ld h, l                                       ; $76CC: $65
    jr nz, jr_01E_7731                            ; $76CD: $20 $62

    ld h, c                                       ; $76CF: $61
    ld h, e                                       ; $76D0: $63
    ld l, e                                       ; $76D1: $6B
    jr nz, jr_01E_7747                            ; $76D2: $20 $73

    ld l, a                                       ; $76D4: $6F
    ld l, a                                       ; $76D5: $6F
    ld l, [hl]                                    ; $76D6: $6E
    ld hl, $FDFE                                  ; $76D7: $21 $FE $FD
    sbc d                                         ; $76DA: $9A
    rlca                                          ; $76DB: $07
    nop                                           ; $76DC: $00
    add c                                         ; $76DD: $81
    ld e, l                                       ; $76DE: $5D
    ld b, d                                       ; $76DF: $42
    sub e                                         ; $76E0: $93
    ld h, l                                       ; $76E1: $65
    ld [hl], b                                    ; $76E2: $70
    ld c, b                                       ; $76E3: $48
    ld c, a                                       ; $76E4: $4F
    ld h, h                                       ; $76E5: $64
    db $DD                                        ; $76E6: $DD
    ld c, e                                       ; $76E7: $4B
    ld l, c                                       ; $76E8: $69
    ld [c], a                                     ; $76E9: $E2
    ld c, e                                       ; $76EA: $4B
    ld h, [hl]                                    ; $76EB: $66
    ret nz                                        ; $76EC: $C0

    ld e, h                                       ; $76ED: $5C
    ld hl, $0005                                  ; $76EE: $21 $05 $00
    add c                                         ; $76F1: $81
    ld e, l                                       ; $76F2: $5D
    dec b                                         ; $76F3: $05
    dec b                                         ; $76F4: $05

jr_01E_76F5:
    ld b, [hl]                                    ; $76F5: $46
    ret nc                                        ; $76F6: $D0

jr_01E_76F7:
    nop                                           ; $76F7: $00
    jr nz, jr_01E_76F5                            ; $76F8: $20 $FB

    ld d, b                                       ; $76FA: $50
    ld [hl+], a                                   ; $76FB: $22
    dec b                                         ; $76FC: $05
    ld b, b                                       ; $76FD: $40
    dec b                                         ; $76FE: $05
    ld [bc], a                                    ; $76FF: $02
    db $ED                                        ; $7700: $ED
    ld h, e                                       ; $7701: $63
    ld [bc], a                                    ; $7702: $02
    add hl, bc                                    ; $7703: $09
    ld [hl], a                                    ; $7704: $77
    ret nc                                        ; $7705: $D0

    nop                                           ; $7706: $00
    ld de, $42EF                                  ; $7707: $11 $EF $42
    ld [hl+], a                                   ; $770A: $22
    dec b                                         ; $770B: $05
    ld b, b                                       ; $770C: $40
    dec b                                         ; $770D: $05
    inc bc                                        ; $770E: $03
    ld l, e                                       ; $770F: $6B
    ld c, d                                       ; $7710: $4A
    ld [$8A0A], sp                                ; $7711: $08 $0A $8A
    ret nc                                        ; $7714: $D0

    ld h, $11                                     ; $7715: $26 $11
    and b                                         ; $7717: $A0
    ld b, a                                       ; $7718: $47
    ld [hl+], a                                   ; $7719: $22
    dec b                                         ; $771A: $05
    ld b, b                                       ; $771B: $40
    ld l, e                                       ; $771C: $6B
    ld h, $0C                                     ; $771D: $26 $0C
    ld d, b                                       ; $771F: $50
    ld a, b                                       ; $7720: $78
    nop                                           ; $7721: $00
    add b                                         ; $7722: $80
    nop                                           ; $7723: $00
    ld l, e                                       ; $7724: $6B
    dec hl                                        ; $7725: $2B
    dec bc                                        ; $7726: $0B
    ret nc                                        ; $7727: $D0

    ld c, c                                       ; $7728: $49
    ld h, b                                       ; $7729: $60
    add d                                         ; $772A: $82
    nop                                           ; $772B: $00
    dec bc                                        ; $772C: $0B
    nop                                           ; $772D: $00
    dec bc                                        ; $772E: $0B
    ld [bc], a                                    ; $772F: $02
    dec bc                                        ; $7730: $0B

jr_01E_7731:
    inc bc                                        ; $7731: $03
    nop                                           ; $7732: $00
    add d                                         ; $7733: $82
    rra                                           ; $7734: $1F
    ld d, $94                                     ; $7735: $16 $94
    ld b, d                                       ; $7737: $42
    dec d                                         ; $7738: $15
    ld de, $4243                                  ; $7739: $11 $43 $42
    rst $38                                       ; $773C: $FF
    ld de, $42EF                                  ; $773D: $11 $EF $42
    nop                                           ; $7740: $00
    nop                                           ; $7741: $00
    ld d, e                                       ; $7742: $53
    ld b, d                                       ; $7743: $42
    nop                                           ; $7744: $00
    nop                                           ; $7745: $00
    nop                                           ; $7746: $00

jr_01E_7747:
    nop                                           ; $7747: $00
    nop                                           ; $7748: $00
    nop                                           ; $7749: $00
    nop                                           ; $774A: $00
    nop                                           ; $774B: $00
    nop                                           ; $774C: $00
    nop                                           ; $774D: $00
    nop                                           ; $774E: $00
    nop                                           ; $774F: $00
    nop                                           ; $7750: $00
    nop                                           ; $7751: $00
    nop                                           ; $7752: $00
    nop                                           ; $7753: $00
    nop                                           ; $7754: $00
    nop                                           ; $7755: $00
    nop                                           ; $7756: $00
    nop                                           ; $7757: $00
    nop                                           ; $7758: $00
    nop                                           ; $7759: $00
    nop                                           ; $775A: $00
    nop                                           ; $775B: $00
    nop                                           ; $775C: $00
    nop                                           ; $775D: $00
    nop                                           ; $775E: $00
    nop                                           ; $775F: $00
    nop                                           ; $7760: $00
    nop                                           ; $7761: $00
    nop                                           ; $7762: $00
    nop                                           ; $7763: $00
    nop                                           ; $7764: $00
    nop                                           ; $7765: $00
    nop                                           ; $7766: $00
    nop                                           ; $7767: $00
    nop                                           ; $7768: $00
    nop                                           ; $7769: $00
    nop                                           ; $776A: $00
    nop                                           ; $776B: $00
    nop                                           ; $776C: $00
    nop                                           ; $776D: $00
    nop                                           ; $776E: $00
    nop                                           ; $776F: $00
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00
    nop                                           ; $7772: $00
    nop                                           ; $7773: $00
    nop                                           ; $7774: $00
    nop                                           ; $7775: $00
    nop                                           ; $7776: $00
    nop                                           ; $7777: $00
    nop                                           ; $7778: $00
    nop                                           ; $7779: $00
    nop                                           ; $777A: $00
    nop                                           ; $777B: $00
    nop                                           ; $777C: $00
    nop                                           ; $777D: $00
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
    nop                                           ; $778B: $00
    nop                                           ; $778C: $00
    nop                                           ; $778D: $00
    nop                                           ; $778E: $00
    nop                                           ; $778F: $00
    nop                                           ; $7790: $00
    nop                                           ; $7791: $00
    nop                                           ; $7792: $00
    nop                                           ; $7793: $00
    nop                                           ; $7794: $00
    nop                                           ; $7795: $00
    nop                                           ; $7796: $00
    nop                                           ; $7797: $00
    nop                                           ; $7798: $00
    nop                                           ; $7799: $00
    nop                                           ; $779A: $00
    nop                                           ; $779B: $00
    nop                                           ; $779C: $00
    nop                                           ; $779D: $00
    nop                                           ; $779E: $00
    nop                                           ; $779F: $00
    nop                                           ; $77A0: $00
    nop                                           ; $77A1: $00
    nop                                           ; $77A2: $00
    nop                                           ; $77A3: $00
    nop                                           ; $77A4: $00
    nop                                           ; $77A5: $00
    nop                                           ; $77A6: $00
    nop                                           ; $77A7: $00
    nop                                           ; $77A8: $00
    nop                                           ; $77A9: $00
    nop                                           ; $77AA: $00
    nop                                           ; $77AB: $00
    nop                                           ; $77AC: $00
    nop                                           ; $77AD: $00
    nop                                           ; $77AE: $00
    nop                                           ; $77AF: $00
    nop                                           ; $77B0: $00
    nop                                           ; $77B1: $00
    nop                                           ; $77B2: $00
    nop                                           ; $77B3: $00
    nop                                           ; $77B4: $00
    nop                                           ; $77B5: $00
    nop                                           ; $77B6: $00
    nop                                           ; $77B7: $00
    nop                                           ; $77B8: $00
    nop                                           ; $77B9: $00
    nop                                           ; $77BA: $00
    nop                                           ; $77BB: $00
    nop                                           ; $77BC: $00
    nop                                           ; $77BD: $00
    nop                                           ; $77BE: $00
    nop                                           ; $77BF: $00
    nop                                           ; $77C0: $00
    nop                                           ; $77C1: $00
    nop                                           ; $77C2: $00
    nop                                           ; $77C3: $00
    nop                                           ; $77C4: $00
    nop                                           ; $77C5: $00
    nop                                           ; $77C6: $00
    nop                                           ; $77C7: $00
    nop                                           ; $77C8: $00
    nop                                           ; $77C9: $00
    nop                                           ; $77CA: $00
    nop                                           ; $77CB: $00
    nop                                           ; $77CC: $00
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
    nop                                           ; $77D7: $00
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
    nop                                           ; $77E3: $00
    nop                                           ; $77E4: $00
    nop                                           ; $77E5: $00
    nop                                           ; $77E6: $00
    nop                                           ; $77E7: $00
    nop                                           ; $77E8: $00
    nop                                           ; $77E9: $00
    nop                                           ; $77EA: $00
    nop                                           ; $77EB: $00
    nop                                           ; $77EC: $00
    nop                                           ; $77ED: $00
    nop                                           ; $77EE: $00
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
    nop                                           ; $780B: $00
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
    nop                                           ; $7817: $00
    nop                                           ; $7818: $00
    nop                                           ; $7819: $00
    nop                                           ; $781A: $00
    nop                                           ; $781B: $00
    nop                                           ; $781C: $00
    nop                                           ; $781D: $00
    nop                                           ; $781E: $00
    nop                                           ; $781F: $00
    nop                                           ; $7820: $00
    nop                                           ; $7821: $00
    nop                                           ; $7822: $00
    nop                                           ; $7823: $00
    nop                                           ; $7824: $00
    nop                                           ; $7825: $00
    nop                                           ; $7826: $00
    nop                                           ; $7827: $00
    nop                                           ; $7828: $00
    nop                                           ; $7829: $00
    nop                                           ; $782A: $00
    nop                                           ; $782B: $00
    nop                                           ; $782C: $00
    nop                                           ; $782D: $00
    nop                                           ; $782E: $00
    nop                                           ; $782F: $00
    nop                                           ; $7830: $00
    nop                                           ; $7831: $00
    nop                                           ; $7832: $00
    nop                                           ; $7833: $00
    nop                                           ; $7834: $00
    nop                                           ; $7835: $00
    nop                                           ; $7836: $00
    nop                                           ; $7837: $00
    nop                                           ; $7838: $00
    nop                                           ; $7839: $00
    nop                                           ; $783A: $00
    nop                                           ; $783B: $00
    nop                                           ; $783C: $00
    nop                                           ; $783D: $00
    nop                                           ; $783E: $00
    nop                                           ; $783F: $00
    nop                                           ; $7840: $00
    nop                                           ; $7841: $00
    nop                                           ; $7842: $00
    nop                                           ; $7843: $00
    nop                                           ; $7844: $00
    nop                                           ; $7845: $00
    nop                                           ; $7846: $00
    nop                                           ; $7847: $00
    nop                                           ; $7848: $00
    nop                                           ; $7849: $00
    nop                                           ; $784A: $00
    nop                                           ; $784B: $00
    nop                                           ; $784C: $00
    nop                                           ; $784D: $00
    nop                                           ; $784E: $00
    nop                                           ; $784F: $00
    nop                                           ; $7850: $00
    nop                                           ; $7851: $00
    nop                                           ; $7852: $00
    nop                                           ; $7853: $00
    nop                                           ; $7854: $00
    nop                                           ; $7855: $00
    nop                                           ; $7856: $00
    nop                                           ; $7857: $00
    nop                                           ; $7858: $00
    nop                                           ; $7859: $00
    nop                                           ; $785A: $00
    nop                                           ; $785B: $00
    nop                                           ; $785C: $00
    nop                                           ; $785D: $00
    nop                                           ; $785E: $00
    nop                                           ; $785F: $00
    nop                                           ; $7860: $00
    nop                                           ; $7861: $00
    nop                                           ; $7862: $00
    nop                                           ; $7863: $00
    nop                                           ; $7864: $00
    nop                                           ; $7865: $00
    nop                                           ; $7866: $00
    nop                                           ; $7867: $00
    nop                                           ; $7868: $00
    nop                                           ; $7869: $00
    nop                                           ; $786A: $00
    nop                                           ; $786B: $00
    nop                                           ; $786C: $00
    nop                                           ; $786D: $00
    nop                                           ; $786E: $00
    nop                                           ; $786F: $00
    nop                                           ; $7870: $00
    nop                                           ; $7871: $00
    nop                                           ; $7872: $00
    nop                                           ; $7873: $00
    nop                                           ; $7874: $00
    nop                                           ; $7875: $00
    nop                                           ; $7876: $00
    nop                                           ; $7877: $00
    nop                                           ; $7878: $00
    nop                                           ; $7879: $00
    nop                                           ; $787A: $00
    nop                                           ; $787B: $00
    nop                                           ; $787C: $00
    nop                                           ; $787D: $00
    nop                                           ; $787E: $00
    nop                                           ; $787F: $00
    nop                                           ; $7880: $00
    nop                                           ; $7881: $00
    nop                                           ; $7882: $00
    nop                                           ; $7883: $00
    nop                                           ; $7884: $00
    nop                                           ; $7885: $00
    nop                                           ; $7886: $00
    nop                                           ; $7887: $00
    nop                                           ; $7888: $00
    nop                                           ; $7889: $00
    nop                                           ; $788A: $00
    nop                                           ; $788B: $00
    nop                                           ; $788C: $00
    nop                                           ; $788D: $00
    nop                                           ; $788E: $00
    nop                                           ; $788F: $00
    nop                                           ; $7890: $00
    nop                                           ; $7891: $00
    nop                                           ; $7892: $00
    nop                                           ; $7893: $00
    nop                                           ; $7894: $00
    nop                                           ; $7895: $00
    nop                                           ; $7896: $00
    nop                                           ; $7897: $00
    nop                                           ; $7898: $00
    nop                                           ; $7899: $00
    nop                                           ; $789A: $00
    nop                                           ; $789B: $00
    nop                                           ; $789C: $00
    nop                                           ; $789D: $00
    nop                                           ; $789E: $00
    nop                                           ; $789F: $00
    nop                                           ; $78A0: $00
    nop                                           ; $78A1: $00
    nop                                           ; $78A2: $00
    nop                                           ; $78A3: $00
    nop                                           ; $78A4: $00
    nop                                           ; $78A5: $00
    nop                                           ; $78A6: $00
    nop                                           ; $78A7: $00
    nop                                           ; $78A8: $00
    nop                                           ; $78A9: $00
    nop                                           ; $78AA: $00
    nop                                           ; $78AB: $00
    nop                                           ; $78AC: $00
    nop                                           ; $78AD: $00
    nop                                           ; $78AE: $00
    nop                                           ; $78AF: $00
    nop                                           ; $78B0: $00
    nop                                           ; $78B1: $00
    nop                                           ; $78B2: $00
    nop                                           ; $78B3: $00
    nop                                           ; $78B4: $00
    nop                                           ; $78B5: $00
    nop                                           ; $78B6: $00
    nop                                           ; $78B7: $00
    nop                                           ; $78B8: $00
    nop                                           ; $78B9: $00
    nop                                           ; $78BA: $00
    nop                                           ; $78BB: $00
    nop                                           ; $78BC: $00
    nop                                           ; $78BD: $00
    nop                                           ; $78BE: $00
    nop                                           ; $78BF: $00
    nop                                           ; $78C0: $00
    nop                                           ; $78C1: $00
    nop                                           ; $78C2: $00
    nop                                           ; $78C3: $00
    nop                                           ; $78C4: $00
    nop                                           ; $78C5: $00
    nop                                           ; $78C6: $00
    nop                                           ; $78C7: $00
    nop                                           ; $78C8: $00
    nop                                           ; $78C9: $00
    nop                                           ; $78CA: $00
    nop                                           ; $78CB: $00
    nop                                           ; $78CC: $00
    nop                                           ; $78CD: $00
    nop                                           ; $78CE: $00
    nop                                           ; $78CF: $00
    nop                                           ; $78D0: $00
    nop                                           ; $78D1: $00
    nop                                           ; $78D2: $00
    nop                                           ; $78D3: $00
    nop                                           ; $78D4: $00
    nop                                           ; $78D5: $00
    nop                                           ; $78D6: $00
    nop                                           ; $78D7: $00
    nop                                           ; $78D8: $00
    nop                                           ; $78D9: $00
    nop                                           ; $78DA: $00
    nop                                           ; $78DB: $00
    nop                                           ; $78DC: $00
    nop                                           ; $78DD: $00
    nop                                           ; $78DE: $00
    nop                                           ; $78DF: $00
    nop                                           ; $78E0: $00
    nop                                           ; $78E1: $00
    nop                                           ; $78E2: $00
    nop                                           ; $78E3: $00
    nop                                           ; $78E4: $00
    nop                                           ; $78E5: $00
    nop                                           ; $78E6: $00
    nop                                           ; $78E7: $00
    nop                                           ; $78E8: $00
    nop                                           ; $78E9: $00
    nop                                           ; $78EA: $00
    nop                                           ; $78EB: $00
    nop                                           ; $78EC: $00
    nop                                           ; $78ED: $00
    nop                                           ; $78EE: $00
    nop                                           ; $78EF: $00
    nop                                           ; $78F0: $00
    nop                                           ; $78F1: $00
    nop                                           ; $78F2: $00
    nop                                           ; $78F3: $00
    nop                                           ; $78F4: $00
    nop                                           ; $78F5: $00
    nop                                           ; $78F6: $00
    nop                                           ; $78F7: $00
    nop                                           ; $78F8: $00
    nop                                           ; $78F9: $00
    nop                                           ; $78FA: $00
    nop                                           ; $78FB: $00
    nop                                           ; $78FC: $00
    nop                                           ; $78FD: $00
    nop                                           ; $78FE: $00
    nop                                           ; $78FF: $00
    nop                                           ; $7900: $00
    nop                                           ; $7901: $00
    nop                                           ; $7902: $00
    nop                                           ; $7903: $00
    nop                                           ; $7904: $00
    nop                                           ; $7905: $00
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
    nop                                           ; $7913: $00
    nop                                           ; $7914: $00
    nop                                           ; $7915: $00
    nop                                           ; $7916: $00
    nop                                           ; $7917: $00
    nop                                           ; $7918: $00
    nop                                           ; $7919: $00
    nop                                           ; $791A: $00
    nop                                           ; $791B: $00
    nop                                           ; $791C: $00
    nop                                           ; $791D: $00
    nop                                           ; $791E: $00
    nop                                           ; $791F: $00
    nop                                           ; $7920: $00
    nop                                           ; $7921: $00
    nop                                           ; $7922: $00
    nop                                           ; $7923: $00
    nop                                           ; $7924: $00
    nop                                           ; $7925: $00
    nop                                           ; $7926: $00
    nop                                           ; $7927: $00
    nop                                           ; $7928: $00
    nop                                           ; $7929: $00
    nop                                           ; $792A: $00
    nop                                           ; $792B: $00
    nop                                           ; $792C: $00
    nop                                           ; $792D: $00
    nop                                           ; $792E: $00
    nop                                           ; $792F: $00
    nop                                           ; $7930: $00
    nop                                           ; $7931: $00
    nop                                           ; $7932: $00
    nop                                           ; $7933: $00
    nop                                           ; $7934: $00
    nop                                           ; $7935: $00
    nop                                           ; $7936: $00
    nop                                           ; $7937: $00
    nop                                           ; $7938: $00
    nop                                           ; $7939: $00
    nop                                           ; $793A: $00
    nop                                           ; $793B: $00
    nop                                           ; $793C: $00
    nop                                           ; $793D: $00
    nop                                           ; $793E: $00
    nop                                           ; $793F: $00
    nop                                           ; $7940: $00
    nop                                           ; $7941: $00
    nop                                           ; $7942: $00
    nop                                           ; $7943: $00
    nop                                           ; $7944: $00
    nop                                           ; $7945: $00
    nop                                           ; $7946: $00
    nop                                           ; $7947: $00
    nop                                           ; $7948: $00
    nop                                           ; $7949: $00
    nop                                           ; $794A: $00
    nop                                           ; $794B: $00
    nop                                           ; $794C: $00
    nop                                           ; $794D: $00
    nop                                           ; $794E: $00
    nop                                           ; $794F: $00
    nop                                           ; $7950: $00
    nop                                           ; $7951: $00
    nop                                           ; $7952: $00
    nop                                           ; $7953: $00
    nop                                           ; $7954: $00
    nop                                           ; $7955: $00
    nop                                           ; $7956: $00
    nop                                           ; $7957: $00
    nop                                           ; $7958: $00
    nop                                           ; $7959: $00
    nop                                           ; $795A: $00
    nop                                           ; $795B: $00
    nop                                           ; $795C: $00
    nop                                           ; $795D: $00
    nop                                           ; $795E: $00
    nop                                           ; $795F: $00
    nop                                           ; $7960: $00
    nop                                           ; $7961: $00
    nop                                           ; $7962: $00
    nop                                           ; $7963: $00
    nop                                           ; $7964: $00
    nop                                           ; $7965: $00
    nop                                           ; $7966: $00
    nop                                           ; $7967: $00
    nop                                           ; $7968: $00
    nop                                           ; $7969: $00
    nop                                           ; $796A: $00
    nop                                           ; $796B: $00
    nop                                           ; $796C: $00
    nop                                           ; $796D: $00
    nop                                           ; $796E: $00
    nop                                           ; $796F: $00
    nop                                           ; $7970: $00
    nop                                           ; $7971: $00
    nop                                           ; $7972: $00
    nop                                           ; $7973: $00
    nop                                           ; $7974: $00
    nop                                           ; $7975: $00
    nop                                           ; $7976: $00
    nop                                           ; $7977: $00
    nop                                           ; $7978: $00
    nop                                           ; $7979: $00
    nop                                           ; $797A: $00
    nop                                           ; $797B: $00
    nop                                           ; $797C: $00
    nop                                           ; $797D: $00
    nop                                           ; $797E: $00
    nop                                           ; $797F: $00
    nop                                           ; $7980: $00
    nop                                           ; $7981: $00
    nop                                           ; $7982: $00
    nop                                           ; $7983: $00
    nop                                           ; $7984: $00
    nop                                           ; $7985: $00
    nop                                           ; $7986: $00
    nop                                           ; $7987: $00
    nop                                           ; $7988: $00
    nop                                           ; $7989: $00
    nop                                           ; $798A: $00
    nop                                           ; $798B: $00
    nop                                           ; $798C: $00
    nop                                           ; $798D: $00
    nop                                           ; $798E: $00
    nop                                           ; $798F: $00
    nop                                           ; $7990: $00
    nop                                           ; $7991: $00
    nop                                           ; $7992: $00
    nop                                           ; $7993: $00
    nop                                           ; $7994: $00
    nop                                           ; $7995: $00
    nop                                           ; $7996: $00
    nop                                           ; $7997: $00
    nop                                           ; $7998: $00
    nop                                           ; $7999: $00
    nop                                           ; $799A: $00
    nop                                           ; $799B: $00
    nop                                           ; $799C: $00
    nop                                           ; $799D: $00
    nop                                           ; $799E: $00
    nop                                           ; $799F: $00
    nop                                           ; $79A0: $00
    nop                                           ; $79A1: $00
    nop                                           ; $79A2: $00
    nop                                           ; $79A3: $00
    nop                                           ; $79A4: $00
    nop                                           ; $79A5: $00
    nop                                           ; $79A6: $00
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
